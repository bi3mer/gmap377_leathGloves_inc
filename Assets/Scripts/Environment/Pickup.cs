using UnityEngine;
using System.Collections;

public class Pickup : MonoBehaviour
{
    // Specifies the type of pickup it is
    public int PickupType;

    // A template for the action the pickup will have on the player
    delegate void template(GameObject obj);

    // The array that holds the different actions
    private template[] Type;
    private PickupCache cahce;

    void Start()
    {
        // When adding a new pickup type, don't forget to add 1 to the size of the array
        this.Type = new template[4];

        this.cahce = GetComponent<PickupCache>();
        // A function to initialize the array
        this.initializePickupTypes();
    }

    /// <summary>
    /// What happens when this object collides with something
    /// </summary>
    /// <param name="obj">The object it collided with</param>
    void OnTriggerEnter(Collider obj)
    {
        if (obj.gameObject.tag == "Player")
        {
            Destroy(this.gameObject);

            // Activate the pickup type
            this.Type[this.PickupType](obj.gameObject);
        }
    }

    /// <summary>
    /// Initializes the template array. If a new pickup needs to be added, create it here.
    /// </summary>
    private void initializePickupTypes()
    {
        // Example pickup type one
        template pickupOne = (obj) =>
        {
            if (obj.gameObject.GetComponent<Shooting>() != null)
            {
                obj.gameObject.GetComponent<Shooting>().bullet = GetComponent<PickupCache>().Rocket;
                GetComponent<PickupCache>().Rocket.GetComponent<Weapon>().ammo += 5;

                //Set Gui to current weapon
                WeaponDisplayController.Instance.AllOff();
                WeaponDisplayController.Instance.rocketsOn.enabled = true;
            }
        };

        // Example pickup type 2
        template pickupTwo = (obj) =>
        {
            if (obj.gameObject.GetComponent<Shooting>() != null)
            {
                obj.gameObject.GetComponent<Shooting>().bullet = GetComponent<PickupCache>().LaserBeam;
                GetComponent<PickupCache>().LaserBeam.GetComponent<Weapon>().ammo += 3;

                //Set Gui to current weapon
                WeaponDisplayController.Instance.AllOff();
                WeaponDisplayController.Instance.beamOn.enabled = true;
            }
        };
        // Example pickup type 3
        template pickupThree = (obj) =>
        {
            GameObject multi = new GameObject();
            multi.AddComponent<ScoreMulti>();
        };

        // Mine Pickup
        template minePickup = (obj) =>
        {
            if (obj.gameObject.GetComponent<Shooting>() != null)
            {
                obj.gameObject.GetComponent<Shooting>().bullet = GetComponent<PickupCache>().Mine;
                GetComponent<PickupCache>().Mine.GetComponent<Weapon>().ammo += 3;

                //Set Gui to current weapon
                WeaponDisplayController.Instance.AllOff();
                WeaponDisplayController.Instance.mineOn.enabled = true;
            }
        };


        // Add them to the array
        this.Type[0] = pickupOne;
        this.Type[1] = pickupTwo;
        this.Type[2] = pickupThree;
        this.Type[3] = minePickup;
    }
}
