using UnityEngine;
using System.Collections;
#if UNITY_EDITOR
using UnityEditor;
#endif

[RequireComponent(typeof(InterplanetaryObject))]
public class PlanetOrientation : MonoBehaviour {

	[Header("Orientation")]
	[Tooltip("Forward/backward tilt. Positive numbers indicate that the object is tilted forward, while negative indicates the opposite.")]
	public float Pitch;
	[Tooltip("Right/Left tilt. Positive numbers indicate that the object is tilted right, while negative indicates the opposite.")]
	public float Roll;
	public float DistanceToPlanet = 0f;
	[Tooltip("Axis the object pitches about")]
	public Vector3 LeftRightAxis;
	[Tooltip("Axis the object rolls about")]
	public Vector3 ForwardBackAxis;

	[Header("Grounding")]
	[Tooltip("Is the object touching the ground with the bottom of its collider at all? (based on attached Box Collider)")]
	public bool Grounded = false;
	public bool GroundedCenter = false;
	public bool GroundedTopRight = false;
	public bool GroundedTopLeft = false;
	public bool GroundedBottomRight = false;
	public bool GroundedBottomLeft = false;
	[Tooltip("The distance between the ground checkers and the base of the collider")]
	public float GroundedCheckDistance = 0.1f;
	public float DistanceToGroundMarker = 0f;

	[Header("Orientation Markers")]
	public GameObject PlanetMarker;
	public GameObject DownMarker;
	public GameObject ForwardMarker;
	public GameObject RightMarker;


	private InterplanetaryObject _io;
	public BoxCollider _collider;

    private GameObject _orientationMarker;
	private GameObject _groundCheckers;
	private GameObject _gcCenter;
	private GameObject _gcTopRight;
	private GameObject _gcTopLeft;
	private GameObject _gcBottomRight;
	private GameObject _gcBottomLeft;

    private bool _initialized = false;


	void Start() {
        Initialize();
	}

