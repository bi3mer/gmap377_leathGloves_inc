using UnityEngine;
using System.Collections.Generic;

public class InterplanetaryObject : MonoBehaviour {

	public Gravity NearestPlanet = null;
	public float NearestPlanetForce = 0f;

    public static Gravity GetNearestPlanet(Vector3 pos) {
        Gravity nearestPlanet = null;
        float nearestDistance = int.MaxValue;

        Gravity[] planetlist = GameObject.FindObjectsOfType<Gravity>();
        foreach (Gravity planet in planetlist) {
            float dist = Vector3.Distance(planet.transform.position, pos);
            if (dist < nearestDistance) {
                nearestPlanet = planet;
                nearestDistance = dist;
            }
        }

        return nearestPlanet;
    }
}
