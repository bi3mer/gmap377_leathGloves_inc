using UnityEngine;
using System.Collections;

public class MineLight : MonoBehaviour
{
    public float LightOnIntensity, LightOffIntensity;
    private Light mineLight;
    public float onTime, resetTime;
    private bool on;

    void Start()
    {
        this.mineLight = GetComponent<Light>();
    }

    void Update()
    {
        if (onTime < float.Epsilon)
        {
            if (on)
            {
                this.mineLight.intensity = this.LightOffIntensity;
                this.on = false;
            }
            else
            {
                this.mineLight.intensity = this.LightOnIntensity;
                this.on = true;
            }
            this.onTime = resetTime;
        }
        else
        {
            this.onTime -= Time.deltaTime;
        }
    }
}
