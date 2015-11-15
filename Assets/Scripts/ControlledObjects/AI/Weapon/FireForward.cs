using UnityEngine;
using System.Collections;

public class FireForward : MonoBehaviour 
{
	private float speed;

	[HideInInspector]
	public Vector3 target;

	void Start()
	{
		this.speed = this.GetComponent<Weapon>().Speed;
	}

	// Update is called once per frame
	void Update () 
	{
		this.transform.position = Vector3.MoveTowards(this.transform.position, this.target, this.speed * Time.deltaTime);
	}
}
