using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class RotatingMenuPanel : MonoBehaviour {

	public Button[] switchPanelButtons;
	public Image displayPanel;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	public void deactivatePanel()
	{
		for(int i = 0; i < switchPanelButtons.Length; i++)
		{
			switchPanelButtons[i].gameObject.SetActive(false);
		}

		displayPanel.color = new Color(displayPanel.color.r, displayPanel.color.g, displayPanel.color.b, 0.2f);
	}

	public void activatePanel()
	{
		for(int i = 0; i < switchPanelButtons.Length; i++)
		{
			switchPanelButtons[i].gameObject.SetActive(true);
		}

		displayPanel.color = new Color(displayPanel.color.r, displayPanel.color.g, displayPanel.color.b, 0.6f);
	}
}
