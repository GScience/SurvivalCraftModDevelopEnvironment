.class public auto ansi beforefieldinit Game.HelpTopicScreen
       extends Game.Screen
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.HelpTopicScreen/'<>c' '<>9'
    .field public static class [System.Runtime]System.Action '<>9__5_0'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.HelpTopicScreen/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.HelpTopicScreen/'<>c' Game.HelpTopicScreen/'<>c'::'<>9'
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
            '<Update>b__5_0'() cil managed
    {
      // 代码大小       17 (0x11)
      .maxstack  8
      IL_0000:  call       class Game.Screen Game.ScreensManager::get_PreviousScreen()
      IL_0005:  ldc.i4.0
      IL_0006:  newarr     [System.Runtime]System.Object
      IL_000b:  call       void Game.ScreensManager::SwitchScreen(class Game.Screen,
                                                                  object[])
      IL_0010:  ret
    } // end of method '<>c'::'<Update>b__5_0'

  } // end of class '<>c'

  .field private class Game.LabelWidget m_titleLabel
  .field private class Game.LabelWidget m_textLabel
  .field private class Game.ScrollPanelWidget m_scrollPanel
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       115 (0x73)
    .maxstack  4
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.Screen::.ctor()
    IL_0006:  ldstr      "Screens/HelpTopicScreen"
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
    IL_002a:  ldstr      "Title"
    IL_002f:  ldc.i4.1
    IL_0030:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_0035:  stfld      class Game.LabelWidget Game.HelpTopicScreen::m_titleLabel
    IL_003a:  ldarg.0
    IL_003b:  ldarg.0
    IL_003c:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0041:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0046:  ldstr      "Text"
    IL_004b:  ldc.i4.1
    IL_004c:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_0051:  stfld      class Game.LabelWidget Game.HelpTopicScreen::m_textLabel
    IL_0056:  ldarg.0
    IL_0057:  ldarg.0
    IL_0058:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_005d:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0062:  ldstr      "ScrollPanel"
    IL_0067:  ldc.i4.1
    IL_0068:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ScrollPanelWidget>(string,
                                                                                                bool)
    IL_006d:  stfld      class Game.ScrollPanelWidget Game.HelpTopicScreen::m_scrollPanel
    IL_0072:  ret
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
    // 代码大小       78 (0x4e)
    .maxstack  3
    IL_0000:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_0005:  ldfld      bool Game.InputState::Back
    IL_000a:  brtrue.s   IL_0029

    IL_000c:  ldarg.0
    IL_000d:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0012:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0017:  ldstr      "TopBar.Back"
    IL_001c:  ldc.i4.1
    IL_001d:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_0022:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0027:  brfalse.s  IL_004d

    IL_0029:  ldsfld     class [System.Runtime]System.Action Game.HelpTopicScreen/'<>c'::'<>9__5_0'
    IL_002e:  dup
    IL_002f:  brtrue.s   IL_0048

    IL_0031:  pop
    IL_0032:  ldsfld     class Game.HelpTopicScreen/'<>c' Game.HelpTopicScreen/'<>c'::'<>9'
    IL_0037:  ldftn      instance void Game.HelpTopicScreen/'<>c'::'<Update>b__5_0'()
    IL_003d:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0042:  dup
    IL_0043:  stsfld     class [System.Runtime]System.Action Game.HelpTopicScreen/'<>c'::'<>9__5_0'
    IL_0048:  call       void Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
    IL_004d:  ret
  } // end of method HelpTopicScreen::Update

} // end of class Game.HelpTopicScreen