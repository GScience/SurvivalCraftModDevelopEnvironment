.class public auto ansi beforefieldinit Game.DownloadContentFromLinkDialog
       extends Game.Dialog
{
  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass10_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public string name
    .field public class Game.DownloadContentFromLinkDialog '<>4__this'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass10_0'::.ctor

  } // end of class '<>c__DisplayClass10_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass10_1'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class Game.CancellableBusyDialog busyDialog
    .field public class Game.DownloadContentFromLinkDialog/'<>c__DisplayClass10_0' 'CS$<>8__locals1'
    .field public class [System.Runtime]System.Action`1<string> '<>9__2'
    .field public class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> '<>9__3'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass10_1'::.ctor

    .method assembly hidebysig instance void 
            '<Update>b__1'(uint8[] data) cil managed
    {
      // 代码大小       102 (0x66)
      .maxstack  8
      .locals init (class [System.Runtime]System.Action`1<string> V_0,
               class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> V_1)
      IL_0000:  ldarg.1
      IL_0001:  newobj     instance void [System.IO]System.IO.MemoryStream::.ctor(uint8[])
      IL_0006:  ldarg.0
      IL_0007:  ldfld      class Game.DownloadContentFromLinkDialog/'<>c__DisplayClass10_0' Game.DownloadContentFromLinkDialog/'<>c__DisplayClass10_1'::'CS$<>8__locals1'
      IL_000c:  ldfld      class Game.DownloadContentFromLinkDialog Game.DownloadContentFromLinkDialog/'<>c__DisplayClass10_0'::'<>4__this'
      IL_0011:  ldfld      valuetype Game.ExternalContentType Game.DownloadContentFromLinkDialog::m_type
      IL_0016:  ldarg.0
      IL_0017:  ldfld      class Game.DownloadContentFromLinkDialog/'<>c__DisplayClass10_0' Game.DownloadContentFromLinkDialog/'<>c__DisplayClass10_1'::'CS$<>8__locals1'
      IL_001c:  ldfld      string Game.DownloadContentFromLinkDialog/'<>c__DisplayClass10_0'::name
      IL_0021:  ldc.i4.0
      IL_0022:  ldarg.0
      IL_0023:  ldfld      class [System.Runtime]System.Action`1<string> Game.DownloadContentFromLinkDialog/'<>c__DisplayClass10_1'::'<>9__2'
      IL_0028:  dup
      IL_0029:  brtrue.s   IL_0041

      IL_002b:  pop
      IL_002c:  ldarg.0
      IL_002d:  ldarg.0
      IL_002e:  ldftn      instance void Game.DownloadContentFromLinkDialog/'<>c__DisplayClass10_1'::'<Update>b__2'(string)
      IL_0034:  newobj     instance void class [System.Runtime]System.Action`1<string>::.ctor(object,
                                                                                              native int)
      IL_0039:  dup
      IL_003a:  stloc.0
      IL_003b:  stfld      class [System.Runtime]System.Action`1<string> Game.DownloadContentFromLinkDialog/'<>c__DisplayClass10_1'::'<>9__2'
      IL_0040:  ldloc.0
      IL_0041:  ldarg.0
      IL_0042:  ldfld      class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.DownloadContentFromLinkDialog/'<>c__DisplayClass10_1'::'<>9__3'
      IL_0047:  dup
      IL_0048:  brtrue.s   IL_0060

      IL_004a:  pop
      IL_004b:  ldarg.0
      IL_004c:  ldarg.0
      IL_004d:  ldftn      instance void Game.DownloadContentFromLinkDialog/'<>c__DisplayClass10_1'::'<Update>b__3'(class [System.Runtime]System.Exception)
      IL_0053:  newobj     instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::.ctor(object,
                                                                                                                              native int)
      IL_0058:  dup
      IL_0059:  stloc.1
      IL_005a:  stfld      class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.DownloadContentFromLinkDialog/'<>c__DisplayClass10_1'::'<>9__3'
      IL_005f:  ldloc.1
      IL_0060:  call       void Game.ExternalContentManager::ImportExternalContent(class [System.IO]System.IO.Stream,
                                                                                   valuetype Game.ExternalContentType,
                                                                                   string,
                                                                                   bool,
                                                                                   class [System.Runtime]System.Action`1<string>,
                                                                                   class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>)
      IL_0065:  ret
    } // end of method '<>c__DisplayClass10_1'::'<Update>b__1'

    .method assembly hidebysig instance void 
            '<Update>b__2'(string downloadedName) cil managed
    {
      // 代码大小       28 (0x1c)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.CancellableBusyDialog Game.DownloadContentFromLinkDialog/'<>c__DisplayClass10_1'::busyDialog
      IL_0006:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
      IL_000b:  ldarg.0
      IL_000c:  ldfld      class Game.DownloadContentFromLinkDialog/'<>c__DisplayClass10_0' Game.DownloadContentFromLinkDialog/'<>c__DisplayClass10_1'::'CS$<>8__locals1'
      IL_0011:  ldfld      class Game.DownloadContentFromLinkDialog Game.DownloadContentFromLinkDialog/'<>c__DisplayClass10_0'::'<>4__this'
      IL_0016:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
      IL_001b:  ret
    } // end of method '<>c__DisplayClass10_1'::'<Update>b__2'

    .method assembly hidebysig instance void 
            '<Update>b__3'(class [System.Runtime]System.Exception 'error') cil managed
    {
      // 代码大小       40 (0x28)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.CancellableBusyDialog Game.DownloadContentFromLinkDialog/'<>c__DisplayClass10_1'::busyDialog
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
    } // end of method '<>c__DisplayClass10_1'::'<Update>b__3'

    .method assembly hidebysig instance void 
            '<Update>b__4'(class [System.Runtime]System.Exception 'error') cil managed
    {
      // 代码大小       40 (0x28)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.CancellableBusyDialog Game.DownloadContentFromLinkDialog/'<>c__DisplayClass10_1'::busyDialog
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
    } // end of method '<>c__DisplayClass10_1'::'<Update>b__4'

  } // end of class '<>c__DisplayClass10_1'

  .field private class Game.TextBoxWidget m_linkTextBoxWidget
  .field private class Game.TextBoxWidget m_nameTextBoxWidget
  .field private class Game.RectangleWidget m_typeIconWidget
  .field private class Game.LabelWidget m_typeLabelWidget
  .field private class Game.ButtonWidget m_changeTypeButtonWidget
  .field private class Game.ButtonWidget m_downloadButtonWidget
  .field private class Game.ButtonWidget m_cancelButtonWidget
  .field private bool m_updateContentName
  .field private valuetype Game.ExternalContentType m_type
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       263 (0x107)
    .maxstack  4
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.3
    IL_0002:  stfld      valuetype Game.ExternalContentType Game.DownloadContentFromLinkDialog::m_type
    IL_0007:  ldarg.0
    IL_0008:  call       instance void Game.Dialog::.ctor()
    IL_000d:  ldstr      "Dialogs/DownloadContentFromLinkDialog"
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
    IL_0037:  ldstr      "DownloadContentFromLinkDialog.Link"
    IL_003c:  ldc.i4.1
    IL_003d:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.TextBoxWidget>(string,
                                                                                            bool)
    IL_0042:  stfld      class Game.TextBoxWidget Game.DownloadContentFromLinkDialog::m_linkTextBoxWidget
    IL_0047:  ldarg.0
    IL_0048:  ldarg.0
    IL_0049:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_004e:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0053:  ldstr      "DownloadContentFromLinkDialog.Name"
    IL_0058:  ldc.i4.1
    IL_0059:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.TextBoxWidget>(string,
                                                                                            bool)
    IL_005e:  stfld      class Game.TextBoxWidget Game.DownloadContentFromLinkDialog::m_nameTextBoxWidget
    IL_0063:  ldarg.0
    IL_0064:  ldarg.0
    IL_0065:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_006a:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_006f:  ldstr      "DownloadContentFromLinkDialog.TypeIcon"
    IL_0074:  ldc.i4.1
    IL_0075:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.RectangleWidget>(string,
                                                                                              bool)
    IL_007a:  stfld      class Game.RectangleWidget Game.DownloadContentFromLinkDialog::m_typeIconWidget
    IL_007f:  ldarg.0
    IL_0080:  ldarg.0
    IL_0081:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_0086:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_008b:  ldstr      "DownloadContentFromLinkDialog.Type"
    IL_0090:  ldc.i4.1
    IL_0091:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_0096:  stfld      class Game.LabelWidget Game.DownloadContentFromLinkDialog::m_typeLabelWidget
    IL_009b:  ldarg.0
    IL_009c:  ldarg.0
    IL_009d:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_00a2:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00a7:  ldstr      "DownloadContentFromLinkDialog.ChangeType"
    IL_00ac:  ldc.i4.1
    IL_00ad:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_00b2:  stfld      class Game.ButtonWidget Game.DownloadContentFromLinkDialog::m_changeTypeButtonWidget
    IL_00b7:  ldarg.0
    IL_00b8:  ldarg.0
    IL_00b9:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_00be:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00c3:  ldstr      "DownloadContentFromLinkDialog.Download"
    IL_00c8:  ldc.i4.1
    IL_00c9:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_00ce:  stfld      class Game.ButtonWidget Game.DownloadContentFromLinkDialog::m_downloadButtonWidget
    IL_00d3:  ldarg.0
    IL_00d4:  ldarg.0
    IL_00d5:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_00da:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00df:  ldstr      "DownloadContentFromLinkDialog.Cancel"
    IL_00e4:  ldc.i4.1
    IL_00e5:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_00ea:  stfld      class Game.ButtonWidget Game.DownloadContentFromLinkDialog::m_cancelButtonWidget
    IL_00ef:  ldarg.0
    IL_00f0:  ldfld      class Game.TextBoxWidget Game.DownloadContentFromLinkDialog::m_linkTextBoxWidget
    IL_00f5:  ldarg.0
    IL_00f6:  ldftn      instance void Game.DownloadContentFromLinkDialog::'<.ctor>b__9_0'(class Game.TextBoxWidget)
    IL_00fc:  newobj     instance void class [System.Runtime]System.Action`1<class Game.TextBoxWidget>::.ctor(object,
                                                                                                              native int)
    IL_0101:  callvirt   instance void Game.TextBoxWidget::add_TextChanged(class [System.Runtime]System.Action`1<class Game.TextBoxWidget>)
    IL_0106:  ret
  } // end of method DownloadContentFromLinkDialog::.ctor

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       450 (0x1c2)
    .maxstack  7
    .locals init (class Game.DownloadContentFromLinkDialog/'<>c__DisplayClass10_0' V_0,
             string V_1,
             class Game.DownloadContentFromLinkDialog/'<>c__DisplayClass10_1' V_2)
    IL_0000:  newobj     instance void Game.DownloadContentFromLinkDialog/'<>c__DisplayClass10_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.0
    IL_0008:  stfld      class Game.DownloadContentFromLinkDialog Game.DownloadContentFromLinkDialog/'<>c__DisplayClass10_0'::'<>4__this'
    IL_000d:  ldarg.0
    IL_000e:  ldfld      class Game.TextBoxWidget Game.DownloadContentFromLinkDialog::m_linkTextBoxWidget
    IL_0013:  callvirt   instance string Game.TextBoxWidget::get_Text()
    IL_0018:  callvirt   instance string [System.Runtime]System.String::Trim()
    IL_001d:  stloc.1
    IL_001e:  ldloc.0
    IL_001f:  ldarg.0
    IL_0020:  ldfld      class Game.TextBoxWidget Game.DownloadContentFromLinkDialog::m_nameTextBoxWidget
    IL_0025:  callvirt   instance string Game.TextBoxWidget::get_Text()
    IL_002a:  callvirt   instance string [System.Runtime]System.String::Trim()
    IL_002f:  stfld      string Game.DownloadContentFromLinkDialog/'<>c__DisplayClass10_0'::name
    IL_0034:  ldarg.0
    IL_0035:  ldfld      class Game.LabelWidget Game.DownloadContentFromLinkDialog::m_typeLabelWidget
    IL_003a:  ldarg.0
    IL_003b:  ldfld      valuetype Game.ExternalContentType Game.DownloadContentFromLinkDialog::m_type
    IL_0040:  call       string Game.ExternalContentManager::GetEntryTypeDescription(valuetype Game.ExternalContentType)
    IL_0045:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_004a:  ldarg.0
    IL_004b:  ldfld      class Game.RectangleWidget Game.DownloadContentFromLinkDialog::m_typeIconWidget
    IL_0050:  ldarg.0
    IL_0051:  ldfld      valuetype Game.ExternalContentType Game.DownloadContentFromLinkDialog::m_type
    IL_0056:  call       class Game.Subtexture Game.ExternalContentManager::GetEntryTypeIcon(valuetype Game.ExternalContentType)
    IL_005b:  callvirt   instance void Game.RectangleWidget::set_Subtexture(class Game.Subtexture)
    IL_0060:  ldarg.0
    IL_0061:  ldfld      valuetype Game.ExternalContentType Game.DownloadContentFromLinkDialog::m_type
    IL_0066:  call       bool Game.ExternalContentManager::DoesEntryTypeRequireName(valuetype Game.ExternalContentType)
    IL_006b:  brfalse.s  IL_00cf

    IL_006d:  ldarg.0
    IL_006e:  ldfld      class Game.TextBoxWidget Game.DownloadContentFromLinkDialog::m_nameTextBoxWidget
    IL_0073:  ldc.i4.1
    IL_0074:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_0079:  ldarg.0
    IL_007a:  ldfld      class Game.ButtonWidget Game.DownloadContentFromLinkDialog::m_downloadButtonWidget
    IL_007f:  ldloc.1
    IL_0080:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_0085:  ldc.i4.0
    IL_0086:  ble.s      IL_0098

    IL_0088:  ldloc.0
    IL_0089:  ldfld      string Game.DownloadContentFromLinkDialog/'<>c__DisplayClass10_0'::name
    IL_008e:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_0093:  ldc.i4.0
    IL_0094:  cgt
    IL_0096:  br.s       IL_0099

    IL_0098:  ldc.i4.0
    IL_0099:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_009e:  ldarg.0
    IL_009f:  ldfld      bool Game.DownloadContentFromLinkDialog::m_updateContentName
    IL_00a4:  brfalse.s  IL_00ff

    IL_00a6:  ldarg.0
    IL_00a7:  ldfld      class Game.TextBoxWidget Game.DownloadContentFromLinkDialog::m_nameTextBoxWidget
    IL_00ac:  ldarg.0
    IL_00ad:  ldfld      class Game.TextBoxWidget Game.DownloadContentFromLinkDialog::m_linkTextBoxWidget
    IL_00b2:  callvirt   instance string Game.TextBoxWidget::get_Text()
    IL_00b7:  call       string Game.DownloadContentFromLinkDialog::GetFilenameFromLink(string)
    IL_00bc:  call       string [Engine]Engine.Storage::GetFileNameWithoutExtension(string)
    IL_00c1:  callvirt   instance void Game.TextBoxWidget::set_Text(string)
    IL_00c6:  ldarg.0
    IL_00c7:  ldc.i4.0
    IL_00c8:  stfld      bool Game.DownloadContentFromLinkDialog::m_updateContentName
    IL_00cd:  br.s       IL_00ff

    IL_00cf:  ldarg.0
    IL_00d0:  ldfld      class Game.TextBoxWidget Game.DownloadContentFromLinkDialog::m_nameTextBoxWidget
    IL_00d5:  ldc.i4.0
    IL_00d6:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_00db:  ldarg.0
    IL_00dc:  ldfld      class Game.TextBoxWidget Game.DownloadContentFromLinkDialog::m_nameTextBoxWidget
    IL_00e1:  ldsfld     string [System.Runtime]System.String::Empty
    IL_00e6:  callvirt   instance void Game.TextBoxWidget::set_Text(string)
    IL_00eb:  ldarg.0
    IL_00ec:  ldfld      class Game.ButtonWidget Game.DownloadContentFromLinkDialog::m_downloadButtonWidget
    IL_00f1:  ldloc.1
    IL_00f2:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_00f7:  ldc.i4.0
    IL_00f8:  cgt
    IL_00fa:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_00ff:  ldarg.0
    IL_0100:  ldfld      class Game.ButtonWidget Game.DownloadContentFromLinkDialog::m_changeTypeButtonWidget
    IL_0105:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_010a:  brfalse.s  IL_0128

    IL_010c:  ldstr      "Select Content Type"
    IL_0111:  ldarg.0
    IL_0112:  ldftn      instance void Game.DownloadContentFromLinkDialog::'<Update>b__10_0'(valuetype Game.ExternalContentType)
    IL_0118:  newobj     instance void class [System.Runtime]System.Action`1<valuetype Game.ExternalContentType>::.ctor(object,
                                                                                                                        native int)
    IL_011d:  newobj     instance void Game.SelectExternalContentTypeDialog::.ctor(string,
                                                                                   class [System.Runtime]System.Action`1<valuetype Game.ExternalContentType>)
    IL_0122:  call       void Game.DialogsManager::ShowDialog(class Game.Dialog)
    IL_0127:  ret

    IL_0128:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_012d:  ldfld      bool Game.InputState::Back
    IL_0132:  brtrue.s   IL_014d

    IL_0134:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_0139:  ldfld      bool Game.InputState::B
    IL_013e:  brtrue.s   IL_014d

    IL_0140:  ldarg.0
    IL_0141:  ldfld      class Game.ButtonWidget Game.DownloadContentFromLinkDialog::m_cancelButtonWidget
    IL_0146:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_014b:  brfalse.s  IL_0154

    IL_014d:  ldarg.0
    IL_014e:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
    IL_0153:  ret

    IL_0154:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_0159:  ldfld      bool Game.InputState::A
    IL_015e:  brtrue.s   IL_016d

    IL_0160:  ldarg.0
    IL_0161:  ldfld      class Game.ButtonWidget Game.DownloadContentFromLinkDialog::m_downloadButtonWidget
    IL_0166:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_016b:  brfalse.s  IL_01c1

    IL_016d:  newobj     instance void Game.DownloadContentFromLinkDialog/'<>c__DisplayClass10_1'::.ctor()
    IL_0172:  stloc.2
    IL_0173:  ldloc.2
    IL_0174:  ldloc.0
    IL_0175:  stfld      class Game.DownloadContentFromLinkDialog/'<>c__DisplayClass10_0' Game.DownloadContentFromLinkDialog/'<>c__DisplayClass10_1'::'CS$<>8__locals1'
    IL_017a:  ldloc.2
    IL_017b:  ldstr      "Downloading"
    IL_0180:  ldc.i4.0
    IL_0181:  newobj     instance void Game.CancellableBusyDialog::.ctor(string,
                                                                         bool)
    IL_0186:  stfld      class Game.CancellableBusyDialog Game.DownloadContentFromLinkDialog/'<>c__DisplayClass10_1'::busyDialog
    IL_018b:  ldloc.2
    IL_018c:  ldfld      class Game.CancellableBusyDialog Game.DownloadContentFromLinkDialog/'<>c__DisplayClass10_1'::busyDialog
    IL_0191:  call       void Game.DialogsManager::ShowDialog(class Game.Dialog)
    IL_0196:  ldloc.1
    IL_0197:  ldnull
    IL_0198:  ldnull
    IL_0199:  ldloc.2
    IL_019a:  ldfld      class Game.CancellableBusyDialog Game.DownloadContentFromLinkDialog/'<>c__DisplayClass10_1'::busyDialog
    IL_019f:  callvirt   instance class Game.CancellableProgress Game.CancellableBusyDialog::get_Progress()
    IL_01a4:  ldloc.2
    IL_01a5:  ldftn      instance void Game.DownloadContentFromLinkDialog/'<>c__DisplayClass10_1'::'<Update>b__1'(uint8[])
    IL_01ab:  newobj     instance void class [System.Runtime]System.Action`1<uint8[]>::.ctor(object,
                                                                                             native int)
    IL_01b0:  ldloc.2
    IL_01b1:  ldftn      instance void Game.DownloadContentFromLinkDialog/'<>c__DisplayClass10_1'::'<Update>b__4'(class [System.Runtime]System.Exception)
    IL_01b7:  newobj     instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::.ctor(object,
                                                                                                                            native int)
    IL_01bc:  call       void Game.WebManager::Get(string,
                                                   class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>,
                                                   class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>,
                                                   class Game.CancellableProgress,
                                                   class [System.Runtime]System.Action`1<uint8[]>,
                                                   class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>)
    IL_01c1:  ret
  } // end of method DownloadContentFromLinkDialog::Update

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
  } // end of method DownloadContentFromLinkDialog::GetFilenameFromLink

  .method private hidebysig instance void 
          '<.ctor>b__9_0'(class Game.TextBoxWidget '<obj>') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  stfld      bool Game.DownloadContentFromLinkDialog::m_updateContentName
    IL_0007:  ret
  } // end of method DownloadContentFromLinkDialog::'<.ctor>b__9_0'

  .method private hidebysig instance void 
          '<Update>b__10_0'(valuetype Game.ExternalContentType item) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype Game.ExternalContentType Game.DownloadContentFromLinkDialog::m_type
    IL_0007:  ldarg.0
    IL_0008:  ldc.i4.1
    IL_0009:  stfld      bool Game.DownloadContentFromLinkDialog::m_updateContentName
    IL_000e:  ret
  } // end of method DownloadContentFromLinkDialog::'<Update>b__10_0'

} // end of class Game.DownloadContentFromLinkDialog