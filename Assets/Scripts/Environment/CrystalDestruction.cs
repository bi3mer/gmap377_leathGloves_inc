using UnityEngine;
using System.Collections;

public class CrystalDestruction : MonoBehaviour {

    public GameObject DestructionEffect;

    void OnTriggerEnter(Collider col)
    {
        Instantiate(this.DestructionEffect, transform.position,transform.parent.rotation);
       
        Destroy(this.gameObject);
    }
}
