using UnityEngine;
using System.Collections;

namespace UnityStandardAssets.Vehicles.Car
{
	public class ConsoleCommandRouter : MonoBehaviour 
	{
		void Start () 
		{
			// Register commands
			var repo = ConsoleCommandsRepository.Instance;
			repo.RegisterCommand("load", Load);
			repo.RegisterCommand("test", Test);
		}

		// Load other Scenes
		public string Load(params string[] args) 
		{
			return "Loaded not implemented";
		}

		// Testing to make sure console is working
		public string Test(params string[] args) 
		{
			return "colan rulez";
		}

		// Get current speed of player car
		public string Speed(params string[] args)
		{
			return "Current Speed: ";
		}
	}
}