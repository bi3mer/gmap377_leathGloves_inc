using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class SimpleTimer : MonoBehaviour {

    public float TimeS;
    Text text;                      // Reference to the Text component.


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
        }

    }

    void timerEnded()
    {
        text.text = "Game Over";
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

