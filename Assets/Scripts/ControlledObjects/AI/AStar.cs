using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class AStar : MonoBehaviour 
{
    public GameObject debugCube;
    public int distanceToGround = 100;
    private ArrayList plan;

    public IEnumerator startPathFind()
    {
        yield return new WaitForSeconds(2.0f);
        this.pathFinding();
    }

    public void pathFinding()
    {
        // http://docs.unity3d.com/ScriptReference/RaycastHit-triangleIndex.html
        RaycastHit[] hits;
        hits = Physics.RaycastAll(transform.position, transform.up * -1 * this.distanceToGround);

        // Initialize
        ArrayList unExaminedMoves = new ArrayList();

        foreach (RaycastHit hit in hits)
        {
            MeshCollider meshCollider = hit.collider as MeshCollider;
            if (meshCollider == null || meshCollider.sharedMesh == null)
            {
                continue;
            }
            else
            {
                unExaminedMoves = VertexNavigation.Instance.getMovesTriangle(hit.triangleIndex);
                break;
            }
        }

        foreach (int vertice in unExaminedMoves)
        {
            print("here!");
            Instantiate(this.debugCube, VertexNavigation.Instance.getVertex(vertice).position, Quaternion.identity);
        }
        Debug.Break();
        
        // Convert to priority queue via some sort
        // var closest = mesh.vertices.OrderBy(v=>(v - pos).sqrMagnitude).Take(9).ToArray();

        // A*, examine python for more details
        // Need binary search here
    }

    void Start()
    {
        StartCoroutine(this.startPathFind());  
    }

    void Update()
    {
        Debug.DrawRay(transform.position, transform.up * -1 * this.distanceToGround, Color.green);
    }
}
