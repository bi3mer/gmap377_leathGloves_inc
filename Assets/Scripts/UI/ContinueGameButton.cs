using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class ContinueGameButton : MonoBehaviour {

    private Button _button;

    void Start() {
        _button = GetComponent<Button>();
    }

	void Update () {
		string text = GameStartManager.Instance.nameInputFieldData;        
		if (System.IO.File.Exists(SaveSystem.Instance.SaveDirectory + "/" + text + SaveSystem.Instance.FileExt)) {
            _button.interactable = true;
        }
        else {
            _button.interactable = false;
        }
	}
}
