using UnityEngine;
using System.Collections;
using System;

public class PlayerScore : IComparable<PlayerScore>
{

    public string name;
    public int score;

    public int CompareTo(PlayerScore other)
    {
        return this.score.CompareTo(other.score);
    }
}