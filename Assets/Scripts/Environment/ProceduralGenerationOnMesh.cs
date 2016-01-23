using UnityEngine;
using System.Collections;
using System.Collections.Generic;

/// <summary>
/// Generates a poisson distribution on the mesh.
/// </summary>
/// 
public class ProceduralGenerationOnMesh : MonoBehaviour {

	public Mesh mesh;
	public float maxDensity;
	public float minDensity;
	public GameObject dotTester;
	public int maxObjects;
	public int maxAttempts;

	public int newPointsCount;
	public float minDistance;
	public float variance;

	public int startingSeeds;
	public Texture2D heatmapColors;

	public float small;
	public float medium;
	public float large;

	Dictionary<string, ProceduralGenerationPoint> grid;
	List<Color> colors;
	List<GameObject> objects;
	float triangleArea;
	int currentObjects;
	float meshArea;

	// Use this for initialization
	void Start () {
		grid = new Dictionary<string, ProceduralGenerationPoint>();
		objects = new List<GameObject> ();
		currentObjects = startingSeeds;
		meshArea = GetComponent<MeshRenderer> ().bounds.size.x;
		heatmapColors = GetComponent<MeshRenderer> ().material.mainTexture as Texture2D;
		//makeGrid ();
		//List<ProceduralGenerationPoint> samplePoints = generatePoisson (minDistance, newPointsCount);
		//generateObjects (samplePoints);

	}
	
	// Update is called once per frame
	void Update () {
	
	}

	public void generateObjects(List<ProceduralGenerationPoint> samplePoints)
	{
		for(int i = 0; i < samplePoints.Count; ++i)
		{
			GameObject ob = GameObject.Instantiate(dotTester);
			//ob.GetComponent<MeshRenderer>().material.color = colors[i];
			ob.transform.parent = transform;
			ob.transform.localPosition = samplePoints[i].position;
			//ob.transform.localScale = Vector3.one * samplePoints[i].size;
			objects.Add(ob);
		}
	}

	public List<ProceduralGenerationPoint> generatePoisson(float minDistance, int newPointsCount)
	{
		float cellSize = minDistance / Mathf.Sqrt (2f);
		int[] triangleIndices = mesh.GetTriangles (0);
		List<Vector3[]> triangles = new List<Vector3[]> ();
		List<Vector2> uvsToTriangles = new List<Vector2> ();

		Vector3[] vertices = mesh.vertices;
		Vector2[] uvs = mesh.uv;

		List<ProceduralGenerationPoint> samplePoints = new List<ProceduralGenerationPoint> ();
		colors = new List<Color> ();
		List<ProceduralGenerationPoint> processList = new List<ProceduralGenerationPoint> ();

		ProceduralGenerationPoint point;

		int rand;
		string gridPoint;

		int tries = 0;

		for(int i =  0; i < triangleIndices.Length - 2; ++i)
		{
			Vector3[] triangleVertices = new Vector3[3];
			triangleVertices[0] = vertices[triangleIndices[i]];
			triangleVertices[1] = vertices[triangleIndices[i+1]];
			triangleVertices[2] = vertices[triangleIndices[i+2]];

			triangles.Add (triangleVertices);

			Vector2 triangleUVs = uvs[triangleIndices[i]];
			
			uvsToTriangles.Add(triangleUVs);
		}

		float side1 = Vector3.Distance (triangles [0] [0], triangles [0] [1]);

		triangleArea = side1;

		for (int i = 0; i < startingSeeds; ++i) {
			rand = Random.Range (0, triangles.Count);
			ProceduralGenerationPoint firstPoint = new ProceduralGenerationPoint (getInterpolation (triangles [rand]));
			firstPoint.triangleIndex = rand;
			Color c = getColorAtTriangle(rand, uvsToTriangles);
			firstPoint.size = getSize(getColorChance(c));

			gridPoint = toGrid (firstPoint.position, cellSize);

			float minDis = minDistance + variance * getDensity(c) + firstPoint.size;

			while (grid.ContainsKey(gridPoint) || overlappingPoint(grid, firstPoint.position, minDis, cellSize)) 
			{
				firstPoint.position = getInterpolation (triangles [rand]);
				gridPoint = toGrid (firstPoint.position, cellSize);
				
				if(tries < maxAttempts)
				{
					tries ++;
				}
				else
				{
					break;
				}
			}

			if (tries < maxAttempts && !grid.ContainsKey(gridPoint) && !overlappingPoint(grid, firstPoint.position, minDis, cellSize)) 
			{
				samplePoints.Add (firstPoint);
				processList.Add (firstPoint);
				
				colors.Add(getColorAtTriangle(firstPoint.triangleIndex, uvsToTriangles));
				grid.Add (gridPoint, firstPoint);
			}
		}

		currentObjects = startingSeeds;

		while (currentObjects < maxObjects && processList.Count != 0) 
		{
			point = processList[processList.Count - 1];
			processList.Remove(point);
			tries = 0;
			for(int i = 0; i < newPointsCount; ++i)
			{
				ProceduralGenerationPoint newPoint = generateRandomPointAround (point.triangleIndex, triangles, uvsToTriangles, minDistance);
				Color c = getColorAtTriangle(point.triangleIndex, uvsToTriangles);
				newPoint.size = getSize(getColorChance(c));

				gridPoint = toGrid (newPoint.position, cellSize);
			
				float minDis = minDistance + variance * getDensity(c) + newPoint.size;

				while (grid.ContainsKey(gridPoint) || overlappingPoint(grid, newPoint.position, minDis, cellSize)) 
				{
					newPoint = generateRandomPointAround (point.triangleIndex, triangles, uvsToTriangles, minDis);
					gridPoint = toGrid (newPoint.position, cellSize);

					if(tries < maxAttempts)
					{
						tries ++;
					}
					else
					{
						break;
					}
				}

				if (tries < maxAttempts && !grid.ContainsKey(gridPoint) && !overlappingPoint(grid, newPoint.position, minDis, cellSize)) 
				{
					samplePoints.Add (newPoint);
					processList.Add(newPoint);

					colors.Add(getColorAtTriangle(newPoint.triangleIndex, uvsToTriangles));
					++ currentObjects;
					grid.Add(gridPoint, newPoint);
					tries = 0;
				}
				else
				{
					break;
				}
			}

		}

		return samplePoints;
	}

