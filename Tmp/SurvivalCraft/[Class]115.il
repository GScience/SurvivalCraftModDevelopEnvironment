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
      // 代码大小       66 (0x42)
      .maxstack  7
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.CancellableBusyDialog Game.PublishCommunityLinkDialog/'<>c__DisplayClass10_0'::busyDialog
      IL_0006:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
      IL_000b:  ldarg.0
      IL_000c:  ldfld      class Game.PublishCommunityLinkDialog Game.PublishCommunityLinkDialog/'<>c__DisplayClass10_0'::'<>4__this'
      IL_0011:  call       instance class Game.ContainerWidget Game.Widget::get_ParentWidget()
      IL_0016:  ldstr      "Link Published Successfully"
      IL_001b:  ldstr      "It should start appearing in the listings after it"
      + " is moderated. Please keep the file accessible through this link, so th"
      + "at other community members can download it."
      IL_0020:  ldstr      "OK"
      IL_0025:  ldnull
      IL_0026:  ldarg.0
      IL_0027:  ldfld      class Game.PublishCommunityLinkDialog Game.PublishCommunityLinkDialog/'<>c__DisplayClass10_0'::'<>4__this'
      IL_002c:  ldftn      instance void Game.PublishCommunityLinkDialog::'<Update>b__10_2'(valuetype Game.MessageDialogButton)
      IL_0032:  newobj     instance void class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>::.ctor(object,
                                                                                                                          native int)
      IL_0037:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                   string,
                                                                   string,
                                                                   string,
                                                                   class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
      IL_003c:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                                class Game.Dialog)
      IL_0041:  ret
    } // end of method '<>c__DisplayClass10_0'::'<Update>b__1'

    .method assembly hidebysig instance void 
            '<Update>b__3'(class [System.Runtime]System.Exception 'error') cil managed
    {
      // 代码大小       51 (0x33)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.CancellableBusyDialog Game.PublishCommunityLinkDialog/'<>c__DisplayClass10_0'::busyDialog
      IL_0006:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
      IL_000b:  ldarg.0
      IL_000c:  ldfld      class Game.PublishCommunityLinkDialog Game.PublishCommunityLinkDialog/'<>c__DisplayClass10_0'::'<>4__this'
      IL_0011:  call       instance class Game.ContainerWidget Game.Widget::get_ParentWidget()
      IL_0016:  ldstr      "Error"
      IL_001b:  ldarg.1
      IL_001c:  callvirt   instance string [System.Runtime]System.Exception::get_Message()
      IL_0021:  ldstr      "OK"
      IL_0026:  ldnull
      IL_0027:  ldnull
      IL_0028:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                   string,
                                                                   string,
                                                                   string,
                                                                   class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
      IL_002d:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                                class Game.Dialog)
      IL_0032:  ret
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
    // 代码大小       264 (0x108)
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
    IL_001b:  call       void Game.WidgetsManager::LoadWidgetContents(class Game.Widget,
                                                                      object,
                                                                      class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_0020:  ldarg.0
    IL_0021:  ldarg.0
    IL_0022:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0027:  ldstr      "PublishCommunityLinkDialog.Link"
    IL_002c:  ldc.i4.1
    IL_002d:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.TextBoxWidget>(string,
                                                                                       bool)
    IL_0032:  stfld      class Game.TextBoxWidget Game.PublishCommunityLinkDialog::m_linkTextBoxWidget
    IL_0037:  ldarg.0
    IL_0038:  ldarg.0
    IL_0039:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_003e:  ldstr      "PublishCommunityLinkDialog.Name"
    IL_0043:  ldc.i4.1
    IL_0044:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.TextBoxWidget>(string,
                                                                                       bool)
    IL_0049:  stfld      class Game.TextBoxWidget Game.PublishCommunityLinkDialog::m_nameTextBoxWidget
    IL_004e:  ldarg.0
    IL_004f:  ldarg.0
    IL_0050:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0055:  ldstr      "PublishCommunityLinkDialog.TypeIcon"
    IL_005a:  ldc.i4.1
    IL_005b:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.RectangleWidget>(string,
                                                                                         bool)
    IL_0060:  stfld      class Game.RectangleWidget Game.PublishCommunityLinkDialog::m_typeIconWidget
    IL_0065:  ldarg.0
    IL_0066:  ldarg.0
    IL_0067:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_006c:  ldstr      "PublishCommunityLinkDialog.Type"
    IL_0071:  ldc.i4.1
    IL_0072:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_0077:  stfld      class Game.LabelWidget Game.PublishCommunityLinkDialog::m_typeLabelWidget
    IL_007c:  ldarg.0
    IL_007d:  ldarg.0
    IL_007e:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0083:  ldstr      "PublishCommunityLinkDialog.ChangeType"
    IL_0088:  ldc.i4.1
    IL_0089:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_008e:  stfld      class Game.ButtonWidget Game.PublishCommunityLinkDialog::m_changeTypeButtonWidget
    IL_0093:  ldarg.0
    IL_0094:  ldarg.0
    IL_0095:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_009a:  ldstr      "PublishCommunityLinkDialog.Publish"
    IL_009f:  ldc.i4.1
    IL_00a0:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_00a5:  stfld      class Game.ButtonWidget Game.PublishCommunityLinkDialog::m_publishButtonWidget
    IL_00aa:  ldarg.0
    IL_00ab:  ldarg.0
    IL_00ac:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00b1:  ldstr      "PublishCommunityLinkDialog.Cancel"
    IL_00b6:  ldc.i4.1
    IL_00b7:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_00bc:  stfld      class Game.ButtonWidget Game.PublishCommunityLinkDialog::m_cancelButtonWidget
    IL_00c1:  ldarg.0
    IL_00c2:  ldfld      class Game.TextBoxWidget Game.PublishCommunityLinkDialog::m_linkTextBoxWidget
    IL_00c7:  ldarg.0
    IL_00c8:  ldftn      instance void Game.PublishCommunityLinkDialog::'<.ctor>b__9_0'(class Game.TextBoxWidget)
    IL_00ce:  newobj     instance void class [System.Runtime]System.Action`1<class Game.TextBoxWidget>::.ctor(object,
                                                                                                              native int)
    IL_00d3:  callvirt   instance void Game.TextBoxWidget::add_TextChanged(class [System.Runtime]System.Action`1<class Game.TextBoxWidget>)
    IL_00d8:  ldarg.2
    IL_00d9:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_00de:  brtrue.s   IL_00ec

    IL_00e0:  ldarg.0
    IL_00e1:  ldfld      class Game.TextBoxWidget Game.PublishCommunityLinkDialog::m_linkTextBoxWidget
    IL_00e6:  ldarg.2
    IL_00e7:  callvirt   instance void Game.TextBoxWidget::set_Text(string)
    IL_00ec:  ldarg.3
    IL_00ed:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_00f2:  brtrue.s   IL_0100

    IL_00f4:  ldarg.0
    IL_00f5:  ldfld      class Game.TextBoxWidget Game.PublishCommunityLinkDialog::m_nameTextBoxWidget
    IL_00fa:  ldarg.3
    IL_00fb:  callvirt   instance void Game.TextBoxWidget::set_Text(string)
    IL_0100:  ldarg.0
    IL_0101:  ldarg.1
    IL_0102:  stfld      string Game.PublishCommunityLinkDialog::m_user
    IL_0107:  ret
  } // end of method PublishCommunityLinkDialog::.ctor

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       305 (0x131)
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
    IL_0079:  brfalse.s  IL_009d

    IL_007b:  ldarg.0
    IL_007c:  call       instance class Game.ContainerWidget Game.Widget::get_ParentWidget()
    IL_0081:  ldstr      "Select Content Type"
    IL_0086:  ldarg.0
    IL_0087:  ldftn      instance void Game.PublishCommunityLinkDialog::'<Update>b__10_0'(valuetype Game.ExternalContentType)
    IL_008d:  newobj     instance void class [System.Runtime]System.Action`1<valuetype Game.ExternalContentType>::.ctor(object,
                                                                                                                        native int)
    IL_0092:  newobj     instance void Game.SelectExternalContentTypeDialog::.ctor(string,
                                                                                   class [System.Runtime]System.Action`1<valuetype Game.ExternalContentType>)
    IL_0097:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_009c:  ret

    IL_009d:  ldarg.0
    IL_009e:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_00a3:  callvirt   instance bool Game.WidgetInput::get_Cancel()
    IL_00a8:  brtrue.s   IL_00b7

    IL_00aa:  ldarg.0
    IL_00ab:  ldfld      class Game.ButtonWidget Game.PublishCommunityLinkDialog::m_cancelButtonWidget
    IL_00b0:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_00b5:  brfalse.s  IL_00be

    IL_00b7:  ldarg.0
    IL_00b8:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
    IL_00bd:  ret

    IL_00be:  ldarg.0
    IL_00bf:  ldfld      class Game.ButtonWidget Game.PublishCommunityLinkDialog::m_publishButtonWidget
    IL_00c4:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_00c9:  brfalse.s  IL_0130

    IL_00cb:  newobj     instance void Game.PublishCommunityLinkDialog/'<>c__DisplayClass10_0'::.ctor()
    IL_00d0:  stloc.2
    IL_00d1:  ldloc.2
    IL_00d2:  ldarg.0
    IL_00d3:  stfld      class Game.PublishCommunityLinkDialog Game.PublishCommunityLinkDialog/'<>c__DisplayClass10_0'::'<>4__this'
    IL_00d8:  ldloc.2
    IL_00d9:  ldstr      "Publishing"
    IL_00de:  ldc.i4.0
    IL_00df:  newobj     instance void Game.CancellableBusyDialog::.ctor(string,
                                                                         bool)
    IL_00e4:  stfld      class Game.CancellableBusyDialog Game.PublishCommunityLinkDialog/'<>c__DisplayClass10_0'::busyDialog
    IL_00e9:  ldarg.0
    IL_00ea:  call       instance class Game.ContainerWidget Game.Widget::get_ParentWidget()
    IL_00ef:  ldloc.2
    IL_00f0:  ldfld      class Game.CancellableBusyDialog Game.PublishCommunityLinkDialog/'<>c__DisplayClass10_0'::busyDialog
    IL_00f5:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_00fa:  ldloc.0
    IL_00fb:  ldloc.1
    IL_00fc:  ldarg.0
    IL_00fd:  ldfld      valuetype Game.ExternalContentType Game.PublishCommunityLinkDialog::m_type
    IL_0102:  ldarg.0
    IL_0103:  ldfld      string Game.PublishCommunityLinkDialog::m_user
    IL_0108:  ldloc.2
    IL_0109:  ldfld      class Game.CancellableBusyDialog Game.PublishCommunityLinkDialog/'<>c__DisplayClass10_0'::busyDialog
    IL_010e:  callvirt   instance class Game.CancellableProgress Game.CancellableBusyDialog::get_Progress()
    IL_0113:  ldloc.2
    IL_0114:  ldftn      instance void Game.PublishCommunityLinkDialog/'<>c__DisplayClass10_0'::'<Update>b__1'()
    IL_011a:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_011f:  ldloc.2
    IL_0120:  ldftn      instance void Game.PublishCommunityLinkDialog/'<>c__DisplayClass10_0'::'<Update>b__3'(class [System.Runtime]System.Exception)
    IL_0126:  newobj     instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::.ctor(object,
                                                                                                                            native int)
    IL_012b:  call       void Game.CommunityContentManager::Publish(string,
                                                                    string,
                                                                    valuetype Game.ExternalContentType,
                                                                    string,
                                                                    class Game.CancellableProgress,
                                                                    class [System.Runtime]System.Action,
                                                                    class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>)
    IL_0130:  ret
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