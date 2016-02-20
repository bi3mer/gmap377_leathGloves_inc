using UnityEngine;
using System.Collections;

public class PickupCache : MonoBehaviour 
{

    public static PickupCache Instance = null;

    // Holds the weapons to be used in the Pickup.cs script
    public GameObject Laser, Rocket, LaserBeam, Multipler, Mine;

    void Awake()
    {
        if(Instance == null)
        {
            Instance = this;
            SystemLogger.write("Pickup Cache Instantiated On: " + this.gameObject.name);
        }
        else
        {
            Destroy(this);
        }
    }
}
