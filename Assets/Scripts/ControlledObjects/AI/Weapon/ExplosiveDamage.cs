using UnityEngine;
using System.Collections;

public class ExplosiveDamage : MonoBehaviour 
{
	public float ExplosionForce;
	public float ExplosionRadius;
	public GameObject Explosion;

	void OnCollisionEnter(Collision obj)
	{
		// Get all the objects in a <ExplosionRadius> radius from where the bullet collided
		Collider[] hitColliders = Physics.OverlapSphere(transform.position, ExplosionRadius);
		
		// Create Explosion object
		Instantiate(Explosion, new Vector3(transform.position.x, transform.position.y, transform.position.z), transform.rotation);
		
		// For every object in the explosion
		for (int i = 0; i < hitColliders.Length; i++ )
		{
			// If they're an enemy
			if (hitColliders[i].gameObject.tag == "Player")
			{
				// Add an explosion force of <ExplosionForce> to them
				hitColliders[i].gameObject.GetComponent<Rigidbody>().AddExplosionForce(ExplosionForce, transform.position, this.ExplosionRadius);
				
				// Decrease score
				ScoreManager.Instance.DecreaseScore((int) this.GetComponent<Weapon>().damage);
			}
		}
		
		// Destroy the rocket
		Destroy(this.gameObject);
	}
}
