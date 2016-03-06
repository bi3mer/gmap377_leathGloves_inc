using UnityEngine;
using System.Collections;
using System;

public class GoliathMovement : BufferedMovement
{
    private bool playerInChargeRange = false;
    private bool isCharging = false;
    private VertexNavigation planetVertexNavigation;

    public float chargeDistanceThreshold = 25f;
    public float chargeDistanceChange = 20f;
    public float distanceInFrontOfPlayer = 20f;

    private float baseSpeed;
    public float chargeSpeed = 6f;

    /// <summary>
    /// Initialize information
    /// </summary>
    void Start()
    {
        base.init();

        this.planetVertexNavigation = this.GetComponent<AStar>().planetVertexNavigation;

        base.targetLocation = Player.Instance.getClosestVertice();
        base.setMovementScript(this.GetComponent<AStar>());
        base.moveTowardsPlayerAtEndOfPath = false;
        this.getNewPlan(Player.Instance.transform.position);

        baseSpeed = this.moveSpeed;
    }

    /// <summary>
    /// Return  true if plan needs to be updated
    /// </summary>
    /// <returns></returns>
    public override bool shouldUpdatePlan()
    {
        return (this.plan == null || DistanceCalculator.squareEuclidianDistance(base.targetLocation, Player.Instance.transform.position) >= base.minMoveDistance && !isCharging);
    }

    void OnTriggerEnter(Collider obj)
    {
        if (obj.gameObject.CompareTag("Player"))
        {
            playerInChargeRange = true;
        }
    }

    void OnTriggerExit(Collider obj)
    {
        if (obj.gameObject.CompareTag("Player"))
        {
            playerInChargeRange = false;
        }
    }

    
    void FixedUpdate()
    {
        if (DistanceCalculator.squareEuclidianDistance(this.transform.position, this.targetLocation) <= chargeDistanceThreshold)
        {
            isCharging = false;
        }

        if (isCharging)
        {
            this.moveSpeed = chargeSpeed;
        }
        else
        {
            this.moveSpeed = baseSpeed;
        }
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
            if(playerInChargeRange)
                this.getChargePoint();
            else
            {
                this.targetLocation = Player.Instance.transform.position;
            }
            this.getNewPlan(this.targetLocation);
        }
    }

    void getChargePoint()
    {
        isCharging = true;
        Vector3 chargePoint = (Player.Instance.transform.position - this.transform.position);

        RaycastHit[] hits = Physics.RaycastAll(chargePoint, this.planetVertexNavigation.transform.position - chargePoint, this.planetVertexNavigation.Radius);
        for(int i = 0; i < hits.Length; i++)
        {
            if (hits[i].collider.CompareTag("Planet"))
            {
                this.targetLocation = hits[i].point;
                break;
            }
        }
    }
}