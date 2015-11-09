using UnityEngine;
using System.Collections;

public class AIFollow : MonoBehaviour 
{
	public int strength;
	private Rigidbody rb;

	/// <summary>
	///		Get rigid body
	/// </summary>
	void Start()
	{
		this.rb = GetComponent<Rigidbody>();
	}

	/// <summary>
	/// 	Follow Player wherever he or she goes around the world
	/// </summary>
	void Update () 
	{
		// Look at Player
		transform.LookAt(Player.Instance.getTransformPosition());

		// move towards Player
		this.rb.AddRelativeForce(Vector3.forward * this.strength);
	}
}
