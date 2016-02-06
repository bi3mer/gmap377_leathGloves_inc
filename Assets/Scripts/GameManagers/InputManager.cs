using UnityEngine;
using System.Collections;
using XboxCtrlrInput;

public class InputManager : MonoBehaviour {

    public static InputManager Instance = null;

    public static float Player1HorizontalInput {
        get {
            if (XCI.GetNumPluggedCtrlrs() >= 1)
                return XCI.GetAxisRaw(XboxAxis.LeftStickX, 1);
            else
                return Input.GetAxisRaw("Horizontal");
        }
    }
    public static float Player1VerticalInput {
        get {
            if (XCI.GetNumPluggedCtrlrs() >= 1)
                return XCI.GetAxisRaw(XboxAxis.LeftStickY, 1);
            else
                return Input.GetAxisRaw("Vertical");
        }
    }
    public static float Player1Strafe {
        get {
            if (XCI.GetNumPluggedCtrlrs() >= 1) { 
                if (XCI.GetButton(XboxButton.LeftBumper, 1))
                    return -1;
                if (XCI.GetButton(XboxButton.RightBumper, 1))
                    return 1;
                return 0;
            }
            else
                return Input.GetAxisRaw("Strafe");
        }
    }
    public static float Player2HorizontalInput {
        get {
            if (XCI.GetNumPluggedCtrlrs() >= 2) {
                if (XCI.GetDPad(XboxDPad.Right, 2))
                    return 1;
                if (XCI.GetDPad(XboxDPad.Left, 2))
                    return -1;
                return 0;
            }
            else
                return Input.GetAxisRaw("Horizontal2");
        }
    }
    public static float Player2VerticalInput {
        get {
            if (XCI.GetNumPluggedCtrlrs() >= 2)
            {
                if (XCI.GetDPad(XboxDPad.Up, 2))
                    return 1;
                if (XCI.GetDPad(XboxDPad.Down, 2))
                    return -1;
                return 0;
            }
            else
                return Input.GetAxisRaw("Vertical2");
        }
    }
    public static float PlayerStartInput
    {
        get {
            return Input.GetAxisRaw("Submit");
        }
    }
    public static float Player2Shoot 
    {
        get {
            if (XCI.GetNumPluggedCtrlrs() >= 2)
                return XCI.GetAxisRaw(XboxAxis.RightTrigger, 2);
            else 
                return Input.GetAxisRaw("Player2Shoot");
        }
    }
    public static float Player2AimHorizontal 
    {
        get {
            if (XCI.GetNumPluggedCtrlrs() >= 2)
                return XCI.GetAxisRaw(XboxAxis.LeftStickX, 2);
            else
                return Input.GetAxisRaw("Player2AimHorizontal");
        }
    }
    public static float Player2AimVertical 
    {
        get {
            if (XCI.GetNumPluggedCtrlrs() >= 2)
                return XCI.GetAxisRaw(XboxAxis.LeftStickY, 2);
            else
                return Input.GetAxisRaw("Player2AimVertical");
        }
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
