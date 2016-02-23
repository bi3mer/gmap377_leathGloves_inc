using UnityEngine;
using System.Collections;

public class ScorpionSwipe : MonoBehaviour 
{
	public string attackingTag = "Player";
	public int damage = 50;


	void OnTriggerEnter(Collider other)
	{
		// Check tag
		if(other.CompareTag(this.attackingTag))
		{
			// Deal dmg
			ScoreManager.Instance.score -= this.damage;
		}
	}
}
