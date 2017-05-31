.class public auto ansi beforefieldinit Game.SingleplayerScreen
       extends Game.Screen
{
  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass2_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class [System.Collections]System.Collections.Generic.List`1<class Game.WorldInfo> worldInfos
    .field public class Game.WorldInfo selectedItem
    .field public class Game.SingleplayerScreen/'<>c__DisplayClass2_1' 'CS$<>8__locals1'
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
      IL_0001:  ldfld      class Game.SingleplayerScreen/'<>c__DisplayClass2_1' Game.SingleplayerScreen/'<>c__DisplayClass2_0'::'CS$<>8__locals1'
      IL_0006:  ldfld      class Game.SingleplayerScreen Game.SingleplayerScreen/'<>c__DisplayClass2_1'::'<>4__this'
      IL_000b:  ldfld      class Game.ListPanelWidget Game.SingleplayerScreen::m_worldsListWidget
      IL_0010:  callvirt   instance void Game.ListPanelWidget::ClearItems()
      IL_0015:  ldarg.0
      IL_0016:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.WorldInfo> Game.SingleplayerScreen/'<>c__DisplayClass2_0'::worldInfos
      IL_001b:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.WorldInfo>::GetEnumerator()
      IL_0020:  stloc.0
      .try
      {
        IL_0021:  br.s       IL_0041

        IL_0023:  ldloca.s   V_0
        IL_0025:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.WorldInfo>::get_Current()
        IL_002a:  stloc.1
        IL_002b:  ldarg.0
        IL_002c:  ldfld      class Game.SingleplayerScreen/'<>c__DisplayClass2_1' Game.SingleplayerScreen/'<>c__DisplayClass2_0'::'CS$<>8__locals1'
        IL_0031:  ldfld      class Game.SingleplayerScreen Game.SingleplayerScreen/'<>c__DisplayClass2_1'::'<>4__this'
        IL_0036:  ldfld      class Game.ListPanelWidget Game.SingleplayerScreen::m_worldsListWidget
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
      IL_005b:  ldfld      class Game.WorldInfo Game.SingleplayerScreen/'<>c__DisplayClass2_0'::selectedItem
      IL_0060:  brfalse.s  IL_008e

      IL_0062:  ldarg.0
      IL_0063:  ldfld      class Game.SingleplayerScreen/'<>c__DisplayClass2_1' Game.SingleplayerScreen/'<>c__DisplayClass2_0'::'CS$<>8__locals1'
      IL_0068:  ldfld      class Game.SingleplayerScreen Game.SingleplayerScreen/'<>c__DisplayClass2_1'::'<>4__this'
      IL_006d:  ldfld      class Game.ListPanelWidget Game.SingleplayerScreen::m_worldsListWidget
      IL_0072:  ldarg.0
      IL_0073:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.WorldInfo> Game.SingleplayerScreen/'<>c__DisplayClass2_0'::worldInfos
      IL_0078:  ldarg.0
      IL_0079:  ldftn      instance bool Game.SingleplayerScreen/'<>c__DisplayClass2_0'::'<Enter>b__3'(class Game.WorldInfo)
      IL_007f:  newobj     instance void class [System.Runtime]System.Func`2<class Game.WorldInfo,bool>::.ctor(object,
                                                                                                               native int)
      IL_0084:  call       !!0 [System.Linq]System.Linq.Enumerable::FirstOrDefault<class Game.WorldInfo>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                         class [System.Runtime]System.Func`2<!!0,bool>)
      IL_0089:  callvirt   instance void Game.ListPanelWidget::set_SelectedItem(object)
      IL_008e:  ldarg.0
      IL_008f:  ldfld      class Game.SingleplayerScreen/'<>c__DisplayClass2_1' Game.SingleplayerScreen/'<>c__DisplayClass2_0'::'CS$<>8__locals1'
      IL_0094:  ldfld      class Game.BusyDialog Game.SingleplayerScreen/'<>c__DisplayClass2_1'::dialog
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
      IL_0007:  ldfld      class Game.WorldInfo Game.SingleplayerScreen/'<>c__DisplayClass2_0'::selectedItem
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
    .field public class Game.SingleplayerScreen '<>4__this'
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
      IL_0000:  newobj     instance void Game.SingleplayerScreen/'<>c__DisplayClass2_0'::.ctor()
      IL_0005:  dup
      IL_0006:  ldarg.0
      IL_0007:  stfld      class Game.SingleplayerScreen/'<>c__DisplayClass2_1' Game.SingleplayerScreen/'<>c__DisplayClass2_0'::'CS$<>8__locals1'
      IL_000c:  dup
      IL_000d:  ldarg.0
      IL_000e:  ldfld      class Game.SingleplayerScreen Game.SingleplayerScreen/'<>c__DisplayClass2_1'::'<>4__this'
      IL_0013:  ldfld      class Game.ListPanelWidget Game.SingleplayerScreen::m_worldsListWidget
      IL_0018:  callvirt   instance object Game.ListPanelWidget::get_SelectedItem()
      IL_001d:  castclass  Game.WorldInfo
      IL_0022:  stfld      class Game.WorldInfo Game.SingleplayerScreen/'<>c__DisplayClass2_0'::selectedItem
      IL_0027:  call       void Game.WorldsManager::UpdateWorldsList()
      IL_002c:  dup
      IL_002d:  call       valuetype [Engine]Engine.ReadOnlyList`1<class Game.WorldInfo> Game.WorldsManager::get_WorldInfos()
      IL_0032:  box        valuetype [Engine]Engine.ReadOnlyList`1<class Game.WorldInfo>
      IL_0037:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.WorldInfo>::.ctor(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!0>)
      IL_003c:  stfld      class [System.Collections]System.Collections.Generic.List`1<class Game.WorldInfo> Game.SingleplayerScreen/'<>c__DisplayClass2_0'::worldInfos
      IL_0041:  dup
      IL_0042:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.WorldInfo> Game.SingleplayerScreen/'<>c__DisplayClass2_0'::worldInfos
      IL_0047:  ldsfld     class [System.Runtime]System.Comparison`1<class Game.WorldInfo> Game.SingleplayerScreen/'<>c'::'<>9__2_1'
      IL_004c:  dup
      IL_004d:  brtrue.s   IL_0066

      IL_004f:  pop
      IL_0050:  ldsfld     class Game.SingleplayerScreen/'<>c' Game.SingleplayerScreen/'<>c'::'<>9'
      IL_0055:  ldftn      instance int32 Game.SingleplayerScreen/'<>c'::'<Enter>b__2_1'(class Game.WorldInfo,
                                                                                         class Game.WorldInfo)
      IL_005b:  newobj     instance void class [System.Runtime]System.Comparison`1<class Game.WorldInfo>::.ctor(object,
                                                                                                                native int)
      IL_0060:  dup
      IL_0061:  stsfld     class [System.Runtime]System.Comparison`1<class Game.WorldInfo> Game.SingleplayerScreen/'<>c'::'<>9__2_1'
      IL_0066:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.WorldInfo>::Sort(class [System.Runtime]System.Comparison`1<!0>)
      IL_006b:  ldftn      instance void Game.SingleplayerScreen/'<>c__DisplayClass2_0'::'<Enter>b__2'()
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
    .field public static initonly class Game.SingleplayerScreen/'<>c' '<>9'
    .field public static class [System.Runtime]System.Comparison`1<class Game.WorldInfo> '<>9__2_1'
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
    // 代码大小       98 (0x62)
    .maxstack  4
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.Screen::.ctor()
    IL_0006:  ldstr      "Screens/SingleplayerScreen"
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
    IL_002a:  ldstr      "WorldsList"
    IL_002f:  ldc.i4.1
    IL_0030:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ListPanelWidget>(string,
                                                                                              bool)
    IL_0035:  stfld      class Game.ListPanelWidget Game.SingleplayerScreen::m_worldsListWidget
    IL_003a:  ldarg.0
    IL_003b:  ldfld      class Game.ListPanelWidget Game.SingleplayerScreen::m_worldsListWidget
    IL_0040:  dup
    IL_0041:  callvirt   instance class [System.Runtime]System.Func`2<object,class Game.Widget> Game.ListPanelWidget::get_ItemWidgetFactory()
    IL_0046:  ldarg.0
    IL_0047:  ldftn      instance class Game.Widget Game.SingleplayerScreen::'<.ctor>b__1_0'(object)
    IL_004d:  newobj     instance void class [System.Runtime]System.Func`2<object,class Game.Widget>::.ctor(object,
                                                                                                            native int)
    IL_0052:  call       class [System.Runtime]System.Delegate [System.Runtime]System.Delegate::Combine(class [System.Runtime]System.Delegate,
                                                                                                        class [System.Runtime]System.Delegate)
    IL_0057:  castclass  class [System.Runtime]System.Func`2<object,class Game.Widget>
    IL_005c:  callvirt   instance void Game.ListPanelWidget::set_ItemWidgetFactory(class [System.Runtime]System.Func`2<object,class Game.Widget>)
    IL_0061:  ret
  } // end of method SingleplayerScreen::.ctor

  .method public hidebysig virtual instance void 
          Enter(object[] parameters) cil managed
  {
    // 代码大小       58 (0x3a)
    .maxstack  8
    IL_0000:  newobj     instance void Game.SingleplayerScreen/'<>c__DisplayClass2_1'::.ctor()
    IL_0005:  dup
    IL_0006:  ldarg.0
    IL_0007:  stfld      class Game.SingleplayerScreen Game.SingleplayerScreen/'<>c__DisplayClass2_1'::'<>4__this'
    IL_000c:  dup
    IL_000d:  ldstr      "Scanning Worlds"
    IL_0012:  ldnull
    IL_0013:  newobj     instance void Game.BusyDialog::.ctor(string,
                                                              string)
    IL_0018:  stfld      class Game.BusyDialog Game.SingleplayerScreen/'<>c__DisplayClass2_1'::dialog
    IL_001d:  dup
    IL_001e:  ldfld      class Game.BusyDialog Game.SingleplayerScreen/'<>c__DisplayClass2_1'::dialog
    IL_0023:  call       void Game.DialogsManager::ShowDialog(class Game.Dialog)
    IL_0028:  ldftn      instance void Game.SingleplayerScreen/'<>c__DisplayClass2_1'::'<Enter>b__0'()
    IL_002e:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0033:  call       class [System.Threading.Tasks]System.Threading.Tasks.Task [System.Threading.Tasks]System.Threading.Tasks.Task::Run(class [System.Runtime]System.Action)
    IL_0038:  pop
    IL_0039:  ret
  } // end of method SingleplayerScreen::Enter

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       478 (0x1de)
    .maxstack  6
    .locals init (valuetype [Engine]Engine.ReadOnlyList`1<class Game.WorldInfo> V_0,
             valuetype [Engine]Engine.ReadOnlyList`1<object> V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ListPanelWidget Game.SingleplayerScreen::m_worldsListWidget
    IL_0006:  callvirt   instance object Game.ListPanelWidget::get_SelectedItem()
    IL_000b:  brfalse.s  IL_0039

    IL_000d:  call       valuetype [Engine]Engine.ReadOnlyList`1<class Game.WorldInfo> Game.WorldsManager::get_WorldInfos()
    IL_0012:  stloc.0
    IL_0013:  ldloca.s   V_0
    IL_0015:  ldarg.0
    IL_0016:  ldfld      class Game.ListPanelWidget Game.SingleplayerScreen::m_worldsListWidget
    IL_001b:  callvirt   instance object Game.ListPanelWidget::get_SelectedItem()
    IL_0020:  castclass  Game.WorldInfo
    IL_0025:  call       instance int32 valuetype [Engine]Engine.ReadOnlyList`1<class Game.WorldInfo>::IndexOf(!0)
    IL_002a:  ldc.i4.0
    IL_002b:  bge.s      IL_0039

    IL_002d:  ldarg.0
    IL_002e:  ldfld      class Game.ListPanelWidget Game.SingleplayerScreen::m_worldsListWidget
    IL_0033:  ldnull
    IL_0034:  callvirt   instance void Game.ListPanelWidget::set_SelectedItem(object)
    IL_0039:  ldarg.0
    IL_003a:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_003f:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0044:  ldstr      "TopBar.Label"
    IL_0049:  ldc.i4.1
    IL_004a:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_004f:  ldstr      "Existing Worlds ({0})"
    IL_0054:  ldc.i4.1
    IL_0055:  newarr     [System.Runtime]System.Object
    IL_005a:  dup
    IL_005b:  ldc.i4.0
    IL_005c:  ldarg.0
    IL_005d:  ldfld      class Game.ListPanelWidget Game.SingleplayerScreen::m_worldsListWidget
    IL_0062:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<object> Game.ListPanelWidget::get_Items()
    IL_0067:  stloc.1
    IL_0068:  ldloca.s   V_1
    IL_006a:  call       instance int32 valuetype [Engine]Engine.ReadOnlyList`1<object>::get_Count()
    IL_006f:  box        [System.Runtime]System.Int32
    IL_0074:  stelem.ref
    IL_0075:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_007a:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_007f:  ldarg.0
    IL_0080:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0085:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_008a:  ldstr      "Play"
    IL_008f:  ldc.i4.1
    IL_0090:  callvirt   instance class Game.Widget Game.WidgetsContainer::Find(string,
                                                                                bool)
    IL_0095:  ldarg.0
    IL_0096:  ldfld      class Game.ListPanelWidget Game.SingleplayerScreen::m_worldsListWidget
    IL_009b:  callvirt   instance object Game.ListPanelWidget::get_SelectedItem()
    IL_00a0:  ldnull
    IL_00a1:  cgt.un
    IL_00a3:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_00a8:  ldarg.0
    IL_00a9:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_00ae:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00b3:  ldstr      "Properties"
    IL_00b8:  ldc.i4.1
    IL_00b9:  callvirt   instance class Game.Widget Game.WidgetsContainer::Find(string,
                                                                                bool)
    IL_00be:  ldarg.0
    IL_00bf:  ldfld      class Game.ListPanelWidget Game.SingleplayerScreen::m_worldsListWidget
    IL_00c4:  callvirt   instance object Game.ListPanelWidget::get_SelectedItem()
    IL_00c9:  ldnull
    IL_00ca:  cgt.un
    IL_00cc:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_00d1:  ldarg.0
    IL_00d2:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_00d7:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00dc:  ldstr      "Play"
    IL_00e1:  ldc.i4.1
    IL_00e2:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_00e7:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_00ec:  brfalse.s  IL_010c

    IL_00ee:  ldarg.0
    IL_00ef:  ldfld      class Game.ListPanelWidget Game.SingleplayerScreen::m_worldsListWidget
    IL_00f4:  callvirt   instance object Game.ListPanelWidget::get_SelectedItem()
    IL_00f9:  brfalse.s  IL_010c

    IL_00fb:  ldarg.0
    IL_00fc:  ldftn      instance void Game.SingleplayerScreen::'<Update>b__3_0'()
    IL_0102:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0107:  call       void Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
    IL_010c:  ldarg.0
    IL_010d:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0112:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0117:  ldstr      "NewWorld"
    IL_011c:  ldc.i4.1
    IL_011d:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_0122:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0127:  brfalse.s  IL_0168

    IL_0129:  call       valuetype [Engine]Engine.ReadOnlyList`1<class Game.WorldInfo> Game.WorldsManager::get_WorldInfos()
    IL_012e:  stloc.0
    IL_012f:  ldloca.s   V_0
    IL_0131:  call       instance int32 valuetype [Engine]Engine.ReadOnlyList`1<class Game.WorldInfo>::get_Count()
    IL_0136:  ldc.i4.s   20
    IL_0138:  blt.s      IL_0157

    IL_013a:  ldstr      "Too many worlds"
    IL_013f:  ldstr      "A maximum of 20 worlds is allowed on a device. Del"
    + "ete some to make space for new ones."
    IL_0144:  ldstr      "OK"
    IL_0149:  ldnull
    IL_014a:  ldnull
    IL_014b:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                 string,
                                                                 string,
                                                                 string,
                                                                 class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
    IL_0150:  call       void Game.DialogsManager::ShowDialog(class Game.Dialog)
    IL_0155:  br.s       IL_0168

    IL_0157:  ldarg.0
    IL_0158:  ldftn      instance void Game.SingleplayerScreen::'<Update>b__3_1'()
    IL_015e:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0163:  call       void Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
    IL_0168:  ldarg.0
    IL_0169:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_016e:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0173:  ldstr      "Properties"
    IL_0178:  ldc.i4.1
    IL_0179:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_017e:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0183:  brfalse.s  IL_01a3

    IL_0185:  ldarg.0
    IL_0186:  ldfld      class Game.ListPanelWidget Game.SingleplayerScreen::m_worldsListWidget
    IL_018b:  callvirt   instance object Game.ListPanelWidget::get_SelectedItem()
    IL_0190:  brfalse.s  IL_01a3

    IL_0192:  ldarg.0
    IL_0193:  ldftn      instance void Game.SingleplayerScreen::'<Update>b__3_2'()
    IL_0199:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_019e:  call       void Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
    IL_01a3:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_01a8:  ldfld      bool Game.InputState::Back
    IL_01ad:  brtrue.s   IL_01cc

    IL_01af:  ldarg.0
    IL_01b0:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_01b5:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_01ba:  ldstr      "TopBar.Back"
    IL_01bf:  ldc.i4.1
    IL_01c0:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_01c5:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_01ca:  brfalse.s  IL_01dd

    IL_01cc:  ldarg.0
    IL_01cd:  ldftn      instance void Game.SingleplayerScreen::'<Update>b__3_3'()
    IL_01d3:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_01d8:  call       void Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
    IL_01dd:  ret
  } // end of method SingleplayerScreen::Update

  .method private hidebysig instance class Game.Widget 
          '<.ctor>b__1_0'(object item) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       381 (0x17d)
    .maxstack  7
    .locals init (class Game.WorldInfo V_0,
             class [System.Xml.XDocument]System.Xml.Linq.XElement V_1,
             class Game.ContainerWidget V_2,
             class Game.LabelWidget V_3,
             class Game.LabelWidget V_4,
             class Game.LabelWidget V_5,
             class Game.LabelWidget V_6,
             class Game.LabelWidget V_7,
             class Game.LabelWidget V_8)
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
    IL_0021:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0026:  ldstr      "WorldItem.Name"
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_0031:  stloc.3
    IL_0032:  ldloc.2
    IL_0033:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0038:  ldstr      "WorldItem.Size"
    IL_003d:  ldc.i4.1
    IL_003e:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_0043:  stloc.s    V_4
    IL_0045:  ldloc.2
    IL_0046:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_004b:  ldstr      "WorldItem.Date"
    IL_0050:  ldc.i4.1
    IL_0051:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_0056:  stloc.s    V_5
    IL_0058:  ldloc.2
    IL_0059:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_005e:  ldstr      "WorldItem.GameMode"
    IL_0063:  ldc.i4.1
    IL_0064:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_0069:  stloc.s    V_6
    IL_006b:  ldloc.2
    IL_006c:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0071:  ldstr      "WorldItem.EnvironmentBehaviorMode"
    IL_0076:  ldc.i4.1
    IL_0077:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_007c:  stloc.s    V_7
    IL_007e:  ldloc.2
    IL_007f:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0084:  ldstr      "WorldItem.Version"
    IL_0089:  ldc.i4.1
    IL_008a:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_008f:  stloc.s    V_8
    IL_0091:  ldloc.2
    IL_0092:  ldloc.0
    IL_0093:  callvirt   instance void Game.Widget::set_Tag(object)
    IL_0098:  ldloc.3
    IL_0099:  ldloc.0
    IL_009a:  ldfld      string Game.WorldInfo::Name
    IL_009f:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_00a4:  ldloc.s    V_4
    IL_00a6:  ldstr      "{0:0.00MB}"
    IL_00ab:  ldc.i4.1
    IL_00ac:  newarr     [System.Runtime]System.Object
    IL_00b1:  dup
    IL_00b2:  ldc.i4.0
    IL_00b3:  ldloc.0
    IL_00b4:  ldfld      int64 Game.WorldInfo::Size
    IL_00b9:  conv.r4
    IL_00ba:  ldc.r4     1024.
    IL_00bf:  div
    IL_00c0:  ldc.r4     1024.
    IL_00c5:  div
    IL_00c6:  box        [System.Runtime]System.Single
    IL_00cb:  stelem.ref
    IL_00cc:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_00d1:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_00d6:  ldloc.s    V_5
    IL_00d8:  ldstr      "{0:dd MMM yyyy HH:mm}"
    IL_00dd:  ldc.i4.1
    IL_00de:  newarr     [System.Runtime]System.Object
    IL_00e3:  dup
    IL_00e4:  ldc.i4.0
    IL_00e5:  ldloc.0
    IL_00e6:  ldfld      valuetype [System.Runtime]System.DateTime Game.WorldInfo::LastSaveTime
    IL_00eb:  box        [System.Runtime]System.DateTime
    IL_00f0:  stelem.ref
    IL_00f1:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_00f6:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_00fb:  ldloc.s    V_6
    IL_00fd:  ldloc.0
    IL_00fe:  ldflda     valuetype Game.GameMode Game.WorldInfo::GameMode
    IL_0103:  constrained. Game.GameMode
    IL_0109:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_010e:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0113:  ldloc.s    V_7
    IL_0115:  ldloc.0
    IL_0116:  ldflda     valuetype Game.EnvironmentBehaviorMode Game.WorldInfo::EnvironmentBehaviorMode
    IL_011b:  constrained. Game.EnvironmentBehaviorMode
    IL_0121:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_0126:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_012b:  ldloc.0
    IL_012c:  ldfld      string Game.WorldInfo::SerializationVersion
    IL_0131:  call       string Game.VersionsManager::get_SerializationVersion()
    IL_0136:  call       bool [System.Runtime]System.String::op_Inequality(string,
                                                                           string)
    IL_013b:  brfalse.s  IL_016f

    IL_013d:  ldloc.s    V_8
    IL_013f:  ldloc.0
    IL_0140:  ldfld      string Game.WorldInfo::SerializationVersion
    IL_0145:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_014a:  brtrue.s   IL_0163

    IL_014c:  ldstr      "("
    IL_0151:  ldloc.0
    IL_0152:  ldfld      string Game.WorldInfo::SerializationVersion
    IL_0157:  ldstr      ")"
    IL_015c:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string,
                                                                      string)
    IL_0161:  br.s       IL_0168

    IL_0163:  ldstr      "(unknown)"
    IL_0168:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_016d:  br.s       IL_017b

    IL_016f:  ldloc.s    V_8
    IL_0171:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0176:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_017b:  ldloc.2
    IL_017c:  ret
  } // end of method SingleplayerScreen::'<.ctor>b__1_0'

  .method private hidebysig instance void 
          '<Update>b__3_0'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       43 (0x2b)
    .maxstack  8
    IL_0000:  ldstr      "GameLoading"
    IL_0005:  ldc.i4.2
    IL_0006:  newarr     [System.Runtime]System.Object
    IL_000b:  dup
    IL_000c:  ldc.i4.0
    IL_000d:  ldarg.0
    IL_000e:  ldfld      class Game.ListPanelWidget Game.SingleplayerScreen::m_worldsListWidget
    IL_0013:  callvirt   instance object Game.ListPanelWidget::get_SelectedItem()
    IL_0018:  stelem.ref
    IL_0019:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                object[])
    IL_001e:  ldarg.0
    IL_001f:  ldfld      class Game.ListPanelWidget Game.SingleplayerScreen::m_worldsListWidget
    IL_0024:  ldnull
    IL_0025:  callvirt   instance void Game.ListPanelWidget::set_SelectedItem(object)
    IL_002a:  ret
  } // end of method SingleplayerScreen::'<Update>b__3_0'

  .method private hidebysig instance void 
          '<Update>b__3_1'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       29 (0x1d)
    .maxstack  8
    IL_0000:  ldstr      "NewWorld"
    IL_0005:  ldc.i4.0
    IL_0006:  newarr     [System.Runtime]System.Object
    IL_000b:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                object[])
    IL_0010:  ldarg.0
    IL_0011:  ldfld      class Game.ListPanelWidget Game.SingleplayerScreen::m_worldsListWidget
    IL_0016:  ldnull
    IL_0017:  callvirt   instance void Game.ListPanelWidget::set_SelectedItem(object)
    IL_001c:  ret
  } // end of method SingleplayerScreen::'<Update>b__3_1'

  .method private hidebysig instance void 
          '<Update>b__3_2'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       31 (0x1f)
    .maxstack  8
    IL_0000:  ldstr      "ModifyWorld"
    IL_0005:  ldc.i4.1
    IL_0006:  newarr     [System.Runtime]System.Object
    IL_000b:  dup
    IL_000c:  ldc.i4.0
    IL_000d:  ldarg.0
    IL_000e:  ldfld      class Game.ListPanelWidget Game.SingleplayerScreen::m_worldsListWidget
    IL_0013:  callvirt   instance object Game.ListPanelWidget::get_SelectedItem()
    IL_0018:  stelem.ref
    IL_0019:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                object[])
    IL_001e:  ret
  } // end of method SingleplayerScreen::'<Update>b__3_2'

  .method private hidebysig instance void 
          '<Update>b__3_3'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       29 (0x1d)
    .maxstack  8
    IL_0000:  ldstr      "MainMenu"
    IL_0005:  ldc.i4.0
    IL_0006:  newarr     [System.Runtime]System.Object
    IL_000b:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                object[])
    IL_0010:  ldarg.0
    IL_0011:  ldfld      class Game.ListPanelWidget Game.SingleplayerScreen::m_worldsListWidget
    IL_0016:  ldnull
    IL_0017:  callvirt   instance void Game.ListPanelWidget::set_SelectedItem(object)
    IL_001c:  ret
  } // end of method SingleplayerScreen::'<Update>b__3_3'

} // end of class Game.SingleplayerScreen