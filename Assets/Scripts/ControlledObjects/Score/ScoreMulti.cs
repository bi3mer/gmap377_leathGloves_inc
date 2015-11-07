using UnityEngine;
using System.Collections;
using UnityEngine.UI;


public class ScoreMulti : MonoBehaviour {
    public int multiplier = 2;
    float TimeS = 10;

    string text;
    void Start()
    {
        ScoreManager.Instance.SetMultiplier(multiplier);
        text = ScoreManager.Instance.multiplierText;
        text = "x" + multiplier;
    }
    
	
	// Update is called once per frame
	void Update ()
    {
        if (TimeS > 0)
        {
            text = "x" + multiplier;
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
        text = "x" + multiplier;
    }

    void Countdown()
    {
        TimeS -= Time.deltaTime;
       
    }
}
