using UnityEngine;
using System.Collections;

public class PlanetRadiusFinder : MonoBehaviour {
	/// <summary>
	/// 	Create Singleton
	/// </summary>
	public static PlanetRadiusFinder instance;
	
	public static PlanetRadiusFinder Instance
	{
		get
		{
			if(instance == null)
			{
				instance = GameObject.FindObjectOfType<PlanetRadiusFinder>();
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
		print("radius info: " + GetComponent<SphereCollider>().radius.ToString() + " * " + transform.localScale.x.ToString());
		// Get Radius
		this._radius = GetComponent<SphereCollider>().radius * transform.localScale.x;
	}
}
