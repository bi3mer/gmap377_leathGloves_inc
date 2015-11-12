using UnityEngine;
using System.Collections;
using System.Collections.Generic;

[System.Serializable]
public class SerializableDictionary<Key, Value>
{
    // DON'T USE
	[SerializeField]
	private List<Key> keys = new List<Key>();

	[SerializeField]
	private List<Value> values = new List<Value>();


}
