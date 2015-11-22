using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class PlayerHitImage : MonoBehaviour {

    private ScoreManager scoreManager;
    RawImage hitMarker;
	public static PlayerHitImage Instance = null;
	float hitTime = 2.0f;
	float tempTime = 0;

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
	
	// Update is called once per frame
	void Update () {
		
	
	}
	public void playerHit()
	{
		tempTime = 0f;
		StartCoroutine(HitThing());
		
		
	}
	
	IEnumerator HitThing() {
		this.hitMarker.enabled = true;
		while (tempTime <= hitTime) {
			tempTime += Time.deltaTime;
			yield return 0;
		}
		tempTime = 0;
		this.hitMarker.enabled = false;
	}
	
	/*
		Debug.Log("asdf");
        if (this.scoreManager.hitActive > float.Epsilon)
        {
            this.hitMarker.enabled = true;
            this.scoreManager.hitActive -= Time.deltaTime; 
        }
        else
        {
            this.hitMarker.enabled = false;
        }
	
	*/
	
}
