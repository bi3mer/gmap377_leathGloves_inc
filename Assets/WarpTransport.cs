using UnityEngine;
using System.Collections;

public class WarpTransport : MonoBehaviour {
    //to do
    //take out shit cody added (week 4)
    public Transform destinationWarpPad;
    public float transportDelaySeconds;
    // REMOVE WHEN BOLTS ARE IN
    public bool canTransport;

    void Start()
    {
        this.canTransport = false;
        ScoreManager.AmountReached += ActivateTeleport;
    }

    void OnTriggerStay(Collider collider)
    {
        // TODO:  add check for player bolt quantity
        if (collider.gameObject.CompareTag("Player") && canTransport)
        {
            // Disable player movement while transport is happening
            Player.Instance.GetComponent<ForceMover>().enabled = false;

            // Destroys all currently spawned enemies
            SpawnSystem.Instance.DestroyAllChildren();

            // Disables spawner while player is warping
            SpawnSystem.Instance.enabled = false;

            StartCoroutine(TransportAfterTime());
        }
    }

    /// <summary>
    ///     Delays for transportDelaySeconds then moves the player
    ///     and re-enables the ForceMover script
    /// </summary>
    /// <returns></returns>
    IEnumerator TransportAfterTime()
    {
        // Wait for the above specified time
        yield return new WaitForSeconds(transportDelaySeconds);

        // Sets player position to new warp pad location, plus an offset so they are above the warp pad
        Player.Instance.transform.position = destinationWarpPad.position + destinationWarpPad.up;

        // Sets player rotation to the same as the destination warp pad, which will be orientated properly
        Player.Instance.transform.rotation = destinationWarpPad.rotation;

        // Re-enables ForceMover script so player can move again
        Player.Instance.GetComponent<ForceMover>().enabled = true;

        // Re-enables SpawnSystem script to create new enemies
        SpawnSystem.Instance.enabled = true;
    }

    public void ActivateTeleport()
    {
        // TODO: Some shit to make that jawn look fancy and what not
        Debug.Log("Teleport Active\n");
        this.canTransport = true;
    }

    void OnApplicationQuit()
    {
        Debug.Log("HOOOOOOOO it ended!");
        ScoreManager.AmountReached -= ActivateTeleport;
    }
}
