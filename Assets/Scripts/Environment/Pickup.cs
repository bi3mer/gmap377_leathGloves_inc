using UnityEngine;
using System.Collections;

public class Pickup : MonoBehaviour
{
    // Specifies the type of pickup it is
    public int PickupType;

    // A template for the action the pickup will have on the player
    delegate void template(GameObject obj);

    // The array that holds the different actions
    private template[] Type;

    void Start()
    {
        // When adding a new pickup type, don't forget to add 1 to the size of the array
        this.Type = new template[9];
        
        // A function to initialize the array
        this.initializePickupTypes();

        EnvironmentOrienter orienter = GetComponent<EnvironmentOrienter>();
        orienter.OrientToPlanet();
        orienter.DropToPlanet();
        
    }

    /// <summary>
    /// What happens when this object collides with something
    /// </summary>
    /// <param name="obj">The object it collided with</param>
    void OnTriggerEnter(Collider obj)
    {
        if (obj.gameObject.tag == "Player")
        {
            Destroy(this.gameObject);
            
            // Activate the pickup type
            this.Type[this.PickupType](obj.gameObject);
        }
    }

    /// <summary>
    /// Initializes the template array. If a new pickup needs to be added, create it here.
    /// </summary>
    private void initializePickupTypes()
    {
        // Example pickup type one
        template pickupOne = (obj) =>
        {
            if (obj.gameObject.GetComponent<Shooting>() != null)
            {
                obj.gameObject.GetComponent<Shooting>().bullet = this.GetComponent<PickupCache>().Rocket;
				this.GetComponent<PickupCache>().Rocket.GetComponent<Weapon>().ammo += 5;

                //Set Gui to current weapon
                WeaponDisplayController.Instance.AllOff();
                WeaponDisplayController.Instance.rocketsOn.enabled = true;
            }
        };

        // Example pickup type 2
        template pickupTwo = (obj) =>
        {
            if (obj.gameObject.GetComponent<Shooting>() != null)
            {
				obj.gameObject.GetComponent<Shooting>().bullet = this.GetComponent<PickupCache>().LaserBeam;
				this.GetComponent<PickupCache>().LaserBeam.GetComponent<Weapon>().ammo += 3;

                //Set Gui to current weapon
                WeaponDisplayController.Instance.AllOff();
                WeaponDisplayController.Instance.beamOn.enabled = true;
            }
        };
        // Example pickup type 3
        template pickupThree = (obj) =>
        {
            GameObject multi = new GameObject();
            multi.AddComponent<ScoreMulti>();
        };

        // Mine Pickup
        template minePickup = (obj) =>
        {
            if (obj.gameObject.GetComponent<Shooting>() != null)
            {
				obj.gameObject.GetComponent<Shooting>().bullet = this.GetComponent<PickupCache>().Mine;
				this.GetComponent<PickupCache>().Mine.GetComponent<Weapon>().ammo += 3;

                //Set Gui to current weapon
                WeaponDisplayController.Instance.AllOff();
                WeaponDisplayController.Instance.mineOn.enabled = true;
            }
        };

        template multiPickup = (obj) =>
        {
            if (obj.gameObject.GetComponent<Shooting>() != null)
            {
                PowerUpManager.Instance.activateMultishot();
            }
        };

        template dmgPickup = (obj) =>
        {
            if (obj.gameObject.GetComponent<Shooting>() != null)
            {
                PowerUpManager.Instance.activateDmgUp();
            }
        };

        template bomb = (obj) =>
        {
            if (obj.gameObject.GetComponent<Shooting>() != null)
            {
                // Get all the objects in a <ExplosionRadius> radius from where the bullet collided
                Collider[] hitColliders = Physics.OverlapSphere(
                    transform.position,
                    PowerUpManager.Instance.BombRadius,
                    PowerUpManager.Instance.BombLayer);

                // For every object in the explosion
                for (int i = 0; i < hitColliders.Length; ++i)
                {
                    if (hitColliders[i])
                    {
                        // Try and find an EnemyHealth script on the gameobject hit.
                        EnemyStats enemyHealth = hitColliders[i].gameObject.GetComponentInParent<EnemyStats>();

                        // If the EnemyHealth component exist...
                        if (enemyHealth != null)
                        {
                            // ... the enemy should take damage.
                            enemyHealth.TakeDamage((int)PowerUpManager.Instance.BombDamage);
                        }
                    }
                }
            }
        };

        // What will happen when the shield pick up is grabbed
        template shieldPickup = (obj) =>
        {
            // If the shield isn't already active
            if (!PowerUpManager.Instance.isShield())
            {
                // Make a shield around the player. This may change from my shitty particle effect
                GameObject shield = Instantiate(PowerUpManager.Instance.ShieldModel, obj.transform.position, obj.transform.rotation) as GameObject;

                // Parent the shield to the player
                shield.transform.parent = obj.transform;

                // Resize the shield to look like it's around the player. 
                shield.transform.localScale = new Vector3(
                    PowerUpManager.Instance.ShieldResizer,
                    PowerUpManager.Instance.ShieldResizer,
                    PowerUpManager.Instance.ShieldResizer);

                // Start the particle system
                shield.GetComponent<ParticleSystem>().Play();
            }

            // Activate the shield power up
            PowerUpManager.Instance.activateShield();
            
        };

        template speedPickup = (obj) =>
        {
            // Activate the speed boost power up
            PowerUpManager.Instance.activateSpeedBoost();
        };


        // Add them to the array
        this.Type[0] = pickupOne;
        this.Type[1] = pickupTwo;
        this.Type[2] = pickupThree;
        this.Type[3] = minePickup;
        this.Type[4] = multiPickup;
        this.Type[5] = dmgPickup;
        this.Type[6] = bomb;
        this.Type[7] = shieldPickup;
        this.Type[8] = speedPickup;
    }
}
