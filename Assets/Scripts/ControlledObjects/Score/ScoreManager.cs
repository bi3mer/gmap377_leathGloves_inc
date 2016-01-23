using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class ScoreManager : MonoBehaviour
{
    public string PlayerName;
    public static ScoreManager Instance = null;
    
    // initial Multiplier.
    public int multi = 1;
    
	// The player's score.
    public int score = 0;   
         
    public string multiplierText;

    /// <summary>
    /// Awake this instance.
    /// </summary>
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

        multiplierText = "x" + multi.ToString();
        // Reset the score.
        score = 0;
        
        DontDestroyOnLoad(ScoreManager.Instance);
    }


    void Update()
    {
        this.multiplierText = "x" + multi.ToString();
    }
    
    /// <summary>
    /// Sets the multiplier.
    /// </summary>
    /// <param name="mult">Mult.</param>
    public void SetMultiplier(int mult)
    {
        this.multi = mult;
    }
    
    /// <summary>
    /// Increases the score.
    /// </summary>
    /// <param name="increaseAmount">Increase amount.</param>
   public void IncreaseScore(int increaseAmount)
    {
        score += increaseAmount * multi;
    }
    
    /// <summary>
    /// Decreases the score.
    /// </summary>
    /// <param name="decreaseAmount">Decrease amount.</param>
    public void DecreaseScore(int decreaseAmount)
    {
        if (!PowerUpManager.Instance.isShield())
        {
            score -= decreaseAmount;
            PlayerHitImage.Instance.playerHit();
        }
		
    }

	/// <summary>
	/// Sets the name.
	/// </summary>
	/// <param name="PlayerName">Player name.</param>
	public void SetName(string PlayerName)
   	{
   		ScoreManager.Instance.PlayerName = PlayerName;
   	}
   
   /// <summary>
   /// Gets the name.
   /// </summary>
   /// <returns>The name.</returns>
   public string GetName()
   {
       return ScoreManager.Instance.PlayerName;
   }
}