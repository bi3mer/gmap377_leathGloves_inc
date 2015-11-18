using UnityEngine;
using System.Collections;

public class ExplodeOnImpact : MonoBehaviour
{
    // Explosion effect
    public GameObject explosion;

    // Explosion forces
    public float explosionForce = 100f;
    public float explosionLift = 5.0f;
    public float explosionRadius = 3.0f;

    // damage done to score
    public int damage = 10;

    // Explosion!
    void OnCollisionEnter(Collision col)
    {
        // If player
        if (col.gameObject.tag == "Player")
        {
            Debug.Log("Exploded from " + gameObject.name);
            // Apply force
            col.gameObject.GetComponent<Rigidbody>().AddExplosionForce(this.explosionForce, transform.position, this.explosionRadius, this.explosionLift);

            // Reduce score
            ScoreManager.Instance.DecreaseScore(this.damage);


            // Collision explosion
            Instantiate(explosion, this.transform.position, Quaternion.identity);

            // Deinstatiate self
            Destroy(this.gameObject);
        }
    }
}