    public void Initialize() {
        _io = GetComponent<InterplanetaryObject>();
        _collider = GetComponent<BoxCollider>();

        _orientationMarker = new GameObject("OrientationMarker");
        _orientationMarker.transform.SetParent(transform);
        _orientationMarker.transform.position = Vector3.zero;
        _orientationMarker.transform.localRotation = new Quaternion(0, 0, 0, 0);
        _orientationMarker.transform.localScale = new Vector3(1, 1, 1);

        PlanetMarker = new GameObject("PlanetMarker");
        PlanetMarker.transform.SetParent(transform);
        PlanetMarker.transform.position = Vector3.zero;
        PlanetMarker.transform.localRotation = new Quaternion(0, 0, 0, 0);
        PlanetMarker.transform.localScale = new Vector3(1, 1, 1);

        DownMarker = new GameObject("DownMarker");
        DownMarker.transform.SetParent(transform);
        DownMarker.transform.localPosition = new Vector3(0, -500, 0);
        DownMarker.transform.localRotation = new Quaternion(0, 0, 0, 0);
        DownMarker.transform.localScale = new Vector3(1, 1, 1);

        ForwardMarker = new GameObject("ForwardMarker");
        ForwardMarker.transform.SetParent(transform);
        ForwardMarker.transform.localPosition = new Vector3(0, 0, 500);
        ForwardMarker.transform.localRotation = new Quaternion(0, 0, 0, 0);
        ForwardMarker.transform.localScale = new Vector3(1, 1, 1);

        RightMarker = new GameObject("RightMarker");
        RightMarker.transform.SetParent(transform);
        RightMarker.transform.localPosition = new Vector3(500, 0, 0);
        RightMarker.transform.localRotation = new Quaternion(0, 0, 0, 0);
        RightMarker.transform.localScale = new Vector3(1, 1, 1);

        // Objects to detect the ground with
        float gcConst = 0.75f / 2;

        if (_collider) {
            _groundCheckers = new GameObject("GroundCheckers");
            _groundCheckers.transform.SetParent(transform);
            _groundCheckers.transform.localPosition = new Vector3(0, -1 * _collider.size.y / 2, 0);
            _groundCheckers.transform.localRotation = new Quaternion(0, 0, 0, 0);
            _groundCheckers.transform.localScale = new Vector3(1, 1, 1);

            _gcCenter = new GameObject("Center");
            _gcCenter.transform.SetParent(_groundCheckers.transform);
            _gcCenter.transform.localPosition = new Vector3(0, 0, 0);
            _gcCenter.transform.localRotation = new Quaternion(0, 0, 0, 0);
            _gcCenter.transform.localScale = new Vector3(1, 1, 1);

            _gcTopRight = new GameObject("TopRight");
            _gcTopRight.transform.SetParent(_groundCheckers.transform);
            _gcTopRight.transform.localPosition = new Vector3(_collider.size.x * gcConst, 0, _collider.size.z * gcConst);
            _gcTopRight.transform.localRotation = new Quaternion(0, 0, 0, 0);
            _gcTopRight.transform.localScale = new Vector3(1, 1, 1);

            _gcTopLeft = new GameObject("TopLeft");
            _gcTopLeft.transform.SetParent(_groundCheckers.transform);
            _gcTopLeft.transform.localPosition = new Vector3(-1 * _collider.size.x * gcConst, 0, _collider.size.z * gcConst);
            _gcTopLeft.transform.localRotation = new Quaternion(0, 0, 0, 0);
            _gcTopLeft.transform.localScale = new Vector3(1, 1, 1);

            _gcBottomRight = new GameObject("BottomRight");
            _gcBottomRight.transform.SetParent(_groundCheckers.transform);
            _gcBottomRight.transform.localPosition = new Vector3(_collider.size.x * gcConst, 0, -1 * _collider.size.z * gcConst);
            _gcBottomRight.transform.localRotation = new Quaternion(0, 0, 0, 0);
            _gcBottomRight.transform.localScale = new Vector3(1, 1, 1);

            _gcBottomLeft = new GameObject("BottomLeft");
            _gcBottomLeft.transform.SetParent(_groundCheckers.transform);
            _gcBottomLeft.transform.localPosition = new Vector3(-1 * _collider.size.x * gcConst, 0, -1 * _collider.size.z * gcConst);
            _gcBottomLeft.transform.localRotation = new Quaternion(0, 0, 0, 0);
            _gcBottomLeft.transform.localScale = new Vector3(1, 1, 1);
        }
        _initialized = true;
    }

    public void Deinitialize() {
        if (PlanetMarker) DestroyImmediate(PlanetMarker);
        if (ForwardMarker) DestroyImmediate(ForwardMarker);
        if (DownMarker) DestroyImmediate(DownMarker);
        if (RightMarker) DestroyImmediate(RightMarker);

        if (_groundCheckers) DestroyImmediate(_groundCheckers);
        if (_orientationMarker) DestroyImmediate(_orientationMarker);

        PlanetMarker = null;
        ForwardMarker = null;
        DownMarker = null;
        RightMarker = null;

        _groundCheckers = null;
        _orientationMarker = null;
        _gcCenter = null;
        _gcTopLeft = null;
        _gcTopRight = null;
        _gcBottomLeft = null;
        _gcBottomRight = null;
}

	void Update() {
        UpdateOrientation();

		UpdateGrounded();

		if (!Grounded) {
			//transform.localRotation = Quaternion.Euler(transform.rotation.eulerAngles + AngleFromSurface);
		}
	}

    public void OnDrawGizmos() {
        /*Gizmos.DrawSphere(_gcCenter.transform.position, GroundedCheckDistance);
        Gizmos.DrawSphere(_gcTopRight.transform.position, GroundedCheckDistance);
        Gizmos.DrawSphere(_gcTopLeft.transform.position, GroundedCheckDistance);
        Gizmos.DrawSphere(_gcBottomRight.transform.position, GroundedCheckDistance);
        Gizmos.DrawSphere(_gcBottomLeft.transform.position, GroundedCheckDistance);*/

    }

