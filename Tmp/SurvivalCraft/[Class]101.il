.class public auto ansi beforefieldinit Game.MoreCommunityLinkDialog
       extends Game.Dialog
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.MoreCommunityLinkDialog/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`2<object,string> '<>9__7_0'
    .field public static class [System.Runtime]System.Action`1<object> '<>9__7_1'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.MoreCommunityLinkDialog/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.MoreCommunityLinkDialog/'<>c' Game.MoreCommunityLinkDialog/'<>c'::'<>9'
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

    .method assembly hidebysig instance string 
            '<Update>b__7_0'(object item) cil managed
    {
      // 代码大小       12 (0xc)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  castclass  Game.UserInfo
      IL_0006:  ldfld      string Game.UserInfo::DisplayName
      IL_000b:  ret
    } // end of method '<>c'::'<Update>b__7_0'

    .method assembly hidebysig instance void 
            '<Update>b__7_1'(object item) cil managed
    {
      // 代码大小       12 (0xc)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  castclass  Game.UserInfo
      IL_0006:  call       void Game.UserManager::set_ActiveUser(class Game.UserInfo)
      IL_000b:  ret
    } // end of method '<>c'::'<Update>b__7_1'

  } // end of class '<>c'

  .field private class Game.LabelWidget m_userLabel
  .field private class Game.ButtonWidget m_changeUserButton
  .field private class Game.LabelWidget m_userIdLabel
  .field private class Game.ButtonWidget m_copyUserIdButton
  .field private class Game.ButtonWidget m_publishButton
  .field private class Game.ButtonWidget m_closeButton
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       205 (0xcd)
    .maxstack  4
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.Dialog::.ctor()
    IL_0006:  ldstr      "Dialogs/MoreCommunityLinkDialog"
    IL_000b:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_0010:  stloc.0
    IL_0011:  ldarg.0
    IL_0012:  ldarg.0
    IL_0013:  ldloc.0
    IL_0014:  ldnull
    IL_0015:  call       class Game.Widget Game.WidgetsManager::LoadWidget(object,
                                                                           class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                           class Game.ContainerWidget)
    IL_001a:  castclass  Game.ContainerWidget
    IL_001f:  call       instance void Game.Dialog::set_DialogWidget(class Game.ContainerWidget)
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_002b:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0030:  ldstr      "MoreCommunityLinkDialog.User"
    IL_0035:  ldc.i4.1
    IL_0036:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_003b:  stfld      class Game.LabelWidget Game.MoreCommunityLinkDialog::m_userLabel
    IL_0040:  ldarg.0
    IL_0041:  ldarg.0
    IL_0042:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_0047:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_004c:  ldstr      "MoreCommunityLinkDialog.ChangeUser"
    IL_0051:  ldc.i4.1
    IL_0052:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_0057:  stfld      class Game.ButtonWidget Game.MoreCommunityLinkDialog::m_changeUserButton
    IL_005c:  ldarg.0
    IL_005d:  ldarg.0
    IL_005e:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_0063:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0068:  ldstr      "MoreCommunityLinkDialog.UserId"
    IL_006d:  ldc.i4.1
    IL_006e:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_0073:  stfld      class Game.LabelWidget Game.MoreCommunityLinkDialog::m_userIdLabel
    IL_0078:  ldarg.0
    IL_0079:  ldarg.0
    IL_007a:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_007f:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0084:  ldstr      "MoreCommunityLinkDialog.CopyUserId"
    IL_0089:  ldc.i4.1
    IL_008a:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_008f:  stfld      class Game.ButtonWidget Game.MoreCommunityLinkDialog::m_copyUserIdButton
    IL_0094:  ldarg.0
    IL_0095:  ldarg.0
    IL_0096:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_009b:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00a0:  ldstr      "MoreCommunityLinkDialog.Publish"
    IL_00a5:  ldc.i4.1
    IL_00a6:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_00ab:  stfld      class Game.ButtonWidget Game.MoreCommunityLinkDialog::m_publishButton
    IL_00b0:  ldarg.0
    IL_00b1:  ldarg.0
    IL_00b2:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_00b7:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00bc:  ldstr      "MoreCommunityLinkDialog.Close"
    IL_00c1:  ldc.i4.1
    IL_00c2:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_00c7:  stfld      class Game.ButtonWidget Game.MoreCommunityLinkDialog::m_closeButton
    IL_00cc:  ret
  } // end of method MoreCommunityLinkDialog::.ctor

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       393 (0x189)
    .maxstack  6
    .locals init (string V_0,
             string V_1)
    IL_0000:  call       class Game.UserInfo Game.UserManager::get_ActiveUser()
    IL_0005:  brtrue.s   IL_000e

    IL_0007:  ldstr      "No User"
    IL_000c:  br.s       IL_0018

    IL_000e:  call       class Game.UserInfo Game.UserManager::get_ActiveUser()
    IL_0013:  ldfld      string Game.UserInfo::DisplayName
    IL_0018:  stloc.0
    IL_0019:  ldloc.0
    IL_001a:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_001f:  ldc.i4.s   15
    IL_0021:  ble.s      IL_0037

    IL_0023:  ldloc.0
    IL_0024:  ldc.i4.0
    IL_0025:  ldc.i4.s   15
    IL_0027:  callvirt   instance string [System.Runtime]System.String::Substring(int32,
                                                                                  int32)
    IL_002c:  ldstr      "..."
    IL_0031:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_0036:  stloc.0
    IL_0037:  ldarg.0
    IL_0038:  ldfld      class Game.LabelWidget Game.MoreCommunityLinkDialog::m_userLabel
    IL_003d:  ldloc.0
    IL_003e:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0043:  call       class Game.UserInfo Game.UserManager::get_ActiveUser()
    IL_0048:  brtrue.s   IL_0051

    IL_004a:  ldstr      "No User"
    IL_004f:  br.s       IL_005b

    IL_0051:  call       class Game.UserInfo Game.UserManager::get_ActiveUser()
    IL_0056:  ldfld      string Game.UserInfo::UniqueId
    IL_005b:  stloc.1
    IL_005c:  ldloc.1
    IL_005d:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_0062:  ldc.i4.s   15
    IL_0064:  ble.s      IL_007a

    IL_0066:  ldloc.1
    IL_0067:  ldc.i4.0
    IL_0068:  ldc.i4.s   15
    IL_006a:  callvirt   instance string [System.Runtime]System.String::Substring(int32,
                                                                                  int32)
    IL_006f:  ldstr      "..."
    IL_0074:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_0079:  stloc.1
    IL_007a:  ldarg.0
    IL_007b:  ldfld      class Game.LabelWidget Game.MoreCommunityLinkDialog::m_userIdLabel
    IL_0080:  ldloc.1
    IL_0081:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0086:  ldarg.0
    IL_0087:  ldfld      class Game.ButtonWidget Game.MoreCommunityLinkDialog::m_publishButton
    IL_008c:  call       class Game.UserInfo Game.UserManager::get_ActiveUser()
    IL_0091:  ldnull
    IL_0092:  cgt.un
    IL_0094:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_0099:  ldarg.0
    IL_009a:  ldfld      class Game.ButtonWidget Game.MoreCommunityLinkDialog::m_copyUserIdButton
    IL_009f:  call       class Game.UserInfo Game.UserManager::get_ActiveUser()
    IL_00a4:  ldnull
    IL_00a5:  cgt.un
    IL_00a7:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_00ac:  ldarg.0
    IL_00ad:  ldfld      class Game.ButtonWidget Game.MoreCommunityLinkDialog::m_changeUserButton
    IL_00b2:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_00b7:  brfalse.s  IL_0110

    IL_00b9:  ldstr      "Select Active User"
    IL_00be:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.UserInfo> Game.UserManager::GetUsers()
    IL_00c3:  ldc.r4     60.
    IL_00c8:  ldsfld     class [System.Runtime]System.Func`2<object,string> Game.MoreCommunityLinkDialog/'<>c'::'<>9__7_0'
    IL_00cd:  dup
    IL_00ce:  brtrue.s   IL_00e7

    IL_00d0:  pop
    IL_00d1:  ldsfld     class Game.MoreCommunityLinkDialog/'<>c' Game.MoreCommunityLinkDialog/'<>c'::'<>9'
    IL_00d6:  ldftn      instance string Game.MoreCommunityLinkDialog/'<>c'::'<Update>b__7_0'(object)
    IL_00dc:  newobj     instance void class [System.Runtime]System.Func`2<object,string>::.ctor(object,
                                                                                                 native int)
    IL_00e1:  dup
    IL_00e2:  stsfld     class [System.Runtime]System.Func`2<object,string> Game.MoreCommunityLinkDialog/'<>c'::'<>9__7_0'
    IL_00e7:  ldsfld     class [System.Runtime]System.Action`1<object> Game.MoreCommunityLinkDialog/'<>c'::'<>9__7_1'
    IL_00ec:  dup
    IL_00ed:  brtrue.s   IL_0106

    IL_00ef:  pop
    IL_00f0:  ldsfld     class Game.MoreCommunityLinkDialog/'<>c' Game.MoreCommunityLinkDialog/'<>c'::'<>9'
    IL_00f5:  ldftn      instance void Game.MoreCommunityLinkDialog/'<>c'::'<Update>b__7_1'(object)
    IL_00fb:  newobj     instance void class [System.Runtime]System.Action`1<object>::.ctor(object,
                                                                                            native int)
    IL_0100:  dup
    IL_0101:  stsfld     class [System.Runtime]System.Action`1<object> Game.MoreCommunityLinkDialog/'<>c'::'<>9__7_1'
    IL_0106:  newobj     instance void Game.ListSelectionDialog::.ctor(string,
                                                                       class [System.Runtime]System.Collections.IEnumerable,
                                                                       float32,
                                                                       class [System.Runtime]System.Func`2<object,string>,
                                                                       class [System.Runtime]System.Action`1<object>)
    IL_010b:  call       void Game.DialogsManager::ShowDialog(class Game.Dialog)
    IL_0110:  ldarg.0
    IL_0111:  ldfld      class Game.ButtonWidget Game.MoreCommunityLinkDialog::m_copyUserIdButton
    IL_0116:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_011b:  brfalse.s  IL_0133

    IL_011d:  call       class Game.UserInfo Game.UserManager::get_ActiveUser()
    IL_0122:  brfalse.s  IL_0133

    IL_0124:  call       class Game.UserInfo Game.UserManager::get_ActiveUser()
    IL_0129:  ldfld      string Game.UserInfo::UniqueId
    IL_012e:  call       void Game.ClipboardManager::set_ClipboardString(string)
    IL_0133:  ldarg.0
    IL_0134:  ldfld      class Game.ButtonWidget Game.MoreCommunityLinkDialog::m_publishButton
    IL_0139:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_013e:  brfalse.s  IL_015d

    IL_0140:  call       class Game.UserInfo Game.UserManager::get_ActiveUser()
    IL_0145:  brfalse.s  IL_015d

    IL_0147:  call       class Game.UserInfo Game.UserManager::get_ActiveUser()
    IL_014c:  ldfld      string Game.UserInfo::UniqueId
    IL_0151:  ldnull
    IL_0152:  ldnull
    IL_0153:  newobj     instance void Game.PublishCommunityLinkDialog::.ctor(string,
                                                                              string,
                                                                              string)
    IL_0158:  call       void Game.DialogsManager::ShowDialog(class Game.Dialog)
    IL_015d:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_0162:  ldfld      bool Game.InputState::Back
    IL_0167:  brtrue.s   IL_0182

    IL_0169:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_016e:  ldfld      bool Game.InputState::B
    IL_0173:  brtrue.s   IL_0182

    IL_0175:  ldarg.0
    IL_0176:  ldfld      class Game.ButtonWidget Game.MoreCommunityLinkDialog::m_closeButton
    IL_017b:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0180:  brfalse.s  IL_0188

    IL_0182:  ldarg.0
    IL_0183:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
    IL_0188:  ret
  } // end of method MoreCommunityLinkDialog::Update

} // end of class Game.MoreCommunityLinkDialog