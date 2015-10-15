using UnityEngine;
using System.Collections;

public class ForceMover : MonoBehaviour {

	public float moveSpeed = 0f;
	//public float maxMoveSpeed = 50f;
	//public float accel = .05f;
	public float turnSpeed = 50f;
	private Rigidbody m_Rigidbody;
	public float movePower = 500;
	void Start()
	{
	    m_Rigidbody = GetComponent<Rigidbody>();
	}
	void Update() {
		//if (Input.GetKey(KeyCode.W))
		//	transform.Translate(Vector3.forward * moveSpeed * Time.deltaTime);



		if (Input.GetKey(KeyCode.S))
			transform.Translate(-Vector3.forward * moveSpeed * Time.deltaTime);

		if (Input.GetKey(KeyCode.A)) {
			transform.Rotate(Vector3.up, -turnSpeed * Time.deltaTime);
			MotionBaseMover.Instance.InduceTilt(-0.6f);
		}

		if (Input.GetKey(KeyCode.D)) {
			transform.Rotate(Vector3.up, turnSpeed * Time.deltaTime);
			MotionBaseMover.Instance.InduceTilt(0.6f);
		}

		Debug.DrawLine(transform.position, transform.position + m_Rigidbody.velocity);
	}

	void FixedUpdate()
	{
	    if (Input.GetKey(KeyCode.W))
	    {
			Vector3 force = Vector3.forward * moveSpeed;
            m_Rigidbody.AddRelativeForce(force, ForceMode.Force );
			Debug.Log(force);
	    }
	}
}
