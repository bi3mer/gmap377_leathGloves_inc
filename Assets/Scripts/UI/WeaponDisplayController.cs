using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class WeaponDisplayController : MonoBehaviour {
    public static WeaponDisplayController Instance = null;
    PickupCache cache;
    public Image dLaserOn;

    public Image beamOn;
    public Text beamAmmo;
    

    public Image mineOn;
    public Text mineAmmo;

    public Image rocketsOn;
    public Text rocketAmmo;


    void Awake()
    {
		cache = this.GetComponent<PickupCache>();
        if (Instance)
        {
            Destroy(this);
        }
        else
        {
            Instance = this;
        }
    }

    // Update is called once per frame
    void Update ()
    {
        ChangeAmmo();
	}

    public void ChangeAmmo()
    {
        beamAmmo.text = this.cache.LaserBeam.GetComponent<Weapon>().ammo.ToString();
        rocketAmmo.text = this.cache.Rocket.GetComponent<Weapon>().ammo.ToString();
        mineAmmo.text = this.cache.Mine.GetComponent<Weapon>().ammo.ToString();

    }
    public void ZeroOutAmmo()
    {
        this.cache.LaserBeam.GetComponent<Weapon>().ammo = 0;
        this.cache.Rocket.GetComponent<Weapon>().ammo = 0;
        this.cache.Mine.GetComponent<Weapon>().ammo = 0;
    }

    public void AllOff()
    {
        dLaserOn.enabled = false;
        beamOn.enabled = false;
        mineOn.enabled = false;
        rocketsOn.enabled = false;
    }
}
