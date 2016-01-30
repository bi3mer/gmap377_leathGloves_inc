using UnityEngine;
using System.Collections.Generic;

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

    private int _timer = 0;

	public static SpawnSystem Instance = null;

	void Start() 
	{
		_timer = DifficultyIncreaseTime;
	}
	
	void Update () 
	{
        _timer--;
        if (_timer <= 0) {
            CurrentDifficulty++;
            DifficultyIncreaseTime += 5;
            _timer = (int)(DifficultyIncreaseTime / Time.deltaTime);
        }

	    if (CurrentEnemyNumber < CurrentDifficulty) {
            SpawnEnemy();
            CurrentEnemyNumber++;
        }
	}

    void Awake() {
        if (Instance) {
            Destroy(this);
        }
        else {
            Instance = this;
        }
    }

    void SpawnEnemy() 
	{
        bool foundVertex = false;
        Vector3 position = Vector3.zero;
        

        if (EnemyPrefabs.Count == 0) return;

		int verticesSize = Player.Instance.getPlanetNavigation().vertices.Length;
        while (!foundVertex) {
			position = Player.Instance.getPlanetNavigation().vertices[Random.Range(0, verticesSize)];

            if (Player.Instance == null) {
                break;
            }
            float dist = Vector2.Distance(position, Player.Instance.transform.position);
            MinSpawnDistanceActual = MinSpawnDistanceEmpty + (MinSpawnDistancePopulated - MinSpawnDistanceEmpty) * (CurrentEnemyNumber / CurrentDifficulty);
            MaxSpawnDistanceActual = MinSpawnDistancePopulated + (MaxSpawnDistanceActual - MinSpawnDistancePopulated) * (CurrentEnemyNumber / CurrentDifficulty);
            if (dist > MinSpawnDistanceActual && dist < MaxSpawnDistance) {
                Collider[] hits = Physics.OverlapSphere(position, CollisionCheckRadius);
                if (hits.Length <= 1) {
                    break;
                }
            }
        }

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
        float sum = 0;
        for (int i=0; i<prefabsToUse.Count; i++) {
            if (r < sum + weightsToUse[i]) {
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
}
