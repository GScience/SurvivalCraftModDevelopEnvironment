.class public auto ansi beforefieldinit Game.HelpScreen
       extends Game.Screen
{
  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass4_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class Game.HelpTopic helpTopic
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass4_0'::.ctor

    .method assembly hidebysig instance void 
            '<.ctor>b__2'() cil managed
    {
      // 代码大小       26 (0x1a)
      .maxstack  8
      IL_0000:  ldstr      "HelpTopic"
      IL_0005:  ldc.i4.1
      IL_0006:  newarr     [System.Runtime]System.Object
      IL_000b:  dup
      IL_000c:  ldc.i4.0
      IL_000d:  ldarg.0
      IL_000e:  ldfld      class Game.HelpTopic Game.HelpScreen/'<>c__DisplayClass4_0'::helpTopic
      IL_0013:  stelem.ref
      IL_0014:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                  object[])
      IL_0019:  ret
    } // end of method '<>c__DisplayClass4_0'::'<.ctor>b__2'

  } // end of class '<>c__DisplayClass4_0'

  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.HelpScreen/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`2<string,bool> '<>9__4_3'
    .field public static class [System.Runtime]System.Action '<>9__6_1'
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
            '<.ctor>b__4_3'(string s) cil managed
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
    } // end of method '<>c'::'<.ctor>b__4_3'

    .method assembly hidebysig instance void 
            '<Update>b__6_1'() cil managed
    {
      // 代码大小       17 (0x11)
      .maxstack  8
      IL_0000:  ldstr      "Recipaedia"
      IL_0005:  ldc.i4.0
      IL_0006:  newarr     [System.Runtime]System.Object
      IL_000b:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                  object[])
      IL_0010:  ret
    } // end of method '<>c'::'<Update>b__6_1'

  } // end of class '<>c'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass6_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class Game.HelpTopic helpTopic
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
      // 代码大小       26 (0x1a)
      .maxstack  8
      IL_0000:  ldstr      "HelpTopic"
      IL_0005:  ldc.i4.1
      IL_0006:  newarr     [System.Runtime]System.Object
      IL_000b:  dup
      IL_000c:  ldc.i4.0
      IL_000d:  ldarg.0
      IL_000e:  ldfld      class Game.HelpTopic Game.HelpScreen/'<>c__DisplayClass6_0'::helpTopic
      IL_0013:  stelem.ref
      IL_0014:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                  object[])
      IL_0019:  ret
    } // end of method '<>c__DisplayClass6_0'::'<Update>b__0'

  } // end of class '<>c__DisplayClass6_0'

  .field private class Game.ListPanelWidget m_topicsList
  .field private class Game.ButtonWidget m_showButton
  .field private class Game.ButtonWidget m_recipaediaButton
  .field private class Game.Screen m_previousScreen
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       472 (0x1d8)
    .maxstack  5
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> V_1,
             class [System.Xml.XDocument]System.Xml.Linq.XElement V_2,
             string V_3,
             string V_4,
             class Game.HelpTopic V_5,
             string[] V_6,
             int32 V_7,
             string V_8)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.Screen::.ctor()
    IL_0006:  ldstr      "Screens/HelpScreen"
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
    IL_002a:  ldstr      "TopicsList"
    IL_002f:  ldc.i4.1
    IL_0030:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ListPanelWidget>(string,
                                                                                              bool)
    IL_0035:  stfld      class Game.ListPanelWidget Game.HelpScreen::m_topicsList
    IL_003a:  ldarg.0
    IL_003b:  ldarg.0
    IL_003c:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0041:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0046:  ldstr      "ShowButton"
    IL_004b:  ldc.i4.1
    IL_004c:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_0051:  stfld      class Game.ButtonWidget Game.HelpScreen::m_showButton
    IL_0056:  ldarg.0
    IL_0057:  ldarg.0
    IL_0058:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_005d:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0062:  ldstr      "RecipaediaButton"
    IL_0067:  ldc.i4.1
    IL_0068:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_006d:  stfld      class Game.ButtonWidget Game.HelpScreen::m_recipaediaButton
    IL_0072:  ldarg.0
    IL_0073:  ldfld      class Game.ListPanelWidget Game.HelpScreen::m_topicsList
    IL_0078:  ldarg.0
    IL_0079:  ldftn      instance class Game.Widget Game.HelpScreen::'<.ctor>b__4_0'(object)
    IL_007f:  newobj     instance void class [System.Runtime]System.Func`2<object,class Game.Widget>::.ctor(object,
                                                                                                            native int)
    IL_0084:  callvirt   instance void Game.ListPanelWidget::set_ItemWidgetFactory(class [System.Runtime]System.Func`2<object,class Game.Widget>)
    IL_0089:  ldarg.0
    IL_008a:  ldfld      class Game.ListPanelWidget Game.HelpScreen::m_topicsList
    IL_008f:  ldarg.0
    IL_0090:  ldftn      instance void Game.HelpScreen::'<.ctor>b__4_1'(class Game.ListPanelWidget,
                                                                        object)
    IL_0096:  newobj     instance void class [System.Runtime]System.Action`2<class Game.ListPanelWidget,object>::.ctor(object,
                                                                                                                       native int)
    IL_009b:  callvirt   instance void Game.ListPanelWidget::add_ItemTapped(class [System.Runtime]System.Action`2<class Game.ListPanelWidget,object>)
    IL_00a0:  ldstr      "Help"
    IL_00a5:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_00aa:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Elements()
    IL_00af:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::GetEnumerator()
    IL_00b4:  stloc.1
    .try
    {
      IL_00b5:  br         IL_01c0

      IL_00ba:  ldloc.1
      IL_00bb:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::get_Current()
      IL_00c0:  stloc.2
      IL_00c1:  ldloc.2
      IL_00c2:  ldstr      "DisabledPlatforms"
      IL_00c7:  ldsfld     string [System.Runtime]System.String::Empty
      IL_00cc:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<string>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                              string,
                                                                                              !!0)
      IL_00d1:  ldc.i4.1
      IL_00d2:  newarr     [System.Runtime]System.Char
      IL_00d7:  dup
      IL_00d8:  ldc.i4.0
      IL_00d9:  ldc.i4.s   44
      IL_00db:  stelem.i2
      IL_00dc:  callvirt   instance string[] [System.Runtime]System.String::Split(char[])
      IL_00e1:  ldsfld     class [System.Runtime]System.Func`2<string,bool> Game.HelpScreen/'<>c'::'<>9__4_3'
      IL_00e6:  dup
      IL_00e7:  brtrue.s   IL_0100

      IL_00e9:  pop
      IL_00ea:  ldsfld     class Game.HelpScreen/'<>c' Game.HelpScreen/'<>c'::'<>9'
      IL_00ef:  ldftn      instance bool Game.HelpScreen/'<>c'::'<.ctor>b__4_3'(string)
      IL_00f5:  newobj     instance void class [System.Runtime]System.Func`2<string,bool>::.ctor(object,
                                                                                                 native int)
      IL_00fa:  dup
      IL_00fb:  stsfld     class [System.Runtime]System.Func`2<string,bool> Game.HelpScreen/'<>c'::'<>9__4_3'
      IL_0100:  call       !!0 [System.Linq]System.Linq.Enumerable::FirstOrDefault<string>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                           class [System.Runtime]System.Func`2<!!0,bool>)
      IL_0105:  brtrue     IL_01c0

      IL_010a:  ldloc.2
      IL_010b:  ldstr      "Title"
      IL_0110:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<string>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                              string)
      IL_0115:  stloc.3
      IL_0116:  ldsfld     string [System.Runtime]System.String::Empty
      IL_011b:  stloc.s    V_4
      IL_011d:  ldloc.2
      IL_011e:  callvirt   instance string [System.Xml.XDocument]System.Xml.Linq.XElement::get_Value()
      IL_0123:  ldc.i4.1
      IL_0124:  newarr     [System.Runtime]System.Char
      IL_0129:  dup
      IL_012a:  ldc.i4.0
      IL_012b:  ldc.i4.s   10
      IL_012d:  stelem.i2
      IL_012e:  callvirt   instance string[] [System.Runtime]System.String::Split(char[])
      IL_0133:  stloc.s    V_6
      IL_0135:  ldc.i4.0
      IL_0136:  stloc.s    V_7
      IL_0138:  br.s       IL_015c

      IL_013a:  ldloc.s    V_6
      IL_013c:  ldloc.s    V_7
      IL_013e:  ldelem.ref
      IL_013f:  stloc.s    V_8
      IL_0141:  ldloc.s    V_4
      IL_0143:  ldloc.s    V_8
      IL_0145:  callvirt   instance string [System.Runtime]System.String::Trim()
      IL_014a:  ldstr      " "
      IL_014f:  call       string [System.Runtime]System.String::Concat(string,
                                                                        string,
                                                                        string)
      IL_0154:  stloc.s    V_4
      IL_0156:  ldloc.s    V_7
      IL_0158:  ldc.i4.1
      IL_0159:  add
      IL_015a:  stloc.s    V_7
      IL_015c:  ldloc.s    V_7
      IL_015e:  ldloc.s    V_6
      IL_0160:  ldlen
      IL_0161:  conv.i4
      IL_0162:  blt.s      IL_013a

      IL_0164:  ldloc.s    V_4
      IL_0166:  ldstr      "\r"
      IL_016b:  ldstr      ""
      IL_0170:  callvirt   instance string [System.Runtime]System.String::Replace(string,
                                                                                  string)
      IL_0175:  stloc.s    V_4
      IL_0177:  ldloc.s    V_4
      IL_0179:  ldstr      bytearray (19 20 )                                           // . 
      IL_017e:  ldstr      "'"
      IL_0183:  callvirt   instance string [System.Runtime]System.String::Replace(string,
                                                                                  string)
      IL_0188:  stloc.s    V_4
      IL_018a:  ldloc.s    V_4
      IL_018c:  ldstr      "\\n"
      IL_0191:  ldstr      "\n"
      IL_0196:  callvirt   instance string [System.Runtime]System.String::Replace(string,
                                                                                  string)
      IL_019b:  stloc.s    V_4
      IL_019d:  newobj     instance void Game.HelpTopic::.ctor()
      IL_01a2:  dup
      IL_01a3:  ldloc.3
      IL_01a4:  stfld      string Game.HelpTopic::Title
      IL_01a9:  dup
      IL_01aa:  ldloc.s    V_4
      IL_01ac:  stfld      string Game.HelpTopic::Text
      IL_01b1:  stloc.s    V_5
      IL_01b3:  ldarg.0
      IL_01b4:  ldfld      class Game.ListPanelWidget Game.HelpScreen::m_topicsList
      IL_01b9:  ldloc.s    V_5
      IL_01bb:  callvirt   instance void Game.ListPanelWidget::AddItem(object)
      IL_01c0:  ldloc.1
      IL_01c1:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_01c6:  brtrue     IL_00ba

      IL_01cb:  leave.s    IL_01d7

    }  // end .try
    finally
    {
      IL_01cd:  ldloc.1
      IL_01ce:  brfalse.s  IL_01d6

      IL_01d0:  ldloc.1
      IL_01d1:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_01d6:  endfinally
    }  // end handler
    IL_01d7:  ret
  } // end of method HelpScreen::.ctor

  .method public hidebysig virtual instance void 
          Enter(object[] parameters) cil managed
  {
    // 代码大小       46 (0x2e)
    .maxstack  8
    IL_0000:  call       class Game.Screen Game.ScreensManager::get_PreviousScreen()
    IL_0005:  ldstr      "HelpTopic"
    IL_000a:  call       !!0 Game.ScreensManager::FindScreen<class Game.Screen>(string)
    IL_000f:  beq.s      IL_002d

    IL_0011:  call       class Game.Screen Game.ScreensManager::get_PreviousScreen()
    IL_0016:  ldstr      "Recipaedia"
    IL_001b:  call       !!0 Game.ScreensManager::FindScreen<class Game.Screen>(string)
    IL_0020:  beq.s      IL_002d

    IL_0022:  ldarg.0
    IL_0023:  call       class Game.Screen Game.ScreensManager::get_PreviousScreen()
    IL_0028:  stfld      class Game.Screen Game.HelpScreen::m_previousScreen
    IL_002d:  ret
  } // end of method HelpScreen::Enter

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       194 (0xc2)
    .maxstack  3
    .locals init (class Game.HelpScreen/'<>c__DisplayClass6_0' V_0)
    IL_0000:  newobj     instance void Game.HelpScreen/'<>c__DisplayClass6_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.0
    IL_0008:  ldfld      class Game.ListPanelWidget Game.HelpScreen::m_topicsList
    IL_000d:  callvirt   instance object Game.ListPanelWidget::get_SelectedItem()
    IL_0012:  castclass  Game.HelpTopic
    IL_0017:  stfld      class Game.HelpTopic Game.HelpScreen/'<>c__DisplayClass6_0'::helpTopic
    IL_001c:  ldarg.0
    IL_001d:  ldfld      class Game.ButtonWidget Game.HelpScreen::m_showButton
    IL_0022:  ldloc.0
    IL_0023:  ldfld      class Game.HelpTopic Game.HelpScreen/'<>c__DisplayClass6_0'::helpTopic
    IL_0028:  ldnull
    IL_0029:  cgt.un
    IL_002b:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_0030:  ldloc.0
    IL_0031:  ldfld      class Game.HelpTopic Game.HelpScreen/'<>c__DisplayClass6_0'::helpTopic
    IL_0036:  brfalse.s  IL_0056

    IL_0038:  ldarg.0
    IL_0039:  ldfld      class Game.ButtonWidget Game.HelpScreen::m_showButton
    IL_003e:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0043:  brfalse.s  IL_0056

    IL_0045:  ldloc.0
    IL_0046:  ldftn      instance void Game.HelpScreen/'<>c__DisplayClass6_0'::'<Update>b__0'()
    IL_004c:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0051:  call       void Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
    IL_0056:  ldarg.0
    IL_0057:  ldfld      class Game.ButtonWidget Game.HelpScreen::m_recipaediaButton
    IL_005c:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0061:  brfalse.s  IL_0087

    IL_0063:  ldsfld     class [System.Runtime]System.Action Game.HelpScreen/'<>c'::'<>9__6_1'
    IL_0068:  dup
    IL_0069:  brtrue.s   IL_0082

    IL_006b:  pop
    IL_006c:  ldsfld     class Game.HelpScreen/'<>c' Game.HelpScreen/'<>c'::'<>9'
    IL_0071:  ldftn      instance void Game.HelpScreen/'<>c'::'<Update>b__6_1'()
    IL_0077:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_007c:  dup
    IL_007d:  stsfld     class [System.Runtime]System.Action Game.HelpScreen/'<>c'::'<>9__6_1'
    IL_0082:  call       void Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
    IL_0087:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_008c:  ldfld      bool Game.InputState::Back
    IL_0091:  brtrue.s   IL_00b0

    IL_0093:  ldarg.0
    IL_0094:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0099:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_009e:  ldstr      "TopBar.Back"
    IL_00a3:  ldc.i4.1
    IL_00a4:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_00a9:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_00ae:  brfalse.s  IL_00c1

    IL_00b0:  ldarg.0
    IL_00b1:  ldftn      instance void Game.HelpScreen::'<Update>b__6_2'()
    IL_00b7:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00bc:  call       void Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
    IL_00c1:  ret
  } // end of method HelpScreen::Update

  .method private hidebysig instance class Game.Widget 
          '<.ctor>b__4_0'(object item) cil managed
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
    IL_0020:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0025:  ldstr      "HelpTopicItem.Title"
    IL_002a:  ldc.i4.1
    IL_002b:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_0030:  ldloc.0
    IL_0031:  ldfld      string Game.HelpTopic::Title
    IL_0036:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_003b:  ret
  } // end of method HelpScreen::'<.ctor>b__4_0'

  .method private hidebysig instance void 
          '<.ctor>b__4_1'(class Game.ListPanelWidget sender,
                          object item) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       58 (0x3a)
    .maxstack  2
    .locals init (class Game.HelpScreen/'<>c__DisplayClass4_0' V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ListPanelWidget Game.HelpScreen::m_topicsList
    IL_0006:  callvirt   instance object Game.ListPanelWidget::get_SelectedItem()
    IL_000b:  ldarg.2
    IL_000c:  bne.un.s   IL_0039

    IL_000e:  newobj     instance void Game.HelpScreen/'<>c__DisplayClass4_0'::.ctor()
    IL_0013:  stloc.0
    IL_0014:  ldloc.0
    IL_0015:  ldarg.2
    IL_0016:  isinst     Game.HelpTopic
    IL_001b:  stfld      class Game.HelpTopic Game.HelpScreen/'<>c__DisplayClass4_0'::helpTopic
    IL_0020:  ldloc.0
    IL_0021:  ldfld      class Game.HelpTopic Game.HelpScreen/'<>c__DisplayClass4_0'::helpTopic
    IL_0026:  brfalse.s  IL_0039

    IL_0028:  ldloc.0
    IL_0029:  ldftn      instance void Game.HelpScreen/'<>c__DisplayClass4_0'::'<.ctor>b__2'()
    IL_002f:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0034:  call       void Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
    IL_0039:  ret
  } // end of method HelpScreen::'<.ctor>b__4_1'

  .method private hidebysig instance void 
          '<Update>b__6_2'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.Screen Game.HelpScreen::m_previousScreen
    IL_0006:  ldc.i4.0
    IL_0007:  newarr     [System.Runtime]System.Object
    IL_000c:  call       void Game.ScreensManager::SwitchScreen(class Game.Screen,
                                                                object[])
    IL_0011:  ret
  } // end of method HelpScreen::'<Update>b__6_2'

} // end of class Game.HelpScreen