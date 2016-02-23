using UnityEngine;
using System.Collections;

public class Scorpion : BufferedMovement 
{
    public float laserSquareDistanceMin = 10.0f;
    public float laserSquareDistanceMax = 15.0f;
    public float meleeSquareDistance    = 2.0f;

    // Getcomponent wasn't working
    [Header("Here because getcomponent not working, idk")]
    public ScorpionController controller;
    public AStar astar;

    /// <summary>
    /// Initialize information
    /// </summary>
    void Init()
    {
        // Init movement info
        base.init();
        base.setMovementScript(this.astar);
        base.moveTowardsPlayerAtEndOfPath = true;
        base.targetLocation = Player.Instance.getClosestVertice();
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

    /// <summary>
    /// Handle Controller
    /// </summary>
    void FixedUpdate()
    {
        // Only run if controller is ready to start
        if (this.controller.CanMove)
        {
            // TODO: Optimize to only call this once at beginning post spawn
            this.shouldExecutePlan = true;
            this.setTarget(Player.Instance.transform.position);

            // Get Distance
            float distance = DistanceCalculator.squareEuclidianDistance(this.transform.position, Player.Instance.transform.position);

            if (distance > this.laserSquareDistanceMin && distance < this.laserSquareDistanceMax)
            {
                // set controller to attack with laser
                this.controller.AttackLaser = true;
            }
            else if (distance < this.meleeSquareDistance)
            {
                // Set controller to attack with melee
                this.controller.AttackMelee = true;
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
