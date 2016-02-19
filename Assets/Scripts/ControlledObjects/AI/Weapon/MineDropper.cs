using UnityEngine;
using System.Collections;

public class MineDropper : Observer
{
    [Tooltip ("The largest amount of mines allowed to be active at once")]
    public int maxNumberOfMines = 100;
    private int currentNumberOfMines = 0;
    
    [Tooltip ("Mine that will be dropped to attach the player")]
    public GameObject mine;

    [Tooltip ("WHere the mine will be spawned")]
    public Transform mineSpawnLocation;

    [Tooltip ("Time between each mine drop")]
    public float timeBetweenEachMineDrop = 1.5f;

    private bool shouldDropMines = true;

    /// <summary>
    /// Initialize necessary variables
    /// </summary>
    void Start()
    {
        base.init();
    }

    private IEnumerator dropMines()
    {
        while (shouldDropMines)
        { 
            this.dropMine();
            yield return new WaitForSeconds(this.timeBetweenEachMineDrop);
        }
    }

    public override void ObserverableAdded()
    { 
        // Incrase # of mines
        ++this.currentNumberOfMines;

        // Check if max number of mines have reached
        if (this.currentNumberOfMines > this.maxNumberOfMines)
        { 
            // End Co routine
            this.shouldDropMines = false;
        }
    }
    public override void OvserverableRemoved()
    {
        // Reduce # of mines
        --this.currentNumberOfMines;

        // Check if max # of mines has already been reached
        if (this.shouldDropMines == false)
        { 
            // Start Dropping mines again
            StartCoroutine(this.dropMines());
        }
    }

    /// <summary>
    /// Drop a mine onto the planet
    /// </summary>
    public void dropMine()
    {
        GameObject newMine = (GameObject) Instantiate(this.mine, this.mineSpawnLocation.position, this.mineSpawnLocation.rotation);

        // Add self to observable
        newMine.GetComponent<Obesrvable>().Instantiate(this);
    }
}
