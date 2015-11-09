using UnityEngine;
using System.Collections;

public class AIEyes : MonoBehaviour 
{
    // Raycast draw locations
    public Transform forward;
    public Transform left;
    public Transform right;

     // Lengths for raycasts
    public float sightLength;
    public float paddingMaxLength;
    public float paddingMinLength;

   // Should draw rays
    public bool shouldDrawDebugRays;

    // Movement strength
    public float movementStrength;
    public float rotationStrength;
    public float backUpStrength;
    public float breakMultiplier;

    // Limits
    public float maxVelocity;

    // Rigid body
    private Rigidbody rb;

    /// <summary>
    ///     Find rigid body 
    /// </summary>
    void Start()
    {
        this.rb = GetComponent<Rigidbody>();
    }

    /// <summary>
    ///     Move forward
    /// </summary>
    private void moveForward()
    {
        Debug.Log("Moving forward");
        this.rb.AddRelativeForce(this.transform.forward * this.movementStrength, ForceMode.VelocityChange);
    }

    /// <summary>
    ///     Slow down velocity and move forward
    /// </summary>
    private void backUp()
    {
        Debug.Log("Backing up");
        this.rb.velocity *= this.breakMultiplier;
        this.rb.AddRelativeForce(this.transform.forward * -1 * this.backUpStrength, ForceMode.VelocityChange); // negative one to move backwards
    }

    /// <summary>
    ///     Move towards the player
    /// </summary>
    private void lookTowardsthePlayer()
    {
        this.transform.LookAt(new Vector3(0, 0, Player.Instance.getTransformPosition().z));
    }

    /// <summary>
    ///     There is a hit, so choose a direction to avoid the obstacle
    /// </summary>
    /// <param name="left"></param>
    /// <param name="right"></param>
    public void avoidObstacle(RaycastHit left, RaycastHit right)
    {
        Vector3 rotation;

        // find rotation vector
        if (left.collider && !right.collider) // nothing to the right
        {
            rotation = new Vector3(0, 1, 0);
        }
        else if (!left.collider && right.collider) // nothing to the left
        {
            rotation = new Vector3(0, -1, 0);
        }
        else // nothing in either left or right directions
        {
            // TODO: update this to use better decision making
            rotation = new Vector3(0, 1, 0);
        }

        // Apply vector for force
        Debug.Log("rotation: " + rotation);
        this.rb.AddTorque(rotation * this.rotationStrength, ForceMode.VelocityChange);
    }
	
	/// <summary>
	///     Update every fame, and move enemey Ai towards Player based on the raycasts
	/// </summary>
    void Update()
    {
        // RayCast hits
        //RaycastHit forwardSightHit;
        RaycastHit forwardPaddingMinHit;
        RaycastHit leftPaddingMinHit;
        RaycastHit rightPaddingMinHit;

        RaycastHit forwardPaddingMaxHit;
        RaycastHit leftPaddingMaxHit;
        RaycastHit rightPaddingMaxHit;

        // Show Ray casts in scene
        if (this.shouldDrawDebugRays)
        {
            // sight
            Debug.DrawRay(this.forward.position, this.forward.forward * this.sightLength, Color.cyan);

            // max padding
            Debug.DrawRay(this.forward.position, this.forward.forward * this.paddingMaxLength, Color.yellow);
            Debug.DrawRay(this.left.position, this.left.forward * this.paddingMaxLength, Color.white);
            Debug.DrawRay(this.right.position, this.right.forward * this.paddingMaxLength, Color.magenta);

            // min padding
            Debug.DrawRay(this.forward.position, this.forward.forward * this.paddingMinLength, Color.green);
            Debug.DrawRay(this.left.position, this.left.forward * this.paddingMinLength, Color.blue);
            Debug.DrawRay(this.right.position, this.right.forward * this.paddingMinLength, Color.red);
        }

        // Check for raycast hits min
        Physics.Raycast(this.forward.position, this.forward.forward * this.paddingMinLength, out forwardPaddingMinHit);
        Physics.Raycast(this.left.position, this.left.forward * this.paddingMinLength, out leftPaddingMinHit);
        Physics.Raycast(this.right.position, this.right.forward * this.paddingMinLength, out rightPaddingMinHit);

        // Check for raycast hits max
        Physics.Raycast(this.forward.position, this.forward.forward * this.paddingMaxLength, out forwardPaddingMaxHit);
        Physics.Raycast(this.left.position, this.left.forward * this.paddingMaxLength, out leftPaddingMaxHit);
        Physics.Raycast(this.right.position, this.right.forward * this.paddingMaxLength, out rightPaddingMaxHit);

        // define bool to see if we should apply foce
        bool shouldMoveForward = true;

        // Define movement behvaiour based on this
        if (forwardPaddingMinHit.distance != 0 && forwardPaddingMinHit.distance <= this.paddingMinLength)
        {
            shouldMoveForward = false;
            this.backUp();
        }
        else if (forwardPaddingMaxHit.collider)
        {
            this.avoidObstacle(leftPaddingMinHit, rightPaddingMinHit);
        }
        else
        {
            // TODO: Update this to include patrolling behaviour
            this.lookTowardsthePlayer();
        }

        if (this.maxVelocity < this.rb.velocity.x || this.maxVelocity < this.rb.velocity.y || this.maxVelocity < this.rb.velocity.z)
        {
            Debug.Log("auto breaking");
            this.rb.velocity *= this.breakMultiplier;
        }
        else if (shouldMoveForward)
        {
            this.moveForward();
        }
    }
}
