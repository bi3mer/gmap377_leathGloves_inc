using UnityEngine;
using System.Collections;

public class CollisionDestroy : MonoBehaviour 
{
	/// <summary>
	/// Raises the collision enter event destroys self on collison.
	/// </summary>
	/// <param name="collision">Collision.</param>
	void OnCollisionEnter(Collision collision) 
	{
			Destroy(gameObject);
    }
}
