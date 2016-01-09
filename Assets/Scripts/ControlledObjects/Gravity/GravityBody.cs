using UnityEngine;
using System.Collections;

[RequireComponent (typeof (Rigidbody))]
public class GravityBody : MonoBehaviour {
	
	private GravityAttractor planet;
	Rigidbody rb;
	
	void Awake () 
	{
		this.planet = GameObject.FindGameObjectWithTag("Planet").GetComponent<GravityAttractor>();
		this.rb = this.GetComponent<Rigidbody>();
		
		this.rb.useGravity = false;
	}
	
	void FixedUpdate () 
	{
		// Allow this body to be influenced by planet's gravity
        if (planet == null)
        {
            Debug.Log("Planet is null"); 
        }
		planet.Attract(this.rb);
	}
}