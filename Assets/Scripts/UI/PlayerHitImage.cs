using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class PlayerHitImage : MonoBehaviour
{
    private ScoreManager scoreManager;

    RawImage hitMarker;
	
	float hitTime = 2.0f;
	float tempTime = 0;

    public static PlayerHitImage Instance = null;

	void Awake()
	{
		if (Instance)
		{
			Destroy(this);
		}
		else
		{
			Instance = this;
		}
		this.hitMarker = GetComponent<RawImage>();
		this.hitMarker.enabled = false;
	}
	
    /// <summary>
    /// player is hit. starts coroutine
    /// </summary>
	public void playerHit()
	{
		tempTime = 0f;
		StartCoroutine(HitThing());
	}
	
    /// <summary>
    /// Displays hit marker on screen for hit time
    /// </summary>
    /// <returns></returns>
	IEnumerator HitThing()
    {
		this.hitMarker.enabled = true;
		while (tempTime <= hitTime)
        {
			tempTime += Time.deltaTime;
			yield return 0;
		}
		tempTime = 0;
		this.hitMarker.enabled = false;
	}
}
