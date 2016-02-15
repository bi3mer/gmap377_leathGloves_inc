using UnityEngine;
using System.Collections;
using DG.Tweening;
using System.Collections.Generic;

public class TriggeredObject : MonoBehaviour {

	[Tooltip("List of gameobjects that contain the transform and rotation that the object should reach. Will be set off in order if Sequentially is true.")]
	public List<GameObject> wayPoints;
	[Tooltip("List of ints that specifies how long it should take to move to the desired position and rotation.")]
	public List<int> wayPointSpeeds;

	[Tooltip("Can this tween be used again after it has finished triggering?")]
	public bool loop;
	
	public float startDelay;
	public float endDelay;

	bool isTriggered;

	// Use this for initialization
	void Start () {
	
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
				sequence.Append(transform.DOMove(wayPoints[i].transform.position, wayPointSpeeds[i]));
				sequence.Join(transform.DORotate (wayPoints[i].transform.eulerAngles, wayPointSpeeds[i]));
			}

		}

		sequence.OnComplete (() => {trigger.objectFinished (this);});

		sequence.Play ();
	}

	public bool IsTriggered
	{
		get
		{
			return isTriggered;
		}
		set
		{
			isTriggered = value;
		}
	}
}
