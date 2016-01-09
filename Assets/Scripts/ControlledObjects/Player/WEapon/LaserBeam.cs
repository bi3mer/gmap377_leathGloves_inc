using UnityEngine;
using System.Collections;

public class LaserBeam : MonoBehaviour
{
    /**
    * Public Variable Description
    * GrowRate - How fast the Laser will grow
    * ImageOffsetSpeed - How fast the image offset changes
    * Target - The target it does damage to
    * SpawnPnt - Where the laser spawns
    */
    public float GrowRate = 7f, ImageOffsetSpeed = 2.5f;
    public string Target = "Enemy";
    public Transform SpawnPnt;

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
        SpawnPnt = GameObject.Find("BulletSpawn").transform;
        line.SetPosition(0, SpawnPnt.position);
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

        line.material.mainTextureOffset = new Vector2(0, Time.time * ImageOffsetSpeed);

        // Set the initial position
        line.SetPosition(0, SpawnPnt.position);

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