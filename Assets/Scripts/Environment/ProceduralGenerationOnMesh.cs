using UnityEngine;
using System.Collections;
using System.Collections.Generic;

/// <summary>
/// Generates a poisson distribution on the mesh.
/// </summary>
/// 
public class ProceduralGenerationOnMesh : MonoBehaviour {

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
	[Tooltip("The heatmap used for this mesh.")]
	public Texture2D heatmapColors;

	[Tooltip("Size of small objects.")]
	public float small;
	[Tooltip("Size of medium objects.")]
	public float medium;
	[Tooltip("Size of large objects")]
	public float large;

	[Tooltip("Folder where the objects that should be used in the environment are found. Should have Large, Medium, and Small subfolders.")]
	public string folder;

	public int planetSections;
	public int initialObjects;
	public bool generateAllAtOnce;

	Dictionary<string, ProceduralGenerationPoint> grid;
	Dictionary<string, List<EnvironmentOrienter>> chunkGrid;
	Dictionary<string, bool> chunkStatus;
	Dictionary<string, List<ProceduralGenerationPoint>> samplePoints;
	List<Color> colors;
	float triangleArea;
	int currentObjects;

	//Dictionary<string, string> locationToObject;
	Dictionary<string, List<EnvironmentOrienter>> objectPoolByName;
	Dictionary<string, List<GameObject>> objectBySize;

	Mesh mesh;
	float cellSize;
	float chunkCellSize;
	float uvToMeshRatio;

	int layerMask;
	List<Vector3[]> triangles;
	List<Vector2[]> uvsToTriangles;

	// Use this for initialization
	void Start () {
		mesh = GetComponent<MeshFilter> ().mesh;
		grid = new Dictionary<string, ProceduralGenerationPoint>();
		chunkGrid = new Dictionary<string, List<EnvironmentOrienter>> ();
		chunkStatus = new Dictionary<string, bool> ();

		objectPoolByName = new Dictionary<string, List<EnvironmentOrienter>> ();
		objectBySize = new Dictionary<string, List<GameObject>>();

		triangles = new List<Vector3[]> ();
		uvsToTriangles = new List<Vector2[]> ();

		
		chunkCellSize = 1f / planetSections;
		layerMask = gameObject.layer;

		LoadPlanet ();
	}

	public void LoadPlanet()
	{
		samplePoints = generatePoisson (minDistance, newPointsCount);
		
		if (generateAllAtOnce) {
			generateAll();
		}
		else
		{
			generateInitialObjects ();
		}
	}
	
	// Update is called once per frame
	void Update () {

		if(!generateAllAtOnce)
		{
			InstantiateBasedOnPlayerLocation ();
		}
	}

