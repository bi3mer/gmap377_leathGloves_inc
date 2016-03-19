using UnityEngine;
using System.Collections;
using DG.Tweening;

public class WarpTransport : MonoBehaviour {
    
    public GameObject destinationWarpPad;
    public float transportDelaySeconds;
	public float shakeIntensity;
	public string warpToPlanetName = "Name not Set";

	public GameObject[] planetBosses;

   	public ParticleSystem onEffect;

    /// <summary>
    /// Subscribe to activate and deactivate, and initialize the particle effect
    /// </summary>
    void Start()
    {
        ScoreManager.AmountReached += ActivateTeleport;
        ScoreManager.PlayerTeleported += DeactivateTeleport;
        this.onEffect = GetComponentInChildren<ParticleSystem>();
    }

    /// <summary>
    /// When the player stays within the collider, call this to teleport the player
    /// </summary>
    /// <param name="collider"> The object that entered the trigger</param>
    void OnTriggerStay(Collider collider)
    {
        // TODO:  add check for player bolt quantity
        if (collider.gameObject.CompareTag("Player") && ScoreManager.Instance.BoltCount >= ScoreManager.Instance.BoltGoal && this.destinationWarpPad != null)
        {
            // Disable player movement while transport is happening
            Player.Instance.GetComponent<ForceMover>().enabled = false;

            // Destroys all currently spawned enemies
            SpawnSystem.Instance.DestroyAllChildren();

            // Disables spawner while player is warping
            SpawnSystem.Instance.enabled = false;

            StartCoroutine(TransportAfterTime());
            ScoreManager.Instance.resetBoltCount();
        }
    }

    /// <summary>
    ///     Delays for transportDelaySeconds then moves the player
    ///     and re-enables the ForceMover script
    /// </summary>
    /// <returns></returns>
    IEnumerator TransportAfterTime()
    {
		DisableBosses ();
        AudioSource planetAudio = InterplanetaryObject.GetNearestPlanet(Player.Instance.transform.position).GetComponent<AudioSource>();
        if (planetAudio) {
            planetAudio.enabled = false;
        }

        Player.Instance.transform.DOShakeRotation (transportDelaySeconds - 0.5f, shakeIntensity, 2);
		Player.Instance.transform.DOMove (Player.Instance.transform.position + this.transform.up * 1.5f, transportDelaySeconds - 0.5f);
        // Wait for the above specified time
        yield return new WaitForSeconds(transportDelaySeconds);

		Player.Instance.DOKill ();

        // Sets player position to new warp pad location, plus an offset so they are above the warp pad
		Player.Instance.transform.position = destinationWarpPad.transform.position + (destinationWarpPad.transform.up * (destinationWarpPad.GetComponent<Collider>().bounds.size.y / 2f));

		// Wait for the above specified time
		yield return new WaitForSeconds(transportDelaySeconds);

		Player.Instance.transform.DOKill ();

        // Change the player's nearest planet*/

        Player.Instance.GetComponent<InterplanetaryObject>().NearestPlanet = InterplanetaryObject.GetNearestPlanet(Player.Instance.transform.position);
		SpawnSystem.Instance.setPlanetName (InterplanetaryObject.GetNearestPlanet (Player.Instance.transform.position).gameObject.name);
        // Sets player rotation to the same as the destination warp pad, which will be orientated properly
        Player.Instance.transform.rotation = destinationWarpPad.transform.rotation;

        AudioSource destPlanetAudio = Player.Instance.GetComponent<InterplanetaryObject>().NearestPlanet.GetComponent<AudioSource>();
        if (destPlanetAudio) {
            destPlanetAudio.enabled = true;
        }

        // Re-enables ForceMover script so player can move again
        // TODO: uncomment this COLANASDFJAS;LDKJA;SKLDFJALSKD;JAS;LKDJASL;KDJ;ALKSDFJLAK;SDF;LKASDFJAL;KSDFJ;LKJ
        Player.Instance.GetComponent<ForceMover>().enabled = true;
		EnableBosses ();
        
        // Re-enables SpawnSystem script to create new enemies
        SpawnSystem.Instance.enabled = true;

		//popup for new planet.
		PopUpText.Instance.NewPopUp("Planet " + warpToPlanetName);
    }

    /// <summary>
    /// Plays the particle effect
    /// </summary>
    public void ActivateTeleport()
    {
        // Start dat particle effect!
        this.onEffect.Play();

    }

    /// <summary>
    /// Stops the particle effect
    /// </summary>
    public void DeactivateTeleport()
    {
        // Stop dat particle effect
        this.onEffect.Stop();
    }

    /// <summary>
    /// Unsubscribe the events!
    /// </summary>
    void OnApplicationQuit()
    {
        ScoreManager.AmountReached -= ActivateTeleport;
        ScoreManager.PlayerTeleported -= DeactivateTeleport;
    }

	void  OnDestroy()
	{
		ScoreManager.AmountReached -= ActivateTeleport;
		ScoreManager.PlayerTeleported -= DeactivateTeleport;
	}

	void DisableBosses()
	{
		for (int i = 0; i < planetBosses.Length; i++) 
		{
			if (planetBosses[i]) planetBosses[i].SetActive(false);
		}

	}

	void EnableBosses()
	{
		GameObject[] destinationBosses = destinationWarpPad.GetComponent<WarpTransport> ().planetBosses;
		for (int i = 0; i < destinationBosses.Length; i++) 
		{
			if (destinationBosses[i]) destinationBosses[i].SetActive(true);
		}
	}
}
