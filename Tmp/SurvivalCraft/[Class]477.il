.class public abstract auto ansi sealed beforefieldinit Game.ScreensManager
       extends [System.Runtime]System.Object
{
  .class auto ansi nested private beforefieldinit AnimationData
         extends [System.Runtime]System.Object
  {
    .field public class Game.Screen OldScreen
    .field public class Game.Screen NewScreen
    .field public float32 Factor
    .field public float32 Speed
    .field public object[] Parameters
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method AnimationData::.ctor

  } // end of class AnimationData

  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.ScreensManager/'<>c' '<>9'
    .field public static class [System.Runtime]System.Action '<>9__17_0'
    .field public static class [System.Runtime]System.Action '<>9__17_1'
    .field public static class [System.Runtime]System.Action '<>9__17_2'
    .field public static class [System.Runtime]System.Action '<>9__17_3'
    .field public static class [System.Runtime]System.Action '<>9__17_4'
    .field public static class [System.Runtime]System.Action '<>9__17_5'
    .field public static class [System.Runtime]System.Action '<>9__17_6'
    .field public static class [System.Runtime]System.Action '<>9__17_7'
    .field public static class [System.Runtime]System.Action '<>9__17_8'
    .field public static class [System.Runtime]System.Action '<>9__17_9'
    .field public static class [System.Runtime]System.Action '<>9__17_10'
    .field public static class [System.Runtime]System.Action '<>9__17_11'
    .field public static class [System.Runtime]System.Action '<>9__17_12'
    .field public static class [System.Runtime]System.Action '<>9__17_13'
    .field public static class [System.Runtime]System.Action '<>9__17_14'
    .field public static class [System.Runtime]System.Action '<>9__17_15'
    .field public static class [System.Runtime]System.Action '<>9__17_16'
    .field public static class [System.Runtime]System.Action '<>9__17_17'
    .field public static class [System.Runtime]System.Action '<>9__17_18'
    .field public static class [System.Runtime]System.Action '<>9__17_19'
    .field public static class [System.Runtime]System.Action '<>9__17_20'
    .field public static class [System.Runtime]System.Action '<>9__17_21'
    .field public static class [System.Runtime]System.Action '<>9__17_22'
    .field public static class [System.Runtime]System.Action '<>9__17_23'
    .field public static class [System.Runtime]System.Action '<>9__17_24'
    .field public static class [System.Runtime]System.Action '<>9__17_25'
    .field public static class [System.Runtime]System.Action '<>9__17_26'
    .field public static class [System.Runtime]System.Action '<>9__17_27'
    .field public static class [System.Runtime]System.Action '<>9__17_28'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.ScreensManager/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.ScreensManager/'<>c' Game.ScreensManager/'<>c'::'<>9'
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
            '<Initialize>b__17_0'() cil managed
    {
      // 代码大小       16 (0x10)
      .maxstack  8
      IL_0000:  ldstr      "Nag"
      IL_0005:  newobj     instance void Game.NagScreen::.ctor()
      IL_000a:  call       void Game.ScreensManager::AddScreen(string,
                                                               class Game.Screen)
      IL_000f:  ret
    } // end of method '<>c'::'<Initialize>b__17_0'

    .method assembly hidebysig instance void 
            '<Initialize>b__17_1'() cil managed
    {
      // 代码大小       16 (0x10)
      .maxstack  8
      IL_0000:  ldstr      "MainMenu"
      IL_0005:  newobj     instance void Game.MainMenuScreen::.ctor()
      IL_000a:  call       void Game.ScreensManager::AddScreen(string,
                                                               class Game.Screen)
      IL_000f:  ret
    } // end of method '<>c'::'<Initialize>b__17_1'

    .method assembly hidebysig instance void 
            '<Initialize>b__17_2'() cil managed
    {
      // 代码大小       16 (0x10)
      .maxstack  8
      IL_0000:  ldstr      "Recipaedia"
      IL_0005:  newobj     instance void Game.RecipaediaScreen::.ctor()
      IL_000a:  call       void Game.ScreensManager::AddScreen(string,
                                                               class Game.Screen)
      IL_000f:  ret
    } // end of method '<>c'::'<Initialize>b__17_2'

    .method assembly hidebysig instance void 
            '<Initialize>b__17_3'() cil managed
    {
      // 代码大小       16 (0x10)
      .maxstack  8
      IL_0000:  ldstr      "RecipaediaRecipes"
      IL_0005:  newobj     instance void Game.RecipaediaRecipesScreen::.ctor()
      IL_000a:  call       void Game.ScreensManager::AddScreen(string,
                                                               class Game.Screen)
      IL_000f:  ret
    } // end of method '<>c'::'<Initialize>b__17_3'

    .method assembly hidebysig instance void 
            '<Initialize>b__17_4'() cil managed
    {
      // 代码大小       16 (0x10)
      .maxstack  8
      IL_0000:  ldstr      "RecipaediaDescription"
      IL_0005:  newobj     instance void Game.RecipaediaDescriptionScreen::.ctor()
      IL_000a:  call       void Game.ScreensManager::AddScreen(string,
                                                               class Game.Screen)
      IL_000f:  ret
    } // end of method '<>c'::'<Initialize>b__17_4'

    .method assembly hidebysig instance void 
            '<Initialize>b__17_5'() cil managed
    {
      // 代码大小       16 (0x10)
      .maxstack  8
      IL_0000:  ldstr      "Bestiary"
      IL_0005:  newobj     instance void Game.BestiaryScreen::.ctor()
      IL_000a:  call       void Game.ScreensManager::AddScreen(string,
                                                               class Game.Screen)
      IL_000f:  ret
    } // end of method '<>c'::'<Initialize>b__17_5'

    .method assembly hidebysig instance void 
            '<Initialize>b__17_6'() cil managed
    {
      // 代码大小       16 (0x10)
      .maxstack  8
      IL_0000:  ldstr      "BestiaryDescription"
      IL_0005:  newobj     instance void Game.BestiaryDescriptionScreen::.ctor()
      IL_000a:  call       void Game.ScreensManager::AddScreen(string,
                                                               class Game.Screen)
      IL_000f:  ret
    } // end of method '<>c'::'<Initialize>b__17_6'

    .method assembly hidebysig instance void 
            '<Initialize>b__17_7'() cil managed
    {
      // 代码大小       16 (0x10)
      .maxstack  8
      IL_0000:  ldstr      "Help"
      IL_0005:  newobj     instance void Game.HelpScreen::.ctor()
      IL_000a:  call       void Game.ScreensManager::AddScreen(string,
                                                               class Game.Screen)
      IL_000f:  ret
    } // end of method '<>c'::'<Initialize>b__17_7'

    .method assembly hidebysig instance void 
            '<Initialize>b__17_8'() cil managed
    {
      // 代码大小       16 (0x10)
      .maxstack  8
      IL_0000:  ldstr      "HelpTopic"
      IL_0005:  newobj     instance void Game.HelpTopicScreen::.ctor()
      IL_000a:  call       void Game.ScreensManager::AddScreen(string,
                                                               class Game.Screen)
      IL_000f:  ret
    } // end of method '<>c'::'<Initialize>b__17_8'

    .method assembly hidebysig instance void 
            '<Initialize>b__17_9'() cil managed
    {
      // 代码大小       16 (0x10)
      .maxstack  8
      IL_0000:  ldstr      "Settings"
      IL_0005:  newobj     instance void Game.SettingsScreen::.ctor()
      IL_000a:  call       void Game.ScreensManager::AddScreen(string,
                                                               class Game.Screen)
      IL_000f:  ret
    } // end of method '<>c'::'<Initialize>b__17_9'

    .method assembly hidebysig instance void 
            '<Initialize>b__17_10'() cil managed
    {
      // 代码大小       16 (0x10)
      .maxstack  8
      IL_0000:  ldstr      "SettingsPerformance"
      IL_0005:  newobj     instance void Game.SettingsPerformanceScreen::.ctor()
      IL_000a:  call       void Game.ScreensManager::AddScreen(string,
                                                               class Game.Screen)
      IL_000f:  ret
    } // end of method '<>c'::'<Initialize>b__17_10'

    .method assembly hidebysig instance void 
            '<Initialize>b__17_11'() cil managed
    {
      // 代码大小       16 (0x10)
      .maxstack  8
      IL_0000:  ldstr      "SettingsGraphics"
      IL_0005:  newobj     instance void Game.SettingsGraphicsScreen::.ctor()
      IL_000a:  call       void Game.ScreensManager::AddScreen(string,
                                                               class Game.Screen)
      IL_000f:  ret
    } // end of method '<>c'::'<Initialize>b__17_11'

    .method assembly hidebysig instance void 
            '<Initialize>b__17_12'() cil managed
    {
      // 代码大小       16 (0x10)
      .maxstack  8
      IL_0000:  ldstr      "SettingsUi"
      IL_0005:  newobj     instance void Game.SettingsUiScreen::.ctor()
      IL_000a:  call       void Game.ScreensManager::AddScreen(string,
                                                               class Game.Screen)
      IL_000f:  ret
    } // end of method '<>c'::'<Initialize>b__17_12'

    .method assembly hidebysig instance void 
            '<Initialize>b__17_13'() cil managed
    {
      // 代码大小       16 (0x10)
      .maxstack  8
      IL_0000:  ldstr      "SettingsCompatibility"
      IL_0005:  newobj     instance void Game.SettingsCompatibilityScreen::.ctor()
      IL_000a:  call       void Game.ScreensManager::AddScreen(string,
                                                               class Game.Screen)
      IL_000f:  ret
    } // end of method '<>c'::'<Initialize>b__17_13'

    .method assembly hidebysig instance void 
            '<Initialize>b__17_14'() cil managed
    {
      // 代码大小       16 (0x10)
      .maxstack  8
      IL_0000:  ldstr      "SettingsAudio"
      IL_0005:  newobj     instance void Game.SettingsAudioScreen::.ctor()
      IL_000a:  call       void Game.ScreensManager::AddScreen(string,
                                                               class Game.Screen)
      IL_000f:  ret
    } // end of method '<>c'::'<Initialize>b__17_14'

    .method assembly hidebysig instance void 
            '<Initialize>b__17_15'() cil managed
    {
      // 代码大小       16 (0x10)
      .maxstack  8
      IL_0000:  ldstr      "SettingsControls"
      IL_0005:  newobj     instance void Game.SettingsControlsScreen::.ctor()
      IL_000a:  call       void Game.ScreensManager::AddScreen(string,
                                                               class Game.Screen)
      IL_000f:  ret
    } // end of method '<>c'::'<Initialize>b__17_15'

    .method assembly hidebysig instance void 
            '<Initialize>b__17_16'() cil managed
    {
      // 代码大小       16 (0x10)
      .maxstack  8
      IL_0000:  ldstr      "Play"
      IL_0005:  newobj     instance void Game.PlayScreen::.ctor()
      IL_000a:  call       void Game.ScreensManager::AddScreen(string,
                                                               class Game.Screen)
      IL_000f:  ret
    } // end of method '<>c'::'<Initialize>b__17_16'

    .method assembly hidebysig instance void 
            '<Initialize>b__17_17'() cil managed
    {
      // 代码大小       16 (0x10)
      .maxstack  8
      IL_0000:  ldstr      "NewWorld"
      IL_0005:  newobj     instance void Game.NewWorldScreen::.ctor()
      IL_000a:  call       void Game.ScreensManager::AddScreen(string,
                                                               class Game.Screen)
      IL_000f:  ret
    } // end of method '<>c'::'<Initialize>b__17_17'

    .method assembly hidebysig instance void 
            '<Initialize>b__17_18'() cil managed
    {
      // 代码大小       16 (0x10)
      .maxstack  8
      IL_0000:  ldstr      "ModifyWorld"
      IL_0005:  newobj     instance void Game.ModifyWorldScreen::.ctor()
      IL_000a:  call       void Game.ScreensManager::AddScreen(string,
                                                               class Game.Screen)
      IL_000f:  ret
    } // end of method '<>c'::'<Initialize>b__17_18'

    .method assembly hidebysig instance void 
            '<Initialize>b__17_19'() cil managed
    {
      // 代码大小       16 (0x10)
      .maxstack  8
      IL_0000:  ldstr      "WorldOptions"
      IL_0005:  newobj     instance void Game.WorldOptionsScreen::.ctor()
      IL_000a:  call       void Game.ScreensManager::AddScreen(string,
                                                               class Game.Screen)
      IL_000f:  ret
    } // end of method '<>c'::'<Initialize>b__17_19'

    .method assembly hidebysig instance void 
            '<Initialize>b__17_20'() cil managed
    {
      // 代码大小       16 (0x10)
      .maxstack  8
      IL_0000:  ldstr      "GameLoading"
      IL_0005:  newobj     instance void Game.GameLoadingScreen::.ctor()
      IL_000a:  call       void Game.ScreensManager::AddScreen(string,
                                                               class Game.Screen)
      IL_000f:  ret
    } // end of method '<>c'::'<Initialize>b__17_20'

    .method assembly hidebysig instance void 
            '<Initialize>b__17_21'() cil managed
    {
      // 代码大小       16 (0x10)
      .maxstack  8
      IL_0000:  ldstr      "Game"
      IL_0005:  newobj     instance void Game.GameScreen::.ctor()
      IL_000a:  call       void Game.ScreensManager::AddScreen(string,
                                                               class Game.Screen)
      IL_000f:  ret
    } // end of method '<>c'::'<Initialize>b__17_21'

    .method assembly hidebysig instance void 
            '<Initialize>b__17_22'() cil managed
    {
      // 代码大小       16 (0x10)
      .maxstack  8
      IL_0000:  ldstr      "TrialEnded"
      IL_0005:  newobj     instance void Game.TrialEndedScreen::.ctor()
      IL_000a:  call       void Game.ScreensManager::AddScreen(string,
                                                               class Game.Screen)
      IL_000f:  ret
    } // end of method '<>c'::'<Initialize>b__17_22'

    .method assembly hidebysig instance void 
            '<Initialize>b__17_23'() cil managed
    {
      // 代码大小       16 (0x10)
      .maxstack  8
      IL_0000:  ldstr      "Content"
      IL_0005:  newobj     instance void Game.ContentScreen::.ctor()
      IL_000a:  call       void Game.ScreensManager::AddScreen(string,
                                                               class Game.Screen)
      IL_000f:  ret
    } // end of method '<>c'::'<Initialize>b__17_23'

    .method assembly hidebysig instance void 
            '<Initialize>b__17_24'() cil managed
    {
      // 代码大小       16 (0x10)
      .maxstack  8
      IL_0000:  ldstr      "ExternalContent"
      IL_0005:  newobj     instance void Game.ExternalContentScreen::.ctor()
      IL_000a:  call       void Game.ScreensManager::AddScreen(string,
                                                               class Game.Screen)
      IL_000f:  ret
    } // end of method '<>c'::'<Initialize>b__17_24'

    .method assembly hidebysig instance void 
            '<Initialize>b__17_25'() cil managed
    {
      // 代码大小       16 (0x10)
      .maxstack  8
      IL_0000:  ldstr      "CommunityContent"
      IL_0005:  newobj     instance void Game.CommunityContentScreen::.ctor()
      IL_000a:  call       void Game.ScreensManager::AddScreen(string,
                                                               class Game.Screen)
      IL_000f:  ret
    } // end of method '<>c'::'<Initialize>b__17_25'

    .method assembly hidebysig instance void 
            '<Initialize>b__17_26'() cil managed
    {
      // 代码大小       16 (0x10)
      .maxstack  8
      IL_0000:  ldstr      "ManageContent"
      IL_0005:  newobj     instance void Game.ManageContentScreen::.ctor()
      IL_000a:  call       void Game.ScreensManager::AddScreen(string,
                                                               class Game.Screen)
      IL_000f:  ret
    } // end of method '<>c'::'<Initialize>b__17_26'

    .method assembly hidebysig instance void 
            '<Initialize>b__17_27'() cil managed
    {
      // 代码大小       16 (0x10)
      .maxstack  8
      IL_0000:  ldstr      "Players"
      IL_0005:  newobj     instance void Game.PlayersScreen::.ctor()
      IL_000a:  call       void Game.ScreensManager::AddScreen(string,
                                                               class Game.Screen)
      IL_000f:  ret
    } // end of method '<>c'::'<Initialize>b__17_27'

    .method assembly hidebysig instance void 
            '<Initialize>b__17_28'() cil managed
    {
      // 代码大小       16 (0x10)
      .maxstack  8
      IL_0000:  ldstr      "Player"
      IL_0005:  newobj     instance void Game.PlayerScreen::.ctor()
      IL_000a:  call       void Game.ScreensManager::AddScreen(string,
                                                               class Game.Screen)
      IL_000f:  ret
    } // end of method '<>c'::'<Initialize>b__17_28'

  } // end of class '<>c'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass22_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class Game.Screen screen
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass22_0'::.ctor

    .method assembly hidebysig instance bool 
            '<GetScreenName>b__0'(valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,class Game.Screen> kvp) cil managed
    {
      // 代码大小       16 (0x10)
      .maxstack  8
      IL_0000:  ldarga.s   kvp
      IL_0002:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,class Game.Screen>::get_Value()
      IL_0007:  ldarg.0
      IL_0008:  ldfld      class Game.Screen Game.ScreensManager/'<>c__DisplayClass22_0'::screen
      IL_000d:  ceq
      IL_000f:  ret
    } // end of method '<>c__DisplayClass22_0'::'<GetScreenName>b__0'

  } // end of class '<>c__DisplayClass22_0'

  .field private static class [System.Collections]System.Collections.Generic.Dictionary`2<string,class Game.Screen> m_screens
  .field private static class Game.ScreensManager/AnimationData m_animationData
  .field private static class Game.Screen '<CurrentScreen>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static class Game.Screen '<PreviousScreen>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname static 
          bool  get_IsAnimating() cil managed
  {
    // 代码大小       9 (0x9)
    .maxstack  8
    IL_0000:  ldsfld     class Game.ScreensManager/AnimationData Game.ScreensManager::m_animationData
    IL_0005:  ldnull
    IL_0006:  cgt.un
    IL_0008:  ret
  } // end of method ScreensManager::get_IsAnimating

  .method public hidebysig specialname static 
          class Game.Screen  get_CurrentScreen() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     class Game.Screen Game.ScreensManager::'<CurrentScreen>k__BackingField'
    IL_0005:  ret
  } // end of method ScreensManager::get_CurrentScreen

  .method private hidebysig specialname static 
          void  set_CurrentScreen(class Game.Screen 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  stsfld     class Game.Screen Game.ScreensManager::'<CurrentScreen>k__BackingField'
    IL_0006:  ret
  } // end of method ScreensManager::set_CurrentScreen

  .method public hidebysig specialname static 
          class Game.Screen  get_PreviousScreen() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     class Game.Screen Game.ScreensManager::'<PreviousScreen>k__BackingField'
    IL_0005:  ret
  } // end of method ScreensManager::get_PreviousScreen

  .method private hidebysig specialname static 
          void  set_PreviousScreen(class Game.Screen 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  stsfld     class Game.Screen Game.ScreensManager::'<PreviousScreen>k__BackingField'
    IL_0006:  ret
  } // end of method ScreensManager::set_PreviousScreen

  .method public hidebysig static !!T  FindScreen<(Game.Screen) T>(string name) cil managed
  {
    // 代码大小       21 (0x15)
    .maxstack  3
    .locals init (class Game.Screen V_0)
    IL_0000:  ldsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<string,class Game.Screen> Game.ScreensManager::m_screens
    IL_0005:  ldarg.0
    IL_0006:  ldloca.s   V_0
    IL_0008:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<string,class Game.Screen>::TryGetValue(!0,
                                                                                                                                                !1&)
    IL_000d:  pop
    IL_000e:  ldloc.0
    IL_000f:  unbox.any  !!T
    IL_0014:  ret
  } // end of method ScreensManager::FindScreen

  .method public hidebysig static void  AddScreen(string name,
                                                  class Game.Screen screen) cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<string,class Game.Screen> Game.ScreensManager::m_screens
    IL_0005:  ldarg.0
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,class Game.Screen>::Add(!0,
                                                                                                                                        !1)
    IL_000c:  ret
  } // end of method ScreensManager::AddScreen

  .method public hidebysig static void  SwitchScreen(string name,
                                                     object[] parameters) cil managed
  {
    .param [2]
    .custom instance void [System.Runtime]System.ParamArrayAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       24 (0x18)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_0006:  brtrue.s   IL_0010

    IL_0008:  ldarg.0
    IL_0009:  call       !!0 Game.ScreensManager::FindScreen<class Game.Screen>(string)
    IL_000e:  br.s       IL_0011

    IL_0010:  ldnull
    IL_0011:  ldarg.1
    IL_0012:  call       void Game.ScreensManager::SwitchScreen(class Game.Screen,
                                                                object[])
    IL_0017:  ret
  } // end of method ScreensManager::SwitchScreen

  .method public hidebysig static void  SwitchScreen(class Game.Screen screen,
                                                     object[] parameters) cil managed
  {
    .param [2]
    .custom instance void [System.Runtime]System.ParamArrayAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       238 (0xee)
    .maxstack  7
    .locals init (valuetype [System.Runtime]System.DateTime V_0)
    IL_0000:  ldsfld     class Game.ScreensManager/AnimationData Game.ScreensManager::m_animationData
    IL_0005:  brfalse.s  IL_000c

    IL_0007:  call       void Game.ScreensManager::EndAnimation()
    IL_000c:  newobj     instance void Game.ScreensManager/AnimationData::.ctor()
    IL_0011:  dup
    IL_0012:  ldarg.0
    IL_0013:  stfld      class Game.Screen Game.ScreensManager/AnimationData::NewScreen
    IL_0018:  dup
    IL_0019:  call       class Game.Screen Game.ScreensManager::get_CurrentScreen()
    IL_001e:  stfld      class Game.Screen Game.ScreensManager/AnimationData::OldScreen
    IL_0023:  dup
    IL_0024:  ldarg.1
    IL_0025:  stfld      object[] Game.ScreensManager/AnimationData::Parameters
    IL_002a:  dup
    IL_002b:  call       class Game.Screen Game.ScreensManager::get_CurrentScreen()
    IL_0030:  brfalse.s  IL_0039

    IL_0032:  ldc.r4     3.
    IL_0037:  br.s       IL_003e

    IL_0039:  ldc.r4     3.4028235e+038
    IL_003e:  stfld      float32 Game.ScreensManager/AnimationData::Speed
    IL_0043:  stsfld     class Game.ScreensManager/AnimationData Game.ScreensManager::m_animationData
    IL_0048:  call       class Game.Screen Game.ScreensManager::get_CurrentScreen()
    IL_004d:  brfalse.s  IL_0064

    IL_004f:  ldc.i4.0
    IL_0050:  call       void Game.WidgetsManager::set_IsUpdateEnabled(bool)
    IL_0055:  call       class Game.Screen Game.ScreensManager::get_CurrentScreen()
    IL_005a:  callvirt   instance class Game.WidgetInput Game.Widget::get_Input()
    IL_005f:  callvirt   instance void Game.WidgetInput::Clear()
    IL_0064:  call       class Game.Screen Game.ScreensManager::get_CurrentScreen()
    IL_0069:  call       void Game.ScreensManager::set_PreviousScreen(class Game.Screen)
    IL_006e:  ldarg.0
    IL_006f:  call       void Game.ScreensManager::set_CurrentScreen(class Game.Screen)
    IL_0074:  call       void Game.ScreensManager::UpdateAnimation()
    IL_0079:  call       class Game.Screen Game.ScreensManager::get_CurrentScreen()
    IL_007e:  brfalse.s  IL_00ed

    IL_0080:  ldstr      "Entered screen \"{0}\""
    IL_0085:  ldc.i4.1
    IL_0086:  newarr     [System.Runtime]System.Object
    IL_008b:  dup
    IL_008c:  ldc.i4.0
    IL_008d:  call       class Game.Screen Game.ScreensManager::get_CurrentScreen()
    IL_0092:  call       string Game.ScreensManager::GetScreenName(class Game.Screen)
    IL_0097:  stelem.ref
    IL_0098:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_009d:  call       void [Engine]Engine.Log::Verbose(string)
    IL_00a2:  ldstr      "[{0}] Entered screen"
    IL_00a7:  ldc.i4.1
    IL_00a8:  newarr     [System.Runtime]System.Object
    IL_00ad:  dup
    IL_00ae:  ldc.i4.0
    IL_00af:  call       class Game.Screen Game.ScreensManager::get_CurrentScreen()
    IL_00b4:  call       string Game.ScreensManager::GetScreenName(class Game.Screen)
    IL_00b9:  stelem.ref
    IL_00ba:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_00bf:  ldc.i4.1
    IL_00c0:  newarr     Game.AnalyticsParameter
    IL_00c5:  dup
    IL_00c6:  ldc.i4.0
    IL_00c7:  ldstr      "Time"
    IL_00cc:  call       valuetype [System.Runtime]System.DateTime [System.Runtime]System.DateTime::get_Now()
    IL_00d1:  stloc.0
    IL_00d2:  ldloca.s   V_0
    IL_00d4:  ldstr      "HH:mm:ss.fff"
    IL_00d9:  call       instance string [System.Runtime]System.DateTime::ToString(string)
    IL_00de:  newobj     instance void Game.AnalyticsParameter::.ctor(string,
                                                                      string)
    IL_00e3:  stelem     Game.AnalyticsParameter
    IL_00e8:  call       void Game.AnalyticsManager::LogEvent(string,
                                                              valuetype Game.AnalyticsParameter[])
    IL_00ed:  ret
  } // end of method ScreensManager::SwitchScreen

  .method public hidebysig static void  Initialize() cil managed
  {
    // 代码大小       1107 (0x453)
    .maxstack  3
    .locals init (class Game.LoadingScreen V_0)
    IL_0000:  newobj     instance void Game.LoadingScreen::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldstr      "Loading"
    IL_000b:  ldloc.0
    IL_000c:  call       void Game.ScreensManager::AddScreen(string,
                                                             class Game.Screen)
    IL_0011:  ldloc.0
    IL_0012:  ldsfld     class [System.Runtime]System.Action Game.ScreensManager/'<>c'::'<>9__17_0'
    IL_0017:  dup
    IL_0018:  brtrue.s   IL_0031

    IL_001a:  pop
    IL_001b:  ldsfld     class Game.ScreensManager/'<>c' Game.ScreensManager/'<>c'::'<>9'
    IL_0020:  ldftn      instance void Game.ScreensManager/'<>c'::'<Initialize>b__17_0'()
    IL_0026:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_002b:  dup
    IL_002c:  stsfld     class [System.Runtime]System.Action Game.ScreensManager/'<>c'::'<>9__17_0'
    IL_0031:  callvirt   instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_0036:  ldloc.0
    IL_0037:  ldsfld     class [System.Runtime]System.Action Game.ScreensManager/'<>c'::'<>9__17_1'
    IL_003c:  dup
    IL_003d:  brtrue.s   IL_0056

    IL_003f:  pop
    IL_0040:  ldsfld     class Game.ScreensManager/'<>c' Game.ScreensManager/'<>c'::'<>9'
    IL_0045:  ldftn      instance void Game.ScreensManager/'<>c'::'<Initialize>b__17_1'()
    IL_004b:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0050:  dup
    IL_0051:  stsfld     class [System.Runtime]System.Action Game.ScreensManager/'<>c'::'<>9__17_1'
    IL_0056:  callvirt   instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_005b:  ldloc.0
    IL_005c:  ldsfld     class [System.Runtime]System.Action Game.ScreensManager/'<>c'::'<>9__17_2'
    IL_0061:  dup
    IL_0062:  brtrue.s   IL_007b

    IL_0064:  pop
    IL_0065:  ldsfld     class Game.ScreensManager/'<>c' Game.ScreensManager/'<>c'::'<>9'
    IL_006a:  ldftn      instance void Game.ScreensManager/'<>c'::'<Initialize>b__17_2'()
    IL_0070:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0075:  dup
    IL_0076:  stsfld     class [System.Runtime]System.Action Game.ScreensManager/'<>c'::'<>9__17_2'
    IL_007b:  callvirt   instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_0080:  ldloc.0
    IL_0081:  ldsfld     class [System.Runtime]System.Action Game.ScreensManager/'<>c'::'<>9__17_3'
    IL_0086:  dup
    IL_0087:  brtrue.s   IL_00a0

    IL_0089:  pop
    IL_008a:  ldsfld     class Game.ScreensManager/'<>c' Game.ScreensManager/'<>c'::'<>9'
    IL_008f:  ldftn      instance void Game.ScreensManager/'<>c'::'<Initialize>b__17_3'()
    IL_0095:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_009a:  dup
    IL_009b:  stsfld     class [System.Runtime]System.Action Game.ScreensManager/'<>c'::'<>9__17_3'
    IL_00a0:  callvirt   instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_00a5:  ldloc.0
    IL_00a6:  ldsfld     class [System.Runtime]System.Action Game.ScreensManager/'<>c'::'<>9__17_4'
    IL_00ab:  dup
    IL_00ac:  brtrue.s   IL_00c5

    IL_00ae:  pop
    IL_00af:  ldsfld     class Game.ScreensManager/'<>c' Game.ScreensManager/'<>c'::'<>9'
    IL_00b4:  ldftn      instance void Game.ScreensManager/'<>c'::'<Initialize>b__17_4'()
    IL_00ba:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00bf:  dup
    IL_00c0:  stsfld     class [System.Runtime]System.Action Game.ScreensManager/'<>c'::'<>9__17_4'
    IL_00c5:  callvirt   instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_00ca:  ldloc.0
    IL_00cb:  ldsfld     class [System.Runtime]System.Action Game.ScreensManager/'<>c'::'<>9__17_5'
    IL_00d0:  dup
    IL_00d1:  brtrue.s   IL_00ea

    IL_00d3:  pop
    IL_00d4:  ldsfld     class Game.ScreensManager/'<>c' Game.ScreensManager/'<>c'::'<>9'
    IL_00d9:  ldftn      instance void Game.ScreensManager/'<>c'::'<Initialize>b__17_5'()
    IL_00df:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00e4:  dup
    IL_00e5:  stsfld     class [System.Runtime]System.Action Game.ScreensManager/'<>c'::'<>9__17_5'
    IL_00ea:  callvirt   instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_00ef:  ldloc.0
    IL_00f0:  ldsfld     class [System.Runtime]System.Action Game.ScreensManager/'<>c'::'<>9__17_6'
    IL_00f5:  dup
    IL_00f6:  brtrue.s   IL_010f

    IL_00f8:  pop
    IL_00f9:  ldsfld     class Game.ScreensManager/'<>c' Game.ScreensManager/'<>c'::'<>9'
    IL_00fe:  ldftn      instance void Game.ScreensManager/'<>c'::'<Initialize>b__17_6'()
    IL_0104:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0109:  dup
    IL_010a:  stsfld     class [System.Runtime]System.Action Game.ScreensManager/'<>c'::'<>9__17_6'
    IL_010f:  callvirt   instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_0114:  ldloc.0
    IL_0115:  ldsfld     class [System.Runtime]System.Action Game.ScreensManager/'<>c'::'<>9__17_7'
    IL_011a:  dup
    IL_011b:  brtrue.s   IL_0134

    IL_011d:  pop
    IL_011e:  ldsfld     class Game.ScreensManager/'<>c' Game.ScreensManager/'<>c'::'<>9'
    IL_0123:  ldftn      instance void Game.ScreensManager/'<>c'::'<Initialize>b__17_7'()
    IL_0129:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_012e:  dup
    IL_012f:  stsfld     class [System.Runtime]System.Action Game.ScreensManager/'<>c'::'<>9__17_7'
    IL_0134:  callvirt   instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_0139:  ldloc.0
    IL_013a:  ldsfld     class [System.Runtime]System.Action Game.ScreensManager/'<>c'::'<>9__17_8'
    IL_013f:  dup
    IL_0140:  brtrue.s   IL_0159

    IL_0142:  pop
    IL_0143:  ldsfld     class Game.ScreensManager/'<>c' Game.ScreensManager/'<>c'::'<>9'
    IL_0148:  ldftn      instance void Game.ScreensManager/'<>c'::'<Initialize>b__17_8'()
    IL_014e:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0153:  dup
    IL_0154:  stsfld     class [System.Runtime]System.Action Game.ScreensManager/'<>c'::'<>9__17_8'
    IL_0159:  callvirt   instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_015e:  ldloc.0
    IL_015f:  ldsfld     class [System.Runtime]System.Action Game.ScreensManager/'<>c'::'<>9__17_9'
    IL_0164:  dup
    IL_0165:  brtrue.s   IL_017e

    IL_0167:  pop
    IL_0168:  ldsfld     class Game.ScreensManager/'<>c' Game.ScreensManager/'<>c'::'<>9'
    IL_016d:  ldftn      instance void Game.ScreensManager/'<>c'::'<Initialize>b__17_9'()
    IL_0173:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0178:  dup
    IL_0179:  stsfld     class [System.Runtime]System.Action Game.ScreensManager/'<>c'::'<>9__17_9'
    IL_017e:  callvirt   instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_0183:  ldloc.0
    IL_0184:  ldsfld     class [System.Runtime]System.Action Game.ScreensManager/'<>c'::'<>9__17_10'
    IL_0189:  dup
    IL_018a:  brtrue.s   IL_01a3

    IL_018c:  pop
    IL_018d:  ldsfld     class Game.ScreensManager/'<>c' Game.ScreensManager/'<>c'::'<>9'
    IL_0192:  ldftn      instance void Game.ScreensManager/'<>c'::'<Initialize>b__17_10'()
    IL_0198:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_019d:  dup
    IL_019e:  stsfld     class [System.Runtime]System.Action Game.ScreensManager/'<>c'::'<>9__17_10'
    IL_01a3:  callvirt   instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_01a8:  ldloc.0
    IL_01a9:  ldsfld     class [System.Runtime]System.Action Game.ScreensManager/'<>c'::'<>9__17_11'
    IL_01ae:  dup
    IL_01af:  brtrue.s   IL_01c8

    IL_01b1:  pop
    IL_01b2:  ldsfld     class Game.ScreensManager/'<>c' Game.ScreensManager/'<>c'::'<>9'
    IL_01b7:  ldftn      instance void Game.ScreensManager/'<>c'::'<Initialize>b__17_11'()
    IL_01bd:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_01c2:  dup
    IL_01c3:  stsfld     class [System.Runtime]System.Action Game.ScreensManager/'<>c'::'<>9__17_11'
    IL_01c8:  callvirt   instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_01cd:  ldloc.0
    IL_01ce:  ldsfld     class [System.Runtime]System.Action Game.ScreensManager/'<>c'::'<>9__17_12'
    IL_01d3:  dup
    IL_01d4:  brtrue.s   IL_01ed

    IL_01d6:  pop
    IL_01d7:  ldsfld     class Game.ScreensManager/'<>c' Game.ScreensManager/'<>c'::'<>9'
    IL_01dc:  ldftn      instance void Game.ScreensManager/'<>c'::'<Initialize>b__17_12'()
    IL_01e2:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_01e7:  dup
    IL_01e8:  stsfld     class [System.Runtime]System.Action Game.ScreensManager/'<>c'::'<>9__17_12'
    IL_01ed:  callvirt   instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_01f2:  ldloc.0
    IL_01f3:  ldsfld     class [System.Runtime]System.Action Game.ScreensManager/'<>c'::'<>9__17_13'
    IL_01f8:  dup
    IL_01f9:  brtrue.s   IL_0212

    IL_01fb:  pop
    IL_01fc:  ldsfld     class Game.ScreensManager/'<>c' Game.ScreensManager/'<>c'::'<>9'
    IL_0201:  ldftn      instance void Game.ScreensManager/'<>c'::'<Initialize>b__17_13'()
    IL_0207:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_020c:  dup
    IL_020d:  stsfld     class [System.Runtime]System.Action Game.ScreensManager/'<>c'::'<>9__17_13'
    IL_0212:  callvirt   instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_0217:  ldloc.0
    IL_0218:  ldsfld     class [System.Runtime]System.Action Game.ScreensManager/'<>c'::'<>9__17_14'
    IL_021d:  dup
    IL_021e:  brtrue.s   IL_0237

    IL_0220:  pop
    IL_0221:  ldsfld     class Game.ScreensManager/'<>c' Game.ScreensManager/'<>c'::'<>9'
    IL_0226:  ldftn      instance void Game.ScreensManager/'<>c'::'<Initialize>b__17_14'()
    IL_022c:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0231:  dup
    IL_0232:  stsfld     class [System.Runtime]System.Action Game.ScreensManager/'<>c'::'<>9__17_14'
    IL_0237:  callvirt   instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_023c:  ldloc.0
    IL_023d:  ldsfld     class [System.Runtime]System.Action Game.ScreensManager/'<>c'::'<>9__17_15'
    IL_0242:  dup
    IL_0243:  brtrue.s   IL_025c

    IL_0245:  pop
    IL_0246:  ldsfld     class Game.ScreensManager/'<>c' Game.ScreensManager/'<>c'::'<>9'
    IL_024b:  ldftn      instance void Game.ScreensManager/'<>c'::'<Initialize>b__17_15'()
    IL_0251:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0256:  dup
    IL_0257:  stsfld     class [System.Runtime]System.Action Game.ScreensManager/'<>c'::'<>9__17_15'
    IL_025c:  callvirt   instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_0261:  ldloc.0
    IL_0262:  ldsfld     class [System.Runtime]System.Action Game.ScreensManager/'<>c'::'<>9__17_16'
    IL_0267:  dup
    IL_0268:  brtrue.s   IL_0281

    IL_026a:  pop
    IL_026b:  ldsfld     class Game.ScreensManager/'<>c' Game.ScreensManager/'<>c'::'<>9'
    IL_0270:  ldftn      instance void Game.ScreensManager/'<>c'::'<Initialize>b__17_16'()
    IL_0276:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_027b:  dup
    IL_027c:  stsfld     class [System.Runtime]System.Action Game.ScreensManager/'<>c'::'<>9__17_16'
    IL_0281:  callvirt   instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_0286:  ldloc.0
    IL_0287:  ldsfld     class [System.Runtime]System.Action Game.ScreensManager/'<>c'::'<>9__17_17'
    IL_028c:  dup
    IL_028d:  brtrue.s   IL_02a6

    IL_028f:  pop
    IL_0290:  ldsfld     class Game.ScreensManager/'<>c' Game.ScreensManager/'<>c'::'<>9'
    IL_0295:  ldftn      instance void Game.ScreensManager/'<>c'::'<Initialize>b__17_17'()
    IL_029b:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_02a0:  dup
    IL_02a1:  stsfld     class [System.Runtime]System.Action Game.ScreensManager/'<>c'::'<>9__17_17'
    IL_02a6:  callvirt   instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_02ab:  ldloc.0
    IL_02ac:  ldsfld     class [System.Runtime]System.Action Game.ScreensManager/'<>c'::'<>9__17_18'
    IL_02b1:  dup
    IL_02b2:  brtrue.s   IL_02cb

    IL_02b4:  pop
    IL_02b5:  ldsfld     class Game.ScreensManager/'<>c' Game.ScreensManager/'<>c'::'<>9'
    IL_02ba:  ldftn      instance void Game.ScreensManager/'<>c'::'<Initialize>b__17_18'()
    IL_02c0:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_02c5:  dup
    IL_02c6:  stsfld     class [System.Runtime]System.Action Game.ScreensManager/'<>c'::'<>9__17_18'
    IL_02cb:  callvirt   instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_02d0:  ldloc.0
    IL_02d1:  ldsfld     class [System.Runtime]System.Action Game.ScreensManager/'<>c'::'<>9__17_19'
    IL_02d6:  dup
    IL_02d7:  brtrue.s   IL_02f0

    IL_02d9:  pop
    IL_02da:  ldsfld     class Game.ScreensManager/'<>c' Game.ScreensManager/'<>c'::'<>9'
    IL_02df:  ldftn      instance void Game.ScreensManager/'<>c'::'<Initialize>b__17_19'()
    IL_02e5:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_02ea:  dup
    IL_02eb:  stsfld     class [System.Runtime]System.Action Game.ScreensManager/'<>c'::'<>9__17_19'
    IL_02f0:  callvirt   instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_02f5:  ldloc.0
    IL_02f6:  ldsfld     class [System.Runtime]System.Action Game.ScreensManager/'<>c'::'<>9__17_20'
    IL_02fb:  dup
    IL_02fc:  brtrue.s   IL_0315

    IL_02fe:  pop
    IL_02ff:  ldsfld     class Game.ScreensManager/'<>c' Game.ScreensManager/'<>c'::'<>9'
    IL_0304:  ldftn      instance void Game.ScreensManager/'<>c'::'<Initialize>b__17_20'()
    IL_030a:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_030f:  dup
    IL_0310:  stsfld     class [System.Runtime]System.Action Game.ScreensManager/'<>c'::'<>9__17_20'
    IL_0315:  callvirt   instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_031a:  ldloc.0
    IL_031b:  ldsfld     class [System.Runtime]System.Action Game.ScreensManager/'<>c'::'<>9__17_21'
    IL_0320:  dup
    IL_0321:  brtrue.s   IL_033a

    IL_0323:  pop
    IL_0324:  ldsfld     class Game.ScreensManager/'<>c' Game.ScreensManager/'<>c'::'<>9'
    IL_0329:  ldftn      instance void Game.ScreensManager/'<>c'::'<Initialize>b__17_21'()
    IL_032f:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0334:  dup
    IL_0335:  stsfld     class [System.Runtime]System.Action Game.ScreensManager/'<>c'::'<>9__17_21'
    IL_033a:  callvirt   instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_033f:  ldloc.0
    IL_0340:  ldsfld     class [System.Runtime]System.Action Game.ScreensManager/'<>c'::'<>9__17_22'
    IL_0345:  dup
    IL_0346:  brtrue.s   IL_035f

    IL_0348:  pop
    IL_0349:  ldsfld     class Game.ScreensManager/'<>c' Game.ScreensManager/'<>c'::'<>9'
    IL_034e:  ldftn      instance void Game.ScreensManager/'<>c'::'<Initialize>b__17_22'()
    IL_0354:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0359:  dup
    IL_035a:  stsfld     class [System.Runtime]System.Action Game.ScreensManager/'<>c'::'<>9__17_22'
    IL_035f:  callvirt   instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_0364:  ldloc.0
    IL_0365:  ldsfld     class [System.Runtime]System.Action Game.ScreensManager/'<>c'::'<>9__17_23'
    IL_036a:  dup
    IL_036b:  brtrue.s   IL_0384

    IL_036d:  pop
    IL_036e:  ldsfld     class Game.ScreensManager/'<>c' Game.ScreensManager/'<>c'::'<>9'
    IL_0373:  ldftn      instance void Game.ScreensManager/'<>c'::'<Initialize>b__17_23'()
    IL_0379:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_037e:  dup
    IL_037f:  stsfld     class [System.Runtime]System.Action Game.ScreensManager/'<>c'::'<>9__17_23'
    IL_0384:  callvirt   instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_0389:  ldloc.0
    IL_038a:  ldsfld     class [System.Runtime]System.Action Game.ScreensManager/'<>c'::'<>9__17_24'
    IL_038f:  dup
    IL_0390:  brtrue.s   IL_03a9

    IL_0392:  pop
    IL_0393:  ldsfld     class Game.ScreensManager/'<>c' Game.ScreensManager/'<>c'::'<>9'
    IL_0398:  ldftn      instance void Game.ScreensManager/'<>c'::'<Initialize>b__17_24'()
    IL_039e:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_03a3:  dup
    IL_03a4:  stsfld     class [System.Runtime]System.Action Game.ScreensManager/'<>c'::'<>9__17_24'
    IL_03a9:  callvirt   instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_03ae:  ldloc.0
    IL_03af:  ldsfld     class [System.Runtime]System.Action Game.ScreensManager/'<>c'::'<>9__17_25'
    IL_03b4:  dup
    IL_03b5:  brtrue.s   IL_03ce

    IL_03b7:  pop
    IL_03b8:  ldsfld     class Game.ScreensManager/'<>c' Game.ScreensManager/'<>c'::'<>9'
    IL_03bd:  ldftn      instance void Game.ScreensManager/'<>c'::'<Initialize>b__17_25'()
    IL_03c3:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_03c8:  dup
    IL_03c9:  stsfld     class [System.Runtime]System.Action Game.ScreensManager/'<>c'::'<>9__17_25'
    IL_03ce:  callvirt   instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_03d3:  ldloc.0
    IL_03d4:  ldsfld     class [System.Runtime]System.Action Game.ScreensManager/'<>c'::'<>9__17_26'
    IL_03d9:  dup
    IL_03da:  brtrue.s   IL_03f3

    IL_03dc:  pop
    IL_03dd:  ldsfld     class Game.ScreensManager/'<>c' Game.ScreensManager/'<>c'::'<>9'
    IL_03e2:  ldftn      instance void Game.ScreensManager/'<>c'::'<Initialize>b__17_26'()
    IL_03e8:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_03ed:  dup
    IL_03ee:  stsfld     class [System.Runtime]System.Action Game.ScreensManager/'<>c'::'<>9__17_26'
    IL_03f3:  callvirt   instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_03f8:  ldloc.0
    IL_03f9:  ldsfld     class [System.Runtime]System.Action Game.ScreensManager/'<>c'::'<>9__17_27'
    IL_03fe:  dup
    IL_03ff:  brtrue.s   IL_0418

    IL_0401:  pop
    IL_0402:  ldsfld     class Game.ScreensManager/'<>c' Game.ScreensManager/'<>c'::'<>9'
    IL_0407:  ldftn      instance void Game.ScreensManager/'<>c'::'<Initialize>b__17_27'()
    IL_040d:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0412:  dup
    IL_0413:  stsfld     class [System.Runtime]System.Action Game.ScreensManager/'<>c'::'<>9__17_27'
    IL_0418:  callvirt   instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_041d:  ldloc.0
    IL_041e:  ldsfld     class [System.Runtime]System.Action Game.ScreensManager/'<>c'::'<>9__17_28'
    IL_0423:  dup
    IL_0424:  brtrue.s   IL_043d

    IL_0426:  pop
    IL_0427:  ldsfld     class Game.ScreensManager/'<>c' Game.ScreensManager/'<>c'::'<>9'
    IL_042c:  ldftn      instance void Game.ScreensManager/'<>c'::'<Initialize>b__17_28'()
    IL_0432:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0437:  dup
    IL_0438:  stsfld     class [System.Runtime]System.Action Game.ScreensManager/'<>c'::'<>9__17_28'
    IL_043d:  callvirt   instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_0442:  ldstr      "Loading"
    IL_0447:  ldc.i4.0
    IL_0448:  newarr     [System.Runtime]System.Object
    IL_044d:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                object[])
    IL_0452:  ret
  } // end of method ScreensManager::Initialize

  .method public hidebysig static void  Update() cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldsfld     class Game.ScreensManager/AnimationData Game.ScreensManager::m_animationData
    IL_0005:  brfalse.s  IL_000c

    IL_0007:  call       void Game.ScreensManager::UpdateAnimation()
    IL_000c:  ret
  } // end of method ScreensManager::Update

  .method public hidebysig static void  Draw() cil managed
  {
    // 代码大小       39 (0x27)
    .maxstack  8
    IL_0000:  ldsfld     class Game.ScreensManager/AnimationData Game.ScreensManager::m_animationData
    IL_0005:  brfalse.s  IL_0026

    IL_0007:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Black
    IL_000c:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Color>::.ctor(!0)
    IL_0011:  ldc.r4     1.
    IL_0016:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float32>::.ctor(!0)
    IL_001b:  ldc.i4.0
    IL_001c:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_0021:  call       void [Engine]Engine.Graphics.Display::Clear(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Color>,
                                                                     valuetype [System.Runtime]System.Nullable`1<float32>,
                                                                     valuetype [System.Runtime]System.Nullable`1<int32>)
    IL_0026:  ret
  } // end of method ScreensManager::Draw

  .method private hidebysig static void  UpdateAnimation() cil managed
  {
    // 代码大小       735 (0x2df)
    .maxstack  5
    .locals init (float32 V_0,
             float32 V_1,
             float32 V_2,
             float32 V_3,
             float32 V_4,
             float32 V_5)
    IL_0000:  call       float32 [Engine]Engine.Time::get_FrameDuration()
    IL_0005:  ldc.r4     0.1
    IL_000a:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_000f:  stloc.0
    IL_0010:  ldsfld     class Game.ScreensManager/AnimationData Game.ScreensManager::m_animationData
    IL_0015:  ldfld      float32 Game.ScreensManager/AnimationData::Factor
    IL_001a:  stloc.1
    IL_001b:  ldsfld     class Game.ScreensManager/AnimationData Game.ScreensManager::m_animationData
    IL_0020:  ldsfld     class Game.ScreensManager/AnimationData Game.ScreensManager::m_animationData
    IL_0025:  ldfld      float32 Game.ScreensManager/AnimationData::Factor
    IL_002a:  ldsfld     class Game.ScreensManager/AnimationData Game.ScreensManager::m_animationData
    IL_002f:  ldfld      float32 Game.ScreensManager/AnimationData::Speed
    IL_0034:  ldloc.0
    IL_0035:  mul
    IL_0036:  add
    IL_0037:  ldc.r4     1.
    IL_003c:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_0041:  stfld      float32 Game.ScreensManager/AnimationData::Factor
    IL_0046:  ldsfld     class Game.ScreensManager/AnimationData Game.ScreensManager::m_animationData
    IL_004b:  ldfld      float32 Game.ScreensManager/AnimationData::Factor
    IL_0050:  ldc.r4     0.5
    IL_0055:  bge.un     IL_0140

    IL_005a:  ldsfld     class Game.ScreensManager/AnimationData Game.ScreensManager::m_animationData
    IL_005f:  ldfld      class Game.Screen Game.ScreensManager/AnimationData::OldScreen
    IL_0064:  brfalse    IL_02c8

    IL_0069:  ldc.r4     2.
    IL_006e:  ldc.r4     0.5
    IL_0073:  ldsfld     class Game.ScreensManager/AnimationData Game.ScreensManager::m_animationData
    IL_0078:  ldfld      float32 Game.ScreensManager/AnimationData::Factor
    IL_007d:  sub
    IL_007e:  mul
    IL_007f:  stloc.2
    IL_0080:  ldc.r4     1.
    IL_0085:  stloc.3
    IL_0086:  ldsfld     class Game.ScreensManager/AnimationData Game.ScreensManager::m_animationData
    IL_008b:  ldfld      class Game.Screen Game.ScreensManager/AnimationData::OldScreen
    IL_0090:  ldloc.2
    IL_0091:  ldloc.2
    IL_0092:  ldloc.2
    IL_0093:  ldloc.2
    IL_0094:  newobj     instance void [Engine]Engine.Color::.ctor(float32,
                                                                   float32,
                                                                   float32,
                                                                   float32)
    IL_0099:  callvirt   instance void Game.Widget::set_ColorTransform(valuetype [Engine]Engine.Color)
    IL_009e:  ldsfld     class Game.ScreensManager/AnimationData Game.ScreensManager::m_animationData
    IL_00a3:  ldfld      class Game.Screen Game.ScreensManager/AnimationData::OldScreen
    IL_00a8:  ldsfld     class Game.ScreensManager/AnimationData Game.ScreensManager::m_animationData
    IL_00ad:  ldfld      class Game.Screen Game.ScreensManager/AnimationData::OldScreen
    IL_00b2:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_00b7:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_00bc:  neg
    IL_00bd:  ldc.r4     2.
    IL_00c2:  div
    IL_00c3:  ldsfld     class Game.ScreensManager/AnimationData Game.ScreensManager::m_animationData
    IL_00c8:  ldfld      class Game.Screen Game.ScreensManager/AnimationData::OldScreen
    IL_00cd:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_00d2:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00d7:  neg
    IL_00d8:  ldc.r4     2.
    IL_00dd:  div
    IL_00de:  ldc.r4     0.0
    IL_00e3:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_00e8:  ldloc.3
    IL_00e9:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateScale(float32)
    IL_00ee:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00f3:  ldsfld     class Game.ScreensManager/AnimationData Game.ScreensManager::m_animationData
    IL_00f8:  ldfld      class Game.Screen Game.ScreensManager/AnimationData::OldScreen
    IL_00fd:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0102:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0107:  ldc.r4     2.
    IL_010c:  div
    IL_010d:  ldsfld     class Game.ScreensManager/AnimationData Game.ScreensManager::m_animationData
    IL_0112:  ldfld      class Game.Screen Game.ScreensManager/AnimationData::OldScreen
    IL_0117:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_011c:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0121:  ldc.r4     2.
    IL_0126:  div
    IL_0127:  ldc.r4     0.0
    IL_012c:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0131:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0136:  callvirt   instance void Game.Widget::set_RenderTransform(valuetype [Engine]Engine.Matrix)
    IL_013b:  br         IL_02c8

    IL_0140:  ldloc.1
    IL_0141:  ldc.r4     0.5
    IL_0146:  bge.un     IL_01e0

    IL_014b:  ldsfld     class Game.ScreensManager/AnimationData Game.ScreensManager::m_animationData
    IL_0150:  ldfld      class Game.Screen Game.ScreensManager/AnimationData::OldScreen
    IL_0155:  brfalse.s  IL_017f

    IL_0157:  ldsfld     class Game.ScreensManager/AnimationData Game.ScreensManager::m_animationData
    IL_015c:  ldfld      class Game.Screen Game.ScreensManager/AnimationData::OldScreen
    IL_0161:  callvirt   instance void Game.Screen::Leave()
    IL_0166:  call       class Game.ContainerWidget Game.WidgetsManager::get_RootWidget()
    IL_016b:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0170:  ldsfld     class Game.ScreensManager/AnimationData Game.ScreensManager::m_animationData
    IL_0175:  ldfld      class Game.Screen Game.ScreensManager/AnimationData::OldScreen
    IL_017a:  callvirt   instance void Game.WidgetsList::Remove(class Game.Widget)
    IL_017f:  ldsfld     class Game.ScreensManager/AnimationData Game.ScreensManager::m_animationData
    IL_0184:  ldfld      class Game.Screen Game.ScreensManager/AnimationData::NewScreen
    IL_0189:  brfalse    IL_02c8

    IL_018e:  call       class Game.ContainerWidget Game.WidgetsManager::get_RootWidget()
    IL_0193:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0198:  ldc.i4.0
    IL_0199:  ldsfld     class Game.ScreensManager/AnimationData Game.ScreensManager::m_animationData
    IL_019e:  ldfld      class Game.Screen Game.ScreensManager/AnimationData::NewScreen
    IL_01a3:  callvirt   instance void Game.WidgetsList::Insert(int32,
                                                                class Game.Widget)
    IL_01a8:  ldsfld     class Game.ScreensManager/AnimationData Game.ScreensManager::m_animationData
    IL_01ad:  ldfld      class Game.Screen Game.ScreensManager/AnimationData::NewScreen
    IL_01b2:  ldsfld     class Game.ScreensManager/AnimationData Game.ScreensManager::m_animationData
    IL_01b7:  ldfld      object[] Game.ScreensManager/AnimationData::Parameters
    IL_01bc:  callvirt   instance void Game.Screen::Enter(object[])
    IL_01c1:  ldsfld     class Game.ScreensManager/AnimationData Game.ScreensManager::m_animationData
    IL_01c6:  ldfld      class Game.Screen Game.ScreensManager/AnimationData::NewScreen
    IL_01cb:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
    IL_01d0:  callvirt   instance void Game.Widget::set_ColorTransform(valuetype [Engine]Engine.Color)
    IL_01d5:  ldc.i4.1
    IL_01d6:  call       void Game.WidgetsManager::set_IsUpdateEnabled(bool)
    IL_01db:  br         IL_02c8

    IL_01e0:  ldsfld     class Game.ScreensManager/AnimationData Game.ScreensManager::m_animationData
    IL_01e5:  ldfld      class Game.Screen Game.ScreensManager/AnimationData::NewScreen
    IL_01ea:  brfalse    IL_02c8

    IL_01ef:  ldc.r4     2.
    IL_01f4:  ldsfld     class Game.ScreensManager/AnimationData Game.ScreensManager::m_animationData
    IL_01f9:  ldfld      float32 Game.ScreensManager/AnimationData::Factor
    IL_01fe:  ldc.r4     0.5
    IL_0203:  sub
    IL_0204:  mul
    IL_0205:  stloc.s    V_4
    IL_0207:  ldc.r4     1.
    IL_020c:  stloc.s    V_5
    IL_020e:  ldsfld     class Game.ScreensManager/AnimationData Game.ScreensManager::m_animationData
    IL_0213:  ldfld      class Game.Screen Game.ScreensManager/AnimationData::NewScreen
    IL_0218:  ldloc.s    V_4
    IL_021a:  ldloc.s    V_4
    IL_021c:  ldloc.s    V_4
    IL_021e:  ldloc.s    V_4
    IL_0220:  newobj     instance void [Engine]Engine.Color::.ctor(float32,
                                                                   float32,
                                                                   float32,
                                                                   float32)
    IL_0225:  callvirt   instance void Game.Widget::set_ColorTransform(valuetype [Engine]Engine.Color)
    IL_022a:  ldsfld     class Game.ScreensManager/AnimationData Game.ScreensManager::m_animationData
    IL_022f:  ldfld      class Game.Screen Game.ScreensManager/AnimationData::NewScreen
    IL_0234:  ldsfld     class Game.ScreensManager/AnimationData Game.ScreensManager::m_animationData
    IL_0239:  ldfld      class Game.Screen Game.ScreensManager/AnimationData::NewScreen
    IL_023e:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0243:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0248:  neg
    IL_0249:  ldc.r4     2.
    IL_024e:  div
    IL_024f:  ldsfld     class Game.ScreensManager/AnimationData Game.ScreensManager::m_animationData
    IL_0254:  ldfld      class Game.Screen Game.ScreensManager/AnimationData::NewScreen
    IL_0259:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_025e:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0263:  neg
    IL_0264:  ldc.r4     2.
    IL_0269:  div
    IL_026a:  ldc.r4     0.0
    IL_026f:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0274:  ldloc.s    V_5
    IL_0276:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateScale(float32)
    IL_027b:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0280:  ldsfld     class Game.ScreensManager/AnimationData Game.ScreensManager::m_animationData
    IL_0285:  ldfld      class Game.Screen Game.ScreensManager/AnimationData::NewScreen
    IL_028a:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_028f:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0294:  ldc.r4     2.
    IL_0299:  div
    IL_029a:  ldsfld     class Game.ScreensManager/AnimationData Game.ScreensManager::m_animationData
    IL_029f:  ldfld      class Game.Screen Game.ScreensManager/AnimationData::NewScreen
    IL_02a4:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_02a9:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_02ae:  ldc.r4     2.
    IL_02b3:  div
    IL_02b4:  ldc.r4     0.0
    IL_02b9:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_02be:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_02c3:  callvirt   instance void Game.Widget::set_RenderTransform(valuetype [Engine]Engine.Matrix)
    IL_02c8:  ldsfld     class Game.ScreensManager/AnimationData Game.ScreensManager::m_animationData
    IL_02cd:  ldfld      float32 Game.ScreensManager/AnimationData::Factor
    IL_02d2:  ldc.r4     1.
    IL_02d7:  blt.un.s   IL_02de

    IL_02d9:  call       void Game.ScreensManager::EndAnimation()
    IL_02de:  ret
  } // end of method ScreensManager::UpdateAnimation

  .method private hidebysig static void  EndAnimation() cil managed
  {
    // 代码大小       52 (0x34)
    .maxstack  8
    IL_0000:  ldsfld     class Game.ScreensManager/AnimationData Game.ScreensManager::m_animationData
    IL_0005:  ldfld      class Game.Screen Game.ScreensManager/AnimationData::NewScreen
    IL_000a:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_000f:  callvirt   instance void Game.Widget::set_ColorTransform(valuetype [Engine]Engine.Color)
    IL_0014:  ldsfld     class Game.ScreensManager/AnimationData Game.ScreensManager::m_animationData
    IL_0019:  ldfld      class Game.Screen Game.ScreensManager/AnimationData::NewScreen
    IL_001e:  ldc.r4     1.
    IL_0023:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateScale(float32)
    IL_0028:  callvirt   instance void Game.Widget::set_RenderTransform(valuetype [Engine]Engine.Matrix)
    IL_002d:  ldnull
    IL_002e:  stsfld     class Game.ScreensManager/AnimationData Game.ScreensManager::m_animationData
    IL_0033:  ret
  } // end of method ScreensManager::EndAnimation

  .method private hidebysig static string 
          GetScreenName(class Game.Screen screen) cil managed
  {
    // 代码大小       55 (0x37)
    .maxstack  3
    .locals init (class Game.ScreensManager/'<>c__DisplayClass22_0' V_0,
             string V_1,
             valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,class Game.Screen> V_2)
    IL_0000:  newobj     instance void Game.ScreensManager/'<>c__DisplayClass22_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.0
    IL_0008:  stfld      class Game.Screen Game.ScreensManager/'<>c__DisplayClass22_0'::screen
    IL_000d:  ldsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<string,class Game.Screen> Game.ScreensManager::m_screens
    IL_0012:  ldloc.0
    IL_0013:  ldftn      instance bool Game.ScreensManager/'<>c__DisplayClass22_0'::'<GetScreenName>b__0'(valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,class Game.Screen>)
    IL_0019:  newobj     instance void class [System.Runtime]System.Func`2<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,class Game.Screen>,bool>::.ctor(object,
                                                                                                                                                                                      native int)
    IL_001e:  call       !!0 [System.Linq]System.Linq.Enumerable::FirstOrDefault<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,class Game.Screen>>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                class [System.Runtime]System.Func`2<!!0,bool>)
    IL_0023:  stloc.2
    IL_0024:  ldloca.s   V_2
    IL_0026:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,class Game.Screen>::get_Key()
    IL_002b:  stloc.1
    IL_002c:  ldloc.1
    IL_002d:  brtrue.s   IL_0035

    IL_002f:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0034:  ret

    IL_0035:  ldloc.1
    IL_0036:  ret
  } // end of method ScreensManager::GetScreenName

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       11 (0xb)
    .maxstack  8
    IL_0000:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,class Game.Screen>::.ctor()
    IL_0005:  stsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<string,class Game.Screen> Game.ScreensManager::m_screens
    IL_000a:  ret
  } // end of method ScreensManager::.cctor

  .property bool IsAnimating()
  {
    .get bool Game.ScreensManager::get_IsAnimating()
  } // end of property ScreensManager::IsAnimating
  .property class Game.Screen CurrentScreen()
  {
    .get class Game.Screen Game.ScreensManager::get_CurrentScreen()
    .set void Game.ScreensManager::set_CurrentScreen(class Game.Screen)
  } // end of property ScreensManager::CurrentScreen
  .property class Game.Screen PreviousScreen()
  {
    .get class Game.Screen Game.ScreensManager::get_PreviousScreen()
    .set void Game.ScreensManager::set_PreviousScreen(class Game.Screen)
  } // end of property ScreensManager::PreviousScreen
} // end of class Game.ScreensManager