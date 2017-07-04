.class public auto ansi beforefieldinit Game.ContentScreen
       extends Game.Screen
{
  .field private class Game.ButtonWidget m_externalContentButton
  .field private class Game.ButtonWidget m_communityContentButton
  .field private class Game.ButtonWidget m_linkButton
  .field private class Game.ButtonWidget m_manageButton
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       118 (0x76)
    .maxstack  4
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.Screen::.ctor()
    IL_0006:  ldstr      "Screens/ContentScreen"
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
    IL_0020:  ldstr      "External"
    IL_0025:  ldc.i4.1
    IL_0026:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_002b:  stfld      class Game.ButtonWidget Game.ContentScreen::m_externalContentButton
    IL_0030:  ldarg.0
    IL_0031:  ldarg.0
    IL_0032:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0037:  ldstr      "Community"
    IL_003c:  ldc.i4.1
    IL_003d:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0042:  stfld      class Game.ButtonWidget Game.ContentScreen::m_communityContentButton
    IL_0047:  ldarg.0
    IL_0048:  ldarg.0
    IL_0049:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_004e:  ldstr      "Link"
    IL_0053:  ldc.i4.1
    IL_0054:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0059:  stfld      class Game.ButtonWidget Game.ContentScreen::m_linkButton
    IL_005e:  ldarg.0
    IL_005f:  ldarg.0
    IL_0060:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0065:  ldstr      "Manage"
    IL_006a:  ldc.i4.1
    IL_006b:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0070:  stfld      class Game.ButtonWidget Game.ContentScreen::m_manageButton
    IL_0075:  ret
  } // end of method ContentScreen::.ctor

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       197 (0xc5)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ButtonWidget Game.ContentScreen::m_communityContentButton
    IL_0006:  call       valuetype Game.CommunityContentMode Game.SettingsManager::get_CommunityContentMode()
    IL_000b:  ldc.i4.0
    IL_000c:  cgt.un
    IL_000e:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_0013:  ldarg.0
    IL_0014:  ldfld      class Game.ButtonWidget Game.ContentScreen::m_externalContentButton
    IL_0019:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_001e:  brfalse.s  IL_0030

    IL_0020:  ldstr      "ExternalContent"
    IL_0025:  ldc.i4.0
    IL_0026:  newarr     [System.Runtime]System.Object
    IL_002b:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                object[])
    IL_0030:  ldarg.0
    IL_0031:  ldfld      class Game.ButtonWidget Game.ContentScreen::m_communityContentButton
    IL_0036:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_003b:  brfalse.s  IL_004d

    IL_003d:  ldstr      "CommunityContent"
    IL_0042:  ldc.i4.0
    IL_0043:  newarr     [System.Runtime]System.Object
    IL_0048:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                object[])
    IL_004d:  ldarg.0
    IL_004e:  ldfld      class Game.ButtonWidget Game.ContentScreen::m_linkButton
    IL_0053:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0058:  brfalse.s  IL_0065

    IL_005a:  ldnull
    IL_005b:  newobj     instance void Game.DownloadContentFromLinkDialog::.ctor()
    IL_0060:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_0065:  ldarg.0
    IL_0066:  ldfld      class Game.ButtonWidget Game.ContentScreen::m_manageButton
    IL_006b:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0070:  brfalse.s  IL_0082

    IL_0072:  ldstr      "ManageContent"
    IL_0077:  ldc.i4.0
    IL_0078:  newarr     [System.Runtime]System.Object
    IL_007d:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                object[])
    IL_0082:  ldarg.0
    IL_0083:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0088:  callvirt   instance bool Game.WidgetInput::get_Back()
    IL_008d:  brtrue.s   IL_00b4

    IL_008f:  ldarg.0
    IL_0090:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0095:  callvirt   instance bool Game.WidgetInput::get_Cancel()
    IL_009a:  brtrue.s   IL_00b4

    IL_009c:  ldarg.0
    IL_009d:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00a2:  ldstr      "TopBar.Back"
    IL_00a7:  ldc.i4.1
    IL_00a8:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_00ad:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_00b2:  brfalse.s  IL_00c4

    IL_00b4:  ldstr      "MainMenu"
    IL_00b9:  ldc.i4.0
    IL_00ba:  newarr     [System.Runtime]System.Object
    IL_00bf:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                object[])
    IL_00c4:  ret
  } // end of method ContentScreen::Update

} // end of class Game.ContentScreen