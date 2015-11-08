using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class HighScoreList : MonoBehaviour {
	public Text HighScoreTitle;
	Text HighScoreListGUI;
	public static HighScoreList Instance = null;
	//int[] highScoresArray = new int[5];
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
	
	// Update is called once per frame
	void Update () 
	{
	
	}
	
	void StoreHighScore(int newHighscore)
	{
		int oldHighscore = PlayerPrefs.GetInt("highscore", 0);    
		if(newHighscore > oldHighscore)
		{
			PlayerPrefs.SetInt("highscore", newHighscore);
		}
		
		PlayerPrefs.Save();
	}
	void DisplayHighScore()
	{
		HighScoreListGUI.text = ((ScoreManager.Instance.GetName()) + " " +  PlayerPrefs.GetInt("highscore",0).ToString());
	}
}
