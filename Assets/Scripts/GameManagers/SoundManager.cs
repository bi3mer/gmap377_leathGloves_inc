using UnityEngine;
using System.Collections;

public class SoundManager : MonoBehaviour {

    public static SoundManager Instance;

    public AudioClip ArtilleryShot;
    public AudioClip EnemyTankFire;
    public AudioClip CannonFire;
    public AudioClip Explosion1;
    public AudioClip Explosion2;
    public AudioClip RocketLaunch;
    public AudioClip RocketReload;
    public AudioClip PlayerArmingSound;
    public AudioClip DefaultLaserShot;
    public AudioClip LaserBeamShot;
    public AudioClip MineActive;


    void Start() {
        if (Instance == null) {
            Instance = this;
        }
        else {
            Destroy(gameObject);
        }
    }
    
    public void PlayAudioSource(AudioSource source) {
        source.Play();
    }

    public void PlayAudioSourceVaried(AudioSource source, AudioClip playclip = null, float minVolume = 1, float maxVolume = 1, float minPitch = 1, float maxPitch = 1,
        float minStereoPan = 1, float maxStereoPan = 1, float minSpatialBlend = 1, float maxSpatialBlend = 1, float minReverbZoneMix = 1, float maxReverbZoneMix = 1) {

        AudioClip clip = playclip ?? source.clip;
        float volume = source.volume;
        float pitch = source.pitch;
        float stereoPan = source.panStereo;
        float spatialBlend = source.spatialBlend;
        float reverbZoneMix = source.reverbZoneMix;

        GameObject obj = new GameObject();
        obj.transform.parent = transform;
        obj.transform.position = source.gameObject.transform.position;
        obj.AddComponent<AudioSource>();
        obj.GetComponent<AudioSource>().volume = Random.Range(minVolume, maxVolume) * volume;
        obj.GetComponent<AudioSource>().pitch = Random.Range(minPitch, maxPitch) * pitch;
        obj.GetComponent<AudioSource>().panStereo = Random.Range(minStereoPan, maxStereoPan) * stereoPan;
        obj.GetComponent<AudioSource>().spatialBlend = Random.Range(minSpatialBlend, maxSpatialBlend) * spatialBlend;
        obj.GetComponent<AudioSource>().reverbZoneMix = Random.Range(minReverbZoneMix, maxReverbZoneMix) * reverbZoneMix;
        obj.GetComponent<AudioSource>().rolloffMode = source.rolloffMode;
        obj.GetComponent<AudioSource>().maxDistance = source.maxDistance;
        obj.GetComponent<AudioSource>().PlayOneShot(clip, volume);
        Destroy(obj, clip.length / pitch);

    }

}
