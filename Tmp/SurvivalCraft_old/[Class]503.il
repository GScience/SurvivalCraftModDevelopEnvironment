.class public auto ansi beforefieldinit Game.GameLoadingScreen
       extends Game.Screen
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.GameLoadingScreen/'<>c' '<>9'
    .field public static class [System.Runtime]System.Action '<>9__5_4'
    .field public static class [System.Runtime]System.Action '<>9__5_3'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.GameLoadingScreen/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.GameLoadingScreen/'<>c' Game.GameLoadingScreen/'<>c'::'<>9'
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
            '<.ctor>b__5_3'() cil managed
    {
      // 代码大小       44 (0x2c)
      .maxstack  8
      IL_0000:  call       bool Game.GameManager::UpdateProjectUntilReadyForPlaying()
      IL_0005:  brfalse.s  IL_002b

      IL_0007:  ldsfld     class [System.Runtime]System.Action Game.GameLoadingScreen/'<>c'::'<>9__5_4'
      IL_000c:  dup
      IL_000d:  brtrue.s   IL_0026

      IL_000f:  pop
      IL_0010:  ldsfld     class Game.GameLoadingScreen/'<>c' Game.GameLoadingScreen/'<>c'::'<>9'
      IL_0015:  ldftn      instance void Game.GameLoadingScreen/'<>c'::'<.ctor>b__5_4'()
      IL_001b:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                              native int)
      IL_0020:  dup
      IL_0021:  stsfld     class [System.Runtime]System.Action Game.GameLoadingScreen/'<>c'::'<>9__5_4'
      IL_0026:  call       void Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
      IL_002b:  ret
    } // end of method '<>c'::'<.ctor>b__5_3'

    .method assembly hidebysig instance void 
            '<.ctor>b__5_4'() cil managed
    {
      // 代码大小       17 (0x11)
      .maxstack  8
      IL_0000:  ldstr      "Game"
      IL_0005:  ldc.i4.0
      IL_0006:  newarr     [System.Runtime]System.Object
      IL_000b:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                  object[])
      IL_0010:  ret
    } // end of method '<>c'::'<.ctor>b__5_4'

  } // end of class '<>c'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass6_0'
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
    } // end of method '<>c__DisplayClass6_0'::.ctor

    .method assembly hidebysig instance void 
            '<Update>b__0'() cil managed
    {
      // 代码大小       50 (0x32)
      .maxstack  8
      IL_0000:  call       class Game.Screen Game.ScreensManager::get_PreviousScreen()
      IL_0005:  ldc.i4.0
      IL_0006:  newarr     [System.Runtime]System.Object
      IL_000b:  call       void Game.ScreensManager::SwitchScreen(class Game.Screen,
                                                                  object[])
      IL_0010:  ldstr      "Error loading world"
      IL_0015:  ldarg.0
      IL_0016:  ldfld      class [System.Runtime]System.Exception Game.GameLoadingScreen/'<>c__DisplayClass6_0'::e
      IL_001b:  call       string Game.ExceptionManager::MakeFullErrorMessage(class [System.Runtime]System.Exception)
      IL_0020:  ldstr      "OK"
      IL_0025:  ldnull
      IL_0026:  ldnull
      IL_0027:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                   string,
                                                                   string,
                                                                   string,
                                                                   class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
      IL_002c:  call       void Game.DialogsManager::ShowDialog(class Game.Dialog)
      IL_0031:  ret
    } // end of method '<>c__DisplayClass6_0'::'<Update>b__0'

  } // end of class '<>c__DisplayClass6_0'

  .field private class Game.WorldInfo m_worldInfo
  .field private string m_worldSnapshotName
  .field private class Game.LabelWidget m_operationNameWidget
  .field private class Game.ValueBarWidget m_operationProgressWidget
  .field private class Game.StateMachine m_stateMachine
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       237 (0xed)
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
    IL_001d:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0022:  ldarg.0
    IL_0023:  ldloc.0
    IL_0024:  call       void Game.WidgetsManager::LoadWidgetContents(class Game.Widget,
                                                                      object,
                                                                      class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_0029:  ldarg.0
    IL_002a:  ldarg.0
    IL_002b:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0030:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0035:  ldstr      "OperationName"
    IL_003a:  ldc.i4.1
    IL_003b:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_0040:  stfld      class Game.LabelWidget Game.GameLoadingScreen::m_operationNameWidget
    IL_0045:  ldarg.0
    IL_0046:  ldarg.0
    IL_0047:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_004c:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0051:  ldstr      "OperationProgress"
    IL_0056:  ldc.i4.1
    IL_0057:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ValueBarWidget>(string,
                                                                                             bool)
    IL_005c:  stfld      class Game.ValueBarWidget Game.GameLoadingScreen::m_operationProgressWidget
    IL_0061:  ldarg.0
    IL_0062:  ldfld      class Game.StateMachine Game.GameLoadingScreen::m_stateMachine
    IL_0067:  ldstr      "WaitingForFadeIn"
    IL_006c:  ldnull
    IL_006d:  ldarg.0
    IL_006e:  ldftn      instance void Game.GameLoadingScreen::'<.ctor>b__5_0'()
    IL_0074:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0079:  ldnull
    IL_007a:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_007f:  ldarg.0
    IL_0080:  ldfld      class Game.StateMachine Game.GameLoadingScreen::m_stateMachine
    IL_0085:  ldstr      "Loading"
    IL_008a:  ldnull
    IL_008b:  ldarg.0
    IL_008c:  ldftn      instance void Game.GameLoadingScreen::'<.ctor>b__5_1'()
    IL_0092:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0097:  ldnull
    IL_0098:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_009d:  ldarg.0
    IL_009e:  ldfld      class Game.StateMachine Game.GameLoadingScreen::m_stateMachine
    IL_00a3:  ldstr      "RestoringSnapshot"
    IL_00a8:  ldnull
    IL_00a9:  ldarg.0
    IL_00aa:  ldftn      instance void Game.GameLoadingScreen::'<.ctor>b__5_2'()
    IL_00b0:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00b5:  ldnull
    IL_00b6:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_00bb:  ldarg.0
    IL_00bc:  ldfld      class Game.StateMachine Game.GameLoadingScreen::m_stateMachine
    IL_00c1:  ldstr      "Preparing"
    IL_00c6:  ldnull
    IL_00c7:  ldsfld     class [System.Runtime]System.Action Game.GameLoadingScreen/'<>c'::'<>9__5_3'
    IL_00cc:  dup
    IL_00cd:  brtrue.s   IL_00e6

    IL_00cf:  pop
    IL_00d0:  ldsfld     class Game.GameLoadingScreen/'<>c' Game.GameLoadingScreen/'<>c'::'<>9'
    IL_00d5:  ldftn      instance void Game.GameLoadingScreen/'<>c'::'<.ctor>b__5_3'()
    IL_00db:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00e0:  dup
    IL_00e1:  stsfld     class [System.Runtime]System.Action Game.GameLoadingScreen/'<>c'::'<>9__5_3'
    IL_00e6:  ldnull
    IL_00e7:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_00ec:  ret
  } // end of method GameLoadingScreen::.ctor

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       79 (0x4f)
    .maxstack  2
    .locals init (class Game.GameLoadingScreen/'<>c__DisplayClass6_0' V_0,
             class [System.Runtime]System.Exception V_1)
    .try
    {
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.StateMachine Game.GameLoadingScreen::m_stateMachine
      IL_0006:  callvirt   instance void Game.StateMachine::Update()
      IL_000b:  ldarg.0
      IL_000c:  ldfld      class Game.LabelWidget Game.GameLoadingScreen::m_operationNameWidget
      IL_0011:  call       string Game.ProgressManager::get_OperationName()
      IL_0016:  callvirt   instance void Game.LabelWidget::set_Text(string)
      IL_001b:  ldarg.0
      IL_001c:  ldfld      class Game.ValueBarWidget Game.GameLoadingScreen::m_operationProgressWidget
      IL_0021:  call       float32 Game.ProgressManager::get_Progress()
      IL_0026:  callvirt   instance void Game.ValueBarWidget::set_Value(float32)
      IL_002b:  leave.s    IL_004e

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_002d:  newobj     instance void Game.GameLoadingScreen/'<>c__DisplayClass6_0'::.ctor()
      IL_0032:  stloc.0
      IL_0033:  stloc.1
      IL_0034:  ldloc.0
      IL_0035:  ldloc.1
      IL_0036:  stfld      class [System.Runtime]System.Exception Game.GameLoadingScreen/'<>c__DisplayClass6_0'::e
      IL_003b:  ldloc.0
      IL_003c:  ldftn      instance void Game.GameLoadingScreen/'<>c__DisplayClass6_0'::'<Update>b__0'()
      IL_0042:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                              native int)
      IL_0047:  call       void Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
      IL_004c:  leave.s    IL_004e

    }  // end handler
    IL_004e:  ret
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
          '<.ctor>b__5_0'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       59 (0x3b)
    .maxstack  8
    IL_0000:  call       float32 Game.FrontendManager::get_FadeFactor()
    IL_0005:  ldc.r4     0.0
    IL_000a:  bne.un.s   IL_003a

    IL_000c:  ldarg.0
    IL_000d:  ldfld      string Game.GameLoadingScreen::m_worldSnapshotName
    IL_0012:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_0017:  brfalse.s  IL_002a

    IL_0019:  ldarg.0
    IL_001a:  ldfld      class Game.StateMachine Game.GameLoadingScreen::m_stateMachine
    IL_001f:  ldstr      "Loading"
    IL_0024:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0029:  ret

    IL_002a:  ldarg.0
    IL_002b:  ldfld      class Game.StateMachine Game.GameLoadingScreen::m_stateMachine
    IL_0030:  ldstr      "RestoringSnapshot"
    IL_0035:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_003a:  ret
  } // end of method GameLoadingScreen::'<.ctor>b__5_0'

  .method private hidebysig instance void 
          '<.ctor>b__5_1'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       56 (0x38)
    .maxstack  2
    .locals init (class Game.GameWidget V_0)
    IL_0000:  ldstr      "Game"
    IL_0005:  call       !!0 Game.ScreensManager::FindScreen<class Game.GameScreen>(string)
    IL_000a:  callvirt   instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_000f:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0014:  ldc.i4.1
    IL_0015:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.GameWidget>(bool)
    IL_001a:  stloc.0
    IL_001b:  ldarg.0
    IL_001c:  ldfld      class Game.WorldInfo Game.GameLoadingScreen::m_worldInfo
    IL_0021:  ldloc.0
    IL_0022:  call       void Game.GameManager::LoadProject(class Game.WorldInfo,
                                                            class Game.GameWidget)
    IL_0027:  ldarg.0
    IL_0028:  ldfld      class Game.StateMachine Game.GameLoadingScreen::m_stateMachine
    IL_002d:  ldstr      "Preparing"
    IL_0032:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0037:  ret
  } // end of method GameLoadingScreen::'<.ctor>b__5_1'

  .method private hidebysig instance void 
          '<.ctor>b__5_2'() cil managed
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
  } // end of method GameLoadingScreen::'<.ctor>b__5_2'

} // end of class Game.GameLoadingScreen