using UnityEngine;
using System.Collections;

public class HoverTank : MonoBehaviour {
	public float maxHeight;
	public float minHeight;
	public float defaultHeight;
	public float smoothingFactor;

	private Rigidbody playerRigidbody;

	void Start () {
		playerRigidbody = GetComponent<Rigidbody> ();
	}

	void Update () {
		RaycastHit hit;
		if (Physics.Raycast (transform.position, -transform.up, out hit, LayerMask.NameToLayer("Environment")))
		{
			Debug.Log ("hit planet");
			Vector3 heightVector = transform.position - hit.point;
			Debug.DrawLine(Vector2.zero, heightVector, Color.red, 5f);
			if(!(heightVector.magnitude >= maxHeight))
			{
				Vector3 desiredHeight = Vector3.ClampMagnitude(heightVector, defaultHeight);
				playerRigidbody.MovePosition(Vector3.Lerp(transform.position, hit.point + desiredHeight, Time.deltaTime * smoothingFactor));
			}
		}
	}
}
