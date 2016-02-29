using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class TriggerSignalObject : MonoBehaviour {

	[Tooltip("List of objects affected by this trigger.")]
	public List<GameObject> gameObjectsAffected;

	List<TriggeredObject> objectsAffected;

	[Tooltip("If checked, waits for an animation event to fire off trigger instead")]
	public bool waitForAnimation;

	public LayerMask canBeTriggeredBy;
	public bool isSequential;

	int currentObject;
	// Use this for initialization
	void Start () {
		objectsAffected = new List<TriggeredObject> ();
		for(int i = 0; i < gameObjectsAffected.Count; i++)
		{
			objectsAffected.Add (gameObjectsAffected[i].GetComponent<TriggeredObject>());
		}
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	void OnTriggerEnter(Collider collision)
	{
		if(!waitForAnimation && canBeTriggeredBy == (canBeTriggeredBy | (1 << collision.gameObject.layer)))
		{
			triggerObjects();
		}
	}

	public void triggerObjects()
	{
		if(objectsAffected.Count > 0)
		{
			if(!objectsAffected[0].getIsTriggered())
			{
				objectsAffected [0].doAction (this);
				currentObject = 0;
			}

			if(!isSequential && currentObject == 0)
			{
				for(int i = 1; i < objectsAffected.Count; i++)
				{
					if(!objectsAffected[i].getIsTriggered())
					{
						objectsAffected[i].doAction(this);
					}
				}
			}
		}
	}

	public void objectFinished(TriggeredObject ob)
	{
		if (isSequential) {
			currentObject++;

			if (currentObject < objectsAffected.Count) {
				objectsAffected [currentObject].doAction (this);
			}
			else
			{
				currentObject = 0;
				List<TriggeredObject> objectsToRemove = new List<TriggeredObject>();

				for(int i = 0; i < objectsAffected.Count; i++)
				{
					if(!objectsAffected[i].getLoop())
					{
						objectsToRemove.Add(objectsAffected[i]);
					}
					else
					{
						objectsAffected[i].setIsTriggered(false);
					}
				}

				for(int j = 0; j < objectsToRemove.Count; j++)
				{
					objectsAffected.Remove(objectsToRemove[j]);
				}
			}
		}
		else
		{
			if(!ob.getLoop())
			{
				objectsAffected.Remove(ob);
			}
			else
			{
				ob.setIsTriggered(false);
			}
		}

	}
}
