using UnityEngine;
using System.Collections;

public class Laser : MonoBehaviour {

    private LineRenderer laser;
	// Use this for initialization
	void Start () {
        this.laser = GetComponent<LineRenderer>();
	}
	
	// Update is called once per frame
	void Update () {
	    
	}
}
