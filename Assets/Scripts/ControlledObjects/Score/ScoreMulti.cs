using UnityEngine;
using System.Collections;
using UnityEngine.UI;


public class ScoreMulti : MonoBehaviour {
    public int multiplier;
    float TimeS = 10;

    Text text;
    void Start()
    {

        ScoreManager.Instance.SetMultiplier(multiplier);
        text = ScoreManager.Instance.multiplierText;
        text.text = "x" + multiplier;
    }
    
	
	// Update is called once per frame
	void Update ()
    {
        if (TimeS > 0)
        {
            text.text = "x" + multiplier;
            Countdown();
        }

        if (TimeS <= 0)
        {
            timerEnded();
        }
    }

    void timerEnded()
    {
        multiplier = 1;
        ScoreManager.Instance.SetMultiplier(multiplier);
        text.text = "x" + multiplier;
    }

    void Countdown()
    {
        TimeS -= Time.deltaTime;
       
    }
}
