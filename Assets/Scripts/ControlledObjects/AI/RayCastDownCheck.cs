using UnityEngine;
using System.Collections;

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
				// Get positions
				Vector3 p0 = VertexNavigation.Instance.vertices[VertexNavigation.Instance.triangles[hit.triangleIndex * 3 + 0]];
				Vector3 p1 = VertexNavigation.Instance.vertices[VertexNavigation.Instance.triangles[hit.triangleIndex * 3 + 1]];
				Vector3 p2 = VertexNavigation.Instance.vertices[VertexNavigation.Instance.triangles[hit.triangleIndex * 3 + 2]];

				// Draw triangles
				Debug.DrawLine(p0, p1);
				Debug.DrawLine(p1, p2);
				Debug.DrawLine(p2, p0);

				break;
			}
			else
			{
				print ("not the tag we are looking for: " + hit.collider.tag);
			}
		}

		// Break for Debugging
		Debug.Break();
    }
}
