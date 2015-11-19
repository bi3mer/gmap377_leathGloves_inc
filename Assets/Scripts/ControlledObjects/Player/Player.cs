using UnityEngine;
using System.Collections;

public class Player : MonoBehaviour 
{
	/// <summary>
	/// 	Create Singleton
	/// </summary>
	public static Player instance;

    void Start()
    {
//        PickupCache pc = GetComponent<PickupCache>();
//        pc.Rocket.GetComponent<Weapon>().ammo = 0;
//        pc.LaserBeam.GetComponent<Weapon>().ammo = 0;
//        pc.Mine.GetComponent<Weapon>().ammo = 0;
    }
	
	public static Player Instance
	{
		get
		{
			if(instance == null)
			{
				instance = GameObject.FindObjectOfType<Player>();
                // NOTE: DontDestroyOnLoad was causing major issues with restarts 
                // be aware that if we need this to survive on loads it will cause 
                // problems with the gravity system - Bryan
			}
			return instance;
		}
	}

	public Vector3 getTransformPosition()
	{
		return this.gameObject.transform.position;
	}
}
