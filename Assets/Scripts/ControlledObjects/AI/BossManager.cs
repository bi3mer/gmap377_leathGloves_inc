using UnityEngine;
using System.Collections;

public class BossManager : MonoBehaviour {
    public static BossManager Instance = null;

    public GameObject Planet1Tank;
    public GameObject Scorpion;
    public GameObject MineLayer;
    public GameObject Goliath;


    void Awake() {
        if (Instance == null) {
            Instance = this;
        }
        else {
            Destroy(this);
        }
    }

	void Start() {
	
	}
}
