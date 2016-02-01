using UnityEngine;

public class TImedDestroySelf : MonoBehaviour
{
    public float lifetime = 1;

    // Use this for initialization
    void Awake()
    {
        Destroy(gameObject, lifetime);
    }
}