using UnityEngine;
using System.Collections;

/// <summary>
/// Used to parent the Laser Beam parent object to the Bullet spawn point in order to keep the 
/// laser beam rotated with the player during motion
/// </summary>
public class Laserbeam_Parentpicker : MonoBehaviour
{

    /// <summary>
    /// Used to set the parent of the transform to the Bullet Spawn
    /// </summary>
	void Start ()
    {
        transform.parent = GameObject.Find("BulletSpawn").transform;
	}
}
