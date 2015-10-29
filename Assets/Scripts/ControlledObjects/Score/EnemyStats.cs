using UnityEngine;

public class EnemyStats : MonoBehaviour
{
    public int startingHealth = 100;          // The amount of health the enemy starts the game with.
    public int currentHealth;                    // The current health the enemy has.
   
    public int scoreValue = 10;               // The amount added to the player's score when the enemy dies.
   

   
    Collider eCollider;                         // Reference to the collider.
    bool isDead;                                  // Whether the enemy is dead.
   

    void Awake()
    {
       
        eCollider = GetComponent<Collider>();

        // Setting the current health when the enemy first spawns.
        currentHealth = startingHealth;
    }

    void Update()
    {
        // If the enemy 
        if (isDead)
        {
            // Increase the score by the enemy's score value.
            ScoreManager.Instance.IncreaseScore(scoreValue);
            Destroy(gameObject);
        }

    }

    public void TakeDamage(int amount)
    {
        // If the enemy is dead...
        if (isDead)
            // ... no need to take damage so exit the function.
            return;

       

        // Reduce the current health by the amount of damage sustained.
        currentHealth -= amount;

       

        // If the current health is less than or equal to zero...
        if (currentHealth <= 0)
        {
            // ... the enemy is dead.
            Death();
        }
    }

    void Death()
    {
        // The enemy is dead.
        isDead = true;

        

    }
}