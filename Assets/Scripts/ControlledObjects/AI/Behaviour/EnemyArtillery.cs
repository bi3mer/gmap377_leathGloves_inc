using UnityEngine;
using System.Collections;
using DG.Tweening;

public class EnemyArtillery : MonoBehaviour 
{
	public GameObject projectile;
	public Transform attackSpawnPoint;
	public float rotateSpeed = 20;
	public float fireResetTime = 10;
    public float timeToTarget = 5f;
    public float shellHeightModifier = 1.1f;
    public bool delayedFire;

	private float previousAngle = 0;
	private float previousPreviousAngle = 0;
	private bool readyToFire = true;
	private bool inPositionToFire = true;

	void Start()
	{
		this.previousAngle = Vector3.Angle(this.transform.forward, Player.Instance.transform.position - this.transform.position);
        if (delayedFire)
        {
            this.readyToFire = false;
            StartCoroutine(delayedFiring());
        }
	}

	private IEnumerator getReadyToFire()
	{
		yield return new WaitForSeconds(this.fireResetTime);
		this.readyToFire = true;
	}

    private IEnumerator delayedFiring()
    {
        yield return new WaitForSeconds(this.fireResetTime / 2f);
        this.readyToFire = true;
    }

	// Update is called once per frame
	void Update () 
	{
		if(this.readyToFire && this.inPositionToFire)
		{
			GameObject clone = (GameObject) Instantiate(this.projectile, this.attackSpawnPoint.position, this.attackSpawnPoint.rotation);
            // clone.GetComponent<Rigidbody>().AddForce(clone.transform.forward * Vector3.Distance(this.transform.position, Player.Instance.transform.position) * 10);

            Vector3 midpoint = Vector3.Lerp(attackSpawnPoint.position, Player.Instance.transform.position, 0.5f);

            Vector3 point1 = attackSpawnPoint.position;
            Vector3 point2 = midpoint * shellHeightModifier;
            Vector3 point3 = Player.Instance.transform.position;

            Vector3[] shellArcPath = { point1, point2, point3 };

            clone.transform.DOPath(shellArcPath, timeToTarget, PathType.CatmullRom);

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
