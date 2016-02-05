using UnityEngine;
using System.Collections;

public class Eye : MonoBehaviour 
{
    [Tooltip("The total field of view the eye can see within, in degrees.")]
    public float FieldOfView = 120;

    [Tooltip("The maximum distance the eye can detect the player within.")]
    public float MaxSightDistance = Mathf.Infinity;

	public bool debugRayCast = false;

    /// <summary>
    /// Attempts to Raycast to the player's location. If the player is not within the field of view 
    /// and within the max distance, the hit will have a null collider. If the there is an object in 
    /// the way, the hit will return that object's collider. If the player is within the field of view
    /// and max distance and there are no colliders in the way, it hit's collider will be the player.
    /// </summary>
    public RaycastHit LookForPlayer() 
	{
		// Get direction towards the player
        Vector3 rayDirection = Player.Instance.getTransformPosition() - transform.position;
        
		if(this.debugRayCast)
		{
			Debug.DrawRay(this.transform.position, rayDirection, Color.magenta);
		}

        if ((Vector3.Angle(rayDirection, transform.forward)) < FieldOfView / 2
            && Vector3.Distance(transform.position, Player.Instance.getTransformPosition()) < MaxSightDistance) 
		{
            RaycastHit hit = new RaycastHit();

            if (Physics.Raycast(transform.position, rayDirection, out hit, MaxSightDistance)) {
                return hit;
            }
        }
        return new RaycastHit();
    }
}
