using UnityEngine;
using System.Collections;

public class MotionBaseMover : MonoBehaviour {

	public static MotionBaseMover Instance = null;

	[Header("General")]
	//public MotionBaseFollower TrackedObject;
	public Vector3 MotionBaseRotation;
	public Vector3 TargetRotation;
	public Vector3 TargetArtificialRotation;
	public Vector3 TargetPhysicsRotation;

	[Header("Induced Motion")]
	public float ArtificialInducedRoll = 0;
	public float ArtificialInducedPitch = 0;
	public float PhysicsInducedRoll = 0;
	public float PhysicsInducedPitch = 0;

	[Header("Constants")]
	public float MAX_ROLL_ANGLE = 24;
	public float MAX_PITCH_ANGLE = 24;
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
		/*if (ArtificialInducedPitch < -1) ArtificialInducedPitch = -1;
		if (ArtificialInducedPitch > 1) ArtificialInducedPitch = 1;
		if (ArtificialInducedTilt < -1) ArtificialInducedTilt = -1;
		if (ArtificialInducedTilt > 1) ArtificialInducedTilt = 1;

		if (PhysicsInducedPitch < -1) PhysicsInducedPitch = -1;
		if (PhysicsInducedPitch > 1) PhysicsInducedPitch = 1;
		if (PhysicsInducedTilt < -1) PhysicsInducedTilt = -1;
		if (PhysicsInducedTilt > 1) PhysicsInducedTilt = 1;*/

		TargetRotation = Vector3.zero;

		TargetArtificialRotation = Vector3.zero;
		TargetArtificialRotation.z = ArtificialInducedRoll * MAX_ROLL_ANGLE;
		TargetArtificialRotation.x = ArtificialInducedPitch * MAX_PITCH_ANGLE;

		TargetPhysicsRotation = Vector3.zero;
		TargetPhysicsRotation.z = PhysicsInducedRoll * MAX_ROLL_ANGLE;
		TargetPhysicsRotation.x = PhysicsInducedPitch * MAX_PITCH_ANGLE;

		TargetRotation = TargetArtificialRotation + TargetPhysicsRotation;
		if (TargetRotation.z > MAX_ROLL_ANGLE) TargetRotation.z = MAX_ROLL_ANGLE;
		if (TargetRotation.z < -1 * MAX_ROLL_ANGLE) TargetRotation.z = -1 * MAX_ROLL_ANGLE;
		if (TargetRotation.x > MAX_PITCH_ANGLE) TargetRotation.x = MAX_PITCH_ANGLE;
		if (TargetRotation.x < -1 * MAX_PITCH_ANGLE) TargetRotation.x = -1 * MAX_PITCH_ANGLE;


		MotionBaseRotation += new Vector3((TargetRotation.x - MotionBaseRotation.x) * ANGLE_LERP_FACTOR, 0, (TargetRotation.z - MotionBaseRotation.z) * ANGLE_LERP_FACTOR);
		if (Mathf.Abs(MotionBaseRotation.x - TargetRotation.x) < EPSILON) MotionBaseRotation.x = TargetRotation.x;
		if (Mathf.Abs(MotionBaseRotation.y - TargetRotation.y) < EPSILON) MotionBaseRotation.y = TargetRotation.y;
		if (Mathf.Abs(MotionBaseRotation.z - TargetRotation.z) < EPSILON) MotionBaseRotation.z = TargetRotation.z;

		transform.rotation = Quaternion.Euler(MotionBaseRotation);
		ArtificialInducedRoll = 0;
		ArtificialInducedPitch = 0;
		PhysicsInducedRoll = 0;
		PhysicsInducedPitch = 0;
	}

	/// <summary>
	/// Add a left-to-right tilt to the motion base that does not represent an actual 
	/// physical movement by the player ship. Enter a percentage of the max tilt, with 
	/// negative numbers leaning left and positive numbers leaning right ([-1, 1]).
	/// </summary>
	/// <param name="tiltPercent">[-1, 1]</param>
	public void InduceArtificialRoll(float tiltPercent) {
		ArtificialInducedRoll += -1 * tiltPercent;
	}

	/// <summary>
	/// Add a front-to-back tilt to the motion base that does not represent an actual 
	/// physical movement by the player ship. Enter a percentage of the max tilt, with 
	/// negative numbers leaning left and positive numbers leaning right ([-1, 1]).
	/// </summary>
	/// <param name="pitchPercent">[-1, 1]</param>
	public void InduceArtificialPitch(float pitchPercent) {
		ArtificialInducedPitch += pitchPercent;
	}

	/// <summary>
	/// Add a left-to-right tilt to the motion base that represents an actual 
	/// physical movement by the player ship. Enter a percentage of the max tilt, with 
	/// negative numbers leaning left and positive numbers leaning right ([-1, 1]).
	/// </summary>
	/// <param name="tiltPercent">[-1, 1]</param>
	public void InducePhysicsRoll(float tiltPercent) {
		PhysicsInducedRoll += -1 * tiltPercent;
	}

	/// <summary>
	/// Add a front-to-back tilt to the motion base that does represents an actual 
	/// physical movement by the player ship. Enter a percentage of the max tilt, with 
	/// negative numbers leaning left and positive numbers leaning right ([-1, 1]).
	/// </summary>
	/// <param name="pitchPercent">[-1, 1]</param>
	public void InducePhysicsPitch(float pitchPercent) {
		PhysicsInducedPitch += pitchPercent;
	}
}
