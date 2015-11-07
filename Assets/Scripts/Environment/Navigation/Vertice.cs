using UnityEngine;
using System.Collections;
using System.Collections.Generic;

[System.Serializable]
public class Vertice  
{
    // TODO: constructor with postion

    /// <summary>
    ///     Get and set for vector3 position where the node is
    /// </summary>
    private Vector3 _position;
    public Vector3 position 
    {
        get
        {
            return this._position;
        }
        set
        {
            this._position = value;
        }
    }

    private Dictionary<int, bool> foundVerts = new Dictionary<int, bool>();

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
