using UnityEngine;
using System.Collections.Generic;

public class Gravity : MonoBehaviour
{
    public static List<Gravity> PlanetList = new List<Gravity>();
    public static float range = 1000;

    public LayerMask GravityEffectedObjects;

    private Rigidbody _rigidbody; 

    void Start() {
        _rigidbody = GetComponent<Rigidbody>();
    }

    void Awake() {
        PlanetList.Add(this);
    }

    void OnEnable() {
        if (!PlanetList.Contains(this)) PlanetList.Add(this);
    }

    void OnDestroy() {
        PlanetList.Remove(this);
    }

    void OnDisable() {
        PlanetList.Remove(this);
    }

    void FixedUpdate()
    {
        Collider[] cols = Physics.OverlapSphere(transform.position, range, GravityEffectedObjects);
        List<Rigidbody> rbs = new List<Rigidbody>();

        foreach (Collider c in cols)
        {
            Rigidbody rb = c.attachedRigidbody;
            if (rb != null && rb != _rigidbody && !rbs.Contains(rb))
            {
                rbs.Add(rb);
                Vector3 offset = transform.position - c.transform.position;
				Vector3 force = offset / offset.sqrMagnitude * GetComponent<Rigidbody>().mass;
                rb.AddForce(force);

				InterplanetaryObject io = c.gameObject.GetComponent<InterplanetaryObject>();
				if (io && force.magnitude > io.NearestPlanetForce) {
					io.NearestPlanet = this;
					io.NearestPlanetForce = force.magnitude;
				}
            }
        }
    }
}