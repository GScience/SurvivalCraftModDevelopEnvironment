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
    // 代码大小       164 (0xa4)
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
    IL_0014:  call       void Game.WidgetsManager::LoadWidgetContents(class Game.Widget,
                                                                      object,
                                                                      class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_0019:  ldarg.0
    IL_001a:  ldarg.0
    IL_001b:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0020:  ldstr      "MoreCommunityLinkDialog.User"
    IL_0025:  ldc.i4.1
    IL_0026:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_002b:  stfld      class Game.LabelWidget Game.MoreCommunityLinkDialog::m_userLabel
    IL_0030:  ldarg.0
    IL_0031:  ldarg.0
    IL_0032:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0037:  ldstr      "MoreCommunityLinkDialog.ChangeUser"
    IL_003c:  ldc.i4.1
    IL_003d:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0042:  stfld      class Game.ButtonWidget Game.MoreCommunityLinkDialog::m_changeUserButton
    IL_0047:  ldarg.0
    IL_0048:  ldarg.0
    IL_0049:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_004e:  ldstr      "MoreCommunityLinkDialog.UserId"
    IL_0053:  ldc.i4.1
    IL_0054:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_0059:  stfld      class Game.LabelWidget Game.MoreCommunityLinkDialog::m_userIdLabel
    IL_005e:  ldarg.0
    IL_005f:  ldarg.0
    IL_0060:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0065:  ldstr      "MoreCommunityLinkDialog.CopyUserId"
    IL_006a:  ldc.i4.1
    IL_006b:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0070:  stfld      class Game.ButtonWidget Game.MoreCommunityLinkDialog::m_copyUserIdButton
    IL_0075:  ldarg.0
    IL_0076:  ldarg.0
    IL_0077:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_007c:  ldstr      "MoreCommunityLinkDialog.Publish"
    IL_0081:  ldc.i4.1
    IL_0082:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0087:  stfld      class Game.ButtonWidget Game.MoreCommunityLinkDialog::m_publishButton
    IL_008c:  ldarg.0
    IL_008d:  ldarg.0
    IL_008e:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0093:  ldstr      "MoreCommunityLinkDialog.Close"
    IL_0098:  ldc.i4.1
    IL_0099:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_009e:  stfld      class Game.ButtonWidget Game.MoreCommunityLinkDialog::m_closeButton
    IL_00a3:  ret
  } // end of method MoreCommunityLinkDialog::.ctor

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       394 (0x18a)
    .maxstack  7
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
    IL_00b7:  brfalse.s  IL_0116

    IL_00b9:  ldarg.0
    IL_00ba:  call       instance class Game.ContainerWidget Game.Widget::get_ParentWidget()
    IL_00bf:  ldstr      "Select Active User"
    IL_00c4:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.UserInfo> Game.UserManager::GetUsers()
    IL_00c9:  ldc.r4     60.
    IL_00ce:  ldsfld     class [System.Runtime]System.Func`2<object,string> Game.MoreCommunityLinkDialog/'<>c'::'<>9__7_0'
    IL_00d3:  dup
    IL_00d4:  brtrue.s   IL_00ed

    IL_00d6:  pop
    IL_00d7:  ldsfld     class Game.MoreCommunityLinkDialog/'<>c' Game.MoreCommunityLinkDialog/'<>c'::'<>9'
    IL_00dc:  ldftn      instance string Game.MoreCommunityLinkDialog/'<>c'::'<Update>b__7_0'(object)
    IL_00e2:  newobj     instance void class [System.Runtime]System.Func`2<object,string>::.ctor(object,
                                                                                                 native int)
    IL_00e7:  dup
    IL_00e8:  stsfld     class [System.Runtime]System.Func`2<object,string> Game.MoreCommunityLinkDialog/'<>c'::'<>9__7_0'
    IL_00ed:  ldsfld     class [System.Runtime]System.Action`1<object> Game.MoreCommunityLinkDialog/'<>c'::'<>9__7_1'
    IL_00f2:  dup
    IL_00f3:  brtrue.s   IL_010c

    IL_00f5:  pop
    IL_00f6:  ldsfld     class Game.MoreCommunityLinkDialog/'<>c' Game.MoreCommunityLinkDialog/'<>c'::'<>9'
    IL_00fb:  ldftn      instance void Game.MoreCommunityLinkDialog/'<>c'::'<Update>b__7_1'(object)
    IL_0101:  newobj     instance void class [System.Runtime]System.Action`1<object>::.ctor(object,
                                                                                            native int)
    IL_0106:  dup
    IL_0107:  stsfld     class [System.Runtime]System.Action`1<object> Game.MoreCommunityLinkDialog/'<>c'::'<>9__7_1'
    IL_010c:  newobj     instance void Game.ListSelectionDialog::.ctor(string,
                                                                       class [System.Runtime]System.Collections.IEnumerable,
                                                                       float32,
                                                                       class [System.Runtime]System.Func`2<object,string>,
                                                                       class [System.Runtime]System.Action`1<object>)
    IL_0111:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_0116:  ldarg.0
    IL_0117:  ldfld      class Game.ButtonWidget Game.MoreCommunityLinkDialog::m_copyUserIdButton
    IL_011c:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0121:  brfalse.s  IL_0139

    IL_0123:  call       class Game.UserInfo Game.UserManager::get_ActiveUser()
    IL_0128:  brfalse.s  IL_0139

    IL_012a:  call       class Game.UserInfo Game.UserManager::get_ActiveUser()
    IL_012f:  ldfld      string Game.UserInfo::UniqueId
    IL_0134:  call       void Game.ClipboardManager::set_ClipboardString(string)
    IL_0139:  ldarg.0
    IL_013a:  ldfld      class Game.ButtonWidget Game.MoreCommunityLinkDialog::m_publishButton
    IL_013f:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0144:  brfalse.s  IL_0169

    IL_0146:  call       class Game.UserInfo Game.UserManager::get_ActiveUser()
    IL_014b:  brfalse.s  IL_0169

    IL_014d:  ldarg.0
    IL_014e:  call       instance class Game.ContainerWidget Game.Widget::get_ParentWidget()
    IL_0153:  call       class Game.UserInfo Game.UserManager::get_ActiveUser()
    IL_0158:  ldfld      string Game.UserInfo::UniqueId
    IL_015d:  ldnull
    IL_015e:  ldnull
    IL_015f:  newobj     instance void Game.PublishCommunityLinkDialog::.ctor(string,
                                                                              string,
                                                                              string)
    IL_0164:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_0169:  ldarg.0
    IL_016a:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_016f:  callvirt   instance bool Game.WidgetInput::get_Cancel()
    IL_0174:  brtrue.s   IL_0183

    IL_0176:  ldarg.0
    IL_0177:  ldfld      class Game.ButtonWidget Game.MoreCommunityLinkDialog::m_closeButton
    IL_017c:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0181:  brfalse.s  IL_0189

    IL_0183:  ldarg.0
    IL_0184:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
    IL_0189:  ret
  } // end of method MoreCommunityLinkDialog::Update

} // end of class Game.MoreCommunityLinkDialog