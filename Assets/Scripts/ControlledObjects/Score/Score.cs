using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class Score : MonoBehaviour {

    private Text score;

	// Use this for initialization
	void Start () {
        score = GetComponent<Text>();
	}
	
	// Update is called once per frame
	void Update () {
        if (this.score != null)
        {
            this.score.text = "Score: " + ScoreManager.Instance.score; // Set the displayed text to be the word "Score" followed by the score value.
        }
        else
        {
            this.score = GetComponent<Text>();
        }
	
	}
}
