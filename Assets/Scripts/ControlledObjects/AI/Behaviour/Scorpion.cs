using UnityEngine;
using System.Collections;

public class Scorpion : BufferedMovement 
{
    public float laserSquareDistanceMin = 10.0f;
    public float laserSquareDistanceMax = 15.0f;
    public float meleeSquareDistance    = 2.0f;
	public float minAngleToAttack       = 80.0f;
	public float maxAngleToAttack       = 105.0f;

    private ScorpionController controller;

    /// <summary>
    /// Initialize information
    /// </summary>
    void Start()
    {
        // Init movement info
        base.init();
        base.setMovementScript(this.gameObject.GetComponent<AStar>());
        base.moveTowardsPlayerAtEndOfPath = true;
        base.targetLocation = Player.Instance.getClosestVertice();
		this.controller = this.gameObject.GetComponent<ScorpionController>();
    }

    /// <summary>
    /// Return  true if plan needs to be updated
    /// </summary>
    /// <returns></returns>
    public override bool shouldUpdatePlan()
    {
        return (this.plan == null || DistanceCalculator.squareEuclidianDistance(base.targetLocation, Player.Instance.transform.position) >= base.minMoveDistance);
    }

    /// <summary>
    /// Checks the plan and sees if it needs to be updated
    /// </summary>
    public override void checkPlan()
    {
        // Check if plan is null or the square distance is to large
        if (this.shouldExecutePlan && this.shouldUpdatePlan())
        {
            base.resetTargetIndex();
            this.getNewPlan(Player.Instance.transform.position);
        }
    }

	// Check angle
	private bool lookingAtPlayer()
	{
		// Get angle between to player and self
		float angle = Vector3.Angle(this.transform.forward, this.transform.forward - Player.Instance.transform.forward);

		// Check angle is ideal range and return valid or not
		if(angle > this.minAngleToAttack && angle < this.maxAngleToAttack)
		{
			return true;
		}
		return false;
	}

    /// <summary>
    /// Handle Controller
    /// </summary>
    void FixedUpdate()
    {
        // Only run if controller is ready to start
        if (this.controller.CanMove)
        {
            this.shouldExecutePlan = true;
            this.setTarget(Player.Instance.transform.position);

            // Get Distance
            float distance = DistanceCalculator.squareEuclidianDistance(this.transform.position, Player.Instance.transform.position);
			
            if (distance > this.laserSquareDistanceMin && distance < this.laserSquareDistanceMax)
            {
				if(this.lookingAtPlayer())
				{
	                // set controller to attack with laser
	                this.controller.AttackLaser = true;
				}
            }
            else if (distance < this.meleeSquareDistance)
            {
				if(this.lookingAtPlayer()) 
				{
	                // Set controller to attack with melee
	                this.controller.AttackMelee = true;
				}
            }
            else
            {
                // Set controller to move towards player
                this.controller.Walking = true;
                this.shouldExecutePlan = true;
            }
        }
    }
}
