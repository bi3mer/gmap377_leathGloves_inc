using UnityEngine;
using System.Collections;

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

    // TODO: comment
    private Mesh mesh;

    // TODO: comment
    private Vector3[] vertices;

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
	/// </summary>
	void Start () 
	{
        // Get Radius
        this._radius = GetComponent<SphereCollider>().radius * transform.localScale.x;

		// Get mesh of planet
		this.mesh = GetComponent<MeshFilter>().mesh;


        // Get copy of vertices
        this.vertices = this.mesh.vertices;

        // Convert vertices to global coordiantes
        float scale = transform.localScale.x;
        for (int i = 0; i < this.mesh.vertexCount; ++i)
        {
            this.vertices[i] = this.vertices[i] * scale;
        }
	}

    // TODO: make this array instead of list for optimization (term 2)
    public ArrayList getMoves(int vertexIndex)
    {
		ArrayList verts = new ArrayList();
        
		print ("0: " + this.mesh.triangles[vertexIndex + 0]);
		print ("1: " + this.mesh.triangles[vertexIndex + 1]);
		print ("2: " + this.mesh.triangles[vertexIndex + 2]);

		verts.Add(0);

        return verts;
    }
}
