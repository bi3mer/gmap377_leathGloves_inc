using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class AStarNode
{
    // Constructor
    public AStarNode(int _g, float _h, int _index, List<int> _moves)
    {
        this.G = _g;
        this.H = _h;
        this.Index = _index;
        this.Moves = _moves;
    }

    // Step Count
    private int g;
    public int G
    {
        get
        {
            return this.g;
        }
        set
        {
            this.g = value;
        }
    }

    // Heuristic val
    private float h;
    public float H
    {
        get
        {
            return this.h;
        }
        set
        {
            this.h = value;
        }
    }

    // index
    private int index;
    public int Index
    {
        get
        {
            return this.index;
        }
        set
        {
            this.index = value;
        }
    }

    // Moves
    private List<int> moves = new List<int>();
    public List<int> Moves
    {
        get
        {
            return this.moves;
        }
        set
        {
            this.moves = value;
        }
    }

    /// <summary>
    ///     return cost
    /// </summary>
    /// <returns></returns>
    public float getCost()
    {
        return this.G + this.H;
    }
}
