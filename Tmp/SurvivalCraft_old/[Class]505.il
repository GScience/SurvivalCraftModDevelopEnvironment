.class public auto ansi beforefieldinit Game.GameScreen
       extends Game.Screen
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.GameScreen/'<>c' '<>9'
    .field public static class [System.Runtime]System.Action '<>9__1_0'
    .field public static class [System.Runtime]System.Action '<>9__4_0'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.GameScreen/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.GameScreen/'<>c' Game.GameScreen/'<>c'::'<>9'
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
            '<.ctor>b__1_0'() cil managed
    {
      // 代码大小       8 (0x8)
      .maxstack  8
      IL_0000:  ldc.i4.1
      IL_0001:  ldc.i4.0
      IL_0002:  call       void Game.GameManager::SaveProject(bool,
                                                              bool)
      IL_0007:  ret
    } // end of method '<>c'::'<.ctor>b__1_0'

    .method assembly hidebysig instance void 
            '<Update>b__4_0'() cil managed
    {
      // 代码大小       29 (0x1d)
      .maxstack  8
      IL_0000:  ldc.i4.1
      IL_0001:  ldc.i4.0
      IL_0002:  call       void Game.GameManager::SaveProject(bool,
                                                              bool)
      IL_0007:  call       void Game.GameManager::DisposeProject()
      IL_000c:  ldstr      "TrialEnded"
      IL_0011:  ldc.i4.0
      IL_0012:  newarr     [System.Runtime]System.Object
      IL_0017:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                  object[])
      IL_001c:  ret
    } // end of method '<>c'::'<Update>b__4_0'

  } // end of class '<>c'

  .field private float64 m_lastAutosaveTime
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       67 (0x43)
    .maxstack  3
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.Screen::.ctor()
    IL_0006:  ldstr      "Screens/GameScreen"
    IL_000b:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_0010:  stloc.0
    IL_0011:  ldarg.0
    IL_0012:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0017:  ldarg.0
    IL_0018:  ldloc.0
    IL_0019:  call       void Game.WidgetsManager::LoadWidgetContents(class Game.Widget,
                                                                      object,
                                                                      class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_001e:  ldsfld     class [System.Runtime]System.Action Game.GameScreen/'<>c'::'<>9__1_0'
    IL_0023:  dup
    IL_0024:  brtrue.s   IL_003d

    IL_0026:  pop
    IL_0027:  ldsfld     class Game.GameScreen/'<>c' Game.GameScreen/'<>c'::'<>9'
    IL_002c:  ldftn      instance void Game.GameScreen/'<>c'::'<.ctor>b__1_0'()
    IL_0032:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0037:  dup
    IL_0038:  stsfld     class [System.Runtime]System.Action Game.GameScreen/'<>c'::'<>9__1_0'
    IL_003d:  call       void [Engine]Engine.Window::add_Deactivated(class [System.Runtime]System.Action)
    IL_0042:  ret
  } // end of method GameScreen::.ctor

  .method public hidebysig virtual instance void 
          Enter(object[] parameters) cil managed
  {
    // 代码大小       30 (0x1e)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  call       void [Engine]Engine.Input.Mouse::set_IsMouseVisible(bool)
    IL_0006:  call       class [EntitySystem]GameEntitySystem.Project Game.GameManager::get_Project()
    IL_000b:  brfalse.s  IL_001d

    IL_000d:  call       class [EntitySystem]GameEntitySystem.Project Game.GameManager::get_Project()
    IL_0012:  ldc.i4.1
    IL_0013:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemAudio>(bool)
    IL_0018:  callvirt   instance void Game.SubsystemAudio::Unmute()
    IL_001d:  ret
  } // end of method GameScreen::Enter

  .method public hidebysig virtual instance void 
          Leave() cil managed
  {
    // 代码大小       101 (0x65)
    .maxstack  3
    IL_0000:  call       valuetype [Engine]Engine.Point2 [Engine]Engine.Window::get_Size()
    IL_0005:  ldfld      int32 [Engine]Engine.Point2::X
    IL_000a:  ldc.i4.2
    IL_000b:  div
    IL_000c:  call       valuetype [Engine]Engine.Point2 [Engine]Engine.Window::get_Size()
    IL_0011:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0016:  ldc.i4.2
    IL_0017:  div
    IL_0018:  call       void [Engine]Engine.Input.Mouse::SetMousePosition(int32,
                                                                           int32)
    IL_001d:  ldc.i4.1
    IL_001e:  call       void [Engine]Engine.Input.Mouse::set_IsMouseVisible(bool)
    IL_0023:  ldc.i4.1
    IL_0024:  call       void Game.InputManager::set_IsPadCursorVisible(bool)
    IL_0029:  call       valuetype [Engine]Engine.Point2 [Engine]Engine.Window::get_Size()
    IL_002e:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0033:  ldc.i4.2
    IL_0034:  div
    IL_0035:  conv.r4
    IL_0036:  call       valuetype [Engine]Engine.Point2 [Engine]Engine.Window::get_Size()
    IL_003b:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0040:  ldc.i4.2
    IL_0041:  div
    IL_0042:  conv.r4
    IL_0043:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0048:  call       void Game.InputManager::set_PadCursorPosition(valuetype [Engine]Engine.Vector2)
    IL_004d:  call       class [EntitySystem]GameEntitySystem.Project Game.GameManager::get_Project()
    IL_0052:  brfalse.s  IL_0064

    IL_0054:  call       class [EntitySystem]GameEntitySystem.Project Game.GameManager::get_Project()
    IL_0059:  ldc.i4.1
    IL_005a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemAudio>(bool)
    IL_005f:  callvirt   instance void Game.SubsystemAudio::Mute()
    IL_0064:  ret
  } // end of method GameScreen::Leave

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       117 (0x75)
    .maxstack  2
    .locals init (float64 V_0)
    IL_0000:  call       class [EntitySystem]GameEntitySystem.Project Game.GameManager::get_Project()
    IL_0005:  brfalse.s  IL_0074

    IL_0007:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_000c:  stloc.0
    IL_000d:  ldloc.0
    IL_000e:  ldarg.0
    IL_000f:  ldfld      float64 Game.GameScreen::m_lastAutosaveTime
    IL_0014:  sub
    IL_0015:  ldc.r8     120.
    IL_001e:  ble.un.s   IL_002e

    IL_0020:  ldarg.0
    IL_0021:  ldloc.0
    IL_0022:  stfld      float64 Game.GameScreen::m_lastAutosaveTime
    IL_0027:  ldc.i4.0
    IL_0028:  ldc.i4.1
    IL_0029:  call       void Game.GameManager::SaveProject(bool,
                                                            bool)
    IL_002e:  call       bool Game.MarketplaceManager::get_IsTrialMode()
    IL_0033:  brfalse.s  IL_0074

    IL_0035:  call       class [EntitySystem]GameEntitySystem.Project Game.GameManager::get_Project()
    IL_003a:  ldc.i4.1
    IL_003b:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGameInfo>(bool)
    IL_0040:  callvirt   instance float64 Game.SubsystemGameInfo::get_TotalElapsedGameTime()
    IL_0045:  ldc.r8     1140.
    IL_004e:  ble.un.s   IL_0074

    IL_0050:  ldsfld     class [System.Runtime]System.Action Game.GameScreen/'<>c'::'<>9__4_0'
    IL_0055:  dup
    IL_0056:  brtrue.s   IL_006f

    IL_0058:  pop
    IL_0059:  ldsfld     class Game.GameScreen/'<>c' Game.GameScreen/'<>c'::'<>9'
    IL_005e:  ldftn      instance void Game.GameScreen/'<>c'::'<Update>b__4_0'()
    IL_0064:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0069:  dup
    IL_006a:  stsfld     class [System.Runtime]System.Action Game.GameScreen/'<>c'::'<>9__4_0'
    IL_006f:  call       void Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
    IL_0074:  ret
  } // end of method GameScreen::Update

} // end of class Game.GameScreen