.class public auto ansi beforefieldinit Game.SettingsCompatibilityScreen
       extends Game.Screen
{
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
    // 代码大小       233 (0xe9)
    .maxstack  4
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.Screen::.ctor()
    IL_0006:  ldstr      "Screens/SettingsCompatibilityScreen"
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
    IL_0020:  ldstr      "InvisibleModelsWorkaroundButton"
    IL_0025:  ldc.i4.1
    IL_0026:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_002b:  stfld      class Game.ButtonWidget Game.SettingsCompatibilityScreen::m_invisibleModelsWorkaroundButton
    IL_0030:  ldarg.0
    IL_0031:  ldarg.0
    IL_0032:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0037:  ldstr      "SinglethreadedTerrainUpdateButton"
    IL_003c:  ldc.i4.1
    IL_003d:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0042:  stfld      class Game.ButtonWidget Game.SettingsCompatibilityScreen::m_singlethreadedTerrainUpdateButton
    IL_0047:  ldarg.0
    IL_0048:  ldarg.0
    IL_0049:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_004e:  ldstr      "UseAudioTrackCachingButton"
    IL_0053:  ldc.i4.1
    IL_0054:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0059:  stfld      class Game.ButtonWidget Game.SettingsCompatibilityScreen::m_useAudioTrackCachingButton
    IL_005e:  ldarg.0
    IL_005f:  ldarg.0
    IL_0060:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0065:  ldstr      "DisableAudioTrackCachingContainer"
    IL_006a:  ldc.i4.1
    IL_006b:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ContainerWidget>(string,
                                                                                         bool)
    IL_0070:  stfld      class Game.ContainerWidget Game.SettingsCompatibilityScreen::m_disableAudioTrackCachingContainer
    IL_0075:  ldarg.0
    IL_0076:  ldarg.0
    IL_0077:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_007c:  ldstr      "UseReducedZRangeButton"
    IL_0081:  ldc.i4.1
    IL_0082:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0087:  stfld      class Game.ButtonWidget Game.SettingsCompatibilityScreen::m_useReducedZRangeButton
    IL_008c:  ldarg.0
    IL_008d:  ldarg.0
    IL_008e:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0093:  ldstr      "UseReducedZRangeContainer"
    IL_0098:  ldc.i4.1
    IL_0099:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ContainerWidget>(string,
                                                                                         bool)
    IL_009e:  stfld      class Game.ContainerWidget Game.SettingsCompatibilityScreen::m_useReducedZRangeContainer
    IL_00a3:  ldarg.0
    IL_00a4:  ldarg.0
    IL_00a5:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00aa:  ldstr      "ViewGameLogButton"
    IL_00af:  ldc.i4.1
    IL_00b0:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_00b5:  stfld      class Game.ButtonWidget Game.SettingsCompatibilityScreen::m_viewGameLogButton
    IL_00ba:  ldarg.0
    IL_00bb:  ldarg.0
    IL_00bc:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00c1:  ldstr      "ResetDefaultsButton"
    IL_00c6:  ldc.i4.1
    IL_00c7:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_00cc:  stfld      class Game.ButtonWidget Game.SettingsCompatibilityScreen::m_resetDefaultsButton
    IL_00d1:  ldarg.0
    IL_00d2:  ldarg.0
    IL_00d3:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00d8:  ldstr      "Description"
    IL_00dd:  ldc.i4.1
    IL_00de:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_00e3:  stfld      class Game.LabelWidget Game.SettingsCompatibilityScreen::m_descriptionLabel
    IL_00e8:  ret
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
    // 代码大小       473 (0x1d9)
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
    IL_00c7:  brfalse.s  IL_00d4

    IL_00c9:  ldnull
    IL_00ca:  newobj     instance void Game.ViewGameLogDialog::.ctor()
    IL_00cf:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_00d4:  ldc.i4.0
    IL_00d5:  stloc.0
    IL_00d6:  ldarg.0
    IL_00d7:  ldfld      class Game.ButtonWidget Game.SettingsCompatibilityScreen::m_resetDefaultsButton
    IL_00dc:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_00e1:  brfalse.s  IL_00f5

    IL_00e3:  ldc.i4.0
    IL_00e4:  call       void Game.SettingsManager::set_InvisibleModelsWorkaround(bool)
    IL_00e9:  ldc.i4.1
    IL_00ea:  call       void Game.SettingsManager::set_MultithreadedTerrainUpdate(bool)
    IL_00ef:  ldc.i4.0
    IL_00f0:  call       void Game.SettingsManager::set_UseReducedZRange(bool)
    IL_00f5:  ldarg.0
    IL_00f6:  ldfld      class Game.ButtonWidget Game.SettingsCompatibilityScreen::m_invisibleModelsWorkaroundButton
    IL_00fb:  call       bool Game.SettingsManager::get_InvisibleModelsWorkaround()
    IL_0100:  brtrue.s   IL_0109

    IL_0102:  ldstr      "Off"
    IL_0107:  br.s       IL_010e

    IL_0109:  ldstr      "On"
    IL_010e:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_0113:  ldarg.0
    IL_0114:  ldfld      class Game.ButtonWidget Game.SettingsCompatibilityScreen::m_singlethreadedTerrainUpdateButton
    IL_0119:  call       bool Game.SettingsManager::get_MultithreadedTerrainUpdate()
    IL_011e:  brtrue.s   IL_0127

    IL_0120:  ldstr      "On"
    IL_0125:  br.s       IL_012c

    IL_0127:  ldstr      "Off"
    IL_012c:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_0131:  ldarg.0
    IL_0132:  ldfld      class Game.ButtonWidget Game.SettingsCompatibilityScreen::m_useAudioTrackCachingButton
    IL_0137:  call       bool Game.SettingsManager::get_EnableAndroidAudioTrackCaching()
    IL_013c:  brtrue.s   IL_0145

    IL_013e:  ldstr      "Off"
    IL_0143:  br.s       IL_014a

    IL_0145:  ldstr      "On"
    IL_014a:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_014f:  ldarg.0
    IL_0150:  ldfld      class Game.ButtonWidget Game.SettingsCompatibilityScreen::m_useReducedZRangeButton
    IL_0155:  call       bool Game.SettingsManager::get_UseReducedZRange()
    IL_015a:  brtrue.s   IL_0163

    IL_015c:  ldstr      "Off"
    IL_0161:  br.s       IL_0168

    IL_0163:  ldstr      "On"
    IL_0168:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_016d:  ldarg.0
    IL_016e:  ldfld      class Game.ButtonWidget Game.SettingsCompatibilityScreen::m_resetDefaultsButton
    IL_0173:  call       bool Game.SettingsManager::get_InvisibleModelsWorkaround()
    IL_0178:  brtrue.s   IL_0190

    IL_017a:  call       bool Game.SettingsManager::get_MultithreadedTerrainUpdate()
    IL_017f:  brfalse.s  IL_0190

    IL_0181:  call       bool Game.SettingsManager::get_EnableAndroidAudioTrackCaching()
    IL_0186:  ldloc.0
    IL_0187:  bne.un.s   IL_0190

    IL_0189:  call       bool Game.SettingsManager::get_UseReducedZRange()
    IL_018e:  br.s       IL_0191

    IL_0190:  ldc.i4.1
    IL_0191:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_0196:  ldarg.0
    IL_0197:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_019c:  callvirt   instance bool Game.WidgetInput::get_Back()
    IL_01a1:  brtrue.s   IL_01c8

    IL_01a3:  ldarg.0
    IL_01a4:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_01a9:  callvirt   instance bool Game.WidgetInput::get_Cancel()
    IL_01ae:  brtrue.s   IL_01c8

    IL_01b0:  ldarg.0
    IL_01b1:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_01b6:  ldstr      "TopBar.Back"
    IL_01bb:  ldc.i4.1
    IL_01bc:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_01c1:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_01c6:  brfalse.s  IL_01d8

    IL_01c8:  call       class Game.Screen Game.ScreensManager::get_PreviousScreen()
    IL_01cd:  ldc.i4.0
    IL_01ce:  newarr     [System.Runtime]System.Object
    IL_01d3:  call       void Game.ScreensManager::SwitchScreen(class Game.Screen,
                                                                object[])
    IL_01d8:  ret
  } // end of method SettingsCompatibilityScreen::Update

} // end of class Game.SettingsCompatibilityScreen