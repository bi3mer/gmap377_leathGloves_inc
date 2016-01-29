using UnityEngine;
using System.Collections;

public class EnemyArtillery : MonoBehaviour 
{
	public GameObject projectile;
	public Transform attackSpawnPoint;
	public float rotateSpeed = 20;
	public float fireResetTime = 10;

	private float previousAngle = 0;
	private float previousPreviousAngle = 0;
	private bool readyToFire = true;
	private bool inPositionToFire = true;

	void Start()
	{
		this.previousAngle = Vector3.Angle(this.transform.forward, Player.Instance.transform.position - this.transform.position);
	}

	private IEnumerator getReadyToFire()
	{
		yield return new WaitForSeconds(this.fireResetTime);
		this.readyToFire = true;
	}

	// Update is called once per frame
	void Update () 
	{
		if(this.readyToFire && this.inPositionToFire)
		{
			GameObject clone = (GameObject) Instantiate(this.projectile, this.attackSpawnPoint.position, this.attackSpawnPoint.rotation);
			clone.GetComponent<Rigidbody>().AddForce(clone.transform.forward * Vector3.Distance(this.transform.position, Player.Instance.transform.position) * 10);
			this.readyToFire = false;
			this.inPositionToFire = false;
			StartCoroutine(this.getReadyToFire());
		}
		else if(!this.inPositionToFire)
		{
			float angle = Vector3.Angle(this.transform.forward, Player.Instance.transform.position - this.transform.position);
			
			if(previousAngle < angle)
			{
				if(this.previousPreviousAngle > this.previousAngle)
				{
					this.inPositionToFire = true;
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
}
