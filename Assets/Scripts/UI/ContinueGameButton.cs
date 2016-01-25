using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class ContinueGameButton : MonoBehaviour {

    public InputField NameInputField;
    private Button _button;

    void Start() {
        _button = GetComponent<Button>();
    }

	void Update () {
        string text = NameInputField.text;

        if (System.IO.File.Exists(SaveSystem.Instance.SaveDirectory + "/" + text + SaveSystem.Instance.FileExt)) {
            _button.interactable = true;
        }
        else {
            _button.interactable = false;
        }
	}
}
