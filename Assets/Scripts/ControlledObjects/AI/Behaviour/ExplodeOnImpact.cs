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

	// Ship category
	public bool isShip = true;

    // damage done to score
    public int damage = 10;

	private void deathAnimation()
	{
		// Collision explosion
		GameObject.Instantiate(explosion, new Vector3(transform.position.x, transform.position.y, transform.position.z), transform.rotation);
        
		// Deinstatiate self
		Destroy(this.gameObject);
	}

	private void collisionPlayer(Collision col)
	{
		// Apply force
		col.gameObject.GetComponent<Rigidbody>().AddExplosionForce(this.explosionForce, transform.position, this.explosionRadius, this.explosionLift);
		
		// Reduce score
		ScoreManager.Instance.DecreaseScore(this.damage);

		// Play death animation
		this.deathAnimation();
	}

    // Explosion!
    void OnCollisionEnter(Collision col)
    {
        if (col.gameObject.tag == "Player")
        {
			this.collisionPlayer(col);
        }
		else if(!this.isShip)
		{
			this.deathAnimation();
		}
    }
}
