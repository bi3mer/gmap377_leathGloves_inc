using System.Collections;
using UnityEngine;

public class Shooting : MonoBehaviour
{
    const float SHOOTING_DEPTH = 10000f;

    /**
     * character - Holds the transform of the player game object.
     * bullet - holds the bullet game object that is being shot.
     * spwnPt - holds the game object where the bullets will be spawned.
     **/
    public float AutoLaserCooldownTime = 0.2f;
    public Transform character;
    public GameObject bullet, spwnPt, leftSpwn, rightSpwn;
    public float DistanceFromCamera;
    public const float ZERO = 0f;

    /// <summary>
    /// Called Every Frame
    /// </summary>
    void Update()
    {
        float ammo = bullet.GetComponent<Weapon>().ammo;

        // only do anything when the button is pressed
        // If ammo is available, allow it to fire. The default laser starts at -1
        // hence the || ammo < ZERO. 
        // LaserExists checks to make sure a laserbeam is not currently active.
        if ((Input.GetMouseButtonDown(0) /*|| InputManager.Player2Shoot > float.Epsilon*/) && (ammo > ZERO || ammo < ZERO))
        {
            SystemLogger.write("Shot fired");
            if (bullet == PickupCache.Instance.Laser)
            {
                StartCoroutine(AutoLaser());
            }
            else {
                if (PowerUpManager.Instance.CurrentLaserCount < PowerUpManager.Instance.MaxLaserCount)
                {
                    // Bullet being created
                    GameObject newBullet = Instantiate(bullet, spwnPt.transform.position, Quaternion.Euler(Vector3.forward)) as GameObject;
                    /*  RaycastHit target;
                      Ray aim = Camera.main.ScreenPointToRay(Input.mousePosition);
                      if (Physics.Raycast(aim, out target))
                      {
                          Debug.Log("Hit " + target.transform.gameObject.name);
                          newBullet.transform.position = Vector3.Lerp(newBullet.transform.position, target.transform.position, Time.deltaTime * newBullet.GetComponent<Weapon>().speed);
                      }*/

                    // Parent the object to the spawn point if it's a laserbeam
                    if (bullet.gameObject.name == PickupCache.Instance.LaserBeam.gameObject.name)
                    {
                        newBullet.transform.parent = spwnPt.transform;
                        ++PowerUpManager.Instance.CurrentLaserCount;
                    }

                    Vector3 lookPos = Camera.main.ScreenToWorldPoint(new Vector3(Input.mousePosition.x, Input.mousePosition.y, SHOOTING_DEPTH));

                    newBullet.transform.LookAt(lookPos);

                    GameObject leftBullet, rightBullet;

                    // If multishot is active
                    // NOTE: Checked here because the laser beam doesn't have a rigidbody.
                    if (PowerUpManager.Instance.Powerups["Multishot"].IsActive)
                    {
                        // Create the left and right bullets at the appropriate spawn locations
                        leftBullet = Instantiate(bullet, leftSpwn.transform.position, Quaternion.Euler(Vector3.forward)) as GameObject;
                        rightBullet = Instantiate(bullet, rightSpwn.transform.position, Quaternion.Euler(Vector3.forward)) as GameObject;

                        if (bullet.gameObject.name == PickupCache.Instance.LaserBeam.gameObject.name)
                        {
                            ++PowerUpManager.Instance.CurrentLaserCount;
                            ++PowerUpManager.Instance.CurrentLaserCount;
                        }

                        // Make the bullets face the right way
                        leftBullet.transform.LookAt(lookPos);
                        leftBullet.transform.Rotate(new Vector3(0f, -PowerUpManager.Instance.MultiShotAngle, 0f));
                        rightBullet.transform.LookAt(lookPos);
                        rightBullet.transform.Rotate(new Vector3(0f, PowerUpManager.Instance.MultiShotAngle, 0f));

                        // Parent left and right button
                        if (bullet.gameObject.name == PickupCache.Instance.LaserBeam.gameObject.name)
                        {
                            leftBullet.transform.parent = leftSpwn.transform;
                            rightBullet.transform.parent = rightSpwn.transform;
                        }

                        // If they have a rigidbpdy, they're supposed to be shot
                        if (leftBullet.GetComponent<Rigidbody>() != null && rightBullet.GetComponent<Rigidbody>() != null)
                        {
                            // Add velocity to the bullets
                            leftBullet.GetComponent<Rigidbody>().velocity = (Camera.main.ScreenToWorldPoint(
                            new Vector3(
                                Input.mousePosition.x - PowerUpManager.Instance.MultiOffset,
                                Input.mousePosition.y,
                                this.DistanceFromCamera
                                )
                            ).normalized * bullet.GetComponent<Weapon>().speed);

                            rightBullet.GetComponent<Rigidbody>().velocity = (Camera.main.ScreenToWorldPoint(
                            new Vector3(
                                Input.mousePosition.x + PowerUpManager.Instance.MultiOffset,
                                Input.mousePosition.y,
                                this.DistanceFromCamera
                                )
                            ).normalized * bullet.GetComponent<Weapon>().speed);
                        }
                    }


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

                    if (this.bullet.Equals(PickupCache.Instance.Rocket))
                    {
                        Camera.main.GetComponent<CameraShake>().Shake();
                    }

                    // If there is still ammo left decrement it by 1
                    if (bullet.GetComponent<Weapon>().ammo > ZERO)
                    {
                        --bullet.GetComponent<Weapon>().ammo;
                        if (bullet.GetComponent<Weapon>().ammo == ZERO)
                        {
                            this.bullet = PickupCache.Instance.Laser;
                            WeaponDisplayController.Instance.ChangeCursor("laser");
                            //Set Gui to current weapon
                            WeaponDisplayController.Instance.AllOff();
                            WeaponDisplayController.Instance.dLaserOn.enabled = true;
                        }
                    }
                }
            }
        }
    }

