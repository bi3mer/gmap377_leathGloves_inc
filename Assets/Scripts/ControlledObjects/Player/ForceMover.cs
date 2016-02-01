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
    public float movementAdjust = 0f;

	private Rigidbody m_Rigidbody;
	private PlanetOrientation m_planetOrientation;

	void Start()
	{
	    m_Rigidbody = GetComponent<Rigidbody>();
		m_planetOrientation = GetComponent<PlanetOrientation>();
    }

	void Update() 
	{
		if (InputManager.Player1HorizontalInput < -1 * float.Epsilon) 
		{
			transform.Rotate(Vector3.up, turnSpeed * Time.deltaTime * InputManager.Player1HorizontalInput);
            if (MotionBaseMover.Instance) MotionBaseMover.Instance.InduceArtificialRoll(-0.6f);
		}

		if (InputManager.Player1HorizontalInput > float.Epsilon) 
		{
			transform.Rotate(Vector3.up, turnSpeed * Time.deltaTime * InputManager.Player1HorizontalInput);
            if (MotionBaseMover.Instance) MotionBaseMover.Instance.InduceArtificialRoll(0.6f);
		}

        if (MotionBaseMover.Instance) {
            MotionBaseMover.Instance.InducePhysicsPitch((float)(m_planetOrientation.Pitch / MotionBaseMover.Instance.MAX_PITCH_ANGLE));
            MotionBaseMover.Instance.InducePhysicsRoll((float)(m_planetOrientation.Roll / MotionBaseMover.Instance.MAX_ROLL_ANGLE));
        }

        CurrentVelocity = m_Rigidbody.velocity.magnitude;
	}

	void FixedUpdate()
	{
		bool grounded = m_planetOrientation.Grounded;

        Vector3 direction = (Vector3.forward.normalized).normalized;

	    if (InputManager.Player1VerticalInput > float.Epsilon && grounded) {
            Vector3 force = direction * (m_Rigidbody.mass * acceleration * PowerUpManager.Instance.CurrentSpeedBoost * InputManager.Player1VerticalInput + (1 - InputManager.Player1VerticalInput) * movementAdjust);
			if (m_Rigidbody.velocity.magnitude < topSpeed * PowerUpManager.Instance.CurrentSpeedBoost) {
				m_Rigidbody.AddRelativeForce(force, ForceMode.Acceleration);
			}
		}

		if (InputManager.Player1VerticalInput < -1 * float.Epsilon && grounded) {
			if (m_Rigidbody.velocity.magnitude < topSpeed * PowerUpManager.Instance.CurrentSpeedBoost) {
                Vector3 force = direction * (m_Rigidbody.mass * acceleration * PowerUpManager.Instance.CurrentSpeedBoost * InputManager.Player1VerticalInput - (-1 + InputManager.Player1VerticalInput) * movementAdjust);
                m_Rigidbody.AddRelativeForce(force, ForceMode.Force);
			}
		}

		if (m_Rigidbody.velocity.magnitude > topSpeed * PowerUpManager.Instance.CurrentSpeedBoost) {
			m_Rigidbody.velocity = m_Rigidbody.velocity * ((topSpeed * PowerUpManager.Instance.CurrentSpeedBoost) / m_Rigidbody.velocity.magnitude);
		}
	}
}

