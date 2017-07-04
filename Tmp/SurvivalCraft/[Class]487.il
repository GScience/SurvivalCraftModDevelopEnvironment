.class public abstract auto ansi sealed beforefieldinit Game.SettingsManager
       extends [System.Runtime]System.Object
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.SettingsManager/'<>c' '<>9'
    .field public static class [System.Runtime]System.Action '<>9__5_0'
    .field public static class [System.Runtime]System.Func`2<class [System.Reflection]System.Reflection.PropertyInfo,bool> '<>9__208_0'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.SettingsManager/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.SettingsManager/'<>c' Game.SettingsManager/'<>c'::'<>9'
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

    .method assembly hidebysig instance void 
            '<Initialize>b__5_0'() cil managed
    {
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  call       void Game.SettingsManager::SaveSettings()
      IL_0005:  ret
    } // end of method '<>c'::'<Initialize>b__5_0'

    .method assembly hidebysig instance bool 
            '<SaveSettings>b__208_0'(class [System.Reflection]System.Reflection.PropertyInfo pi) cil managed
    {
      // 代码大小       40 (0x28)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  callvirt   instance class [System.Reflection]System.Reflection.MethodInfo [System.Reflection]System.Reflection.PropertyInfo::get_GetMethod()
      IL_0006:  callvirt   instance bool [System.Reflection]System.Reflection.MethodBase::get_IsStatic()
      IL_000b:  brfalse.s  IL_0026

      IL_000d:  ldarg.1
      IL_000e:  callvirt   instance class [System.Reflection]System.Reflection.MethodInfo [System.Reflection]System.Reflection.PropertyInfo::get_GetMethod()
      IL_0013:  callvirt   instance bool [System.Reflection]System.Reflection.MethodBase::get_IsPublic()
      IL_0018:  brfalse.s  IL_0026

      IL_001a:  ldarg.1
      IL_001b:  callvirt   instance class [System.Reflection]System.Reflection.MethodInfo [System.Reflection]System.Reflection.PropertyInfo::get_SetMethod()
      IL_0020:  callvirt   instance bool [System.Reflection]System.Reflection.MethodBase::get_IsPublic()
      IL_0025:  ret

      IL_0026:  ldc.i4.0
      IL_0027:  ret
    } // end of method '<>c'::'<SaveSettings>b__208_0'

  } // end of class '<>c'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass207_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public string name
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass207_0'::.ctor

    .method assembly hidebysig instance bool 
            '<LoadSettings>b__0'(class [System.Reflection]System.Reflection.PropertyInfo pi) cil managed
    {
      // 代码大小       59 (0x3b)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  callvirt   instance string [System.Reflection]System.Reflection.MemberInfo::get_Name()
      IL_0006:  ldarg.0
      IL_0007:  ldfld      string Game.SettingsManager/'<>c__DisplayClass207_0'::name
      IL_000c:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_0011:  brfalse.s  IL_0039

      IL_0013:  ldarg.1
      IL_0014:  callvirt   instance class [System.Reflection]System.Reflection.MethodInfo [System.Reflection]System.Reflection.PropertyInfo::get_GetMethod()
      IL_0019:  callvirt   instance bool [System.Reflection]System.Reflection.MethodBase::get_IsStatic()
      IL_001e:  brfalse.s  IL_0039

      IL_0020:  ldarg.1
      IL_0021:  callvirt   instance class [System.Reflection]System.Reflection.MethodInfo [System.Reflection]System.Reflection.PropertyInfo::get_GetMethod()
      IL_0026:  callvirt   instance bool [System.Reflection]System.Reflection.MethodBase::get_IsPublic()
      IL_002b:  brfalse.s  IL_0039

      IL_002d:  ldarg.1
      IL_002e:  callvirt   instance class [System.Reflection]System.Reflection.MethodInfo [System.Reflection]System.Reflection.PropertyInfo::get_SetMethod()
      IL_0033:  callvirt   instance bool [System.Reflection]System.Reflection.MethodBase::get_IsPublic()
      IL_0038:  ret

      IL_0039:  ldc.i4.0
      IL_003a:  ret
    } // end of method '<>c__DisplayClass207_0'::'<LoadSettings>b__0'

  } // end of class '<>c__DisplayClass207_0'

  .field private static literal string m_settingsFileName = "data:/Settings.xml"
  .field private static float32 m_soundsVolume
  .field private static float32 m_musicVolume
  .field private static float32 m_brightness
  .field private static valuetype Game.ResolutionMode m_resolutionMode
  .field private static class [System.Runtime]System.Action`1<string> SettingChanged
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static int32 '<VisibilityRange>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static valuetype Game.ViewAngleMode '<ViewAngleMode>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static valuetype Game.SkyRenderingMode '<SkyRenderingMode>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static bool '<ObjectsShadowsEnabled>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static int32 '<PresentationInterval>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static bool '<ShowGuiInScreenshots>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static bool '<ShowLogoInScreenshots>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static valuetype Game.ScreenshotSize '<ScreenshotSize>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static valuetype Game.GuiSize '<GuiSize>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static bool '<HideMoveLookPads>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static bool '<InvisibleModelsWorkaround>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static string '<BlocksTextureFileName>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static valuetype Game.MoveControlMode '<MoveControlMode>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static valuetype Game.LookControlMode '<LookControlMode>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static bool '<LeftHandedLayout>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static bool '<FlipVerticalAxis>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static float32 '<MoveSensitivity>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static float32 '<LookSensitivity>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static float32 '<GamepadDeadZone>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static float32 '<GamepadCursorSpeed>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static float32 '<CreativeDigTime>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static float32 '<CreativeReach>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static float32 '<MinimumHoldDuration>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static float32 '<MinimumDragDistance>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static bool '<AutoJump>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static bool '<HorizontalCreativeFlight>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static string '<DropboxAccessToken>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static string '<MotdUpdateUrl>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static string '<MotdBackupUpdateUrl>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static bool '<MotdUseBackupUrl>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static float64 '<MotdUpdatePeriodHours>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static valuetype [System.Runtime]System.DateTime '<MotdLastUpdateTime>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static string '<MotdLastDownloadedData>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static string '<UserId>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static string '<LastLaunchedVersion>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static valuetype Game.CommunityContentMode '<CommunityContentMode>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static bool '<MultithreadedTerrainUpdate>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static int32 '<IsolatedStorageMigrationCounter>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static bool '<DisplayFpsCounter>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static int32 '<NewYearCelebrationLastYear>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static valuetype Game.ScreenLayout '<ScreenLayout1>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static valuetype Game.ScreenLayout '<ScreenLayout2>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static valuetype Game.ScreenLayout '<ScreenLayout3>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static valuetype Game.ScreenLayout '<ScreenLayout4>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static bool '<UpsideDownLayout>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig static void  Initialize() cil managed
  {
    // 代码大小       516 (0x204)
    .maxstack  2
    IL_0000:  ldc.i4     0x80
    IL_0005:  call       void Game.SettingsManager::set_VisibilityRange(int32)
    IL_000a:  ldc.i4.2
    IL_000b:  stsfld     valuetype Game.ResolutionMode Game.SettingsManager::m_resolutionMode
    IL_0010:  ldc.i4.0
    IL_0011:  call       void Game.SettingsManager::set_ViewAngleMode(valuetype Game.ViewAngleMode)
    IL_0016:  ldc.i4.0
    IL_0017:  call       void Game.SettingsManager::set_SkyRenderingMode(valuetype Game.SkyRenderingMode)
    IL_001c:  ldc.i4.1
    IL_001d:  call       void Game.SettingsManager::set_ObjectsShadowsEnabled(bool)
    IL_0022:  ldc.r4     0.5
    IL_0027:  stsfld     float32 Game.SettingsManager::m_soundsVolume
    IL_002c:  ldc.r4     0.5
    IL_0031:  stsfld     float32 Game.SettingsManager::m_musicVolume
    IL_0036:  ldc.r4     0.5
    IL_003b:  stsfld     float32 Game.SettingsManager::m_brightness
    IL_0040:  ldc.i4.1
    IL_0041:  call       void Game.SettingsManager::set_PresentationInterval(int32)
    IL_0046:  ldc.i4.0
    IL_0047:  call       void Game.SettingsManager::set_ShowGuiInScreenshots(bool)
    IL_004c:  ldc.i4.1
    IL_004d:  call       void Game.SettingsManager::set_ShowLogoInScreenshots(bool)
    IL_0052:  ldc.i4.0
    IL_0053:  call       void Game.SettingsManager::set_ScreenshotSize(valuetype Game.ScreenshotSize)
    IL_0058:  ldc.i4.0
    IL_0059:  call       void Game.SettingsManager::set_MoveControlMode(valuetype Game.MoveControlMode)
    IL_005e:  ldc.i4.0
    IL_005f:  call       void Game.SettingsManager::set_HideMoveLookPads(bool)
    IL_0064:  ldc.i4.0
    IL_0065:  call       void Game.SettingsManager::set_InvisibleModelsWorkaround(bool)
    IL_006a:  ldsfld     string [System.Runtime]System.String::Empty
    IL_006f:  call       void Game.SettingsManager::set_BlocksTextureFileName(string)
    IL_0074:  ldc.i4.1
    IL_0075:  call       void Game.SettingsManager::set_LookControlMode(valuetype Game.LookControlMode)
    IL_007a:  ldc.i4.0
    IL_007b:  call       void Game.SettingsManager::set_FlipVerticalAxis(bool)
    IL_0080:  ldc.r4     0.5
    IL_0085:  call       void Game.SettingsManager::set_MoveSensitivity(float32)
    IL_008a:  ldc.r4     0.5
    IL_008f:  call       void Game.SettingsManager::set_LookSensitivity(float32)
    IL_0094:  ldc.r4     0.16
    IL_0099:  call       void Game.SettingsManager::set_GamepadDeadZone(float32)
    IL_009e:  ldc.r4     1.
    IL_00a3:  call       void Game.SettingsManager::set_GamepadCursorSpeed(float32)
    IL_00a8:  ldc.r4     0.2
    IL_00ad:  call       void Game.SettingsManager::set_CreativeDigTime(float32)
    IL_00b2:  ldc.r4     7.5
    IL_00b7:  call       void Game.SettingsManager::set_CreativeReach(float32)
    IL_00bc:  ldc.r4     0.5
    IL_00c1:  call       void Game.SettingsManager::set_MinimumHoldDuration(float32)
    IL_00c6:  ldc.r4     10.
    IL_00cb:  call       void Game.SettingsManager::set_MinimumDragDistance(float32)
    IL_00d0:  ldc.i4.1
    IL_00d1:  call       void Game.SettingsManager::set_AutoJump(bool)
    IL_00d6:  ldc.i4.0
    IL_00d7:  call       void Game.SettingsManager::set_HorizontalCreativeFlight(bool)
    IL_00dc:  ldsfld     string [System.Runtime]System.String::Empty
    IL_00e1:  call       void Game.SettingsManager::set_DropboxAccessToken(string)
    IL_00e6:  ldstr      "https://scresdir.appspot.com/motd/Motd-{0}.zip"
    IL_00eb:  call       void Game.SettingsManager::set_MotdUpdateUrl(string)
    IL_00f0:  ldstr      "https://scresdir.appspot.com/motd/Motd-{0}.zip"
    IL_00f5:  call       void Game.SettingsManager::set_MotdBackupUpdateUrl(string)
    IL_00fa:  ldc.r8     12.
    IL_0103:  call       void Game.SettingsManager::set_MotdUpdatePeriodHours(float64)
    IL_0108:  ldsfld     valuetype [System.Runtime]System.DateTime [System.Runtime]System.DateTime::MinValue
    IL_010d:  call       void Game.SettingsManager::set_MotdLastUpdateTime(valuetype [System.Runtime]System.DateTime)
    IL_0112:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0117:  call       void Game.SettingsManager::set_MotdLastDownloadedData(string)
    IL_011c:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0121:  call       void Game.SettingsManager::set_UserId(string)
    IL_0126:  ldsfld     string [System.Runtime]System.String::Empty
    IL_012b:  call       void Game.SettingsManager::set_LastLaunchedVersion(string)
    IL_0130:  ldc.i4.2
    IL_0131:  call       void Game.SettingsManager::set_CommunityContentMode(valuetype Game.CommunityContentMode)
    IL_0136:  ldc.i4.1
    IL_0137:  call       void Game.SettingsManager::set_MultithreadedTerrainUpdate(bool)
    IL_013c:  ldc.i4     0x7df
    IL_0141:  call       void Game.SettingsManager::set_NewYearCelebrationLastYear(int32)
    IL_0146:  ldc.i4.0
    IL_0147:  call       void Game.SettingsManager::set_ScreenLayout1(valuetype Game.ScreenLayout)
    IL_014c:  call       valuetype [Engine]Engine.Point2 [Engine]Engine.Window::get_ScreenSize()
    IL_0151:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0156:  conv.r4
    IL_0157:  call       valuetype [Engine]Engine.Point2 [Engine]Engine.Window::get_ScreenSize()
    IL_015c:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0161:  conv.r4
    IL_0162:  div
    IL_0163:  ldc.r4     1.3333334
    IL_0168:  bgt.s      IL_016d

    IL_016a:  ldc.i4.2
    IL_016b:  br.s       IL_016e

    IL_016d:  ldc.i4.1
    IL_016e:  call       void Game.SettingsManager::set_ScreenLayout2(valuetype Game.ScreenLayout)
    IL_0173:  call       valuetype [Engine]Engine.Point2 [Engine]Engine.Window::get_ScreenSize()
    IL_0178:  ldfld      int32 [Engine]Engine.Point2::X
    IL_017d:  conv.r4
    IL_017e:  call       valuetype [Engine]Engine.Point2 [Engine]Engine.Window::get_ScreenSize()
    IL_0183:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0188:  conv.r4
    IL_0189:  div
    IL_018a:  ldc.r4     1.3333334
    IL_018f:  bgt.s      IL_0194

    IL_0191:  ldc.i4.5
    IL_0192:  br.s       IL_0195

    IL_0194:  ldc.i4.4
    IL_0195:  call       void Game.SettingsManager::set_ScreenLayout3(valuetype Game.ScreenLayout)
    IL_019a:  ldc.i4.8
    IL_019b:  call       void Game.SettingsManager::set_ScreenLayout4(valuetype Game.ScreenLayout)
    IL_01a0:  ldc.i4.1
    IL_01a1:  call       void Game.SettingsManager::set_GuiSize(valuetype Game.GuiSize)
    IL_01a6:  ldc.i4.1
    IL_01a7:  call       void Game.SettingsManager::set_HorizontalCreativeFlight(bool)
    IL_01ac:  call       void Game.SettingsManager::LoadSettings()
    IL_01b1:  call       string Game.SettingsManager::get_LastLaunchedVersion()
    IL_01b6:  ldstr      "1.29"
    IL_01bb:  call       int32 Game.VersionsManager::CompareVersions(string,
                                                                     string)
    IL_01c0:  ldc.i4.0
    IL_01c1:  pop
    IL_01c2:  pop
    IL_01c3:  call       string Game.SettingsManager::get_LastLaunchedVersion()
    IL_01c8:  ldstr      "2.1"
    IL_01cd:  call       int32 Game.VersionsManager::CompareVersions(string,
                                                                     string)
    IL_01d2:  ldc.i4.0
    IL_01d3:  bge.s      IL_01df

    IL_01d5:  ldc.r4     10.
    IL_01da:  call       void Game.SettingsManager::set_MinimumDragDistance(float32)
    IL_01df:  ldsfld     class [System.Runtime]System.Action Game.SettingsManager/'<>c'::'<>9__5_0'
    IL_01e4:  dup
    IL_01e5:  brtrue.s   IL_01fe

    IL_01e7:  pop
    IL_01e8:  ldsfld     class Game.SettingsManager/'<>c' Game.SettingsManager/'<>c'::'<>9'
    IL_01ed:  ldftn      instance void Game.SettingsManager/'<>c'::'<Initialize>b__5_0'()
    IL_01f3:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_01f8:  dup
    IL_01f9:  stsfld     class [System.Runtime]System.Action Game.SettingsManager/'<>c'::'<>9__5_0'
    IL_01fe:  call       void [Engine]Engine.Window::add_Deactivated(class [System.Runtime]System.Action)
    IL_0203:  ret
  } // end of method SettingsManager::Initialize

  .method public hidebysig specialname static 
          void  add_SettingChanged(class [System.Runtime]System.Action`1<string> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       39 (0x27)
    .maxstack  3
    .locals init (class [System.Runtime]System.Action`1<string> V_0,
             class [System.Runtime]System.Action`1<string> V_1,
             class [System.Runtime]System.Action`1<string> V_2)
    IL_0000:  ldsfld     class [System.Runtime]System.Action`1<string> Game.SettingsManager::SettingChanged
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  stloc.1
    IL_0008:  ldloc.1
    IL_0009:  ldarg.0
    IL_000a:  call       class [System.Runtime]System.Delegate [System.Runtime]System.Delegate::Combine(class [System.Runtime]System.Delegate,
                                                                                                        class [System.Runtime]System.Delegate)
    IL_000f:  castclass  class [System.Runtime]System.Action`1<string>
    IL_0014:  stloc.2
    IL_0015:  ldsflda    class [System.Runtime]System.Action`1<string> Game.SettingsManager::SettingChanged
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
  } // end of method SettingsManager::add_SettingChanged

  .method public hidebysig specialname static 
          void  remove_SettingChanged(class [System.Runtime]System.Action`1<string> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       39 (0x27)
    .maxstack  3
    .locals init (class [System.Runtime]System.Action`1<string> V_0,
             class [System.Runtime]System.Action`1<string> V_1,
             class [System.Runtime]System.Action`1<string> V_2)
    IL_0000:  ldsfld     class [System.Runtime]System.Action`1<string> Game.SettingsManager::SettingChanged
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  stloc.1
    IL_0008:  ldloc.1
    IL_0009:  ldarg.0
    IL_000a:  call       class [System.Runtime]System.Delegate [System.Runtime]System.Delegate::Remove(class [System.Runtime]System.Delegate,
                                                                                                       class [System.Runtime]System.Delegate)
    IL_000f:  castclass  class [System.Runtime]System.Action`1<string>
    IL_0014:  stloc.2
    IL_0015:  ldsflda    class [System.Runtime]System.Action`1<string> Game.SettingsManager::SettingChanged
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
  } // end of method SettingsManager::remove_SettingChanged

  .method public hidebysig specialname static 
          float32  get_SoundsVolume() cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     float32 Game.SettingsManager::m_soundsVolume
    IL_0005:  ret
  } // end of method SettingsManager::get_SoundsVolume

  .method public hidebysig specialname static 
          void  set_SoundsVolume(float32 'value') cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0006:  stsfld     float32 Game.SettingsManager::m_soundsVolume
    IL_000b:  ret
  } // end of method SettingsManager::set_SoundsVolume

  .method public hidebysig specialname static 
          float32  get_MusicVolume() cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     float32 Game.SettingsManager::m_musicVolume
    IL_0005:  ret
  } // end of method SettingsManager::get_MusicVolume

  .method public hidebysig specialname static 
          void  set_MusicVolume(float32 'value') cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0006:  stsfld     float32 Game.SettingsManager::m_musicVolume
    IL_000b:  ret
  } // end of method SettingsManager::set_MusicVolume

  .method public hidebysig specialname static 
          int32  get_VisibilityRange() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     int32 Game.SettingsManager::'<VisibilityRange>k__BackingField'
    IL_0005:  ret
  } // end of method SettingsManager::get_VisibilityRange

  .method public hidebysig specialname static 
          void  set_VisibilityRange(int32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  stsfld     int32 Game.SettingsManager::'<VisibilityRange>k__BackingField'
    IL_0006:  ret
  } // end of method SettingsManager::set_VisibilityRange

  .method public hidebysig specialname static 
          valuetype Game.ResolutionMode  get_ResolutionMode() cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     valuetype Game.ResolutionMode Game.SettingsManager::m_resolutionMode
    IL_0005:  ret
  } // end of method SettingsManager::get_ResolutionMode

  .method public hidebysig specialname static 
          void  set_ResolutionMode(valuetype Game.ResolutionMode 'value') cil managed
  {
    // 代码大小       37 (0x25)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldsfld     valuetype Game.ResolutionMode Game.SettingsManager::m_resolutionMode
    IL_0006:  beq.s      IL_0024

    IL_0008:  ldarg.0
    IL_0009:  stsfld     valuetype Game.ResolutionMode Game.SettingsManager::m_resolutionMode
    IL_000e:  ldsfld     class [System.Runtime]System.Action`1<string> Game.SettingsManager::SettingChanged
    IL_0013:  brfalse.s  IL_0024

    IL_0015:  ldsfld     class [System.Runtime]System.Action`1<string> Game.SettingsManager::SettingChanged
    IL_001a:  ldstr      "ResolutionMode"
    IL_001f:  callvirt   instance void class [System.Runtime]System.Action`1<string>::Invoke(!0)
    IL_0024:  ret
  } // end of method SettingsManager::set_ResolutionMode

  .method public hidebysig specialname static 
          valuetype Game.ViewAngleMode  get_ViewAngleMode() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     valuetype Game.ViewAngleMode Game.SettingsManager::'<ViewAngleMode>k__BackingField'
    IL_0005:  ret
  } // end of method SettingsManager::get_ViewAngleMode

  .method public hidebysig specialname static 
          void  set_ViewAngleMode(valuetype Game.ViewAngleMode 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  stsfld     valuetype Game.ViewAngleMode Game.SettingsManager::'<ViewAngleMode>k__BackingField'
    IL_0006:  ret
  } // end of method SettingsManager::set_ViewAngleMode

  .method public hidebysig specialname static 
          valuetype Game.SkyRenderingMode 
          get_SkyRenderingMode() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     valuetype Game.SkyRenderingMode Game.SettingsManager::'<SkyRenderingMode>k__BackingField'
    IL_0005:  ret
  } // end of method SettingsManager::get_SkyRenderingMode

  .method public hidebysig specialname static 
          void  set_SkyRenderingMode(valuetype Game.SkyRenderingMode 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  stsfld     valuetype Game.SkyRenderingMode Game.SettingsManager::'<SkyRenderingMode>k__BackingField'
    IL_0006:  ret
  } // end of method SettingsManager::set_SkyRenderingMode

  .method public hidebysig specialname static 
          bool  get_ObjectsShadowsEnabled() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     bool Game.SettingsManager::'<ObjectsShadowsEnabled>k__BackingField'
    IL_0005:  ret
  } // end of method SettingsManager::get_ObjectsShadowsEnabled

  .method public hidebysig specialname static 
          void  set_ObjectsShadowsEnabled(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  stsfld     bool Game.SettingsManager::'<ObjectsShadowsEnabled>k__BackingField'
    IL_0006:  ret
  } // end of method SettingsManager::set_ObjectsShadowsEnabled

  .method public hidebysig specialname static 
          float32  get_Brightness() cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     float32 Game.SettingsManager::m_brightness
    IL_0005:  ret
  } // end of method SettingsManager::get_Brightness

  .method public hidebysig specialname static 
          void  set_Brightness(float32 'value') cil managed
  {
    // 代码大小       55 (0x37)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.r4     0.0
    IL_0006:  ldc.r4     1.
    IL_000b:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_0010:  starg.s    'value'
    IL_0012:  ldarg.0
    IL_0013:  ldsfld     float32 Game.SettingsManager::m_brightness
    IL_0018:  beq.s      IL_0036

    IL_001a:  ldarg.0
    IL_001b:  stsfld     float32 Game.SettingsManager::m_brightness
    IL_0020:  ldsfld     class [System.Runtime]System.Action`1<string> Game.SettingsManager::SettingChanged
    IL_0025:  brfalse.s  IL_0036

    IL_0027:  ldsfld     class [System.Runtime]System.Action`1<string> Game.SettingsManager::SettingChanged
    IL_002c:  ldstr      "Brightness"
    IL_0031:  callvirt   instance void class [System.Runtime]System.Action`1<string>::Invoke(!0)
    IL_0036:  ret
  } // end of method SettingsManager::set_Brightness

  .method public hidebysig specialname static 
          int32  get_PresentationInterval() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     int32 Game.SettingsManager::'<PresentationInterval>k__BackingField'
    IL_0005:  ret
  } // end of method SettingsManager::get_PresentationInterval

  .method public hidebysig specialname static 
          void  set_PresentationInterval(int32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  stsfld     int32 Game.SettingsManager::'<PresentationInterval>k__BackingField'
    IL_0006:  ret
  } // end of method SettingsManager::set_PresentationInterval

  .method public hidebysig specialname static 
          bool  get_ShowGuiInScreenshots() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     bool Game.SettingsManager::'<ShowGuiInScreenshots>k__BackingField'
    IL_0005:  ret
  } // end of method SettingsManager::get_ShowGuiInScreenshots

  .method public hidebysig specialname static 
          void  set_ShowGuiInScreenshots(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  stsfld     bool Game.SettingsManager::'<ShowGuiInScreenshots>k__BackingField'
    IL_0006:  ret
  } // end of method SettingsManager::set_ShowGuiInScreenshots

  .method public hidebysig specialname static 
          bool  get_ShowLogoInScreenshots() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     bool Game.SettingsManager::'<ShowLogoInScreenshots>k__BackingField'
    IL_0005:  ret
  } // end of method SettingsManager::get_ShowLogoInScreenshots

  .method public hidebysig specialname static 
          void  set_ShowLogoInScreenshots(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  stsfld     bool Game.SettingsManager::'<ShowLogoInScreenshots>k__BackingField'
    IL_0006:  ret
  } // end of method SettingsManager::set_ShowLogoInScreenshots

  .method public hidebysig specialname static 
          valuetype Game.ScreenshotSize  get_ScreenshotSize() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     valuetype Game.ScreenshotSize Game.SettingsManager::'<ScreenshotSize>k__BackingField'
    IL_0005:  ret
  } // end of method SettingsManager::get_ScreenshotSize

  .method public hidebysig specialname static 
          void  set_ScreenshotSize(valuetype Game.ScreenshotSize 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  stsfld     valuetype Game.ScreenshotSize Game.SettingsManager::'<ScreenshotSize>k__BackingField'
    IL_0006:  ret
  } // end of method SettingsManager::set_ScreenshotSize

  .method public hidebysig specialname static 
          valuetype Game.GuiSize  get_GuiSize() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     valuetype Game.GuiSize Game.SettingsManager::'<GuiSize>k__BackingField'
    IL_0005:  ret
  } // end of method SettingsManager::get_GuiSize

  .method public hidebysig specialname static 
          void  set_GuiSize(valuetype Game.GuiSize 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  stsfld     valuetype Game.GuiSize Game.SettingsManager::'<GuiSize>k__BackingField'
    IL_0006:  ret
  } // end of method SettingsManager::set_GuiSize

  .method public hidebysig specialname static 
          bool  get_HideMoveLookPads() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     bool Game.SettingsManager::'<HideMoveLookPads>k__BackingField'
    IL_0005:  ret
  } // end of method SettingsManager::get_HideMoveLookPads

  .method public hidebysig specialname static 
          void  set_HideMoveLookPads(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  stsfld     bool Game.SettingsManager::'<HideMoveLookPads>k__BackingField'
    IL_0006:  ret
  } // end of method SettingsManager::set_HideMoveLookPads

  .method public hidebysig specialname static 
          bool  get_InvisibleModelsWorkaround() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     bool Game.SettingsManager::'<InvisibleModelsWorkaround>k__BackingField'
    IL_0005:  ret
  } // end of method SettingsManager::get_InvisibleModelsWorkaround

  .method public hidebysig specialname static 
          void  set_InvisibleModelsWorkaround(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  stsfld     bool Game.SettingsManager::'<InvisibleModelsWorkaround>k__BackingField'
    IL_0006:  ret
  } // end of method SettingsManager::set_InvisibleModelsWorkaround

  .method public hidebysig specialname static 
          string  get_BlocksTextureFileName() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     string Game.SettingsManager::'<BlocksTextureFileName>k__BackingField'
    IL_0005:  ret
  } // end of method SettingsManager::get_BlocksTextureFileName

  .method public hidebysig specialname static 
          void  set_BlocksTextureFileName(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  stsfld     string Game.SettingsManager::'<BlocksTextureFileName>k__BackingField'
    IL_0006:  ret
  } // end of method SettingsManager::set_BlocksTextureFileName

  .method public hidebysig specialname static 
          valuetype Game.MoveControlMode 
          get_MoveControlMode() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     valuetype Game.MoveControlMode Game.SettingsManager::'<MoveControlMode>k__BackingField'
    IL_0005:  ret
  } // end of method SettingsManager::get_MoveControlMode

  .method public hidebysig specialname static 
          void  set_MoveControlMode(valuetype Game.MoveControlMode 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  stsfld     valuetype Game.MoveControlMode Game.SettingsManager::'<MoveControlMode>k__BackingField'
    IL_0006:  ret
  } // end of method SettingsManager::set_MoveControlMode

  .method public hidebysig specialname static 
          valuetype Game.LookControlMode 
          get_LookControlMode() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     valuetype Game.LookControlMode Game.SettingsManager::'<LookControlMode>k__BackingField'
    IL_0005:  ret
  } // end of method SettingsManager::get_LookControlMode

  .method public hidebysig specialname static 
          void  set_LookControlMode(valuetype Game.LookControlMode 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  stsfld     valuetype Game.LookControlMode Game.SettingsManager::'<LookControlMode>k__BackingField'
    IL_0006:  ret
  } // end of method SettingsManager::set_LookControlMode

  .method public hidebysig specialname static 
          bool  get_LeftHandedLayout() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     bool Game.SettingsManager::'<LeftHandedLayout>k__BackingField'
    IL_0005:  ret
  } // end of method SettingsManager::get_LeftHandedLayout

  .method public hidebysig specialname static 
          void  set_LeftHandedLayout(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  stsfld     bool Game.SettingsManager::'<LeftHandedLayout>k__BackingField'
    IL_0006:  ret
  } // end of method SettingsManager::set_LeftHandedLayout

  .method public hidebysig specialname static 
          bool  get_FlipVerticalAxis() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     bool Game.SettingsManager::'<FlipVerticalAxis>k__BackingField'
    IL_0005:  ret
  } // end of method SettingsManager::get_FlipVerticalAxis

  .method public hidebysig specialname static 
          void  set_FlipVerticalAxis(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  stsfld     bool Game.SettingsManager::'<FlipVerticalAxis>k__BackingField'
    IL_0006:  ret
  } // end of method SettingsManager::set_FlipVerticalAxis

  .method public hidebysig specialname static 
          float32  get_MoveSensitivity() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     float32 Game.SettingsManager::'<MoveSensitivity>k__BackingField'
    IL_0005:  ret
  } // end of method SettingsManager::get_MoveSensitivity

  .method public hidebysig specialname static 
          void  set_MoveSensitivity(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  stsfld     float32 Game.SettingsManager::'<MoveSensitivity>k__BackingField'
    IL_0006:  ret
  } // end of method SettingsManager::set_MoveSensitivity

  .method public hidebysig specialname static 
          float32  get_LookSensitivity() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     float32 Game.SettingsManager::'<LookSensitivity>k__BackingField'
    IL_0005:  ret
  } // end of method SettingsManager::get_LookSensitivity

  .method public hidebysig specialname static 
          void  set_LookSensitivity(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  stsfld     float32 Game.SettingsManager::'<LookSensitivity>k__BackingField'
    IL_0006:  ret
  } // end of method SettingsManager::set_LookSensitivity

  .method public hidebysig specialname static 
          float32  get_GamepadDeadZone() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     float32 Game.SettingsManager::'<GamepadDeadZone>k__BackingField'
    IL_0005:  ret
  } // end of method SettingsManager::get_GamepadDeadZone

  .method public hidebysig specialname static 
          void  set_GamepadDeadZone(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  stsfld     float32 Game.SettingsManager::'<GamepadDeadZone>k__BackingField'
    IL_0006:  ret
  } // end of method SettingsManager::set_GamepadDeadZone

  .method public hidebysig specialname static 
          float32  get_GamepadCursorSpeed() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     float32 Game.SettingsManager::'<GamepadCursorSpeed>k__BackingField'
    IL_0005:  ret
  } // end of method SettingsManager::get_GamepadCursorSpeed

  .method public hidebysig specialname static 
          void  set_GamepadCursorSpeed(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  stsfld     float32 Game.SettingsManager::'<GamepadCursorSpeed>k__BackingField'
    IL_0006:  ret
  } // end of method SettingsManager::set_GamepadCursorSpeed

  .method public hidebysig specialname static 
          float32  get_CreativeDigTime() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     float32 Game.SettingsManager::'<CreativeDigTime>k__BackingField'
    IL_0005:  ret
  } // end of method SettingsManager::get_CreativeDigTime

  .method public hidebysig specialname static 
          void  set_CreativeDigTime(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  stsfld     float32 Game.SettingsManager::'<CreativeDigTime>k__BackingField'
    IL_0006:  ret
  } // end of method SettingsManager::set_CreativeDigTime

  .method public hidebysig specialname static 
          float32  get_CreativeReach() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     float32 Game.SettingsManager::'<CreativeReach>k__BackingField'
    IL_0005:  ret
  } // end of method SettingsManager::get_CreativeReach

  .method public hidebysig specialname static 
          void  set_CreativeReach(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  stsfld     float32 Game.SettingsManager::'<CreativeReach>k__BackingField'
    IL_0006:  ret
  } // end of method SettingsManager::set_CreativeReach

  .method public hidebysig specialname static 
          float32  get_MinimumHoldDuration() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     float32 Game.SettingsManager::'<MinimumHoldDuration>k__BackingField'
    IL_0005:  ret
  } // end of method SettingsManager::get_MinimumHoldDuration

  .method public hidebysig specialname static 
          void  set_MinimumHoldDuration(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  stsfld     float32 Game.SettingsManager::'<MinimumHoldDuration>k__BackingField'
    IL_0006:  ret
  } // end of method SettingsManager::set_MinimumHoldDuration

  .method public hidebysig specialname static 
          float32  get_MinimumDragDistance() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     float32 Game.SettingsManager::'<MinimumDragDistance>k__BackingField'
    IL_0005:  ret
  } // end of method SettingsManager::get_MinimumDragDistance

  .method public hidebysig specialname static 
          void  set_MinimumDragDistance(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  stsfld     float32 Game.SettingsManager::'<MinimumDragDistance>k__BackingField'
    IL_0006:  ret
  } // end of method SettingsManager::set_MinimumDragDistance

  .method public hidebysig specialname static 
          bool  get_AutoJump() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     bool Game.SettingsManager::'<AutoJump>k__BackingField'
    IL_0005:  ret
  } // end of method SettingsManager::get_AutoJump

  .method public hidebysig specialname static 
          void  set_AutoJump(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  stsfld     bool Game.SettingsManager::'<AutoJump>k__BackingField'
    IL_0006:  ret
  } // end of method SettingsManager::set_AutoJump

  .method public hidebysig specialname static 
          bool  get_HorizontalCreativeFlight() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     bool Game.SettingsManager::'<HorizontalCreativeFlight>k__BackingField'
    IL_0005:  ret
  } // end of method SettingsManager::get_HorizontalCreativeFlight

  .method public hidebysig specialname static 
          void  set_HorizontalCreativeFlight(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  stsfld     bool Game.SettingsManager::'<HorizontalCreativeFlight>k__BackingField'
    IL_0006:  ret
  } // end of method SettingsManager::set_HorizontalCreativeFlight

  .method public hidebysig specialname static 
          string  get_DropboxAccessToken() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     string Game.SettingsManager::'<DropboxAccessToken>k__BackingField'
    IL_0005:  ret
  } // end of method SettingsManager::get_DropboxAccessToken

  .method public hidebysig specialname static 
          void  set_DropboxAccessToken(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  stsfld     string Game.SettingsManager::'<DropboxAccessToken>k__BackingField'
    IL_0006:  ret
  } // end of method SettingsManager::set_DropboxAccessToken

  .method public hidebysig specialname static 
          string  get_MotdUpdateUrl() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     string Game.SettingsManager::'<MotdUpdateUrl>k__BackingField'
    IL_0005:  ret
  } // end of method SettingsManager::get_MotdUpdateUrl

  .method public hidebysig specialname static 
          void  set_MotdUpdateUrl(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  stsfld     string Game.SettingsManager::'<MotdUpdateUrl>k__BackingField'
    IL_0006:  ret
  } // end of method SettingsManager::set_MotdUpdateUrl

  .method public hidebysig specialname static 
          string  get_MotdBackupUpdateUrl() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     string Game.SettingsManager::'<MotdBackupUpdateUrl>k__BackingField'
    IL_0005:  ret
  } // end of method SettingsManager::get_MotdBackupUpdateUrl

  .method public hidebysig specialname static 
          void  set_MotdBackupUpdateUrl(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  stsfld     string Game.SettingsManager::'<MotdBackupUpdateUrl>k__BackingField'
    IL_0006:  ret
  } // end of method SettingsManager::set_MotdBackupUpdateUrl

  .method public hidebysig specialname static 
          bool  get_MotdUseBackupUrl() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     bool Game.SettingsManager::'<MotdUseBackupUrl>k__BackingField'
    IL_0005:  ret
  } // end of method SettingsManager::get_MotdUseBackupUrl

  .method public hidebysig specialname static 
          void  set_MotdUseBackupUrl(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  stsfld     bool Game.SettingsManager::'<MotdUseBackupUrl>k__BackingField'
    IL_0006:  ret
  } // end of method SettingsManager::set_MotdUseBackupUrl

  .method public hidebysig specialname static 
          float64  get_MotdUpdatePeriodHours() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     float64 Game.SettingsManager::'<MotdUpdatePeriodHours>k__BackingField'
    IL_0005:  ret
  } // end of method SettingsManager::get_MotdUpdatePeriodHours

  .method public hidebysig specialname static 
          void  set_MotdUpdatePeriodHours(float64 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  stsfld     float64 Game.SettingsManager::'<MotdUpdatePeriodHours>k__BackingField'
    IL_0006:  ret
  } // end of method SettingsManager::set_MotdUpdatePeriodHours

  .method public hidebysig specialname static 
          valuetype [System.Runtime]System.DateTime 
          get_MotdLastUpdateTime() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     valuetype [System.Runtime]System.DateTime Game.SettingsManager::'<MotdLastUpdateTime>k__BackingField'
    IL_0005:  ret
  } // end of method SettingsManager::get_MotdLastUpdateTime

  .method public hidebysig specialname static 
          void  set_MotdLastUpdateTime(valuetype [System.Runtime]System.DateTime 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  stsfld     valuetype [System.Runtime]System.DateTime Game.SettingsManager::'<MotdLastUpdateTime>k__BackingField'
    IL_0006:  ret
  } // end of method SettingsManager::set_MotdLastUpdateTime

  .method public hidebysig specialname static 
          string  get_MotdLastDownloadedData() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     string Game.SettingsManager::'<MotdLastDownloadedData>k__BackingField'
    IL_0005:  ret
  } // end of method SettingsManager::get_MotdLastDownloadedData

  .method public hidebysig specialname static 
          void  set_MotdLastDownloadedData(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  stsfld     string Game.SettingsManager::'<MotdLastDownloadedData>k__BackingField'
    IL_0006:  ret
  } // end of method SettingsManager::set_MotdLastDownloadedData

  .method public hidebysig specialname static 
          string  get_UserId() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     string Game.SettingsManager::'<UserId>k__BackingField'
    IL_0005:  ret
  } // end of method SettingsManager::get_UserId

  .method public hidebysig specialname static 
          void  set_UserId(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  stsfld     string Game.SettingsManager::'<UserId>k__BackingField'
    IL_0006:  ret
  } // end of method SettingsManager::set_UserId

  .method public hidebysig specialname static 
          string  get_LastLaunchedVersion() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     string Game.SettingsManager::'<LastLaunchedVersion>k__BackingField'
    IL_0005:  ret
  } // end of method SettingsManager::get_LastLaunchedVersion

  .method public hidebysig specialname static 
          void  set_LastLaunchedVersion(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  stsfld     string Game.SettingsManager::'<LastLaunchedVersion>k__BackingField'
    IL_0006:  ret
  } // end of method SettingsManager::set_LastLaunchedVersion

  .method public hidebysig specialname static 
          valuetype Game.CommunityContentMode 
          get_CommunityContentMode() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     valuetype Game.CommunityContentMode Game.SettingsManager::'<CommunityContentMode>k__BackingField'
    IL_0005:  ret
  } // end of method SettingsManager::get_CommunityContentMode

  .method public hidebysig specialname static 
          void  set_CommunityContentMode(valuetype Game.CommunityContentMode 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  stsfld     valuetype Game.CommunityContentMode Game.SettingsManager::'<CommunityContentMode>k__BackingField'
    IL_0006:  ret
  } // end of method SettingsManager::set_CommunityContentMode

  .method public hidebysig specialname static 
          bool  get_MultithreadedTerrainUpdate() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     bool Game.SettingsManager::'<MultithreadedTerrainUpdate>k__BackingField'
    IL_0005:  ret
  } // end of method SettingsManager::get_MultithreadedTerrainUpdate

  .method public hidebysig specialname static 
          void  set_MultithreadedTerrainUpdate(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  stsfld     bool Game.SettingsManager::'<MultithreadedTerrainUpdate>k__BackingField'
    IL_0006:  ret
  } // end of method SettingsManager::set_MultithreadedTerrainUpdate

  .method public hidebysig specialname static 
          bool  get_EnableAndroidAudioTrackCaching() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.1
    IL_0001:  ret
  } // end of method SettingsManager::get_EnableAndroidAudioTrackCaching

  .method public hidebysig specialname static 
          void  set_EnableAndroidAudioTrackCaching(bool 'value') cil managed
  {
    // 代码大小       1 (0x1)
    .maxstack  8
    IL_0000:  ret
  } // end of method SettingsManager::set_EnableAndroidAudioTrackCaching

  .method public hidebysig specialname static 
          bool  get_UseReducedZRange() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method SettingsManager::get_UseReducedZRange

  .method public hidebysig specialname static 
          void  set_UseReducedZRange(bool 'value') cil managed
  {
    // 代码大小       1 (0x1)
    .maxstack  8
    IL_0000:  ret
  } // end of method SettingsManager::set_UseReducedZRange

  .method public hidebysig specialname static 
          int32  get_IsolatedStorageMigrationCounter() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     int32 Game.SettingsManager::'<IsolatedStorageMigrationCounter>k__BackingField'
    IL_0005:  ret
  } // end of method SettingsManager::get_IsolatedStorageMigrationCounter

  .method public hidebysig specialname static 
          void  set_IsolatedStorageMigrationCounter(int32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  stsfld     int32 Game.SettingsManager::'<IsolatedStorageMigrationCounter>k__BackingField'
    IL_0006:  ret
  } // end of method SettingsManager::set_IsolatedStorageMigrationCounter

  .method public hidebysig specialname static 
          bool  get_DisplayFpsCounter() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     bool Game.SettingsManager::'<DisplayFpsCounter>k__BackingField'
    IL_0005:  ret
  } // end of method SettingsManager::get_DisplayFpsCounter

  .method public hidebysig specialname static 
          void  set_DisplayFpsCounter(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  stsfld     bool Game.SettingsManager::'<DisplayFpsCounter>k__BackingField'
    IL_0006:  ret
  } // end of method SettingsManager::set_DisplayFpsCounter

  .method public hidebysig specialname static 
          int32  get_NewYearCelebrationLastYear() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     int32 Game.SettingsManager::'<NewYearCelebrationLastYear>k__BackingField'
    IL_0005:  ret
  } // end of method SettingsManager::get_NewYearCelebrationLastYear

  .method public hidebysig specialname static 
          void  set_NewYearCelebrationLastYear(int32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  stsfld     int32 Game.SettingsManager::'<NewYearCelebrationLastYear>k__BackingField'
    IL_0006:  ret
  } // end of method SettingsManager::set_NewYearCelebrationLastYear

  .method public hidebysig specialname static 
          valuetype Game.ScreenLayout  get_ScreenLayout1() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     valuetype Game.ScreenLayout Game.SettingsManager::'<ScreenLayout1>k__BackingField'
    IL_0005:  ret
  } // end of method SettingsManager::get_ScreenLayout1

  .method public hidebysig specialname static 
          void  set_ScreenLayout1(valuetype Game.ScreenLayout 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  stsfld     valuetype Game.ScreenLayout Game.SettingsManager::'<ScreenLayout1>k__BackingField'
    IL_0006:  ret
  } // end of method SettingsManager::set_ScreenLayout1

  .method public hidebysig specialname static 
          valuetype Game.ScreenLayout  get_ScreenLayout2() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     valuetype Game.ScreenLayout Game.SettingsManager::'<ScreenLayout2>k__BackingField'
    IL_0005:  ret
  } // end of method SettingsManager::get_ScreenLayout2

  .method public hidebysig specialname static 
          void  set_ScreenLayout2(valuetype Game.ScreenLayout 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  stsfld     valuetype Game.ScreenLayout Game.SettingsManager::'<ScreenLayout2>k__BackingField'
    IL_0006:  ret
  } // end of method SettingsManager::set_ScreenLayout2

  .method public hidebysig specialname static 
          valuetype Game.ScreenLayout  get_ScreenLayout3() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     valuetype Game.ScreenLayout Game.SettingsManager::'<ScreenLayout3>k__BackingField'
    IL_0005:  ret
  } // end of method SettingsManager::get_ScreenLayout3

  .method public hidebysig specialname static 
          void  set_ScreenLayout3(valuetype Game.ScreenLayout 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  stsfld     valuetype Game.ScreenLayout Game.SettingsManager::'<ScreenLayout3>k__BackingField'
    IL_0006:  ret
  } // end of method SettingsManager::set_ScreenLayout3

  .method public hidebysig specialname static 
          valuetype Game.ScreenLayout  get_ScreenLayout4() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     valuetype Game.ScreenLayout Game.SettingsManager::'<ScreenLayout4>k__BackingField'
    IL_0005:  ret
  } // end of method SettingsManager::get_ScreenLayout4

  .method public hidebysig specialname static 
          void  set_ScreenLayout4(valuetype Game.ScreenLayout 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  stsfld     valuetype Game.ScreenLayout Game.SettingsManager::'<ScreenLayout4>k__BackingField'
    IL_0006:  ret
  } // end of method SettingsManager::set_ScreenLayout4

  .method public hidebysig specialname static 
          bool  get_UpsideDownLayout() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     bool Game.SettingsManager::'<UpsideDownLayout>k__BackingField'
    IL_0005:  ret
  } // end of method SettingsManager::get_UpsideDownLayout

  .method public hidebysig specialname static 
          void  set_UpsideDownLayout(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  stsfld     bool Game.SettingsManager::'<UpsideDownLayout>k__BackingField'
    IL_0006:  ret
  } // end of method SettingsManager::set_UpsideDownLayout

  .method public hidebysig static void  LoadSettings() cil managed
  {
    // 代码大小       285 (0x11d)
    .maxstack  5
    .locals init (class [System.IO]System.IO.Stream V_0,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> V_1,
             class [System.Xml.XDocument]System.Xml.Linq.XElement V_2,
             class Game.SettingsManager/'<>c__DisplayClass207_0' V_3,
             string V_4,
             class [System.Reflection]System.Reflection.PropertyInfo V_5,
             object V_6,
             class [System.Runtime]System.Exception V_7,
             class [System.Runtime]System.Exception V_8)
    .try
    {
      IL_0000:  ldstr      "data:/Settings.xml"
      IL_0005:  call       bool [Engine]Engine.Storage::FileExists(string)
      IL_000a:  brfalse    IL_010a

      IL_000f:  ldstr      "data:/Settings.xml"
      IL_0014:  ldc.i4.0
      IL_0015:  call       class [System.IO]System.IO.Stream [Engine]Engine.Storage::OpenFile(string,
                                                                                              valuetype [Engine]Engine.OpenFileMode)
      IL_001a:  stloc.0
      .try
      {
        IL_001b:  ldloc.0
        IL_001c:  ldnull
        IL_001d:  ldc.i4.1
        IL_001e:  call       class [System.Xml.XDocument]System.Xml.Linq.XElement [EntitySystem]XmlUtilities.XmlUtils::LoadXmlFromStream(class [System.IO]System.IO.Stream,
                                                                                                                                         class [System.Text.Encoding]System.Text.Encoding,
                                                                                                                                         bool)
        IL_0023:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Elements()
        IL_0028:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::GetEnumerator()
        IL_002d:  stloc.1
        .try
        {
          IL_002e:  br         IL_00dd

          IL_0033:  ldloc.1
          IL_0034:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::get_Current()
          IL_0039:  stloc.2
          IL_003a:  newobj     instance void Game.SettingsManager/'<>c__DisplayClass207_0'::.ctor()
          IL_003f:  stloc.3
          IL_0040:  ldloc.3
          IL_0041:  ldstr      "<unknown>"
          IL_0046:  stfld      string Game.SettingsManager/'<>c__DisplayClass207_0'::name
          .try
          {
            IL_004b:  ldloc.3
            IL_004c:  ldloc.2
            IL_004d:  ldstr      "Name"
            IL_0052:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<string>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                                    string)
            IL_0057:  stfld      string Game.SettingsManager/'<>c__DisplayClass207_0'::name
            IL_005c:  ldloc.2
            IL_005d:  ldstr      "Value"
            IL_0062:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<string>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                                    string)
            IL_0067:  stloc.s    V_4
            IL_0069:  ldtoken    Game.SettingsManager
            IL_006e:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
            IL_0073:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Reflection]System.Reflection.PropertyInfo> [System.Reflection.Extensions]System.Reflection.RuntimeReflectionExtensions::GetRuntimeProperties(class [System.Runtime]System.Type)
            IL_0078:  ldloc.3
            IL_0079:  ldftn      instance bool Game.SettingsManager/'<>c__DisplayClass207_0'::'<LoadSettings>b__0'(class [System.Reflection]System.Reflection.PropertyInfo)
            IL_007f:  newobj     instance void class [System.Runtime]System.Func`2<class [System.Reflection]System.Reflection.PropertyInfo,bool>::.ctor(object,
                                                                                                                                                        native int)
            IL_0084:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<class [System.Reflection]System.Reflection.PropertyInfo>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                                         class [System.Runtime]System.Func`2<!!0,bool>)
            IL_0089:  call       !!0 [System.Linq]System.Linq.Enumerable::FirstOrDefault<class [System.Reflection]System.Reflection.PropertyInfo>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
            IL_008e:  stloc.s    V_5
            IL_0090:  ldloc.s    V_5
            IL_0092:  brfalse.s  IL_00af

            IL_0094:  ldloc.s    V_5
            IL_0096:  callvirt   instance class [System.Runtime]System.Type [System.Reflection]System.Reflection.PropertyInfo::get_PropertyType()
            IL_009b:  ldloc.s    V_4
            IL_009d:  call       object [Engine]Engine.Serialization.HumanReadableConverter::ConvertFromString(class [System.Runtime]System.Type,
                                                                                                               string)
            IL_00a2:  stloc.s    V_6
            IL_00a4:  ldloc.s    V_5
            IL_00a6:  ldnull
            IL_00a7:  ldloc.s    V_6
            IL_00a9:  ldnull
            IL_00aa:  callvirt   instance void [System.Reflection]System.Reflection.PropertyInfo::SetValue(object,
                                                                                                           object,
                                                                                                           object[])
            IL_00af:  leave.s    IL_00dd

          }  // end .try
          catch [System.Runtime]System.Exception 
          {
            IL_00b1:  stloc.s    V_7
            IL_00b3:  ldstr      "Setting \"{0}\" could not be loaded. Reason: {1}"
            IL_00b8:  ldc.i4.2
            IL_00b9:  newarr     [System.Runtime]System.Object
            IL_00be:  dup
            IL_00bf:  ldc.i4.0
            IL_00c0:  ldloc.3
            IL_00c1:  ldfld      string Game.SettingsManager/'<>c__DisplayClass207_0'::name
            IL_00c6:  stelem.ref
            IL_00c7:  dup
            IL_00c8:  ldc.i4.1
            IL_00c9:  ldloc.s    V_7
            IL_00cb:  callvirt   instance string [System.Runtime]System.Exception::get_Message()
            IL_00d0:  stelem.ref
            IL_00d1:  call       string [System.Runtime]System.String::Format(string,
                                                                              object[])
            IL_00d6:  call       void [Engine]Engine.Log::Warning(string)
            IL_00db:  leave.s    IL_00dd

          }  // end handler
          IL_00dd:  ldloc.1
          IL_00de:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
          IL_00e3:  brtrue     IL_0033

          IL_00e8:  leave.s    IL_00f4

        }  // end .try
        finally
        {
          IL_00ea:  ldloc.1
          IL_00eb:  brfalse.s  IL_00f3

          IL_00ed:  ldloc.1
          IL_00ee:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
          IL_00f3:  endfinally
        }  // end handler
        IL_00f4:  leave.s    IL_0100

      }  // end .try
      finally
      {
        IL_00f6:  ldloc.0
        IL_00f7:  brfalse.s  IL_00ff

        IL_00f9:  ldloc.0
        IL_00fa:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_00ff:  endfinally
      }  // end handler
      IL_0100:  ldstr      "Loaded settings."
      IL_0105:  call       void [Engine]Engine.Log::Information(string)
      IL_010a:  leave.s    IL_011c

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_010c:  stloc.s    V_8
      IL_010e:  ldstr      "Loading settings failed."
      IL_0113:  ldloc.s    V_8
      IL_0115:  call       void Game.ExceptionManager::ReportExceptionToUser(string,
                                                                             class [System.Runtime]System.Exception)
      IL_011a:  leave.s    IL_011c

    }  // end handler
    IL_011c:  ret
  } // end of method SettingsManager::LoadSettings

  .method public hidebysig static void  SaveSettings() cil managed
  {
    // 代码大小       267 (0x10b)
    .maxstack  5
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Reflection]System.Reflection.PropertyInfo> V_1,
             class [System.Reflection]System.Reflection.PropertyInfo V_2,
             string V_3,
             class [System.Runtime]System.Exception V_4,
             class [System.IO]System.IO.Stream V_5,
             class [System.Runtime]System.Exception V_6)
    .try
    {
      IL_0000:  ldstr      "Settings"
      IL_0005:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
      IL_000a:  newobj     instance void [System.Xml.XDocument]System.Xml.Linq.XElement::.ctor(class [System.Xml.XDocument]System.Xml.Linq.XName)
      IL_000f:  stloc.0
      IL_0010:  ldtoken    Game.SettingsManager
      IL_0015:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
      IL_001a:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Reflection]System.Reflection.PropertyInfo> [System.Reflection.Extensions]System.Reflection.RuntimeReflectionExtensions::GetRuntimeProperties(class [System.Runtime]System.Type)
      IL_001f:  ldsfld     class [System.Runtime]System.Func`2<class [System.Reflection]System.Reflection.PropertyInfo,bool> Game.SettingsManager/'<>c'::'<>9__208_0'
      IL_0024:  dup
      IL_0025:  brtrue.s   IL_003e

      IL_0027:  pop
      IL_0028:  ldsfld     class Game.SettingsManager/'<>c' Game.SettingsManager/'<>c'::'<>9'
      IL_002d:  ldftn      instance bool Game.SettingsManager/'<>c'::'<SaveSettings>b__208_0'(class [System.Reflection]System.Reflection.PropertyInfo)
      IL_0033:  newobj     instance void class [System.Runtime]System.Func`2<class [System.Reflection]System.Reflection.PropertyInfo,bool>::.ctor(object,
                                                                                                                                                  native int)
      IL_0038:  dup
      IL_0039:  stsfld     class [System.Runtime]System.Func`2<class [System.Reflection]System.Reflection.PropertyInfo,bool> Game.SettingsManager/'<>c'::'<>9__208_0'
      IL_003e:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<class [System.Reflection]System.Reflection.PropertyInfo>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                                   class [System.Runtime]System.Func`2<!!0,bool>)
      IL_0043:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Reflection]System.Reflection.PropertyInfo>::GetEnumerator()
      IL_0048:  stloc.1
      .try
      {
        IL_0049:  br.s       IL_00b5

        IL_004b:  ldloc.1
        IL_004c:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Reflection]System.Reflection.PropertyInfo>::get_Current()
        IL_0051:  stloc.2
        .try
        {
          IL_0052:  ldloc.2
          IL_0053:  ldnull
          IL_0054:  ldnull
          IL_0055:  callvirt   instance object [System.Reflection]System.Reflection.PropertyInfo::GetValue(object,
                                                                                                           object[])
          IL_005a:  call       string [Engine]Engine.Serialization.HumanReadableConverter::ConvertToString(object)
          IL_005f:  stloc.3
          IL_0060:  ldloc.0
          IL_0061:  ldstr      "Setting"
          IL_0066:  call       class [System.Xml.XDocument]System.Xml.Linq.XElement [EntitySystem]XmlUtilities.XmlUtils::AddElement(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                                                                    string)
          IL_006b:  dup
          IL_006c:  ldstr      "Name"
          IL_0071:  ldloc.2
          IL_0072:  callvirt   instance string [System.Reflection]System.Reflection.MemberInfo::get_Name()
          IL_0077:  call       void [EntitySystem]XmlUtilities.XmlUtils::SetAttributeValue(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                           string,
                                                                                           object)
          IL_007c:  ldstr      "Value"
          IL_0081:  ldloc.3
          IL_0082:  call       void [EntitySystem]XmlUtilities.XmlUtils::SetAttributeValue(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                           string,
                                                                                           object)
          IL_0087:  leave.s    IL_00b5

        }  // end .try
        catch [System.Runtime]System.Exception 
        {
          IL_0089:  stloc.s    V_4
          IL_008b:  ldstr      "Setting \"{0}\" could not be saved. Reason: {1}"
          IL_0090:  ldc.i4.2
          IL_0091:  newarr     [System.Runtime]System.Object
          IL_0096:  dup
          IL_0097:  ldc.i4.0
          IL_0098:  ldloc.2
          IL_0099:  callvirt   instance string [System.Reflection]System.Reflection.MemberInfo::get_Name()
          IL_009e:  stelem.ref
          IL_009f:  dup
          IL_00a0:  ldc.i4.1
          IL_00a1:  ldloc.s    V_4
          IL_00a3:  callvirt   instance string [System.Runtime]System.Exception::get_Message()
          IL_00a8:  stelem.ref
          IL_00a9:  call       string [System.Runtime]System.String::Format(string,
                                                                            object[])
          IL_00ae:  call       void [Engine]Engine.Log::Warning(string)
          IL_00b3:  leave.s    IL_00b5

        }  // end handler
        IL_00b5:  ldloc.1
        IL_00b6:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
        IL_00bb:  brtrue.s   IL_004b

        IL_00bd:  leave.s    IL_00c9

      }  // end .try
      finally
      {
        IL_00bf:  ldloc.1
        IL_00c0:  brfalse.s  IL_00c8

        IL_00c2:  ldloc.1
        IL_00c3:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_00c8:  endfinally
      }  // end handler
      IL_00c9:  ldstr      "data:/Settings.xml"
      IL_00ce:  ldc.i4.2
      IL_00cf:  call       class [System.IO]System.IO.Stream [Engine]Engine.Storage::OpenFile(string,
                                                                                              valuetype [Engine]Engine.OpenFileMode)
      IL_00d4:  stloc.s    V_5
      .try
      {
        IL_00d6:  ldloc.0
        IL_00d7:  ldloc.s    V_5
        IL_00d9:  ldnull
        IL_00da:  ldc.i4.1
        IL_00db:  call       void [EntitySystem]XmlUtilities.XmlUtils::SaveXmlToStream(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                       class [System.IO]System.IO.Stream,
                                                                                       class [System.Text.Encoding]System.Text.Encoding,
                                                                                       bool)
        IL_00e0:  leave.s    IL_00ee

      }  // end .try
      finally
      {
        IL_00e2:  ldloc.s    V_5
        IL_00e4:  brfalse.s  IL_00ed

        IL_00e6:  ldloc.s    V_5
        IL_00e8:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_00ed:  endfinally
      }  // end handler
      IL_00ee:  ldstr      "Saved settings"
      IL_00f3:  call       void [Engine]Engine.Log::Information(string)
      IL_00f8:  leave.s    IL_010a

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_00fa:  stloc.s    V_6
      IL_00fc:  ldstr      "Saving settings failed."
      IL_0101:  ldloc.s    V_6
      IL_0103:  call       void Game.ExceptionManager::ReportExceptionToUser(string,
                                                                             class [System.Runtime]System.Exception)
      IL_0108:  leave.s    IL_010a

    }  // end handler
    IL_010a:  ret
  } // end of method SettingsManager::SaveSettings

  .event class [System.Runtime]System.Action`1<string> SettingChanged
  {
    .addon void Game.SettingsManager::add_SettingChanged(class [System.Runtime]System.Action`1<string>)
    .removeon void Game.SettingsManager::remove_SettingChanged(class [System.Runtime]System.Action`1<string>)
  } // end of event SettingsManager::SettingChanged
  .property float32 SoundsVolume()
  {
    .get float32 Game.SettingsManager::get_SoundsVolume()
    .set void Game.SettingsManager::set_SoundsVolume(float32)
  } // end of property SettingsManager::SoundsVolume
  .property float32 MusicVolume()
  {
    .get float32 Game.SettingsManager::get_MusicVolume()
    .set void Game.SettingsManager::set_MusicVolume(float32)
  } // end of property SettingsManager::MusicVolume
  .property int32 VisibilityRange()
  {
    .get int32 Game.SettingsManager::get_VisibilityRange()
    .set void Game.SettingsManager::set_VisibilityRange(int32)
  } // end of property SettingsManager::VisibilityRange
  .property valuetype Game.ResolutionMode
          ResolutionMode()
  {
    .get valuetype Game.ResolutionMode Game.SettingsManager::get_ResolutionMode()
    .set void Game.SettingsManager::set_ResolutionMode(valuetype Game.ResolutionMode)
  } // end of property SettingsManager::ResolutionMode
  .property valuetype Game.ViewAngleMode ViewAngleMode()
  {
    .get valuetype Game.ViewAngleMode Game.SettingsManager::get_ViewAngleMode()
    .set void Game.SettingsManager::set_ViewAngleMode(valuetype Game.ViewAngleMode)
  } // end of property SettingsManager::ViewAngleMode
  .property valuetype Game.SkyRenderingMode
          SkyRenderingMode()
  {
    .get valuetype Game.SkyRenderingMode Game.SettingsManager::get_SkyRenderingMode()
    .set void Game.SettingsManager::set_SkyRenderingMode(valuetype Game.SkyRenderingMode)
  } // end of property SettingsManager::SkyRenderingMode
  .property bool ObjectsShadowsEnabled()
  {
    .get bool Game.SettingsManager::get_ObjectsShadowsEnabled()
    .set void Game.SettingsManager::set_ObjectsShadowsEnabled(bool)
  } // end of property SettingsManager::ObjectsShadowsEnabled
  .property float32 Brightness()
  {
    .get float32 Game.SettingsManager::get_Brightness()
    .set void Game.SettingsManager::set_Brightness(float32)
  } // end of property SettingsManager::Brightness
  .property int32 PresentationInterval()
  {
    .get int32 Game.SettingsManager::get_PresentationInterval()
    .set void Game.SettingsManager::set_PresentationInterval(int32)
  } // end of property SettingsManager::PresentationInterval
  .property bool ShowGuiInScreenshots()
  {
    .get bool Game.SettingsManager::get_ShowGuiInScreenshots()
    .set void Game.SettingsManager::set_ShowGuiInScreenshots(bool)
  } // end of property SettingsManager::ShowGuiInScreenshots
  .property bool ShowLogoInScreenshots()
  {
    .get bool Game.SettingsManager::get_ShowLogoInScreenshots()
    .set void Game.SettingsManager::set_ShowLogoInScreenshots(bool)
  } // end of property SettingsManager::ShowLogoInScreenshots
  .property valuetype Game.ScreenshotSize
          ScreenshotSize()
  {
    .get valuetype Game.ScreenshotSize Game.SettingsManager::get_ScreenshotSize()
    .set void Game.SettingsManager::set_ScreenshotSize(valuetype Game.ScreenshotSize)
  } // end of property SettingsManager::ScreenshotSize
  .property valuetype Game.GuiSize GuiSize()
  {
    .get valuetype Game.GuiSize Game.SettingsManager::get_GuiSize()
    .set void Game.SettingsManager::set_GuiSize(valuetype Game.GuiSize)
  } // end of property SettingsManager::GuiSize
  .property bool HideMoveLookPads()
  {
    .get bool Game.SettingsManager::get_HideMoveLookPads()
    .set void Game.SettingsManager::set_HideMoveLookPads(bool)
  } // end of property SettingsManager::HideMoveLookPads
  .property bool InvisibleModelsWorkaround()
  {
    .get bool Game.SettingsManager::get_InvisibleModelsWorkaround()
    .set void Game.SettingsManager::set_InvisibleModelsWorkaround(bool)
  } // end of property SettingsManager::InvisibleModelsWorkaround
  .property string BlocksTextureFileName()
  {
    .get string Game.SettingsManager::get_BlocksTextureFileName()
    .set void Game.SettingsManager::set_BlocksTextureFileName(string)
  } // end of property SettingsManager::BlocksTextureFileName
  .property valuetype Game.MoveControlMode
          MoveControlMode()
  {
    .get valuetype Game.MoveControlMode Game.SettingsManager::get_MoveControlMode()
    .set void Game.SettingsManager::set_MoveControlMode(valuetype Game.MoveControlMode)
  } // end of property SettingsManager::MoveControlMode
  .property valuetype Game.LookControlMode
          LookControlMode()
  {
    .get valuetype Game.LookControlMode Game.SettingsManager::get_LookControlMode()
    .set void Game.SettingsManager::set_LookControlMode(valuetype Game.LookControlMode)
  } // end of property SettingsManager::LookControlMode
  .property bool LeftHandedLayout()
  {
    .get bool Game.SettingsManager::get_LeftHandedLayout()
    .set void Game.SettingsManager::set_LeftHandedLayout(bool)
  } // end of property SettingsManager::LeftHandedLayout
  .property bool FlipVerticalAxis()
  {
    .get bool Game.SettingsManager::get_FlipVerticalAxis()
    .set void Game.SettingsManager::set_FlipVerticalAxis(bool)
  } // end of property SettingsManager::FlipVerticalAxis
  .property float32 MoveSensitivity()
  {
    .get float32 Game.SettingsManager::get_MoveSensitivity()
    .set void Game.SettingsManager::set_MoveSensitivity(float32)
  } // end of property SettingsManager::MoveSensitivity
  .property float32 LookSensitivity()
  {
    .get float32 Game.SettingsManager::get_LookSensitivity()
    .set void Game.SettingsManager::set_LookSensitivity(float32)
  } // end of property SettingsManager::LookSensitivity
  .property float32 GamepadDeadZone()
  {
    .get float32 Game.SettingsManager::get_GamepadDeadZone()
    .set void Game.SettingsManager::set_GamepadDeadZone(float32)
  } // end of property SettingsManager::GamepadDeadZone
  .property float32 GamepadCursorSpeed()
  {
    .get float32 Game.SettingsManager::get_GamepadCursorSpeed()
    .set void Game.SettingsManager::set_GamepadCursorSpeed(float32)
  } // end of property SettingsManager::GamepadCursorSpeed
  .property float32 CreativeDigTime()
  {
    .get float32 Game.SettingsManager::get_CreativeDigTime()
    .set void Game.SettingsManager::set_CreativeDigTime(float32)
  } // end of property SettingsManager::CreativeDigTime
  .property float32 CreativeReach()
  {
    .get float32 Game.SettingsManager::get_CreativeReach()
    .set void Game.SettingsManager::set_CreativeReach(float32)
  } // end of property SettingsManager::CreativeReach
  .property float32 MinimumHoldDuration()
  {
    .get float32 Game.SettingsManager::get_MinimumHoldDuration()
    .set void Game.SettingsManager::set_MinimumHoldDuration(float32)
  } // end of property SettingsManager::MinimumHoldDuration
  .property float32 MinimumDragDistance()
  {
    .get float32 Game.SettingsManager::get_MinimumDragDistance()
    .set void Game.SettingsManager::set_MinimumDragDistance(float32)
  } // end of property SettingsManager::MinimumDragDistance
  .property bool AutoJump()
  {
    .get bool Game.SettingsManager::get_AutoJump()
    .set void Game.SettingsManager::set_AutoJump(bool)
  } // end of property SettingsManager::AutoJump
  .property bool HorizontalCreativeFlight()
  {
    .get bool Game.SettingsManager::get_HorizontalCreativeFlight()
    .set void Game.SettingsManager::set_HorizontalCreativeFlight(bool)
  } // end of property SettingsManager::HorizontalCreativeFlight
  .property string DropboxAccessToken()
  {
    .get string Game.SettingsManager::get_DropboxAccessToken()
    .set void Game.SettingsManager::set_DropboxAccessToken(string)
  } // end of property SettingsManager::DropboxAccessToken
  .property string MotdUpdateUrl()
  {
    .get string Game.SettingsManager::get_MotdUpdateUrl()
    .set void Game.SettingsManager::set_MotdUpdateUrl(string)
  } // end of property SettingsManager::MotdUpdateUrl
  .property string MotdBackupUpdateUrl()
  {
    .get string Game.SettingsManager::get_MotdBackupUpdateUrl()
    .set void Game.SettingsManager::set_MotdBackupUpdateUrl(string)
  } // end of property SettingsManager::MotdBackupUpdateUrl
  .property bool MotdUseBackupUrl()
  {
    .get bool Game.SettingsManager::get_MotdUseBackupUrl()
    .set void Game.SettingsManager::set_MotdUseBackupUrl(bool)
  } // end of property SettingsManager::MotdUseBackupUrl
  .property float64 MotdUpdatePeriodHours()
  {
    .get float64 Game.SettingsManager::get_MotdUpdatePeriodHours()
    .set void Game.SettingsManager::set_MotdUpdatePeriodHours(float64)
  } // end of property SettingsManager::MotdUpdatePeriodHours
  .property valuetype [System.Runtime]System.DateTime
          MotdLastUpdateTime()
  {
    .get valuetype [System.Runtime]System.DateTime Game.SettingsManager::get_MotdLastUpdateTime()
    .set void Game.SettingsManager::set_MotdLastUpdateTime(valuetype [System.Runtime]System.DateTime)
  } // end of property SettingsManager::MotdLastUpdateTime
  .property string MotdLastDownloadedData()
  {
    .get string Game.SettingsManager::get_MotdLastDownloadedData()
    .set void Game.SettingsManager::set_MotdLastDownloadedData(string)
  } // end of property SettingsManager::MotdLastDownloadedData
  .property string UserId()
  {
    .get string Game.SettingsManager::get_UserId()
    .set void Game.SettingsManager::set_UserId(string)
  } // end of property SettingsManager::UserId
  .property string LastLaunchedVersion()
  {
    .get string Game.SettingsManager::get_LastLaunchedVersion()
    .set void Game.SettingsManager::set_LastLaunchedVersion(string)
  } // end of property SettingsManager::LastLaunchedVersion
  .property valuetype Game.CommunityContentMode
          CommunityContentMode()
  {
    .get valuetype Game.CommunityContentMode Game.SettingsManager::get_CommunityContentMode()
    .set void Game.SettingsManager::set_CommunityContentMode(valuetype Game.CommunityContentMode)
  } // end of property SettingsManager::CommunityContentMode
  .property bool MultithreadedTerrainUpdate()
  {
    .get bool Game.SettingsManager::get_MultithreadedTerrainUpdate()
    .set void Game.SettingsManager::set_MultithreadedTerrainUpdate(bool)
  } // end of property SettingsManager::MultithreadedTerrainUpdate
  .property bool EnableAndroidAudioTrackCaching()
  {
    .get bool Game.SettingsManager::get_EnableAndroidAudioTrackCaching()
    .set void Game.SettingsManager::set_EnableAndroidAudioTrackCaching(bool)
  } // end of property SettingsManager::EnableAndroidAudioTrackCaching
  .property bool UseReducedZRange()
  {
    .get bool Game.SettingsManager::get_UseReducedZRange()
    .set void Game.SettingsManager::set_UseReducedZRange(bool)
  } // end of property SettingsManager::UseReducedZRange
  .property int32 IsolatedStorageMigrationCounter()
  {
    .get int32 Game.SettingsManager::get_IsolatedStorageMigrationCounter()
    .set void Game.SettingsManager::set_IsolatedStorageMigrationCounter(int32)
  } // end of property SettingsManager::IsolatedStorageMigrationCounter
  .property bool DisplayFpsCounter()
  {
    .get bool Game.SettingsManager::get_DisplayFpsCounter()
    .set void Game.SettingsManager::set_DisplayFpsCounter(bool)
  } // end of property SettingsManager::DisplayFpsCounter
  .property int32 NewYearCelebrationLastYear()
  {
    .get int32 Game.SettingsManager::get_NewYearCelebrationLastYear()
    .set void Game.SettingsManager::set_NewYearCelebrationLastYear(int32)
  } // end of property SettingsManager::NewYearCelebrationLastYear
  .property valuetype Game.ScreenLayout ScreenLayout1()
  {
    .get valuetype Game.ScreenLayout Game.SettingsManager::get_ScreenLayout1()
    .set void Game.SettingsManager::set_ScreenLayout1(valuetype Game.ScreenLayout)
  } // end of property SettingsManager::ScreenLayout1
  .property valuetype Game.ScreenLayout ScreenLayout2()
  {
    .get valuetype Game.ScreenLayout Game.SettingsManager::get_ScreenLayout2()
    .set void Game.SettingsManager::set_ScreenLayout2(valuetype Game.ScreenLayout)
  } // end of property SettingsManager::ScreenLayout2
  .property valuetype Game.ScreenLayout ScreenLayout3()
  {
    .get valuetype Game.ScreenLayout Game.SettingsManager::get_ScreenLayout3()
    .set void Game.SettingsManager::set_ScreenLayout3(valuetype Game.ScreenLayout)
  } // end of property SettingsManager::ScreenLayout3
  .property valuetype Game.ScreenLayout ScreenLayout4()
  {
    .get valuetype Game.ScreenLayout Game.SettingsManager::get_ScreenLayout4()
    .set void Game.SettingsManager::set_ScreenLayout4(valuetype Game.ScreenLayout)
  } // end of property SettingsManager::ScreenLayout4
  .property bool UpsideDownLayout()
  {
    .get bool Game.SettingsManager::get_UpsideDownLayout()
    .set void Game.SettingsManager::set_UpsideDownLayout(bool)
  } // end of property SettingsManager::UpsideDownLayout
} // end of class Game.SettingsManager