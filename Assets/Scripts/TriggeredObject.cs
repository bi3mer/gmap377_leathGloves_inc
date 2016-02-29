using UnityEngine;
using System.Collections;

public interface TriggeredObject
{
	void doAction(TriggerSignalObject trigger);
	bool getIsTriggered();
	void setIsTriggered(bool value);
	bool getLoop();
}
