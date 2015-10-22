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
		float distanceToDownMarker = m_planetGrounder.DistanceToGroundMarker;

		/*Vector3 angleDownX = new Vector3(angleDown.x, angleDown.x, angleDown.x);
		Vector3 angleDownZ = new Vector3(angleDown.z, angleDown.z, angleDown.z);
		Vector3 anglePlanetX = new Vector3(anglePlanet.x, anglePlanet.x, anglePlanet.x);
		Vector3 anglePlanetZ = new Vector3(anglePlanet.z, anglePlanet.z, anglePlanet.z);

		float angleRoll = Vector3.Angle(angleDownZ, anglePlanetZ);
		float anglePitch = Vector3.Angle(angleDownX, anglePlanetX);
		MotionBaseMover.Instance.InducePhysicsPitch(anglePitch / MotionBaseMover.Instance.MAX_PITCH_ANGLE);
		MotionBaseMover.Instance.InducePhysicsRoll(angleRoll / MotionBaseMover.Instance.MAX_ROLL_ANGLE);
		Debug.Log(angleRoll + " " + anglePitch);*/

		Vector3 vertexRoll = new Vector3(transform.position.x, transform.position.y, 0);
		Vector3 pointDownRoll = new Vector3(m_planetGrounder.DownMarker.transform.position.x, m_planetGrounder.DownMarker.transform.position.y, 0);
		Vector3 pointPlanetRoll = new Vector3(m_ipObject.NearestPlanet.transform.position.x, m_ipObject.NearestPlanet.transform.position.y, 0);
		float dvdRoll = Vector3.Distance(vertexRoll, pointDownRoll);
		float dvpRoll = Vector3.Distance(vertexRoll, pointPlanetRoll);
		float ddpRoll = Vector3.Distance(pointDownRoll, pointPlanetRoll);

		float angleRoll = Mathf.Rad2Deg * Mathf.Acos((Mathf.Pow(dvdRoll, 2) + Mathf.Pow(dvpRoll, 2) - Mathf.Pow(ddpRoll, 2)) / (2 * dvdRoll * dvpRoll)); //arcos((P12^2 + P13^2 - P23^2) / (2 * P12 * P13))

		Vector3 vertexPitch = new Vector3(0, transform.position.y, transform.position.z);
		Vector3 pointDownPitch = new Vector3(0, m_planetGrounder.DownMarker.transform.position.y, m_planetGrounder.DownMarker.transform.position.z);
		Vector3 pointPlanetPitch = new Vector3(0, m_ipObject.NearestPlanet.transform.position.y, m_ipObject.NearestPlanet.transform.position.z);
		float dvdPitch = Vector3.Distance(vertexPitch, pointDownPitch);
		float dvpPitch = Vector3.Distance(vertexPitch, pointPlanetPitch);
		float ddpPitch = Vector3.Distance(pointDownPitch, pointPlanetPitch);

		float anglePitch = Mathf.Rad2Deg * Mathf.Acos((Mathf.Pow(dvdPitch, 2) + Mathf.Pow(dvpPitch, 2) - Mathf.Pow(ddpPitch, 2)) / (2 * dvdPitch * dvpPitch)); //arcos((P12^2 + P13^2 - P23^2) / (2 * P12 * P13))


		//float angleRoll = Mathf.Asin((m_planetGrounder.DownMarker.transform.position.x - m_ipObject.transform.position.x) / distanceToDownMarker);
		//float anglePitch = Mathf.Asin(angleDown.z / distanceToDownMarker);
		Debug.Log(angleRoll + " " + anglePitch);

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
}
