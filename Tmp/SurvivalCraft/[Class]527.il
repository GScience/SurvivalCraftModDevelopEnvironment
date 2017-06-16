.class public auto ansi beforefieldinit Game.SettingsUiScreen
       extends Game.Screen
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.SettingsUiScreen/'<>c' '<>9'
    .field public static class [System.Runtime]System.Action '<>9__7_0'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.SettingsUiScreen/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.SettingsUiScreen/'<>c' Game.SettingsUiScreen/'<>c'::'<>9'
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
            '<Update>b__7_0'() cil managed
    {
      // 代码大小       17 (0x11)
      .maxstack  8
      IL_0000:  call       class Game.Screen Game.ScreensManager::get_PreviousScreen()
      IL_0005:  ldc.i4.0
      IL_0006:  newarr     [System.Runtime]System.Object
      IL_000b:  call       void Game.ScreensManager::SwitchScreen(class Game.Screen,
                                                                  object[])
      IL_0010:  ret
    } // end of method '<>c'::'<Update>b__7_0'

  } // end of class '<>c'

  .field private class Game.ButtonWidget m_uiSizeButton
  .field private class Game.ButtonWidget m_hideMoveLookPadsButton
  .field private class Game.ButtonWidget m_showGuiInScreenshotsButton
  .field private class Game.ButtonWidget m_showLogoInScreenshotsButton
  .field private class Game.ButtonWidget m_screenshotSizeButton
  .field private class Game.ButtonWidget m_communityContentModeButton
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       199 (0xc7)
    .maxstack  4
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.Screen::.ctor()
    IL_0006:  ldstr      "Screens/SettingsUiScreen"
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
    IL_002a:  ldstr      "UiSizeButton"
    IL_002f:  ldc.i4.1
    IL_0030:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_0035:  stfld      class Game.ButtonWidget Game.SettingsUiScreen::m_uiSizeButton
    IL_003a:  ldarg.0
    IL_003b:  ldarg.0
    IL_003c:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0041:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0046:  ldstr      "HideMoveLookPads"
    IL_004b:  ldc.i4.1
    IL_004c:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_0051:  stfld      class Game.ButtonWidget Game.SettingsUiScreen::m_hideMoveLookPadsButton
    IL_0056:  ldarg.0
    IL_0057:  ldarg.0
    IL_0058:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_005d:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0062:  ldstr      "ShowGuiInScreenshotsButton"
    IL_0067:  ldc.i4.1
    IL_0068:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_006d:  stfld      class Game.ButtonWidget Game.SettingsUiScreen::m_showGuiInScreenshotsButton
    IL_0072:  ldarg.0
    IL_0073:  ldarg.0
    IL_0074:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0079:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_007e:  ldstr      "ShowLogoInScreenshotsButton"
    IL_0083:  ldc.i4.1
    IL_0084:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_0089:  stfld      class Game.ButtonWidget Game.SettingsUiScreen::m_showLogoInScreenshotsButton
    IL_008e:  ldarg.0
    IL_008f:  ldarg.0
    IL_0090:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0095:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_009a:  ldstr      "ScreenshotSizeButton"
    IL_009f:  ldc.i4.1
    IL_00a0:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_00a5:  stfld      class Game.ButtonWidget Game.SettingsUiScreen::m_screenshotSizeButton
    IL_00aa:  ldarg.0
    IL_00ab:  ldarg.0
    IL_00ac:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_00b1:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00b6:  ldstr      "CommunityContentModeButton"
    IL_00bb:  ldc.i4.1
    IL_00bc:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_00c1:  stfld      class Game.ButtonWidget Game.SettingsUiScreen::m_communityContentModeButton
    IL_00c6:  ret
  } // end of method SettingsUiScreen::.ctor

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       474 (0x1da)
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
    IL_002f:  ldfld      class Game.ButtonWidget Game.SettingsUiScreen::m_hideMoveLookPadsButton
    IL_0034:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0039:  brfalse.s  IL_0048

    IL_003b:  call       bool Game.SettingsManager::get_HideMoveLookPads()
    IL_0040:  ldc.i4.0
    IL_0041:  ceq
    IL_0043:  call       void Game.SettingsManager::set_HideMoveLookPads(bool)
    IL_0048:  ldarg.0
    IL_0049:  ldfld      class Game.ButtonWidget Game.SettingsUiScreen::m_showGuiInScreenshotsButton
    IL_004e:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0053:  brfalse.s  IL_0062

    IL_0055:  call       bool Game.SettingsManager::get_ShowGuiInScreenshots()
    IL_005a:  ldc.i4.0
    IL_005b:  ceq
    IL_005d:  call       void Game.SettingsManager::set_ShowGuiInScreenshots(bool)
    IL_0062:  ldarg.0
    IL_0063:  ldfld      class Game.ButtonWidget Game.SettingsUiScreen::m_showLogoInScreenshotsButton
    IL_0068:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_006d:  brfalse.s  IL_007c

    IL_006f:  call       bool Game.SettingsManager::get_ShowLogoInScreenshots()
    IL_0074:  ldc.i4.0
    IL_0075:  ceq
    IL_0077:  call       void Game.SettingsManager::set_ShowLogoInScreenshots(bool)
    IL_007c:  ldarg.0
    IL_007d:  ldfld      class Game.ButtonWidget Game.SettingsUiScreen::m_screenshotSizeButton
    IL_0082:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0087:  brfalse.s  IL_00aa

    IL_0089:  call       valuetype Game.ScreenshotSize Game.SettingsManager::get_ScreenshotSize()
    IL_008e:  ldc.i4.1
    IL_008f:  add
    IL_0090:  ldtoken    Game.ScreenshotSize
    IL_0095:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_009a:  call       class [System.Runtime]System.Collections.Generic.IList`1<int32> Game.EnumUtils::GetEnumValues(class [System.Runtime]System.Type)
    IL_009f:  callvirt   instance int32 class [System.Runtime]System.Collections.Generic.ICollection`1<int32>::get_Count()
    IL_00a4:  rem
    IL_00a5:  call       void Game.SettingsManager::set_ScreenshotSize(valuetype Game.ScreenshotSize)
    IL_00aa:  ldarg.0
    IL_00ab:  ldfld      class Game.ButtonWidget Game.SettingsUiScreen::m_communityContentModeButton
    IL_00b0:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_00b5:  brfalse.s  IL_00d8

    IL_00b7:  call       valuetype Game.CommunityContentMode Game.SettingsManager::get_CommunityContentMode()
    IL_00bc:  ldc.i4.1
    IL_00bd:  add
    IL_00be:  ldtoken    Game.CommunityContentMode
    IL_00c3:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_00c8:  call       class [System.Runtime]System.Collections.Generic.IList`1<int32> Game.EnumUtils::GetEnumValues(class [System.Runtime]System.Type)
    IL_00cd:  callvirt   instance int32 class [System.Runtime]System.Collections.Generic.ICollection`1<int32>::get_Count()
    IL_00d2:  rem
    IL_00d3:  call       void Game.SettingsManager::set_CommunityContentMode(valuetype Game.CommunityContentMode)
    IL_00d8:  ldarg.0
    IL_00d9:  ldfld      class Game.ButtonWidget Game.SettingsUiScreen::m_uiSizeButton
    IL_00de:  call       valuetype Game.GuiSize Game.SettingsManager::get_GuiSize()
    IL_00e3:  stloc.0
    IL_00e4:  ldloca.s   V_0
    IL_00e6:  constrained. Game.GuiSize
    IL_00ec:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_00f1:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_00f6:  ldarg.0
    IL_00f7:  ldfld      class Game.ButtonWidget Game.SettingsUiScreen::m_hideMoveLookPadsButton
    IL_00fc:  call       bool Game.SettingsManager::get_HideMoveLookPads()
    IL_0101:  brtrue.s   IL_010a

    IL_0103:  ldstr      "No"
    IL_0108:  br.s       IL_010f

    IL_010a:  ldstr      "Yes"
    IL_010f:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_0114:  ldarg.0
    IL_0115:  ldfld      class Game.ButtonWidget Game.SettingsUiScreen::m_showGuiInScreenshotsButton
    IL_011a:  call       bool Game.SettingsManager::get_ShowGuiInScreenshots()
    IL_011f:  brtrue.s   IL_0128

    IL_0121:  ldstr      "No"
    IL_0126:  br.s       IL_012d

    IL_0128:  ldstr      "Yes"
    IL_012d:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_0132:  ldarg.0
    IL_0133:  ldfld      class Game.ButtonWidget Game.SettingsUiScreen::m_showLogoInScreenshotsButton
    IL_0138:  call       bool Game.SettingsManager::get_ShowLogoInScreenshots()
    IL_013d:  brtrue.s   IL_0146

    IL_013f:  ldstr      "No"
    IL_0144:  br.s       IL_014b

    IL_0146:  ldstr      "Yes"
    IL_014b:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_0150:  ldarg.0
    IL_0151:  ldfld      class Game.ButtonWidget Game.SettingsUiScreen::m_screenshotSizeButton
    IL_0156:  call       valuetype Game.ScreenshotSize Game.SettingsManager::get_ScreenshotSize()
    IL_015b:  stloc.1
    IL_015c:  ldloca.s   V_1
    IL_015e:  constrained. Game.ScreenshotSize
    IL_0164:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_0169:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_016e:  ldarg.0
    IL_016f:  ldfld      class Game.ButtonWidget Game.SettingsUiScreen::m_communityContentModeButton
    IL_0174:  call       valuetype Game.CommunityContentMode Game.SettingsManager::get_CommunityContentMode()
    IL_0179:  stloc.2
    IL_017a:  ldloca.s   V_2
    IL_017c:  constrained. Game.CommunityContentMode
    IL_0182:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_0187:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_018c:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_0191:  ldfld      bool Game.InputState::Back
    IL_0196:  brtrue.s   IL_01b5

    IL_0198:  ldarg.0
    IL_0199:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_019e:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_01a3:  ldstr      "TopBar.Back"
    IL_01a8:  ldc.i4.1
    IL_01a9:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_01ae:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_01b3:  brfalse.s  IL_01d9

    IL_01b5:  ldsfld     class [System.Runtime]System.Action Game.SettingsUiScreen/'<>c'::'<>9__7_0'
    IL_01ba:  dup
    IL_01bb:  brtrue.s   IL_01d4

    IL_01bd:  pop
    IL_01be:  ldsfld     class Game.SettingsUiScreen/'<>c' Game.SettingsUiScreen/'<>c'::'<>9'
    IL_01c3:  ldftn      instance void Game.SettingsUiScreen/'<>c'::'<Update>b__7_0'()
    IL_01c9:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_01ce:  dup
    IL_01cf:  stsfld     class [System.Runtime]System.Action Game.SettingsUiScreen/'<>c'::'<>9__7_0'
    IL_01d4:  call       void Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
    IL_01d9:  ret
  } // end of method SettingsUiScreen::Update

} // end of class Game.SettingsUiScreen