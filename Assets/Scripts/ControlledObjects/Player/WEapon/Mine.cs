using UnityEngine;
using System.Collections;

public class Mine : MonoBehaviour
{
    public float LightOnIntensity, LightOffIntensity;
    public float CheckRadius, ExplosionRadius, ExplosionForce, SetTime = 10f, OnTime, ResetTime, ArmedVolume;
    public GameObject Explosion;
    public AudioClip MineArmed;
    public LayerMask LayerCheck;

    private AudioSource audioSource;
    private Light mineLight;
    private bool isOn, playSound;
    void Start()
    {
        this.audioSource = GetComponent<AudioSource>();
        this.mineLight = GetComponentInChildren<Light>();
        this.isOn = false;
        this.mineLight.intensity = this.LightOffIntensity;
        playSound = false;
    }

    void Update()
    {
        Collider[] hitColliders = Physics.OverlapSphere(transform.position, this.CheckRadius, this.LayerCheck);
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
            if (hitColliders.Length > 0)
            {
                Instantiate(Explosion, new Vector3(transform.position.x, transform.position.y, transform.position.z), transform.rotation);

                // For every object in the explosion
                for (int i = 0; i < hitColliders.Length; i++)
                {
                    GameObject hitTarget = hitColliders[i].gameObject;

                    // Add an explosion force of <ExplosionForce> to them
                    hitColliders[i].gameObject.GetComponentInParent<Rigidbody>().AddExplosionForce(ExplosionForce, transform.position, this.ExplosionRadius);

                    // Try and find an EnemyHealth script on the gameobject hit.
                    EnemyStats enemyHealth = hitColliders[i].gameObject.GetComponentInParent<EnemyStats>();

                    // If the EnemyHealth component exist...
                    if (enemyHealth != null)
                    {
                        // ... the enemy should take damage.
                        enemyHealth.TakeDamage((int)this.GetComponent<Weapon>().damage);
                    }
                }
                Destroy(this.gameObject);
            }

        }
    }
}