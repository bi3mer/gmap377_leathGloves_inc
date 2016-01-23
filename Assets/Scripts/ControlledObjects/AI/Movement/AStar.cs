using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class AStar: MonoBehaviour, AiMovement
{
	[HideInInspector]
	public Vector3 target;
	
	public int distanceToGround = 10;
	public LayerMask layer;
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
		return Vector3.Distance(Player.Instance.getPlanetNavigation().getVertex(vertex).position, this.target);
	}
	
	// Check for collision at point
	private bool collisionAtPoint(Vector3 pos)
	{
		bool found = false;
		
		// Get collisions
		Collider[] hitColliders = Physics.OverlapSphere(pos, this.radius, this.layer);
		
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
		// Raycast downward
		// Raycast towards center of planet
		RaycastHit[] hits = Physics.RaycastAll(this.transform.position, Player.Instance.getPlanetNavigation().transform.position - this.transform.position, 200f);
		
		// Create list to hold unformatted moves
		List<int> unFormattedMoves = new List<int>();
		
		// fill open list
		foreach (RaycastHit hit in hits)
		{
			// Check if correct mesh was hit
			if (hit.collider != null && hit.collider.tag == "Planet" && hit.triangleIndex != -1)
			{
				unFormattedMoves = Player.Instance.getPlanetNavigation().getMovesTriangle(hit.triangleIndex * 3);
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
			//AStarNode node = new AStarNode(1, this.calculateHeuristicFromVertex(vertex), vertex, moves);
			AStarNode node = new AStarNode(1, 1, vertex, moves);
			
			// add node to queue
			queue.addNode(node);
		}
		
		// Run A* while moves available
		while (queue.Length() > 0)
		{ 
			// Grab best node from priority queue
			AStarNode node = queue.popNode();
			
			// Loop through the nodes available paths
			foreach (int vertex in Player.Instance.getPlanetNavigation().getMovesVertex(node.Index))
			{
				// Only use vertex if we haven't already explored this node
				if (!visitedNodes.ContainsKey(vertex) && !this.collisionAtPoint(Player.Instance.getPlanetNavigation().getVertex(vertex).position))
				{
					// Calculate distance between vertex and target
					float vertexHeuristic = Vector3.Distance(Player.Instance.getPlanetNavigation().getVertex(vertex).position, this.target);
					
					// Check if close enough to target
					if (vertexHeuristic < this.minDistance)
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
						
						// Create cropy of moves
						List<int> newMoves = new List<int>(node.Moves);
						newMoves.Add(vertex);
						
						// Create new nodes with heuristic and step cost
						AStarNode newNode = new AStarNode(node.G + this.calculateDistanceFromVertex(vertex), vertexHeuristic, vertex, newMoves);
						
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
		if (this.target == Vector3.zero)
		{
			return this.plan;
		}

		// Get plan
		return this.getThePath();
	}
	
	void Start()
	{
		this.radius = this.body.GetComponent<Collider>().bounds.size.magnitude;
		this.minDistance = Player.Instance.getPlanetNavigation().avgVertexlength;
		this.getNewPlan();
	}
	
	void Update()
	{
		// Draw Raycast down
		if(this.drawRayCastDown)
		{
			Debug.DrawLine(this.transform.position, Player.Instance.getPlanetNavigation().transform.position, Color.red);
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
					Debug.DrawLine(Player.Instance.getPlanetNavigation().getVertex(this.plan[i]).position, Player.Instance.getPlanetNavigation().getVertex(this.plan[i + 1]).position, color);
				}
			}
		}
	}
}
