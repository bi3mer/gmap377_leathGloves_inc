using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class Multi : MonoBehaviour {
    private Text multiText;

	// Use this for initialization
	void Start ()
    {
        this.multiText = GetComponent<Text>();
	}

    void Update()
    {
        multiText.text = ScoreManager.Instance.multiplierText;
    }
}
