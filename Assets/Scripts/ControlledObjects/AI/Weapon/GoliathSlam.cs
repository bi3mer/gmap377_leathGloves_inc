using UnityEngine;
using System.Collections;

public class GoliathSlam : MonoBehaviour {

    public int goliathSlamDamage;
    public float knockbackStrength;

    private Rigidbody playerRigidbody;

    void Start()
    {
        playerRigidbody = Player.Instance.GetComponent<Rigidbody>();
    }

    void OnCollisionEnter(Collision obj)
    {
        if (obj.gameObject.CompareTag("Player"))
        {
            ScoreManager.Instance.score -= goliathSlamDamage;
            //playerRigidbody.AddExplosionForce(knockbackStrength, Player.Instance.transform.position + Player.Instance.transform.forward, 1f);
            playerRigidbody.AddForce(-Player.Instance.transform.forward * knockbackStrength, ForceMode.Impulse);
        }
    }
}
