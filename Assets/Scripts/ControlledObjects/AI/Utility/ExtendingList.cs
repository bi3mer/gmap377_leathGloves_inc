using UnityEngine;
using System.Collections;
using System.Collections.Generic;

[System.Serializable]
public class ExtendingList<DataType> : List<DataType>
{
    // DON'T USE
	public void Insert(int index, DataType val)
	{

	}
}
