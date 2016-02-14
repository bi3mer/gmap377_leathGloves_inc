using UnityEngine;
using System.Collections;
using System;
#if UNITY_EDITOR
using UnityEditor;
#endif

public class SaveSystem : MonoBehaviour {

    public static SaveSystem Instance = null;
    public static int SaveVersion = 1;
    public bool LoadOnGameStart = false;

    public class SaveFile {
        public int SaveVersion = SaveSystem.SaveVersion;
        public int Score = ScoreManager.Instance.score;
        public Vector3 PlayerPosition = Player.Instance.transform.position;
        public Quaternion PlayerRotation = Player.instance.transform.rotation;
        public float BeamAmmo = PickupCache.Instance.LaserBeam.GetComponent<Weapon>().ammo;
        public float MineAmmo = PickupCache.Instance.Mine.GetComponent<Weapon>().ammo;
        public float RocketAmmo = PickupCache.Instance.Rocket.GetComponent<Weapon>().ammo;

        public void Load() {
            ScoreManager.Instance.score = Score;
            Player.Instance.transform.position = PlayerPosition;
            Player.Instance.transform.rotation = PlayerRotation;
            Player.Instance.GetComponent<InterplanetaryObject>().NearestPlanet = InterplanetaryObject.GetNearestPlanet(PlayerPosition);
            PickupCache.Instance.LaserBeam.GetComponent<Weapon>().ammo = BeamAmmo;
            PickupCache.Instance.Mine.GetComponent<Weapon>().ammo = MineAmmo;
            PickupCache.Instance.Rocket.GetComponent<Weapon>().ammo = RocketAmmo;
        }
    }


    public string PlayerID = "Test";

    public string FileExt = ".sav";
    public string SaveDirectory = "Saves";
    public bool CanSave = false;
    public bool CanLoad = false;

    void Awake() {
        if (!Instance) {
            Instance = this;
            DontDestroyOnLoad(this);
        }
        else {
            Destroy(this);
        }

    }

	void Start () {
        SimpleTimer.OnGameOver += SaveOnGameOver;
	}

    void OnLevelWasLoaded(int level) {
        if (Application.loadedLevelName == "StartScreen") {
            CanLoad = false;
            CanSave = false;
        }
        else if (Application.loadedLevelName == "OriginalScene") {
            CanLoad = true;
            CanSave = true;
            if (LoadOnGameStart) LoadGame();
            LoadOnGameStart = false;
        }

    }

    void Update () {
	    

	}

    public void Initialize(string ID) {
        /*PlayerID = ID;
        CanSave = true;
        CanLoad = true;
        Debug.Log("Save system ready");*/
    }

    public void SaveGame() {
        if (!CanSave) {
            Debug.Log("Can't save now.");
            return;
        }
        if (!System.IO.Directory.Exists(SaveDirectory)) {
            System.IO.Directory.CreateDirectory(SaveDirectory);
        }

        System.Xml.Serialization.XmlSerializer writer = new System.Xml.Serialization.XmlSerializer(typeof(SaveFile));
        SaveFile save = new SaveFile();

        if (System.IO.File.Exists(SaveSystem.Instance.SaveDirectory + "/" + PlayerID + FileExt)) {
            System.IO.File.Delete(SaveSystem.Instance.SaveDirectory + "/" + PlayerID + FileExt);
        }
        System.IO.FileStream file = System.IO.File.OpenWrite(SaveDirectory + "\\" + PlayerID + FileExt);
        writer.Serialize(file, save);
        file.Close();

        Debug.Log("Saved " + PlayerID + FileExt);
    }

    public void LoadGame() {
        if (!CanLoad) {
            Debug.Log("Can't load now.");
            return;
        }

        System.Xml.Serialization.XmlSerializer reader = new System.Xml.Serialization.XmlSerializer(typeof(SaveFile));
        System.IO.StreamReader file = new System.IO.StreamReader(SaveDirectory + "\\" + PlayerID + FileExt);
        SaveFile save = (SaveFile)reader.Deserialize(file);
        save.Load();
        file.Close();
    }

    public void SetLoadAtGameStart() {
        StartCoroutine(LoadAtGameStart());
    }

    IEnumerator LoadAtGameStart() {
        while (!CanLoad) {
            yield return null;
        }

        LoadGame();
    }

    void SaveOnGameOver() {
        SaveGame();
        CanSave = false;
        CanLoad = false;
    }
}

#if UNITY_EDITOR
[CustomEditor(typeof(SaveSystem))]
public class SaveSystemEditor : Editor {

    public override void OnInspectorGUI() {
        DrawDefaultInspector();
        if (GUILayout.Button("Save Game")) {
            if (Application.isPlaying) {
                SaveSystem.Instance.SaveGame();
            }
        }
        if (GUILayout.Button("Load Game")) {
            if (Application.isPlaying) {
                SaveSystem.Instance.LoadGame();
            }
        }

    }

    void OnInspectorUpdate() {
        Repaint();
    }
}
#endif
