using UnityEngine;
using System.Collections;

public class BossDelay : MonoBehaviour {

    /*
    private MoveTowardsPlayer towardsPlayer;
    private MoveAwayFromPlayer awayFromPlayer;
    private MoveDirectionSelector selector;
	private float delayInSeconds = 5f;

	void Start () {
        selector = this.GetComponent<MoveDirectionSelector>();
        towardsPlayer = this.GetComponent<MoveTowardsPlayer>();
        awayFromPlayer = this.GetComponent<MoveAwayFromPlayer>();

        selector.enabled = false;
        towardsPlayer.enabled = false;
        awayFromPlayer.enabled = false;

		StartCoroutine (CountdownTimer ());
	}

	IEnumerator CountdownTimer(){
		yield return new WaitForSeconds (delayInSeconds);
        selector.enabled = true;
        towardsPlayer.enabled = true;
        awayFromPlayer.enabled = false;
    }
    */
    public float delayInSeconds = 5f;
	public string ClassToActivate;

    void Start()
    {
        StartCoroutine(CountdownTimer());
    }

    IEnumerator CountdownTimer()
    {
        yield return new WaitForSeconds(delayInSeconds);
		(this.GetComponent(this.ClassToActivate) as MonoBehaviour).enabled = true;
    }
}
