using UnityEngine;
using System.Collections;

public class MotionBaseFollower : MonoBehaviour {

	void Update () {
		transform.localRotation = MotionBaseMover.Instance.transform.rotation;
	}
}
