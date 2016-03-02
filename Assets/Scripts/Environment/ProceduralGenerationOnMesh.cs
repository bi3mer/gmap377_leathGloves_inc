using UnityEngine;
using System.Collections;
using System.Collections.Generic;

/// <summary>
/// Generates a poisson distribution on the mesh.
/// </summary>
/// 
public class ProceduralGenerationOnMesh : MonoBehaviour 
{

	[Tooltip("Max number of objects to be generated.")]
	public int maxObjects;

	[Tooltip("Number of attempts that the program will take to find a new valid point around a given an existing point before it moves on to a new a point.")]
	public int maxAttempts;

	[Tooltip("Number of new points that will be generated around a given existing point.")]
	public int newPointsCount;
	[Tooltip("Smallest distance between objects.")]
	public float minDistance;
	[Tooltip("How much the distance between objects can vary.")]
	public float distanceVariance;

	[Tooltip("How many starting points should be created to generate around. Generatlly the more starting seeds the greater the spread of points around the mesh.")]
	public int startingSeeds;

	[Tooltip("The minumum density needed for a starting seed to be generated at a location.")]
	public float startingSeedsDensityThreshold;

	[Tooltip("The minumum density needed for a non-starting point to be generated at a location.")]
	public float generationDensityThreshold;

	[Tooltip("The heatmap used for this mesh.")]
	public Texture2D heatmapColors;

	[Tooltip("Size of small objects.")]
	public float small;
	[Tooltip("Size of medium objects.")]
	public float medium;
	[Tooltip("Size of large objects")]
	public float large;
	[Tooltip("Size of powerups objects")]
	public float powerUpSize;

	[Tooltip("Folder where the objects that should be used in the environment are found. Should have Large, Medium, and Small subfolders.")]
	public string folder;

	[Tooltip("Folder where the powerups are found.")]
	public string powerupFolder;

	[Tooltip("The number of sections in a section x section grid that the planet will be divided into.")]
	public int planetSections;

	[Tooltip("How many of each object should be initially generated for the pool.")]
	public int initialObjects;

	[Tooltip("Generate all objects at once instead of by chunk.")]
	public bool generateAllAtOnce;

	[Tooltip("Value from 0 to 1 that determines how likely it is for a powerup to show up")]
	public float powerupChance;

	public string planetName;

	Dictionary<long, ProceduralGenerationPoint> grid;
	Dictionary<long, List<EnvironmentOrienter>> chunkGrid;
	Dictionary<long, bool> chunkStatus;
	Dictionary<long, List<ProceduralGenerationPoint>> samplePoints;

	float triangleArea;
	int gridOffset;
	int chunkGridOffset;
	int currentObjects;

	//Dictionary<string, string> locationToObject;
	Dictionary<string, List<EnvironmentOrienter>> objectPoolByName;
	Dictionary<string, GameObject> objectByName;

	Dictionary<string, List<GameObject>> objectBySize;

	Mesh mesh;
	float cellSize;
	float chunkCellSize;
	float uvToMeshRatio;

	int layerMask;
	
	List<Vector3[]> triangles;
	
	List<Vector2[]> uvsToTriangles;

	List<Vector3> faceNormals;

	public static Dictionary<string, serializedInformation> serializedSamplePointsByPlanet = new Dictionary<string, serializedInformation>();
	// Use this for initialization
	void Start () 
	{
		if(serializedSamplePointsByPlanet.Count < 2)
		{
			if(!serializedSamplePointsByPlanet.ContainsKey("DesertPlanet"))
			{
				serializedSamplePointsByPlanet.Add("DesertPlanet", new serializedInformation());
			}

			if(!serializedSamplePointsByPlanet.ContainsKey("IcePlanet"))
			{
				serializedSamplePointsByPlanet.Add("IcePlanet", new serializedInformation());
			}
		}

		mesh = GetComponent<MeshFilter> ().mesh;
		grid = new Dictionary<long, ProceduralGenerationPoint>();
		chunkGrid = new Dictionary<long, List<EnvironmentOrienter>> ();
		chunkStatus = new Dictionary<long, bool> ();

		objectPoolByName = new Dictionary<string, List<EnvironmentOrienter>> ();
		objectBySize = new Dictionary<string, List<GameObject>>();
		objectByName = new Dictionary<string, GameObject> ();

		triangles = new List<Vector3[]> ();
		uvsToTriangles = new List<Vector2[]> ();
		faceNormals = new List<Vector3> ();
		
		chunkCellSize = 1f / planetSections;
		layerMask = gameObject.layer;

		StartCoroutine(waitForLoad());
	}

