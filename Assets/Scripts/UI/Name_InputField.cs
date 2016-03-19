using UnityEngine;
using UnityEngine.UI;

public class Name_InputField : MonoBehaviour
{

	public Button continueButton;
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
		// Check if is id
		if(NameGenerator.IsIDCard(playerName))
		{
			// Generate name
			playerName = NameGenerator.GenerateNewName(playerName);
		}

        SaveSystem.Instance.PlayerID = playerName;
    }

	public void checkValue()
	{
		if(nameInput.text.Length > 0)
		{
			continueButton.interactable = true;
            setPlayerName(nameInput.text);
			Application.LoadLevelAsync ("MenuSelectScreen");
		}
	}
}
