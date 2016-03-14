using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class TextFadeIn : MonoBehaviour {

	public Text text;
	public Color startColor;
	public Color endColor;
	public float rate;
	public float delay;

	float currentTime = 0;

	// Use this for initialization
	void Start () {
		text.color = startColor;
	}
	
	// Update is called once per frame
	void Update () {

		if(currentTime < delay)
		{
			currentTime += Time.deltaTime;
		}
		else
		{
			Color textColor = text.color;

			text.color = Color.Lerp(textColor, endColor, Time.deltaTime * rate);

			if(Mathf.Abs(textColor.a - endColor.a) + Mathf.Abs (textColor.r - endColor.r) 
			   + Mathf.Abs(textColor.b - endColor.b) + Mathf.Abs(textColor.g - endColor.g) < 0.05f)
			{
				this.enabled = false;
			}
		}
	}
}
