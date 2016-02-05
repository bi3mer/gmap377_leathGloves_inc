using UnityEngine;
using System.Collections;

public class WarpTransport : MonoBehaviour {
    //to do
    //take out shit cody added (week 4)
    public Transform destinationWarpPad;
    public float transportDelaySeconds;
    // REMOVE WHEN BOLTS ARE IN
    public bool canTransport;

    private ParticleSystem onEffect;

    void Start()
    {
        this.canTransport = false;
        ScoreManager.AmountReached += ActivateTeleport;
        this.onEffect = GetComponentInChildren<ParticleSystem>();
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
        // TODO: remove this part below after demo ---->
        GameObject cam = GameObject.FindGameObjectsWithTag("MainCamera")[0];
        cam.transform.parent = null;
        // -------------------------------------------->

        // Wait for the above specified time
        yield return new WaitForSeconds(transportDelaySeconds);

        

        // Sets player position to new warp pad location, plus an offset so they are above the warp pad
        //Player.Instance.transform.position = destinationWarpPad.position + destinationWarpPad.up;

        // Sets player rotation to the same as the destination warp pad, which will be orientated properly
        //Player.Instance.transform.rotation = destinationWarpPad.rotation;

        // Re-enables ForceMover script so player can move again
        // TODO: uncomment this COLANASDFJAS;LDKJA;SKLDFJALSKD;JAS;LKDJASL;KDJ;ALKSDFJLAK;SDF;LKASDFJAL;KSDFJ;LKJ
        //Player.Instance.GetComponent<ForceMover>().enabled = true;

        // TODO: remove this part below after demo ---->
        yield return new WaitForSeconds(.5f);
        cam.GetComponent<DeleteThisScriptAferDemo>().enabled = true;
        // -------------------------------------------->

        // TODO: Commented because this will break it
        // Re-enables SpawnSystem script to create new enemies
        //SpawnSystem.Instance.enabled = true;
    }

    public void ActivateTeleport()
    {
        // TODO: Some shit to make that jawn look fancy and what not
        this.onEffect.Play();
        this.canTransport = true;
    }

    void OnApplicationQuit()
    {
        ScoreManager.AmountReached -= ActivateTeleport;
    }
}
