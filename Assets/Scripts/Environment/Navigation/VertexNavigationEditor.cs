#if UNITY_EDITOR
using UnityEngine;
using System.Collections;
using UnityEditor;

[System.Serializable]
[CustomEditor(typeof(VertexNavigation))]
public class VertexNavigationEditor : Editor 
{
	[HideInInspector]
	public float progressComplete = 0; // 0 - 1

	[HideInInspector]
	public string progressMessage = "";

	public override void OnInspectorGUI()
	{
		DrawDefaultInspector();
		if(GUILayout.Button("Bake"))
		{
			Debug.Log("beggining baking");
			VertexNavigation.Instance.buildTable();
			Debug.Log("modify properities");
//			serializedObject.ApplyModifiedProperties();
			Debug.Log("done baking");
		}
		if(GUILayout.Button("Kill Bake"))
		{
			VertexNavigation.Instance.killTable();
//			serializedObject.ApplyModifiedProperties();
			Debug.Log("Killed table");
		}
	}

	void OnInspectorUpdate()
	{
		Repaint();
	}
}
#endif