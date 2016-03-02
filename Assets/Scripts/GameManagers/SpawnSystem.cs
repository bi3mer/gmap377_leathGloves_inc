using UnityEngine;
using System.Collections.Generic;
using System.Collections;

public class SpawnSystem : MonoBehaviour 
{
    public int CurrentDifficulty = 5;
    public int DifficultyIncreaseTime = 20;
    public float ChanceDifficultyIncreaseDeath = 0.4f;
    public float CollisionCheckRadius = 2;
    public float MinSpawnDistanceEmpty = 50;
    public float MinSpawnDistancePopulated = 100;
    public float MinSpawnDistanceActual = 50;
    public float MaxSpawnDistance = 200;
    public float MaxSpawnDistanceActual = 200;
    public List<GameObject> EnemyPrefabs;
    public List<float> EnemyProbabilities;
    public int CurrentEnemyNumber = 0;
    public int MaxTries = 50;

    private int _timer = 3;
	public static SpawnSystem Instance = null;
	public int gridDimension;

	float gridCellSize;
	long gridOffset;
	string planetName;

	Dictionary<string, Dictionary<long, List<Vector3>>> verticesInGridByPlanet;

	void Start() 
	{
		_timer = DifficultyIncreaseTime;
		verticesInGridByPlanet = new Dictionary<string, Dictionary<long, List<Vector3>>> ();

		planetName = Player.instance.getPlanetNavigation ().gameObject.name;
		CreateGrid (planetName);
	}
	
	void Update () 
	{
        _timer--;
        if (_timer <= 0) {
            CurrentDifficulty++;
            DifficultyIncreaseTime += 5;
            _timer = (int)(DifficultyIncreaseTime / Time.deltaTime);
        }
	    if (CurrentEnemyNumber < CurrentDifficulty && Time.timeScale > float.Epsilon) {
			SpawnEnemy ();
		}

	}

    void Awake() 
	{
        if (Instance) {
            Destroy(this);
        }
        else {
            Instance = this;
        }
    }

	public void setPlanetName(string name)
	{
		planetName = name;

		if(!verticesInGridByPlanet.ContainsKey(name))
		{
			CreateGrid(name);
		}
	}

	public void moveToPlanet(string name)
	{
		setPlanetName (name);
		if(!verticesInGridByPlanet.ContainsKey(name))
		{
			CreateGrid(name);
		}

		CurrentEnemyNumber = 0;
	}

	/// <summary>
	/// Tries to spawn an enemy
	/// </summary>
    void SpawnEnemy() 
	{
		//Debug.Log ("Spawn!!");
		Dictionary<long, List<Vector3>> verticesInGrid = verticesInGridByPlanet [planetName];
        bool foundVertex = false;
        Vector3 position = Vector3.zero;
		int maxCellsAway = 0;
		int minCellsAway = 0;
		int spawnDirectionChoice = 0;

        if (EnemyPrefabs.Count == 0) return;

        int tries = 0;

		long playerLoc = getPlayerGridLoc();

		SystemLogger.write ("Trying to spawn an enemy around grid " + playerLoc);

		spawnDirectionChoice = Random.Range(0, 4);
		List<long> possibleKeys = null;

		MinSpawnDistanceActual = MinSpawnDistanceEmpty + (MinSpawnDistancePopulated - MinSpawnDistanceEmpty) * (CurrentEnemyNumber / CurrentDifficulty);
		MaxSpawnDistanceActual = MinSpawnDistancePopulated + (MaxSpawnDistanceActual - MinSpawnDistancePopulated) * (CurrentEnemyNumber / CurrentDifficulty);

		// the minimum number of cells away
		maxCellsAway = 7;
		minCellsAway = 2;
	
		// choose a direction to spawn the enemies
		possibleKeys = getSpawnCells (playerLoc, maxCellsAway, minCellsAway);    

		// tries x time to find a valid vertice
        while (!foundVertex && tries < MaxTries) {
			SystemLogger.write("Tries: " + tries);

			if (Player.Instance == null) {
				break;
			}

			// all the possible grids to look for a vertice
			if (possibleKeys.Count > 0)
			{
				long key = possibleKeys [Random.Range (0, possibleKeys.Count)];

				if (verticesInGrid.ContainsKey(key) && verticesInGrid [key].Count > 0) 
				{
					position = verticesInGrid [key] [Random.Range (0, verticesInGrid [key].Count)];

					float dist = Vector2.Distance (position, Player.Instance.transform.position);
				
					if (dist > MinSpawnDistanceActual && dist < MaxSpawnDistance) 
					{
						Collider[] hits = Physics.OverlapSphere (position, CollisionCheckRadius);
						if (hits.Length <= 1) 
						{
							foundVertex = true;
							break;
						}
					}
				}
			}

			tries++;
		}

		/*foreach(long key in possibleKeys)
		{
			if(verticesInGrid.ContainsKey(key))
			{
				for(int i = 0; i < verticesInGrid[key].Count; i++)
				{
					Debug.DrawLine(Player.instance.transform.position, verticesInGrid[key][i]);
				}
			}
		}*/

		//Debug.Break ();
        // Can't find a location to spawn
        if (tries >= MaxTries) return;

        List<GameObject> prefabsToUse;
        List<float> weightsToUse;
        PlanetAISpawner planetAISpawner = Player.Instance.getPlanetNavigation().GetComponent<PlanetAISpawner>();
        if (planetAISpawner) {
            prefabsToUse = planetAISpawner.AIOnThisPlanet;
            weightsToUse = planetAISpawner.AIWeights;
        }
        else {
            prefabsToUse = EnemyPrefabs;
            weightsToUse = EnemyProbabilities;
        }

        GameObject prefab = null;
        float r = Random.Range(0, 100) / 100.0f;

		float weightTotal = 0f;

		for(int i = 0; i < weightsToUse.Count; i++)
		{
			weightTotal += weightsToUse[i];
		}

        float sum = 0;
        for (int i=0; i<prefabsToUse.Count; i++) {
            if (r < (sum + weightsToUse[i])/weightTotal) {
                prefab = prefabsToUse[i];
                break;
            }
            sum += weightsToUse[i];
        }


        GameObject e = GameObject.Instantiate(prefab, position, new Quaternion()) as GameObject;

		// add to hierarchy
        e.transform.parent = transform;

		// TODO: test if we need this
        Gravity nearestPlanet = InterplanetaryObject.GetNearestPlanet(position);
        Vector3 angleToPlanet = position - nearestPlanet.transform.position;
        e.transform.position = e.transform.position + angleToPlanet.normalized * 1f;

        e.AddComponent<EnvironmentOrienter>();
        e.GetComponent<EnvironmentOrienter>().OrientToPlanet();

		//Debug.Log ("spawned enemy");
		CurrentEnemyNumber++;

    }

