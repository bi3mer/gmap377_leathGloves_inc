using UnityEngine;
using System.Collections;

[RequireComponent(typeof(InterplanetaryObject))]
public class PlanetGrounder : MonoBehaviour {

	public Vector3 AngleDown;
	public Vector3 AngleToPlanet;
	public float AngleFromSurface = 0;
	public Vector3 CrossProduct;
	public float RotateSpeed = 0f;
	public bool Grounded = false;
	public bool GroundedCenter = false;
	public bool GroundedTopRight = false;
	public bool GroundedTopLeft = false;
	public bool GroundedBottomRight = false;
	public bool GroundedBottomLeft = false;
	public float GroundedCheckDistance = 0.1f;
	public float DistanceToGroundMarker = 0f;
	public float DistanceToPlanet = 0f;

	private InterplanetaryObject _io;
	private BoxCollider _collider;

	public GameObject DownMarker;
	private GameObject _groundCheckers;
	private GameObject _gcCenter;
	private GameObject _gcTopRight;
	private GameObject _gcTopLeft;
	private GameObject _gcBottomRight;
	private GameObject _gcBottomLeft;


	void Start() {
		_io = GetComponent<InterplanetaryObject>();
		_collider = GetComponent<BoxCollider>();

		DownMarker = new GameObject("DownMarker");
		DownMarker.transform.SetParent(transform);
		DownMarker.transform.localPosition = new Vector3(0, -5, 0);
		DownMarker.transform.localRotation = new Quaternion(0, 0, 0, 0);
		DownMarker.transform.localScale = new Vector3(1, 1, 1);


		// Objects to detect the ground with
		float gcConst = 0.75f / 2;

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

	void Update() {
		Gravity planet = _io.NearestPlanet;
		if (planet) {
			//float angle = Vector3.Angle(transform.position, planet.transform.position);
			AngleDown = (transform.position - DownMarker.transform.position);
			Debug.Log(transform.position + " " + DownMarker.transform.position + " " + AngleDown);
			AngleToPlanet = (transform.position - _io.NearestPlanet.transform.position);
			AngleFromSurface = Vector3.Angle(AngleDown, AngleToPlanet);
			CrossProduct = Vector3.Cross(AngleDown, AngleToPlanet).normalized;

			DistanceToGroundMarker = Vector3.Distance(transform.position, DownMarker.transform.position);
			DistanceToPlanet = Vector3.Distance(transform.position, _io.NearestPlanet.transform.position);

            Debug.Log(AngleFromSurface);
		}
		else {
			AngleFromSurface = 0;
		}

		UpdateGrounded();

		if (!Grounded) {
			//transform.localRotation = Quaternion.Euler(transform.rotation.eulerAngles + AngleFromSurface);
		}
	}

	void UpdateGrounded() {
		int layermask = LayerMask.GetMask("Environment");
		GroundedCenter = (Physics.OverlapSphere(_gcCenter.transform.position, GroundedCheckDistance, layermask).Length > 0);
		GroundedTopRight = (Physics.OverlapSphere(_gcTopRight.transform.position, GroundedCheckDistance, layermask).Length > 0);
		GroundedTopLeft = (Physics.OverlapSphere(_gcTopLeft.transform.position, GroundedCheckDistance, layermask).Length > 0);
		GroundedBottomRight = (Physics.OverlapSphere(_gcBottomRight.transform.position, GroundedCheckDistance, layermask).Length > 0);
		GroundedBottomLeft = (Physics.OverlapSphere(_gcBottomLeft.transform.position, GroundedCheckDistance, layermask).Length > 0);

		Grounded = (GroundedCenter || GroundedTopRight || GroundedTopLeft || GroundedBottomRight || GroundedBottomLeft);
	}
}
