using Game;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GScience.ModAPI
{
    public class Info
    {
        public static string author = "GM2000";
        public static string version = "1.0.0";

        public static BuildConfiguration BuildConfiguration
        {
            get
            {
                return BuildConfiguration.Debug;
            }
        }
        public static Platform Platform
        {
            get
            {
                return Platform.Windows81;
            }
        }
    }
}
