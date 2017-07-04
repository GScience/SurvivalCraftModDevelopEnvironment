.class public auto ansi beforefieldinit Game.SettingsGraphicsScreen
       extends Game.Screen
{
  .field private class Game.SliderWidget m_brightnessSlider
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       49 (0x31)
    .maxstack  4
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.Screen::.ctor()
    IL_0006:  ldstr      "Screens/SettingsGraphicsScreen"
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
    IL_0020:  ldstr      "BrightnessSlider"
    IL_0025:  ldc.i4.1
    IL_0026:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.SliderWidget>(string,
                                                                                      bool)
    IL_002b:  stfld      class Game.SliderWidget Game.SettingsGraphicsScreen::m_brightnessSlider
    IL_0030:  ret
  } // end of method SettingsGraphicsScreen::.ctor

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       147 (0x93)
    .maxstack  3
    .locals init (float32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SliderWidget Game.SettingsGraphicsScreen::m_brightnessSlider
    IL_0006:  callvirt   instance bool Game.SliderWidget::get_IsSliding()
    IL_000b:  brfalse.s  IL_001d

    IL_000d:  ldarg.0
    IL_000e:  ldfld      class Game.SliderWidget Game.SettingsGraphicsScreen::m_brightnessSlider
    IL_0013:  callvirt   instance float32 Game.SliderWidget::get_Value()
    IL_0018:  call       void Game.SettingsManager::set_Brightness(float32)
    IL_001d:  ldarg.0
    IL_001e:  ldfld      class Game.SliderWidget Game.SettingsGraphicsScreen::m_brightnessSlider
    IL_0023:  call       float32 Game.SettingsManager::get_Brightness()
    IL_0028:  callvirt   instance void Game.SliderWidget::set_Value(float32)
    IL_002d:  ldarg.0
    IL_002e:  ldfld      class Game.SliderWidget Game.SettingsGraphicsScreen::m_brightnessSlider
    IL_0033:  call       float32 Game.SettingsManager::get_Brightness()
    IL_0038:  ldc.r4     10.
    IL_003d:  mul
    IL_003e:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_0043:  stloc.0
    IL_0044:  ldloca.s   V_0
    IL_0046:  call       instance string [System.Runtime]System.Single::ToString()
    IL_004b:  callvirt   instance void Game.SliderWidget::set_Text(string)
    IL_0050:  ldarg.0
    IL_0051:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0056:  callvirt   instance bool Game.WidgetInput::get_Back()
    IL_005b:  brtrue.s   IL_0082

    IL_005d:  ldarg.0
    IL_005e:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0063:  callvirt   instance bool Game.WidgetInput::get_Cancel()
    IL_0068:  brtrue.s   IL_0082

    IL_006a:  ldarg.0
    IL_006b:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0070:  ldstr      "TopBar.Back"
    IL_0075:  ldc.i4.1
    IL_0076:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_007b:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0080:  brfalse.s  IL_0092

    IL_0082:  call       class Game.Screen Game.ScreensManager::get_PreviousScreen()
    IL_0087:  ldc.i4.0
    IL_0088:  newarr     [System.Runtime]System.Object
    IL_008d:  call       void Game.ScreensManager::SwitchScreen(class Game.Screen,
                                                                object[])
    IL_0092:  ret
  } // end of method SettingsGraphicsScreen::Update

} // end of class Game.SettingsGraphicsScreen