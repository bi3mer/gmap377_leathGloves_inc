using UnityEngine;
using System.Collections;

public class MotionBaseFollower : MonoBehaviour {

	void LateUpdate () {
		transform.localRotation = MotionBaseMover.Instance.transform.rotation;
	}
}
