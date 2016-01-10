using UnityEngine;
using System.Collections;

public class Laserbeam_Parentpicker : MonoBehaviour {

	// Use this for initialization
	void Start () {
        transform.parent = GameObject.Find("BulletSpawn").transform;
	}
}
