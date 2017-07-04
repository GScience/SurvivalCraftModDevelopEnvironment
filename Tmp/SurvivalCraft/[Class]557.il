.class public auto ansi beforefieldinit Game.PlayScreen
       extends Game.Screen
{
  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass2_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class [System.Collections]System.Collections.Generic.List`1<class Game.WorldInfo> worldInfos
    .field public class Game.WorldInfo selectedItem
    .field public class Game.PlayScreen/'<>c__DisplayClass2_1' 'CS$<>8__locals1'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass2_0'::.ctor

    .method assembly hidebysig instance void 
            '<Enter>b__2'() cil managed
    {
      // 代码大小       159 (0x9f)
      .maxstack  4
      .locals init (valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.WorldInfo> V_0,
               class Game.WorldInfo V_1)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.PlayScreen/'<>c__DisplayClass2_1' Game.PlayScreen/'<>c__DisplayClass2_0'::'CS$<>8__locals1'
      IL_0006:  ldfld      class Game.PlayScreen Game.PlayScreen/'<>c__DisplayClass2_1'::'<>4__this'
      IL_000b:  ldfld      class Game.ListPanelWidget Game.PlayScreen::m_worldsListWidget
      IL_0010:  callvirt   instance void Game.ListPanelWidget::ClearItems()
      IL_0015:  ldarg.0
      IL_0016:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.WorldInfo> Game.PlayScreen/'<>c__DisplayClass2_0'::worldInfos
      IL_001b:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.WorldInfo>::GetEnumerator()
      IL_0020:  stloc.0
      .try
      {
        IL_0021:  br.s       IL_0041

        IL_0023:  ldloca.s   V_0
        IL_0025:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.WorldInfo>::get_Current()
        IL_002a:  stloc.1
        IL_002b:  ldarg.0
        IL_002c:  ldfld      class Game.PlayScreen/'<>c__DisplayClass2_1' Game.PlayScreen/'<>c__DisplayClass2_0'::'CS$<>8__locals1'
        IL_0031:  ldfld      class Game.PlayScreen Game.PlayScreen/'<>c__DisplayClass2_1'::'<>4__this'
        IL_0036:  ldfld      class Game.ListPanelWidget Game.PlayScreen::m_worldsListWidget
        IL_003b:  ldloc.1
        IL_003c:  callvirt   instance void Game.ListPanelWidget::AddItem(object)
        IL_0041:  ldloca.s   V_0
        IL_0043:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.WorldInfo>::MoveNext()
        IL_0048:  brtrue.s   IL_0023

        IL_004a:  leave.s    IL_005a

      }  // end .try
      finally
      {
        IL_004c:  ldloca.s   V_0
        IL_004e:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.WorldInfo>
        IL_0054:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_0059:  endfinally
      }  // end handler
      IL_005a:  ldarg.0
      IL_005b:  ldfld      class Game.WorldInfo Game.PlayScreen/'<>c__DisplayClass2_0'::selectedItem
      IL_0060:  brfalse.s  IL_008e

      IL_0062:  ldarg.0
      IL_0063:  ldfld      class Game.PlayScreen/'<>c__DisplayClass2_1' Game.PlayScreen/'<>c__DisplayClass2_0'::'CS$<>8__locals1'
      IL_0068:  ldfld      class Game.PlayScreen Game.PlayScreen/'<>c__DisplayClass2_1'::'<>4__this'
      IL_006d:  ldfld      class Game.ListPanelWidget Game.PlayScreen::m_worldsListWidget
      IL_0072:  ldarg.0
      IL_0073:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.WorldInfo> Game.PlayScreen/'<>c__DisplayClass2_0'::worldInfos
      IL_0078:  ldarg.0
      IL_0079:  ldftn      instance bool Game.PlayScreen/'<>c__DisplayClass2_0'::'<Enter>b__3'(class Game.WorldInfo)
      IL_007f:  newobj     instance void class [System.Runtime]System.Func`2<class Game.WorldInfo,bool>::.ctor(object,
                                                                                                               native int)
      IL_0084:  call       !!0 [System.Linq]System.Linq.Enumerable::FirstOrDefault<class Game.WorldInfo>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                         class [System.Runtime]System.Func`2<!!0,bool>)
      IL_0089:  callvirt   instance void Game.ListPanelWidget::set_SelectedItem(object)
      IL_008e:  ldarg.0
      IL_008f:  ldfld      class Game.PlayScreen/'<>c__DisplayClass2_1' Game.PlayScreen/'<>c__DisplayClass2_0'::'CS$<>8__locals1'
      IL_0094:  ldfld      class Game.BusyDialog Game.PlayScreen/'<>c__DisplayClass2_1'::dialog
      IL_0099:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
      IL_009e:  ret
    } // end of method '<>c__DisplayClass2_0'::'<Enter>b__2'

    .method assembly hidebysig instance bool 
            '<Enter>b__3'(class Game.WorldInfo wi) cil managed
    {
      // 代码大小       23 (0x17)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldfld      string Game.WorldInfo::DirectoryName
      IL_0006:  ldarg.0
      IL_0007:  ldfld      class Game.WorldInfo Game.PlayScreen/'<>c__DisplayClass2_0'::selectedItem
      IL_000c:  ldfld      string Game.WorldInfo::DirectoryName
      IL_0011:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_0016:  ret
    } // end of method '<>c__DisplayClass2_0'::'<Enter>b__3'

  } // end of class '<>c__DisplayClass2_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass2_1'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class Game.BusyDialog dialog
    .field public class Game.PlayScreen '<>4__this'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass2_1'::.ctor

    .method assembly hidebysig instance void 
            '<Enter>b__0'() cil managed
    {
      // 代码大小       125 (0x7d)
      .maxstack  4
      IL_0000:  newobj     instance void Game.PlayScreen/'<>c__DisplayClass2_0'::.ctor()
      IL_0005:  dup
      IL_0006:  ldarg.0
      IL_0007:  stfld      class Game.PlayScreen/'<>c__DisplayClass2_1' Game.PlayScreen/'<>c__DisplayClass2_0'::'CS$<>8__locals1'
      IL_000c:  dup
      IL_000d:  ldarg.0
      IL_000e:  ldfld      class Game.PlayScreen Game.PlayScreen/'<>c__DisplayClass2_1'::'<>4__this'
      IL_0013:  ldfld      class Game.ListPanelWidget Game.PlayScreen::m_worldsListWidget
      IL_0018:  callvirt   instance object Game.ListPanelWidget::get_SelectedItem()
      IL_001d:  castclass  Game.WorldInfo
      IL_0022:  stfld      class Game.WorldInfo Game.PlayScreen/'<>c__DisplayClass2_0'::selectedItem
      IL_0027:  call       void Game.WorldsManager::UpdateWorldsList()
      IL_002c:  dup
      IL_002d:  call       valuetype [Engine]Engine.ReadOnlyList`1<class Game.WorldInfo> Game.WorldsManager::get_WorldInfos()
      IL_0032:  box        valuetype [Engine]Engine.ReadOnlyList`1<class Game.WorldInfo>
      IL_0037:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.WorldInfo>::.ctor(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!0>)
      IL_003c:  stfld      class [System.Collections]System.Collections.Generic.List`1<class Game.WorldInfo> Game.PlayScreen/'<>c__DisplayClass2_0'::worldInfos
      IL_0041:  dup
      IL_0042:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.WorldInfo> Game.PlayScreen/'<>c__DisplayClass2_0'::worldInfos
      IL_0047:  ldsfld     class [System.Runtime]System.Comparison`1<class Game.WorldInfo> Game.PlayScreen/'<>c'::'<>9__2_1'
      IL_004c:  dup
      IL_004d:  brtrue.s   IL_0066

      IL_004f:  pop
      IL_0050:  ldsfld     class Game.PlayScreen/'<>c' Game.PlayScreen/'<>c'::'<>9'
      IL_0055:  ldftn      instance int32 Game.PlayScreen/'<>c'::'<Enter>b__2_1'(class Game.WorldInfo,
                                                                                 class Game.WorldInfo)
      IL_005b:  newobj     instance void class [System.Runtime]System.Comparison`1<class Game.WorldInfo>::.ctor(object,
                                                                                                                native int)
      IL_0060:  dup
      IL_0061:  stsfld     class [System.Runtime]System.Comparison`1<class Game.WorldInfo> Game.PlayScreen/'<>c'::'<>9__2_1'
      IL_0066:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.WorldInfo>::Sort(class [System.Runtime]System.Comparison`1<!0>)
      IL_006b:  ldftn      instance void Game.PlayScreen/'<>c__DisplayClass2_0'::'<Enter>b__2'()
      IL_0071:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                              native int)
      IL_0076:  ldc.i4.0
      IL_0077:  call       void [Engine]Engine.Dispatcher::Dispatch(class [System.Runtime]System.Action,
                                                                    bool)
      IL_007c:  ret
    } // end of method '<>c__DisplayClass2_1'::'<Enter>b__0'

  } // end of class '<>c__DisplayClass2_1'

  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.PlayScreen/'<>c' '<>9'
    .field public static class [System.Runtime]System.Comparison`1<class Game.WorldInfo> '<>9__2_1'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.PlayScreen/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.PlayScreen/'<>c' Game.PlayScreen/'<>c'::'<>9'
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

    .method assembly hidebysig instance int32 
            '<Enter>b__2_1'(class Game.WorldInfo w1,
                            class Game.WorldInfo w2) cil managed
    {
      // 代码大小       18 (0x12)
      .maxstack  8
      IL_0000:  ldarg.2
      IL_0001:  ldfld      valuetype [System.Runtime]System.DateTime Game.WorldInfo::LastSaveTime
      IL_0006:  ldarg.1
      IL_0007:  ldfld      valuetype [System.Runtime]System.DateTime Game.WorldInfo::LastSaveTime
      IL_000c:  call       int32 [System.Runtime]System.DateTime::Compare(valuetype [System.Runtime]System.DateTime,
                                                                          valuetype [System.Runtime]System.DateTime)
      IL_0011:  ret
    } // end of method '<>c'::'<Enter>b__2_1'

  } // end of class '<>c'

  .field private class Game.ListPanelWidget m_worldsListWidget
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       120 (0x78)
    .maxstack  4
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.Screen::.ctor()
    IL_0006:  ldstr      "Screens/PlayScreen"
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
    IL_0020:  ldstr      "WorldsList"
    IL_0025:  ldc.i4.1
    IL_0026:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ListPanelWidget>(string,
                                                                                         bool)
    IL_002b:  stfld      class Game.ListPanelWidget Game.PlayScreen::m_worldsListWidget
    IL_0030:  ldarg.0
    IL_0031:  ldfld      class Game.ListPanelWidget Game.PlayScreen::m_worldsListWidget
    IL_0036:  dup
    IL_0037:  callvirt   instance class [System.Runtime]System.Func`2<object,class Game.Widget> Game.ListPanelWidget::get_ItemWidgetFactory()
    IL_003c:  ldarg.0
    IL_003d:  ldftn      instance class Game.Widget Game.PlayScreen::'<.ctor>b__1_0'(object)
    IL_0043:  newobj     instance void class [System.Runtime]System.Func`2<object,class Game.Widget>::.ctor(object,
                                                                                                            native int)
    IL_0048:  call       class [System.Runtime]System.Delegate [System.Runtime]System.Delegate::Combine(class [System.Runtime]System.Delegate,
                                                                                                        class [System.Runtime]System.Delegate)
    IL_004d:  castclass  class [System.Runtime]System.Func`2<object,class Game.Widget>
    IL_0052:  callvirt   instance void Game.ListPanelWidget::set_ItemWidgetFactory(class [System.Runtime]System.Func`2<object,class Game.Widget>)
    IL_0057:  ldarg.0
    IL_0058:  ldfld      class Game.ListPanelWidget Game.PlayScreen::m_worldsListWidget
    IL_005d:  ldc.r4     0.0
    IL_0062:  callvirt   instance void Game.ScrollPanelWidget::set_ScrollPosition(float32)
    IL_0067:  ldarg.0
    IL_0068:  ldfld      class Game.ListPanelWidget Game.PlayScreen::m_worldsListWidget
    IL_006d:  ldc.r4     0.0
    IL_0072:  callvirt   instance void Game.ScrollPanelWidget::set_ScrollSpeed(float32)
    IL_0077:  ret
  } // end of method PlayScreen::.ctor

  .method public hidebysig virtual instance void 
          Enter(object[] parameters) cil managed
  {
    // 代码大小       61 (0x3d)
    .maxstack  3
    .locals init (class Game.PlayScreen/'<>c__DisplayClass2_1' V_0)
    IL_0000:  newobj     instance void Game.PlayScreen/'<>c__DisplayClass2_1'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.0
    IL_0008:  stfld      class Game.PlayScreen Game.PlayScreen/'<>c__DisplayClass2_1'::'<>4__this'
    IL_000d:  ldloc.0
    IL_000e:  ldstr      "Scanning Worlds"
    IL_0013:  ldnull
    IL_0014:  newobj     instance void Game.BusyDialog::.ctor(string,
                                                              string)
    IL_0019:  stfld      class Game.BusyDialog Game.PlayScreen/'<>c__DisplayClass2_1'::dialog
    IL_001e:  ldnull
    IL_001f:  ldloc.0
    IL_0020:  ldfld      class Game.BusyDialog Game.PlayScreen/'<>c__DisplayClass2_1'::dialog
    IL_0025:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_002a:  ldloc.0
    IL_002b:  ldftn      instance void Game.PlayScreen/'<>c__DisplayClass2_1'::'<Enter>b__0'()
    IL_0031:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0036:  call       class [System.Threading.Tasks]System.Threading.Tasks.Task [System.Threading.Tasks]System.Threading.Tasks.Task::Run(class [System.Runtime]System.Action)
    IL_003b:  pop
    IL_003c:  ret
  } // end of method PlayScreen::Enter

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       539 (0x21b)
    .maxstack  6
    .locals init (valuetype [Engine]Engine.ReadOnlyList`1<class Game.WorldInfo> V_0,
             valuetype [Engine]Engine.ReadOnlyList`1<object> V_1,
             class Game.WorldInfo V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ListPanelWidget Game.PlayScreen::m_worldsListWidget
    IL_0006:  callvirt   instance object Game.ListPanelWidget::get_SelectedItem()
    IL_000b:  brfalse.s  IL_0039

    IL_000d:  call       valuetype [Engine]Engine.ReadOnlyList`1<class Game.WorldInfo> Game.WorldsManager::get_WorldInfos()
    IL_0012:  stloc.0
    IL_0013:  ldloca.s   V_0
    IL_0015:  ldarg.0
    IL_0016:  ldfld      class Game.ListPanelWidget Game.PlayScreen::m_worldsListWidget
    IL_001b:  callvirt   instance object Game.ListPanelWidget::get_SelectedItem()
    IL_0020:  castclass  Game.WorldInfo
    IL_0025:  call       instance int32 valuetype [Engine]Engine.ReadOnlyList`1<class Game.WorldInfo>::IndexOf(!0)
    IL_002a:  ldc.i4.0
    IL_002b:  bge.s      IL_0039

    IL_002d:  ldarg.0
    IL_002e:  ldfld      class Game.ListPanelWidget Game.PlayScreen::m_worldsListWidget
    IL_0033:  ldnull
    IL_0034:  callvirt   instance void Game.ListPanelWidget::set_SelectedItem(object)
    IL_0039:  ldarg.0
    IL_003a:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_003f:  ldstr      "TopBar.Label"
    IL_0044:  ldc.i4.1
    IL_0045:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_004a:  ldstr      "Existing Worlds ({0})"
    IL_004f:  ldc.i4.1
    IL_0050:  newarr     [System.Runtime]System.Object
    IL_0055:  dup
    IL_0056:  ldc.i4.0
    IL_0057:  ldarg.0
    IL_0058:  ldfld      class Game.ListPanelWidget Game.PlayScreen::m_worldsListWidget
    IL_005d:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<object> Game.ListPanelWidget::get_Items()
    IL_0062:  stloc.1
    IL_0063:  ldloca.s   V_1
    IL_0065:  call       instance int32 valuetype [Engine]Engine.ReadOnlyList`1<object>::get_Count()
    IL_006a:  box        [System.Runtime]System.Int32
    IL_006f:  stelem.ref
    IL_0070:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0075:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_007a:  ldarg.0
    IL_007b:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0080:  ldstr      "Play"
    IL_0085:  ldc.i4.1
    IL_0086:  callvirt   instance class Game.Widget Game.WidgetsList::Find(string,
                                                                           bool)
    IL_008b:  ldarg.0
    IL_008c:  ldfld      class Game.ListPanelWidget Game.PlayScreen::m_worldsListWidget
    IL_0091:  callvirt   instance object Game.ListPanelWidget::get_SelectedItem()
    IL_0096:  ldnull
    IL_0097:  cgt.un
    IL_0099:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_009e:  ldarg.0
    IL_009f:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00a4:  ldstr      "Properties"
    IL_00a9:  ldc.i4.1
    IL_00aa:  callvirt   instance class Game.Widget Game.WidgetsList::Find(string,
                                                                           bool)
    IL_00af:  ldarg.0
    IL_00b0:  ldfld      class Game.ListPanelWidget Game.PlayScreen::m_worldsListWidget
    IL_00b5:  callvirt   instance object Game.ListPanelWidget::get_SelectedItem()
    IL_00ba:  ldnull
    IL_00bb:  cgt.un
    IL_00bd:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_00c2:  ldarg.0
    IL_00c3:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00c8:  ldstr      "Play"
    IL_00cd:  ldc.i4.1
    IL_00ce:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_00d3:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_00d8:  brfalse.s  IL_0111

    IL_00da:  ldarg.0
    IL_00db:  ldfld      class Game.ListPanelWidget Game.PlayScreen::m_worldsListWidget
    IL_00e0:  callvirt   instance object Game.ListPanelWidget::get_SelectedItem()
    IL_00e5:  brfalse.s  IL_0111

    IL_00e7:  ldstr      "GameLoading"
    IL_00ec:  ldc.i4.2
    IL_00ed:  newarr     [System.Runtime]System.Object
    IL_00f2:  dup
    IL_00f3:  ldc.i4.0
    IL_00f4:  ldarg.0
    IL_00f5:  ldfld      class Game.ListPanelWidget Game.PlayScreen::m_worldsListWidget
    IL_00fa:  callvirt   instance object Game.ListPanelWidget::get_SelectedItem()
    IL_00ff:  stelem.ref
    IL_0100:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                object[])
    IL_0105:  ldarg.0
    IL_0106:  ldfld      class Game.ListPanelWidget Game.PlayScreen::m_worldsListWidget
    IL_010b:  ldnull
    IL_010c:  callvirt   instance void Game.ListPanelWidget::set_SelectedItem(object)
    IL_0111:  ldarg.0
    IL_0112:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0117:  ldstr      "NewWorld"
    IL_011c:  ldc.i4.1
    IL_011d:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0122:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0127:  brfalse.s  IL_0174

    IL_0129:  call       valuetype [Engine]Engine.ReadOnlyList`1<class Game.WorldInfo> Game.WorldsManager::get_WorldInfos()
    IL_012e:  stloc.0
    IL_012f:  ldloca.s   V_0
    IL_0131:  call       instance int32 valuetype [Engine]Engine.ReadOnlyList`1<class Game.WorldInfo>::get_Count()
    IL_0136:  ldc.i4.s   20
    IL_0138:  blt.s      IL_0158

    IL_013a:  ldnull
    IL_013b:  ldstr      "Too many worlds"
    IL_0140:  ldstr      "A maximum of 20 worlds is allowed on a device. Del"
    + "ete some to make space for new ones."
    IL_0145:  ldstr      "OK"
    IL_014a:  ldnull
    IL_014b:  ldnull
    IL_014c:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                 string,
                                                                 string,
                                                                 string,
                                                                 class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
    IL_0151:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_0156:  br.s       IL_0174

    IL_0158:  ldstr      "NewWorld"
    IL_015d:  ldc.i4.0
    IL_015e:  newarr     [System.Runtime]System.Object
    IL_0163:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                object[])
    IL_0168:  ldarg.0
    IL_0169:  ldfld      class Game.ListPanelWidget Game.PlayScreen::m_worldsListWidget
    IL_016e:  ldnull
    IL_016f:  callvirt   instance void Game.ListPanelWidget::set_SelectedItem(object)
    IL_0174:  ldarg.0
    IL_0175:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_017a:  ldstr      "Properties"
    IL_017f:  ldc.i4.1
    IL_0180:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0185:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_018a:  brfalse.s  IL_01cc

    IL_018c:  ldarg.0
    IL_018d:  ldfld      class Game.ListPanelWidget Game.PlayScreen::m_worldsListWidget
    IL_0192:  callvirt   instance object Game.ListPanelWidget::get_SelectedItem()
    IL_0197:  brfalse.s  IL_01cc

    IL_0199:  ldarg.0
    IL_019a:  ldfld      class Game.ListPanelWidget Game.PlayScreen::m_worldsListWidget
    IL_019f:  callvirt   instance object Game.ListPanelWidget::get_SelectedItem()
    IL_01a4:  castclass  Game.WorldInfo
    IL_01a9:  stloc.2
    IL_01aa:  ldstr      "ModifyWorld"
    IL_01af:  ldc.i4.2
    IL_01b0:  newarr     [System.Runtime]System.Object
    IL_01b5:  dup
    IL_01b6:  ldc.i4.0
    IL_01b7:  ldloc.2
    IL_01b8:  ldfld      string Game.WorldInfo::DirectoryName
    IL_01bd:  stelem.ref
    IL_01be:  dup
    IL_01bf:  ldc.i4.1
    IL_01c0:  ldloc.2
    IL_01c1:  ldfld      class Game.WorldSettings Game.WorldInfo::WorldSettings
    IL_01c6:  stelem.ref
    IL_01c7:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                object[])
    IL_01cc:  ldarg.0
    IL_01cd:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_01d2:  callvirt   instance bool Game.WidgetInput::get_Back()
    IL_01d7:  brtrue.s   IL_01fe

    IL_01d9:  ldarg.0
    IL_01da:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_01df:  callvirt   instance bool Game.WidgetInput::get_Cancel()
    IL_01e4:  brtrue.s   IL_01fe

    IL_01e6:  ldarg.0
    IL_01e7:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_01ec:  ldstr      "TopBar.Back"
    IL_01f1:  ldc.i4.1
    IL_01f2:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_01f7:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_01fc:  brfalse.s  IL_021a

    IL_01fe:  ldstr      "MainMenu"
    IL_0203:  ldc.i4.0
    IL_0204:  newarr     [System.Runtime]System.Object
    IL_0209:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                object[])
    IL_020e:  ldarg.0
    IL_020f:  ldfld      class Game.ListPanelWidget Game.PlayScreen::m_worldsListWidget
    IL_0214:  ldnull
    IL_0215:  callvirt   instance void Game.ListPanelWidget::set_SelectedItem(object)
    IL_021a:  ret
  } // end of method PlayScreen::Update

  .method private hidebysig instance class Game.Widget 
          '<.ctor>b__1_0'(object item) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       342 (0x156)
    .maxstack  10
    .locals init (class Game.WorldInfo V_0,
             class [System.Xml.XDocument]System.Xml.Linq.XElement V_1,
             class Game.ContainerWidget V_2,
             class Game.LabelWidget V_3,
             class Game.LabelWidget V_4)
    IL_0000:  ldarg.1
    IL_0001:  castclass  Game.WorldInfo
    IL_0006:  stloc.0
    IL_0007:  ldstr      "Widgets/SavedWorldItem"
    IL_000c:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_0011:  stloc.1
    IL_0012:  ldarg.0
    IL_0013:  ldloc.1
    IL_0014:  ldnull
    IL_0015:  call       class Game.Widget Game.WidgetsManager::LoadWidget(object,
                                                                           class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                           class Game.ContainerWidget)
    IL_001a:  castclass  Game.ContainerWidget
    IL_001f:  stloc.2
    IL_0020:  ldloc.2
    IL_0021:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0026:  ldstr      "WorldItem.Name"
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_0031:  stloc.3
    IL_0032:  ldloc.2
    IL_0033:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0038:  ldstr      "WorldItem.Details"
    IL_003d:  ldc.i4.1
    IL_003e:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_0043:  stloc.s    V_4
    IL_0045:  ldloc.2
    IL_0046:  ldloc.0
    IL_0047:  callvirt   instance void Game.Widget::set_Tag(object)
    IL_004c:  ldloc.3
    IL_004d:  ldloc.0
    IL_004e:  ldfld      class Game.WorldSettings Game.WorldInfo::WorldSettings
    IL_0053:  ldfld      string Game.WorldSettings::Name
    IL_0058:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_005d:  ldloc.s    V_4
    IL_005f:  ldstr      "{0} | {1:dd MMM yyyy HH:mm} | {2} | {3} | {4}"
    IL_0064:  ldc.i4.5
    IL_0065:  newarr     [System.Runtime]System.Object
    IL_006a:  dup
    IL_006b:  ldc.i4.0
    IL_006c:  ldloc.0
    IL_006d:  ldfld      int64 Game.WorldInfo::Size
    IL_0072:  call       string Game.DataSizeFormatter::Format(int64)
    IL_0077:  stelem.ref
    IL_0078:  dup
    IL_0079:  ldc.i4.1
    IL_007a:  ldloc.0
    IL_007b:  ldflda     valuetype [System.Runtime]System.DateTime Game.WorldInfo::LastSaveTime
    IL_0080:  call       instance valuetype [System.Runtime]System.DateTime [System.Runtime]System.DateTime::ToLocalTime()
    IL_0085:  box        [System.Runtime]System.DateTime
    IL_008a:  stelem.ref
    IL_008b:  dup
    IL_008c:  ldc.i4.2
    IL_008d:  ldloc.0
    IL_008e:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.PlayerInfo> Game.WorldInfo::PlayerInfos
    IL_0093:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.PlayerInfo>::get_Count()
    IL_0098:  ldc.i4.1
    IL_0099:  bgt.s      IL_00a2

    IL_009b:  ldstr      "1 player"
    IL_00a0:  br.s       IL_00c5

    IL_00a2:  ldstr      "{0} players"
    IL_00a7:  ldc.i4.1
    IL_00a8:  newarr     [System.Runtime]System.Object
    IL_00ad:  dup
    IL_00ae:  ldc.i4.0
    IL_00af:  ldloc.0
    IL_00b0:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.PlayerInfo> Game.WorldInfo::PlayerInfos
    IL_00b5:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.PlayerInfo>::get_Count()
    IL_00ba:  box        [System.Runtime]System.Int32
    IL_00bf:  stelem.ref
    IL_00c0:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_00c5:  stelem.ref
    IL_00c6:  dup
    IL_00c7:  ldc.i4.3
    IL_00c8:  ldloc.0
    IL_00c9:  ldfld      class Game.WorldSettings Game.WorldInfo::WorldSettings
    IL_00ce:  ldflda     valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_00d3:  constrained. Game.GameMode
    IL_00d9:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_00de:  stelem.ref
    IL_00df:  dup
    IL_00e0:  ldc.i4.4
    IL_00e1:  ldloc.0
    IL_00e2:  ldfld      class Game.WorldSettings Game.WorldInfo::WorldSettings
    IL_00e7:  ldflda     valuetype Game.EnvironmentBehaviorMode Game.WorldSettings::EnvironmentBehaviorMode
    IL_00ec:  constrained. Game.EnvironmentBehaviorMode
    IL_00f2:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_00f7:  stelem.ref
    IL_00f8:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_00fd:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0102:  ldloc.0
    IL_0103:  ldfld      string Game.WorldInfo::SerializationVersion
    IL_0108:  call       string Game.VersionsManager::get_SerializationVersion()
    IL_010d:  call       bool [System.Runtime]System.String::op_Inequality(string,
                                                                           string)
    IL_0112:  brfalse.s  IL_0154

    IL_0114:  ldloc.s    V_4
    IL_0116:  dup
    IL_0117:  callvirt   instance string Game.LabelWidget::get_Text()
    IL_011c:  ldstr      " | "
    IL_0121:  ldloc.0
    IL_0122:  ldfld      string Game.WorldInfo::SerializationVersion
    IL_0127:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_012c:  brtrue.s   IL_0145

    IL_012e:  ldstr      "("
    IL_0133:  ldloc.0
    IL_0134:  ldfld      string Game.WorldInfo::SerializationVersion
    IL_0139:  ldstr      ")"
    IL_013e:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string,
                                                                      string)
    IL_0143:  br.s       IL_014a

    IL_0145:  ldstr      "(unknown)"
    IL_014a:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string,
                                                                      string)
    IL_014f:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0154:  ldloc.2
    IL_0155:  ret
  } // end of method PlayScreen::'<.ctor>b__1_0'

} // end of class Game.PlayScreen