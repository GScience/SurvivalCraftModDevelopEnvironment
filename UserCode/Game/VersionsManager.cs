using Engine;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Reflection;
using Engine.Serialization;
using GScience.ModAPI;

namespace Game
{
    public static class VersionsManager
    {
        // Fields
        private static List<VersionConverter> m_versionConverters = new List<VersionConverter>();

        // Methods
        static VersionsManager()
        {
            AssemblyName name = new AssemblyName(IntrospectionExtensions.GetTypeInfo((Type)typeof(VersionsManager)).Assembly.FullName);
            object[] objArray1 = new object[] { (int)name.Version.Major, (int)name.Version.Minor, (int)name.Version.Build, (int)name.Version.Revision };
            Version = string.Format("{0}.{1}.{2}.{3}", (object[])objArray1);
            object[] objArray2 = new object[] { (int)name.Version.Major, (int)name.Version.Minor };
            SerializationVersion = string.Format("{0}.{1}", (object[])objArray2);
            Assembly[] assemblyArray = Enumerable.ToArray<Assembly>((IEnumerable<Assembly>)TypeCache.LoadedAssemblies);
            for (int i = 0; i < assemblyArray.Length; i++)
            {
                foreach (TypeInfo info in assemblyArray[i].DefinedTypes)
                {
                    if ((!info.IsAbstract && !info.IsInterface) && IntrospectionExtensions.GetTypeInfo((Type)typeof(VersionConverter)).IsAssignableFrom(info))
                    {
                        VersionConverter converter = (VersionConverter)Activator.CreateInstance(info.AsType());
                        m_versionConverters.Add(converter);
                    }
                }
            }
        }

        private static List<VersionConverter> FindTransform(string sourceVersion, string targetVersion, IEnumerable<VersionConverter> converters, int depth)
        {
            if (depth > 100)
            {
                throw new InvalidOperationException("Too deep recursion when searching for version converters. Check for possible loops in transforms.");
            }
            if (sourceVersion == targetVersion)
            {
                return new List<VersionConverter>();
            }
            List<VersionConverter> list = null;
            int num = 0x7fffffff;
            foreach (VersionConverter converter in converters)
            {
                if (converter.SourceVersion == sourceVersion)
                {
                    List<VersionConverter> list2 = FindTransform(converter.TargetVersion, targetVersion, converters, depth + 1);
                    if ((list2 != null) && (list2.Count < num))
                    {
                        num = list2.Count;
                        list2.Insert(0, converter);
                        list = list2;
                    }
                }
            }
            return list;
        }

        public static void Initialize()
        {
            LastLaunchedVersion = SettingsManager.LastLaunchedVersion;
            SettingsManager.LastLaunchedVersion = Version;
            if (Version != LastLaunchedVersion)
            {
                AnalyticsParameter[] parameters = new AnalyticsParameter[] { new AnalyticsParameter("LastVersion", LastLaunchedVersion), new AnalyticsParameter("CurrentVersion", Version) };
                AnalyticsManager.LogEvent("[VersionsManager] Upgrade game", parameters);
            }
        }

        public static void UpgradeWorld(string directoryName)
        {
            WorldInfo worldInfo = WorldsManager.GetWorldInfo(directoryName);
            if (worldInfo == null)
            {
                object[] objArray1 = new object[] { directoryName };
                throw new InvalidOperationException(string.Format("Cannot determine version of world at \"{0}\"", (object[])objArray1));
            }
            if (worldInfo.SerializationVersion != SerializationVersion)
            {
                object[] objArray2 = new object[] { SerializationVersion };
                ProgressManager.UpdateProgress(string.Format("Upgrading World To {0}", (object[])objArray2), 0f);
                List<VersionConverter> list = FindTransform(worldInfo.SerializationVersion, SerializationVersion, (IEnumerable<VersionConverter>)m_versionConverters, 0);
                if (list == null)
                {
                    object[] objArray3 = new object[] { worldInfo.SerializationVersion, SerializationVersion };
                    throw new InvalidOperationException(string.Format("Cannot find conversion path from version \"{0}\" to version \"{1}\"", (object[])objArray3));
                }
                foreach (VersionConverter converter in list)
                {
                    object[] objArray4 = new object[] { converter.SourceVersion, converter.TargetVersion };
                    Log.Information(string.Format("Upgrading world version \"{0}\" to \"{1}\".", (object[])objArray4));
                    converter.ConvertWorld(directoryName);
                }
                WorldInfo info2 = WorldsManager.GetWorldInfo(directoryName);
                if (info2.SerializationVersion != SerializationVersion)
                {
                    object[] objArray5 = new object[] { SerializationVersion, info2.SerializationVersion };
                    throw new InvalidOperationException(string.Format("Upgrade produced invalid project version. Expected \"{0}\", found \"{1}\".", (object[])objArray5));
                }
                AnalyticsParameter[] parameters = new AnalyticsParameter[] { new AnalyticsParameter("SourceVersion", worldInfo.SerializationVersion), new AnalyticsParameter("TargetVersion", SerializationVersion) };
                AnalyticsManager.LogEvent("[VersionConverter] Upgrade world", parameters);
            }
        }

        // Properties

        //请勿随意更改
        public static BuildConfiguration BuildConfiguration
        {
            get
            {
                return Info.BuildConfiguration;
            }
        }
        //请勿随意更改
        public static Platform Platform
        {
            get
            {
                return Info.Platform;
            }
        }

        public static string LastLaunchedVersion { get; private set; }

        public static string SerializationVersion { get; private set; }

        public static string Version { get; private set; }
    }
}
