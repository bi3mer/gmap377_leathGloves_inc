using UnityEngine;
using System.Collections;

public class EnemyArtilleryWeapon : MonoBehaviour 
{
	public float maxRiseDistance = 50f;
    public float maxRotationTime = 10f;

	private float speed;
	
	[HideInInspector]
	public Vector3 target;

	private enum States{rise, rotate, rigidBodyAdd, drop};
	private Vector3 originalPosition;
    private float curTime;
    private float rotationSpeed;
    private bool addedRigidBody = false;

	private States state;
	
	void Start () 
	{
		// set constants
		this.target = Player.Instance.transform.position;
		this.speed  = this.GetComponent<Weapon>().speed;
		this.state  = States.rise;;
		this.originalPosition = transform.position;
        this.rotationSpeed = 180 * this.speed / (Mathf.PI * VertexNavigation.Instance.radius);
	}

    private void addNewRigidBody()
    {
        Rigidbody rb = new Rigidbody();

        this.gameObject.AddComponent<Rigidbody>();
        this.addedRigidBody = true;
        this.state = States.drop;
    }
	
	// Update is called once per frame
	void Update () 
	{
        Debug.DrawLine(this.transform.position, VertexNavigation.Instance.transform.position, Color.green);
        
        if (!this.addedRigidBody)
        {
            RaycastHit hit;
            if (Physics.Raycast(this.transform.position, (VertexNavigation.Instance.transform.position - this.transform.position), out hit) && hit.collider.tag == "Player")
            {
                this.addNewRigidBody();
            }
            else
            {
                switch (this.state)
                {
                    case (States.rise):
                        if (Vector3.Distance(this.originalPosition, this.transform.position) > this.maxRiseDistance)
                        {
                            this.state = States.rotate;
                            this.curTime = 0;
                        }
                        else
                        {
                            transform.RotateAround(VertexNavigation.Instance.transform.position, Vector3.right, this.rotationSpeed * Time.deltaTime);
                            this.transform.Translate(Vector3.forward * this.speed * Time.deltaTime);
                        }
                        break;

                    case (States.rotate):
                        // Check if done rotating
                        if (curTime > this.maxRotationTime)
                        {
                            this.state = States.drop;
                        }
                        else
                        {
                            transform.RotateAround(VertexNavigation.Instance.transform.position, this.transform.right * -1, this.rotationSpeed * Time.deltaTime);
                            this.curTime += Time.deltaTime;
                        }
                        break;

                    default:
                        this.addNewRigidBody();
                        break;
                }
            }
        }
	}
}