    public void RegisterEnemyDeath() {
        if (ChanceDifficultyIncreaseDeath > Random.Range(0, 100) / 100.0f) {
            CurrentDifficulty++;
        }
        CurrentEnemyNumber -= 1;
    }

	public void DestroyAllChildren()
	{
		for(int i = 0; i < this.transform.childCount; i++)
		{
			Destroy (this.transform.GetChild(i).gameObject);
		}
	}

	public void CreateGrid(string planetName)
	{
		Debug.Log ("Creating grid...");
		Vector3[] vertices = Player.Instance.getPlanetNavigation ().vertices;
		//Debug.Log ("First ob" + planetName);
		float power = Mathf.CeilToInt (Mathf.Log10(gridDimension));
		gridOffset = Mathf.RoundToInt (Mathf.Pow (10, power));
		gridCellSize = 1f / gridDimension;

		Vector2[] planetUVs = Player.instance.getPlanetNavigation ().mesh.uv;
		long key;

		Dictionary<long, List<Vector3>> verticesInGrid = new Dictionary<long, List<Vector3>> ();

		for(int i = 0; i < vertices.Length; i++)
		{
			key = toGrid(planetUVs[i], gridCellSize, gridOffset);

			if(!verticesInGrid.ContainsKey(key))
			{
				verticesInGrid.Add(key, new List<Vector3>());
			}

			verticesInGrid[key].Add(vertices[i]);
		}
		verticesInGridByPlanet.Add (planetName, verticesInGrid);
	}

	public long toGrid(Vector2 point, float minSize, long gridOffset)
	{
		long x = Mathf.CeilToInt (point.x / minSize);
		long y = Mathf.CeilToInt (point.y / minSize);
		
		return x + y * gridOffset;
	}

	public long getPlayerGridLoc()
	{
		return toGrid(Player.instance.getUVLocation(LayerMask.NameToLayer("Planet")), gridCellSize, gridOffset);
	}

	/// <summary>
	/// Gets the list of possible grids in which enemies can be spawned.
	/// </summary>
	/// <returns>The spawn cells.</returns>
	/// <param name="playerLoc">Player location.</param>
	/// <param name="maxCellsAway">Max cells away.</param>
	/// <param name="minCellsAway">Minimum cells away.</param>
	/// <param name="direction">Direction.</param>
	public List<long> getSpawnCells(long playerLoc, int maxCellsAway, int minCellsAway)
	{
		SystemLogger.write ("Getting cells where enemy can be spawned...");
		List<long> possibleKeys = new List<long> ();

		int y = (int) (playerLoc / gridOffset);
		int x = (int) (playerLoc - (y * gridOffset));
		int minX = x - maxCellsAway;
		int maxX = x + maxCellsAway;

		int minY = y - maxCellsAway;
		int maxY = y + maxCellsAway;

		//Debug.Log (minX + " " + maxX + " " + minY + " " + maxY);
		int newX, newY;
		for(int i = minX; i <= maxX; i++)
		{
			for(int j = minY; j < maxY; j++)
			{
				newX = i;
				newY = j;

				if(Mathf.Abs(x - newX) >= minCellsAway && Mathf.Abs(y - newY) >= minCellsAway)
				{
					if(i > gridDimension)
					{
						newX= i - gridDimension;
					}
					else if(i < 0)
					{
						newX = gridDimension + i;
					}

					if(j > gridDimension)
					{
						newY = j - gridDimension;
					}
					else if(j< 0)
					{
						newY = gridDimension + j;
					}

					possibleKeys.Add(newX + (newY * gridOffset));
				}
			}
		}

		return possibleKeys;
	}
}
