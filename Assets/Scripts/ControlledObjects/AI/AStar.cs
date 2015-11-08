using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class AStar: MonoBehaviour
{
	public GameObject debugCube;
    public int distanceToGround = 10;
    public int stepCount = 1;

	public bool drawRayCastDown = false;
    public bool drawPath = false;

    // Target
    public Vector3 target;

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
        RaycastHit[] hits;
        hits = Physics.RaycastAll(transform.position, transform.up * -1 * this.distanceToGround);

        // Visited nodes
        Dictionary<int, bool> visitedNodes = new Dictionary<int, bool>();

        // Create list to hold unformatted moves
        List<int> unFormattedMoves = new List<int>();

        // fill open list
        foreach (RaycastHit hit in hits)
        {
            // Check if correct mesh was hit
			if (hit.collider != null && hit.collider.tag == "Planet")
            {
				print ("hit: " + hit.triangleIndex);
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

		// Run A*
        while (queue.Length() > 0)
        { 
            // Grab best node from priority queue
            AStarNode node = queue.popNode();

			print (node.Index);
			print (VertexNavigation.Instance.getMovesVertex(node.Index).Count);

            // Loop through the nodes available paths
			foreach (int vertex in VertexNavigation.Instance.getMovesVertex(node.Index))
            {
                // Only use vertex if we haven't already explored this node
                if (!visitedNodes.ContainsKey(vertex))
                {
                    // Are we close enough to the player
					Instantiate(this.debugCube,VertexNavigation.Instance.getVertex(vertex).position,Quaternion.identity);

//					Debug.Break();
					if (DistanceCalculator.euclidianDistance(VertexNavigation.Instance.getVertex(vertex).position, target) < this.minDistance)
                    {
                        // Yes we are, solved
                        this.plan = node.Moves;
                        this.plan.Add(vertex);

						print("found Plan!");

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

		print ("finding path failed");
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

	void Start()
	{
		this.getNewPlan();
	}

    void Update()
    {
		// TODO: Comment out this update for final builds
		// Draw Raycast down
		if(this.drawRayCastDown)
		{
			Debug.DrawRay(transform.position, transform.up * -1 * this.distanceToGround);
		}

		// Draw path
		if(this.drawPath && this.plan != null)
		{
			int planCount = this.plan.Count;

			Color color = new Color();
			color.a = 1;
			color.g = .6f;	
			for(int i = 0; i < planCount; ++i)
			{
				if(i != planCount - 1)
				{
					color.r += .15f;
					Debug.DrawLine(VertexNavigation.Instance.getVertex(this.plan[i]).position, VertexNavigation.Instance.getVertex(this.plan[i + 1]).position, color);
				}
			}
		}
    }
}
