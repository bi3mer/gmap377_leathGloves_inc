using UnityEngine;
using System.Collections;

public class MoveAwayFromPlayer : BufferedMovement 
{
	private VertexNavigation planetVertexNavigation;
	
	/// <summary>
	/// Initialize information
	/// </summary>
	void Start()
	{
		base.init();

		// grab aStar to get vertex navigation
		this.planetVertexNavigation = this.GetComponent<AStar>().planetVertexNavigation;

		base.setMovementScript(this.GetComponent<AStar>());
		base.moveTowardsPlayerAtEndOfPath = false;

		// Build plan
		this.updateTargetForMinimumDistance();
		this.getNewPlan(this.targetLocation);
	}

	/// <summary>
	/// Checks the plan and sees if it needs to be updated
	/// </summary>
	public override void checkPlan()
	{	
		// CHeck if plan is null or the square distance is to large
		if (this.plan == null || DistanceCalculator.squareEuclidianDistance(this.transform.position, Player.Instance.transform.position) < base.minMoveDistance)
		{
			base.resetTargetIndex();
			this.updateTargetForMinimumDistance();
			this.getNewPlan(this.targetLocation);
		}
	}

	/// <summary>
	/// Updates the target to take into account the minimum distance.
	/// </summary>
	private void updateTargetForMinimumDistance()
	{
		// set target to be above the planet (TODO: remove magic number)
		this.targetLocation = this.transform.position - this.transform.forward * -1 * 50;

		// Place target onto planet by using raycast from the point away from planet that we calculated with cross product
		RaycastHit[] hits = Physics.RaycastAll(this.targetLocation, this.planetVertexNavigation.transform.position - this.targetLocation, this.planetVertexNavigation.Radius);

		for(int i = 0; i < hits.Length; ++i)
		{
			// check if collision was the planet
			if(hits[i].collider.CompareTag("Planet"))
			{
				// Set target location to collision point on planet
				this.targetLocation = hits[i].point;
				break;
			}
		}
	}
}