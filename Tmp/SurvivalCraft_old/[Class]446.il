.class public abstract auto ansi sealed beforefieldinit Game.ScreensManager
       extends [System.Runtime]System.Object
{
  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass10_0'
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
    } // end of method '<>c__DisplayClass10_0'::.ctor

    .method assembly hidebysig instance bool 
            '<GetScreenName>b__0'(valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,class Game.Screen> kvp) cil managed
    {
      // 代码大小       16 (0x10)
      .maxstack  8
      IL_0000:  ldarga.s   kvp
      IL_0002:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,class Game.Screen>::get_Value()
      IL_0007:  ldarg.0
      IL_0008:  ldfld      class Game.Screen Game.ScreensManager/'<>c__DisplayClass10_0'::screen
      IL_000d:  ceq
      IL_000f:  ret
    } // end of method '<>c__DisplayClass10_0'::'<GetScreenName>b__0'

  } // end of class '<>c__DisplayClass10_0'

  .field private static class [System.Collections]System.Collections.Generic.Dictionary`2<string,class Game.Screen> m_screens
  .field private static class Game.Screen m_currentScreen
  .field private static class Game.Screen m_previousScreen
  .field private static class [System.Runtime]System.Action ScreenChanged
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname static 
          void  add_ScreenChanged(class [System.Runtime]System.Action 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       39 (0x27)
    .maxstack  3
    .locals init (class [System.Runtime]System.Action V_0,
             class [System.Runtime]System.Action V_1,
             class [System.Runtime]System.Action V_2)
    IL_0000:  ldsfld     class [System.Runtime]System.Action Game.ScreensManager::ScreenChanged
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  stloc.1
    IL_0008:  ldloc.1
    IL_0009:  ldarg.0
    IL_000a:  call       class [System.Runtime]System.Delegate [System.Runtime]System.Delegate::Combine(class [System.Runtime]System.Delegate,
                                                                                                        class [System.Runtime]System.Delegate)
    IL_000f:  castclass  [System.Runtime]System.Action
    IL_0014:  stloc.2
    IL_0015:  ldsflda    class [System.Runtime]System.Action Game.ScreensManager::ScreenChanged
    IL_001a:  ldloc.2
    IL_001b:  ldloc.1
    IL_001c:  call       !!0 [System.Threading]System.Threading.Interlocked::CompareExchange<class [System.Runtime]System.Action>(!!0&,
                                                                                                                                  !!0,
                                                                                                                                  !!0)
    IL_0021:  stloc.0
    IL_0022:  ldloc.0
    IL_0023:  ldloc.1
    IL_0024:  bne.un.s   IL_0006

    IL_0026:  ret
  } // end of method ScreensManager::add_ScreenChanged

  .method public hidebysig specialname static 
          void  remove_ScreenChanged(class [System.Runtime]System.Action 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       39 (0x27)
    .maxstack  3
    .locals init (class [System.Runtime]System.Action V_0,
             class [System.Runtime]System.Action V_1,
             class [System.Runtime]System.Action V_2)
    IL_0000:  ldsfld     class [System.Runtime]System.Action Game.ScreensManager::ScreenChanged
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  stloc.1
    IL_0008:  ldloc.1
    IL_0009:  ldarg.0
    IL_000a:  call       class [System.Runtime]System.Delegate [System.Runtime]System.Delegate::Remove(class [System.Runtime]System.Delegate,
                                                                                                       class [System.Runtime]System.Delegate)
    IL_000f:  castclass  [System.Runtime]System.Action
    IL_0014:  stloc.2
    IL_0015:  ldsflda    class [System.Runtime]System.Action Game.ScreensManager::ScreenChanged
    IL_001a:  ldloc.2
    IL_001b:  ldloc.1
    IL_001c:  call       !!0 [System.Threading]System.Threading.Interlocked::CompareExchange<class [System.Runtime]System.Action>(!!0&,
                                                                                                                                  !!0,
                                                                                                                                  !!0)
    IL_0021:  stloc.0
    IL_0022:  ldloc.0
    IL_0023:  ldloc.1
    IL_0024:  bne.un.s   IL_0006

    IL_0026:  ret
  } // end of method ScreensManager::remove_ScreenChanged

  .method public hidebysig specialname static 
          class Game.Screen  get_CurrentScreen() cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     class Game.Screen Game.ScreensManager::m_currentScreen
    IL_0005:  ret
  } // end of method ScreensManager::get_CurrentScreen

  .method public hidebysig specialname static 
          class Game.Screen  get_PreviousScreen() cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     class Game.Screen Game.ScreensManager::m_previousScreen
    IL_0005:  ret
  } // end of method ScreensManager::get_PreviousScreen

  .method public hidebysig static string 
          GetScreenName(class Game.Screen screen) cil managed
  {
    // 代码大小       55 (0x37)
    .maxstack  3
    .locals init (class Game.ScreensManager/'<>c__DisplayClass10_0' V_0,
             string V_1,
             valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,class Game.Screen> V_2)
    IL_0000:  newobj     instance void Game.ScreensManager/'<>c__DisplayClass10_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.0
    IL_0008:  stfld      class Game.Screen Game.ScreensManager/'<>c__DisplayClass10_0'::screen
    IL_000d:  ldsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<string,class Game.Screen> Game.ScreensManager::m_screens
    IL_0012:  ldloc.0
    IL_0013:  ldftn      instance bool Game.ScreensManager/'<>c__DisplayClass10_0'::'<GetScreenName>b__0'(valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,class Game.Screen>)
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
    // 代码大小       252 (0xfc)
    .maxstack  7
    .locals init (valuetype [System.Runtime]System.DateTime V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldsfld     class Game.Screen Game.ScreensManager::m_currentScreen
    IL_0006:  beq        IL_00fb

    IL_000b:  call       void Game.InputManager::Clear()
    IL_0010:  ldsfld     class Game.Screen Game.ScreensManager::m_currentScreen
    IL_0015:  brfalse.s  IL_003a

    IL_0017:  ldsfld     class Game.Screen Game.ScreensManager::m_currentScreen
    IL_001c:  callvirt   instance void Game.Screen::Leave()
    IL_0021:  call       class Game.ContainerWidget Game.WidgetsManager::get_RootWidget()
    IL_0026:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_002b:  ldsfld     class Game.Screen Game.ScreensManager::m_currentScreen
    IL_0030:  callvirt   instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0035:  callvirt   instance void Game.WidgetsContainer::Remove(class Game.Widget)
    IL_003a:  ldsfld     class Game.Screen Game.ScreensManager::m_currentScreen
    IL_003f:  stsfld     class Game.Screen Game.ScreensManager::m_previousScreen
    IL_0044:  ldarg.0
    IL_0045:  stsfld     class Game.Screen Game.ScreensManager::m_currentScreen
    IL_004a:  ldsfld     class Game.Screen Game.ScreensManager::m_currentScreen
    IL_004f:  brfalse.s  IL_0076

    IL_0051:  call       class Game.ContainerWidget Game.WidgetsManager::get_RootWidget()
    IL_0056:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_005b:  ldc.i4.0
    IL_005c:  ldsfld     class Game.Screen Game.ScreensManager::m_currentScreen
    IL_0061:  callvirt   instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0066:  callvirt   instance void Game.WidgetsContainer::Insert(int32,
                                                                     class Game.Widget)
    IL_006b:  ldsfld     class Game.Screen Game.ScreensManager::m_currentScreen
    IL_0070:  ldarg.1
    IL_0071:  callvirt   instance void Game.Screen::Enter(object[])
    IL_0076:  ldsfld     class Game.Screen Game.ScreensManager::m_currentScreen
    IL_007b:  brfalse.s  IL_00ea

    IL_007d:  ldstr      "Entered screen \"{0}\""
    IL_0082:  ldc.i4.1
    IL_0083:  newarr     [System.Runtime]System.Object
    IL_0088:  dup
    IL_0089:  ldc.i4.0
    IL_008a:  ldsfld     class Game.Screen Game.ScreensManager::m_currentScreen
    IL_008f:  call       string Game.ScreensManager::GetScreenName(class Game.Screen)
    IL_0094:  stelem.ref
    IL_0095:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_009a:  call       void [Engine]Engine.Log::Verbose(string)
    IL_009f:  ldstr      "[{0}] Entered screen"
    IL_00a4:  ldc.i4.1
    IL_00a5:  newarr     [System.Runtime]System.Object
    IL_00aa:  dup
    IL_00ab:  ldc.i4.0
    IL_00ac:  ldsfld     class Game.Screen Game.ScreensManager::m_currentScreen
    IL_00b1:  call       string Game.ScreensManager::GetScreenName(class Game.Screen)
    IL_00b6:  stelem.ref
    IL_00b7:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_00bc:  ldc.i4.1
    IL_00bd:  newarr     Game.AnalyticsParameter
    IL_00c2:  dup
    IL_00c3:  ldc.i4.0
    IL_00c4:  ldstr      "Time"
    IL_00c9:  call       valuetype [System.Runtime]System.DateTime [System.Runtime]System.DateTime::get_Now()
    IL_00ce:  stloc.0
    IL_00cf:  ldloca.s   V_0
    IL_00d1:  ldstr      "HH:mm:ss.fff"
    IL_00d6:  call       instance string [System.Runtime]System.DateTime::ToString(string)
    IL_00db:  newobj     instance void Game.AnalyticsParameter::.ctor(string,
                                                                      string)
    IL_00e0:  stelem     Game.AnalyticsParameter
    IL_00e5:  call       void Game.AnalyticsManager::LogEvent(string,
                                                              valuetype Game.AnalyticsParameter[])
    IL_00ea:  ldsfld     class [System.Runtime]System.Action Game.ScreensManager::ScreenChanged
    IL_00ef:  brfalse.s  IL_00fb

    IL_00f1:  ldsfld     class [System.Runtime]System.Action Game.ScreensManager::ScreenChanged
    IL_00f6:  callvirt   instance void [System.Runtime]System.Action::Invoke()
    IL_00fb:  ret
  } // end of method ScreensManager::SwitchScreen

  .method public hidebysig static void  Update() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldsfld     class Game.Screen Game.ScreensManager::m_currentScreen
    IL_0005:  brfalse.s  IL_0011

    IL_0007:  ldsfld     class Game.Screen Game.ScreensManager::m_currentScreen
    IL_000c:  callvirt   instance void Game.Screen::Update()
    IL_0011:  ret
  } // end of method ScreensManager::Update

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       11 (0xb)
    .maxstack  8
    IL_0000:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,class Game.Screen>::.ctor()
    IL_0005:  stsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<string,class Game.Screen> Game.ScreensManager::m_screens
    IL_000a:  ret
  } // end of method ScreensManager::.cctor

  .event [System.Runtime]System.Action ScreenChanged
  {
    .addon void Game.ScreensManager::add_ScreenChanged(class [System.Runtime]System.Action)
    .removeon void Game.ScreensManager::remove_ScreenChanged(class [System.Runtime]System.Action)
  } // end of event ScreensManager::ScreenChanged
  .property class Game.Screen CurrentScreen()
  {
    .get class Game.Screen Game.ScreensManager::get_CurrentScreen()
  } // end of property ScreensManager::CurrentScreen
  .property class Game.Screen PreviousScreen()
  {
    .get class Game.Screen Game.ScreensManager::get_PreviousScreen()
  } // end of property ScreensManager::PreviousScreen
} // end of class Game.ScreensManager