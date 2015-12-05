using UnityEngine;
using System.Collections;

public class InputManager : MonoBehaviour {

    public static InputManager Instance = null;

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
    public static float Player2Shoot 
    {
        get { return Input.GetAxisRaw("Player2Shoot"); }
    }
    public static float Player2AimHorizontal 
    {
        get { return Input.GetAxisRaw("Player2AimHorizontal"); }
    }
    public static float Player2AimVertical 
    {
        get { return Input.GetAxisRaw("Player2AimVertical"); }
    }



    void Awake() {
        if (Instance) {
            Destroy(this);
        }
        else {
            Instance = this;
        }
    }

    void Update() {
        
    }
}
