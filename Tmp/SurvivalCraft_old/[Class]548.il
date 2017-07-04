.class public auto ansi beforefieldinit Game.HelpTopicScreen
       extends Game.Screen
{
  .field private class Game.LabelWidget m_titleLabel
  .field private class Game.LabelWidget m_textLabel
  .field private class Game.ScrollPanelWidget m_scrollPanel
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       95 (0x5f)
    .maxstack  4
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.Screen::.ctor()
    IL_0006:  ldstr      "Screens/HelpTopicScreen"
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
    IL_0020:  ldstr      "Title"
    IL_0025:  ldc.i4.1
    IL_0026:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_002b:  stfld      class Game.LabelWidget Game.HelpTopicScreen::m_titleLabel
    IL_0030:  ldarg.0
    IL_0031:  ldarg.0
    IL_0032:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0037:  ldstr      "Text"
    IL_003c:  ldc.i4.1
    IL_003d:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_0042:  stfld      class Game.LabelWidget Game.HelpTopicScreen::m_textLabel
    IL_0047:  ldarg.0
    IL_0048:  ldarg.0
    IL_0049:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_004e:  ldstr      "ScrollPanel"
    IL_0053:  ldc.i4.1
    IL_0054:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ScrollPanelWidget>(string,
                                                                                           bool)
    IL_0059:  stfld      class Game.ScrollPanelWidget Game.HelpTopicScreen::m_scrollPanel
    IL_005e:  ret
  } // end of method HelpTopicScreen::.ctor

  .method public hidebysig virtual instance void 
          Enter(object[] parameters) cil managed
  {
    // 代码大小       60 (0x3c)
    .maxstack  2
    .locals init (class Game.HelpTopic V_0)
    IL_0000:  ldarg.1
    IL_0001:  ldc.i4.0
    IL_0002:  ldelem.ref
    IL_0003:  castclass  Game.HelpTopic
    IL_0008:  stloc.0
    IL_0009:  ldarg.0
    IL_000a:  ldfld      class Game.LabelWidget Game.HelpTopicScreen::m_titleLabel
    IL_000f:  ldloc.0
    IL_0010:  ldfld      string Game.HelpTopic::Title
    IL_0015:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_001a:  ldarg.0
    IL_001b:  ldfld      class Game.LabelWidget Game.HelpTopicScreen::m_textLabel
    IL_0020:  ldloc.0
    IL_0021:  ldfld      string Game.HelpTopic::Text
    IL_0026:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_002b:  ldarg.0
    IL_002c:  ldfld      class Game.ScrollPanelWidget Game.HelpTopicScreen::m_scrollPanel
    IL_0031:  ldc.r4     0.0
    IL_0036:  callvirt   instance void Game.ScrollPanelWidget::set_ScrollPosition(float32)
    IL_003b:  ret
  } // end of method HelpTopicScreen::Enter

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       67 (0x43)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0006:  callvirt   instance bool Game.WidgetInput::get_Back()
    IL_000b:  brtrue.s   IL_0032

    IL_000d:  ldarg.0
    IL_000e:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0013:  callvirt   instance bool Game.WidgetInput::get_Cancel()
    IL_0018:  brtrue.s   IL_0032

    IL_001a:  ldarg.0
    IL_001b:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0020:  ldstr      "TopBar.Back"
    IL_0025:  ldc.i4.1
    IL_0026:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_002b:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0030:  brfalse.s  IL_0042

    IL_0032:  call       class Game.Screen Game.ScreensManager::get_PreviousScreen()
    IL_0037:  ldc.i4.0
    IL_0038:  newarr     [System.Runtime]System.Object
    IL_003d:  call       void Game.ScreensManager::SwitchScreen(class Game.Screen,
                                                                object[])
    IL_0042:  ret
  } // end of method HelpTopicScreen::Update

} // end of class Game.HelpTopicScreen