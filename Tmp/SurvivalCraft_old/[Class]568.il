.class public auto ansi beforefieldinit Game.SettingsUiScreen
       extends Game.Screen
{
  .field private class Game.ButtonWidget m_uiSizeButton
  .field private class Game.ButtonWidget m_upsideDownButton
  .field private class Game.ButtonWidget m_hideMoveLookPadsButton
  .field private class Game.ButtonWidget m_showGuiInScreenshotsButton
  .field private class Game.ButtonWidget m_showLogoInScreenshotsButton
  .field private class Game.ButtonWidget m_screenshotSizeButton
  .field private class Game.ButtonWidget m_communityContentModeButton
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       187 (0xbb)
    .maxstack  4
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.Screen::.ctor()
    IL_0006:  ldstr      "Screens/SettingsUiScreen"
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
    IL_0020:  ldstr      "UiSizeButton"
    IL_0025:  ldc.i4.1
    IL_0026:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_002b:  stfld      class Game.ButtonWidget Game.SettingsUiScreen::m_uiSizeButton
    IL_0030:  ldarg.0
    IL_0031:  ldarg.0
    IL_0032:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0037:  ldstr      "UpsideDownButton"
    IL_003c:  ldc.i4.1
    IL_003d:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0042:  stfld      class Game.ButtonWidget Game.SettingsUiScreen::m_upsideDownButton
    IL_0047:  ldarg.0
    IL_0048:  ldarg.0
    IL_0049:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_004e:  ldstr      "HideMoveLookPads"
    IL_0053:  ldc.i4.1
    IL_0054:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0059:  stfld      class Game.ButtonWidget Game.SettingsUiScreen::m_hideMoveLookPadsButton
    IL_005e:  ldarg.0
    IL_005f:  ldarg.0
    IL_0060:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0065:  ldstr      "ShowGuiInScreenshotsButton"
    IL_006a:  ldc.i4.1
    IL_006b:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0070:  stfld      class Game.ButtonWidget Game.SettingsUiScreen::m_showGuiInScreenshotsButton
    IL_0075:  ldarg.0
    IL_0076:  ldarg.0
    IL_0077:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_007c:  ldstr      "ShowLogoInScreenshotsButton"
    IL_0081:  ldc.i4.1
    IL_0082:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0087:  stfld      class Game.ButtonWidget Game.SettingsUiScreen::m_showLogoInScreenshotsButton
    IL_008c:  ldarg.0
    IL_008d:  ldarg.0
    IL_008e:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0093:  ldstr      "ScreenshotSizeButton"
    IL_0098:  ldc.i4.1
    IL_0099:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_009e:  stfld      class Game.ButtonWidget Game.SettingsUiScreen::m_screenshotSizeButton
    IL_00a3:  ldarg.0
    IL_00a4:  ldarg.0
    IL_00a5:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00aa:  ldstr      "CommunityContentModeButton"
    IL_00af:  ldc.i4.1
    IL_00b0:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_00b5:  stfld      class Game.ButtonWidget Game.SettingsUiScreen::m_communityContentModeButton
    IL_00ba:  ret
  } // end of method SettingsUiScreen::.ctor

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       519 (0x207)
    .maxstack  3
    .locals init (valuetype Game.GuiSize V_0,
             valuetype Game.ScreenshotSize V_1,
             valuetype Game.CommunityContentMode V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ButtonWidget Game.SettingsUiScreen::m_uiSizeButton
    IL_0006:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_000b:  brfalse.s  IL_002e

    IL_000d:  call       valuetype Game.GuiSize Game.SettingsManager::get_GuiSize()
    IL_0012:  ldc.i4.1
    IL_0013:  add
    IL_0014:  ldtoken    Game.GuiSize
    IL_0019:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_001e:  call       class [System.Runtime]System.Collections.Generic.IList`1<int32> Game.EnumUtils::GetEnumValues(class [System.Runtime]System.Type)
    IL_0023:  callvirt   instance int32 class [System.Runtime]System.Collections.Generic.ICollection`1<int32>::get_Count()
    IL_0028:  rem
    IL_0029:  call       void Game.SettingsManager::set_GuiSize(valuetype Game.GuiSize)
    IL_002e:  ldarg.0
    IL_002f:  ldfld      class Game.ButtonWidget Game.SettingsUiScreen::m_upsideDownButton
    IL_0034:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0039:  brfalse.s  IL_0048

    IL_003b:  call       bool Game.SettingsManager::get_UpsideDownLayout()
    IL_0040:  ldc.i4.0
    IL_0041:  ceq
    IL_0043:  call       void Game.SettingsManager::set_UpsideDownLayout(bool)
    IL_0048:  ldarg.0
    IL_0049:  ldfld      class Game.ButtonWidget Game.SettingsUiScreen::m_hideMoveLookPadsButton
    IL_004e:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0053:  brfalse.s  IL_0062

    IL_0055:  call       bool Game.SettingsManager::get_HideMoveLookPads()
    IL_005a:  ldc.i4.0
    IL_005b:  ceq
    IL_005d:  call       void Game.SettingsManager::set_HideMoveLookPads(bool)
    IL_0062:  ldarg.0
    IL_0063:  ldfld      class Game.ButtonWidget Game.SettingsUiScreen::m_showGuiInScreenshotsButton
    IL_0068:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_006d:  brfalse.s  IL_007c

    IL_006f:  call       bool Game.SettingsManager::get_ShowGuiInScreenshots()
    IL_0074:  ldc.i4.0
    IL_0075:  ceq
    IL_0077:  call       void Game.SettingsManager::set_ShowGuiInScreenshots(bool)
    IL_007c:  ldarg.0
    IL_007d:  ldfld      class Game.ButtonWidget Game.SettingsUiScreen::m_showLogoInScreenshotsButton
    IL_0082:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0087:  brfalse.s  IL_0096

    IL_0089:  call       bool Game.SettingsManager::get_ShowLogoInScreenshots()
    IL_008e:  ldc.i4.0
    IL_008f:  ceq
    IL_0091:  call       void Game.SettingsManager::set_ShowLogoInScreenshots(bool)
    IL_0096:  ldarg.0
    IL_0097:  ldfld      class Game.ButtonWidget Game.SettingsUiScreen::m_screenshotSizeButton
    IL_009c:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_00a1:  brfalse.s  IL_00c4

    IL_00a3:  call       valuetype Game.ScreenshotSize Game.SettingsManager::get_ScreenshotSize()
    IL_00a8:  ldc.i4.1
    IL_00a9:  add
    IL_00aa:  ldtoken    Game.ScreenshotSize
    IL_00af:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_00b4:  call       class [System.Runtime]System.Collections.Generic.IList`1<int32> Game.EnumUtils::GetEnumValues(class [System.Runtime]System.Type)
    IL_00b9:  callvirt   instance int32 class [System.Runtime]System.Collections.Generic.ICollection`1<int32>::get_Count()
    IL_00be:  rem
    IL_00bf:  call       void Game.SettingsManager::set_ScreenshotSize(valuetype Game.ScreenshotSize)
    IL_00c4:  ldarg.0
    IL_00c5:  ldfld      class Game.ButtonWidget Game.SettingsUiScreen::m_communityContentModeButton
    IL_00ca:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_00cf:  brfalse.s  IL_00f2

    IL_00d1:  call       valuetype Game.CommunityContentMode Game.SettingsManager::get_CommunityContentMode()
    IL_00d6:  ldc.i4.1
    IL_00d7:  add
    IL_00d8:  ldtoken    Game.CommunityContentMode
    IL_00dd:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_00e2:  call       class [System.Runtime]System.Collections.Generic.IList`1<int32> Game.EnumUtils::GetEnumValues(class [System.Runtime]System.Type)
    IL_00e7:  callvirt   instance int32 class [System.Runtime]System.Collections.Generic.ICollection`1<int32>::get_Count()
    IL_00ec:  rem
    IL_00ed:  call       void Game.SettingsManager::set_CommunityContentMode(valuetype Game.CommunityContentMode)
    IL_00f2:  ldarg.0
    IL_00f3:  ldfld      class Game.ButtonWidget Game.SettingsUiScreen::m_uiSizeButton
    IL_00f8:  call       valuetype Game.GuiSize Game.SettingsManager::get_GuiSize()
    IL_00fd:  stloc.0
    IL_00fe:  ldloca.s   V_0
    IL_0100:  constrained. Game.GuiSize
    IL_0106:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_010b:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_0110:  ldarg.0
    IL_0111:  ldfld      class Game.ButtonWidget Game.SettingsUiScreen::m_upsideDownButton
    IL_0116:  call       bool Game.SettingsManager::get_UpsideDownLayout()
    IL_011b:  brtrue.s   IL_0124

    IL_011d:  ldstr      "No"
    IL_0122:  br.s       IL_0129

    IL_0124:  ldstr      "Yes"
    IL_0129:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_012e:  ldarg.0
    IL_012f:  ldfld      class Game.ButtonWidget Game.SettingsUiScreen::m_hideMoveLookPadsButton
    IL_0134:  call       bool Game.SettingsManager::get_HideMoveLookPads()
    IL_0139:  brtrue.s   IL_0142

    IL_013b:  ldstr      "No"
    IL_0140:  br.s       IL_0147

    IL_0142:  ldstr      "Yes"
    IL_0147:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_014c:  ldarg.0
    IL_014d:  ldfld      class Game.ButtonWidget Game.SettingsUiScreen::m_showGuiInScreenshotsButton
    IL_0152:  call       bool Game.SettingsManager::get_ShowGuiInScreenshots()
    IL_0157:  brtrue.s   IL_0160

    IL_0159:  ldstr      "No"
    IL_015e:  br.s       IL_0165

    IL_0160:  ldstr      "Yes"
    IL_0165:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_016a:  ldarg.0
    IL_016b:  ldfld      class Game.ButtonWidget Game.SettingsUiScreen::m_showLogoInScreenshotsButton
    IL_0170:  call       bool Game.SettingsManager::get_ShowLogoInScreenshots()
    IL_0175:  brtrue.s   IL_017e

    IL_0177:  ldstr      "No"
    IL_017c:  br.s       IL_0183

    IL_017e:  ldstr      "Yes"
    IL_0183:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_0188:  ldarg.0
    IL_0189:  ldfld      class Game.ButtonWidget Game.SettingsUiScreen::m_screenshotSizeButton
    IL_018e:  call       valuetype Game.ScreenshotSize Game.SettingsManager::get_ScreenshotSize()
    IL_0193:  stloc.1
    IL_0194:  ldloca.s   V_1
    IL_0196:  constrained. Game.ScreenshotSize
    IL_019c:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_01a1:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_01a6:  ldarg.0
    IL_01a7:  ldfld      class Game.ButtonWidget Game.SettingsUiScreen::m_communityContentModeButton
    IL_01ac:  call       valuetype Game.CommunityContentMode Game.SettingsManager::get_CommunityContentMode()
    IL_01b1:  stloc.2
    IL_01b2:  ldloca.s   V_2
    IL_01b4:  constrained. Game.CommunityContentMode
    IL_01ba:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_01bf:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_01c4:  ldarg.0
    IL_01c5:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_01ca:  callvirt   instance bool Game.WidgetInput::get_Back()
    IL_01cf:  brtrue.s   IL_01f6

    IL_01d1:  ldarg.0
    IL_01d2:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_01d7:  callvirt   instance bool Game.WidgetInput::get_Cancel()
    IL_01dc:  brtrue.s   IL_01f6

    IL_01de:  ldarg.0
    IL_01df:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_01e4:  ldstr      "TopBar.Back"
    IL_01e9:  ldc.i4.1
    IL_01ea:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_01ef:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_01f4:  brfalse.s  IL_0206

    IL_01f6:  call       class Game.Screen Game.ScreensManager::get_PreviousScreen()
    IL_01fb:  ldc.i4.0
    IL_01fc:  newarr     [System.Runtime]System.Object
    IL_0201:  call       void Game.ScreensManager::SwitchScreen(class Game.Screen,
                                                                object[])
    IL_0206:  ret
  } // end of method SettingsUiScreen::Update

} // end of class Game.SettingsUiScreen