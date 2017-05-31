.class public auto ansi beforefieldinit Game.SettingsGraphicsScreen
       extends Game.Screen
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.SettingsGraphicsScreen/'<>c' '<>9'
    .field public static class [System.Runtime]System.Action '<>9__2_0'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.SettingsGraphicsScreen/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.SettingsGraphicsScreen/'<>c' Game.SettingsGraphicsScreen/'<>c'::'<>9'
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
            '<Update>b__2_0'() cil managed
    {
      // 代码大小       17 (0x11)
      .maxstack  8
      IL_0000:  call       class Game.Screen Game.ScreensManager::get_PreviousScreen()
      IL_0005:  ldc.i4.0
      IL_0006:  newarr     [System.Runtime]System.Object
      IL_000b:  call       void Game.ScreensManager::SwitchScreen(class Game.Screen,
                                                                  object[])
      IL_0010:  ret
    } // end of method '<>c'::'<Update>b__2_0'

  } // end of class '<>c'

  .field private class Game.SliderWidget m_brightnessSlider
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       59 (0x3b)
    .maxstack  4
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.Screen::.ctor()
    IL_0006:  ldstr      "Screens/SettingsGraphicsScreen"
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
    IL_002a:  ldstr      "BrightnessSlider"
    IL_002f:  ldc.i4.1
    IL_0030:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.SliderWidget>(string,
                                                                                           bool)
    IL_0035:  stfld      class Game.SliderWidget Game.SettingsGraphicsScreen::m_brightnessSlider
    IL_003a:  ret
  } // end of method SettingsGraphicsScreen::.ctor

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       158 (0x9e)
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
    IL_0050:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_0055:  ldfld      bool Game.InputState::Back
    IL_005a:  brtrue.s   IL_0079

    IL_005c:  ldarg.0
    IL_005d:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0062:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0067:  ldstr      "TopBar.Back"
    IL_006c:  ldc.i4.1
    IL_006d:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_0072:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0077:  brfalse.s  IL_009d

    IL_0079:  ldsfld     class [System.Runtime]System.Action Game.SettingsGraphicsScreen/'<>c'::'<>9__2_0'
    IL_007e:  dup
    IL_007f:  brtrue.s   IL_0098

    IL_0081:  pop
    IL_0082:  ldsfld     class Game.SettingsGraphicsScreen/'<>c' Game.SettingsGraphicsScreen/'<>c'::'<>9'
    IL_0087:  ldftn      instance void Game.SettingsGraphicsScreen/'<>c'::'<Update>b__2_0'()
    IL_008d:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0092:  dup
    IL_0093:  stsfld     class [System.Runtime]System.Action Game.SettingsGraphicsScreen/'<>c'::'<>9__2_0'
    IL_0098:  call       void Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
    IL_009d:  ret
  } // end of method SettingsGraphicsScreen::Update

} // end of class Game.SettingsGraphicsScreen