	public void LoadPlanet()
	{

		if(serializedSamplePointsByPlanet.ContainsKey(planetName) && serializedSamplePointsByPlanet[planetName].samplePointKeys != null)
		{
			Vector3[] normals = mesh.normals;
			int[] triangleIndices = mesh.GetTriangles(0);
			for(int i =  0; i < triangleIndices.Length - 2; i+=3)
			{
				faceNormals.Add ((normals[triangleIndices[i]] + normals[triangleIndices[i + 1]] + normals[triangleIndices[i + 2]])/3);
			}
			SystemLogger.write ("Loading sample points from save file.");
			samplePoints = new Dictionary<long, List<ProceduralGenerationPoint>>();
			reconstructSamplePoints(planetName);
		}
		else
		{
			samplePoints = generatePoisson (minDistance, newPointsCount);

		}

		if (generateAllAtOnce) {
			generateObjectsByName();
			StartCoroutine("generateAll");
		}
		else
		{
			generateInitialObjects ();

		}

		serializeSamplePoints ();

	}
	
	// Update is called once per frame
	void Update () {

		if(!generateAllAtOnce)
		{
			InstantiateBasedOnPlayerLocation ();
		}
	}

	/// <summary>
	/// Generates objects at eaach sample point at once.
	/// </summary>
	public IEnumerator generateAll()
	{
		SystemLogger.write ("Creating objects for all sample points...");
		Object[] largeObjects = Resources.LoadAll (folder + "/Large");
		Object[] mediumObjects = Resources.LoadAll (folder + "/Medium");
		Object[] smallObjects = Resources.LoadAll (folder + "/Small");
		Object[] powerUpObjects = Resources.LoadAll (powerupFolder);
		List<long> keys = new List<long> (samplePoints.Keys);
		long key;

		for(int j = 0; j < keys.Count; j++)
		{
			key = keys[j];

			for(int i = 0; i < samplePoints[key].Count; i++)
			{
				GameObject ob;

				if(samplePoints[key][i].objectName == null)
				{
					GameObject selection;
					if(samplePoints[key][i].size == small)
					{
						selection = (GameObject) smallObjects[Random.Range(0, smallObjects.Length)];
						ob = GameObject.Instantiate(selection);
					}
					else if(samplePoints[key][i].size == medium)
					{
						selection = (GameObject) mediumObjects[Random.Range(0, mediumObjects.Length)];
						ob = GameObject.Instantiate(selection);
					}
					else if(samplePoints[key][i].size == large)
					{
						selection = (GameObject) largeObjects[Random.Range(0, largeObjects.Length)];
						ob = GameObject.Instantiate(selection);
					}
					else
					{
						selection = (GameObject) powerUpObjects[Random.Range(0, powerUpObjects.Length)];
						ob = GameObject.Instantiate(selection);
					}
				
					ob.transform.localPosition = samplePoints[key][i].position + medium * faceNormals[samplePoints[key][i].triangleIndex];
					//ob.transform.localPosition = samplePoints[key][i].position ;
					ob.gameObject.name = selection.name;
					samplePoints[key][i].objectName = ob.gameObject.name;
				}
				else
				{
					ob = GameObject.Instantiate(objectByName[samplePoints[key][i].objectName]);
					ob.name = samplePoints[key][i].objectName;
				}

				EnvironmentOrienter orienter = ob.GetComponent<EnvironmentOrienter>();
				orienter.OrientToPlanet();
				orienter.DropToPlanet();
			}

			yield return null;
		}

		SystemLogger.write ("Generated objects!");
	}

	/// <summary>
	/// Generates the objects in the objectsByName pool. To be used during reloading sample points from save file.
	/// </summary>
	public void generateObjectsByName()
	{
		SystemLogger.write ("Setting objects by name...");
		Object[] largeObjects = Resources.LoadAll (folder + "/Large");
		Object[] mediumObjects = Resources.LoadAll (folder + "/Medium");
		Object[] smallObjects = Resources.LoadAll (folder + "/Small");
		
		int i;
		
		objectBySize.Add ("Small", new List<GameObject> ());
		
		for(i = 0; i < smallObjects.Length; i++)
		{
			objectByName.Add (smallObjects[i].name, (GameObject) smallObjects[i]);
		}

		for(i = 0; i < mediumObjects.Length; i++)
		{
			objectByName.Add (mediumObjects[i].name, (GameObject) mediumObjects[i]);
		}

		for(i = 0; i < largeObjects.Length; i++)
		{
			objectByName.Add (largeObjects[i].name, (GameObject) largeObjects[i]);
		}

	}

