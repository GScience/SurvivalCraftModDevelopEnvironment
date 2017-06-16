.class public abstract auto ansi sealed Game.VersionsManager
       extends [System.Runtime]System.Object
{
  .field private static string '<Version>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static string '<SerializationVersion>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static string '<LastLaunchedVersion>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static class [System.Collections]System.Collections.Generic.List`1<class Game.VersionConverter> m_versionConverters
  .method public hidebysig specialname static 
          valuetype Game.Platform  get_Platform() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.3
    IL_0001:  ret
  } // end of method VersionsManager::get_Platform

  .method public hidebysig specialname static 
          valuetype Game.BuildConfiguration 
          get_BuildConfiguration() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.1
    IL_0001:  ret
  } // end of method VersionsManager::get_BuildConfiguration

  .method public hidebysig specialname static 
          string  get_Version() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     string Game.VersionsManager::'<Version>k__BackingField'
    IL_0005:  ret
  } // end of method VersionsManager::get_Version

  .method private hidebysig specialname static 
          void  set_Version(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  stsfld     string Game.VersionsManager::'<Version>k__BackingField'
    IL_0006:  ret
  } // end of method VersionsManager::set_Version

  .method public hidebysig specialname static 
          string  get_SerializationVersion() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     string Game.VersionsManager::'<SerializationVersion>k__BackingField'
    IL_0005:  ret
  } // end of method VersionsManager::get_SerializationVersion

  .method private hidebysig specialname static 
          void  set_SerializationVersion(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  stsfld     string Game.VersionsManager::'<SerializationVersion>k__BackingField'
    IL_0006:  ret
  } // end of method VersionsManager::set_SerializationVersion

  .method public hidebysig specialname static 
          string  get_LastLaunchedVersion() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     string Game.VersionsManager::'<LastLaunchedVersion>k__BackingField'
    IL_0005:  ret
  } // end of method VersionsManager::get_LastLaunchedVersion

  .method private hidebysig specialname static 
          void  set_LastLaunchedVersion(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  stsfld     string Game.VersionsManager::'<LastLaunchedVersion>k__BackingField'
    IL_0006:  ret
  } // end of method VersionsManager::set_LastLaunchedVersion

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       345 (0x159)
    .maxstack  5
    .locals init (class [System.Reflection]System.Reflection.AssemblyName V_0,
             class [System.Reflection]System.Reflection.Assembly[] V_1,
             int32 V_2,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Reflection]System.Reflection.TypeInfo> V_3,
             class [System.Reflection]System.Reflection.TypeInfo V_4,
             class Game.VersionConverter V_5)
    IL_0000:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.VersionConverter>::.ctor()
    IL_0005:  stsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.VersionConverter> Game.VersionsManager::m_versionConverters
    IL_000a:  ldtoken    Game.VersionsManager
    IL_000f:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_0014:  call       class [System.Reflection]System.Reflection.TypeInfo [System.Reflection]System.Reflection.IntrospectionExtensions::GetTypeInfo(class [System.Runtime]System.Type)
    IL_0019:  callvirt   instance class [System.Reflection]System.Reflection.Assembly [System.Reflection]System.Reflection.TypeInfo::get_Assembly()
    IL_001e:  callvirt   instance string [System.Reflection]System.Reflection.Assembly::get_FullName()
    IL_0023:  newobj     instance void [System.Reflection]System.Reflection.AssemblyName::.ctor(string)
    IL_0028:  stloc.0
    IL_0029:  ldstr      "{0}.{1}.{2}.{3}"
    IL_002e:  ldc.i4.4
    IL_002f:  newarr     [System.Runtime]System.Object
    IL_0034:  dup
    IL_0035:  ldc.i4.0
    IL_0036:  ldloc.0
    IL_0037:  callvirt   instance class [System.Runtime]System.Version [System.Reflection]System.Reflection.AssemblyName::get_Version()
    IL_003c:  callvirt   instance int32 [System.Runtime]System.Version::get_Major()
    IL_0041:  box        [System.Runtime]System.Int32
    IL_0046:  stelem.ref
    IL_0047:  dup
    IL_0048:  ldc.i4.1
    IL_0049:  ldloc.0
    IL_004a:  callvirt   instance class [System.Runtime]System.Version [System.Reflection]System.Reflection.AssemblyName::get_Version()
    IL_004f:  callvirt   instance int32 [System.Runtime]System.Version::get_Minor()
    IL_0054:  box        [System.Runtime]System.Int32
    IL_0059:  stelem.ref
    IL_005a:  dup
    IL_005b:  ldc.i4.2
    IL_005c:  ldloc.0
    IL_005d:  callvirt   instance class [System.Runtime]System.Version [System.Reflection]System.Reflection.AssemblyName::get_Version()
    IL_0062:  callvirt   instance int32 [System.Runtime]System.Version::get_Build()
    IL_0067:  box        [System.Runtime]System.Int32
    IL_006c:  stelem.ref
    IL_006d:  dup
    IL_006e:  ldc.i4.3
    IL_006f:  ldloc.0
    IL_0070:  callvirt   instance class [System.Runtime]System.Version [System.Reflection]System.Reflection.AssemblyName::get_Version()
    IL_0075:  callvirt   instance int32 [System.Runtime]System.Version::get_Revision()
    IL_007a:  box        [System.Runtime]System.Int32
    IL_007f:  stelem.ref
    IL_0080:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0085:  call       void Game.VersionsManager::set_Version(string)
    IL_008a:  ldstr      "{0}.{1}"
    IL_008f:  ldc.i4.2
    IL_0090:  newarr     [System.Runtime]System.Object
    IL_0095:  dup
    IL_0096:  ldc.i4.0
    IL_0097:  ldloc.0
    IL_0098:  callvirt   instance class [System.Runtime]System.Version [System.Reflection]System.Reflection.AssemblyName::get_Version()
    IL_009d:  callvirt   instance int32 [System.Runtime]System.Version::get_Major()
    IL_00a2:  box        [System.Runtime]System.Int32
    IL_00a7:  stelem.ref
    IL_00a8:  dup
    IL_00a9:  ldc.i4.1
    IL_00aa:  ldloc.0
    IL_00ab:  callvirt   instance class [System.Runtime]System.Version [System.Reflection]System.Reflection.AssemblyName::get_Version()
    IL_00b0:  callvirt   instance int32 [System.Runtime]System.Version::get_Minor()
    IL_00b5:  box        [System.Runtime]System.Int32
    IL_00ba:  stelem.ref
    IL_00bb:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_00c0:  call       void Game.VersionsManager::set_SerializationVersion(string)
    IL_00c5:  call       valuetype [Engine]Engine.ReadOnlyList`1<class [System.Reflection]System.Reflection.Assembly> [Engine]Engine.Serialization.TypeCache::get_LoadedAssemblies()
    IL_00ca:  box        valuetype [Engine]Engine.ReadOnlyList`1<class [System.Reflection]System.Reflection.Assembly>
    IL_00cf:  call       !!0[] [System.Linq]System.Linq.Enumerable::ToArray<class [System.Reflection]System.Reflection.Assembly>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_00d4:  stloc.1
    IL_00d5:  ldc.i4.0
    IL_00d6:  stloc.2
    IL_00d7:  br.s       IL_0152

    IL_00d9:  ldloc.1
    IL_00da:  ldloc.2
    IL_00db:  ldelem.ref
    IL_00dc:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Reflection]System.Reflection.TypeInfo> [System.Reflection]System.Reflection.Assembly::get_DefinedTypes()
    IL_00e1:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Reflection]System.Reflection.TypeInfo>::GetEnumerator()
    IL_00e6:  stloc.3
    .try
    {
      IL_00e7:  br.s       IL_013a

      IL_00e9:  ldloc.3
      IL_00ea:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Reflection]System.Reflection.TypeInfo>::get_Current()
      IL_00ef:  stloc.s    V_4
      IL_00f1:  ldloc.s    V_4
      IL_00f3:  callvirt   instance bool [System.Reflection]System.Reflection.TypeInfo::get_IsAbstract()
      IL_00f8:  brtrue.s   IL_013a

      IL_00fa:  ldloc.s    V_4
      IL_00fc:  callvirt   instance bool [System.Reflection]System.Reflection.TypeInfo::get_IsInterface()
      IL_0101:  brtrue.s   IL_013a

      IL_0103:  ldtoken    Game.VersionConverter
      IL_0108:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
      IL_010d:  call       class [System.Reflection]System.Reflection.TypeInfo [System.Reflection]System.Reflection.IntrospectionExtensions::GetTypeInfo(class [System.Runtime]System.Type)
      IL_0112:  ldloc.s    V_4
      IL_0114:  callvirt   instance bool [System.Reflection]System.Reflection.TypeInfo::IsAssignableFrom(class [System.Reflection]System.Reflection.TypeInfo)
      IL_0119:  brfalse.s  IL_013a

      IL_011b:  ldloc.s    V_4
      IL_011d:  callvirt   instance class [System.Runtime]System.Type [System.Reflection]System.Reflection.TypeInfo::AsType()
      IL_0122:  call       object [System.Runtime]System.Activator::CreateInstance(class [System.Runtime]System.Type)
      IL_0127:  castclass  Game.VersionConverter
      IL_012c:  stloc.s    V_5
      IL_012e:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.VersionConverter> Game.VersionsManager::m_versionConverters
      IL_0133:  ldloc.s    V_5
      IL_0135:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.VersionConverter>::Add(!0)
      IL_013a:  ldloc.3
      IL_013b:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_0140:  brtrue.s   IL_00e9

      IL_0142:  leave.s    IL_014e

    }  // end .try
    finally
    {
      IL_0144:  ldloc.3
      IL_0145:  brfalse.s  IL_014d

      IL_0147:  ldloc.3
      IL_0148:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_014d:  endfinally
    }  // end handler
    IL_014e:  ldloc.2
    IL_014f:  ldc.i4.1
    IL_0150:  add
    IL_0151:  stloc.2
    IL_0152:  ldloc.2
    IL_0153:  ldloc.1
    IL_0154:  ldlen
    IL_0155:  conv.i4
    IL_0156:  blt.s      IL_00d9

    IL_0158:  ret
  } // end of method VersionsManager::.cctor

  .method public hidebysig static void  Initialize() cil managed
  {
    // 代码大小       98 (0x62)
    .maxstack  6
    IL_0000:  call       string Game.SettingsManager::get_LastLaunchedVersion()
    IL_0005:  call       void Game.VersionsManager::set_LastLaunchedVersion(string)
    IL_000a:  call       string Game.VersionsManager::get_Version()
    IL_000f:  call       void Game.SettingsManager::set_LastLaunchedVersion(string)
    IL_0014:  call       string Game.VersionsManager::get_Version()
    IL_0019:  call       string Game.VersionsManager::get_LastLaunchedVersion()
    IL_001e:  call       bool [System.Runtime]System.String::op_Inequality(string,
                                                                           string)
    IL_0023:  brfalse.s  IL_0061

    IL_0025:  ldstr      "[VersionsManager] Upgrade game"
    IL_002a:  ldc.i4.2
    IL_002b:  newarr     Game.AnalyticsParameter
    IL_0030:  dup
    IL_0031:  ldc.i4.0
    IL_0032:  ldstr      "LastVersion"
    IL_0037:  call       string Game.VersionsManager::get_LastLaunchedVersion()
    IL_003c:  newobj     instance void Game.AnalyticsParameter::.ctor(string,
                                                                      string)
    IL_0041:  stelem     Game.AnalyticsParameter
    IL_0046:  dup
    IL_0047:  ldc.i4.1
    IL_0048:  ldstr      "CurrentVersion"
    IL_004d:  call       string Game.VersionsManager::get_Version()
    IL_0052:  newobj     instance void Game.AnalyticsParameter::.ctor(string,
                                                                      string)
    IL_0057:  stelem     Game.AnalyticsParameter
    IL_005c:  call       void Game.AnalyticsManager::LogEvent(string,
                                                              valuetype Game.AnalyticsParameter[])
    IL_0061:  ret
  } // end of method VersionsManager::Initialize

  .method public hidebysig static void  UpgradeWorld(string directoryName) cil managed
  {
    // 代码大小       374 (0x176)
    .maxstack  6
    .locals init (class Game.WorldInfo V_0,
             class [System.Collections]System.Collections.Generic.List`1<class Game.VersionConverter> V_1,
             class Game.WorldInfo V_2,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.VersionConverter> V_3,
             class Game.VersionConverter V_4)
    IL_0000:  ldarg.0
    IL_0001:  call       class Game.WorldInfo Game.WorldsManager::GetWorldInfo(string)
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  brtrue.s   IL_0024

    IL_000a:  ldstr      "Cannot determine version of world at \"{0}\""
    IL_000f:  ldc.i4.1
    IL_0010:  newarr     [System.Runtime]System.Object
    IL_0015:  dup
    IL_0016:  ldc.i4.0
    IL_0017:  ldarg.0
    IL_0018:  stelem.ref
    IL_0019:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_001e:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0023:  throw

    IL_0024:  ldloc.0
    IL_0025:  ldfld      string Game.WorldInfo::SerializationVersion
    IL_002a:  call       string Game.VersionsManager::get_SerializationVersion()
    IL_002f:  call       bool [System.Runtime]System.String::op_Inequality(string,
                                                                           string)
    IL_0034:  brfalse    IL_0175

    IL_0039:  ldstr      "Upgrading World To {0}"
    IL_003e:  ldc.i4.1
    IL_003f:  newarr     [System.Runtime]System.Object
    IL_0044:  dup
    IL_0045:  ldc.i4.0
    IL_0046:  call       string Game.VersionsManager::get_SerializationVersion()
    IL_004b:  stelem.ref
    IL_004c:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0051:  ldc.r4     0.0
    IL_0056:  call       void Game.ProgressManager::UpdateProgress(string,
                                                                   float32)
    IL_005b:  ldloc.0
    IL_005c:  ldfld      string Game.WorldInfo::SerializationVersion
    IL_0061:  call       string Game.VersionsManager::get_SerializationVersion()
    IL_0066:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.VersionConverter> Game.VersionsManager::m_versionConverters
    IL_006b:  ldc.i4.0
    IL_006c:  call       class [System.Collections]System.Collections.Generic.List`1<class Game.VersionConverter> Game.VersionsManager::FindTransform(string,
                                                                                                                                                      string,
                                                                                                                                                      class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.VersionConverter>,
                                                                                                                                                      int32)
    IL_0071:  stloc.1
    IL_0072:  ldloc.1
    IL_0073:  brtrue.s   IL_009c

    IL_0075:  ldstr      "Cannot find conversion path from version \"{0}\" to "
    + "version \"{1}\""
    IL_007a:  ldc.i4.2
    IL_007b:  newarr     [System.Runtime]System.Object
    IL_0080:  dup
    IL_0081:  ldc.i4.0
    IL_0082:  ldloc.0
    IL_0083:  ldfld      string Game.WorldInfo::SerializationVersion
    IL_0088:  stelem.ref
    IL_0089:  dup
    IL_008a:  ldc.i4.1
    IL_008b:  call       string Game.VersionsManager::get_SerializationVersion()
    IL_0090:  stelem.ref
    IL_0091:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0096:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_009b:  throw

    IL_009c:  ldloc.1
    IL_009d:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.VersionConverter>::GetEnumerator()
    IL_00a2:  stloc.3
    .try
    {
      IL_00a3:  br.s       IL_00df

      IL_00a5:  ldloca.s   V_3
      IL_00a7:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.VersionConverter>::get_Current()
      IL_00ac:  stloc.s    V_4
      IL_00ae:  ldstr      "Upgrading world version \"{0}\" to \"{1}\"."
      IL_00b3:  ldc.i4.2
      IL_00b4:  newarr     [System.Runtime]System.Object
      IL_00b9:  dup
      IL_00ba:  ldc.i4.0
      IL_00bb:  ldloc.s    V_4
      IL_00bd:  callvirt   instance string Game.VersionConverter::get_SourceVersion()
      IL_00c2:  stelem.ref
      IL_00c3:  dup
      IL_00c4:  ldc.i4.1
      IL_00c5:  ldloc.s    V_4
      IL_00c7:  callvirt   instance string Game.VersionConverter::get_TargetVersion()
      IL_00cc:  stelem.ref
      IL_00cd:  call       string [System.Runtime]System.String::Format(string,
                                                                        object[])
      IL_00d2:  call       void [Engine]Engine.Log::Information(string)
      IL_00d7:  ldloc.s    V_4
      IL_00d9:  ldarg.0
      IL_00da:  callvirt   instance void Game.VersionConverter::ConvertWorld(string)
      IL_00df:  ldloca.s   V_3
      IL_00e1:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.VersionConverter>::MoveNext()
      IL_00e6:  brtrue.s   IL_00a5

      IL_00e8:  leave.s    IL_00f8

    }  // end .try
    finally
    {
      IL_00ea:  ldloca.s   V_3
      IL_00ec:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.VersionConverter>
      IL_00f2:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00f7:  endfinally
    }  // end handler
    IL_00f8:  ldarg.0
    IL_00f9:  call       class Game.WorldInfo Game.WorldsManager::GetWorldInfo(string)
    IL_00fe:  stloc.2
    IL_00ff:  ldloc.2
    IL_0100:  ldfld      string Game.WorldInfo::SerializationVersion
    IL_0105:  call       string Game.VersionsManager::get_SerializationVersion()
    IL_010a:  call       bool [System.Runtime]System.String::op_Inequality(string,
                                                                           string)
    IL_010f:  brfalse.s  IL_0138

    IL_0111:  ldstr      "Upgrade produced invalid project version. Expected"
    + " \"{0}\", found \"{1}\"."
    IL_0116:  ldc.i4.2
    IL_0117:  newarr     [System.Runtime]System.Object
    IL_011c:  dup
    IL_011d:  ldc.i4.0
    IL_011e:  call       string Game.VersionsManager::get_SerializationVersion()
    IL_0123:  stelem.ref
    IL_0124:  dup
    IL_0125:  ldc.i4.1
    IL_0126:  ldloc.2
    IL_0127:  ldfld      string Game.WorldInfo::SerializationVersion
    IL_012c:  stelem.ref
    IL_012d:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0132:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0137:  throw

    IL_0138:  ldstr      "[VersionConverter] Upgrade world"
    IL_013d:  ldc.i4.2
    IL_013e:  newarr     Game.AnalyticsParameter
    IL_0143:  dup
    IL_0144:  ldc.i4.0
    IL_0145:  ldstr      "SourceVersion"
    IL_014a:  ldloc.0
    IL_014b:  ldfld      string Game.WorldInfo::SerializationVersion
    IL_0150:  newobj     instance void Game.AnalyticsParameter::.ctor(string,
                                                                      string)
    IL_0155:  stelem     Game.AnalyticsParameter
    IL_015a:  dup
    IL_015b:  ldc.i4.1
    IL_015c:  ldstr      "TargetVersion"
    IL_0161:  call       string Game.VersionsManager::get_SerializationVersion()
    IL_0166:  newobj     instance void Game.AnalyticsParameter::.ctor(string,
                                                                      string)
    IL_016b:  stelem     Game.AnalyticsParameter
    IL_0170:  call       void Game.AnalyticsManager::LogEvent(string,
                                                              valuetype Game.AnalyticsParameter[])
    IL_0175:  ret
  } // end of method VersionsManager::UpgradeWorld

  .method private hidebysig static class [System.Collections]System.Collections.Generic.List`1<class Game.VersionConverter> 
          FindTransform(string sourceVersion,
                        string targetVersion,
                        class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.VersionConverter> converters,
                        int32 depth) cil managed
  {
    // 代码大小       143 (0x8f)
    .maxstack  5
    .locals init (class [System.Collections]System.Collections.Generic.List`1<class Game.VersionConverter> V_0,
             int32 V_1,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.VersionConverter> V_2,
             class Game.VersionConverter V_3,
             class [System.Collections]System.Collections.Generic.List`1<class Game.VersionConverter> V_4)
    IL_0000:  ldarg.3
    IL_0001:  ldc.i4.s   100
    IL_0003:  ble.s      IL_0010

    IL_0005:  ldstr      "Too deep recursion when searching for version conv"
    + "erters. Check for possible loops in transforms."
    IL_000a:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_000f:  throw

    IL_0010:  ldarg.0
    IL_0011:  ldarg.1
    IL_0012:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                         string)
    IL_0017:  brfalse.s  IL_001f

    IL_0019:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.VersionConverter>::.ctor()
    IL_001e:  ret

    IL_001f:  ldnull
    IL_0020:  stloc.0
    IL_0021:  ldc.i4     0x7fffffff
    IL_0026:  stloc.1
    IL_0027:  ldarg.2
    IL_0028:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.VersionConverter>::GetEnumerator()
    IL_002d:  stloc.2
    .try
    {
      IL_002e:  br.s       IL_0079

      IL_0030:  ldloc.2
      IL_0031:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.VersionConverter>::get_Current()
      IL_0036:  stloc.3
      IL_0037:  ldloc.3
      IL_0038:  callvirt   instance string Game.VersionConverter::get_SourceVersion()
      IL_003d:  ldarg.0
      IL_003e:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_0043:  brfalse.s  IL_0079

      IL_0045:  ldloc.3
      IL_0046:  callvirt   instance string Game.VersionConverter::get_TargetVersion()
      IL_004b:  ldarg.1
      IL_004c:  ldarg.2
      IL_004d:  ldarg.3
      IL_004e:  ldc.i4.1
      IL_004f:  add
      IL_0050:  call       class [System.Collections]System.Collections.Generic.List`1<class Game.VersionConverter> Game.VersionsManager::FindTransform(string,
                                                                                                                                                        string,
                                                                                                                                                        class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.VersionConverter>,
                                                                                                                                                        int32)
      IL_0055:  stloc.s    V_4
      IL_0057:  ldloc.s    V_4
      IL_0059:  brfalse.s  IL_0079

      IL_005b:  ldloc.s    V_4
      IL_005d:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.VersionConverter>::get_Count()
      IL_0062:  ldloc.1
      IL_0063:  bge.s      IL_0079

      IL_0065:  ldloc.s    V_4
      IL_0067:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.VersionConverter>::get_Count()
      IL_006c:  stloc.1
      IL_006d:  ldloc.s    V_4
      IL_006f:  ldc.i4.0
      IL_0070:  ldloc.3
      IL_0071:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.VersionConverter>::Insert(int32,
                                                                                                                                          !0)
      IL_0076:  ldloc.s    V_4
      IL_0078:  stloc.0
      IL_0079:  ldloc.2
      IL_007a:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_007f:  brtrue.s   IL_0030

      IL_0081:  leave.s    IL_008d

    }  // end .try
    finally
    {
      IL_0083:  ldloc.2
      IL_0084:  brfalse.s  IL_008c

      IL_0086:  ldloc.2
      IL_0087:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_008c:  endfinally
    }  // end handler
    IL_008d:  ldloc.0
    IL_008e:  ret
  } // end of method VersionsManager::FindTransform

  .property valuetype Game.Platform Platform()
  {
    .get valuetype Game.Platform Game.VersionsManager::get_Platform()
  } // end of property VersionsManager::Platform
  .property valuetype Game.BuildConfiguration
          BuildConfiguration()
  {
    .get valuetype Game.BuildConfiguration Game.VersionsManager::get_BuildConfiguration()
  } // end of property VersionsManager::BuildConfiguration
  .property string Version()
  {
    .get string Game.VersionsManager::get_Version()
    .set void Game.VersionsManager::set_Version(string)
  } // end of property VersionsManager::Version
  .property string SerializationVersion()
  {
    .get string Game.VersionsManager::get_SerializationVersion()
    .set void Game.VersionsManager::set_SerializationVersion(string)
  } // end of property VersionsManager::SerializationVersion
  .property string LastLaunchedVersion()
  {
    .get string Game.VersionsManager::get_LastLaunchedVersion()
    .set void Game.VersionsManager::set_LastLaunchedVersion(string)
  } // end of property VersionsManager::LastLaunchedVersion
} // end of class Game.VersionsManager