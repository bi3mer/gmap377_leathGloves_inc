using UnityEngine;

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
        Instantiate(destroyEffect, collision.contacts[0].point, transform.rotation);
        Destroy(gameObject);
    }
}
