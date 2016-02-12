using UnityEngine;
using System;
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

	[Tooltip("Body of AI being moved, should be largest part horizontoally.")]
	public GameObject body;

	[Tooltip("If you want to keep a minimum distance from the Player")]
	public bool keepMinimumDistance = false;

	[Tooltip("Minimum Square Distance From Player")]
	public int minimumSquareDistance = 10;

	[Tooltip("Debugging tools, turn off on builds")]
	public bool drawRayCastDown = false;

	[Tooltip("Debugging tools, turn off on builds")]
	public bool drawPath = false;

	public enum VerticeType
	{
		FlYING, GROUND
	};
	public VerticeType movementType;

	private float radius;

	// Plan for movement
	private List<int> plan = new List<int>();
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
		return this.Plan; // Why a getter and a get method? duplicate??
	}
	
	/// <summary>
	/// Sets the target.
	/// </summary>
	/// <param name="target">Target.</param>
	public void setTarget(Vector3 target)
	{
		this.target = target; // Why not a setter?
	}
	
	/// <summary>
	/// Calculate the herustic using the given vertex
	/// </summary>
	/// <param name="vertex"></param>
	/// <returns></returns>
	private float calculateDistanceFromVertex(int vertex)
	{
		return DistanceCalculator.squareEuclidianDistance(this.planetVertexNavigation.getVertex(vertex).position, this.target);
	}
	
	// Check for collision at point
	private bool collisionAtPoint(Vector3 pos)
	{
		// Get collisions
		Collider[] hitColliders = Physics.OverlapSphere(pos, this.radius, this.layersToAvoid);
		
		// Check if colliders found
		return hitColliders.Length > 0;
	}
	
	/// <summary>
	/// get path plan
	/// </summary>
	private void GeneratePath(RaycastHit[] hits)
	{	
		// Create list to hold unformatted moves
		int[] unFormattedMoves = new int[3];
		
		// fill open list
		for (int i = 0; i < hits.Length; ++i) //RaycastHit hit in hits
		{
			// Check if correct mesh was hit
			if (hits[i].triangleIndex != -1 && hits[i].collider != null && hits[i].collider.CompareTag("Planet"))
			{
				this.planetVertexNavigation.getMovesTriangle(hits[i].triangleIndex * 3, ref unFormattedMoves);
				break;
			}
		}
		
		// Add nodes to priority queue
		PriorityQueue queue = new PriorityQueue();
		
		// Create list of moves
		List<int> moves = new List<int>();
		
		for (int i = 0; i < unFormattedMoves.Length; ++i)
		{
			moves.Add(unFormattedMoves[i]);
			
			// Create new node
			AStarNode node = new AStarNode(1, 1, unFormattedMoves[i], moves);
			
			// add node to queue
			queue.addNode(node);
			
			moves.Clear();
		}
		
		// Visited nodes
		HashSet<int> visitedNodes = new HashSet<int>();
		
		// Run A* while moves available
		while (queue.Length() > 0) // Is there an IsEmpty property... this may be better.
		{ 
			// Grab best node from priority queue
			AStarNode node = queue.popNode();
			
			// Get moves for a vertex
			List<int> availableMoves = this.planetVertexNavigation.getMovesVertex(node.Index);
			
			// Loop through the nodes available paths
			for (int i = 0; i < availableMoves.Count; ++i)
			{
				bool pointCollision;
				if(this.movementType == VerticeType.GROUND) 
				{
					pointCollision = !this.collisionAtPoint(this.planetVertexNavigation.getVertex(availableMoves[i]).position);
				}
				else
				{
					pointCollision = !this.collisionAtPoint(this.planetVertexNavigation.flyingVertices[this.planetVertexNavigation.getVertex(availableMoves[i]).key]);
				}

				// Only use vertex if we haven't already explored this node
				if (!visitedNodes.Contains(availableMoves[i]) && pointCollision)
				{
					// Calculate distance between vertex and target
					float vertexHeuristic = DistanceCalculator.squareEuclidianDistance(this.planetVertexNavigation.getVertex(availableMoves[i]).position, this.target);
					
					// Check if close enough to target
					if (vertexHeuristic < this.planetVertexNavigation.avgVertexlength)
					{
						// Yes we are, solved
						this.plan = node.Moves;
						this.plan.Add(availableMoves[i]);
						
						// break out of loop
						return; 
					}
					else
					{
						// add to visited
						visitedNodes.Add(availableMoves[i]);
						
						// Create cropy of moves
						List<int> newMoves = new List<int>(node.Moves); 

						// Add available moves
						newMoves.Add(availableMoves[i]);
						
						// Create new nodes with heuristic and step cost
						AStarNode newNode = new AStarNode(node.G + this.calculateDistanceFromVertex(availableMoves[i]), vertexHeuristic, availableMoves[i], newMoves);
						
						// add node to queue
						queue.addNode(newNode);
					}
				}
			}
		}
	}

	/// <summary>
	/// Create new plan if a target is in place
	/// </summary>
	/// <param name="pos"></param>
	/// <returns>The Plan</returns>
	public List<int> getNewPlan(Vector3 targ)
	{
		// set current targ
		this.target = targ;

		// Empty the plan
		this.Plan.Clear();
		
		// Check if target exists
		if (!this.target.Equals(Vector3.zero)) // Inverted logic.
		{
			// http://docs.unity3d.com/ScriptReference/RaycastHit-triangleIndex.html
			// Raycast towards center of planet and generate a plan
			this.GeneratePath(Physics.RaycastAll(this.transform.position, this.planetVertexNavigation.transform.position - this.transform.position, this.planetVertexNavigation.Radius));
		}

		// Return plan found
		return this.Plan;
	}
	
	/// <summary>
	/// Initialize components
	/// </summary>
	void Start()
	{
		// Divide by 2 to get radius not diameter 
		this.radius = this.body.GetComponent<Collider>().bounds.size.magnitude / 2;
		
		// Get planets navigation cod
		this.planetVertexNavigation = Player.Instance.getPlanetNavigation();
	}
	
	#if UNITY_EDITOR
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
	#endif
}