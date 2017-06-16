.class public abstract auto ansi sealed beforefieldinit Game.FrontendManager
       extends [System.Runtime]System.Object
{
  .class auto ansi sealed nested public FadeState
         extends [System.Runtime]System.Enum
  {
    .field public specialname rtspecialname int32 value__
    .field public static literal valuetype Game.FrontendManager/FadeState None = int32(0x00000000)
    .field public static literal valuetype Game.FrontendManager/FadeState FadeOut = int32(0x00000001)
    .field public static literal valuetype Game.FrontendManager/FadeState FadeIn = int32(0x00000002)
  } // end of class FadeState

  .class auto ansi sealed nested private MusicFadeState
         extends [System.Runtime]System.Enum
  {
    .field public specialname rtspecialname int32 value__
    .field public static literal valuetype Game.FrontendManager/MusicFadeState None = int32(0x00000000)
    .field public static literal valuetype Game.FrontendManager/MusicFadeState FadeOut = int32(0x00000001)
    .field public static literal valuetype Game.FrontendManager/MusicFadeState Stopped = int32(0x00000002)
  } // end of class MusicFadeState

  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.FrontendManager/'<>c' '<>9'
    .field public static class [System.Runtime]System.Action '<>9__9_0'
    .field public static class [System.Runtime]System.Action '<>9__9_1'
    .field public static class [System.Runtime]System.Action '<>9__9_2'
    .field public static class [System.Runtime]System.Action '<>9__9_3'
    .field public static class [System.Runtime]System.Action '<>9__9_4'
    .field public static class [System.Runtime]System.Action '<>9__9_5'
    .field public static class [System.Runtime]System.Action '<>9__9_6'
    .field public static class [System.Runtime]System.Action '<>9__9_7'
    .field public static class [System.Runtime]System.Action '<>9__9_8'
    .field public static class [System.Runtime]System.Action '<>9__9_9'
    .field public static class [System.Runtime]System.Action '<>9__9_10'
    .field public static class [System.Runtime]System.Action '<>9__9_11'
    .field public static class [System.Runtime]System.Action '<>9__9_12'
    .field public static class [System.Runtime]System.Action '<>9__9_13'
    .field public static class [System.Runtime]System.Action '<>9__9_14'
    .field public static class [System.Runtime]System.Action '<>9__9_15'
    .field public static class [System.Runtime]System.Action '<>9__9_16'
    .field public static class [System.Runtime]System.Action '<>9__9_17'
    .field public static class [System.Runtime]System.Action '<>9__9_18'
    .field public static class [System.Runtime]System.Action '<>9__9_19'
    .field public static class [System.Runtime]System.Action '<>9__9_20'
    .field public static class [System.Runtime]System.Action '<>9__9_21'
    .field public static class [System.Runtime]System.Action '<>9__9_22'
    .field public static class [System.Runtime]System.Action '<>9__9_23'
    .field public static class [System.Runtime]System.Action '<>9__9_24'
    .field public static class [System.Runtime]System.Action '<>9__9_25'
    .field public static class [System.Runtime]System.Action '<>9__9_26'
    .field public static class [System.Runtime]System.Action '<>9__9_27'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.FrontendManager/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.FrontendManager/'<>c' Game.FrontendManager/'<>c'::'<>9'
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
            '<Initialize>b__9_0'() cil managed
    {
      // 代码大小       16 (0x10)
      .maxstack  8
      IL_0000:  ldstr      "Nag"
      IL_0005:  newobj     instance void Game.NagScreen::.ctor()
      IL_000a:  call       void Game.ScreensManager::AddScreen(string,
                                                               class Game.Screen)
      IL_000f:  ret
    } // end of method '<>c'::'<Initialize>b__9_0'

    .method assembly hidebysig instance void 
            '<Initialize>b__9_1'() cil managed
    {
      // 代码大小       16 (0x10)
      .maxstack  8
      IL_0000:  ldstr      "MainMenu"
      IL_0005:  newobj     instance void Game.MainMenuScreen::.ctor()
      IL_000a:  call       void Game.ScreensManager::AddScreen(string,
                                                               class Game.Screen)
      IL_000f:  ret
    } // end of method '<>c'::'<Initialize>b__9_1'

    .method assembly hidebysig instance void 
            '<Initialize>b__9_2'() cil managed
    {
      // 代码大小       16 (0x10)
      .maxstack  8
      IL_0000:  ldstr      "Recipaedia"
      IL_0005:  newobj     instance void Game.RecipaediaScreen::.ctor()
      IL_000a:  call       void Game.ScreensManager::AddScreen(string,
                                                               class Game.Screen)
      IL_000f:  ret
    } // end of method '<>c'::'<Initialize>b__9_2'

    .method assembly hidebysig instance void 
            '<Initialize>b__9_3'() cil managed
    {
      // 代码大小       16 (0x10)
      .maxstack  8
      IL_0000:  ldstr      "RecipaediaRecipes"
      IL_0005:  newobj     instance void Game.RecipaediaRecipesScreen::.ctor()
      IL_000a:  call       void Game.ScreensManager::AddScreen(string,
                                                               class Game.Screen)
      IL_000f:  ret
    } // end of method '<>c'::'<Initialize>b__9_3'

    .method assembly hidebysig instance void 
            '<Initialize>b__9_4'() cil managed
    {
      // 代码大小       16 (0x10)
      .maxstack  8
      IL_0000:  ldstr      "RecipaediaDescription"
      IL_0005:  newobj     instance void Game.RecipaediaDescriptionScreen::.ctor()
      IL_000a:  call       void Game.ScreensManager::AddScreen(string,
                                                               class Game.Screen)
      IL_000f:  ret
    } // end of method '<>c'::'<Initialize>b__9_4'

    .method assembly hidebysig instance void 
            '<Initialize>b__9_5'() cil managed
    {
      // 代码大小       16 (0x10)
      .maxstack  8
      IL_0000:  ldstr      "Help"
      IL_0005:  newobj     instance void Game.HelpScreen::.ctor()
      IL_000a:  call       void Game.ScreensManager::AddScreen(string,
                                                               class Game.Screen)
      IL_000f:  ret
    } // end of method '<>c'::'<Initialize>b__9_5'

    .method assembly hidebysig instance void 
            '<Initialize>b__9_6'() cil managed
    {
      // 代码大小       16 (0x10)
      .maxstack  8
      IL_0000:  ldstr      "HelpTopic"
      IL_0005:  newobj     instance void Game.HelpTopicScreen::.ctor()
      IL_000a:  call       void Game.ScreensManager::AddScreen(string,
                                                               class Game.Screen)
      IL_000f:  ret
    } // end of method '<>c'::'<Initialize>b__9_6'

    .method assembly hidebysig instance void 
            '<Initialize>b__9_7'() cil managed
    {
      // 代码大小       16 (0x10)
      .maxstack  8
      IL_0000:  ldstr      "Settings"
      IL_0005:  newobj     instance void Game.SettingsScreen::.ctor()
      IL_000a:  call       void Game.ScreensManager::AddScreen(string,
                                                               class Game.Screen)
      IL_000f:  ret
    } // end of method '<>c'::'<Initialize>b__9_7'

    .method assembly hidebysig instance void 
            '<Initialize>b__9_8'() cil managed
    {
      // 代码大小       16 (0x10)
      .maxstack  8
      IL_0000:  ldstr      "SettingsPerformance"
      IL_0005:  newobj     instance void Game.SettingsPerformanceScreen::.ctor()
      IL_000a:  call       void Game.ScreensManager::AddScreen(string,
                                                               class Game.Screen)
      IL_000f:  ret
    } // end of method '<>c'::'<Initialize>b__9_8'

    .method assembly hidebysig instance void 
            '<Initialize>b__9_9'() cil managed
    {
      // 代码大小       16 (0x10)
      .maxstack  8
      IL_0000:  ldstr      "SettingsGraphics"
      IL_0005:  newobj     instance void Game.SettingsGraphicsScreen::.ctor()
      IL_000a:  call       void Game.ScreensManager::AddScreen(string,
                                                               class Game.Screen)
      IL_000f:  ret
    } // end of method '<>c'::'<Initialize>b__9_9'

    .method assembly hidebysig instance void 
            '<Initialize>b__9_10'() cil managed
    {
      // 代码大小       16 (0x10)
      .maxstack  8
      IL_0000:  ldstr      "SettingsUi"
      IL_0005:  newobj     instance void Game.SettingsUiScreen::.ctor()
      IL_000a:  call       void Game.ScreensManager::AddScreen(string,
                                                               class Game.Screen)
      IL_000f:  ret
    } // end of method '<>c'::'<Initialize>b__9_10'

    .method assembly hidebysig instance void 
            '<Initialize>b__9_11'() cil managed
    {
      // 代码大小       16 (0x10)
      .maxstack  8
      IL_0000:  ldstr      "SettingsCompatibility"
      IL_0005:  newobj     instance void Game.SettingsCompatibilityScreen::.ctor()
      IL_000a:  call       void Game.ScreensManager::AddScreen(string,
                                                               class Game.Screen)
      IL_000f:  ret
    } // end of method '<>c'::'<Initialize>b__9_11'

    .method assembly hidebysig instance void 
            '<Initialize>b__9_12'() cil managed
    {
      // 代码大小       16 (0x10)
      .maxstack  8
      IL_0000:  ldstr      "SettingsAudio"
      IL_0005:  newobj     instance void Game.SettingsAudioScreen::.ctor()
      IL_000a:  call       void Game.ScreensManager::AddScreen(string,
                                                               class Game.Screen)
      IL_000f:  ret
    } // end of method '<>c'::'<Initialize>b__9_12'

    .method assembly hidebysig instance void 
            '<Initialize>b__9_13'() cil managed
    {
      // 代码大小       16 (0x10)
      .maxstack  8
      IL_0000:  ldstr      "SettingsControls"
      IL_0005:  newobj     instance void Game.SettingsControlsScreen::.ctor()
      IL_000a:  call       void Game.ScreensManager::AddScreen(string,
                                                               class Game.Screen)
      IL_000f:  ret
    } // end of method '<>c'::'<Initialize>b__9_13'

    .method assembly hidebysig instance void 
            '<Initialize>b__9_14'() cil managed
    {
      // 代码大小       16 (0x10)
      .maxstack  8
      IL_0000:  ldstr      "SettingsSensitivities"
      IL_0005:  newobj     instance void Game.SettingsSensitivitiesScreen::.ctor()
      IL_000a:  call       void Game.ScreensManager::AddScreen(string,
                                                               class Game.Screen)
      IL_000f:  ret
    } // end of method '<>c'::'<Initialize>b__9_14'

    .method assembly hidebysig instance void 
            '<Initialize>b__9_15'() cil managed
    {
      // 代码大小       16 (0x10)
      .maxstack  8
      IL_0000:  ldstr      "Singleplayer"
      IL_0005:  newobj     instance void Game.SingleplayerScreen::.ctor()
      IL_000a:  call       void Game.ScreensManager::AddScreen(string,
                                                               class Game.Screen)
      IL_000f:  ret
    } // end of method '<>c'::'<Initialize>b__9_15'

    .method assembly hidebysig instance void 
            '<Initialize>b__9_16'() cil managed
    {
      // 代码大小       16 (0x10)
      .maxstack  8
      IL_0000:  ldstr      "NewWorld"
      IL_0005:  newobj     instance void Game.NewWorldScreen::.ctor()
      IL_000a:  call       void Game.ScreensManager::AddScreen(string,
                                                               class Game.Screen)
      IL_000f:  ret
    } // end of method '<>c'::'<Initialize>b__9_16'

    .method assembly hidebysig instance void 
            '<Initialize>b__9_17'() cil managed
    {
      // 代码大小       16 (0x10)
      .maxstack  8
      IL_0000:  ldstr      "ModifyWorld"
      IL_0005:  newobj     instance void Game.ModifyWorldScreen::.ctor()
      IL_000a:  call       void Game.ScreensManager::AddScreen(string,
                                                               class Game.Screen)
      IL_000f:  ret
    } // end of method '<>c'::'<Initialize>b__9_17'

    .method assembly hidebysig instance void 
            '<Initialize>b__9_18'() cil managed
    {
      // 代码大小       16 (0x10)
      .maxstack  8
      IL_0000:  ldstr      "WorldOptions"
      IL_0005:  newobj     instance void Game.WorldOptionsScreen::.ctor()
      IL_000a:  call       void Game.ScreensManager::AddScreen(string,
                                                               class Game.Screen)
      IL_000f:  ret
    } // end of method '<>c'::'<Initialize>b__9_18'

    .method assembly hidebysig instance void 
            '<Initialize>b__9_19'() cil managed
    {
      // 代码大小       16 (0x10)
      .maxstack  8
      IL_0000:  ldstr      "GameLoading"
      IL_0005:  newobj     instance void Game.GameLoadingScreen::.ctor()
      IL_000a:  call       void Game.ScreensManager::AddScreen(string,
                                                               class Game.Screen)
      IL_000f:  ret
    } // end of method '<>c'::'<Initialize>b__9_19'

    .method assembly hidebysig instance void 
            '<Initialize>b__9_20'() cil managed
    {
      // 代码大小       16 (0x10)
      .maxstack  8
      IL_0000:  ldstr      "Respawning"
      IL_0005:  newobj     instance void Game.RespawningScreen::.ctor()
      IL_000a:  call       void Game.ScreensManager::AddScreen(string,
                                                               class Game.Screen)
      IL_000f:  ret
    } // end of method '<>c'::'<Initialize>b__9_20'

    .method assembly hidebysig instance void 
            '<Initialize>b__9_21'() cil managed
    {
      // 代码大小       16 (0x10)
      .maxstack  8
      IL_0000:  ldstr      "Game"
      IL_0005:  newobj     instance void Game.GameScreen::.ctor()
      IL_000a:  call       void Game.ScreensManager::AddScreen(string,
                                                               class Game.Screen)
      IL_000f:  ret
    } // end of method '<>c'::'<Initialize>b__9_21'

    .method assembly hidebysig instance void 
            '<Initialize>b__9_22'() cil managed
    {
      // 代码大小       16 (0x10)
      .maxstack  8
      IL_0000:  ldstr      "GameMenu"
      IL_0005:  newobj     instance void Game.GameMenuScreen::.ctor()
      IL_000a:  call       void Game.ScreensManager::AddScreen(string,
                                                               class Game.Screen)
      IL_000f:  ret
    } // end of method '<>c'::'<Initialize>b__9_22'

    .method assembly hidebysig instance void 
            '<Initialize>b__9_23'() cil managed
    {
      // 代码大小       16 (0x10)
      .maxstack  8
      IL_0000:  ldstr      "TrialEnded"
      IL_0005:  newobj     instance void Game.TrialEndedScreen::.ctor()
      IL_000a:  call       void Game.ScreensManager::AddScreen(string,
                                                               class Game.Screen)
      IL_000f:  ret
    } // end of method '<>c'::'<Initialize>b__9_23'

    .method assembly hidebysig instance void 
            '<Initialize>b__9_24'() cil managed
    {
      // 代码大小       16 (0x10)
      .maxstack  8
      IL_0000:  ldstr      "Content"
      IL_0005:  newobj     instance void Game.ContentScreen::.ctor()
      IL_000a:  call       void Game.ScreensManager::AddScreen(string,
                                                               class Game.Screen)
      IL_000f:  ret
    } // end of method '<>c'::'<Initialize>b__9_24'

    .method assembly hidebysig instance void 
            '<Initialize>b__9_25'() cil managed
    {
      // 代码大小       16 (0x10)
      .maxstack  8
      IL_0000:  ldstr      "ExternalContent"
      IL_0005:  newobj     instance void Game.ExternalContentScreen::.ctor()
      IL_000a:  call       void Game.ScreensManager::AddScreen(string,
                                                               class Game.Screen)
      IL_000f:  ret
    } // end of method '<>c'::'<Initialize>b__9_25'

    .method assembly hidebysig instance void 
            '<Initialize>b__9_26'() cil managed
    {
      // 代码大小       16 (0x10)
      .maxstack  8
      IL_0000:  ldstr      "CommunityContent"
      IL_0005:  newobj     instance void Game.CommunityContentScreen::.ctor()
      IL_000a:  call       void Game.ScreensManager::AddScreen(string,
                                                               class Game.Screen)
      IL_000f:  ret
    } // end of method '<>c'::'<Initialize>b__9_26'

    .method assembly hidebysig instance void 
            '<Initialize>b__9_27'() cil managed
    {
      // 代码大小       16 (0x10)
      .maxstack  8
      IL_0000:  ldstr      "ManageContent"
      IL_0005:  newobj     instance void Game.ManageContentScreen::.ctor()
      IL_000a:  call       void Game.ScreensManager::AddScreen(string,
                                                               class Game.Screen)
      IL_000f:  ret
    } // end of method '<>c'::'<Initialize>b__9_27'

  } // end of class '<>c'

  .field private static class [Engine]Engine.Graphics.PrimitivesRenderer2D m_primitivesRenderer
  .field private static valuetype Game.FrontendManager/FadeState m_fadeState
  .field private static float32 m_fadeFactor
  .field private static class [System.Runtime]System.Action m_fadeAction
  .field private static string m_fpsString
  .method public hidebysig specialname static 
          float32  get_FadeFactor() cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     float32 Game.FrontendManager::m_fadeFactor
    IL_0005:  ret
  } // end of method FrontendManager::get_FadeFactor

  .method public hidebysig static void  Initialize() cil managed
  {
    // 代码大小       1070 (0x42e)
    .maxstack  3
    .locals init (class Game.LoadingScreen V_0)
    IL_0000:  newobj     instance void Game.LoadingScreen::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldstr      "Loading"
    IL_000b:  ldloc.0
    IL_000c:  call       void Game.ScreensManager::AddScreen(string,
                                                             class Game.Screen)
    IL_0011:  ldloc.0
    IL_0012:  ldsfld     class [System.Runtime]System.Action Game.FrontendManager/'<>c'::'<>9__9_0'
    IL_0017:  dup
    IL_0018:  brtrue.s   IL_0031

    IL_001a:  pop
    IL_001b:  ldsfld     class Game.FrontendManager/'<>c' Game.FrontendManager/'<>c'::'<>9'
    IL_0020:  ldftn      instance void Game.FrontendManager/'<>c'::'<Initialize>b__9_0'()
    IL_0026:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_002b:  dup
    IL_002c:  stsfld     class [System.Runtime]System.Action Game.FrontendManager/'<>c'::'<>9__9_0'
    IL_0031:  callvirt   instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_0036:  ldloc.0
    IL_0037:  ldsfld     class [System.Runtime]System.Action Game.FrontendManager/'<>c'::'<>9__9_1'
    IL_003c:  dup
    IL_003d:  brtrue.s   IL_0056

    IL_003f:  pop
    IL_0040:  ldsfld     class Game.FrontendManager/'<>c' Game.FrontendManager/'<>c'::'<>9'
    IL_0045:  ldftn      instance void Game.FrontendManager/'<>c'::'<Initialize>b__9_1'()
    IL_004b:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0050:  dup
    IL_0051:  stsfld     class [System.Runtime]System.Action Game.FrontendManager/'<>c'::'<>9__9_1'
    IL_0056:  callvirt   instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_005b:  ldloc.0
    IL_005c:  ldsfld     class [System.Runtime]System.Action Game.FrontendManager/'<>c'::'<>9__9_2'
    IL_0061:  dup
    IL_0062:  brtrue.s   IL_007b

    IL_0064:  pop
    IL_0065:  ldsfld     class Game.FrontendManager/'<>c' Game.FrontendManager/'<>c'::'<>9'
    IL_006a:  ldftn      instance void Game.FrontendManager/'<>c'::'<Initialize>b__9_2'()
    IL_0070:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0075:  dup
    IL_0076:  stsfld     class [System.Runtime]System.Action Game.FrontendManager/'<>c'::'<>9__9_2'
    IL_007b:  callvirt   instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_0080:  ldloc.0
    IL_0081:  ldsfld     class [System.Runtime]System.Action Game.FrontendManager/'<>c'::'<>9__9_3'
    IL_0086:  dup
    IL_0087:  brtrue.s   IL_00a0

    IL_0089:  pop
    IL_008a:  ldsfld     class Game.FrontendManager/'<>c' Game.FrontendManager/'<>c'::'<>9'
    IL_008f:  ldftn      instance void Game.FrontendManager/'<>c'::'<Initialize>b__9_3'()
    IL_0095:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_009a:  dup
    IL_009b:  stsfld     class [System.Runtime]System.Action Game.FrontendManager/'<>c'::'<>9__9_3'
    IL_00a0:  callvirt   instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_00a5:  ldloc.0
    IL_00a6:  ldsfld     class [System.Runtime]System.Action Game.FrontendManager/'<>c'::'<>9__9_4'
    IL_00ab:  dup
    IL_00ac:  brtrue.s   IL_00c5

    IL_00ae:  pop
    IL_00af:  ldsfld     class Game.FrontendManager/'<>c' Game.FrontendManager/'<>c'::'<>9'
    IL_00b4:  ldftn      instance void Game.FrontendManager/'<>c'::'<Initialize>b__9_4'()
    IL_00ba:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00bf:  dup
    IL_00c0:  stsfld     class [System.Runtime]System.Action Game.FrontendManager/'<>c'::'<>9__9_4'
    IL_00c5:  callvirt   instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_00ca:  ldloc.0
    IL_00cb:  ldsfld     class [System.Runtime]System.Action Game.FrontendManager/'<>c'::'<>9__9_5'
    IL_00d0:  dup
    IL_00d1:  brtrue.s   IL_00ea

    IL_00d3:  pop
    IL_00d4:  ldsfld     class Game.FrontendManager/'<>c' Game.FrontendManager/'<>c'::'<>9'
    IL_00d9:  ldftn      instance void Game.FrontendManager/'<>c'::'<Initialize>b__9_5'()
    IL_00df:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00e4:  dup
    IL_00e5:  stsfld     class [System.Runtime]System.Action Game.FrontendManager/'<>c'::'<>9__9_5'
    IL_00ea:  callvirt   instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_00ef:  ldloc.0
    IL_00f0:  ldsfld     class [System.Runtime]System.Action Game.FrontendManager/'<>c'::'<>9__9_6'
    IL_00f5:  dup
    IL_00f6:  brtrue.s   IL_010f

    IL_00f8:  pop
    IL_00f9:  ldsfld     class Game.FrontendManager/'<>c' Game.FrontendManager/'<>c'::'<>9'
    IL_00fe:  ldftn      instance void Game.FrontendManager/'<>c'::'<Initialize>b__9_6'()
    IL_0104:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0109:  dup
    IL_010a:  stsfld     class [System.Runtime]System.Action Game.FrontendManager/'<>c'::'<>9__9_6'
    IL_010f:  callvirt   instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_0114:  ldloc.0
    IL_0115:  ldsfld     class [System.Runtime]System.Action Game.FrontendManager/'<>c'::'<>9__9_7'
    IL_011a:  dup
    IL_011b:  brtrue.s   IL_0134

    IL_011d:  pop
    IL_011e:  ldsfld     class Game.FrontendManager/'<>c' Game.FrontendManager/'<>c'::'<>9'
    IL_0123:  ldftn      instance void Game.FrontendManager/'<>c'::'<Initialize>b__9_7'()
    IL_0129:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_012e:  dup
    IL_012f:  stsfld     class [System.Runtime]System.Action Game.FrontendManager/'<>c'::'<>9__9_7'
    IL_0134:  callvirt   instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_0139:  ldloc.0
    IL_013a:  ldsfld     class [System.Runtime]System.Action Game.FrontendManager/'<>c'::'<>9__9_8'
    IL_013f:  dup
    IL_0140:  brtrue.s   IL_0159

    IL_0142:  pop
    IL_0143:  ldsfld     class Game.FrontendManager/'<>c' Game.FrontendManager/'<>c'::'<>9'
    IL_0148:  ldftn      instance void Game.FrontendManager/'<>c'::'<Initialize>b__9_8'()
    IL_014e:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0153:  dup
    IL_0154:  stsfld     class [System.Runtime]System.Action Game.FrontendManager/'<>c'::'<>9__9_8'
    IL_0159:  callvirt   instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_015e:  ldloc.0
    IL_015f:  ldsfld     class [System.Runtime]System.Action Game.FrontendManager/'<>c'::'<>9__9_9'
    IL_0164:  dup
    IL_0165:  brtrue.s   IL_017e

    IL_0167:  pop
    IL_0168:  ldsfld     class Game.FrontendManager/'<>c' Game.FrontendManager/'<>c'::'<>9'
    IL_016d:  ldftn      instance void Game.FrontendManager/'<>c'::'<Initialize>b__9_9'()
    IL_0173:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0178:  dup
    IL_0179:  stsfld     class [System.Runtime]System.Action Game.FrontendManager/'<>c'::'<>9__9_9'
    IL_017e:  callvirt   instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_0183:  ldloc.0
    IL_0184:  ldsfld     class [System.Runtime]System.Action Game.FrontendManager/'<>c'::'<>9__9_10'
    IL_0189:  dup
    IL_018a:  brtrue.s   IL_01a3

    IL_018c:  pop
    IL_018d:  ldsfld     class Game.FrontendManager/'<>c' Game.FrontendManager/'<>c'::'<>9'
    IL_0192:  ldftn      instance void Game.FrontendManager/'<>c'::'<Initialize>b__9_10'()
    IL_0198:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_019d:  dup
    IL_019e:  stsfld     class [System.Runtime]System.Action Game.FrontendManager/'<>c'::'<>9__9_10'
    IL_01a3:  callvirt   instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_01a8:  ldloc.0
    IL_01a9:  ldsfld     class [System.Runtime]System.Action Game.FrontendManager/'<>c'::'<>9__9_11'
    IL_01ae:  dup
    IL_01af:  brtrue.s   IL_01c8

    IL_01b1:  pop
    IL_01b2:  ldsfld     class Game.FrontendManager/'<>c' Game.FrontendManager/'<>c'::'<>9'
    IL_01b7:  ldftn      instance void Game.FrontendManager/'<>c'::'<Initialize>b__9_11'()
    IL_01bd:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_01c2:  dup
    IL_01c3:  stsfld     class [System.Runtime]System.Action Game.FrontendManager/'<>c'::'<>9__9_11'
    IL_01c8:  callvirt   instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_01cd:  ldloc.0
    IL_01ce:  ldsfld     class [System.Runtime]System.Action Game.FrontendManager/'<>c'::'<>9__9_12'
    IL_01d3:  dup
    IL_01d4:  brtrue.s   IL_01ed

    IL_01d6:  pop
    IL_01d7:  ldsfld     class Game.FrontendManager/'<>c' Game.FrontendManager/'<>c'::'<>9'
    IL_01dc:  ldftn      instance void Game.FrontendManager/'<>c'::'<Initialize>b__9_12'()
    IL_01e2:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_01e7:  dup
    IL_01e8:  stsfld     class [System.Runtime]System.Action Game.FrontendManager/'<>c'::'<>9__9_12'
    IL_01ed:  callvirt   instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_01f2:  ldloc.0
    IL_01f3:  ldsfld     class [System.Runtime]System.Action Game.FrontendManager/'<>c'::'<>9__9_13'
    IL_01f8:  dup
    IL_01f9:  brtrue.s   IL_0212

    IL_01fb:  pop
    IL_01fc:  ldsfld     class Game.FrontendManager/'<>c' Game.FrontendManager/'<>c'::'<>9'
    IL_0201:  ldftn      instance void Game.FrontendManager/'<>c'::'<Initialize>b__9_13'()
    IL_0207:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_020c:  dup
    IL_020d:  stsfld     class [System.Runtime]System.Action Game.FrontendManager/'<>c'::'<>9__9_13'
    IL_0212:  callvirt   instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_0217:  ldloc.0
    IL_0218:  ldsfld     class [System.Runtime]System.Action Game.FrontendManager/'<>c'::'<>9__9_14'
    IL_021d:  dup
    IL_021e:  brtrue.s   IL_0237

    IL_0220:  pop
    IL_0221:  ldsfld     class Game.FrontendManager/'<>c' Game.FrontendManager/'<>c'::'<>9'
    IL_0226:  ldftn      instance void Game.FrontendManager/'<>c'::'<Initialize>b__9_14'()
    IL_022c:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0231:  dup
    IL_0232:  stsfld     class [System.Runtime]System.Action Game.FrontendManager/'<>c'::'<>9__9_14'
    IL_0237:  callvirt   instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_023c:  ldloc.0
    IL_023d:  ldsfld     class [System.Runtime]System.Action Game.FrontendManager/'<>c'::'<>9__9_15'
    IL_0242:  dup
    IL_0243:  brtrue.s   IL_025c

    IL_0245:  pop
    IL_0246:  ldsfld     class Game.FrontendManager/'<>c' Game.FrontendManager/'<>c'::'<>9'
    IL_024b:  ldftn      instance void Game.FrontendManager/'<>c'::'<Initialize>b__9_15'()
    IL_0251:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0256:  dup
    IL_0257:  stsfld     class [System.Runtime]System.Action Game.FrontendManager/'<>c'::'<>9__9_15'
    IL_025c:  callvirt   instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_0261:  ldloc.0
    IL_0262:  ldsfld     class [System.Runtime]System.Action Game.FrontendManager/'<>c'::'<>9__9_16'
    IL_0267:  dup
    IL_0268:  brtrue.s   IL_0281

    IL_026a:  pop
    IL_026b:  ldsfld     class Game.FrontendManager/'<>c' Game.FrontendManager/'<>c'::'<>9'
    IL_0270:  ldftn      instance void Game.FrontendManager/'<>c'::'<Initialize>b__9_16'()
    IL_0276:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_027b:  dup
    IL_027c:  stsfld     class [System.Runtime]System.Action Game.FrontendManager/'<>c'::'<>9__9_16'
    IL_0281:  callvirt   instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_0286:  ldloc.0
    IL_0287:  ldsfld     class [System.Runtime]System.Action Game.FrontendManager/'<>c'::'<>9__9_17'
    IL_028c:  dup
    IL_028d:  brtrue.s   IL_02a6

    IL_028f:  pop
    IL_0290:  ldsfld     class Game.FrontendManager/'<>c' Game.FrontendManager/'<>c'::'<>9'
    IL_0295:  ldftn      instance void Game.FrontendManager/'<>c'::'<Initialize>b__9_17'()
    IL_029b:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_02a0:  dup
    IL_02a1:  stsfld     class [System.Runtime]System.Action Game.FrontendManager/'<>c'::'<>9__9_17'
    IL_02a6:  callvirt   instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_02ab:  ldloc.0
    IL_02ac:  ldsfld     class [System.Runtime]System.Action Game.FrontendManager/'<>c'::'<>9__9_18'
    IL_02b1:  dup
    IL_02b2:  brtrue.s   IL_02cb

    IL_02b4:  pop
    IL_02b5:  ldsfld     class Game.FrontendManager/'<>c' Game.FrontendManager/'<>c'::'<>9'
    IL_02ba:  ldftn      instance void Game.FrontendManager/'<>c'::'<Initialize>b__9_18'()
    IL_02c0:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_02c5:  dup
    IL_02c6:  stsfld     class [System.Runtime]System.Action Game.FrontendManager/'<>c'::'<>9__9_18'
    IL_02cb:  callvirt   instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_02d0:  ldloc.0
    IL_02d1:  ldsfld     class [System.Runtime]System.Action Game.FrontendManager/'<>c'::'<>9__9_19'
    IL_02d6:  dup
    IL_02d7:  brtrue.s   IL_02f0

    IL_02d9:  pop
    IL_02da:  ldsfld     class Game.FrontendManager/'<>c' Game.FrontendManager/'<>c'::'<>9'
    IL_02df:  ldftn      instance void Game.FrontendManager/'<>c'::'<Initialize>b__9_19'()
    IL_02e5:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_02ea:  dup
    IL_02eb:  stsfld     class [System.Runtime]System.Action Game.FrontendManager/'<>c'::'<>9__9_19'
    IL_02f0:  callvirt   instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_02f5:  ldloc.0
    IL_02f6:  ldsfld     class [System.Runtime]System.Action Game.FrontendManager/'<>c'::'<>9__9_20'
    IL_02fb:  dup
    IL_02fc:  brtrue.s   IL_0315

    IL_02fe:  pop
    IL_02ff:  ldsfld     class Game.FrontendManager/'<>c' Game.FrontendManager/'<>c'::'<>9'
    IL_0304:  ldftn      instance void Game.FrontendManager/'<>c'::'<Initialize>b__9_20'()
    IL_030a:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_030f:  dup
    IL_0310:  stsfld     class [System.Runtime]System.Action Game.FrontendManager/'<>c'::'<>9__9_20'
    IL_0315:  callvirt   instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_031a:  ldloc.0
    IL_031b:  ldsfld     class [System.Runtime]System.Action Game.FrontendManager/'<>c'::'<>9__9_21'
    IL_0320:  dup
    IL_0321:  brtrue.s   IL_033a

    IL_0323:  pop
    IL_0324:  ldsfld     class Game.FrontendManager/'<>c' Game.FrontendManager/'<>c'::'<>9'
    IL_0329:  ldftn      instance void Game.FrontendManager/'<>c'::'<Initialize>b__9_21'()
    IL_032f:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0334:  dup
    IL_0335:  stsfld     class [System.Runtime]System.Action Game.FrontendManager/'<>c'::'<>9__9_21'
    IL_033a:  callvirt   instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_033f:  ldloc.0
    IL_0340:  ldsfld     class [System.Runtime]System.Action Game.FrontendManager/'<>c'::'<>9__9_22'
    IL_0345:  dup
    IL_0346:  brtrue.s   IL_035f

    IL_0348:  pop
    IL_0349:  ldsfld     class Game.FrontendManager/'<>c' Game.FrontendManager/'<>c'::'<>9'
    IL_034e:  ldftn      instance void Game.FrontendManager/'<>c'::'<Initialize>b__9_22'()
    IL_0354:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0359:  dup
    IL_035a:  stsfld     class [System.Runtime]System.Action Game.FrontendManager/'<>c'::'<>9__9_22'
    IL_035f:  callvirt   instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_0364:  ldloc.0
    IL_0365:  ldsfld     class [System.Runtime]System.Action Game.FrontendManager/'<>c'::'<>9__9_23'
    IL_036a:  dup
    IL_036b:  brtrue.s   IL_0384

    IL_036d:  pop
    IL_036e:  ldsfld     class Game.FrontendManager/'<>c' Game.FrontendManager/'<>c'::'<>9'
    IL_0373:  ldftn      instance void Game.FrontendManager/'<>c'::'<Initialize>b__9_23'()
    IL_0379:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_037e:  dup
    IL_037f:  stsfld     class [System.Runtime]System.Action Game.FrontendManager/'<>c'::'<>9__9_23'
    IL_0384:  callvirt   instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_0389:  ldloc.0
    IL_038a:  ldsfld     class [System.Runtime]System.Action Game.FrontendManager/'<>c'::'<>9__9_24'
    IL_038f:  dup
    IL_0390:  brtrue.s   IL_03a9

    IL_0392:  pop
    IL_0393:  ldsfld     class Game.FrontendManager/'<>c' Game.FrontendManager/'<>c'::'<>9'
    IL_0398:  ldftn      instance void Game.FrontendManager/'<>c'::'<Initialize>b__9_24'()
    IL_039e:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_03a3:  dup
    IL_03a4:  stsfld     class [System.Runtime]System.Action Game.FrontendManager/'<>c'::'<>9__9_24'
    IL_03a9:  callvirt   instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_03ae:  ldloc.0
    IL_03af:  ldsfld     class [System.Runtime]System.Action Game.FrontendManager/'<>c'::'<>9__9_25'
    IL_03b4:  dup
    IL_03b5:  brtrue.s   IL_03ce

    IL_03b7:  pop
    IL_03b8:  ldsfld     class Game.FrontendManager/'<>c' Game.FrontendManager/'<>c'::'<>9'
    IL_03bd:  ldftn      instance void Game.FrontendManager/'<>c'::'<Initialize>b__9_25'()
    IL_03c3:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_03c8:  dup
    IL_03c9:  stsfld     class [System.Runtime]System.Action Game.FrontendManager/'<>c'::'<>9__9_25'
    IL_03ce:  callvirt   instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_03d3:  ldloc.0
    IL_03d4:  ldsfld     class [System.Runtime]System.Action Game.FrontendManager/'<>c'::'<>9__9_26'
    IL_03d9:  dup
    IL_03da:  brtrue.s   IL_03f3

    IL_03dc:  pop
    IL_03dd:  ldsfld     class Game.FrontendManager/'<>c' Game.FrontendManager/'<>c'::'<>9'
    IL_03e2:  ldftn      instance void Game.FrontendManager/'<>c'::'<Initialize>b__9_26'()
    IL_03e8:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_03ed:  dup
    IL_03ee:  stsfld     class [System.Runtime]System.Action Game.FrontendManager/'<>c'::'<>9__9_26'
    IL_03f3:  callvirt   instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_03f8:  ldloc.0
    IL_03f9:  ldsfld     class [System.Runtime]System.Action Game.FrontendManager/'<>c'::'<>9__9_27'
    IL_03fe:  dup
    IL_03ff:  brtrue.s   IL_0418

    IL_0401:  pop
    IL_0402:  ldsfld     class Game.FrontendManager/'<>c' Game.FrontendManager/'<>c'::'<>9'
    IL_0407:  ldftn      instance void Game.FrontendManager/'<>c'::'<Initialize>b__9_27'()
    IL_040d:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0412:  dup
    IL_0413:  stsfld     class [System.Runtime]System.Action Game.FrontendManager/'<>c'::'<>9__9_27'
    IL_0418:  callvirt   instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_041d:  ldstr      "Loading"
    IL_0422:  ldc.i4.0
    IL_0423:  newarr     [System.Runtime]System.Object
    IL_0428:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                object[])
    IL_042d:  ret
  } // end of method FrontendManager::Initialize

  .method public hidebysig static void  Update() cil managed
  {
    // 代码大小       217 (0xd9)
    .maxstack  3
    .locals init (float32 V_0,
             class [System.Runtime]System.Exception V_1)
    IL_0000:  call       float32 [Engine]Engine.Time::get_FrameDuration()
    IL_0005:  ldc.r4     0.0
    IL_000a:  ldc.r4     5.0000001e-002
    IL_000f:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_0014:  stloc.0
    IL_0015:  ldsfld     valuetype Game.FrontendManager/FadeState Game.FrontendManager::m_fadeState
    IL_001a:  brtrue.s   IL_002b

    IL_001c:  ldc.r4     0.0
    IL_0021:  stsfld     float32 Game.FrontendManager::m_fadeFactor
    IL_0026:  br         IL_00b4

    IL_002b:  ldsfld     valuetype Game.FrontendManager/FadeState Game.FrontendManager::m_fadeState
    IL_0030:  ldc.i4.1
    IL_0031:  bne.un.s   IL_0079

    IL_0033:  ldsfld     float32 Game.FrontendManager::m_fadeFactor
    IL_0038:  ldc.r4     1.
    IL_003d:  bne.un.s   IL_0056

    IL_003f:  ldc.i4.2
    IL_0040:  stsfld     valuetype Game.FrontendManager/FadeState Game.FrontendManager::m_fadeState
    IL_0045:  ldsfld     class [System.Runtime]System.Action Game.FrontendManager::m_fadeAction
    IL_004a:  brfalse.s  IL_0056

    IL_004c:  ldsfld     class [System.Runtime]System.Action Game.FrontendManager::m_fadeAction
    IL_0051:  callvirt   instance void [System.Runtime]System.Action::Invoke()
    IL_0056:  ldsfld     float32 Game.FrontendManager::m_fadeFactor
    IL_005b:  ldc.r4     6.
    IL_0060:  ldloc.0
    IL_0061:  mul
    IL_0062:  add
    IL_0063:  ldc.r4     0.0
    IL_0068:  ldc.r4     1.
    IL_006d:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_0072:  stsfld     float32 Game.FrontendManager::m_fadeFactor
    IL_0077:  br.s       IL_00b4

    IL_0079:  ldsfld     valuetype Game.FrontendManager/FadeState Game.FrontendManager::m_fadeState
    IL_007e:  ldc.i4.2
    IL_007f:  bne.un.s   IL_00b4

    IL_0081:  ldsfld     float32 Game.FrontendManager::m_fadeFactor
    IL_0086:  ldc.r4     0.0
    IL_008b:  bne.un.s   IL_0093

    IL_008d:  ldc.i4.0
    IL_008e:  stsfld     valuetype Game.FrontendManager/FadeState Game.FrontendManager::m_fadeState
    IL_0093:  ldsfld     float32 Game.FrontendManager::m_fadeFactor
    IL_0098:  ldc.r4     1.98
    IL_009d:  ldloc.0
    IL_009e:  mul
    IL_009f:  sub
    IL_00a0:  ldc.r4     0.0
    IL_00a5:  ldc.r4     1.
    IL_00aa:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_00af:  stsfld     float32 Game.FrontendManager::m_fadeFactor
    IL_00b4:  call       void Game.DialogsManager::Update()
    .try
    {
      IL_00b9:  call       void Game.ScreensManager::Update()
      IL_00be:  leave.s    IL_00d3

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_00c0:  stloc.1
      IL_00c1:  ldstr      "MainMenu"
      IL_00c6:  ldc.i4.0
      IL_00c7:  newarr     [System.Runtime]System.Object
      IL_00cc:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                  object[])
      IL_00d1:  ldloc.1
      IL_00d2:  throw

    }  // end handler
    IL_00d3:  call       void Game.WidgetsManager::Update()
    IL_00d8:  ret
  } // end of method FrontendManager::Update

  .method public hidebysig static void  Draw() cil managed
  {
    // 代码大小       389 (0x185)
    .maxstack  9
    .locals init (valuetype [Engine]Engine.Graphics.Viewport V_0,
             valuetype [Engine]Engine.Graphics.Viewport V_1,
             valuetype [Engine]Engine.Vector2 V_2)
    IL_0000:  call       void Game.WidgetsManager::Draw()
    IL_0005:  ldsfld     float32 Game.FrontendManager::m_fadeFactor
    IL_000a:  ldc.r4     0.0
    IL_000f:  ble.un.s   IL_0072

    IL_0011:  ldsfld     class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.FrontendManager::m_primitivesRenderer
    IL_0016:  ldc.i4.0
    IL_0017:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::None
    IL_001c:  ldsfld     class [Engine]Engine.Graphics.RasterizerState [Engine]Engine.Graphics.RasterizerState::CullNone
    IL_0021:  ldnull
    IL_0022:  callvirt   instance class [Engine]Engine.Graphics.FlatBatch2D [Engine]Engine.Graphics.PrimitivesRenderer2D::FlatBatch(int32,
                                                                                                                                    class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                    class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                    class [Engine]Engine.Graphics.BlendState)
    IL_0027:  call       valuetype [Engine]Engine.Graphics.Viewport [Engine]Engine.Graphics.Display::get_Viewport()
    IL_002c:  stloc.0
    IL_002d:  ldc.r4     0.0
    IL_0032:  ldc.r4     0.0
    IL_0037:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_003c:  ldloc.0
    IL_003d:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Width
    IL_0042:  conv.r4
    IL_0043:  ldloc.0
    IL_0044:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Height
    IL_0049:  conv.r4
    IL_004a:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_004f:  ldc.r4     0.0
    IL_0054:  ldc.r4     0.0
    IL_0059:  ldc.r4     0.0
    IL_005e:  ldc.r4     0.0
    IL_0063:  ldsfld     float32 Game.FrontendManager::m_fadeFactor
    IL_0068:  newobj     instance void [Engine]Engine.Color::.ctor(float32,
                                                                   float32,
                                                                   float32,
                                                                   float32)
    IL_006d:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      float32,
                                                                                      valuetype [Engine]Engine.Color)
    IL_0072:  call       bool Game.SettingsManager::get_DisplayFpsCounter()
    IL_0077:  brfalse    IL_0179

    IL_007c:  ldc.r8     1.
    IL_0085:  ldc.r8     0.0
    IL_008e:  call       bool [Engine]Engine.Time::PeriodicEvent(float64,
                                                                 float64)
    IL_0093:  brfalse.s  IL_010a

    IL_0095:  ldstr      "MEM {0:0}MB {1:0}MB, CPU {2:0}%, FPS {3:0.0}"
    IL_009a:  ldc.i4.4
    IL_009b:  newarr     [System.Runtime]System.Object
    IL_00a0:  dup
    IL_00a1:  ldc.i4.0
    IL_00a2:  call       int64 Game.PerformanceManager::get_TotalMemoryUsed()
    IL_00a7:  conv.r4
    IL_00a8:  ldc.r4     1024.
    IL_00ad:  div
    IL_00ae:  ldc.r4     1024.
    IL_00b3:  div
    IL_00b4:  box        [System.Runtime]System.Single
    IL_00b9:  stelem.ref
    IL_00ba:  dup
    IL_00bb:  ldc.i4.1
    IL_00bc:  call       int64 Game.PerformanceManager::get_TotalGpuMemoryUsed()
    IL_00c1:  conv.r4
    IL_00c2:  ldc.r4     1024.
    IL_00c7:  div
    IL_00c8:  ldc.r4     1024.
    IL_00cd:  div
    IL_00ce:  box        [System.Runtime]System.Single
    IL_00d3:  stelem.ref
    IL_00d4:  dup
    IL_00d5:  ldc.i4.2
    IL_00d6:  call       float32 Game.PerformanceManager::get_AverageCpuFrameTime()
    IL_00db:  call       float32 Game.PerformanceManager::get_AverageFrameTime()
    IL_00e0:  div
    IL_00e1:  ldc.r4     100.
    IL_00e6:  mul
    IL_00e7:  box        [System.Runtime]System.Single
    IL_00ec:  stelem.ref
    IL_00ed:  dup
    IL_00ee:  ldc.i4.3
    IL_00ef:  ldc.r4     1.
    IL_00f4:  call       float32 Game.PerformanceManager::get_AverageFrameTime()
    IL_00f9:  div
    IL_00fa:  box        [System.Runtime]System.Single
    IL_00ff:  stelem.ref
    IL_0100:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0105:  stsfld     string Game.FrontendManager::m_fpsString
    IL_010a:  call       valuetype [Engine]Engine.Graphics.Viewport [Engine]Engine.Graphics.Display::get_Viewport()
    IL_010f:  stloc.1
    IL_0110:  ldloca.s   V_2
    IL_0112:  call       float32 Game.WidgetsManager::get_Scale()
    IL_0117:  ldc.r4     1.
    IL_011c:  ldc.r4     4.
    IL_0121:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_0126:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_012b:  call       instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_0130:  ldsfld     class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.FrontendManager::m_primitivesRenderer
    IL_0135:  call       class [Engine]Engine.Media.BitmapFont [Engine]Engine.Media.BitmapFont::get_DebugFont()
    IL_013a:  ldc.i4.0
    IL_013b:  ldnull
    IL_013c:  ldnull
    IL_013d:  ldnull
    IL_013e:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::PointClamp
    IL_0143:  callvirt   instance class [Engine]Engine.Graphics.FontBatch2D [Engine]Engine.Graphics.PrimitivesRenderer2D::FontBatch(class [Engine]Engine.Media.BitmapFont,
                                                                                                                                    int32,
                                                                                                                                    class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                    class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                    class [Engine]Engine.Graphics.BlendState,
                                                                                                                                    class [Engine]Engine.Graphics.SamplerState)
    IL_0148:  ldsfld     string Game.FrontendManager::m_fpsString
    IL_014d:  ldloc.1
    IL_014e:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Width
    IL_0153:  conv.r4
    IL_0154:  ldc.r4     0.0
    IL_0159:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_015e:  ldc.r4     0.0
    IL_0163:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0168:  ldc.i4.4
    IL_0169:  ldloc.2
    IL_016a:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_016f:  ldc.r4     0.0
    IL_0174:  callvirt   instance void [Engine]Engine.Graphics.FontBatch2D::QueueText(string,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      float32,
                                                                                      valuetype [Engine]Engine.Color,
                                                                                      valuetype [Engine]Engine.Graphics.TextAnchor,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      float32)
    IL_0179:  ldsfld     class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.FrontendManager::m_primitivesRenderer
    IL_017e:  ldc.i4.1
    IL_017f:  callvirt   instance void [Engine]Engine.Graphics.PrimitivesRenderer2D::Flush(bool)
    IL_0184:  ret
  } // end of method FrontendManager::Draw

  .method public hidebysig static void  StartFadeOutIn(class [System.Runtime]System.Action fadeAction) cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldc.i4.1
    IL_0001:  stsfld     valuetype Game.FrontendManager/FadeState Game.FrontendManager::m_fadeState
    IL_0006:  ldarg.0
    IL_0007:  stsfld     class [System.Runtime]System.Action Game.FrontendManager::m_fadeAction
    IL_000c:  ret
  } // end of method FrontendManager::StartFadeOutIn

  .method public hidebysig static void  StartFadeIn(class [System.Runtime]System.Action fadeAction) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldc.r4     1.
    IL_0005:  stsfld     float32 Game.FrontendManager::m_fadeFactor
    IL_000a:  ldc.i4.2
    IL_000b:  stsfld     valuetype Game.FrontendManager/FadeState Game.FrontendManager::m_fadeState
    IL_0010:  ldarg.0
    IL_0011:  stsfld     class [System.Runtime]System.Action Game.FrontendManager::m_fadeAction
    IL_0016:  ret
  } // end of method FrontendManager::StartFadeIn

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       21 (0x15)
    .maxstack  8
    IL_0000:  newobj     instance void [Engine]Engine.Graphics.PrimitivesRenderer2D::.ctor()
    IL_0005:  stsfld     class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.FrontendManager::m_primitivesRenderer
    IL_000a:  ldsfld     string [System.Runtime]System.String::Empty
    IL_000f:  stsfld     string Game.FrontendManager::m_fpsString
    IL_0014:  ret
  } // end of method FrontendManager::.cctor

  .property float32 FadeFactor()
  {
    .get float32 Game.FrontendManager::get_FadeFactor()
  } // end of property FrontendManager::FadeFactor
} // end of class Game.FrontendManager