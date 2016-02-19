using UnityEngine;
using System.Collections.Generic;

public abstract class Observer : MonoBehaviour
{
    // Current id position
    private int currentID = int.MinValue;

    // List of known observerables
    private Dictionary<int, Obesrvable> observables;

    /// <summary>
    /// Basic Constructor for dicitonary initialization
    /// </summary>
    public void init()
    {
        this.observables = new Dictionary<int, Obesrvable>();
    }

    /// <summary>
    /// Add observable item to self
    /// </summary>
    /// <param name="obs"></param>
    public void Add(Obesrvable obs)
    {
        // Update id
        obs.ID = this.currentID;

        // Add ID to self
        this.observables.Add(this.currentID, obs);

        // call super
        this.ObserverableAdded();

        // Get next available id
        ++this.currentID;
    }

    /// <summary>
    /// Remove observable item to self
    /// </summary>
    /// <param name="id"></param>
    public void Remove(int id)
    {
        // Remove from dictionary id
        this.observables.Remove(id);

        // Call super
        this.OvserverableRemoved();
    }

    public abstract void ObserverableAdded();
    public abstract void OvserverableRemoved();
}