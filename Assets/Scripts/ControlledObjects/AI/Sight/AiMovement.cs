using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public interface AiMovement 
{
	VertexNavigation GetPlanetVertexNavigation();

	// Get plan
	List<int> getNewPlan(Vector3 target);

	// Set target
	void setTarget(Vector3 target);

	// return current plan
	List<int> getPlan();
}
