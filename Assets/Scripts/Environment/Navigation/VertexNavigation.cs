using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.Linq;

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
	public List<KeyValuePair<int, Vertice>> movemementLookup;

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
		this.movemementLookup = new List<KeyValuePair<int, Vertice>>();

		// temp holder dictionary
		Dictionary<int, Vertice> movementDictionary = new Dictionary<int, Vertice>();

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

        // Loop through triangles
        for (int triangleIndex = 0; triangleIndex < this.triangles.Length; triangleIndex += 3)
        {
            // loop through vertexes
            for (int vertexIndex = 0; vertexIndex < 3; ++vertexIndex)
            {
                // Index to triangle array
                int globalIndex = triangleIndex + vertexIndex;

                // Create vertice index relative to triangle index
                int vertice = this.triangles[globalIndex];

                // Check if key exists, if not add to dictionary
                if (!movementDictionary.ContainsKey(vertice))
                {
                    // Create new vertices
                    Vertice vert = new Vertice();
                    vert.position = this.vertices[vertice];

                    // Add new vertice to dictionary
					movementDictionary[vertice] = vert;
                }

                // Add remaining
                switch (vertexIndex)
                {
                    case 0:
                        movementDictionary[vertice].Add(mesh.triangles[globalIndex + 1]);
                        movementDictionary[vertice].Add(mesh.triangles[globalIndex + 2]);
                        break;
                    case 1:
                        movementDictionary[vertice].Add(mesh.triangles[globalIndex - 1]);
                        movementDictionary[vertice].Add(mesh.triangles[globalIndex + 1]);
                        break;
                    case 2:
                        movementDictionary[vertice].Add(mesh.triangles[globalIndex - 1]);
                        movementDictionary[vertice].Add(mesh.triangles[globalIndex - 2]);
                        break;
                }
            }
        }

		// Convert dictionary to list
		this.movemementLookup = movementDictionary.ToList();
	}

	/// <summary>
	/// Kills the baked movement table.
	/// </summary>
	public void killTable()
	{
		this.movemementLookup = null;
	}

    /// <summary>
    /// Print occurrences per number of moves in vertex
    /// </summary>
    public void printMoves()
    {
        // data structure
        Dictionary<int, int> numMoves = new Dictionary<int, int>();

        // store moves
        for (int i = 0; i < this.movemementLookup.Count; ++i)
        {
            int key = this.movemementLookup[i].Value.getMoves().Count;
            if (!numMoves.ContainsKey(key))
            {
                numMoves.Add(key, 0);
            }
            ++numMoves[key];
        }

        // print key value paris
        foreach (int key in numMoves.Keys)
        {
            print(key + ": " + numMoves[key]);
        }

		// Print size of movement Lookup
		print ("size of dictionary: " + this.movemementLookup.Count);

        // Print total number of verts
        print("total number of vertices: " + VertexNavigation.Instance.triangles.Length);
    }

    // TODO: make this array instead of list for optimization (term 2)
	/// <summary>
	/// Gets the moves from a triangle index.
	/// </summary>
	/// <returns>The moves triangle.</returns>
	/// <param name="triangleIndex">Triangle index.</param>
    public List<int> getMovesTriangle(int triangleIndex)
    {
        // return arraylist
        return new List<int>(new int[] {this.triangles[triangleIndex], this.triangles[triangleIndex + 1], this.triangles[triangleIndex + 2]});
    }

	/// <summary>
	/// Gets the moves for a given vertex index.
	/// </summary>
	/// <returns>The moves vertex.</returns>
	/// <param name="vertexIndex">Vertex index.</param>
    public List<int> getMovesVertex(int vertexIndex)
    {
        return this.movemementLookup[vertexIndex].Value.getMoves();
    }

	/// <summary>
	/// get a vertex from the index of an vertex
	/// </summary>
	/// <returns>The vertex.</returns>
	/// <param name="vertexIndex">Vertex index.</param>
    public Vertice getVertex(int vertexIndex)
    {
		return this.movemementLookup[vertexIndex].Value;
    }

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
