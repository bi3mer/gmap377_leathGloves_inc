using UnityEngine;
using System.Collections;

public class searchAndAttack : MonoBehaviour 
{
	public AISight sight;
	public Transform attackSpawnPoint;
	public GameObject weapon;
	public float fireRate;
	public bool bossAttack;

	// timer for shooting
	private float timer = 0f;

	// player found
	private bool playerFound = false;
	public bool PlayerFound 
	{
		get
		{
			return this.playerFound;
		}
		set 
		{ 
			// pass
		}
	}

	// Update is called once per frame
	void Update () 
	{
		// Search
		Transform targ = sight.LookForPlayer();

		// add to timer
		timer += Time.deltaTime;

		// Check targ
		if(targ != null)
		{	
			if(!bossAttack)
				transform.LookAt(targ.position);

			this.playerFound = true;

			if(timer > fireRate)
			{
				// instantiate bullet
				GameObject bullet = Instantiate(this.weapon, this.attackSpawnPoint.position, this.transform.rotation) as GameObject; 

				// add target to bullet
				bullet.GetComponent<FireForward>().target = targ.position;
				// reset timer
				timer = 0f;
			}
		}
	}
}
