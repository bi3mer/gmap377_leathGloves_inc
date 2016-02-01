using UnityEngine;
using System.Collections;

public class FlyingMovement : AbstractMover {

    public int updatePlanBuffer = 2;

    // TODO: Change to vertices away?
    public float flyAwayDistance = 100f;

    // Used to keep track of which direction enemy is moving
    private bool flyingTowardsPlayer = true;

    public DropTheBomb flyingBomb;

    // TODO: Update when height is known
    [HideInInspector]
    public float flyingVertexHeight = 50f;

    // Used for figuring out when the bomb should be dropped
    public float proximityModifier = 1.25f;

    void Start () {
        vertexType = VertexType.FLYING;

        base.targetLocation = Player.Instance.getClosestVertice();
        base.setMovementScript(this.GetComponent<AStar>());
        base.setTarget(targetLocation);
        base.moveTowardsPlayerAtEndOfPath = false;

        this.getNewPlan();

        this.flyingBomb = this.GetComponent<DropTheBomb>();

        // Start finding plan
        StartCoroutine(this.flyToPlayer());
    }
	
	void Update () {
        base.executeCurrentPlan();
	}

    IEnumerator flyToPlayer()
    {
        flyingTowardsPlayer = true;
        while (DistanceCalculator.squareEuclidianDistance(this.transform.position, Player.Instance.transform.position) >= (Mathf.Pow(flyingVertexHeight, 2) * proximityModifier))
        {
            this.checkPlan();
            yield return new WaitForSeconds(updatePlanBuffer);
        }
        flyingTowardsPlayer = false;
        flyingBomb.dropBomb(Player.Instance.transform.position);
        StartCoroutine(this.flyAwayFromPlayer());
    }

    IEnumerator flyAwayFromPlayer()
    {
        while(DistanceCalculator.squareEuclidianDistance(this.transform.position, Player.Instance.transform.position) <= Mathf.Pow(flyAwayDistance, 2f))
        {
            this.checkPlan();
            yield return new WaitForSeconds(updatePlanBuffer);
        }
        StartCoroutine(this.flyToPlayer());
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

            if (flyingTowardsPlayer)
            {
                base.setTarget(Player.Instance.transform.position);
            }
            else
            {
                // TODO: Make this some vertices away from the player
                base.setTarget(Player.Instance.transform.position);
            }

            this.getNewPlan();
        }
    }
}
