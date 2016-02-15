using UnityEngine;
using System.Collections;

public class DropTheBomb : MonoBehaviour {

    public GameObject enemyBomb;
    public Transform bombSpawnLocation;
    public float bombVelocity;

    [HideInInspector]
    public float maxDistance = 250f;

    private float furthestDistance;

    void Start()
    {
        furthestDistance = this.GetComponent<MoveAwayFromPlayer>().minMoveDistance;
        StartCoroutine(CheckProximity());
    }

    IEnumerator CheckProximity()
    {
        while(true)
        {
            yield return new WaitForSeconds(1f);
            if (Physics.Raycast(this.transform.position, -this.transform.up, maxDistance, LayerMask.NameToLayer("Player")))
            {
                dropBomb(new Vector3());
                break;
            }
        }

        StartCoroutine(WaitThenGoAgain());
    }

    IEnumerator WaitThenGoAgain()
    {
        while ((this.transform.position.sqrMagnitude - Player.Instance.transform.position.sqrMagnitude) <= furthestDistance)
        {
            yield return new WaitForSeconds(1f);
        }
        StartCoroutine(CheckProximity());
    }

    public void dropBomb(Vector3 target)
    {
        SystemLogger.write("droppin da bomb");
        GameObject bomb = Instantiate(enemyBomb, bombSpawnLocation.position, this.transform.rotation) as GameObject;

        // Everything from here down is basically kinematic equations to calculate the necessary forward velocity
        // for the bomb to hit the player at its current location
        Vector3 enemyToPlayer = this.transform.position - Player.Instance.transform.position;
        float angle = Vector3.Angle(this.transform.forward, enemyToPlayer);
        float horizontalDistanceToPlayer = enemyToPlayer.magnitude * Mathf.Cos(angle);

        RaycastHit hit;
        if(Physics.Raycast(this.transform.position, -this.transform.up, out hit, maxDistance, LayerMask.NameToLayer("Planet")))
        {
            float velocityMagnitude = (horizontalDistanceToPlayer / (Mathf.Sqrt((2 * hit.distance) / 9.8f)));

            bomb.GetComponent<Rigidbody>().velocity = bomb.transform.forward * velocityMagnitude;

            bomb.GetComponent<Rigidbody>().useGravity = true;
            bomb.GetComponent<TImedDestroySelf>().lifetime = 25f;
        }

    }
}
