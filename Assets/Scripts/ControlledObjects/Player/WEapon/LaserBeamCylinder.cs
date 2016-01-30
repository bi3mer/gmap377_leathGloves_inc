using UnityEngine;
using System.Collections;

/// <summary>
/// Used to scale the cylinder and offset the texture on the mesh for an extra effect
/// </summary>
public class LaserBeamCylinder : MonoBehaviour
{

    /**
    * Public Variable Description
    * GrowRate - How fast the cylinder will scale
    * CantPassThrough - The layers the laser cannot pass through
    * Target - The tag of the target this weapon will effect
    */
    public float GrowRate = 1.5f, OffsetSpeed = 2f;
    public string Target = "Enemy";
    public LayerMask CantPassThrough;
    public GameObject CollisionParticle;

    /**
    * Private Variable Description
    * mesh - The mesh on the object
    */
    private MeshRenderer mesh;
    private bool stopGrowing = false;

    /// <summary>
    /// Used to initialize the Mesh variable
    /// </summary>
	void Start ()
    {
        mesh = GetComponent<MeshRenderer>();
	}
	
	/// <summary>
    /// Called once per frame. Used to scale and move the texture on the mesh/
    /// </summary>
	void Update ()
    {
        // If it hasn't hit an object in the layermask
        if (!this.stopGrowing)
        {
            // Grow laser
            transform.localScale = new Vector3(1f, transform.localScale.y + GrowRate * Time.deltaTime, 1f);
        }

        // Create spinning texture on the mesh
        mesh.material.mainTextureOffset = new Vector3(Time.time * OffsetSpeed, 0f, 0f);
	}

    /// <summary>
    /// Used to handle collisions. Will do damage when the cylinder collider collides with
    /// an object matching the Target tag
    /// </summary>
    /// <param name="col">The collider the cylinder interacted with</param>
    void OnTriggerEnter(Collider col)
    {

        // If it's the right tag
        if (col.transform.gameObject.tag == this.Target)
        {
            // Create the "Got hit by laser" particle effect.
            GameObject.Instantiate(CollisionParticle, col.gameObject.transform.position, Quaternion.Euler(Vector3.zero));

            // Get the enemy info
            EnemyStats enemyHealth = col.transform.gameObject.GetComponentInParent<EnemyStats>();

            // If the EnemyStats component was found on the game object
            if (enemyHealth != null)
            {
                // ... the enemy should take damage.
                enemyHealth.TakeDamage((int)this.GetComponentInParent<Weapon>().damage);

                // If the damage increase power up is active, do additional damage
                if (PowerUpManager.Instance.Powerups["DamageUp"].IsActive)
                {
                    enemyHealth.TakeDamage((int)PowerUpManager.Instance.PowerIncrease);
                }
            }
        }
    }

    /// <summary>
    /// Called when the laser is destroyed to decrease the laser count by 1
    /// </summary>
    void OnDestroy()
    {
        // Decrease the laser count by 1
        --PowerUpManager.Instance.CurrentLaserCount;
    }
}
