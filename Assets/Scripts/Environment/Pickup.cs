using UnityEngine;

public class Pickup : MonoBehaviour
{
    // Specifies the type of pickup it is
    public int PickupType;
	
	public GameObject bombExplosion;
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

        // Orient to the planet
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
            SystemLogger.write("Player Picked Up Bolt");
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
        AddRocketPickup();
        AddLaserBeamPickup();
        AddScoreMultiplierPickup();
        AddMinePickup();
        AddMultishotPickup();
        AddDamageMultiplierPickup();
        AddBombPickup();
        AddShieldPickup();
        AddSpeedBoostPickup();
    }

    /// <summary>
    /// Add the rocket pickup to the pickup array
    /// </summary>
    public void AddRocketPickup()
    {
        template pickupOne = (obj) =>
        {
            if (obj.gameObject.GetComponent<Shooting>() != null)
            {
                PickupCache.Instance.Rocket.GetComponent<Weapon>().ammo += 5;
				PopUpText.Instance.NewPopUp("Rocket Ammo!");
            }
        };

        this.Type[0] = pickupOne;
        SystemLogger.write("Rocket Pickup Initialized");
    }

    /// <summary>
    /// Add the laser beam pickup to the pickup array
    /// </summary>
    public void AddLaserBeamPickup()
    {
        SystemLogger.write("Laser beam collision");
        template pickupTwo = (obj) =>
        {
            if (obj.gameObject.GetComponent<Shooting>() != null)
            {
                PickupCache.Instance.LaserBeam.GetComponent<Weapon>().ammo += 3;
				PopUpText.Instance.NewPopUp("Laser Ammo!");
            }
        };
        
        this.Type[1] = pickupTwo;
        SystemLogger.write("Laser Beam Pickup Initialized");
    }

    /// <summary>
    /// Add the score multiplier to the pickup array
    /// </summary>
    public void AddScoreMultiplierPickup()
    {

        template pickupThree = (obj) =>
        {
            GameObject multi = new GameObject();
            multi.AddComponent<ScoreMulti>();
			PopUpText.Instance.NewPopUp("Multiplier!");
        };

        this.Type[2] = pickupThree;
        SystemLogger.write("Score Multiplier Pickup Initialized");
    }

    /// <summary>
    /// Add the mine pickup to the pickup array
    /// </summary>
    public void AddMinePickup()
    {
        template minePickup = (obj) =>
        {
            if (obj.gameObject.GetComponent<Shooting>() != null)
            {
                PickupCache.Instance.Mine.GetComponent<Weapon>().ammo += 3;
				PopUpText.Instance.NewPopUp("Mine Ammo!");
            }
        };

        this.Type[3] = minePickup;
        SystemLogger.write("Mine Pickup Initialized");
    }

    /// <summary>
    /// Add the multishot pickup to the pickup array
    /// </summary>
    public void AddMultishotPickup()
    {
        template multiPickup = (obj) =>
        {
            if (obj.gameObject.GetComponent<Shooting>() != null)
            {
                PowerUpManager.Instance.Activate("Multishot");
				PopUpText.Instance.NewPopUp("Multi Shot!");
            }
        };
        
        this.Type[4] = multiPickup;
        SystemLogger.write("Multishot Pickup Initialized");
    }

    /// <summary>
    /// Add the damage multiplier pickup to the pickup array
    /// </summary>
    public void AddDamageMultiplierPickup()
    {
        template dmgPickup = (obj) =>
        {
            if (obj.gameObject.GetComponent<Shooting>() != null)
            {
                PowerUpManager.Instance.Activate("DamageUp");
				PopUpText.Instance.NewPopUp("Double Damage!");
            }
        };
        
        this.Type[5] = dmgPickup;
        SystemLogger.write("Damage Multiplier Pickup Initialized");
    }

    /// <summary>
    /// Add the bomb pickup to the pickup array
    /// </summary>
    public void AddBombPickup()
    {
        template bomb = (obj) =>
        {
            if (obj.gameObject.GetComponent<Shooting>() != null)
            {
            	Instantiate(bombExplosion, obj.transform.position, obj.transform.rotation);
                // Get all the objects in a <ExplosionRadius> radius from where the bullet collided
                Collider[] hitColliders = Physics.OverlapSphere(
                    transform.position,
                    PowerUpManager.Instance.BombRadius,
                    PowerUpManager.Instance.BombLayer);
				PopUpText.Instance.NewPopUp("Nuke!");
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
        
        this.Type[6] = bomb;
        SystemLogger.write("Bomb Pickup Initialized");
    }

    /// <summary>
    /// Add the shield pickup to the pickup array
    /// </summary>
    public void AddShieldPickup()
    {
        template shieldPickup = (obj) =>
        {
            // If the shield isn't already active
            if (!PowerUpManager.Instance.Powerups["Shield"].IsActive)
            {
				PopUpText.Instance.NewPopUp("Force Field!");
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
            PowerUpManager.Instance.Activate("Shield");
        };


        this.Type[7] = shieldPickup;
        SystemLogger.write("Shield Pickup Initialized");
    }

    /// <summary>
    /// Add the speed boost pickup to the pickup array
    /// </summary>
    public void AddSpeedBoostPickup()
    {
        template speedPickup = (obj) =>
        {
            // Activate the speed boost power up
            PowerUpManager.Instance.Activate("SpeedBoost");
			PopUpText.Instance.NewPopUp("Speed Boost!");
        };
        
        // Add them to the array
        this.Type[8] = speedPickup;
        SystemLogger.write("Speed Pickup Initialized");
    }
}
