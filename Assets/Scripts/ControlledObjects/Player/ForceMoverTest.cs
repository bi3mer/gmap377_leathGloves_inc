using UnityEngine;
using System.Collections;

[RequireComponent(typeof (PlanetGrounder))]
public class ForceMoverTest : MonoBehaviour {

	public float acceleration = 10f;
	public float topSpeed = 10f;
	public float moveSpeed = 10f;
	public float turnSpeed = 50f;
	public float movePower = 500;

	private Rigidbody m_Rigidbody;
	private PlanetGrounder m_planetGrounder;
	private InterplanetaryObject m_ipObject;

	void Start()
	{
	    m_Rigidbody = GetComponent<Rigidbody>();
		m_planetGrounder = GetComponent<PlanetGrounder>();
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

		Vector3 angleDown = m_planetGrounder.AngleDown;
		Vector3 anglePlanet = m_planetGrounder.AngleToPlanet;
		double distanceToDownMarker = m_planetGrounder.DistanceToGroundMarker;

		Vector3 vertexRoll = Vector3.zero;
		Vector3 pointDownRoll = new Vector3(m_planetGrounder.DownMarker.transform.localPosition.x, m_planetGrounder.DownMarker.transform.localPosition.y, 0);
		Vector3 pointPlanetRoll = new Vector3(m_planetGrounder.PlanetMarker.transform.localPosition.x, m_planetGrounder.PlanetMarker.transform.localPosition.y, 0);
		double dvdRoll = Vector3.Distance(vertexRoll, pointDownRoll) / 10;
		double dvpRoll = Vector3.Distance(vertexRoll, pointPlanetRoll) / 10;
		double ddpRoll = Vector3.Distance(pointDownRoll, pointPlanetRoll) / 10;
		double acosRollValue = (Pow(dvdRoll, 2) + Pow(dvpRoll, 2) - Pow(ddpRoll, 2)) / (2 * dvdRoll * dvpRoll);
		double angleRoll;
		if (Mathf.Abs((float) acosRollValue) > 1 - double.Epsilon)
			angleRoll = 0;
		else
			angleRoll = Mathf.Rad2Deg * Mathf.Acos((float)(acosRollValue)); //arcos((P12^2 + P13^2 - P23^2) / (2 * P12 * P13))
		if (dvdRoll < float.Epsilon || dvpRoll < float.Epsilon) angleRoll = 0;

		Vector3 vertexPitch = Vector3.zero;
		Vector3 pointDownPitch = new Vector3(0, m_planetGrounder.DownMarker.transform.localPosition.y, m_planetGrounder.DownMarker.transform.localPosition.z);
		Vector3 pointPlanetPitch = new Vector3(0, m_planetGrounder.PlanetMarker.transform.localPosition.y, m_planetGrounder.PlanetMarker.transform.localPosition.z);
		double dvdPitch = Vector3.Distance(vertexPitch, pointDownPitch) / 10;
		double dvpPitch = Vector3.Distance(vertexPitch, pointPlanetPitch) / 10;
		double ddpPitch = Vector3.Distance(pointDownPitch, pointPlanetPitch) / 10;
		double acosPitchValue = (Pow(dvdPitch, 2) + Pow(dvpPitch, 2) - Pow(ddpPitch, 2)) / (2 * dvdPitch * dvpPitch);
		double anglePitch;
		if (Mathf.Abs((float)acosPitchValue) > 1 - double.Epsilon)
			anglePitch = 0;
		else
			anglePitch = Mathf.Rad2Deg * Mathf.Acos((float)(acosPitchValue)); //arcos((P12^2 + P13^2 - P23^2) / (2 * P12 * P13))
		
		Vector3 pointRightRoll = new Vector3(m_planetGrounder.RightMarker.transform.localPosition.x, m_planetGrounder.RightMarker.transform.localPosition.y, 0);
		double dvrRoll = Vector3.Distance(vertexRoll, pointRightRoll) / 10;
		double drpRoll = Vector3.Distance(pointRightRoll, pointPlanetRoll) / 10;
		double rightAngle = Mathf.Rad2Deg * Mathf.Acos((float)((Pow(dvrRoll, 2) + Pow(dvpRoll, 2) - Pow(drpRoll, 2)) / (2 * dvrRoll * dvpRoll))); //arcos((P12^2 + P13^2 - P23^2) / (2 * P12 * P13))

		Vector3 pointForwardPitch = new Vector3(0, m_planetGrounder.ForwardMarker.transform.localPosition.y, m_planetGrounder.ForwardMarker.transform.localPosition.z);
		double dvfPitch = Vector3.Distance(vertexPitch, pointForwardPitch) / 10;
		double dfpPitch = Vector3.Distance(pointForwardPitch, pointPlanetPitch) / 10;
		double forwardAngle = Mathf.Rad2Deg * Mathf.Acos((float)((Pow(dvfPitch, 2) + Pow(dvpPitch, 2) - Pow(dfpPitch, 2)) / (2 * dvfPitch * dvpPitch))); //arcos((P12^2 + P13^2 - P23^2) / (2 * P12 * P13))

		Debug.Log(angleRoll + " (" + rightAngle + ") " + anglePitch + " (" + forwardAngle + ")");

		int pitchDirection = (forwardAngle > 90) ? -1 : 1;
		int rollDirection = (rightAngle > 90) ? -1 : 1;

		MotionBaseMover.Instance.InducePhysicsPitch((float) (pitchDirection * anglePitch / MotionBaseMover.Instance.MAX_PITCH_ANGLE));
		MotionBaseMover.Instance.InducePhysicsRoll((float) (rollDirection * angleRoll / MotionBaseMover.Instance.MAX_ROLL_ANGLE));

		Debug.DrawLine(transform.position, transform.position + m_Rigidbody.velocity);
	}

	void FixedUpdate()
	{
		bool grounded = m_planetGrounder.Grounded;

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

	double Pow(double b, int e) {
		double res = 1.0;
		int i = 0;
		while (i < e) {
			res = res * b;
			i++;
		}

		return res;
	}
}
