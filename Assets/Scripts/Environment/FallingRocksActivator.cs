using UnityEngine;
using System.Collections;
/// <summary>
/// Falling rocks activator. Attach to a trigger and assign the objects you want to activate.
/// </summary>
public class FallingRocksActivator : MonoBehaviour 
{
	public GameObject[] FallingRocks;

	/// <summary>
	/// Checks for collison with the player and then activates rigidbodies on 
	/// </summary>
	/// <param name="activator">Activator.</param>
	void OnTriggerEnter(Collider activator)
	{
		if (activator.tag == "Player") 
		{
			for (int i = 0; i < FallingRocks.Length; ++i) 
			{
				FallingRocks [i].GetComponent<Rigidbody> ().isKinematic = false;
				FallingRocks [i].GetComponent<Rigidbody> ().detectCollisions = true;
			}
		}
	}

}
