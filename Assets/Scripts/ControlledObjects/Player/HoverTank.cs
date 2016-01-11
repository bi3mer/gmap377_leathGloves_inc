using UnityEngine;
using System.Collections;

public class HoverTank : MonoBehaviour {
    // Tested with value of 1.0
	public float maxHeight;

    // Tested with value of 0.5
    public float minHeight;

    // Untested value -- preferred below 1.0
    public float smoothingCoefficient;

	private Rigidbody playerRigidbody;

	void Start () {
		playerRigidbody = GetComponent<Rigidbody> ();
	}

	void Update () {
		RaycastHit hit;

        // Checks for planet underneath player
        // TODO: Fix LayerMask when planet layer is changed
		if (Physics.Raycast (transform.position, -transform.up, out hit, LayerMask.NameToLayer("Environment")))
		{
            // Gets the distance from the point directly below the player on the planet surface
            float heightValue = (transform.position - hit.point).magnitude;

            // Tests if this value is within the thresholds
            if (heightValue <= minHeight && !(heightValue > maxHeight))
            {
                // If within bounds, adds impulse force upwards to simulate the "bounce" of a hover vehicle
                // modified by smoothing coefficient
                playerRigidbody.AddRelativeForce(transform.up.normalized * smoothingCoefficient, ForceMode.Impulse);
            }
		}
	}
}
