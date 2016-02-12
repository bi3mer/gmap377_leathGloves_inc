using UnityEngine;
using System.Collections;
using System.Collections.Generic;

[System.Serializable]
public class Vertice  
{
	[SerializeField]
	public int key;
	
	[SerializeField]
	public bool duplicatePoint = false;

	[SerializeField]
	public VertexNavigation vertexNavigation;

	private Dictionary<int, bool> foundVerts = new Dictionary<int, bool>();

	/// <summary>
	/// Get and set for vector3 position where the node is
	/// </summary>
	public Vector3 position 
	{
		get
		{
			return this.vertexNavigation.vertices[this.key];
		}
		set 
		{
			// pass
		}
	}

	[SerializeField]
	private List<int> _vertices = new List<int>();

	/// <summary>
	/// Initializes a new instance of the <see cref="Vertice"/> class.
	/// </summary>
	/// <param name="_key">_key.</param>
	/// <param name="_duplicatePoint">If set to <c>true</c> duplicate point.</param>
	public Vertice(int _key, bool _duplicatePoint, VertexNavigation _vertexNavigation)
	{
		this.key = _key;
		this.duplicatePoint = _duplicatePoint;
		this.vertexNavigation = _vertexNavigation;
	}

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
		if(this.duplicatePoint)
		{
			return this.vertexNavigation.movementLookup[this.key].getMoves();
		}
        return this._vertices;
    }
}
