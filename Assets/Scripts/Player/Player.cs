using UnityEngine;
using System.Collections;

public class Player : MonoBehaviour 
{
	/// <summary>
	/// 	Create Singleton
	/// </summary>
	public static Player instance;
	
	public static Player Instance
	{
		get
		{
			if(instance == null)
			{
				instance = GameObject.FindObjectOfType<Player>();
				DontDestroyOnLoad(instance.gameObject);
			}
			return instance;
		}
	}

	public Vector3 getTransformPosition()
	{
		return this.gameObject.transform.position;
	}
}
