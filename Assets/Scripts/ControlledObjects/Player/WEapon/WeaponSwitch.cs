﻿using UnityEngine;
using System.Collections;

public class WeaponSwitch : MonoBehaviour {

	PickupCache cache;

    void Start()
    {
		cache = this.GetComponent<PickupCache>();
    }

    void Update()
    {
        if (InputManager.Player2HorizontalInput < 0 || Input.GetKeyDown(KeyCode.Alpha1))
        {
            //Set Gui to current weapon
            WeaponDisplayController.Instance.AllOff();
            WeaponDisplayController.Instance.dLaserOn.enabled = true;
            WeaponDisplayController.Instance.ChangeCursor("laser");
            GetComponent<Shooting>().bullet = cache.Laser;
            
        }

        if (InputManager.Player2HorizontalInput > 0 || Input.GetKeyDown(KeyCode.Alpha2))
        {
            if (cache.Rocket.GetComponent<Weapon>().ammo > 0)
            {
                //Set Gui to current weapon
                WeaponDisplayController.Instance.AllOff();
                WeaponDisplayController.Instance.rocketsOn.enabled = true;
                WeaponDisplayController.Instance.ChangeCursor("rocket");
                GetComponent<Shooting>().bullet = cache.Rocket;
                
            }
        }
        if (InputManager.Player2VerticalInput > 0 || Input.GetKeyDown(KeyCode.Alpha3))
        {
            if (cache.LaserBeam.GetComponent<Weapon>().ammo > 0)
            {
                //Set Gui to current weapon
                WeaponDisplayController.Instance.AllOff();
                WeaponDisplayController.Instance.beamOn.enabled = true;
                WeaponDisplayController.Instance.ChangeCursor("beam");
                GetComponent<Shooting>().bullet = cache.LaserBeam;
               
            }
        }
        if (InputManager.Player2VerticalInput < 0 || Input.GetKeyDown(KeyCode.Alpha4))
        {
            if (cache.Mine.GetComponent<Weapon>().ammo > 0)
            {
                //Set Gui to current weapon
                WeaponDisplayController.Instance.AllOff();
                WeaponDisplayController.Instance.mineOn.enabled = true;
                WeaponDisplayController.Instance.ChangeCursor("mine");
                GetComponent<Shooting>().bullet = cache.Mine;
                
            }
        }

    }
}
