﻿using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class MoveTowardsPlayer : Enemy 
{		
	private AiMovement movement;
	private Vector3 target;

	// Movement Variables
	public float moveSpeed = 2;
	public float lookSpeed = 2;
    public float rotationMaxDegrees = 40f;

	// Moving through movement plan
	private List<int> plan;
	private int targetIndex = 0;

	// Min change distances
	public float minPlayerChangeDistance = 2f;
	public float minReachDistance = .05f;

	// Use this for initialization
	void Awake () 
	{
		this.target = Player.Instance.getClosestVertice();
		this.movement = this.GetComponent<AStar>();
		this.movement.setTarget(this.target);
		this.plan = this.movement.getNewPlan();
	}

	public void move(Vector3 targ)
	{
        // Set rotation
        Quaternion destRotation = Quaternion.LookRotation(targ - transform.position, transform.up);
        transform.rotation = Quaternion.RotateTowards(transform.rotation, destRotation, rotationMaxDegrees * Time.deltaTime);
        //transform.LookAt(targ, transform.up);

		// Move forward
		this.transform.position = Vector3.MoveTowards(this.transform.position, targ, this.moveSpeed * Time.deltaTime);
	}

	// Run through plan to execute moves
	public void executeCurrentPlan()
	{
		// If no plan is found, do nothing
		if(this.movement != null)
		{
			if(this.targetIndex < this.plan.Count)
			{
				// Check if we've reached the target in the plan
				if(DistanceCalculator.euclidianDistance(this.transform.position, Player.Instance.getPlanetNavigation().getVertex(this.plan[this.targetIndex]).position) < this.minReachDistance)
				{
					// Increment to go to next target
					++this.targetIndex;
				}

				if(this.targetIndex < this.plan.Count)
				{
					// move towards target in plan
					this.move(Player.Instance.getPlanetNavigation().getVertex(this.plan[targetIndex]).position);
				}
				else
				{
					// Move towards the player
					this.move (Player.Instance.transform.position);
				}
			}
			else
			{
				// Move towards the player
				this.move(Player.Instance.transform.position);
			}
		}
	}

	// Update is called once per frame
	void Update () 
	{
		// Check if new plan needs to be calculated
		if(this.plan == null || DistanceCalculator.euclidianDistance(this.target, Player.Instance.getClosestVertice()) >= this.minPlayerChangeDistance)
		{
			this.targetIndex = 0;
			this.target = Player.Instance.getClosestVertice();
			this.movement.setTarget(this.target);
			this.plan = this.movement.getNewPlan();
		}

		// Execute movement
		this.executeCurrentPlan();
	}

   
}