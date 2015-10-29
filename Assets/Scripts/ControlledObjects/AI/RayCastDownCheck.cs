using UnityEngine;
using System.Collections;

public class RayCastDownCheck : MonoBehaviour 
{
    public int distanceToGround = 20;
	
	// Update is called once per frame
	void Update () 
    {
        RaycastHit[] hits;
        hits = Physics.RaycastAll(transform.position, transform.up * -1 * this.distanceToGround);

        print("regular: " + hits.Length);
        print("tag: " + hits[1].collider.tag);
        print("hit: " + hits[1].triangleIndex);
    }
}
