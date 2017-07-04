.class public auto ansi beforefieldinit Game.HelpScreen
       extends Game.Screen
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.HelpScreen/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`2<string,bool> '<>9__5_2'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.HelpScreen/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.HelpScreen/'<>c' Game.HelpScreen/'<>c'::'<>9'
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

    .method assembly hidebysig instance bool 
            '<.ctor>b__5_2'(string s) cil managed
    {
      // 代码大小       41 (0x29)
      .maxstack  2
      .locals init (valuetype Game.Platform V_0)
      IL_0000:  ldarg.1
      IL_0001:  callvirt   instance string [System.Runtime]System.String::Trim()
      IL_0006:  callvirt   instance string [System.Runtime]System.String::ToLower()
      IL_000b:  call       valuetype Game.Platform Game.VersionsManager::get_Platform()
      IL_0010:  stloc.0
      IL_0011:  ldloca.s   V_0
      IL_0013:  constrained. Game.Platform
      IL_0019:  callvirt   instance string [System.Runtime]System.Object::ToString()
      IL_001e:  callvirt   instance string [System.Runtime]System.String::ToLower()
      IL_0023:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_0028:  ret
    } // end of method '<>c'::'<.ctor>b__5_2'

  } // end of class '<>c'

  .field private class Game.ListPanelWidget m_topicsList
  .field private class Game.ButtonWidget m_recipaediaButton
  .field private class Game.ButtonWidget m_bestiaryButton
  .field private class Game.Screen m_previousScreen
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<string,class Game.HelpTopic> m_topics
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       523 (0x20b)
    .maxstack  5
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> V_1,
             class [System.Xml.XDocument]System.Xml.Linq.XElement V_2,
             string V_3,
             string V_4,
             string V_5,
             class Game.HelpTopic V_6,
             string[] V_7,
             int32 V_8,
             string V_9)
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,class Game.HelpTopic>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<string,class Game.HelpTopic> Game.HelpScreen::m_topics
    IL_000b:  ldarg.0
    IL_000c:  call       instance void Game.Screen::.ctor()
    IL_0011:  ldstr      "Screens/HelpScreen"
    IL_0016:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_001b:  stloc.0
    IL_001c:  ldarg.0
    IL_001d:  ldarg.0
    IL_001e:  ldloc.0
    IL_001f:  call       void Game.WidgetsManager::LoadWidgetContents(class Game.Widget,
                                                                      object,
                                                                      class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_002b:  ldstr      "TopicsList"
    IL_0030:  ldc.i4.1
    IL_0031:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ListPanelWidget>(string,
                                                                                         bool)
    IL_0036:  stfld      class Game.ListPanelWidget Game.HelpScreen::m_topicsList
    IL_003b:  ldarg.0
    IL_003c:  ldarg.0
    IL_003d:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0042:  ldstr      "RecipaediaButton"
    IL_0047:  ldc.i4.1
    IL_0048:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_004d:  stfld      class Game.ButtonWidget Game.HelpScreen::m_recipaediaButton
    IL_0052:  ldarg.0
    IL_0053:  ldarg.0
    IL_0054:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0059:  ldstr      "BestiaryButton"
    IL_005e:  ldc.i4.1
    IL_005f:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0064:  stfld      class Game.ButtonWidget Game.HelpScreen::m_bestiaryButton
    IL_0069:  ldarg.0
    IL_006a:  ldfld      class Game.ListPanelWidget Game.HelpScreen::m_topicsList
    IL_006f:  ldarg.0
    IL_0070:  ldftn      instance class Game.Widget Game.HelpScreen::'<.ctor>b__5_0'(object)
    IL_0076:  newobj     instance void class [System.Runtime]System.Func`2<object,class Game.Widget>::.ctor(object,
                                                                                                            native int)
    IL_007b:  callvirt   instance void Game.ListPanelWidget::set_ItemWidgetFactory(class [System.Runtime]System.Func`2<object,class Game.Widget>)
    IL_0080:  ldarg.0
    IL_0081:  ldfld      class Game.ListPanelWidget Game.HelpScreen::m_topicsList
    IL_0086:  ldarg.0
    IL_0087:  ldftn      instance void Game.HelpScreen::'<.ctor>b__5_1'(class Game.ListPanelWidget,
                                                                        object)
    IL_008d:  newobj     instance void class [System.Runtime]System.Action`2<class Game.ListPanelWidget,object>::.ctor(object,
                                                                                                                       native int)
    IL_0092:  callvirt   instance void Game.ListPanelWidget::add_ItemClicked(class [System.Runtime]System.Action`2<class Game.ListPanelWidget,object>)
    IL_0097:  ldstr      "Help"
    IL_009c:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_00a1:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Elements()
    IL_00a6:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::GetEnumerator()
    IL_00ab:  stloc.1
    .try
    {
      IL_00ac:  br         IL_01f3

      IL_00b1:  ldloc.1
      IL_00b2:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::get_Current()
      IL_00b7:  stloc.2
      IL_00b8:  ldloc.2
      IL_00b9:  ldstr      "DisabledPlatforms"
      IL_00be:  ldsfld     string [System.Runtime]System.String::Empty
      IL_00c3:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<string>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                              string,
                                                                                              !!0)
      IL_00c8:  ldc.i4.1
      IL_00c9:  newarr     [System.Runtime]System.Char
      IL_00ce:  dup
      IL_00cf:  ldc.i4.0
      IL_00d0:  ldc.i4.s   44
      IL_00d2:  stelem.i2
      IL_00d3:  callvirt   instance string[] [System.Runtime]System.String::Split(char[])
      IL_00d8:  ldsfld     class [System.Runtime]System.Func`2<string,bool> Game.HelpScreen/'<>c'::'<>9__5_2'
      IL_00dd:  dup
      IL_00de:  brtrue.s   IL_00f7

      IL_00e0:  pop
      IL_00e1:  ldsfld     class Game.HelpScreen/'<>c' Game.HelpScreen/'<>c'::'<>9'
      IL_00e6:  ldftn      instance bool Game.HelpScreen/'<>c'::'<.ctor>b__5_2'(string)
      IL_00ec:  newobj     instance void class [System.Runtime]System.Func`2<string,bool>::.ctor(object,
                                                                                                 native int)
      IL_00f1:  dup
      IL_00f2:  stsfld     class [System.Runtime]System.Func`2<string,bool> Game.HelpScreen/'<>c'::'<>9__5_2'
      IL_00f7:  call       !!0 [System.Linq]System.Linq.Enumerable::FirstOrDefault<string>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                           class [System.Runtime]System.Func`2<!!0,bool>)
      IL_00fc:  brtrue     IL_01f3

      IL_0101:  ldloc.2
      IL_0102:  ldstr      "Name"
      IL_0107:  ldsfld     string [System.Runtime]System.String::Empty
      IL_010c:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<string>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                              string,
                                                                                              !!0)
      IL_0111:  stloc.3
      IL_0112:  ldloc.2
      IL_0113:  ldstr      "Title"
      IL_0118:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<string>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                              string)
      IL_011d:  stloc.s    V_4
      IL_011f:  ldsfld     string [System.Runtime]System.String::Empty
      IL_0124:  stloc.s    V_5
      IL_0126:  ldloc.2
      IL_0127:  callvirt   instance string [System.Xml.XDocument]System.Xml.Linq.XElement::get_Value()
      IL_012c:  ldc.i4.1
      IL_012d:  newarr     [System.Runtime]System.Char
      IL_0132:  dup
      IL_0133:  ldc.i4.0
      IL_0134:  ldc.i4.s   10
      IL_0136:  stelem.i2
      IL_0137:  callvirt   instance string[] [System.Runtime]System.String::Split(char[])
      IL_013c:  stloc.s    V_7
      IL_013e:  ldc.i4.0
      IL_013f:  stloc.s    V_8
      IL_0141:  br.s       IL_0165

      IL_0143:  ldloc.s    V_7
      IL_0145:  ldloc.s    V_8
      IL_0147:  ldelem.ref
      IL_0148:  stloc.s    V_9
      IL_014a:  ldloc.s    V_5
      IL_014c:  ldloc.s    V_9
      IL_014e:  callvirt   instance string [System.Runtime]System.String::Trim()
      IL_0153:  ldstr      " "
      IL_0158:  call       string [System.Runtime]System.String::Concat(string,
                                                                        string,
                                                                        string)
      IL_015d:  stloc.s    V_5
      IL_015f:  ldloc.s    V_8
      IL_0161:  ldc.i4.1
      IL_0162:  add
      IL_0163:  stloc.s    V_8
      IL_0165:  ldloc.s    V_8
      IL_0167:  ldloc.s    V_7
      IL_0169:  ldlen
      IL_016a:  conv.i4
      IL_016b:  blt.s      IL_0143

      IL_016d:  ldloc.s    V_5
      IL_016f:  ldstr      "\r"
      IL_0174:  ldstr      ""
      IL_0179:  callvirt   instance string [System.Runtime]System.String::Replace(string,
                                                                                  string)
      IL_017e:  stloc.s    V_5
      IL_0180:  ldloc.s    V_5
      IL_0182:  ldstr      bytearray (19 20 )                                           // . 
      IL_0187:  ldstr      "'"
      IL_018c:  callvirt   instance string [System.Runtime]System.String::Replace(string,
                                                                                  string)
      IL_0191:  stloc.s    V_5
      IL_0193:  ldloc.s    V_5
      IL_0195:  ldstr      "\\n"
      IL_019a:  ldstr      "\n"
      IL_019f:  callvirt   instance string [System.Runtime]System.String::Replace(string,
                                                                                  string)
      IL_01a4:  stloc.s    V_5
      IL_01a6:  newobj     instance void Game.HelpTopic::.ctor()
      IL_01ab:  dup
      IL_01ac:  ldloc.3
      IL_01ad:  stfld      string Game.HelpTopic::Name
      IL_01b2:  dup
      IL_01b3:  ldloc.s    V_4
      IL_01b5:  stfld      string Game.HelpTopic::Title
      IL_01ba:  dup
      IL_01bb:  ldloc.s    V_5
      IL_01bd:  stfld      string Game.HelpTopic::Text
      IL_01c2:  stloc.s    V_6
      IL_01c4:  ldloc.s    V_6
      IL_01c6:  ldfld      string Game.HelpTopic::Name
      IL_01cb:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
      IL_01d0:  brtrue.s   IL_01e6

      IL_01d2:  ldarg.0
      IL_01d3:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<string,class Game.HelpTopic> Game.HelpScreen::m_topics
      IL_01d8:  ldloc.s    V_6
      IL_01da:  ldfld      string Game.HelpTopic::Name
      IL_01df:  ldloc.s    V_6
      IL_01e1:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,class Game.HelpTopic>::Add(!0,
                                                                                                                                             !1)
      IL_01e6:  ldarg.0
      IL_01e7:  ldfld      class Game.ListPanelWidget Game.HelpScreen::m_topicsList
      IL_01ec:  ldloc.s    V_6
      IL_01ee:  callvirt   instance void Game.ListPanelWidget::AddItem(object)
      IL_01f3:  ldloc.1
      IL_01f4:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_01f9:  brtrue     IL_00b1

      IL_01fe:  leave.s    IL_020a

    }  // end .try
    finally
    {
      IL_0200:  ldloc.1
      IL_0201:  brfalse.s  IL_0209

      IL_0203:  ldloc.1
      IL_0204:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0209:  endfinally
    }  // end handler
    IL_020a:  ret
  } // end of method HelpScreen::.ctor

  .method public hidebysig virtual instance void 
          Enter(object[] parameters) cil managed
  {
    // 代码大小       63 (0x3f)
    .maxstack  8
    IL_0000:  call       class Game.Screen Game.ScreensManager::get_PreviousScreen()
    IL_0005:  ldstr      "HelpTopic"
    IL_000a:  call       !!0 Game.ScreensManager::FindScreen<class Game.Screen>(string)
    IL_000f:  beq.s      IL_003e

    IL_0011:  call       class Game.Screen Game.ScreensManager::get_PreviousScreen()
    IL_0016:  ldstr      "Recipaedia"
    IL_001b:  call       !!0 Game.ScreensManager::FindScreen<class Game.Screen>(string)
    IL_0020:  beq.s      IL_003e

    IL_0022:  call       class Game.Screen Game.ScreensManager::get_PreviousScreen()
    IL_0027:  ldstr      "Bestiary"
    IL_002c:  call       !!0 Game.ScreensManager::FindScreen<class Game.Screen>(string)
    IL_0031:  beq.s      IL_003e

    IL_0033:  ldarg.0
    IL_0034:  call       class Game.Screen Game.ScreensManager::get_PreviousScreen()
    IL_0039:  stfld      class Game.Screen Game.HelpScreen::m_previousScreen
    IL_003e:  ret
  } // end of method HelpScreen::Enter

  .method public hidebysig virtual instance void 
          Leave() cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ListPanelWidget Game.HelpScreen::m_topicsList
    IL_0006:  ldnull
    IL_0007:  callvirt   instance void Game.ListPanelWidget::set_SelectedItem(object)
    IL_000c:  ret
  } // end of method HelpScreen::Leave

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       126 (0x7e)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ButtonWidget Game.HelpScreen::m_recipaediaButton
    IL_0006:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_000b:  brfalse.s  IL_001d

    IL_000d:  ldstr      "Recipaedia"
    IL_0012:  ldc.i4.0
    IL_0013:  newarr     [System.Runtime]System.Object
    IL_0018:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                object[])
    IL_001d:  ldarg.0
    IL_001e:  ldfld      class Game.ButtonWidget Game.HelpScreen::m_bestiaryButton
    IL_0023:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0028:  brfalse.s  IL_003a

    IL_002a:  ldstr      "Bestiary"
    IL_002f:  ldc.i4.0
    IL_0030:  newarr     [System.Runtime]System.Object
    IL_0035:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                object[])
    IL_003a:  ldarg.0
    IL_003b:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0040:  callvirt   instance bool Game.WidgetInput::get_Back()
    IL_0045:  brtrue.s   IL_006c

    IL_0047:  ldarg.0
    IL_0048:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_004d:  callvirt   instance bool Game.WidgetInput::get_Cancel()
    IL_0052:  brtrue.s   IL_006c

    IL_0054:  ldarg.0
    IL_0055:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_005a:  ldstr      "TopBar.Back"
    IL_005f:  ldc.i4.1
    IL_0060:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0065:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_006a:  brfalse.s  IL_007d

    IL_006c:  ldarg.0
    IL_006d:  ldfld      class Game.Screen Game.HelpScreen::m_previousScreen
    IL_0072:  ldc.i4.0
    IL_0073:  newarr     [System.Runtime]System.Object
    IL_0078:  call       void Game.ScreensManager::SwitchScreen(class Game.Screen,
                                                                object[])
    IL_007d:  ret
  } // end of method HelpScreen::Update

  .method public hidebysig instance class Game.HelpTopic 
          GetTopic(string name) cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<string,class Game.HelpTopic> Game.HelpScreen::m_topics
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance !1 class [System.Collections]System.Collections.Generic.Dictionary`2<string,class Game.HelpTopic>::get_Item(!0)
    IL_000c:  ret
  } // end of method HelpScreen::GetTopic

  .method private hidebysig instance void 
          ShowTopic(class Game.HelpTopic helpTopic) cil managed
  {
    // 代码大小       81 (0x51)
    .maxstack  5
    IL_0000:  ldarg.1
    IL_0001:  ldfld      string Game.HelpTopic::Name
    IL_0006:  ldstr      "Keyboard"
    IL_000b:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                         string)
    IL_0010:  brfalse.s  IL_001e

    IL_0012:  ldnull
    IL_0013:  newobj     instance void Game.KeyboardHelpDialog::.ctor()
    IL_0018:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_001d:  ret

    IL_001e:  ldarg.1
    IL_001f:  ldfld      string Game.HelpTopic::Name
    IL_0024:  ldstr      "Gamepad"
    IL_0029:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                         string)
    IL_002e:  brfalse.s  IL_003c

    IL_0030:  ldnull
    IL_0031:  newobj     instance void Game.GamepadHelpDialog::.ctor()
    IL_0036:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_003b:  ret

    IL_003c:  ldstr      "HelpTopic"
    IL_0041:  ldc.i4.1
    IL_0042:  newarr     [System.Runtime]System.Object
    IL_0047:  dup
    IL_0048:  ldc.i4.0
    IL_0049:  ldarg.1
    IL_004a:  stelem.ref
    IL_004b:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                object[])
    IL_0050:  ret
  } // end of method HelpScreen::ShowTopic

  .method private hidebysig instance class Game.Widget 
          '<.ctor>b__5_0'(object item) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       60 (0x3c)
    .maxstack  4
    .locals init (class Game.HelpTopic V_0,
             class [System.Xml.XDocument]System.Xml.Linq.XElement V_1)
    IL_0000:  ldarg.1
    IL_0001:  castclass  Game.HelpTopic
    IL_0006:  stloc.0
    IL_0007:  ldstr      "Widgets/HelpTopicItem"
    IL_000c:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_0011:  stloc.1
    IL_0012:  ldarg.0
    IL_0013:  ldloc.1
    IL_0014:  ldnull
    IL_0015:  call       class Game.Widget Game.WidgetsManager::LoadWidget(object,
                                                                           class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                           class Game.ContainerWidget)
    IL_001a:  castclass  Game.ContainerWidget
    IL_001f:  dup
    IL_0020:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0025:  ldstr      "HelpTopicItem.Title"
    IL_002a:  ldc.i4.1
    IL_002b:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_0030:  ldloc.0
    IL_0031:  ldfld      string Game.HelpTopic::Title
    IL_0036:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_003b:  ret
  } // end of method HelpScreen::'<.ctor>b__5_0'

  .method private hidebysig instance void 
          '<.ctor>b__5_1'(class Game.ListPanelWidget sender,
                          object item) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       18 (0x12)
    .maxstack  2
    .locals init (class Game.HelpTopic V_0)
    IL_0000:  ldarg.2
    IL_0001:  isinst     Game.HelpTopic
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  brfalse.s  IL_0011

    IL_000a:  ldarg.0
    IL_000b:  ldloc.0
    IL_000c:  call       instance void Game.HelpScreen::ShowTopic(class Game.HelpTopic)
    IL_0011:  ret
  } // end of method HelpScreen::'<.ctor>b__5_1'

} // end of class Game.HelpScreen