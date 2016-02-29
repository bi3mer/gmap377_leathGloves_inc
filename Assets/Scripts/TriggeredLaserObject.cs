using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class TriggeredLaserObject : MonoBehaviour, TriggeredObject {

	public bool on = true;
	public bool loop;

	bool isTriggered;
	Transform[] childObjects;

	// Use this for initialization
	void Start () {
		isTriggered = false;
		childObjects = transform.GetComponentsInChildren<Transform>();
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	public void doAction(TriggerSignalObject trigger)
	{
		Debug.Log (loop);
		if(!isTriggered || loop)
		{
			Debug.Log ("Go again...");
			on = !on;
			switchOnOff (on);

			isTriggered = true;
			trigger.objectFinished (this);
		}
	}

	public void switchOnOff(bool state)
	{
		gameObject.SetActive (state);
		for(int i = 0; i < childObjects.Length; i++)
		{
			childObjects[i].gameObject.SetActive(state);
		}
	}

	public bool getIsTriggered()	
	{
		return isTriggered;
	}

	public void setIsTriggered(bool value)
	{
		isTriggered = value;
	}

	public bool getLoop()
	{
		return loop;
	}
}
