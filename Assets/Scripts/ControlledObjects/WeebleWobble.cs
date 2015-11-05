using UnityEngine;
using System.Collections;

[RequireComponent(typeof (PlanetOrientation))]
public class WeebleWobble : MonoBehaviour {

	public float WeebleWobbleFactor = 0.1f;
	public float Tolerance = 5; 

	private PlanetOrientation m_planetOrientation;
	private Rigidbody m_rigidbody;

	void Start () {
		m_planetOrientation = GetComponent<PlanetOrientation>();
		m_rigidbody = GetComponent<Rigidbody>();
	}
	
	void Update () {
		bool grounded = m_planetOrientation.Grounded;
		float pitch = m_planetOrientation.Pitch;
		float roll = m_planetOrientation.Roll;

		float pitchRotationCorrection = 0;
		float rollRotationCorrection = 0;
		
		if (!grounded) {
			if (Mathf.Abs(pitch) > Tolerance) {
				Vector3 lrAxis = m_planetOrientation.LeftRightAxis;
				pitchRotationCorrection = -1 * pitch * WeebleWobbleFactor;
				//transform.Rotate(transform.right, pitchRotationCorrection);
				m_rigidbody.rotation = Quaternion.AngleAxis(pitchRotationCorrection, transform.right) * m_rigidbody.rotation;
				m_planetOrientation.UpdateTiltAxes();
			}
			if (Mathf.Abs(roll) > Tolerance) {
				Vector3 fbAxis = m_planetOrientation.ForwardBackAxis;
				rollRotationCorrection = roll * WeebleWobbleFactor;
				//transform.Rotate(transform.forward, rollRotationCorrection);
				m_rigidbody.rotation = Quaternion.AngleAxis(rollRotationCorrection, transform.forward) * m_rigidbody.rotation;
				m_planetOrientation.UpdateTiltAxes();
			}

			Debug.Log("Weeble Wobble: Pitch Correction = " + pitchRotationCorrection + ", Roll Correction = " + rollRotationCorrection);
		}
	}
}
