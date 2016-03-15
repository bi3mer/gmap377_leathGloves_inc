using UnityEngine;
using System.Collections;
using System;
using System.Collections.Generic;
using System.Xml.Serialization;

#if UNITY_EDITOR
using UnityEditor;
#endif

public class SaveSystem : MonoBehaviour {

    public static SaveSystem Instance = null;
    public static int SaveVersion = 2;
    public bool LoadOnGameStart = false;
    public int TimesBeaten = 0;
	public bool NewGamePlus = false;

	static bool loadFinished = false;

    public class SaveFile {
        public int SaveVersion;
        public int TimesBeaten;
        public int Score;
        public int Multiplier;
        public Vector3 PlayerPosition;
        public Quaternion PlayerRotation;
        public float BeamAmmo;
        public float MineAmmo;
        public float RocketAmmo;

		public bool newGamePlus;
        public bool TankBossDead;
        public bool ScorpionDead;
        public bool MineLayerDead;
        public bool GoliathDead;

        public List<long> desertSamplePointChunks;
        public List<string> desertSamplePointObjectNames;
        public List<Vector3> desertSamplePointLocations;
		public List<int> desertTriangleIndexes;
		public List<float> desertSamplePointSizes;
        public List<long> iceSamplePointChunks;
        public List<string> iceSamplePointObjectNames;
        public List<Vector3> iceSamplePointLocations;
		public List<int> iceTriangleIndexes;
		public List<float> iceSamplePointSizes;

        public SaveFile() {
            
        }

        public void Initialize() {
            SaveVersion = SaveSystem.SaveVersion;
            TimesBeaten = SaveSystem.Instance.TimesBeaten;
			newGamePlus = SaveSystem.Instance.NewGamePlus;

            Score = ScoreManager.Instance.score;
            Multiplier = ScoreManager.Instance.multi;
            PlayerPosition = Player.Instance.transform.position;
            PlayerRotation = Player.instance.transform.rotation;
            BeamAmmo = PickupCache.Instance.LaserBeam.GetComponent<Weapon>().ammo;
            MineAmmo = PickupCache.Instance.Mine.GetComponent<Weapon>().ammo;
            RocketAmmo = PickupCache.Instance.Rocket.GetComponent<Weapon>().ammo;

            TankBossDead = BossManager.Instance.Planet1Tank ? false : true;
            ScorpionDead = BossManager.Instance.Scorpion ? false : true;
            MineLayerDead = BossManager.Instance.MineLayer ? false : true;
            GoliathDead = BossManager.Instance.Goliath ? false : true;

            desertSamplePointChunks = ProceduralGenerationOnMesh.serializedSamplePointsByPlanet["DesertPlanet"].samplePointKeys;
            desertSamplePointObjectNames = ProceduralGenerationOnMesh.serializedSamplePointsByPlanet["DesertPlanet"].samplePointObjects;
            desertSamplePointLocations = ProceduralGenerationOnMesh.serializedSamplePointsByPlanet["DesertPlanet"].samplePointLocations;
            desertTriangleIndexes = ProceduralGenerationOnMesh.serializedSamplePointsByPlanet["DesertPlanet"].triangleIndexes;
            desertSamplePointSizes = ProceduralGenerationOnMesh.serializedSamplePointsByPlanet["DesertPlanet"].samplePointSizes;

            iceSamplePointChunks = ProceduralGenerationOnMesh.serializedSamplePointsByPlanet["IcePlanet"].samplePointKeys;
            iceSamplePointObjectNames = ProceduralGenerationOnMesh.serializedSamplePointsByPlanet["IcePlanet"].samplePointObjects;
            iceSamplePointLocations = ProceduralGenerationOnMesh.serializedSamplePointsByPlanet["IcePlanet"].samplePointLocations;
            iceTriangleIndexes = ProceduralGenerationOnMesh.serializedSamplePointsByPlanet["IcePlanet"].triangleIndexes;
            iceSamplePointSizes = ProceduralGenerationOnMesh.serializedSamplePointsByPlanet["IcePlanet"].samplePointSizes;
        }

        public void SoftLoad() {
            SaveSystem.Instance.TimesBeaten = TimesBeaten;
			SaveSystem.Instance.NewGamePlus = newGamePlus;
        }

