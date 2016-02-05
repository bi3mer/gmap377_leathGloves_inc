using UnityEngine;
using System.Collections;

public class DeleteThisScriptAferDemo : MonoBehaviour 
{
    public Transform endMarker;
    public Transform startMarker;
    public float timeToMove = 10f;
    public GameObject boss;

    private Vector3 startPos;
    private float startTime;
    private float journeyLength;

    void Start()
    {
        startMarker = this.transform;
        startTime = Time.time;
        journeyLength = Vector3.Distance(startMarker.position, endMarker.position);
    }
    void Update()
    {
        float distCovered = (Time.time - startTime) * timeToMove;
        float fracJourney = distCovered / journeyLength;
        transform.position = Vector3.Lerp(startMarker.position, endMarker.position, fracJourney);

        transform.LookAt(this.boss.transform.position);
    }
}


