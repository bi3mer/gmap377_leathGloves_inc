using UnityEngine;
using UnityEngine.UI;

public class Score : MonoBehaviour {

    private Text score;

	// Use this for initialization
	void Start () 
	{
        score = GetComponent<Text>();
	}
	
	// Update is called once per frame
	void Update () 
	{
        if (this.score != null)
        {
			// Set the displayed text to be the word "Score" followed by the score value.
            this.score.text = "Score: " + ScoreManager.Instance.score; 
        }
        else
        {
            this.score = GetComponent<Text>();
        }
	}
}
