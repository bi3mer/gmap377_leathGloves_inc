using UnityEngine;
using System.Collections;

public class AStar : MonoBehaviour {

	// Use this for initialization
	void Update () 
    {
        print(VertexNavigation.Instance.getMoves(0).Count);
        print(VertexNavigation.Instance.getMoves(1).Count);
        print(VertexNavigation.Instance.getMoves(2).Count);
	}
}
