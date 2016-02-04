using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.Linq;

[System.Serializable]
public class VertexNavigation : MonoBehaviour 
{
	// height of vertices off ground
	public float verticeHeight = .5f;
	public float flyingVerticeHeight = 5f;
	
	// TODO: document this stuff
	[HideInInspector]
	[SerializeField]
	public List<Vertice> movementLookup  = new List<Vertice>();
	
	[HideInInspector]
	public int[] triangles
	{
		get
		{
			return this.mesh.triangles;
		}
		// If no set should be available, can we remove the setter all together? (C# yes, Unity??)
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
	
	// Average vertex Length
	[HideInInspector]
	public float avgVertexlength;
	
	// Radius of planet
	[HideInInspector]
	public float Radius 
	{
		get;
		private set; // better way to protect setting.
	}
	
	public void modifyVerticeHeights()
	{
		// Get mesh of planet
		this.mesh = GetComponent<MeshFilter>().sharedMesh;
		
		// Get copy of vertices
		// Hmmm... do we have to clone these? Maybe, but maybe we can reuse them?
		this.vertices = (Vector3[]) this.mesh.vertices.Clone();
		this.flyingVertices = (Vector3[]) this.mesh.vertices.Clone();
		
		// Convert vertices to global coordiantes
		for (int i = 0; i < mesh.vertexCount; ++i)
		{
			// get global position
			this.vertices[i] = this.transform.TransformPoint(this.vertices[i]);
			this.flyingVertices[i] = this.vertices[i];
			
			// Get angle to planet
			Vector3 angleToPlanet = this.vertices[i] - this.transform.position; 
			
			// Adjust vertice a tiny bit up
			this.vertices[i] += (angleToPlanet.normalized * this.verticeHeight);
			this.flyingVertices[i] += (angleToPlanet.normalized * this.flyingVerticeHeight);
		}
	}
	
	public void setAverageVerticeLength()
	{
		// Set to low value
		float totalDistance = 0;
		float verticesExplored = 0;
		
		// Search through each vertex
		for(int i = 0; i < this.vertices.Length; ++i)
		{
			// Check if vertice is null or not
			if(this.vertices[i] != Vector3.zero)
			{
				// Get connecting verts
				foreach(int vert in this.getMovesVertex(i))
				{
					++verticesExplored;
					totalDistance += DistanceCalculator.squareEuclidianDistance(this.vertices[i], this.vertices[vert]);
				}
			}
		}
		
		// Calculate average and set square vertex length
		this.avgVertexlength = totalDistance / verticesExplored;
	}

	/// <summary>
	/// Increases the size of the plans array.
	/// </summary>
	/// <param name="indices">Indices.</param>
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

		// TODO: Remove foreach
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
						// Still not happy with the Vertice creation here....
						// It happens a lot, can we clean this up?
						this.movementLookup[verts[i]] = new Vertice(knownPositions[key], true, this);
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
				// Still not happy with the Vertice creation here....
				// It happens a lot, can we clean this up?
				this.movementLookup[verts[i]] = new Vertice(verts[i], false, this);
			}
		}
	}
	
	private void addConnectingVerts(int triangleIndex, int vertexIndex, ref int[] output)
	{
		// Index to triangle array
		int globalIndex = triangleIndex + vertexIndex;
		
		// Create vertice index relative to triangle index
		int connectingVerticeIndexOne, connectingVerticeIndexTwo;
		
		// Get connectinv vertices based on vertex index
		switch (vertexIndex)
		{
			case 0:
				connectingVerticeIndexOne = globalIndex + 1;
				connectingVerticeIndexTwo = globalIndex + 2;
				break;
				
			case 1:
				connectingVerticeIndexOne = globalIndex + 1;
				connectingVerticeIndexTwo = globalIndex - 1;
				break;
				
			default:
				connectingVerticeIndexOne = globalIndex - 1;
				connectingVerticeIndexTwo = globalIndex - 2;
				break;
		}
		
		// Increase size of array till proper size
		output[0] = this.triangles[globalIndex];
		output[1] = this.mesh.triangles[connectingVerticeIndexOne];
		output[2] = this.mesh.triangles[connectingVerticeIndexTwo];
	}
	
	/// <summary>
	/// Map 3d sphere to 2d coordinated system
	/// </summary>
	public void buildTable() 
	{
		// Initiailize look up list
		killTable();
		
		// Get Radius
		this.Radius = GetComponent<SphereCollider>().radius * this.transform.localScale.x;
		
		// Modify vertice heights and set paramaters
		this.modifyVerticeHeights();
		
		// Dicitonary of vertices in use
		Dictionary<Vector3, int> knownPositions = new Dictionary<Vector3, int>();
		
		// Loop through triangles
		int[] verts = new int[3];
		for (int triangleIndex = 0; triangleIndex < this.triangles.Length; triangleIndex += 3)
		{
			// loop through vertexes
			for (int vertexIndex = 0; vertexIndex < 3; ++vertexIndex)
			{
				// get array of vertice
				this.addConnectingVerts(triangleIndex, vertexIndex, ref verts);

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
		this.movementLookup.Clear();
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
	}
	
	// TODO: make this array instead of list for optimization (term 2)
	/// <summary>
	/// Gets the moves from a triangle index.
	/// </summary>
	/// <returns>The moves triangle.</returns>
	/// <param name="triangleIndex">Triangle index.</param>
	public void getMovesTriangle(int triangleIndex, ref int[] output)
	{
		// return arraylist
		output[0] = this.triangles[triangleIndex];
		output[1] = this.triangles[triangleIndex + 1];
		output[2] = this.triangles[triangleIndex + 2];
	}
	
	/// <summary>
	/// Gets the moves for a given vertex index.
	/// </summary>
	/// <returns>The moves vertex.</returns>
	/// <param name="vertexIndex">Vertex index.</param>
	public List<int> getMovesVertex(int vertexIndex)
	{
		return this.getVertex(vertexIndex).getMoves();
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

	// TODO: fix this to be better :D
	private Vector3 POINT2_X3 = new Vector3(.2f, .2f, .2f);
	
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
				Gizmos.DrawCube(vert, POINT2_X3);
			}
		}
		
		if(this.showFlyingNodes)
		{
			Gizmos.color = Color.green;
			foreach(Vector3 vert in this.flyingVertices)
			{
				Gizmos.DrawCube(vert, POINT2_X3);
			}
		}
	}
	
	void Start()
	{
		// Get Radius
		this.Radius = GetComponent<SphereCollider>().radius * this.transform.localScale.x;
		
		// modify heights of vertices
		this.modifyVerticeHeights();
	}
}