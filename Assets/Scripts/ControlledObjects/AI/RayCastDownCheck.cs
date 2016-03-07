using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class RayCastDownCheck : MonoBehaviour 
{
    public bool printLength;
	public bool drawConnectingCubes;
	public GameObject planet;

	private bool drawnCubes = false;

//	// Draw all vertices connecting
//	private void drawAllVerts(RaycastHit hit)
//	{
//		// List of known verts
//		Dictionary<int, bool> vistedVerts = new Dictionary<int, bool>();
//
//		// Get verts
//		int[] arr = new int[3];
//
//		this.planet.GetComponent<VertexNavigation>().getMovesTriangle(hit.triangleIndex * 3, ref arr);
//
//		// Go through verts
//		while(verts.Count > 0)
//		{
//			// Get index
//			int index = verts[0];
//
//			// Remove from list
//			verts.RemoveAt(0);
//
//			// Instantiate cube
//			GameObject cube = GameObject.CreatePrimitive(PrimitiveType.Cube);
//			cube.transform.position = this.planet.GetComponent<VertexNavigation>().getVertex(index).position;
//			cube.transform.localScale = new Vector3(.2f, .2f, .2f);
//
//			// get moves from index
//			List<int> newVerts = this.planet.GetComponent<VertexNavigation>().getMovesVertex(index);
//
//			// for
//			for(int i = 0; i < newVerts.Count; ++i)
//			{
//				if(!vistedVerts.ContainsKey(newVerts[i]))
//				{
//					vistedVerts.Add(newVerts[i], true);
//					verts.Add(newVerts[i]);
//				}
//			}
//		}
//
//		this.drawnCubes = true;
//	}
	
	// Update is called once per frame
	void Update () 
    {
		// Raycast downwards
        RaycastHit[] hits;
		hits = Physics.RaycastAll(transform.position, this.planet.GetComponent<VertexNavigation>().transform.position - transform.position);
		Debug.DrawLine(transform.position, this.planet.GetComponent<VertexNavigation>().transform.position);

		foreach(RaycastHit hit in hits)
		{
			// Check if hit is for collider
			if(hit.collider.tag == "Planet")
			{
				// Get positions from vertices
				Vector3 p0 = this.planet.GetComponent<VertexNavigation>().vertices[this.planet.GetComponent<VertexNavigation>().triangles[hit.triangleIndex * 3 + 0]];
				Vector3 p1 = this.planet.GetComponent<VertexNavigation>().vertices[this.planet.GetComponent<VertexNavigation>().triangles[hit.triangleIndex * 3 + 1]];
				Vector3 p2 = this.planet.GetComponent<VertexNavigation>().vertices[this.planet.GetComponent<VertexNavigation>().triangles[hit.triangleIndex * 3 + 2]];

				// Draw triangles from mesh
				Debug.DrawLine(p0, p1, Color.red);
				Debug.DrawLine(p1, p2, Color.red);
				Debug.DrawLine(p2, p0, Color.red);

				// Get positions from vertices
				int vertex = this.planet.GetComponent<VertexNavigation>().triangles[hit.triangleIndex * 3];

                // Get avilable moves for first vertex
				List<int> moves = this.planet.GetComponent<VertexNavigation>().getMovesVertex(vertex);

                // Print length
                if (this.printLength)
                {
                    print("length of moves available: " + moves.Count);
                }
                
                // Draw line to indicate node
				Debug.DrawRay(this.planet.GetComponent<VertexNavigation>().getVertex(vertex).position, Vector3.up * 100f, Color.yellow);

                // Draw lines
                for (int i = 0; i < moves.Count; ++i )
                {
					Debug.DrawLine(this.planet.GetComponent<VertexNavigation>().getVertex(vertex).position, this.planet.GetComponent<VertexNavigation>().vertices[moves[i]]);
                }

//				if(this.drawConnectingCubes && !this.drawnCubes)
//				{
//					this.drawAllVerts(hit);
//				}

				// Break out of for
				break;
			}
		}
    }	
}
