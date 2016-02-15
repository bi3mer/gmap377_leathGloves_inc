using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using DG.Tweening;

public class MovingObject : MonoBehaviour {

	[Tooltip("List of gameobjects that contain the transform and rotation that the object should reach. Will be set off in order if Sequentially is true.")]
	public List<GameObject> wayPoints;
	[Tooltip("List of ints that specifies how long it should take to move to the desired position and rotation.")]
	public List<int> wayPointSpeeds;

	public float startDelay;
	public float endDelay;

	[Tooltip("All moving objects will continually play. Check if rewind is needed for smooth looping.")]
	public bool rewind;

	Vector3 startingLocation;
	Vector3 startingRotation;

	// Use this for initialization
	void Start () {
		startingLocation = transform.position;
		startingRotation = transform.eulerAngles;
		setUpAction ();
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	public void setUpAction()
	{
		Sequence sequence = DOTween.Sequence ().SetAutoKill(false);

		for(int i = 0; i < wayPoints.Count; i++)
		{
			sequence.Append(transform.DOMove(wayPoints[i].transform.position, wayPointSpeeds[i]));
			sequence.Join(transform.DORotate (wayPoints[i].transform.eulerAngles, wayPointSpeeds[i]));
		}

		if(rewind)
		{
			for(int i = wayPoints.Count - 2; i >= 0; i--)
			{
				sequence.Append(transform.DOMove(wayPoints[i].transform.position, wayPointSpeeds[i+1]));
				sequence.Join(transform.DORotate (wayPoints[i].transform.eulerAngles, wayPointSpeeds[i+1]));
			}

			sequence.Append(transform.DOMove(startingLocation, wayPointSpeeds[0]));
			sequence.Join(transform.DORotate (startingRotation, wayPointSpeeds[0]));
		}

		sequence.PrependInterval (startDelay);
		sequence.AppendInterval (endDelay);

		sequence.SetLoops (-1);
		sequence.Play ();
	}
}
