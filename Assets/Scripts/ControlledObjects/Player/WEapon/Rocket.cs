using UnityEngine;
using System.Collections;

public class Rocket : MonoBehaviour
{
    public float ExplosionRadius, ExplosionForce;
    public GameObject Explosion;

    /// <summary>
    /// Triggered when the bullet collides with anything
    /// </summary>
    /// <param name="obj"></param>
    void OnCollisionEnter(Collision obj)
    {
        // Get all the objects in a <ExplosionRadius> radius from where the bullet collided
        Collider[] hitColliders = Physics.OverlapSphere(transform.position, ExplosionRadius);

        // Create Explosion object
     //   Instantiate(Explosion, new Vector3(transform.position.x, transform.position.y +1f, transform.position.z), transform.rotation);

            // For every object in the explosion
            for (int i = 0; i < hitColliders.Length; i++ )
            {
                // If they're an enemy
                if (hitColliders[i].gameObject.tag == "Enemy")
                {
                    // Add an explosion force of <ExplosionForce> to them
                    hitColliders[i].gameObject.GetComponent<Rigidbody>().AddExplosionForce(ExplosionForce, transform.position, this.ExplosionRadius);
              
                    // Try and find an EnemyHealth script on the gameobject hit.
                    EnemyStats enemyHealth = hitColliders[i].gameObject.GetComponent<EnemyStats>();

                    // If the EnemyHealth component exist...
                    if (enemyHealth != null)
                    {
                        // ... the enemy should take damage.
                        enemyHealth.TakeDamage((int) this.GetComponent<Weapon>().Damage);
                    }

            }
        }

        // Destroy the rocket
        Destroy(this.gameObject);
    }

	
}
