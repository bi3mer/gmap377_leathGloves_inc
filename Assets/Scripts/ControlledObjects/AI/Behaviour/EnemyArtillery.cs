using UnityEngine;
using System.Collections;

public class EnemyArtillery : MonoBehaviour 
{
	public GameObject projectile;
	public Transform attackSpawnPoint;
	public float rotateSpeed = 20;
	public int fireResetTime = 10;
	public int deathTime = 10;

	private int halfRotateTime  = 0;
	private int fireCurrentTime = 0;
	private float previousAngle = 0;
	private float previousPreviousAngle = 0;

	void Start()
	{
		this.previousAngle = Vector3.Angle(this.transform.forward, Player.Instance.transform.position - this.transform.position);
		this.fireCurrentTime = this.fireResetTime;
		this.halfRotateTime = this.fireResetTime / 2;
	}
	
	// Update is called once per frame
	void Update () 
	{
		if(this.fireCurrentTime > this.fireResetTime)
		{
			float angle = Vector3.Angle(this.transform.forward, Player.Instance.transform.position - this.transform.position);

			if(previousAngle < angle)
			{
				if(this.previousPreviousAngle > this.previousAngle)
				{
					this.fireCurrentTime = 0;
				}
			} 
			else
			{
				transform.Rotate(Vector3.up, Time.deltaTime * this.rotateSpeed);
			}
			this.previousPreviousAngle = this.previousAngle;
			this.previousAngle = angle;
		}
		else
		{
			if(this.fireCurrentTime == this.halfRotateTime)
			{
				GameObject clone = (GameObject) Instantiate(this.projectile, this.attackSpawnPoint.position, this.attackSpawnPoint.rotation);
				clone.GetComponent<Rigidbody>().AddForce(clone.transform.forward * Vector3.Distance(this.transform.position, Player.Instance.transform.position) * 10);
			}

			++this.fireCurrentTime;
		}	
	}
}