	/// <summary>
	/// Generates the initial pool of objects to be used in chunk by chunk generation.
	/// </summary>
	public void generateInitialObjects()
	{
		SystemLogger.write ("Creating object pool...");

		Object[] largeObjects = Resources.LoadAll (folder + "/Large");
		Object[] mediumObjects = Resources.LoadAll (folder + "/Medium");
		Object[] smallObjects = Resources.LoadAll (folder + "/Small");
		Object[] powerUpObjects = Resources.LoadAll (powerupFolder);

		int i, j;

		objectBySize.Add ("Small", new List<GameObject> ());

		for(i = 0; i < smallObjects.Length; i++)
		{
			objectBySize["Small"].Add((GameObject) smallObjects[i]);
			objectPoolByName.Add(smallObjects[i].name, new List<EnvironmentOrienter>());
			objectByName.Add (smallObjects[i].name, (GameObject) smallObjects[i]);

			for(j = 0; j < initialObjects; j++)
			{
				GameObject ob = GameObject.Instantiate((GameObject) smallObjects[i]);

				ob.name = smallObjects[i].name;
				ob.transform.parent = transform;
				ob.SetActive(false);
				objectPoolByName[ob.name].Add(ob.GetComponent<EnvironmentOrienter>());
			}
		}

		objectBySize.Add ("Medium", new List<GameObject> ());

		for(i = 0; i < mediumObjects.Length; i++)
		{
			objectBySize["Medium"].Add((GameObject) mediumObjects[i]);
			objectPoolByName.Add(mediumObjects[i].name, new List<EnvironmentOrienter>());

			for(j = 0; j < initialObjects; j++)
			{
				GameObject ob = GameObject.Instantiate((GameObject) mediumObjects[i]);

				ob.name = mediumObjects[i].name;
				ob.transform.parent = transform;
				ob.SetActive(false);
				objectPoolByName[ob.name].Add(ob.GetComponent<EnvironmentOrienter>());
			}
		}

		objectBySize.Add ("Large", new List<GameObject> ());
		for(i = 0; i < largeObjects.Length; i++)
		{
			objectBySize["Large"].Add((GameObject) largeObjects[i]);
			objectPoolByName.Add(largeObjects[i].name, new List<EnvironmentOrienter>());

			for(j = 0; j < initialObjects; j++)
			{
				GameObject ob = GameObject.Instantiate((GameObject) largeObjects[i]);
				
				ob.name = largeObjects[i].name;
				ob.transform.parent = transform;
				ob.SetActive(false);
				objectPoolByName[ob.name].Add(ob.GetComponent<EnvironmentOrienter>());
			}
		}

		objectBySize.Add ("PowerUp", new List<GameObject> ());
		for(i = 0; i < largeObjects.Length; i++)
		{
			objectBySize["PowerUp"].Add((GameObject) powerUpObjects[i]);
			objectPoolByName.Add(powerUpObjects[i].name, new List<EnvironmentOrienter>());

			for(j = 0; j < initialObjects; j++)
			{
				GameObject ob = GameObject.Instantiate((GameObject) powerUpObjects[i]);
				
				ob.name = powerUpObjects[i].name;
				ob.transform.parent = transform;
				ob.SetActive(false);
				objectPoolByName[ob.name].Add(ob.GetComponent<EnvironmentOrienter>());
			}
		}
	}

	/// <summary>
	/// Depending on player location, it will pull objects from the object pool and set them to appear in the chunks that the player can see. Chunks that
	/// are too far away will be deactivated and the objects sent back into the pool.
	/// </summary>
	public void InstantiateBasedOnPlayerLocation()
	{
		Vector2 playerUVLoc = Player.Instance.getUVLocation (layerMask);
		long gridKey = toGrid (playerUVLoc, chunkCellSize, chunkGridOffset);

		long y = gridKey / gridOffset;
		long x = gridKey - (y * gridOffset);

		long key;

		for(long i = x - 3; i < x + 3; i++)
		{
			for(long j = y - 3; j < y + 3; j++)
			{ 
				key = i + j * chunkGridOffset;

				if(chunkStatus.ContainsKey(key))
				{
					if(Mathf.Abs(x - i) < 3 && Mathf.Abs(y - j) < 3)
					{
						if(!chunkStatus[key])
						{
							activateChunk(key);
						}

					}
					else
					{
						if(chunkStatus[key])
						{
							disableChunk(key);
						}

					}
				}
			}
		}
	}

