using System;
using System.Collections;

public class NameGenerator 
{
	public static string[] firstPartFirstNames = {
		"Han",
		"Ham",
		"Fan",
		"Can",
		"Lip",
		"Lan",
		"Tin",
		"Fim",
		"Sham",
		"Prim",
		"Khal",
		"Plash",
		"Col",
		"Inf",
		"Kerato",
		"Pilaris",
		"Cyst",
		"Epider",
		"Dermato",
		"Fibro",
		"Folli",
		"Culltis",
		"Lipo",
		"Cherry"
	};
	
	public static string[] secondPartFirstNames = {
		"nah",
		"andCheese",
		"atic",
		"ned",
		"ped",
		"party",
		"can",
		"ple",
		"moo",
		"al",
		"iisi",
		"ed",
		"an",
		"inite"
	};

	public static string[] firstPartLastNames = {
		"Biemer",
		"Tito",
		"Lycan",
		"Tiger",
		"Glasses",
		"Who?",
		"Hat",
		"Leath",
		"Shadow",
		"Fake",
		"Liger",
		"Shoe",
		"Plaad",
		"Skies",
		"Rul"
	};
	
	private static string[] secondPartLastNames = {
		"gloves",
		"mushroom",
		"time",
		"gamecube",
		"isCool",
		"party",
		"trigger",
		"party",
		"sega",
		"blizzard",
		"gdc",
		"animation",
		"sarcasm",
		"ez"
	};

	/// <summary>
	/// Determines if is string given is from an ID
	/// </summary>
	/// <returns><c>true</c> if is identifier card the specified str; otherwise, <c>false</c>.</returns>
	/// <param name="str">String.</param>
	public static bool IsIDCard(string str)
	{
		bool isID = false;

		// Check length
		if(str.Length > 1)
		{
			// based on first two characters if number or not
			isID = char.IsNumber(str[0]) && char.IsNumber(str[1]);
		}

		return isID;
	}

	/// <summary>
	/// Generates the new name from ID.
	/// </summary>
	/// <returns>The new generated name.</returns>
	/// <param name="oldName">Old name.</param>
	public static string GenerateNewName(string name)
	{
		// Set random seed
		Random rand  = new Random(name.GetHashCode());

		// create name with rand plugins
		name = firstPartFirstNames[rand.Next(firstPartFirstNames.Length)]
		        + secondPartFirstNames[rand.Next(secondPartFirstNames.Length)]
//		        + " "p
		        + firstPartLastNames[rand.Next(firstPartLastNames.Length)]
		        + secondPartLastNames[rand.Next(secondPartLastNames.Length)];

		// Log event
		SystemLogger.write("Player " + name + " is playing!");

		return name;
	}
}
