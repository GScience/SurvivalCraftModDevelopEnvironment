.class public auto ansi beforefieldinit Game.SingleplayerScreen
       extends [Survivalcraft]Game.Screen
{
  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass2_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class [Survivalcraft]Game.BusyDialog dialog
    .field public class Game.SingleplayerScreen '<>4__this'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       8 (0x8)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  nop
      IL_0007:  ret
    } // end of method '<>c__DisplayClass2_0'::.ctor

    .method assembly hidebysig instance void 
            '<Enter>b__0'() cil managed
    {
      // 代码大小       136 (0x88)
      .maxstack  3
      .locals init (class Game.SingleplayerScreen/'<>c__DisplayClass2_1' V_0)
      IL_0000:  newobj     instance void Game.SingleplayerScreen/'<>c__DisplayClass2_1'::.ctor()
      IL_0005:  stloc.0
      IL_0006:  ldloc.0
      IL_0007:  ldarg.0
      IL_0008:  stfld      class Game.SingleplayerScreen/'<>c__DisplayClass2_0' Game.SingleplayerScreen/'<>c__DisplayClass2_1'::'CS$<>8__locals1'
      IL_000d:  nop
      IL_000e:  ldloc.0
      IL_000f:  ldarg.0
      IL_0010:  ldfld      class Game.SingleplayerScreen Game.SingleplayerScreen/'<>c__DisplayClass2_0'::'<>4__this'
      IL_0015:  ldfld      class [Survivalcraft]Game.ListPanelWidget Game.SingleplayerScreen::m_worldsListWidget
      IL_001a:  callvirt   instance object [Survivalcraft]Game.ListPanelWidget::get_SelectedItem()
      IL_001f:  castclass  [Survivalcraft]Game.WorldInfo
      IL_0024:  stfld      class [Survivalcraft]Game.WorldInfo Game.SingleplayerScreen/'<>c__DisplayClass2_1'::selectedItem
      IL_0029:  call       void [Survivalcraft]Game.WorldsManager::UpdateWorldsList()
      IL_002e:  nop
      IL_002f:  ldloc.0
      IL_0030:  call       valuetype [Engine]Engine.ReadOnlyList`1<class [Survivalcraft]Game.WorldInfo> [Survivalcraft]Game.WorldsManager::get_WorldInfos()
      IL_0035:  box        valuetype [Engine]Engine.ReadOnlyList`1<class [Survivalcraft]Game.WorldInfo>
      IL_003a:  castclass  class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [Survivalcraft]Game.WorldInfo>
      IL_003f:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class [Survivalcraft]Game.WorldInfo>::.ctor(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!0>)
      IL_0044:  stfld      class [System.Collections]System.Collections.Generic.List`1<class [Survivalcraft]Game.WorldInfo> Game.SingleplayerScreen/'<>c__DisplayClass2_1'::worldInfos
      IL_0049:  ldloc.0
      IL_004a:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class [Survivalcraft]Game.WorldInfo> Game.SingleplayerScreen/'<>c__DisplayClass2_1'::worldInfos
      IL_004f:  ldsfld     class [System.Runtime]System.Comparison`1<class [Survivalcraft]Game.WorldInfo> Game.SingleplayerScreen/'<>c'::'<>9__2_1'
      IL_0054:  dup
      IL_0055:  brtrue.s   IL_006e

      IL_0057:  pop
      IL_0058:  ldsfld     class Game.SingleplayerScreen/'<>c' Game.SingleplayerScreen/'<>c'::'<>9'
      IL_005d:  ldftn      instance int32 Game.SingleplayerScreen/'<>c'::'<Enter>b__2_1'(class [Survivalcraft]Game.WorldInfo,
                                                                                         class [Survivalcraft]Game.WorldInfo)
      IL_0063:  newobj     instance void class [System.Runtime]System.Comparison`1<class [Survivalcraft]Game.WorldInfo>::.ctor(object,
                                                                                                                               native int)
      IL_0068:  dup
      IL_0069:  stsfld     class [System.Runtime]System.Comparison`1<class [Survivalcraft]Game.WorldInfo> Game.SingleplayerScreen/'<>c'::'<>9__2_1'
      IL_006e:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class [Survivalcraft]Game.WorldInfo>::Sort(class [System.Runtime]System.Comparison`1<!0>)
      IL_0073:  nop
      IL_0074:  ldloc.0
      IL_0075:  ldftn      instance void Game.SingleplayerScreen/'<>c__DisplayClass2_1'::'<Enter>b__2'()
      IL_007b:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                              native int)
      IL_0080:  ldc.i4.0
      IL_0081:  call       void [Engine]Engine.Dispatcher::Dispatch(class [System.Runtime]System.Action,
                                                                    bool)
      IL_0086:  nop
      IL_0087:  ret
    } // end of method '<>c__DisplayClass2_0'::'<Enter>b__0'

  } // end of class '<>c__DisplayClass2_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass2_1'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class [System.Collections]System.Collections.Generic.List`1<class [Survivalcraft]Game.WorldInfo> worldInfos
    .field public class [Survivalcraft]Game.WorldInfo selectedItem
    .field public class Game.SingleplayerScreen/'<>c__DisplayClass2_0' 'CS$<>8__locals1'
    .field public class [System.Runtime]System.Func`2<class [Survivalcraft]Game.WorldInfo,bool> '<>9__3'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       8 (0x8)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  nop
      IL_0007:  ret
    } // end of method '<>c__DisplayClass2_1'::.ctor

    .method assembly hidebysig instance void 
            '<Enter>b__2'() cil managed
    {
      // 代码大小       190 (0xbe)
      .maxstack  5
      .locals init (valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class [Survivalcraft]Game.WorldInfo> V_0,
               object V_1,
               bool V_2,
               class [System.Runtime]System.Func`2<class [Survivalcraft]Game.WorldInfo,bool> V_3)
      IL_0000:  nop
      IL_0001:  ldarg.0
      IL_0002:  ldfld      class Game.SingleplayerScreen/'<>c__DisplayClass2_0' Game.SingleplayerScreen/'<>c__DisplayClass2_1'::'CS$<>8__locals1'
      IL_0007:  ldfld      class Game.SingleplayerScreen Game.SingleplayerScreen/'<>c__DisplayClass2_0'::'<>4__this'
      IL_000c:  ldfld      class [Survivalcraft]Game.ListPanelWidget Game.SingleplayerScreen::m_worldsListWidget
      IL_0011:  callvirt   instance void [Survivalcraft]Game.ListPanelWidget::ClearItems()
      IL_0016:  nop
      IL_0017:  nop
      IL_0018:  ldarg.0
      IL_0019:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class [Survivalcraft]Game.WorldInfo> Game.SingleplayerScreen/'<>c__DisplayClass2_1'::worldInfos
      IL_001e:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class [Survivalcraft]Game.WorldInfo>::GetEnumerator()
      IL_0023:  stloc.0
      .try
      {
        IL_0024:  br.s       IL_0045

        IL_0026:  ldloca.s   V_0
        IL_0028:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class [Survivalcraft]Game.WorldInfo>::get_Current()
        IL_002d:  stloc.1
        IL_002e:  ldarg.0
        IL_002f:  ldfld      class Game.SingleplayerScreen/'<>c__DisplayClass2_0' Game.SingleplayerScreen/'<>c__DisplayClass2_1'::'CS$<>8__locals1'
        IL_0034:  ldfld      class Game.SingleplayerScreen Game.SingleplayerScreen/'<>c__DisplayClass2_0'::'<>4__this'
        IL_0039:  ldfld      class [Survivalcraft]Game.ListPanelWidget Game.SingleplayerScreen::m_worldsListWidget
        IL_003e:  ldloc.1
        IL_003f:  callvirt   instance void [Survivalcraft]Game.ListPanelWidget::AddItem(object)
        IL_0044:  nop
        IL_0045:  ldloca.s   V_0
        IL_0047:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class [Survivalcraft]Game.WorldInfo>::MoveNext()
        IL_004c:  brtrue.s   IL_0026

        IL_004e:  leave.s    IL_005f

      }  // end .try
      finally
      {
        IL_0050:  ldloca.s   V_0
        IL_0052:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class [Survivalcraft]Game.WorldInfo>
        IL_0058:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_005d:  nop
        IL_005e:  endfinally
      }  // end handler
      IL_005f:  ldarg.0
      IL_0060:  ldfld      class [Survivalcraft]Game.WorldInfo Game.SingleplayerScreen/'<>c__DisplayClass2_1'::selectedItem
      IL_0065:  ldnull
      IL_0066:  cgt.un
      IL_0068:  stloc.2
      IL_0069:  ldloc.2
      IL_006a:  brfalse.s  IL_00ac

      IL_006c:  ldarg.0
      IL_006d:  ldfld      class Game.SingleplayerScreen/'<>c__DisplayClass2_0' Game.SingleplayerScreen/'<>c__DisplayClass2_1'::'CS$<>8__locals1'
      IL_0072:  ldfld      class Game.SingleplayerScreen Game.SingleplayerScreen/'<>c__DisplayClass2_0'::'<>4__this'
      IL_0077:  ldfld      class [Survivalcraft]Game.ListPanelWidget Game.SingleplayerScreen::m_worldsListWidget
      IL_007c:  ldarg.0
      IL_007d:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class [Survivalcraft]Game.WorldInfo> Game.SingleplayerScreen/'<>c__DisplayClass2_1'::worldInfos
      IL_0082:  ldarg.0
      IL_0083:  ldfld      class [System.Runtime]System.Func`2<class [Survivalcraft]Game.WorldInfo,bool> Game.SingleplayerScreen/'<>c__DisplayClass2_1'::'<>9__3'
      IL_0088:  dup
      IL_0089:  brtrue.s   IL_00a1

      IL_008b:  pop
      IL_008c:  ldarg.0
      IL_008d:  ldarg.0
      IL_008e:  ldftn      instance bool Game.SingleplayerScreen/'<>c__DisplayClass2_1'::'<Enter>b__3'(class [Survivalcraft]Game.WorldInfo)
      IL_0094:  newobj     instance void class [System.Runtime]System.Func`2<class [Survivalcraft]Game.WorldInfo,bool>::.ctor(object,
                                                                                                                              native int)
      IL_0099:  dup
      IL_009a:  stloc.3
      IL_009b:  stfld      class [System.Runtime]System.Func`2<class [Survivalcraft]Game.WorldInfo,bool> Game.SingleplayerScreen/'<>c__DisplayClass2_1'::'<>9__3'
      IL_00a0:  ldloc.3
      IL_00a1:  call       !!0 [System.Linq]System.Linq.Enumerable::FirstOrDefault<class [Survivalcraft]Game.WorldInfo>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                        class [System.Runtime]System.Func`2<!!0,bool>)
      IL_00a6:  callvirt   instance void [Survivalcraft]Game.ListPanelWidget::set_SelectedItem(object)
      IL_00ab:  nop
      IL_00ac:  ldarg.0
      IL_00ad:  ldfld      class Game.SingleplayerScreen/'<>c__DisplayClass2_0' Game.SingleplayerScreen/'<>c__DisplayClass2_1'::'CS$<>8__locals1'
      IL_00b2:  ldfld      class [Survivalcraft]Game.BusyDialog Game.SingleplayerScreen/'<>c__DisplayClass2_0'::dialog
      IL_00b7:  call       void [Survivalcraft]Game.DialogsManager::HideDialog(class [Survivalcraft]Game.Dialog)
      IL_00bc:  nop
      IL_00bd:  ret
    } // end of method '<>c__DisplayClass2_1'::'<Enter>b__2'

    .method assembly hidebysig instance bool 
            '<Enter>b__3'(class [Survivalcraft]Game.WorldInfo wi) cil managed
    {
      // 代码大小       23 (0x17)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldfld      string [Survivalcraft]Game.WorldInfo::DirectoryName
      IL_0006:  ldarg.0
      IL_0007:  ldfld      class [Survivalcraft]Game.WorldInfo Game.SingleplayerScreen/'<>c__DisplayClass2_1'::selectedItem
      IL_000c:  ldfld      string [Survivalcraft]Game.WorldInfo::DirectoryName
      IL_0011:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_0016:  ret
    } // end of method '<>c__DisplayClass2_1'::'<Enter>b__3'

  } // end of class '<>c__DisplayClass2_1'

  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.SingleplayerScreen/'<>c' '<>9'
    .field public static class [System.Runtime]System.Comparison`1<class [Survivalcraft]Game.WorldInfo> '<>9__2_1'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.SingleplayerScreen/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.SingleplayerScreen/'<>c' Game.SingleplayerScreen/'<>c'::'<>9'
      IL_000a:  ret
    } // end of method '<>c'::.cctor

    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       8 (0x8)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  nop
      IL_0007:  ret
    } // end of method '<>c'::.ctor

    .method assembly hidebysig instance int32 
            '<Enter>b__2_1'(class [Survivalcraft]Game.WorldInfo w1,
                            class [Survivalcraft]Game.WorldInfo w2) cil managed
    {
      // 代码大小       18 (0x12)
      .maxstack  8
      IL_0000:  ldarg.2
      IL_0001:  ldfld      valuetype [System.Runtime]System.DateTime [Survivalcraft]Game.WorldInfo::LastSaveTime
      IL_0006:  ldarg.1
      IL_0007:  ldfld      valuetype [System.Runtime]System.DateTime [Survivalcraft]Game.WorldInfo::LastSaveTime
      IL_000c:  call       int32 [System.Runtime]System.DateTime::Compare(valuetype [System.Runtime]System.DateTime,
                                                                          valuetype [System.Runtime]System.DateTime)
      IL_0011:  ret
    } // end of method '<>c'::'<Enter>b__2_1'

  } // end of class '<>c'

  .field private class [Survivalcraft]Game.ListPanelWidget m_worldsListWidget
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       100 (0x64)
    .maxstack  4
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [Survivalcraft]Game.Screen::.ctor()
    IL_0006:  nop
    IL_0007:  nop
    IL_0008:  ldarg.0
    IL_0009:  call       instance class [Survivalcraft]Game.ContainerWidget [Survivalcraft]Game.Screen::get_ScreenWidget()
    IL_000e:  ldarg.0
    IL_000f:  ldstr      "Screens/SingleplayerScreen"
    IL_0014:  call       !!0 [Survivalcraft]Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_0019:  call       void [Survivalcraft]Game.WidgetsManager::LoadWidgetContents(class [Survivalcraft]Game.Widget,
                                                                                     object,
                                                                                     class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_001e:  nop
    IL_001f:  ldarg.0
    IL_0020:  ldarg.0
    IL_0021:  call       instance class [Survivalcraft]Game.ContainerWidget [Survivalcraft]Game.Screen::get_ScreenWidget()
    IL_0026:  ldfld      class [Survivalcraft]Game.WidgetsContainer [Survivalcraft]Game.ContainerWidget::Children
    IL_002b:  ldstr      "WorldsList"
    IL_0030:  ldc.i4.1
    IL_0031:  callvirt   instance !!0 [Survivalcraft]Game.WidgetsContainer::Find<class [Survivalcraft]Game.ListPanelWidget>(string,
                                                                                                                            bool)
    IL_0036:  stfld      class [Survivalcraft]Game.ListPanelWidget Game.SingleplayerScreen::m_worldsListWidget
    IL_003b:  ldarg.0
    IL_003c:  ldfld      class [Survivalcraft]Game.ListPanelWidget Game.SingleplayerScreen::m_worldsListWidget
    IL_0041:  dup
    IL_0042:  callvirt   instance class [System.Runtime]System.Func`2<object,class [Survivalcraft]Game.Widget> [Survivalcraft]Game.ListPanelWidget::get_ItemWidgetFactory()
    IL_0047:  ldarg.0
    IL_0048:  ldftn      instance class [Survivalcraft]Game.Widget Game.SingleplayerScreen::'<.ctor>b__1_0'(object)
    IL_004e:  newobj     instance void class [System.Runtime]System.Func`2<object,class [Survivalcraft]Game.Widget>::.ctor(object,
                                                                                                                           native int)
    IL_0053:  call       class [System.Runtime]System.Delegate [System.Runtime]System.Delegate::Combine(class [System.Runtime]System.Delegate,
                                                                                                        class [System.Runtime]System.Delegate)
    IL_0058:  castclass  class [System.Runtime]System.Func`2<object,class [Survivalcraft]Game.Widget>
    IL_005d:  callvirt   instance void [Survivalcraft]Game.ListPanelWidget::set_ItemWidgetFactory(class [System.Runtime]System.Func`2<object,class [Survivalcraft]Game.Widget>)
    IL_0062:  nop
    IL_0063:  ret
  } // end of method SingleplayerScreen::.ctor

  .method public hidebysig virtual instance void 
          Enter(object[] parameters) cil managed
  {
    // 代码大小       62 (0x3e)
    .maxstack  3
    .locals init (class Game.SingleplayerScreen/'<>c__DisplayClass2_0' V_0)
    IL_0000:  newobj     instance void Game.SingleplayerScreen/'<>c__DisplayClass2_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.0
    IL_0008:  stfld      class Game.SingleplayerScreen Game.SingleplayerScreen/'<>c__DisplayClass2_0'::'<>4__this'
    IL_000d:  nop
    IL_000e:  ldloc.0
    IL_000f:  ldstr      "Scanning Worlds"
    IL_0014:  ldnull
    IL_0015:  newobj     instance void [Survivalcraft]Game.BusyDialog::.ctor(string,
                                                                             string)
    IL_001a:  stfld      class [Survivalcraft]Game.BusyDialog Game.SingleplayerScreen/'<>c__DisplayClass2_0'::dialog
    IL_001f:  ldloc.0
    IL_0020:  ldfld      class [Survivalcraft]Game.BusyDialog Game.SingleplayerScreen/'<>c__DisplayClass2_0'::dialog
    IL_0025:  call       void [Survivalcraft]Game.DialogsManager::ShowDialog(class [Survivalcraft]Game.Dialog)
    IL_002a:  nop
    IL_002b:  ldloc.0
    IL_002c:  ldftn      instance void Game.SingleplayerScreen/'<>c__DisplayClass2_0'::'<Enter>b__0'()
    IL_0032:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0037:  call       class [System.Threading.Tasks]System.Threading.Tasks.Task [System.Threading.Tasks]System.Threading.Tasks.Task::Run(class [System.Runtime]System.Action)
    IL_003c:  pop
    IL_003d:  ret
  } // end of method SingleplayerScreen::Enter

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       491 (0x1eb)
    .maxstack  4
    .locals init (object[] V_0,
             bool V_1,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Survivalcraft]Game.WorldInfo> V_2,
             valuetype [Engine]Engine.ReadOnlyList`1<object> V_3,
             bool V_4,
             bool V_5,
             bool V_6,
             bool V_7)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [Survivalcraft]Game.ListPanelWidget Game.SingleplayerScreen::m_worldsListWidget
    IL_0007:  callvirt   instance object [Survivalcraft]Game.ListPanelWidget::get_SelectedItem()
    IL_000c:  brfalse.s  IL_0030

    IL_000e:  call       valuetype [Engine]Engine.ReadOnlyList`1<class [Survivalcraft]Game.WorldInfo> [Survivalcraft]Game.WorldsManager::get_WorldInfos()
    IL_0013:  stloc.2
    IL_0014:  ldloca.s   V_2
    IL_0016:  ldarg.0
    IL_0017:  ldfld      class [Survivalcraft]Game.ListPanelWidget Game.SingleplayerScreen::m_worldsListWidget
    IL_001c:  callvirt   instance object [Survivalcraft]Game.ListPanelWidget::get_SelectedItem()
    IL_0021:  castclass  [Survivalcraft]Game.WorldInfo
    IL_0026:  call       instance int32 valuetype [Engine]Engine.ReadOnlyList`1<class [Survivalcraft]Game.WorldInfo>::IndexOf(!0)
    IL_002b:  ldc.i4.0
    IL_002c:  clt
    IL_002e:  br.s       IL_0031

    IL_0030:  ldc.i4.0
    IL_0031:  stloc.1
    IL_0032:  ldloc.1
    IL_0033:  brfalse.s  IL_0044

    IL_0035:  nop
    IL_0036:  ldarg.0
    IL_0037:  ldfld      class [Survivalcraft]Game.ListPanelWidget Game.SingleplayerScreen::m_worldsListWidget
    IL_003c:  ldnull
    IL_003d:  callvirt   instance void [Survivalcraft]Game.ListPanelWidget::set_SelectedItem(object)
    IL_0042:  nop
    IL_0043:  nop
    IL_0044:  ldc.i4.1
    IL_0045:  newarr     [System.Runtime]System.Object
    IL_004a:  dup
    IL_004b:  ldc.i4.0
    IL_004c:  ldarg.0
    IL_004d:  ldfld      class [Survivalcraft]Game.ListPanelWidget Game.SingleplayerScreen::m_worldsListWidget
    IL_0052:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<object> [Survivalcraft]Game.ListPanelWidget::get_Items()
    IL_0057:  stloc.3
    IL_0058:  ldloca.s   V_3
    IL_005a:  call       instance int32 valuetype [Engine]Engine.ReadOnlyList`1<object>::get_Count()
    IL_005f:  box        [System.Runtime]System.Int32
    IL_0064:  stelem.ref
    IL_0065:  stloc.0
    IL_0066:  ldarg.0
    IL_0067:  call       instance class [Survivalcraft]Game.ContainerWidget [Survivalcraft]Game.Screen::get_ScreenWidget()
    IL_006c:  ldfld      class [Survivalcraft]Game.WidgetsContainer [Survivalcraft]Game.ContainerWidget::Children
    IL_0071:  ldstr      "TopBar.Label"
    IL_0076:  ldc.i4.1
    IL_0077:  callvirt   instance !!0 [Survivalcraft]Game.WidgetsContainer::Find<class [Survivalcraft]Game.LabelWidget>(string,
                                                                                                                        bool)
    IL_007c:  ldstr      "Existing Worlds ({0})"
    IL_0081:  ldloc.0
    IL_0082:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0087:  callvirt   instance void [Survivalcraft]Game.LabelWidget::set_Text(string)
    IL_008c:  nop
    IL_008d:  ldarg.0
    IL_008e:  call       instance class [Survivalcraft]Game.ContainerWidget [Survivalcraft]Game.Screen::get_ScreenWidget()
    IL_0093:  ldfld      class [Survivalcraft]Game.WidgetsContainer [Survivalcraft]Game.ContainerWidget::Children
    IL_0098:  ldstr      "Play"
    IL_009d:  ldc.i4.1
    IL_009e:  callvirt   instance class [Survivalcraft]Game.Widget [Survivalcraft]Game.WidgetsContainer::Find(string,
                                                                                                              bool)
    IL_00a3:  ldarg.0
    IL_00a4:  ldfld      class [Survivalcraft]Game.ListPanelWidget Game.SingleplayerScreen::m_worldsListWidget
    IL_00a9:  callvirt   instance object [Survivalcraft]Game.ListPanelWidget::get_SelectedItem()
    IL_00ae:  ldnull
    IL_00af:  cgt.un
    IL_00b1:  callvirt   instance void [Survivalcraft]Game.Widget::set_IsEnabled(bool)
    IL_00b6:  nop
    IL_00b7:  ldarg.0
    IL_00b8:  call       instance class [Survivalcraft]Game.ContainerWidget [Survivalcraft]Game.Screen::get_ScreenWidget()
    IL_00bd:  ldfld      class [Survivalcraft]Game.WidgetsContainer [Survivalcraft]Game.ContainerWidget::Children
    IL_00c2:  ldstr      "Properties"
    IL_00c7:  ldc.i4.1
    IL_00c8:  callvirt   instance class [Survivalcraft]Game.Widget [Survivalcraft]Game.WidgetsContainer::Find(string,
                                                                                                              bool)
    IL_00cd:  ldarg.0
    IL_00ce:  ldfld      class [Survivalcraft]Game.ListPanelWidget Game.SingleplayerScreen::m_worldsListWidget
    IL_00d3:  callvirt   instance object [Survivalcraft]Game.ListPanelWidget::get_SelectedItem()
    IL_00d8:  ldnull
    IL_00d9:  cgt.un
    IL_00db:  callvirt   instance void [Survivalcraft]Game.Widget::set_IsEnabled(bool)
    IL_00e0:  nop
    IL_00e1:  ldarg.0
    IL_00e2:  call       instance class [Survivalcraft]Game.ContainerWidget [Survivalcraft]Game.Screen::get_ScreenWidget()
    IL_00e7:  ldfld      class [Survivalcraft]Game.WidgetsContainer [Survivalcraft]Game.ContainerWidget::Children
    IL_00ec:  ldstr      "Play"
    IL_00f1:  ldc.i4.1
    IL_00f2:  callvirt   instance !!0 [Survivalcraft]Game.WidgetsContainer::Find<class [Survivalcraft]Game.ButtonWidget>(string,
                                                                                                                         bool)
    IL_00f7:  callvirt   instance bool [Survivalcraft]Game.ButtonWidget::get_IsClicked()
    IL_00fc:  brfalse.s  IL_010e

    IL_00fe:  ldarg.0
    IL_00ff:  ldfld      class [Survivalcraft]Game.ListPanelWidget Game.SingleplayerScreen::m_worldsListWidget
    IL_0104:  callvirt   instance object [Survivalcraft]Game.ListPanelWidget::get_SelectedItem()
    IL_0109:  ldnull
    IL_010a:  cgt.un
    IL_010c:  br.s       IL_010f

    IL_010e:  ldc.i4.0
    IL_010f:  stloc.s    V_4
    IL_0111:  ldloc.s    V_4
    IL_0113:  brfalse.s  IL_0129

    IL_0115:  nop
    IL_0116:  ldarg.0
    IL_0117:  ldftn      instance void Game.SingleplayerScreen::'<Update>b__3_0'()
    IL_011d:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0122:  call       void [Survivalcraft]Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
    IL_0127:  nop
    IL_0128:  nop
    IL_0129:  ldarg.0
    IL_012a:  call       instance class [Survivalcraft]Game.ContainerWidget [Survivalcraft]Game.Screen::get_ScreenWidget()
    IL_012f:  ldfld      class [Survivalcraft]Game.WidgetsContainer [Survivalcraft]Game.ContainerWidget::Children
    IL_0134:  ldstr      "NewWorld"
    IL_0139:  ldc.i4.1
    IL_013a:  callvirt   instance !!0 [Survivalcraft]Game.WidgetsContainer::Find<class [Survivalcraft]Game.ButtonWidget>(string,
                                                                                                                         bool)
    IL_013f:  callvirt   instance bool [Survivalcraft]Game.ButtonWidget::get_IsClicked()
    IL_0144:  stloc.s    V_5
    IL_0146:  ldloc.s    V_5
    IL_0148:  brfalse.s  IL_015e

    IL_014a:  nop
    IL_014b:  ldarg.0
    IL_014c:  ldftn      instance void Game.SingleplayerScreen::'<Update>b__3_1'()
    IL_0152:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0157:  call       void [Survivalcraft]Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
    IL_015c:  nop
    IL_015d:  nop
    IL_015e:  ldarg.0
    IL_015f:  call       instance class [Survivalcraft]Game.ContainerWidget [Survivalcraft]Game.Screen::get_ScreenWidget()
    IL_0164:  ldfld      class [Survivalcraft]Game.WidgetsContainer [Survivalcraft]Game.ContainerWidget::Children
    IL_0169:  ldstr      "Properties"
    IL_016e:  ldc.i4.1
    IL_016f:  callvirt   instance !!0 [Survivalcraft]Game.WidgetsContainer::Find<class [Survivalcraft]Game.ButtonWidget>(string,
                                                                                                                         bool)
    IL_0174:  callvirt   instance bool [Survivalcraft]Game.ButtonWidget::get_IsClicked()
    IL_0179:  brfalse.s  IL_018b

    IL_017b:  ldarg.0
    IL_017c:  ldfld      class [Survivalcraft]Game.ListPanelWidget Game.SingleplayerScreen::m_worldsListWidget
    IL_0181:  callvirt   instance object [Survivalcraft]Game.ListPanelWidget::get_SelectedItem()
    IL_0186:  ldnull
    IL_0187:  cgt.un
    IL_0189:  br.s       IL_018c

    IL_018b:  ldc.i4.0
    IL_018c:  stloc.s    V_6
    IL_018e:  ldloc.s    V_6
    IL_0190:  brfalse.s  IL_01a6

    IL_0192:  nop
    IL_0193:  ldarg.0
    IL_0194:  ldftn      instance void Game.SingleplayerScreen::'<Update>b__3_2'()
    IL_019a:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_019f:  call       void [Survivalcraft]Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
    IL_01a4:  nop
    IL_01a5:  nop
    IL_01a6:  call       valuetype [Survivalcraft]Game.InputState [Survivalcraft]Game.InputManager::get_InputState()
    IL_01ab:  ldfld      bool [Survivalcraft]Game.InputState::Back
    IL_01b0:  brtrue.s   IL_01cf

    IL_01b2:  ldarg.0
    IL_01b3:  call       instance class [Survivalcraft]Game.ContainerWidget [Survivalcraft]Game.Screen::get_ScreenWidget()
    IL_01b8:  ldfld      class [Survivalcraft]Game.WidgetsContainer [Survivalcraft]Game.ContainerWidget::Children
    IL_01bd:  ldstr      "TopBar.Back"
    IL_01c2:  ldc.i4.1
    IL_01c3:  callvirt   instance !!0 [Survivalcraft]Game.WidgetsContainer::Find<class [Survivalcraft]Game.ButtonWidget>(string,
                                                                                                                         bool)
    IL_01c8:  callvirt   instance bool [Survivalcraft]Game.ButtonWidget::get_IsClicked()
    IL_01cd:  br.s       IL_01d0

    IL_01cf:  ldc.i4.1
    IL_01d0:  stloc.s    V_7
    IL_01d2:  ldloc.s    V_7
    IL_01d4:  brfalse.s  IL_01ea

    IL_01d6:  nop
    IL_01d7:  ldarg.0
    IL_01d8:  ldftn      instance void Game.SingleplayerScreen::'<Update>b__3_3'()
    IL_01de:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_01e3:  call       void [Survivalcraft]Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
    IL_01e8:  nop
    IL_01e9:  nop
    IL_01ea:  ret
  } // end of method SingleplayerScreen::Update

  .method private hidebysig instance class [Survivalcraft]Game.Widget 
          '<.ctor>b__1_0'(object item) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       393 (0x189)
    .maxstack  7
    .locals init (class [Survivalcraft]Game.WorldInfo V_0,
             class [Survivalcraft]Game.ContainerWidget V_1,
             class [Survivalcraft]Game.LabelWidget V_2,
             class [Survivalcraft]Game.LabelWidget V_3,
             class [Survivalcraft]Game.LabelWidget V_4,
             class [Survivalcraft]Game.LabelWidget V_5,
             class [Survivalcraft]Game.LabelWidget V_6,
             class [Survivalcraft]Game.LabelWidget V_7,
             class [Survivalcraft]Game.Widget V_8)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  castclass  [Survivalcraft]Game.WorldInfo
    IL_0007:  stloc.0
    IL_0008:  ldarg.0
    IL_0009:  ldstr      "Widgets/SavedWorldItem"
    IL_000e:  call       !!0 [Survivalcraft]Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_0013:  ldnull
    IL_0014:  call       class [Survivalcraft]Game.Widget [Survivalcraft]Game.WidgetsManager::LoadWidget(object,
                                                                                                         class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                                         class [Survivalcraft]Game.ContainerWidget)
    IL_0019:  castclass  [Survivalcraft]Game.ContainerWidget
    IL_001e:  stloc.1
    IL_001f:  ldloc.1
    IL_0020:  ldfld      class [Survivalcraft]Game.WidgetsContainer [Survivalcraft]Game.ContainerWidget::Children
    IL_0025:  ldstr      "WorldItem.Name"
    IL_002a:  ldc.i4.1
    IL_002b:  callvirt   instance !!0 [Survivalcraft]Game.WidgetsContainer::Find<class [Survivalcraft]Game.LabelWidget>(string,
                                                                                                                        bool)
    IL_0030:  stloc.2
    IL_0031:  ldloc.1
    IL_0032:  ldfld      class [Survivalcraft]Game.WidgetsContainer [Survivalcraft]Game.ContainerWidget::Children
    IL_0037:  ldstr      "WorldItem.Size"
    IL_003c:  ldc.i4.1
    IL_003d:  callvirt   instance !!0 [Survivalcraft]Game.WidgetsContainer::Find<class [Survivalcraft]Game.LabelWidget>(string,
                                                                                                                        bool)
    IL_0042:  stloc.3
    IL_0043:  ldloc.1
    IL_0044:  ldfld      class [Survivalcraft]Game.WidgetsContainer [Survivalcraft]Game.ContainerWidget::Children
    IL_0049:  ldstr      "WorldItem.Date"
    IL_004e:  ldc.i4.1
    IL_004f:  callvirt   instance !!0 [Survivalcraft]Game.WidgetsContainer::Find<class [Survivalcraft]Game.LabelWidget>(string,
                                                                                                                        bool)
    IL_0054:  stloc.s    V_4
    IL_0056:  ldloc.1
    IL_0057:  ldfld      class [Survivalcraft]Game.WidgetsContainer [Survivalcraft]Game.ContainerWidget::Children
    IL_005c:  ldstr      "WorldItem.GameMode"
    IL_0061:  ldc.i4.1
    IL_0062:  callvirt   instance !!0 [Survivalcraft]Game.WidgetsContainer::Find<class [Survivalcraft]Game.LabelWidget>(string,
                                                                                                                        bool)
    IL_0067:  stloc.s    V_5
    IL_0069:  ldloc.1
    IL_006a:  ldfld      class [Survivalcraft]Game.WidgetsContainer [Survivalcraft]Game.ContainerWidget::Children
    IL_006f:  ldstr      "WorldItem.EnvironmentBehaviorMode"
    IL_0074:  ldc.i4.1
    IL_0075:  callvirt   instance !!0 [Survivalcraft]Game.WidgetsContainer::Find<class [Survivalcraft]Game.LabelWidget>(string,
                                                                                                                        bool)
    IL_007a:  stloc.s    V_6
    IL_007c:  ldloc.1
    IL_007d:  ldfld      class [Survivalcraft]Game.WidgetsContainer [Survivalcraft]Game.ContainerWidget::Children
    IL_0082:  ldstr      "WorldItem.Version"
    IL_0087:  ldc.i4.1
    IL_0088:  callvirt   instance !!0 [Survivalcraft]Game.WidgetsContainer::Find<class [Survivalcraft]Game.LabelWidget>(string,
                                                                                                                        bool)
    IL_008d:  stloc.s    V_7
    IL_008f:  ldloc.1
    IL_0090:  ldloc.0
    IL_0091:  callvirt   instance void [Survivalcraft]Game.Widget::set_Tag(object)
    IL_0096:  nop
    IL_0097:  ldloc.2
    IL_0098:  ldloc.0
    IL_0099:  ldfld      string [Survivalcraft]Game.WorldInfo::Name
    IL_009e:  callvirt   instance void [Survivalcraft]Game.LabelWidget::set_Text(string)
    IL_00a3:  nop
    IL_00a4:  ldloc.3
    IL_00a5:  ldstr      "{0:0.00MB}"
    IL_00aa:  ldc.i4.1
    IL_00ab:  newarr     [System.Runtime]System.Object
    IL_00b0:  dup
    IL_00b1:  ldc.i4.0
    IL_00b2:  ldloc.0
    IL_00b3:  ldfld      int64 [Survivalcraft]Game.WorldInfo::Size
    IL_00b8:  conv.r8
    IL_00b9:  ldc.r8     1024.
    IL_00c2:  div
    IL_00c3:  ldc.r8     1024.
    IL_00cc:  div
    IL_00cd:  conv.r4
    IL_00ce:  box        [System.Runtime]System.Single
    IL_00d3:  stelem.ref
    IL_00d4:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_00d9:  callvirt   instance void [Survivalcraft]Game.LabelWidget::set_Text(string)
    IL_00de:  nop
    IL_00df:  ldloc.s    V_4
    IL_00e1:  ldstr      "{0:dd MMM yyyy HH:mm}"
    IL_00e6:  ldc.i4.1
    IL_00e7:  newarr     [System.Runtime]System.Object
    IL_00ec:  dup
    IL_00ed:  ldc.i4.0
    IL_00ee:  ldloc.0
    IL_00ef:  ldfld      valuetype [System.Runtime]System.DateTime [Survivalcraft]Game.WorldInfo::LastSaveTime
    IL_00f4:  box        [System.Runtime]System.DateTime
    IL_00f9:  stelem.ref
    IL_00fa:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_00ff:  callvirt   instance void [Survivalcraft]Game.LabelWidget::set_Text(string)
    IL_0104:  nop
    IL_0105:  ldloc.s    V_5
    IL_0107:  ldloc.0
    IL_0108:  ldflda     valuetype [Survivalcraft]Game.GameMode [Survivalcraft]Game.WorldInfo::GameMode
    IL_010d:  constrained. [Survivalcraft]Game.GameMode
    IL_0113:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_0118:  callvirt   instance void [Survivalcraft]Game.LabelWidget::set_Text(string)
    IL_011d:  nop
    IL_011e:  ldloc.s    V_6
    IL_0120:  ldloc.0
    IL_0121:  ldflda     valuetype [Survivalcraft]Game.EnvironmentBehaviorMode [Survivalcraft]Game.WorldInfo::EnvironmentBehaviorMode
    IL_0126:  constrained. [Survivalcraft]Game.EnvironmentBehaviorMode
    IL_012c:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_0131:  callvirt   instance void [Survivalcraft]Game.LabelWidget::set_Text(string)
    IL_0136:  nop
    IL_0137:  ldloc.s    V_7
    IL_0139:  ldloc.0
    IL_013a:  ldfld      string [Survivalcraft]Game.WorldInfo::SerializationVersion
    IL_013f:  call       string Game.VersionsManager::get_SerializationVersion()
    IL_0144:  call       bool [System.Runtime]System.String::op_Inequality(string,
                                                                           string)
    IL_0149:  brfalse.s  IL_0176

    IL_014b:  ldloc.0
    IL_014c:  ldfld      string [Survivalcraft]Game.WorldInfo::SerializationVersion
    IL_0151:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_0156:  brtrue.s   IL_016f

    IL_0158:  ldstr      "("
    IL_015d:  ldloc.0
    IL_015e:  ldfld      string [Survivalcraft]Game.WorldInfo::SerializationVersion
    IL_0163:  ldstr      ")"
    IL_0168:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string,
                                                                      string)
    IL_016d:  br.s       IL_0174

    IL_016f:  ldstr      "(unknown)"
    IL_0174:  br.s       IL_017b

    IL_0176:  ldsfld     string [System.Runtime]System.String::Empty
    IL_017b:  callvirt   instance void [Survivalcraft]Game.LabelWidget::set_Text(string)
    IL_0180:  nop
    IL_0181:  ldloc.1
    IL_0182:  stloc.s    V_8
    IL_0184:  br.s       IL_0186

    IL_0186:  ldloc.s    V_8
    IL_0188:  ret
  } // end of method SingleplayerScreen::'<.ctor>b__1_0'

  .method private hidebysig instance void 
          '<Update>b__3_0'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       48 (0x30)
    .maxstack  3
    .locals init (object[] V_0)
    IL_0000:  nop
    IL_0001:  ldc.i4.2
    IL_0002:  newarr     [System.Runtime]System.Object
    IL_0007:  stloc.0
    IL_0008:  ldloc.0
    IL_0009:  ldc.i4.0
    IL_000a:  ldarg.0
    IL_000b:  ldfld      class [Survivalcraft]Game.ListPanelWidget Game.SingleplayerScreen::m_worldsListWidget
    IL_0010:  callvirt   instance object [Survivalcraft]Game.ListPanelWidget::get_SelectedItem()
    IL_0015:  stelem.ref
    IL_0016:  ldstr      "GameLoading"
    IL_001b:  ldloc.0
    IL_001c:  call       void [Survivalcraft]Game.ScreensManager::SwitchScreen(string,
                                                                               object[])
    IL_0021:  nop
    IL_0022:  ldarg.0
    IL_0023:  ldfld      class [Survivalcraft]Game.ListPanelWidget Game.SingleplayerScreen::m_worldsListWidget
    IL_0028:  ldnull
    IL_0029:  callvirt   instance void [Survivalcraft]Game.ListPanelWidget::set_SelectedItem(object)
    IL_002e:  nop
    IL_002f:  ret
  } // end of method SingleplayerScreen::'<Update>b__3_0'

  .method private hidebysig instance void 
          '<Update>b__3_1'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       32 (0x20)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldstr      "NewWorld"
    IL_0006:  ldc.i4.0
    IL_0007:  newarr     [System.Runtime]System.Object
    IL_000c:  call       void [Survivalcraft]Game.ScreensManager::SwitchScreen(string,
                                                                               object[])
    IL_0011:  nop
    IL_0012:  ldarg.0
    IL_0013:  ldfld      class [Survivalcraft]Game.ListPanelWidget Game.SingleplayerScreen::m_worldsListWidget
    IL_0018:  ldnull
    IL_0019:  callvirt   instance void [Survivalcraft]Game.ListPanelWidget::set_SelectedItem(object)
    IL_001e:  nop
    IL_001f:  ret
  } // end of method SingleplayerScreen::'<Update>b__3_1'

  .method private hidebysig instance void 
          '<Update>b__3_2'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       35 (0x23)
    .maxstack  4
    .locals init (object[] V_0)
    IL_0000:  nop
    IL_0001:  ldc.i4.1
    IL_0002:  newarr     [System.Runtime]System.Object
    IL_0007:  dup
    IL_0008:  ldc.i4.0
    IL_0009:  ldarg.0
    IL_000a:  ldfld      class [Survivalcraft]Game.ListPanelWidget Game.SingleplayerScreen::m_worldsListWidget
    IL_000f:  callvirt   instance object [Survivalcraft]Game.ListPanelWidget::get_SelectedItem()
    IL_0014:  stelem.ref
    IL_0015:  stloc.0
    IL_0016:  ldstr      "ModifyWorld"
    IL_001b:  ldloc.0
    IL_001c:  call       void [Survivalcraft]Game.ScreensManager::SwitchScreen(string,
                                                                               object[])
    IL_0021:  nop
    IL_0022:  ret
  } // end of method SingleplayerScreen::'<Update>b__3_2'

  .method private hidebysig instance void 
          '<Update>b__3_3'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       32 (0x20)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldstr      "MainMenu"
    IL_0006:  ldc.i4.0
    IL_0007:  newarr     [System.Runtime]System.Object
    IL_000c:  call       void [Survivalcraft]Game.ScreensManager::SwitchScreen(string,
                                                                               object[])
    IL_0011:  nop
    IL_0012:  ldarg.0
    IL_0013:  ldfld      class [Survivalcraft]Game.ListPanelWidget Game.SingleplayerScreen::m_worldsListWidget
    IL_0018:  ldnull
    IL_0019:  callvirt   instance void [Survivalcraft]Game.ListPanelWidget::set_SelectedItem(object)
    IL_001e:  nop
    IL_001f:  ret
  } // end of method SingleplayerScreen::'<Update>b__3_3'

} // end of class Game.SingleplayerScreen
