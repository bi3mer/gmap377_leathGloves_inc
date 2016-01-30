using UnityEngine;
using System.Collections;

public class BoltMovement : MonoBehaviour
{
    public float
        Range = 5,
        MoveSpeed = .02f;
    public LayerMask TargetLayer;

    private BoxCollider detectionRange;

    // Use this for initialization
    void Start()
    {
        this.detectionRange = GetComponent<BoxCollider>();
        this.detectionRange.size = new Vector3(this.Range, this.Range, this.Range);
    }

    void Update()
    {
        Collider[] hitColliders = Physics.OverlapSphere(transform.position, this.Range, TargetLayer);

        for (int i = 0; i < hitColliders.Length; ++i)
        {
            moveTowardsPlayer(hitColliders[0].gameObject.transform);
        }
    }

    /**void OnTriggerEnter(Collider obj)
    {
        if (obj.gameObject.tag == "Player")
        {
            moveTowardsPlayer(obj.gameObject.transform);
        }
    }

    void OnTriggerStay(Collider obj)
    {
        if (obj.gameObject.tag == "Player")
        {
            moveTowardsPlayer(obj.gameObject.transform);
        }
    }**/

    public void moveTowardsPlayer(Transform player)
    {
        transform.parent.position = Vector3.MoveTowards(transform.parent.position, player.position, MoveSpeed);
    }
}