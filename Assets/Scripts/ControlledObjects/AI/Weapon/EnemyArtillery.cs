using UnityEngine;
using System.Collections;

public class EnemyArtillery : MonoBehaviour 
{
	public float rotateSpeed = 20;
	private float previousAngle = 0;
	private float previousPreviousAngle = 0;

	void Start()
	{
		this.previousAngle = Vector3.Angle(this.transform.forward, Player.Instance.transform.position - this.transform.position);
	}
	
	// Update is called once per frame
	void Update () 
	{
		float angle = Vector3.Angle(this.transform.forward, Player.Instance.transform.position - this.transform.position);
		print (previousAngle + " < " + angle);

		// mathf.abs(angle) but just in one line :D
		if(previousAngle < angle)
		{
			if(this.previousPreviousAngle > this.previousAngle)
			{
				print ("fire!!!");
			}
		} 
		else
		{
			transform.Rotate(Vector3.up, Time.deltaTime * this.rotateSpeed);
		}

		this.previousPreviousAngle = this.previousAngle;
		this.previousAngle = angle;
	}
}