    public void UpdateOrientation() {
        Gravity planet = _io.NearestPlanet;
        if (planet) {
            PlanetMarker.transform.position = planet.transform.position;

            DistanceToGroundMarker = Vector3.Distance(transform.position, DownMarker.transform.position);
            DistanceToPlanet = Vector3.Distance(transform.position, _io.NearestPlanet.transform.position);

            // Determine the maginitude of the object's roll relative to the planet
            Vector3 vertexRoll = Vector3.zero;
            Vector3 pointDownRoll = new Vector3(DownMarker.transform.localPosition.x, DownMarker.transform.localPosition.y, 0); // Down marker's local position on x-y plane
            Vector3 pointPlanetRoll = new Vector3(PlanetMarker.transform.localPosition.x, PlanetMarker.transform.localPosition.y, 0); // Planet marker's local position on x-y plane
            double dvdRoll = Vector3.Distance(vertexRoll, pointDownRoll) / 10;      // Scaled distance between vertex and down marker on x-y plane
            double dvpRoll = Vector3.Distance(vertexRoll, pointPlanetRoll) / 10;    // Scaled distance between vertex and planet marker on x-y plane
            double ddpRoll = Vector3.Distance(pointDownRoll, pointPlanetRoll) / 10; // Scalled distance between down marker and planet marker on x-y plane
            double acosRollValue = (Pow(dvdRoll, 2) + Pow(dvpRoll, 2) - Pow(ddpRoll, 2)) / (2 * dvdRoll * dvpRoll);
            double angleRoll;
            if (Mathf.Abs((float)acosRollValue) > 1 - double.Epsilon) // Make sure value is within (-1, 1) before calculating its inverse cosine
                angleRoll = 0;
            else
                angleRoll = Mathf.Rad2Deg * Mathf.Acos((float)(acosRollValue)); //arcos((P12^2 + P13^2 - P23^2) / (2 * P12 * P13))
            if (dvdRoll < float.Epsilon || dvpRoll < float.Epsilon) angleRoll = 0;

            // Determine the magnitude of the object's pitch relative to the planet
            Vector3 vertexPitch = Vector3.zero;
            Vector3 pointDownPitch = new Vector3(0, DownMarker.transform.localPosition.y, DownMarker.transform.localPosition.z);    // Down marker's local position on z-y plane
            Vector3 pointPlanetPitch = new Vector3(0, PlanetMarker.transform.localPosition.y, PlanetMarker.transform.localPosition.z); // Planet marker's local position on z-y plane
            double dvdPitch = Vector3.Distance(vertexPitch, pointDownPitch) / 10;       // Scaled distance between vertex and down marker on z-y plane
            double dvpPitch = Vector3.Distance(vertexPitch, pointPlanetPitch) / 10;     // Scaled distance between vertex and planet marker on z-y plane
            double ddpPitch = Vector3.Distance(pointDownPitch, pointPlanetPitch) / 10;  // Scaled distance between down marker and planet marker on z-y plane
            double acosPitchValue = (Pow(dvdPitch, 2) + Pow(dvpPitch, 2) - Pow(ddpPitch, 2)) / (2 * dvdPitch * dvpPitch);
            double anglePitch;
            if (Mathf.Abs((float)acosPitchValue) > 1 - double.Epsilon) // Make sure value is within (-1, 1) before calculating its inverse cosine
                anglePitch = 0;
            else
                anglePitch = Mathf.Rad2Deg * Mathf.Acos((float)(acosPitchValue)); //arcos((P12^2 + P13^2 - P23^2) / (2 * P12 * P13))

            // Determine whether the object is rolled right or left
            Vector3 pointRightRoll = new Vector3(RightMarker.transform.localPosition.x, RightMarker.transform.localPosition.y, 0);
            double dvrRoll = Vector3.Distance(vertexRoll, pointRightRoll) / 10;
            double drpRoll = Vector3.Distance(pointRightRoll, pointPlanetRoll) / 10;
            double rightAngle = Mathf.Rad2Deg * Mathf.Acos((float)((Pow(dvrRoll, 2) + Pow(dvpRoll, 2) - Pow(drpRoll, 2)) / (2 * dvrRoll * dvpRoll))); //arcos((P12^2 + P13^2 - P23^2) / (2 * P12 * P13))
            int rollDirection = (rightAngle > 90) ? -1 : 1;

            // Determine whether the object is pitched upwards or downwards
            Vector3 pointForwardPitch = new Vector3(0, ForwardMarker.transform.localPosition.y, ForwardMarker.transform.localPosition.z);
            double dvfPitch = Vector3.Distance(vertexPitch, pointForwardPitch) / 10;
            double dfpPitch = Vector3.Distance(pointForwardPitch, pointPlanetPitch) / 10;
            double forwardAngle = Mathf.Rad2Deg * Mathf.Acos((float)((Pow(dvfPitch, 2) + Pow(dvpPitch, 2) - Pow(dfpPitch, 2)) / (2 * dvfPitch * dvpPitch))); //arcos((P12^2 + P13^2 - P23^2) / (2 * P12 * P13))
            int pitchDirection = (forwardAngle > 90) ? -1 : 1;

            Pitch = (float)(pitchDirection * anglePitch);
            Roll = (float)(rollDirection * angleRoll);

            UpdateTiltAxes();
        }
  
    }

