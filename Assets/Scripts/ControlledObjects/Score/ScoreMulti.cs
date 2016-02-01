using UnityEngine;
using System.Collections;
using UnityEngine.UI;


public class ScoreMulti : MonoBehaviour 
{
    public int multiplier = 2;
    float TimeMulti = 10;
    
    void Start()
    {
        ScoreManager.Instance.SetMultiplier(multiplier);
    }
    
	// Update is called once per frame only while multi is active
	void Update ()
    {
        if (TimeMulti > 0)
        {
            Multi.Instance.MultiTxtSet();
            Countdown();
        }

        if (TimeMulti <= 0)
        {
            timerEnded();
            Multi.Instance.MultiTxtSet();
        }
    }
	
	/// <summary>
	/// Multiplier time has ended. Reset multiplier
	/// </summary>
    void timerEnded()
    {
        ScoreManager.Instance.DecreaseMultiplier(ScoreManager.Instance.multi / multiplier);
        Destroy(gameObject);
    }
	
	/// <summary>
	/// Countdown this instance.
	/// </summary>
    void Countdown()
    {
        TimeMulti -= Time.deltaTime;   
    }
}
