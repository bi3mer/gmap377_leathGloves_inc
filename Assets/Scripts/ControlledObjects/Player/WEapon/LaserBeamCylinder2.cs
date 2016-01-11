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
        transform.localPosition = transform.localPosition + Vector3.forward * GrowthRate * MovementOffset * Time.deltaTime;
	}
}
