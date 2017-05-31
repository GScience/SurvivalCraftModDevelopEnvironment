.class public auto ansi beforefieldinit Game.ContentScreen
       extends Game.Screen
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.ContentScreen/'<>c' '<>9'
    .field public static class [System.Runtime]System.Action '<>9__5_0'
    .field public static class [System.Runtime]System.Action '<>9__5_1'
    .field public static class [System.Runtime]System.Action '<>9__5_2'
    .field public static class [System.Runtime]System.Action '<>9__5_3'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.ContentScreen/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.ContentScreen/'<>c' Game.ContentScreen/'<>c'::'<>9'
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
      IL_0000:  ldstr      "ExternalContent"
      IL_0005:  ldc.i4.0
      IL_0006:  newarr     [System.Runtime]System.Object
      IL_000b:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                  object[])
      IL_0010:  ret
    } // end of method '<>c'::'<Update>b__5_0'

    .method assembly hidebysig instance void 
            '<Update>b__5_1'() cil managed
    {
      // 代码大小       17 (0x11)
      .maxstack  8
      IL_0000:  ldstr      "CommunityContent"
      IL_0005:  ldc.i4.0
      IL_0006:  newarr     [System.Runtime]System.Object
      IL_000b:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                  object[])
      IL_0010:  ret
    } // end of method '<>c'::'<Update>b__5_1'

    .method assembly hidebysig instance void 
            '<Update>b__5_2'() cil managed
    {
      // 代码大小       17 (0x11)
      .maxstack  8
      IL_0000:  ldstr      "ManageContent"
      IL_0005:  ldc.i4.0
      IL_0006:  newarr     [System.Runtime]System.Object
      IL_000b:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                  object[])
      IL_0010:  ret
    } // end of method '<>c'::'<Update>b__5_2'

    .method assembly hidebysig instance void 
            '<Update>b__5_3'() cil managed
    {
      // 代码大小       17 (0x11)
      .maxstack  8
      IL_0000:  ldstr      "MainMenu"
      IL_0005:  ldc.i4.0
      IL_0006:  newarr     [System.Runtime]System.Object
      IL_000b:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                  object[])
      IL_0010:  ret
    } // end of method '<>c'::'<Update>b__5_3'

  } // end of class '<>c'

  .field private class Game.ButtonWidget m_externalContentButton
  .field private class Game.ButtonWidget m_communityContentButton
  .field private class Game.ButtonWidget m_linkButton
  .field private class Game.ButtonWidget m_manageButton
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       143 (0x8f)
    .maxstack  4
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.Screen::.ctor()
    IL_0006:  ldstr      "Screens/ContentScreen"
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
    IL_002a:  ldstr      "External"
    IL_002f:  ldc.i4.1
    IL_0030:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_0035:  stfld      class Game.ButtonWidget Game.ContentScreen::m_externalContentButton
    IL_003a:  ldarg.0
    IL_003b:  ldarg.0
    IL_003c:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0041:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0046:  ldstr      "Community"
    IL_004b:  ldc.i4.1
    IL_004c:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_0051:  stfld      class Game.ButtonWidget Game.ContentScreen::m_communityContentButton
    IL_0056:  ldarg.0
    IL_0057:  ldarg.0
    IL_0058:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_005d:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0062:  ldstr      "Link"
    IL_0067:  ldc.i4.1
    IL_0068:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_006d:  stfld      class Game.ButtonWidget Game.ContentScreen::m_linkButton
    IL_0072:  ldarg.0
    IL_0073:  ldarg.0
    IL_0074:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0079:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_007e:  ldstr      "Manage"
    IL_0083:  ldc.i4.1
    IL_0084:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_0089:  stfld      class Game.ButtonWidget Game.ContentScreen::m_manageButton
    IL_008e:  ret
  } // end of method ContentScreen::.ctor

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       267 (0x10b)
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
    IL_001e:  brfalse.s  IL_0044

    IL_0020:  ldsfld     class [System.Runtime]System.Action Game.ContentScreen/'<>c'::'<>9__5_0'
    IL_0025:  dup
    IL_0026:  brtrue.s   IL_003f

    IL_0028:  pop
    IL_0029:  ldsfld     class Game.ContentScreen/'<>c' Game.ContentScreen/'<>c'::'<>9'
    IL_002e:  ldftn      instance void Game.ContentScreen/'<>c'::'<Update>b__5_0'()
    IL_0034:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0039:  dup
    IL_003a:  stsfld     class [System.Runtime]System.Action Game.ContentScreen/'<>c'::'<>9__5_0'
    IL_003f:  call       void Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
    IL_0044:  ldarg.0
    IL_0045:  ldfld      class Game.ButtonWidget Game.ContentScreen::m_communityContentButton
    IL_004a:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_004f:  brfalse.s  IL_0075

    IL_0051:  ldsfld     class [System.Runtime]System.Action Game.ContentScreen/'<>c'::'<>9__5_1'
    IL_0056:  dup
    IL_0057:  brtrue.s   IL_0070

    IL_0059:  pop
    IL_005a:  ldsfld     class Game.ContentScreen/'<>c' Game.ContentScreen/'<>c'::'<>9'
    IL_005f:  ldftn      instance void Game.ContentScreen/'<>c'::'<Update>b__5_1'()
    IL_0065:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_006a:  dup
    IL_006b:  stsfld     class [System.Runtime]System.Action Game.ContentScreen/'<>c'::'<>9__5_1'
    IL_0070:  call       void Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
    IL_0075:  ldarg.0
    IL_0076:  ldfld      class Game.ButtonWidget Game.ContentScreen::m_linkButton
    IL_007b:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0080:  brfalse.s  IL_008c

    IL_0082:  newobj     instance void Game.DownloadContentFromLinkDialog::.ctor()
    IL_0087:  call       void Game.DialogsManager::ShowDialog(class Game.Dialog)
    IL_008c:  ldarg.0
    IL_008d:  ldfld      class Game.ButtonWidget Game.ContentScreen::m_manageButton
    IL_0092:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0097:  brfalse.s  IL_00bd

    IL_0099:  ldsfld     class [System.Runtime]System.Action Game.ContentScreen/'<>c'::'<>9__5_2'
    IL_009e:  dup
    IL_009f:  brtrue.s   IL_00b8

    IL_00a1:  pop
    IL_00a2:  ldsfld     class Game.ContentScreen/'<>c' Game.ContentScreen/'<>c'::'<>9'
    IL_00a7:  ldftn      instance void Game.ContentScreen/'<>c'::'<Update>b__5_2'()
    IL_00ad:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00b2:  dup
    IL_00b3:  stsfld     class [System.Runtime]System.Action Game.ContentScreen/'<>c'::'<>9__5_2'
    IL_00b8:  call       void Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
    IL_00bd:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_00c2:  ldfld      bool Game.InputState::Back
    IL_00c7:  brtrue.s   IL_00e6

    IL_00c9:  ldarg.0
    IL_00ca:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_00cf:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00d4:  ldstr      "TopBar.Back"
    IL_00d9:  ldc.i4.1
    IL_00da:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_00df:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_00e4:  brfalse.s  IL_010a

    IL_00e6:  ldsfld     class [System.Runtime]System.Action Game.ContentScreen/'<>c'::'<>9__5_3'
    IL_00eb:  dup
    IL_00ec:  brtrue.s   IL_0105

    IL_00ee:  pop
    IL_00ef:  ldsfld     class Game.ContentScreen/'<>c' Game.ContentScreen/'<>c'::'<>9'
    IL_00f4:  ldftn      instance void Game.ContentScreen/'<>c'::'<Update>b__5_3'()
    IL_00fa:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00ff:  dup
    IL_0100:  stsfld     class [System.Runtime]System.Action Game.ContentScreen/'<>c'::'<>9__5_3'
    IL_0105:  call       void Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
    IL_010a:  ret
  } // end of method ContentScreen::Update

} // end of class Game.ContentScreen