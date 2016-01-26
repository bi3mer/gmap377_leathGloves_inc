using UnityEngine;
using UnityEngine.UI;

public class Name_InputField : MonoBehaviour
{

    private InputField nameInput;

    /// <summary>
    /// Used to initialize variables on creation
    /// </summary>
	void Start ()
    {
        this.nameInput = GetComponent<InputField>();
        nameInput.onEndEdit.AddListener(setPlayerName);
        nameInput.Select();

	}

    /// <summary>
    /// Set's the player's name for the game
    /// </summary>
    /// <param name="playerName">The desired name for the player</param>
    public void setPlayerName(string playerName)
    {
        ScoreManager.Instance.SetName(playerName);

        if (SaveSystem.Instance)
        {
            SaveSystem.Instance.Initialize(playerName);
        }
    }
}
