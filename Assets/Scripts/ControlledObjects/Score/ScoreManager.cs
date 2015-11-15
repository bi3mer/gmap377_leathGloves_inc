using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class ScoreManager : MonoBehaviour
{
    public string PlayerName;
    public static ScoreManager Instance = null;
    public int multi = 1;
    public int score;        // The player's score.
    public string multiplierText;
    public float hitActive, hitTime;

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

        multiplierText = "x" + multi.ToString();
        // Reset the score.
        score = 0;
        this.hitActive = 0f;
        DontDestroyOnLoad(ScoreManager.Instance);
    }


    void Update()
    {
        this.multiplierText = "x" + multi.ToString();
    }
    public void SetMultiplier(int mult)
    {
        this.multi = mult;
    }
   public void IncreaseScore(int increaseAmount)
    {
        score += increaseAmount * multi;
    }
    public void DecreaseScore(int decreaseAmount)
    {
        score -= decreaseAmount;
        hitActive = hitTime;
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