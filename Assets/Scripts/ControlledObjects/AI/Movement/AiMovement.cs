using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public interface AiMovement 
{
	// Get plan
	List<int> getNewPlan();

	// Set target
	void setTarget(Vector3 target);

	// return current plan
	List<int> getPlan();
}
