using UnityEngine;
using System.Collections;

public class Mine : MonoBehaviour
{
    public float LightOnIntensity, LightOffIntensity;
    public float ExplosionRadius, ExplosionForce, SetTime, OnTime, ResetTime, ArmedVolume;
    public GameObject Explosion;
    public AudioClip MineArmed;

    private AudioSource audioSource;
    private Light mineLight;
    private bool isOn, playSound;
    void Start()
    {
        if (this.SetTime == 0f)
        {
            this.SetTime = 10f;
        }
        this.audioSource = GetComponent<AudioSource>();
        this.mineLight = GetComponentInChildren<Light>();
        this.isOn = false;
        this.mineLight.intensity = this.LightOffIntensity;
        playSound = false;
    }

    void Update()
    {
        if (this.SetTime > float.Epsilon)
        {
            this.SetTime -= Time.deltaTime;
            
        }
        else
        {
            if (!playSound)
            {
                this.audioSource.Stop();

                this.audioSource.PlayOneShot(this.MineArmed, this.ArmedVolume);
                playSound = true;
            }
            if (OnTime < float.Epsilon)
            {
                if (this.isOn)
                {
                    this.mineLight.intensity = this.LightOffIntensity;
                    this.isOn = false;
                }
                else
                {
                    this.mineLight.intensity = this.LightOnIntensity;
                    this.isOn = true;
                }
                this.OnTime = this.ResetTime;
            }
            else
            {
                this.OnTime -= Time.deltaTime;
            }
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
                        enemyHealth.TakeDamage((int)this.GetComponent<Weapon>().damage);
                    }
                }
            }
            Destroy(this.gameObject);
        }
    }
}
