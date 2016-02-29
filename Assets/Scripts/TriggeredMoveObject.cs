using UnityEngine;
using System.Collections;
using DG.Tweening;
using System.Collections.Generic;

public class TriggeredMoveObject : MonoBehaviour, TriggeredObject {

	[Tooltip("List of gameobjects that contain the transform and rotation that the object should reach. Will be set off in order if Sequentially is true.")]
	public List<GameObject> wayPoints;
	[Tooltip("List of ints that specifies how long it should take to move to the desired position and rotation.")]
	public List<int> wayPointSpeeds;

	[Tooltip("Can this tween be used again after it has finished triggering?")]
	public bool loop;
	
	public float startDelay;
	public float endDelay;

	Vector3 startingLocation;
	Vector3 startingRotation;

	bool isTriggered;

	// Use this for initialization
	void Start () {
		startingLocation = transform.position;
		startingRotation = transform.eulerAngles;
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	public void doAction(TriggerSignalObject trigger)
	{
		Sequence sequence = DOTween.Sequence ();
		isTriggered = true;

		for(int i = 0; i < wayPoints.Count; i++)
		{
			sequence.Append(transform.DOMove(wayPoints[i].transform.position, wayPointSpeeds[i]));
			sequence.Join(transform.DORotate (wayPoints[i].transform.eulerAngles, wayPointSpeeds[i]));
		}

		
		sequence.PrependInterval (startDelay);
		sequence.AppendInterval (endDelay);

		if (loop) {

			for(int i = wayPoints.Count - 2; i >= 0; i--)
			{
				sequence.Append(transform.DOMove(wayPoints[i].transform.position, wayPointSpeeds[i + 1]));
				sequence.Join(transform.DORotate (wayPoints[i].transform.eulerAngles, wayPointSpeeds[i + 1]));
			}

			sequence.Append(transform.DOMove(startingLocation, wayPointSpeeds[0]));
			sequence.Join(transform.DORotate (startingRotation, wayPointSpeeds[0]));
		}

		sequence.OnComplete (() => {trigger.objectFinished (this);});

		sequence.Play ();
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
