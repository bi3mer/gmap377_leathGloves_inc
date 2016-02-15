using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class MoveTowardsPlayer : BufferedMovement
{
    /// <summary>
    /// Initialize information
    /// </summary>
    void Start()
    {
		base.init();
        base.targetLocation = Player.Instance.getClosestVertice();
        base.setMovementScript(this.GetComponent<AStar>());
        base.moveTowardsPlayerAtEndOfPath = true;
		this.getNewPlan(Player.Instance.transform.position);
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
        if (this.shouldUpdatePlan())
		{
            base.resetTargetIndex();
			this.getNewPlan(Player.Instance.transform.position);
		}
	}
}