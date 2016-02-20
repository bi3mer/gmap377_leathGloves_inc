using UnityEngine;
using System.Collections;

public class Rocket : MonoBehaviour
{
    /**
     * ExplosionRadius - The radius of the sphere the the explosion effects
     * ExplosionForce - How strong the explosion effects the enemies
     * Explosion - The explosion that's created when the rocket hits something.
     */
    public float ExplosionRadius, ExplosionForce;
    public GameObject Explosion;

    /// <summary>
    /// Triggered when the bullet collides with anything
    /// </summary>
    /// <param name="obj"></param>
    void OnCollisionEnter(Collision obj)
    {
        SystemLogger.write("Rocket collision");
        // Get all the objects in a <ExplosionRadius> radius from where the bullet collided
        Collider[] hitColliders = Physics.OverlapSphere(transform.position, ExplosionRadius);
        
        // Create Explosion object
        Instantiate(Explosion, transform.position, transform.rotation);
        
        // For every object in the explosion
        for (int i = 0; i < hitColliders.Length; ++i )
        {
            if (hitColliders[i])
            {
                // Add an explosion force of <ExplosionForce> to them
                Rigidbody rb = hitColliders[i].gameObject.GetComponent<Rigidbody>();
                
                if (rb)
                {
                    rb.AddExplosionForce(ExplosionForce, transform.position, this.ExplosionRadius);
                }

                // Try and find an EnemyHealth script on the gameobject hit.
                EnemyStats enemyHealth = hitColliders[i].gameObject.GetComponentInParent<EnemyStats>();

                if (hitColliders[i].CompareTag("Player"))
                {
                    ScoreManager.Instance.DecreaseScore((int)this.GetComponent<Weapon>().damage);
                }
                else if (hitColliders[i].CompareTag("DestructableEnvironment"))
                {
                    Destroy(hitColliders[i].gameObject);
                }

                // If the EnemyHealth component exist...
                if (enemyHealth != null) {
                    // ... the enemy should take damage.
                    enemyHealth.TakeDamage((int)this.GetComponent<Weapon>().damage);

                    // If the damage up power up is active, do extra damage
                    if (PowerUpManager.Instance.Powerups["DamageUp"].IsActive)
                    {
                        enemyHealth.TakeDamage((int)PowerUpManager.Instance.PowerIncrease);
                    }
                }
            }
        }

        // Destroy the rocket
        Destroy(this.gameObject);
    }
}
