using UnityEngine;
using System.Collections;

public class ProceduralGenerationPoint {

	public Vector3 position;
	public Vector3[] triangle;
	public int triangleIndex;
	public float size;

	public ProceduralGenerationPoint(Vector3 pos)
	{
		position = pos;
	}
}
