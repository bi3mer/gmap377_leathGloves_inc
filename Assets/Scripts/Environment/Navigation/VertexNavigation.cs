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

    // height of vertices off ground
    public float verticeHeight = .5f;

    // TODO: document this stuff
	[HideInInspector]
	[SerializeField]
	public List<Vertice> movementLookup;

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

    public void modifyVerticeHeights()
    {
        // Get mesh of planet
        this.mesh = GetComponent<MeshFilter>().sharedMesh;

        // Get copy of vertices
        System.Array.Copy(this.mesh.vertices, this.vertices, this.mesh.vertices.Length);

        // Get copy of triangles
        this.triangles = mesh.triangles;

        // Convert vertices to global coordiantes
        for (int i = 0; i < mesh.vertexCount; ++i)
        {
            // get global position
            vertices[i] = this.transform.TransformPoint(vertices[i]);

            // Get angle to planet
            Vector3 angleToPlanet = vertices[i] - this.transform.position;

            // Adjust vertice a tiny bit up
            vertices[i] += (angleToPlanet.normalized * this.verticeHeight);
        }
    }
	
	/// <summary>
	/// Map 3d sphere to 2d coordiante system
	/// Not finished
	/// </summary>
	public void buildTable() 
	{
		// Initiailize look up list
        this.movementLookup = new List<Vertice>();

		// Get Radius
		this._radius = GetComponent<SphereCollider>().radius * transform.localScale.x;

        // Modify vertice heights and set paramaters
        this.modifyVerticeHeights();

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

                // Increase size of array til proper size
                while (vertice >= this.movementLookup.Count)
                {
                    this.movementLookup.Add(null);
                }

                // Check if key exists, if not add to dictionary
                if (this.movementLookup[vertice] == null)
                {
                    // Create new vertices
                    Vertice vert = new Vertice();
                    vert.position = this.vertices[vertice];

                    // Add new vertice to dictionary
					this.movementLookup[vertice] = vert;
                }

                // Add remaining
                switch (vertexIndex)
                {
                    case 0:
                        this.movementLookup[vertice].Add(mesh.triangles[globalIndex + 1]);
                        this.movementLookup[vertice].Add(mesh.triangles[globalIndex + 2]);
                        break;
                    case 1:
                        this.movementLookup[vertice].Add(mesh.triangles[globalIndex - 1]);
                        this.movementLookup[vertice].Add(mesh.triangles[globalIndex + 1]);
                        break;
                    case 2:
                        this.movementLookup[vertice].Add(mesh.triangles[globalIndex - 1]);
                        this.movementLookup[vertice].Add(mesh.triangles[globalIndex - 2]);
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
		this.movementLookup = null;
	}

    /// <summary>
    /// Print occurrences per number of moves in vertex
    /// </summary>
    public void printMoves()
    {
        // data structure
        Dictionary<int, int> numMoves = new Dictionary<int, int>();

        // store moves
        for (int i = 0; i < this.movementLookup.Count; ++i)
        {
            // get key
            int key = this.movementLookup[i].getMoves().Count;
            
            // Check if dictionary has key
            if (!numMoves.ContainsKey(key))
            {
                // add key to dicitonary
                numMoves.Add(key, 0);
            }

            // Increment
            ++numMoves[key];
        }

        // print key value paris
        foreach (int key in numMoves.Keys)
        {
            print(key + ": " + numMoves[key]);
        }

		// Print size of movement Lookup
		print ("size of dictionary: " + this.movementLookup.Count);

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
        return this.movementLookup[vertexIndex].getMoves();
    }

	/// <summary>
	/// get a vertex from the index of an vertex
	/// </summary>
	/// <returns>The vertex.</returns>
	/// <param name="vertexIndex">Vertex index.</param>
    public Vertice getVertex(int vertexIndex)
    {
		return this.movementLookup[vertexIndex];
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
