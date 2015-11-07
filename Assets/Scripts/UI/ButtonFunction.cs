using UnityEngine;
using System.Collections;

public class ButtonFunction : MonoBehaviour {

    /// <summary>
    /// Called every frame
    /// </summary>
    void Update()
    {
        // If xbox start button (Windows/Linux) or the M key is pressed, start the game
        if (InputManager.PlayerStartInput > float.Epsilon || Input.GetKeyDown(KeyCode.M))
        {
            Application.LoadLevel("OriginalScene");
        }
    }
}
