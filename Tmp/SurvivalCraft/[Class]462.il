.class public abstract auto ansi sealed beforefieldinit Game.GameManager
       extends [System.Runtime]System.Object
{
  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass9_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class Game.SubsystemGameInfo subsystemGameInfo
    .field public class [EntitySystem]GameEntitySystem.ProjectData projectData
    .field public string projectFileName
    .field public class Game.GameManager/'<>c__DisplayClass9_1' 'CS$<>8__locals1'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass9_0'::.ctor

    .method assembly hidebysig instance void 
            '<SaveProject>b__0'() cil managed
    {
      // 代码大小       172 (0xac)
      .maxstack  4
      .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0,
               class [System.IO]System.IO.Stream V_1,
               class Game.GameManager/'<>c__DisplayClass9_2' V_2,
               class [System.Runtime]System.Exception V_3)
      .try
      {
        .try
        {
          IL_0000:  ldarg.0
          IL_0001:  ldfld      class Game.SubsystemGameInfo Game.GameManager/'<>c__DisplayClass9_0'::subsystemGameInfo
          IL_0006:  callvirt   instance string Game.SubsystemGameInfo::get_DirectoryName()
          IL_000b:  call       void Game.WorldsManager::MakeQuickWorldBackup(string)
          IL_0010:  ldstr      "Project"
          IL_0015:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
          IL_001a:  newobj     instance void [System.Xml.XDocument]System.Xml.Linq.XElement::.ctor(class [System.Xml.XDocument]System.Xml.Linq.XName)
          IL_001f:  stloc.0
          IL_0020:  ldarg.0
          IL_0021:  ldfld      class [EntitySystem]GameEntitySystem.ProjectData Game.GameManager/'<>c__DisplayClass9_0'::projectData
          IL_0026:  ldloc.0
          IL_0027:  callvirt   instance void [EntitySystem]GameEntitySystem.ProjectData::Save(class [System.Xml.XDocument]System.Xml.Linq.XElement)
          IL_002c:  ldloc.0
          IL_002d:  ldstr      "Version"
          IL_0032:  call       string Game.VersionsManager::get_SerializationVersion()
          IL_0037:  call       void [EntitySystem]XmlUtilities.XmlUtils::SetAttributeValue(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                           string,
                                                                                           object)
          IL_003c:  ldarg.0
          IL_003d:  ldfld      class Game.SubsystemGameInfo Game.GameManager/'<>c__DisplayClass9_0'::subsystemGameInfo
          IL_0042:  callvirt   instance string Game.SubsystemGameInfo::get_DirectoryName()
          IL_0047:  call       void [Engine]Engine.Storage::CreateDirectory(string)
          IL_004c:  ldarg.0
          IL_004d:  ldfld      string Game.GameManager/'<>c__DisplayClass9_0'::projectFileName
          IL_0052:  ldc.i4.2
          IL_0053:  call       class [System.IO]System.IO.Stream [Engine]Engine.Storage::OpenFile(string,
                                                                                                  valuetype [Engine]Engine.OpenFileMode)
          IL_0058:  stloc.1
          .try
          {
            IL_0059:  ldloc.0
            IL_005a:  ldloc.1
            IL_005b:  ldnull
            IL_005c:  ldc.i4.1
            IL_005d:  call       void [EntitySystem]XmlUtilities.XmlUtils::SaveXmlToStream(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                           class [System.IO]System.IO.Stream,
                                                                                           class [System.Text.Encoding]System.Text.Encoding,
                                                                                           bool)
            IL_0062:  leave.s    IL_006e

          }  // end .try
          finally
          {
            IL_0064:  ldloc.1
            IL_0065:  brfalse.s  IL_006d

            IL_0067:  ldloc.1
            IL_0068:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
            IL_006d:  endfinally
          }  // end handler
          IL_006e:  leave.s    IL_00ab

        }  // end .try
        catch [System.Runtime]System.Exception 
        {
          IL_0070:  newobj     instance void Game.GameManager/'<>c__DisplayClass9_2'::.ctor()
          IL_0075:  stloc.2
          IL_0076:  stloc.3
          IL_0077:  ldloc.2
          IL_0078:  ldloc.3
          IL_0079:  stfld      class [System.Runtime]System.Exception Game.GameManager/'<>c__DisplayClass9_2'::e
          IL_007e:  ldarg.0
          IL_007f:  ldfld      class Game.GameManager/'<>c__DisplayClass9_1' Game.GameManager/'<>c__DisplayClass9_0'::'CS$<>8__locals1'
          IL_0084:  ldfld      bool Game.GameManager/'<>c__DisplayClass9_1'::showErrorDialog
          IL_0089:  brfalse.s  IL_009d

          IL_008b:  ldloc.2
          IL_008c:  ldftn      instance void Game.GameManager/'<>c__DisplayClass9_2'::'<SaveProject>b__1'()
          IL_0092:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                                  native int)
          IL_0097:  ldc.i4.0
          IL_0098:  call       void [Engine]Engine.Dispatcher::Dispatch(class [System.Runtime]System.Action,
                                                                        bool)
          IL_009d:  leave.s    IL_00ab

        }  // end handler
      }  // end .try
      finally
      {
        IL_009f:  ldsfld     class [System.Threading]System.Threading.ManualResetEvent Game.GameManager::m_saveCompleted
        IL_00a4:  callvirt   instance bool [System.Threading]System.Threading.EventWaitHandle::Set()
        IL_00a9:  pop
        IL_00aa:  endfinally
      }  // end handler
      IL_00ab:  ret
    } // end of method '<>c__DisplayClass9_0'::'<SaveProject>b__0'

  } // end of class '<>c__DisplayClass9_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass9_1'
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
    } // end of method '<>c__DisplayClass9_1'::.ctor

  } // end of class '<>c__DisplayClass9_1'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass9_2'
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
    } // end of method '<>c__DisplayClass9_2'::.ctor

    .method assembly hidebysig instance void 
            '<SaveProject>b__1'() cil managed
    {
      // 代码大小       35 (0x23)
      .maxstack  8
      IL_0000:  ldnull
      IL_0001:  ldstr      "Error saving game"
      IL_0006:  ldarg.0
      IL_0007:  ldfld      class [System.Runtime]System.Exception Game.GameManager/'<>c__DisplayClass9_2'::e
      IL_000c:  callvirt   instance string [System.Runtime]System.Exception::get_Message()
      IL_0011:  ldstr      "OK"
      IL_0016:  ldnull
      IL_0017:  ldnull
      IL_0018:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                   string,
                                                                   string,
                                                                   string,
                                                                   class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
      IL_001d:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                                class Game.Dialog)
      IL_0022:  ret
    } // end of method '<>c__DisplayClass9_2'::'<SaveProject>b__1'

  } // end of class '<>c__DisplayClass9_2'

  .field private static class Game.WorldInfo m_worldInfo
  .field private static class [EntitySystem]GameEntitySystem.Project m_project
  .field private static class Game.SubsystemUpdate m_subsystemUpdate
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
                                                    class Game.ContainerWidget gamesWidget) cil managed
  {
    // 代码大小       585 (0x249)
    .maxstack  6
    .locals init (class [System.IO]System.IO.Stream V_0,
             class [EntitySystem]TemplatesDatabase.ValuesDictionary V_1,
             class [EntitySystem]TemplatesDatabase.ValuesDictionary V_2,
             class [EntitySystem]TemplatesDatabase.ValuesDictionary V_3,
             class [System.Xml.XDocument]System.Xml.Linq.XElement V_4,
             class [EntitySystem]GameEntitySystem.ProjectData V_5,
             int32 V_6,
             valuetype Game.ResolutionMode V_7)
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
      IL_0057:  ldstr      "WorldDirectoryName"
      IL_005c:  ldarg.0
      IL_005d:  ldfld      string Game.WorldInfo::DirectoryName
      IL_0062:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<string>(string,
                                                                                                            !!0)
      IL_0067:  newobj     instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::.ctor()
      IL_006c:  stloc.3
      IL_006d:  ldloc.1
      IL_006e:  ldstr      "Views"
      IL_0073:  ldloc.3
      IL_0074:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<class [EntitySystem]TemplatesDatabase.ValuesDictionary>(string,
                                                                                                                                                            !!0)
      IL_0079:  ldloc.3
      IL_007a:  ldstr      "GamesWidget"
      IL_007f:  ldarg.1
      IL_0080:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<class Game.ContainerWidget>(string,
                                                                                                                                !!0)
      IL_0085:  ldloc.0
      IL_0086:  ldnull
      IL_0087:  ldc.i4.1
      IL_0088:  call       class [System.Xml.XDocument]System.Xml.Linq.XElement [EntitySystem]XmlUtilities.XmlUtils::LoadXmlFromStream(class [System.IO]System.IO.Stream,
                                                                                                                                       class [System.Text.Encoding]System.Text.Encoding,
                                                                                                                                       bool)
      IL_008d:  stloc.s    V_4
      IL_008f:  call       class [EntitySystem]GameEntitySystem.GameDatabase Game.DatabaseManager::get_GameDatabase()
      IL_0094:  ldloc.s    V_4
      IL_0096:  ldloc.1
      IL_0097:  ldc.i4.1
      IL_0098:  newobj     instance void [EntitySystem]GameEntitySystem.ProjectData::.ctor(class [EntitySystem]GameEntitySystem.GameDatabase,
                                                                                           class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                           class [EntitySystem]TemplatesDatabase.ValuesDictionary,
                                                                                           bool)
      IL_009d:  stloc.s    V_5
      IL_009f:  call       class [EntitySystem]GameEntitySystem.GameDatabase Game.DatabaseManager::get_GameDatabase()
      IL_00a4:  ldloc.s    V_5
      IL_00a6:  newobj     instance void [EntitySystem]GameEntitySystem.Project::.ctor(class [EntitySystem]GameEntitySystem.GameDatabase,
                                                                                       class [EntitySystem]GameEntitySystem.ProjectData)
      IL_00ab:  stsfld     class [EntitySystem]GameEntitySystem.Project Game.GameManager::m_project
      IL_00b0:  ldsfld     class [EntitySystem]GameEntitySystem.Project Game.GameManager::m_project
      IL_00b5:  ldc.i4.1
      IL_00b6:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemUpdate>(bool)
      IL_00bb:  stsfld     class Game.SubsystemUpdate Game.GameManager::m_subsystemUpdate
      IL_00c0:  leave.s    IL_00cc

    }  // end .try
    finally
    {
      IL_00c2:  ldloc.0
      IL_00c3:  brfalse.s  IL_00cb

      IL_00c5:  ldloc.0
      IL_00c6:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00cb:  endfinally
    }  // end handler
    IL_00cc:  ldarg.0
    IL_00cd:  stsfld     class Game.WorldInfo Game.GameManager::m_worldInfo
    IL_00d2:  ldstr      "Loaded world, GameMode={0}, WorldName={1}, Visibil"
    + "ityRange={2}, Resolution={3}"
    IL_00d7:  ldc.i4.4
    IL_00d8:  newarr     [System.Runtime]System.Object
    IL_00dd:  dup
    IL_00de:  ldc.i4.0
    IL_00df:  ldarg.0
    IL_00e0:  ldfld      class Game.WorldSettings Game.WorldInfo::WorldSettings
    IL_00e5:  ldfld      valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_00ea:  box        Game.GameMode
    IL_00ef:  stelem.ref
    IL_00f0:  dup
    IL_00f1:  ldc.i4.1
    IL_00f2:  ldarg.0
    IL_00f3:  ldfld      class Game.WorldSettings Game.WorldInfo::WorldSettings
    IL_00f8:  ldfld      string Game.WorldSettings::Name
    IL_00fd:  stelem.ref
    IL_00fe:  dup
    IL_00ff:  ldc.i4.2
    IL_0100:  call       int32 Game.SettingsManager::get_VisibilityRange()
    IL_0105:  stloc.s    V_6
    IL_0107:  ldloca.s   V_6
    IL_0109:  call       instance string [System.Runtime]System.Int32::ToString()
    IL_010e:  stelem.ref
    IL_010f:  dup
    IL_0110:  ldc.i4.3
    IL_0111:  call       valuetype Game.ResolutionMode Game.SettingsManager::get_ResolutionMode()
    IL_0116:  stloc.s    V_7
    IL_0118:  ldloca.s   V_7
    IL_011a:  constrained. Game.ResolutionMode
    IL_0120:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_0125:  stelem.ref
    IL_0126:  call       void [Engine]Engine.Log::Information(string,
                                                              object[])
    IL_012b:  ldstr      "[GameManager] Loaded world"
    IL_0130:  ldc.i4.8
    IL_0131:  newarr     Game.AnalyticsParameter
    IL_0136:  dup
    IL_0137:  ldc.i4.0
    IL_0138:  ldstr      "GameMode"
    IL_013d:  ldarg.0
    IL_013e:  ldfld      class Game.WorldSettings Game.WorldInfo::WorldSettings
    IL_0143:  ldflda     valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_0148:  constrained. Game.GameMode
    IL_014e:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_0153:  newobj     instance void Game.AnalyticsParameter::.ctor(string,
                                                                      string)
    IL_0158:  stelem     Game.AnalyticsParameter
    IL_015d:  dup
    IL_015e:  ldc.i4.1
    IL_015f:  ldstr      "EnvironmentBehaviorMode"
    IL_0164:  ldarg.0
    IL_0165:  ldfld      class Game.WorldSettings Game.WorldInfo::WorldSettings
    IL_016a:  ldflda     valuetype Game.EnvironmentBehaviorMode Game.WorldSettings::EnvironmentBehaviorMode
    IL_016f:  constrained. Game.EnvironmentBehaviorMode
    IL_0175:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_017a:  newobj     instance void Game.AnalyticsParameter::.ctor(string,
                                                                      string)
    IL_017f:  stelem     Game.AnalyticsParameter
    IL_0184:  dup
    IL_0185:  ldc.i4.2
    IL_0186:  ldstr      "TerrainGenerationMode"
    IL_018b:  ldarg.0
    IL_018c:  ldfld      class Game.WorldSettings Game.WorldInfo::WorldSettings
    IL_0191:  ldflda     valuetype Game.TerrainGenerationMode Game.WorldSettings::TerrainGenerationMode
    IL_0196:  constrained. Game.TerrainGenerationMode
    IL_019c:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_01a1:  newobj     instance void Game.AnalyticsParameter::.ctor(string,
                                                                      string)
    IL_01a6:  stelem     Game.AnalyticsParameter
    IL_01ab:  dup
    IL_01ac:  ldc.i4.3
    IL_01ad:  ldstr      "WorldDirectory"
    IL_01b2:  ldarg.0
    IL_01b3:  ldfld      string Game.WorldInfo::DirectoryName
    IL_01b8:  newobj     instance void Game.AnalyticsParameter::.ctor(string,
                                                                      string)
    IL_01bd:  stelem     Game.AnalyticsParameter
    IL_01c2:  dup
    IL_01c3:  ldc.i4.4
    IL_01c4:  ldstr      "WorldName"
    IL_01c9:  ldarg.0
    IL_01ca:  ldfld      class Game.WorldSettings Game.WorldInfo::WorldSettings
    IL_01cf:  ldfld      string Game.WorldSettings::Name
    IL_01d4:  newobj     instance void Game.AnalyticsParameter::.ctor(string,
                                                                      string)
    IL_01d9:  stelem     Game.AnalyticsParameter
    IL_01de:  dup
    IL_01df:  ldc.i4.5
    IL_01e0:  ldstr      "WorldSeedString"
    IL_01e5:  ldarg.0
    IL_01e6:  ldfld      class Game.WorldSettings Game.WorldInfo::WorldSettings
    IL_01eb:  ldfld      string Game.WorldSettings::Seed
    IL_01f0:  newobj     instance void Game.AnalyticsParameter::.ctor(string,
                                                                      string)
    IL_01f5:  stelem     Game.AnalyticsParameter
    IL_01fa:  dup
    IL_01fb:  ldc.i4.6
    IL_01fc:  ldstr      "VisibilityRange"
    IL_0201:  call       int32 Game.SettingsManager::get_VisibilityRange()
    IL_0206:  stloc.s    V_6
    IL_0208:  ldloca.s   V_6
    IL_020a:  call       instance string [System.Runtime]System.Int32::ToString()
    IL_020f:  newobj     instance void Game.AnalyticsParameter::.ctor(string,
                                                                      string)
    IL_0214:  stelem     Game.AnalyticsParameter
    IL_0219:  dup
    IL_021a:  ldc.i4.7
    IL_021b:  ldstr      "Resolution"
    IL_0220:  call       valuetype Game.ResolutionMode Game.SettingsManager::get_ResolutionMode()
    IL_0225:  stloc.s    V_7
    IL_0227:  ldloca.s   V_7
    IL_0229:  constrained. Game.ResolutionMode
    IL_022f:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_0234:  newobj     instance void Game.AnalyticsParameter::.ctor(string,
                                                                      string)
    IL_0239:  stelem     Game.AnalyticsParameter
    IL_023e:  call       void Game.AnalyticsManager::LogEvent(string,
                                                              valuetype Game.AnalyticsParameter[])
    IL_0243:  call       void [System.Runtime]System.GC::Collect()
    IL_0248:  ret
  } // end of method GameManager::LoadProject

  .method public hidebysig static void  SaveProject(bool waitForCompletion,
                                                    bool showErrorDialog) cil managed
  {
    // 代码大小       222 (0xde)
    .maxstack  6
    .locals init (class Game.GameManager/'<>c__DisplayClass9_1' V_0,
             class Game.GameManager/'<>c__DisplayClass9_0' V_1,
             float64 V_2,
             float64 V_3)
    IL_0000:  newobj     instance void Game.GameManager/'<>c__DisplayClass9_1'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.1
    IL_0008:  stfld      bool Game.GameManager/'<>c__DisplayClass9_1'::showErrorDialog
    IL_000d:  ldsfld     class [EntitySystem]GameEntitySystem.Project Game.GameManager::m_project
    IL_0012:  brfalse    IL_00dd

    IL_0017:  newobj     instance void Game.GameManager/'<>c__DisplayClass9_0'::.ctor()
    IL_001c:  stloc.1
    IL_001d:  ldloc.1
    IL_001e:  ldloc.0
    IL_001f:  stfld      class Game.GameManager/'<>c__DisplayClass9_1' Game.GameManager/'<>c__DisplayClass9_0'::'CS$<>8__locals1'
    IL_0024:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_0029:  stloc.2
    IL_002a:  ldloc.1
    IL_002b:  ldsfld     class [EntitySystem]GameEntitySystem.Project Game.GameManager::m_project
    IL_0030:  callvirt   instance class [EntitySystem]GameEntitySystem.ProjectData [EntitySystem]GameEntitySystem.Project::Save()
    IL_0035:  stfld      class [EntitySystem]GameEntitySystem.ProjectData Game.GameManager/'<>c__DisplayClass9_0'::projectData
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
    IL_005c:  stfld      class Game.SubsystemGameInfo Game.GameManager/'<>c__DisplayClass9_0'::subsystemGameInfo
    IL_0061:  ldloc.1
    IL_0062:  ldc.i4.2
    IL_0063:  newarr     [System.Runtime]System.String
    IL_0068:  dup
    IL_0069:  ldc.i4.0
    IL_006a:  ldloc.1
    IL_006b:  ldfld      class Game.SubsystemGameInfo Game.GameManager/'<>c__DisplayClass9_0'::subsystemGameInfo
    IL_0070:  callvirt   instance string Game.SubsystemGameInfo::get_DirectoryName()
    IL_0075:  stelem.ref
    IL_0076:  dup
    IL_0077:  ldc.i4.1
    IL_0078:  ldstr      "Project.xml"
    IL_007d:  stelem.ref
    IL_007e:  call       string [Engine]Engine.Storage::CombinePaths(string[])
    IL_0083:  stfld      string Game.GameManager/'<>c__DisplayClass9_0'::projectFileName
    IL_0088:  ldloc.1
    IL_0089:  ldftn      instance void Game.GameManager/'<>c__DisplayClass9_0'::'<SaveProject>b__0'()
    IL_008f:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0094:  call       class [System.Threading.Tasks]System.Threading.Tasks.Task [System.Threading.Tasks]System.Threading.Tasks.Task::Run(class [System.Runtime]System.Action)
    IL_0099:  pop
    IL_009a:  ldarg.0
    IL_009b:  brfalse.s  IL_00a8

    IL_009d:  ldsfld     class [System.Threading]System.Threading.ManualResetEvent Game.GameManager::m_saveCompleted
    IL_00a2:  callvirt   instance bool [System.Runtime]System.Threading.WaitHandle::WaitOne()
    IL_00a7:  pop
    IL_00a8:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_00ad:  stloc.3
    IL_00ae:  ldstr      "Saved project, {0}ms"
    IL_00b3:  ldc.i4.1
    IL_00b4:  newarr     [System.Runtime]System.Object
    IL_00b9:  dup
    IL_00ba:  ldc.i4.0
    IL_00bb:  ldloc.3
    IL_00bc:  ldloc.2
    IL_00bd:  sub
    IL_00be:  ldc.r8     1000.
    IL_00c7:  mul
    IL_00c8:  call       float64 [Engine]Engine.MathUtils::Round(float64)
    IL_00cd:  box        [System.Runtime]System.Double
    IL_00d2:  stelem.ref
    IL_00d3:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_00d8:  call       void [Engine]Engine.Log::Verbose(string)
    IL_00dd:  ret
  } // end of method GameManager::SaveProject

  .method public hidebysig static void  UpdateProject() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldsfld     class [EntitySystem]GameEntitySystem.Project Game.GameManager::m_project
    IL_0005:  brfalse.s  IL_0011

    IL_0007:  ldsfld     class Game.SubsystemUpdate Game.GameManager::m_subsystemUpdate
    IL_000c:  callvirt   instance void Game.SubsystemUpdate::Update()
    IL_0011:  ret
  } // end of method GameManager::UpdateProject

  .method public hidebysig static void  DrawProject(class Game.GameViewWidget widget) cil managed
  {
    // 代码大小       27 (0x1b)
    .maxstack  8
    IL_0000:  ldsfld     class [EntitySystem]GameEntitySystem.Project Game.GameManager::m_project
    IL_0005:  brfalse.s  IL_001a

    IL_0007:  ldarg.0
    IL_0008:  callvirt   instance class Game.View Game.GameViewWidget::get_View()
    IL_000d:  brfalse.s  IL_001a

    IL_000f:  ldarg.0
    IL_0010:  callvirt   instance class Game.View Game.GameViewWidget::get_View()
    IL_0015:  callvirt   instance void Game.View::Draw()
    IL_001a:  ret
  } // end of method GameManager::DrawProject

  .method public hidebysig static void  DisposeProject() cil managed
  {
    // 代码大小       41 (0x29)
    .maxstack  8
    IL_0000:  ldsfld     class [EntitySystem]GameEntitySystem.Project Game.GameManager::m_project
    IL_0005:  brfalse.s  IL_0028

    IL_0007:  ldsfld     class [EntitySystem]GameEntitySystem.Project Game.GameManager::m_project
    IL_000c:  callvirt   instance void [EntitySystem]GameEntitySystem.Project::Dispose()
    IL_0011:  ldnull
    IL_0012:  stsfld     class [EntitySystem]GameEntitySystem.Project Game.GameManager::m_project
    IL_0017:  ldnull
    IL_0018:  stsfld     class Game.SubsystemUpdate Game.GameManager::m_subsystemUpdate
    IL_001d:  ldnull
    IL_001e:  stsfld     class Game.WorldInfo Game.GameManager::m_worldInfo
    IL_0023:  call       void [System.Runtime]System.GC::Collect()
    IL_0028:  ret
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