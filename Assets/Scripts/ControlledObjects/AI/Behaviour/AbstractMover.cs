using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public abstract class AbstractMover : Enemy 
{
    [HideInInspector]
    public Vector3 targetLocation;

	public float minMoveDistance = 10f;

    private AiMovement aiMovement;

    // Movement variables
    public float moveSpeed = 2;
    public float rotationMaxDegrees = 40f;

    // Minimum distance
    public float minReachDistance = .05f;

    // Should move towards player at the end of plan
    [HideInInspector]
    public bool moveTowardsPlayerAtEndOfPath = false;

    // Moving through movement plan
    [HideInInspector]
    public List<int> plan;
    protected int targetIndex = 0;

    // Used to detect if error is found from plan being null multiple times
    public int errorsAccepted = 3;
    private int errorsFound = 0;

	// Use to orient to planet after each node
	private EnvironmentOrienter orientor;

	private AStar.VerticeType vertType;

	public void init()
	{
		// get vertice type to move on
		this.vertType = this.GetComponent<AStar>().movementType;
	}

    // Assigner methods
    public void setTarget(Vector3 targ)
    {
        Debug.Log("targetLocation: " + targ);
        Debug.Log("AIMovement: " + this.aiMovement);
        this.targetLocation = targ;
        this.aiMovement.setTarget(targ);
    }

    public void setMovementScript(AiMovement move)
    {
        Debug.Log("here!@@");
        this.aiMovement = move;
    }

    // Accessor methods
    public AiMovement getMovementScript()
    {
        return this.aiMovement;
    }

    public void resetTargetIndex()
    {
        this.targetIndex = 0;
    }

    public Vector3 getTarget()
    {
        return targetLocation;
    }

    public bool distanceCheck(Vector3 target, Vector3 currentPoint, float minChange)
    {
        return DistanceCalculator.squareEuclidianDistance(target, currentPoint) >= minChange;
    }

    // Run through plan to execute moves
    public void executeCurrentPlan()
    {
        // If no plan is found, do nothing
        if (this.aiMovement != null)
        {

            if (this.targetIndex < this.plan.Count)
            {	
				Vector3 targPos;

				if(this.vertType == AStar.VerticeType.GROUND)
				{
					targPos = Player.Instance.getPlanetNavigation().getVertex(this.plan[this.targetIndex]).position;
				}
				else
				{
					targPos = Player.Instance.getPlanetNavigation().flyingVertices[Player.Instance.getPlanetNavigation().getVertex(this.plan[this.targetIndex]).key];
				}

                // Check if we've reached the target in the plan
                if (DistanceCalculator.squareEuclidianDistance(this.transform.position, targPos) < this.minReachDistance)
                {
                    // Increment to go to next target
                    ++this.targetIndex;
                }

                if (this.targetIndex < this.plan.Count)
                {
                    // move towards target in plan
                    this.move(targPos);
                }
            }
			else if (this.moveTowardsPlayerAtEndOfPath)
			{
				// Move towards the player
				this.move(Player.Instance.transform.position);
			}
			// No actions currently for when not supposed to reach th
        }
        else
        {
            // Check if past accepted errors
            if (this.errorsFound < this.errorsAccepted)
            {
                // Add to erros found
                ++this.errorsFound;

                // Get a new plan
                this.getNewPlan(this.targetLocation);
            }
            else
            { 
                // Handle error
                this.handleError();
            }
        }
    }

    /// <summary>
    /// Move Towards the given target
    /// </summary>
    /// <param name="targ"></param>
    public virtual void move(Vector3 targ)
    {
		SystemLogger.write("Moving towards target");

        // Set rotation
        Quaternion destRotation = Quaternion.LookRotation(targ - transform.position, transform.up);
        transform.rotation = Quaternion.RotateTowards(transform.rotation, destRotation, rotationMaxDegrees * Time.deltaTime);

        // Move forward
        this.transform.position = Vector3.MoveTowards(this.transform.position, targ, this.moveSpeed * Time.deltaTime);
    }

    /// <summary>
    /// Set the Player for the target
    /// </summary>
    public virtual void AcquireTarget()
    {
        // Set targetLocation to the player
        this.targetLocation = Player.Instance.transform.position;
    }

    /// <summary>
    /// Get a new plan
    /// </summary>
    public virtual void getNewPlan(Vector3 targ) 
    {
		this.targetLocation = targ;
        this.plan = this.aiMovement.getNewPlan(targ);
    }

    /// <summary>
    /// What to do on error of plan being null multiple times
    /// </summary>
    public virtual void handleError()
    {
        // Destroy self
        Destroy(this.gameObject);
    }
}
