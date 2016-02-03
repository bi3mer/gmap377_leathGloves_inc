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
        if (PlanetOverride != null) io.NearestPlanet = PlanetOverride;
        else io.NearestPlanet = InterplanetaryObject.GetNearestPlanet(transform.position);
        
        transform.LookAt(io.NearestPlanet.transform.position);
        transform.Rotate(new Vector3(1.0f, 0, 0), 90);
        InvertOrientation();
        DestroyImmediate(io);
    }

    public void InvertOrientation() {
        transform.localRotation *= Quaternion.Euler(0, 0, 180);
    }

    public void DropToPlanet() {
        InterplanetaryObject io = gameObject.AddComponent<InterplanetaryObject>();

        Collider collider = GetComponent<Collider>();
        if (!collider) {
            Debug.Log(gameObject.name + " does not have a collider: cannot drop to planet surface");
            return;
        }

        if (PlanetOverride != null) io.NearestPlanet = PlanetOverride;
        else io.NearestPlanet = InterplanetaryObject.GetNearestPlanet(transform.position);

        Collider planetCollider = io.NearestPlanet.GetComponent<MeshCollider>();
        RaycastHit hit = new RaycastHit();

        // Look for planet's surface, which needs to be between the object's center and the planet's center, with no other objects in the way
        Physics.Raycast(transform.position, io.NearestPlanet.transform.position - transform.position, out hit);
        if (hit.collider == null) {
            Debug.Log(gameObject.name + ": no raycast hit");
        }
        else if (hit.collider != planetCollider) {
            Debug.Log(gameObject.name + ": did not hit planet, hit " + hit.collider.gameObject.name);
        }
        else {
            int i = 1;
            Vector3 startPos = transform.position;
            float move = hit.distance / 2;
            Rigidbody rb = gameObject.AddComponent<Rigidbody>();

            while (i < 15) {
                transform.position = startPos - transform.up * move;

                Vector3 closestPoint = GetComponent<Rigidbody>().ClosestPointOnBounds(io.NearestPlanet.transform.position);
                if (Physics.Raycast(closestPoint, io.NearestPlanet.transform.position - closestPoint, hit.distance * 2)) {
                    move += hit.distance / ((float)Mathf.Pow(2, i));
                }
                else {
                    move -= hit.distance / ((float)Mathf.Pow(2, i));
                }

                i++;
            }

            transform.position -= transform.up * ExtraDropDistance;

            DestroyImmediate(rb);
        }

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
