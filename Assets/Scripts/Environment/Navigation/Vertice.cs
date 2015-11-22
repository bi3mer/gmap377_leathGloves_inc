using UnityEngine;
using System.Collections;
using System.Collections.Generic;

[System.Serializable]
public class Vertice  
{
	public Vertice(int _key, bool _duplicatePoint)
	{
		this.key = _key;
		this.duplicatePoint = _duplicatePoint;
	}


    /// <summary>
    ///     Get and set for vector3 position where the node is
    /// </summary>
    public Vector3 position 
    {
        get
        {
			return this.duplicatePoint ? VertexNavigation.Instance.vertices[this.key] : VertexNavigation.Instance.movementLookup[this.key].position;
        }
        set {}
    }

	[SerializeField]
	public int key;

	[SerializeField]
	public bool duplicatePoint = false;
	
    private Dictionary<int, bool> foundVerts = new Dictionary<int, bool>();

	[SerializeField]
    private List<int> _vertices = new List<int>();

    /// <summary>
    ///     Add vertice to array list of connecting vertices
    /// </summary>
    /// <param name="vert"></param>
    public void Add(int vert)
    {
        // Only add to vertices if we have not already added it
        if (!foundVerts.ContainsKey(vert))
        {
            this._vertices.Add(vert);
            this.foundVerts.Add(vert, true);
        }
    }

    /// <summary>
    ///     Get array list
    /// </summary>
    /// <returns>Return arraylist of moves</returns>
    public List<int> getMoves()
    {
        return this._vertices;
    }
}
