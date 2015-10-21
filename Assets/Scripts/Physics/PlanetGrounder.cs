using UnityEngine;
using System.Collections;

[RequireComponent(typeof(InterplanetaryObject))]
public class PlanetGrounder : MonoBehaviour {

	public bool Grounded = false;
	public float RotateSpeed = 0f;

	private InterplanetaryObject _io;

	void Start() {
		_io = GetComponent<InterplanetaryObject>();
	}

	void Update() {
		Gravity planet = _io.NearestPlanet;
		if (planet) {
			float angle = Vector3.Angle(transform.position, planet.transform.position);
			Debug.Log(angle);
		}
	}
}