        public void Load() {
            //ScoreManager.Instance.score = Score;
            //ScoreManager.Instance.SetMultiplier(Multiplier);
            SaveSystem.Instance.TimesBeaten = TimesBeaten;
			Player.Instance.transform.position = PlayerPosition;
			Player.Instance.transform.rotation = PlayerRotation;
			Player.Instance.GetComponent<InterplanetaryObject> ().NearestPlanet = InterplanetaryObject.GetNearestPlanet (PlayerPosition);
			PickupCache.Instance.LaserBeam.GetComponent<Weapon> ().ammo = BeamAmmo;
			PickupCache.Instance.Mine.GetComponent<Weapon> ().ammo = MineAmmo;
			PickupCache.Instance.Rocket.GetComponent<Weapon> ().ammo = RocketAmmo;

			if (TankBossDead) Destroy(BossManager.Instance.Planet1Tank);
			if (ScorpionDead) Destroy(BossManager.Instance.Scorpion);
			if (MineLayerDead) Destroy(BossManager.Instance.MineLayer);
			if (GoliathDead) Destroy(BossManager.Instance.Goliath);

			ProceduralGenerationOnMesh.serializedInformation desertInfo = new ProceduralGenerationOnMesh.serializedInformation ();
			desertInfo.samplePointKeys = desertSamplePointChunks;
			desertInfo.samplePointLocations = desertSamplePointLocations;
			desertInfo.samplePointObjects = desertSamplePointObjectNames;
			desertInfo.triangleIndexes = desertTriangleIndexes;
			desertInfo.samplePointSizes = desertSamplePointSizes;

			ProceduralGenerationOnMesh.serializedInformation iceInfo = new ProceduralGenerationOnMesh.serializedInformation ();
			iceInfo.samplePointKeys = iceSamplePointChunks;
			iceInfo.samplePointLocations = iceSamplePointLocations;
			iceInfo.samplePointObjects = iceSamplePointObjectNames;
			iceInfo.triangleIndexes = iceTriangleIndexes;
			iceInfo.samplePointSizes = iceSamplePointSizes;


			if (ProceduralGenerationOnMesh.serializedSamplePointsByPlanet.ContainsKey ("DesertPlanet")) {
				ProceduralGenerationOnMesh.serializedSamplePointsByPlanet ["DesertPlanet"] = desertInfo;
			} else {
				ProceduralGenerationOnMesh.serializedSamplePointsByPlanet.Add ("DesertPlanet", desertInfo);
			}

			if (ProceduralGenerationOnMesh.serializedSamplePointsByPlanet.ContainsKey ("IcePlanet")) {
				Debug.Log (System.Environment.StackTrace);
				ProceduralGenerationOnMesh.serializedSamplePointsByPlanet ["IcePlanet"] = iceInfo;
			} else {
				ProceduralGenerationOnMesh.serializedSamplePointsByPlanet.Add ("IcePlanet", iceInfo);
			}

			
			int multi = 1;
			for(int i = 0; i < TimesBeaten; i++)
			{
				multi = multi * 2;
				
			}
			
			ScoreManager.Instance.SetMultiplier (multi);
			loadFinished = true;
        }

		public void NewGamePlusLoad()
		{
			ProceduralGenerationOnMesh.serializedInformation desertInfo = new ProceduralGenerationOnMesh.serializedInformation ();
			desertInfo.samplePointKeys = desertSamplePointChunks;
			desertInfo.samplePointLocations = desertSamplePointLocations;
			desertInfo.samplePointObjects = desertSamplePointObjectNames;
			desertInfo.triangleIndexes = desertTriangleIndexes;
			desertInfo.samplePointSizes = desertSamplePointSizes;
			
			ProceduralGenerationOnMesh.serializedInformation iceInfo = new ProceduralGenerationOnMesh.serializedInformation ();
			iceInfo.samplePointKeys = iceSamplePointChunks;
			iceInfo.samplePointLocations = iceSamplePointLocations;
			iceInfo.samplePointObjects = iceSamplePointObjectNames;
			iceInfo.triangleIndexes = iceTriangleIndexes;
			iceInfo.samplePointSizes = iceSamplePointSizes;

			SaveSystem.Instance.NewGamePlus = false;
			newGamePlus = SaveSystem.Instance.NewGamePlus;

			if (ProceduralGenerationOnMesh.serializedSamplePointsByPlanet.ContainsKey ("DesertPlanet")) {
				ProceduralGenerationOnMesh.serializedSamplePointsByPlanet ["DesertPlanet"] = desertInfo;
			} else {
				ProceduralGenerationOnMesh.serializedSamplePointsByPlanet.Add ("DesertPlanet", desertInfo);
			}
			
			if (ProceduralGenerationOnMesh.serializedSamplePointsByPlanet.ContainsKey ("IcePlanet")) {
				Debug.Log (System.Environment.StackTrace);
				ProceduralGenerationOnMesh.serializedSamplePointsByPlanet ["IcePlanet"] = iceInfo;
			} else {
				ProceduralGenerationOnMesh.serializedSamplePointsByPlanet.Add ("IcePlanet", iceInfo);
			}

			int multi = 1;
			for(int i = 0; i < TimesBeaten; i++)
			{
				multi = multi * 2;

			}

			ScoreManager.Instance.SetMultiplier (multi);

			loadFinished = true;
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

        XmlSerializer writer = new XmlSerializer(typeof(SaveFile));
        SaveFile save = new SaveFile();
        save.Initialize();

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

		if(IsNewGamePlus())
		{
			save.NewGamePlusLoad();
		}
		else
		{
       		save.Load();
		}
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

    public int GetTimesBeaten() {
        XmlSerializer reader = new XmlSerializer(typeof(SaveFile));
        System.IO.StreamReader file = new System.IO.StreamReader(SaveDirectory + "/" + PlayerID + FileExt);
        SaveFile save = (SaveFile)reader.Deserialize(file);
        save.SoftLoad();
        file.Close();

        return save.TimesBeaten;
    }

	public bool IsNewGamePlus(){
		XmlSerializer reader = new XmlSerializer(typeof(SaveFile));
		System.IO.StreamReader file = new System.IO.StreamReader(SaveDirectory + "/" + PlayerID + FileExt);
		SaveFile save = (SaveFile)reader.Deserialize(file);
		save.SoftLoad();
		file.Close();
		
		return save.newGamePlus;
	}

	public void setUpNewGamePlus()
	{
		SaveSystem.Instance.NewGamePlus = true;
		SaveSystem.Instance.TimesBeaten = SaveSystem.Instance.TimesBeaten + 1;
		SaveGame ();
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
