using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class AStar: MonoBehaviour
{
    public int distanceToGround = 10;
    public int stepCount = 1;
    public bool drawPath = false;

    // Target
    private Vector3 target;
    public Vector3 Target
    {
        get
        {
            return this.target;
        }
        set
        {
            this.target = value;
        }
    }

    // Minimum distance
    private float minDistance;
    public float MinDistance
    {
        get
        {
            return this.minDistance;
        }
        set 
        {
            this.minDistance = value;
        }
    }

    // Plan for movement
    private List<int> plan;
    public List<int> Plan
    {
        get 
        {
            return this.plan;
        }
        set 
        { 
            // pass
        }
    }

    /// <summary>
    /// Caclulate heuristic from a vector#
    /// </summary>
    /// <param name="pos"></param>
    /// <returns></returns>
    private float calculateHeuristcFromPos(Vector3 pos)
    {
        return DistanceCalculator.calculateHaverSineDistVector3(0f, pos, this.target);
    }

    /// <summary>
    /// Calculate the herustic using the given vertex
    /// </summary>
    /// <param name="vertex"></param>
    /// <returns></returns>
    private float calculateHeuristicFromVertex(int vertex)
    {
        return this.calculateHeuristcFromPos(VertexNavigation.Instance.getVertex(vertex).position);
    }

    /// <summary>
    ///     get path plan
    /// </summary>
    private List<int> getThePath()
    {
        // http://docs.unity3d.com/ScriptReference/RaycastHit-triangleIndex.html
        // Raycast downward
        RaycastHit[] hits;
        hits = Physics.RaycastAll(transform.position, transform.up * -1 * this.distanceToGround);

        // Visited nodes
        Dictionary<int, bool> visitedNodes = new Dictionary<int, bool>();

        // Create list to hold unformatted moves
        List<int> unFormattedMoves = new List<int>();

        // fill open list
        foreach (RaycastHit hit in hits)
        {
            // Check if correct
            if (hit.collider.tag == "Planet")
            {
                unFormattedMoves = VertexNavigation.Instance.getMovesTriangle(hit.triangleIndex * 3);
                break;
            }
        }

        // Instantiate priority queue
        PriorityQueue queue = new PriorityQueue();

        // Add nodes to priority queue
        foreach (int vertex in unFormattedMoves)
        {
            // Create list of moves
            List<int> moves = new List<int>();
            moves.Add(vertex);

            // Create new node
            AStarNode node = new AStarNode(1, this.calculateHeuristicFromVertex(vertex), vertex, moves);

            // add node to queue
            queue.addNode(node);
        }

        while (queue.Length() > 0)
        { 
            // Grab best node from priority queue
            AStarNode node = queue.popNode();

            // Loop through the nodes available paths
            foreach (int vertex in VertexNavigation.Instance.getMovesVertex(node.Index))
            {
                // Only use vertex if we haven't already explored this node
                if (!visitedNodes.ContainsKey(vertex))
                {
                    // Are we close enough to the player
                    if (DistanceCalculator.euclidianDistance(this.transform.position, target) < this.minDistance)
                    {
                        // Yes we are, solved
                        this.plan = node.Moves;
                        this.plan.Add(vertex);

                        // return plan
                        return this.plan;
                    }
                    else
                    {
                        // add to visited
                        visitedNodes.Add(vertex, true);

                        // Create node
                        List<int> newMoves = node.Moves;
                        newMoves.Add(vertex);
                        AStarNode newNode = new AStarNode(node.G + this.stepCount, this.calculateHeuristicFromVertex(vertex), vertex, newMoves);

                        // add ndoe to queue
                        queue.addNode(newNode);
                    }
                }
            }
        }

        return this.plan;
    }

    /// <summary>
    /// Create new plan if a target is in place
    /// </summary>
    /// <param name="pos"></param>
    /// <returns></returns>
    public List<int> getNewPlan()
    {
        if (this.target == null)
        {
            return null;
        }
        return this.getThePath();
    }

    void Update()
    {
        this.target = new Vector3(0f, -3.23f, 4.35f);
        List<int> test = this.getNewPlan();
        Debug.Break();
    }
}
