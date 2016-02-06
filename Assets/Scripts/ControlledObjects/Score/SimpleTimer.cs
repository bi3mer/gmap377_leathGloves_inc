using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class SimpleTimer : MonoBehaviour 
{

    public delegate void dOnGameStart();
    public delegate void dOnGameOver();
    public static event dOnGameStart OnGameStart;
    public static event dOnGameOver OnGameOver;

    //Time in seconds.
    public float timeS;
	// Reference to the Text component.				
    Text text;
    public Text restartText;
    public bool GameOver = false;
    public float RestartTime = 15;

    /// <summary>
    /// called on awake
    /// </summary>
    void Awake()
    {
        // Set up the reference.
        text = GetComponent<Text>();    
    }

    /// <summary>
    /// called every frame
    /// </summary>
    void Update()
    {
        if (this.timeS >= 0)
        {
             Countdown();
        }
       
        else if (this.timeS <= 0)
        {
            if (!GameOver) {
                //OnGameOver();
                GameOver = true;
                timerEnded();
            }

            timeS -= Time.deltaTime;

            StartCoroutine(RestartOnTimer());
            if (InputManager.PlayerStartInput > float.Epsilon || Input.GetKeyDown(KeyCode.Alpha1)) {
                Restart();
            } 
        }
    }

	/// <summary>
	/// Timer has ended. Pause game and display highscore list.
	/// </summary>
    void timerEnded()
    {
        text.text = "Game Over";
        restartText.enabled = true;
        
        //Turning on the high score list
        HighScoreList.Instance.GetComponent<HighScoreList>().enabled = true;
        
        //Pausing game
		Time.timeScale =0;     
    }
    
    /// <summary>
    ///Takes the amount of time we give in seconds and cleans it to display properly. 
    ///As well as counts down in seconds. 
    /// </summary>
    void Countdown()
    {
        timeS -= Time.deltaTime; 
        int minutes = Mathf.FloorToInt(timeS / 60F);
        int seconds = Mathf.FloorToInt(timeS - minutes * 60);
        text.text = "Time: " + string.Format("{0:0}:{1:00}", minutes, seconds);
    }

    void Restart() {
        restartText.enabled = false;

        HighScoreList.Instance.ClearAll();
        WeaponDisplayController.Instance.ZeroOutAmmo();

        Application.LoadLevel(0);
        Time.timeScale = 1;
    }

    IEnumerator RestartOnTimer() {
        yield return new WaitForSeconds(RestartTime);
    }
}

