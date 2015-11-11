using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class RayCastDownCheck : MonoBehaviour 
{
    public bool printLength;
	
	// Update is called once per frame
	void Update () 
    {
		// Raycast downwards
        RaycastHit[] hits;
        hits = Physics.RaycastAll(transform.position, Vector3.down);

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
				int vertex = VertexNavigation.Instance.triangles[hit.triangleIndex * 3];

                // Get avilable moves for first vertex
                List<int> moves = VertexNavigation.Instance.getMovesVertex(vertex);

                // Print length
                if (this.printLength)
                {
                    print("length of moves available: " + moves.Count);
                }
                
                // Draw line to indicate node
                Debug.DrawRay(VertexNavigation.Instance.getVertex(vertex).position, Vector3.up * 100f, Color.yellow);

                // Draw lines
                for (int i = 0; i < moves.Count; ++i )
                {
                    Debug.DrawLine(VertexNavigation.Instance.getVertex(vertex).position, VertexNavigation.Instance.vertices[moves[i]]);
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
