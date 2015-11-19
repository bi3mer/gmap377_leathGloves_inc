using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class PlayerHitImage : MonoBehaviour {

    private ScoreManager scoreManager;
    public Image hitMarker;


	// Use this for initialization
	void Start () {
        this.scoreManager = ScoreManager.Instance;
        this.hitMarker = GetComponent<Image>();
        
	}
	
	// Update is called once per frame
	void Update () {
        if (this.scoreManager.hitActive > float.Epsilon)
        {
            this.hitMarker.enabled = true;
            this.scoreManager.hitActive -= Time.deltaTime; 
        }
        else
        {
            this.hitMarker.enabled = false;
        }
	
	}
}
