using UnityEngine;
using System.Collections;

public class Mine : MonoBehaviour
{
    public float ExplosionRadius, ExplosionForce, SetTime;
    public GameObject Explosion;
    void Start()
    {
        if (this.SetTime == 0f)
        {
            this.SetTime = 10f;
        }
    }

    void Update()
    {
        if (this.SetTime > float.Epsilon)
        {
            this.SetTime -= Time.deltaTime;
        }
    }

    void OnTriggerEnter(Collider enemy)
    {
        if (enemy.gameObject.tag == "Enemy" && this.SetTime < float.Epsilon)
        {
            Collider[] hitColliders = Physics.OverlapSphere(transform.position, ExplosionRadius);

            // Create Explosion object
            Instantiate(Explosion, new Vector3(transform.position.x, transform.position.y, transform.position.z), transform.rotation);

            // For every object in the explosion
            for (int i = 0; i < hitColliders.Length; i++)
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
                        enemyHealth.TakeDamage((int)this.GetComponent<Weapon>().Damage);
                    }
                }
            }
            Destroy(this.gameObject);
        }
    }
}
