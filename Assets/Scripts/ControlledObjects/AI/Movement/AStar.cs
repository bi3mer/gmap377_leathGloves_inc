using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class AStar: MonoBehaviour, AiMovement
{
	[HideInInspector]
	public Vector3 target;

    [HideInInspector]
    public VertexNavigation planetVertexNavigation;

	public int distanceToGround = 10;
	public LayerMask layersToAvoid;
	public GameObject body;
	public bool drawRayCastDown = false;
	public bool drawPath = false;
	
	private float radius;

	[HideInInspector]
	public float minDistance;
	
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
	/// Gets the plan.
	/// </summary>
	/// <returns>The plan.</returns>
	public List<int> getPlan()
	{
		return this.Plan;
	}
	
	/// <summary>
	/// Sets the target.
	/// </summary>
	/// <param name="target">Target.</param>
	public void setTarget(Vector3 target)
	{
		this.target = target;
	}

	/// <summary>
	/// Calculate the herustic using the given vertex
	/// </summary>
	/// <param name="vertex"></param>
	/// <returns></returns>
	private float calculateDistanceFromVertex(int vertex)
	{
		return Vector3.Distance(this.planetVertexNavigation.getVertex(vertex).position, this.target);
	}
	
	// Check for collision at point
	private bool collisionAtPoint(Vector3 pos)
	{
		bool found = false;
		
		// Get collisions
		Collider[] hitColliders = Physics.OverlapSphere(pos, this.radius, this.layersToAvoid);
		
		// Check if colliders found
		if (hitColliders.Length > 0)
		{
			found = true;
		}
		
		return found;
	}
	
	/// <summary>
	/// get path plan
	/// </summary>
	private List<int> getThePath()
	{	
		// http://docs.unity3d.com/ScriptReference/RaycastHit-triangleIndex.html
		// Raycast towards center of planet
		RaycastHit[] hits = Physics.RaycastAll(this.transform.position, this.planetVertexNavigation.transform.position - this.transform.position, 200f);
		
		// Create list to hold unformatted moves
		List<int> unFormattedMoves = new List<int>();
		
		// fill open list
        for (int i = 0; i < hits.Length; ++i) //RaycastHit hit in hits
        {
            // Check if correct mesh was hit
            if (hits[i].collider != null && hits[i].collider.CompareTag("Planet") && hits[i].triangleIndex != -1)
            {
                unFormattedMoves = this.planetVertexNavigation.getMovesTriangle(hits[i].triangleIndex * 3);
                break;
            }
        }
		
		// Visited nodes
		Dictionary<int, bool> visitedNodes = new Dictionary<int, bool>();
		
		// Instantiate priority queue
		PriorityQueue queue = new PriorityQueue();
		
		// Add nodes to priority queue
        for (int i = 0; i < unFormattedMoves.Count; ++i)
        {
            // Create list of moves
            List<int> moves = new List<int>();
            moves.Add(unFormattedMoves[i]);

            // Create new node
            AStarNode node = new AStarNode(1, 1, unFormattedMoves[i], moves);

            // add node to queue
            queue.addNode(node);
        }
		
		// Run A* while moves available
		while (queue.Length() > 0)
		{ 
			// Grab best node from priority queue
			AStarNode node = queue.popNode();
			  
            // Get moves for a vertex
            List<int> availableMoves = this.planetVertexNavigation.getMovesVertex(node.Index);

			// Loop through the nodes available paths
            for (int i = 0; i < availableMoves.Count; ++i)
            {
                // Only use vertex if we haven't already explored this node
                if (!visitedNodes.ContainsKey(availableMoves[i]) && !this.collisionAtPoint(this.planetVertexNavigation.getVertex(availableMoves[i]).position))
                {
                    // Calculate distance between vertex and target
                    float vertexHeuristic = Vector3.Distance(this.planetVertexNavigation.getVertex(availableMoves[i]).position, this.target);

                    // Check if close enough to target
                    if (vertexHeuristic < this.minDistance)
                    {
                        // Yes we are, solved
                        this.plan = node.Moves;
                        this.plan.Add(availableMoves[i]);

                        // return plan
                        return this.plan;
                    }
                    else
                    {
                        // add to visited
                        visitedNodes.Add(availableMoves[i], true);

                        // Create cropy of moves
                        List<int> newMoves = new List<int>(node.Moves);
                        newMoves.Add(availableMoves[i]);

                        // Create new nodes with heuristic and step cost
                        AStarNode newNode = new AStarNode(node.G + this.calculateDistanceFromVertex(availableMoves[i]), vertexHeuristic, availableMoves[i], newMoves);

                        // add node to queue
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
	/// <returns>The Plan</returns>
	public List<int> getNewPlan()
	{
		this.plan = new List<int>();

		// Check if target exists
		if (this.target.Equals(Vector3.zero))
		{
			return this.plan;
		}

		// Get plan
		return this.getThePath();
	}
	
    /// <summary>
    /// Initialize components
    /// </summary>
	void Start()
	{
		this.radius = this.body.GetComponent<Collider>().bounds.size.magnitude / 2;
        this.planetVertexNavigation = Player.Instance.getPlanetNavigation();
        this.minDistance = this.planetVertexNavigation.avgVertexlength;
	}
	
    /// <summary>
    /// Debugging Updates
    /// </summary>
	void Update()
	{
		// Draw Raycast down
		if(this.drawRayCastDown)
		{
			Debug.DrawLine(this.transform.position, this.planetVertexNavigation.transform.position, Color.red);
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
					color.r += .05f;
					color.b += .02f;
					Debug.DrawLine(this.planetVertexNavigation.getVertex(this.plan[i]).position, this.planetVertexNavigation.getVertex(this.plan[i + 1]).position, color);
				}
			}
		}
	}
}
