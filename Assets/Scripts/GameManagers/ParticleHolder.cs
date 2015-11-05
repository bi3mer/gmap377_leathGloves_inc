using UnityEngine;
using System.Collections;

public class ParticleHolder : MonoBehaviour {
    public static ParticleHolder Instance = null;
    public GameObject enemySimpleExplosion;

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
