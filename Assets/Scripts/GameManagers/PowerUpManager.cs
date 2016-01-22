using UnityEngine;
using System.Collections;

public class PowerUpManager : MonoBehaviour {

    /**
    * Constants Description
    * TICK - The constant 1. Used to tick the timer down.
    */
    public const float TICK = 1f;

    /**
    * Public Variable Description
    * PowerUpManager - Singleton pattern. The instance of this object.
    * MultiShotTime - How long the multishot shall be active for
    * DamageUpTime - How long the damage up power up shall be active for
    * MultiOffset - The aim offset for the multishot.
    * MultiShotAngle - The rotation the multishot shots should be shot at.
    * PowerIncrease - How much extra damage the damage up power up will grant
    */
    public static PowerUpManager Instance;
    public float MultiShotTime = 10f, DamageUpTime = 10f, MultiOffset = 300f, MultiShotAngle = 45f, PowerIncrease = 10f;

    /**
    * Private Variable Description
    * multiShot - True if the multishot powerup is active
    * dmgUp - true if the damage up power up is active
    * multiTimer - How much longer the multishot power up will be active
    * dmgTimer - How much longer the damage up power up will be active
    */
    private bool multiShot = false, dmgUp = false;
    private float multiTimer = 0f, dmgTimer = 0f;


	/// <summary>
    /// Called when the object is created. Used to
    /// initialize the singleton pattern.
    /// </summary>
	void Start ()
    {
        if (Instance == null)
        {
            Instance = this;
        }
        else
        {
            Destroy(this.gameObject);
        }
    }

    /// <summary>
    /// Helper function to check if the multishot powerup is active
    /// </summary>
    /// <returns>multiShot's value</returns>
    public bool isMulti()
    {
        return this.multiShot;
    }

    /// <summary>
    /// Helper function to check if the dmgUp powerup is active
    /// </summary>
    /// <returns>dmgUp's value</returns>
    public bool isDmgUp()
    {
        return this.dmgUp;
    }

    /// <summary>
    /// Used to activate multishot, or add time to it if it's already active
    /// </summary>
    public void activateMultishot()
    {
        // If mutishot is not active
        if (!this.multiShot)
        {
            // Activate it, add time, and start timer
            this.multiShot = true;
            this.multiTimer = MultiShotTime;
            StartCoroutine(MultiTick());
        }
        else
        {
            // Add time to existing multishot
            this.multiTimer += MultiShotTime;
        }
    }

    /// <summary>
    /// Used to activate damage up, or add time to it if it's already active
    /// </summary>
    public void activateDmgUp()
    {
        // If damage up is not active
        if (!this.dmgUp)
        {
            // Activate it, add time, and start timer
            this.dmgUp = true;
            this.dmgTimer = DamageUpTime;
            StartCoroutine(DmgUpTick());
        }
        else
        {
            // Add time to existing damage up
            this.dmgTimer += DamageUpTime;
        }
    }

    /// <summary>
    /// Basic timer tick function for the multishot
    /// </summary>
    /// <param name="exitRoutine">What routine to do when time runs out</param>
    /// <returns></returns>
    IEnumerator MultiTick()
    {
        if (this.multiTimer > float.Epsilon)
        {
            --this.multiTimer;
            yield return new WaitForSeconds(TICK);
            StartCoroutine(MultiTick());
        }
        else
        {
            this.multiShot = false;
        }
    }

    /// <summary>
    /// Basic timer tick function for the multishot
    /// </summary>
    /// <param name="exitRoutine">What routine to do when time runs out</param>
    /// <returns></returns>
    IEnumerator DmgUpTick()
    {
        if (this.dmgTimer > float.Epsilon)
        {
            --this.dmgTimer;
            yield return new WaitForSeconds(TICK);
            StartCoroutine(DmgUpTick());
        }
        else
        {
            this.dmgUp = false;
        }
    }
}
