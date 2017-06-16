.class public auto ansi beforefieldinit Game.GameMenuScreen
       extends Game.Screen
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.GameMenuScreen/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`2<object,string> '<>9__7_0'
    .field public static class [System.Runtime]System.Action`1<object> '<>9__7_1'
    .field public static class [System.Runtime]System.Action '<>9__7_3'
    .field public static class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton> '<>9__7_2'
    .field public static class [System.Runtime]System.Action '<>9__7_4'
    .field public static class [System.Runtime]System.Action '<>9__7_5'
    .field public static class [System.Runtime]System.Action '<>9__7_6'
    .field public static class [System.Runtime]System.Action '<>9__7_7'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.GameMenuScreen/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.GameMenuScreen/'<>c' Game.GameMenuScreen/'<>c'::'<>9'
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

    .method assembly hidebysig instance string 
            '<Update>b__7_0'(object o) cil managed
    {
      // 代码大小       12 (0xc)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  castclass  Game.ActiveExternalContentInfo
      IL_0006:  ldfld      string Game.ActiveExternalContentInfo::DisplayName
      IL_000b:  ret
    } // end of method '<>c'::'<Update>b__7_0'

    .method assembly hidebysig instance void 
            '<Update>b__7_1'(object o) cil managed
    {
      // 代码大小       40 (0x28)
      .maxstack  3
      .locals init (class Game.ActiveExternalContentInfo V_0)
      IL_0000:  ldarg.1
      IL_0001:  castclass  Game.ActiveExternalContentInfo
      IL_0006:  stloc.0
      IL_0007:  ldloc.0
      IL_0008:  ldfld      string Game.ActiveExternalContentInfo::Address
      IL_000d:  ldloc.0
      IL_000e:  ldfld      string Game.ActiveExternalContentInfo::DisplayName
      IL_0013:  call       class Game.UserInfo Game.UserManager::get_ActiveUser()
      IL_0018:  ldfld      string Game.UserInfo::UniqueId
      IL_001d:  newobj     instance void Game.RateCommunityContentDialog::.ctor(string,
                                                                                string,
                                                                                string)
      IL_0022:  call       void Game.DialogsManager::ShowDialog(class Game.Dialog)
      IL_0027:  ret
    } // end of method '<>c'::'<Update>b__7_1'

    .method assembly hidebysig instance void 
            '<Update>b__7_2'(valuetype Game.MessageDialogButton result) cil managed
    {
      // 代码大小       40 (0x28)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  brtrue.s   IL_0027

      IL_0003:  ldsfld     class [System.Runtime]System.Action Game.GameMenuScreen/'<>c'::'<>9__7_3'
      IL_0008:  dup
      IL_0009:  brtrue.s   IL_0022

      IL_000b:  pop
      IL_000c:  ldsfld     class Game.GameMenuScreen/'<>c' Game.GameMenuScreen/'<>c'::'<>9'
      IL_0011:  ldftn      instance void Game.GameMenuScreen/'<>c'::'<Update>b__7_3'()
      IL_0017:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                              native int)
      IL_001c:  dup
      IL_001d:  stsfld     class [System.Runtime]System.Action Game.GameMenuScreen/'<>c'::'<>9__7_3'
      IL_0022:  call       void Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
      IL_0027:  ret
    } // end of method '<>c'::'<Update>b__7_2'

    .method assembly hidebysig instance void 
            '<Update>b__7_3'() cil managed
    {
      // 代码大小       33 (0x21)
      .maxstack  8
      IL_0000:  ldstr      "GameLoading"
      IL_0005:  ldc.i4.2
      IL_0006:  newarr     [System.Runtime]System.Object
      IL_000b:  dup
      IL_000c:  ldc.i4.0
      IL_000d:  call       class Game.WorldInfo Game.GameManager::get_WorldInfo()
      IL_0012:  stelem.ref
      IL_0013:  dup
      IL_0014:  ldc.i4.1
      IL_0015:  ldstr      "AdventureRestart"
      IL_001a:  stelem.ref
      IL_001b:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                  object[])
      IL_0020:  ret
    } // end of method '<>c'::'<Update>b__7_3'

    .method assembly hidebysig instance void 
            '<Update>b__7_4'() cil managed
    {
      // 代码大小       17 (0x11)
      .maxstack  8
      IL_0000:  ldstr      "Settings"
      IL_0005:  ldc.i4.0
      IL_0006:  newarr     [System.Runtime]System.Object
      IL_000b:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                  object[])
      IL_0010:  ret
    } // end of method '<>c'::'<Update>b__7_4'

    .method assembly hidebysig instance void 
            '<Update>b__7_5'() cil managed
    {
      // 代码大小       17 (0x11)
      .maxstack  8
      IL_0000:  ldstr      "Help"
      IL_0005:  ldc.i4.0
      IL_0006:  newarr     [System.Runtime]System.Object
      IL_000b:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                  object[])
      IL_0010:  ret
    } // end of method '<>c'::'<Update>b__7_5'

    .method assembly hidebysig instance void 
            '<Update>b__7_6'() cil managed
    {
      // 代码大小       29 (0x1d)
      .maxstack  8
      IL_0000:  ldc.i4.1
      IL_0001:  ldc.i4.1
      IL_0002:  call       void Game.GameManager::SaveProject(bool,
                                                              bool)
      IL_0007:  call       void Game.GameManager::DisposeProject()
      IL_000c:  ldstr      "MainMenu"
      IL_0011:  ldc.i4.0
      IL_0012:  newarr     [System.Runtime]System.Object
      IL_0017:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                  object[])
      IL_001c:  ret
    } // end of method '<>c'::'<Update>b__7_6'

    .method assembly hidebysig instance void 
            '<Update>b__7_7'() cil managed
    {
      // 代码大小       17 (0x11)
      .maxstack  8
      IL_0000:  ldstr      "Game"
      IL_0005:  ldc.i4.0
      IL_0006:  newarr     [System.Runtime]System.Object
      IL_000b:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                  object[])
      IL_0010:  ret
    } // end of method '<>c'::'<Update>b__7_7'

  } // end of class '<>c'

  .class auto ansi sealed nested private beforefieldinit '<GetRateableItems>d__8'
         extends [System.Runtime]System.Object
         implements class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.ActiveExternalContentInfo>,
                    [System.Runtime]System.Collections.IEnumerable,
                    class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.ActiveExternalContentInfo>,
                    [System.Runtime]System.Collections.IEnumerator,
                    [System.Runtime]System.IDisposable
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field private int32 '<>1__state'
    .field private class Game.ActiveExternalContentInfo '<>2__current'
    .field private int32 '<>l__initialThreadId'
    .field private class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.ActiveExternalContentInfo> '<>7__wrap1'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor(int32 '<>1__state') cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      // 代码大小       25 (0x19)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ldarg.0
      IL_0007:  ldarg.1
      IL_0008:  stfld      int32 Game.GameMenuScreen/'<GetRateableItems>d__8'::'<>1__state'
      IL_000d:  ldarg.0
      IL_000e:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0013:  stfld      int32 Game.GameMenuScreen/'<GetRateableItems>d__8'::'<>l__initialThreadId'
      IL_0018:  ret
    } // end of method '<GetRateableItems>d__8'::.ctor

    .method private hidebysig newslot virtual final 
            instance void  System.IDisposable.Dispose() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.IDisposable::Dispose
      // 代码大小       27 (0x1b)
      .maxstack  2
      .locals init (int32 V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.GameMenuScreen/'<GetRateableItems>d__8'::'<>1__state'
      IL_0006:  stloc.0
      IL_0007:  ldloc.0
      IL_0008:  ldc.i4.s   -3
      IL_000a:  beq.s      IL_0010

      IL_000c:  ldloc.0
      IL_000d:  ldc.i4.1
      IL_000e:  bne.un.s   IL_001a

      IL_0010:  nop
      .try
      {
        IL_0011:  leave.s    IL_001a

      }  // end .try
      finally
      {
        IL_0013:  ldarg.0
        IL_0014:  call       instance void Game.GameMenuScreen/'<GetRateableItems>d__8'::'<>m__Finally1'()
        IL_0019:  endfinally
      }  // end handler
      IL_001a:  ret
    } // end of method '<GetRateableItems>d__8'::System.IDisposable.Dispose

    .method private hidebysig newslot virtual final 
            instance bool  MoveNext() cil managed
    {
      .override [System.Runtime]System.Collections.IEnumerator::MoveNext
      // 代码大小       184 (0xb8)
      .maxstack  2
      .locals init (bool V_0,
               int32 V_1,
               class Game.SubsystemGameInfo V_2,
               class Game.ActiveExternalContentInfo V_3)
      .try
      {
        IL_0000:  ldarg.0
        IL_0001:  ldfld      int32 Game.GameMenuScreen/'<GetRateableItems>d__8'::'<>1__state'
        IL_0006:  stloc.1
        IL_0007:  ldloc.1
        IL_0008:  brfalse.s  IL_0015

        IL_000a:  ldloc.1
        IL_000b:  ldc.i4.1
        IL_000c:  beq.s      IL_0089

        IL_000e:  ldc.i4.0
        IL_000f:  stloc.0
        IL_0010:  leave      IL_00b6

        IL_0015:  ldarg.0
        IL_0016:  ldc.i4.m1
        IL_0017:  stfld      int32 Game.GameMenuScreen/'<GetRateableItems>d__8'::'<>1__state'
        IL_001c:  call       class [EntitySystem]GameEntitySystem.Project Game.GameManager::get_Project()
        IL_0021:  brfalse    IL_00ab

        IL_0026:  call       class Game.UserInfo Game.UserManager::get_ActiveUser()
        IL_002b:  brfalse.s  IL_00ab

        IL_002d:  call       class [EntitySystem]GameEntitySystem.Project Game.GameManager::get_Project()
        IL_0032:  ldc.i4.1
        IL_0033:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGameInfo>(bool)
        IL_0038:  stloc.2
        IL_0039:  ldarg.0
        IL_003a:  ldloc.2
        IL_003b:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.ActiveExternalContentInfo> Game.SubsystemGameInfo::GetActiveExternalContent()
        IL_0040:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.ActiveExternalContentInfo>::GetEnumerator()
        IL_0045:  stfld      class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.ActiveExternalContentInfo> Game.GameMenuScreen/'<GetRateableItems>d__8'::'<>7__wrap1'
        IL_004a:  ldarg.0
        IL_004b:  ldc.i4.s   -3
        IL_004d:  stfld      int32 Game.GameMenuScreen/'<GetRateableItems>d__8'::'<>1__state'
        IL_0052:  br.s       IL_0091

        IL_0054:  ldarg.0
        IL_0055:  ldfld      class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.ActiveExternalContentInfo> Game.GameMenuScreen/'<GetRateableItems>d__8'::'<>7__wrap1'
        IL_005a:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.ActiveExternalContentInfo>::get_Current()
        IL_005f:  stloc.3
        IL_0060:  ldloc.3
        IL_0061:  ldfld      string Game.ActiveExternalContentInfo::Address
        IL_0066:  call       class Game.UserInfo Game.UserManager::get_ActiveUser()
        IL_006b:  ldfld      string Game.UserInfo::UniqueId
        IL_0070:  call       bool Game.CommunityContentManager::IsContentRated(string,
                                                                               string)
        IL_0075:  brtrue.s   IL_0091

        IL_0077:  ldarg.0
        IL_0078:  ldloc.3
        IL_0079:  stfld      class Game.ActiveExternalContentInfo Game.GameMenuScreen/'<GetRateableItems>d__8'::'<>2__current'
        IL_007e:  ldarg.0
        IL_007f:  ldc.i4.1
        IL_0080:  stfld      int32 Game.GameMenuScreen/'<GetRateableItems>d__8'::'<>1__state'
        IL_0085:  ldc.i4.1
        IL_0086:  stloc.0
        IL_0087:  leave.s    IL_00b6

        IL_0089:  ldarg.0
        IL_008a:  ldc.i4.s   -3
        IL_008c:  stfld      int32 Game.GameMenuScreen/'<GetRateableItems>d__8'::'<>1__state'
        IL_0091:  ldarg.0
        IL_0092:  ldfld      class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.ActiveExternalContentInfo> Game.GameMenuScreen/'<GetRateableItems>d__8'::'<>7__wrap1'
        IL_0097:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
        IL_009c:  brtrue.s   IL_0054

        IL_009e:  ldarg.0
        IL_009f:  call       instance void Game.GameMenuScreen/'<GetRateableItems>d__8'::'<>m__Finally1'()
        IL_00a4:  ldarg.0
        IL_00a5:  ldnull
        IL_00a6:  stfld      class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.ActiveExternalContentInfo> Game.GameMenuScreen/'<GetRateableItems>d__8'::'<>7__wrap1'
        IL_00ab:  ldc.i4.0
        IL_00ac:  stloc.0
        IL_00ad:  leave.s    IL_00b6

      }  // end .try
      fault
      {
        IL_00af:  ldarg.0
        IL_00b0:  call       instance void Game.GameMenuScreen/'<GetRateableItems>d__8'::System.IDisposable.Dispose()
        IL_00b5:  endfinally
      }  // end handler
      IL_00b6:  ldloc.0
      IL_00b7:  ret
    } // end of method '<GetRateableItems>d__8'::MoveNext

    .method private hidebysig instance void 
            '<>m__Finally1'() cil managed
    {
      // 代码大小       27 (0x1b)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldc.i4.m1
      IL_0002:  stfld      int32 Game.GameMenuScreen/'<GetRateableItems>d__8'::'<>1__state'
      IL_0007:  ldarg.0
      IL_0008:  ldfld      class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.ActiveExternalContentInfo> Game.GameMenuScreen/'<GetRateableItems>d__8'::'<>7__wrap1'
      IL_000d:  brfalse.s  IL_001a

      IL_000f:  ldarg.0
      IL_0010:  ldfld      class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.ActiveExternalContentInfo> Game.GameMenuScreen/'<GetRateableItems>d__8'::'<>7__wrap1'
      IL_0015:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_001a:  ret
    } // end of method '<GetRateableItems>d__8'::'<>m__Finally1'

    .method private hidebysig newslot specialname virtual final 
            instance class Game.ActiveExternalContentInfo 
            'System.Collections.Generic.IEnumerator<Game.ActiveExternalContentInfo>.get_Current'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.ActiveExternalContentInfo>::get_Current()
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.ActiveExternalContentInfo Game.GameMenuScreen/'<GetRateableItems>d__8'::'<>2__current'
      IL_0006:  ret
    } // end of method '<GetRateableItems>d__8'::'System.Collections.Generic.IEnumerator<Game.ActiveExternalContentInfo>.get_Current'

    .method private hidebysig newslot virtual final 
            instance void  System.Collections.IEnumerator.Reset() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerator::Reset
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  newobj     instance void [System.Runtime]System.NotSupportedException::.ctor()
      IL_0005:  throw
    } // end of method '<GetRateableItems>d__8'::System.Collections.IEnumerator.Reset

    .method private hidebysig newslot specialname virtual final 
            instance object  System.Collections.IEnumerator.get_Current() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerator::get_Current
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.ActiveExternalContentInfo Game.GameMenuScreen/'<GetRateableItems>d__8'::'<>2__current'
      IL_0006:  ret
    } // end of method '<GetRateableItems>d__8'::System.Collections.IEnumerator.get_Current

    .method private hidebysig newslot virtual final 
            instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.ActiveExternalContentInfo> 
            'System.Collections.Generic.IEnumerable<Game.ActiveExternalContentInfo>.GetEnumerator'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.ActiveExternalContentInfo>::GetEnumerator()
      // 代码大小       43 (0x2b)
      .maxstack  2
      .locals init (class Game.GameMenuScreen/'<GetRateableItems>d__8' V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.GameMenuScreen/'<GetRateableItems>d__8'::'<>1__state'
      IL_0006:  ldc.i4.s   -2
      IL_0008:  bne.un.s   IL_0022

      IL_000a:  ldarg.0
      IL_000b:  ldfld      int32 Game.GameMenuScreen/'<GetRateableItems>d__8'::'<>l__initialThreadId'
      IL_0010:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0015:  bne.un.s   IL_0022

      IL_0017:  ldarg.0
      IL_0018:  ldc.i4.0
      IL_0019:  stfld      int32 Game.GameMenuScreen/'<GetRateableItems>d__8'::'<>1__state'
      IL_001e:  ldarg.0
      IL_001f:  stloc.0
      IL_0020:  br.s       IL_0029

      IL_0022:  ldc.i4.0
      IL_0023:  newobj     instance void Game.GameMenuScreen/'<GetRateableItems>d__8'::.ctor(int32)
      IL_0028:  stloc.0
      IL_0029:  ldloc.0
      IL_002a:  ret
    } // end of method '<GetRateableItems>d__8'::'System.Collections.Generic.IEnumerable<Game.ActiveExternalContentInfo>.GetEnumerator'

    .method private hidebysig newslot virtual final 
            instance class [System.Runtime]System.Collections.IEnumerator 
            System.Collections.IEnumerable.GetEnumerator() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerable::GetEnumerator
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.ActiveExternalContentInfo> Game.GameMenuScreen/'<GetRateableItems>d__8'::'System.Collections.Generic.IEnumerable<Game.ActiveExternalContentInfo>.GetEnumerator'()
      IL_0006:  ret
    } // end of method '<GetRateableItems>d__8'::System.Collections.IEnumerable.GetEnumerator

    .property instance class Game.ActiveExternalContentInfo
            'System.Collections.Generic.IEnumerator<Game.ActiveExternalContentInfo>.Current'()
    {
      .get instance class Game.ActiveExternalContentInfo Game.GameMenuScreen/'<GetRateableItems>d__8'::'System.Collections.Generic.IEnumerator<Game.ActiveExternalContentInfo>.get_Current'()
    } // end of property '<GetRateableItems>d__8'::'System.Collections.Generic.IEnumerator<Game.ActiveExternalContentInfo>.Current'
    .property instance object System.Collections.IEnumerator.Current()
    {
      .get instance object Game.GameMenuScreen/'<GetRateableItems>d__8'::System.Collections.IEnumerator.get_Current()
    } // end of property '<GetRateableItems>d__8'::System.Collections.IEnumerator.Current
  } // end of class '<GetRateableItems>d__8'

  .field private bool m_invalid
  .field private bool m_increaseDetailDialogShown
  .field private bool m_decreaseDetailDialogShown
  .field private bool m_adventureRestartExists
  .field private class Game.StackPanelWidget m_statsPanel
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       59 (0x3b)
    .maxstack  4
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.Screen::.ctor()
    IL_0006:  ldstr      "Screens/GameMenuScreen"
    IL_000b:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_0010:  stloc.0
    IL_0011:  ldarg.0
    IL_0012:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0017:  ldarg.0
    IL_0018:  ldloc.0
    IL_0019:  call       void Game.WidgetsManager::LoadWidgetContents(class Game.Widget,
                                                                      object,
                                                                      class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_001e:  ldarg.0
    IL_001f:  ldarg.0
    IL_0020:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0025:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_002a:  ldstr      "StatsPanel"
    IL_002f:  ldc.i4.1
    IL_0030:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.StackPanelWidget>(string,
                                                                                               bool)
    IL_0035:  stfld      class Game.StackPanelWidget Game.GameMenuScreen::m_statsPanel
    IL_003a:  ret
  } // end of method GameMenuScreen::.ctor

  .method public hidebysig virtual instance void 
          Enter(object[] parameters) cil managed
  {
    // 代码大小       3245 (0xcad)
    .maxstack  10
    .locals init (valuetype [System.Runtime]System.Nullable`1<float32> V_0,
             class Game.SubsystemGameInfo V_1,
             class Game.SubsystemPlayer V_2,
             class Game.ComponentPlayer V_3,
             class Game.SubsystemFurnitureBlockBehavior V_4,
             class [Engine]Engine.Media.BitmapFont V_5,
             class [Engine]Engine.Media.BitmapFont V_6,
             valuetype [Engine]Engine.Color V_7,
             class Game.StackPanelWidget V_8,
             float64 V_9,
             string V_10,
             int32 V_11,
             int32 V_12,
             int32 V_13,
             valuetype [Engine]Engine.Vector3 V_14,
             class Game.PlayerStats V_15,
             float64 V_16,
             valuetype Game.GameMode V_17)
    IL_0000:  ldarg.0
    IL_0001:  call       class Game.WorldInfo Game.GameManager::get_WorldInfo()
    IL_0006:  ldfld      string Game.WorldInfo::DirectoryName
    IL_000b:  ldstr      "AdventureRestart"
    IL_0010:  call       bool Game.WorldsManager::SnapshotExists(string,
                                                                 string)
    IL_0015:  stfld      bool Game.GameMenuScreen::m_adventureRestartExists
    IL_001a:  ldarg.0
    IL_001b:  ldfld      bool Game.GameMenuScreen::m_increaseDetailDialogShown
    IL_0020:  brtrue.s   IL_008d

    IL_0022:  call       valuetype [System.Runtime]System.Nullable`1<float32> Game.PerformanceManager::get_LongTermAverageFrameTime()
    IL_0027:  stloc.0
    IL_0028:  ldloca.s   V_0
    IL_002a:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float32>::get_HasValue()
    IL_002f:  brfalse.s  IL_008d

    IL_0031:  call       valuetype [System.Runtime]System.Nullable`1<float32> Game.PerformanceManager::get_LongTermAverageFrameTime()
    IL_0036:  stloc.0
    IL_0037:  ldloca.s   V_0
    IL_0039:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_003e:  ldc.r4     1000.
    IL_0043:  mul
    IL_0044:  ldc.r4     25.
    IL_0049:  bge.un.s   IL_008d

    IL_004b:  call       int32 Game.SettingsManager::get_VisibilityRange()
    IL_0050:  ldc.i4.s   64
    IL_0052:  ble.s      IL_005b

    IL_0054:  call       valuetype Game.ResolutionMode Game.SettingsManager::get_ResolutionMode()
    IL_0059:  brtrue.s   IL_008d

    IL_005b:  ldarg.0
    IL_005c:  ldc.i4.1
    IL_005d:  stfld      bool Game.GameMenuScreen::m_increaseDetailDialogShown
    IL_0062:  ldstr      "Your device is fast"
    IL_0067:  ldstr      "Consider increasing visibility range or resolution"
    + " for better graphics. To do so, go to performance settings."
    IL_006c:  ldstr      "OK"
    IL_0071:  ldnull
    IL_0072:  ldnull
    IL_0073:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                 string,
                                                                 string,
                                                                 string,
                                                                 class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
    IL_0078:  call       void Game.DialogsManager::ShowDialog(class Game.Dialog)
    IL_007d:  ldstr      "[GameMenuScreen] IncreaseDetailDialog Shown"
    IL_0082:  ldc.i4.0
    IL_0083:  newarr     Game.AnalyticsParameter
    IL_0088:  call       void Game.AnalyticsManager::LogEvent(string,
                                                              valuetype Game.AnalyticsParameter[])
    IL_008d:  ldarg.0
    IL_008e:  ldfld      bool Game.GameMenuScreen::m_decreaseDetailDialogShown
    IL_0093:  brtrue.s   IL_0101

    IL_0095:  call       valuetype [System.Runtime]System.Nullable`1<float32> Game.PerformanceManager::get_LongTermAverageFrameTime()
    IL_009a:  stloc.0
    IL_009b:  ldloca.s   V_0
    IL_009d:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float32>::get_HasValue()
    IL_00a2:  brfalse.s  IL_0101

    IL_00a4:  call       valuetype [System.Runtime]System.Nullable`1<float32> Game.PerformanceManager::get_LongTermAverageFrameTime()
    IL_00a9:  stloc.0
    IL_00aa:  ldloca.s   V_0
    IL_00ac:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_00b1:  ldc.r4     1000.
    IL_00b6:  mul
    IL_00b7:  ldc.r4     50.
    IL_00bc:  ble.un.s   IL_0101

    IL_00be:  call       int32 Game.SettingsManager::get_VisibilityRange()
    IL_00c3:  ldc.i4.s   64
    IL_00c5:  bge.s      IL_00cf

    IL_00c7:  call       valuetype Game.ResolutionMode Game.SettingsManager::get_ResolutionMode()
    IL_00cc:  ldc.i4.2
    IL_00cd:  bne.un.s   IL_0101

    IL_00cf:  ldarg.0
    IL_00d0:  ldc.i4.1
    IL_00d1:  stfld      bool Game.GameMenuScreen::m_decreaseDetailDialogShown
    IL_00d6:  ldstr      "Your device is not fast enough"
    IL_00db:  ldstr      "Consider decreasing visibility range or resolution"
    + ". To do so, go to performance settings."
    IL_00e0:  ldstr      "OK"
    IL_00e5:  ldnull
    IL_00e6:  ldnull
    IL_00e7:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                 string,
                                                                 string,
                                                                 string,
                                                                 class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
    IL_00ec:  call       void Game.DialogsManager::ShowDialog(class Game.Dialog)
    IL_00f1:  ldstr      "[GameMenuScreen] DecreaseDetailDialog Shown"
    IL_00f6:  ldc.i4.0
    IL_00f7:  newarr     Game.AnalyticsParameter
    IL_00fc:  call       void Game.AnalyticsManager::LogEvent(string,
                                                              valuetype Game.AnalyticsParameter[])
    IL_0101:  ldarg.0
    IL_0102:  ldfld      class Game.StackPanelWidget Game.GameMenuScreen::m_statsPanel
    IL_0107:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_010c:  callvirt   instance void Game.WidgetsContainer::Clear()
    IL_0111:  call       class [EntitySystem]GameEntitySystem.Project Game.GameManager::get_Project()
    IL_0116:  brfalse    IL_0cac

    IL_011b:  call       class [EntitySystem]GameEntitySystem.Project Game.GameManager::get_Project()
    IL_0120:  ldc.i4.1
    IL_0121:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemPlayer>(bool)
    IL_0126:  callvirt   instance class Game.ComponentPlayer Game.SubsystemPlayer::get_ComponentPlayer()
    IL_012b:  brfalse    IL_0cac

    IL_0130:  call       class [EntitySystem]GameEntitySystem.Project Game.GameManager::get_Project()
    IL_0135:  ldc.i4.1
    IL_0136:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGameInfo>(bool)
    IL_013b:  stloc.1
    IL_013c:  call       class [EntitySystem]GameEntitySystem.Project Game.GameManager::get_Project()
    IL_0141:  ldc.i4.1
    IL_0142:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemPlayer>(bool)
    IL_0147:  stloc.2
    IL_0148:  ldloc.2
    IL_0149:  callvirt   instance class Game.ComponentPlayer Game.SubsystemPlayer::get_ComponentPlayer()
    IL_014e:  stloc.3
    IL_014f:  call       class [EntitySystem]GameEntitySystem.Project Game.GameManager::get_Project()
    IL_0154:  ldc.i4.1
    IL_0155:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemFurnitureBlockBehavior>(bool)
    IL_015a:  stloc.s    V_4
    IL_015c:  ldstr      "Fonts/Pericles24"
    IL_0161:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Media.BitmapFont>(string)
    IL_0166:  stloc.s    V_5
    IL_0168:  ldstr      "Fonts/Pericles18"
    IL_016d:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Media.BitmapFont>(string)
    IL_0172:  stloc.s    V_6
    IL_0174:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0179:  stloc.s    V_7
    IL_017b:  newobj     instance void Game.StackPanelWidget::.ctor()
    IL_0180:  dup
    IL_0181:  ldc.i4.1
    IL_0182:  callvirt   instance void Game.StackPanelWidget::set_Direction(valuetype Game.LayoutDirection)
    IL_0187:  dup
    IL_0188:  ldc.i4.1
    IL_0189:  callvirt   instance void Game.Widget::set_HorizontalAlignment(valuetype Game.WidgetAlignment)
    IL_018e:  stloc.s    V_8
    IL_0190:  ldarg.0
    IL_0191:  ldfld      class Game.StackPanelWidget Game.GameMenuScreen::m_statsPanel
    IL_0196:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_019b:  ldloc.s    V_8
    IL_019d:  callvirt   instance void Game.WidgetsContainer::Add(class Game.Widget)
    IL_01a2:  ldloc.s    V_8
    IL_01a4:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_01a9:  newobj     instance void Game.LabelWidget::.ctor()
    IL_01ae:  dup
    IL_01af:  ldstr      "Game Statistics"
    IL_01b4:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_01b9:  dup
    IL_01ba:  ldloc.s    V_5
    IL_01bc:  callvirt   instance void Game.LabelWidget::set_Font(class [Engine]Engine.Media.BitmapFont)
    IL_01c1:  dup
    IL_01c2:  ldc.i4.1
    IL_01c3:  callvirt   instance void Game.Widget::set_HorizontalAlignment(valuetype Game.WidgetAlignment)
    IL_01c8:  dup
    IL_01c9:  ldc.r4     0.0
    IL_01ce:  ldc.r4     10.
    IL_01d3:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_01d8:  callvirt   instance void Game.Widget::set_Margin(valuetype [Engine]Engine.Vector2)
    IL_01dd:  dup
    IL_01de:  ldloc.s    V_7
    IL_01e0:  callvirt   instance void Game.LabelWidget::set_Color(valuetype [Engine]Engine.Color)
    IL_01e5:  callvirt   instance void Game.WidgetsContainer::Add(class Game.Widget)
    IL_01ea:  ldarg.0
    IL_01eb:  ldloc.s    V_8
    IL_01ed:  ldstr      "Game Mode"
    IL_01f2:  ldloc.1
    IL_01f3:  callvirt   instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
    IL_01f8:  ldflda     valuetype Game.GameMode Game.WorldInfo::GameMode
    IL_01fd:  constrained. Game.GameMode
    IL_0203:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_0208:  ldstr      ""
    IL_020d:  call       instance void Game.GameMenuScreen::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_0212:  ldloc.1
    IL_0213:  callvirt   instance float64 Game.SubsystemGameInfo::get_TotalElapsedGameTime()
    IL_0218:  ldloc.2
    IL_0219:  callvirt   instance float64 Game.SubsystemPlayer::get_LastSpawnTime()
    IL_021e:  sub
    IL_021f:  ldc.r8     1200.
    IL_0228:  div
    IL_0229:  stloc.s    V_9
    IL_022b:  ldloc.1
    IL_022c:  callvirt   instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
    IL_0231:  ldfld      string Game.WorldInfo::Seed
    IL_0236:  stloc.s    V_10
    IL_0238:  ldarg.0
    IL_0239:  ldloc.s    V_8
    IL_023b:  ldstr      "World Seed"
    IL_0240:  ldloc.s    V_10
    IL_0242:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_0247:  brfalse.s  IL_0250

    IL_0249:  ldstr      "(none)"
    IL_024e:  br.s       IL_0252

    IL_0250:  ldloc.s    V_10
    IL_0252:  ldstr      ""
    IL_0257:  call       instance void Game.GameMenuScreen::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_025c:  ldarg.0
    IL_025d:  ldloc.s    V_8
    IL_025f:  ldstr      "Sea Level"
    IL_0264:  ldloc.1
    IL_0265:  callvirt   instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
    IL_026a:  ldfld      int32 Game.WorldInfo::SeaLevelOffset
    IL_026f:  conv.r4
    IL_0270:  call       string Game.WorldOptionsScreen::FormatOffset(float32)
    IL_0275:  ldstr      ""
    IL_027a:  call       instance void Game.GameMenuScreen::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_027f:  ldarg.0
    IL_0280:  ldloc.s    V_8
    IL_0282:  ldstr      "Temperature"
    IL_0287:  ldloc.1
    IL_0288:  callvirt   instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
    IL_028d:  ldfld      float32 Game.WorldInfo::TemperatureOffset
    IL_0292:  call       string Game.WorldOptionsScreen::FormatOffset(float32)
    IL_0297:  ldstr      ""
    IL_029c:  call       instance void Game.GameMenuScreen::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_02a1:  ldarg.0
    IL_02a2:  ldloc.s    V_8
    IL_02a4:  ldstr      "Humidity"
    IL_02a9:  ldloc.1
    IL_02aa:  callvirt   instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
    IL_02af:  ldfld      float32 Game.WorldInfo::HumidityOffset
    IL_02b4:  call       string Game.WorldOptionsScreen::FormatOffset(float32)
    IL_02b9:  ldstr      ""
    IL_02be:  call       instance void Game.GameMenuScreen::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_02c3:  ldarg.0
    IL_02c4:  ldloc.s    V_8
    IL_02c6:  ldstr      "Stayed Alive"
    IL_02cb:  ldloca.s   V_9
    IL_02cd:  ldstr      "N1"
    IL_02d2:  call       instance string [System.Runtime]System.Double::ToString(string)
    IL_02d7:  ldstr      " days"
    IL_02dc:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_02e1:  ldstr      ""
    IL_02e6:  call       instance void Game.GameMenuScreen::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_02eb:  ldloc.2
    IL_02ec:  callvirt   instance int32 Game.SubsystemPlayer::get_SpawnsCount()
    IL_02f1:  ldc.i4.1
    IL_02f2:  sub
    IL_02f3:  ldc.i4.0
    IL_02f4:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_02f9:  stloc.s    V_11
    IL_02fb:  ldarg.0
    IL_02fc:  ldloc.s    V_8
    IL_02fe:  ldstr      "Respawned"
    IL_0303:  ldloca.s   V_11
    IL_0305:  ldstr      "N0"
    IL_030a:  call       instance string [System.Runtime]System.Int32::ToString(string)
    IL_030f:  ldstr      " times"
    IL_0314:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_0319:  ldstr      ""
    IL_031e:  call       instance void Game.GameMenuScreen::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_0323:  ldc.i4.0
    IL_0324:  stloc.s    V_12
    IL_0326:  ldc.i4.0
    IL_0327:  stloc.s    V_13
    IL_0329:  br.s       IL_0342

    IL_032b:  ldloc.s    V_4
    IL_032d:  ldloc.s    V_13
    IL_032f:  callvirt   instance class Game.FurnitureDesign Game.SubsystemFurnitureBlockBehavior::GetDesign(int32)
    IL_0334:  brfalse.s  IL_033c

    IL_0336:  ldloc.s    V_12
    IL_0338:  ldc.i4.1
    IL_0339:  add
    IL_033a:  stloc.s    V_12
    IL_033c:  ldloc.s    V_13
    IL_033e:  ldc.i4.1
    IL_033f:  add
    IL_0340:  stloc.s    V_13
    IL_0342:  ldloc.s    V_13
    IL_0344:  ldc.i4     0x400
    IL_0349:  blt.s      IL_032b

    IL_034b:  ldarg.0
    IL_034c:  ldloc.s    V_8
    IL_034e:  ldstr      "Furniture Designs In Use"
    IL_0353:  ldstr      "{0}/{1}"
    IL_0358:  ldc.i4.2
    IL_0359:  newarr     [System.Runtime]System.Object
    IL_035e:  dup
    IL_035f:  ldc.i4.0
    IL_0360:  ldloc.s    V_12
    IL_0362:  box        [System.Runtime]System.Int32
    IL_0367:  stelem.ref
    IL_0368:  dup
    IL_0369:  ldc.i4.1
    IL_036a:  ldc.i4     0x400
    IL_036f:  box        [System.Runtime]System.Int32
    IL_0374:  stelem.ref
    IL_0375:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_037a:  ldstr      ""
    IL_037f:  call       instance void Game.GameMenuScreen::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_0384:  ldloc.3
    IL_0385:  brfalse    IL_042c

    IL_038a:  ldloc.3
    IL_038b:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0390:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0395:  stloc.s    V_14
    IL_0397:  ldloc.1
    IL_0398:  callvirt   instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
    IL_039d:  ldfld      valuetype Game.GameMode Game.WorldInfo::GameMode
    IL_03a2:  brtrue.s   IL_03f5

    IL_03a4:  ldarg.0
    IL_03a5:  ldloc.s    V_8
    IL_03a7:  ldstr      "Location"
    IL_03ac:  ldstr      "{0:0}, {1:0} at altitude {2:0}"
    IL_03b1:  ldc.i4.3
    IL_03b2:  newarr     [System.Runtime]System.Object
    IL_03b7:  dup
    IL_03b8:  ldc.i4.0
    IL_03b9:  ldloc.s    V_14
    IL_03bb:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_03c0:  box        [System.Runtime]System.Single
    IL_03c5:  stelem.ref
    IL_03c6:  dup
    IL_03c7:  ldc.i4.1
    IL_03c8:  ldloc.s    V_14
    IL_03ca:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_03cf:  box        [System.Runtime]System.Single
    IL_03d4:  stelem.ref
    IL_03d5:  dup
    IL_03d6:  ldc.i4.2
    IL_03d7:  ldloc.s    V_14
    IL_03d9:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_03de:  box        [System.Runtime]System.Single
    IL_03e3:  stelem.ref
    IL_03e4:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_03e9:  ldstr      ""
    IL_03ee:  call       instance void Game.GameMenuScreen::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_03f3:  br.s       IL_042c

    IL_03f5:  ldarg.0
    IL_03f6:  ldloc.s    V_8
    IL_03f8:  ldstr      "Location"
    IL_03fd:  ldstr      "(unavailable in "
    IL_0402:  ldloc.1
    IL_0403:  callvirt   instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
    IL_0408:  ldflda     valuetype Game.GameMode Game.WorldInfo::GameMode
    IL_040d:  constrained. Game.GameMode
    IL_0413:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_0418:  ldstr      ")"
    IL_041d:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string,
                                                                      string)
    IL_0422:  ldstr      ""
    IL_0427:  call       instance void Game.GameMenuScreen::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_042c:  ldloc.3
    IL_042d:  brfalse    IL_0cac

    IL_0432:  ldloc.3
    IL_0433:  callvirt   instance class Game.PlayerStats Game.ComponentCreature::get_PlayerStats()
    IL_0438:  brfalse    IL_0cac

    IL_043d:  ldloc.3
    IL_043e:  callvirt   instance class Game.PlayerStats Game.ComponentCreature::get_PlayerStats()
    IL_0443:  stloc.s    V_15
    IL_0445:  ldloc.1
    IL_0446:  callvirt   instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
    IL_044b:  ldfld      string Game.WorldInfo::OriginalSerializationVersion
    IL_0450:  ldstr      "1.29"
    IL_0455:  call       int32 [System.Runtime]System.String::CompareOrdinal(string,
                                                                             string)
    IL_045a:  ldc.i4.0
    IL_045b:  ble        IL_0c56

    IL_0460:  ldarg.0
    IL_0461:  ldloc.3
    IL_0462:  callvirt   instance class Game.PlayerStats Game.ComponentCreature::get_PlayerStats()
    IL_0467:  ldfld      bool Game.PlayerStats::Invalid
    IL_046c:  stfld      bool Game.GameMenuScreen::m_invalid
    IL_0471:  ldloc.s    V_8
    IL_0473:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0478:  newobj     instance void Game.LabelWidget::.ctor()
    IL_047d:  dup
    IL_047e:  ldstr      "Movement Statistics"
    IL_0483:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0488:  dup
    IL_0489:  ldloc.s    V_5
    IL_048b:  callvirt   instance void Game.LabelWidget::set_Font(class [Engine]Engine.Media.BitmapFont)
    IL_0490:  dup
    IL_0491:  ldc.i4.1
    IL_0492:  callvirt   instance void Game.Widget::set_HorizontalAlignment(valuetype Game.WidgetAlignment)
    IL_0497:  dup
    IL_0498:  ldc.r4     0.0
    IL_049d:  ldc.r4     10.
    IL_04a2:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_04a7:  callvirt   instance void Game.Widget::set_Margin(valuetype [Engine]Engine.Vector2)
    IL_04ac:  dup
    IL_04ad:  ldloc.s    V_7
    IL_04af:  callvirt   instance void Game.LabelWidget::set_Color(valuetype [Engine]Engine.Color)
    IL_04b4:  callvirt   instance void Game.WidgetsContainer::Add(class Game.Widget)
    IL_04b9:  ldarg.0
    IL_04ba:  ldloc.s    V_8
    IL_04bc:  ldstr      "Total Distance"
    IL_04c1:  ldloc.s    V_15
    IL_04c3:  ldfld      float64 Game.PlayerStats::DistanceTravelled
    IL_04c8:  call       string Game.GameMenuScreen::FormatDistance(float64)
    IL_04cd:  ldstr      ""
    IL_04d2:  call       instance void Game.GameMenuScreen::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_04d7:  ldarg.0
    IL_04d8:  ldloc.s    V_8
    IL_04da:  ldstr      "Distance Walked"
    IL_04df:  ldloc.s    V_15
    IL_04e1:  ldfld      float64 Game.PlayerStats::DistanceWalked
    IL_04e6:  call       string Game.GameMenuScreen::FormatDistance(float64)
    IL_04eb:  ldstr      "({0:0.0}%)"
    IL_04f0:  ldc.i4.1
    IL_04f1:  newarr     [System.Runtime]System.Object
    IL_04f6:  dup
    IL_04f7:  ldc.i4.0
    IL_04f8:  ldloc.s    V_15
    IL_04fa:  ldfld      float64 Game.PlayerStats::DistanceTravelled
    IL_04ff:  ldc.r8     0.0
    IL_0508:  bgt.s      IL_0515

    IL_050a:  ldc.r8     0.0
    IL_0513:  br.s       IL_052e

    IL_0515:  ldloc.s    V_15
    IL_0517:  ldfld      float64 Game.PlayerStats::DistanceWalked
    IL_051c:  ldloc.s    V_15
    IL_051e:  ldfld      float64 Game.PlayerStats::DistanceTravelled
    IL_0523:  div
    IL_0524:  ldc.r8     100.
    IL_052d:  mul
    IL_052e:  box        [System.Runtime]System.Double
    IL_0533:  stelem.ref
    IL_0534:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0539:  call       instance void Game.GameMenuScreen::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_053e:  ldarg.0
    IL_053f:  ldloc.s    V_8
    IL_0541:  ldstr      "Distance Fallen"
    IL_0546:  ldloc.s    V_15
    IL_0548:  ldfld      float64 Game.PlayerStats::DistanceFallen
    IL_054d:  call       string Game.GameMenuScreen::FormatDistance(float64)
    IL_0552:  ldstr      "({0:0.0}%)"
    IL_0557:  ldc.i4.1
    IL_0558:  newarr     [System.Runtime]System.Object
    IL_055d:  dup
    IL_055e:  ldc.i4.0
    IL_055f:  ldloc.s    V_15
    IL_0561:  ldfld      float64 Game.PlayerStats::DistanceTravelled
    IL_0566:  ldc.r8     0.0
    IL_056f:  bgt.s      IL_057c

    IL_0571:  ldc.r8     0.0
    IL_057a:  br.s       IL_0595

    IL_057c:  ldloc.s    V_15
    IL_057e:  ldfld      float64 Game.PlayerStats::DistanceFallen
    IL_0583:  ldloc.s    V_15
    IL_0585:  ldfld      float64 Game.PlayerStats::DistanceTravelled
    IL_058a:  div
    IL_058b:  ldc.r8     100.
    IL_0594:  mul
    IL_0595:  box        [System.Runtime]System.Double
    IL_059a:  stelem.ref
    IL_059b:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_05a0:  call       instance void Game.GameMenuScreen::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_05a5:  ldarg.0
    IL_05a6:  ldloc.s    V_8
    IL_05a8:  ldstr      "Distance Climbed"
    IL_05ad:  ldloc.s    V_15
    IL_05af:  ldfld      float64 Game.PlayerStats::DistanceClimbed
    IL_05b4:  call       string Game.GameMenuScreen::FormatDistance(float64)
    IL_05b9:  ldstr      "({0:0.0}%)"
    IL_05be:  ldc.i4.1
    IL_05bf:  newarr     [System.Runtime]System.Object
    IL_05c4:  dup
    IL_05c5:  ldc.i4.0
    IL_05c6:  ldloc.s    V_15
    IL_05c8:  ldfld      float64 Game.PlayerStats::DistanceTravelled
    IL_05cd:  ldc.r8     0.0
    IL_05d6:  bgt.s      IL_05e3

    IL_05d8:  ldc.r8     0.0
    IL_05e1:  br.s       IL_05fc

    IL_05e3:  ldloc.s    V_15
    IL_05e5:  ldfld      float64 Game.PlayerStats::DistanceClimbed
    IL_05ea:  ldloc.s    V_15
    IL_05ec:  ldfld      float64 Game.PlayerStats::DistanceTravelled
    IL_05f1:  div
    IL_05f2:  ldc.r8     100.
    IL_05fb:  mul
    IL_05fc:  box        [System.Runtime]System.Double
    IL_0601:  stelem.ref
    IL_0602:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0607:  call       instance void Game.GameMenuScreen::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_060c:  ldarg.0
    IL_060d:  ldloc.s    V_8
    IL_060f:  ldstr      "Distance Flown"
    IL_0614:  ldloc.s    V_15
    IL_0616:  ldfld      float64 Game.PlayerStats::DistanceFlown
    IL_061b:  call       string Game.GameMenuScreen::FormatDistance(float64)
    IL_0620:  ldstr      "({0:0.0}%)"
    IL_0625:  ldc.i4.1
    IL_0626:  newarr     [System.Runtime]System.Object
    IL_062b:  dup
    IL_062c:  ldc.i4.0
    IL_062d:  ldloc.s    V_15
    IL_062f:  ldfld      float64 Game.PlayerStats::DistanceTravelled
    IL_0634:  ldc.r8     0.0
    IL_063d:  bgt.s      IL_064a

    IL_063f:  ldc.r8     0.0
    IL_0648:  br.s       IL_0663

    IL_064a:  ldloc.s    V_15
    IL_064c:  ldfld      float64 Game.PlayerStats::DistanceFlown
    IL_0651:  ldloc.s    V_15
    IL_0653:  ldfld      float64 Game.PlayerStats::DistanceTravelled
    IL_0658:  div
    IL_0659:  ldc.r8     100.
    IL_0662:  mul
    IL_0663:  box        [System.Runtime]System.Double
    IL_0668:  stelem.ref
    IL_0669:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_066e:  call       instance void Game.GameMenuScreen::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_0673:  ldarg.0
    IL_0674:  ldloc.s    V_8
    IL_0676:  ldstr      "Distance Swam"
    IL_067b:  ldloc.s    V_15
    IL_067d:  ldfld      float64 Game.PlayerStats::DistanceSwam
    IL_0682:  call       string Game.GameMenuScreen::FormatDistance(float64)
    IL_0687:  ldstr      "({0:0.0}%)"
    IL_068c:  ldc.i4.1
    IL_068d:  newarr     [System.Runtime]System.Object
    IL_0692:  dup
    IL_0693:  ldc.i4.0
    IL_0694:  ldloc.s    V_15
    IL_0696:  ldfld      float64 Game.PlayerStats::DistanceTravelled
    IL_069b:  ldc.r8     0.0
    IL_06a4:  bgt.s      IL_06b1

    IL_06a6:  ldc.r8     0.0
    IL_06af:  br.s       IL_06ca

    IL_06b1:  ldloc.s    V_15
    IL_06b3:  ldfld      float64 Game.PlayerStats::DistanceSwam
    IL_06b8:  ldloc.s    V_15
    IL_06ba:  ldfld      float64 Game.PlayerStats::DistanceTravelled
    IL_06bf:  div
    IL_06c0:  ldc.r8     100.
    IL_06c9:  mul
    IL_06ca:  box        [System.Runtime]System.Double
    IL_06cf:  stelem.ref
    IL_06d0:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_06d5:  call       instance void Game.GameMenuScreen::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_06da:  ldarg.0
    IL_06db:  ldloc.s    V_8
    IL_06dd:  ldstr      "Distance Ridden"
    IL_06e2:  ldloc.s    V_15
    IL_06e4:  ldfld      float64 Game.PlayerStats::DistanceRidden
    IL_06e9:  call       string Game.GameMenuScreen::FormatDistance(float64)
    IL_06ee:  ldstr      "({0:0.0}%)"
    IL_06f3:  ldc.i4.1
    IL_06f4:  newarr     [System.Runtime]System.Object
    IL_06f9:  dup
    IL_06fa:  ldc.i4.0
    IL_06fb:  ldloc.s    V_15
    IL_06fd:  ldfld      float64 Game.PlayerStats::DistanceTravelled
    IL_0702:  ldc.r8     0.0
    IL_070b:  bgt.s      IL_0718

    IL_070d:  ldc.r8     0.0
    IL_0716:  br.s       IL_0731

    IL_0718:  ldloc.s    V_15
    IL_071a:  ldfld      float64 Game.PlayerStats::DistanceRidden
    IL_071f:  ldloc.s    V_15
    IL_0721:  ldfld      float64 Game.PlayerStats::DistanceTravelled
    IL_0726:  div
    IL_0727:  ldc.r8     100.
    IL_0730:  mul
    IL_0731:  box        [System.Runtime]System.Double
    IL_0736:  stelem.ref
    IL_0737:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_073c:  call       instance void Game.GameMenuScreen::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_0741:  ldarg.0
    IL_0742:  ldloc.s    V_8
    IL_0744:  ldstr      "Lowest Altitude"
    IL_0749:  ldloc.s    V_15
    IL_074b:  ldfld      float64 Game.PlayerStats::LowestAltitude
    IL_0750:  call       string Game.GameMenuScreen::FormatDistance(float64)
    IL_0755:  ldstr      ""
    IL_075a:  call       instance void Game.GameMenuScreen::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_075f:  ldarg.0
    IL_0760:  ldloc.s    V_8
    IL_0762:  ldstr      "Highest Altitude"
    IL_0767:  ldloc.s    V_15
    IL_0769:  ldfld      float64 Game.PlayerStats::HighestAltitude
    IL_076e:  call       string Game.GameMenuScreen::FormatDistance(float64)
    IL_0773:  ldstr      ""
    IL_0778:  call       instance void Game.GameMenuScreen::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_077d:  ldarg.0
    IL_077e:  ldloc.s    V_8
    IL_0780:  ldstr      "Deepest Dive"
    IL_0785:  ldloc.s    V_15
    IL_0787:  ldflda     float64 Game.PlayerStats::DeepestDive
    IL_078c:  ldstr      "N1"
    IL_0791:  call       instance string [System.Runtime]System.Double::ToString(string)
    IL_0796:  ldstr      "m"
    IL_079b:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_07a0:  ldstr      ""
    IL_07a5:  call       instance void Game.GameMenuScreen::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_07aa:  ldarg.0
    IL_07ab:  ldloc.s    V_8
    IL_07ad:  ldstr      "Jumps"
    IL_07b2:  ldloc.s    V_15
    IL_07b4:  ldflda     int64 Game.PlayerStats::Jumps
    IL_07b9:  ldstr      "N0"
    IL_07be:  call       instance string [System.Runtime]System.Int64::ToString(string)
    IL_07c3:  ldstr      ""
    IL_07c8:  call       instance void Game.GameMenuScreen::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_07cd:  ldloc.s    V_8
    IL_07cf:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_07d4:  newobj     instance void Game.LabelWidget::.ctor()
    IL_07d9:  dup
    IL_07da:  ldstr      "Work Statistics"
    IL_07df:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_07e4:  dup
    IL_07e5:  ldloc.s    V_5
    IL_07e7:  callvirt   instance void Game.LabelWidget::set_Font(class [Engine]Engine.Media.BitmapFont)
    IL_07ec:  dup
    IL_07ed:  ldc.i4.1
    IL_07ee:  callvirt   instance void Game.Widget::set_HorizontalAlignment(valuetype Game.WidgetAlignment)
    IL_07f3:  dup
    IL_07f4:  ldc.r4     0.0
    IL_07f9:  ldc.r4     10.
    IL_07fe:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0803:  callvirt   instance void Game.Widget::set_Margin(valuetype [Engine]Engine.Vector2)
    IL_0808:  dup
    IL_0809:  ldloc.s    V_7
    IL_080b:  callvirt   instance void Game.LabelWidget::set_Color(valuetype [Engine]Engine.Color)
    IL_0810:  callvirt   instance void Game.WidgetsContainer::Add(class Game.Widget)
    IL_0815:  ldarg.0
    IL_0816:  ldloc.s    V_8
    IL_0818:  ldstr      "Blocks Dug"
    IL_081d:  ldloc.s    V_15
    IL_081f:  ldflda     int64 Game.PlayerStats::BlocksDug
    IL_0824:  ldstr      "N0"
    IL_0829:  call       instance string [System.Runtime]System.Int64::ToString(string)
    IL_082e:  ldstr      ""
    IL_0833:  call       instance void Game.GameMenuScreen::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_0838:  ldarg.0
    IL_0839:  ldloc.s    V_8
    IL_083b:  ldstr      "Blocks Placed"
    IL_0840:  ldloc.s    V_15
    IL_0842:  ldflda     int64 Game.PlayerStats::BlocksPlaced
    IL_0847:  ldstr      "N0"
    IL_084c:  call       instance string [System.Runtime]System.Int64::ToString(string)
    IL_0851:  ldstr      ""
    IL_0856:  call       instance void Game.GameMenuScreen::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_085b:  ldarg.0
    IL_085c:  ldloc.s    V_8
    IL_085e:  ldstr      "Blocks Interacted With"
    IL_0863:  ldloc.s    V_15
    IL_0865:  ldflda     int64 Game.PlayerStats::BlocksInteracted
    IL_086a:  ldstr      "N0"
    IL_086f:  call       instance string [System.Runtime]System.Int64::ToString(string)
    IL_0874:  ldstr      ""
    IL_0879:  call       instance void Game.GameMenuScreen::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_087e:  ldarg.0
    IL_087f:  ldloc.s    V_8
    IL_0881:  ldstr      "Items Crafted/Smelted"
    IL_0886:  ldloc.s    V_15
    IL_0888:  ldflda     int64 Game.PlayerStats::ItemsCrafted
    IL_088d:  ldstr      "N0"
    IL_0892:  call       instance string [System.Runtime]System.Int64::ToString(string)
    IL_0897:  ldstr      ""
    IL_089c:  call       instance void Game.GameMenuScreen::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_08a1:  ldarg.0
    IL_08a2:  ldloc.s    V_8
    IL_08a4:  ldstr      "Furniture Made"
    IL_08a9:  ldloc.s    V_15
    IL_08ab:  ldflda     int64 Game.PlayerStats::FurnitureItemsMade
    IL_08b0:  ldstr      "N0"
    IL_08b5:  call       instance string [System.Runtime]System.Int64::ToString(string)
    IL_08ba:  ldstr      ""
    IL_08bf:  call       instance void Game.GameMenuScreen::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_08c4:  ldloc.s    V_8
    IL_08c6:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_08cb:  newobj     instance void Game.LabelWidget::.ctor()
    IL_08d0:  dup
    IL_08d1:  ldstr      "Combat Statistics"
    IL_08d6:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_08db:  dup
    IL_08dc:  ldloc.s    V_5
    IL_08de:  callvirt   instance void Game.LabelWidget::set_Font(class [Engine]Engine.Media.BitmapFont)
    IL_08e3:  dup
    IL_08e4:  ldc.i4.1
    IL_08e5:  callvirt   instance void Game.Widget::set_HorizontalAlignment(valuetype Game.WidgetAlignment)
    IL_08ea:  dup
    IL_08eb:  ldc.r4     0.0
    IL_08f0:  ldc.r4     10.
    IL_08f5:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_08fa:  callvirt   instance void Game.Widget::set_Margin(valuetype [Engine]Engine.Vector2)
    IL_08ff:  dup
    IL_0900:  ldloc.s    V_7
    IL_0902:  callvirt   instance void Game.LabelWidget::set_Color(valuetype [Engine]Engine.Color)
    IL_0907:  callvirt   instance void Game.WidgetsContainer::Add(class Game.Widget)
    IL_090c:  ldarg.0
    IL_090d:  ldloc.s    V_8
    IL_090f:  ldstr      "Melee Attacks"
    IL_0914:  ldloc.s    V_15
    IL_0916:  ldflda     int64 Game.PlayerStats::MeleeAttacks
    IL_091b:  ldstr      "N0"
    IL_0920:  call       instance string [System.Runtime]System.Int64::ToString(string)
    IL_0925:  ldstr      ""
    IL_092a:  call       instance void Game.GameMenuScreen::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_092f:  ldarg.0
    IL_0930:  ldloc.s    V_8
    IL_0932:  ldstr      "Melee Hits"
    IL_0937:  ldloc.s    V_15
    IL_0939:  ldflda     int64 Game.PlayerStats::MeleeHits
    IL_093e:  ldstr      "N0"
    IL_0943:  call       instance string [System.Runtime]System.Int64::ToString(string)
    IL_0948:  ldstr      "({0:0}%)"
    IL_094d:  ldc.i4.1
    IL_094e:  newarr     [System.Runtime]System.Object
    IL_0953:  dup
    IL_0954:  ldc.i4.0
    IL_0955:  ldloc.s    V_15
    IL_0957:  ldfld      int64 Game.PlayerStats::MeleeHits
    IL_095c:  brfalse.s  IL_097b

    IL_095e:  ldloc.s    V_15
    IL_0960:  ldfld      int64 Game.PlayerStats::MeleeHits
    IL_0965:  conv.r8
    IL_0966:  ldloc.s    V_15
    IL_0968:  ldfld      int64 Game.PlayerStats::MeleeAttacks
    IL_096d:  conv.r8
    IL_096e:  div
    IL_096f:  ldc.r8     100.
    IL_0978:  mul
    IL_0979:  br.s       IL_0984

    IL_097b:  ldc.r8     0.0
    IL_0984:  box        [System.Runtime]System.Double
    IL_0989:  stelem.ref
    IL_098a:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_098f:  call       instance void Game.GameMenuScreen::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_0994:  ldarg.0
    IL_0995:  ldloc.s    V_8
    IL_0997:  ldstr      "Ranged Attacks"
    IL_099c:  ldloc.s    V_15
    IL_099e:  ldflda     int64 Game.PlayerStats::RangedAttacks
    IL_09a3:  ldstr      "N0"
    IL_09a8:  call       instance string [System.Runtime]System.Int64::ToString(string)
    IL_09ad:  ldstr      ""
    IL_09b2:  call       instance void Game.GameMenuScreen::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_09b7:  ldarg.0
    IL_09b8:  ldloc.s    V_8
    IL_09ba:  ldstr      "Ranged Hits"
    IL_09bf:  ldloc.s    V_15
    IL_09c1:  ldflda     int64 Game.PlayerStats::RangedHits
    IL_09c6:  ldstr      "N0"
    IL_09cb:  call       instance string [System.Runtime]System.Int64::ToString(string)
    IL_09d0:  ldstr      "({0:0}%)"
    IL_09d5:  ldc.i4.1
    IL_09d6:  newarr     [System.Runtime]System.Object
    IL_09db:  dup
    IL_09dc:  ldc.i4.0
    IL_09dd:  ldloc.s    V_15
    IL_09df:  ldfld      int64 Game.PlayerStats::RangedHits
    IL_09e4:  brfalse.s  IL_0a03

    IL_09e6:  ldloc.s    V_15
    IL_09e8:  ldfld      int64 Game.PlayerStats::RangedHits
    IL_09ed:  conv.r8
    IL_09ee:  ldloc.s    V_15
    IL_09f0:  ldfld      int64 Game.PlayerStats::RangedAttacks
    IL_09f5:  conv.r8
    IL_09f6:  div
    IL_09f7:  ldc.r8     100.
    IL_0a00:  mul
    IL_0a01:  br.s       IL_0a0c

    IL_0a03:  ldc.r8     0.0
    IL_0a0c:  box        [System.Runtime]System.Double
    IL_0a11:  stelem.ref
    IL_0a12:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0a17:  call       instance void Game.GameMenuScreen::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_0a1c:  ldarg.0
    IL_0a1d:  ldloc.s    V_8
    IL_0a1f:  ldstr      "Hits Received"
    IL_0a24:  ldloc.s    V_15
    IL_0a26:  ldflda     int64 Game.PlayerStats::HitsReceived
    IL_0a2b:  ldstr      "N0"
    IL_0a30:  call       instance string [System.Runtime]System.Int64::ToString(string)
    IL_0a35:  ldstr      ""
    IL_0a3a:  call       instance void Game.GameMenuScreen::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_0a3f:  ldloc.s    V_8
    IL_0a41:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0a46:  newobj     instance void Game.LabelWidget::.ctor()
    IL_0a4b:  dup
    IL_0a4c:  ldstr      "Body Statistics"
    IL_0a51:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0a56:  dup
    IL_0a57:  ldloc.s    V_5
    IL_0a59:  callvirt   instance void Game.LabelWidget::set_Font(class [Engine]Engine.Media.BitmapFont)
    IL_0a5e:  dup
    IL_0a5f:  ldc.i4.1
    IL_0a60:  callvirt   instance void Game.Widget::set_HorizontalAlignment(valuetype Game.WidgetAlignment)
    IL_0a65:  dup
    IL_0a66:  ldc.r4     0.0
    IL_0a6b:  ldc.r4     10.
    IL_0a70:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0a75:  callvirt   instance void Game.Widget::set_Margin(valuetype [Engine]Engine.Vector2)
    IL_0a7a:  dup
    IL_0a7b:  ldloc.s    V_7
    IL_0a7d:  callvirt   instance void Game.LabelWidget::set_Color(valuetype [Engine]Engine.Color)
    IL_0a82:  callvirt   instance void Game.WidgetsContainer::Add(class Game.Widget)
    IL_0a87:  ldarg.0
    IL_0a88:  ldloc.s    V_8
    IL_0a8a:  ldstr      "Total Health Lost"
    IL_0a8f:  ldloc.s    V_15
    IL_0a91:  ldfld      float64 Game.PlayerStats::TotalHealthLost
    IL_0a96:  ldc.r8     100.
    IL_0a9f:  mul
    IL_0aa0:  stloc.s    V_16
    IL_0aa2:  ldloca.s   V_16
    IL_0aa4:  ldstr      "N0"
    IL_0aa9:  call       instance string [System.Runtime]System.Double::ToString(string)
    IL_0aae:  ldstr      "%"
    IL_0ab3:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_0ab8:  ldstr      ""
    IL_0abd:  call       instance void Game.GameMenuScreen::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_0ac2:  ldarg.0
    IL_0ac3:  ldloc.s    V_8
    IL_0ac5:  ldstr      "Food Eaten"
    IL_0aca:  ldloc.s    V_15
    IL_0acc:  ldflda     int64 Game.PlayerStats::FoodItemsEaten
    IL_0ad1:  ldstr      "N0"
    IL_0ad6:  call       instance string [System.Runtime]System.Int64::ToString(string)
    IL_0adb:  ldstr      " items"
    IL_0ae0:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_0ae5:  ldstr      ""
    IL_0aea:  call       instance void Game.GameMenuScreen::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_0aef:  ldarg.0
    IL_0af0:  ldloc.s    V_8
    IL_0af2:  ldstr      "Went To Sleep"
    IL_0af7:  ldloc.s    V_15
    IL_0af9:  ldflda     int64 Game.PlayerStats::TimesWentToSleep
    IL_0afe:  ldstr      "N0"
    IL_0b03:  call       instance string [System.Runtime]System.Int64::ToString(string)
    IL_0b08:  ldstr      " times"
    IL_0b0d:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_0b12:  ldstr      ""
    IL_0b17:  call       instance void Game.GameMenuScreen::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_0b1c:  ldarg.0
    IL_0b1d:  ldloc.s    V_8
    IL_0b1f:  ldstr      "Total Time Slept"
    IL_0b24:  ldloc.s    V_15
    IL_0b26:  ldfld      float64 Game.PlayerStats::TimeSlept
    IL_0b2b:  ldc.r8     1200.
    IL_0b34:  div
    IL_0b35:  stloc.s    V_16
    IL_0b37:  ldloca.s   V_16
    IL_0b39:  ldstr      "N1"
    IL_0b3e:  call       instance string [System.Runtime]System.Double::ToString(string)
    IL_0b43:  ldstr      " days"
    IL_0b48:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_0b4d:  ldstr      ""
    IL_0b52:  call       instance void Game.GameMenuScreen::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_0b57:  ldloc.s    V_8
    IL_0b59:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0b5e:  newobj     instance void Game.LabelWidget::.ctor()
    IL_0b63:  dup
    IL_0b64:  ldstr      "Other Statistics"
    IL_0b69:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0b6e:  dup
    IL_0b6f:  ldloc.s    V_5
    IL_0b71:  callvirt   instance void Game.LabelWidget::set_Font(class [Engine]Engine.Media.BitmapFont)
    IL_0b76:  dup
    IL_0b77:  ldc.i4.1
    IL_0b78:  callvirt   instance void Game.Widget::set_HorizontalAlignment(valuetype Game.WidgetAlignment)
    IL_0b7d:  dup
    IL_0b7e:  ldc.r4     0.0
    IL_0b83:  ldc.r4     10.
    IL_0b88:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0b8d:  callvirt   instance void Game.Widget::set_Margin(valuetype [Engine]Engine.Vector2)
    IL_0b92:  dup
    IL_0b93:  ldloc.s    V_7
    IL_0b95:  callvirt   instance void Game.LabelWidget::set_Color(valuetype [Engine]Engine.Color)
    IL_0b9a:  callvirt   instance void Game.WidgetsContainer::Add(class Game.Widget)
    IL_0b9f:  ldarg.0
    IL_0ba0:  ldloc.s    V_8
    IL_0ba2:  ldstr      "Struck By Lightning"
    IL_0ba7:  ldloc.s    V_15
    IL_0ba9:  ldflda     int64 Game.PlayerStats::StruckByLightning
    IL_0bae:  ldstr      "N0"
    IL_0bb3:  call       instance string [System.Runtime]System.Int64::ToString(string)
    IL_0bb8:  ldstr      " times"
    IL_0bbd:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_0bc2:  ldstr      ""
    IL_0bc7:  call       instance void Game.GameMenuScreen::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_0bcc:  ldarg.0
    IL_0bcd:  ldloc.s    V_8
    IL_0bcf:  ldstr      "Easiest Game Mode Used"
    IL_0bd4:  ldloc.s    V_15
    IL_0bd6:  ldfld      valuetype Game.GameMode Game.PlayerStats::EasiestModeUsed
    IL_0bdb:  stloc.s    V_17
    IL_0bdd:  ldloca.s   V_17
    IL_0bdf:  constrained. Game.GameMode
    IL_0be5:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_0bea:  ldstr      ""
    IL_0bef:  call       instance void Game.GameMenuScreen::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_0bf4:  ldarg.0
    IL_0bf5:  ldfld      bool Game.GameMenuScreen::m_invalid
    IL_0bfa:  brfalse    IL_0cac

    IL_0bff:  ldloc.s    V_8
    IL_0c01:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0c06:  newobj     instance void Game.LabelWidget::.ctor()
    IL_0c0b:  dup
    IL_0c0c:  ldstr      "* stats not validated"
    IL_0c11:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0c16:  dup
    IL_0c17:  ldc.i4.1
    IL_0c18:  callvirt   instance void Game.LabelWidget::set_WordWrap(bool)
    IL_0c1d:  dup
    IL_0c1e:  ldloc.s    V_6
    IL_0c20:  callvirt   instance void Game.LabelWidget::set_Font(class [Engine]Engine.Media.BitmapFont)
    IL_0c25:  dup
    IL_0c26:  ldc.i4.1
    IL_0c27:  callvirt   instance void Game.Widget::set_HorizontalAlignment(valuetype Game.WidgetAlignment)
    IL_0c2c:  dup
    IL_0c2d:  ldc.i4.1
    IL_0c2e:  callvirt   instance void Game.LabelWidget::set_TextAnchor(valuetype [Engine]Engine.Graphics.TextAnchor)
    IL_0c33:  dup
    IL_0c34:  ldc.r4     20.
    IL_0c39:  ldc.r4     10.
    IL_0c3e:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0c43:  callvirt   instance void Game.Widget::set_Margin(valuetype [Engine]Engine.Vector2)
    IL_0c48:  dup
    IL_0c49:  ldloc.s    V_7
    IL_0c4b:  callvirt   instance void Game.LabelWidget::set_Color(valuetype [Engine]Engine.Color)
    IL_0c50:  callvirt   instance void Game.WidgetsContainer::Add(class Game.Widget)
    IL_0c55:  ret

    IL_0c56:  ldloc.s    V_8
    IL_0c58:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0c5d:  newobj     instance void Game.LabelWidget::.ctor()
    IL_0c62:  dup
    IL_0c63:  ldstr      "No player statistics available because world was s"
    + "tarted in an old version of the game."
    IL_0c68:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0c6d:  dup
    IL_0c6e:  ldc.i4.1
    IL_0c6f:  callvirt   instance void Game.LabelWidget::set_WordWrap(bool)
    IL_0c74:  dup
    IL_0c75:  ldloc.s    V_6
    IL_0c77:  callvirt   instance void Game.LabelWidget::set_Font(class [Engine]Engine.Media.BitmapFont)
    IL_0c7c:  dup
    IL_0c7d:  ldc.i4.1
    IL_0c7e:  callvirt   instance void Game.Widget::set_HorizontalAlignment(valuetype Game.WidgetAlignment)
    IL_0c83:  dup
    IL_0c84:  ldc.i4.1
    IL_0c85:  callvirt   instance void Game.LabelWidget::set_TextAnchor(valuetype [Engine]Engine.Graphics.TextAnchor)
    IL_0c8a:  dup
    IL_0c8b:  ldc.r4     20.
    IL_0c90:  ldc.r4     10.
    IL_0c95:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0c9a:  callvirt   instance void Game.Widget::set_Margin(valuetype [Engine]Engine.Vector2)
    IL_0c9f:  dup
    IL_0ca0:  ldloc.s    V_7
    IL_0ca2:  callvirt   instance void Game.LabelWidget::set_Color(valuetype [Engine]Engine.Color)
    IL_0ca7:  callvirt   instance void Game.WidgetsContainer::Add(class Game.Widget)
    IL_0cac:  ret
  } // end of method GameMenuScreen::Enter

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       579 (0x243)
    .maxstack  6
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0006:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_000b:  ldstr      "RestartAdventure"
    IL_0010:  ldc.i4.1
    IL_0011:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_0016:  ldarg.0
    IL_0017:  ldfld      bool Game.GameMenuScreen::m_adventureRestartExists
    IL_001c:  brfalse.s  IL_002d

    IL_001e:  call       class Game.WorldInfo Game.GameManager::get_WorldInfo()
    IL_0023:  ldfld      valuetype Game.GameMode Game.WorldInfo::GameMode
    IL_0028:  ldc.i4.4
    IL_0029:  ceq
    IL_002b:  br.s       IL_002e

    IL_002d:  ldc.i4.0
    IL_002e:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_0033:  ldarg.0
    IL_0034:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0039:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_003e:  ldstr      "Rate"
    IL_0043:  ldc.i4.1
    IL_0044:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_0049:  ldarg.0
    IL_004a:  call       instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.ActiveExternalContentInfo> Game.GameMenuScreen::GetRateableItems()
    IL_004f:  call       !!0 [System.Linq]System.Linq.Enumerable::FirstOrDefault<class Game.ActiveExternalContentInfo>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_0054:  ldnull
    IL_0055:  cgt.un
    IL_0057:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_005c:  ldarg.0
    IL_005d:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0062:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0067:  ldstr      "Rate"
    IL_006c:  ldc.i4.1
    IL_006d:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_0072:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0077:  brfalse.s  IL_00d8

    IL_0079:  call       class Game.UserInfo Game.UserManager::get_ActiveUser()
    IL_007e:  brfalse.s  IL_00d8

    IL_0080:  ldstr      "Select Content To Rate"
    IL_0085:  ldarg.0
    IL_0086:  call       instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.ActiveExternalContentInfo> Game.GameMenuScreen::GetRateableItems()
    IL_008b:  ldc.r4     60.
    IL_0090:  ldsfld     class [System.Runtime]System.Func`2<object,string> Game.GameMenuScreen/'<>c'::'<>9__7_0'
    IL_0095:  dup
    IL_0096:  brtrue.s   IL_00af

    IL_0098:  pop
    IL_0099:  ldsfld     class Game.GameMenuScreen/'<>c' Game.GameMenuScreen/'<>c'::'<>9'
    IL_009e:  ldftn      instance string Game.GameMenuScreen/'<>c'::'<Update>b__7_0'(object)
    IL_00a4:  newobj     instance void class [System.Runtime]System.Func`2<object,string>::.ctor(object,
                                                                                                 native int)
    IL_00a9:  dup
    IL_00aa:  stsfld     class [System.Runtime]System.Func`2<object,string> Game.GameMenuScreen/'<>c'::'<>9__7_0'
    IL_00af:  ldsfld     class [System.Runtime]System.Action`1<object> Game.GameMenuScreen/'<>c'::'<>9__7_1'
    IL_00b4:  dup
    IL_00b5:  brtrue.s   IL_00ce

    IL_00b7:  pop
    IL_00b8:  ldsfld     class Game.GameMenuScreen/'<>c' Game.GameMenuScreen/'<>c'::'<>9'
    IL_00bd:  ldftn      instance void Game.GameMenuScreen/'<>c'::'<Update>b__7_1'(object)
    IL_00c3:  newobj     instance void class [System.Runtime]System.Action`1<object>::.ctor(object,
                                                                                            native int)
    IL_00c8:  dup
    IL_00c9:  stsfld     class [System.Runtime]System.Action`1<object> Game.GameMenuScreen/'<>c'::'<>9__7_1'
    IL_00ce:  newobj     instance void Game.ListSelectionDialog::.ctor(string,
                                                                       class [System.Runtime]System.Collections.IEnumerable,
                                                                       float32,
                                                                       class [System.Runtime]System.Func`2<object,string>,
                                                                       class [System.Runtime]System.Action`1<object>)
    IL_00d3:  call       void Game.DialogsManager::ShowDialog(class Game.Dialog)
    IL_00d8:  ldarg.0
    IL_00d9:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_00de:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00e3:  ldstr      "RestartAdventure"
    IL_00e8:  ldc.i4.1
    IL_00e9:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_00ee:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_00f3:  brfalse.s  IL_0132

    IL_00f5:  ldstr      "Reset Adventure\?"
    IL_00fa:  ldstr      "The adventure will start from the beginning."
    IL_00ff:  ldstr      "Yes"
    IL_0104:  ldstr      "No"
    IL_0109:  ldsfld     class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton> Game.GameMenuScreen/'<>c'::'<>9__7_2'
    IL_010e:  dup
    IL_010f:  brtrue.s   IL_0128

    IL_0111:  pop
    IL_0112:  ldsfld     class Game.GameMenuScreen/'<>c' Game.GameMenuScreen/'<>c'::'<>9'
    IL_0117:  ldftn      instance void Game.GameMenuScreen/'<>c'::'<Update>b__7_2'(valuetype Game.MessageDialogButton)
    IL_011d:  newobj     instance void class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>::.ctor(object,
                                                                                                                        native int)
    IL_0122:  dup
    IL_0123:  stsfld     class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton> Game.GameMenuScreen/'<>c'::'<>9__7_2'
    IL_0128:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                 string,
                                                                 string,
                                                                 string,
                                                                 class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
    IL_012d:  call       void Game.DialogsManager::ShowDialog(class Game.Dialog)
    IL_0132:  ldarg.0
    IL_0133:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0138:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_013d:  ldstr      "Settings"
    IL_0142:  ldc.i4.1
    IL_0143:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_0148:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_014d:  brfalse.s  IL_0173

    IL_014f:  ldsfld     class [System.Runtime]System.Action Game.GameMenuScreen/'<>c'::'<>9__7_4'
    IL_0154:  dup
    IL_0155:  brtrue.s   IL_016e

    IL_0157:  pop
    IL_0158:  ldsfld     class Game.GameMenuScreen/'<>c' Game.GameMenuScreen/'<>c'::'<>9'
    IL_015d:  ldftn      instance void Game.GameMenuScreen/'<>c'::'<Update>b__7_4'()
    IL_0163:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0168:  dup
    IL_0169:  stsfld     class [System.Runtime]System.Action Game.GameMenuScreen/'<>c'::'<>9__7_4'
    IL_016e:  call       void Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
    IL_0173:  ldarg.0
    IL_0174:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0179:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_017e:  ldstr      "Help"
    IL_0183:  ldc.i4.1
    IL_0184:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_0189:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_018e:  brfalse.s  IL_01b4

    IL_0190:  ldsfld     class [System.Runtime]System.Action Game.GameMenuScreen/'<>c'::'<>9__7_5'
    IL_0195:  dup
    IL_0196:  brtrue.s   IL_01af

    IL_0198:  pop
    IL_0199:  ldsfld     class Game.GameMenuScreen/'<>c' Game.GameMenuScreen/'<>c'::'<>9'
    IL_019e:  ldftn      instance void Game.GameMenuScreen/'<>c'::'<Update>b__7_5'()
    IL_01a4:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_01a9:  dup
    IL_01aa:  stsfld     class [System.Runtime]System.Action Game.GameMenuScreen/'<>c'::'<>9__7_5'
    IL_01af:  call       void Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
    IL_01b4:  ldarg.0
    IL_01b5:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_01ba:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_01bf:  ldstr      "Quit"
    IL_01c4:  ldc.i4.1
    IL_01c5:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_01ca:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_01cf:  brfalse.s  IL_01f5

    IL_01d1:  ldsfld     class [System.Runtime]System.Action Game.GameMenuScreen/'<>c'::'<>9__7_6'
    IL_01d6:  dup
    IL_01d7:  brtrue.s   IL_01f0

    IL_01d9:  pop
    IL_01da:  ldsfld     class Game.GameMenuScreen/'<>c' Game.GameMenuScreen/'<>c'::'<>9'
    IL_01df:  ldftn      instance void Game.GameMenuScreen/'<>c'::'<Update>b__7_6'()
    IL_01e5:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_01ea:  dup
    IL_01eb:  stsfld     class [System.Runtime]System.Action Game.GameMenuScreen/'<>c'::'<>9__7_6'
    IL_01f0:  call       void Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
    IL_01f5:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_01fa:  ldfld      bool Game.InputState::Back
    IL_01ff:  brtrue.s   IL_021e

    IL_0201:  ldarg.0
    IL_0202:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0207:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_020c:  ldstr      "TopBar.Back"
    IL_0211:  ldc.i4.1
    IL_0212:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_0217:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_021c:  brfalse.s  IL_0242

    IL_021e:  ldsfld     class [System.Runtime]System.Action Game.GameMenuScreen/'<>c'::'<>9__7_7'
    IL_0223:  dup
    IL_0224:  brtrue.s   IL_023d

    IL_0226:  pop
    IL_0227:  ldsfld     class Game.GameMenuScreen/'<>c' Game.GameMenuScreen/'<>c'::'<>9'
    IL_022c:  ldftn      instance void Game.GameMenuScreen/'<>c'::'<Update>b__7_7'()
    IL_0232:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0237:  dup
    IL_0238:  stsfld     class [System.Runtime]System.Action Game.GameMenuScreen/'<>c'::'<>9__7_7'
    IL_023d:  call       void Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
    IL_0242:  ret
  } // end of method GameMenuScreen::Update

  .method private hidebysig instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.ActiveExternalContentInfo> 
          GetRateableItems() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.IteratorStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 2A 47 61 6D 65 2E 47 61 6D 65 4D 65 6E 75   // ..*Game.GameMenu
                                                                                                                                                      53 63 72 65 65 6E 2B 3C 47 65 74 52 61 74 65 61   // Screen+<GetRatea
                                                                                                                                                      62 6C 65 49 74 65 6D 73 3E 64 5F 5F 38 00 00 )    // bleItems>d__8..
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldc.i4.s   -2
    IL_0002:  newobj     instance void Game.GameMenuScreen/'<GetRateableItems>d__8'::.ctor(int32)
    IL_0007:  ret
  } // end of method GameMenuScreen::GetRateableItems

  .method private hidebysig static string 
          FormatDistance(float64 'value') cil managed
  {
    // 代码大小       74 (0x4a)
    .maxstack  6
    IL_0000:  ldarg.0
    IL_0001:  ldc.r8     1000.
    IL_000a:  bge.un.s   IL_0026

    IL_000c:  ldstr      "{0:0}m"
    IL_0011:  ldc.i4.1
    IL_0012:  newarr     [System.Runtime]System.Object
    IL_0017:  dup
    IL_0018:  ldc.i4.0
    IL_0019:  ldarg.0
    IL_001a:  box        [System.Runtime]System.Double
    IL_001f:  stelem.ref
    IL_0020:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0025:  ret

    IL_0026:  ldstr      "{0:N2}km"
    IL_002b:  ldc.i4.1
    IL_002c:  newarr     [System.Runtime]System.Object
    IL_0031:  dup
    IL_0032:  ldc.i4.0
    IL_0033:  ldarg.0
    IL_0034:  ldc.r8     1000.
    IL_003d:  div
    IL_003e:  box        [System.Runtime]System.Double
    IL_0043:  stelem.ref
    IL_0044:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0049:  ret
  } // end of method GameMenuScreen::FormatDistance

  .method private hidebysig instance void 
          AddStat(class Game.ContainerWidget containerWidget,
                  string title,
                  string value1,
                  [opt] string value2) cil managed
  {
    .param [4] = ""
    // 代码大小       313 (0x139)
    .maxstack  9
    .locals init (string V_0,
             class [Engine]Engine.Media.BitmapFont V_1,
             valuetype [Engine]Engine.Color V_2,
             valuetype [Engine]Engine.Color V_3)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.GameMenuScreen::m_invalid
    IL_0006:  brtrue.s   IL_000f

    IL_0008:  ldsfld     string [System.Runtime]System.String::Empty
    IL_000d:  br.s       IL_0014

    IL_000f:  ldstr      "*"
    IL_0014:  stloc.0
    IL_0015:  ldstr      "Fonts/Pericles18"
    IL_001a:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Media.BitmapFont>(string)
    IL_001f:  stloc.1
    IL_0020:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0025:  stloc.2
    IL_0026:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Gray
    IL_002b:  stloc.3
    IL_002c:  ldarg.1
    IL_002d:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0032:  newobj     instance void Game.UniformSpacingPanelWidget::.ctor()
    IL_0037:  dup
    IL_0038:  ldc.i4.0
    IL_0039:  callvirt   instance void Game.UniformSpacingPanelWidget::set_Direction(valuetype Game.LayoutDirection)
    IL_003e:  dup
    IL_003f:  ldc.i4.1
    IL_0040:  callvirt   instance void Game.Widget::set_HorizontalAlignment(valuetype Game.WidgetAlignment)
    IL_0045:  dup
    IL_0046:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_004b:  newobj     instance void Game.LabelWidget::.ctor()
    IL_0050:  dup
    IL_0051:  ldarg.2
    IL_0052:  ldstr      ":"
    IL_0057:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_005c:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0061:  dup
    IL_0062:  ldc.i4.2
    IL_0063:  callvirt   instance void Game.Widget::set_HorizontalAlignment(valuetype Game.WidgetAlignment)
    IL_0068:  dup
    IL_0069:  ldloc.1
    IL_006a:  callvirt   instance void Game.LabelWidget::set_Font(class [Engine]Engine.Media.BitmapFont)
    IL_006f:  dup
    IL_0070:  ldloc.3
    IL_0071:  callvirt   instance void Game.LabelWidget::set_Color(valuetype [Engine]Engine.Color)
    IL_0076:  dup
    IL_0077:  ldc.r4     5.
    IL_007c:  ldc.r4     1.
    IL_0081:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0086:  callvirt   instance void Game.Widget::set_Margin(valuetype [Engine]Engine.Vector2)
    IL_008b:  callvirt   instance void Game.WidgetsContainer::Add(class Game.Widget)
    IL_0090:  dup
    IL_0091:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0096:  newobj     instance void Game.StackPanelWidget::.ctor()
    IL_009b:  dup
    IL_009c:  ldc.i4.0
    IL_009d:  callvirt   instance void Game.StackPanelWidget::set_Direction(valuetype Game.LayoutDirection)
    IL_00a2:  dup
    IL_00a3:  ldc.i4.0
    IL_00a4:  callvirt   instance void Game.Widget::set_HorizontalAlignment(valuetype Game.WidgetAlignment)
    IL_00a9:  dup
    IL_00aa:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00af:  newobj     instance void Game.LabelWidget::.ctor()
    IL_00b4:  dup
    IL_00b5:  ldarg.3
    IL_00b6:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_00bb:  ldloc.0
    IL_00bc:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_00c1:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_00c6:  dup
    IL_00c7:  ldloc.1
    IL_00c8:  callvirt   instance void Game.LabelWidget::set_Font(class [Engine]Engine.Media.BitmapFont)
    IL_00cd:  dup
    IL_00ce:  ldloc.2
    IL_00cf:  callvirt   instance void Game.LabelWidget::set_Color(valuetype [Engine]Engine.Color)
    IL_00d4:  dup
    IL_00d5:  ldc.r4     5.
    IL_00da:  ldc.r4     1.
    IL_00df:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00e4:  callvirt   instance void Game.Widget::set_Margin(valuetype [Engine]Engine.Vector2)
    IL_00e9:  callvirt   instance void Game.WidgetsContainer::Add(class Game.Widget)
    IL_00ee:  dup
    IL_00ef:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00f4:  newobj     instance void Game.LabelWidget::.ctor()
    IL_00f9:  dup
    IL_00fa:  ldarg.s    value2
    IL_00fc:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_0101:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0106:  dup
    IL_0107:  ldloc.1
    IL_0108:  callvirt   instance void Game.LabelWidget::set_Font(class [Engine]Engine.Media.BitmapFont)
    IL_010d:  dup
    IL_010e:  ldloc.3
    IL_010f:  callvirt   instance void Game.LabelWidget::set_Color(valuetype [Engine]Engine.Color)
    IL_0114:  dup
    IL_0115:  ldc.r4     5.
    IL_011a:  ldc.r4     1.
    IL_011f:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0124:  callvirt   instance void Game.Widget::set_Margin(valuetype [Engine]Engine.Vector2)
    IL_0129:  callvirt   instance void Game.WidgetsContainer::Add(class Game.Widget)
    IL_012e:  callvirt   instance void Game.WidgetsContainer::Add(class Game.Widget)
    IL_0133:  callvirt   instance void Game.WidgetsContainer::Add(class Game.Widget)
    IL_0138:  ret
  } // end of method GameMenuScreen::AddStat

} // end of class Game.GameMenuScreen