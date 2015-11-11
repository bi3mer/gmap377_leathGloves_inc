using UnityEngine;
using System.Collections;
using System.Collections.Generic;

[System.Serializable]
public class VertexNavigation : MonoBehaviour 
{
	/// <summary>
	/// 	Create Singleton
	/// </summary>
	public static VertexNavigation instance;
	public static VertexNavigation Instance
	{
		get
		{
			if(instance == null)
			{
				instance = GameObject.FindObjectOfType<VertexNavigation>();
			}
			return instance;
		}
	}

    // TODO: document this stuff
	[HideInInspector]
	[SerializeField]
	public List<Vertice> movemementLookup;

	[HideInInspector]
	[SerializeField]
    public int[] triangles;

	[HideInInspector]
	[SerializeField]
	public Mesh mesh;

	[HideInInspector]
	[SerializeField]
	public Vector3[] vertices;

	// Show nodes in gizmo draw
	public bool showNodes;

    // Radius of planet
	[SerializeField]
    private float _radius;
    public float radius 
    {
        get 
        {
            return this._radius;
        }
        set
        { 
            // pass
        }
    }
	
	/// <summary>
	/// Map 3d sphere to 2d coordiante system
	/// Not finished
	/// </summary>
	public void buildTable() 
	{
		// Initiailize look up list
		if(this.movemementLookup == null)
			this.movemementLookup = new List<Vertice>();

		// Get Radius
		this._radius = GetComponent<SphereCollider>().radius * transform.localScale.x;
		
		// Get mesh of planet
		this.mesh = GetComponent<MeshFilter>().sharedMesh;
		
		// Get copy of vertices
		this.vertices = mesh.vertices;
		
		// Get copy of triangles
		this.triangles = mesh.triangles;
		
		// Convert vertices to global coordiantes
		float scale = transform.localScale.x;
		for (int i = 0; i < mesh.vertexCount; ++i)
		{
			vertices[i] *= scale;
		}

		// Create lookup list from triangles
		for (int triangleIndex = 0; triangleIndex < this.mesh.triangles.Length; triangleIndex += 3)
		{
			// Loop through individiual triangle index
			for (int verticeIndex = 0; verticeIndex < 3; ++verticeIndex)
			{
				// Calculate index and key
				int globalTriangleIndex = triangleIndex + verticeIndex;
				int key = mesh.triangles[globalTriangleIndex];
				
				// If first time seeing this key, add to dictionary
				if (key <= this.movemementLookup.Count || this.movemementLookup[key] == null)
				{
					// Create new Vertice
					Vertice vert = new Vertice();
					vert.position = vertices[key];
					
					// add new vertice to dicitonary
					this.movemementLookup.Insert(key, vert);
				} 
				
				// TODO: better way? magic numbers?
				// Add other two vertices
				switch (verticeIndex) 
				{ 
					case 0:
						this.movemementLookup[key].Add(mesh.triangles[globalTriangleIndex + 1]);
						this.movemementLookup[key].Add(mesh.triangles[globalTriangleIndex + 2]);
						break;
					case 1:
						this.movemementLookup[key].Add(mesh.triangles[globalTriangleIndex - 1]);
						this.movemementLookup[key].Add(mesh.triangles[globalTriangleIndex + 1]);
						break;
					case 2:
						this.movemementLookup[key].Add(mesh.triangles[globalTriangleIndex - 1]);
						this.movemementLookup[key].Add(mesh.triangles[globalTriangleIndex - 2]);
						break;
				}
			}
		}
	}

	/// <summary>
	/// Kills the baked movement table.
	/// </summary>
	public void killTable()
	{
		this.movemementLookup = null;
	}

    // TODO: make this array instead of list for optimization (term 2)
	/// <summary>
	/// Gets the moves from a triangle index.
	/// </summary>
	/// <returns>The moves triangle.</returns>
	/// <param name="triangleIndex">Triangle index.</param>
    public List<int> getMovesTriangle(int triangleIndex)
    {
        // initialize
        List<int> indices = new List<int>();

        // add indices to arraylist
		indices.Add(this.triangles[triangleIndex]);
		indices.Add(this.triangles[triangleIndex + 1]);
		indices.Add(this.triangles[triangleIndex + 2]);

        // return arraylist
        return indices;
    }

	/// <summary>
	/// Gets the moves for a given vertex index.
	/// </summary>
	/// <returns>The moves vertex.</returns>
	/// <param name="vertexIndex">Vertex index.</param>
    public List<int> getMovesVertex(int vertexIndex)
    {
        return this.movemementLookup[vertexIndex].getMoves();
    }

	/// <summary>
	/// get a vertex from the index of an vertex
	/// </summary>
	/// <returns>The vertex.</returns>
	/// <param name="vertexIndex">Vertex index.</param>
    public Vertice getVertex(int vertexIndex)
    {
		return this.movemementLookup[vertexIndex];
    }

//	void Start()
//	{
//		this.buildTable();
//	}

	/// <summary>
	/// Raises the draw gizmos event to draw the available nodes.
	/// </summary>
	void OnDrawGizmos() 
	{
		if(this.showNodes)
		{
			Gizmos.color = Color.red;
			foreach(Vector3 vert in this.vertices)
			{
				Gizmos.DrawCube(vert, new Vector3(.2f, .2f, .2f));
			}
		}
	}
}
