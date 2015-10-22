using UnityEngine;
using System.Collections;

public class Shooting : MonoBehaviour {
    
	// Use this for initialization
	void Start () {
        

    }
    public Transform character;

    public GameObject bullet; 
    public GameObject spwnPt;

    void Update()
    {
        if (Input.GetMouseButtonDown(0))
        { // only do anything when the button is pressed:
            Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
            RaycastHit hit;
            if (Physics.Raycast(ray, out hit))
            {
                Debug.DrawLine(character.position, hit.point);

                GameObject newBullet= Instantiate(bullet, spwnPt.transform.position, transform.rotation) as GameObject;
                newBullet.GetComponent<Rigidbody>().velocity = ((hit.point - transform.position).normalized * GetComponent<Weapon>().Speed)  ;

                //GameObject projectiles = Instantiate(bullet, spwnPt.transform.position, character.transform.rotation) as GameObject;
                //projectiles.GetComponent<Rigidbody>().velocity = (hit.point - transform.position).normalized * 10;
            }
        }
    }
    
}
