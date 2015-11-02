using UnityEngine;
using System.Collections;

public class AISight : MonoBehaviour {

    public Eye[] Eyes;

	
    /// <summary>
    /// Searches each eye for the player. If one of the eyes can see the player, it returns the 
    /// player's transform. Otherwise, it returns null.
    /// </summary>
    public Transform LookForPlayer() {
        Transform t = null;
        foreach (Eye eye in Eyes) {
            RaycastHit hit = eye.LookForPlayer();
            if (hit.collider != null && hit.collider.gameObject == Player.Instance.gameObject) {
                return hit.collider.transform;
            }
        }
        return t;
    }

}