	public string toGrid(Vector3 point, float minSize)
	{
		int x = Mathf.CeilToInt (point.x / minSize);
		int y = Mathf.CeilToInt (point.y / minSize);
		int z = Mathf.CeilToInt (point.z / minSize);
		string p = x + ":" + y + ":" + z;

		return p;
	}

	public ProceduralGenerationPoint generateRandomPointAround(int triangleIndex, List<Vector3[]> triangles, List<Vector2> uvsToTriangles, float minDistance)
	{
		int range = Mathf.CeilToInt (meshArea * minDistance / triangleArea + minDistance);
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
		p.size = getSize(getColorChance(getColorAtTriangle(p.triangleIndex, uvsToTriangles)));                                                         
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
	public bool inRange(Vector3 pos1, Vector3 pos2, float minDist)
	{
		float dist_isophotic = Vector3.Distance (pos1, pos2) * 1.3f;

		if(dist_isophotic < minDist)
		{
			return true;
		}

		return false;
	}

	public bool overlappingPoint(Dictionary<string, ProceduralGenerationPoint> grid, Vector3 point, float minDistance, float cellSize)
	{
		string  gridPoint = toGrid (point, cellSize);
		string[] nums = gridPoint.Split (':');

		int x = int.Parse (nums [0]);
		int y = int.Parse (nums [1]);
		int z = int.Parse (nums [2]);

		int gridSpaces = Mathf.CeilToInt(minDistance / cellSize);
		string key;

		for(float i = x + 1; i < gridSpaces + x; ++i)
		{
			for(float j = y + 1; j < gridSpaces + y; ++j)
			{
				for(float k = z + 1 ; k < gridSpaces + z; ++k)
				{
					key = ((int) i) + ":" + ((int) j) + ":" + ((int) k);

					if(grid.ContainsKey(key))
					{
						if(inRange(grid[key].position, point, minDistance + grid[key].size))
						{
							return true;
						}
					}
				}
			}
		}

		
		for(float i = x - gridSpaces; i < x; ++i)
		{
			for(float j = y - gridSpaces; j < y; ++j)
			{
				for(float k = z - gridSpaces; k < z; ++k)
				{
					key = ((int) i) + ":" + ((int) j) + ":" + ((int) k);
					
					if(grid.ContainsKey(key))
					{
						if(inRange(grid[key].position, point, minDistance + grid[key].size))
						{
							return true;
						}
					}
				}
			}
		}

		return false;
	}

	public Color getColorAtTriangle(int triangleIndex, List<Vector2> uvs)
	{
		int x = Mathf.FloorToInt(uvs[triangleIndex].x * heatmapColors.width);
		int y = Mathf.FloorToInt(uvs[triangleIndex].y * heatmapColors.height);
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

	public float getDensity(Color c)
	{
		return (c.b + c.g + c.r)/3f;
	}
}
