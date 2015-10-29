using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class ScoreManager : MonoBehaviour
{
    public static ScoreManager Instance = null;
    public static int multi = 1;
    public static int score;        // The player's score.


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
        // Set up the reference.
        text = GetComponent<Text>();

        // Reset the score.
        score = 0;
    }


    void Update()
    {
        
        text.text = "Score: " + score; // Set the displayed text to be the word "Score" followed by the score value.
        
    }

   public void IncreaseScore(int increaseAmount)
    {
        score += increaseAmount * multi;
    }
}