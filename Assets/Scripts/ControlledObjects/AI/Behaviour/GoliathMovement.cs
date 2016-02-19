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
    public float distanceInFrontOfPlayer = 50f;

    void Start()
    {
        planetVertexNavigation = this.GetComponent<AStar>().planetVertexNavigation;
        base.setMovementScript(this.GetComponent<AStar>());
        base.moveTowardsPlayerAtEndOfPath = false;

        this.targetLocation = this.transform.position;
    }

    void Update()
    {
        isCharging = (DistanceCalculator.squareEuclidianDistance(this.transform.position, this.targetLocation) >= chargeDistanceThreshold) && playerInChargeRange;
    }

    void OnTriggerEnter(Collider obj)
    {
        if (obj.CompareTag("Player"))
            playerInChargeRange = true;
    }

    public override void checkPlan()
    {
        if (this.shouldUpdatePlan())
        {
            base.resetTargetIndex();
            this.getChargeLocation();
            this.getNewPlan(this.targetLocation);
        }
    }

    public override bool shouldUpdatePlan()
    {
        return (this.plan == null || playerInChargeRange) && !isCharging;
    }

    private void getChargeLocation()
    {
        Vector3 inFrontOfPlayer = (Player.Instance.transform.forward * distanceInFrontOfPlayer);
        Vector3 groundPointInFrontOfPlayer = Vector3.zero;
        RaycastHit[] playerVectorHits = Physics.RaycastAll(inFrontOfPlayer, planetVertexNavigation.transform.position - inFrontOfPlayer, planetVertexNavigation.Radius);
        for(int i = 0; i < playerVectorHits.Length; i++)
        {
            if (playerVectorHits[i].collider.CompareTag("Planet"))
            {
                groundPointInFrontOfPlayer = playerVectorHits[i].point;
                break;
            }
        }

        Vector3 bossToFrontOfPlayer = groundPointInFrontOfPlayer - this.transform.position;
        float angleBetweenBossUp = Vector3.Angle(bossToFrontOfPlayer, this.transform.up);

        Vector3 inFrontOfBoss = Quaternion.AngleAxis(-angleBetweenBossUp, this.transform.right) * bossToFrontOfPlayer * chargeDistanceChange;
        RaycastHit[] bossVectorHits = Physics.RaycastAll(inFrontOfBoss, planetVertexNavigation.transform.position - inFrontOfBoss, planetVertexNavigation.Radius);

        Vector3 groundPointInFrontOfBoss = Vector3.zero;
        for (int i = 0; i < bossVectorHits.Length; i++)
        {
            if (bossVectorHits[i].collider.CompareTag("Planet"))
            {
                groundPointInFrontOfBoss = bossVectorHits[i].point;
                this.targetLocation = groundPointInFrontOfBoss;
            }
        }
    }
}