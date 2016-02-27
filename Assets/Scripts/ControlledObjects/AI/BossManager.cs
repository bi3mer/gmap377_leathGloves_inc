using UnityEngine;
using System.Collections;

public class BossManager : MonoBehaviour {
    public static BossManager Instance = null;

    public GameObject Planet1Tank;
    public GameObject Scorpion;
    public GameObject MineLayer;
    public GameObject Goliath;

    bool _planet1TankCurrentlyAlive = true;
    bool _scorpionCurrentlyAlive = true;
    bool _mineLayerCurrentlyAlive = true;
    bool _goliathCurrentlyAlive = true;

    void Awake() {
        if (Instance == null) {
            Instance = this;
        }
        else {
            Destroy(this);
        }
    }
    
	void Update() {
        if (_planet1TankCurrentlyAlive && !Planet1Tank) {
            _planet1TankCurrentlyAlive = false;
            ScoreManager.Instance.SetMultiplier(2);
        }
        if (_scorpionCurrentlyAlive && !Scorpion) {
            _scorpionCurrentlyAlive = false;
            ScoreManager.Instance.SetMultiplier(2);
        }
        if (_mineLayerCurrentlyAlive && !MineLayer) {
            _mineLayerCurrentlyAlive = false;
            ScoreManager.Instance.SetMultiplier(2);
        }
        if (_goliathCurrentlyAlive && !Goliath) {
            _goliathCurrentlyAlive = false;
            ScoreManager.Instance.SetMultiplier(2);
        }

    }
}
