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
    public int[] triangles;

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
//		System.Array.Copy(this.mesh.vertices, this.vertices, this.mesh.vertices.Length);
		this.vertices = (Vector3[]) this.mesh.vertices.Clone();
		this.flyingVertices = (Vector3[]) this.mesh.vertices.Clone();

        // Get copy of triangles
        this.triangles = mesh.triangles;

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
			this.flyingVertices[i] += (angleToPlanet * this.flyingVerticeHeight);
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

		// Dicitonary of vertices in use
		Dictionary<Vector3, int> knownPositions = new Dictionary<Vector3, int>();

		// Loop through triangles
        for (int triangleIndex = 0; triangleIndex < this.triangles.Length; triangleIndex += 3)
        {
            // loop through vertexes
            for (int vertexIndex = 0; vertexIndex < 3; ++vertexIndex)
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
                        connectingVerticeOne = mesh.triangles[globalIndex + 1];
                        connectingVerticeTwo = mesh.triangles[globalIndex + 2];
                        break;

                    case 1:
						connectingVerticeOne = mesh.triangles[globalIndex + 1];
                        connectingVerticeTwo = mesh.triangles[globalIndex - 1];
                        break;

                    default:
						connectingVerticeOne = mesh.triangles[globalIndex - 1];
                        connectingVerticeTwo = mesh.triangles[globalIndex - 2];
                        break;
                }

				// Increase size of array till proper size
				int[] vertices = {vertice, connectingVerticeOne, connectingVerticeTwo};
				int maxIndex = Mathf.Max(vertices);
				while (maxIndex >= this.movementLookup.Count)
				{
					this.movementLookup.Add(null);
				}

				// check if vertice has been visited
				bool verticeChanged = false;
				bool connectingVerticeOneChanged = false;
				bool connectingVerticeTwoChanged = false;
				
				// Loop through keys to check vertices
				foreach(Vector3 key in knownPositions.Keys)
				{
					if(verticeChanged && connectingVerticeOneChanged && connectingVerticeTwoChanged)
					{
						break;
					}
					if(!verticeChanged && key.Equals(this.vertices[vertice]))
					{
						this.movementLookup[vertice] = new Vertice(knownPositions[key], true);
						vertice = knownPositions[key];
						verticeChanged = true;
					}

					if(!connectingVerticeOneChanged && key.Equals(this.vertices[connectingVerticeOne]))
					{
						this.movementLookup[connectingVerticeOne] = new Vertice(knownPositions[key], true);
						connectingVerticeOne = knownPositions[key];
						connectingVerticeOneChanged = true;
					}

					if(!connectingVerticeTwoChanged && key.Equals(this.vertices[connectingVerticeTwo]))
					{
						this.movementLookup[connectingVerticeTwo] = new Vertice(knownPositions[key], true);
						connectingVerticeTwo = knownPositions[key];
						connectingVerticeTwoChanged = true;
					}
				}

				// TODO: look into array variant of this implementation to avoid the code duplication
				if(!verticeChanged)
				{
					knownPositions.Add(this.vertices[vertice], vertice);
				}
				
				if(!connectingVerticeOneChanged)
				{
					knownPositions.Add(this.vertices[connectingVerticeOne], connectingVerticeOne);
				}
				
				if(!connectingVerticeTwoChanged)
				{
					knownPositions.Add(this.vertices[connectingVerticeTwo], connectingVerticeTwo);
				}

                // Check if key exists, if not add to dictionary
                if (this.movementLookup[vertice] == null)
                {
                    // Add new vertice to dictionary
					this.movementLookup[vertice] = new Vertice(vertice, false);
                }

                // Add remaining
				this.movementLookup[vertice].Add(connectingVerticeOne);
				this.movementLookup[vertice].Add(connectingVerticeTwo);
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
		this.modifyVerticeHeights();
	}
}