    public void CheckOrientation() {
        _io = GetComponent<InterplanetaryObject>();
        _io.NearestPlanet = InterplanetaryObject.GetNearestPlanet(transform.position);
        Initialize();
        UpdateOrientation();
        Deinitialize();
    }

    public void OrientToPlanet(Gravity planet) {
        _io = GetComponent<InterplanetaryObject>();
        if (planet != null) _io.NearestPlanet = planet;
        else _io.NearestPlanet = InterplanetaryObject.GetNearestPlanet(transform.position);
        if (!_initialized) Initialize();
        UpdateOrientation();

        int MAX = 50;
        int i = 0;
        while ((Mathf.Abs(Pitch) > float.Epsilon || Mathf.Abs(Roll) > float.Epsilon) && i < MAX) {
            //TODO: Having scale not (1, 1, 1) breaks it?

            Vector3 pointPlanet = PlanetMarker.transform.position;
            Vector3 pointCenter = transform.position;
            Vector3 pointRight = RightMarker.transform.position;
            Plane rightPlane = new Plane(pointPlanet, pointCenter, pointRight);
            Vector3 vectorToPlanet = pointCenter - pointPlanet;
            Vector3 rightAxis = Vector3.Cross(vectorToPlanet, rightPlane.normal);
            transform.localRotation = Quaternion.AngleAxis(Pitch, rightAxis) * transform.localRotation;

            Vector3 pointForward = ForwardMarker.transform.position;
            Plane forwardPlane = new Plane(pointPlanet, pointCenter, pointForward);
            Vector3 forwardAxis = -1 * Vector3.Cross(vectorToPlanet, forwardPlane.normal);
            transform.localRotation = Quaternion.AngleAxis(Roll, forwardAxis) * transform.localRotation;

            UpdateOrientation();
            i++;
        }
        if (Mathf.Abs(Pitch) > float.Epsilon || Mathf.Abs(Roll) > float.Epsilon) {
            Vector3 dirToPlanet = (transform.position - PlanetMarker.transform.position).normalized;
            Vector3 dirToDownMarker = (transform.position - DownMarker.transform.position).normalized;

            if (Vector3.Dot(dirToPlanet, dirToDownMarker) < 0) {
                InvertRotation();
            }
        }

        if (Mathf.Abs(Pitch) > float.Epsilon || Mathf.Abs(Roll) > float.Epsilon) {
            Debug.Log("** Failed to orient " + gameObject.name);
        }

    }

