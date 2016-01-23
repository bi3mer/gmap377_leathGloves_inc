using UnityEngine;
using System.Collections;

public class Mine : MonoBehaviour
{
    /**
    * Public Variable Descriptions
    * LightOnIntensity - The intensity of the light when it's on
    * LightOffIntensity - The intensity of the light when it's off
    * CheckRadius - The radius that the mine is set off at
    * ExplosionRadius - The radius the explosion effects
    * ExplosionForce - The force the explosion has on the enemies
    * SetTime - How long it takes for the mine to be ready
    * OnTime - How long the light will be on/off when it is flashing
    * ResetTime - Used to reset the OnTime
    * ArmedVolume - The volume of the sound effect when the mne is ready to explode! ;)
    * Explosion - The explosion created when the mine is set off
    * MineArmed - The sound to be played when the mine is ready
    * LayerCheck - The layer the mine will effect
    */
    public float LightOnIntensity, LightOffIntensity;
    public float CheckRadius, ExplosionRadius, ExplosionForce, SetTime = 10f, OnTime, ResetTime, ArmedVolume;
    public GameObject Explosion;
    public AudioClip MineArmed;
    public LayerMask LayerCheck;

    /**
    * Private Variable Description
    * audioSource - The audio source on the game object
    * mineLight - The light on the mine
    * isOn - Tells if the light is on or off
    * playSound - Tells if the sound has played or not
    */
    private AudioSource audioSource;
    private Light mineLight;
    private bool isOn, playSound;
    
    /// <summary>
    /// Called when the object is created. Used to instantiate variables
    /// </summary>
    void Start()
    {
        this.audioSource = GetComponent<AudioSource>();
        this.mineLight = GetComponentInChildren<Light>();
        this.isOn = false;
        this.mineLight.intensity = this.LightOffIntensity;
        playSound = false;
    }

    /// <summary>
    /// Called every frame
    /// </summary>
    void Update()
    {
        // Finds all objects that enter it's detection radius
        Collider[] hitColliders = Physics.OverlapSphere(transform.position, this.CheckRadius, this.LayerCheck);

        // If the mine is still being set, decrement the timer
        if (this.SetTime > float.Epsilon)
        {
            this.SetTime -= Time.deltaTime;

        }
        else
        {
            // If the sound has not played
            if (!playSound)
            {
                // Stop the sound
                this.audioSource.Stop();

                // Play the sound
                this.audioSource.PlayOneShot(this.MineArmed, this.ArmedVolume);

                // Say the sound has been played
                playSound = true;
            }

            // If the Light has been on for the OnTime
            if (OnTime < float.Epsilon)
            {
                // If the light is on
                if (this.isOn)
                {
                    // Turn it off
                    this.mineLight.intensity = this.LightOffIntensity;
                    this.isOn = false;
                }
                else
                {
                    // Otherwise turn it on
                    this.mineLight.intensity = this.LightOnIntensity;
                    this.isOn = true;
                }

                // Reset OnTime
                this.OnTime = this.ResetTime;
            }
            else
            {
                // Otherwise decrement the OnTime
                this.OnTime -= Time.deltaTime;
            }
            if (hitColliders.Length > 0)
            {
                Instantiate(Explosion, new Vector3(transform.position.x, transform.position.y, transform.position.z), transform.rotation);

                // For every object in the explosion
                for (int i = 0; i < hitColliders.Length; i++)
                {
                    // Add an explosion force of <ExplosionForce> to them
                    hitColliders[i].gameObject.GetComponentInParent<Rigidbody>().AddExplosionForce(ExplosionForce, transform.position, this.ExplosionRadius);

                    // Try and find an EnemyHealth script on the gameobject hit.
                    EnemyStats enemyHealth = hitColliders[i].gameObject.GetComponentInParent<EnemyStats>();

                    // If the EnemyHealth component exist...
                    if (enemyHealth != null)
                    {
                        // ... the enemy should take damage.
                        enemyHealth.TakeDamage((int)this.GetComponent<Weapon>().damage);

                        if (PowerUpManager.Instance.isDmgUp())
                        {
                            enemyHealth.TakeDamage((int)PowerUpManager.Instance.PowerIncrease);
                        }
                    }
                }
                Destroy(this.gameObject);
            }

        }
    }
}