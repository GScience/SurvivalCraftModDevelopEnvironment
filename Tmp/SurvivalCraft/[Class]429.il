.class public abstract auto ansi sealed beforefieldinit Game.GameManager
       extends [System.Runtime]System.Object
{
  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass8_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class Game.SubsystemGameInfo subsystemGameInfo
    .field public class [EntitySystem]GameEntitySystem.ProjectData projectData
    .field public string projectFileName
    .field public class Game.GameManager/'<>c__DisplayClass8_1' 'CS$<>8__locals1'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass8_0'::.ctor

    .method assembly hidebysig instance void 
            '<SaveProject>b__0'() cil managed
    {
      // 代码大小       182 (0xb6)
      .maxstack  4
      .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0,
               class [System.IO]System.IO.Stream V_1,
               class Game.GameManager/'<>c__DisplayClass8_2' V_2,
               class [System.Runtime]System.Exception V_3)
      .try
      {
        .try
        {
          IL_0000:  ldarg.0
          IL_0001:  ldfld      class Game.SubsystemGameInfo Game.GameManager/'<>c__DisplayClass8_0'::subsystemGameInfo
          IL_0006:  callvirt   instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
          IL_000b:  ldfld      string Game.WorldInfo::DirectoryName
          IL_0010:  call       void Game.WorldsManager::MakeQuickWorldBackup(string)
          IL_0015:  ldstr      "Project"
          IL_001a:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
          IL_001f:  newobj     instance void [System.Xml.XDocument]System.Xml.Linq.XElement::.ctor(class [System.Xml.XDocument]System.Xml.Linq.XName)
          IL_0024:  stloc.0
          IL_0025:  ldarg.0
          IL_0026:  ldfld      class [EntitySystem]GameEntitySystem.ProjectData Game.GameManager/'<>c__DisplayClass8_0'::projectData
          IL_002b:  ldloc.0
          IL_002c:  callvirt   instance void [EntitySystem]GameEntitySystem.ProjectData::Save(class [System.Xml.XDocument]System.Xml.Linq.XElement)
          IL_0031:  ldloc.0
          IL_0032:  ldstr      "Version"
          IL_0037:  call       string Game.VersionsManager::get_SerializationVersion()
          IL_003c:  call       void [EntitySystem]XmlUtilities.XmlUtils::SetAttributeValue(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                           string,
                                                                                           object)
          IL_0041:  ldarg.0
          IL_0042:  ldfld      class Game.SubsystemGameInfo Game.GameManager/'<>c__DisplayClass8_0'::subsystemGameInfo
          IL_0047:  callvirt   instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
          IL_004c:  ldfld      string Game.WorldInfo::DirectoryName
          IL_0051:  call       void [Engine]Engine.Storage::CreateDirectory(string)
          IL_0056:  ldarg.0
          IL_0057:  ldfld      string Game.GameManager/'<>c__DisplayClass8_0'::projectFileName
          IL_005c:  ldc.i4.2
          IL_005d:  call       class [System.IO]System.IO.Stream [Engine]Engine.Storage::OpenFile(string,
                                                                                                  valuetype [Engine]Engine.OpenFileMode)
          IL_0062:  stloc.1
          .try
          {
            IL_0063:  ldloc.0
            IL_0064:  ldloc.1
            IL_0065:  ldnull
            IL_0066:  ldc.i4.1
            IL_0067:  call       void [EntitySystem]XmlUtilities.XmlUtils::SaveXmlToStream(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                           class [System.IO]System.IO.Stream,
                                                                                           class [System.Text.Encoding]System.Text.Encoding,
                                                                                           bool)
            IL_006c:  leave.s    IL_0078

          }  // end .try
          finally
          {
            IL_006e:  ldloc.1
            IL_006f:  brfalse.s  IL_0077

            IL_0071:  ldloc.1
            IL_0072:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
            IL_0077:  endfinally
          }  // end handler
          IL_0078:  leave.s    IL_00b5

        }  // end .try
        catch [System.Runtime]System.Exception 
        {
          IL_007a:  newobj     instance void Game.GameManager/'<>c__DisplayClass8_2'::.ctor()
          IL_007f:  stloc.2
          IL_0080:  stloc.3
          IL_0081:  ldloc.2
          IL_0082:  ldloc.3
          IL_0083:  stfld      class [System.Runtime]System.Exception Game.GameManager/'<>c__DisplayClass8_2'::e
          IL_0088:  ldarg.0
          IL_0089:  ldfld      class Game.GameManager/'<>c__DisplayClass8_1' Game.GameManager/'<>c__DisplayClass8_0'::'CS$<>8__locals1'
          IL_008e:  ldfld      bool Game.GameManager/'<>c__DisplayClass8_1'::showErrorDialog
          IL_0093:  brfalse.s  IL_00a7

          IL_0095:  ldloc.2
          IL_0096:  ldftn      instance void Game.GameManager/'<>c__DisplayClass8_2'::'<SaveProject>b__1'()
          IL_009c:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                                  native int)
          IL_00a1:  ldc.i4.0
          IL_00a2:  call       void [Engine]Engine.Dispatcher::Dispatch(class [System.Runtime]System.Action,
                                                                        bool)
          IL_00a7:  leave.s    IL_00b5

        }  // end handler
      }  // end .try
      finally
      {
        IL_00a9:  ldsfld     class [System.Threading]System.Threading.ManualResetEvent Game.GameManager::m_saveCompleted
        IL_00ae:  callvirt   instance bool [System.Threading]System.Threading.EventWaitHandle::Set()
        IL_00b3:  pop
        IL_00b4:  endfinally
      }  // end handler
      IL_00b5:  ret
    } // end of method '<>c__DisplayClass8_0'::'<SaveProject>b__0'

  } // end of class '<>c__DisplayClass8_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass8_1'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public bool showErrorDialog
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass8_1'::.ctor

  } // end of class '<>c__DisplayClass8_1'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass8_2'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class [System.Runtime]System.Exception e
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass8_2'::.ctor

    .method assembly hidebysig instance void 
            '<SaveProject>b__1'() cil managed
    {
      // 代码大小       34 (0x22)
      .maxstack  8
      IL_0000:  ldstr      "Error saving game"
      IL_0005:  ldarg.0
      IL_0006:  ldfld      class [System.Runtime]System.Exception Game.GameManager/'<>c__DisplayClass8_2'::e
      IL_000b:  callvirt   instance string [System.Runtime]System.Exception::get_Message()
      IL_0010:  ldstr      "OK"
      IL_0015:  ldnull
      IL_0016:  ldnull
      IL_0017:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                   string,
                                                                   string,
                                                                   string,
                                                                   class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
      IL_001c:  call       void Game.DialogsManager::ShowDialog(class Game.Dialog)
      IL_0021:  ret
    } // end of method '<>c__DisplayClass8_2'::'<SaveProject>b__1'

  } // end of class '<>c__DisplayClass8_2'

  .field private static class Game.WorldInfo m_worldInfo
  .field private static class [EntitySystem]GameEntitySystem.Project m_project
  .field private static class [System.Threading]System.Threading.ManualResetEvent m_saveCompleted
  .method public hidebysig specialname static 
          class [EntitySystem]GameEntitySystem.Project 
          get_Project() cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     class [EntitySystem]GameEntitySystem.Project Game.GameManager::m_project
    IL_0005:  ret
  } // end of method GameManager::get_Project

  .method public hidebysig specialname static 
          class Game.WorldInfo  get_WorldInfo() cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     class Game.WorldInfo Game.GameManager::m_worldInfo
    IL_0005:  ret
  } // end of method GameManager::get_WorldInfo

  .method public hidebysig static void  LoadProject(class Game.WorldInfo worldInfo,
                                                    class Game.GameWidget gameWidget) cil managed
  {
    // 代码大小       508 (0x1fc)
    .maxstack  6
    .locals init (class [System.IO]System.IO.Stream V_0,
             class [EntitySystem]TemplatesDatabase.ValuesDictionary V_1,
             class [EntitySystem]TemplatesDatabase.ValuesDictionary V_2,
             class [System.Xml.XDocument]System.Xml.Linq.XElement V_3,
             class [EntitySystem]GameEntitySystem.ProjectData V_4,
             int32 V_5,
             valuetype Game.ResolutionMode V_6)
    IL_0000:  call       void Game.GameManager::DisposeProject()
    IL_0005:  ldarg.0
    IL_0006:  ldfld      string Game.WorldInfo::DirectoryName
    IL_000b:  call       void Game.WorldsManager::RepairWorldIfNeeded(string)
    IL_0010:  ldarg.0
    IL_0011:  ldfld      string Game.WorldInfo::DirectoryName
    IL_0016:  call       void Game.VersionsManager::UpgradeWorld(string)
    IL_001b:  ldc.i4.2
    IL_001c:  newarr     [System.Runtime]System.String
    IL_0021:  dup
    IL_0022:  ldc.i4.0
    IL_0023:  ldarg.0
    IL_0024:  ldfld      string Game.WorldInfo::DirectoryName
    IL_0029:  stelem.ref
    IL_002a:  dup
    IL_002b:  ldc.i4.1
    IL_002c:  ldstr      "Project.xml"
    IL_0031:  stelem.ref
    IL_0032:  call       string [Engine]Engine.Storage::CombinePaths(string[])
    IL_0037:  ldc.i4.0
    IL_0038:  call       class [System.IO]System.IO.Stream [Engine]Engine.Storage::OpenFile(string,
                                                                                            valuetype [Engine]Engine.OpenFileMode)
    IL_003d:  stloc.0
    .try
    {
      IL_003e:  newobj     instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::.ctor()
      IL_0043:  stloc.1
      IL_0044:  newobj     instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::.ctor()
      IL_0049:  stloc.2
      IL_004a:  ldloc.1
      IL_004b:  ldstr      "GameInfo"
      IL_0050:  ldloc.2
      IL_0051:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<class [EntitySystem]TemplatesDatabase.ValuesDictionary>(string,
                                                                                                                                                            !!0)
      IL_0056:  ldloc.2
      IL_0057:  ldstr      "GameWidget"
      IL_005c:  ldarg.1
      IL_005d:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<class Game.GameWidget>(string,
                                                                                                                           !!0)
      IL_0062:  ldloc.2
      IL_0063:  ldstr      "WorldDirectoryName"
      IL_0068:  ldarg.0
      IL_0069:  ldfld      string Game.WorldInfo::DirectoryName
      IL_006e:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<string>(string,
                                                                                                            !!0)
      IL_0073:  ldloc.0
      IL_0074:  ldnull
      IL_0075:  ldc.i4.1
      IL_0076:  call       class [System.Xml.XDocument]System.Xml.Linq.XElement [EntitySystem]XmlUtilities.XmlUtils::LoadXmlFromStream(class [System.IO]System.IO.Stream,
                                                                                                                                       class [System.Text.Encoding]System.Text.Encoding,
                                                                                                                                       bool)
      IL_007b:  stloc.3
      IL_007c:  call       class [EntitySystem]GameEntitySystem.GameDatabase Game.DatabaseManager::get_GameDatabase()
      IL_0081:  ldloc.3
      IL_0082:  ldloc.1
      IL_0083:  newobj     instance void [EntitySystem]GameEntitySystem.ProjectData::.ctor(class [EntitySystem]GameEntitySystem.GameDatabase,
                                                                                           class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                           class [EntitySystem]TemplatesDatabase.ValuesDictionary)
      IL_0088:  stloc.s    V_4
      IL_008a:  call       class [EntitySystem]GameEntitySystem.GameDatabase Game.DatabaseManager::get_GameDatabase()
      IL_008f:  ldloc.s    V_4
      IL_0091:  newobj     instance void [EntitySystem]GameEntitySystem.Project::.ctor(class [EntitySystem]GameEntitySystem.GameDatabase,
                                                                                       class [EntitySystem]GameEntitySystem.ProjectData)
      IL_0096:  stsfld     class [EntitySystem]GameEntitySystem.Project Game.GameManager::m_project
      IL_009b:  leave.s    IL_00a7

    }  // end .try
    finally
    {
      IL_009d:  ldloc.0
      IL_009e:  brfalse.s  IL_00a6

      IL_00a0:  ldloc.0
      IL_00a1:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00a6:  endfinally
    }  // end handler
    IL_00a7:  ldarg.0
    IL_00a8:  stsfld     class Game.WorldInfo Game.GameManager::m_worldInfo
    IL_00ad:  ldstr      "Loaded world, GameMode={0}, WorldName={1}, Visibil"
    + "ityRange={2}, Resolution={3}"
    IL_00b2:  ldc.i4.4
    IL_00b3:  newarr     [System.Runtime]System.Object
    IL_00b8:  dup
    IL_00b9:  ldc.i4.0
    IL_00ba:  ldarg.0
    IL_00bb:  ldfld      valuetype Game.GameMode Game.WorldInfo::GameMode
    IL_00c0:  box        Game.GameMode
    IL_00c5:  stelem.ref
    IL_00c6:  dup
    IL_00c7:  ldc.i4.1
    IL_00c8:  ldarg.0
    IL_00c9:  ldfld      string Game.WorldInfo::Name
    IL_00ce:  stelem.ref
    IL_00cf:  dup
    IL_00d0:  ldc.i4.2
    IL_00d1:  call       int32 Game.SettingsManager::get_VisibilityRange()
    IL_00d6:  stloc.s    V_5
    IL_00d8:  ldloca.s   V_5
    IL_00da:  call       instance string [System.Runtime]System.Int32::ToString()
    IL_00df:  stelem.ref
    IL_00e0:  dup
    IL_00e1:  ldc.i4.3
    IL_00e2:  call       valuetype Game.ResolutionMode Game.SettingsManager::get_ResolutionMode()
    IL_00e7:  stloc.s    V_6
    IL_00e9:  ldloca.s   V_6
    IL_00eb:  constrained. Game.ResolutionMode
    IL_00f1:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_00f6:  stelem.ref
    IL_00f7:  call       void [Engine]Engine.Log::Information(string,
                                                              object[])
    IL_00fc:  ldstr      "[GameManager] Loaded world"
    IL_0101:  ldc.i4.8
    IL_0102:  newarr     Game.AnalyticsParameter
    IL_0107:  dup
    IL_0108:  ldc.i4.0
    IL_0109:  ldstr      "GameMode"
    IL_010e:  ldarg.0
    IL_010f:  ldflda     valuetype Game.GameMode Game.WorldInfo::GameMode
    IL_0114:  constrained. Game.GameMode
    IL_011a:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_011f:  newobj     instance void Game.AnalyticsParameter::.ctor(string,
                                                                      string)
    IL_0124:  stelem     Game.AnalyticsParameter
    IL_0129:  dup
    IL_012a:  ldc.i4.1
    IL_012b:  ldstr      "EnvironmentBehaviorMode"
    IL_0130:  ldarg.0
    IL_0131:  ldflda     valuetype Game.EnvironmentBehaviorMode Game.WorldInfo::EnvironmentBehaviorMode
    IL_0136:  constrained. Game.EnvironmentBehaviorMode
    IL_013c:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_0141:  newobj     instance void Game.AnalyticsParameter::.ctor(string,
                                                                      string)
    IL_0146:  stelem     Game.AnalyticsParameter
    IL_014b:  dup
    IL_014c:  ldc.i4.2
    IL_014d:  ldstr      "TerrainGenerationMode"
    IL_0152:  ldarg.0
    IL_0153:  ldflda     valuetype Game.TerrainGenerationMode Game.WorldInfo::TerrainGenerationMode
    IL_0158:  constrained. Game.TerrainGenerationMode
    IL_015e:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_0163:  newobj     instance void Game.AnalyticsParameter::.ctor(string,
                                                                      string)
    IL_0168:  stelem     Game.AnalyticsParameter
    IL_016d:  dup
    IL_016e:  ldc.i4.3
    IL_016f:  ldstr      "WorldDirectory"
    IL_0174:  ldarg.0
    IL_0175:  ldfld      string Game.WorldInfo::DirectoryName
    IL_017a:  newobj     instance void Game.AnalyticsParameter::.ctor(string,
                                                                      string)
    IL_017f:  stelem     Game.AnalyticsParameter
    IL_0184:  dup
    IL_0185:  ldc.i4.4
    IL_0186:  ldstr      "WorldName"
    IL_018b:  ldarg.0
    IL_018c:  ldfld      string Game.WorldInfo::Name
    IL_0191:  newobj     instance void Game.AnalyticsParameter::.ctor(string,
                                                                      string)
    IL_0196:  stelem     Game.AnalyticsParameter
    IL_019b:  dup
    IL_019c:  ldc.i4.5
    IL_019d:  ldstr      "WorldSeedString"
    IL_01a2:  ldarg.0
    IL_01a3:  ldfld      string Game.WorldInfo::Seed
    IL_01a8:  newobj     instance void Game.AnalyticsParameter::.ctor(string,
                                                                      string)
    IL_01ad:  stelem     Game.AnalyticsParameter
    IL_01b2:  dup
    IL_01b3:  ldc.i4.6
    IL_01b4:  ldstr      "VisibilityRange"
    IL_01b9:  call       int32 Game.SettingsManager::get_VisibilityRange()
    IL_01be:  stloc.s    V_5
    IL_01c0:  ldloca.s   V_5
    IL_01c2:  call       instance string [System.Runtime]System.Int32::ToString()
    IL_01c7:  newobj     instance void Game.AnalyticsParameter::.ctor(string,
                                                                      string)
    IL_01cc:  stelem     Game.AnalyticsParameter
    IL_01d1:  dup
    IL_01d2:  ldc.i4.7
    IL_01d3:  ldstr      "Resolution"
    IL_01d8:  call       valuetype Game.ResolutionMode Game.SettingsManager::get_ResolutionMode()
    IL_01dd:  stloc.s    V_6
    IL_01df:  ldloca.s   V_6
    IL_01e1:  constrained. Game.ResolutionMode
    IL_01e7:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_01ec:  newobj     instance void Game.AnalyticsParameter::.ctor(string,
                                                                      string)
    IL_01f1:  stelem     Game.AnalyticsParameter
    IL_01f6:  call       void Game.AnalyticsManager::LogEvent(string,
                                                              valuetype Game.AnalyticsParameter[])
    IL_01fb:  ret
  } // end of method GameManager::LoadProject

  .method public hidebysig static void  SaveProject(bool waitForCompletion,
                                                    bool showErrorDialog) cil managed
  {
    // 代码大小       227 (0xe3)
    .maxstack  6
    .locals init (class Game.GameManager/'<>c__DisplayClass8_1' V_0,
             class Game.GameManager/'<>c__DisplayClass8_0' V_1,
             float64 V_2,
             float64 V_3)
    IL_0000:  newobj     instance void Game.GameManager/'<>c__DisplayClass8_1'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.1
    IL_0008:  stfld      bool Game.GameManager/'<>c__DisplayClass8_1'::showErrorDialog
    IL_000d:  ldsfld     class [EntitySystem]GameEntitySystem.Project Game.GameManager::m_project
    IL_0012:  brfalse    IL_00e2

    IL_0017:  newobj     instance void Game.GameManager/'<>c__DisplayClass8_0'::.ctor()
    IL_001c:  stloc.1
    IL_001d:  ldloc.1
    IL_001e:  ldloc.0
    IL_001f:  stfld      class Game.GameManager/'<>c__DisplayClass8_1' Game.GameManager/'<>c__DisplayClass8_0'::'CS$<>8__locals1'
    IL_0024:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_0029:  stloc.2
    IL_002a:  ldloc.1
    IL_002b:  ldsfld     class [EntitySystem]GameEntitySystem.Project Game.GameManager::m_project
    IL_0030:  callvirt   instance class [EntitySystem]GameEntitySystem.ProjectData [EntitySystem]GameEntitySystem.Project::Save()
    IL_0035:  stfld      class [EntitySystem]GameEntitySystem.ProjectData Game.GameManager/'<>c__DisplayClass8_0'::projectData
    IL_003a:  ldsfld     class [System.Threading]System.Threading.ManualResetEvent Game.GameManager::m_saveCompleted
    IL_003f:  callvirt   instance bool [System.Runtime]System.Threading.WaitHandle::WaitOne()
    IL_0044:  pop
    IL_0045:  ldsfld     class [System.Threading]System.Threading.ManualResetEvent Game.GameManager::m_saveCompleted
    IL_004a:  callvirt   instance bool [System.Threading]System.Threading.EventWaitHandle::Reset()
    IL_004f:  pop
    IL_0050:  ldloc.1
    IL_0051:  ldsfld     class [EntitySystem]GameEntitySystem.Project Game.GameManager::m_project
    IL_0056:  ldc.i4.1
    IL_0057:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGameInfo>(bool)
    IL_005c:  stfld      class Game.SubsystemGameInfo Game.GameManager/'<>c__DisplayClass8_0'::subsystemGameInfo
    IL_0061:  ldloc.1
    IL_0062:  ldc.i4.2
    IL_0063:  newarr     [System.Runtime]System.String
    IL_0068:  dup
    IL_0069:  ldc.i4.0
    IL_006a:  ldloc.1
    IL_006b:  ldfld      class Game.SubsystemGameInfo Game.GameManager/'<>c__DisplayClass8_0'::subsystemGameInfo
    IL_0070:  callvirt   instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
    IL_0075:  ldfld      string Game.WorldInfo::DirectoryName
    IL_007a:  stelem.ref
    IL_007b:  dup
    IL_007c:  ldc.i4.1
    IL_007d:  ldstr      "Project.xml"
    IL_0082:  stelem.ref
    IL_0083:  call       string [Engine]Engine.Storage::CombinePaths(string[])
    IL_0088:  stfld      string Game.GameManager/'<>c__DisplayClass8_0'::projectFileName
    IL_008d:  ldloc.1
    IL_008e:  ldftn      instance void Game.GameManager/'<>c__DisplayClass8_0'::'<SaveProject>b__0'()
    IL_0094:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0099:  call       class [System.Threading.Tasks]System.Threading.Tasks.Task [System.Threading.Tasks]System.Threading.Tasks.Task::Run(class [System.Runtime]System.Action)
    IL_009e:  pop
    IL_009f:  ldarg.0
    IL_00a0:  brfalse.s  IL_00ad

    IL_00a2:  ldsfld     class [System.Threading]System.Threading.ManualResetEvent Game.GameManager::m_saveCompleted
    IL_00a7:  callvirt   instance bool [System.Runtime]System.Threading.WaitHandle::WaitOne()
    IL_00ac:  pop
    IL_00ad:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_00b2:  stloc.3
    IL_00b3:  ldstr      "Saved project, {0}ms"
    IL_00b8:  ldc.i4.1
    IL_00b9:  newarr     [System.Runtime]System.Object
    IL_00be:  dup
    IL_00bf:  ldc.i4.0
    IL_00c0:  ldloc.3
    IL_00c1:  ldloc.2
    IL_00c2:  sub
    IL_00c3:  ldc.r8     1000.
    IL_00cc:  mul
    IL_00cd:  call       float64 [Engine]Engine.MathUtils::Round(float64)
    IL_00d2:  box        [System.Runtime]System.Double
    IL_00d7:  stelem.ref
    IL_00d8:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_00dd:  call       void [Engine]Engine.Log::Verbose(string)
    IL_00e2:  ret
  } // end of method GameManager::SaveProject

  .method public hidebysig static bool  UpdateProjectUntilReadyForPlaying() cil managed
  {
    // 代码大小       46 (0x2e)
    .maxstack  8
    IL_0000:  ldsfld     class [EntitySystem]GameEntitySystem.Project Game.GameManager::m_project
    IL_0005:  brfalse.s  IL_002c

    IL_0007:  ldsfld     class [EntitySystem]GameEntitySystem.Project Game.GameManager::m_project
    IL_000c:  ldc.i4.1
    IL_000d:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemPlayer>(bool)
    IL_0012:  callvirt   instance bool Game.SubsystemPlayer::get_IsReadyForPlaying()
    IL_0017:  brtrue.s   IL_002c

    IL_0019:  ldsfld     class [EntitySystem]GameEntitySystem.Project Game.GameManager::m_project
    IL_001e:  ldc.i4.1
    IL_001f:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemMainLoop>(bool)
    IL_0024:  ldc.i4.0
    IL_0025:  callvirt   instance void Game.SubsystemMainLoop::Update(bool)
    IL_002a:  ldc.i4.0
    IL_002b:  ret

    IL_002c:  ldc.i4.1
    IL_002d:  ret
  } // end of method GameManager::UpdateProjectUntilReadyForPlaying

  .method public hidebysig static void  UpdateProject() cil managed
  {
    // 代码大小       25 (0x19)
    .maxstack  8
    IL_0000:  ldsfld     class [EntitySystem]GameEntitySystem.Project Game.GameManager::m_project
    IL_0005:  brfalse.s  IL_0018

    IL_0007:  ldsfld     class [EntitySystem]GameEntitySystem.Project Game.GameManager::m_project
    IL_000c:  ldc.i4.1
    IL_000d:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemMainLoop>(bool)
    IL_0012:  ldc.i4.1
    IL_0013:  callvirt   instance void Game.SubsystemMainLoop::Update(bool)
    IL_0018:  ret
  } // end of method GameManager::UpdateProject

  .method public hidebysig static void  DrawProject() cil managed
  {
    // 代码大小       24 (0x18)
    .maxstack  8
    IL_0000:  ldsfld     class [EntitySystem]GameEntitySystem.Project Game.GameManager::m_project
    IL_0005:  brfalse.s  IL_0017

    IL_0007:  ldsfld     class [EntitySystem]GameEntitySystem.Project Game.GameManager::m_project
    IL_000c:  ldc.i4.1
    IL_000d:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemMainLoop>(bool)
    IL_0012:  callvirt   instance void Game.SubsystemMainLoop::Draw()
    IL_0017:  ret
  } // end of method GameManager::DrawProject

  .method public hidebysig static void  DisposeProject() cil managed
  {
    // 代码大小       45 (0x2d)
    .maxstack  8
    IL_0000:  ldsfld     class [EntitySystem]GameEntitySystem.Project Game.GameManager::m_project
    IL_0005:  brfalse.s  IL_002c

    IL_0007:  ldsfld     class [EntitySystem]GameEntitySystem.Project Game.GameManager::m_project
    IL_000c:  callvirt   instance void [EntitySystem]GameEntitySystem.Project::Dispose()
    IL_0011:  ldnull
    IL_0012:  stsfld     class [EntitySystem]GameEntitySystem.Project Game.GameManager::m_project
    IL_0017:  ldnull
    IL_0018:  stsfld     class Game.WorldInfo Game.GameManager::m_worldInfo
    IL_001d:  call       void [System.Runtime]System.GC::Collect()
    IL_0022:  call       void [System.Runtime]System.GC::WaitForPendingFinalizers()
    IL_0027:  call       void [System.Runtime]System.GC::Collect()
    IL_002c:  ret
  } // end of method GameManager::DisposeProject

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldc.i4.1
    IL_0001:  newobj     instance void [System.Threading]System.Threading.ManualResetEvent::.ctor(bool)
    IL_0006:  stsfld     class [System.Threading]System.Threading.ManualResetEvent Game.GameManager::m_saveCompleted
    IL_000b:  ret
  } // end of method GameManager::.cctor

  .property class [EntitySystem]GameEntitySystem.Project
          Project()
  {
    .get class [EntitySystem]GameEntitySystem.Project Game.GameManager::get_Project()
  } // end of property GameManager::Project
  .property class Game.WorldInfo WorldInfo()
  {
    .get class Game.WorldInfo Game.GameManager::get_WorldInfo()
  } // end of property GameManager::WorldInfo
} // end of class Game.GameManager