    public IEnumerator AutoLaser()
    {
        while (Input.GetMouseButton(0))
        {
            if (bullet == PickupCache.Instance.Laser)
            {
                // Bullet being created
                GameObject newBullet = Instantiate(bullet, spwnPt.transform.position, Quaternion.Euler(Vector3.forward)) as GameObject;

                Vector3 lookPos = Camera.main.ScreenToWorldPoint(new Vector3(Input.mousePosition.x, Input.mousePosition.y, SHOOTING_DEPTH));

                newBullet.transform.LookAt(lookPos);

                GameObject leftBullet, rightBullet;
                if (PowerUpManager.Instance.Powerups["Multishot"].IsActive)
                {
                    // Create the left and right bullets at the appropriate spawn locations
                    leftBullet = Instantiate(bullet, leftSpwn.transform.position, Quaternion.Euler(Vector3.forward)) as GameObject;
                    rightBullet = Instantiate(bullet, rightSpwn.transform.position, Quaternion.Euler(Vector3.forward)) as GameObject;

                    if (bullet.gameObject.name == PickupCache.Instance.LaserBeam.gameObject.name)
                    {
                        ++PowerUpManager.Instance.CurrentLaserCount;
                        ++PowerUpManager.Instance.CurrentLaserCount;
                    }

                    // Make the bullets face the right way
                    leftBullet.transform.LookAt(lookPos);
                    leftBullet.transform.Rotate(new Vector3(0f, -PowerUpManager.Instance.MultiShotAngle, 0f));
                    rightBullet.transform.LookAt(lookPos);
                    rightBullet.transform.Rotate(new Vector3(0f, PowerUpManager.Instance.MultiShotAngle, 0f));

                    // Parent left and right button
                    if (bullet.gameObject.name == PickupCache.Instance.LaserBeam.gameObject.name)
                    {
                        leftBullet.transform.parent = leftSpwn.transform;
                        rightBullet.transform.parent = rightSpwn.transform;
                    }

                    // If they have a rigidbpdy, they're supposed to be shot
                    if (leftBullet.GetComponent<Rigidbody>() != null && rightBullet.GetComponent<Rigidbody>() != null)
                    {
                        // Add velocity to the bullets
                        leftBullet.GetComponent<Rigidbody>().velocity = (Camera.main.ScreenToWorldPoint(
                        new Vector3(
                            Input.mousePosition.x - PowerUpManager.Instance.MultiOffset,
                            Input.mousePosition.y,
                            this.DistanceFromCamera
                            )
                        ).normalized * bullet.GetComponent<Weapon>().speed);

                        rightBullet.GetComponent<Rigidbody>().velocity = (Camera.main.ScreenToWorldPoint(
                        new Vector3(
                            Input.mousePosition.x + PowerUpManager.Instance.MultiOffset,
                            Input.mousePosition.y,
                            this.DistanceFromCamera
                            )
                        ).normalized * bullet.GetComponent<Weapon>().speed);
                    }
                }

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
            }

            yield return new WaitForSeconds(AutoLaserCooldownTime);
        }
    }
}
