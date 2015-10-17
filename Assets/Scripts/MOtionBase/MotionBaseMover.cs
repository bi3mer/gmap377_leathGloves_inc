using UnityEngine;
using System.Collections;

public class MotionBaseMover : MonoBehaviour {

	public static MotionBaseMover Instance = null;

	[Header("General")]
	public GameObject TrackedObject;
	public Vector3 MotionBaseRotation;
	public Vector3 TargetRotation;

	[Header("Induced Motion")]
	public float InducedTilt = 0;
	public float InducedPitch = 0;

	[Header("Constants")]
	public float MAX_TILT_ANGLE = 20;
	public float MAX_PITCH_ANGLE = 20;
	public float ANGLE_LERP_FACTOR = 0.1f;
	public float EPSILON = 0.1f;

	void Awake() {
		if (Instance) {
			Destroy(this);
		}
		else {
			Instance = this;
		}
	}

	void Start () {
		MotionBaseRotation = Vector3.zero;
		transform.rotation = Quaternion.Euler(MotionBaseRotation);	
	}
	
	void Update () {


		
	}

	void LateUpdate() {
		if (InducedPitch < -1) InducedPitch = -1;
		if (InducedPitch > 1) InducedPitch = 1;
		if (InducedTilt < -1) InducedTilt = -1;
		if (InducedTilt > 1) InducedTilt = 1;

		TargetRotation = Vector3.zero;
		TargetRotation.z = InducedTilt * MAX_TILT_ANGLE;
		TargetRotation.x = InducedPitch * MAX_PITCH_ANGLE;

		MotionBaseRotation += new Vector3((TargetRotation.x - MotionBaseRotation.x) * ANGLE_LERP_FACTOR, 0, (TargetRotation.z - MotionBaseRotation.z) * ANGLE_LERP_FACTOR);
		if (Mathf.Abs(MotionBaseRotation.x - TargetRotation.x) < EPSILON) MotionBaseRotation.x = TargetRotation.x;
		if (Mathf.Abs(MotionBaseRotation.y - TargetRotation.y) < EPSILON) MotionBaseRotation.y = TargetRotation.y;
		if (Mathf.Abs(MotionBaseRotation.z - TargetRotation.z) < EPSILON) MotionBaseRotation.z = TargetRotation.z;

		transform.rotation = Quaternion.Euler(MotionBaseRotation);
		InducedTilt = 0;
		InducedPitch = 0;
	}

	/// <summary>
	/// Add a left-to-right tilt to the motion base.  Enter a percentage of the max tilt, with 
	/// negative numbers leaning left and positive numbers leaning right ([-1, 1]).
	/// </summary>
	/// <param name="tiltPercent">[-1, 1]</param>
	public void InduceTilt(float tiltPercent) {
		InducedTilt += tiltPercent;
	}

	/// <summary>
	/// Add a front-to-back pitch to the motion base.  Enter a percentage of the max pitch, with 
	/// negative numbers leaning back and positive numbers leaning forward ([-1, 1]).
	/// </summary>
	/// <param name="pitchPercent">[-1, 1]</param>
	public void InducePitch(float pitchPercent) {
		InducedPitch += pitchPercent;
	}
}
