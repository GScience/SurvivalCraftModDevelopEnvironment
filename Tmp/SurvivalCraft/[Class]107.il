.class public auto ansi beforefieldinit Game.GameMenuDialog
       extends Game.Dialog
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.GameMenuDialog/'<>c' '<>9'
    .field public static class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton> '<>9__6_1'
    .field public static class [System.Runtime]System.Action '<>9__6_0'
    .field public static class [System.Runtime]System.Func`2<object,string> '<>9__6_3'
    .field public static class [System.Runtime]System.Action`1<object> '<>9__6_4'
    .field public static class [System.Runtime]System.Action '<>9__6_6'
    .field public static class [System.Runtime]System.Action '<>9__6_7'
    .field public static class [System.Runtime]System.Func`2<object,string> '<>9__6_10'
    .field public static class [System.Runtime]System.Action`1<object> '<>9__6_11'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.GameMenuDialog/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.GameMenuDialog/'<>c' Game.GameMenuDialog/'<>c'::'<>9'
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
            '<Update>b__6_0'() cil managed
    {
      // 代码大小       63 (0x3f)
      .maxstack  8
      IL_0000:  ldnull
      IL_0001:  ldstr      "Reset Adventure\?"
      IL_0006:  ldstr      "The adventure will start from the beginning."
      IL_000b:  ldstr      "Yes"
      IL_0010:  ldstr      "No"
      IL_0015:  ldsfld     class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton> Game.GameMenuDialog/'<>c'::'<>9__6_1'
      IL_001a:  dup
      IL_001b:  brtrue.s   IL_0034

      IL_001d:  pop
      IL_001e:  ldsfld     class Game.GameMenuDialog/'<>c' Game.GameMenuDialog/'<>c'::'<>9'
      IL_0023:  ldftn      instance void Game.GameMenuDialog/'<>c'::'<Update>b__6_1'(valuetype Game.MessageDialogButton)
      IL_0029:  newobj     instance void class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>::.ctor(object,
                                                                                                                          native int)
      IL_002e:  dup
      IL_002f:  stsfld     class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton> Game.GameMenuDialog/'<>c'::'<>9__6_1'
      IL_0034:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                   string,
                                                                   string,
                                                                   string,
                                                                   class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
      IL_0039:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                                class Game.Dialog)
      IL_003e:  ret
    } // end of method '<>c'::'<Update>b__6_0'

    .method assembly hidebysig instance void 
            '<Update>b__6_1'(valuetype Game.MessageDialogButton result) cil managed
    {
      // 代码大小       36 (0x24)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  brtrue.s   IL_0023

      IL_0003:  ldstr      "GameLoading"
      IL_0008:  ldc.i4.2
      IL_0009:  newarr     [System.Runtime]System.Object
      IL_000e:  dup
      IL_000f:  ldc.i4.0
      IL_0010:  call       class Game.WorldInfo Game.GameManager::get_WorldInfo()
      IL_0015:  stelem.ref
      IL_0016:  dup
      IL_0017:  ldc.i4.1
      IL_0018:  ldstr      "AdventureRestart"
      IL_001d:  stelem.ref
      IL_001e:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                  object[])
      IL_0023:  ret
    } // end of method '<>c'::'<Update>b__6_1'

    .method assembly hidebysig instance string 
            '<Update>b__6_3'(object o) cil managed
    {
      // 代码大小       12 (0xc)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  castclass  Game.ActiveExternalContentInfo
      IL_0006:  ldfld      string Game.ActiveExternalContentInfo::DisplayName
      IL_000b:  ret
    } // end of method '<>c'::'<Update>b__6_3'

    .method assembly hidebysig instance void 
            '<Update>b__6_4'(object o) cil managed
    {
      // 代码大小       41 (0x29)
      .maxstack  4
      .locals init (class Game.ActiveExternalContentInfo V_0)
      IL_0000:  ldarg.1
      IL_0001:  castclass  Game.ActiveExternalContentInfo
      IL_0006:  stloc.0
      IL_0007:  ldnull
      IL_0008:  ldloc.0
      IL_0009:  ldfld      string Game.ActiveExternalContentInfo::Address
      IL_000e:  ldloc.0
      IL_000f:  ldfld      string Game.ActiveExternalContentInfo::DisplayName
      IL_0014:  call       class Game.UserInfo Game.UserManager::get_ActiveUser()
      IL_0019:  ldfld      string Game.UserInfo::UniqueId
      IL_001e:  newobj     instance void Game.RateCommunityContentDialog::.ctor(string,
                                                                                string,
                                                                                string)
      IL_0023:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                                class Game.Dialog)
      IL_0028:  ret
    } // end of method '<>c'::'<Update>b__6_4'

    .method assembly hidebysig instance void 
            '<Update>b__6_6'() cil managed
    {
      // 代码大小       17 (0x11)
      .maxstack  8
      IL_0000:  ldstr      "Settings"
      IL_0005:  ldc.i4.0
      IL_0006:  newarr     [System.Runtime]System.Object
      IL_000b:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                  object[])
      IL_0010:  ret
    } // end of method '<>c'::'<Update>b__6_6'

    .method assembly hidebysig instance void 
            '<Update>b__6_7'() cil managed
    {
      // 代码大小       17 (0x11)
      .maxstack  8
      IL_0000:  ldstr      "Help"
      IL_0005:  ldc.i4.0
      IL_0006:  newarr     [System.Runtime]System.Object
      IL_000b:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                  object[])
      IL_0010:  ret
    } // end of method '<>c'::'<Update>b__6_7'

    .method assembly hidebysig instance string 
            '<Update>b__6_10'(object t) cil managed
    {
      // 代码大小       12 (0xc)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  castclass  class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>
      IL_0006:  callvirt   instance !0 class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>::get_Item1()
      IL_000b:  ret
    } // end of method '<>c'::'<Update>b__6_10'

    .method assembly hidebysig instance void 
            '<Update>b__6_11'(object t) cil managed
    {
      // 代码大小       17 (0x11)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  castclass  class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>
      IL_0006:  callvirt   instance !1 class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>::get_Item2()
      IL_000b:  callvirt   instance void [System.Runtime]System.Action::Invoke()
      IL_0010:  ret
    } // end of method '<>c'::'<Update>b__6_11'

  } // end of class '<>c'

  .class auto ansi sealed nested private beforefieldinit '<GetRateableItems>d__7'
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
      IL_0008:  stfld      int32 Game.GameMenuDialog/'<GetRateableItems>d__7'::'<>1__state'
      IL_000d:  ldarg.0
      IL_000e:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0013:  stfld      int32 Game.GameMenuDialog/'<GetRateableItems>d__7'::'<>l__initialThreadId'
      IL_0018:  ret
    } // end of method '<GetRateableItems>d__7'::.ctor

    .method private hidebysig newslot virtual final 
            instance void  System.IDisposable.Dispose() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.IDisposable::Dispose
      // 代码大小       27 (0x1b)
      .maxstack  2
      .locals init (int32 V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.GameMenuDialog/'<GetRateableItems>d__7'::'<>1__state'
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
        IL_0014:  call       instance void Game.GameMenuDialog/'<GetRateableItems>d__7'::'<>m__Finally1'()
        IL_0019:  endfinally
      }  // end handler
      IL_001a:  ret
    } // end of method '<GetRateableItems>d__7'::System.IDisposable.Dispose

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
        IL_0001:  ldfld      int32 Game.GameMenuDialog/'<GetRateableItems>d__7'::'<>1__state'
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
        IL_0017:  stfld      int32 Game.GameMenuDialog/'<GetRateableItems>d__7'::'<>1__state'
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
        IL_0045:  stfld      class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.ActiveExternalContentInfo> Game.GameMenuDialog/'<GetRateableItems>d__7'::'<>7__wrap1'
        IL_004a:  ldarg.0
        IL_004b:  ldc.i4.s   -3
        IL_004d:  stfld      int32 Game.GameMenuDialog/'<GetRateableItems>d__7'::'<>1__state'
        IL_0052:  br.s       IL_0091

        IL_0054:  ldarg.0
        IL_0055:  ldfld      class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.ActiveExternalContentInfo> Game.GameMenuDialog/'<GetRateableItems>d__7'::'<>7__wrap1'
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
        IL_0079:  stfld      class Game.ActiveExternalContentInfo Game.GameMenuDialog/'<GetRateableItems>d__7'::'<>2__current'
        IL_007e:  ldarg.0
        IL_007f:  ldc.i4.1
        IL_0080:  stfld      int32 Game.GameMenuDialog/'<GetRateableItems>d__7'::'<>1__state'
        IL_0085:  ldc.i4.1
        IL_0086:  stloc.0
        IL_0087:  leave.s    IL_00b6

        IL_0089:  ldarg.0
        IL_008a:  ldc.i4.s   -3
        IL_008c:  stfld      int32 Game.GameMenuDialog/'<GetRateableItems>d__7'::'<>1__state'
        IL_0091:  ldarg.0
        IL_0092:  ldfld      class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.ActiveExternalContentInfo> Game.GameMenuDialog/'<GetRateableItems>d__7'::'<>7__wrap1'
        IL_0097:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
        IL_009c:  brtrue.s   IL_0054

        IL_009e:  ldarg.0
        IL_009f:  call       instance void Game.GameMenuDialog/'<GetRateableItems>d__7'::'<>m__Finally1'()
        IL_00a4:  ldarg.0
        IL_00a5:  ldnull
        IL_00a6:  stfld      class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.ActiveExternalContentInfo> Game.GameMenuDialog/'<GetRateableItems>d__7'::'<>7__wrap1'
        IL_00ab:  ldc.i4.0
        IL_00ac:  stloc.0
        IL_00ad:  leave.s    IL_00b6

      }  // end .try
      fault
      {
        IL_00af:  ldarg.0
        IL_00b0:  call       instance void Game.GameMenuDialog/'<GetRateableItems>d__7'::System.IDisposable.Dispose()
        IL_00b5:  endfinally
      }  // end handler
      IL_00b6:  ldloc.0
      IL_00b7:  ret
    } // end of method '<GetRateableItems>d__7'::MoveNext

    .method private hidebysig instance void 
            '<>m__Finally1'() cil managed
    {
      // 代码大小       27 (0x1b)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldc.i4.m1
      IL_0002:  stfld      int32 Game.GameMenuDialog/'<GetRateableItems>d__7'::'<>1__state'
      IL_0007:  ldarg.0
      IL_0008:  ldfld      class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.ActiveExternalContentInfo> Game.GameMenuDialog/'<GetRateableItems>d__7'::'<>7__wrap1'
      IL_000d:  brfalse.s  IL_001a

      IL_000f:  ldarg.0
      IL_0010:  ldfld      class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.ActiveExternalContentInfo> Game.GameMenuDialog/'<GetRateableItems>d__7'::'<>7__wrap1'
      IL_0015:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_001a:  ret
    } // end of method '<GetRateableItems>d__7'::'<>m__Finally1'

    .method private hidebysig newslot specialname virtual final 
            instance class Game.ActiveExternalContentInfo 
            'System.Collections.Generic.IEnumerator<Game.ActiveExternalContentInfo>.get_Current'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.ActiveExternalContentInfo>::get_Current()
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.ActiveExternalContentInfo Game.GameMenuDialog/'<GetRateableItems>d__7'::'<>2__current'
      IL_0006:  ret
    } // end of method '<GetRateableItems>d__7'::'System.Collections.Generic.IEnumerator<Game.ActiveExternalContentInfo>.get_Current'

    .method private hidebysig newslot virtual final 
            instance void  System.Collections.IEnumerator.Reset() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerator::Reset
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  newobj     instance void [System.Runtime]System.NotSupportedException::.ctor()
      IL_0005:  throw
    } // end of method '<GetRateableItems>d__7'::System.Collections.IEnumerator.Reset

    .method private hidebysig newslot specialname virtual final 
            instance object  System.Collections.IEnumerator.get_Current() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerator::get_Current
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.ActiveExternalContentInfo Game.GameMenuDialog/'<GetRateableItems>d__7'::'<>2__current'
      IL_0006:  ret
    } // end of method '<GetRateableItems>d__7'::System.Collections.IEnumerator.get_Current

    .method private hidebysig newslot virtual final 
            instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.ActiveExternalContentInfo> 
            'System.Collections.Generic.IEnumerable<Game.ActiveExternalContentInfo>.GetEnumerator'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.ActiveExternalContentInfo>::GetEnumerator()
      // 代码大小       43 (0x2b)
      .maxstack  2
      .locals init (class Game.GameMenuDialog/'<GetRateableItems>d__7' V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.GameMenuDialog/'<GetRateableItems>d__7'::'<>1__state'
      IL_0006:  ldc.i4.s   -2
      IL_0008:  bne.un.s   IL_0022

      IL_000a:  ldarg.0
      IL_000b:  ldfld      int32 Game.GameMenuDialog/'<GetRateableItems>d__7'::'<>l__initialThreadId'
      IL_0010:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0015:  bne.un.s   IL_0022

      IL_0017:  ldarg.0
      IL_0018:  ldc.i4.0
      IL_0019:  stfld      int32 Game.GameMenuDialog/'<GetRateableItems>d__7'::'<>1__state'
      IL_001e:  ldarg.0
      IL_001f:  stloc.0
      IL_0020:  br.s       IL_0029

      IL_0022:  ldc.i4.0
      IL_0023:  newobj     instance void Game.GameMenuDialog/'<GetRateableItems>d__7'::.ctor(int32)
      IL_0028:  stloc.0
      IL_0029:  ldloc.0
      IL_002a:  ret
    } // end of method '<GetRateableItems>d__7'::'System.Collections.Generic.IEnumerable<Game.ActiveExternalContentInfo>.GetEnumerator'

    .method private hidebysig newslot virtual final 
            instance class [System.Runtime]System.Collections.IEnumerator 
            System.Collections.IEnumerable.GetEnumerator() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerable::GetEnumerator
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.ActiveExternalContentInfo> Game.GameMenuDialog/'<GetRateableItems>d__7'::'System.Collections.Generic.IEnumerable<Game.ActiveExternalContentInfo>.GetEnumerator'()
      IL_0006:  ret
    } // end of method '<GetRateableItems>d__7'::System.Collections.IEnumerable.GetEnumerator

    .property instance class Game.ActiveExternalContentInfo
            'System.Collections.Generic.IEnumerator<Game.ActiveExternalContentInfo>.Current'()
    {
      .get instance class Game.ActiveExternalContentInfo Game.GameMenuDialog/'<GetRateableItems>d__7'::'System.Collections.Generic.IEnumerator<Game.ActiveExternalContentInfo>.get_Current'()
    } // end of property '<GetRateableItems>d__7'::'System.Collections.Generic.IEnumerator<Game.ActiveExternalContentInfo>.Current'
    .property instance object System.Collections.IEnumerator.Current()
    {
      .get instance object Game.GameMenuDialog/'<GetRateableItems>d__7'::System.Collections.IEnumerator.get_Current()
    } // end of property '<GetRateableItems>d__7'::System.Collections.IEnumerator.Current
  } // end of class '<GetRateableItems>d__7'

  .field private static bool m_increaseDetailDialogShown
  .field private static bool m_decreaseDetailDialogShown
  .field private bool m_adventureRestartExists
  .field private class Game.StackPanelWidget m_statsPanel
  .field private class Game.ComponentPlayer m_componentPlayer
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.ComponentPlayer componentPlayer) cil managed
  {
    // 代码大小       4083 (0xff3)
    .maxstack  10
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0,
             class Game.PlayerData V_1,
             class Game.PlayerStats V_2,
             class Game.SubsystemGameInfo V_3,
             class Game.SubsystemFurnitureBlockBehavior V_4,
             class [Engine]Engine.Media.BitmapFont V_5,
             class [Engine]Engine.Media.BitmapFont V_6,
             valuetype [Engine]Engine.Color V_7,
             class Game.StackPanelWidget V_8,
             string V_9,
             int32 V_10,
             string V_11,
             string V_12,
             int32 V_13,
             int32 V_14,
             valuetype [System.Runtime]System.Nullable`1<float32> V_15,
             int32 V_16,
             valuetype Game.PlayerClass V_17,
             float64 V_18,
             valuetype [Engine]Engine.Vector3 V_19,
             valuetype Game.GameMode V_20,
             valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.PlayerStats/DeathRecord> V_21,
             valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype Game.PlayerStats/DeathRecord> V_22,
             valuetype Game.PlayerStats/DeathRecord V_23,
             float32 V_24,
             string V_25)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.Dialog::.ctor()
    IL_0006:  ldstr      "Dialogs/GameMenuDialog"
    IL_000b:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_0010:  stloc.0
    IL_0011:  ldarg.0
    IL_0012:  ldarg.0
    IL_0013:  ldloc.0
    IL_0014:  call       void Game.WidgetsManager::LoadWidgetContents(class Game.Widget,
                                                                      object,
                                                                      class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_0019:  ldarg.0
    IL_001a:  ldarg.0
    IL_001b:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0020:  ldstr      "StatsPanel"
    IL_0025:  ldc.i4.1
    IL_0026:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.StackPanelWidget>(string,
                                                                                          bool)
    IL_002b:  stfld      class Game.StackPanelWidget Game.GameMenuDialog::m_statsPanel
    IL_0030:  ldarg.0
    IL_0031:  ldarg.1
    IL_0032:  stfld      class Game.ComponentPlayer Game.GameMenuDialog::m_componentPlayer
    IL_0037:  ldarg.0
    IL_0038:  call       class Game.WorldInfo Game.GameManager::get_WorldInfo()
    IL_003d:  ldfld      string Game.WorldInfo::DirectoryName
    IL_0042:  ldstr      "AdventureRestart"
    IL_0047:  call       bool Game.WorldsManager::SnapshotExists(string,
                                                                 string)
    IL_004c:  stfld      bool Game.GameMenuDialog::m_adventureRestartExists
    IL_0051:  ldsfld     bool Game.GameMenuDialog::m_increaseDetailDialogShown
    IL_0056:  brtrue.s   IL_00c5

    IL_0058:  call       valuetype [System.Runtime]System.Nullable`1<float32> Game.PerformanceManager::get_LongTermAverageFrameTime()
    IL_005d:  stloc.s    V_15
    IL_005f:  ldloca.s   V_15
    IL_0061:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float32>::get_HasValue()
    IL_0066:  brfalse.s  IL_00c5

    IL_0068:  call       valuetype [System.Runtime]System.Nullable`1<float32> Game.PerformanceManager::get_LongTermAverageFrameTime()
    IL_006d:  stloc.s    V_15
    IL_006f:  ldloca.s   V_15
    IL_0071:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_0076:  ldc.r4     1000.
    IL_007b:  mul
    IL_007c:  ldc.r4     25.
    IL_0081:  bge.un.s   IL_00c5

    IL_0083:  call       int32 Game.SettingsManager::get_VisibilityRange()
    IL_0088:  ldc.i4.s   64
    IL_008a:  ble.s      IL_0093

    IL_008c:  call       valuetype Game.ResolutionMode Game.SettingsManager::get_ResolutionMode()
    IL_0091:  brtrue.s   IL_00c5

    IL_0093:  ldc.i4.1
    IL_0094:  stsfld     bool Game.GameMenuDialog::m_increaseDetailDialogShown
    IL_0099:  ldnull
    IL_009a:  ldstr      "Your device is fast"
    IL_009f:  ldstr      "Consider increasing visibility range or resolution"
    + " for better graphics. To do so, go to performance settings."
    IL_00a4:  ldstr      "OK"
    IL_00a9:  ldnull
    IL_00aa:  ldnull
    IL_00ab:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                 string,
                                                                 string,
                                                                 string,
                                                                 class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
    IL_00b0:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_00b5:  ldstr      "[GameMenuScreen] IncreaseDetailDialog Shown"
    IL_00ba:  ldc.i4.0
    IL_00bb:  newarr     Game.AnalyticsParameter
    IL_00c0:  call       void Game.AnalyticsManager::LogEvent(string,
                                                              valuetype Game.AnalyticsParameter[])
    IL_00c5:  ldsfld     bool Game.GameMenuDialog::m_decreaseDetailDialogShown
    IL_00ca:  brtrue.s   IL_013a

    IL_00cc:  call       valuetype [System.Runtime]System.Nullable`1<float32> Game.PerformanceManager::get_LongTermAverageFrameTime()
    IL_00d1:  stloc.s    V_15
    IL_00d3:  ldloca.s   V_15
    IL_00d5:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float32>::get_HasValue()
    IL_00da:  brfalse.s  IL_013a

    IL_00dc:  call       valuetype [System.Runtime]System.Nullable`1<float32> Game.PerformanceManager::get_LongTermAverageFrameTime()
    IL_00e1:  stloc.s    V_15
    IL_00e3:  ldloca.s   V_15
    IL_00e5:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_00ea:  ldc.r4     1000.
    IL_00ef:  mul
    IL_00f0:  ldc.r4     50.
    IL_00f5:  ble.un.s   IL_013a

    IL_00f7:  call       int32 Game.SettingsManager::get_VisibilityRange()
    IL_00fc:  ldc.i4.s   64
    IL_00fe:  bge.s      IL_0108

    IL_0100:  call       valuetype Game.ResolutionMode Game.SettingsManager::get_ResolutionMode()
    IL_0105:  ldc.i4.2
    IL_0106:  bne.un.s   IL_013a

    IL_0108:  ldc.i4.1
    IL_0109:  stsfld     bool Game.GameMenuDialog::m_decreaseDetailDialogShown
    IL_010e:  ldnull
    IL_010f:  ldstr      "Your device is not fast enough"
    IL_0114:  ldstr      "Consider decreasing visibility range or resolution"
    + ". To do so, go to performance settings."
    IL_0119:  ldstr      "OK"
    IL_011e:  ldnull
    IL_011f:  ldnull
    IL_0120:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                 string,
                                                                 string,
                                                                 string,
                                                                 class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
    IL_0125:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_012a:  ldstr      "[GameMenuScreen] DecreaseDetailDialog Shown"
    IL_012f:  ldc.i4.0
    IL_0130:  newarr     Game.AnalyticsParameter
    IL_0135:  call       void Game.AnalyticsManager::LogEvent(string,
                                                              valuetype Game.AnalyticsParameter[])
    IL_013a:  ldarg.0
    IL_013b:  ldfld      class Game.StackPanelWidget Game.GameMenuDialog::m_statsPanel
    IL_0140:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0145:  callvirt   instance void Game.WidgetsList::Clear()
    IL_014a:  ldarg.1
    IL_014b:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0150:  ldarg.1
    IL_0151:  callvirt   instance class Game.PlayerData Game.ComponentPlayer::get_PlayerData()
    IL_0156:  stloc.1
    IL_0157:  ldarg.1
    IL_0158:  callvirt   instance class Game.PlayerStats Game.ComponentCreature::get_PlayerStats()
    IL_015d:  stloc.2
    IL_015e:  dup
    IL_015f:  ldc.i4.1
    IL_0160:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGameInfo>(bool)
    IL_0165:  stloc.3
    IL_0166:  ldc.i4.1
    IL_0167:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemFurnitureBlockBehavior>(bool)
    IL_016c:  stloc.s    V_4
    IL_016e:  ldstr      "Fonts/Pericles24"
    IL_0173:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Media.BitmapFont>(string)
    IL_0178:  stloc.s    V_5
    IL_017a:  ldstr      "Fonts/Pericles18"
    IL_017f:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Media.BitmapFont>(string)
    IL_0184:  stloc.s    V_6
    IL_0186:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_018b:  stloc.s    V_7
    IL_018d:  newobj     instance void Game.StackPanelWidget::.ctor()
    IL_0192:  dup
    IL_0193:  ldc.i4.1
    IL_0194:  callvirt   instance void Game.StackPanelWidget::set_Direction(valuetype Game.LayoutDirection)
    IL_0199:  dup
    IL_019a:  ldc.i4.1
    IL_019b:  callvirt   instance void Game.Widget::set_HorizontalAlignment(valuetype Game.WidgetAlignment)
    IL_01a0:  stloc.s    V_8
    IL_01a2:  ldarg.0
    IL_01a3:  ldfld      class Game.StackPanelWidget Game.GameMenuDialog::m_statsPanel
    IL_01a8:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_01ad:  ldloc.s    V_8
    IL_01af:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
    IL_01b4:  ldloc.s    V_8
    IL_01b6:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_01bb:  newobj     instance void Game.LabelWidget::.ctor()
    IL_01c0:  dup
    IL_01c1:  ldstr      "Game Statistics"
    IL_01c6:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_01cb:  dup
    IL_01cc:  ldloc.s    V_5
    IL_01ce:  callvirt   instance void Game.LabelWidget::set_Font(class [Engine]Engine.Media.BitmapFont)
    IL_01d3:  dup
    IL_01d4:  ldc.i4.1
    IL_01d5:  callvirt   instance void Game.Widget::set_HorizontalAlignment(valuetype Game.WidgetAlignment)
    IL_01da:  dup
    IL_01db:  ldc.r4     0.0
    IL_01e0:  ldc.r4     10.
    IL_01e5:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_01ea:  callvirt   instance void Game.Widget::set_Margin(valuetype [Engine]Engine.Vector2)
    IL_01ef:  dup
    IL_01f0:  ldloc.s    V_7
    IL_01f2:  callvirt   instance void Game.LabelWidget::set_Color(valuetype [Engine]Engine.Color)
    IL_01f7:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
    IL_01fc:  ldarg.0
    IL_01fd:  ldloc.s    V_8
    IL_01ff:  ldstr      "Game Mode"
    IL_0204:  ldloc.3
    IL_0205:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_020a:  ldflda     valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_020f:  constrained. Game.GameMode
    IL_0215:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_021a:  ldstr      ", "
    IL_021f:  ldloc.3
    IL_0220:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_0225:  ldflda     valuetype Game.EnvironmentBehaviorMode Game.WorldSettings::EnvironmentBehaviorMode
    IL_022a:  constrained. Game.EnvironmentBehaviorMode
    IL_0230:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_0235:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string,
                                                                      string)
    IL_023a:  ldstr      ""
    IL_023f:  call       instance void Game.GameMenuDialog::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_0244:  ldarg.0
    IL_0245:  ldloc.s    V_8
    IL_0247:  ldstr      "Terrain Type"
    IL_024c:  ldloc.3
    IL_024d:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_0252:  ldflda     valuetype Game.TerrainGenerationMode Game.WorldSettings::TerrainGenerationMode
    IL_0257:  constrained. Game.TerrainGenerationMode
    IL_025d:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_0262:  ldstr      ""
    IL_0267:  call       instance void Game.GameMenuDialog::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_026c:  ldloc.3
    IL_026d:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_0272:  ldfld      string Game.WorldSettings::Seed
    IL_0277:  stloc.s    V_9
    IL_0279:  ldarg.0
    IL_027a:  ldloc.s    V_8
    IL_027c:  ldstr      "World Seed"
    IL_0281:  ldloc.s    V_9
    IL_0283:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_0288:  brfalse.s  IL_0291

    IL_028a:  ldstr      "(none)"
    IL_028f:  br.s       IL_0293

    IL_0291:  ldloc.s    V_9
    IL_0293:  ldstr      ""
    IL_0298:  call       instance void Game.GameMenuDialog::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_029d:  ldarg.0
    IL_029e:  ldloc.s    V_8
    IL_02a0:  ldstr      "Sea Level"
    IL_02a5:  ldloc.3
    IL_02a6:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_02ab:  ldfld      int32 Game.WorldSettings::SeaLevelOffset
    IL_02b0:  conv.r4
    IL_02b1:  call       string Game.WorldOptionsScreen::FormatOffset(float32)
    IL_02b6:  ldstr      ""
    IL_02bb:  call       instance void Game.GameMenuDialog::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_02c0:  ldarg.0
    IL_02c1:  ldloc.s    V_8
    IL_02c3:  ldstr      "Temperature"
    IL_02c8:  ldloc.3
    IL_02c9:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_02ce:  ldfld      float32 Game.WorldSettings::TemperatureOffset
    IL_02d3:  call       string Game.WorldOptionsScreen::FormatOffset(float32)
    IL_02d8:  ldstr      ""
    IL_02dd:  call       instance void Game.GameMenuDialog::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_02e2:  ldarg.0
    IL_02e3:  ldloc.s    V_8
    IL_02e5:  ldstr      "Humidity"
    IL_02ea:  ldloc.3
    IL_02eb:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_02f0:  ldfld      float32 Game.WorldSettings::HumidityOffset
    IL_02f5:  call       string Game.WorldOptionsScreen::FormatOffset(float32)
    IL_02fa:  ldstr      ""
    IL_02ff:  call       instance void Game.GameMenuDialog::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_0304:  ldarg.0
    IL_0305:  ldloc.s    V_8
    IL_0307:  ldstr      "Biome Size"
    IL_030c:  ldloc.3
    IL_030d:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_0312:  ldfld      float32 Game.WorldSettings::BiomeSize
    IL_0317:  box        [System.Runtime]System.Single
    IL_031c:  ldstr      "x"
    IL_0321:  call       string [System.Runtime]System.String::Concat(object,
                                                                      object)
    IL_0326:  ldstr      ""
    IL_032b:  call       instance void Game.GameMenuDialog::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_0330:  ldc.i4.0
    IL_0331:  stloc.s    V_10
    IL_0333:  ldc.i4.0
    IL_0334:  stloc.s    V_16
    IL_0336:  br.s       IL_034f

    IL_0338:  ldloc.s    V_4
    IL_033a:  ldloc.s    V_16
    IL_033c:  callvirt   instance class Game.FurnitureDesign Game.SubsystemFurnitureBlockBehavior::GetDesign(int32)
    IL_0341:  brfalse.s  IL_0349

    IL_0343:  ldloc.s    V_10
    IL_0345:  ldc.i4.1
    IL_0346:  add
    IL_0347:  stloc.s    V_10
    IL_0349:  ldloc.s    V_16
    IL_034b:  ldc.i4.1
    IL_034c:  add
    IL_034d:  stloc.s    V_16
    IL_034f:  ldloc.s    V_16
    IL_0351:  ldc.i4     0x400
    IL_0356:  blt.s      IL_0338

    IL_0358:  ldarg.0
    IL_0359:  ldloc.s    V_8
    IL_035b:  ldstr      "Furniture Designs In Use"
    IL_0360:  ldstr      "{0}/{1}"
    IL_0365:  ldc.i4.2
    IL_0366:  newarr     [System.Runtime]System.Object
    IL_036b:  dup
    IL_036c:  ldc.i4.0
    IL_036d:  ldloc.s    V_10
    IL_036f:  box        [System.Runtime]System.Int32
    IL_0374:  stelem.ref
    IL_0375:  dup
    IL_0376:  ldc.i4.1
    IL_0377:  ldc.i4     0x400
    IL_037c:  box        [System.Runtime]System.Int32
    IL_0381:  stelem.ref
    IL_0382:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0387:  ldstr      ""
    IL_038c:  call       instance void Game.GameMenuDialog::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_0391:  ldloc.s    V_8
    IL_0393:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0398:  newobj     instance void Game.LabelWidget::.ctor()
    IL_039d:  dup
    IL_039e:  ldstr      "Player Statistics"
    IL_03a3:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_03a8:  dup
    IL_03a9:  ldloc.s    V_5
    IL_03ab:  callvirt   instance void Game.LabelWidget::set_Font(class [Engine]Engine.Media.BitmapFont)
    IL_03b0:  dup
    IL_03b1:  ldc.i4.1
    IL_03b2:  callvirt   instance void Game.Widget::set_HorizontalAlignment(valuetype Game.WidgetAlignment)
    IL_03b7:  dup
    IL_03b8:  ldc.r4     0.0
    IL_03bd:  ldc.r4     10.
    IL_03c2:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_03c7:  callvirt   instance void Game.Widget::set_Margin(valuetype [Engine]Engine.Vector2)
    IL_03cc:  dup
    IL_03cd:  ldloc.s    V_7
    IL_03cf:  callvirt   instance void Game.LabelWidget::set_Color(valuetype [Engine]Engine.Color)
    IL_03d4:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
    IL_03d9:  ldarg.0
    IL_03da:  ldloc.s    V_8
    IL_03dc:  ldstr      "Name"
    IL_03e1:  ldloc.1
    IL_03e2:  callvirt   instance string Game.PlayerData::get_Name()
    IL_03e7:  ldstr      ""
    IL_03ec:  call       instance void Game.GameMenuDialog::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_03f1:  ldarg.0
    IL_03f2:  ldloc.s    V_8
    IL_03f4:  ldstr      "Sex"
    IL_03f9:  ldloc.1
    IL_03fa:  callvirt   instance valuetype Game.PlayerClass Game.PlayerData::get_PlayerClass()
    IL_03ff:  stloc.s    V_17
    IL_0401:  ldloca.s   V_17
    IL_0403:  constrained. Game.PlayerClass
    IL_0409:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_040e:  ldstr      ""
    IL_0413:  call       instance void Game.GameMenuDialog::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_0418:  ldloc.1
    IL_0419:  callvirt   instance float64 Game.PlayerData::get_FirstSpawnTime()
    IL_041e:  ldc.r8     0.0
    IL_0427:  bge.s      IL_0430

    IL_0429:  ldstr      "Never spawned yet"
    IL_042e:  br.s       IL_045f

    IL_0430:  ldloc.3
    IL_0431:  callvirt   instance float64 Game.SubsystemGameInfo::get_TotalElapsedGameTime()
    IL_0436:  ldloc.1
    IL_0437:  callvirt   instance float64 Game.PlayerData::get_FirstSpawnTime()
    IL_043c:  sub
    IL_043d:  ldc.r8     1200.
    IL_0446:  div
    IL_0447:  stloc.s    V_18
    IL_0449:  ldloca.s   V_18
    IL_044b:  ldstr      "N1"
    IL_0450:  call       instance string [System.Runtime]System.Double::ToString(string)
    IL_0455:  ldstr      " days ago"
    IL_045a:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_045f:  stloc.s    V_11
    IL_0461:  ldarg.0
    IL_0462:  ldloc.s    V_8
    IL_0464:  ldstr      "First Spawned"
    IL_0469:  ldloc.s    V_11
    IL_046b:  ldstr      ""
    IL_0470:  call       instance void Game.GameMenuDialog::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_0475:  ldloc.1
    IL_0476:  callvirt   instance float64 Game.PlayerData::get_LastSpawnTime()
    IL_047b:  ldc.r8     0.0
    IL_0484:  bge.s      IL_048d

    IL_0486:  ldstr      "Never spawned yet"
    IL_048b:  br.s       IL_04bc

    IL_048d:  ldloc.3
    IL_048e:  callvirt   instance float64 Game.SubsystemGameInfo::get_TotalElapsedGameTime()
    IL_0493:  ldloc.1
    IL_0494:  callvirt   instance float64 Game.PlayerData::get_LastSpawnTime()
    IL_0499:  sub
    IL_049a:  ldc.r8     1200.
    IL_04a3:  div
    IL_04a4:  stloc.s    V_18
    IL_04a6:  ldloca.s   V_18
    IL_04a8:  ldstr      "N1"
    IL_04ad:  call       instance string [System.Runtime]System.Double::ToString(string)
    IL_04b2:  ldstr      " days"
    IL_04b7:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_04bc:  stloc.s    V_12
    IL_04be:  ldarg.0
    IL_04bf:  ldloc.s    V_8
    IL_04c1:  ldstr      "Stayed Alive"
    IL_04c6:  ldloc.s    V_12
    IL_04c8:  ldstr      ""
    IL_04cd:  call       instance void Game.GameMenuDialog::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_04d2:  ldloc.1
    IL_04d3:  callvirt   instance int32 Game.PlayerData::get_SpawnsCount()
    IL_04d8:  ldc.i4.1
    IL_04d9:  sub
    IL_04da:  ldc.i4.0
    IL_04db:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_04e0:  stloc.s    V_13
    IL_04e2:  ldarg.0
    IL_04e3:  ldloc.s    V_8
    IL_04e5:  ldstr      "Respawned"
    IL_04ea:  ldloca.s   V_13
    IL_04ec:  ldstr      "N0"
    IL_04f1:  call       instance string [System.Runtime]System.Int32::ToString(string)
    IL_04f6:  ldstr      " times"
    IL_04fb:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_0500:  ldstr      ""
    IL_0505:  call       instance void Game.GameMenuDialog::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_050a:  ldloc.2
    IL_050b:  ldfld      float32 Game.PlayerStats::HighestLevel
    IL_0510:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_0515:  conv.i4
    IL_0516:  stloc.s    V_14
    IL_0518:  ldarg.0
    IL_0519:  ldloc.s    V_8
    IL_051b:  ldstr      "Highest Level Attained"
    IL_0520:  ldstr      "Level "
    IL_0525:  ldloca.s   V_14
    IL_0527:  ldstr      "N0"
    IL_052c:  call       instance string [System.Runtime]System.Int32::ToString(string)
    IL_0531:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_0536:  ldstr      ""
    IL_053b:  call       instance void Game.GameMenuDialog::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_0540:  ldarg.1
    IL_0541:  brfalse    IL_05e8

    IL_0546:  ldarg.1
    IL_0547:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_054c:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0551:  stloc.s    V_19
    IL_0553:  ldloc.3
    IL_0554:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_0559:  ldfld      valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_055e:  brtrue.s   IL_05b1

    IL_0560:  ldarg.0
    IL_0561:  ldloc.s    V_8
    IL_0563:  ldstr      "Location"
    IL_0568:  ldstr      "{0:0}, {1:0} at altitude {2:0}"
    IL_056d:  ldc.i4.3
    IL_056e:  newarr     [System.Runtime]System.Object
    IL_0573:  dup
    IL_0574:  ldc.i4.0
    IL_0575:  ldloc.s    V_19
    IL_0577:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_057c:  box        [System.Runtime]System.Single
    IL_0581:  stelem.ref
    IL_0582:  dup
    IL_0583:  ldc.i4.1
    IL_0584:  ldloc.s    V_19
    IL_0586:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_058b:  box        [System.Runtime]System.Single
    IL_0590:  stelem.ref
    IL_0591:  dup
    IL_0592:  ldc.i4.2
    IL_0593:  ldloc.s    V_19
    IL_0595:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_059a:  box        [System.Runtime]System.Single
    IL_059f:  stelem.ref
    IL_05a0:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_05a5:  ldstr      ""
    IL_05aa:  call       instance void Game.GameMenuDialog::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_05af:  br.s       IL_05e8

    IL_05b1:  ldarg.0
    IL_05b2:  ldloc.s    V_8
    IL_05b4:  ldstr      "Location"
    IL_05b9:  ldstr      "(unavailable in "
    IL_05be:  ldloc.3
    IL_05bf:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_05c4:  ldflda     valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_05c9:  constrained. Game.GameMode
    IL_05cf:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_05d4:  ldstr      ")"
    IL_05d9:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string,
                                                                      string)
    IL_05de:  ldstr      ""
    IL_05e3:  call       instance void Game.GameMenuDialog::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_05e8:  ldloc.3
    IL_05e9:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_05ee:  ldfld      string Game.WorldSettings::OriginalSerializationVersion
    IL_05f3:  ldstr      "1.29"
    IL_05f8:  call       int32 [System.Runtime]System.String::CompareOrdinal(string,
                                                                             string)
    IL_05fd:  ldc.i4.0
    IL_05fe:  ble        IL_0f9c

    IL_0603:  ldloc.s    V_8
    IL_0605:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_060a:  newobj     instance void Game.LabelWidget::.ctor()
    IL_060f:  dup
    IL_0610:  ldstr      "Combat Statistics"
    IL_0615:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_061a:  dup
    IL_061b:  ldloc.s    V_5
    IL_061d:  callvirt   instance void Game.LabelWidget::set_Font(class [Engine]Engine.Media.BitmapFont)
    IL_0622:  dup
    IL_0623:  ldc.i4.1
    IL_0624:  callvirt   instance void Game.Widget::set_HorizontalAlignment(valuetype Game.WidgetAlignment)
    IL_0629:  dup
    IL_062a:  ldc.r4     0.0
    IL_062f:  ldc.r4     10.
    IL_0634:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0639:  callvirt   instance void Game.Widget::set_Margin(valuetype [Engine]Engine.Vector2)
    IL_063e:  dup
    IL_063f:  ldloc.s    V_7
    IL_0641:  callvirt   instance void Game.LabelWidget::set_Color(valuetype [Engine]Engine.Color)
    IL_0646:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
    IL_064b:  ldarg.0
    IL_064c:  ldloc.s    V_8
    IL_064e:  ldstr      "Players Killed"
    IL_0653:  ldloc.2
    IL_0654:  ldflda     int64 Game.PlayerStats::PlayerKills
    IL_0659:  ldstr      "N0"
    IL_065e:  call       instance string [System.Runtime]System.Int64::ToString(string)
    IL_0663:  ldstr      ""
    IL_0668:  call       instance void Game.GameMenuDialog::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_066d:  ldarg.0
    IL_066e:  ldloc.s    V_8
    IL_0670:  ldstr      "Land Creatures Killed"
    IL_0675:  ldloc.2
    IL_0676:  ldflda     int64 Game.PlayerStats::LandCreatureKills
    IL_067b:  ldstr      "N0"
    IL_0680:  call       instance string [System.Runtime]System.Int64::ToString(string)
    IL_0685:  ldstr      ""
    IL_068a:  call       instance void Game.GameMenuDialog::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_068f:  ldarg.0
    IL_0690:  ldloc.s    V_8
    IL_0692:  ldstr      "Water Creatures Killed"
    IL_0697:  ldloc.2
    IL_0698:  ldflda     int64 Game.PlayerStats::WaterCreatureKills
    IL_069d:  ldstr      "N0"
    IL_06a2:  call       instance string [System.Runtime]System.Int64::ToString(string)
    IL_06a7:  ldstr      ""
    IL_06ac:  call       instance void Game.GameMenuDialog::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_06b1:  ldarg.0
    IL_06b2:  ldloc.s    V_8
    IL_06b4:  ldstr      "Air Creatures Killed"
    IL_06b9:  ldloc.2
    IL_06ba:  ldflda     int64 Game.PlayerStats::AirCreatureKills
    IL_06bf:  ldstr      "N0"
    IL_06c4:  call       instance string [System.Runtime]System.Int64::ToString(string)
    IL_06c9:  ldstr      ""
    IL_06ce:  call       instance void Game.GameMenuDialog::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_06d3:  ldarg.0
    IL_06d4:  ldloc.s    V_8
    IL_06d6:  ldstr      "Melee Attacks"
    IL_06db:  ldloc.2
    IL_06dc:  ldflda     int64 Game.PlayerStats::MeleeAttacks
    IL_06e1:  ldstr      "N0"
    IL_06e6:  call       instance string [System.Runtime]System.Int64::ToString(string)
    IL_06eb:  ldstr      ""
    IL_06f0:  call       instance void Game.GameMenuDialog::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_06f5:  ldarg.0
    IL_06f6:  ldloc.s    V_8
    IL_06f8:  ldstr      "Melee Hits"
    IL_06fd:  ldloc.2
    IL_06fe:  ldflda     int64 Game.PlayerStats::MeleeHits
    IL_0703:  ldstr      "N0"
    IL_0708:  call       instance string [System.Runtime]System.Int64::ToString(string)
    IL_070d:  ldstr      "({0:0}%)"
    IL_0712:  ldc.i4.1
    IL_0713:  newarr     [System.Runtime]System.Object
    IL_0718:  dup
    IL_0719:  ldc.i4.0
    IL_071a:  ldloc.2
    IL_071b:  ldfld      int64 Game.PlayerStats::MeleeHits
    IL_0720:  brfalse.s  IL_073d

    IL_0722:  ldloc.2
    IL_0723:  ldfld      int64 Game.PlayerStats::MeleeHits
    IL_0728:  conv.r8
    IL_0729:  ldloc.2
    IL_072a:  ldfld      int64 Game.PlayerStats::MeleeAttacks
    IL_072f:  conv.r8
    IL_0730:  div
    IL_0731:  ldc.r8     100.
    IL_073a:  mul
    IL_073b:  br.s       IL_0746

    IL_073d:  ldc.r8     0.0
    IL_0746:  box        [System.Runtime]System.Double
    IL_074b:  stelem.ref
    IL_074c:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0751:  call       instance void Game.GameMenuDialog::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_0756:  ldarg.0
    IL_0757:  ldloc.s    V_8
    IL_0759:  ldstr      "Ranged Attacks"
    IL_075e:  ldloc.2
    IL_075f:  ldflda     int64 Game.PlayerStats::RangedAttacks
    IL_0764:  ldstr      "N0"
    IL_0769:  call       instance string [System.Runtime]System.Int64::ToString(string)
    IL_076e:  ldstr      ""
    IL_0773:  call       instance void Game.GameMenuDialog::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_0778:  ldarg.0
    IL_0779:  ldloc.s    V_8
    IL_077b:  ldstr      "Ranged Hits"
    IL_0780:  ldloc.2
    IL_0781:  ldflda     int64 Game.PlayerStats::RangedHits
    IL_0786:  ldstr      "N0"
    IL_078b:  call       instance string [System.Runtime]System.Int64::ToString(string)
    IL_0790:  ldstr      "({0:0}%)"
    IL_0795:  ldc.i4.1
    IL_0796:  newarr     [System.Runtime]System.Object
    IL_079b:  dup
    IL_079c:  ldc.i4.0
    IL_079d:  ldloc.2
    IL_079e:  ldfld      int64 Game.PlayerStats::RangedHits
    IL_07a3:  brfalse.s  IL_07c0

    IL_07a5:  ldloc.2
    IL_07a6:  ldfld      int64 Game.PlayerStats::RangedHits
    IL_07ab:  conv.r8
    IL_07ac:  ldloc.2
    IL_07ad:  ldfld      int64 Game.PlayerStats::RangedAttacks
    IL_07b2:  conv.r8
    IL_07b3:  div
    IL_07b4:  ldc.r8     100.
    IL_07bd:  mul
    IL_07be:  br.s       IL_07c9

    IL_07c0:  ldc.r8     0.0
    IL_07c9:  box        [System.Runtime]System.Double
    IL_07ce:  stelem.ref
    IL_07cf:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_07d4:  call       instance void Game.GameMenuDialog::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_07d9:  ldarg.0
    IL_07da:  ldloc.s    V_8
    IL_07dc:  ldstr      "Hits Received"
    IL_07e1:  ldloc.2
    IL_07e2:  ldflda     int64 Game.PlayerStats::HitsReceived
    IL_07e7:  ldstr      "N0"
    IL_07ec:  call       instance string [System.Runtime]System.Int64::ToString(string)
    IL_07f1:  ldstr      ""
    IL_07f6:  call       instance void Game.GameMenuDialog::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_07fb:  ldloc.s    V_8
    IL_07fd:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0802:  newobj     instance void Game.LabelWidget::.ctor()
    IL_0807:  dup
    IL_0808:  ldstr      "Work Statistics"
    IL_080d:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0812:  dup
    IL_0813:  ldloc.s    V_5
    IL_0815:  callvirt   instance void Game.LabelWidget::set_Font(class [Engine]Engine.Media.BitmapFont)
    IL_081a:  dup
    IL_081b:  ldc.i4.1
    IL_081c:  callvirt   instance void Game.Widget::set_HorizontalAlignment(valuetype Game.WidgetAlignment)
    IL_0821:  dup
    IL_0822:  ldc.r4     0.0
    IL_0827:  ldc.r4     10.
    IL_082c:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0831:  callvirt   instance void Game.Widget::set_Margin(valuetype [Engine]Engine.Vector2)
    IL_0836:  dup
    IL_0837:  ldloc.s    V_7
    IL_0839:  callvirt   instance void Game.LabelWidget::set_Color(valuetype [Engine]Engine.Color)
    IL_083e:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
    IL_0843:  ldarg.0
    IL_0844:  ldloc.s    V_8
    IL_0846:  ldstr      "Blocks Dug"
    IL_084b:  ldloc.2
    IL_084c:  ldflda     int64 Game.PlayerStats::BlocksDug
    IL_0851:  ldstr      "N0"
    IL_0856:  call       instance string [System.Runtime]System.Int64::ToString(string)
    IL_085b:  ldstr      ""
    IL_0860:  call       instance void Game.GameMenuDialog::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_0865:  ldarg.0
    IL_0866:  ldloc.s    V_8
    IL_0868:  ldstr      "Blocks Placed"
    IL_086d:  ldloc.2
    IL_086e:  ldflda     int64 Game.PlayerStats::BlocksPlaced
    IL_0873:  ldstr      "N0"
    IL_0878:  call       instance string [System.Runtime]System.Int64::ToString(string)
    IL_087d:  ldstr      ""
    IL_0882:  call       instance void Game.GameMenuDialog::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_0887:  ldarg.0
    IL_0888:  ldloc.s    V_8
    IL_088a:  ldstr      "Blocks Interacted With"
    IL_088f:  ldloc.2
    IL_0890:  ldflda     int64 Game.PlayerStats::BlocksInteracted
    IL_0895:  ldstr      "N0"
    IL_089a:  call       instance string [System.Runtime]System.Int64::ToString(string)
    IL_089f:  ldstr      ""
    IL_08a4:  call       instance void Game.GameMenuDialog::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_08a9:  ldarg.0
    IL_08aa:  ldloc.s    V_8
    IL_08ac:  ldstr      "Items Crafted/Smelted"
    IL_08b1:  ldloc.2
    IL_08b2:  ldflda     int64 Game.PlayerStats::ItemsCrafted
    IL_08b7:  ldstr      "N0"
    IL_08bc:  call       instance string [System.Runtime]System.Int64::ToString(string)
    IL_08c1:  ldstr      ""
    IL_08c6:  call       instance void Game.GameMenuDialog::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_08cb:  ldarg.0
    IL_08cc:  ldloc.s    V_8
    IL_08ce:  ldstr      "Furniture Made"
    IL_08d3:  ldloc.2
    IL_08d4:  ldflda     int64 Game.PlayerStats::FurnitureItemsMade
    IL_08d9:  ldstr      "N0"
    IL_08de:  call       instance string [System.Runtime]System.Int64::ToString(string)
    IL_08e3:  ldstr      ""
    IL_08e8:  call       instance void Game.GameMenuDialog::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_08ed:  ldloc.s    V_8
    IL_08ef:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_08f4:  newobj     instance void Game.LabelWidget::.ctor()
    IL_08f9:  dup
    IL_08fa:  ldstr      "Movement Statistics"
    IL_08ff:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0904:  dup
    IL_0905:  ldloc.s    V_5
    IL_0907:  callvirt   instance void Game.LabelWidget::set_Font(class [Engine]Engine.Media.BitmapFont)
    IL_090c:  dup
    IL_090d:  ldc.i4.1
    IL_090e:  callvirt   instance void Game.Widget::set_HorizontalAlignment(valuetype Game.WidgetAlignment)
    IL_0913:  dup
    IL_0914:  ldc.r4     0.0
    IL_0919:  ldc.r4     10.
    IL_091e:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0923:  callvirt   instance void Game.Widget::set_Margin(valuetype [Engine]Engine.Vector2)
    IL_0928:  dup
    IL_0929:  ldloc.s    V_7
    IL_092b:  callvirt   instance void Game.LabelWidget::set_Color(valuetype [Engine]Engine.Color)
    IL_0930:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
    IL_0935:  ldarg.0
    IL_0936:  ldloc.s    V_8
    IL_0938:  ldstr      "Total Distance Travelled"
    IL_093d:  ldloc.2
    IL_093e:  ldfld      float64 Game.PlayerStats::DistanceTravelled
    IL_0943:  call       string Game.GameMenuDialog::FormatDistance(float64)
    IL_0948:  ldstr      ""
    IL_094d:  call       instance void Game.GameMenuDialog::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_0952:  ldarg.0
    IL_0953:  ldloc.s    V_8
    IL_0955:  ldstr      "Distance Walked"
    IL_095a:  ldloc.2
    IL_095b:  ldfld      float64 Game.PlayerStats::DistanceWalked
    IL_0960:  call       string Game.GameMenuDialog::FormatDistance(float64)
    IL_0965:  ldstr      "({0:0.0}%)"
    IL_096a:  ldc.i4.1
    IL_096b:  newarr     [System.Runtime]System.Object
    IL_0970:  dup
    IL_0971:  ldc.i4.0
    IL_0972:  ldloc.2
    IL_0973:  ldfld      float64 Game.PlayerStats::DistanceTravelled
    IL_0978:  ldc.r8     0.0
    IL_0981:  bgt.s      IL_098e

    IL_0983:  ldc.r8     0.0
    IL_098c:  br.s       IL_09a5

    IL_098e:  ldloc.2
    IL_098f:  ldfld      float64 Game.PlayerStats::DistanceWalked
    IL_0994:  ldloc.2
    IL_0995:  ldfld      float64 Game.PlayerStats::DistanceTravelled
    IL_099a:  div
    IL_099b:  ldc.r8     100.
    IL_09a4:  mul
    IL_09a5:  box        [System.Runtime]System.Double
    IL_09aa:  stelem.ref
    IL_09ab:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_09b0:  call       instance void Game.GameMenuDialog::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_09b5:  ldarg.0
    IL_09b6:  ldloc.s    V_8
    IL_09b8:  ldstr      "Distance Fallen"
    IL_09bd:  ldloc.2
    IL_09be:  ldfld      float64 Game.PlayerStats::DistanceFallen
    IL_09c3:  call       string Game.GameMenuDialog::FormatDistance(float64)
    IL_09c8:  ldstr      "({0:0.0}%)"
    IL_09cd:  ldc.i4.1
    IL_09ce:  newarr     [System.Runtime]System.Object
    IL_09d3:  dup
    IL_09d4:  ldc.i4.0
    IL_09d5:  ldloc.2
    IL_09d6:  ldfld      float64 Game.PlayerStats::DistanceTravelled
    IL_09db:  ldc.r8     0.0
    IL_09e4:  bgt.s      IL_09f1

    IL_09e6:  ldc.r8     0.0
    IL_09ef:  br.s       IL_0a08

    IL_09f1:  ldloc.2
    IL_09f2:  ldfld      float64 Game.PlayerStats::DistanceFallen
    IL_09f7:  ldloc.2
    IL_09f8:  ldfld      float64 Game.PlayerStats::DistanceTravelled
    IL_09fd:  div
    IL_09fe:  ldc.r8     100.
    IL_0a07:  mul
    IL_0a08:  box        [System.Runtime]System.Double
    IL_0a0d:  stelem.ref
    IL_0a0e:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0a13:  call       instance void Game.GameMenuDialog::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_0a18:  ldarg.0
    IL_0a19:  ldloc.s    V_8
    IL_0a1b:  ldstr      "Distance Climbed"
    IL_0a20:  ldloc.2
    IL_0a21:  ldfld      float64 Game.PlayerStats::DistanceClimbed
    IL_0a26:  call       string Game.GameMenuDialog::FormatDistance(float64)
    IL_0a2b:  ldstr      "({0:0.0}%)"
    IL_0a30:  ldc.i4.1
    IL_0a31:  newarr     [System.Runtime]System.Object
    IL_0a36:  dup
    IL_0a37:  ldc.i4.0
    IL_0a38:  ldloc.2
    IL_0a39:  ldfld      float64 Game.PlayerStats::DistanceTravelled
    IL_0a3e:  ldc.r8     0.0
    IL_0a47:  bgt.s      IL_0a54

    IL_0a49:  ldc.r8     0.0
    IL_0a52:  br.s       IL_0a6b

    IL_0a54:  ldloc.2
    IL_0a55:  ldfld      float64 Game.PlayerStats::DistanceClimbed
    IL_0a5a:  ldloc.2
    IL_0a5b:  ldfld      float64 Game.PlayerStats::DistanceTravelled
    IL_0a60:  div
    IL_0a61:  ldc.r8     100.
    IL_0a6a:  mul
    IL_0a6b:  box        [System.Runtime]System.Double
    IL_0a70:  stelem.ref
    IL_0a71:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0a76:  call       instance void Game.GameMenuDialog::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_0a7b:  ldarg.0
    IL_0a7c:  ldloc.s    V_8
    IL_0a7e:  ldstr      "Distance Flown"
    IL_0a83:  ldloc.2
    IL_0a84:  ldfld      float64 Game.PlayerStats::DistanceFlown
    IL_0a89:  call       string Game.GameMenuDialog::FormatDistance(float64)
    IL_0a8e:  ldstr      "({0:0.0}%)"
    IL_0a93:  ldc.i4.1
    IL_0a94:  newarr     [System.Runtime]System.Object
    IL_0a99:  dup
    IL_0a9a:  ldc.i4.0
    IL_0a9b:  ldloc.2
    IL_0a9c:  ldfld      float64 Game.PlayerStats::DistanceTravelled
    IL_0aa1:  ldc.r8     0.0
    IL_0aaa:  bgt.s      IL_0ab7

    IL_0aac:  ldc.r8     0.0
    IL_0ab5:  br.s       IL_0ace

    IL_0ab7:  ldloc.2
    IL_0ab8:  ldfld      float64 Game.PlayerStats::DistanceFlown
    IL_0abd:  ldloc.2
    IL_0abe:  ldfld      float64 Game.PlayerStats::DistanceTravelled
    IL_0ac3:  div
    IL_0ac4:  ldc.r8     100.
    IL_0acd:  mul
    IL_0ace:  box        [System.Runtime]System.Double
    IL_0ad3:  stelem.ref
    IL_0ad4:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0ad9:  call       instance void Game.GameMenuDialog::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_0ade:  ldarg.0
    IL_0adf:  ldloc.s    V_8
    IL_0ae1:  ldstr      "Distance Swum"
    IL_0ae6:  ldloc.2
    IL_0ae7:  ldfld      float64 Game.PlayerStats::DistanceSwam
    IL_0aec:  call       string Game.GameMenuDialog::FormatDistance(float64)
    IL_0af1:  ldstr      "({0:0.0}%)"
    IL_0af6:  ldc.i4.1
    IL_0af7:  newarr     [System.Runtime]System.Object
    IL_0afc:  dup
    IL_0afd:  ldc.i4.0
    IL_0afe:  ldloc.2
    IL_0aff:  ldfld      float64 Game.PlayerStats::DistanceTravelled
    IL_0b04:  ldc.r8     0.0
    IL_0b0d:  bgt.s      IL_0b1a

    IL_0b0f:  ldc.r8     0.0
    IL_0b18:  br.s       IL_0b31

    IL_0b1a:  ldloc.2
    IL_0b1b:  ldfld      float64 Game.PlayerStats::DistanceSwam
    IL_0b20:  ldloc.2
    IL_0b21:  ldfld      float64 Game.PlayerStats::DistanceTravelled
    IL_0b26:  div
    IL_0b27:  ldc.r8     100.
    IL_0b30:  mul
    IL_0b31:  box        [System.Runtime]System.Double
    IL_0b36:  stelem.ref
    IL_0b37:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0b3c:  call       instance void Game.GameMenuDialog::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_0b41:  ldarg.0
    IL_0b42:  ldloc.s    V_8
    IL_0b44:  ldstr      "Distance Ridden"
    IL_0b49:  ldloc.2
    IL_0b4a:  ldfld      float64 Game.PlayerStats::DistanceRidden
    IL_0b4f:  call       string Game.GameMenuDialog::FormatDistance(float64)
    IL_0b54:  ldstr      "({0:0.0}%)"
    IL_0b59:  ldc.i4.1
    IL_0b5a:  newarr     [System.Runtime]System.Object
    IL_0b5f:  dup
    IL_0b60:  ldc.i4.0
    IL_0b61:  ldloc.2
    IL_0b62:  ldfld      float64 Game.PlayerStats::DistanceTravelled
    IL_0b67:  ldc.r8     0.0
    IL_0b70:  bgt.s      IL_0b7d

    IL_0b72:  ldc.r8     0.0
    IL_0b7b:  br.s       IL_0b94

    IL_0b7d:  ldloc.2
    IL_0b7e:  ldfld      float64 Game.PlayerStats::DistanceRidden
    IL_0b83:  ldloc.2
    IL_0b84:  ldfld      float64 Game.PlayerStats::DistanceTravelled
    IL_0b89:  div
    IL_0b8a:  ldc.r8     100.
    IL_0b93:  mul
    IL_0b94:  box        [System.Runtime]System.Double
    IL_0b99:  stelem.ref
    IL_0b9a:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0b9f:  call       instance void Game.GameMenuDialog::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_0ba4:  ldarg.0
    IL_0ba5:  ldloc.s    V_8
    IL_0ba7:  ldstr      "Lowest Altitude"
    IL_0bac:  ldloc.2
    IL_0bad:  ldfld      float64 Game.PlayerStats::LowestAltitude
    IL_0bb2:  call       string Game.GameMenuDialog::FormatDistance(float64)
    IL_0bb7:  ldstr      ""
    IL_0bbc:  call       instance void Game.GameMenuDialog::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_0bc1:  ldarg.0
    IL_0bc2:  ldloc.s    V_8
    IL_0bc4:  ldstr      "Highest Altitude"
    IL_0bc9:  ldloc.2
    IL_0bca:  ldfld      float64 Game.PlayerStats::HighestAltitude
    IL_0bcf:  call       string Game.GameMenuDialog::FormatDistance(float64)
    IL_0bd4:  ldstr      ""
    IL_0bd9:  call       instance void Game.GameMenuDialog::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_0bde:  ldarg.0
    IL_0bdf:  ldloc.s    V_8
    IL_0be1:  ldstr      "Deepest Dive"
    IL_0be6:  ldloc.2
    IL_0be7:  ldflda     float64 Game.PlayerStats::DeepestDive
    IL_0bec:  ldstr      "N1"
    IL_0bf1:  call       instance string [System.Runtime]System.Double::ToString(string)
    IL_0bf6:  ldstr      "m"
    IL_0bfb:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_0c00:  ldstr      ""
    IL_0c05:  call       instance void Game.GameMenuDialog::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_0c0a:  ldarg.0
    IL_0c0b:  ldloc.s    V_8
    IL_0c0d:  ldstr      "Jumps"
    IL_0c12:  ldloc.2
    IL_0c13:  ldflda     int64 Game.PlayerStats::Jumps
    IL_0c18:  ldstr      "N0"
    IL_0c1d:  call       instance string [System.Runtime]System.Int64::ToString(string)
    IL_0c22:  ldstr      ""
    IL_0c27:  call       instance void Game.GameMenuDialog::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_0c2c:  ldloc.s    V_8
    IL_0c2e:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0c33:  newobj     instance void Game.LabelWidget::.ctor()
    IL_0c38:  dup
    IL_0c39:  ldstr      "Body Statistics"
    IL_0c3e:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0c43:  dup
    IL_0c44:  ldloc.s    V_5
    IL_0c46:  callvirt   instance void Game.LabelWidget::set_Font(class [Engine]Engine.Media.BitmapFont)
    IL_0c4b:  dup
    IL_0c4c:  ldc.i4.1
    IL_0c4d:  callvirt   instance void Game.Widget::set_HorizontalAlignment(valuetype Game.WidgetAlignment)
    IL_0c52:  dup
    IL_0c53:  ldc.r4     0.0
    IL_0c58:  ldc.r4     10.
    IL_0c5d:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0c62:  callvirt   instance void Game.Widget::set_Margin(valuetype [Engine]Engine.Vector2)
    IL_0c67:  dup
    IL_0c68:  ldloc.s    V_7
    IL_0c6a:  callvirt   instance void Game.LabelWidget::set_Color(valuetype [Engine]Engine.Color)
    IL_0c6f:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
    IL_0c74:  ldarg.0
    IL_0c75:  ldloc.s    V_8
    IL_0c77:  ldstr      "Total Health Lost"
    IL_0c7c:  ldloc.2
    IL_0c7d:  ldfld      float64 Game.PlayerStats::TotalHealthLost
    IL_0c82:  ldc.r8     100.
    IL_0c8b:  mul
    IL_0c8c:  stloc.s    V_18
    IL_0c8e:  ldloca.s   V_18
    IL_0c90:  ldstr      "N0"
    IL_0c95:  call       instance string [System.Runtime]System.Double::ToString(string)
    IL_0c9a:  ldstr      "%"
    IL_0c9f:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_0ca4:  ldstr      ""
    IL_0ca9:  call       instance void Game.GameMenuDialog::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_0cae:  ldarg.0
    IL_0caf:  ldloc.s    V_8
    IL_0cb1:  ldstr      "Food Eaten"
    IL_0cb6:  ldloc.2
    IL_0cb7:  ldflda     int64 Game.PlayerStats::FoodItemsEaten
    IL_0cbc:  ldstr      "N0"
    IL_0cc1:  call       instance string [System.Runtime]System.Int64::ToString(string)
    IL_0cc6:  ldstr      " items"
    IL_0ccb:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_0cd0:  ldstr      ""
    IL_0cd5:  call       instance void Game.GameMenuDialog::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_0cda:  ldarg.0
    IL_0cdb:  ldloc.s    V_8
    IL_0cdd:  ldstr      "Went To Sleep"
    IL_0ce2:  ldloc.2
    IL_0ce3:  ldflda     int64 Game.PlayerStats::TimesWentToSleep
    IL_0ce8:  ldstr      "N0"
    IL_0ced:  call       instance string [System.Runtime]System.Int64::ToString(string)
    IL_0cf2:  ldstr      " times"
    IL_0cf7:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_0cfc:  ldstr      ""
    IL_0d01:  call       instance void Game.GameMenuDialog::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_0d06:  ldarg.0
    IL_0d07:  ldloc.s    V_8
    IL_0d09:  ldstr      "Total Time Slept"
    IL_0d0e:  ldloc.2
    IL_0d0f:  ldfld      float64 Game.PlayerStats::TimeSlept
    IL_0d14:  ldc.r8     1200.
    IL_0d1d:  div
    IL_0d1e:  stloc.s    V_18
    IL_0d20:  ldloca.s   V_18
    IL_0d22:  ldstr      "N1"
    IL_0d27:  call       instance string [System.Runtime]System.Double::ToString(string)
    IL_0d2c:  ldstr      " days"
    IL_0d31:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_0d36:  ldstr      ""
    IL_0d3b:  call       instance void Game.GameMenuDialog::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_0d40:  ldarg.0
    IL_0d41:  ldloc.s    V_8
    IL_0d43:  ldstr      "Became Sick"
    IL_0d48:  ldloc.2
    IL_0d49:  ldflda     int64 Game.PlayerStats::TimesWasSick
    IL_0d4e:  ldstr      "N0"
    IL_0d53:  call       instance string [System.Runtime]System.Int64::ToString(string)
    IL_0d58:  ldstr      " times"
    IL_0d5d:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_0d62:  ldstr      ""
    IL_0d67:  call       instance void Game.GameMenuDialog::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_0d6c:  ldarg.0
    IL_0d6d:  ldloc.s    V_8
    IL_0d6f:  ldstr      "Vomited"
    IL_0d74:  ldloc.2
    IL_0d75:  ldflda     int64 Game.PlayerStats::TimesPuked
    IL_0d7a:  ldstr      "N0"
    IL_0d7f:  call       instance string [System.Runtime]System.Int64::ToString(string)
    IL_0d84:  ldstr      " times"
    IL_0d89:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_0d8e:  ldstr      ""
    IL_0d93:  call       instance void Game.GameMenuDialog::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_0d98:  ldarg.0
    IL_0d99:  ldloc.s    V_8
    IL_0d9b:  ldstr      "Contracted Flu"
    IL_0da0:  ldloc.2
    IL_0da1:  ldflda     int64 Game.PlayerStats::TimesHadFlu
    IL_0da6:  ldstr      "N0"
    IL_0dab:  call       instance string [System.Runtime]System.Int64::ToString(string)
    IL_0db0:  ldstr      " times"
    IL_0db5:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_0dba:  ldstr      ""
    IL_0dbf:  call       instance void Game.GameMenuDialog::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_0dc4:  ldloc.s    V_8
    IL_0dc6:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0dcb:  newobj     instance void Game.LabelWidget::.ctor()
    IL_0dd0:  dup
    IL_0dd1:  ldstr      "Other Statistics"
    IL_0dd6:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0ddb:  dup
    IL_0ddc:  ldloc.s    V_5
    IL_0dde:  callvirt   instance void Game.LabelWidget::set_Font(class [Engine]Engine.Media.BitmapFont)
    IL_0de3:  dup
    IL_0de4:  ldc.i4.1
    IL_0de5:  callvirt   instance void Game.Widget::set_HorizontalAlignment(valuetype Game.WidgetAlignment)
    IL_0dea:  dup
    IL_0deb:  ldc.r4     0.0
    IL_0df0:  ldc.r4     10.
    IL_0df5:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0dfa:  callvirt   instance void Game.Widget::set_Margin(valuetype [Engine]Engine.Vector2)
    IL_0dff:  dup
    IL_0e00:  ldloc.s    V_7
    IL_0e02:  callvirt   instance void Game.LabelWidget::set_Color(valuetype [Engine]Engine.Color)
    IL_0e07:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
    IL_0e0c:  ldarg.0
    IL_0e0d:  ldloc.s    V_8
    IL_0e0f:  ldstr      "Struck By Lightning"
    IL_0e14:  ldloc.2
    IL_0e15:  ldflda     int64 Game.PlayerStats::StruckByLightning
    IL_0e1a:  ldstr      "N0"
    IL_0e1f:  call       instance string [System.Runtime]System.Int64::ToString(string)
    IL_0e24:  ldstr      " times"
    IL_0e29:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_0e2e:  ldstr      ""
    IL_0e33:  call       instance void Game.GameMenuDialog::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_0e38:  ldarg.0
    IL_0e39:  ldloc.s    V_8
    IL_0e3b:  ldstr      "Easiest Game Mode Used"
    IL_0e40:  ldloc.2
    IL_0e41:  ldfld      valuetype Game.GameMode Game.PlayerStats::EasiestModeUsed
    IL_0e46:  stloc.s    V_20
    IL_0e48:  ldloca.s   V_20
    IL_0e4a:  constrained. Game.GameMode
    IL_0e50:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_0e55:  ldstr      ""
    IL_0e5a:  call       instance void Game.GameMenuDialog::AddStat(class Game.ContainerWidget,
                                                                    string,
                                                                    string,
                                                                    string)
    IL_0e5f:  ldloc.2
    IL_0e60:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.PlayerStats/DeathRecord> Game.PlayerStats::get_DeathRecords()
    IL_0e65:  stloc.s    V_21
    IL_0e67:  ldloca.s   V_21
    IL_0e69:  call       instance int32 valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.PlayerStats/DeathRecord>::get_Count()
    IL_0e6e:  ldc.i4.0
    IL_0e6f:  ble        IL_0ff2

    IL_0e74:  ldloc.s    V_8
    IL_0e76:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0e7b:  newobj     instance void Game.LabelWidget::.ctor()
    IL_0e80:  dup
    IL_0e81:  ldstr      "Death Record"
    IL_0e86:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0e8b:  dup
    IL_0e8c:  ldloc.s    V_5
    IL_0e8e:  callvirt   instance void Game.LabelWidget::set_Font(class [Engine]Engine.Media.BitmapFont)
    IL_0e93:  dup
    IL_0e94:  ldc.i4.1
    IL_0e95:  callvirt   instance void Game.Widget::set_HorizontalAlignment(valuetype Game.WidgetAlignment)
    IL_0e9a:  dup
    IL_0e9b:  ldc.r4     0.0
    IL_0ea0:  ldc.r4     10.
    IL_0ea5:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0eaa:  callvirt   instance void Game.Widget::set_Margin(valuetype [Engine]Engine.Vector2)
    IL_0eaf:  dup
    IL_0eb0:  ldloc.s    V_7
    IL_0eb2:  callvirt   instance void Game.LabelWidget::set_Color(valuetype [Engine]Engine.Color)
    IL_0eb7:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
    IL_0ebc:  ldloc.2
    IL_0ebd:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.PlayerStats/DeathRecord> Game.PlayerStats::get_DeathRecords()
    IL_0ec2:  stloc.s    V_21
    IL_0ec4:  ldloca.s   V_21
    IL_0ec6:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.PlayerStats/DeathRecord>::GetEnumerator()
    IL_0ecb:  stloc.s    V_22
    .try
    {
      IL_0ecd:  br         IL_0f80

      IL_0ed2:  ldloca.s   V_22
      IL_0ed4:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype Game.PlayerStats/DeathRecord>::get_Current()
      IL_0ed9:  stloc.s    V_23
      IL_0edb:  ldloc.s    V_23
      IL_0edd:  ldfld      float64 Game.PlayerStats/DeathRecord::Day
      IL_0ee2:  ldc.r8     1.
      IL_0eeb:  call       float64 [Engine]Engine.MathUtils::Remainder(float64,
                                                                       float64)
      IL_0ef0:  conv.r4
      IL_0ef1:  stloc.s    V_24
      IL_0ef3:  ldloc.s    V_24
      IL_0ef5:  ldc.r4     0.2
      IL_0efa:  blt.s      IL_0f05

      IL_0efc:  ldloc.s    V_24
      IL_0efe:  ldc.r4     0.80000001
      IL_0f03:  blt.un.s   IL_0f0e

      IL_0f05:  ldstr      "Night of"
      IL_0f0a:  stloc.s    V_25
      IL_0f0c:  br.s       IL_0f39

      IL_0f0e:  ldloc.s    V_24
      IL_0f10:  ldc.r4     0.69999999
      IL_0f15:  blt.un.s   IL_0f20

      IL_0f17:  ldstr      "Evening of"
      IL_0f1c:  stloc.s    V_25
      IL_0f1e:  br.s       IL_0f39

      IL_0f20:  ldloc.s    V_24
      IL_0f22:  ldc.r4     0.5
      IL_0f27:  blt.un.s   IL_0f32

      IL_0f29:  ldstr      "Afternoon of"
      IL_0f2e:  stloc.s    V_25
      IL_0f30:  br.s       IL_0f39

      IL_0f32:  ldstr      "Morning of"
      IL_0f37:  stloc.s    V_25
      IL_0f39:  ldarg.0
      IL_0f3a:  ldloc.s    V_8
      IL_0f3c:  ldstr      "{1} day {0:0}"
      IL_0f41:  ldc.i4.2
      IL_0f42:  newarr     [System.Runtime]System.Object
      IL_0f47:  dup
      IL_0f48:  ldc.i4.0
      IL_0f49:  ldloc.s    V_23
      IL_0f4b:  ldfld      float64 Game.PlayerStats/DeathRecord::Day
      IL_0f50:  call       float64 [Engine]Engine.MathUtils::Floor(float64)
      IL_0f55:  ldc.r8     1.
      IL_0f5e:  add
      IL_0f5f:  box        [System.Runtime]System.Double
      IL_0f64:  stelem.ref
      IL_0f65:  dup
      IL_0f66:  ldc.i4.1
      IL_0f67:  ldloc.s    V_25
      IL_0f69:  stelem.ref
      IL_0f6a:  call       string [System.Runtime]System.String::Format(string,
                                                                        object[])
      IL_0f6f:  ldstr      ""
      IL_0f74:  ldloc.s    V_23
      IL_0f76:  ldfld      string Game.PlayerStats/DeathRecord::Cause
      IL_0f7b:  call       instance void Game.GameMenuDialog::AddStat(class Game.ContainerWidget,
                                                                      string,
                                                                      string,
                                                                      string)
      IL_0f80:  ldloca.s   V_22
      IL_0f82:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype Game.PlayerStats/DeathRecord>::MoveNext()
      IL_0f87:  brtrue     IL_0ed2

      IL_0f8c:  leave.s    IL_0ff2

    }  // end .try
    finally
    {
      IL_0f8e:  ldloca.s   V_22
      IL_0f90:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype Game.PlayerStats/DeathRecord>
      IL_0f96:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0f9b:  endfinally
    }  // end handler
    IL_0f9c:  ldloc.s    V_8
    IL_0f9e:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0fa3:  newobj     instance void Game.LabelWidget::.ctor()
    IL_0fa8:  dup
    IL_0fa9:  ldstr      "No player statistics available because world was s"
    + "tarted in an old version of the game."
    IL_0fae:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0fb3:  dup
    IL_0fb4:  ldc.i4.1
    IL_0fb5:  callvirt   instance void Game.LabelWidget::set_WordWrap(bool)
    IL_0fba:  dup
    IL_0fbb:  ldloc.s    V_6
    IL_0fbd:  callvirt   instance void Game.LabelWidget::set_Font(class [Engine]Engine.Media.BitmapFont)
    IL_0fc2:  dup
    IL_0fc3:  ldc.i4.1
    IL_0fc4:  callvirt   instance void Game.Widget::set_HorizontalAlignment(valuetype Game.WidgetAlignment)
    IL_0fc9:  dup
    IL_0fca:  ldc.i4.1
    IL_0fcb:  callvirt   instance void Game.LabelWidget::set_TextAnchor(valuetype [Engine]Engine.Graphics.TextAnchor)
    IL_0fd0:  dup
    IL_0fd1:  ldc.r4     20.
    IL_0fd6:  ldc.r4     10.
    IL_0fdb:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0fe0:  callvirt   instance void Game.Widget::set_Margin(valuetype [Engine]Engine.Vector2)
    IL_0fe5:  dup
    IL_0fe6:  ldloc.s    V_7
    IL_0fe8:  callvirt   instance void Game.LabelWidget::set_Color(valuetype [Engine]Engine.Color)
    IL_0fed:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
    IL_0ff2:  ret
  } // end of method GameMenuDialog::.ctor

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       564 (0x234)
    .maxstack  6
    .locals init (class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>> V_0,
             class Game.ListSelectionDialog V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0006:  ldstr      "More"
    IL_000b:  ldc.i4.1
    IL_000c:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0011:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0016:  brfalse    IL_01c1

    IL_001b:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>>::.ctor()
    IL_0020:  stloc.0
    IL_0021:  ldarg.0
    IL_0022:  ldfld      bool Game.GameMenuDialog::m_adventureRestartExists
    IL_0027:  brfalse.s  IL_006a

    IL_0029:  call       class Game.WorldInfo Game.GameManager::get_WorldInfo()
    IL_002e:  ldfld      class Game.WorldSettings Game.WorldInfo::WorldSettings
    IL_0033:  ldfld      valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_0038:  ldc.i4.4
    IL_0039:  bne.un.s   IL_006a

    IL_003b:  ldloc.0
    IL_003c:  ldstr      "Restart Adventure"
    IL_0041:  ldsfld     class [System.Runtime]System.Action Game.GameMenuDialog/'<>c'::'<>9__6_0'
    IL_0046:  dup
    IL_0047:  brtrue.s   IL_0060

    IL_0049:  pop
    IL_004a:  ldsfld     class Game.GameMenuDialog/'<>c' Game.GameMenuDialog/'<>c'::'<>9'
    IL_004f:  ldftn      instance void Game.GameMenuDialog/'<>c'::'<Update>b__6_0'()
    IL_0055:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_005a:  dup
    IL_005b:  stsfld     class [System.Runtime]System.Action Game.GameMenuDialog/'<>c'::'<>9__6_0'
    IL_0060:  newobj     instance void class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>::.ctor(!0,
                                                                                                                               !1)
    IL_0065:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>>::Add(!0)
    IL_006a:  ldarg.0
    IL_006b:  call       instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.ActiveExternalContentInfo> Game.GameMenuDialog::GetRateableItems()
    IL_0070:  call       !!0 [System.Linq]System.Linq.Enumerable::FirstOrDefault<class Game.ActiveExternalContentInfo>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_0075:  brfalse.s  IL_009a

    IL_0077:  call       class Game.UserInfo Game.UserManager::get_ActiveUser()
    IL_007c:  brfalse.s  IL_009a

    IL_007e:  ldloc.0
    IL_007f:  ldstr      "Rate"
    IL_0084:  ldarg.0
    IL_0085:  ldftn      instance void Game.GameMenuDialog::'<Update>b__6_2'()
    IL_008b:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0090:  newobj     instance void class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>::.ctor(!0,
                                                                                                                               !1)
    IL_0095:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>>::Add(!0)
    IL_009a:  ldloc.0
    IL_009b:  ldstr      "Edit Players"
    IL_00a0:  ldarg.0
    IL_00a1:  ldftn      instance void Game.GameMenuDialog::'<Update>b__6_5'()
    IL_00a7:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00ac:  newobj     instance void class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>::.ctor(!0,
                                                                                                                               !1)
    IL_00b1:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>>::Add(!0)
    IL_00b6:  ldloc.0
    IL_00b7:  ldstr      "Settings"
    IL_00bc:  ldsfld     class [System.Runtime]System.Action Game.GameMenuDialog/'<>c'::'<>9__6_6'
    IL_00c1:  dup
    IL_00c2:  brtrue.s   IL_00db

    IL_00c4:  pop
    IL_00c5:  ldsfld     class Game.GameMenuDialog/'<>c' Game.GameMenuDialog/'<>c'::'<>9'
    IL_00ca:  ldftn      instance void Game.GameMenuDialog/'<>c'::'<Update>b__6_6'()
    IL_00d0:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00d5:  dup
    IL_00d6:  stsfld     class [System.Runtime]System.Action Game.GameMenuDialog/'<>c'::'<>9__6_6'
    IL_00db:  newobj     instance void class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>::.ctor(!0,
                                                                                                                               !1)
    IL_00e0:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>>::Add(!0)
    IL_00e5:  ldloc.0
    IL_00e6:  ldstr      "Help"
    IL_00eb:  ldsfld     class [System.Runtime]System.Action Game.GameMenuDialog/'<>c'::'<>9__6_7'
    IL_00f0:  dup
    IL_00f1:  brtrue.s   IL_010a

    IL_00f3:  pop
    IL_00f4:  ldsfld     class Game.GameMenuDialog/'<>c' Game.GameMenuDialog/'<>c'::'<>9'
    IL_00f9:  ldftn      instance void Game.GameMenuDialog/'<>c'::'<Update>b__6_7'()
    IL_00ff:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0104:  dup
    IL_0105:  stsfld     class [System.Runtime]System.Action Game.GameMenuDialog/'<>c'::'<>9__6_7'
    IL_010a:  newobj     instance void class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>::.ctor(!0,
                                                                                                                               !1)
    IL_010f:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>>::Add(!0)
    IL_0114:  ldarg.0
    IL_0115:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_011a:  callvirt   instance valuetype Game.WidgetInputDevice Game.WidgetInput::get_Devices()
    IL_011f:  ldc.i4.3
    IL_0120:  and
    IL_0121:  brfalse.s  IL_013f

    IL_0123:  ldloc.0
    IL_0124:  ldstr      "Keyboard Controls"
    IL_0129:  ldarg.0
    IL_012a:  ldftn      instance void Game.GameMenuDialog::'<Update>b__6_8'()
    IL_0130:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0135:  newobj     instance void class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>::.ctor(!0,
                                                                                                                               !1)
    IL_013a:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>>::Add(!0)
    IL_013f:  ldarg.0
    IL_0140:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0145:  callvirt   instance valuetype Game.WidgetInputDevice Game.WidgetInput::get_Devices()
    IL_014a:  ldc.i4.s   120
    IL_014c:  and
    IL_014d:  brfalse.s  IL_016b

    IL_014f:  ldloc.0
    IL_0150:  ldstr      "Gamepad Controls"
    IL_0155:  ldarg.0
    IL_0156:  ldftn      instance void Game.GameMenuDialog::'<Update>b__6_9'()
    IL_015c:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0161:  newobj     instance void class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>::.ctor(!0,
                                                                                                                               !1)
    IL_0166:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>>::Add(!0)
    IL_016b:  ldstr      "More Actions"
    IL_0170:  ldloc.0
    IL_0171:  ldc.r4     60.
    IL_0176:  ldsfld     class [System.Runtime]System.Func`2<object,string> Game.GameMenuDialog/'<>c'::'<>9__6_10'
    IL_017b:  dup
    IL_017c:  brtrue.s   IL_0195

    IL_017e:  pop
    IL_017f:  ldsfld     class Game.GameMenuDialog/'<>c' Game.GameMenuDialog/'<>c'::'<>9'
    IL_0184:  ldftn      instance string Game.GameMenuDialog/'<>c'::'<Update>b__6_10'(object)
    IL_018a:  newobj     instance void class [System.Runtime]System.Func`2<object,string>::.ctor(object,
                                                                                                 native int)
    IL_018f:  dup
    IL_0190:  stsfld     class [System.Runtime]System.Func`2<object,string> Game.GameMenuDialog/'<>c'::'<>9__6_10'
    IL_0195:  ldsfld     class [System.Runtime]System.Action`1<object> Game.GameMenuDialog/'<>c'::'<>9__6_11'
    IL_019a:  dup
    IL_019b:  brtrue.s   IL_01b4

    IL_019d:  pop
    IL_019e:  ldsfld     class Game.GameMenuDialog/'<>c' Game.GameMenuDialog/'<>c'::'<>9'
    IL_01a3:  ldftn      instance void Game.GameMenuDialog/'<>c'::'<Update>b__6_11'(object)
    IL_01a9:  newobj     instance void class [System.Runtime]System.Action`1<object>::.ctor(object,
                                                                                            native int)
    IL_01ae:  dup
    IL_01af:  stsfld     class [System.Runtime]System.Action`1<object> Game.GameMenuDialog/'<>c'::'<>9__6_11'
    IL_01b4:  newobj     instance void Game.ListSelectionDialog::.ctor(string,
                                                                       class [System.Runtime]System.Collections.IEnumerable,
                                                                       float32,
                                                                       class [System.Runtime]System.Func`2<object,string>,
                                                                       class [System.Runtime]System.Action`1<object>)
    IL_01b9:  stloc.1
    IL_01ba:  ldarg.0
    IL_01bb:  ldloc.1
    IL_01bc:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_01c1:  ldarg.0
    IL_01c2:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_01c7:  callvirt   instance bool Game.WidgetInput::get_Back()
    IL_01cc:  brtrue.s   IL_01f3

    IL_01ce:  ldarg.0
    IL_01cf:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_01d4:  callvirt   instance bool Game.WidgetInput::get_Cancel()
    IL_01d9:  brtrue.s   IL_01f3

    IL_01db:  ldarg.0
    IL_01dc:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_01e1:  ldstr      "Resume"
    IL_01e6:  ldc.i4.1
    IL_01e7:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_01ec:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_01f1:  brfalse.s  IL_01f9

    IL_01f3:  ldarg.0
    IL_01f4:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
    IL_01f9:  ldarg.0
    IL_01fa:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_01ff:  ldstr      "Quit"
    IL_0204:  ldc.i4.1
    IL_0205:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_020a:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_020f:  brfalse.s  IL_0233

    IL_0211:  ldarg.0
    IL_0212:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
    IL_0217:  ldc.i4.1
    IL_0218:  ldc.i4.1
    IL_0219:  call       void Game.GameManager::SaveProject(bool,
                                                            bool)
    IL_021e:  call       void Game.GameManager::DisposeProject()
    IL_0223:  ldstr      "MainMenu"
    IL_0228:  ldc.i4.0
    IL_0229:  newarr     [System.Runtime]System.Object
    IL_022e:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                object[])
    IL_0233:  ret
  } // end of method GameMenuDialog::Update

  .method private hidebysig instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.ActiveExternalContentInfo> 
          GetRateableItems() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.IteratorStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 2A 47 61 6D 65 2E 47 61 6D 65 4D 65 6E 75   // ..*Game.GameMenu
                                                                                                                                                      44 69 61 6C 6F 67 2B 3C 47 65 74 52 61 74 65 61   // Dialog+<GetRatea
                                                                                                                                                      62 6C 65 49 74 65 6D 73 3E 64 5F 5F 37 00 00 )    // bleItems>d__7..
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldc.i4.s   -2
    IL_0002:  newobj     instance void Game.GameMenuDialog/'<GetRateableItems>d__7'::.ctor(int32)
    IL_0007:  ret
  } // end of method GameMenuDialog::GetRateableItems

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
  } // end of method GameMenuDialog::FormatDistance

  .method private hidebysig instance void 
          AddStat(class Game.ContainerWidget containerWidget,
                  string title,
                  string value1,
                  [opt] string value2) cil managed
  {
    .param [4] = ""
    // 代码大小       276 (0x114)
    .maxstack  9
    .locals init (class [Engine]Engine.Media.BitmapFont V_0,
             valuetype [Engine]Engine.Color V_1,
             valuetype [Engine]Engine.Color V_2)
    IL_0000:  ldstr      "Fonts/Pericles18"
    IL_0005:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Media.BitmapFont>(string)
    IL_000a:  stloc.0
    IL_000b:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0010:  stloc.1
    IL_0011:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Gray
    IL_0016:  stloc.2
    IL_0017:  ldarg.1
    IL_0018:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_001d:  newobj     instance void Game.UniformSpacingPanelWidget::.ctor()
    IL_0022:  dup
    IL_0023:  ldc.i4.0
    IL_0024:  callvirt   instance void Game.UniformSpacingPanelWidget::set_Direction(valuetype Game.LayoutDirection)
    IL_0029:  dup
    IL_002a:  ldc.i4.1
    IL_002b:  callvirt   instance void Game.Widget::set_HorizontalAlignment(valuetype Game.WidgetAlignment)
    IL_0030:  dup
    IL_0031:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0036:  newobj     instance void Game.LabelWidget::.ctor()
    IL_003b:  dup
    IL_003c:  ldarg.2
    IL_003d:  ldstr      ":"
    IL_0042:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_0047:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_004c:  dup
    IL_004d:  ldc.i4.2
    IL_004e:  callvirt   instance void Game.Widget::set_HorizontalAlignment(valuetype Game.WidgetAlignment)
    IL_0053:  dup
    IL_0054:  ldloc.0
    IL_0055:  callvirt   instance void Game.LabelWidget::set_Font(class [Engine]Engine.Media.BitmapFont)
    IL_005a:  dup
    IL_005b:  ldloc.2
    IL_005c:  callvirt   instance void Game.LabelWidget::set_Color(valuetype [Engine]Engine.Color)
    IL_0061:  dup
    IL_0062:  ldc.r4     5.
    IL_0067:  ldc.r4     1.
    IL_006c:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0071:  callvirt   instance void Game.Widget::set_Margin(valuetype [Engine]Engine.Vector2)
    IL_0076:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
    IL_007b:  dup
    IL_007c:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0081:  newobj     instance void Game.StackPanelWidget::.ctor()
    IL_0086:  dup
    IL_0087:  ldc.i4.0
    IL_0088:  callvirt   instance void Game.StackPanelWidget::set_Direction(valuetype Game.LayoutDirection)
    IL_008d:  dup
    IL_008e:  ldc.i4.0
    IL_008f:  callvirt   instance void Game.Widget::set_HorizontalAlignment(valuetype Game.WidgetAlignment)
    IL_0094:  dup
    IL_0095:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_009a:  newobj     instance void Game.LabelWidget::.ctor()
    IL_009f:  dup
    IL_00a0:  ldarg.3
    IL_00a1:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_00a6:  dup
    IL_00a7:  ldloc.0
    IL_00a8:  callvirt   instance void Game.LabelWidget::set_Font(class [Engine]Engine.Media.BitmapFont)
    IL_00ad:  dup
    IL_00ae:  ldloc.1
    IL_00af:  callvirt   instance void Game.LabelWidget::set_Color(valuetype [Engine]Engine.Color)
    IL_00b4:  dup
    IL_00b5:  ldc.r4     5.
    IL_00ba:  ldc.r4     1.
    IL_00bf:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00c4:  callvirt   instance void Game.Widget::set_Margin(valuetype [Engine]Engine.Vector2)
    IL_00c9:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
    IL_00ce:  dup
    IL_00cf:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00d4:  newobj     instance void Game.LabelWidget::.ctor()
    IL_00d9:  dup
    IL_00da:  ldarg.s    value2
    IL_00dc:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_00e1:  dup
    IL_00e2:  ldloc.0
    IL_00e3:  callvirt   instance void Game.LabelWidget::set_Font(class [Engine]Engine.Media.BitmapFont)
    IL_00e8:  dup
    IL_00e9:  ldloc.2
    IL_00ea:  callvirt   instance void Game.LabelWidget::set_Color(valuetype [Engine]Engine.Color)
    IL_00ef:  dup
    IL_00f0:  ldc.r4     5.
    IL_00f5:  ldc.r4     1.
    IL_00fa:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00ff:  callvirt   instance void Game.Widget::set_Margin(valuetype [Engine]Engine.Vector2)
    IL_0104:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
    IL_0109:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
    IL_010e:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
    IL_0113:  ret
  } // end of method GameMenuDialog::AddStat

  .method private hidebysig instance void 
          '<Update>b__6_2'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       90 (0x5a)
    .maxstack  7
    IL_0000:  ldnull
    IL_0001:  ldstr      "Select Content To Rate"
    IL_0006:  ldarg.0
    IL_0007:  call       instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.ActiveExternalContentInfo> Game.GameMenuDialog::GetRateableItems()
    IL_000c:  ldc.r4     60.
    IL_0011:  ldsfld     class [System.Runtime]System.Func`2<object,string> Game.GameMenuDialog/'<>c'::'<>9__6_3'
    IL_0016:  dup
    IL_0017:  brtrue.s   IL_0030

    IL_0019:  pop
    IL_001a:  ldsfld     class Game.GameMenuDialog/'<>c' Game.GameMenuDialog/'<>c'::'<>9'
    IL_001f:  ldftn      instance string Game.GameMenuDialog/'<>c'::'<Update>b__6_3'(object)
    IL_0025:  newobj     instance void class [System.Runtime]System.Func`2<object,string>::.ctor(object,
                                                                                                 native int)
    IL_002a:  dup
    IL_002b:  stsfld     class [System.Runtime]System.Func`2<object,string> Game.GameMenuDialog/'<>c'::'<>9__6_3'
    IL_0030:  ldsfld     class [System.Runtime]System.Action`1<object> Game.GameMenuDialog/'<>c'::'<>9__6_4'
    IL_0035:  dup
    IL_0036:  brtrue.s   IL_004f

    IL_0038:  pop
    IL_0039:  ldsfld     class Game.GameMenuDialog/'<>c' Game.GameMenuDialog/'<>c'::'<>9'
    IL_003e:  ldftn      instance void Game.GameMenuDialog/'<>c'::'<Update>b__6_4'(object)
    IL_0044:  newobj     instance void class [System.Runtime]System.Action`1<object>::.ctor(object,
                                                                                            native int)
    IL_0049:  dup
    IL_004a:  stsfld     class [System.Runtime]System.Action`1<object> Game.GameMenuDialog/'<>c'::'<>9__6_4'
    IL_004f:  newobj     instance void Game.ListSelectionDialog::.ctor(string,
                                                                       class [System.Runtime]System.Collections.IEnumerable,
                                                                       float32,
                                                                       class [System.Runtime]System.Func`2<object,string>,
                                                                       class [System.Runtime]System.Action`1<object>)
    IL_0054:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_0059:  ret
  } // end of method GameMenuDialog::'<Update>b__6_2'

  .method private hidebysig instance void 
          '<Update>b__6_5'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       37 (0x25)
    .maxstack  8
    IL_0000:  ldstr      "Players"
    IL_0005:  ldc.i4.1
    IL_0006:  newarr     [System.Runtime]System.Object
    IL_000b:  dup
    IL_000c:  ldc.i4.0
    IL_000d:  ldarg.0
    IL_000e:  ldfld      class Game.ComponentPlayer Game.GameMenuDialog::m_componentPlayer
    IL_0013:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0018:  ldc.i4.1
    IL_0019:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemPlayers>(bool)
    IL_001e:  stelem.ref
    IL_001f:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                object[])
    IL_0024:  ret
  } // end of method GameMenuDialog::'<Update>b__6_5'

  .method private hidebysig instance void 
          '<Update>b__6_8'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       17 (0x11)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.ContainerWidget Game.Widget::get_ParentWidget()
    IL_0006:  newobj     instance void Game.KeyboardHelpDialog::.ctor()
    IL_000b:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_0010:  ret
  } // end of method GameMenuDialog::'<Update>b__6_8'

  .method private hidebysig instance void 
          '<Update>b__6_9'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       17 (0x11)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.ContainerWidget Game.Widget::get_ParentWidget()
    IL_0006:  newobj     instance void Game.GamepadHelpDialog::.ctor()
    IL_000b:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_0010:  ret
  } // end of method GameMenuDialog::'<Update>b__6_9'

} // end of class Game.GameMenuDialog