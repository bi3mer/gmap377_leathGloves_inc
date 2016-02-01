using UnityEngine;
using UnityEngine.UI;

/// <summary>
/// Keeping multiplier up to date.
/// </summary>
public class Multi : MonoBehaviour
{
    private Text multiText;
    public static Multi Instance = null;
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

	// Use this for initialization
	void Start ()
    {
        this.multiText = GetComponent<Text>();
	}

    /// <summary>
    /// Set GUI text for multiplier
    /// </summary>
    public void MultiTxtSet()
    {
        multiText.text = ScoreManager.Instance.multiplierText;
    }

}
