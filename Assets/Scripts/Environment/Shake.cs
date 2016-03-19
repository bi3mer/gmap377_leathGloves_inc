using UnityEngine;

public class Shake : MonoBehaviour
{
    public float shakeSize;
    public float sizeX;
    public float sizeY;
    public float sizeZ;
    public float offsetT;
    private float sin = 0;
    private bool waitStart = false;
    float tempTime = 0;

	private Vector3 startPos;
  
    /// <summary>
    /// every frame
    /// </summary>
    void Update()
    {
        WaitTime();
    }

    /// <summary>
    /// shake in the x.
    /// </summary>
    void ShakeX()
    {
        transform.Translate((Mathf.Sin(sin) * (Time.deltaTime * sizeX)), 0, 0);
    }

    /// <summary>
    /// shake in the y
    /// </summary>
    void ShakeY()
    {
        transform.Translate(0, (Mathf.Sin(sin) * (Time.deltaTime * sizeY)), 0);
    }

    /// <summary>
    /// shake in the z
    /// </summary>
    void ShakeZ()
    {
        transform.Translate(0, 0, (Mathf.Sin(sin) * (Time.deltaTime * sizeZ)));
    }

    /// <summary>
    /// time to wait before shake.
    /// </summary>
    void WaitTime()
    {
        if(tempTime <= offsetT && waitStart == false)
        {
            tempTime += Time.deltaTime;
            if (tempTime >= offsetT)
            {
                waitStart = true;
            }
        }

        if(waitStart == true)
        {
            sin += Time.deltaTime * shakeSize;

            ShakeY();
            ShakeX();
            ShakeZ();
        }
    }
}
