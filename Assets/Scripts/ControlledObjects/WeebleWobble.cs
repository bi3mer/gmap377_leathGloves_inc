using UnityEngine;
using System.Collections;

[RequireComponent(typeof (PlanetOrientation))]
public class WeebleWobble : MonoBehaviour 
{
	public float WeebleWobbleFactor = 0.1f;
	public float PitchTolerance = 5;
    public float RollTolerance = 5;

	private PlanetOrientation m_planetOrientation;
	private Rigidbody m_rigidbody;

	void Start () 
	{
		m_planetOrientation = GetComponent<PlanetOrientation>();
		m_rigidbody = GetComponent<Rigidbody>();
	}
	
	void Update () 
	{
		bool grounded = m_planetOrientation.Grounded;
		float pitch = m_planetOrientation.Pitch;
		float roll = m_planetOrientation.Roll;

		float pitchRotationCorrection = 0;
		float rollRotationCorrection = 0;
		
		if (!grounded) 
		{
			if (Mathf.Abs(pitch) > PitchTolerance) 
			{
				pitchRotationCorrection = -1 * pitch * WeebleWobbleFactor;
				m_rigidbody.rotation = Quaternion.AngleAxis(pitchRotationCorrection, transform.right) * m_rigidbody.rotation;
				m_planetOrientation.UpdateTiltAxes();
			}

			if (Mathf.Abs(roll) > RollTolerance) 
			{
				rollRotationCorrection = roll * WeebleWobbleFactor;
				m_rigidbody.rotation = Quaternion.AngleAxis(rollRotationCorrection, transform.forward) * m_rigidbody.rotation;
				m_planetOrientation.UpdateTiltAxes();
			}
            
		}
	}
}
