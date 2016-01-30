using UnityEngine;
using System.Collections;

public class FireForward : MonoBehaviour 
{
	private float speed;

	[HideInInspector]
	public Vector3 target;

	void Start()
	{
		this.speed = this.GetComponent<Weapon>().speed;
	}

	// Update is called once per frame
	void Update () 
	{
		this.transform.position = Vector3.MoveTowards(this.transform.position, this.target, this.speed * Time.deltaTime);
		if (this.transform.position.Equals (this.target)) {
			Destroy (this.gameObject);
		}
	}
}
