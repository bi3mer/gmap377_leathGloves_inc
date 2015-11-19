using UnityEngine;
using System.Collections;

public class ButtonFunction : MonoBehaviour {

    /// <summary>
    /// Called every frame
    /// </summary>
    void Update()
    {
        // If xbox start button (Windows/Linux) or the 1 key is pressed, start the game
        if (InputManager.PlayerStartInput > float.Epsilon || Input.GetKeyDown(KeyCode.Alpha1))
        {
            Application.LoadLevel("OriginalScene");
            WeaponDisplayController.Instance.ZeroOutAmmo();

        }
    }
}
