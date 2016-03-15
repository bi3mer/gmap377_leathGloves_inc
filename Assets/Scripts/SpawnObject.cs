using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class SpawnObject : MonoBehaviour {

	public GameObject triDrone;

	public float delay;

	// Use this for initialization
	void Start () {
		StartCoroutine(Spawn());
	}
	
	// Update is called once per frame
	void Update () {

	}

	IEnumerator Spawn()
	{
		while (true) {
			yield return new WaitForSeconds (delay);
			GameObject.Instantiate (triDrone, transform.position, transform.rotation);
		}
	}

	void OnDestroy()
	{
		StopCoroutine(Spawn());
	}
}
