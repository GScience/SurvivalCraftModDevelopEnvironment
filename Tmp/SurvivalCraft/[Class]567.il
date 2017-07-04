.class public auto ansi beforefieldinit Game.SettingsScreen
       extends Game.Screen
{
  .field private class Game.Screen m_previousScreen
  .field private class Game.ButtonWidget m_performanceButton
  .field private class Game.ButtonWidget m_graphicsButton
  .field private class Game.ButtonWidget m_uiButton
  .field private class Game.ButtonWidget m_compatibilityButton
  .field private class Game.ButtonWidget m_audioButton
  .field private class Game.ButtonWidget m_controlsButton
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       164 (0xa4)
    .maxstack  4
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.Screen::.ctor()
    IL_0006:  ldstr      "Screens/SettingsScreen"
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
    IL_0020:  ldstr      "Performance"
    IL_0025:  ldc.i4.1
    IL_0026:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_002b:  stfld      class Game.ButtonWidget Game.SettingsScreen::m_performanceButton
    IL_0030:  ldarg.0
    IL_0031:  ldarg.0
    IL_0032:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0037:  ldstr      "Graphics"
    IL_003c:  ldc.i4.1
    IL_003d:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0042:  stfld      class Game.ButtonWidget Game.SettingsScreen::m_graphicsButton
    IL_0047:  ldarg.0
    IL_0048:  ldarg.0
    IL_0049:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_004e:  ldstr      "Ui"
    IL_0053:  ldc.i4.1
    IL_0054:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0059:  stfld      class Game.ButtonWidget Game.SettingsScreen::m_uiButton
    IL_005e:  ldarg.0
    IL_005f:  ldarg.0
    IL_0060:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0065:  ldstr      "Compatibility"
    IL_006a:  ldc.i4.1
    IL_006b:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0070:  stfld      class Game.ButtonWidget Game.SettingsScreen::m_compatibilityButton
    IL_0075:  ldarg.0
    IL_0076:  ldarg.0
    IL_0077:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_007c:  ldstr      "Audio"
    IL_0081:  ldc.i4.1
    IL_0082:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0087:  stfld      class Game.ButtonWidget Game.SettingsScreen::m_audioButton
    IL_008c:  ldarg.0
    IL_008d:  ldarg.0
    IL_008e:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0093:  ldstr      "Controls"
    IL_0098:  ldc.i4.1
    IL_0099:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_009e:  stfld      class Game.ButtonWidget Game.SettingsScreen::m_controlsButton
    IL_00a3:  ret
  } // end of method SettingsScreen::.ctor

  .method public hidebysig virtual instance void 
          Enter(object[] parameters) cil managed
  {
    // 代码大小       20 (0x14)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.Screen Game.SettingsScreen::m_previousScreen
    IL_0006:  brtrue.s   IL_0013

    IL_0008:  ldarg.0
    IL_0009:  call       class Game.Screen Game.ScreensManager::get_PreviousScreen()
    IL_000e:  stfld      class Game.Screen Game.SettingsScreen::m_previousScreen
    IL_0013:  ret
  } // end of method SettingsScreen::Enter

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       249 (0xf9)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ButtonWidget Game.SettingsScreen::m_performanceButton
    IL_0006:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_000b:  brfalse.s  IL_001d

    IL_000d:  ldstr      "SettingsPerformance"
    IL_0012:  ldc.i4.0
    IL_0013:  newarr     [System.Runtime]System.Object
    IL_0018:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                object[])
    IL_001d:  ldarg.0
    IL_001e:  ldfld      class Game.ButtonWidget Game.SettingsScreen::m_graphicsButton
    IL_0023:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0028:  brfalse.s  IL_003a

    IL_002a:  ldstr      "SettingsGraphics"
    IL_002f:  ldc.i4.0
    IL_0030:  newarr     [System.Runtime]System.Object
    IL_0035:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                object[])
    IL_003a:  ldarg.0
    IL_003b:  ldfld      class Game.ButtonWidget Game.SettingsScreen::m_uiButton
    IL_0040:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0045:  brfalse.s  IL_0057

    IL_0047:  ldstr      "SettingsUi"
    IL_004c:  ldc.i4.0
    IL_004d:  newarr     [System.Runtime]System.Object
    IL_0052:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                object[])
    IL_0057:  ldarg.0
    IL_0058:  ldfld      class Game.ButtonWidget Game.SettingsScreen::m_compatibilityButton
    IL_005d:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0062:  brfalse.s  IL_0074

    IL_0064:  ldstr      "SettingsCompatibility"
    IL_0069:  ldc.i4.0
    IL_006a:  newarr     [System.Runtime]System.Object
    IL_006f:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                object[])
    IL_0074:  ldarg.0
    IL_0075:  ldfld      class Game.ButtonWidget Game.SettingsScreen::m_audioButton
    IL_007a:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_007f:  brfalse.s  IL_0091

    IL_0081:  ldstr      "SettingsAudio"
    IL_0086:  ldc.i4.0
    IL_0087:  newarr     [System.Runtime]System.Object
    IL_008c:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                object[])
    IL_0091:  ldarg.0
    IL_0092:  ldfld      class Game.ButtonWidget Game.SettingsScreen::m_controlsButton
    IL_0097:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_009c:  brfalse.s  IL_00ae

    IL_009e:  ldstr      "SettingsControls"
    IL_00a3:  ldc.i4.0
    IL_00a4:  newarr     [System.Runtime]System.Object
    IL_00a9:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                object[])
    IL_00ae:  ldarg.0
    IL_00af:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_00b4:  callvirt   instance bool Game.WidgetInput::get_Back()
    IL_00b9:  brtrue.s   IL_00e0

    IL_00bb:  ldarg.0
    IL_00bc:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_00c1:  callvirt   instance bool Game.WidgetInput::get_Cancel()
    IL_00c6:  brtrue.s   IL_00e0

    IL_00c8:  ldarg.0
    IL_00c9:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00ce:  ldstr      "TopBar.Back"
    IL_00d3:  ldc.i4.1
    IL_00d4:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_00d9:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_00de:  brfalse.s  IL_00f8

    IL_00e0:  ldarg.0
    IL_00e1:  ldfld      class Game.Screen Game.SettingsScreen::m_previousScreen
    IL_00e6:  ldc.i4.0
    IL_00e7:  newarr     [System.Runtime]System.Object
    IL_00ec:  call       void Game.ScreensManager::SwitchScreen(class Game.Screen,
                                                                object[])
    IL_00f1:  ldarg.0
    IL_00f2:  ldnull
    IL_00f3:  stfld      class Game.Screen Game.SettingsScreen::m_previousScreen
    IL_00f8:  ret
  } // end of method SettingsScreen::Update

} // end of class Game.SettingsScreen