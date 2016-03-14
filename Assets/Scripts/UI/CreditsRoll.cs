using UnityEngine;
using System.Collections;
using UnityEngine.UI;
using XboxCtrlrInput;

public class CreditsRoll : MonoBehaviour {

	public float rate;
	public float delay;
	public Vector3 endPos;	

	float currentTime;
	bool scrolling;

	// Use this for initialization
	void Start () {
		currentTime = 0f;
		scrolling = true;
		RectTransform rt = GetComponent<RectTransform>();
		endPos = new Vector3 (transform.position.x, rt.rect.height * endPos.y, transform.position.z);
	}
	
	// Update is called once per frame
	void Update () {
		if(currentTime < delay)
		{
			currentTime += Time.deltaTime;
		}
		else if(scrolling)
		{
			rollText();
		}
		else if(!scrolling)
		{
			if(XCI.GetButton(XboxButton.Start) || Input.anyKeyDown)
			{
				SaveSystem.Instance.setUpNewGamePlus();
				Application.LoadLevel("StartScreen");
			}
		}
	}

	void rollText()
	{
		transform.Translate (Vector3.up * Time.deltaTime * rate);

		if(Vector3.Distance(transform.position, endPos) < rate)
		{
			scrolling = false;
		}
	}
}
