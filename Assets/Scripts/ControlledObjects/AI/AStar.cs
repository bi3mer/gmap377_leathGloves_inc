using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class AStar : MonoBehaviour {

	// Use this for initialization
	void Update () 
    {
		print("test: " + VertexNavigation.Instance.getMoves(0).Count);
        //print("---");
        //print("test: " + VertexNavigation.Instance.getMoves(2).Count);
        //print("---");
        //print("test: " + VertexNavigation.Instance.getMoves(3).Count);
        //Debug.Break();
	}
}
