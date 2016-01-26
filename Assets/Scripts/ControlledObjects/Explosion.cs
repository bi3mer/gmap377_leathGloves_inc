using UnityEngine;

public class Explosion : MonoBehaviour
{

    public float MinVolume = 1.0f;
    public float MaxVolume = 1.0f;
    public float MinPitch = 1.0f;
    public float MaxPitch = 1.0f;

    private AudioSource audioSource;

	void Start ()
    {
        audioSource = GetComponent<AudioSource>();
	    if (SoundManager.Instance) {
            SoundManager.Instance.PlayAudioSourceVaried(audioSource, SoundManager.Instance.Explosion1, MinVolume, MaxVolume, MinPitch, MaxPitch);
        }
	}
}
