.class public abstract auto ansi sealed beforefieldinit Game.WorldsManager
       extends [System.Runtime]System.Object
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.WorldsManager/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`2<string,bool> '<>9__18_0'
    .field public static class [System.Runtime]System.Func`2<string,bool> '<>9__19_0'
    .field public static class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> '<>9__28_0'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.WorldsManager/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.WorldsManager/'<>c' Game.WorldsManager/'<>c'::'<>9'
      IL_000a:  ret
    } // end of method '<>c'::.cctor

    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c'::.ctor

    .method assembly hidebysig instance bool 
            '<TakeWorldSnapshot>b__18_0'(string fn) cil managed
    {
      // 代码大小       22 (0x16)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  call       string [System.Runtime.Extensions]System.IO.Path::GetExtension(string)
      IL_0006:  callvirt   instance string [System.Runtime]System.String::ToLower()
      IL_000b:  ldstr      ".snapshot"
      IL_0010:  call       bool [System.Runtime]System.String::op_Inequality(string,
                                                                             string)
      IL_0015:  ret
    } // end of method '<>c'::'<TakeWorldSnapshot>b__18_0'

    .method assembly hidebysig instance bool 
            '<RestoreWorldFromSnapshot>b__19_0'(string fn) cil managed
    {
      // 代码大小       22 (0x16)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  call       string [Engine]Engine.Storage::GetExtension(string)
      IL_0006:  callvirt   instance string [System.Runtime]System.String::ToLower()
      IL_000b:  ldstr      ".snapshot"
      IL_0010:  call       bool [System.Runtime]System.String::op_Inequality(string,
                                                                             string)
      IL_0015:  ret
    } // end of method '<>c'::'<RestoreWorldFromSnapshot>b__19_0'

    .method assembly hidebysig instance bool 
            '<GetGameInfoNode>b__28_0'(class [System.Xml.XDocument]System.Xml.Linq.XElement n) cil managed
    {
      // 代码大小       27 (0x1b)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldstr      "Name"
      IL_0006:  ldsfld     string [System.Runtime]System.String::Empty
      IL_000b:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<string>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                              string,
                                                                                              !!0)
      IL_0010:  ldstr      "GameInfo"
      IL_0015:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_001a:  ret
    } // end of method '<>c'::'<GetGameInfoNode>b__28_0'

  } // end of class '<>c'

  .field private static class [System.Collections]System.Collections.Generic.List`1<class Game.WorldInfo> m_worldInfos
  .field private static valuetype [Engine]Engine.ReadOnlyList`1<string> m_newWorldNames
  .field private static string WorldsDirectoryName
  .field public static literal int32 MaxAllowedWorlds = int32(0x00000014)
  .field private static class [System.Runtime]System.Action`1<string> WorldDeleted
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname static 
          void  add_WorldDeleted(class [System.Runtime]System.Action`1<string> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       39 (0x27)
    .maxstack  3
    .locals init (class [System.Runtime]System.Action`1<string> V_0,
             class [System.Runtime]System.Action`1<string> V_1,
             class [System.Runtime]System.Action`1<string> V_2)
    IL_0000:  ldsfld     class [System.Runtime]System.Action`1<string> Game.WorldsManager::WorldDeleted
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  stloc.1
    IL_0008:  ldloc.1
    IL_0009:  ldarg.0
    IL_000a:  call       class [System.Runtime]System.Delegate [System.Runtime]System.Delegate::Combine(class [System.Runtime]System.Delegate,
                                                                                                        class [System.Runtime]System.Delegate)
    IL_000f:  castclass  class [System.Runtime]System.Action`1<string>
    IL_0014:  stloc.2
    IL_0015:  ldsflda    class [System.Runtime]System.Action`1<string> Game.WorldsManager::WorldDeleted
    IL_001a:  ldloc.2
    IL_001b:  ldloc.1
    IL_001c:  call       !!0 [System.Threading]System.Threading.Interlocked::CompareExchange<class [System.Runtime]System.Action`1<string>>(!!0&,
                                                                                                                                            !!0,
                                                                                                                                            !!0)
    IL_0021:  stloc.0
    IL_0022:  ldloc.0
    IL_0023:  ldloc.1
    IL_0024:  bne.un.s   IL_0006

    IL_0026:  ret
  } // end of method WorldsManager::add_WorldDeleted

  .method public hidebysig specialname static 
          void  remove_WorldDeleted(class [System.Runtime]System.Action`1<string> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       39 (0x27)
    .maxstack  3
    .locals init (class [System.Runtime]System.Action`1<string> V_0,
             class [System.Runtime]System.Action`1<string> V_1,
             class [System.Runtime]System.Action`1<string> V_2)
    IL_0000:  ldsfld     class [System.Runtime]System.Action`1<string> Game.WorldsManager::WorldDeleted
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  stloc.1
    IL_0008:  ldloc.1
    IL_0009:  ldarg.0
    IL_000a:  call       class [System.Runtime]System.Delegate [System.Runtime]System.Delegate::Remove(class [System.Runtime]System.Delegate,
                                                                                                       class [System.Runtime]System.Delegate)
    IL_000f:  castclass  class [System.Runtime]System.Action`1<string>
    IL_0014:  stloc.2
    IL_0015:  ldsflda    class [System.Runtime]System.Action`1<string> Game.WorldsManager::WorldDeleted
    IL_001a:  ldloc.2
    IL_001b:  ldloc.1
    IL_001c:  call       !!0 [System.Threading]System.Threading.Interlocked::CompareExchange<class [System.Runtime]System.Action`1<string>>(!!0&,
                                                                                                                                            !!0,
                                                                                                                                            !!0)
    IL_0021:  stloc.0
    IL_0022:  ldloc.0
    IL_0023:  ldloc.1
    IL_0024:  bne.un.s   IL_0006

    IL_0026:  ret
  } // end of method WorldsManager::remove_WorldDeleted

  .method public hidebysig specialname static 
          valuetype [Engine]Engine.ReadOnlyList`1<string> 
          get_NewWorldNames() cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     valuetype [Engine]Engine.ReadOnlyList`1<string> Game.WorldsManager::m_newWorldNames
    IL_0005:  ret
  } // end of method WorldsManager::get_NewWorldNames

  .method public hidebysig specialname static 
          valuetype [Engine]Engine.ReadOnlyList`1<class Game.WorldInfo> 
          get_WorldInfos() cil managed
  {
    // 代码大小       11 (0xb)
    .maxstack  8
    IL_0000:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.WorldInfo> Game.WorldsManager::m_worldInfos
    IL_0005:  newobj     instance void valuetype [Engine]Engine.ReadOnlyList`1<class Game.WorldInfo>::.ctor(class [System.Collections]System.Collections.Generic.List`1<!0>)
    IL_000a:  ret
  } // end of method WorldsManager::get_WorldInfos

  .method public hidebysig static void  Initialize() cil managed
  {
    // 代码大小       60 (0x3c)
    .maxstack  5
    .locals init (string V_0)
    IL_0000:  ldsfld     string Game.WorldsManager::WorldsDirectoryName
    IL_0005:  call       void [Engine]Engine.Storage::CreateDirectory(string)
    IL_000a:  ldstr      "NewWorldNames"
    IL_000f:  call       !!0 Game.ContentManager::Get<string>(string)
    IL_0014:  stloc.0
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.2
    IL_0017:  newarr     [System.Runtime]System.Char
    IL_001c:  dup
    IL_001d:  ldc.i4.0
    IL_001e:  ldc.i4.s   10
    IL_0020:  stelem.i2
    IL_0021:  dup
    IL_0022:  ldc.i4.1
    IL_0023:  ldc.i4.s   13
    IL_0025:  stelem.i2
    IL_0026:  ldc.i4.1
    IL_0027:  callvirt   instance string[] [System.Runtime]System.String::Split(char[],
                                                                                valuetype [System.Runtime]System.StringSplitOptions)
    IL_002c:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<string>::.ctor(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!0>)
    IL_0031:  newobj     instance void valuetype [Engine]Engine.ReadOnlyList`1<string>::.ctor(class [System.Collections]System.Collections.Generic.List`1<!0>)
    IL_0036:  stsfld     valuetype [Engine]Engine.ReadOnlyList`1<string> Game.WorldsManager::m_newWorldNames
    IL_003b:  ret
  } // end of method WorldsManager::Initialize

  .method public hidebysig static string 
          ImportWorld(class [System.IO]System.IO.Stream sourceStream) cil managed
  {
    // 代码大小       146 (0x92)
    .maxstack  5
    .locals init (string V_0,
             valuetype [Engine]Engine.ReadOnlyList`1<class Game.WorldInfo> V_1)
    IL_0000:  call       bool Game.MarketplaceManager::get_IsTrialMode()
    IL_0005:  brfalse.s  IL_0012

    IL_0007:  ldstr      "Cannot import worlds in trial mode."
    IL_000c:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0011:  throw

    IL_0012:  call       valuetype [Engine]Engine.ReadOnlyList`1<class Game.WorldInfo> Game.WorldsManager::get_WorldInfos()
    IL_0017:  stloc.1
    IL_0018:  ldloca.s   V_1
    IL_001a:  call       instance int32 valuetype [Engine]Engine.ReadOnlyList`1<class Game.WorldInfo>::get_Count()
    IL_001f:  ldc.i4.s   20
    IL_0021:  blt.s      IL_0043

    IL_0023:  ldstr      "Too many worlds on device, maximum allowed is {0}."
    + " Delete some to free up space."
    IL_0028:  ldc.i4.1
    IL_0029:  newarr     [System.Runtime]System.Object
    IL_002e:  dup
    IL_002f:  ldc.i4.0
    IL_0030:  ldc.i4.s   20
    IL_0032:  box        [System.Runtime]System.Int32
    IL_0037:  stelem.ref
    IL_0038:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_003d:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0042:  throw

    IL_0043:  call       string Game.WorldsManager::GetUnusedWorldDirectoryName()
    IL_0048:  stloc.0
    IL_0049:  ldloc.0
    IL_004a:  call       void [Engine]Engine.Storage::CreateDirectory(string)
    IL_004f:  ldloc.0
    IL_0050:  ldarg.0
    IL_0051:  ldc.i4.1
    IL_0052:  call       void Game.WorldsManager::UnpackWorld(string,
                                                              class [System.IO]System.IO.Stream,
                                                              bool)
    IL_0057:  ldc.i4.2
    IL_0058:  newarr     [System.Runtime]System.String
    IL_005d:  dup
    IL_005e:  ldc.i4.0
    IL_005f:  ldloc.0
    IL_0060:  stelem.ref
    IL_0061:  dup
    IL_0062:  ldc.i4.1
    IL_0063:  ldstr      "Project.xml"
    IL_0068:  stelem.ref
    IL_0069:  call       string [Engine]Engine.Storage::CombinePaths(string[])
    IL_006e:  ldstr      "Project"
    IL_0073:  call       bool Game.WorldsManager::TestXmlFile(string,
                                                              string)
    IL_0078:  brtrue.s   IL_0090

    .try
    {
      IL_007a:  ldloc.0
      IL_007b:  call       void Game.WorldsManager::DeleteWorld(string)
      IL_0080:  leave.s    IL_0085

    }  // end .try
    catch [System.Runtime]System.Object 
    {
      IL_0082:  pop
      IL_0083:  leave.s    IL_0085

    }  // end handler
    IL_0085:  ldstr      "Cannot import world because it does not contain va"
    + "lid world data."
    IL_008a:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_008f:  throw

    IL_0090:  ldloc.0
    IL_0091:  ret
  } // end of method WorldsManager::ImportWorld

  .method public hidebysig static void  ExportWorld(string directoryName,
                                                    class [System.IO]System.IO.Stream targetStream) cil managed
  {
    // 代码大小       10 (0xa)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldnull
    IL_0003:  ldc.i4.1
    IL_0004:  call       void Game.WorldsManager::PackWorld(string,
                                                            class [System.IO]System.IO.Stream,
                                                            class [System.Runtime]System.Func`2<string,bool>,
                                                            bool)
    IL_0009:  ret
  } // end of method WorldsManager::ExportWorld

  .method public hidebysig static void  DeleteWorld(string directoryName) cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       bool [Engine]Engine.Storage::DirectoryExists(string)
    IL_0006:  brfalse.s  IL_0015

    IL_0008:  ldarg.0
    IL_0009:  ldnull
    IL_000a:  call       void Game.WorldsManager::DeleteWorldContents(string,
                                                                      class [System.Runtime]System.Func`2<string,bool>)
    IL_000f:  ldarg.0
    IL_0010:  call       void [Engine]Engine.Storage::DeleteDirectory(string)
    IL_0015:  ldsfld     class [System.Runtime]System.Action`1<string> Game.WorldsManager::WorldDeleted
    IL_001a:  dup
    IL_001b:  brtrue.s   IL_001f

    IL_001d:  pop
    IL_001e:  ret

    IL_001f:  ldarg.0
    IL_0020:  callvirt   instance void class [System.Runtime]System.Action`1<string>::Invoke(!0)
    IL_0025:  ret
  } // end of method WorldsManager::DeleteWorld

  .method public hidebysig static void  RepairWorldIfNeeded(string directoryName) cil managed
  {
    // 代码大小       357 (0x165)
    .maxstack  5
    .locals init (string V_0,
             string V_1,
             string V_2,
             class [System.Xml.XDocument]System.Xml.Linq.XElement V_3,
             class [System.IO]System.IO.Stream V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7,
             valuetype [Engine]Engine.Vector3 V_8,
             class [System.IO]System.IO.Stream V_9)
    .try
    {
      IL_0000:  ldc.i4.2
      IL_0001:  newarr     [System.Runtime]System.String
      IL_0006:  dup
      IL_0007:  ldc.i4.0
      IL_0008:  ldarg.0
      IL_0009:  stelem.ref
      IL_000a:  dup
      IL_000b:  ldc.i4.1
      IL_000c:  ldstr      "Project.xml"
      IL_0011:  stelem.ref
      IL_0012:  call       string [Engine]Engine.Storage::CombinePaths(string[])
      IL_0017:  stloc.0
      IL_0018:  ldloc.0
      IL_0019:  ldstr      "Project"
      IL_001e:  call       bool Game.WorldsManager::TestXmlFile(string,
                                                                string)
      IL_0023:  brtrue     IL_0156

      IL_0028:  ldstr      "Project file at \"{0}\" is corrupt or nonexistent. W"
      + "ill try copying data from the backup file. If that fails, will try maki"
      + "ng a recovery project file."
      IL_002d:  ldc.i4.1
      IL_002e:  newarr     [System.Runtime]System.Object
      IL_0033:  dup
      IL_0034:  ldc.i4.0
      IL_0035:  ldloc.0
      IL_0036:  stelem.ref
      IL_0037:  call       string [System.Runtime]System.String::Format(string,
                                                                        object[])
      IL_003c:  call       void [Engine]Engine.Log::Warning(string)
      IL_0041:  ldc.i4.2
      IL_0042:  newarr     [System.Runtime]System.String
      IL_0047:  dup
      IL_0048:  ldc.i4.0
      IL_0049:  ldarg.0
      IL_004a:  stelem.ref
      IL_004b:  dup
      IL_004c:  ldc.i4.1
      IL_004d:  ldstr      "Project.bak"
      IL_0052:  stelem.ref
      IL_0053:  call       string [Engine]Engine.Storage::CombinePaths(string[])
      IL_0058:  stloc.1
      IL_0059:  ldloc.1
      IL_005a:  ldstr      "Project"
      IL_005f:  call       bool Game.WorldsManager::TestXmlFile(string,
                                                                string)
      IL_0064:  brfalse.s  IL_0072

      IL_0066:  ldloc.1
      IL_0067:  ldloc.0
      IL_0068:  call       void [Engine]Engine.Storage::CopyFile(string,
                                                                 string)
      IL_006d:  br         IL_0156

      IL_0072:  ldc.i4.2
      IL_0073:  newarr     [System.Runtime]System.String
      IL_0078:  dup
      IL_0079:  ldc.i4.0
      IL_007a:  ldarg.0
      IL_007b:  stelem.ref
      IL_007c:  dup
      IL_007d:  ldc.i4.1
      IL_007e:  ldstr      "Chunks.dat"
      IL_0083:  stelem.ref
      IL_0084:  call       string [Engine]Engine.Storage::CombinePaths(string[])
      IL_0089:  stloc.2
      IL_008a:  ldloc.2
      IL_008b:  call       bool [Engine]Engine.Storage::FileExists(string)
      IL_0090:  brfalse    IL_014b

      IL_0095:  ldstr      "RecoveryProject"
      IL_009a:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
      IL_009f:  stloc.3
      IL_00a0:  ldloc.2
      IL_00a1:  ldc.i4.0
      IL_00a2:  call       class [System.IO]System.IO.Stream [Engine]Engine.Storage::OpenFile(string,
                                                                                              valuetype [Engine]Engine.OpenFileMode)
      IL_00a7:  stloc.s    V_4
      .try
      {
        IL_00a9:  ldloc.s    V_4
        IL_00ab:  ldloca.s   V_5
        IL_00ad:  ldloca.s   V_6
        IL_00af:  ldloca.s   V_7
        IL_00b1:  call       void Game.TerrainSerializer14::ReadTOCEntry(class [System.IO]System.IO.Stream,
                                                                         int32&,
                                                                         int32&,
                                                                         int32&)
        IL_00b6:  ldloca.s   V_8
        IL_00b8:  ldc.i4.s   16
        IL_00ba:  ldloc.s    V_5
        IL_00bc:  mul
        IL_00bd:  conv.r4
        IL_00be:  ldc.r4     127.
        IL_00c3:  ldc.i4.s   16
        IL_00c5:  ldloc.s    V_6
        IL_00c7:  mul
        IL_00c8:  conv.r4
        IL_00c9:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                         float32,
                                                                         float32)
        IL_00ce:  ldloc.3
        IL_00cf:  ldstr      "Subsystems"
        IL_00d4:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
        IL_00d9:  callvirt   instance class [System.Xml.XDocument]System.Xml.Linq.XElement [System.Xml.XDocument]System.Xml.Linq.XContainer::Element(class [System.Xml.XDocument]System.Xml.Linq.XName)
        IL_00de:  ldstr      "Values"
        IL_00e3:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
        IL_00e8:  callvirt   instance class [System.Xml.XDocument]System.Xml.Linq.XElement [System.Xml.XDocument]System.Xml.Linq.XContainer::Element(class [System.Xml.XDocument]System.Xml.Linq.XName)
        IL_00ed:  ldstr      "Value"
        IL_00f2:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
        IL_00f7:  callvirt   instance class [System.Xml.XDocument]System.Xml.Linq.XElement [System.Xml.XDocument]System.Xml.Linq.XContainer::Element(class [System.Xml.XDocument]System.Xml.Linq.XName)
        IL_00fc:  ldstr      "Value"
        IL_0101:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
        IL_0106:  callvirt   instance class [System.Xml.XDocument]System.Xml.Linq.XAttribute [System.Xml.XDocument]System.Xml.Linq.XElement::Attribute(class [System.Xml.XDocument]System.Xml.Linq.XName)
        IL_010b:  ldloc.s    V_8
        IL_010d:  box        [Engine]Engine.Vector3
        IL_0112:  call       string [Engine]Engine.Serialization.HumanReadableConverter::ConvertToString(object)
        IL_0117:  callvirt   instance void [System.Xml.XDocument]System.Xml.Linq.XAttribute::SetValue(object)
        IL_011c:  leave.s    IL_012a

      }  // end .try
      finally
      {
        IL_011e:  ldloc.s    V_4
        IL_0120:  brfalse.s  IL_0129

        IL_0122:  ldloc.s    V_4
        IL_0124:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_0129:  endfinally
      }  // end handler
      IL_012a:  ldloc.0
      IL_012b:  ldc.i4.2
      IL_012c:  call       class [System.IO]System.IO.Stream [Engine]Engine.Storage::OpenFile(string,
                                                                                              valuetype [Engine]Engine.OpenFileMode)
      IL_0131:  stloc.s    V_9
      .try
      {
        IL_0133:  ldloc.3
        IL_0134:  ldloc.s    V_9
        IL_0136:  ldnull
        IL_0137:  ldc.i4.1
        IL_0138:  call       void [EntitySystem]XmlUtilities.XmlUtils::SaveXmlToStream(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                       class [System.IO]System.IO.Stream,
                                                                                       class [System.Text.Encoding]System.Text.Encoding,
                                                                                       bool)
        IL_013d:  leave.s    IL_0156

      }  // end .try
      finally
      {
        IL_013f:  ldloc.s    V_9
        IL_0141:  brfalse.s  IL_014a

        IL_0143:  ldloc.s    V_9
        IL_0145:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_014a:  endfinally
      }  // end handler
      IL_014b:  ldstr      "Recovery project file could not be generated becau"
      + "se chunks file does not exist."
      IL_0150:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
      IL_0155:  throw

      IL_0156:  leave.s    IL_0164

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_0158:  pop
      IL_0159:  ldstr      "The world files are corrupt and could not be repai"
      + "red."
      IL_015e:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
      IL_0163:  throw

    }  // end handler
    IL_0164:  ret
  } // end of method WorldsManager::RepairWorldIfNeeded

  .method public hidebysig static void  MakeQuickWorldBackup(string directoryName) cil managed
  {
    // 代码大小       64 (0x40)
    .maxstack  4
    .locals init (string V_0,
             string V_1)
    IL_0000:  ldc.i4.2
    IL_0001:  newarr     [System.Runtime]System.String
    IL_0006:  dup
    IL_0007:  ldc.i4.0
    IL_0008:  ldarg.0
    IL_0009:  stelem.ref
    IL_000a:  dup
    IL_000b:  ldc.i4.1
    IL_000c:  ldstr      "Project.xml"
    IL_0011:  stelem.ref
    IL_0012:  call       string [Engine]Engine.Storage::CombinePaths(string[])
    IL_0017:  stloc.0
    IL_0018:  ldloc.0
    IL_0019:  call       bool [Engine]Engine.Storage::FileExists(string)
    IL_001e:  brfalse.s  IL_003f

    IL_0020:  ldc.i4.2
    IL_0021:  newarr     [System.Runtime]System.String
    IL_0026:  dup
    IL_0027:  ldc.i4.0
    IL_0028:  ldarg.0
    IL_0029:  stelem.ref
    IL_002a:  dup
    IL_002b:  ldc.i4.1
    IL_002c:  ldstr      "Project.bak"
    IL_0031:  stelem.ref
    IL_0032:  call       string [Engine]Engine.Storage::CombinePaths(string[])
    IL_0037:  stloc.1
    IL_0038:  ldloc.0
    IL_0039:  ldloc.1
    IL_003a:  call       void [Engine]Engine.Storage::CopyFile(string,
                                                               string)
    IL_003f:  ret
  } // end of method WorldsManager::MakeQuickWorldBackup

  .method public hidebysig static bool  SnapshotExists(string directoryName,
                                                       string snapshotName) cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       string Game.WorldsManager::MakeSnapshotFilename(string,
                                                                         string)
    IL_0007:  call       bool [Engine]Engine.Storage::FileExists(string)
    IL_000c:  ret
  } // end of method WorldsManager::SnapshotExists

  .method public hidebysig static void  TakeWorldSnapshot(string directoryName,
                                                          string snapshotName) cil managed
  {
    // 代码大小       66 (0x42)
    .maxstack  4
    .locals init (class [System.IO]System.IO.Stream V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       string Game.WorldsManager::MakeSnapshotFilename(string,
                                                                         string)
    IL_0007:  ldc.i4.2
    IL_0008:  call       class [System.IO]System.IO.Stream [Engine]Engine.Storage::OpenFile(string,
                                                                                            valuetype [Engine]Engine.OpenFileMode)
    IL_000d:  stloc.0
    .try
    {
      IL_000e:  ldarg.0
      IL_000f:  ldloc.0
      IL_0010:  ldsfld     class [System.Runtime]System.Func`2<string,bool> Game.WorldsManager/'<>c'::'<>9__18_0'
      IL_0015:  dup
      IL_0016:  brtrue.s   IL_002f

      IL_0018:  pop
      IL_0019:  ldsfld     class Game.WorldsManager/'<>c' Game.WorldsManager/'<>c'::'<>9'
      IL_001e:  ldftn      instance bool Game.WorldsManager/'<>c'::'<TakeWorldSnapshot>b__18_0'(string)
      IL_0024:  newobj     instance void class [System.Runtime]System.Func`2<string,bool>::.ctor(object,
                                                                                                 native int)
      IL_0029:  dup
      IL_002a:  stsfld     class [System.Runtime]System.Func`2<string,bool> Game.WorldsManager/'<>c'::'<>9__18_0'
      IL_002f:  ldc.i4.0
      IL_0030:  call       void Game.WorldsManager::PackWorld(string,
                                                              class [System.IO]System.IO.Stream,
                                                              class [System.Runtime]System.Func`2<string,bool>,
                                                              bool)
      IL_0035:  leave.s    IL_0041

    }  // end .try
    finally
    {
      IL_0037:  ldloc.0
      IL_0038:  brfalse.s  IL_0040

      IL_003a:  ldloc.0
      IL_003b:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0040:  endfinally
    }  // end handler
    IL_0041:  ret
  } // end of method WorldsManager::TakeWorldSnapshot

  .method public hidebysig static void  RestoreWorldFromSnapshot(string directoryName,
                                                                 string snapshotName) cil managed
  {
    // 代码大小       81 (0x51)
    .maxstack  3
    .locals init (class [System.IO]System.IO.Stream V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       bool Game.WorldsManager::SnapshotExists(string,
                                                                 string)
    IL_0007:  brfalse.s  IL_0050

    IL_0009:  ldarg.0
    IL_000a:  ldsfld     class [System.Runtime]System.Func`2<string,bool> Game.WorldsManager/'<>c'::'<>9__19_0'
    IL_000f:  dup
    IL_0010:  brtrue.s   IL_0029

    IL_0012:  pop
    IL_0013:  ldsfld     class Game.WorldsManager/'<>c' Game.WorldsManager/'<>c'::'<>9'
    IL_0018:  ldftn      instance bool Game.WorldsManager/'<>c'::'<RestoreWorldFromSnapshot>b__19_0'(string)
    IL_001e:  newobj     instance void class [System.Runtime]System.Func`2<string,bool>::.ctor(object,
                                                                                               native int)
    IL_0023:  dup
    IL_0024:  stsfld     class [System.Runtime]System.Func`2<string,bool> Game.WorldsManager/'<>c'::'<>9__19_0'
    IL_0029:  call       void Game.WorldsManager::DeleteWorldContents(string,
                                                                      class [System.Runtime]System.Func`2<string,bool>)
    IL_002e:  ldarg.0
    IL_002f:  ldarg.1
    IL_0030:  call       string Game.WorldsManager::MakeSnapshotFilename(string,
                                                                         string)
    IL_0035:  ldc.i4.0
    IL_0036:  call       class [System.IO]System.IO.Stream [Engine]Engine.Storage::OpenFile(string,
                                                                                            valuetype [Engine]Engine.OpenFileMode)
    IL_003b:  stloc.0
    .try
    {
      IL_003c:  ldarg.0
      IL_003d:  ldloc.0
      IL_003e:  ldc.i4.0
      IL_003f:  call       void Game.WorldsManager::UnpackWorld(string,
                                                                class [System.IO]System.IO.Stream,
                                                                bool)
      IL_0044:  leave.s    IL_0050

    }  // end .try
    finally
    {
      IL_0046:  ldloc.0
      IL_0047:  brfalse.s  IL_004f

      IL_0049:  ldloc.0
      IL_004a:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_004f:  endfinally
    }  // end handler
    IL_0050:  ret
  } // end of method WorldsManager::RestoreWorldFromSnapshot

  .method public hidebysig static void  DeleteWorldSnapshot(string directoryName,
                                                            string snapshotName) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  2
    .locals init (string V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       string Game.WorldsManager::MakeSnapshotFilename(string,
                                                                         string)
    IL_0007:  stloc.0
    IL_0008:  ldloc.0
    IL_0009:  call       bool [Engine]Engine.Storage::FileExists(string)
    IL_000e:  brfalse.s  IL_0016

    IL_0010:  ldloc.0
    IL_0011:  call       void [Engine]Engine.Storage::DeleteFile(string)
    IL_0016:  ret
  } // end of method WorldsManager::DeleteWorldSnapshot

  .method public hidebysig static void  UpdateWorldsList() cil managed
  {
    // 代码大小       99 (0x63)
    .maxstack  4
    .locals init (class [System.Runtime]System.Collections.Generic.IEnumerator`1<string> V_0,
             string V_1,
             class Game.WorldInfo V_2)
    IL_0000:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.WorldInfo> Game.WorldsManager::m_worldInfos
    IL_0005:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.WorldInfo>::Clear()
    IL_000a:  ldsfld     string Game.WorldsManager::WorldsDirectoryName
    IL_000f:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<string> [Engine]Engine.Storage::ListDirectoryNames(string)
    IL_0014:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<string>::GetEnumerator()
    IL_0019:  stloc.0
    .try
    {
      IL_001a:  br.s       IL_004e

      IL_001c:  ldloc.0
      IL_001d:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<string>::get_Current()
      IL_0022:  stloc.1
      IL_0023:  ldc.i4.2
      IL_0024:  newarr     [System.Runtime]System.String
      IL_0029:  dup
      IL_002a:  ldc.i4.0
      IL_002b:  ldsfld     string Game.WorldsManager::WorldsDirectoryName
      IL_0030:  stelem.ref
      IL_0031:  dup
      IL_0032:  ldc.i4.1
      IL_0033:  ldloc.1
      IL_0034:  stelem.ref
      IL_0035:  call       string [Engine]Engine.Storage::CombinePaths(string[])
      IL_003a:  call       class Game.WorldInfo Game.WorldsManager::GetWorldInfo(string)
      IL_003f:  stloc.2
      IL_0040:  ldloc.2
      IL_0041:  brfalse.s  IL_004e

      IL_0043:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.WorldInfo> Game.WorldsManager::m_worldInfos
      IL_0048:  ldloc.2
      IL_0049:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.WorldInfo>::Add(!0)
      IL_004e:  ldloc.0
      IL_004f:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_0054:  brtrue.s   IL_001c

      IL_0056:  leave.s    IL_0062

    }  // end .try
    finally
    {
      IL_0058:  ldloc.0
      IL_0059:  brfalse.s  IL_0061

      IL_005b:  ldloc.0
      IL_005c:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0061:  endfinally
    }  // end handler
    IL_0062:  ret
  } // end of method WorldsManager::UpdateWorldsList

  .method public hidebysig static bool  ValidateWorldName(string name) cil managed
  {
    // 代码大小       108 (0x6c)
    .maxstack  3
    .locals init (string V_0,
             int32 V_1,
             char V_2)
    IL_0000:  ldarg.0
    IL_0001:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_0006:  brfalse.s  IL_0012

    IL_0008:  ldarg.0
    IL_0009:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_000e:  ldc.i4.s   14
    IL_0010:  ble.s      IL_0014

    IL_0012:  ldc.i4.0
    IL_0013:  ret

    IL_0014:  ldarg.0
    IL_0015:  ldc.i4.0
    IL_0016:  callvirt   instance char [System.Runtime]System.String::get_Chars(int32)
    IL_001b:  call       bool [System.Runtime]System.Char::IsLetterOrDigit(char)
    IL_0020:  brfalse.s  IL_0037

    IL_0022:  ldarg.0
    IL_0023:  ldarg.0
    IL_0024:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_0029:  ldc.i4.1
    IL_002a:  sub
    IL_002b:  callvirt   instance char [System.Runtime]System.String::get_Chars(int32)
    IL_0030:  call       bool [System.Runtime]System.Char::IsLetterOrDigit(char)
    IL_0035:  brtrue.s   IL_0039

    IL_0037:  ldc.i4.0
    IL_0038:  ret

    IL_0039:  ldarg.0
    IL_003a:  stloc.0
    IL_003b:  ldc.i4.0
    IL_003c:  stloc.1
    IL_003d:  br.s       IL_0061

    IL_003f:  ldloc.0
    IL_0040:  ldloc.1
    IL_0041:  callvirt   instance char [System.Runtime]System.String::get_Chars(int32)
    IL_0046:  stloc.2
    IL_0047:  ldloc.2
    IL_0048:  ldc.i4.s   127
    IL_004a:  ble.s      IL_004e

    IL_004c:  ldc.i4.0
    IL_004d:  ret

    IL_004e:  ldloc.2
    IL_004f:  call       bool [System.Runtime]System.Char::IsLetterOrDigit(char)
    IL_0054:  brtrue.s   IL_005d

    IL_0056:  ldloc.2
    IL_0057:  ldc.i4.s   32
    IL_0059:  beq.s      IL_005d

    IL_005b:  ldc.i4.0
    IL_005c:  ret

    IL_005d:  ldloc.1
    IL_005e:  ldc.i4.1
    IL_005f:  add
    IL_0060:  stloc.1
    IL_0061:  ldloc.1
    IL_0062:  ldloc.0
    IL_0063:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_0068:  blt.s      IL_003f

    IL_006a:  ldc.i4.1
    IL_006b:  ret
  } // end of method WorldsManager::ValidateWorldName

  .method public hidebysig static class Game.WorldInfo 
          GetWorldInfo(string directoryName) cil managed
  {
    // 代码大小       350 (0x15e)
    .maxstack  5
    .locals init (class Game.WorldInfo V_0,
             class [System.Collections]System.Collections.Generic.List`1<string> V_1,
             string V_2,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<string> V_3,
             string V_4,
             valuetype [System.Runtime]System.DateTime V_5,
             class [System.Runtime]System.Exception V_6,
             class [System.IO]System.IO.Stream V_7,
             class [System.Xml.XDocument]System.Xml.Linq.XElement V_8,
             class [System.Xml.XDocument]System.Xml.Linq.XElement V_9,
             class [EntitySystem]TemplatesDatabase.ValuesDictionary V_10,
             class [System.Runtime]System.Exception V_11)
    IL_0000:  newobj     instance void Game.WorldInfo::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.0
    IL_0008:  stfld      string Game.WorldInfo::DirectoryName
    IL_000d:  ldloc.0
    IL_000e:  ldsfld     valuetype [System.Runtime]System.DateTime [System.Runtime]System.DateTime::MinValue
    IL_0013:  stfld      valuetype [System.Runtime]System.DateTime Game.WorldInfo::LastSaveTime
    IL_0018:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<string>::.ctor()
    IL_001d:  stloc.1
    IL_001e:  ldarg.0
    IL_001f:  ldloc.1
    IL_0020:  ldnull
    IL_0021:  ldnull
    IL_0022:  call       void Game.WorldsManager::RecursiveEnumerateDirectory(string,
                                                                              class [System.Collections]System.Collections.Generic.List`1<string>,
                                                                              class [System.Collections]System.Collections.Generic.List`1<string>,
                                                                              class [System.Runtime]System.Func`2<string,bool>)
    IL_0027:  ldloc.1
    IL_0028:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<string>::get_Count()
    IL_002d:  ldc.i4.0
    IL_002e:  ble        IL_015c

    IL_0033:  ldloc.1
    IL_0034:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<string>::GetEnumerator()
    IL_0039:  stloc.3
    .try
    {
      IL_003a:  br.s       IL_00a1

      IL_003c:  ldloca.s   V_3
      IL_003e:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<string>::get_Current()
      IL_0043:  stloc.s    V_4
      IL_0045:  ldloc.s    V_4
      IL_0047:  call       valuetype [System.Runtime]System.DateTime [Engine]Engine.Storage::GetFileLastWriteTime(string)
      IL_004c:  stloc.s    V_5
      IL_004e:  ldloc.s    V_5
      IL_0050:  ldloc.0
      IL_0051:  ldfld      valuetype [System.Runtime]System.DateTime Game.WorldInfo::LastSaveTime
      IL_0056:  call       bool [System.Runtime]System.DateTime::op_GreaterThan(valuetype [System.Runtime]System.DateTime,
                                                                                valuetype [System.Runtime]System.DateTime)
      IL_005b:  brfalse.s  IL_0065

      IL_005d:  ldloc.0
      IL_005e:  ldloc.s    V_5
      IL_0060:  stfld      valuetype [System.Runtime]System.DateTime Game.WorldInfo::LastSaveTime
      IL_0065:  nop
      .try
      {
        IL_0066:  ldloc.0
        IL_0067:  dup
        IL_0068:  ldfld      int64 Game.WorldInfo::Size
        IL_006d:  ldloc.s    V_4
        IL_006f:  call       int64 [Engine]Engine.Storage::GetFileSize(string)
        IL_0074:  add
        IL_0075:  stfld      int64 Game.WorldInfo::Size
        IL_007a:  leave.s    IL_00a1

      }  // end .try
      catch [System.Runtime]System.Exception 
      {
        IL_007c:  stloc.s    V_6
        IL_007e:  ldstr      "Error getting size of file \"{0}\"."
        IL_0083:  ldc.i4.1
        IL_0084:  newarr     [System.Runtime]System.Object
        IL_0089:  dup
        IL_008a:  ldc.i4.0
        IL_008b:  ldloc.s    V_4
        IL_008d:  stelem.ref
        IL_008e:  call       string [System.Runtime]System.String::Format(string,
                                                                          object[])
        IL_0093:  ldloc.s    V_6
        IL_0095:  call       string Game.ExceptionManager::MakeFullErrorMessage(string,
                                                                                class [System.Runtime]System.Exception)
        IL_009a:  call       void [Engine]Engine.Log::Error(string)
        IL_009f:  leave.s    IL_00a1

      }  // end handler
      IL_00a1:  ldloca.s   V_3
      IL_00a3:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<string>::MoveNext()
      IL_00a8:  brtrue.s   IL_003c

      IL_00aa:  leave.s    IL_00ba

    }  // end .try
    finally
    {
      IL_00ac:  ldloca.s   V_3
      IL_00ae:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<string>
      IL_00b4:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00b9:  endfinally
    }  // end handler
    IL_00ba:  ldc.i4.2
    IL_00bb:  newarr     [System.Runtime]System.String
    IL_00c0:  dup
    IL_00c1:  ldc.i4.0
    IL_00c2:  ldarg.0
    IL_00c3:  stelem.ref
    IL_00c4:  dup
    IL_00c5:  ldc.i4.1
    IL_00c6:  ldstr      "Project.xml"
    IL_00cb:  stelem.ref
    IL_00cc:  call       string [Engine]Engine.Storage::CombinePaths(string[])
    IL_00d1:  stloc.2
    .try
    {
      IL_00d2:  ldloc.2
      IL_00d3:  call       bool [Engine]Engine.Storage::FileExists(string)
      IL_00d8:  brfalse.s  IL_0134

      IL_00da:  ldloc.2
      IL_00db:  ldc.i4.0
      IL_00dc:  call       class [System.IO]System.IO.Stream [Engine]Engine.Storage::OpenFile(string,
                                                                                              valuetype [Engine]Engine.OpenFileMode)
      IL_00e1:  stloc.s    V_7
      .try
      {
        IL_00e3:  ldloc.s    V_7
        IL_00e5:  ldnull
        IL_00e6:  ldc.i4.1
        IL_00e7:  call       class [System.Xml.XDocument]System.Xml.Linq.XElement [EntitySystem]XmlUtilities.XmlUtils::LoadXmlFromStream(class [System.IO]System.IO.Stream,
                                                                                                                                         class [System.Text.Encoding]System.Text.Encoding,
                                                                                                                                         bool)
        IL_00ec:  stloc.s    V_8
        IL_00ee:  ldloc.0
        IL_00ef:  ldloc.s    V_8
        IL_00f1:  ldstr      "Version"
        IL_00f6:  ldstr      "1.0"
        IL_00fb:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<string>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                                string,
                                                                                                !!0)
        IL_0100:  stfld      string Game.WorldInfo::SerializationVersion
        IL_0105:  ldloc.s    V_8
        IL_0107:  call       class [System.Xml.XDocument]System.Xml.Linq.XElement Game.WorldsManager::GetGameInfoNode(class [System.Xml.XDocument]System.Xml.Linq.XElement)
        IL_010c:  stloc.s    V_9
        IL_010e:  newobj     instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::.ctor()
        IL_0113:  stloc.s    V_10
        IL_0115:  ldloc.s    V_10
        IL_0117:  ldloc.s    V_9
        IL_0119:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::ApplyOverrides(class [System.Xml.XDocument]System.Xml.Linq.XElement)
        IL_011e:  ldloc.0
        IL_011f:  ldloc.s    V_10
        IL_0121:  callvirt   instance void Game.WorldInfo::Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary)
        IL_0126:  leave.s    IL_0134

      }  // end .try
      finally
      {
        IL_0128:  ldloc.s    V_7
        IL_012a:  brfalse.s  IL_0133

        IL_012c:  ldloc.s    V_7
        IL_012e:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_0133:  endfinally
      }  // end handler
      IL_0134:  leave.s    IL_015a

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_0136:  stloc.s    V_11
      IL_0138:  ldstr      "Error getting data from project file \"{0}\"."
      IL_013d:  ldc.i4.1
      IL_013e:  newarr     [System.Runtime]System.Object
      IL_0143:  dup
      IL_0144:  ldc.i4.0
      IL_0145:  ldloc.2
      IL_0146:  stelem.ref
      IL_0147:  call       string [System.Runtime]System.String::Format(string,
                                                                        object[])
      IL_014c:  ldloc.s    V_11
      IL_014e:  call       string Game.ExceptionManager::MakeFullErrorMessage(string,
                                                                              class [System.Runtime]System.Exception)
      IL_0153:  call       void [Engine]Engine.Log::Error(string)
      IL_0158:  leave.s    IL_015a

    }  // end handler
    IL_015a:  ldloc.0
    IL_015b:  ret

    IL_015c:  ldnull
    IL_015d:  ret
  } // end of method WorldsManager::GetWorldInfo

  .method public hidebysig static class Game.WorldInfo 
          CreateWorld(class Game.WorldInfo worldInfo) cil managed
  {
    // 代码大小       480 (0x1e0)
    .maxstack  5
    .locals init (int32 V_0,
             class [EntitySystem]TemplatesDatabase.ValuesDictionary V_1,
             class [EntitySystem]TemplatesDatabase.DatabaseObject V_2,
             class [System.Xml.XDocument]System.Xml.Linq.XElement V_3,
             class [System.Xml.XDocument]System.Xml.Linq.XElement V_4,
             class [System.Xml.XDocument]System.Xml.Linq.XElement V_5,
             int32 V_6,
             string V_7,
             int32 V_8,
             char V_9,
             class [System.IO]System.IO.Stream V_10)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string Game.WorldInfo::DirectoryName
    IL_0006:  call       void [Engine]Engine.Storage::CreateDirectory(string)
    IL_000b:  ldarg.0
    IL_000c:  ldfld      string Game.WorldInfo::Name
    IL_0011:  call       bool Game.WorldsManager::ValidateWorldName(string)
    IL_0016:  brtrue.s   IL_0037

    IL_0018:  ldstr      "World name \"{0}\" is invalid."
    IL_001d:  ldc.i4.1
    IL_001e:  newarr     [System.Runtime]System.Object
    IL_0023:  dup
    IL_0024:  ldc.i4.0
    IL_0025:  ldarg.0
    IL_0026:  ldfld      string Game.WorldInfo::Name
    IL_002b:  stelem.ref
    IL_002c:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0031:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0036:  throw

    IL_0037:  ldarg.0
    IL_0038:  ldfld      string Game.WorldInfo::Seed
    IL_003d:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_0042:  brfalse.s  IL_0058

    IL_0044:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_0049:  ldc.r8     1000.
    IL_0052:  mul
    IL_0053:  conv.i8
    IL_0054:  conv.i4
    IL_0055:  stloc.0
    IL_0056:  br.s       IL_00ab

    IL_0058:  ldarg.0
    IL_0059:  ldfld      string Game.WorldInfo::Seed
    IL_005e:  ldstr      "0"
    IL_0063:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                         string)
    IL_0068:  brfalse.s  IL_006e

    IL_006a:  ldc.i4.0
    IL_006b:  stloc.0
    IL_006c:  br.s       IL_00ab

    IL_006e:  ldc.i4.0
    IL_006f:  stloc.0
    IL_0070:  ldc.i4.1
    IL_0071:  stloc.s    V_6
    IL_0073:  ldarg.0
    IL_0074:  ldfld      string Game.WorldInfo::Seed
    IL_0079:  stloc.s    V_7
    IL_007b:  ldc.i4.0
    IL_007c:  stloc.s    V_8
    IL_007e:  br.s       IL_00a0

    IL_0080:  ldloc.s    V_7
    IL_0082:  ldloc.s    V_8
    IL_0084:  callvirt   instance char [System.Runtime]System.String::get_Chars(int32)
    IL_0089:  stloc.s    V_9
    IL_008b:  ldloc.0
    IL_008c:  ldloc.s    V_9
    IL_008e:  ldloc.s    V_6
    IL_0090:  mul
    IL_0091:  add
    IL_0092:  stloc.0
    IL_0093:  ldloc.s    V_6
    IL_0095:  ldc.i4.s   29
    IL_0097:  add
    IL_0098:  stloc.s    V_6
    IL_009a:  ldloc.s    V_8
    IL_009c:  ldc.i4.1
    IL_009d:  add
    IL_009e:  stloc.s    V_8
    IL_00a0:  ldloc.s    V_8
    IL_00a2:  ldloc.s    V_7
    IL_00a4:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_00a9:  blt.s      IL_0080

    IL_00ab:  newobj     instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::.ctor()
    IL_00b0:  newobj     instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::.ctor()
    IL_00b5:  stloc.1
    IL_00b6:  ldstr      "GameInfo"
    IL_00bb:  ldloc.1
    IL_00bc:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<class [EntitySystem]TemplatesDatabase.ValuesDictionary>(string,
                                                                                                                                                          !!0)
    IL_00c1:  ldarg.0
    IL_00c2:  ldloc.1
    IL_00c3:  ldc.i4.0
    IL_00c4:  callvirt   instance void Game.WorldInfo::Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary,
                                                            bool)
    IL_00c9:  ldloc.1
    IL_00ca:  ldstr      "WorldDirectoryName"
    IL_00cf:  ldarg.0
    IL_00d0:  ldfld      string Game.WorldInfo::DirectoryName
    IL_00d5:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<string>(string,
                                                                                                          !!0)
    IL_00da:  ldloc.1
    IL_00db:  ldstr      "WorldSeed"
    IL_00e0:  ldloc.0
    IL_00e1:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<int32>(string,
                                                                                                         !!0)
    IL_00e6:  call       class [EntitySystem]GameEntitySystem.GameDatabase Game.DatabaseManager::get_GameDatabase()
    IL_00eb:  callvirt   instance class [EntitySystem]TemplatesDatabase.Database [EntitySystem]GameEntitySystem.GameDatabase::get_Database()
    IL_00f0:  ldstr      "GameProject"
    IL_00f5:  call       class [EntitySystem]GameEntitySystem.GameDatabase Game.DatabaseManager::get_GameDatabase()
    IL_00fa:  callvirt   instance class [EntitySystem]TemplatesDatabase.DatabaseObjectType [EntitySystem]GameEntitySystem.GameDatabase::get_ProjectTemplateType()
    IL_00ff:  ldc.i4.1
    IL_0100:  callvirt   instance class [EntitySystem]TemplatesDatabase.DatabaseObject [EntitySystem]TemplatesDatabase.Database::FindDatabaseObject(string,
                                                                                                                                                    class [EntitySystem]TemplatesDatabase.DatabaseObjectType,
                                                                                                                                                    bool)
    IL_0105:  stloc.2
    IL_0106:  ldstr      "Project"
    IL_010b:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
    IL_0110:  newobj     instance void [System.Xml.XDocument]System.Xml.Linq.XElement::.ctor(class [System.Xml.XDocument]System.Xml.Linq.XName)
    IL_0115:  stloc.3
    IL_0116:  ldloc.3
    IL_0117:  ldstr      "Guid"
    IL_011c:  ldloc.2
    IL_011d:  callvirt   instance valuetype [System.Runtime]System.Guid [EntitySystem]TemplatesDatabase.DatabaseObject::get_Guid()
    IL_0122:  box        [System.Runtime]System.Guid
    IL_0127:  call       void [EntitySystem]XmlUtilities.XmlUtils::SetAttributeValue(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                     string,
                                                                                     object)
    IL_012c:  ldloc.3
    IL_012d:  ldstr      "Name"
    IL_0132:  ldstr      "GameProject"
    IL_0137:  call       void [EntitySystem]XmlUtilities.XmlUtils::SetAttributeValue(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                     string,
                                                                                     object)
    IL_013c:  ldloc.3
    IL_013d:  ldstr      "Version"
    IL_0142:  call       string Game.VersionsManager::get_SerializationVersion()
    IL_0147:  call       void [EntitySystem]XmlUtilities.XmlUtils::SetAttributeValue(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                     string,
                                                                                     object)
    IL_014c:  ldstr      "Subsystems"
    IL_0151:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
    IL_0156:  newobj     instance void [System.Xml.XDocument]System.Xml.Linq.XElement::.ctor(class [System.Xml.XDocument]System.Xml.Linq.XName)
    IL_015b:  stloc.s    V_4
    IL_015d:  ldloc.3
    IL_015e:  ldloc.s    V_4
    IL_0160:  callvirt   instance void [System.Xml.XDocument]System.Xml.Linq.XContainer::Add(object)
    IL_0165:  ldstr      "Values"
    IL_016a:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
    IL_016f:  newobj     instance void [System.Xml.XDocument]System.Xml.Linq.XElement::.ctor(class [System.Xml.XDocument]System.Xml.Linq.XName)
    IL_0174:  stloc.s    V_5
    IL_0176:  ldloc.s    V_5
    IL_0178:  ldstr      "Name"
    IL_017d:  ldstr      "GameInfo"
    IL_0182:  call       void [EntitySystem]XmlUtilities.XmlUtils::SetAttributeValue(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                     string,
                                                                                     object)
    IL_0187:  ldloc.1
    IL_0188:  ldloc.s    V_5
    IL_018a:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::Save(class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_018f:  ldloc.s    V_4
    IL_0191:  ldloc.s    V_5
    IL_0193:  callvirt   instance void [System.Xml.XDocument]System.Xml.Linq.XContainer::Add(object)
    IL_0198:  ldc.i4.2
    IL_0199:  newarr     [System.Runtime]System.String
    IL_019e:  dup
    IL_019f:  ldc.i4.0
    IL_01a0:  ldarg.0
    IL_01a1:  ldfld      string Game.WorldInfo::DirectoryName
    IL_01a6:  stelem.ref
    IL_01a7:  dup
    IL_01a8:  ldc.i4.1
    IL_01a9:  ldstr      "Project.xml"
    IL_01ae:  stelem.ref
    IL_01af:  call       string [Engine]Engine.Storage::CombinePaths(string[])
    IL_01b4:  ldc.i4.2
    IL_01b5:  call       class [System.IO]System.IO.Stream [Engine]Engine.Storage::OpenFile(string,
                                                                                            valuetype [Engine]Engine.OpenFileMode)
    IL_01ba:  stloc.s    V_10
    .try
    {
      IL_01bc:  ldloc.3
      IL_01bd:  ldloc.s    V_10
      IL_01bf:  ldnull
      IL_01c0:  ldc.i4.1
      IL_01c1:  call       void [EntitySystem]XmlUtilities.XmlUtils::SaveXmlToStream(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                     class [System.IO]System.IO.Stream,
                                                                                     class [System.Text.Encoding]System.Text.Encoding,
                                                                                     bool)
      IL_01c6:  leave.s    IL_01d4

    }  // end .try
    finally
    {
      IL_01c8:  ldloc.s    V_10
      IL_01ca:  brfalse.s  IL_01d3

      IL_01cc:  ldloc.s    V_10
      IL_01ce:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_01d3:  endfinally
    }  // end handler
    IL_01d4:  ldarg.0
    IL_01d5:  ldfld      string Game.WorldInfo::DirectoryName
    IL_01da:  call       class Game.WorldInfo Game.WorldsManager::GetWorldInfo(string)
    IL_01df:  ret
  } // end of method WorldsManager::CreateWorld

  .method public hidebysig static void  ChangeWorld(class Game.WorldInfo worldInfo) cil managed
  {
    // 代码大小       209 (0xd1)
    .maxstack  4
    .locals init (string V_0,
             class [System.Xml.XDocument]System.Xml.Linq.XElement V_1,
             class [System.Xml.XDocument]System.Xml.Linq.XElement V_2,
             class [EntitySystem]TemplatesDatabase.ValuesDictionary V_3,
             valuetype Game.GameMode V_4,
             class [System.IO]System.IO.Stream V_5,
             class [System.IO]System.IO.Stream V_6)
    IL_0000:  ldc.i4.2
    IL_0001:  newarr     [System.Runtime]System.String
    IL_0006:  dup
    IL_0007:  ldc.i4.0
    IL_0008:  ldarg.0
    IL_0009:  ldfld      string Game.WorldInfo::DirectoryName
    IL_000e:  stelem.ref
    IL_000f:  dup
    IL_0010:  ldc.i4.1
    IL_0011:  ldstr      "Project.xml"
    IL_0016:  stelem.ref
    IL_0017:  call       string [Engine]Engine.Storage::CombinePaths(string[])
    IL_001c:  stloc.0
    IL_001d:  ldloc.0
    IL_001e:  call       bool [Engine]Engine.Storage::FileExists(string)
    IL_0023:  brfalse    IL_00d0

    IL_0028:  ldnull
    IL_0029:  stloc.1
    IL_002a:  ldloc.0
    IL_002b:  ldc.i4.0
    IL_002c:  call       class [System.IO]System.IO.Stream [Engine]Engine.Storage::OpenFile(string,
                                                                                            valuetype [Engine]Engine.OpenFileMode)
    IL_0031:  stloc.s    V_5
    .try
    {
      IL_0033:  ldloc.s    V_5
      IL_0035:  ldnull
      IL_0036:  ldc.i4.1
      IL_0037:  call       class [System.Xml.XDocument]System.Xml.Linq.XElement [EntitySystem]XmlUtilities.XmlUtils::LoadXmlFromStream(class [System.IO]System.IO.Stream,
                                                                                                                                       class [System.Text.Encoding]System.Text.Encoding,
                                                                                                                                       bool)
      IL_003c:  stloc.1
      IL_003d:  leave.s    IL_004b

    }  // end .try
    finally
    {
      IL_003f:  ldloc.s    V_5
      IL_0041:  brfalse.s  IL_004a

      IL_0043:  ldloc.s    V_5
      IL_0045:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_004a:  endfinally
    }  // end handler
    IL_004b:  ldloc.1
    IL_004c:  call       class [System.Xml.XDocument]System.Xml.Linq.XElement Game.WorldsManager::GetGameInfoNode(class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_0051:  stloc.2
    IL_0052:  newobj     instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::.ctor()
    IL_0057:  stloc.3
    IL_0058:  ldloc.3
    IL_0059:  ldloc.2
    IL_005a:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::ApplyOverrides(class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_005f:  ldloc.3
    IL_0060:  ldstr      "GameMode"
    IL_0065:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<valuetype Game.GameMode>(string)
    IL_006a:  stloc.s    V_4
    IL_006c:  ldarg.0
    IL_006d:  ldloc.3
    IL_006e:  ldc.i4.1
    IL_006f:  callvirt   instance void Game.WorldInfo::Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary,
                                                            bool)
    IL_0074:  ldloc.3
    IL_0075:  ldloc.2
    IL_0076:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::Save(class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_007b:  ldloc.0
    IL_007c:  ldc.i4.2
    IL_007d:  call       class [System.IO]System.IO.Stream [Engine]Engine.Storage::OpenFile(string,
                                                                                            valuetype [Engine]Engine.OpenFileMode)
    IL_0082:  stloc.s    V_6
    .try
    {
      IL_0084:  ldloc.1
      IL_0085:  ldloc.s    V_6
      IL_0087:  ldnull
      IL_0088:  ldc.i4.1
      IL_0089:  call       void [EntitySystem]XmlUtilities.XmlUtils::SaveXmlToStream(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                     class [System.IO]System.IO.Stream,
                                                                                     class [System.Text.Encoding]System.Text.Encoding,
                                                                                     bool)
      IL_008e:  leave.s    IL_009c

    }  // end .try
    finally
    {
      IL_0090:  ldloc.s    V_6
      IL_0092:  brfalse.s  IL_009b

      IL_0094:  ldloc.s    V_6
      IL_0096:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_009b:  endfinally
    }  // end handler
    IL_009c:  ldarg.0
    IL_009d:  ldfld      valuetype Game.GameMode Game.WorldInfo::GameMode
    IL_00a2:  ldloc.s    V_4
    IL_00a4:  beq.s      IL_00d0

    IL_00a6:  ldarg.0
    IL_00a7:  ldfld      valuetype Game.GameMode Game.WorldInfo::GameMode
    IL_00ac:  ldc.i4.4
    IL_00ad:  bne.un.s   IL_00c0

    IL_00af:  ldarg.0
    IL_00b0:  ldfld      string Game.WorldInfo::DirectoryName
    IL_00b5:  ldstr      "AdventureRestart"
    IL_00ba:  call       void Game.WorldsManager::TakeWorldSnapshot(string,
                                                                    string)
    IL_00bf:  ret

    IL_00c0:  ldarg.0
    IL_00c1:  ldfld      string Game.WorldInfo::DirectoryName
    IL_00c6:  ldstr      "AdventureRestart"
    IL_00cb:  call       void Game.WorldsManager::DeleteWorldSnapshot(string,
                                                                      string)
    IL_00d0:  ret
  } // end of method WorldsManager::ChangeWorld

  .method public hidebysig static string 
          GetUnusedWorldDirectoryName() cil managed
  {
    // 代码大小       175 (0xaf)
    .maxstack  6
    .locals init (string V_0,
             int32 V_1,
             string V_2,
             string V_3,
             string V_4)
    IL_0000:  ldc.i4.2
    IL_0001:  newarr     [System.Runtime]System.String
    IL_0006:  dup
    IL_0007:  ldc.i4.0
    IL_0008:  ldsfld     string Game.WorldsManager::WorldsDirectoryName
    IL_000d:  stelem.ref
    IL_000e:  dup
    IL_000f:  ldc.i4.1
    IL_0010:  ldstr      "World"
    IL_0015:  stelem.ref
    IL_0016:  call       string [Engine]Engine.Storage::CombinePaths(string[])
    IL_001b:  stloc.0
    IL_001c:  ldc.i4.0
    IL_001d:  stloc.1
    IL_001e:  br.s       IL_008d

    IL_0020:  ldc.i4.2
    IL_0021:  newarr     [System.Runtime]System.String
    IL_0026:  dup
    IL_0027:  ldc.i4.0
    IL_0028:  ldloc.0
    IL_0029:  call       string [Engine]Engine.Storage::GetDirectoryName(string)
    IL_002e:  stelem.ref
    IL_002f:  dup
    IL_0030:  ldc.i4.1
    IL_0031:  ldloc.0
    IL_0032:  call       string [Engine]Engine.Storage::GetFileNameWithoutExtension(string)
    IL_0037:  stelem.ref
    IL_0038:  call       string [Engine]Engine.Storage::CombinePaths(string[])
    IL_003d:  stloc.2
    IL_003e:  ldloc.0
    IL_003f:  call       string [Engine]Engine.Storage::GetExtension(string)
    IL_0044:  stloc.3
    IL_0045:  ldstr      "{0}{1}{2}"
    IL_004a:  ldc.i4.3
    IL_004b:  newarr     [System.Runtime]System.Object
    IL_0050:  dup
    IL_0051:  ldc.i4.0
    IL_0052:  ldloc.2
    IL_0053:  stelem.ref
    IL_0054:  dup
    IL_0055:  ldc.i4.1
    IL_0056:  ldloc.1
    IL_0057:  ldc.i4.0
    IL_0058:  bgt.s      IL_0061

    IL_005a:  ldsfld     string [System.Runtime]System.String::Empty
    IL_005f:  br.s       IL_0068

    IL_0061:  ldloca.s   V_1
    IL_0063:  call       instance string [System.Runtime]System.Int32::ToString()
    IL_0068:  stelem.ref
    IL_0069:  dup
    IL_006a:  ldc.i4.2
    IL_006b:  ldloc.3
    IL_006c:  stelem.ref
    IL_006d:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0072:  stloc.s    V_4
    IL_0074:  ldloc.s    V_4
    IL_0076:  call       bool [Engine]Engine.Storage::DirectoryExists(string)
    IL_007b:  brtrue.s   IL_0089

    IL_007d:  ldloc.s    V_4
    IL_007f:  call       bool [Engine]Engine.Storage::FileExists(string)
    IL_0084:  brtrue.s   IL_0089

    IL_0086:  ldloc.s    V_4
    IL_0088:  ret

    IL_0089:  ldloc.1
    IL_008a:  ldc.i4.1
    IL_008b:  add
    IL_008c:  stloc.1
    IL_008d:  ldloc.1
    IL_008e:  ldc.i4     0x3e8
    IL_0093:  blt.s      IL_0020

    IL_0095:  ldstr      "Out of filenames for root \"{0}\"."
    IL_009a:  ldc.i4.1
    IL_009b:  newarr     [System.Runtime]System.Object
    IL_00a0:  dup
    IL_00a1:  ldc.i4.0
    IL_00a2:  ldloc.0
    IL_00a3:  stelem.ref
    IL_00a4:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_00a9:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_00ae:  throw
  } // end of method WorldsManager::GetUnusedWorldDirectoryName

  .method private hidebysig static void  RecursiveEnumerateDirectory(string directoryName,
                                                                     class [System.Collections]System.Collections.Generic.List`1<string> files,
                                                                     class [System.Collections]System.Collections.Generic.List`1<string> directories,
                                                                     class [System.Runtime]System.Func`2<string,bool> filesFilter) cil managed
  {
    // 代码大小       204 (0xcc)
    .maxstack  5
    .locals init (class [System.Runtime]System.Collections.Generic.IEnumerator`1<string> V_0,
             string V_1,
             string V_2,
             string V_3,
             string V_4,
             class [System.Runtime]System.Exception V_5)
    .try
    {
      IL_0000:  ldarg.0
      IL_0001:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<string> [Engine]Engine.Storage::ListDirectoryNames(string)
      IL_0006:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<string>::GetEnumerator()
      IL_000b:  stloc.0
      .try
      {
        IL_000c:  br.s       IL_003c

        IL_000e:  ldloc.0
        IL_000f:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<string>::get_Current()
        IL_0014:  stloc.1
        IL_0015:  ldc.i4.2
        IL_0016:  newarr     [System.Runtime]System.String
        IL_001b:  dup
        IL_001c:  ldc.i4.0
        IL_001d:  ldarg.0
        IL_001e:  stelem.ref
        IL_001f:  dup
        IL_0020:  ldc.i4.1
        IL_0021:  ldloc.1
        IL_0022:  stelem.ref
        IL_0023:  call       string [Engine]Engine.Storage::CombinePaths(string[])
        IL_0028:  stloc.2
        IL_0029:  ldloc.2
        IL_002a:  ldarg.1
        IL_002b:  ldarg.2
        IL_002c:  ldarg.3
        IL_002d:  call       void Game.WorldsManager::RecursiveEnumerateDirectory(string,
                                                                                  class [System.Collections]System.Collections.Generic.List`1<string>,
                                                                                  class [System.Collections]System.Collections.Generic.List`1<string>,
                                                                                  class [System.Runtime]System.Func`2<string,bool>)
        IL_0032:  ldarg.2
        IL_0033:  brfalse.s  IL_003c

        IL_0035:  ldarg.2
        IL_0036:  ldloc.2
        IL_0037:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<string>::Add(!0)
        IL_003c:  ldloc.0
        IL_003d:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
        IL_0042:  brtrue.s   IL_000e

        IL_0044:  leave.s    IL_0050

      }  // end .try
      finally
      {
        IL_0046:  ldloc.0
        IL_0047:  brfalse.s  IL_004f

        IL_0049:  ldloc.0
        IL_004a:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_004f:  endfinally
      }  // end handler
      IL_0050:  ldarg.1
      IL_0051:  brfalse.s  IL_00a6

      IL_0053:  ldarg.0
      IL_0054:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<string> [Engine]Engine.Storage::ListFileNames(string)
      IL_0059:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<string>::GetEnumerator()
      IL_005e:  stloc.0
      .try
      {
        IL_005f:  br.s       IL_0092

        IL_0061:  ldloc.0
        IL_0062:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<string>::get_Current()
        IL_0067:  stloc.3
        IL_0068:  ldc.i4.2
        IL_0069:  newarr     [System.Runtime]System.String
        IL_006e:  dup
        IL_006f:  ldc.i4.0
        IL_0070:  ldarg.0
        IL_0071:  stelem.ref
        IL_0072:  dup
        IL_0073:  ldc.i4.1
        IL_0074:  ldloc.3
        IL_0075:  stelem.ref
        IL_0076:  call       string [Engine]Engine.Storage::CombinePaths(string[])
        IL_007b:  stloc.s    V_4
        IL_007d:  ldarg.3
        IL_007e:  brfalse.s  IL_008a

        IL_0080:  ldarg.3
        IL_0081:  ldloc.s    V_4
        IL_0083:  callvirt   instance !1 class [System.Runtime]System.Func`2<string,bool>::Invoke(!0)
        IL_0088:  brfalse.s  IL_0092

        IL_008a:  ldarg.1
        IL_008b:  ldloc.s    V_4
        IL_008d:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<string>::Add(!0)
        IL_0092:  ldloc.0
        IL_0093:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
        IL_0098:  brtrue.s   IL_0061

        IL_009a:  leave.s    IL_00a6

      }  // end .try
      finally
      {
        IL_009c:  ldloc.0
        IL_009d:  brfalse.s  IL_00a5

        IL_009f:  ldloc.0
        IL_00a0:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_00a5:  endfinally
      }  // end handler
      IL_00a6:  leave.s    IL_00cb

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_00a8:  stloc.s    V_5
      IL_00aa:  ldstr      "Error enumerating files/directories. Reason: {0}"
      IL_00af:  ldc.i4.1
      IL_00b0:  newarr     [System.Runtime]System.Object
      IL_00b5:  dup
      IL_00b6:  ldc.i4.0
      IL_00b7:  ldloc.s    V_5
      IL_00b9:  callvirt   instance string [System.Runtime]System.Exception::get_Message()
      IL_00be:  stelem.ref
      IL_00bf:  call       string [System.Runtime]System.String::Format(string,
                                                                        object[])
      IL_00c4:  call       void [Engine]Engine.Log::Error(string)
      IL_00c9:  leave.s    IL_00cb

    }  // end handler
    IL_00cb:  ret
  } // end of method WorldsManager::RecursiveEnumerateDirectory

  .method private hidebysig static class [System.Xml.XDocument]System.Xml.Linq.XElement 
          GetGameInfoNode(class [System.Xml.XDocument]System.Xml.Linq.XElement projectNode) cil managed
  {
    // 代码大小       89 (0x59)
    .maxstack  3
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldstr      "Subsystems"
    IL_0006:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
    IL_000b:  callvirt   instance class [System.Xml.XDocument]System.Xml.Linq.XElement [System.Xml.XDocument]System.Xml.Linq.XContainer::Element(class [System.Xml.XDocument]System.Xml.Linq.XName)
    IL_0010:  ldstr      "Values"
    IL_0015:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
    IL_001a:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Elements(class [System.Xml.XDocument]System.Xml.Linq.XName)
    IL_001f:  ldsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.WorldsManager/'<>c'::'<>9__28_0'
    IL_0024:  dup
    IL_0025:  brtrue.s   IL_003e

    IL_0027:  pop
    IL_0028:  ldsfld     class Game.WorldsManager/'<>c' Game.WorldsManager/'<>c'::'<>9'
    IL_002d:  ldftn      instance bool Game.WorldsManager/'<>c'::'<GetGameInfoNode>b__28_0'(class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_0033:  newobj     instance void class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool>::.ctor(object,
                                                                                                                                             native int)
    IL_0038:  dup
    IL_0039:  stsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.WorldsManager/'<>c'::'<>9__28_0'
    IL_003e:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<class [System.Xml.XDocument]System.Xml.Linq.XElement>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                              class [System.Runtime]System.Func`2<!!0,bool>)
    IL_0043:  call       !!0 [System.Linq]System.Linq.Enumerable::FirstOrDefault<class [System.Xml.XDocument]System.Xml.Linq.XElement>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_0048:  stloc.0
    IL_0049:  ldloc.0
    IL_004a:  brfalse.s  IL_004e

    IL_004c:  ldloc.0
    IL_004d:  ret

    IL_004e:  ldstr      "GameInfo node not found in project."
    IL_0053:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0058:  throw
  } // end of method WorldsManager::GetGameInfoNode

  .method private hidebysig static void  PackWorld(string directoryName,
                                                   class [System.IO]System.IO.Stream targetStream,
                                                   class [System.Runtime]System.Func`2<string,bool> 'filter',
                                                   bool embedExternalContent) cil managed
  {
    // 代码大小       449 (0x1c1)
    .maxstack  5
    .locals init (class Game.WorldInfo V_0,
             class [System.Collections]System.Collections.Generic.List`1<string> V_1,
             class Game.ZipArchive V_2,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<string> V_3,
             string V_4,
             class [System.IO]System.IO.Stream V_5,
             string V_6,
             class [System.IO]System.IO.Stream V_7,
             string V_8,
             class [System.Runtime]System.Exception V_9,
             class [System.IO]System.IO.Stream V_10,
             string V_11,
             class [System.Runtime]System.Exception V_12)
    IL_0000:  ldarg.0
    IL_0001:  call       class Game.WorldInfo Game.WorldsManager::GetWorldInfo(string)
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  brtrue.s   IL_0015

    IL_000a:  ldstr      "Directory does not contain a world."
    IL_000f:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0014:  throw

    IL_0015:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<string>::.ctor()
    IL_001a:  stloc.1
    IL_001b:  ldarg.0
    IL_001c:  ldloc.1
    IL_001d:  ldnull
    IL_001e:  ldarg.2
    IL_001f:  call       void Game.WorldsManager::RecursiveEnumerateDirectory(string,
                                                                              class [System.Collections]System.Collections.Generic.List`1<string>,
                                                                              class [System.Collections]System.Collections.Generic.List`1<string>,
                                                                              class [System.Runtime]System.Func`2<string,bool>)
    IL_0024:  ldarg.1
    IL_0025:  ldc.i4.1
    IL_0026:  call       class Game.ZipArchive Game.ZipArchive::Create(class [System.IO]System.IO.Stream,
                                                                       bool)
    IL_002b:  stloc.2
    .try
    {
      IL_002c:  ldloc.1
      IL_002d:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<string>::GetEnumerator()
      IL_0032:  stloc.3
      .try
      {
        IL_0033:  br.s       IL_0069

        IL_0035:  ldloca.s   V_3
        IL_0037:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<string>::get_Current()
        IL_003c:  stloc.s    V_4
        IL_003e:  ldloc.s    V_4
        IL_0040:  ldc.i4.0
        IL_0041:  call       class [System.IO]System.IO.Stream [Engine]Engine.Storage::OpenFile(string,
                                                                                                valuetype [Engine]Engine.OpenFileMode)
        IL_0046:  stloc.s    V_5
        .try
        {
          IL_0048:  ldloc.s    V_4
          IL_004a:  call       string [Engine]Engine.Storage::GetFileName(string)
          IL_004f:  stloc.s    V_6
          IL_0051:  ldloc.2
          IL_0052:  ldloc.s    V_6
          IL_0054:  ldloc.s    V_5
          IL_0056:  callvirt   instance void Game.ZipArchive::AddStream(string,
                                                                        class [System.IO]System.IO.Stream)
          IL_005b:  leave.s    IL_0069

        }  // end .try
        finally
        {
          IL_005d:  ldloc.s    V_5
          IL_005f:  brfalse.s  IL_0068

          IL_0061:  ldloc.s    V_5
          IL_0063:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
          IL_0068:  endfinally
        }  // end handler
        IL_0069:  ldloca.s   V_3
        IL_006b:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<string>::MoveNext()
        IL_0070:  brtrue.s   IL_0035

        IL_0072:  leave.s    IL_0082

      }  // end .try
      finally
      {
        IL_0074:  ldloca.s   V_3
        IL_0076:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<string>
        IL_007c:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_0081:  endfinally
      }  // end handler
      IL_0082:  ldarg.3
      IL_0083:  brfalse    IL_01b4

      IL_0088:  ldloc.0
      IL_0089:  ldfld      string Game.WorldInfo::BlocksTextureName
      IL_008e:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
      IL_0093:  brtrue     IL_011e

      .try
      {
        IL_0098:  ldloc.0
        IL_0099:  ldfld      string Game.WorldInfo::BlocksTextureName
        IL_009e:  call       string Game.BlocksTexturesManager::GetFileName(string)
        IL_00a3:  ldc.i4.0
        IL_00a4:  call       class [System.IO]System.IO.Stream [Engine]Engine.Storage::OpenFile(string,
                                                                                                valuetype [Engine]Engine.OpenFileMode)
        IL_00a9:  stloc.s    V_7
        .try
        {
          IL_00ab:  ldc.i4.2
          IL_00ac:  newarr     [System.Runtime]System.String
          IL_00b1:  dup
          IL_00b2:  ldc.i4.0
          IL_00b3:  ldstr      "EmbeddedContent"
          IL_00b8:  stelem.ref
          IL_00b9:  dup
          IL_00ba:  ldc.i4.1
          IL_00bb:  ldloc.0
          IL_00bc:  ldfld      string Game.WorldInfo::BlocksTextureName
          IL_00c1:  call       string [Engine]Engine.Storage::GetFileNameWithoutExtension(string)
          IL_00c6:  ldstr      ".scbtex"
          IL_00cb:  call       string [System.Runtime]System.String::Concat(string,
                                                                            string)
          IL_00d0:  stelem.ref
          IL_00d1:  call       string [Engine]Engine.Storage::CombinePaths(string[])
          IL_00d6:  stloc.s    V_8
          IL_00d8:  ldloc.2
          IL_00d9:  ldloc.s    V_8
          IL_00db:  ldloc.s    V_7
          IL_00dd:  callvirt   instance void Game.ZipArchive::AddStream(string,
                                                                        class [System.IO]System.IO.Stream)
          IL_00e2:  leave.s    IL_00f0

        }  // end .try
        finally
        {
          IL_00e4:  ldloc.s    V_7
          IL_00e6:  brfalse.s  IL_00ef

          IL_00e8:  ldloc.s    V_7
          IL_00ea:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
          IL_00ef:  endfinally
        }  // end handler
        IL_00f0:  leave.s    IL_011e

      }  // end .try
      catch [System.Runtime]System.Exception 
      {
        IL_00f2:  stloc.s    V_9
        IL_00f4:  ldstr      "Failed to embed blocks texture \"{0}\". Reason: {1}"
        IL_00f9:  ldc.i4.2
        IL_00fa:  newarr     [System.Runtime]System.Object
        IL_00ff:  dup
        IL_0100:  ldc.i4.0
        IL_0101:  ldloc.0
        IL_0102:  ldfld      string Game.WorldInfo::BlocksTextureName
        IL_0107:  stelem.ref
        IL_0108:  dup
        IL_0109:  ldc.i4.1
        IL_010a:  ldloc.s    V_9
        IL_010c:  callvirt   instance string [System.Runtime]System.Exception::get_Message()
        IL_0111:  stelem.ref
        IL_0112:  call       string [System.Runtime]System.String::Format(string,
                                                                          object[])
        IL_0117:  call       void [Engine]Engine.Log::Warning(string)
        IL_011c:  leave.s    IL_011e

      }  // end handler
      IL_011e:  ldloc.0
      IL_011f:  ldfld      string Game.WorldInfo::CharacterSkinName
      IL_0124:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
      IL_0129:  brtrue     IL_01b4

      .try
      {
        IL_012e:  ldloc.0
        IL_012f:  ldfld      string Game.WorldInfo::CharacterSkinName
        IL_0134:  call       string Game.CharacterSkinsManager::GetFileName(string)
        IL_0139:  ldc.i4.0
        IL_013a:  call       class [System.IO]System.IO.Stream [Engine]Engine.Storage::OpenFile(string,
                                                                                                valuetype [Engine]Engine.OpenFileMode)
        IL_013f:  stloc.s    V_10
        .try
        {
          IL_0141:  ldc.i4.2
          IL_0142:  newarr     [System.Runtime]System.String
          IL_0147:  dup
          IL_0148:  ldc.i4.0
          IL_0149:  ldstr      "EmbeddedContent"
          IL_014e:  stelem.ref
          IL_014f:  dup
          IL_0150:  ldc.i4.1
          IL_0151:  ldloc.0
          IL_0152:  ldfld      string Game.WorldInfo::CharacterSkinName
          IL_0157:  call       string [Engine]Engine.Storage::GetFileNameWithoutExtension(string)
          IL_015c:  ldstr      ".scskin"
          IL_0161:  call       string [System.Runtime]System.String::Concat(string,
                                                                            string)
          IL_0166:  stelem.ref
          IL_0167:  call       string [Engine]Engine.Storage::CombinePaths(string[])
          IL_016c:  stloc.s    V_11
          IL_016e:  ldloc.2
          IL_016f:  ldloc.s    V_11
          IL_0171:  ldloc.s    V_10
          IL_0173:  callvirt   instance void Game.ZipArchive::AddStream(string,
                                                                        class [System.IO]System.IO.Stream)
          IL_0178:  leave.s    IL_0186

        }  // end .try
        finally
        {
          IL_017a:  ldloc.s    V_10
          IL_017c:  brfalse.s  IL_0185

          IL_017e:  ldloc.s    V_10
          IL_0180:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
          IL_0185:  endfinally
        }  // end handler
        IL_0186:  leave.s    IL_01c0

      }  // end .try
      catch [System.Runtime]System.Exception 
      {
        IL_0188:  stloc.s    V_12
        IL_018a:  ldstr      "Failed to embed character skin \"{0}\". Reason: {1}"
        IL_018f:  ldc.i4.2
        IL_0190:  newarr     [System.Runtime]System.Object
        IL_0195:  dup
        IL_0196:  ldc.i4.0
        IL_0197:  ldloc.0
        IL_0198:  ldfld      string Game.WorldInfo::CharacterSkinName
        IL_019d:  stelem.ref
        IL_019e:  dup
        IL_019f:  ldc.i4.1
        IL_01a0:  ldloc.s    V_12
        IL_01a2:  callvirt   instance string [System.Runtime]System.Exception::get_Message()
        IL_01a7:  stelem.ref
        IL_01a8:  call       string [System.Runtime]System.String::Format(string,
                                                                          object[])
        IL_01ad:  call       void [Engine]Engine.Log::Warning(string)
        IL_01b2:  leave.s    IL_01c0

      }  // end handler
      IL_01b4:  leave.s    IL_01c0

    }  // end .try
    finally
    {
      IL_01b6:  ldloc.2
      IL_01b7:  brfalse.s  IL_01bf

      IL_01b9:  ldloc.2
      IL_01ba:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_01bf:  endfinally
    }  // end handler
    IL_01c0:  ret
  } // end of method WorldsManager::PackWorld

  .method private hidebysig static void  UnpackWorld(string directoryName,
                                                     class [System.IO]System.IO.Stream sourceStream,
                                                     bool importEmbeddedExternalContent) cil managed
  {
    // 代码大小       293 (0x125)
    .maxstack  5
    .locals init (class Game.ZipArchive V_0,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ZipArchiveEntry> V_1,
             class Game.ZipArchiveEntry V_2,
             string V_3,
             string V_4,
             class [System.IO]System.IO.MemoryStream V_5,
             valuetype Game.ExternalContentType V_6,
             class [System.Runtime]System.Exception V_7,
             class [System.IO]System.IO.Stream V_8)
    IL_0000:  ldarg.0
    IL_0001:  call       bool [Engine]Engine.Storage::DirectoryExists(string)
    IL_0006:  brtrue.s   IL_0022

    IL_0008:  ldstr      "Cannot import world into \"{0}\" because this direct"
    + "ory does not exist."
    IL_000d:  ldc.i4.1
    IL_000e:  newarr     [System.Runtime]System.Object
    IL_0013:  dup
    IL_0014:  ldc.i4.0
    IL_0015:  ldarg.0
    IL_0016:  stelem.ref
    IL_0017:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_001c:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0021:  throw

    IL_0022:  ldarg.1
    IL_0023:  ldc.i4.1
    IL_0024:  call       class Game.ZipArchive Game.ZipArchive::Open(class [System.IO]System.IO.Stream,
                                                                     bool)
    IL_0029:  stloc.0
    .try
    {
      IL_002a:  ldloc.0
      IL_002b:  callvirt   instance class [System.Collections]System.Collections.Generic.List`1<class Game.ZipArchiveEntry> Game.ZipArchive::ReadCentralDir()
      IL_0030:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.ZipArchiveEntry>::GetEnumerator()
      IL_0035:  stloc.1
      .try
      {
        IL_0036:  br         IL_00fe

        IL_003b:  ldloca.s   V_1
        IL_003d:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ZipArchiveEntry>::get_Current()
        IL_0042:  stloc.2
        IL_0043:  ldloc.2
        IL_0044:  ldfld      string Game.ZipArchiveEntry::FilenameInZip
        IL_0049:  ldc.i4.s   92
        IL_004b:  ldc.i4.s   47
        IL_004d:  callvirt   instance string [System.Runtime]System.String::Replace(char,
                                                                                    char)
        IL_0052:  stloc.3
        IL_0053:  ldloc.3
        IL_0054:  call       string [Engine]Engine.Storage::GetExtension(string)
        IL_0059:  stloc.s    V_4
        IL_005b:  ldloc.3
        IL_005c:  ldstr      "EmbeddedContent"
        IL_0061:  callvirt   instance bool [System.Runtime]System.String::StartsWith(string)
        IL_0066:  brfalse.s  IL_00c7

        .try
        {
          IL_0068:  ldarg.2
          IL_0069:  brfalse.s  IL_009e

          IL_006b:  newobj     instance void [System.IO]System.IO.MemoryStream::.ctor()
          IL_0070:  stloc.s    V_5
          IL_0072:  ldloc.0
          IL_0073:  ldloc.2
          IL_0074:  ldloc.s    V_5
          IL_0076:  callvirt   instance void Game.ZipArchive::ExtractFile(class Game.ZipArchiveEntry,
                                                                          class [System.IO]System.IO.Stream)
          IL_007b:  ldloc.s    V_5
          IL_007d:  ldc.i4.0
          IL_007e:  conv.i8
          IL_007f:  callvirt   instance void [System.IO]System.IO.Stream::set_Position(int64)
          IL_0084:  ldloc.s    V_4
          IL_0086:  call       valuetype Game.ExternalContentType Game.ExternalContentManager::ExtensionToType(string)
          IL_008b:  stloc.s    V_6
          IL_008d:  ldloc.s    V_5
          IL_008f:  ldloc.s    V_6
          IL_0091:  ldloc.3
          IL_0092:  call       string [Engine]Engine.Storage::GetFileNameWithoutExtension(string)
          IL_0097:  ldc.i4.0
          IL_0098:  call       string Game.ExternalContentManager::ImportExternalContentSync(class [System.IO]System.IO.Stream,
                                                                                             valuetype Game.ExternalContentType,
                                                                                             string,
                                                                                             bool)
          IL_009d:  pop
          IL_009e:  leave.s    IL_00fe

        }  // end .try
        catch [System.Runtime]System.Exception 
        {
          IL_00a0:  stloc.s    V_7
          IL_00a2:  ldstr      "Failed to import embedded content \"{0}\". Reason: {1}"
          IL_00a7:  ldc.i4.2
          IL_00a8:  newarr     [System.Runtime]System.Object
          IL_00ad:  dup
          IL_00ae:  ldc.i4.0
          IL_00af:  ldloc.3
          IL_00b0:  stelem.ref
          IL_00b1:  dup
          IL_00b2:  ldc.i4.1
          IL_00b3:  ldloc.s    V_7
          IL_00b5:  callvirt   instance string [System.Runtime]System.Exception::get_Message()
          IL_00ba:  stelem.ref
          IL_00bb:  call       string [System.Runtime]System.String::Format(string,
                                                                            object[])
          IL_00c0:  call       void [Engine]Engine.Log::Warning(string)
          IL_00c5:  leave.s    IL_00fe

        }  // end handler
        IL_00c7:  ldc.i4.2
        IL_00c8:  newarr     [System.Runtime]System.String
        IL_00cd:  dup
        IL_00ce:  ldc.i4.0
        IL_00cf:  ldarg.0
        IL_00d0:  stelem.ref
        IL_00d1:  dup
        IL_00d2:  ldc.i4.1
        IL_00d3:  ldloc.3
        IL_00d4:  call       string [Engine]Engine.Storage::GetFileName(string)
        IL_00d9:  stelem.ref
        IL_00da:  call       string [Engine]Engine.Storage::CombinePaths(string[])
        IL_00df:  ldc.i4.2
        IL_00e0:  call       class [System.IO]System.IO.Stream [Engine]Engine.Storage::OpenFile(string,
                                                                                                valuetype [Engine]Engine.OpenFileMode)
        IL_00e5:  stloc.s    V_8
        .try
        {
          IL_00e7:  ldloc.0
          IL_00e8:  ldloc.2
          IL_00e9:  ldloc.s    V_8
          IL_00eb:  callvirt   instance void Game.ZipArchive::ExtractFile(class Game.ZipArchiveEntry,
                                                                          class [System.IO]System.IO.Stream)
          IL_00f0:  leave.s    IL_00fe

        }  // end .try
        finally
        {
          IL_00f2:  ldloc.s    V_8
          IL_00f4:  brfalse.s  IL_00fd

          IL_00f6:  ldloc.s    V_8
          IL_00f8:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
          IL_00fd:  endfinally
        }  // end handler
        IL_00fe:  ldloca.s   V_1
        IL_0100:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ZipArchiveEntry>::MoveNext()
        IL_0105:  brtrue     IL_003b

        IL_010a:  leave.s    IL_0124

      }  // end .try
      finally
      {
        IL_010c:  ldloca.s   V_1
        IL_010e:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ZipArchiveEntry>
        IL_0114:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_0119:  endfinally
      }  // end handler
    }  // end .try
    finally
    {
      IL_011a:  ldloc.0
      IL_011b:  brfalse.s  IL_0123

      IL_011d:  ldloc.0
      IL_011e:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0123:  endfinally
    }  // end handler
    IL_0124:  ret
  } // end of method WorldsManager::UnpackWorld

  .method private hidebysig static void  DeleteWorldContents(string directoryName,
                                                             class [System.Runtime]System.Func`2<string,bool> 'filter') cil managed
  {
    // 代码大小       114 (0x72)
    .maxstack  4
    .locals init (class [System.Collections]System.Collections.Generic.List`1<string> V_0,
             class [System.Collections]System.Collections.Generic.List`1<string> V_1,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<string> V_2)
    IL_0000:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<string>::.ctor()
    IL_0005:  stloc.0
    IL_0006:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<string>::.ctor()
    IL_000b:  stloc.1
    IL_000c:  ldarg.0
    IL_000d:  ldloc.0
    IL_000e:  ldloc.1
    IL_000f:  ldarg.1
    IL_0010:  call       void Game.WorldsManager::RecursiveEnumerateDirectory(string,
                                                                              class [System.Collections]System.Collections.Generic.List`1<string>,
                                                                              class [System.Collections]System.Collections.Generic.List`1<string>,
                                                                              class [System.Runtime]System.Func`2<string,bool>)
    IL_0015:  ldloc.0
    IL_0016:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<string>::GetEnumerator()
    IL_001b:  stloc.2
    .try
    {
      IL_001c:  br.s       IL_002a

      IL_001e:  ldloca.s   V_2
      IL_0020:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<string>::get_Current()
      IL_0025:  call       void [Engine]Engine.Storage::DeleteFile(string)
      IL_002a:  ldloca.s   V_2
      IL_002c:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<string>::MoveNext()
      IL_0031:  brtrue.s   IL_001e

      IL_0033:  leave.s    IL_0043

    }  // end .try
    finally
    {
      IL_0035:  ldloca.s   V_2
      IL_0037:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<string>
      IL_003d:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0042:  endfinally
    }  // end handler
    IL_0043:  ldloc.1
    IL_0044:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<string>::GetEnumerator()
    IL_0049:  stloc.2
    .try
    {
      IL_004a:  br.s       IL_0058

      IL_004c:  ldloca.s   V_2
      IL_004e:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<string>::get_Current()
      IL_0053:  call       void [Engine]Engine.Storage::DeleteDirectory(string)
      IL_0058:  ldloca.s   V_2
      IL_005a:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<string>::MoveNext()
      IL_005f:  brtrue.s   IL_004c

      IL_0061:  leave.s    IL_0071

    }  // end .try
    finally
    {
      IL_0063:  ldloca.s   V_2
      IL_0065:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<string>
      IL_006b:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0070:  endfinally
    }  // end handler
    IL_0071:  ret
  } // end of method WorldsManager::DeleteWorldContents

  .method private hidebysig static string 
          MakeSnapshotFilename(string directoryName,
                               string snapshotName) cil managed
  {
    // 代码大小       39 (0x27)
    .maxstack  8
    IL_0000:  ldc.i4.2
    IL_0001:  newarr     [System.Runtime]System.String
    IL_0006:  dup
    IL_0007:  ldc.i4.0
    IL_0008:  ldarg.0
    IL_0009:  stelem.ref
    IL_000a:  dup
    IL_000b:  ldc.i4.1
    IL_000c:  ldstr      "{0}.snapshot"
    IL_0011:  ldc.i4.1
    IL_0012:  newarr     [System.Runtime]System.Object
    IL_0017:  dup
    IL_0018:  ldc.i4.0
    IL_0019:  ldarg.1
    IL_001a:  stelem.ref
    IL_001b:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0020:  stelem.ref
    IL_0021:  call       string [Engine]Engine.Storage::CombinePaths(string[])
    IL_0026:  ret
  } // end of method WorldsManager::MakeSnapshotFilename

  .method private hidebysig static bool  TestXmlFile(string fileName,
                                                     string rootNodeName) cil managed
  {
    // 代码大小       72 (0x48)
    .maxstack  3
    .locals init (class [System.IO]System.IO.Stream V_0,
             class [System.Xml.XDocument]System.Xml.Linq.XElement V_1,
             bool V_2)
    .try
    {
      IL_0000:  ldarg.0
      IL_0001:  call       bool [Engine]Engine.Storage::FileExists(string)
      IL_0006:  brfalse.s  IL_003d

      IL_0008:  ldarg.0
      IL_0009:  ldc.i4.0
      IL_000a:  call       class [System.IO]System.IO.Stream [Engine]Engine.Storage::OpenFile(string,
                                                                                              valuetype [Engine]Engine.OpenFileMode)
      IL_000f:  stloc.0
      .try
      {
        IL_0010:  ldloc.0
        IL_0011:  ldnull
        IL_0012:  ldc.i4.0
        IL_0013:  call       class [System.Xml.XDocument]System.Xml.Linq.XElement [EntitySystem]XmlUtilities.XmlUtils::LoadXmlFromStream(class [System.IO]System.IO.Stream,
                                                                                                                                         class [System.Text.Encoding]System.Text.Encoding,
                                                                                                                                         bool)
        IL_0018:  stloc.1
        IL_0019:  ldloc.1
        IL_001a:  brfalse.s  IL_002f

        IL_001c:  ldloc.1
        IL_001d:  callvirt   instance class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XElement::get_Name()
        IL_0022:  ldarg.1
        IL_0023:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
        IL_0028:  call       bool [System.Xml.XDocument]System.Xml.Linq.XName::op_Equality(class [System.Xml.XDocument]System.Xml.Linq.XName,
                                                                                           class [System.Xml.XDocument]System.Xml.Linq.XName)
        IL_002d:  br.s       IL_0030

        IL_002f:  ldc.i4.0
        IL_0030:  stloc.2
        IL_0031:  leave.s    IL_0046

      }  // end .try
      finally
      {
        IL_0033:  ldloc.0
        IL_0034:  brfalse.s  IL_003c

        IL_0036:  ldloc.0
        IL_0037:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_003c:  endfinally
      }  // end handler
      IL_003d:  ldc.i4.0
      IL_003e:  stloc.2
      IL_003f:  leave.s    IL_0046

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_0041:  pop
      IL_0042:  ldc.i4.0
      IL_0043:  stloc.2
      IL_0044:  leave.s    IL_0046

    }  // end handler
    IL_0046:  ldloc.2
    IL_0047:  ret
  } // end of method WorldsManager::TestXmlFile

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       21 (0x15)
    .maxstack  8
    IL_0000:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.WorldInfo>::.ctor()
    IL_0005:  stsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.WorldInfo> Game.WorldsManager::m_worldInfos
    IL_000a:  ldstr      "data:/Worlds"
    IL_000f:  stsfld     string Game.WorldsManager::WorldsDirectoryName
    IL_0014:  ret
  } // end of method WorldsManager::.cctor

  .event class [System.Runtime]System.Action`1<string> WorldDeleted
  {
    .addon void Game.WorldsManager::add_WorldDeleted(class [System.Runtime]System.Action`1<string>)
    .removeon void Game.WorldsManager::remove_WorldDeleted(class [System.Runtime]System.Action`1<string>)
  } // end of event WorldsManager::WorldDeleted
  .property valuetype [Engine]Engine.ReadOnlyList`1<string>
          NewWorldNames()
  {
    .get valuetype [Engine]Engine.ReadOnlyList`1<string> Game.WorldsManager::get_NewWorldNames()
  } // end of property WorldsManager::NewWorldNames
  .property valuetype [Engine]Engine.ReadOnlyList`1<class Game.WorldInfo>
          WorldInfos()
  {
    .get valuetype [Engine]Engine.ReadOnlyList`1<class Game.WorldInfo> Game.WorldsManager::get_WorldInfos()
  } // end of property WorldsManager::WorldInfos
} // end of class Game.WorldsManager