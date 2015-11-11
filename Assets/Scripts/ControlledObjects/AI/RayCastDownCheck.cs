using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class RayCastDownCheck : MonoBehaviour 
{
    public int distanceToGround = 20;
	public GameObject debugCube;
	
	// Update is called once per frame
	void Update () 
    {
		// Raycast downwards
        RaycastHit[] hits;
        hits = Physics.RaycastAll(transform.position, transform.up * -1 * this.distanceToGround);

		foreach(RaycastHit hit in hits)
		{
			// Check if hit is for collider
			if(hit.collider.tag == "Planet")
			{
				// Get positions from vertices
				Vector3 p0 = VertexNavigation.Instance.vertices[VertexNavigation.Instance.triangles[hit.triangleIndex * 3 + 0]];
				Vector3 p1 = VertexNavigation.Instance.vertices[VertexNavigation.Instance.triangles[hit.triangleIndex * 3 + 1]];
				Vector3 p2 = VertexNavigation.Instance.vertices[VertexNavigation.Instance.triangles[hit.triangleIndex * 3 + 2]];

				// Draw triangles from mesh
				Debug.DrawLine(p0, p1, Color.red);
				Debug.DrawLine(p1, p2, Color.red);
				Debug.DrawLine(p2, p0, Color.red);

				// Get positions from vertices
				int index = VertexNavigation.Instance.triangles[hit.triangleIndex * 3];

				List<int> moves = VertexNavigation.Instance.getMovesVertex(index);

				foreach(int move in moves)
				{
					Debug.DrawLine(this.transform.position, VertexNavigation.Instance.vertices[move]);
				}

				// Break out of for
				break;
			}
			else
			{
				print ("not the tag we are looking for: " + hit.collider.tag);
			}
		}
    }
}