	public void generateAll()
	{
		Object[] largeObjects = Resources.LoadAll (folder + "/Large");
		Object[] mediumObjects = Resources.LoadAll (folder + "/Medium");
		Object[] smallObjects = Resources.LoadAll (folder + "/Small");

		int choice;
		string size;


		foreach(string key in samplePoints.Keys)
		{
			for(int i = 0; i < samplePoints[key].Count; i++)
			{
				GameObject ob;
				if(samplePoints[key][i].size == small)
				{
					ob = GameObject.Instantiate((GameObject) smallObjects[Random.Range(0, smallObjects.Length)]);
				}
				else if(samplePoints[key][i].size == medium)
				{
					ob = GameObject.Instantiate((GameObject) mediumObjects[Random.Range(0, mediumObjects.Length)]);
				}
				else
				{
					ob = GameObject.Instantiate((GameObject) largeObjects[Random.Range(0, largeObjects.Length)]);
				}

				
				ob.transform.parent = transform;
				ob.transform.localPosition = samplePoints[key][i].position;
				ob.GetComponent<EnvironmentOrienter>().DropToPlanet();
			}

		}
	}
	public void generateInitialObjects()
	{
		Object[] largeObjects = Resources.LoadAll (folder + "/Large");
		Object[] mediumObjects = Resources.LoadAll (folder + "/Medium");
		Object[] smallObjects = Resources.LoadAll (folder + "/Small");

		int i, j;

		objectBySize.Add ("Small", new List<GameObject> ());

		for(i = 0; i < smallObjects.Length; i++)
		{
			objectBySize["Small"].Add((GameObject) smallObjects[i]);
			objectPoolByName.Add(smallObjects[i].name, new List<EnvironmentOrienter>());

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
	
	}

	public void InstantiateBasedOnPlayerLocation()
	{
		Vector2 playerUVLoc = Player.Instance.getUVLocation (layerMask);
		string gridKey = toGrid (playerUVLoc, chunkCellSize);

		string[] nums = gridKey.Split (':');
		
		int x = int.Parse (nums [0]);
		int y = int.Parse (nums [1]);

		string key;

		for(int i = x - 3; i < x + 3; i++)
		{
			for(int j = y - 3; j < y + 3; j++)
			{ 
				key = i + ":" + j;

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

	public void activateChunk(string key)
	{
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
				else
				{
					choice = Random.Range(0, objectBySize["Large"].Count);
					name = objectBySize["Large"][choice].name;
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

			ob.transform.localPosition = points[i].position;
			ob.gameObject.SetActive(true);
			ob.DropToPlanet();
			chunkGrid[key].Add(ob);
		}

		chunkStatus [key] = true;
	}


	public void disableChunk(string key)
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

	public Dictionary<string, List<ProceduralGenerationPoint>> generatePoisson(float minDistance, int newPointsCount)
	{
		int[] triangleIndices = mesh.GetTriangles (0);

		Vector3[] vertices = mesh.vertices;
		Vector2[] uvs = mesh.uv;

		Dictionary<string, List<ProceduralGenerationPoint>> samplePoints = new Dictionary<string, List<ProceduralGenerationPoint>> ();
		colors = new List<Color> ();
		List<ProceduralGenerationPoint> processList = new List<ProceduralGenerationPoint> ();

		ProceduralGenerationPoint point;

		int rand;
		string gridPoint;
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
		}

		ProceduralGenerationPoint temp = new ProceduralGenerationPoint (getInterpolation (triangles [0]));
		temp.triangle = triangles [0];
		temp.uvPos = uvsToTriangles [0];
		temp.uvPosition = meshPointToUv (temp);

		ProceduralGenerationPoint temp2 = new ProceduralGenerationPoint (getInterpolation (triangles [1]));
		temp2.triangle = triangles [1];
		temp2.uvPos = uvsToTriangles [1];
		temp2.uvPosition = meshPointToUv (temp2);

		uvToMeshRatio = Vector2.Distance (temp.uvPosition, temp2.uvPosition) / Vector3.Distance (temp.position, temp2.position);
		cellSize = (minDistance / Mathf.Sqrt (2f)) * uvToMeshRatio;

		float side1 = Vector3.Distance (triangles [0] [0], triangles [0] [1]);

		triangleArea = side1;

		for (int i = 0; i < startingSeeds; ++i) {
			rand = Random.Range (0, triangles.Count);
			ProceduralGenerationPoint firstPoint = new ProceduralGenerationPoint (getInterpolation (triangles [rand]));
			firstPoint.triangleIndex = rand;
			firstPoint.triangle = triangles[rand];
			firstPoint.uvPos = uvsToTriangles[rand];
			firstPoint.uvPosition = meshPointToUv(firstPoint);

			Color c = getColorAtTriangle(firstPoint);

			firstPoint.size = getSize(getColorChance(c));

			gridPoint = toGrid (firstPoint.uvPosition, cellSize);
			minDis = (minDistance + distanceVariance * getDensity(c) + firstPoint.size) * uvToMeshRatio;
		
			while (grid.ContainsKey(gridPoint) || overlappingPoint(grid, firstPoint, minDis, cellSize, firstPoint.triangleIndex)) 
			{
				rand = Random.Range (0, triangles.Count);
				firstPoint.position = getInterpolation (triangles [rand]);
				firstPoint.triangleIndex = rand;
				firstPoint.triangle = triangles[rand];
				firstPoint.uvPos = uvsToTriangles[rand];
				firstPoint.uvPosition = meshPointToUv(firstPoint);

				gridPoint = toGrid (firstPoint.uvPosition, cellSize);
				minDis = (minDistance + distanceVariance * getDensity(c) + firstPoint.size) * uvToMeshRatio;

				if(tries < maxAttempts)
				{
					tries ++;
				}
				else
				{
					break;
				}
			}

			if (tries < maxAttempts && !grid.ContainsKey(gridPoint) && !overlappingPoint(grid, firstPoint, minDis, cellSize, firstPoint.triangleIndex)) 
			{
				string key = toGrid(firstPoint.uvPosition, chunkCellSize);
				if(!samplePoints.ContainsKey(key))
				{
					samplePoints.Add(key, new List<ProceduralGenerationPoint>());
				}

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
				
				colors.Add(getColorAtTriangle(firstPoint));
				grid.Add (gridPoint, firstPoint);
			}
		}

		currentObjects = samplePoints.Count;

		while (currentObjects < maxObjects && processList.Count != 0) 
		{
			point = processList[processList.Count - 1];
			processList.RemoveAt(processList.Count - 1);
			tries = 0;
			for(int i = 0; i < newPointsCount; ++i)
			{
				ProceduralGenerationPoint newPoint = generateRandomPointAround (point.triangleIndex, triangles, uvsToTriangles, minDistance + distanceVariance + large);

				Color c = getColorAtTriangle(newPoint);
				newPoint.size = getSize(getColorChance(c));

				gridPoint = toGrid (newPoint.uvPosition, cellSize);
			
				minDis = (minDistance + distanceVariance * getDensity(c) + newPoint.size) * uvToMeshRatio;
				
				while (grid.ContainsKey(gridPoint) || overlappingPoint(grid, newPoint, minDis, cellSize, newPoint.triangleIndex)) 
				{
					newPoint = generateRandomPointAround (point.triangleIndex, triangles, uvsToTriangles, minDistance + distanceVariance + large);

					minDis = (minDistance + distanceVariance * getDensity(c) + newPoint.size) * uvToMeshRatio;
					gridPoint = toGrid (newPoint.uvPosition, cellSize);

					if(tries < maxAttempts)
					{
						tries ++;
					}
					else
					{
						break;
					}
				}

				if (tries < maxAttempts && !grid.ContainsKey(gridPoint) && !overlappingPoint(grid, newPoint, minDis, cellSize, newPoint.triangleIndex)) 
				{
					string key = toGrid(newPoint.uvPosition, chunkCellSize);
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

					colors.Add(getColorAtTriangle(newPoint));
					currentObjects++;
					grid.Add(gridPoint, newPoint);
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

	public string toGrid(Vector2 point, float minSize)
	{
		int x = Mathf.CeilToInt (point.x / minSize);
		int y = Mathf.CeilToInt (point.y / minSize);
		string p = x + ":" + y;

		return p;
	}

	public ProceduralGenerationPoint generateRandomPointAround(int triangleIndex, List<Vector3[]> triangles, List<Vector2[]> uvsToTriangles, float minDistance)
	{
		int range = Mathf.CeilToInt (minDistance / triangleArea * 3f);
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
		p.triangle = triangles [p.triangleIndex];
		p.uvPos = uvsToTriangles[triangleIndex + x];
		p.uvPosition = meshPointToUv (p);
		p.triangle = triangles [p.triangleIndex];

		p.size = getSize(getColorChance(getColorAtTriangle(p)));                                                         
		return p;
	}

	/// Gets a point 
	public Vector3 getInterpolation(Vector3[] triangle)
	{
		float alpha = Random.Range (0f, 1f);
		float beta = Random.Range (0f, 1f);

		Vector3 newPoint = (triangle [0] * alpha) + ((triangle [1] * beta) + (triangle [2] * (1 - beta))) * (1 - alpha);
		return newPoint;
	}


	/// <summary>
	/// Is in range. Calculated based upon isophotic distance
	/// </summary>
	/// <returns><c>true</c>, if range was ined, <c>false</c> otherwise.</returns>
	/// <param name="pos1">Pos1.</param>
	/// <param name="pos2">Pos2.</param>
	public bool inRange(Vector2 pos1, Vector2 pos2, float minDist)
	{
		float dist_isophotic = Vector2.Distance (pos1, pos2) * 1.3f;

		if(dist_isophotic < minDist)
		{
			return true;
		}

		return false;
	}

	public bool overlappingPoint(Dictionary<string, ProceduralGenerationPoint> grid, ProceduralGenerationPoint point, float minDistance, float cellSize, int triangle)
	{
		Vector2 newPoint = point.uvPosition;
		string  gridPoint = toGrid (newPoint, cellSize);
		string[] nums = gridPoint.Split (':');
		
		int x = int.Parse (nums [0]);
		int y = int.Parse (nums [1]);

		int gridSpaces = Mathf.CeilToInt(minDistance / cellSize);
		string key;

		for(int i = x - gridSpaces; i < gridSpaces + x; ++i)
		{
			for(int j = y - gridSpaces; j < gridSpaces + y; ++j)
			{
				if( i != x && j != y)
				{
					key = i + ":" + j;

					if(grid.ContainsKey(key))
					{
						if(inRange(grid[key].uvPosition, newPoint, (minDistance + grid[key].size) * uvToMeshRatio))
						{
							return true;
						}
					}
				}
			}
		}

		return false;
	}


	public Color getColorAtTriangle(ProceduralGenerationPoint point)
	{
		int x = Mathf.FloorToInt(point.uvPosition.x * heatmapColors.width);
		int y = Mathf.FloorToInt(point.uvPosition.y * heatmapColors.height);
		return heatmapColors.GetPixel(x, y);
	}

	public Vector2 getColorChance(Color c)
	{
		float total = c.r + c.b + c.g;

		return new Vector3(c.r/total, (c.r + c.b) / total);
	}

	public float getSize(Vector2 colorChances)
	{
		float i = Random.Range (0f, 1f);

		if(i < colorChances[0])
		{
			return small;
		}
		else if(i < colorChances[1])
		{
			return medium;
		}
	
		return large;
	}

	public Vector2 meshPointToUv(ProceduralGenerationPoint point)
	{
		Vector3 toP1 = point.triangle[0] - point.position;
		Vector3 toP2 = point.triangle[1] - point.position;
		Vector3 toP3 = point.triangle[2] - point.position;

		float triangleArea = Vector3.Cross (toP1 - toP2, toP1 - toP3).magnitude;
		float a1 = Vector3.Cross (toP2, toP3).magnitude / triangleArea;
		float a2 = Vector3.Cross (toP3, toP1).magnitude / triangleArea;
		float a3 = Vector3.Cross (toP1, toP2).magnitude / triangleArea;

		Vector2 uv = point.uvPos [0] * a1 + point.uvPos [1] * a2 + point.uvPos [2] * a3;
		return uv;
	}

	public float getDensity(Color c)
	{
		return (c.b + c.g + c.r)/3f;
	}
}
