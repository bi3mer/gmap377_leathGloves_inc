using UnityEngine;
using System.Collections;

public class PlanetRadius : MonoBehaviour 
{
	/// <summary>
	/// 	Create Singleton
	/// </summary>
	private static PlanetRadius instance;
	
	public static PlanetRadius Instance
	{
		get
		{
			if(instance == null)
			{
				instance = GameObject.FindObjectOfType<PlanetRadius>();
				// NOTE: DontDestroyOnLoad was causing major issues with restarts 
				// be aware that if we need this to survive on loads it will cause 
				// problems with the gravity system - Bryan
			}
			return instance;
		}
	}

	// Radius
	private float _radius;
	public float radius 
	{
		get 
		{
			return this._radius;
		}
		set
		{ 
			// pass
		}
	}

	void Start()
	{
		// Get Radius
		this._radius = GetComponent<SphereCollider>().radius * transform.localScale.x;
	}
}
