using UnityEngine;
using System.Collections;

public class DistanceCalculator 
{
	/// <summary>
	/// 	Convert vector3 to latitude and longitude degrees
	/// </summary>
	/// <returns>The vector3.</returns>
	/// <param name="radius">Radius.</param>
	/// <param name="pos">Position.</param>
	private static Vector2 convertVector3(float radius, Vector3 pos)
	{
		return new Vector2(Mathf.Acos(pos.z / radius), Mathf.Atan(pos.x / pos.y));
	}

	/// <summary>
	/// 	Calculate haversine distance between pos1 and pos2
	/// 	Found at http://forum.unity3d.com/threads/pathfinding-in-a-spherical-world.123161/
	/// 	https://en.wikipedia.org/wiki/Haversine_formula
	/// </summary>
	/// <returns>The dist.</returns>
	/// <param name="pos1">Pos1.</param>
	/// <param name="pos2">Pos2.</param>
	/// <param name="radius">radius.</param>
	private static float haversineDist(float radius, Vector2 pos1, Vector2 pos2)
	{
		// calculate radians
		float lat = Mathf.Deg2Rad * (pos2.x - pos1.x);
		float lon = Mathf.Deg2Rad * (pos2.y - pos1.y);

		// TODO: What is a?
		float a = Mathf.Sin(lat / 2) * Mathf.Sin(lat / 2) +
				  Mathf.Cos(Mathf.Deg2Rad * (float)pos1.x) * Mathf.Cos(Mathf.Deg2Rad * (float)pos2.x) *
				  Mathf.Sin(lon / 2) * Mathf.Sin(lon / 2);

		// Return haversine distance
		return radius * 2 * Mathf.Asin(Mathf.Min(1, Mathf.Sqrt(a)));
	}

	/// <summary>
	/// Calculates the haver sine dist with vector3's.
	/// </summary>
	/// <returns>The haver sine dist vector3.</returns>
	/// <param name="radius">Radius.</param>
	/// <param name="pos1">Pos1.</param>
	/// <param name="pos2">Pos2.</param>
	public static float calculateHaverSineDistVector3(float radius, Vector3 pos1, Vector3 pos2)
	{
		return DistanceCalculator.haversineDist(radius, DistanceCalculator.convertVector3(radius, pos1), DistanceCalculator.convertVector3(radius, pos2));
	}

	/// <summary>
	/// Euclidians distance between pos1 and pos2
	/// </summary>
	/// <returns>The distance.</returns>
	/// <param name="pos1">Pos1.</param>
	/// <param name="pos2">Pos2.</param>
	public static float euclidianDistance(Vector3 pos1, Vector3 pos2)
	{
		return Mathf.Sqrt(Mathf.Pow(pos1.x - pos2.x, 2) + Mathf.Pow(pos1.y - pos2.y, 2) + Mathf.Pow(pos1.z - pos2.z, 2));
	}

	/// <summary>
	/// Manhattans distance between pos1 and pos2.
	/// </summary>
	/// <returns>The distance.</returns>
	/// <param name="pos1">Pos1.</param>
	/// <param name="pos2">Pos2.</param>
	public static float manhattanDistance(Vector2 pos1, Vector2 pos2)
	{
		return Mathf.Abs(pos1.x - pos2.x) + Mathf.Abs(pos1.y - pos2.y);
	}
}	
