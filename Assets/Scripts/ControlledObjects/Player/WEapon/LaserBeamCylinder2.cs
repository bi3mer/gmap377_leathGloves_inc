using UnityEngine;
using System.Collections;

public class LaserBeamCylinder2 : MonoBehaviour
{
    /**
    * Public Variable Description
    * GrowthRate - How quickly the cylinder is scaling
    * MovementOffset - A constant to multiply the GrowthRate by in order to make the movement
    * and scaling work together in order to make it appear that the cylinder is growing in one direction
    */
    public float GrowthRate = 1.5f, MovementOffset = .1f;
    public LayerMask CantPassThrough;

    private bool stopGrowing = false;

	/// <summary>
    /// Used to initialize GrowthRate to the appropriate value
    /// </summary>
	void Start ()
    {
       this.GrowthRate = GetComponent<LaserBeamCylinder>().GrowRate;
	}
	
	/// <summary>
    /// Called every frame. Moves the cylinder to create the growing effect.
    /// </summary>
	void Update ()
    {
        // If the laser is not hitting an object in the layer mask
        if (!this.stopGrowing)
        {
            // Grow laser
            transform.localPosition = transform.localPosition + Vector3.forward * GrowthRate * MovementOffset * Time.deltaTime;
        }
	}

    /// <summary>
    /// When an object enters a collider, check to see if it hits a layer in the layer mask
    /// </summary>
    /// <param name="col">The object collided with</param>
    void OnTriggerEnter(Collider col)
    {
        // If it's a layer you can't pass through, stop growing
        if (CantPassThrough == (CantPassThrough | (1 << col.gameObject.layer)))
        {
            // Stop growing the laser
            this.stopGrowing = true;
        }
    }

    /// <summary>
    /// When the object exits the collider
    /// </summary>
    /// <param name="col">The object it collided with</param>
    void OnTriggerExit(Collider col)
    {
		Debug.Log (col.gameObject.layer);
        // If the object was in a layer in the layer mask
        if (CantPassThrough != (CantPassThrough | (1 << col.gameObject.layer)))
        {
			Debug.Log ("stop");
            // Continue growing lasers
            this.stopGrowing = false;
        }
    }
}
