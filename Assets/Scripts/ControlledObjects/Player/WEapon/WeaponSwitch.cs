using UnityEngine;
using System.Collections;

public class WeaponSwitch : MonoBehaviour {

	PickupCache cache;

    /// <summary>
    /// Used to initialize the cache
    /// </summary>
    void Start()
    {
        cache = PickupCache.Instance;
    }

    /// <summary>
    /// Called every frame. Checks to see if a weapon switch has occured
    /// </summary>
    void Update()
    {
        // If player 2 pushes up on the dpad, or presses '1' on the keyboard, switch to the default laser
        if (InputManager.Player2VerticalInput > 0 || Input.GetKeyDown(KeyCode.Alpha1))
        {
            SystemLogger.write("Weapon Switch: Default Laser");
            //Set Gui to current weapon
            WeaponDisplayController.Instance.AllOff();
            WeaponDisplayController.Instance.dLaserOn.enabled = true;
            WeaponDisplayController.Instance.ChangeCursor("laser");
            GetComponent<Shooting>().bullet = cache.Laser;
            
        }

        // If player 2 pushes left on the dpad, or presses '2' on the keyboard, switch to the rocket
        if (InputManager.Player2HorizontalInput < 0 || Input.GetKeyDown(KeyCode.Alpha2))
        {
            // If there's ammo
            if (cache.Rocket.GetComponent<Weapon>().ammo > 0)
            {
                SystemLogger.write("Weapon Switch: Rocket");
                // Set Gui to current weapon
                WeaponDisplayController.Instance.AllOff();
                WeaponDisplayController.Instance.rocketsOn.enabled = true;
                WeaponDisplayController.Instance.ChangeCursor("rocket");
                GetComponent<Shooting>().bullet = cache.Rocket;
                
            }
        }

        // If player 2 pushes right on the dpad, or presses '3' on the keyboard, switch to the laser beam
        if (InputManager.Player2HorizontalInput > 0 || Input.GetKeyDown(KeyCode.Alpha3))
        {
            // If there's ammo
            if (cache.LaserBeam.GetComponent<Weapon>().ammo > 0)
            {
                SystemLogger.write("Weapon Switch: Laser Beam");
                // Set Gui to current weapon
                WeaponDisplayController.Instance.AllOff();
                WeaponDisplayController.Instance.beamOn.enabled = true;
                WeaponDisplayController.Instance.ChangeCursor("beam");
                GetComponent<Shooting>().bullet = cache.LaserBeam;
               
            }
        }

        // If player 2 pushes down on the dpad, or presses '4' on the keyboard, switch to the mine
        if (InputManager.Player2VerticalInput < 0 || Input.GetKeyDown(KeyCode.Alpha4))
        {
            // If there's ammo
            if (cache.Mine.GetComponent<Weapon>().ammo > 0)
            {
                SystemLogger.write("Weapon Switch: Mine");
                // Set Gui to current weapon
                WeaponDisplayController.Instance.AllOff();
                WeaponDisplayController.Instance.mineOn.enabled = true;
                WeaponDisplayController.Instance.ChangeCursor("mine");
                GetComponent<Shooting>().bullet = cache.Mine;
            }
        }
    }
}