	/// <summary>
	/// Activates the chunk by pulling from the object pool and activating those objects within the chunk.
	/// </summary>
	/// <param name="key">All sample points are hashed into chunks by the key. So this key will give a list of objects within a chunk.</param>
	public void activateChunk(long key)
	{
		SystemLogger.write ("Activating chunk " + key);
		List<ProceduralGenerationPoint> points = samplePoints [key];
		int choice;
		string name;
		EnvironmentOrienter ob;

		for(int i = 0; i < points.Count; i++)
		{
			if(points[i].objectName == null)
			{
				if(points[i].size == small)
				{
					choice = Random.Range(0, objectBySize["Small"].Count);
					name = objectBySize["Small"][choice].name;

				}
				else if(points[i].size == medium)
				{
					choice = Random.Range(0, objectBySize["Medium"].Count);
					name = objectBySize["Medium"][choice].name;
				}
				else if(points[i].size == large)
				{
					choice = Random.Range(0, objectBySize["Large"].Count);
					name = objectBySize["Large"][choice].name;
				}
				else
				{
					choice = Random.Range(0, objectBySize["PowerUp"].Count);
					name = objectBySize["PowerUp"][choice].name;
				}

				ob = objectPoolByName[name][0];
				objectPoolByName[name].RemoveAt(0);

				samplePoints[key][i].objectName = name;
			}
			else
			{
				name = points[i].objectName;

				ob = objectPoolByName[name][0];
				objectPoolByName[name].RemoveAt(0);
			}
			
			if(objectPoolByName[name].Count <= 1)
			{
				GameObject o = GameObject.Instantiate(objectPoolByName[name][0].gameObject);
				o.name = name;
				o.transform.parent = transform;
				objectPoolByName[name].Add(o.GetComponent<EnvironmentOrienter>());
			}

			// objects must be generated away from planet for the drop to planet to work, so here, the normal is used to place the objects away from
			// the planet

			ob.transform.localPosition = points[i].position + samplePoints[key][i].size * faceNormals[samplePoints[key][i].triangleIndex];
			ob.gameObject.SetActive(true);
			ob.OrientToPlanet();
			ob.DropToPlanet();
			chunkGrid[key].Add(ob);
		}

		chunkStatus [key] = true;
	}

	/// <summary>
	/// Disables the chunk and send objects back into object pool.
	/// </summary>
	/// <param name="key">Key.</param>
	public void disableChunk(long key)
	{
		List<EnvironmentOrienter> objects = chunkGrid [key];
		string name;

		for (int i = 0; i < objects.Count; i++) 
		{
			name = objects[i].gameObject.name;
			objectPoolByName[name].Add(objects[i]);
			objects[i].gameObject.SetActive(false);
		}

		chunkGrid [key].Clear ();
		chunkStatus [key] = false;
	}


