.class public auto ansi beforefieldinit Game.SettingsCompatibilityScreen
       extends Game.Screen
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.SettingsCompatibilityScreen/'<>c' '<>9'
    .field public static class [System.Runtime]System.Action '<>9__11_0'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.SettingsCompatibilityScreen/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.SettingsCompatibilityScreen/'<>c' Game.SettingsCompatibilityScreen/'<>c'::'<>9'
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
            '<Update>b__11_0'() cil managed
    {
      // 代码大小       17 (0x11)
      .maxstack  8
      IL_0000:  call       class Game.Screen Game.ScreensManager::get_PreviousScreen()
      IL_0005:  ldc.i4.0
      IL_0006:  newarr     [System.Runtime]System.Object
      IL_000b:  call       void Game.ScreensManager::SwitchScreen(class Game.Screen,
                                                                  object[])
      IL_0010:  ret
    } // end of method '<>c'::'<Update>b__11_0'

  } // end of class '<>c'

  .field private class Game.ButtonWidget m_invisibleModelsWorkaroundButton
  .field private class Game.ButtonWidget m_singlethreadedTerrainUpdateButton
  .field private class Game.ButtonWidget m_useAudioTrackCachingButton
  .field private class Game.ContainerWidget m_disableAudioTrackCachingContainer
  .field private class Game.ButtonWidget m_useReducedZRangeButton
  .field private class Game.ContainerWidget m_useReducedZRangeContainer
  .field private class Game.ButtonWidget m_viewGameLogButton
  .field private class Game.ButtonWidget m_resetDefaultsButton
  .field private class Game.LabelWidget m_descriptionLabel
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       283 (0x11b)
    .maxstack  4
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.Screen::.ctor()
    IL_0006:  ldstr      "Screens/SettingsCompatibilityScreen"
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
    IL_002a:  ldstr      "InvisibleModelsWorkaroundButton"
    IL_002f:  ldc.i4.1
    IL_0030:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_0035:  stfld      class Game.ButtonWidget Game.SettingsCompatibilityScreen::m_invisibleModelsWorkaroundButton
    IL_003a:  ldarg.0
    IL_003b:  ldarg.0
    IL_003c:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0041:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0046:  ldstr      "SinglethreadedTerrainUpdateButton"
    IL_004b:  ldc.i4.1
    IL_004c:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_0051:  stfld      class Game.ButtonWidget Game.SettingsCompatibilityScreen::m_singlethreadedTerrainUpdateButton
    IL_0056:  ldarg.0
    IL_0057:  ldarg.0
    IL_0058:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_005d:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0062:  ldstr      "UseAudioTrackCachingButton"
    IL_0067:  ldc.i4.1
    IL_0068:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_006d:  stfld      class Game.ButtonWidget Game.SettingsCompatibilityScreen::m_useAudioTrackCachingButton
    IL_0072:  ldarg.0
    IL_0073:  ldarg.0
    IL_0074:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0079:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_007e:  ldstr      "DisableAudioTrackCachingContainer"
    IL_0083:  ldc.i4.1
    IL_0084:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ContainerWidget>(string,
                                                                                              bool)
    IL_0089:  stfld      class Game.ContainerWidget Game.SettingsCompatibilityScreen::m_disableAudioTrackCachingContainer
    IL_008e:  ldarg.0
    IL_008f:  ldarg.0
    IL_0090:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0095:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_009a:  ldstr      "UseReducedZRangeButton"
    IL_009f:  ldc.i4.1
    IL_00a0:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_00a5:  stfld      class Game.ButtonWidget Game.SettingsCompatibilityScreen::m_useReducedZRangeButton
    IL_00aa:  ldarg.0
    IL_00ab:  ldarg.0
    IL_00ac:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_00b1:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00b6:  ldstr      "UseReducedZRangeContainer"
    IL_00bb:  ldc.i4.1
    IL_00bc:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ContainerWidget>(string,
                                                                                              bool)
    IL_00c1:  stfld      class Game.ContainerWidget Game.SettingsCompatibilityScreen::m_useReducedZRangeContainer
    IL_00c6:  ldarg.0
    IL_00c7:  ldarg.0
    IL_00c8:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_00cd:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00d2:  ldstr      "ViewGameLogButton"
    IL_00d7:  ldc.i4.1
    IL_00d8:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_00dd:  stfld      class Game.ButtonWidget Game.SettingsCompatibilityScreen::m_viewGameLogButton
    IL_00e2:  ldarg.0
    IL_00e3:  ldarg.0
    IL_00e4:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_00e9:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00ee:  ldstr      "ResetDefaultsButton"
    IL_00f3:  ldc.i4.1
    IL_00f4:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_00f9:  stfld      class Game.ButtonWidget Game.SettingsCompatibilityScreen::m_resetDefaultsButton
    IL_00fe:  ldarg.0
    IL_00ff:  ldarg.0
    IL_0100:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0105:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_010a:  ldstr      "Description"
    IL_010f:  ldc.i4.1
    IL_0110:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_0115:  stfld      class Game.LabelWidget Game.SettingsCompatibilityScreen::m_descriptionLabel
    IL_011a:  ret
  } // end of method SettingsCompatibilityScreen::.ctor

  .method public hidebysig virtual instance void 
          Enter(object[] parameters) cil managed
  {
    // 代码大小       41 (0x29)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.LabelWidget Game.SettingsCompatibilityScreen::m_descriptionLabel
    IL_0006:  ldsfld     string [System.Runtime]System.String::Empty
    IL_000b:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0010:  ldarg.0
    IL_0011:  ldfld      class Game.ContainerWidget Game.SettingsCompatibilityScreen::m_disableAudioTrackCachingContainer
    IL_0016:  ldc.i4.0
    IL_0017:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_001c:  ldarg.0
    IL_001d:  ldfld      class Game.ContainerWidget Game.SettingsCompatibilityScreen::m_useReducedZRangeContainer
    IL_0022:  ldc.i4.0
    IL_0023:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0028:  ret
  } // end of method SettingsCompatibilityScreen::Enter

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       483 (0x1e3)
    .maxstack  3
    .locals init (bool V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ButtonWidget Game.SettingsCompatibilityScreen::m_invisibleModelsWorkaroundButton
    IL_0006:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_000b:  brfalse.s  IL_002f

    IL_000d:  call       bool Game.SettingsManager::get_InvisibleModelsWorkaround()
    IL_0012:  ldc.i4.0
    IL_0013:  ceq
    IL_0015:  call       void Game.SettingsManager::set_InvisibleModelsWorkaround(bool)
    IL_001a:  ldarg.0
    IL_001b:  ldfld      class Game.LabelWidget Game.SettingsCompatibilityScreen::m_descriptionLabel
    IL_0020:  ldstr      "Settings.Compatibility.InvisibleModelsWorkaround.D"
    + "escription"
    IL_0025:  call       string Game.StringsManager::GetString(string)
    IL_002a:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_002f:  ldarg.0
    IL_0030:  ldfld      class Game.ButtonWidget Game.SettingsCompatibilityScreen::m_singlethreadedTerrainUpdateButton
    IL_0035:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_003a:  brfalse.s  IL_005e

    IL_003c:  call       bool Game.SettingsManager::get_MultithreadedTerrainUpdate()
    IL_0041:  ldc.i4.0
    IL_0042:  ceq
    IL_0044:  call       void Game.SettingsManager::set_MultithreadedTerrainUpdate(bool)
    IL_0049:  ldarg.0
    IL_004a:  ldfld      class Game.LabelWidget Game.SettingsCompatibilityScreen::m_descriptionLabel
    IL_004f:  ldstr      "Settings.Compatibility.SinglethreadedTerrainUpdate"
    + ".Description"
    IL_0054:  call       string Game.StringsManager::GetString(string)
    IL_0059:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_005e:  ldarg.0
    IL_005f:  ldfld      class Game.ButtonWidget Game.SettingsCompatibilityScreen::m_useAudioTrackCachingButton
    IL_0064:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0069:  brfalse.s  IL_008d

    IL_006b:  call       bool Game.SettingsManager::get_EnableAndroidAudioTrackCaching()
    IL_0070:  ldc.i4.0
    IL_0071:  ceq
    IL_0073:  call       void Game.SettingsManager::set_EnableAndroidAudioTrackCaching(bool)
    IL_0078:  ldarg.0
    IL_0079:  ldfld      class Game.LabelWidget Game.SettingsCompatibilityScreen::m_descriptionLabel
    IL_007e:  ldstr      "Settings.Compatibility.UseAudioTrackCaching.Descri"
    + "ption"
    IL_0083:  call       string Game.StringsManager::GetString(string)
    IL_0088:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_008d:  ldarg.0
    IL_008e:  ldfld      class Game.ButtonWidget Game.SettingsCompatibilityScreen::m_useReducedZRangeButton
    IL_0093:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0098:  brfalse.s  IL_00bc

    IL_009a:  call       bool Game.SettingsManager::get_UseReducedZRange()
    IL_009f:  ldc.i4.0
    IL_00a0:  ceq
    IL_00a2:  call       void Game.SettingsManager::set_UseReducedZRange(bool)
    IL_00a7:  ldarg.0
    IL_00a8:  ldfld      class Game.LabelWidget Game.SettingsCompatibilityScreen::m_descriptionLabel
    IL_00ad:  ldstr      "Settings.Compatibility.UseReducedZRange.Description"
    IL_00b2:  call       string Game.StringsManager::GetString(string)
    IL_00b7:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_00bc:  ldarg.0
    IL_00bd:  ldfld      class Game.ButtonWidget Game.SettingsCompatibilityScreen::m_viewGameLogButton
    IL_00c2:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_00c7:  brfalse.s  IL_00d3

    IL_00c9:  newobj     instance void Game.ViewGameLogDialog::.ctor()
    IL_00ce:  call       void Game.DialogsManager::ShowDialog(class Game.Dialog)
    IL_00d3:  ldc.i4.0
    IL_00d4:  stloc.0
    IL_00d5:  ldarg.0
    IL_00d6:  ldfld      class Game.ButtonWidget Game.SettingsCompatibilityScreen::m_resetDefaultsButton
    IL_00db:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_00e0:  brfalse.s  IL_00f4

    IL_00e2:  ldc.i4.0
    IL_00e3:  call       void Game.SettingsManager::set_InvisibleModelsWorkaround(bool)
    IL_00e8:  ldc.i4.1
    IL_00e9:  call       void Game.SettingsManager::set_MultithreadedTerrainUpdate(bool)
    IL_00ee:  ldc.i4.0
    IL_00ef:  call       void Game.SettingsManager::set_UseReducedZRange(bool)
    IL_00f4:  ldarg.0
    IL_00f5:  ldfld      class Game.ButtonWidget Game.SettingsCompatibilityScreen::m_invisibleModelsWorkaroundButton
    IL_00fa:  call       bool Game.SettingsManager::get_InvisibleModelsWorkaround()
    IL_00ff:  brtrue.s   IL_0108

    IL_0101:  ldstr      "Off"
    IL_0106:  br.s       IL_010d

    IL_0108:  ldstr      "On"
    IL_010d:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_0112:  ldarg.0
    IL_0113:  ldfld      class Game.ButtonWidget Game.SettingsCompatibilityScreen::m_singlethreadedTerrainUpdateButton
    IL_0118:  call       bool Game.SettingsManager::get_MultithreadedTerrainUpdate()
    IL_011d:  brtrue.s   IL_0126

    IL_011f:  ldstr      "On"
    IL_0124:  br.s       IL_012b

    IL_0126:  ldstr      "Off"
    IL_012b:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_0130:  ldarg.0
    IL_0131:  ldfld      class Game.ButtonWidget Game.SettingsCompatibilityScreen::m_useAudioTrackCachingButton
    IL_0136:  call       bool Game.SettingsManager::get_EnableAndroidAudioTrackCaching()
    IL_013b:  brtrue.s   IL_0144

    IL_013d:  ldstr      "Off"
    IL_0142:  br.s       IL_0149

    IL_0144:  ldstr      "On"
    IL_0149:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_014e:  ldarg.0
    IL_014f:  ldfld      class Game.ButtonWidget Game.SettingsCompatibilityScreen::m_useReducedZRangeButton
    IL_0154:  call       bool Game.SettingsManager::get_UseReducedZRange()
    IL_0159:  brtrue.s   IL_0162

    IL_015b:  ldstr      "Off"
    IL_0160:  br.s       IL_0167

    IL_0162:  ldstr      "On"
    IL_0167:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_016c:  ldarg.0
    IL_016d:  ldfld      class Game.ButtonWidget Game.SettingsCompatibilityScreen::m_resetDefaultsButton
    IL_0172:  call       bool Game.SettingsManager::get_InvisibleModelsWorkaround()
    IL_0177:  brtrue.s   IL_018f

    IL_0179:  call       bool Game.SettingsManager::get_MultithreadedTerrainUpdate()
    IL_017e:  brfalse.s  IL_018f

    IL_0180:  call       bool Game.SettingsManager::get_EnableAndroidAudioTrackCaching()
    IL_0185:  ldloc.0
    IL_0186:  bne.un.s   IL_018f

    IL_0188:  call       bool Game.SettingsManager::get_UseReducedZRange()
    IL_018d:  br.s       IL_0190

    IL_018f:  ldc.i4.1
    IL_0190:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_0195:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_019a:  ldfld      bool Game.InputState::Back
    IL_019f:  brtrue.s   IL_01be

    IL_01a1:  ldarg.0
    IL_01a2:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_01a7:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_01ac:  ldstr      "TopBar.Back"
    IL_01b1:  ldc.i4.1
    IL_01b2:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_01b7:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_01bc:  brfalse.s  IL_01e2

    IL_01be:  ldsfld     class [System.Runtime]System.Action Game.SettingsCompatibilityScreen/'<>c'::'<>9__11_0'
    IL_01c3:  dup
    IL_01c4:  brtrue.s   IL_01dd

    IL_01c6:  pop
    IL_01c7:  ldsfld     class Game.SettingsCompatibilityScreen/'<>c' Game.SettingsCompatibilityScreen/'<>c'::'<>9'
    IL_01cc:  ldftn      instance void Game.SettingsCompatibilityScreen/'<>c'::'<Update>b__11_0'()
    IL_01d2:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_01d7:  dup
    IL_01d8:  stsfld     class [System.Runtime]System.Action Game.SettingsCompatibilityScreen/'<>c'::'<>9__11_0'
    IL_01dd:  call       void Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
    IL_01e2:  ret
  } // end of method SettingsCompatibilityScreen::Update

} // end of class Game.SettingsCompatibilityScreen