﻿using UnityEngine;
using System.Collections;

public class ProceduralGenerationPoint {

	public Vector3 position;
	public Vector2 uvPosition;
	public Vector2[] uvPos;
	public Vector3[] triangle;
	public int triangleIndex;
	public float size;
	public string objectName;

	public ProceduralGenerationPoint(Vector3 pos)
	{
		position = pos;
	}
}
