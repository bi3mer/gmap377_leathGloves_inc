using UnityEngine;
using System.Collections;

public class CrystalDestruction : MonoBehaviour {

    public GameObject DestructionEffect;

    private EnemyStats enemyStats;

    void Start()
    {
        this.enemyStats = GetComponent<EnemyStats>();
    }

    void OnTriggerEnter(Collider col)
    {
        if (enemyStats)
        {
            if (col.GetComponent<Weapon>())
            {
                enemyStats.TakeDamage((int)col.gameObject.GetComponent<Weapon>().damage);
            }
        }
       
    }

}
