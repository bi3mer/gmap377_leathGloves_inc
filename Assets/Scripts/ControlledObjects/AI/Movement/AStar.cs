﻿using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class AStar: MonoBehaviour, AiMovement
{
	public GameObject debugCube;
    public int distanceToGround = 10;
    public int stepCount = 1;

	public bool drawRayCastDown = false;
    public bool drawPath = false;

    // Target
    public Vector3 target;

	public void setTarget(Vector3 target)
	{
		this.target = target;
	}

    // Minimum distance
    public float minDistance;
//    public float MinDistance
//    {
//        get
//        {
//            return this.minDistance;
//        }
//        set 
//        {
//            this.minDistance = value;
//        }
//    }

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

	public List<int> getPlan()
	{
		return this.Plan;
	}

    /// <summary>
    /// Caclulate heuristic from a vector#
    /// </summary>
    /// <param name="pos"></param>
    /// <returns></returns>
    private float calculateHeuristcFromPos(Vector3 pos)
    {
        return DistanceCalculator.euclidianDistance(pos, this.target);
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
		// Raycast towards center of planet
		RaycastHit[] hits = Physics.RaycastAll(this.transform.position, Vector3.down, 200f);

        // Create list to hold unformatted moves
        List<int> unFormattedMoves = new List<int>();

        // fill open list
        foreach (RaycastHit hit in hits)
        {
            // Check if correct mesh was hit
			if (hit.collider != null && hit.collider.tag == "Planet")
            {
                unFormattedMoves = VertexNavigation.Instance.getMovesTriangle(hit.triangleIndex * 3);
                break;
            }
        }

		// Visited nodes
		Dictionary<int, bool> visitedNodes = new Dictionary<int, bool>();

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

		// reset plan
//		this.plan = null;

		// Run A* while moves available
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
                    // TODO: remove after debugging
					Instantiate(this.debugCube, VertexNavigation.Instance.getVertex(vertex).position, Quaternion.identity);

					// Check if close enough to target
					if (DistanceCalculator.euclidianDistance(VertexNavigation.Instance.getVertex(vertex).position, target) < this.minDistance)
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

		// returned failed plan
        return this.plan;
    }

    /// <summary>
    /// Create new plan if a target is in place
    /// </summary>
    /// <param name="pos"></param>
    /// <returns></returns>
    public List<int> getNewPlan()
    {
		// Check if target exists
        if (this.target == null)
        {
            return null;
        }
		print ("getting new plan!");
		// Get plan
        return this.getThePath();
    }

	void Start()
	{
		// TODO: remove, only for debugging
		this.getNewPlan();
	}

    void Update()
    {
		// TODO: Comment out this update for final builds
		// Draw Raycast down
		if(this.drawRayCastDown)
		{
			Debug.DrawLine(this.transform.position, Vector3.zero, Color.red);
		}

		// Draw path
		if(this.drawPath && this.plan != null)
		{
			int planCount = this.plan.Count;

			Color color = new Color();
			color.a = 1;
			color.g = .6f;	
			Debug.DrawLine(this.transform.position, VertexNavigation.Instance.getVertex(this.plan[0]).position, Color.green);
			for(int i = 0; i < planCount; ++i)
			{
				if(i != planCount - 1)
				{
					color.r += .05f;
					color.b += .02f;
					Debug.DrawLine(VertexNavigation.Instance.getVertex(this.plan[i]).position, VertexNavigation.Instance.getVertex(this.plan[i + 1]).position, color);
				}
			}
		}
    }
}
