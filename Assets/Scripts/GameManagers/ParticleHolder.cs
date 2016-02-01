using UnityEngine;

public class ParticleHolder : MonoBehaviour
{
    public static ParticleHolder Instance = null;
    public GameObject enemySimpleExplosion;

    /// <summary>
    /// called at awake.
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
    }
}
