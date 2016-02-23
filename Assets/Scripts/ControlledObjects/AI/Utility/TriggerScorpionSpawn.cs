using UnityEngine;

public class TriggerScorpionSpawn : MonoBehaviour
{
    public ScorpionController scorpion;

    void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            // Spawn boss
            this.scorpion.Spawn();

            // Destroy self
            Destroy(this.gameObject);
        }
    }
}
