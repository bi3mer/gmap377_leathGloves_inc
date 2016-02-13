using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class NameLoadScreenManager : MonoBehaviour {

	public InputField nameInputField;

	string nameFieldData;

	// Use this for initialization
	void Start () {
		nameFieldData = nameInputField.text;
		DontDestroyOnLoad (this.gameObject);
	}

    
	public string getNameFieldData()
	{
		return nameFieldData;
	}

    public void UpdateFieldData(string value) {
        nameFieldData = value;
    }

	public void LoadMenu()
	{
		Application.LoadLevelAsync ("MenuSelectScreen");
	}
	
}
