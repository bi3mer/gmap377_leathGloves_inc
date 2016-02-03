using UnityEngine;
using System.Collections;

public class MotionBaseFollower : MonoBehaviour {

	void LateUpdate () {
		if (MotionBaseMover.Instance) transform.localRotation = MotionBaseMover.Instance.transform.rotation;
	}
}
