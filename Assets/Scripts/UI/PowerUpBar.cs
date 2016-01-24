using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class PowerUpBar : MonoBehaviour
{
    public Image pUBar;
    public bool isActive = false;
    public float activeTime;
    internal bool IsActive;


    // Use this for initialization
    void OnEnable ()
    {
        pUBar.enabled = true;
        pUBar.fillAmount = 1.0f;
        
        isActive = true;
        StartCoroutine(PowerUpDepletion());
    }
	
    /// <summary>
    ///  reduces powerup bar
    /// </summary>
    /// <returns></returns>
    IEnumerator PowerUpDepletion()
    {
        while (isActive)
        {   
            //Reduce fill amount over activeTime seconds
            pUBar.fillAmount -= 1.0f / activeTime * Time.deltaTime;
           
            if (pUBar.fillAmount <= 0)
            {
                isActive = false;           
            }
            yield return null;
        }
        GetComponent<PowerUpBar>().enabled = false;
    }
    /// <summary>
    /// Activates power up bar script and resets size 
    /// </summary>
    public void activate()
    {
        GetComponent<PowerUpBar>().enabled = true;
        GetComponent<PowerUpBar>().pUBar.fillAmount = 1.0f;
    }
}
