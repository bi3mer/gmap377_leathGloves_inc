using UnityEngine;
using System.Collections;
using UnityEngine.UI;
using System.Collections.Generic;

public class HighScoreList : MonoBehaviour {
	public Text HighScoreTitle;
	Text HighScoreListGUI;
	public static HighScoreList Instance = null;

    public static List<PlayerScore> scoreIndex = new List<PlayerScore>(5);

    void Awake()
	{
		if (Instance)
		{
			Destroy(this);
		}
		else
		{
			Instance = this;
		}
		
	}
		
	// Use this for initialization
	void Start () 
	{
		HighScoreListGUI = GetComponent<Text>();
		HighScoreListGUI.enabled = true;
		
		HighScoreTitle = HighScoreTitle.GetComponent<Text>();
		HighScoreTitle.enabled = true;
		
		StoreHighScore(ScoreManager.Instance.score);
		DisplayHighScore();
	}
	
	
	void StoreHighScore(int newHighScore)
	{
        

		int oldHighScore = PlayerPrefs.GetInt("highScore", 0);    
       
		if(newHighScore > oldHighScore)
		{
			PlayerPrefs.SetInt("highScore", newHighScore);
		}
		
		PlayerPrefs.Save();
	}

    void StoreNewHighScore(int newHighScore, string playerName)
    {
        PlayerScore a = new PlayerScore();
        a.name = playerName;
        a.score = newHighScore;

        scoreIndex.Add(a);
        scoreIndex.Sort();
        scoreIndex.Reverse();

        PlayerPrefs.SetString("name0", scoreIndex[0].name);
        PlayerPrefs.SetInt("score0", scoreIndex[0].score);
        PlayerPrefs.SetString("name1", scoreIndex[1].name);
        PlayerPrefs.SetInt("score1", scoreIndex[1].score);
    }
	void DisplayHighScore()
	{
       
		HighScoreListGUI.text = ((ScoreManager.Instance.GetName()) + " " +  PlayerPrefs.GetInt("highScore").ToString());
	}
}
