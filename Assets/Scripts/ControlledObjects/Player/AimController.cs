using UnityEngine;
using XboxCtrlrInput;

#if UNITY_STANDALONE_WIN
    using System.Runtime.InteropServices;
#endif

public class AimController : MonoBehaviour
{
    public static AimController Instance;

    void Awake()
    {
        if(Instance == null)
        {
            Instance = this;
            DontDestroyOnLoad(this);
        }
        else
        {
            Destroy(this);
        }
    }

    // If windows
#if UNITY_STANDALONE_WIN

    [System.Flags]
    public enum MouseEventFlags
    {
        LeftDown = 0x00000002,
        LeftUp = 0x00000004,
        MiddleDown = 0x00000020,
        MiddleUp = 0x00000040,
        Move = 0x00000001,
        Absolute = 0x00008000,
        RightDown = 0x00000008,
        RightUp = 0x00000010
    }
    
    [StructLayout(LayoutKind.Sequential)]
    private struct Point
    {
        public int X, Y;

        public Point(int x, int y)
        {
            this.X = x;
            this.Y = y;
        }
    }
    
    [DllImport("user32.dll")]
    private static extern bool SetCursorPos(int X, int Y);
    [DllImport("user32.dll")]
    private static extern bool GetCursorPos(out Point pos);
    [DllImport("user32.dll")]
    private static extern void mouse_event(int dwFlags, int dx, int dy, int dwData, int dwExtraInfo);

    public static void MouseEvent(MouseEventFlags value)
    {
        Point position = new Point(0, 0);

        GetCursorPos(out position);

        mouse_event
            ((int)value,
             position.X,
             position.Y,
             0,
             0)
            ;
    }
#endif

    public float Sensitivity = 1.0f;

    public bool IsWindowInFocus = false;

    public bool ButtonHeld = false;
	
	void Update()
    {
        if (this.IsWindowInFocus)
        {
            float horizontal = InputManager.Player2AimHorizontal;
            float vertical = InputManager.Player2AimVertical;

            Vector2 currentMousePos = GetMousePosition();

            SetMousePosition(new Vector2(currentMousePos.x + horizontal * Sensitivity, currentMousePos.y + vertical * Sensitivity));

            if(InputManager.Player2Shoot > float.Epsilon)
            {
                if (!ButtonHeld)
                {
                    this.ButtonHeld = true;
                    Debug.Log("Shooting");
                    CallMouseEventLeftDown();
                }
            }
            else
            {
                if (ButtonHeld)
                {
                    Debug.Log("Shooting released");
                    this.ButtonHeld = false;
                    CallMouseEventLeftUp();
                }
                
            }
        }
    }

    public Vector2 GetMousePosition()
    {
        Vector2 position = Vector2.zero;

#if UNITY_STANDALONE_WIN
        Point cursorPosition = new Point(0, 0);
        GetCursorPos(out cursorPosition);
        position.x = (float)cursorPosition.X;
        position.y = (float)cursorPosition.Y;
#endif

        return position;
    }

    public void SetMousePosition(Vector2 mousePosition)
    {
#if UNITY_STANDALONE_WIN
        //Debug.Log("Set Mouse Position (Windows) to: " + mousePosition.ToString());
        SetCursorPos((int)mousePosition.x, (int)mousePosition.y);
#endif
    }

    void OnApplicationFocus(bool focusStatus)
    {
        IsWindowInFocus = focusStatus;
    }

    void CallMouseEventLeftDown()
    {
#if UNITY_STANDALONE_WIN
        MouseEvent(MouseEventFlags.LeftDown);
#endif
    }

    void CallMouseEventLeftUp()
    {
#if UNITY_STANDALONE_WIN
        MouseEvent(MouseEventFlags.LeftUp);
#endif
    }

}
