.class public auto ansi beforefieldinit Game.GameLoadingScreen
       extends Game.Screen
{
  .field private class Game.WorldInfo m_worldInfo
  .field private string m_worldSnapshotName
  .field private class Game.StateMachine m_stateMachine
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       127 (0x7f)
    .maxstack  5
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0)
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.StateMachine::.ctor()
    IL_0006:  stfld      class Game.StateMachine Game.GameLoadingScreen::m_stateMachine
    IL_000b:  ldarg.0
    IL_000c:  call       instance void Game.Screen::.ctor()
    IL_0011:  ldstr      "Screens/GameLoadingScreen"
    IL_0016:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_001b:  stloc.0
    IL_001c:  ldarg.0
    IL_001d:  ldarg.0
    IL_001e:  ldloc.0
    IL_001f:  call       void Game.WidgetsManager::LoadWidgetContents(class Game.Widget,
                                                                      object,
                                                                      class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_0024:  ldarg.0
    IL_0025:  ldfld      class Game.StateMachine Game.GameLoadingScreen::m_stateMachine
    IL_002a:  ldstr      "WaitingForFadeIn"
    IL_002f:  ldnull
    IL_0030:  ldarg.0
    IL_0031:  ldftn      instance void Game.GameLoadingScreen::'<.ctor>b__3_0'()
    IL_0037:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_003c:  ldnull
    IL_003d:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_0042:  ldarg.0
    IL_0043:  ldfld      class Game.StateMachine Game.GameLoadingScreen::m_stateMachine
    IL_0048:  ldstr      "Loading"
    IL_004d:  ldnull
    IL_004e:  ldarg.0
    IL_004f:  ldftn      instance void Game.GameLoadingScreen::'<.ctor>b__3_1'()
    IL_0055:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_005a:  ldnull
    IL_005b:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_0060:  ldarg.0
    IL_0061:  ldfld      class Game.StateMachine Game.GameLoadingScreen::m_stateMachine
    IL_0066:  ldstr      "RestoringSnapshot"
    IL_006b:  ldnull
    IL_006c:  ldarg.0
    IL_006d:  ldftn      instance void Game.GameLoadingScreen::'<.ctor>b__3_2'()
    IL_0073:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0078:  ldnull
    IL_0079:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_007e:  ret
  } // end of method GameLoadingScreen::.ctor

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       62 (0x3e)
    .maxstack  6
    .locals init (class [System.Runtime]System.Exception V_0)
    .try
    {
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.StateMachine Game.GameLoadingScreen::m_stateMachine
      IL_0006:  callvirt   instance void Game.StateMachine::Update()
      IL_000b:  leave.s    IL_003d

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_000d:  stloc.0
      IL_000e:  call       class Game.Screen Game.ScreensManager::get_PreviousScreen()
      IL_0013:  ldc.i4.0
      IL_0014:  newarr     [System.Runtime]System.Object
      IL_0019:  call       void Game.ScreensManager::SwitchScreen(class Game.Screen,
                                                                  object[])
      IL_001e:  ldnull
      IL_001f:  ldstr      "Error loading world"
      IL_0024:  ldloc.0
      IL_0025:  call       string Game.ExceptionManager::MakeFullErrorMessage(class [System.Runtime]System.Exception)
      IL_002a:  ldstr      "OK"
      IL_002f:  ldnull
      IL_0030:  ldnull
      IL_0031:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                   string,
                                                                   string,
                                                                   string,
                                                                   class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
      IL_0036:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                                class Game.Dialog)
      IL_003b:  leave.s    IL_003d

    }  // end handler
    IL_003d:  ret
  } // end of method GameLoadingScreen::Update

  .method public hidebysig virtual instance void 
          Enter(object[] parameters) cil managed
  {
    // 代码大小       60 (0x3c)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldc.i4.0
    IL_0003:  ldelem.ref
    IL_0004:  castclass  Game.WorldInfo
    IL_0009:  stfld      class Game.WorldInfo Game.GameLoadingScreen::m_worldInfo
    IL_000e:  ldarg.0
    IL_000f:  ldarg.1
    IL_0010:  ldc.i4.1
    IL_0011:  ldelem.ref
    IL_0012:  castclass  [System.Runtime]System.String
    IL_0017:  stfld      string Game.GameLoadingScreen::m_worldSnapshotName
    IL_001c:  ldarg.0
    IL_001d:  ldfld      class Game.StateMachine Game.GameLoadingScreen::m_stateMachine
    IL_0022:  ldstr      "WaitingForFadeIn"
    IL_0027:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_002c:  ldstr      "Loading World"
    IL_0031:  ldc.r4     0.0
    IL_0036:  call       void Game.ProgressManager::UpdateProgress(string,
                                                                   float32)
    IL_003b:  ret
  } // end of method GameLoadingScreen::Enter

  .method private hidebysig instance void 
          '<.ctor>b__3_0'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       54 (0x36)
    .maxstack  8
    IL_0000:  call       bool Game.ScreensManager::get_IsAnimating()
    IL_0005:  brtrue.s   IL_0035

    IL_0007:  ldarg.0
    IL_0008:  ldfld      string Game.GameLoadingScreen::m_worldSnapshotName
    IL_000d:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_0012:  brfalse.s  IL_0025

    IL_0014:  ldarg.0
    IL_0015:  ldfld      class Game.StateMachine Game.GameLoadingScreen::m_stateMachine
    IL_001a:  ldstr      "Loading"
    IL_001f:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0024:  ret

    IL_0025:  ldarg.0
    IL_0026:  ldfld      class Game.StateMachine Game.GameLoadingScreen::m_stateMachine
    IL_002b:  ldstr      "RestoringSnapshot"
    IL_0030:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0035:  ret
  } // end of method GameLoadingScreen::'<.ctor>b__3_0'

  .method private hidebysig instance void 
          '<.ctor>b__3_1'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       56 (0x38)
    .maxstack  3
    .locals init (class Game.ContainerWidget V_0)
    IL_0000:  ldstr      "Game"
    IL_0005:  call       !!0 Game.ScreensManager::FindScreen<class Game.GameScreen>(string)
    IL_000a:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_000f:  ldstr      "GamesWidget"
    IL_0014:  ldc.i4.1
    IL_0015:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ContainerWidget>(string,
                                                                                         bool)
    IL_001a:  stloc.0
    IL_001b:  ldarg.0
    IL_001c:  ldfld      class Game.WorldInfo Game.GameLoadingScreen::m_worldInfo
    IL_0021:  ldloc.0
    IL_0022:  call       void Game.GameManager::LoadProject(class Game.WorldInfo,
                                                            class Game.ContainerWidget)
    IL_0027:  ldstr      "Game"
    IL_002c:  ldc.i4.0
    IL_002d:  newarr     [System.Runtime]System.Object
    IL_0032:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                object[])
    IL_0037:  ret
  } // end of method GameLoadingScreen::'<.ctor>b__3_1'

  .method private hidebysig instance void 
          '<.ctor>b__3_2'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       44 (0x2c)
    .maxstack  8
    IL_0000:  call       void Game.GameManager::DisposeProject()
    IL_0005:  ldarg.0
    IL_0006:  ldfld      class Game.WorldInfo Game.GameLoadingScreen::m_worldInfo
    IL_000b:  ldfld      string Game.WorldInfo::DirectoryName
    IL_0010:  ldarg.0
    IL_0011:  ldfld      string Game.GameLoadingScreen::m_worldSnapshotName
    IL_0016:  call       void Game.WorldsManager::RestoreWorldFromSnapshot(string,
                                                                           string)
    IL_001b:  ldarg.0
    IL_001c:  ldfld      class Game.StateMachine Game.GameLoadingScreen::m_stateMachine
    IL_0021:  ldstr      "Loading"
    IL_0026:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_002b:  ret
  } // end of method GameLoadingScreen::'<.ctor>b__3_2'

} // end of class Game.GameLoadingScreen