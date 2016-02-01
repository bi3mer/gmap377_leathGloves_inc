using UnityEngine;
using System.Collections;

public class DropTheBomb : MonoBehaviour {

    public GameObject enemyBomb;
    public Transform bombSpawnLocation;
    public float bombVelocity;

    public void dropBomb(Vector3 target)
    {
        GameObject bomb = Instantiate(enemyBomb, bombSpawnLocation.position, this.transform.rotation) as GameObject;
        bomb.GetComponent<Rigidbody>().AddRelativeForce(bomb.transform.forward * bombVelocity, ForceMode.Impulse);
        bomb.GetComponent<Rigidbody>().useGravity = true;
    }
}
