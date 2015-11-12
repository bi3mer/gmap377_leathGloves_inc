using UnityEngine;
using System.Collections.Generic;

public class SpawnSystem : MonoBehaviour {

    public static SpawnSystem Instance = null;

    public int CurrentDifficulty = 5;
    public int DifficultyIncreaseTime = 20;
    public int MinSpawnDistance = 100;
    public List<GameObject> EnemyPrefabs;

    private int _timer = 0;
    private int _currentEnemyNumber = 0;

    void Start () {
        _timer = DifficultyIncreaseTime;
	}
	
	void Update () {
        _timer--;
        if (_timer <= 0) {
            CurrentDifficulty++;
            DifficultyIncreaseTime += 5;
            _timer = (int)(DifficultyIncreaseTime / Time.deltaTime);
        }

	    if (_currentEnemyNumber < CurrentDifficulty) {
            SpawnEnemy();
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

    void SpawnEnemy() {
        bool foundVertex = false;
        Vector3 position = Vector3.zero;
        

        if (EnemyPrefabs.Count == 0) return;

        int movementLookupSize = VertexNavigation.Instance.movemementLookup.Count;
        while (!foundVertex) {
            position = VertexNavigation.Instance.movemementLookup[Random.Range(0, movementLookupSize - 1)].position;

            if (Player.Instance == null) {
                break;
            }
            if (DistanceCalculator.euclidianDistance(position, Player.Instance.transform.position) > MinSpawnDistance) {
                break;
            }
        }
        
        GameObject.Instantiate(EnemyPrefabs[Random.Range(0, EnemyPrefabs.Count - 1)], position, new Quaternion());
    }

    public void RegisterEnemyDeath() {
        _currentEnemyNumber -= 1;
    }
}
