using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class Player : MonoBehaviour 
{
    public float updatePositionDistance = 2f;
    private Vector3 verticePosition = Vector3.zero;

	/// <summary>
	/// 	Create Singleton
	/// </summary>
	public static Player instance;

    /// <summary>
    /// Initialize Weapon Display Controler
    /// </summary>
    void Start()
    {
        //WeaponDisplayController.Instance.ZeroOutAmmo();
    }
	
    /// <summary>
    /// Singleton
    /// </summary>
	public static Player Instance
	{
		get
		{
			if(instance == null)
			{
				instance = GameObject.FindObjectOfType<Player>();
                // NOTE: DontDestroyOnLoad was causing major issues with restarts 
                // be aware that if we need this to survive on loads it will cause 
                // problems with the gravity system - Bryan
			}
			return instance;
		}
	}

    /// <summary>
    /// Return vector3 for transform position
    /// </summary>
    /// <returns></returns>
	public Vector3 getTransformPosition()
	{
		return this.gameObject.transform.position;
	}

    /// <summary>
    /// Return nearest vertice in form of position
    /// </summary>
    /// <returns></returns>
    public Vector3 getClosestVertice()
    {
        if(Vector3.Distance(this.verticePosition, this.transform.position) > this.updatePositionDistance)
        {
            // Raycast towards center of planet
            RaycastHit[] hits = Physics.RaycastAll(this.transform.position, VertexNavigation.Instance.transform.position - this.transform.position, 20f);

            // fill open list
            foreach (RaycastHit hit in hits)
            {
                // Check if correct mesh was hit
                if (hit.collider != null && hit.collider.tag == "Planet" && hit.triangleIndex > -1)
                {
                    this.verticePosition = VertexNavigation.Instance.vertices[VertexNavigation.Instance.triangles[hit.triangleIndex * 3]];
                    return this.verticePosition;
                }
            }
        }

        return this.verticePosition;
    }
}
