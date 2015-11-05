using UnityEngine;
using System.Collections;
using System;
using System.Reflection;

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
            repo.RegisterCommand("ref", Reflection);
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
            string input;
            if (args[0] == null)
            {
                input = "0";
            }
            else
            {
                input = args[0];
            }

            int level = Int32.Parse(input);
            Application.LoadLevel(level);
			return "Level " + input + " restarting";
		}

        public string Reflection(params string[] args)
        {
            string consoleReflectionCommand = args[0];
            string[] splitCommand = consoleReflectionCommand.Split('.');
            string objectType = "", methodName = "";
            if (splitCommand.Length > 2)
            {
                // FUCK NESTED COMMANDS
            }
            else if(splitCommand.Length == 2)
            {
                objectType = splitCommand[0];
                methodName = splitCommand[1];
                methodName = methodName.Replace("(", "");
                methodName = methodName.Replace(")", "");
            }

            GameObject interest = GameObject.Find(objectType);
            if (interest != null)
            {
                Component[] components = interest.GetComponents(typeof(Component));
                //MonoBehaviour[] scripts = (MonoBehaviour[]) interest.GetComponents(typeof(MonoBehaviour));
                
                foreach(Component x in components)
                {
                    Debug.Log(x.GetType());
                }
            }
 
            return objectType + " " + methodName; 
        }
	}
}
