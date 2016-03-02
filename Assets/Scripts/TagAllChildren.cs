using UnityEngine;
using System.Collections;
#if UNITY_EDITOR
using UnityEditor;
#endif

public class TagAllChildren : MonoBehaviour 
{
	public string Tag;

	/// <summary>
	/// Recursively tag all children
	/// </summary>
	/// <param name="transform">Transform.</param>
	private void recursiveTag(Transform tran)
	{
		// Change tag
		tran.tag = this.Tag;
		
		// Loop through children
		for(int i = 0; i < tran.childCount; ++i)
		{
			this.recursiveTag(tran.GetChild(i));
		}
	}
		
	/// <summary>
	/// Tags the children with public string Tag
	/// </summary>
	public void TagChildren()
	{
		this.recursiveTag(this.transform);
	}
}

// Create menu declaration in editor
#if UNITY_EDITOR
[CustomEditor(typeof(TagAllChildren))]
public class TagAllChildrenMenu : Editor 
{
	public override void OnInspectorGUI()
	{
		DrawDefaultInspector();
		if(GUILayout.Button("Tag All Children"))
		{
			foreach (Object targ in targets) 
			{
				TagAllChildren tagging = targ as TagAllChildren;
				tagging.TagChildren();
			}
			
			Debug.Log("Tagged!");
		}
	}
	
	void OnInspectorUpdate()
	{
		Repaint();
	}
}
#endif