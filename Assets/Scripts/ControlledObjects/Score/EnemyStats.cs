using UnityEngine;

public class EnemyStats : MonoBehaviour
{
    public int startingHealth = 100;        // The amount of health the enemy starts the game with.
    public int currentHealth;               // The current health the enemy has.

    public int BoltDropAmount = 5;
    public GameObject Bolt;
    public int scoreValue = 100;           // The amount added to the player's score when the enemy dies.
    public int DropChance = 25;
    public float offset = 1;
    public float Scatter = 0.01f;
    public int ScatterMin = -5;
    public int ScatterMax = 5;
    public GameObject[] Drops;
    public GameObject HitEffect;

    private System.Random drop;
    bool isDead;                           // Whether the enemy is dead.

    void Awake()
    {

        this.drop = new System.Random();

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
            DestroySelf();
        }

    }

    public void TakeDamage(int amount)
    {
        // If the enemy is dead...
        if (isDead)
        {
            // ... no need to take damage so exit the function.
            return;
        }
            
        // Reduce the current health by the amount of damage sustained.
        currentHealth -= amount;
        if (HitEffect)
        {
            Instantiate(this.HitEffect, this.transform.position, Quaternion.identity);
        }

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
        int chance = drop.Next(100);
        if (this.DropChance > chance)
        {
            if (Drops.Length > 0)
            {
                int type = drop.Next(this.Drops.Length - 1);

                if (this.Drops[type])
                {
                    Instantiate(Drops[type], new Vector3(transform.position.x, transform.position.y, transform.position.z), transform.rotation);
                }
            }
        }

        // Used to scatter the bolts
        System.Random rand = new System.Random();
        Vector3 boltOffset;

        for (int i = 0; i < this.BoltDropAmount; ++i)
        {
            // Move the position of the bolt a little so they're not all overlapping
            boltOffset = new Vector3(
                (float)rand.Next(ScatterMin, ScatterMax) * Scatter,
                (float)rand.Next(ScatterMin, ScatterMax) * Scatter,
                (float)rand.Next(ScatterMin, ScatterMax) * Scatter);

            // Create the bolt
            Instantiate(Bolt, transform.position + boltOffset, transform.rotation);
            SystemLogger.write("Bolt Created");
        }
    }
    public virtual void MakeExplosion()
    {
        Vector3 explosionPosition = new Vector3(this.transform.position.x, this.transform.position.y, this.transform.position.z);
        Instantiate(ParticleHolder.Instance.enemySimpleExplosion, explosionPosition, Quaternion.identity);
    }

    public void DestroySelf()
    {
        MakeExplosion();
        
        Destroy(this.gameObject);            // delete self
    }

    public void OnDestroy() {
        if (SpawnSystem.Instance) {
            SpawnSystem.Instance.RegisterEnemyDeath();
        }
    }
}