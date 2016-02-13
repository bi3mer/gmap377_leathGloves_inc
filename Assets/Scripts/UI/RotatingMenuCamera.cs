using UnityEngine;
using System.Collections;

public class RotatingMenuCamera : MonoBehaviour {

	[Tooltip("Transform that contains transform values for camera when it is facing the instructions menu")]
	public Transform instructionMenuWayPoint;
	[Tooltip("Transform that contains transform values for camera when it is facing the new game menu")]
	public Transform newGameWayPoint;
	[Tooltip("Transform that contains transform values for camera when it is facing the continue menu")]
	public Transform continueWayPoint;
	[Tooltip("How quickly the menu will switch screens")]
	public float turningSpeed;

	[Tooltip("Panel that contains objects for instruction menu")]
	public RotatingMenuPanel instructionMenu;
	[Tooltip("Panel that contains objects for new game menu")]
	public RotatingMenuPanel newGameMenu;
	[Tooltip("Panel that contains objects for continue menu")]
	public RotatingMenuPanel continueMenu;

	// Different types of panels, used for checking type of panel 
	public enum Panel  
	{ MENU, NEWGAME, CONTINUE };

	bool turning;
	bool moving;
	Vector3 targetLocation;
	Quaternion targetRotation;

	Panel currentPanel;
	RotatingMenuPanel currentMenu;

	// Use this for initialization
	void Start () {
		transform.position = instructionMenuWayPoint.position;
		transform.rotation = instructionMenuWayPoint.rotation;
		currentPanel = Panel.MENU;
		currentMenu = instructionMenu;
		currentMenu.activatePanel ();

		newGameMenu.deactivatePanel ();
		continueMenu.deactivatePanel ();
	}
	
	// Update is called once per frame
	void Update () {

		// if currently in the process of switching panels
		// moving and turning are checked seperately

		if (turning || moving)
		{
			if(moving)
			{
				transform.position = Vector3.Lerp(transform.position, targetLocation, Time.deltaTime * turningSpeed * 2f);

				if(Vector3.Distance(transform.position, targetLocation) < 0.01)
				{
					moving = false;
					transform.position = targetLocation;
				}
			}

			if(turning)
			{
				transform.rotation = Quaternion.Lerp(transform.rotation, targetRotation, Time.deltaTime * turningSpeed);
				if( Mathf.Abs(transform.rotation.y - targetRotation.y) < 0.01)
				{
					turning = false;
					transform.rotation = targetRotation;

				}
			}

			if(!turning && !moving)
			{
				currentMenu.activatePanel();
			}
		}
		else
		{
			// switching panels can occur using the buttons or the keyboard control

			if(Input.GetKeyDown(KeyCode.A) || InputManager.Player1Strafe < -1 * float.Epsilon || InputManager.Player2HorizontalInput < -1 * float.Epsilon)
			{
				if(currentPanel == Panel.MENU)
				{
					toNewGame();
				}
				else if(currentPanel == Panel.CONTINUE)
				{
					toInstructionMenu();
				}
			}
			else if(Input.GetKeyDown(KeyCode.D) || InputManager.Player1Strafe > float.Epsilon || InputManager.Player2HorizontalInput > float.Epsilon)
			{
				if(currentPanel == Panel.MENU)
				{
					toContinue();
				}
				else if(currentPanel == Panel.NEWGAME)
				{
					toInstructionMenu();
				}
			}
		}
	}

	// set up to go to new game menu
	public void toNewGame()
	{
		turning = true;
		moving = true;
		targetLocation = newGameWayPoint.position;
		targetRotation = newGameWayPoint.rotation;
		currentMenu.deactivatePanel ();
		currentMenu = newGameMenu;
		currentPanel = Panel.NEWGAME;
	}

	// set up to go to continue menu
	public void toContinue()
	{
		turning = true;
		moving = true;
		targetLocation = continueWayPoint.position;
		targetRotation = continueWayPoint.rotation;
		currentMenu.deactivatePanel ();
		currentMenu = continueMenu;
		currentPanel = Panel.CONTINUE;
	}

	// set up to go to instruction menu
	public void toInstructionMenu()
	{
		turning = true;
		moving = true;
		targetLocation = instructionMenuWayPoint.position;
		targetRotation = instructionMenuWayPoint.rotation;
		currentMenu.deactivatePanel ();
		currentMenu = instructionMenu;
		currentPanel = Panel.MENU;
	}

	// gets the enum value of the current menu

	public Panel getCurrentPanel()
	{
		return currentPanel;
	}
}