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
    public float maxShellHeight = 25f;
    public float calculationSwitchDistance = 10f;
    public bool delayedFire;
    public bool bossAttack;

	private float previousAngle = 0;
	private float previousPreviousAngle = 0;
	private bool readyToFire = true;
	private bool inPositionToFire = true;

    private Animator bossAnimator;

	void Start()
	{
		this.previousAngle = Vector3.Angle(this.transform.forward, Player.Instance.transform.position - this.transform.position);
        if (delayedFire)
        {
            this.readyToFire = false;
            StartCoroutine(delayedFiring());
        }

        if (bossAttack)
        {
            bossAnimator = this.GetComponentInParent<Animator>();
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
        if (this.readyToFire && this.inPositionToFire)
        {
            float distanceToPlayer = DistanceCalculator.squareEuclidianDistance(this.transform.position, Player.Instance.transform.position);

            GameObject clone = (GameObject)Instantiate(this.projectile, this.attackSpawnPoint.position, this.attackSpawnPoint.rotation);

            if (distanceToPlayer >= Mathf.Pow(calculationSwitchDistance, 2f))
            { 
				clone.GetComponent<Rigidbody>().AddForce(clone.transform.forward * Vector3.Distance(attackSpawnPoint.position, Player.Instance.transform.position) * 10);
            }
            else
            {

                float shellVelocityX = (Vector3.Distance(Player.Instance.transform.position, attackSpawnPoint.position) / timeToTarget);
                float shellVelocityY = ((maxShellHeight - 4.9f * Mathf.Pow(timeToTarget, 2)) / timeToTarget);
                float shellVelocity = Mathf.Sqrt(Mathf.Pow(shellVelocityX, 2) + Mathf.Pow(shellVelocityY, 2)) / 2f;

                clone.GetComponent<Rigidbody>().AddForce(clone.transform.forward * shellVelocity, ForceMode.Impulse);
            }

            if (this.bossAttack)
            {
                if (this.delayedFire)
                {
                    bossAnimator.SetTrigger("FireLeftArtillery");
                }
                else
                {
                    bossAnimator.SetTrigger("FireRightArtillery");
                }
            }

			this.readyToFire = false;
			this.inPositionToFire = false;
			StartCoroutine(this.getReadyToFire());
		}
		else if(!this.inPositionToFire && !this.bossAttack)
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
