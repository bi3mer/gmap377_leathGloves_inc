using UnityEngine;
using System.Collections;
using System;

public class PlayerScore : IComparable<PlayerScore>
{
    public string name;
    public int score;

    /// <summary>
    /// To compare scores.
    /// </summary>
    /// <param name="other"></param>
    /// <returns></returns>
    public int CompareTo(PlayerScore other)
    {
        return this.score.CompareTo(other.score);
    }
}