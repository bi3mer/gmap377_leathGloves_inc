using UnityEngine;
using System.Collections;

public class Shake : MonoBehaviour {
    public float shakeS;
    public float sizeX;
    public float sizeY;
    public float sizeZ;
    public float offsetT;
    private float sin = 0;
    private bool waitC = false;
    float tempTime = 0;
  
    void Update()
    {
        WaitTime();
    }

    void ShakeX()
    {
        transform.Translate((Mathf.Sin(sin) * (Time.deltaTime * sizeX)), 0, 0);
    }
    void ShakeY()
    {
        transform.Translate(0, (Mathf.Sin(sin) * (Time.deltaTime * sizeY)), 0);
    }
    void ShakeZ()
    {
        transform.Translate(0, 0, (Mathf.Sin(sin) * (Time.deltaTime * sizeZ)));
    }
    void WaitTime()
    {
        if(tempTime <= offsetT && waitC == false)
        {
            tempTime += Time.deltaTime;
            if (tempTime >= offsetT)
            {
                waitC = true;
            }
        }
        if(waitC == true)
        {
            sin += Time.deltaTime * shakeS;

            ShakeY();
            ShakeX();
            ShakeZ();
        }
    }


}
