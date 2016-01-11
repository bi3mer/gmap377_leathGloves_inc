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
	public int maxAttempts;
	public int newPointsCount;
	public float minDistance;
	public int startingSeeds;

	Dictionary<string, Vector3> grid;

	List<GameObject> objects;
	float triangleArea;

	// Use this for initialization
	void Start () {
		grid = new Dictionary<string, Vector3>();
		objects = new List<GameObject> ();

		List<Vector3> samplePoints = generatePoisson (minDistance, newPointsCount);
		generateObjects (samplePoints);
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	public void generateObjects(List<Vector3> samplePoints)
	{
		Vector3 scale = new Vector3 (minDistance, minDistance, minDistance)/2f;
		for(int i = 0; i < samplePoints.Count; i++)
		{
			GameObject ob = GameObject.Instantiate(dotTester);
			ob.transform.parent = transform;
			ob.transform.localPosition = samplePoints[i];
			ob.transform.localScale = scale;
			objects.Add(ob);
		}
	}

	public List<Vector3> generatePoisson(float minDistance, int newPointsCount)
	{
		float cellSize = minDistance / Mathf.Sqrt (2f);
		int[] triangleIndices = mesh.GetTriangles (0);
		List<Vector3[]> triangles = new List<Vector3[]> ();
		Vector3[] vertices = mesh.vertices;

		List<Vector3> samplePoints = new List<Vector3> ();
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
		}

		float side1 = Vector3.Distance (triangles [0] [0], triangles [0] [1]);
		float side2 = Vector3.Distance (triangles [0] [1], triangles [0] [2]);
		float side3 = Vector3.Distance (triangles [0] [2], triangles [0] [0]);
		float s = (side1 + side2 + side3) / 2f;

		triangleArea = Mathf.Sqrt (s * (s - side1) * (s - side2) * (s - side3));

		for (int i = 0; i < startingSeeds; i++) {
			rand = Random.Range (0, triangles.Count);
			ProceduralGenerationPoint firstPoint = new ProceduralGenerationPoint (getInterpolation (triangles [rand]));
			firstPoint.triangleIndex = rand;

			gridPoint = toGrid (firstPoint.position, cellSize);

			while (grid.ContainsKey(gridPoint) || overlappingPoint(grid, firstPoint.position, minDistance, cellSize)) 
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

			if (!overlappingPoint (grid, firstPoint.position, minDistance, cellSize) && !grid.ContainsKey(gridPoint) && tries < maxAttempts) 
			{
				samplePoints.Add (firstPoint.position);
				processList.Add (firstPoint);


				grid.Add (gridPoint, firstPoint.position);
			}
		}

		while (processList.Count != 0) 
		{
			point = processList[processList.Count - 1];
			processList.Remove(point);
			tries = 0;

			for(int i = 0; i < newPointsCount; i++)
			{
				ProceduralGenerationPoint newPoint = generateRandomPointAround (point.triangleIndex, triangles, minDistance);
				gridPoint = toGrid (newPoint.position, cellSize);
			
				while (grid.ContainsKey(gridPoint) || overlappingPoint(grid, newPoint.position, minDistance, cellSize)) 
				{
					newPoint = generateRandomPointAround (point.triangleIndex, triangles, minDistance);
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

				if (!overlappingPoint (grid, newPoint.position, minDistance, cellSize) && !grid.ContainsKey(gridPoint) && tries < maxAttempts) 
				{
					samplePoints.Add (newPoint.position);
					processList.Add(newPoint);

					grid.Add(gridPoint, newPoint.position);
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

	public ProceduralGenerationPoint generateRandomPointAround(int triangleIndex, List<Vector3[]> triangles, float minDistance)
	{
		int range = Mathf.CeilToInt (minDistance / triangleArea) * 50;
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
		float dist_isophotic = Vector3.Distance (pos1, pos2) * 1.016f;

		if(dist_isophotic < minDist)
		{
			return true;
		}

		return false;
	}

	public bool overlappingPoint(Dictionary<string, Vector3> grid, Vector3 point, float minDistance, float cellSize)
	{
		string  gridPoint = toGrid (point, cellSize);
		string[] nums = gridPoint.Split (':');

		int x = int.Parse (nums [0]);
		int y = int.Parse (nums [1]);
		int z = int.Parse (nums [2]);

		int gridSpaces = 3;

		string key;

		for(float i = x + 1; i < gridSpaces + x; i++)
		{
			for(float j = y + 1; j < gridSpaces + y; j++)
			{
				for(float k = z + 1 ; k < gridSpaces + z; k++)
				{
					key = ((int) i) + ":" + ((int) j) + ":" + ((int) k);

					if(grid.ContainsKey(key))
					{
						if(inRange(grid[key], point, minDistance))
						{
							return true;
						}
					}
				}
			}
		}

		
		for(float i = x - gridSpaces; i < x; i++)
		{
			for(float j = y - gridSpaces; j < y; j++)
			{
				for(float k = z - gridSpaces; k < z; k++)
				{
					key = ((int) i) + ":" + ((int) j) + ":" + ((int) k);
					
					if(grid.ContainsKey(key))
					{
						if(inRange(grid[key], point, minDistance))
						{
							return true;
						}
					}
				}
			}
		}

		return false;
	}
}
