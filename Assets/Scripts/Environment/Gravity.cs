using UnityEngine;
using System.Collections.Generic;

public class Gravity : MonoBehaviour
{
    public static float range = 1000;

    void FixedUpdate()
    {
        Collider[] cols = Physics.OverlapSphere(transform.position, range);
        List<Rigidbody> rbs = new List<Rigidbody>();

        foreach (Collider c in cols)
        {
            Rigidbody rb = c.attachedRigidbody;
            if (rb != null && rb != GetComponent<Rigidbody>() && !rbs.Contains(rb))
            {
                rbs.Add(rb);
                Vector3 offset = transform.position - c.transform.position;
				Vector3 force = offset / offset.sqrMagnitude * GetComponent<Rigidbody>().mass;
                Debug.DrawLine(c.transform.position, c.transform.position + force);
                rb.AddForce(force);

				InterplanetaryObject io = c.gameObject.GetComponent<InterplanetaryObject>();
				if (io) {
					if (force.magnitude > io.NearestPlanetForce) {
						io.NearestPlanet = this;
						io.NearestPlanetForce = force.magnitude;
					}
				}
            }
        }
    }
}