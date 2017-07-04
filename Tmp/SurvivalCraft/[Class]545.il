.class public auto ansi beforefieldinit Game.GameScreen
       extends Game.Screen
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.GameScreen/'<>c' '<>9'
    .field public static class [System.Runtime]System.Action '<>9__1_0'
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

  } // end of class '<>c'

  .field private float64 m_lastAutosaveTime
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       69 (0x45)
    .maxstack  3
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.Screen::.ctor()
    IL_0006:  ldstr      "Screens/GameScreen"
    IL_000b:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_0010:  stloc.0
    IL_0011:  ldarg.0
    IL_0012:  ldarg.0
    IL_0013:  ldloc.0
    IL_0014:  call       void Game.WidgetsManager::LoadWidgetContents(class Game.Widget,
                                                                      object,
                                                                      class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_0019:  ldarg.0
    IL_001a:  ldc.i4.1
    IL_001b:  call       instance void Game.Widget::set_IsDrawRequired(bool)
    IL_0020:  ldsfld     class [System.Runtime]System.Action Game.GameScreen/'<>c'::'<>9__1_0'
    IL_0025:  dup
    IL_0026:  brtrue.s   IL_003f

    IL_0028:  pop
    IL_0029:  ldsfld     class Game.GameScreen/'<>c' Game.GameScreen/'<>c'::'<>9'
    IL_002e:  ldftn      instance void Game.GameScreen/'<>c'::'<.ctor>b__1_0'()
    IL_0034:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0039:  dup
    IL_003a:  stsfld     class [System.Runtime]System.Action Game.GameScreen/'<>c'::'<>9__1_0'
    IL_003f:  call       void [Engine]Engine.Window::add_Deactivated(class [System.Runtime]System.Action)
    IL_0044:  ret
  } // end of method GameScreen::.ctor

  .method public hidebysig virtual instance void 
          Enter(object[] parameters) cil managed
  {
    // 代码大小       30 (0x1e)
    .maxstack  8
    IL_0000:  call       class [EntitySystem]GameEntitySystem.Project Game.GameManager::get_Project()
    IL_0005:  brfalse.s  IL_0017

    IL_0007:  call       class [EntitySystem]GameEntitySystem.Project Game.GameManager::get_Project()
    IL_000c:  ldc.i4.1
    IL_000d:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemAudio>(bool)
    IL_0012:  callvirt   instance void Game.SubsystemAudio::Unmute()
    IL_0017:  ldc.i4.0
    IL_0018:  call       void Game.MusicManager::set_CurrentMix(valuetype Game.MusicManager/Mix)
    IL_001d:  ret
  } // end of method GameScreen::Enter

  .method public hidebysig virtual instance void 
          Leave() cil managed
  {
    // 代码大小       44 (0x2c)
    .maxstack  8
    IL_0000:  call       class [EntitySystem]GameEntitySystem.Project Game.GameManager::get_Project()
    IL_0005:  brfalse.s  IL_001e

    IL_0007:  call       class [EntitySystem]GameEntitySystem.Project Game.GameManager::get_Project()
    IL_000c:  ldc.i4.1
    IL_000d:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemAudio>(bool)
    IL_0012:  callvirt   instance void Game.SubsystemAudio::Mute()
    IL_0017:  ldc.i4.1
    IL_0018:  ldc.i4.1
    IL_0019:  call       void Game.GameManager::SaveProject(bool,
                                                            bool)
    IL_001e:  ldarg.0
    IL_001f:  ldc.i4.1
    IL_0020:  call       instance void Game.GameScreen::ShowHideCursors(bool)
    IL_0025:  ldc.i4.1
    IL_0026:  call       void Game.MusicManager::set_CurrentMix(valuetype Game.MusicManager/Mix)
    IL_002b:  ret
  } // end of method GameScreen::Leave

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       162 (0xa2)
    .maxstack  3
    .locals init (float64 V_0)
    IL_0000:  call       class [EntitySystem]GameEntitySystem.Project Game.GameManager::get_Project()
    IL_0005:  brfalse.s  IL_0071

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
    IL_0033:  brfalse.s  IL_006c

    IL_0035:  call       class [EntitySystem]GameEntitySystem.Project Game.GameManager::get_Project()
    IL_003a:  ldc.i4.1
    IL_003b:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGameInfo>(bool)
    IL_0040:  callvirt   instance float64 Game.SubsystemGameInfo::get_TotalElapsedGameTime()
    IL_0045:  ldc.r8     1140.
    IL_004e:  ble.un.s   IL_006c

    IL_0050:  ldc.i4.1
    IL_0051:  ldc.i4.0
    IL_0052:  call       void Game.GameManager::SaveProject(bool,
                                                            bool)
    IL_0057:  call       void Game.GameManager::DisposeProject()
    IL_005c:  ldstr      "TrialEnded"
    IL_0061:  ldc.i4.0
    IL_0062:  newarr     [System.Runtime]System.Object
    IL_0067:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                object[])
    IL_006c:  call       void Game.GameManager::UpdateProject()
    IL_0071:  ldarg.0
    IL_0072:  call       class [EntitySystem]GameEntitySystem.Project Game.GameManager::get_Project()
    IL_0077:  brfalse.s  IL_009b

    IL_0079:  ldarg.0
    IL_007a:  call       bool Game.DialogsManager::HasDialogs(class Game.ContainerWidget)
    IL_007f:  brtrue.s   IL_009b

    IL_0081:  ldarg.0
    IL_0082:  call       instance class Game.ContainerWidget Game.Widget::get_RootWidget()
    IL_0087:  call       bool Game.DialogsManager::HasDialogs(class Game.ContainerWidget)
    IL_008c:  brtrue.s   IL_009b

    IL_008e:  call       class Game.Screen Game.ScreensManager::get_CurrentScreen()
    IL_0093:  ldarg.0
    IL_0094:  ceq
    IL_0096:  ldc.i4.0
    IL_0097:  ceq
    IL_0099:  br.s       IL_009c

    IL_009b:  ldc.i4.1
    IL_009c:  call       instance void Game.GameScreen::ShowHideCursors(bool)
    IL_00a1:  ret
  } // end of method GameScreen::Update

  .method public hidebysig virtual instance void 
          Draw() cil managed
  {
    // 代码大小       47 (0x2f)
    .maxstack  8
    IL_0000:  call       bool Game.ScreensManager::get_IsAnimating()
    IL_0005:  brtrue.s   IL_002e

    IL_0007:  call       valuetype Game.ResolutionMode Game.SettingsManager::get_ResolutionMode()
    IL_000c:  ldc.i4.2
    IL_000d:  bne.un.s   IL_002e

    IL_000f:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Black
    IL_0014:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Color>::.ctor(!0)
    IL_0019:  ldc.r4     1.
    IL_001e:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float32>::.ctor(!0)
    IL_0023:  ldc.i4.0
    IL_0024:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_0029:  call       void [Engine]Engine.Graphics.Display::Clear(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Color>,
                                                                     valuetype [System.Runtime]System.Nullable`1<float32>,
                                                                     valuetype [System.Runtime]System.Nullable`1<int32>)
    IL_002e:  ret
  } // end of method GameScreen::Draw

  .method private hidebysig instance void 
          ShowHideCursors(bool show) cil managed
  {
    // 代码大小       25 (0x19)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance void Game.WidgetInput::set_IsMouseCursorVisible(bool)
    IL_000c:  ldarg.0
    IL_000d:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0012:  ldarg.1
    IL_0013:  callvirt   instance void Game.WidgetInput::set_IsPadCursorVisible(bool)
    IL_0018:  ret
  } // end of method GameScreen::ShowHideCursors

} // end of class Game.GameScreen