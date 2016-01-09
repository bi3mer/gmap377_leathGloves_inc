//using UnityEngine;
//using System.Collections;
//using System.Collections.Generic;
//
//public class TankMovement : Enemy 
//{
//	private AiMovement movement;
//	private Vector3 target;
//	
//	// Movement Variables
//	public float moveSpeed = 2;
//	public float lookSpeed = 2;
//	
//	// Moving through movement plan
//	private List<int> plan;
//	private int targetIndex = 0;
//	
//	// Min change distances
//	public float minPlayerChangeDistance = 2f;
//	public float minReachDistance = .05f;
//
//	// states
//	private enum State {patrolling, attacking};
//	private State state;
//	private Random rnd = new Random();
//
//	/// <summary>
//	/// Generates the patrol target.
//	/// </summary>
//	private void generatePatrolTarget()
//	{
//		// set target to random vertex
//		this.target = VertexNavigation.Instance.movementLookup[Random.Range(0, VertexNavigation.Instance.movementLookup.Count - 1)].position;
//	}
//
//	void Start () 
//	{
//		// Set state
//		this.state = State.patrolling;
//		this.movement = GetComponent<AStar>();
//
//		// set target
//		this.generatePatrolTarget();
//
//		// set and get plan
//		this.movement.setTarget(this.target);
//		this.plan = this.movement.getNewPlan();
//	}
//
//	void Update () 
//	{
//		// Check if new plan needs to be calculated
//		if(DistanceCalculator.euclidianDistance(this.target, Player.Instance.transform.position) >= this.minPlayerChangeDistance)
//		{
//			this.targetIndex = 0;
//			this.target = Player.Instance.transform.position;
//			this.movement.setTarget(Player.Instance.transform.position);
//			this.plan = this.movement.getNewPlan();
//		}
//		
//		// Execute movement
////		this.executeCurrentPlan();
//	}
//}