	/// <summary>
	/// Generates the poisson sampling points that can be used to determine where to place objects.
	/// </summary>
	/// <returns>The poisson sampling point.</returns>
	/// <param name="minDistance">Minimum distance.</param>
	/// <param name="newPointsCount">Number of new points that should be generated around an existing point.</param>
	public Dictionary<long, List<ProceduralGenerationPoint>> generatePoisson(float minDistance, int newPointsCount)
	{
		SystemLogger.write ("Began generating poisson sample points");
		// gets triangle indices from first submesh
		int[] triangleIndices = mesh.GetTriangles (0);

		Vector3[] vertices = mesh.vertices;
		Vector2[] uvs = mesh.uv;
		Vector3[] normals = mesh.normals;
		Dictionary<long, List<ProceduralGenerationPoint>> samplePoints = new Dictionary<long, List<ProceduralGenerationPoint>> ();

		List<ProceduralGenerationPoint> processList = new List<ProceduralGenerationPoint> ();

		ProceduralGenerationPoint point;

		int rand;
		long gridPoint;
		float minDis;
	
		int tries = 0;

		for(int i =  0; i < triangleIndices.Length - 2; i+=3)
		{
			Vector3[] triangleVertices = new Vector3[3];
			triangleVertices[0] = vertices[triangleIndices[i]];
			triangleVertices[1] = vertices[triangleIndices[i+1]];
			triangleVertices[2] = vertices[triangleIndices[i+2]];

			triangles.Add (triangleVertices);

			Vector2[] triangleUVs = new Vector2[3];
			triangleUVs[0] = uvs[triangleIndices[i]];
			triangleUVs[1] = uvs[triangleIndices[i + 1]];
			triangleUVs[2] = uvs[triangleIndices[i + 2]];
			
			uvsToTriangles.Add(triangleUVs);

			faceNormals.Add ((normals[triangleIndices[i]] + normals[triangleIndices[i + 1]] + normals[triangleIndices[i + 2]])/3);
		}

		// calculates the ratio of a distance on the 3d mesh to a distance on the 2d uv by getting the distance from the same 2 points on both the mesh
		// and on the uv

		ProceduralGenerationPoint temp = new ProceduralGenerationPoint (getInterpolation (triangles [0]));
		temp.triangleIndex = 0;
		temp.uvPosition = meshPointToUv (temp);

		ProceduralGenerationPoint temp2 = new ProceduralGenerationPoint (getInterpolation (triangles [1]));
		temp2.triangleIndex = 1;
		temp2.uvPosition = meshPointToUv (temp2);

		uvToMeshRatio = Vector2.Distance (temp.uvPosition, temp2.uvPosition) / Vector3.Distance (temp.position, temp2.position);

		// size of cells in the mesh grid for generation
		cellSize = (minDistance / Mathf.Sqrt (2f)) * uvToMeshRatio;

		// calculates the area of a triangle on the mesh

		Vector3 side1 = triangles [0] [0] - triangles [0] [1];
		Vector3 side2 = triangles [0] [1] - triangles [0] [2];
		Vector3 side3 = triangles [0] [2] - triangles [0] [0];

		triangleArea = Vector3.Cross (side1 - side2, side1 - side3).magnitude;

		// the number to offset the y value from the x to create a unique index for vector2 hashes in the dictionary
		int initialNumber = Mathf.CeilToInt ((triangleArea * uvToMeshRatio) / cellSize) * triangles.Count;
		int power = Mathf.CeilToInt (Mathf.Log10 (initialNumber));
		gridOffset = Mathf.RoundToInt(Mathf.Pow (10, power));
		power = Mathf.CeilToInt (Mathf.Log10(planetSections));
		chunkGridOffset = Mathf.RoundToInt (Mathf.Pow (10, power));

		SystemLogger.write ("Creating starting seeds...");
		// creates the starting seeds from which points will be generated around
		for (int i = 0; i < startingSeeds; ++i) 
		{
			rand = Random.Range (0, triangles.Count);
			ProceduralGenerationPoint firstPoint = new ProceduralGenerationPoint (getInterpolation (triangles [rand]));
			firstPoint.triangleIndex = rand;
			firstPoint.uvPosition = meshPointToUv(firstPoint);

			// the color at that location
			Color c = getColorAtTriangle(firstPoint);

			firstPoint.size = getSize(getColorChance(c));
			firstPoint.c = c;

			gridPoint = toGrid (firstPoint.uvPosition, chunkCellSize, chunkGridOffset);
			firstPoint.chunkGridPosition = gridPoint;
			firstPoint.gridPosition = toGrid (firstPoint.uvPosition, cellSize, gridOffset);
			// the minimum distance of generation taking into acount the minimum distance allowed between objects, the density of the region, and the size of
			// the object being generated around, all multiplied by the uvToMeshRatio so that the measurement is given in terms of uv distance

			minDis = (minDistance + distanceVariance * getDensity(c) + firstPoint.size) * uvToMeshRatio;
			tries = 0;

			// if there is already a point within that cell then it is automatically too close to another point
			// otherwise it will check with overlappingPoint whether or not it is too close to any cells in its neighborhood
			// if either are true then that means the point is invalid and another point is generated as an attemp

			while ((1- getDensity(firstPoint.c)) < startingSeedsDensityThreshold || chunkGrid.ContainsKey(gridPoint) 
			       || grid.ContainsKey(firstPoint.gridPosition)|| overlappingPoint(grid, firstPoint, minDis, cellSize, firstPoint.triangleIndex)) 
			{
				rand = Random.Range (0, triangles.Count);
				firstPoint.position = getInterpolation (triangles [rand]);
				firstPoint.triangleIndex = rand;
				firstPoint.uvPosition = meshPointToUv(firstPoint);

				gridPoint = toGrid(firstPoint.uvPosition, chunkCellSize, chunkGridOffset);
				firstPoint.chunkGridPosition = gridPoint;
				firstPoint.gridPosition = toGrid (firstPoint.uvPosition, cellSize, gridOffset);

				minDis = (minDistance + distanceVariance * getDensity(c) + firstPoint.size) * uvToMeshRatio;

				// it will only keep generating new points in an attempt at generating a valid point as many times as the maxAttempts allows
				if(tries < maxAttempts)
				{
					tries ++;
				}
				else
				{
					break;
				}
			}

			// tries < maxAttempts that means it exited the while loop because there was a valid point and not because there were too many
			// atempts taken

			if (tries < maxAttempts) 
			{
				// uses grid location as key in sample points dictionary for access later
				long key = firstPoint.chunkGridPosition;
				firstPoint.gridPosition = toGrid (firstPoint.uvPosition, cellSize, gridOffset);
				if(!samplePoints.ContainsKey(key))
				{
					samplePoints.Add(key, new List<ProceduralGenerationPoint>());
				}

				// registers a chunk to mark it as having objects if chunk is not already registered
				if(!chunkStatus.ContainsKey(key))
				{
					chunkStatus.Add(key, false);
				}

				if(!chunkGrid.ContainsKey(key))
				{
					chunkGrid.Add(key, new List<EnvironmentOrienter>());
				}

				samplePoints[key].Add (firstPoint);
				processList.Add (firstPoint);

				// add point to grid

				grid.Add (firstPoint.gridPosition, firstPoint);
			}
		}

		currentObjects = startingSeeds;

		// not based on those seeds, generate objects around them

		SystemLogger.write ("Creating the surrounding points....");

		while (currentObjects < maxObjects && processList.Count != 0) 
		{
			point = processList[processList.Count - 1];
			processList.RemoveAt(processList.Count - 1);
			tries = 0;
			for(int i = 0; i < newPointsCount; ++i)
			{
				// generate a random point around an existing point
				ProceduralGenerationPoint newPoint = generateRandomPointAround (point.triangleIndex, triangles, uvsToTriangles, minDistance + distanceVariance + large);

				Color c = getColorAtTriangle(newPoint);
				newPoint.size = getSize(getColorChance(c));
				newPoint.c = c;
				gridPoint = toGrid (newPoint.uvPosition, cellSize, gridOffset);
				newPoint.gridPosition = gridPoint;
				minDis = (minDistance + distanceVariance * getDensity(c) + newPoint.size) * uvToMeshRatio;

				while ((1- getDensity(newPoint.c)) < generationDensityThreshold  || grid.ContainsKey(gridPoint) || overlappingPoint(grid, newPoint, minDis,cellSize, newPoint.triangleIndex)) 
				{
					newPoint = generateRandomPointAround (point.triangleIndex, triangles, uvsToTriangles, minDistance + distanceVariance + large);

					minDis = (minDistance + distanceVariance * getDensity(c) + newPoint.size) * uvToMeshRatio;
					gridPoint = toGrid (newPoint.uvPosition, cellSize, gridOffset);
					newPoint.gridPosition = gridPoint;

					if(tries < maxAttempts)
					{
						tries ++;
					}
					else
					{
						break;
					}
				}

				if (tries < maxAttempts) 
				{
					long key = toGrid(newPoint.uvPosition, chunkCellSize, chunkGridOffset);
					if(!samplePoints.ContainsKey(key))
					{
						samplePoints.Add(key, new List<ProceduralGenerationPoint>());
					}

					samplePoints[key].Add (newPoint);
					processList.Add(newPoint);

					if(!chunkStatus.ContainsKey(key))
					{
						chunkStatus.Add(key, false);
					}

					if(!chunkGrid.ContainsKey(key))
					{
						chunkGrid.Add(key, new List<EnvironmentOrienter>());
					}

					currentObjects++;
					grid.Add(gridPoint, newPoint);

					newPoint.chunkGridPosition = key;

					tries = 0;
				}
				else
				{
					break;
				}

				if(currentObjects >= maxObjects)
				{
					break;
				}
			}

		}

		return samplePoints;
	}

