using UnityEngine;
using System.Collections;

public class LaserBeamCylinder : MonoBehaviour {

    public float GrowRate = 1.5f, OffsetSpeed = 2f;
    public MeshRenderer mesh;
    public string Target = "Enemy";

	// Use this for initialization
	void Start ()
    {
        mesh = GetComponent<MeshRenderer>();
	}
	
	// Update is called once per frame
	void Update ()
    {
        transform.localScale = new Vector3(1f, transform.localScale.y + GrowRate * Time.deltaTime, 1f);
        mesh.material.mainTextureOffset = new Vector3(Time.time * OffsetSpeed, 0f, 0f);
	}

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
