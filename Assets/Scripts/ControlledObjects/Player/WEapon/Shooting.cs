using UnityEngine;
using System.Collections;

public class Shooting : MonoBehaviour
{    
    /**
     * character - Holds the transform of the player game object.
     * bullet - holds the bullet game object that is being shot.
     * spwnPt - holds the game object where the bullets will be spawned.
     **/
    public Transform character;
    public GameObject bullet, spwnPt;
    public float DistanceFromCamera;
    public const float ZERO = 0f;

    /// <summary>
    /// Called Every Frame
    /// </summary>
    void Update()
    {
        float ammo = bullet.GetComponent<Weapon>().ammo;
        GameObject LaserExists = GameObject.Find("LaserBeam(Clone)");

        // only do anything when the button is pressed
        // If ammo is available, allow it to fire. The default laser starts at -1
        // hence the || ammo < ZERO. 
        // LaserExists checks to make sure a laserbeam is not currently active.
        if ((Input.GetMouseButtonDown(0) || InputManager.Player2Shoot > float.Epsilon) && (ammo > ZERO || ammo < ZERO) && LaserExists == null)
        {
            
            // Bullet being created      
            GameObject newBullet= Instantiate(bullet, spwnPt.transform.position, Quaternion.Euler(Vector3.forward)) as GameObject;
            Vector3 mousePos = new Vector3(Input.mousePosition.x, Input.mousePosition.y, 10000f);
            Vector3 lookPos = Camera.main.ScreenToWorldPoint(mousePos);
            lookPos = lookPos - transform.position;
            newBullet.transform.LookAt(lookPos);

            // Make its velocity go towards the mouse
            // NOTE: The vector being created uses the z field as the depth from the camera
            // to the mouse point. I just made this 10000f so it knows where to go more
            // accurately. It seems fine to me, but if aim fine tuning is needed check here.
            if (newBullet.GetComponent<Rigidbody>() != null)
            {
                newBullet.GetComponent<Rigidbody>().velocity = (Camera.main.ScreenToWorldPoint(
                    new Vector3(
                        Input.mousePosition.x,
                        Input.mousePosition.y,
                        this.DistanceFromCamera
                        )
                    ).normalized * bullet.GetComponent<Weapon>().speed);
            }

            // If there is still ammo left decement it by 1
            if (bullet.GetComponent<Weapon>().ammo > ZERO)
            {
                --bullet.GetComponent<Weapon>().ammo;
                if (bullet.GetComponent<Weapon>().ammo == ZERO)
                {
					this.bullet = GetComponent<PickupCache>().Laser;
                    //Set Gui to current weapon
                    WeaponDisplayController.Instance.AllOff();
                    WeaponDisplayController.Instance.dLaserOn.enabled = true;
                }
            }
        }
    }
}
