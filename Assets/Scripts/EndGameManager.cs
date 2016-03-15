using UnityEngine;
using System.Collections;

public class EndGameManager : MonoBehaviour {

	public static EndGameManager instance;

	// Use this for initialization
	void Start () {
		instance = this;
	}
	
	public void PrepForNewGamePlus()
	{
		SaveSystem.Instance.setUpNewGamePlus();
		Application.LoadLevel("Credits");
	}
}
