using UnityEngine;
using System.Collections;

public class CollisionDestroy : MonoBehaviour 
{
    /// <summary>
    /// Raises the collision enter event destroys self on collison.
    /// </summary>
    /// <param name="collision">Collision.</param>
    public GameObject destroyEffect;
	void OnCollisionEnter(Collision collision) 
	{
        // Create Explosion object
        Instantiate(destroyEffect, new Vector3(transform.position.x, transform.position.y, transform.position.z), transform.rotation);
        Destroy(gameObject);
    }
}
