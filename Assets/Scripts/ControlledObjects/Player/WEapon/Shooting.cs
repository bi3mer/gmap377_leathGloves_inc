using UnityEngine;
using System.Collections;

public class Shooting : MonoBehaviour {
    
    public Transform character;

    public GameObject bullet; 
    public GameObject spwnPt;

    /// <summary>
    /// Called Every Frame
    /// </summary>
    void Update()
    {
        // only do anything when the button is pressed
        if (Input.GetMouseButtonDown(0))
        { 
            // Bullet being created      
            GameObject newBullet= Instantiate(bullet, spwnPt.transform.position, transform.rotation) as GameObject;

            // Make its velocity go towards the mouse
            // NOTE: The vector being created uses the z field as the depth from the camera
            // to the mouse point. I just made this 10000f so it knows where to go more
            // accurately. It seems fine to me, but if aim fine tuning is needed check here.
            // - Bryan
            newBullet.GetComponent<Rigidbody>().velocity = (Camera.main.ScreenToWorldPoint(
                new Vector3(
                    Input.mousePosition.x,
                    Input.mousePosition.y,
                    10000f
                    )
                ).normalized * GetComponent<Weapon>().Speed) ;
        }
    }
}
