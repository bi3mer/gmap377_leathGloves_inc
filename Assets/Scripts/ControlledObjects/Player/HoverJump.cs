using UnityEngine;
using System.Collections;

public class HoverJump : MonoBehaviour {
	public float jumpDelay;
	public float jumpForceMagnitude;

	private Rigidbody playerRigidbody;
	public  float jumpTimer;

	void Start () {
		playerRigidbody = GetComponent<Rigidbody> ();
		jumpTimer = 0f;
	}

	void Update () {
		// Check for timer cooldown and key input
		if (InputManager.Player1Jump > float.Epsilon && jumpTimer <= 0f) 
		{
			// Gets `up` direction relative to player object
			// and multiplies it by the modifiable magnitude
			Vector3 jumpForce = transform.up * jumpForceMagnitude;
			playerRigidbody.AddForce (jumpForce);

            SystemLogger.write("Jumped with force " + jumpForce);

			// Resets timer to public delay value
			jumpTimer = jumpDelay;
		} 
		else
		{
			// Decrements the jump timer by time between Update calls
			jumpTimer -= Time.deltaTime;
		}
	}
}
