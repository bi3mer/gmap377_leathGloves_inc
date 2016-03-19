using UnityEngine;
using System.Collections;

public class Geyser : MonoBehaviour 
{
	public float shakeSize;
	public float sizeX;
	public float sizeY;
	public float sizeZ;
	private float sin = 0;
	private bool waitStart = false;
	float tempTime = 0;
	
	private Vector3 startPos;
	private bool triggerDisabled = false;

	/// <summary>
	/// Start this instance.
	/// </summary>
	void Start()
	{
		// Get starting posiition
		this.startPos = this.transform.position;
	}

	/// <summary>
	/// Raises the trigger enter event.
	/// </summary>
	/// <param name="other">Other.</param>
	void OnTriggerEnter(Collider other) 
	{
		if(!this.triggerDisabled && other.CompareTag("Player"))
		{
			StartCoroutine(this.WaitTime());
		}
	}

	/// <summary>
	/// shake in the x.
	/// </summary>
	void ShakeX()
	{
		transform.Translate((Mathf.Sin(sin) * (Time.deltaTime * sizeX)), 0, 0);
	}
	
	/// <summary>
	/// shake in the y
	/// </summary>
	void ShakeY()
	{
		transform.Translate(0, (Mathf.Sin(sin) * (Time.deltaTime * sizeY)), 0);
	}
	
	/// <summary>
	/// shake in the z
	/// </summary>
	void ShakeZ()
	{
		transform.Translate(0, 0, (Mathf.Sin(sin) * (Time.deltaTime * sizeZ)));
	}
	
	/// <summary>
	/// time to wait before shake.
	/// </summary>
	private IEnumerator WaitTime()
	{
		// stop trigger
		this.triggerDisabled = true;

		// Previous positions
		float pastDistance = 0;
		float currentDistance = 0;

		do
		{
			// Set past
			pastDistance = currentDistance;

			// do wavey stuff
			sin += Time.deltaTime * shakeSize;

			// Shake stuff
			ShakeY();
			ShakeX();
			ShakeZ();

			// set current distance
			currentDistance = DistanceCalculator.squareEuclidianDistance(this.transform.position, this.startPos);

			// pause update
			yield return new WaitForSeconds(Time.deltaTime);
		} while(currentDistance > pastDistance);

		// reset sin
		sin = 0;

		// set transform back to start
		this.transform.position = this.startPos;

		// start trigger
		this.triggerDisabled = false;
	}
}

