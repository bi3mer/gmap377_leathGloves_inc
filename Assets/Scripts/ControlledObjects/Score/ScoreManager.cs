﻿using UnityEngine;

public class ScoreManager : MonoBehaviour
{
    public string PlayerName;
    public static ScoreManager Instance = null;

    // Delegate to create events with
    public delegate void BoltAction();

    // Events for the warp system to subscribe to
    public static event BoltAction AmountReached, PlayerTeleported;
    
    // initial Multiplier.
    public int multi = 1;
    
	// The player's score.
    public int score = 0;

    // The current bolt count, and the goal to activate the teleporters
    public float BoltCount = 0f,
        BoltGoal = 200f;   
         
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
    
    /// <summary>
    /// Sets the multiplier.
    /// </summary>
    /// <param name="mult">Mult.</param>
    public void SetMultiplier(int mult)
    {
        this.multi *= mult;
        this.multiplierText = "x" + multi.ToString();
    }

    /// <summary>
    /// Decrease the multiplier
    /// </summary>
    /// <param name="mult"></param>
    public void DecreaseMultiplier(int mult)
    {
        this.multi = mult;
        this.multiplierText = "x" + multi.ToString();
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
        if (!PowerUpManager.Instance.Powerups["Shield"].IsActive)
        {
            score -= decreaseAmount;
            PlayerHitImage.Instance.playerHit();
        }
		
    }

    /// <summary>
    /// Gets the name.
    /// </summary>
    /// <returns>The name.</returns>
    public string GetName()
    {
        return ScoreManager.Instance.PlayerName;
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
    /// Add bolts to the BoltCount
    /// </summary>
    /// <param name="amount">Amount to add</param>
    public void collectBolt(float amount)
    {
        // Add to the bolt count
        this.BoltCount += amount;

        // If the goal is reached, call event
        if(BoltCount >= BoltGoal)
        {
            AmountReached();
        }
    }

    /// <summary>
    /// Resets the bolt count. Should be used when 
    /// a new planet is traveled to.
    /// </summary>
    public void resetBoltCount()
    {
        this.BoltCount = 0f;

        // Call deactivate event
        PlayerTeleported();
    }
}