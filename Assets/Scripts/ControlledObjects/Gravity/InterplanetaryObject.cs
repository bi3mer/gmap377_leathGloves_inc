using UnityEngine;
using System.Collections.Generic;

public class InterplanetaryObject : MonoBehaviour 
{
	private Gravity _nearestPlanet;
	public Gravity NearestPlanet 
	{
		get 
		{
			if(this._nearestPlanet == null)
			{
				this._nearestPlanet = InterplanetaryObject.GetNearestPlanet(this.transform.position);
			}

			return this._nearestPlanet;
//			return this._nearestPlanet == null ? this._nearestPlanet : InterplanetaryObject.GetNearestPlanet(this.transform.position);
		}

		set
		{
			this._nearestPlanet = value;
		}
	}
	public float NearestPlanetForce = 0f;

	void Awake()
	{
		this.NearestPlanet = InterplanetaryObject.GetNearestPlanet(this.transform.position);
	}

    public static Gravity GetNearestPlanet(Vector3 pos) {
        Gravity nearestPlanet = null;
        float nearestDistance = int.MaxValue;

        Gravity[] planetList;
        if (Application.isPlaying) {	
            planetList = Gravity.PlanetList.ToArray();
        }
        else {
            planetList = GameObject.FindObjectsOfType<Gravity>();
        }

        foreach (Gravity planet in planetList) {
            float dist = Vector3.Distance(planet.transform.position, pos);
            if (dist < nearestDistance) {
                nearestPlanet = planet;
                nearestDistance = dist;
            }
        }

        return nearestPlanet;
    }
}
