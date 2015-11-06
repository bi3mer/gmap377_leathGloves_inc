using UnityEngine;
using System.Collections;

[RequireComponent(typeof (PlanetOrientation))]
public class ForceMover : MonoBehaviour {

    public float CurrentVelocity;

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

        CurrentVelocity = m_Rigidbody.velocity.magnitude;
	}

	void FixedUpdate()
	{
		bool grounded = m_planetOrientation.Grounded;

        Vector3 direction = (Vector3.forward.normalized/* - new Vector3(0, 1, -2).normalized*/).normalized;
        Debug.Log(direction);

	    if (Input.GetKey(KeyCode.W) && grounded) {
			Vector3 force = direction * m_Rigidbody.mass * acceleration;
			if (m_Rigidbody.velocity.magnitude < topSpeed) {
				m_Rigidbody.AddRelativeForce(force, ForceMode.Acceleration);
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

