using UnityEngine;
using DG.Tweening;
using System.Collections;

public class CameraShake : MonoBehaviour {
    public float ShakeDuration = .5f;
    public float ShakeStrength = 1f;

    public void Shake()
    {
        transform.DOShakeRotation(this.ShakeDuration, this.ShakeStrength);
    }
}
