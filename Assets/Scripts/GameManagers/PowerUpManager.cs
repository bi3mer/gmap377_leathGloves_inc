using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PowerUpManager : MonoBehaviour
{

    /**
     * Public Variable Description
     * PowerUpManager - Singleton pattern. The instance of this object.
     * MultiShotTime - How long the multishot shall be active for
     * DamageUpTime - How long the damage up power up shall be active for
     * MultiOffset - The aim offset for the multishot.
     * MultiShotAngle - The rotation the multishot shots should be shot at.
     * PowerIncrease - How much extra damage the damage up power up will grant
     */
    public GameObject ShieldModel;
	public GameObject MultiBar, DamageUpBar, ShieldBar, SpeedBar, MultiBarIcon, DamageUpBarIcon, ShieldBarIcon, SpeedBarIcon;
	public float MultiShotTime = 10f, DamageUpTime = 10f, ShieldTime = 10f, SpeedBoostTime = 10f, MultiOffset = 300f, MultiShotAngle = 45f, PowerIncrease = 10f,
        BombRadius = 15f, BombDamage = 200f, SpeedBoostAmount = 1.5f, CurrentSpeedBoost = 1f, ShieldResizer = -23f;
    public LayerMask BombLayer;
    public float CurrentLaserCount =  0f;
    public Powerup Multishot, DamageUp, Shield, SpeedBoost, Bomb;
    public Dictionary<string, Powerup> Powerups;


    /**
     * Private Variable Description
     */
    private float maxLaserCount = 1f;

    public static PowerUpManager Instance;

    /// <summary>
    /// Called when the object is created. Used to
    /// initialize the singleton pattern.
    /// </summary>
    void Start ()
    {
        if (Instance == null)
        {
            Instance = this;
            this.Powerups = new Dictionary<string, Powerup>();
			this.Multishot = new Powerup(MultiShotTime, MultiBar, this.MultiBarIcon);
			this.DamageUp = new Powerup(DamageUpTime, DamageUpBar, this.DamageUpBarIcon);
			this.Shield = new Powerup(ShieldTime, ShieldBar, this.ShieldBarIcon);
			this.SpeedBoost = new Powerup(SpeedBoostTime, SpeedBar, this.SpeedBarIcon);
            this.Bomb = new Powerup(0f, null);

            Powerups.Add("Multishot", this.Multishot);
            Powerups.Add("DamageUp", this.DamageUp);
            Powerups.Add("Shield", this.Shield);
            Powerups.Add("SpeedBoost", this.SpeedBoost);
            Powerups.Add("Bomb", this.Bomb);

            SystemLogger.write("Powerup Manager attached to: " + this.gameObject.name);
        }
        else
        {
            Destroy(this.gameObject);
        }
    }

    
    // Property for Max Laser Count
    public float MaxLaserCount
    {
        get
        {
            return this.maxLaserCount;
        }
    }

    /// <summary>
    /// Activate a power up
    /// </summary>
    /// <param name="Key">Key for the power up in the dictionary</param>
    public void Activate(string Key)
    {
        SystemLogger.write("Activating " + Key);

        // If the powerup is not already active
        if (!Powerups[Key].IsActive)
        {
            // Set up the initial parameters
            Powerups[Key].IsActive = true;
            Powerups[Key].Timer += Powerups[Key].SetTime;
            Powerups[Key].GuiBar.GetComponent<PowerUpBar>().activeTime = Powerups[Key].SetTime;
            Powerups[Key].GuiBar.GetComponent<PowerUpBar>().activate();
			Powerups[Key].GuiBar.GetComponent<PowerUpBar>().transform.SetAsFirstSibling();
			Powerups[Key].guiIcon.SetActive(true);

            // If it's the Multishot power up, increase the max laser count
            if (Key.Equals("Multishot"))
            {
                this.maxLaserCount = 3;
            }

            // If it's the speed boost, change the speed of the player
            if(Key.Equals("SpeedBoost"))
            {
                this.CurrentSpeedBoost = SpeedBoostAmount;
            }

            // Start the timer
            StartCoroutine(Timer(Key));
        }
        else
        {
            // Add time to the timer
            Powerups[Key].Timer += Powerups[Key].SetTime;
            Powerups[Key].GuiBar.GetComponent<PowerUpBar>().activeTime = Powerups[Key].Timer;
            Powerups[Key].GuiBar.GetComponent<PowerUpBar>().activate();
			Powerups[Key].GuiBar.GetComponent<PowerUpBar>().transform.SetAsFirstSibling();

			Powerups[Key].guiIcon.SetActive(true);
        }
    }

    /// <summary>
    /// A timer for the power ups
    /// </summary>
    /// <param name="Key">The specific power up key</param>
    /// <returns></returns>
    IEnumerator Timer(string Key)
    {
        // While there's still time left on the timer
        while(Powerups[Key].Timer > 0f)
        {
            // Count down
            this.Powerups[Key].Timer -= Time.deltaTime;
            yield return null;
        }

        // Deactive power up
        this.Powerups[Key].IsActive = false;
		Powerups[Key].guiIcon.SetActive(false);

        // If the power up was a multishot, set the max laser count back to 1
        if (Key.Equals("Multishot"))
        {
            this.maxLaserCount = 1f;
        }

        // If the power up was a shield, destroy the shield effect
        if (Key.Equals("Shield"))
        {
            Destroy(GameObject.Find("Shield(Clone)"));
        }

        // If the power up was a speed boost, set the speed back to normal
        if (Key.Equals("SpeedBoost"))
        {
            this.CurrentSpeedBoost = 1f;
        }

        SystemLogger.write("Power up time complete");
    }
}
