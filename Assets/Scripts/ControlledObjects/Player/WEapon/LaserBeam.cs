using UnityEngine;
using System.Collections;

public class LaserBeam : MonoBehaviour
{
    private LineRenderer line;
    float length;
    Vector3 position;

    void Start()
    {
        length = 1f;
        line = GetComponent<LineRenderer>();
        line.SetPosition(0, transform.position);
        
        line.SetPosition(1, Camera.main.ScreenToWorldPoint(
                    new Vector3(
                        Input.mousePosition.x,
                        Input.mousePosition.y,
                        length
                    )
                    ));
        this.position = new Vector3(
                        Input.mousePosition.x,
                        Input.mousePosition.y,
                        length
                    );
    
    }

    void Update()
    {
        length = length + 10f * Time.deltaTime;
        line.SetPosition(0, GameObject.Find("Player").transform.position);
        line.SetPosition(1, Camera.main.ScreenToWorldPoint(
                    new Vector3(
                        position.x,
                        position.y,
                        length
                    )
                    ));
        RaycastHit[] hit;
        hit =
        Physics.RaycastAll(
                    this.transform.position,
                    Camera.main.ScreenToWorldPoint(
                    new Vector3(
                        Input.mousePosition.x,
                        Input.mousePosition.y,
                        10000f
                    )
                ),
                length
            );
        foreach (RaycastHit x in hit)
        {
            if (x.transform.gameObject.tag == "Enemy")
            {
                EnemyStats enemyHealth = x.transform.gameObject.GetComponent<EnemyStats>();
                if (enemyHealth != null)
                {
                    // ... the enemy should take damage.
                    enemyHealth.TakeDamage((int)this.GetComponent<Weapon>().Damage);
                }
            }
        }
    }

}