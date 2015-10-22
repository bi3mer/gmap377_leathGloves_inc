using UnityEngine;
using System.Collections;

public class ButtonFunction : MonoBehaviour {

    /// <summary>
    /// What the button does when clicked
    /// </summary>
    public void ButtonLoadLevel()
    {
        Application.LoadLevel("OriginalScene");
    }
}
