.class public auto ansi beforefieldinit Game.SettingsAudioScreen
       extends Game.Screen
{
  .field private class Game.SliderWidget m_soundsVolumeSlider
  .field private class Game.SliderWidget m_musicVolumeSlider
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       72 (0x48)
    .maxstack  4
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.Screen::.ctor()
    IL_0006:  ldstr      "Screens/SettingsAudioScreen"
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
    IL_0020:  ldstr      "SoundsVolumeSlider"
    IL_0025:  ldc.i4.1
    IL_0026:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.SliderWidget>(string,
                                                                                      bool)
    IL_002b:  stfld      class Game.SliderWidget Game.SettingsAudioScreen::m_soundsVolumeSlider
    IL_0030:  ldarg.0
    IL_0031:  ldarg.0
    IL_0032:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0037:  ldstr      "MusicVolumeSlider"
    IL_003c:  ldc.i4.1
    IL_003d:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.SliderWidget>(string,
                                                                                      bool)
    IL_0042:  stfld      class Game.SliderWidget Game.SettingsAudioScreen::m_musicVolumeSlider
    IL_0047:  ret
  } // end of method SettingsAudioScreen::.ctor

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       227 (0xe3)
    .maxstack  3
    .locals init (float32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SliderWidget Game.SettingsAudioScreen::m_soundsVolumeSlider
    IL_0006:  callvirt   instance bool Game.SliderWidget::get_IsSliding()
    IL_000b:  brfalse.s  IL_001d

    IL_000d:  ldarg.0
    IL_000e:  ldfld      class Game.SliderWidget Game.SettingsAudioScreen::m_soundsVolumeSlider
    IL_0013:  callvirt   instance float32 Game.SliderWidget::get_Value()
    IL_0018:  call       void Game.SettingsManager::set_SoundsVolume(float32)
    IL_001d:  ldarg.0
    IL_001e:  ldfld      class Game.SliderWidget Game.SettingsAudioScreen::m_musicVolumeSlider
    IL_0023:  callvirt   instance bool Game.SliderWidget::get_IsSliding()
    IL_0028:  brfalse.s  IL_003a

    IL_002a:  ldarg.0
    IL_002b:  ldfld      class Game.SliderWidget Game.SettingsAudioScreen::m_musicVolumeSlider
    IL_0030:  callvirt   instance float32 Game.SliderWidget::get_Value()
    IL_0035:  call       void Game.SettingsManager::set_MusicVolume(float32)
    IL_003a:  ldarg.0
    IL_003b:  ldfld      class Game.SliderWidget Game.SettingsAudioScreen::m_soundsVolumeSlider
    IL_0040:  call       float32 Game.SettingsManager::get_SoundsVolume()
    IL_0045:  callvirt   instance void Game.SliderWidget::set_Value(float32)
    IL_004a:  ldarg.0
    IL_004b:  ldfld      class Game.SliderWidget Game.SettingsAudioScreen::m_soundsVolumeSlider
    IL_0050:  call       float32 Game.SettingsManager::get_SoundsVolume()
    IL_0055:  ldc.r4     10.
    IL_005a:  mul
    IL_005b:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_0060:  stloc.0
    IL_0061:  ldloca.s   V_0
    IL_0063:  call       instance string [System.Runtime]System.Single::ToString()
    IL_0068:  callvirt   instance void Game.SliderWidget::set_Text(string)
    IL_006d:  ldarg.0
    IL_006e:  ldfld      class Game.SliderWidget Game.SettingsAudioScreen::m_musicVolumeSlider
    IL_0073:  call       float32 Game.SettingsManager::get_MusicVolume()
    IL_0078:  callvirt   instance void Game.SliderWidget::set_Value(float32)
    IL_007d:  ldarg.0
    IL_007e:  ldfld      class Game.SliderWidget Game.SettingsAudioScreen::m_musicVolumeSlider
    IL_0083:  call       float32 Game.SettingsManager::get_MusicVolume()
    IL_0088:  ldc.r4     10.
    IL_008d:  mul
    IL_008e:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_0093:  stloc.0
    IL_0094:  ldloca.s   V_0
    IL_0096:  call       instance string [System.Runtime]System.Single::ToString()
    IL_009b:  callvirt   instance void Game.SliderWidget::set_Text(string)
    IL_00a0:  ldarg.0
    IL_00a1:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_00a6:  callvirt   instance bool Game.WidgetInput::get_Back()
    IL_00ab:  brtrue.s   IL_00d2

    IL_00ad:  ldarg.0
    IL_00ae:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_00b3:  callvirt   instance bool Game.WidgetInput::get_Cancel()
    IL_00b8:  brtrue.s   IL_00d2

    IL_00ba:  ldarg.0
    IL_00bb:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00c0:  ldstr      "TopBar.Back"
    IL_00c5:  ldc.i4.1
    IL_00c6:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_00cb:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_00d0:  brfalse.s  IL_00e2

    IL_00d2:  call       class Game.Screen Game.ScreensManager::get_PreviousScreen()
    IL_00d7:  ldc.i4.0
    IL_00d8:  newarr     [System.Runtime]System.Object
    IL_00dd:  call       void Game.ScreensManager::SwitchScreen(class Game.Screen,
                                                                object[])
    IL_00e2:  ret
  } // end of method SettingsAudioScreen::Update

} // end of class Game.SettingsAudioScreen