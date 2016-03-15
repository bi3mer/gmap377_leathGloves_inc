using UnityEngine;
using System.Collections;

public class SurfaceChecker : MonoBehaviour {

	void OnTriggerEnter(Collider collider) {
		Debug.Log ("Heyo");
		
		if(collider.gameObject.CompareTag("Player"))
		{
			Player.instance.ReOrient ();
		}
	}

}