    public void InvertRotation() 
	{
        if (!_initialized) 
		{
            Initialize();
        }
        UpdateOrientation();
        //transform.Rotate(transform.right, 180);
        transform.localRotation *= Quaternion.Euler(0, 0, 180);
        UpdateOrientation();
    }

    public void DropToPlanet(Gravity planet, float extraDropDistance) {
        Collider collider = GetComponent<Collider>();
        if (!collider) {
            Debug.Log(gameObject.name + " does not have a collider: cannot drop to planet surface");
            return;
        }

        if (!_initialized) Initialize();

        if (planet != null) _io.NearestPlanet = planet;
        else _io.NearestPlanet = InterplanetaryObject.GetNearestPlanet(transform.position);

        //OrientToPlanet(planet);

        Collider planetCollider = _io.NearestPlanet.GetComponent<MeshCollider>();
        RaycastHit hit = new RaycastHit();

        Physics.Raycast(transform.position, _io.NearestPlanet.transform.position - transform.position, out hit, 10000);
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

            while (i < 50) {
                transform.position = startPos - transform.up * move;

                Vector3 closestPoint = GetComponent<Rigidbody>().ClosestPointOnBounds(_io.NearestPlanet.transform.position);
                if (Physics.Raycast(closestPoint, _io.NearestPlanet.transform.position - closestPoint, hit.distance * 2)) {
                    move += hit.distance / ((float)Pow(2, i));
                }
                else {
                    move -= hit.distance / ((float)Pow(2, i));
                }

                i++;
            }

            transform.position -= transform.up * extraDropDistance;

            DestroyImmediate(rb);
        }
    }

    public void UpdateGrounded() {
        if (_collider) {
            int layermask = LayerMask.GetMask("Environment");
            GroundedCenter = (Physics.OverlapSphere(_gcCenter.transform.position, GroundedCheckDistance, layermask).Length > 0);
            GroundedTopRight = (Physics.OverlapSphere(_gcTopRight.transform.position, GroundedCheckDistance, layermask).Length > 0);
            GroundedTopLeft = (Physics.OverlapSphere(_gcTopLeft.transform.position, GroundedCheckDistance, layermask).Length > 0);
            GroundedBottomRight = (Physics.OverlapSphere(_gcBottomRight.transform.position, GroundedCheckDistance, layermask).Length > 0);
            GroundedBottomLeft = (Physics.OverlapSphere(_gcBottomLeft.transform.position, GroundedCheckDistance, layermask).Length > 0);

            Grounded = (GroundedCenter || GroundedTopRight || GroundedTopLeft || GroundedBottomRight || GroundedBottomLeft);
        }
        else {
            Grounded = false;
        }
	}

	public void UpdateTiltAxes() {
		LeftRightAxis = (transform.position - RightMarker.transform.position).normalized;
		ForwardBackAxis = (transform.position - ForwardMarker.transform.position).normalized;
	}

	// Computer power for doubles
	double Pow(double b, int e) {
		double res = 1.0;
		int i = 0;
		while (i < e) {
			res = res * b;
			i++;
		}

		return res;
	}

    
}

#if UNITY_EDITOR
[CustomEditor(typeof(PlanetOrientation))]
[CanEditMultipleObjects]
public class PlanetOrientationEditor : Editor {

    public override void OnInspectorGUI() {
        DrawDefaultInspector();
        if (GUILayout.Button("Check Orientation")) {
            foreach (Object t in targets) {
                PlanetOrientation po = t as PlanetOrientation;
                po.CheckOrientation();
            }
        }
        if (GUILayout.Button("Orient to Planet")) {
            foreach (Object t in targets) {
                PlanetOrientation po = t as PlanetOrientation;
                Debug.Log("Orienting " + po.gameObject.name + "...");
                po.OrientToPlanet(null);
            }
            Debug.Log("Done orienting objects.");
        }
    }

    void OnInspectorUpdate() {
        Repaint();
    }
}
#endif