	/// <summary>
	/// Takes in a uv point and returns a grid location. Can be used for grids of different sizes, for example the main point grid which keeps track of where
	/// each point generated is on the mesh, or for the chunk grid which divides up the mesh into sections for generation. The value returned is an long representation
	/// of a vector2. The x value is in the lower decimal places, and the y value is in the higher decimal places. How far apart the two numbers are is determined
	/// by the gridOffset. For example, if the gridOffset is 1000, that is, there can be up to 999 x values, then if x is 30, and y is 89, the value returned will
	/// be 89030.
	/// </summary>
	/// <returns>A value that represents a location in a grid of a certain size.</returns>
	/// <param name="point">Point.</param>
	/// <param name="minSize">Minimum size.</param>
	/// <param name="gridOffset">Grid offset.</param>
	public long toGrid(Vector2 point, float minSize, long gridOffset)
	{
		long x = Mathf.CeilToInt (point.x / minSize);
		long y = Mathf.CeilToInt (point.y / minSize);

		return x + y * gridOffset;
	}

	/// <summary>
	/// Generates the random point around an existing point.
	/// </summary>
	/// <returns>A point.</returns>
	/// <param name="triangleIndex">Triangle index.</param>
	/// <param name="triangles">Triangles.</param>
	/// <param name="uvsToTriangles">Uvs to triangles.</param>
	/// <param name="minDistance">Minimum distance.</param>
	public ProceduralGenerationPoint generateRandomPointAround(int triangleIndex, List<Vector3[]> triangles, List<Vector2[]> uvsToTriangles, float minDistance)
	{
		// the range of triangle index values away that a point can be generated
		int range = Mathf.CeilToInt (minDistance / triangleArea * 3f);

		// the actual index value away of the triangle used to generate a new point
		int x = 0;

		if (Random.Range (0, 2) == 0) 
		{
			x = Random.Range (range, 2*range);
		}
		else
		{
			x = Random.Range (-2 * range, -range);
		}

		while((triangleIndex + x) >= triangles.Count || (triangleIndex + x) < 0)
		{
			if (Random.Range (0, 2) == 0) 
			{
				x = Random.Range (range, 2*range);
			}
			else
			{
				x = Random.Range (-2 * range, -range);
			}
		}

		ProceduralGenerationPoint p = new ProceduralGenerationPoint(getInterpolation (triangles [triangleIndex + x]));

		p.triangleIndex = triangleIndex + x;
		p.uvPosition = meshPointToUv (p);
	
		p.size = getSize(getColorChance(getColorAtTriangle(p)));   
		p.c = getColorAtTriangle (p);
		return p;
	}

