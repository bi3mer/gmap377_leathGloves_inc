using UnityEngine;
using System.Collections;

public class LaserBeamRotation : MonoBehaviour
{

    /**
    * Public Variable Description
    * RotationSpeed - How fast the laser will rotate
    */
    public float RotationSpeed = 10f;

	/// <summary>
    /// Called every frame. Used to rotate the laser.
    /// </summary>
	void Update ()
    {
        this.transform.localRotation = this.transform.localRotation * Quaternion.Euler(new Vector3(0f, 0f, RotationSpeed * Time.deltaTime));
	}
}
