using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class SimpleTimer : MonoBehaviour {

    public float TimeS = 60.0f;
    Text text;                      // Reference to the Text component.


    void Awake()
    {
        // Set up the reference.
        text = GetComponent<Text>();

        // Reset the score.
        TimeS = 60;
    }

    void Update()
    {

        TimeS -= Time.deltaTime;
        text.text = "Time: " + (int)TimeS;
       

        if (TimeS <= 0)
        {
            timerEnded();
        }

    }

    void timerEnded()
    {
       
    }


}

