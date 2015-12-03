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
	public float flyingVerticeHeight = 5f;

    // TODO: document this stuff
	[HideInInspector]
	[SerializeField]
	public List<Vertice> movementLookup;

	[HideInInspector]
    public int[] triangles
	{
		get
		{
			return this.mesh.triangles;
		}

		set
		{
			// pass
		}
	}

	[HideInInspector]
	public Mesh mesh;

	[HideInInspector]
	public Vector3[] vertices;

	[HideInInspector]
	public Vector3[] flyingVertices;

	// Show nodes in gizmo draw
	public bool showGroundNodes;
	public bool showFlyingNodes;

    // Radius of planet
	[HideInInspector]
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
		this.vertices = (Vector3[]) this.mesh.vertices.Clone();
		this.flyingVertices = (Vector3[]) this.mesh.vertices.Clone();

        // Convert vertices to global coordiantes
        for (int i = 0; i < mesh.vertexCount; ++i)
        {
			// get global position
			this.vertices[i] = this.transform.TransformPoint(vertices[i]);
			this.flyingVertices[i] = this.vertices[i];

			// Get angle to planet
			Vector3 angleToPlanet = vertices[i] - this.transform.position; 

			// Adjust vertice a tiny bit up
			this.vertices[i] += (angleToPlanet.normalized * this.verticeHeight);
			this.flyingVertices[i] += (angleToPlanet.normalized * this.flyingVerticeHeight);
        }
    }

	private void increaseArraySize(int[] indices)
	{
		int maxIndex = Mathf.Max(indices);
		while (maxIndex >= this.movementLookup.Count)
		{
			this.movementLookup.Add(null);
		}
	}

	private void connectVerts(Dictionary<Vector3, int> knownPositions, int[] verts)
	{
		// Array mapped to changed vertices
		bool[] changed = {false, false, false};

		// Loop through keys to check vertices
		foreach(Vector3 key in knownPositions.Keys)
		{
			// All vertices changed
			if(changed[0] && changed[1] && changed[2])
			{
				break;
			}

			// indices always size 3
			for(int i = 0; i < 3; ++i)
			{
				if(!changed[i] && key.Equals(this.vertices[verts[i]]))
				{
					if(this.movementLookup[verts[i]] == null)
					{
						this.movementLookup[verts[i]] = new Vertice(knownPositions[key], true);
					}

					verts[i] = knownPositions[key];
					changed[i] = true;
				}
			}
		}

		// Array size always 3
		for(int i = 0; i < 3; ++i)
		{
			// Check if not changed
			if(!changed[i])
			{
				// Add to vistied vertice
				knownPositions.Add (this.vertices[verts[i]], verts[i]);
			}

			// check if movmeent lookup has vert
			if(this.movementLookup[verts[i]] == null) 
			{
				// add new vertice
				this.movementLookup[verts[i]] = new Vertice(verts[i], false);
			}
		}
	}

	private int[] addConnectingVerts(int triangleIndex, int vertexIndex)
	{
		// Index to triangle array
		int globalIndex = triangleIndex + vertexIndex;

		// Create vertice index relative to triangle index
		int vertice, connectingVerticeOne, connectingVerticeTwo;
		vertice = this.triangles[globalIndex];
		
		// Get connectinv vertices based on vertex index
		switch (vertexIndex)
		{
		    case 0:
			    connectingVerticeOne = this.mesh.triangles[globalIndex + 1];
                connectingVerticeTwo = this.mesh.triangles[globalIndex + 2];
			    break;
			
		    case 1:
                connectingVerticeOne = this.mesh.triangles[globalIndex + 1];
                connectingVerticeTwo = this.mesh.triangles[globalIndex - 1];
			    break;
			
		    default:
                connectingVerticeOne = this.mesh.triangles[globalIndex - 1];
                connectingVerticeTwo = this.mesh.triangles[globalIndex - 2];
			    break;
		}
		
		// Increase size of array till proper size
		return new int[]{vertice, connectingVerticeOne, connectingVerticeTwo};
	}

	/// <summary>
	/// Map 3d sphere to 2d coordiante system
	/// NOT FINISHED
	/// </summary>
	public void buildTable() 
	{
		// Initiailize look up list
        this.movementLookup = new List<Vertice>();

		// Get Radius
		this._radius = GetComponent<SphereCollider>().radius * this.transform.localScale.x;

        // Modify vertice heights and set paramaters
        this.modifyVerticeHeights();

		// Dicitonary of vertices in use
		Dictionary<Vector3, int> knownPositions = new Dictionary<Vector3, int>();

		// Loop through triangles
        for (int triangleIndex = 0; triangleIndex < this.triangles.Length; triangleIndex += 3)
        {
            // loop through vertexes
            for (int vertexIndex = 0; vertexIndex < 3; ++vertexIndex)
            {
				// get array of vertice
				int[] verts = this.addConnectingVerts(triangleIndex, vertexIndex);

				// Incrase max array size to accomodate new verts
				this.increaseArraySize(verts);

				// connect the verts together
				this.connectVerts(knownPositions, verts);

                // Add connecting verts
				this.movementLookup[verts[0]].Add(verts[1]);
				this.movementLookup[verts[0]].Add(verts[2]);
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
        Debug.Log("Index : " + vertexIndex + ", length: " + this.movementLookup.Count);
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
		if(this.showGroundNodes)
		{
			Gizmos.color = Color.red;
			foreach(Vector3 vert in this.vertices)
			{
				Gizmos.DrawCube(vert, new Vector3(.2f, .2f, .2f));
			}
		}

		if(this.showFlyingNodes)
		{
			Gizmos.color = Color.green;
			foreach(Vector3 vert in this.flyingVertices)
			{
				Gizmos.DrawCube(vert, new Vector3(.2f, .2f, .2f));
			}
		}
	}

	void Start()
	{
		// Get Radius
		this._radius = GetComponent<SphereCollider>().radius * this.transform.localScale.x;

		// modify heights of vertices
		this.modifyVerticeHeights();
	}
}
