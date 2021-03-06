﻿using UnityEngine;
using System.Collections;

public abstract class BufferedMovement : AbstractMover 
{
	public float updatePlanBuffer = .5f;

    public bool shouldExecutePlan = true;

    [Tooltip ("Make false if another script is going to be running this game object")]
    public bool shouldRunCoRoutine = true;

	[Header("Max Alive Distance")]
	public bool CanDestroySelfOnMaxDistance = true;
	public float DestroySelfDistance = 1500;

	/// <summary>
	/// Checks the plan.
	/// </summary>
	public abstract void checkPlan();

    /// <summary>
    /// Check if should update plan
    /// </summary>
    /// <returns></returns>
    public abstract bool shouldUpdatePlan();

	/// <summary>
	/// Start this instance.
	/// </summary>
	public void init () 
	{
		base.init();

        if (this.shouldRunCoRoutine)
        {
            // Start finding plan
            StartCoroutine(this.updatePlan());
        }
	}
	
	/// <summary>
	/// Update the plan in a more buffered approach
	/// </summary>
	/// <returns></returns>
	IEnumerator updatePlan()
	{
		// Buffer on start
		yield return new WaitForSeconds(this.updatePlanBuffer);

		// Always running during gameplay
		while (true)
		{
			this.checkPlan();
			this.testToDestroySelf();
			
			yield return new WaitForSeconds(this.updatePlanBuffer);
		}
	}

    /// <summary>
    /// Call to disable this script and stop Update
    /// </summary>
    public void Disable()
    {
        this.enabled = false;
    }

    /// <summary>
    /// Call to enable this script and continue update
    /// </summary>
    public void Enable()
    {
        this.enabled = true;
    }

	/// <summary>
	/// See if should destroy self
	/// </summary>
	private void testToDestroySelf()
	{
		if(this.CanDestroySelfOnMaxDistance && DistanceCalculator.squareEuclidianDistance(this.transform.position, this.targetLocation) > this.DestroySelfDistance)
		{
			// Kill self
			Destroy(this.gameObject);
		}
	}
    
    void OnEnable()
    {
        StartCoroutine(updatePlan());
    }

    void OnDisable()
    {
        StopCoroutine(updatePlan());
    }

    // Update is called once per frame
    void Update()
	{
        if (this.shouldExecutePlan)
        {
            // Execute movement
            this.executeCurrentPlan();
        }
	}
}
