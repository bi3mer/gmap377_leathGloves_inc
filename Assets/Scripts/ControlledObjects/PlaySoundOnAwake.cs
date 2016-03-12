using UnityEngine;
using System.Collections;

public class PlaySoundOnAwake : MonoBehaviour {

    public float MinVolumeRatio = 1.0f;
    public float MaxVolumeRatio = 1.0f;
    public float MinPitchRatio = 1.0f;
    public float MaxPitchRatio = 1.0f;
    public float MinStereoPanRatio = 1.0f;
    public float MaxStereoPanRation = 1.0f;
    public float MinSpatialBlendRatio = 1.0f;
    public float MaxSpatialBlendRatio = 1.0f;
    public float MinReverbZoneRatio = 1.0f;
    public float MaxReverbZoneRatio = 1.0f;

    AudioSource _audioSource;

	void Start () {
        _audioSource = GetComponent<AudioSource>();
        SoundManager.Instance.PlayAudioSourceVaried(_audioSource, null, MinVolumeRatio, MaxVolumeRatio, MinPitchRatio, MaxPitchRatio,
            MinStereoPanRatio, MaxStereoPanRation, MinSpatialBlendRatio, MaxSpatialBlendRatio, MinReverbZoneRatio, MaxReverbZoneRatio);
	}
	
}
