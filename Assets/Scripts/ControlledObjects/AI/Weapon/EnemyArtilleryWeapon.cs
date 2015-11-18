using UnityEngine;
using System.Collections;

public class EnemyArtilleryWeapon : MonoBehaviour 
{
	public float riseDistance = 5;

	private float speed;
	
	[HideInInspector]
	public Vector3 target;

	private enum States{rise, rotate, rigidBodyAdd, drop};
	private Vector3 originalPosition;

	private States state;
	
	void Start () 
	{
		// set constants
		this.target = Player.Instance.transform.position;
		this.speed  = this.GetComponent<Weapon>().Speed;
		this.state  = States.rise;;
		this.originalPosition = transform.position;
	}
	
	// Update is called once per frame
	void Update () 
	{
		switch(this.state)
		{
			case(States.rise):
				
				break;

			case(States.rotate):
				// Check if done rotating

					// this.state = States.drop;
				transform.RotateAround(VertexNavigation.Instance.transform.position, Vector3.right, this.speed * Time.deltaTime);
				break;

			case(States.rigidBodyAdd):
				Rigidbody rb = new Rigidbody();
				
				this.gameObject.AddComponent<Rigidbody>();
				this.state = States.drop;
				break;

			default:
				
				break;
		}
	}
}
