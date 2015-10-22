using UnityEngine;
using System.Collections;

public class ScoreUpdaterForBullet : MonoBehaviour
{
    public int damagePerShot;
    // Use this for initialization
    void Start()
    {

    }

    // Update is called once per frame
    void Update()
    {

    }

    void OnCollisionEnter(Collision col)
    {
        Debug.Log("Fuck Alex");
        if (col.gameObject.tag == "Enemy")
        {
            // Try and find an EnemyHealth script on the gameobject hit.
            EnemyHealth enemyHealth = col.gameObject.GetComponent<EnemyHealth>();

            // If the EnemyHealth component exist...
            if (enemyHealth != null)
            {
                // ... the enemy should take damage.
                enemyHealth.TakeDamage(damagePerShot);
            }

        }

    }
}
