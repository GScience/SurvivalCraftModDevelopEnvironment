.class public auto ansi beforefieldinit Game.PublishCommunityLinkDialog
       extends Game.Dialog
{
  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass10_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class Game.CancellableBusyDialog busyDialog
    .field public class Game.PublishCommunityLinkDialog '<>4__this'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass10_0'::.ctor

    .method assembly hidebysig instance void 
            '<Update>b__1'() cil managed
    {
      // 代码大小       55 (0x37)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.CancellableBusyDialog Game.PublishCommunityLinkDialog/'<>c__DisplayClass10_0'::busyDialog
      IL_0006:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
      IL_000b:  ldstr      "Link Published Successfully"
      IL_0010:  ldstr      "It should start appearing in the listings after it"
      + " is moderated. Please keep the file accessible through this link, so th"
      + "at other community members can download it."
      IL_0015:  ldstr      "OK"
      IL_001a:  ldnull
      IL_001b:  ldarg.0
      IL_001c:  ldfld      class Game.PublishCommunityLinkDialog Game.PublishCommunityLinkDialog/'<>c__DisplayClass10_0'::'<>4__this'
      IL_0021:  ldftn      instance void Game.PublishCommunityLinkDialog::'<Update>b__10_2'(valuetype Game.MessageDialogButton)
      IL_0027:  newobj     instance void class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>::.ctor(object,
                                                                                                                          native int)
      IL_002c:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                   string,
                                                                   string,
                                                                   string,
                                                                   class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
      IL_0031:  call       void Game.DialogsManager::ShowDialog(class Game.Dialog)
      IL_0036:  ret
    } // end of method '<>c__DisplayClass10_0'::'<Update>b__1'

    .method assembly hidebysig instance void 
            '<Update>b__3'(class [System.Runtime]System.Exception 'error') cil managed
    {
      // 代码大小       40 (0x28)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.CancellableBusyDialog Game.PublishCommunityLinkDialog/'<>c__DisplayClass10_0'::busyDialog
      IL_0006:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
      IL_000b:  ldstr      "Error"
      IL_0010:  ldarg.1
      IL_0011:  callvirt   instance string [System.Runtime]System.Exception::get_Message()
      IL_0016:  ldstr      "OK"
      IL_001b:  ldnull
      IL_001c:  ldnull
      IL_001d:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                   string,
                                                                   string,
                                                                   string,
                                                                   class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
      IL_0022:  call       void Game.DialogsManager::ShowDialog(class Game.Dialog)
      IL_0027:  ret
    } // end of method '<>c__DisplayClass10_0'::'<Update>b__3'

  } // end of class '<>c__DisplayClass10_0'

  .field private class Game.TextBoxWidget m_linkTextBoxWidget
  .field private class Game.TextBoxWidget m_nameTextBoxWidget
  .field private class Game.RectangleWidget m_typeIconWidget
  .field private class Game.LabelWidget m_typeLabelWidget
  .field private class Game.ButtonWidget m_changeTypeButtonWidget
  .field private class Game.ButtonWidget m_publishButtonWidget
  .field private class Game.ButtonWidget m_cancelButtonWidget
  .field private string m_user
  .field private valuetype Game.ExternalContentType m_type
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string user,
                               string address,
                               string name) cil managed
  {
    // 代码大小       310 (0x136)
    .maxstack  4
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.3
    IL_0002:  stfld      valuetype Game.ExternalContentType Game.PublishCommunityLinkDialog::m_type
    IL_0007:  ldarg.0
    IL_0008:  call       instance void Game.Dialog::.ctor()
    IL_000d:  ldstr      "Dialogs/PublishCommunityLinkDialog"
    IL_0012:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_0017:  stloc.0
    IL_0018:  ldarg.0
    IL_0019:  ldarg.0
    IL_001a:  ldloc.0
    IL_001b:  ldnull
    IL_001c:  call       class Game.Widget Game.WidgetsManager::LoadWidget(object,
                                                                           class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                           class Game.ContainerWidget)
    IL_0021:  castclass  Game.ContainerWidget
    IL_0026:  call       instance void Game.Dialog::set_DialogWidget(class Game.ContainerWidget)
    IL_002b:  ldarg.0
    IL_002c:  ldarg.0
    IL_002d:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_0032:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0037:  ldstr      "PublishCommunityLinkDialog.Link"
    IL_003c:  ldc.i4.1
    IL_003d:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.TextBoxWidget>(string,
                                                                                            bool)
    IL_0042:  stfld      class Game.TextBoxWidget Game.PublishCommunityLinkDialog::m_linkTextBoxWidget
    IL_0047:  ldarg.0
    IL_0048:  ldarg.0
    IL_0049:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_004e:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0053:  ldstr      "PublishCommunityLinkDialog.Name"
    IL_0058:  ldc.i4.1
    IL_0059:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.TextBoxWidget>(string,
                                                                                            bool)
    IL_005e:  stfld      class Game.TextBoxWidget Game.PublishCommunityLinkDialog::m_nameTextBoxWidget
    IL_0063:  ldarg.0
    IL_0064:  ldarg.0
    IL_0065:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_006a:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_006f:  ldstr      "PublishCommunityLinkDialog.TypeIcon"
    IL_0074:  ldc.i4.1
    IL_0075:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.RectangleWidget>(string,
                                                                                              bool)
    IL_007a:  stfld      class Game.RectangleWidget Game.PublishCommunityLinkDialog::m_typeIconWidget
    IL_007f:  ldarg.0
    IL_0080:  ldarg.0
    IL_0081:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_0086:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_008b:  ldstr      "PublishCommunityLinkDialog.Type"
    IL_0090:  ldc.i4.1
    IL_0091:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_0096:  stfld      class Game.LabelWidget Game.PublishCommunityLinkDialog::m_typeLabelWidget
    IL_009b:  ldarg.0
    IL_009c:  ldarg.0
    IL_009d:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_00a2:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00a7:  ldstr      "PublishCommunityLinkDialog.ChangeType"
    IL_00ac:  ldc.i4.1
    IL_00ad:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_00b2:  stfld      class Game.ButtonWidget Game.PublishCommunityLinkDialog::m_changeTypeButtonWidget
    IL_00b7:  ldarg.0
    IL_00b8:  ldarg.0
    IL_00b9:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_00be:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00c3:  ldstr      "PublishCommunityLinkDialog.Publish"
    IL_00c8:  ldc.i4.1
    IL_00c9:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_00ce:  stfld      class Game.ButtonWidget Game.PublishCommunityLinkDialog::m_publishButtonWidget
    IL_00d3:  ldarg.0
    IL_00d4:  ldarg.0
    IL_00d5:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_00da:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00df:  ldstr      "PublishCommunityLinkDialog.Cancel"
    IL_00e4:  ldc.i4.1
    IL_00e5:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_00ea:  stfld      class Game.ButtonWidget Game.PublishCommunityLinkDialog::m_cancelButtonWidget
    IL_00ef:  ldarg.0
    IL_00f0:  ldfld      class Game.TextBoxWidget Game.PublishCommunityLinkDialog::m_linkTextBoxWidget
    IL_00f5:  ldarg.0
    IL_00f6:  ldftn      instance void Game.PublishCommunityLinkDialog::'<.ctor>b__9_0'(class Game.TextBoxWidget)
    IL_00fc:  newobj     instance void class [System.Runtime]System.Action`1<class Game.TextBoxWidget>::.ctor(object,
                                                                                                              native int)
    IL_0101:  callvirt   instance void Game.TextBoxWidget::add_TextChanged(class [System.Runtime]System.Action`1<class Game.TextBoxWidget>)
    IL_0106:  ldarg.2
    IL_0107:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_010c:  brtrue.s   IL_011a

    IL_010e:  ldarg.0
    IL_010f:  ldfld      class Game.TextBoxWidget Game.PublishCommunityLinkDialog::m_linkTextBoxWidget
    IL_0114:  ldarg.2
    IL_0115:  callvirt   instance void Game.TextBoxWidget::set_Text(string)
    IL_011a:  ldarg.3
    IL_011b:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_0120:  brtrue.s   IL_012e

    IL_0122:  ldarg.0
    IL_0123:  ldfld      class Game.TextBoxWidget Game.PublishCommunityLinkDialog::m_nameTextBoxWidget
    IL_0128:  ldarg.3
    IL_0129:  callvirt   instance void Game.TextBoxWidget::set_Text(string)
    IL_012e:  ldarg.0
    IL_012f:  ldarg.1
    IL_0130:  stfld      string Game.PublishCommunityLinkDialog::m_user
    IL_0135:  ret
  } // end of method PublishCommunityLinkDialog::.ctor

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       316 (0x13c)
    .maxstack  8
    .locals init (string V_0,
             string V_1,
             class Game.PublishCommunityLinkDialog/'<>c__DisplayClass10_0' V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.TextBoxWidget Game.PublishCommunityLinkDialog::m_linkTextBoxWidget
    IL_0006:  callvirt   instance string Game.TextBoxWidget::get_Text()
    IL_000b:  callvirt   instance string [System.Runtime]System.String::Trim()
    IL_0010:  stloc.0
    IL_0011:  ldarg.0
    IL_0012:  ldfld      class Game.TextBoxWidget Game.PublishCommunityLinkDialog::m_nameTextBoxWidget
    IL_0017:  callvirt   instance string Game.TextBoxWidget::get_Text()
    IL_001c:  callvirt   instance string [System.Runtime]System.String::Trim()
    IL_0021:  stloc.1
    IL_0022:  ldarg.0
    IL_0023:  ldfld      class Game.LabelWidget Game.PublishCommunityLinkDialog::m_typeLabelWidget
    IL_0028:  ldarg.0
    IL_0029:  ldfld      valuetype Game.ExternalContentType Game.PublishCommunityLinkDialog::m_type
    IL_002e:  call       string Game.ExternalContentManager::GetEntryTypeDescription(valuetype Game.ExternalContentType)
    IL_0033:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0038:  ldarg.0
    IL_0039:  ldfld      class Game.RectangleWidget Game.PublishCommunityLinkDialog::m_typeIconWidget
    IL_003e:  ldarg.0
    IL_003f:  ldfld      valuetype Game.ExternalContentType Game.PublishCommunityLinkDialog::m_type
    IL_0044:  call       class Game.Subtexture Game.ExternalContentManager::GetEntryTypeIcon(valuetype Game.ExternalContentType)
    IL_0049:  callvirt   instance void Game.RectangleWidget::set_Subtexture(class Game.Subtexture)
    IL_004e:  ldarg.0
    IL_004f:  ldfld      class Game.ButtonWidget Game.PublishCommunityLinkDialog::m_publishButtonWidget
    IL_0054:  ldloc.0
    IL_0055:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_005a:  ldc.i4.0
    IL_005b:  ble.s      IL_0068

    IL_005d:  ldloc.1
    IL_005e:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_0063:  ldc.i4.0
    IL_0064:  cgt
    IL_0066:  br.s       IL_0069

    IL_0068:  ldc.i4.0
    IL_0069:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_006e:  ldarg.0
    IL_006f:  ldfld      class Game.ButtonWidget Game.PublishCommunityLinkDialog::m_changeTypeButtonWidget
    IL_0074:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0079:  brfalse.s  IL_0097

    IL_007b:  ldstr      "Select Content Type"
    IL_0080:  ldarg.0
    IL_0081:  ldftn      instance void Game.PublishCommunityLinkDialog::'<Update>b__10_0'(valuetype Game.ExternalContentType)
    IL_0087:  newobj     instance void class [System.Runtime]System.Action`1<valuetype Game.ExternalContentType>::.ctor(object,
                                                                                                                        native int)
    IL_008c:  newobj     instance void Game.SelectExternalContentTypeDialog::.ctor(string,
                                                                                   class [System.Runtime]System.Action`1<valuetype Game.ExternalContentType>)
    IL_0091:  call       void Game.DialogsManager::ShowDialog(class Game.Dialog)
    IL_0096:  ret

    IL_0097:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_009c:  ldfld      bool Game.InputState::Back
    IL_00a1:  brtrue.s   IL_00bc

    IL_00a3:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_00a8:  ldfld      bool Game.InputState::B
    IL_00ad:  brtrue.s   IL_00bc

    IL_00af:  ldarg.0
    IL_00b0:  ldfld      class Game.ButtonWidget Game.PublishCommunityLinkDialog::m_cancelButtonWidget
    IL_00b5:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_00ba:  brfalse.s  IL_00c3

    IL_00bc:  ldarg.0
    IL_00bd:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
    IL_00c2:  ret

    IL_00c3:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_00c8:  ldfld      bool Game.InputState::A
    IL_00cd:  brtrue.s   IL_00dc

    IL_00cf:  ldarg.0
    IL_00d0:  ldfld      class Game.ButtonWidget Game.PublishCommunityLinkDialog::m_publishButtonWidget
    IL_00d5:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_00da:  brfalse.s  IL_013b

    IL_00dc:  newobj     instance void Game.PublishCommunityLinkDialog/'<>c__DisplayClass10_0'::.ctor()
    IL_00e1:  stloc.2
    IL_00e2:  ldloc.2
    IL_00e3:  ldarg.0
    IL_00e4:  stfld      class Game.PublishCommunityLinkDialog Game.PublishCommunityLinkDialog/'<>c__DisplayClass10_0'::'<>4__this'
    IL_00e9:  ldloc.2
    IL_00ea:  ldstr      "Publishing"
    IL_00ef:  ldc.i4.0
    IL_00f0:  newobj     instance void Game.CancellableBusyDialog::.ctor(string,
                                                                         bool)
    IL_00f5:  stfld      class Game.CancellableBusyDialog Game.PublishCommunityLinkDialog/'<>c__DisplayClass10_0'::busyDialog
    IL_00fa:  ldloc.2
    IL_00fb:  ldfld      class Game.CancellableBusyDialog Game.PublishCommunityLinkDialog/'<>c__DisplayClass10_0'::busyDialog
    IL_0100:  call       void Game.DialogsManager::ShowDialog(class Game.Dialog)
    IL_0105:  ldloc.0
    IL_0106:  ldloc.1
    IL_0107:  ldarg.0
    IL_0108:  ldfld      valuetype Game.ExternalContentType Game.PublishCommunityLinkDialog::m_type
    IL_010d:  ldarg.0
    IL_010e:  ldfld      string Game.PublishCommunityLinkDialog::m_user
    IL_0113:  ldloc.2
    IL_0114:  ldfld      class Game.CancellableBusyDialog Game.PublishCommunityLinkDialog/'<>c__DisplayClass10_0'::busyDialog
    IL_0119:  callvirt   instance class Game.CancellableProgress Game.CancellableBusyDialog::get_Progress()
    IL_011e:  ldloc.2
    IL_011f:  ldftn      instance void Game.PublishCommunityLinkDialog/'<>c__DisplayClass10_0'::'<Update>b__1'()
    IL_0125:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_012a:  ldloc.2
    IL_012b:  ldftn      instance void Game.PublishCommunityLinkDialog/'<>c__DisplayClass10_0'::'<Update>b__3'(class [System.Runtime]System.Exception)
    IL_0131:  newobj     instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::.ctor(object,
                                                                                                                            native int)
    IL_0136:  call       void Game.CommunityContentManager::Publish(string,
                                                                    string,
                                                                    valuetype Game.ExternalContentType,
                                                                    string,
                                                                    class Game.CancellableProgress,
                                                                    class [System.Runtime]System.Action,
                                                                    class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>)
    IL_013b:  ret
  } // end of method PublishCommunityLinkDialog::Update

  .method private hidebysig static string 
          GetFilenameFromLink(string address) cil managed
  {
    // 代码大小       71 (0x47)
    .maxstack  2
    .locals init (string V_0,
             int32 V_1,
             int32 V_2,
             string V_3)
    .try
    {
      IL_0000:  ldarg.0
      IL_0001:  stloc.0
      IL_0002:  ldloc.0
      IL_0003:  ldc.i4.s   38
      IL_0005:  callvirt   instance int32 [System.Runtime]System.String::IndexOf(char)
      IL_000a:  stloc.1
      IL_000b:  ldloc.1
      IL_000c:  ldc.i4.0
      IL_000d:  ble.s      IL_0017

      IL_000f:  ldloc.0
      IL_0010:  ldloc.1
      IL_0011:  callvirt   instance string [System.Runtime]System.String::Remove(int32)
      IL_0016:  stloc.0
      IL_0017:  ldloc.0
      IL_0018:  ldc.i4.s   63
      IL_001a:  callvirt   instance int32 [System.Runtime]System.String::IndexOf(char)
      IL_001f:  stloc.2
      IL_0020:  ldloc.2
      IL_0021:  ldc.i4.0
      IL_0022:  ble.s      IL_002c

      IL_0024:  ldloc.0
      IL_0025:  ldloc.2
      IL_0026:  callvirt   instance string [System.Runtime]System.String::Remove(int32)
      IL_002b:  stloc.0
      IL_002c:  ldloc.0
      IL_002d:  call       string [System.Runtime]System.Uri::UnescapeDataString(string)
      IL_0032:  stloc.0
      IL_0033:  ldloc.0
      IL_0034:  call       string [Engine]Engine.Storage::GetFileName(string)
      IL_0039:  stloc.3
      IL_003a:  leave.s    IL_0045

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_003c:  pop
      IL_003d:  ldsfld     string [System.Runtime]System.String::Empty
      IL_0042:  stloc.3
      IL_0043:  leave.s    IL_0045

    }  // end handler
    IL_0045:  ldloc.3
    IL_0046:  ret
  } // end of method PublishCommunityLinkDialog::GetFilenameFromLink

  .method private hidebysig instance void 
          '<.ctor>b__9_0'(class Game.TextBoxWidget '<obj>') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       33 (0x21)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.TextBoxWidget Game.PublishCommunityLinkDialog::m_nameTextBoxWidget
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class Game.TextBoxWidget Game.PublishCommunityLinkDialog::m_linkTextBoxWidget
    IL_000c:  callvirt   instance string Game.TextBoxWidget::get_Text()
    IL_0011:  call       string Game.PublishCommunityLinkDialog::GetFilenameFromLink(string)
    IL_0016:  call       string [Engine]Engine.Storage::GetFileNameWithoutExtension(string)
    IL_001b:  callvirt   instance void Game.TextBoxWidget::set_Text(string)
    IL_0020:  ret
  } // end of method PublishCommunityLinkDialog::'<.ctor>b__9_0'

  .method private hidebysig instance void 
          '<Update>b__10_0'(valuetype Game.ExternalContentType item) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype Game.ExternalContentType Game.PublishCommunityLinkDialog::m_type
    IL_0007:  ret
  } // end of method PublishCommunityLinkDialog::'<Update>b__10_0'

  .method private hidebysig instance void 
          '<Update>b__10_2'(valuetype Game.MessageDialogButton button) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
    IL_0006:  ret
  } // end of method PublishCommunityLinkDialog::'<Update>b__10_2'

} // end of class Game.PublishCommunityLinkDialog