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
        print(this.mesh);

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
        for (int i = 0; i < this.mesh.triangles.Length / 3; ++i)
        {
            bool found = false;

            // Look for triangle that matches index
            for (int j = 0; j < 3; ++j)
            {
                if (this.mesh.triangles[(i * 3) + j] == vertexIndex)
                {
                    found = true;
                    break;
                }
            }

            if (found)
            {
                for (int j = 0; j < 3; ++j)
                {
                    // TODO: rename tri
                    int tri = verts.IndexOf((i * 3) + j);
                    if (tri == -1 && tri != vertexIndex)
                    {
                        verts.Add(tri);
                    }
                }
            }
        }

        return verts;
    }
}
