using UnityEngine;
using System.Collections;

public class AISight : MonoBehaviour {

    public Eye[] Eyes;

	
    /// <summary>
    /// Searches each eye for the player. If one of the eyes can see the player, it returns the 
    /// player's transform. Otherwise, it returns null.
    /// </summary>
    public Transform LookForPlayer() 
	{
        Transform t = null;
        int count = Eyes.Length;
        for (int i=0; i<count; i++) {
            RaycastHit hit = Eyes[i].LookForPlayer();
            if (hit.collider != null && hit.collider.tag == Player.Instance.tag) {
                return hit.collider.transform;
            }
        }

        return t;
    }

}