	/// <summary>
	/// Gets the point on the face of the triangle given a triangle represented by 3 location points.
	/// </summary>
	/// <returns>A location on a triangle.</returns>
	/// <param name="triangle">A location.</param>
	public Vector3 getInterpolation(Vector3[] triangle)
	{
		float alpha = Random.Range (0f, 1f);
		float beta = Random.Range (0f, 1f);

		Vector3 newPoint = (triangle [0] * alpha) + ((triangle [1] * beta) + (triangle [2] * (1 - beta))) * (1 - alpha);
		return newPoint;
	}


	/// <summary>
	/// Is too close to another object. Calculated based upon isophotic distance
	/// </summary>
	/// <returns><c>true</c>, if range was ined, <c>false</c> otherwise.</returns>
	/// <param name="pos1">Pos1.</param>
	/// <param name="pos2">Pos2.</param>
	public bool inRange(Vector2 pos1, Vector2 pos2, float minDist)
	{
		if(Vector2.Distance (pos1, pos2) * 1.1f < minDist)
		{
			return true;
		}

		return false;
	}

	/// <summary>
	/// Checks the neighboring grid locations to see if there's an object that is too close to a certain point.
	/// </summary>
	/// <returns><c>true</c> if it is too close to something <c>false</c> otherwise.</returns>
	/// <param name="grid">Grid.</param>
	/// <param name="point">Point.</param>
	/// <param name="minDistance">Minimum distance.</param>
	/// <param name="cellSize">Cell size.</param>
	/// <param name="triangle">Triangle.</param>
	public bool overlappingPoint(Dictionary<long, ProceduralGenerationPoint> grid, ProceduralGenerationPoint point, float minDistance, float cellSize, int triangle)
	{
		Vector2 newPoint = point.uvPosition;
		long gridPoint = point.gridPosition;
		int y = (int) gridPoint / gridOffset;
		int x = (int) gridPoint - (y * gridOffset);

		int gridSpaces = Mathf.CeilToInt(minDistance / cellSize);
		long key;

		for(int i = x - gridSpaces; i < gridSpaces + x; ++i)
		{
			for(int j = y - gridSpaces; j < gridSpaces + y; ++j)
			{
				if( i != x && j != y)
				{
					key = i + j * gridOffset;

					if(grid.ContainsKey(key))
					{
						if(inRange(grid[key].uvPosition, newPoint, minDistance + grid[key].size))
						{
							return true;
						}
					}
				}
			}
		}

		return false;
	}

	/// <summary>
	/// Gets the color at a location.
	/// </summary>
	/// <returns>The color at location on the me.</returns>
	/// <param name="point">Point.</param>
	public Color getColorAtTriangle(ProceduralGenerationPoint point)
	{
		int x = Mathf.FloorToInt(point.uvPosition.x * heatmapColors.width);
		int y = Mathf.FloorToInt(point.uvPosition.y * heatmapColors.height);
		return heatmapColors.GetPixel(x, y);
	}

	
	/// <summary>
	/// Gets the chance for an object to be created at a certain size based on the color of the point in heatmap.
	/// </summary>
	/// <returns>2 thresholds, one for small, and one for medium objects. Large will just be anything remaining under 1. </returns>
	/// <param name="c">A color from the heatmap, c.</param>
	public Vector2 getColorChance(Color c)
	{
		float total = c.r + c.b + c.g;

		return new Vector3(c.r/total, (c.r + c.b) / total);
	}

	/// <summary>
	/// Gets the size that the object should be based on the heatmap.
	/// </summary>
	/// <returns>The size.</returns>
	/// <param name="colorChances">There are 2 color chances passed in. If the random number is under the first threshold, then a small object is generated,
	/// if it's under the second then a medium object is generated. Otherwise, a large object is generated. </param>

	public float getSize(Vector2 colorChances)
	{
		float i = Random.Range (0f, 1f);

		if (i < powerupChance) {
	
			return powerUpSize;
		} else {
			i = Random.Range (0f, 1f);
			if (i < colorChances [0]) {
				return small;
			} else if (i < colorChances [1]) {
				return medium;
			}
	
			return large;
		}
	}

	/// <summary>
	/// Turns a Vector3 position on the mesh to a Vector2 uv point.
	/// </summary>
	/// <returns>The Vector2 uv point.</returns>
	/// <param name="point">Point.</param>

