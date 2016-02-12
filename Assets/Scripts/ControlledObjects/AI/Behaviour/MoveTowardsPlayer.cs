using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class MoveTowardsPlayer : AbstractMover
{
    public float updatePlanBuffer = .5f;

    /// <summary>
    /// Initialize information
    /// </summary>
    void Start()
    {
        base.targetLocation = Player.Instance.getClosestVertice();
        base.setMovementScript(this.GetComponent<AStar>());
        base.moveTowardsPlayerAtEndOfPath = true;
		this.getNewPlan(Player.Instance.transform.position);

        // Start finding plan
        StartCoroutine(this.updatePlan());
    }

	/// <summary>
	/// Checks the plan and sees if it needs to be updated
	/// </summary>
	private void checkPlan()
	{	
		// CHeck if plan is null or the square distance is to large
		if (this.plan == null || DistanceCalculator.squareEuclidianDistance(base.targetLocation, Player.Instance.transform.position) >= base.minMoveDistance)
		{
			base.resetTargetIndex();
			this.getNewPlan(Player.Instance.transform.position);
		}
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

	// Update is called once per frame
	void Update()
	{
		// Execute movement
		this.executeCurrentPlan();
	}
}