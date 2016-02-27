using UnityEngine;
using System.Collections;

public class ScorpionController : MonoBehaviour
{
    [Tooltip("Place from which the laser will spawn from")]
    public Transform[] LaserSpawnPoints;

    [Tooltip("Laser to fire")]
    public GameObject LaserBeam;

    [Tooltip("A public setting for overall animator animation speed")]
    public float animSpeed = 1.5f;

    // For spawning
    [Tooltip("A trnasform of where the scorpion should move to on spawn")]
    public Transform MoveToOnSpawn;

    [Tooltip("Duration of animation for spawning")]
    public float MoveToOnSpawnDuration = 1.16f;

	[Tooltip("Time between melee attack and movement again")]
	public float attackAfterMovementTime = 0.2f;

	// Movement script
	private BufferedMovement movement;

    [HideInInspector]
    public bool CanMove = false;

    protected bool hasSpawned = false;

    // Character animator
    private Animator animator;

    // Current state
    private AnimatorStateInfo currentState;

    // state switchers
    [HideInInspector]
    public bool AttackLaser = false;

    [HideInInspector]
    public bool AttackMelee = false;

    private bool walking;
    public bool Walking
    {
        get
        {
            return this.walking;
        }
        set
        {
            // Set animator and local copy
            this.animator.SetBool("Walking", value);
            this.walking = value;
        }
    }

    // States to reference animators states
    static int beforeSpawn = Animator.StringToHash("Base Layer.BeforeSpawn");
    static int spawn = Animator.StringToHash("Base Layer.Spawn");
    static int idle = Animator.StringToHash("Base Layer.Idle");
    static int preLaser = Animator.StringToHash("Base Layer.Pre_Laser");
    static int laser = Animator.StringToHash("Base Layer.Laser_Loop");
    static int postLaser = Animator.StringToHash("Base Layer.Post_Laser");
    static int walk = Animator.StringToHash("Base Layer.Walk_Cycle");
    static int meleeAttack = Animator.StringToHash("Base Layer.Attack_Melee");

    /// <summary>
    /// Grab the correct animator
    /// </summary>
    void Start()
    {
        this.animator = this.GetComponent<Animator>();
		this.movement = this.GetComponent<BufferedMovement>();
    }
	
    /// <summary>
    /// Update animation
    /// </summary>
    void FixedUpdate()
    {
        // Check if the scorpion has spawned and can therefore act
        if (this.hasSpawned)
        {
            // set the speed of our animator to the public variable 'animSpeed'
            this.animator.speed = animSpeed;

            // set our currentState variable to the current state of the Base Layer (0) of animation
            this.currentState = this.animator.GetCurrentAnimatorStateInfo(0);

			// Run based on state of animation machine
            if (this.currentState.fullPathHash == idle)
            {
                // Check if should attack
                if (this.AttackLaser)
                {
                    this.attackWithLaser();
                }
                else if (this.AttackMelee)
                {
                    this.attackWithMelee();
                }
            }
            else if (this.currentState.fullPathHash == walk)
            {
                // Check if should attack with melee
                if (this.AttackMelee)
                {
                    this.attackWithMelee();
                }
            }
            else if (this.currentState.fullPathHash == preLaser)
            {
				this.movement.enabled = false;
            }
            else if (this.currentState.fullPathHash == laser)
            {
                // Reset to be able to laser again
				if(this.AttackLaser)
				{
	                this.AttackLaser = false;
	                this.resetBool("LaserAttack");
	                this.spawnLaser();
				}
            }
			else if(this.currentState.fullPathHash == postLaser)
			{
				this.movement.enabled = true;
				this.AttackLaser = true;
			}
            else if (this.currentState.fullPathHash == meleeAttack)
            {
                // Reset to be able to melee again
				if(this.AttackMelee)
				{
	                this.AttackMelee = false;
	                this.resetBool("MeleeAttack");
				}
            }
        }
    }

	/// <summary>
	/// Starts the moving again after time
	/// </summary>
	/// <returns>The moving.</returns>
	private IEnumerator startMovingMelee()
	{
		yield return new WaitForSeconds(this.attackAfterMovementTime);
		this.movement.enabled = true;
		this.AttackMelee = true;
	}

    /// <summary>
    /// Spawn laser beam at point
    /// </summary>
    private void spawnLaser()
    {
		for(int i = 0; i < this.LaserSpawnPoints.Length; ++i)
		{
			// Create new laser
			GameObject laser = Instantiate(this.LaserBeam, this.LaserSpawnPoints[i].position, this.LaserSpawnPoints[i].rotation) as GameObject;
			
			// Attach to spawnpoint
			laser.transform.parent = this.LaserSpawnPoints[i];
		}
    }

    /// <summary>
    /// Run necessary functions to attack wtih melee
    /// </summary>
    private void attackWithMelee()
    {
		this.movement.enabled = false;
        this.Walking = false;
        this.animator.SetBool("MeleeAttack", true);
        this.AttackMelee = false;
		StartCoroutine(this.startMovingMelee());
    }

    /// <summary>
    /// Run necessary functions to attack wtih laser
    /// </summary>
    private void attackWithLaser()
    {
        this.walking = false;
        this.animator.SetBool("LaserAttack", true);
        this.AttackLaser = false;
    }

    /// <summary>
    /// Reset a bool variable in the animator
    /// </summary>
    /// <param name="variable"></param>
    private void resetBool(string variable)
    {
        this.animator.SetBool(variable, false);
    }

    /// <summary>
    /// Set the animator to spawn the scorpion
    /// </summary>
    public void Spawn()
    {
        // Activate animation
        this.animator.SetBool("Spawn", true);

        // Update current state
        this.hasSpawned = true;

        // Change Position for to now be above ground
        StartCoroutine(this.delayTransformChange());
    }

    /// <summary>
    /// Delay time for scorpion spawning animation
    /// </summary>
    /// <returns></returns>
    private IEnumerator delayTransformChange()
    {
        yield return new WaitForSeconds(this.MoveToOnSpawnDuration);

        // Set new Transform
        this.transform.position = this.MoveToOnSpawn.position;
        
        // Wait for a bit more to start attacking player
        yield return new WaitForSeconds(this.MoveToOnSpawnDuration);
        this.CanMove = true;
    }
}
