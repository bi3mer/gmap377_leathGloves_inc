using UnityEngine;
using System.Collections;

public class ForceMoverTest : MonoBehaviour {

	public float acceleration = 10f;
	public float topSpeed = 10f;
	public float moveSpeed = 10f;
	public float turnSpeed = 50f;
	private Rigidbody m_Rigidbody;
	public float movePower = 500;
	bool grounded = false;

	void Start()
	{
	    m_Rigidbody = GetComponent<Rigidbody>();
	}
	void Update() {
		if (Input.GetKey(KeyCode.A)) {
			transform.Rotate(Vector3.up, -turnSpeed * Time.deltaTime);
			MotionBaseMover.Instance.InduceTilt(0.6f);
		}

		if (Input.GetKey(KeyCode.D)) {
			transform.Rotate(Vector3.up, turnSpeed * Time.deltaTime);
			MotionBaseMover.Instance.InduceTilt(-0.6f);
		}

		Debug.DrawLine(transform.position, transform.position + m_Rigidbody.velocity);
	}

	void FixedUpdate()
	{
	    if (Input.GetKey(KeyCode.W)) {
			Vector3 force = Vector3.forward * m_Rigidbody.mass * acceleration;
			if (m_Rigidbody.velocity.magnitude < topSpeed) {
				m_Rigidbody.AddRelativeForce(force, ForceMode.Force);
			}
		}

		if (Input.GetKey(KeyCode.S)) {
			Vector3 force = -1 * Vector3.forward * m_Rigidbody.mass * acceleration;
			if (m_Rigidbody.velocity.magnitude < topSpeed) {
				m_Rigidbody.AddRelativeForce(force, ForceMode.Force);
			}
		}

		if (m_Rigidbody.velocity.magnitude > topSpeed) {
			m_Rigidbody.velocity = m_Rigidbody.velocity * (topSpeed / m_Rigidbody.velocity.magnitude);
		}
	}
}
