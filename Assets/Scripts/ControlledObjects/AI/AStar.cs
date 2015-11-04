using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class AStar : MonoBehaviour 
{
    public GameObject debugCube;
    public int distanceToGround = 100;
    public int stepCount = 1;

    // Target
    public Vector3 target;

    // Plan for movement
    private ArrayList plan;

    /// <summary>
    ///     get path plan
    /// </summary>
    private ArrayList getThePath()
    {
        // http://docs.unity3d.com/ScriptReference/RaycastHit-triangleIndex.html
        // Raycast downward
        RaycastHit[] hits;
        hits = Physics.RaycastAll(transform.position, transform.up * -1 * this.distanceToGround);

        // Visited nodes
        Dictionary<int, bool> visitedNodes = new Dictionary<int, bool>();

        // Initialize open list
        ArrayList unExaminedMoves = new ArrayList();

        // fill open list
        foreach (RaycastHit hit in hits)
        {
            MeshCollider meshCollider = hit.collider as MeshCollider;
            if (meshCollider != null || meshCollider.sharedMesh != null)
            {
                unExaminedMoves = VertexNavigation.Instance.getMovesTriangle(hit.triangleIndex * 3);
                break;
            }
        }

        // Sort list
        //foreach()
        //{
            
        //}

        return null;
    }

    public ArrayList getPath()
    {
        if (this.target == null)
        {
            return null;
        }
        return this.getThePath();
    }
}
