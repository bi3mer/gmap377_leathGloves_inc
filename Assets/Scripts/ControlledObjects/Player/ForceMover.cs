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
		if (InputManager.Player1HorizontalInput < -1 * float.Epsilon) {
			transform.Rotate(Vector3.up, turnSpeed * Time.deltaTime * InputManager.Player1HorizontalInput);
			MotionBaseMover.Instance.InduceArtificialRoll(-0.6f);
		}

		if (InputManager.Player1HorizontalInput > float.Epsilon) {
			transform.Rotate(Vector3.up, turnSpeed * Time.deltaTime * InputManager.Player1HorizontalInput);
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

	    if (InputManager.Player1VerticalInput > float.Epsilon && grounded) {
			Vector3 force = direction * m_Rigidbody.mass * acceleration * InputManager.Player1VerticalInput;
			if (m_Rigidbody.velocity.magnitude < topSpeed) {
				m_Rigidbody.AddRelativeForce(force, ForceMode.Acceleration);
			}
		}

		if (InputManager.Player1VerticalInput < -1 * float.Epsilon && grounded) {
			Vector3 force = Vector3.forward * m_Rigidbody.mass * acceleration * InputManager.Player1VerticalInput;
			if (m_Rigidbody.velocity.magnitude < topSpeed) {
				m_Rigidbody.AddRelativeForce(force, ForceMode.Force);
			}
		}

		if (m_Rigidbody.velocity.magnitude > topSpeed) {
			m_Rigidbody.velocity = m_Rigidbody.velocity * (topSpeed / m_Rigidbody.velocity.magnitude);
		}
	}
}

