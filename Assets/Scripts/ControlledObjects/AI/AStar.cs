using UnityEngine;
using System.Collections;

public class AStar : MonoBehaviour {

	// Use this for initialization
	void Update () 
    {
		print("test: " + VertexNavigation.Instance.getMoves(0).Count);
		print("---");
		print("test: " + VertexNavigation.Instance.getMoves(40).Count);
		print("---");
		print("test: " + VertexNavigation.Instance.getMoves(200).Count);
		Debug.Break();
	}
}
