using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class ScoreManager : MonoBehaviour
{
    public string PlayerName;
    public static ScoreManager Instance = null;
    public int multi = 1;
    public int score;        // The player's score.
    public Text multiplierText;

    Text text;                      // Reference to the Text component.

    
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

        if (GetComponent<Text>() != null)
        {
            // Set up the reference.
            text = GetComponent<Text>();
        }

        // Reset the score.
        score = 0;
        DontDestroyOnLoad(ScoreManager.Instance);
    }


    void Update()
    {
        if (text != null)
        {
            Debug.Log("Score is not null");
            text.text = "Score: " + ScoreManager.Instance.score; // Set the displayed text to be the word "Score" followed by the score value.
        }
        else
        {
            Debug.Log("Score is NULL OH FUCK THAT SHIT IS FUCKED ");
            text = GetComponent<Text>();
        }
        
    }
    public void SetMultiplier(int mult)
    {
        this.multi = mult;
    }
   public void IncreaseScore(int increaseAmount)
    {
        score += increaseAmount * multi;
    }

   public void SetName(string PlayerName)
   {
       ScoreManager.Instance.PlayerName = PlayerName;
   }

   public string GetName()
   {
       return ScoreManager.Instance.PlayerName;
   }
}