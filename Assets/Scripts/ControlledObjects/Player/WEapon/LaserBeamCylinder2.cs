using UnityEngine;
using System.Collections;

public class LaserBeamCylinder2 : MonoBehaviour {

    public float GrowthRate = 1.5f, MovementOffset = .1f;

	// Use this for initialization
	void Start () {
       this.GrowthRate = GetComponent<LaserBeamCylinder>().GrowRate;
	}
	
	// Update is called once per frame
	void Update () {
        transform.localPosition = transform.localPosition + Vector3.forward * GrowthRate * MovementOffset * Time.deltaTime;
        
	}
}
