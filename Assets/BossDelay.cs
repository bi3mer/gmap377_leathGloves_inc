using UnityEngine;
using System.Collections;

public class BossDelay : MonoBehaviour {

	private AbstractMover mover;
	private float delayInSeconds = 5f;

	void Start () {
		mover = this.GetComponent<AbstractMover> ();
		StartCoroutine (CountdownTimer ());
	}

	IEnumerator CountdownTimer(){
		yield return new WaitForSeconds (delayInSeconds);
		mover.enabled = true;
	}
}
