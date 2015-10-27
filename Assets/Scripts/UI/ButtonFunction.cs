using UnityEngine;
using System.Collections;

public class ButtonFunction : MonoBehaviour {

    /// <summary>
    /// Called every frame
    /// </summary>
    void Update()
    {
        // If any button is pressed, load the game.
        if (Input.anyKeyDown)
        {
            Application.LoadLevel("OriginalScene");
        }
    }
}
