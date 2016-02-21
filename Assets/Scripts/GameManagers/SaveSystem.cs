using UnityEngine;
using System.Collections;
using System;
using System.Collections.Generic;

#if UNITY_EDITOR
using UnityEditor;
#endif

public class SaveSystem : MonoBehaviour {

    public static SaveSystem Instance = null;
    public static int SaveVersion = 1;
    public bool LoadOnGameStart = false;

	static bool loadFinished = false;

    public class SaveFile {
        public int SaveVersion = SaveSystem.SaveVersion;
        public int Score = ScoreManager.Instance.score;
        public Vector3 PlayerPosition = Player.Instance.transform.position;
        public Quaternion PlayerRotation = Player.instance.transform.rotation;
        public float BeamAmmo = PickupCache.Instance.LaserBeam.GetComponent<Weapon>().ammo;
        public float MineAmmo = PickupCache.Instance.Mine.GetComponent<Weapon>().ammo;
        public float RocketAmmo = PickupCache.Instance.Rocket.GetComponent<Weapon>().ammo;

<<<<<<< Updated upstream
=======
<<<<<<< HEAD
<<<<<<< HEAD
		public List<long> desertSamplePointChunks = ProceduralGenerationOnMesh.serializedSamplePointsByPlanet["DesertPlanet"].samplePointKeys;
		public List<string> desertSamplePointObjectNames = ProceduralGenerationOnMesh.serializedSamplePointsByPlanet["DesertPlanet"].samplePointObjects;
		public List<Vector3> desertSamplePointLocations = ProceduralGenerationOnMesh.serializedSamplePointsByPlanet["DesertPlanet"].samplePointLocations;

		public List<long> iceSamplePointChunks = ProceduralGenerationOnMesh.serializedSamplePointsByPlanet["IcePlanet"].samplePointKeys;
		public List<string> iceSamplePointObjectNames = ProceduralGenerationOnMesh.serializedSamplePointsByPlanet["IcePlanet"].samplePointObjects;
		public List<Vector3> iceSamplePointLocations = ProceduralGenerationOnMesh.serializedSamplePointsByPlanet["IcePlanet"].samplePointLocations;

        public void Load() {
            ScoreManager.Instance.score = Score;
	            Player.Instance.transform.position = PlayerPosition;
	            Player.Instance.transform.rotation = PlayerRotation;
	            Player.Instance.GetComponent<InterplanetaryObject>().NearestPlanet = InterplanetaryObject.GetNearestPlanet(PlayerPosition);
	            PickupCache.Instance.LaserBeam.GetComponent<Weapon>().ammo = BeamAmmo;
	            PickupCache.Instance.Mine.GetComponent<Weapon>().ammo = MineAmmo;
            	PickupCache.Instance.Rocket.GetComponent<Weapon>().ammo = RocketAmmo;

				ProceduralGenerationOnMesh.serializedInformation desertInfo = new ProceduralGenerationOnMesh.serializedInformation ();
				desertInfo.samplePointKeys = desertSamplePointChunks;
				desertInfo.samplePointLocations = desertSamplePointLocations;
				desertInfo.samplePointObjects = desertSamplePointObjectNames;

				ProceduralGenerationOnMesh.serializedInformation iceInfo = new ProceduralGenerationOnMesh.serializedInformation ();
				iceInfo.samplePointKeys = iceSamplePointChunks;
				iceInfo.samplePointLocations = iceSamplePointLocations;
				iceInfo.samplePointObjects = iceSamplePointObjectNames;

				if (ProceduralGenerationOnMesh.serializedSamplePointsByPlanet.ContainsKey ("DesertPlanet")) 
				{
					ProceduralGenerationOnMesh.serializedSamplePointsByPlanet["DesertPlanet"] = desertInfo;
				}
				else
				{
					ProceduralGenerationOnMesh.serializedSamplePointsByPlanet.Add ("DesertPlanet", desertInfo);
				}

				if (ProceduralGenerationOnMesh.serializedSamplePointsByPlanet.ContainsKey ("IcePlanet")) 
				{
				Debug.Log (System.Environment.StackTrace);
					ProceduralGenerationOnMesh.serializedSamplePointsByPlanet["IcePlanet"] = iceInfo;
				}
				else
				{
					ProceduralGenerationOnMesh.serializedSamplePointsByPlanet.Add ("IcePlanet", iceInfo);
				}
			loadFinished = true;
=======
=======
>>>>>>> origin/master
>>>>>>> Stashed changes
        public bool TankBossDead = BossManager.Instance.Planet1Tank ? false : true;
        public bool ScorpionDead = BossManager.Instance.Scorpion ? false : true;
        public bool MineLayerDead = BossManager.Instance.MineLayer ? false : true;
        public bool GoliathDead = BossManager.Instance.Goliath ? false : true;

        public void Load() {
            ScoreManager.Instance.score = Score;
            Player.Instance.transform.position = PlayerPosition;
            Player.Instance.transform.rotation = PlayerRotation;
            Player.Instance.GetComponent<InterplanetaryObject>().NearestPlanet = InterplanetaryObject.GetNearestPlanet(PlayerPosition);
            PickupCache.Instance.LaserBeam.GetComponent<Weapon>().ammo = BeamAmmo;
            PickupCache.Instance.Mine.GetComponent<Weapon>().ammo = MineAmmo;
            PickupCache.Instance.Rocket.GetComponent<Weapon>().ammo = RocketAmmo;

            if (TankBossDead) Destroy(BossManager.Instance.Planet1Tank);
            if (ScorpionDead) Destroy(BossManager.Instance.Scorpion);
            if (MineLayerDead) Destroy(BossManager.Instance.MineLayer);
            if (GoliathDead) Destroy(BossManager.Instance.Goliath);
<<<<<<< Updated upstream
=======
<<<<<<< HEAD
>>>>>>> origin/master
=======
>>>>>>> origin/master
>>>>>>> Stashed changes
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

			Debug.Log (LoadOnGameStart + " huh");
            if (LoadOnGameStart) 
			{
				LoadGame();
			}
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
        System.IO.FileStream file = System.IO.File.OpenWrite(SaveDirectory + "/" + PlayerID + FileExt);
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
        System.IO.StreamReader file = new System.IO.StreamReader(SaveDirectory + "/" + PlayerID + FileExt);
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

		Debug.Log (System.Environment.StackTrace);
       	LoadGame();
    }

    void SaveOnGameOver() {
        SaveGame();
        CanSave = false;
        CanLoad = false;
    }

	
	public bool getLoaded()
	{
		return loadFinished;
	}

	public void setLoaded(bool s)
	{
		loadFinished = s;
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
