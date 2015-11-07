using UnityEngine;
using System.Collections;

public class InputManager : MonoBehaviour {

    public static float Player1HorizontalInput {
        get { return Input.GetAxisRaw("Horizontal"); }
    }
    public static float Player1VerticalInput {
        get { return Input.GetAxisRaw("Vertical"); }
    }
    public static float Player2HorizontalInput {
        get { return Input.GetAxisRaw("Horizontal2"); }
    }
    public static float Player2VerticalInput {
        get { return Input.GetAxisRaw("Vertical2"); }
    }
    public static float PlayerStartInput
    {
        get { return Input.GetAxisRaw("Submit"); }
    }
    
}
