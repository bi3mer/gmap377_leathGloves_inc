using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public abstract class AbstractMover : Enemy {
    public Vector3 targetLocation;

    private AiMovement aiMovement;

    // Movement variables
    public float moveSpeed = 2;
    public float rotationMaxDegrees = 40f;

    // Minimum distance
    public float minReachDistance = .05f;

    // Moving through movement plan
    public List<int> plan;
    private int targetIndex = 0;

    // Assigner methods
    public void SetTarget(Vector3 tar)
    {
        targetLocation = tar;
        this.aiMovement.setTarget(targetLocation);
        this.plan = this.aiMovement.getNewPlan();
    }

    public void SetMovementScript(AiMovement move)
    {
        aiMovement = move;
    }


    // Accessor methods
    public AiMovement GetMovementScript()
    {
        return aiMovement;
    }

    public void ResetTargetIndex()
    {
        this.targetIndex = 0;
    }

    public Vector3 GetTarget()
    {
        return targetLocation;
    }

    public bool DistanceCheck(Vector3 target, Vector3 currentPoint, float minChange)
    {
        return DistanceCalculator.euclidianDistance(target, currentPoint) >= minChange;
    }

    // Run through plan to execute moves
    public void executeCurrentPlan()
    {
        // If no plan is found, do nothing
        if (this.aiMovement != null)
        {
            if (this.targetIndex < this.plan.Count)
            {
                // Check if we've reached the target in the plan
                if (DistanceCalculator.euclidianDistance(this.transform.position, Player.Instance.getPlanetNavigation().getVertex(this.plan[this.targetIndex]).position) < this.minReachDistance)
                {
                    // Increment to go to next target
                    ++this.targetIndex;
                }

                if (this.targetIndex < this.plan.Count)
                {
                    // move towards target in plan
                    this.move(Player.Instance.getPlanetNavigation().getVertex(this.plan[targetIndex]).position);
                }
                else
                {
                    // Move towards the player
                    this.move(Player.Instance.transform.position);
                }
            }
            else
            {
                // Move towards the player
                this.move(Player.Instance.transform.position);
            }
        }
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

    public abstract void AcquireTarget();
}
