using UnityEngine;
using System.Collections;
using System;

public class Planet1BossMover : AbstractMover {
	
    private Vector3 initialBossPosition;

    private bool playerInRange;

    public float minDistanceMagnitude = 50f;
    public float maxDistanceMagnitude = 150f;

	public int updatePlanBuffer = 2;

    void Start()
    {
		initialBossPosition = transform.position;

		base.targetLocation = Player.Instance.getClosestVertice();
		base.setMovementScript(this.GetComponent<AStar>());
		base.setTarget(initialBossPosition);
		base.moveTowardsPlayerAtEndOfPath = false;

		this.getNewPlan();
		
		// Start finding plan
		StartCoroutine(this.updatePlan());
    }

	/// <summary>
	/// Update the plan in a more buffered approach
	/// </summary>
	/// <returns></returns>
	IEnumerator updatePlan()
	{
		// Always running during gameplay
		while (true)
		{
			this.checkPlan();
			
			yield return new WaitForSeconds(this.updatePlanBuffer);
		}
	}

	/// <summary>
	/// Checks the plan and sees if it needs to be updated
	/// </summary>
	private void checkPlan()
	{	
		// CHeck if plan is null or the square distance is to large
		if (this.plan == null || DistanceCalculator.squareEuclidianDistance(base.targetLocation, Player.Instance.transform.position) >= base.minReachDistance)
		{
			base.resetTargetIndex();

			// TODO: Use x vertices away functionality in updated A*
			base.setTarget(Player.Instance.transform.position);

			this.getNewPlan();
		}
	}

    void Update()
    {
		this.executeCurrentPlan ();
    }
}