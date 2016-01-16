using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class Weapon: MonoBehaviour
{
    public float damage, speed, ammo;
	public string targetTag = "Enemy";

    /// <summary>
    /// Triggered when the bullet collides with anything
    /// </summary>
    /// <param name="col">The object it collides with</param>
    void OnCollisionEnter(Collision col)
    {
        EnemyStats enemyHealth = null;

        // If it's an enemy
        if (col.gameObject.tag == this.targetTag)
        {
            // Try and find an EnemyHealth script on the gameobject hit.
            enemyHealth = col.gameObject.GetComponent<EnemyStats>();

            // If the EnemyHealth component exists...
            if (enemyHealth != null)
            {
                // ... the enemy should take damage.
                enemyHealth.TakeDamage((int)this.damage);
                if(PowerUpManager.Instance.isDmgUp())
                {
                    enemyHealth.TakeDamage((int)PowerUpManager.Instance.PowerIncrease);
                }
            }
        }
    }
}
