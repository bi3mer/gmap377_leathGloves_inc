using UnityEngine;
using System.Collections;
#if UNITY_EDITOR
using UnityEditor;
#endif

public class EnvironmentOrienter : MonoBehaviour {

    [Tooltip("Forces the script to orient to the given planet. If left null, the script will use the nearest planet instead.")]
    public Gravity PlanetOverride = null;

    public void OrientToPlanet() {
        InterplanetaryObject io = gameObject.AddComponent<InterplanetaryObject>();
        PlanetOrientation po = gameObject.AddComponent<PlanetOrientation>();
        po.OrientToPlanet(PlanetOverride);
        DestroyImmediate(po);
        DestroyImmediate(io);
    }
}

#if UNITY_EDITOR
[CustomEditor(typeof(EnvironmentOrienter))]
[CanEditMultipleObjects]
public class EnvironmentOrienterEditor : Editor {

    public override void OnInspectorGUI() {
        DrawDefaultInspector();
        if (GUILayout.Button("Orient to Planet")) {
            foreach (Object t in targets) {
                EnvironmentOrienter po = t as EnvironmentOrienter;
                Debug.Log("Orienting " + po.gameObject.name + "...");
                po.OrientToPlanet();
            }
            Debug.Log("Done orienting objects.");
        }
    }

    void OnInspectorUpdate() {
        Repaint();
    }
}
#endif
