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
    private void applyMovementForce()
    {
        this.rb.AddRelativeForce(Vector3.forward * this.movementStrength);
    }

    /// <summary>
    ///     Move towards the player
    /// </summary>
    private void moveTowardsthePlayer()
    { 
        // Look at Player
		transform.LookAt(Player.Instance.getTransformPosition());
    }

    /// <summary>
    ///     There is a hit, so choose a direction to avoid the obstacle
    /// </summary>
    /// <param name="left"></param>
    /// <param name="right"></param>
    public void avoidObstacle(RaycastHit left, RaycastHit right)
    {
        if (left.collider && !right.collider) // nothing to the right
        {
            this.transform.Rotate(new Vector3(0, this.rotationStrength * -1, 0));
        }
        else if (!left.collider && right.collider) // nothing to the left
        {
            this.transform.Rotate(new Vector3(0, this.rotationStrength, 0));
        }
        else // nothing in either left or right directions
        {
            // TODO: update this to use better decision making
            this.transform.Rotate(new Vector3(0, this.rotationStrength, 0));
        }
    }
	
	/// <summary>
	///     Update every fame, and move enemey Ai towards Player based on the raycasts
	/// </summary>
	void Update () 
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
        if(this.shouldDrawDebugRays)
        {
            // sight
            Debug.DrawRay(this.forward.position, this.forward.forward * this.sightLength, Color.cyan);

            // max
            Debug.DrawRay(this.forward.position, this.forward.forward * this.paddingMaxLength, Color.yellow);
            Debug.DrawRay(this.left.position, this.left.forward * this.paddingMaxLength, Color.white);
            Debug.DrawRay(this.right.position, this.right.forward * this.paddingMaxLength, Color.magenta);

            // min
            Debug.DrawRay(this.forward.position, this.forward.forward * this.paddingMinLength, Color.green);
            Debug.DrawRay(this.left.position, this.left.forward * this.paddingMinLength, Color.blue);
            Debug.DrawRay(this.right.position, this.right.forward * this.paddingMinLength, Color.red);
        }

        // Check for hits min
        Physics.Raycast(this.forward.position, this.forward.forward * this.paddingMinLength, out forwardPaddingMinHit);
        Physics.Raycast(this.left.position, this.left.forward * this.paddingMinLength, out leftPaddingMinHit);
        Physics.Raycast(this.right.position, this.right.forward * this.paddingMinLength, out rightPaddingMinHit);

        // Check for hits max
        Physics.Raycast(this.forward.position, this.forward.forward * this.paddingMaxLength, out forwardPaddingMaxHit);
        Physics.Raycast(this.left.position, this.left.forward * this.paddingMaxLength, out leftPaddingMaxHit);
        Physics.Raycast(this.right.position, this.right.forward * this.paddingMaxLength, out rightPaddingMaxHit);

        //// Define movement behvaiour based on this
        if (forwardPaddingMaxHit.collider)
        {
            this.avoidObstacle(leftPaddingMinHit, rightPaddingMinHit);
        }
        else
        {
            this.moveTowardsthePlayer();
        }
        
        // apply force
        this.applyMovementForce();
	}
}
