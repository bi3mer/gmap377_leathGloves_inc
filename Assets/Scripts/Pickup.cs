using UnityEngine;
using System.Collections;

public class Pickup : MonoBehaviour
{
    // Specifies the type of pickup it is
    public int PickupType;

    // A template for the action the pickup will have on the player
    delegate void template(GameObject obj);

    // The array that holds the different actions
    private template[] Type;

    void Start()
    {
        // When adding a new pickup type, don't forget to add 1 to the size of the array
        this.Type = new template[2];

        // A function to initialize the array
        this.initializePickupTypes();
    }

    /// <summary>
    /// What happens when this object collides with something
    /// </summary>
    /// <param name="obj">The object it collided with</param>
    void OnCollisionEnter(Collision obj)
    {
        if (obj.gameObject.tag == "Player")
        {
            Destroy(this.gameObject);

            // Activate the pickup type
            this.Type[this.PickupType](obj.gameObject);
        }
    }

    /// <summary>
    /// Initializes the template array. If a new pickup needs to be added, create it here.
    /// </summary>
    private void initializePickupTypes()
    {
        // Example pickup type one
        template pickupOne = (obj) =>
        {
            if (obj.gameObject.GetComponent<Rigidbody>() != null)
            {
                obj.gameObject.GetComponent<Rigidbody>().AddForce(Vector3.back * 1000f, ForceMode.Force);
            }
        };

        // Example pickup type 2
        template pickupTwo = (obj) =>
        {
            if (obj.gameObject.GetComponent<Rigidbody>() != null)
            {
                obj.gameObject.GetComponent<Rigidbody>().AddForce(Vector3.up * 1000f, ForceMode.Force);
            }
        };

        // Add them to the array
        this.Type[0] = pickupOne;
        this.Type[1] = pickupTwo;
    }
}
