using UnityEngine;
using System.Collections;
using System;

public class Planet1BossMover : AbstractMover {

    private Vector3 bossTarget;
    private Vector3 initialBossPosition;

    private bool playerInRange;

    public float minDistanceMagnitude = 50f;
    public float maxDistanceMagnitude = 150f;

    void Awake()
    {
        base.SetMovementScript(this.GetComponent<AStar>());
        initialBossPosition = this.transform.position;
    }

    public override void AcquireTarget()
    {
        // Move up to a minimum distance from the player
        if (playerInRange)
        {
            Vector3 minDistanceFromPlayer = Player.Instance.transform.position - this.transform.position;
            bossTarget = minDistanceFromPlayer.normalized * minDistanceMagnitude;
        }

        // Player is not in range, so the boss will return to its initial position
        else
        {
            bossTarget = initialBossPosition;
        }
    }

    void Update()
    {
        // TODO:  Extract this functionality to another script for re-use in the tank and any future enemies
        playerInRange = (Vector3.Distance(Player.Instance.transform.position, this.transform.position) <= maxDistanceMagnitude);
        AcquireTarget();
        if (base.plan == null || base.DistanceCheck(bossTarget, Player.Instance.getClosestVertice(), 2f))
        {
            base.ResetTargetIndex();
            base.SetTarget(bossTarget);
        }
        base.executeCurrentPlan();
    }
}
