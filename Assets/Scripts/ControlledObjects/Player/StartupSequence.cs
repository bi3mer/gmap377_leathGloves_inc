using UnityEngine;
using System.Collections;
using DG.Tweening;

public class StartupSequence : MonoBehaviour {

    public float planetApproachDuration;
    public Transform[] planetApproachPath;
    private Vector3[] planetApproachPathPositions;

    public float crashLandingDuration;
    public Transform[] crashLandingPath;
    private Vector3[] crashLandingPathPositions;

    public float shakeIntensity;
    public float shakeAndCrashDuration;

    public Transform playerGameplayStartTransform;
    
    void Awake()
    {
        // Disable things while scripted event is occurring
        Player.Instance.GetComponent<ForceMover>().enabled = false;
        Player.Instance.GetComponent<PlanetOrientation>().enabled = false;
        Player.Instance.GetComponent<WeebleWobble>().enabled = false;
        Player.Instance.GetComponent<HoverJump>().enabled = false;
    }

	// Use this for initialization
	void Start () {
        SpawnSystem.Instance.enabled = false;

        planetApproachPathPositions = new Vector3[planetApproachPath.Length-1];
        crashLandingPathPositions = new Vector3[crashLandingPath.Length];

        Player.Instance.transform.position = planetApproachPath[0].position;

        for (int i = 1; i < planetApproachPath.Length; i++)
        {
            planetApproachPathPositions[i-1] = planetApproachPath[i].position;
        }

        for (int i = 0; i < crashLandingPath.Length; i++)
        {
            crashLandingPathPositions[i] = crashLandingPath[i].position;
        }
        StartCoroutine(ApproachSequence());
	}
	
    IEnumerator ApproachSequence()
    {
        Player.Instance.transform.DOPath(planetApproachPathPositions, planetApproachDuration, PathType.CatmullRom).OnWaypointChange(LookAtApproachWaypoint);
        yield return new WaitForSeconds(planetApproachDuration - 2f);
        Player.Instance.transform.DOShakeRotation(shakeAndCrashDuration, shakeIntensity);
    }

    IEnumerator EnableGameplayElements()
    {
        Player.Instance.transform.rotation = playerGameplayStartTransform.rotation;
        Player.Instance.transform.position = playerGameplayStartTransform.position + playerGameplayStartTransform.up;

        Player.Instance.GetComponent<ForceMover>().enabled = true;
        Player.Instance.GetComponent<PlanetOrientation>().enabled = true;
        Player.Instance.GetComponent<WeebleWobble>().enabled = true;
        Player.Instance.GetComponent<HoverJump>().enabled = true;
        SpawnSystem.Instance.enabled = true;
        Destroy(this.gameObject);
        yield return null;
    }

    void LookAtApproachWaypoint(int waypointIndex)
    {
        if (!(waypointIndex >= planetApproachPathPositions.Length-1))
            Player.Instance.transform.DOLookAt(planetApproachPathPositions[waypointIndex + 1], 2f);
    }
}
