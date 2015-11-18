using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class WeaponDisplayController : MonoBehaviour {
    public static WeaponDisplayController Instance = null;
    public Image dLaserOn;
    public Image beamOn;
    public Text beamAmmo;
    public Image mineOn;
    public Text mineAmmo;
    public Image rocketsOn;
    public Text rocketAmmo;


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


    // Update is called once per frame
    void Update ()
    {
	
	}

    public void ChangeAmmo()
    {

    }

    public void AllOff()
    {
        dLaserOn.enabled = false;
        beamOn.enabled = false;
        mineOn.enabled = false;
        rocketsOn.enabled = false;
    }
}
