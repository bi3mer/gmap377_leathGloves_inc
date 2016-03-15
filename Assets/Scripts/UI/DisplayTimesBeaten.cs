using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class DisplayTimesBeaten : MonoBehaviour {

	public Text continueText;
	public Text continueDescription;
	public Text multiplierText;

	// Use this for initialization
	void Start () {
		DisplayText ();
	}

	void DisplayText()
	{
		int times = SaveSystem.Instance.GetTimesBeaten ();
		bool isNewGamePlus = SaveSystem.Instance.IsNewGamePlus ();
		multiplierText.text = "";

		if(isNewGamePlus)
		{
			continueText.text = "New Game+";
			continueDescription.text = "Start a new game plus! All bosses respawn and start with a permanent x2 score multiplier for each time you beat the game!";
		}

		for(int i = 0; i < times; i++)
		{
			multiplierText.text = multiplierText.text + " | ";
		}

	}
}
