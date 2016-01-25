using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class WeaponDisplayController : MonoBehaviour {
    public CursorMode cursorMode = CursorMode.Auto;
    public Vector2 hotSpot = Vector2.zero;
    public static WeaponDisplayController Instance = null;
    PickupCache cache;
    public Image dLaserOn;
    public Texture2D dLaserC;

    public Image beamOn;
    public Text beamAmmo;
    public Texture2D beamC;


    public Image mineOn;
    public Text mineAmmo;
    public Texture2D mineC;

    public Image rocketsOn;
    public Text rocketAmmo;
    public Texture2D rocketC;


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
    public void ChangeCursor(string type)
    {
        switch (type)
        {
            case "laser":
                     Cursor.SetCursor(dLaserC, hotSpot, cursorMode);
                break;
            case "rocket":
                Cursor.SetCursor(rocketC, hotSpot, cursorMode);
                break;
            case "mine":
                Cursor.SetCursor(mineC, hotSpot, cursorMode);
                break;
            case "beam":
                Cursor.SetCursor(beamC, hotSpot, cursorMode);
                break;
            default:
                break;
        }
       
    }
}
