using UnityEngine;
using System.Collections;

public class FlyingEnemyMover : BufferedMovement {

    public bool flyingTowardsPlayer;
    public float maxDistanceFromPlayer = 250f;

    private VertexNavigation planetVertexNavigation;


    /// <summary>
    /// Initialize information
    /// </summary>
    void Start()
    {
        base.init();

        // grab aStar to get vertex navigation
        this.planetVertexNavigation = this.GetComponent<AStar>().planetVertexNavigation;

        base.targetLocation = Player.Instance.getClosestVertice();
        base.setMovementScript(this.GetComponent<AStar>());
        base.moveTowardsPlayerAtEndOfPath = false;
        this.getNewPlan(Player.Instance.transform.position);
        flyingTowardsPlayer = true;
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
        if(DistanceCalculator.squareEuclidianDistance(this.transform.position, Player.Instance.transform.position) >= maxDistanceFromPlayer)
        {
            flyingTowardsPlayer = true;
        }
        // Check if plan is null or the square distance is to large
        if (this.shouldUpdatePlan())
        {
            base.resetTargetIndex();
            if (flyingTowardsPlayer)
            {
                this.getNewPlan(Player.Instance.transform.position);
                if(this.targetLocation == this.transform.position)
                {
                    flyingTowardsPlayer = false;
                }
            }
            else
            {
                this.updateTargetForMinimumDistance();
                this.getNewPlan(this.targetLocation);
            }
        }
    }

    /// <summary>
    /// Updates the target to take into account the minimum distance.
    /// </summary>
    private void updateTargetForMinimumDistance()
    {
        // set target to be above the planet (TODO: remove magic number)
        this.targetLocation = this.transform.position - this.transform.forward * -1 * 100;

        // Place target onto planet by using raycast from the point away from planet that we calculated with cross product
        RaycastHit[] hits = Physics.RaycastAll(this.targetLocation, this.planetVertexNavigation.transform.position - this.targetLocation, this.planetVertexNavigation.Radius);

        for (int i = 0; i < hits.Length; ++i)
        {
            // check if collision was the planet
            if (hits[i].collider.CompareTag("Planet"))
            {
                // Set target location to collision point on planet
                this.targetLocation = hits[i].point;
                break;
            }
        }
    }
}
