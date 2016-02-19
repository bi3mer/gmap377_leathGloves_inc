using UnityEngine;

public class Obesrvable : MonoBehaviour
{
    private int id;
    public int ID 
    { 
        get 
        {
            return this.id;
        }
        set
        {
            this.id = value;   
        }
    }

    private Observer observer;

    /// <summary>
    /// Construct with obesrver 
    /// </summary>
    /// <param name="_observer"></param>
    public void Instantiate(Observer _observer)
    {
        // Save reference to observer
        this.observer = _observer;

        // Add self to observer
        this.observer.Add(this);
    }

    /// <summary>
    /// On Death remove self from observer
    /// </summary>
    void OnDestroy()
    {
        this.observer.Remove(this.id);
    }
}
