using UnityEngine;
using System.Collections;

public class RotateOnAxis : MonoBehaviour {
public float rotationS;
	// Use this for initialization
	void Start () {
	
	}

    
    void Update()
    {
        transform.RotateAround(transform.position, transform.up, Time.deltaTime * rotationS);
        
    }
}
