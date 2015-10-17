using UnityEngine;
using System.Collections;

public class RotateOnAxis : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}

    public float rotationS;
    void Update()
    {
        transform.RotateAround(transform.position, transform.up, Time.deltaTime * rotationS);
        
    }
}
