using UnityEngine;
using System.Collections;

public class Explosion : MonoBehaviour {

    public float MinVolume = 1.0f;
    public float MaxVolume = 1.0f;
    public float MinPitch = 1.0f;
    public float MaxPitch = 1.0f;

    private AudioSource _audioSource;

	void Start () {
        _audioSource = GetComponent<AudioSource>();
	    if (SoundManager.Instance) {
            SoundManager.Instance.PlayAudioSourceVaried(_audioSource, SoundManager.Instance.Explosion1, MinVolume, MaxVolume, MinPitch, MaxPitch);
        }
	}
}
