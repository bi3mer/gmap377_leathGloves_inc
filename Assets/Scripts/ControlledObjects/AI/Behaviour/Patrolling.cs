using UnityEngine;
using System.Collections;

public class Patrolling : BufferedMovement 
{
	public VertexNavigation PlanetNavigation;

	/// <summary>
	/// Start this instance.
	/// </summary>
	void Start()
	{
		SystemLogger.write("Initializing Patrolling behavior");
		base.init();
		base.targetLocation = Player.Instance.getClosestVertice();
		base.setMovementScript(this.GetComponent<AStar>());
		base.moveTowardsPlayerAtEndOfPath = false;
		this.updateCurrentPlan();
	}

	/// <summary>
	/// Checks if the plan needs to be updated
	/// </summary>
	public override void checkPlan()
	{
		SystemLogger.write("checking plan");
		// Check if plan should be updated
		if(shouldUpdatePlan())
		{
			this.updateCurrentPlan();
		}
	}

	/// <summary>
	/// Update the current plan
	/// </summary>
	/// <returns></returns>
	private void updateCurrentPlan()
	{
		SystemLogger.write("Update current plan");
		base.resetTargetIndex();
		
		this.getNewPlan(PlanetNavigation.vertices[Random.Range(0, PlanetNavigation.vertices.Length - 1)]);
	}

	/// <summary>
	/// Check if should update the plan
	/// </summary>
	/// <returns></returns>
	public override bool shouldUpdatePlan()
	{
		// -1 to avoid movement stopping at the end of the path
		return this.targetIndex >= this.plan.Count - 1;
	}
}
