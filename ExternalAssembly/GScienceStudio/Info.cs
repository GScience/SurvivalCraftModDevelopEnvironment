using Game;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExternalAssembly.GScienceStudio
{
    //最基本的一些信息，若不了解具体的工作原理请勿轻易删除
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
