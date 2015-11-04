using UnityEngine;
using System.Collections;

public class AStarNode
{
    // Constructor
    public AStarNode(int _g, int _h, int _index, ArrayList _moves)
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
    private int h;
    public int H
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
    private ArrayList moves;
    public ArrayList Moves
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
    public int getCost()
    {
        return this.G + this.H;
    }
}
