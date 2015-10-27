using UnityEngine;
using System.Collections;

public class VertexNavigation : MonoBehaviour 
{
	public GameObject cube;
	// Use this for initialization
	void Start () 
	{
		Mesh mesh = GetComponent<MeshFilter>().mesh;
		Vector3[] vertices = mesh.vertices;
		for(int i = 0; i < vertices.Length; ++i)
		{
			Instantiate(this.cube, vertices[i], Quaternion.identity);
		}
	}

}
