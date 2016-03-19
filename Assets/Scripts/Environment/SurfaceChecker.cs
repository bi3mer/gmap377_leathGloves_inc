using UnityEngine;
using System.Collections;

public class SurfaceChecker : MonoBehaviour 
{
	void OnTriggerEnter(Collider collider) 
	{
		if(collider.gameObject.CompareTag("Player"))
		{
			Player.instance.ReOrient ();
		}
	}
}
