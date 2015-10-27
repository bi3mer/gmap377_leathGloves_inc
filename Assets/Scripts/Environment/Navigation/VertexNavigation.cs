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

	private Vector3[][] mappedSphere;
	
	/// <summary>
	/// 	Map 3d sphere to 2d coordiante system
	/// </summary>
	void Start () 
	{
		// Get mesh of planet
		Mesh mesh = GetComponent<MeshFilter>().mesh;

		// Get vertices of planet
		Vector3[] vertices = mesh.vertices;

		// Convert
	}

	public Vector3[][] getMatrix()
	{
		return this.mappedSphere;
	}
}
