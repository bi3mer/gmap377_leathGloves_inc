using UnityEngine;
using UnityEngine.UI;

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
        BoltGoal = 150f;   
         
    public string multiplierText;
	public Text BoltTxt;

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
            SystemLogger.write("Score Manager attached to: " + this.gameObject.name);
        }

       
        // Reset the score.
        score = 0;
		SetName ();
        DontDestroyOnLoad(ScoreManager.Instance);
    }
    
    /// <summary>
    /// Sets the multiplier.
    /// </summary>
    /// <param name="mult">Mult.</param>
    public void SetMultiplier(int mult)
    {
        SystemLogger.write("Score multiplier set");
        this.multi *= mult;
        this.multiplierText = "x" + multi.ToString();
    }

    /// <summary>
    /// Decrease the multiplier
    /// </summary>
    /// <param name="mult"></param>
    public void DecreaseMultiplier(int mult)
    {
        SystemLogger.write("Score Multiplier Decreased");
        this.multi = mult;
        this.multiplierText = "x" + multi.ToString();
    }
    
    /// <summary>
    /// Increases the score.
    /// </summary>
    /// <param name="increaseAmount">Increase amount.</param>
   public void IncreaseScore(int increaseAmount)
    {
        SystemLogger.write("Score Increased by: " + increaseAmount*multi);
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
            SystemLogger.write("Score Decreased by: " + decreaseAmount);
        }
		
    }

    /// <summary>
    /// Gets the name.
    /// </summary>
    /// <returns>The name.</returns>
    public string GetName()
    {
        SystemLogger.write("");
        return ScoreManager.Instance.PlayerName;
    }

    /// <summary>
    /// Sets the name.
    /// </summary>
    /// <param name="PlayerName">Player name.</param>
    public void SetName()
	{
		PlayerName = SaveSystem.Instance.PlayerID;
		SystemLogger.write("Player Name Set to: " + PlayerName);
        
   	}
  
    /// <summary>
    /// Add bolts to the BoltCount
    /// </summary>
    /// <param name="amount">Amount to add</param>
    public void collectBolt(float amount)
    {
        IncreaseScore(5);
        // Add to the bolt count
        this.BoltCount += amount;
		BoltTxt.text = "Bolt: " + (int)((this.BoltCount / this.BoltGoal) * 100)  + "%";
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
        SystemLogger.write("Bolts Reset");
        this.BoltCount = 0f;
		BoltTxt.text = "Bolt: " + (int)((this.BoltCount / this.BoltGoal) * 100 ) + "%";
        // Call deactivate event
        PlayerTeleported();
    }
}