using UnityEngine;
using System.Collections.Generic;

public class SpawnSystem : MonoBehaviour {

    public static SpawnSystem Instance = null;

    public int CurrentDifficulty = 5;
    public int DifficultyIncreaseTime = 20;
    public int MinSpawnDistance = 100;
    public int MaxSpawnDistance = 200;
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
            _currentEnemyNumber++;
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

        int verticesSize = VertexNavigation.Instance.vertices.Length;
        while (!foundVertex) {
            position = VertexNavigation.Instance.vertices[Random.Range(0, verticesSize)];

            if (Player.Instance == null) {
                break;
            }
            float dist = DistanceCalculator.euclidianDistance(position, Player.Instance.transform.position);
            if (dist > MinSpawnDistance && dist < MaxSpawnDistance) {
                break;
            }
        }
        
        GameObject e = GameObject.Instantiate(EnemyPrefabs[Random.Range(0, EnemyPrefabs.Count)], position, new Quaternion()) as GameObject;
        Gravity nearestPlanet = InterplanetaryObject.GetNearestPlanet(position);
        Vector3 angleToPlanet = position - nearestPlanet.transform.position;
        Vector3 oldpos = e.transform.position;
        e.transform.position = e.transform.position + angleToPlanet.normalized * 10;
        //Debug.Log(oldpos + " -> " + e.transform.position + " (" + Vector3.Distance(nearestPlanet.transform.position, oldpos) + " -> " + Vector3.Distance(nearestPlanet.transform.position, e.transform.position) + ")");
        
    }

    public void RegisterEnemyDeath() {
        _currentEnemyNumber -= 1;
    }
}
