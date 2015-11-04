using UnityEngine;
using System.Collections;
using System.Collections.Generic;

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
    private Dictionary<int, Vertice> movementDictionary = new Dictionary<int, Vertice>();
    public int[] trinagles;
	public Mesh mesh;
	public Vector3[] vertices;

    // TODO: comment
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
	/// 	Map 3d sphere to 2d coordiante system
    /// 	Not finished
	/// </summary>
	void Start () 
	{
        // Get Radius
        this._radius = GetComponent<SphereCollider>().radius * transform.localScale.x;

		// Get mesh of planet
		this.mesh = GetComponent<MeshFilter>().mesh;

        // Get copy of vertices
        this.vertices = mesh.vertices;
        
        // Get copy of triangles
        this.trinagles = mesh.triangles;

        // Convert vertices to global coordiantes
        float scale = transform.localScale.x;
        for (int i = 0; i < mesh.vertexCount; ++i)
        {
            vertices[i] *= scale;
        }
		// VertexNavigation.Instance.vertices[VertexNavigation.Instance.trinagles[hit.triangleIndex * 3 + 0]]


        // TODO: magic number 3, fix this!
        // Construct linked list with dictionary and vertices
        for (int triangleIndex = 0; triangleIndex < mesh.triangles.Length; triangleIndex += 3)
        {
            // Loop through individiual triangle index
            for (int verticeIndex = 0; verticeIndex < 3; ++verticeIndex)
            {
                // Calculate index and key
                int globalTriangleIndex = triangleIndex + verticeIndex;
                int key = mesh.triangles[globalTriangleIndex];

                // If first time seeing this key, add to dictionary
                if (! this.movementDictionary.ContainsKey(key))
                {
                    // Create new Vertice
                    Vertice vert = new Vertice();
                    vert.position = vertices[key];

                    // add new vertice to dicitonary
                    this.movementDictionary.Add(key, vert);
                } 

                // TODO: better way? magic numbers?
                // Add other two vertices
                switch (verticeIndex) 
                { 
                    case 0:
                        this.movementDictionary[key].Add(mesh.triangles[globalTriangleIndex + 1]);
                        this.movementDictionary[key].Add(mesh.triangles[globalTriangleIndex + 2]);
                        break;
                    case 1:
                        this.movementDictionary[key].Add(mesh.triangles[globalTriangleIndex - 1]);
                        this.movementDictionary[key].Add(mesh.triangles[globalTriangleIndex + 1]);
                        break;
                    case 2:
                        this.movementDictionary[key].Add(mesh.triangles[globalTriangleIndex - 1]);
                        this.movementDictionary[key].Add(mesh.triangles[globalTriangleIndex - 2]);
                        break;
                }
            }
        }

        // Debugging print statements for later
        //foreach (KeyValuePair<int,Vertice> key in this.movementDictionary)
        //{
        //    print(key.Key + " -> " + key.Value.getMoves().Count);
        //    string str = "";
        //    foreach (int item in key.Value.getMoves())
        //    {
        //        str += item + ", ";
        //    }
        //    print("items: " + str);
        //}

        //print("Vertice Count: " + mesh.vertexCount);
        //print("Triangle Count: " + mesh.triangles.Length / 3);
	}

    // TODO: make this array instead of list for optimization (term 2)
    public ArrayList getMovesTriangle(int triangleIndex)
    {
        // initialize
        ArrayList indices = new ArrayList();

        // add indices to arraylist
        indices.Add(this.trinagles[triangleIndex]);
        indices.Add(this.trinagles[triangleIndex + 1]);
        indices.Add(this.trinagles[triangleIndex + 2]);

        // return arraylist
        return indices;
    }

    public ArrayList getMovesVertex(int vertexIndex)
    {
        return this.movementDictionary[vertexIndex].getMoves();
    }

    public Vertice getVertex(int vertexIndex)
    {
        return this.movementDictionary[vertexIndex];
    }
}
