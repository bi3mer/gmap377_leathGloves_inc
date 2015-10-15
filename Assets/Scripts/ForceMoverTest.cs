using UnityEngine;
using System.Collections;

public class ForceMoverTest : MonoBehaviour {

	public float moveSpeed = 10f;
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



		//if (Input.GetKey(KeyCode.S))
		//	transform.Translate(-Vector3.forward * moveSpeed * Time.deltaTime);

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
	    if (Input.GetKey(KeyCode.W)) {
			Vector3 force = Vector3.forward * moveSpeed;
            m_Rigidbody.AddRelativeForce(force, ForceMode.Force );
			Debug.Log(force);
	    }

		if (Input.GetKey(KeyCode.S)) {
			Vector3 force = -1 * Vector3.forward * moveSpeed * 0.7f;
			m_Rigidbody.AddRelativeForce(force, ForceMode.Force);
			Debug.Log(force);
		}
	}
}
