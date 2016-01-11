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
    * OffsetSpeed - How fast the texture will move on the mesh
    * Target - The tag of the target this weapon will effect
    */
    public float GrowRate = 1.5f, OffsetSpeed = 2f;
    public MeshRenderer Mesh;
    public string Target = "Enemy";
    
    /// <summary>
    /// Used to initialize the Mesh variable
    /// </summary>
	void Start ()
    {
        Mesh = GetComponent<MeshRenderer>();
	}
	
	/// <summary>
    /// Called once per frame. Used to scale and move the texture on the mesh/
    /// </summary>
	void Update ()
    {
        transform.localScale = new Vector3(1f, transform.localScale.y + GrowRate * Time.deltaTime, 1f);
        Mesh.material.mainTextureOffset = new Vector3(Time.time * OffsetSpeed, 0f, 0f);
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
            // Get the enemy info
            EnemyStats enemyHealth = col.transform.gameObject.GetComponentInParent<EnemyStats>();
            if (enemyHealth != null)
            {
                // ... the enemy should take damage.
                enemyHealth.TakeDamage((int)this.GetComponentInParent<Weapon>().damage);
            }
        }
    }
}