	public Vector2 meshPointToUv(ProceduralGenerationPoint point)
	{
		Vector3 toP1 = triangles[point.triangleIndex][0] - point.position;
		Vector3 toP2 = triangles[point.triangleIndex][1] - point.position;
		Vector3 toP3 = triangles[point.triangleIndex][2] - point.position;

		float triangleArea = Vector3.Cross (toP1 - toP2, toP1 - toP3).magnitude;
		float a1 = Vector3.Cross (toP2, toP3).magnitude / triangleArea;
		float a2 = Vector3.Cross (toP3, toP1).magnitude / triangleArea;
		float a3 = Vector3.Cross (toP1, toP2).magnitude / triangleArea;

		Vector2 uv = uvsToTriangles[point.triangleIndex][0] * a1 + uvsToTriangles[point.triangleIndex][1] * a2 + uvsToTriangles[point.triangleIndex][2] * a3;

		return uv;
	}

	/// <summary>
	/// Gets the density value for a color. This is determined by how dark the color is, which is determined her by how close the average of the 3 RBG values.
	/// Brightest algorithm: brightness  =  sqrt( .241 R2 + .691 G2 + .068 B2 )
	/// </summary>
	/// <returns>The density.</returns>
	/// <param name="c">C.</param>

	public float getDensity(Color c)
	{
		float density = Mathf.Sqrt(Mathf.Pow(c.b * 255, 2f) * 0.68f + Mathf.Pow(c.g * 255, 2f) * 0.691f + Mathf.Pow (c.r * 255, 2f) * 0.241f) / 255f;

		return density;
	}

	// Struct that contains serializable information
	public struct serializedInformation
	{
		public List<long> samplePointKeys;
		public List<Vector3> samplePointLocations;
		public List<string> samplePointObjects;
		public List<long> samplePointChunks;
		public List<int> triangleIndexes;
	}

	/// <summary>
	/// Sets up the sample points for serialization.
	/// </summary>
	public void serializeSamplePoints()
	{
		serializedInformation info = new serializedInformation ();

		List<long> samplePointChunks = new List<long> (samplePoints.Keys);
		List<Vector3> samplePointLocations = new List<Vector3> ();
		List<string> samplePointObjects = new List<string> ();
		List<long> samplePointKeys = new List<long> ();
		List<int> triangleIndices = new List<int> ();

		for(int i = 0; i < samplePointChunks.Count; i++)
		{
			for(int j = 0; j < samplePoints[samplePointChunks[i]].Count; j++)
			{
				samplePointLocations.Add(samplePoints[samplePointChunks[i]][j].position);
				samplePointObjects.Add(samplePoints[samplePointChunks[i]][j].objectName);
				samplePointKeys.Add(samplePointChunks[i]);
				triangleIndices.Add (samplePoints[samplePointChunks[i]][j].triangleIndex);
			}
		}

		info.samplePointLocations = samplePointLocations;
		info.samplePointObjects = samplePointObjects;
		info.samplePointKeys = samplePointKeys;
		info.samplePointChunks = samplePointChunks;
		info.triangleIndexes = triangleIndices;

		SystemLogger.write("Setting up sample points for serialization for " + planetName);
		if(!serializedSamplePointsByPlanet.ContainsKey(planetName))
		{
			serializedSamplePointsByPlanet.Add(planetName, info);
		}
		else
		{
			serializedSamplePointsByPlanet[planetName] = info;
		}
	}

	/// <summary>
	/// Reconstructs the sample points after save file load.
	/// </summary>
	/// <param name="name">Name of planet.</param>
	public void reconstructSamplePoints(string name)
	{
		SystemLogger.write ("Reconstructing sample points");

		int i = 0;

		while(i < serializedSamplePointsByPlanet[name].samplePointLocations.Count)
		{
			long key = serializedSamplePointsByPlanet[name].samplePointKeys[i];
			if(!samplePoints.ContainsKey(key))
			{
				samplePoints.Add(key, new List<ProceduralGenerationPoint>());
			}

			ProceduralGenerationPoint p = new ProceduralGenerationPoint(serializedSamplePointsByPlanet[name].samplePointLocations[i]);
			p.objectName = serializedSamplePointsByPlanet[name].samplePointObjects[i];
			Debug.Log ("Points " + serializedSamplePointsByPlanet[name].triangleIndexes.Count);
			p.triangleIndex = serializedSamplePointsByPlanet[name].triangleIndexes[i];
			samplePoints[key].Add (p);
			i++;
		}
	}

	/// <summary>
	/// Waits for loading of the save file so that on continue,
	/// it will wait until the file has been loaded before the 
	/// procedural generation will be set off.
	/// </summary>
	/// <returns>The for load.</returns>
	public IEnumerator waitForLoad()
	{
		while (!SaveSystem.Instance.getLoaded()) 
		{
			yield return null;
		}

		SystemLogger.write ("Finished loading save file!");
		LoadPlanet ();
	}
}
