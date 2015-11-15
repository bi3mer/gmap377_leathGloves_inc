using UnityEngine;
using System.Collections;

public class MineLight : MonoBehaviour
{
    public float LightOnIntensity, LightOffIntensity;
    private Light light;
    public float onTime, resetTime;
    private bool on;

    void Start()
    {
        this.light = GetComponent<Light>();
    }

    void Update()
    {
        if (onTime < float.Epsilon)
        {
            if (on)
            {
                this.light.intensity = this.LightOffIntensity;
                this.on = false;
            }
            else
            {
                this.light.intensity = this.LightOnIntensity;
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
