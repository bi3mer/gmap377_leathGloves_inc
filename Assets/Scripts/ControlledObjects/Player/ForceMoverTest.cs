using UnityEngine;
using System.Collections;

[RequireComponent(typeof (PlanetOrientation))]
public class ForceMoverTest : MonoBehaviour {

	public float acceleration = 10f;
	public float topSpeed = 10f;
	public float moveSpeed = 10f;
	public float turnSpeed = 50f;
	public float movePower = 500;

	private Rigidbody m_Rigidbody;
	private PlanetOrientation m_planetOrientation;
	private InterplanetaryObject m_ipObject;

	void Start()
	{
	    m_Rigidbody = GetComponent<Rigidbody>();
		m_planetOrientation = GetComponent<PlanetOrientation>();
		m_ipObject = GetComponent<InterplanetaryObject>();
    }
	void Update() {
		if (Input.GetKey(KeyCode.A)) {
			transform.Rotate(Vector3.up, -turnSpeed * Time.deltaTime);
			MotionBaseMover.Instance.InduceArtificialRoll(-0.6f);
		}

		if (Input.GetKey(KeyCode.D)) {
			transform.Rotate(Vector3.up, turnSpeed * Time.deltaTime);
			MotionBaseMover.Instance.InduceArtificialRoll(0.6f);
		}

		MotionBaseMover.Instance.InducePhysicsPitch((float) (m_planetOrientation.Pitch / MotionBaseMover.Instance.MAX_PITCH_ANGLE));
		MotionBaseMover.Instance.InducePhysicsRoll((float) (m_planetOrientation.Roll / MotionBaseMover.Instance.MAX_ROLL_ANGLE));

		Debug.DrawLine(transform.position, transform.position + m_Rigidbody.velocity);
	}

	void FixedUpdate()
	{
		bool grounded = m_planetOrientation.Grounded;

	    if (Input.GetKey(KeyCode.W)) {
			Vector3 force = Vector3.forward * m_Rigidbody.mass * acceleration;
			if (m_Rigidbody.velocity.magnitude < topSpeed) {
				m_Rigidbody.AddRelativeForce(force, ForceMode.Force);
			}
		}

		if (Input.GetKey(KeyCode.S) && grounded) {
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
