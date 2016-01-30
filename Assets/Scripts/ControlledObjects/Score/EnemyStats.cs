using UnityEngine;

public class EnemyStats : MonoBehaviour
{
    public int startingHealth = 100;        // The amount of health the enemy starts the game with.
    public int currentHealth;               // The current health the enemy has.

    public int BoltDropAmount = 5;
    public GameObject Bolt;
    public int scoreValue = 100;           // The amount added to the player's score when the enemy dies.
    public GameObject Drop1, Drop2, Drop3, Drop4;
    public int DropChance = 25;
    public float offset = 1;

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
            int type = drop.Next(4);
            switch (type)
            {
                case 0:
                    Instantiate(Drop1, new Vector3(transform.position.x, transform.position.y + offset, transform.position.z), transform.rotation);
                    break;
                case 1:
                    Instantiate(Drop2, new Vector3(transform.position.x, transform.position.y + offset, transform.position.z), transform.rotation);
                    break;
                case 2:
                    Instantiate(Drop3, new Vector3(transform.position.x, transform.position.y + offset, transform.position.z), transform.rotation);
                    break;
                case 3:
                    Instantiate(Drop4, new Vector3(transform.position.x, transform.position.y + offset, transform.position.z), transform.rotation);
                    break;
            }
        }

        for (int i = 0; i < this.BoltDropAmount; ++i)
        {
            Instantiate(Bolt, transform.position, transform.rotation);
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