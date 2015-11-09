using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class MoveTowardsPlayer : Enemy 
{		
	private AiMovement movement;
	private Vector3 target;

	// Movement Variables
	public float moveSpeed = 2;
	public float lookSpeed = 2;

	// Moving through movement plan
	private List<int> plan;
	private int targetIndex = 0;

	// Min change distances
	public float minPlayerChangeDistnace = 5f;
	public float minReachDistance = .05f;

	// Use this for initialization
	void Start () 
	{
		this.target = Player.Instance.transform.position;
		this.movement = GetComponent<AStar>();
		this.movement.setTarget(target);
		this.plan = this.movement.getNewPlan();
	}

	public void move(Vector3 targ)
	{
		// Set rotation
		transform.LookAt(targ);

		// Move forward
		this.transform.position = Vector3.MoveTowards(this.transform.position, targ, this.moveSpeed * Time.deltaTime);
	}

	// Run through plan to execute moves
	public void executeCurrentPlan()
	{
		// If no plan is found, do nothing
		if(this.movement != null)
		{
			// Check if we've reached the target in the plan
			if(DistanceCalculator.euclidianDistance(this.transform.position, VertexNavigation.Instance.getVertex(this.plan[this.targetIndex]).position) < this.minReachDistance)
			{
				// Increment to go to next target
				++this.targetIndex;
				
				// Check if we've reached the last node in the path
				if(this.targetIndex >= this.plan.Count)
				{
					// If we've reached the last node, add the player so we now move towards him or her
					this.move(Player.Instance.transform.position);

					// break out of function
					return;
				}
			}
			
			// move towards target in plan
			this.move(VertexNavigation.Instance.getVertex(this.plan[targetIndex]).position);
		}
	}

	// Update is called once per frame
	void Update () 
	{
		// Check if new plan needs to be calculated
		if(DistanceCalculator.euclidianDistance(this.target, Player.Instance.transform.position) >= this.minReachDistance)
		{
			this.targetIndex = 0;
			this.target = Player.Instance.transform.position;
			this.movement.setTarget(this.target);
			this.movement.getNewPlan();
		}

		// Execute movement
		this.executeCurrentPlan();
	}
}