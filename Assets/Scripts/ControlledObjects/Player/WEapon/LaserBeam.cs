using UnityEngine;
using System.Collections;

public class LaserBeam : MonoBehaviour
{
    /**
    * Public Variable Description
    * GrowRate - How fast the Laser will grow
    * Target - The target it does damage to
    */
    public float GrowRate = 7f;
    public string Target = "Enemy";

    /**
    * Private Variable Description
    * line - The line renderer that represents the laser
    * length - The length of the laser
    * position - The current position of the laser
    */
    private LineRenderer line;
    private float length = 1f;
    Vector3 position;

    /// <summary>
    /// Called when the object is created. Used for initialization of variables.
    /// </summary>
    void Start()
    {
        line = GetComponent<LineRenderer>();
        line.SetPosition(0, transform.position);
        line.SetPosition(1, Camera.main.ScreenToWorldPoint(
                    new Vector3(
                        Input.mousePosition.x,
                        Input.mousePosition.y,
                        length
                    )
                    ));
        this.position = new Vector3(
                        Input.mousePosition.x,
                        Input.mousePosition.y,
                        length
                    );

        if (SoundManager.Instance) {
            SoundManager.Instance.PlayAudioSourceVaried(GetComponent<AudioSource>(), SoundManager.Instance.LaserBeamShot);
        }
    
    }

    /// <summary>
    /// Called every frame.
    /// </summary>
    void Update()
    {
        // Update length
        length = length + this.GrowRate * Time.deltaTime;

        // Set the initial position
        line.SetPosition(0, GameObject.Find("Player").transform.position);

        // Set the end position
        line.SetPosition(1, Camera.main.ScreenToWorldPoint(
                    new Vector3(
                        position.x,
                        position.y,
                        length
                    )
                    ));

        // Will hold the objects the line renderer collides with
        RaycastHit[] hit;

        // Collect all the objects the laser collides with
        hit =
        Physics.RaycastAll(
                    this.transform.position,
                    Camera.main.ScreenToWorldPoint(
                    new Vector3(
                        Input.mousePosition.x,
                        Input.mousePosition.y,
                        10000f
                    )
                ),
                length
            );

        // Go through each object 
        foreach (RaycastHit x in hit)
        {
            // If it's the right tag
            if (x.transform.gameObject.tag == this.Target)
            {
                // Get the enemy info
                EnemyStats enemyHealth = x.transform.gameObject.GetComponent<EnemyStats>();
                if (enemyHealth != null)
                {
                    // ... the enemy should take damage.
                    enemyHealth.TakeDamage((int)this.GetComponent<Weapon>().damage);
                }
            }
        }
    }
}