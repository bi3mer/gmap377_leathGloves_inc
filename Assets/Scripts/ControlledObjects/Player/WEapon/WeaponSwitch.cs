using UnityEngine;
using System.Collections;

public class WeaponSwitch : MonoBehaviour {

    PickupCache cache;

    void Start()
    {
        cache = GetComponent<PickupCache>();
    }

    void Update()
    {
        if (InputManager.Player2HorizontalInput < 0 || Input.GetKeyDown(KeyCode.Alpha1))
        {
            Debug.Log("Weapon Switch Default Laser");
            GetComponent<Shooting>().bullet = cache.Laser;
        }
        if (InputManager.Player2HorizontalInput > 0 || Input.GetKeyDown(KeyCode.Alpha2))
        {
            Debug.Log("Weapon Switch Rocket");
            if (cache.Rocket.GetComponent<Weapon>().ammo > 0)
            {
                GetComponent<Shooting>().bullet = cache.Rocket;
            }
        }
        if (InputManager.Player2VerticalInput > 0 || Input.GetKeyDown(KeyCode.Alpha3))
        {
            Debug.Log("Weapon Switch Laser Beam");
            if (cache.LaserBeam.GetComponent<Weapon>().ammo > 0)
            {
                GetComponent<Shooting>().bullet = cache.LaserBeam;
            }
        }
        if (InputManager.Player2VerticalInput < 0 || Input.GetKeyDown(KeyCode.Alpha4))
        {
            if (cache.Mine.GetComponent<Weapon>().ammo > 0)
            {
                GetComponent<Shooting>().bullet = cache.Mine; 
            }
        }
    }
}
