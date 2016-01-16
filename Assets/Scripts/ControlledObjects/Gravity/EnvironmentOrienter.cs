using UnityEngine;
using System.Collections;
#if UNITY_EDITOR
using UnityEditor;
#endif

public class EnvironmentOrienter : MonoBehaviour {

    [Tooltip("Forces the script to orient to the given planet. If left null, the script will use the nearest planet instead.")]
    public Gravity PlanetOverride = null;
    [Tooltip("Drops the objects a little farther, so that the object intersects with the planet instead of just touching it.")]
    public float ExtraDropDistance = 0;

    public void OrientToPlanet() {
        InterplanetaryObject io = gameObject.AddComponent<InterplanetaryObject>();
        PlanetOrientation po = gameObject.AddComponent<PlanetOrientation>();
        po.OrientToPlanet(PlanetOverride);
        po.Deinitialize();
        DestroyImmediate(po);
        DestroyImmediate(io);
    }

    public void InvertOrientation() {
        InterplanetaryObject io = gameObject.AddComponent<InterplanetaryObject>();
        PlanetOrientation po = gameObject.AddComponent<PlanetOrientation>();
        po.InvertRotation();
        po.Deinitialize();
        DestroyImmediate(po);
        DestroyImmediate(io);
    }

    public void DropToPlanet() {
        InterplanetaryObject io = gameObject.AddComponent<InterplanetaryObject>();
        PlanetOrientation po = gameObject.AddComponent<PlanetOrientation>();
        po.DropToPlanet(PlanetOverride, ExtraDropDistance);
        po.Deinitialize();
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
        if (GUILayout.Button("Invert Orientation")) {
            foreach (Object t in targets) {
                EnvironmentOrienter po = t as EnvironmentOrienter;
                po.InvertOrientation();
            }
            Debug.Log("Done inverting orientations.");
        }
        if (GUILayout.Button("Drop to Planet")) {
            foreach (Object t in targets) {
                EnvironmentOrienter po = t as EnvironmentOrienter;
                po.DropToPlanet();
            }
            Debug.Log("Done dropping objects to planet.");
        }

    }

    void OnInspectorUpdate() {
        Repaint();
    }
}
#endif
