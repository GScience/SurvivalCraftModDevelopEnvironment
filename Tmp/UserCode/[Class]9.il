.class public abstract auto ansi sealed Game.VersionsManager
       extends [System.Runtime]System.Object
{
  .field private static class [System.Collections]System.Collections.Generic.List`1<class [Survivalcraft]Game.VersionConverter> m_versionConverters
  .field private static string '<LastLaunchedVersion>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Diagnostics.Debug]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private static string '<SerializationVersion>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Diagnostics.Debug]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private static string '<Version>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Diagnostics.Debug]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       390 (0x186)
    .maxstack  4
    .locals init (class [System.Reflection]System.Reflection.AssemblyName V_0,
             object[] V_1,
             object[] V_2,
             class [System.Reflection]System.Reflection.Assembly[] V_3,
             int32 V_4,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Reflection]System.Reflection.TypeInfo> V_5,
             class [System.Reflection]System.Reflection.TypeInfo V_6,
             bool V_7,
             class [Survivalcraft]Game.VersionConverter V_8,
             bool V_9)
    IL_0000:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class [Survivalcraft]Game.VersionConverter>::.ctor()
    IL_0005:  stsfld     class [System.Collections]System.Collections.Generic.List`1<class [Survivalcraft]Game.VersionConverter> Game.VersionsManager::m_versionConverters
    IL_000a:  nop
    IL_000b:  ldtoken    Game.VersionsManager
    IL_0010:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_0015:  call       class [System.Reflection]System.Reflection.TypeInfo [System.Reflection]System.Reflection.IntrospectionExtensions::GetTypeInfo(class [System.Runtime]System.Type)
    IL_001a:  callvirt   instance class [System.Reflection]System.Reflection.Assembly [System.Reflection]System.Reflection.TypeInfo::get_Assembly()
    IL_001f:  callvirt   instance string [System.Reflection]System.Reflection.Assembly::get_FullName()
    IL_0024:  newobj     instance void [System.Reflection]System.Reflection.AssemblyName::.ctor(string)
    IL_0029:  stloc.0
    IL_002a:  ldc.i4.4
    IL_002b:  newarr     [System.Runtime]System.Object
    IL_0030:  dup
    IL_0031:  ldc.i4.0
    IL_0032:  ldloc.0
    IL_0033:  callvirt   instance class [System.Runtime]System.Version [System.Reflection]System.Reflection.AssemblyName::get_Version()
    IL_0038:  callvirt   instance int32 [System.Runtime]System.Version::get_Major()
    IL_003d:  box        [System.Runtime]System.Int32
    IL_0042:  stelem.ref
    IL_0043:  dup
    IL_0044:  ldc.i4.1
    IL_0045:  ldloc.0
    IL_0046:  callvirt   instance class [System.Runtime]System.Version [System.Reflection]System.Reflection.AssemblyName::get_Version()
    IL_004b:  callvirt   instance int32 [System.Runtime]System.Version::get_Minor()
    IL_0050:  box        [System.Runtime]System.Int32
    IL_0055:  stelem.ref
    IL_0056:  dup
    IL_0057:  ldc.i4.2
    IL_0058:  ldloc.0
    IL_0059:  callvirt   instance class [System.Runtime]System.Version [System.Reflection]System.Reflection.AssemblyName::get_Version()
    IL_005e:  callvirt   instance int32 [System.Runtime]System.Version::get_Build()
    IL_0063:  box        [System.Runtime]System.Int32
    IL_0068:  stelem.ref
    IL_0069:  dup
    IL_006a:  ldc.i4.3
    IL_006b:  ldloc.0
    IL_006c:  callvirt   instance class [System.Runtime]System.Version [System.Reflection]System.Reflection.AssemblyName::get_Version()
    IL_0071:  callvirt   instance int32 [System.Runtime]System.Version::get_Revision()
    IL_0076:  box        [System.Runtime]System.Int32
    IL_007b:  stelem.ref
    IL_007c:  stloc.1
    IL_007d:  ldstr      "{0}.{1}.{2}.{3}"
    IL_0082:  ldloc.1
    IL_0083:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0088:  call       void Game.VersionsManager::set_Version(string)
    IL_008d:  nop
    IL_008e:  ldc.i4.2
    IL_008f:  newarr     [System.Runtime]System.Object
    IL_0094:  dup
    IL_0095:  ldc.i4.0
    IL_0096:  ldloc.0
    IL_0097:  callvirt   instance class [System.Runtime]System.Version [System.Reflection]System.Reflection.AssemblyName::get_Version()
    IL_009c:  callvirt   instance int32 [System.Runtime]System.Version::get_Major()
    IL_00a1:  box        [System.Runtime]System.Int32
    IL_00a6:  stelem.ref
    IL_00a7:  dup
    IL_00a8:  ldc.i4.1
    IL_00a9:  ldloc.0
    IL_00aa:  callvirt   instance class [System.Runtime]System.Version [System.Reflection]System.Reflection.AssemblyName::get_Version()
    IL_00af:  callvirt   instance int32 [System.Runtime]System.Version::get_Minor()
    IL_00b4:  box        [System.Runtime]System.Int32
    IL_00b9:  stelem.ref
    IL_00ba:  stloc.2
    IL_00bb:  ldstr      "{0}.{1}"
    IL_00c0:  ldloc.2
    IL_00c1:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_00c6:  call       void Game.VersionsManager::set_SerializationVersion(string)
    IL_00cb:  nop
    IL_00cc:  call       valuetype [Engine]Engine.ReadOnlyList`1<class [System.Reflection]System.Reflection.Assembly> [Engine]Engine.Serialization.TypeCache::get_LoadedAssemblies()
    IL_00d1:  box        valuetype [Engine]Engine.ReadOnlyList`1<class [System.Reflection]System.Reflection.Assembly>
    IL_00d6:  call       !!0[] [System.Linq]System.Linq.Enumerable::ToArray<class [System.Reflection]System.Reflection.Assembly>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_00db:  stloc.3
    IL_00dc:  ldc.i4.0
    IL_00dd:  stloc.s    V_4
    IL_00df:  br         IL_0175

    IL_00e4:  nop
    IL_00e5:  nop
    IL_00e6:  ldloc.3
    IL_00e7:  ldloc.s    V_4
    IL_00e9:  ldelem.ref
    IL_00ea:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Reflection]System.Reflection.TypeInfo> [System.Reflection]System.Reflection.Assembly::get_DefinedTypes()
    IL_00ef:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Reflection]System.Reflection.TypeInfo>::GetEnumerator()
    IL_00f4:  stloc.s    V_5
    .try
    {
      IL_00f6:  br.s       IL_0156

      IL_00f8:  ldloc.s    V_5
      IL_00fa:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Reflection]System.Reflection.TypeInfo>::get_Current()
      IL_00ff:  stloc.s    V_6
      IL_0101:  nop
      IL_0102:  ldloc.s    V_6
      IL_0104:  callvirt   instance bool [System.Reflection]System.Reflection.TypeInfo::get_IsAbstract()
      IL_0109:  brtrue.s   IL_012c

      IL_010b:  ldloc.s    V_6
      IL_010d:  callvirt   instance bool [System.Reflection]System.Reflection.TypeInfo::get_IsInterface()
      IL_0112:  brtrue.s   IL_012c

      IL_0114:  ldtoken    [Survivalcraft]Game.VersionConverter
      IL_0119:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
      IL_011e:  call       class [System.Reflection]System.Reflection.TypeInfo [System.Reflection]System.Reflection.IntrospectionExtensions::GetTypeInfo(class [System.Runtime]System.Type)
      IL_0123:  ldloc.s    V_6
      IL_0125:  callvirt   instance bool [System.Reflection]System.Reflection.TypeInfo::IsAssignableFrom(class [System.Reflection]System.Reflection.TypeInfo)
      IL_012a:  br.s       IL_012d

      IL_012c:  ldc.i4.0
      IL_012d:  stloc.s    V_7
      IL_012f:  ldloc.s    V_7
      IL_0131:  brfalse.s  IL_0155

      IL_0133:  nop
      IL_0134:  ldloc.s    V_6
      IL_0136:  callvirt   instance class [System.Runtime]System.Type [System.Reflection]System.Reflection.TypeInfo::AsType()
      IL_013b:  call       object [System.Runtime]System.Activator::CreateInstance(class [System.Runtime]System.Type)
      IL_0140:  castclass  [Survivalcraft]Game.VersionConverter
      IL_0145:  stloc.s    V_8
      IL_0147:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class [Survivalcraft]Game.VersionConverter> Game.VersionsManager::m_versionConverters
      IL_014c:  ldloc.s    V_8
      IL_014e:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class [Survivalcraft]Game.VersionConverter>::Add(!0)
      IL_0153:  nop
      IL_0154:  nop
      IL_0155:  nop
      IL_0156:  ldloc.s    V_5
      IL_0158:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_015d:  brtrue.s   IL_00f8

      IL_015f:  leave.s    IL_016e

    }  // end .try
    finally
    {
      IL_0161:  ldloc.s    V_5
      IL_0163:  brfalse.s  IL_016d

      IL_0165:  ldloc.s    V_5
      IL_0167:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_016c:  nop
      IL_016d:  endfinally
    }  // end handler
    IL_016e:  nop
    IL_016f:  ldloc.s    V_4
    IL_0171:  ldc.i4.1
    IL_0172:  add
    IL_0173:  stloc.s    V_4
    IL_0175:  ldloc.s    V_4
    IL_0177:  ldloc.3
    IL_0178:  ldlen
    IL_0179:  conv.i4
    IL_017a:  clt
    IL_017c:  stloc.s    V_9
    IL_017e:  ldloc.s    V_9
    IL_0180:  brtrue     IL_00e4

    IL_0185:  ret
  } // end of method VersionsManager::.cctor

  .method private hidebysig static class [System.Collections]System.Collections.Generic.List`1<class [Survivalcraft]Game.VersionConverter> 
          FindTransform(string sourceVersion,
                        string targetVersion,
                        class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [Survivalcraft]Game.VersionConverter> converters,
                        int32 depth) cil managed
  {
    // 代码大小       195 (0xc3)
    .maxstack  5
    .locals init (class [System.Collections]System.Collections.Generic.List`1<class [Survivalcraft]Game.VersionConverter> V_0,
             int32 V_1,
             bool V_2,
             bool V_3,
             class [System.Collections]System.Collections.Generic.List`1<class [Survivalcraft]Game.VersionConverter> V_4,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [Survivalcraft]Game.VersionConverter> V_5,
             class [Survivalcraft]Game.VersionConverter V_6,
             bool V_7,
             class [System.Collections]System.Collections.Generic.List`1<class [Survivalcraft]Game.VersionConverter> V_8,
             bool V_9)
    IL_0000:  nop
    IL_0001:  ldarg.3
    IL_0002:  ldc.i4.s   100
    IL_0004:  cgt
    IL_0006:  stloc.2
    IL_0007:  ldloc.2
    IL_0008:  brfalse.s  IL_0016

    IL_000a:  nop
    IL_000b:  ldstr      "Too deep recursion when searching for version conv"
    + "erters. Check for possible loops in transforms."
    IL_0010:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0015:  throw

    IL_0016:  ldarg.0
    IL_0017:  ldarg.1
    IL_0018:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                         string)
    IL_001d:  stloc.3
    IL_001e:  ldloc.3
    IL_001f:  brfalse.s  IL_002e

    IL_0021:  nop
    IL_0022:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class [Survivalcraft]Game.VersionConverter>::.ctor()
    IL_0027:  stloc.s    V_4
    IL_0029:  br         IL_00c0

    IL_002e:  ldnull
    IL_002f:  stloc.0
    IL_0030:  ldc.i4     0x7fffffff
    IL_0035:  stloc.1
    IL_0036:  nop
    IL_0037:  ldarg.2
    IL_0038:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [Survivalcraft]Game.VersionConverter>::GetEnumerator()
    IL_003d:  stloc.s    V_5
    .try
    {
      IL_003f:  br.s       IL_00a3

      IL_0041:  ldloc.s    V_5
      IL_0043:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [Survivalcraft]Game.VersionConverter>::get_Current()
      IL_0048:  stloc.s    V_6
      IL_004a:  nop
      IL_004b:  ldloc.s    V_6
      IL_004d:  callvirt   instance string [Survivalcraft]Game.VersionConverter::get_SourceVersion()
      IL_0052:  ldarg.0
      IL_0053:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_0058:  stloc.s    V_7
      IL_005a:  ldloc.s    V_7
      IL_005c:  brfalse.s  IL_00a2

      IL_005e:  nop
      IL_005f:  ldloc.s    V_6
      IL_0061:  callvirt   instance string [Survivalcraft]Game.VersionConverter::get_TargetVersion()
      IL_0066:  ldarg.1
      IL_0067:  ldarg.2
      IL_0068:  ldarg.3
      IL_0069:  ldc.i4.1
      IL_006a:  add
      IL_006b:  call       class [System.Collections]System.Collections.Generic.List`1<class [Survivalcraft]Game.VersionConverter> Game.VersionsManager::FindTransform(string,
                                                                                                                                                                       string,
                                                                                                                                                                       class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [Survivalcraft]Game.VersionConverter>,
                                                                                                                                                                       int32)
      IL_0070:  stloc.s    V_8
      IL_0072:  ldloc.s    V_8
      IL_0074:  brfalse.s  IL_0082

      IL_0076:  ldloc.s    V_8
      IL_0078:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [Survivalcraft]Game.VersionConverter>::get_Count()
      IL_007d:  ldloc.1
      IL_007e:  clt
      IL_0080:  br.s       IL_0083

      IL_0082:  ldc.i4.0
      IL_0083:  stloc.s    V_9
      IL_0085:  ldloc.s    V_9
      IL_0087:  brfalse.s  IL_00a1

      IL_0089:  nop
      IL_008a:  ldloc.s    V_8
      IL_008c:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [Survivalcraft]Game.VersionConverter>::get_Count()
      IL_0091:  stloc.1
      IL_0092:  ldloc.s    V_8
      IL_0094:  ldc.i4.0
      IL_0095:  ldloc.s    V_6
      IL_0097:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class [Survivalcraft]Game.VersionConverter>::Insert(int32,
                                                                                                                                                         !0)
      IL_009c:  nop
      IL_009d:  ldloc.s    V_8
      IL_009f:  stloc.0
      IL_00a0:  nop
      IL_00a1:  nop
      IL_00a2:  nop
      IL_00a3:  ldloc.s    V_5
      IL_00a5:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_00aa:  brtrue.s   IL_0041

      IL_00ac:  leave.s    IL_00bb

    }  // end .try
    finally
    {
      IL_00ae:  ldloc.s    V_5
      IL_00b0:  brfalse.s  IL_00ba

      IL_00b2:  ldloc.s    V_5
      IL_00b4:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00b9:  nop
      IL_00ba:  endfinally
    }  // end handler
    IL_00bb:  ldloc.0
    IL_00bc:  stloc.s    V_4
    IL_00be:  br.s       IL_00c0

    IL_00c0:  ldloc.s    V_4
    IL_00c2:  ret
  } // end of method VersionsManager::FindTransform

  .method public hidebysig static void  Initialize() cil managed
  {
    // 代码大小       108 (0x6c)
    .maxstack  5
    .locals init (bool V_0,
             valuetype [Survivalcraft]Game.AnalyticsParameter[] V_1)
    IL_0000:  nop
    IL_0001:  call       string [Survivalcraft]Game.SettingsManager::get_LastLaunchedVersion()
    IL_0006:  call       void Game.VersionsManager::set_LastLaunchedVersion(string)
    IL_000b:  nop
    IL_000c:  call       string Game.VersionsManager::get_Version()
    IL_0011:  call       void [Survivalcraft]Game.SettingsManager::set_LastLaunchedVersion(string)
    IL_0016:  nop
    IL_0017:  call       string Game.VersionsManager::get_Version()
    IL_001c:  call       string Game.VersionsManager::get_LastLaunchedVersion()
    IL_0021:  call       bool [System.Runtime]System.String::op_Inequality(string,
                                                                           string)
    IL_0026:  stloc.0
    IL_0027:  ldloc.0
    IL_0028:  brfalse.s  IL_006b

    IL_002a:  nop
    IL_002b:  ldc.i4.2
    IL_002c:  newarr     [Survivalcraft]Game.AnalyticsParameter
    IL_0031:  dup
    IL_0032:  ldc.i4.0
    IL_0033:  ldstr      "LastVersion"
    IL_0038:  call       string Game.VersionsManager::get_LastLaunchedVersion()
    IL_003d:  newobj     instance void [Survivalcraft]Game.AnalyticsParameter::.ctor(string,
                                                                                     string)
    IL_0042:  stelem     [Survivalcraft]Game.AnalyticsParameter
    IL_0047:  dup
    IL_0048:  ldc.i4.1
    IL_0049:  ldstr      "CurrentVersion"
    IL_004e:  call       string Game.VersionsManager::get_Version()
    IL_0053:  newobj     instance void [Survivalcraft]Game.AnalyticsParameter::.ctor(string,
                                                                                     string)
    IL_0058:  stelem     [Survivalcraft]Game.AnalyticsParameter
    IL_005d:  stloc.1
    IL_005e:  ldstr      "[VersionsManager] Upgrade game"
    IL_0063:  ldloc.1
    IL_0064:  call       void [Survivalcraft]Game.AnalyticsManager::LogEvent(string,
                                                                             valuetype [Survivalcraft]Game.AnalyticsParameter[])
    IL_0069:  nop
    IL_006a:  nop
    IL_006b:  ret
  } // end of method VersionsManager::Initialize

  .method public hidebysig static void  UpgradeWorld(string directoryName) cil managed
  {
    // 代码大小       435 (0x1b3)
    .maxstack  5
    .locals init (class [Survivalcraft]Game.WorldInfo V_0,
             bool V_1,
             object[] V_2,
             bool V_3,
             object[] V_4,
             class [System.Collections]System.Collections.Generic.List`1<class [Survivalcraft]Game.VersionConverter> V_5,
             class [Survivalcraft]Game.WorldInfo V_6,
             valuetype [Survivalcraft]Game.AnalyticsParameter[] V_7,
             bool V_8,
             object[] V_9,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class [Survivalcraft]Game.VersionConverter> V_10,
             class [Survivalcraft]Game.VersionConverter V_11,
             object[] V_12,
             bool V_13,
             object[] V_14)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  call       class [Survivalcraft]Game.WorldInfo [Survivalcraft]Game.WorldsManager::GetWorldInfo(string)
    IL_0007:  stloc.0
    IL_0008:  ldloc.0
    IL_0009:  ldnull
    IL_000a:  ceq
    IL_000c:  stloc.1
    IL_000d:  ldloc.1
    IL_000e:  brfalse.s  IL_002d

    IL_0010:  nop
    IL_0011:  ldc.i4.1
    IL_0012:  newarr     [System.Runtime]System.Object
    IL_0017:  dup
    IL_0018:  ldc.i4.0
    IL_0019:  ldarg.0
    IL_001a:  stelem.ref
    IL_001b:  stloc.2
    IL_001c:  ldstr      "Cannot determine version of world at \"{0}\""
    IL_0021:  ldloc.2
    IL_0022:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0027:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_002c:  throw

    IL_002d:  ldloc.0
    IL_002e:  ldfld      string [Survivalcraft]Game.WorldInfo::SerializationVersion
    IL_0033:  call       string Game.VersionsManager::get_SerializationVersion()
    IL_0038:  call       bool [System.Runtime]System.String::op_Inequality(string,
                                                                           string)
    IL_003d:  stloc.3
    IL_003e:  ldloc.3
    IL_003f:  brfalse    IL_01b2

    IL_0044:  nop
    IL_0045:  ldc.i4.1
    IL_0046:  newarr     [System.Runtime]System.Object
    IL_004b:  dup
    IL_004c:  ldc.i4.0
    IL_004d:  call       string Game.VersionsManager::get_SerializationVersion()
    IL_0052:  stelem.ref
    IL_0053:  stloc.s    V_4
    IL_0055:  ldstr      "Upgrading World To {0}"
    IL_005a:  ldloc.s    V_4
    IL_005c:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0061:  ldc.r4     0.0
    IL_0066:  call       void [Survivalcraft]Game.ProgressManager::UpdateProgress(string,
                                                                                  float32)
    IL_006b:  nop
    IL_006c:  ldloc.0
    IL_006d:  ldfld      string [Survivalcraft]Game.WorldInfo::SerializationVersion
    IL_0072:  call       string Game.VersionsManager::get_SerializationVersion()
    IL_0077:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class [Survivalcraft]Game.VersionConverter> Game.VersionsManager::m_versionConverters
    IL_007c:  ldc.i4.0
    IL_007d:  call       class [System.Collections]System.Collections.Generic.List`1<class [Survivalcraft]Game.VersionConverter> Game.VersionsManager::FindTransform(string,
                                                                                                                                                                     string,
                                                                                                                                                                     class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [Survivalcraft]Game.VersionConverter>,
                                                                                                                                                                     int32)
    IL_0082:  stloc.s    V_5
    IL_0084:  ldloc.s    V_5
    IL_0086:  ldnull
    IL_0087:  ceq
    IL_0089:  stloc.s    V_8
    IL_008b:  ldloc.s    V_8
    IL_008d:  brfalse.s  IL_00bb

    IL_008f:  nop
    IL_0090:  ldc.i4.2
    IL_0091:  newarr     [System.Runtime]System.Object
    IL_0096:  dup
    IL_0097:  ldc.i4.0
    IL_0098:  ldloc.0
    IL_0099:  ldfld      string [Survivalcraft]Game.WorldInfo::SerializationVersion
    IL_009e:  stelem.ref
    IL_009f:  dup
    IL_00a0:  ldc.i4.1
    IL_00a1:  call       string Game.VersionsManager::get_SerializationVersion()
    IL_00a6:  stelem.ref
    IL_00a7:  stloc.s    V_9
    IL_00a9:  ldstr      "Cannot find conversion path from version \"{0}\" to "
    + "version \"{1}\""
    IL_00ae:  ldloc.s    V_9
    IL_00b0:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_00b5:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_00ba:  throw

    IL_00bb:  nop
    IL_00bc:  ldloc.s    V_5
    IL_00be:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class [Survivalcraft]Game.VersionConverter>::GetEnumerator()
    IL_00c3:  stloc.s    V_10
    .try
    {
      IL_00c5:  br.s       IL_0109

      IL_00c7:  ldloca.s   V_10
      IL_00c9:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class [Survivalcraft]Game.VersionConverter>::get_Current()
      IL_00ce:  stloc.s    V_11
      IL_00d0:  nop
      IL_00d1:  ldc.i4.2
      IL_00d2:  newarr     [System.Runtime]System.Object
      IL_00d7:  dup
      IL_00d8:  ldc.i4.0
      IL_00d9:  ldloc.s    V_11
      IL_00db:  callvirt   instance string [Survivalcraft]Game.VersionConverter::get_SourceVersion()
      IL_00e0:  stelem.ref
      IL_00e1:  dup
      IL_00e2:  ldc.i4.1
      IL_00e3:  ldloc.s    V_11
      IL_00e5:  callvirt   instance string [Survivalcraft]Game.VersionConverter::get_TargetVersion()
      IL_00ea:  stelem.ref
      IL_00eb:  stloc.s    V_12
      IL_00ed:  ldstr      "Upgrading world version \"{0}\" to \"{1}\"."
      IL_00f2:  ldloc.s    V_12
      IL_00f4:  call       string [System.Runtime]System.String::Format(string,
                                                                        object[])
      IL_00f9:  call       void [Engine]Engine.Log::Information(string)
      IL_00fe:  nop
      IL_00ff:  ldloc.s    V_11
      IL_0101:  ldarg.0
      IL_0102:  callvirt   instance void [Survivalcraft]Game.VersionConverter::ConvertWorld(string)
      IL_0107:  nop
      IL_0108:  nop
      IL_0109:  ldloca.s   V_10
      IL_010b:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class [Survivalcraft]Game.VersionConverter>::MoveNext()
      IL_0110:  brtrue.s   IL_00c7

      IL_0112:  leave.s    IL_0123

    }  // end .try
    finally
    {
      IL_0114:  ldloca.s   V_10
      IL_0116:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class [Survivalcraft]Game.VersionConverter>
      IL_011c:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0121:  nop
      IL_0122:  endfinally
    }  // end handler
    IL_0123:  ldarg.0
    IL_0124:  call       class [Survivalcraft]Game.WorldInfo [Survivalcraft]Game.WorldsManager::GetWorldInfo(string)
    IL_0129:  stloc.s    V_6
    IL_012b:  ldloc.s    V_6
    IL_012d:  ldfld      string [Survivalcraft]Game.WorldInfo::SerializationVersion
    IL_0132:  call       string Game.VersionsManager::get_SerializationVersion()
    IL_0137:  call       bool [System.Runtime]System.String::op_Inequality(string,
                                                                           string)
    IL_013c:  stloc.s    V_13
    IL_013e:  ldloc.s    V_13
    IL_0140:  brfalse.s  IL_016f

    IL_0142:  nop
    IL_0143:  ldc.i4.2
    IL_0144:  newarr     [System.Runtime]System.Object
    IL_0149:  dup
    IL_014a:  ldc.i4.0
    IL_014b:  call       string Game.VersionsManager::get_SerializationVersion()
    IL_0150:  stelem.ref
    IL_0151:  dup
    IL_0152:  ldc.i4.1
    IL_0153:  ldloc.s    V_6
    IL_0155:  ldfld      string [Survivalcraft]Game.WorldInfo::SerializationVersion
    IL_015a:  stelem.ref
    IL_015b:  stloc.s    V_14
    IL_015d:  ldstr      "Upgrade produced invalid project version. Expected"
    + " \"{0}\", found \"{1}\"."
    IL_0162:  ldloc.s    V_14
    IL_0164:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0169:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_016e:  throw

    IL_016f:  ldc.i4.2
    IL_0170:  newarr     [Survivalcraft]Game.AnalyticsParameter
    IL_0175:  dup
    IL_0176:  ldc.i4.0
    IL_0177:  ldstr      "SourceVersion"
    IL_017c:  ldloc.0
    IL_017d:  ldfld      string [Survivalcraft]Game.WorldInfo::SerializationVersion
    IL_0182:  newobj     instance void [Survivalcraft]Game.AnalyticsParameter::.ctor(string,
                                                                                     string)
    IL_0187:  stelem     [Survivalcraft]Game.AnalyticsParameter
    IL_018c:  dup
    IL_018d:  ldc.i4.1
    IL_018e:  ldstr      "TargetVersion"
    IL_0193:  call       string Game.VersionsManager::get_SerializationVersion()
    IL_0198:  newobj     instance void [Survivalcraft]Game.AnalyticsParameter::.ctor(string,
                                                                                     string)
    IL_019d:  stelem     [Survivalcraft]Game.AnalyticsParameter
    IL_01a2:  stloc.s    V_7
    IL_01a4:  ldstr      "[VersionConverter] Upgrade world"
    IL_01a9:  ldloc.s    V_7
    IL_01ab:  call       void [Survivalcraft]Game.AnalyticsManager::LogEvent(string,
                                                                             valuetype [Survivalcraft]Game.AnalyticsParameter[])
    IL_01b0:  nop
    IL_01b1:  nop
    IL_01b2:  ret
  } // end of method VersionsManager::UpgradeWorld

  .method public hidebysig specialname static 
          valuetype [Survivalcraft]Game.BuildConfiguration 
          get_BuildConfiguration() cil managed
  {
    // 代码大小       11 (0xb)
    .maxstack  1
    .locals init (valuetype [Survivalcraft]Game.BuildConfiguration V_0)
    IL_0000:  nop
    IL_0001:  call       valuetype [Survivalcraft]Game.BuildConfiguration GScience.ModAPI.Info::get_BuildConfiguration()
    IL_0006:  stloc.0
    IL_0007:  br.s       IL_0009

    IL_0009:  ldloc.0
    IL_000a:  ret
  } // end of method VersionsManager::get_BuildConfiguration

  .method public hidebysig specialname static 
          valuetype [Survivalcraft]Game.Platform 
          get_Platform() cil managed
  {
    // 代码大小       11 (0xb)
    .maxstack  1
    .locals init (valuetype [Survivalcraft]Game.Platform V_0)
    IL_0000:  nop
    IL_0001:  call       valuetype [Survivalcraft]Game.Platform GScience.ModAPI.Info::get_Platform()
    IL_0006:  stloc.0
    IL_0007:  br.s       IL_0009

    IL_0009:  ldloc.0
    IL_000a:  ret
  } // end of method VersionsManager::get_Platform

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

  .property valuetype [Survivalcraft]Game.BuildConfiguration
          BuildConfiguration()
  {
    .get valuetype [Survivalcraft]Game.BuildConfiguration Game.VersionsManager::get_BuildConfiguration()
  } // end of property VersionsManager::BuildConfiguration
  .property valuetype [Survivalcraft]Game.Platform
          Platform()
  {
    .get valuetype [Survivalcraft]Game.Platform Game.VersionsManager::get_Platform()
  } // end of property VersionsManager::Platform
  .property string LastLaunchedVersion()
  {
    .get string Game.VersionsManager::get_LastLaunchedVersion()
    .set void Game.VersionsManager::set_LastLaunchedVersion(string)
  } // end of property VersionsManager::LastLaunchedVersion
  .property string SerializationVersion()
  {
    .get string Game.VersionsManager::get_SerializationVersion()
    .set void Game.VersionsManager::set_SerializationVersion(string)
  } // end of property VersionsManager::SerializationVersion
  .property string Version()
  {
    .get string Game.VersionsManager::get_Version()
    .set void Game.VersionsManager::set_Version(string)
  } // end of property VersionsManager::Version
} // end of class Game.VersionsManager