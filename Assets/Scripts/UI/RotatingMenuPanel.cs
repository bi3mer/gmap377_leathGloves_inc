﻿using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class RotatingMenuPanel : MonoBehaviour {

	public Button[] switchButtons;
	public Button mainButton;
	public Image displayPanel;
	public bool dependsOnNameField;
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	public void deactivatePanel()
	{
		for(int i = 0; i < switchButtons.Length; i++)
		{
			switchButtons[i].gameObject.SetActive(false);
		}

		if(mainButton != null)
		{
			mainButton.interactable = false;
		}

		displayPanel.color = new Color(displayPanel.color.r, displayPanel.color.g, displayPanel.color.b, 0.1f);
	}

	public void activatePanel()
	{
		for(int i = 0; i < switchButtons.Length; i++)
		{
			switchButtons[i].gameObject.SetActive(true);
		}

		if(mainButton != null)
		{
			if(dependsOnNameField)
			{
				string text = GameStartManager.Instance.nameInputFieldData;        
				if (System.IO.File.Exists(SaveSystem.Instance.SaveDirectory + "/" + text + SaveSystem.Instance.FileExt)) {
					mainButton.interactable = true;
					displayPanel.color = new Color(displayPanel.color.r, displayPanel.color.g, displayPanel.color.b, 0.6f);
				}
				else 
				{
					mainButton.interactable = false;
					displayPanel.color = new Color(displayPanel.color.r, displayPanel.color.g, displayPanel.color.b, 0.3f);
				}
			}
			else
			{
				mainButton.interactable = true;
				displayPanel.color = new Color(displayPanel.color.r, displayPanel.color.g, displayPanel.color.b, 0.6f);
			}
		}
		else
		{
			displayPanel.color = new Color(displayPanel.color.r, displayPanel.color.g, displayPanel.color.b, 0.6f);
		}
	}

}
