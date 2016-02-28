using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class PopUpText : MonoBehaviour 
{
	public static PopUpText Instance = null;
	private Text _multiText;
	public GameObject popUp;

	void Awake()
	{
		if (Instance)
		{
			Destroy(this);
		}
		else
		{
			Instance = this;
		}
	}

	void Update()
	{
		if (Input.GetKeyDown(KeyCode.L)) 
		{
			NewPopUp ("Test");
		}

	}
	public void NewPopUp(string setText)
	{
		GameObject newPopUpTxt = Instantiate (popUp, popUp.transform.localPosition, popUp.transform.localRotation )as GameObject;

		newPopUpTxt.transform.parent = this.transform;
		newPopUpTxt.transform.localPosition = popUp.transform.localPosition;
		newPopUpTxt.transform.localScale = popUp.transform.localScale;
		newPopUpTxt.GetComponent<Text> ().text = setText;

	}



}
