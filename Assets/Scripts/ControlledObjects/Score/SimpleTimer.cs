using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class SimpleTimer : MonoBehaviour {

    public float TimeS;
    Text text;                      // Reference to the Text component.
    public Text RestartText;
	

    void Awake()
    {
        // Set up the reference.
        text = GetComponent<Text>();

        
    }

    void Update()
    {
        if (TimeS >= 0)
        {
             Countdown();
        }
       
        if (TimeS <= 0)
        {
            timerEnded();

            if (InputManager.PlayerStartInput > float.Epsilon) {
                RestartText.enabled = false;
                Application.LoadLevel(0);
                Time.timeScale = 1;
            } 
        }
    }

    void timerEnded()
    {
        text.text = "Game Over";
        RestartText.enabled = true;
        //Turning on the high score list
        HighScoreList.Instance.GetComponent<HighScoreList>().enabled = true;
        //Pausing game
		Time.timeScale =0;
        
        
    }
    /// <summary>
    ///Takes the amount of time we give in seconds and cleans it to display properly. 
    ///As well as counts down in seconds. 
    ///
    /// </summary>
    void Countdown()
    {
        TimeS -= Time.deltaTime; 
        int minutes = Mathf.FloorToInt(TimeS / 60F);
        int seconds = Mathf.FloorToInt(TimeS - minutes * 60);
        string cleanTime = string.Format("{0:0}:{1:00}", minutes, seconds);
        text.text = "Time: " + cleanTime;
    }


}

