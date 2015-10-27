using UnityEngine;
using System.Collections;

[RequireComponent (typeof (Rigidbody))]
public class GravityBody : MonoBehaviour {
	
	private GravityAttractor planet;
	private Rigidbody rigidbody;
	
	void Awake () {
		planet = GameObject.FindGameObjectWithTag("Planet").GetComponent<GravityAttractor>();
		rigidbody = GetComponent<Rigidbody> ();

		
		rigidbody.useGravity = false;
		//rigidbody.constraints = RigidbodyConstraints.FreezeRotation;
	}
	
	void FixedUpdate () {
		// Allow this body to be influenced by planet's gravity
        if (planet == null)
        {
            Debug.Log("HOLY FUCKING SHIT");
        }
		planet.Attract(rigidbody);
	}
}