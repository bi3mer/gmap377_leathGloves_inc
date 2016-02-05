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
		// Check each eye
		for (int i=0; i < Eyes.Length; ++i) 
		{	
			// Use Eye to see if player is in sight
			RaycastHit hit = Eyes[i].LookForPlayer();

			// check the hit received from the eye
            if (hit.collider != null && hit.collider.CompareTag(Player.Instance.tag))
			{
				// Return the transform if valid
				return hit.collider.transform;
			}
		}
	
		// No transform found, return null
        return null;
    }

}
