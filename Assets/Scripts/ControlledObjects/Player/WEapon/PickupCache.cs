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
        }
        else
        {
            Destroy(this.gameObject);
        }
    }
}
