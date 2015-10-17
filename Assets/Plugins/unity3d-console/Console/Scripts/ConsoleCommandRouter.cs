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
			repo.RegisterCommand("restart", Restart);
		}

		/// <summary>
		/// 	Example to load another scene
		/// </summary>
		/// <param name="args">Arguments.</param>
		public string Load(params string[] args) 
		{
			return "Loaded not implemented";
		}

		/// <summary>
		/// 	Test
		/// </summary>
		/// <param name="args">Arguments.</param>
		public string Test(params string[] args) 
		{
			return "colan rulez";
		}

		public string Restart(params string[] args)
		{
			// Bryan, restart command goes here
			// Make sure to put attach this script to a game manager empty object
			return "Bryan";
		}
	}
}