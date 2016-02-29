using UnityEngine;
using System.Collections;

public class ConstrainedLaser : MonoBehaviour {

	ParticleSystem particles;
	float dist;

	public GameObject endPoint;

	// Use this for initialization
	void Start () {
		particles = GetComponent<ParticleSystem> ();

		dist = Vector3.Distance(transform.position, endPoint.transform.position);
		particles.startSpeed = dist;

		foreach(Transform t in transform)
		{
			t.gameObject.GetComponent<ParticleSystem>().startSpeed = dist;
			foreach(Transform child in t.transform)
			{
				child.gameObject.GetComponent<ParticleSystem>().startSpeed = dist;
			}
		}
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
