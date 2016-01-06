using UnityEngine;
using System.Collections;
using UnityEngine.UI;
public class Name_InputField : MonoBehaviour {

    private InputField nameInput;

	// Use this for initialization
	void Start () {
        this.nameInput = GetComponent<InputField>();
        nameInput.onEndEdit.AddListener(setPlayerName);
        nameInput.Select();

	}

    public void setPlayerName(string playerName)
    {
        Debug.Log("Player Name is " + playerName);
        ScoreManager.Instance.SetName(playerName);
    }
}
