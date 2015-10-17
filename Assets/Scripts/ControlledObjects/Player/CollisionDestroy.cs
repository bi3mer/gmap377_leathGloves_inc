using UnityEngine;
using System.Collections;

public class CollisionDestroy : MonoBehaviour 
{
	void OnCollisionEnter(Collision collision) 
	{
		if(collision.gameObject.tag == "enemy")
			Destroy(collision.gameObject);
    }
}
