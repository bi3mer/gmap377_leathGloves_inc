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
        base.targetLocation = Player.Instance.getClosestVertice();
        base.setMovementScript(this.GetComponent<AStar>());
        base.moveTowardsPlayerAtEndOfPath = true;
		this.getNewPlan(Player.Instance.transform.position);
    }

	/// <summary>
	/// Checks the plan and sees if it needs to be updated
	/// </summary>
	public override void checkPlan()
	{	
		// CHeck if plan is null or the square distance is to large
		if (this.plan == null || DistanceCalculator.squareEuclidianDistance(base.targetLocation, Player.Instance.transform.position) >= base.minMoveDistance)
		{
			base.resetTargetIndex();
			this.getNewPlan(Player.Instance.transform.position);
		}
	}
}