using UnityEngine;
using UnityEngine.UI;

public class WeaponDisplayController : MonoBehaviour
{
    public CursorMode cursorMode = CursorMode.ForceSoftware;
    public Vector2 hotSpot = new Vector2(-58,-58);
    
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

    public static WeaponDisplayController Instance = null;

    void Awake()
    {
        if (Instance)
        {
            Destroy(this);
        }
        else
        {
            Instance = this;
        }
    }

    // TODO: Make this more efficient
    // Update is called once per frame
    void Update ()
    {
        ChangeAmmo();
	}

    /// <summary>
    /// Changes GUI to represent current ammo.
    /// </summary>
    public void ChangeAmmo()
    {

        this.beamAmmo.text = PickupCache.Instance.LaserBeam.GetComponent<Weapon>().ammo.ToString();
        this.rocketAmmo.text = PickupCache.Instance.Rocket.GetComponent<Weapon>().ammo.ToString();
        this.mineAmmo.text = PickupCache.Instance.Mine.GetComponent<Weapon>().ammo.ToString();

    }
    /// <summary>
    /// Clears all ammo.
    /// </summary>
    public void ZeroOutAmmo()
    {
        PickupCache.Instance.LaserBeam.GetComponent<Weapon>().ammo = 0;
        PickupCache.Instance.Rocket.GetComponent<Weapon>().ammo = 0;
        PickupCache.Instance.Mine.GetComponent<Weapon>().ammo = 0;
    }

    /// <summary>
    /// Turns off all weapons gui.
    /// </summary>
    public void AllOff()
    {
        this.dLaserOn.enabled = false;
        this.beamOn.enabled = false;
        this.mineOn.enabled = false;
        this.rocketsOn.enabled = false;
    }

    /// <summary>
    /// To change the cursor image.
    /// </summary>
    /// <param name="type"></param>
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
