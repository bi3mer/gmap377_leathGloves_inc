using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class SpawnFactoryHandler : MonoBehaviour {
	
	public GameObject bossObjects;
	public static SpawnFactoryHandler instance;

	// Use this for initialization
	void Start () {
		instance = this;
	}

	public void Activate()
	{
		bossObjects.SetActive (true);
	}
}
