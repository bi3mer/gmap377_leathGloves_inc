using UnityEngine;
using System.Collections;
using System.IO;

public static class SystemLogger {

    // TODO: Decide on file path of log file
    private static string outputFilePath = "logfile.txt";

    // Initializes FileStream for output into specified log file
    private static StreamWriter writer = new StreamWriter(outputFilePath, false, System.Text.Encoding.UTF8);

    /// <summary>
    ///     Writes event to log file specified above.
    /// </summary>
    /// <param name="output"></param>
    public static void Write(string output)
    {
        // Output format:  "(Time delta from program start in format m:ss.sss) :: (Log message)"
        writer.WriteLine(string.Format("{0:00}:{1:00.000}", Time.realtimeSinceStartup / 60, Time.realtimeSinceStartup % 60f) + " :: " + output);

        // Flushes buffer to force a write
        writer.Flush();
    }    
}
