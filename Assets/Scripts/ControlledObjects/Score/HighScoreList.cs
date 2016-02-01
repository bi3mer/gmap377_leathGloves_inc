using UnityEngine;
using UnityEngine.UI;
using System.Collections.Generic;

public class HighScoreList : MonoBehaviour
{
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
        //Use this to clear out the old high scores
        //PlayerPrefs.DeleteAll();

        LoadList();
        HighScoreListGUI = GetComponent<Text>();
		HighScoreListGUI.enabled = true;
		
		HighScoreTitle = HighScoreTitle.GetComponent<Text>();
		HighScoreTitle.enabled = true;

        int newHighScore = ScoreManager.Instance.score;
        string playerName = ScoreManager.Instance.GetName();
        
        StoreNewHighScore(newHighScore, playerName);
		DisplayHighScore();
	}
	
	/// <summary>
	/// Takes the players current name and current score and sets a new High score if the got one.
	/// </summary>
	/// <param name="newHighScore">New high score.</param>
	/// <param name="playerName">Player name.</param>
    void StoreNewHighScore(int newHighScore, string playerName)
    {
        PlayerScore a = new PlayerScore();
        a.name = playerName;
        a.score = newHighScore;
        //LoadList();
        scoreIndex.Add(a);
        scoreIndex.Sort();
        scoreIndex.Reverse();

        PlayerPrefs.SetString("name0", scoreIndex[0].name);
        PlayerPrefs.SetInt("score0", scoreIndex[0].score);

        PlayerPrefs.SetString("name1", scoreIndex[1].name);
        PlayerPrefs.SetInt("score1", scoreIndex[1].score);

        PlayerPrefs.SetString("name2", scoreIndex[2].name);
        PlayerPrefs.SetInt("score2", scoreIndex[2].score);

        PlayerPrefs.SetString("name3", scoreIndex[3].name);
        PlayerPrefs.SetInt("score3", scoreIndex[3].score);

        PlayerPrefs.SetString("name4", scoreIndex[4].name);
        PlayerPrefs.SetInt("score4", scoreIndex[4].score);

        PlayerPrefs.Save();
    }

	/// <summary>
	/// Loads the high scores and names stored locally and adds them into the l 
	/// </summary>
    void LoadList()
    {
        PlayerScore a = new PlayerScore();
        a.name = PlayerPrefs.GetString("name0");
        a.score = PlayerPrefs.GetInt("score0");
        scoreIndex.Add(a);

        PlayerScore b = new PlayerScore();
        b.name = PlayerPrefs.GetString("name1");
        b.score = PlayerPrefs.GetInt("score1");
        scoreIndex.Add(b);

        PlayerScore c = new PlayerScore();
        c.name = PlayerPrefs.GetString("name2");
        c.score = PlayerPrefs.GetInt("score2");
        scoreIndex.Add(c);

        PlayerScore d = new PlayerScore();
        d.name = PlayerPrefs.GetString("name3");
        d.score = PlayerPrefs.GetInt("score3");
        scoreIndex.Add(d);

        PlayerScore e = new PlayerScore();
        e.name = PlayerPrefs.GetString("name4");
        e.score = PlayerPrefs.GetInt("score4");
        scoreIndex.Add(e);
    }
    
   /// <summary>
   /// Displays and formats the high score.
   /// </summary>
    void DisplayHighScore()
	{

        HighScoreListGUI.text =                         string.Format("1. {0,-12} {1,-7:N0}\n", scoreIndex[0].name, scoreIndex[0].score);
        HighScoreListGUI.text = HighScoreListGUI.text + string.Format("2. {0,-12} {1,-7:N0}\n", scoreIndex[1].name, scoreIndex[1].score);
        HighScoreListGUI.text = HighScoreListGUI.text + string.Format("3. {0,-12} {1,-7:N0}\n", scoreIndex[2].name, scoreIndex[2].score);
        HighScoreListGUI.text = HighScoreListGUI.text + string.Format("4. {0,-12} {1,-7:N0}\n", scoreIndex[3].name, scoreIndex[3].score);
        HighScoreListGUI.text = HighScoreListGUI.text + string.Format("5. {0,-12} {1,-7:N0}",   scoreIndex[4].name, scoreIndex[4].score);
   
    }
    
    /// <summary>
	/// Clearing out the current list of high scores and current score.
    /// </summary>
    public void ClearAll()
    {
        scoreIndex.Clear();
		ScoreManager.Instance.score = 0;
    }
}
