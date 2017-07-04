.class public auto ansi beforefieldinit Game.DownloadContentFromLinkDialog
       extends Game.Dialog
{
  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass11_0'
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
    } // end of method '<>c__DisplayClass11_0'::.ctor

  } // end of class '<>c__DisplayClass11_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass11_1'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class Game.CancellableBusyDialog busyDialog
    .field public class Game.DownloadContentFromLinkDialog/'<>c__DisplayClass11_0' 'CS$<>8__locals1'
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
    } // end of method '<>c__DisplayClass11_1'::.ctor

    .method assembly hidebysig instance void 
            '<Update>b__1'(uint8[] data) cil managed
    {
      // 代码大小       101 (0x65)
      .maxstack  7
      .locals init (class [System.Runtime]System.Action`1<string> V_0,
               class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> V_1)
      IL_0000:  ldarg.1
      IL_0001:  newobj     instance void [System.IO]System.IO.MemoryStream::.ctor(uint8[])
      IL_0006:  ldarg.0
      IL_0007:  ldfld      class Game.DownloadContentFromLinkDialog/'<>c__DisplayClass11_0' Game.DownloadContentFromLinkDialog/'<>c__DisplayClass11_1'::'CS$<>8__locals1'
      IL_000c:  ldfld      class Game.DownloadContentFromLinkDialog Game.DownloadContentFromLinkDialog/'<>c__DisplayClass11_0'::'<>4__this'
      IL_0011:  ldfld      valuetype Game.ExternalContentType Game.DownloadContentFromLinkDialog::m_type
      IL_0016:  ldarg.0
      IL_0017:  ldfld      class Game.DownloadContentFromLinkDialog/'<>c__DisplayClass11_0' Game.DownloadContentFromLinkDialog/'<>c__DisplayClass11_1'::'CS$<>8__locals1'
      IL_001c:  ldfld      string Game.DownloadContentFromLinkDialog/'<>c__DisplayClass11_0'::name
      IL_0021:  ldarg.0
      IL_0022:  ldfld      class [System.Runtime]System.Action`1<string> Game.DownloadContentFromLinkDialog/'<>c__DisplayClass11_1'::'<>9__2'
      IL_0027:  dup
      IL_0028:  brtrue.s   IL_0040

      IL_002a:  pop
      IL_002b:  ldarg.0
      IL_002c:  ldarg.0
      IL_002d:  ldftn      instance void Game.DownloadContentFromLinkDialog/'<>c__DisplayClass11_1'::'<Update>b__2'(string)
      IL_0033:  newobj     instance void class [System.Runtime]System.Action`1<string>::.ctor(object,
                                                                                              native int)
      IL_0038:  dup
      IL_0039:  stloc.0
      IL_003a:  stfld      class [System.Runtime]System.Action`1<string> Game.DownloadContentFromLinkDialog/'<>c__DisplayClass11_1'::'<>9__2'
      IL_003f:  ldloc.0
      IL_0040:  ldarg.0
      IL_0041:  ldfld      class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.DownloadContentFromLinkDialog/'<>c__DisplayClass11_1'::'<>9__3'
      IL_0046:  dup
      IL_0047:  brtrue.s   IL_005f

      IL_0049:  pop
      IL_004a:  ldarg.0
      IL_004b:  ldarg.0
      IL_004c:  ldftn      instance void Game.DownloadContentFromLinkDialog/'<>c__DisplayClass11_1'::'<Update>b__3'(class [System.Runtime]System.Exception)
      IL_0052:  newobj     instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::.ctor(object,
                                                                                                                              native int)
      IL_0057:  dup
      IL_0058:  stloc.1
      IL_0059:  stfld      class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.DownloadContentFromLinkDialog/'<>c__DisplayClass11_1'::'<>9__3'
      IL_005e:  ldloc.1
      IL_005f:  call       void Game.ExternalContentManager::ImportExternalContent(class [System.IO]System.IO.Stream,
                                                                                   valuetype Game.ExternalContentType,
                                                                                   string,
                                                                                   class [System.Runtime]System.Action`1<string>,
                                                                                   class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>)
      IL_0064:  ret
    } // end of method '<>c__DisplayClass11_1'::'<Update>b__1'

    .method assembly hidebysig instance void 
            '<Update>b__2'(string downloadedName) cil managed
    {
      // 代码大小       28 (0x1c)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.CancellableBusyDialog Game.DownloadContentFromLinkDialog/'<>c__DisplayClass11_1'::busyDialog
      IL_0006:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
      IL_000b:  ldarg.0
      IL_000c:  ldfld      class Game.DownloadContentFromLinkDialog/'<>c__DisplayClass11_0' Game.DownloadContentFromLinkDialog/'<>c__DisplayClass11_1'::'CS$<>8__locals1'
      IL_0011:  ldfld      class Game.DownloadContentFromLinkDialog Game.DownloadContentFromLinkDialog/'<>c__DisplayClass11_0'::'<>4__this'
      IL_0016:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
      IL_001b:  ret
    } // end of method '<>c__DisplayClass11_1'::'<Update>b__2'

    .method assembly hidebysig instance void 
            '<Update>b__3'(class [System.Runtime]System.Exception 'error') cil managed
    {
      // 代码大小       56 (0x38)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.CancellableBusyDialog Game.DownloadContentFromLinkDialog/'<>c__DisplayClass11_1'::busyDialog
      IL_0006:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
      IL_000b:  ldarg.0
      IL_000c:  ldfld      class Game.DownloadContentFromLinkDialog/'<>c__DisplayClass11_0' Game.DownloadContentFromLinkDialog/'<>c__DisplayClass11_1'::'CS$<>8__locals1'
      IL_0011:  ldfld      class Game.DownloadContentFromLinkDialog Game.DownloadContentFromLinkDialog/'<>c__DisplayClass11_0'::'<>4__this'
      IL_0016:  call       instance class Game.ContainerWidget Game.Widget::get_ParentWidget()
      IL_001b:  ldstr      "Error"
      IL_0020:  ldarg.1
      IL_0021:  callvirt   instance string [System.Runtime]System.Exception::get_Message()
      IL_0026:  ldstr      "OK"
      IL_002b:  ldnull
      IL_002c:  ldnull
      IL_002d:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                   string,
                                                                   string,
                                                                   string,
                                                                   class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
      IL_0032:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                                class Game.Dialog)
      IL_0037:  ret
    } // end of method '<>c__DisplayClass11_1'::'<Update>b__3'

    .method assembly hidebysig instance void 
            '<Update>b__4'(class [System.Runtime]System.Exception 'error') cil managed
    {
      // 代码大小       56 (0x38)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.CancellableBusyDialog Game.DownloadContentFromLinkDialog/'<>c__DisplayClass11_1'::busyDialog
      IL_0006:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
      IL_000b:  ldarg.0
      IL_000c:  ldfld      class Game.DownloadContentFromLinkDialog/'<>c__DisplayClass11_0' Game.DownloadContentFromLinkDialog/'<>c__DisplayClass11_1'::'CS$<>8__locals1'
      IL_0011:  ldfld      class Game.DownloadContentFromLinkDialog Game.DownloadContentFromLinkDialog/'<>c__DisplayClass11_0'::'<>4__this'
      IL_0016:  call       instance class Game.ContainerWidget Game.Widget::get_ParentWidget()
      IL_001b:  ldstr      "Error"
      IL_0020:  ldarg.1
      IL_0021:  callvirt   instance string [System.Runtime]System.Exception::get_Message()
      IL_0026:  ldstr      "OK"
      IL_002b:  ldnull
      IL_002c:  ldnull
      IL_002d:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                   string,
                                                                   string,
                                                                   string,
                                                                   class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
      IL_0032:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                                class Game.Dialog)
      IL_0037:  ret
    } // end of method '<>c__DisplayClass11_1'::'<Update>b__4'

  } // end of class '<>c__DisplayClass11_1'

  .field private class Game.TextBoxWidget m_linkTextBoxWidget
  .field private class Game.TextBoxWidget m_nameTextBoxWidget
  .field private class Game.RectangleWidget m_typeIconWidget
  .field private class Game.LabelWidget m_typeLabelWidget
  .field private class Game.ButtonWidget m_changeTypeButtonWidget
  .field private class Game.ButtonWidget m_downloadButtonWidget
  .field private class Game.ButtonWidget m_cancelButtonWidget
  .field private bool m_updateContentName
  .field private bool m_updateContentType
  .field private valuetype Game.ExternalContentType m_type
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       210 (0xd2)
    .maxstack  4
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.Dialog::.ctor()
    IL_0006:  ldstr      "Dialogs/DownloadContentFromLinkDialog"
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
    IL_0020:  ldstr      "DownloadContentFromLinkDialog.Link"
    IL_0025:  ldc.i4.1
    IL_0026:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.TextBoxWidget>(string,
                                                                                       bool)
    IL_002b:  stfld      class Game.TextBoxWidget Game.DownloadContentFromLinkDialog::m_linkTextBoxWidget
    IL_0030:  ldarg.0
    IL_0031:  ldarg.0
    IL_0032:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0037:  ldstr      "DownloadContentFromLinkDialog.Name"
    IL_003c:  ldc.i4.1
    IL_003d:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.TextBoxWidget>(string,
                                                                                       bool)
    IL_0042:  stfld      class Game.TextBoxWidget Game.DownloadContentFromLinkDialog::m_nameTextBoxWidget
    IL_0047:  ldarg.0
    IL_0048:  ldarg.0
    IL_0049:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_004e:  ldstr      "DownloadContentFromLinkDialog.TypeIcon"
    IL_0053:  ldc.i4.1
    IL_0054:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.RectangleWidget>(string,
                                                                                         bool)
    IL_0059:  stfld      class Game.RectangleWidget Game.DownloadContentFromLinkDialog::m_typeIconWidget
    IL_005e:  ldarg.0
    IL_005f:  ldarg.0
    IL_0060:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0065:  ldstr      "DownloadContentFromLinkDialog.Type"
    IL_006a:  ldc.i4.1
    IL_006b:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_0070:  stfld      class Game.LabelWidget Game.DownloadContentFromLinkDialog::m_typeLabelWidget
    IL_0075:  ldarg.0
    IL_0076:  ldarg.0
    IL_0077:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_007c:  ldstr      "DownloadContentFromLinkDialog.ChangeType"
    IL_0081:  ldc.i4.1
    IL_0082:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0087:  stfld      class Game.ButtonWidget Game.DownloadContentFromLinkDialog::m_changeTypeButtonWidget
    IL_008c:  ldarg.0
    IL_008d:  ldarg.0
    IL_008e:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0093:  ldstr      "DownloadContentFromLinkDialog.Download"
    IL_0098:  ldc.i4.1
    IL_0099:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_009e:  stfld      class Game.ButtonWidget Game.DownloadContentFromLinkDialog::m_downloadButtonWidget
    IL_00a3:  ldarg.0
    IL_00a4:  ldarg.0
    IL_00a5:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00aa:  ldstr      "DownloadContentFromLinkDialog.Cancel"
    IL_00af:  ldc.i4.1
    IL_00b0:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_00b5:  stfld      class Game.ButtonWidget Game.DownloadContentFromLinkDialog::m_cancelButtonWidget
    IL_00ba:  ldarg.0
    IL_00bb:  ldfld      class Game.TextBoxWidget Game.DownloadContentFromLinkDialog::m_linkTextBoxWidget
    IL_00c0:  ldarg.0
    IL_00c1:  ldftn      instance void Game.DownloadContentFromLinkDialog::'<.ctor>b__10_0'(class Game.TextBoxWidget)
    IL_00c7:  newobj     instance void class [System.Runtime]System.Action`1<class Game.TextBoxWidget>::.ctor(object,
                                                                                                              native int)
    IL_00cc:  callvirt   instance void Game.TextBoxWidget::add_TextChanged(class [System.Runtime]System.Action`1<class Game.TextBoxWidget>)
    IL_00d1:  ret
  } // end of method DownloadContentFromLinkDialog::.ctor

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       492 (0x1ec)
    .maxstack  7
    .locals init (class Game.DownloadContentFromLinkDialog/'<>c__DisplayClass11_0' V_0,
             string V_1,
             class Game.DownloadContentFromLinkDialog/'<>c__DisplayClass11_1' V_2)
    IL_0000:  newobj     instance void Game.DownloadContentFromLinkDialog/'<>c__DisplayClass11_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.0
    IL_0008:  stfld      class Game.DownloadContentFromLinkDialog Game.DownloadContentFromLinkDialog/'<>c__DisplayClass11_0'::'<>4__this'
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
    IL_002f:  stfld      string Game.DownloadContentFromLinkDialog/'<>c__DisplayClass11_0'::name
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
    IL_006b:  brfalse.s  IL_00d3

    IL_006d:  ldarg.0
    IL_006e:  ldfld      class Game.TextBoxWidget Game.DownloadContentFromLinkDialog::m_nameTextBoxWidget
    IL_0073:  ldc.i4.1
    IL_0074:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_0079:  ldarg.0
    IL_007a:  ldfld      class Game.ButtonWidget Game.DownloadContentFromLinkDialog::m_downloadButtonWidget
    IL_007f:  ldloc.1
    IL_0080:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_0085:  ldc.i4.0
    IL_0086:  ble.s      IL_00a1

    IL_0088:  ldloc.0
    IL_0089:  ldfld      string Game.DownloadContentFromLinkDialog/'<>c__DisplayClass11_0'::name
    IL_008e:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_0093:  ldc.i4.0
    IL_0094:  ble.s      IL_00a1

    IL_0096:  ldarg.0
    IL_0097:  ldfld      valuetype Game.ExternalContentType Game.DownloadContentFromLinkDialog::m_type
    IL_009c:  ldc.i4.0
    IL_009d:  cgt.un
    IL_009f:  br.s       IL_00a2

    IL_00a1:  ldc.i4.0
    IL_00a2:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_00a7:  ldarg.0
    IL_00a8:  ldfld      bool Game.DownloadContentFromLinkDialog::m_updateContentName
    IL_00ad:  brfalse.s  IL_010f

    IL_00af:  ldarg.0
    IL_00b0:  ldfld      class Game.TextBoxWidget Game.DownloadContentFromLinkDialog::m_nameTextBoxWidget
    IL_00b5:  ldarg.0
    IL_00b6:  ldfld      class Game.TextBoxWidget Game.DownloadContentFromLinkDialog::m_linkTextBoxWidget
    IL_00bb:  callvirt   instance string Game.TextBoxWidget::get_Text()
    IL_00c0:  call       string Game.DownloadContentFromLinkDialog::GetNameFromLink(string)
    IL_00c5:  callvirt   instance void Game.TextBoxWidget::set_Text(string)
    IL_00ca:  ldarg.0
    IL_00cb:  ldc.i4.0
    IL_00cc:  stfld      bool Game.DownloadContentFromLinkDialog::m_updateContentName
    IL_00d1:  br.s       IL_010f

    IL_00d3:  ldarg.0
    IL_00d4:  ldfld      class Game.TextBoxWidget Game.DownloadContentFromLinkDialog::m_nameTextBoxWidget
    IL_00d9:  ldc.i4.0
    IL_00da:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_00df:  ldarg.0
    IL_00e0:  ldfld      class Game.TextBoxWidget Game.DownloadContentFromLinkDialog::m_nameTextBoxWidget
    IL_00e5:  ldsfld     string [System.Runtime]System.String::Empty
    IL_00ea:  callvirt   instance void Game.TextBoxWidget::set_Text(string)
    IL_00ef:  ldarg.0
    IL_00f0:  ldfld      class Game.ButtonWidget Game.DownloadContentFromLinkDialog::m_downloadButtonWidget
    IL_00f5:  ldloc.1
    IL_00f6:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_00fb:  ldc.i4.0
    IL_00fc:  ble.s      IL_0109

    IL_00fe:  ldarg.0
    IL_00ff:  ldfld      valuetype Game.ExternalContentType Game.DownloadContentFromLinkDialog::m_type
    IL_0104:  ldc.i4.0
    IL_0105:  cgt.un
    IL_0107:  br.s       IL_010a

    IL_0109:  ldc.i4.0
    IL_010a:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_010f:  ldarg.0
    IL_0110:  ldfld      bool Game.DownloadContentFromLinkDialog::m_updateContentType
    IL_0115:  brfalse.s  IL_0134

    IL_0117:  ldarg.0
    IL_0118:  ldarg.0
    IL_0119:  ldfld      class Game.TextBoxWidget Game.DownloadContentFromLinkDialog::m_linkTextBoxWidget
    IL_011e:  callvirt   instance string Game.TextBoxWidget::get_Text()
    IL_0123:  call       valuetype Game.ExternalContentType Game.DownloadContentFromLinkDialog::GetTypeFromLink(string)
    IL_0128:  stfld      valuetype Game.ExternalContentType Game.DownloadContentFromLinkDialog::m_type
    IL_012d:  ldarg.0
    IL_012e:  ldc.i4.0
    IL_012f:  stfld      bool Game.DownloadContentFromLinkDialog::m_updateContentType
    IL_0134:  ldarg.0
    IL_0135:  ldfld      class Game.ButtonWidget Game.DownloadContentFromLinkDialog::m_changeTypeButtonWidget
    IL_013a:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_013f:  brfalse.s  IL_0163

    IL_0141:  ldarg.0
    IL_0142:  call       instance class Game.ContainerWidget Game.Widget::get_ParentWidget()
    IL_0147:  ldstr      "Select Content Type"
    IL_014c:  ldarg.0
    IL_014d:  ldftn      instance void Game.DownloadContentFromLinkDialog::'<Update>b__11_0'(valuetype Game.ExternalContentType)
    IL_0153:  newobj     instance void class [System.Runtime]System.Action`1<valuetype Game.ExternalContentType>::.ctor(object,
                                                                                                                        native int)
    IL_0158:  newobj     instance void Game.SelectExternalContentTypeDialog::.ctor(string,
                                                                                   class [System.Runtime]System.Action`1<valuetype Game.ExternalContentType>)
    IL_015d:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_0162:  ret

    IL_0163:  ldarg.0
    IL_0164:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0169:  callvirt   instance bool Game.WidgetInput::get_Cancel()
    IL_016e:  brtrue.s   IL_017d

    IL_0170:  ldarg.0
    IL_0171:  ldfld      class Game.ButtonWidget Game.DownloadContentFromLinkDialog::m_cancelButtonWidget
    IL_0176:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_017b:  brfalse.s  IL_0184

    IL_017d:  ldarg.0
    IL_017e:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
    IL_0183:  ret

    IL_0184:  ldarg.0
    IL_0185:  ldfld      class Game.ButtonWidget Game.DownloadContentFromLinkDialog::m_downloadButtonWidget
    IL_018a:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_018f:  brfalse.s  IL_01eb

    IL_0191:  newobj     instance void Game.DownloadContentFromLinkDialog/'<>c__DisplayClass11_1'::.ctor()
    IL_0196:  stloc.2
    IL_0197:  ldloc.2
    IL_0198:  ldloc.0
    IL_0199:  stfld      class Game.DownloadContentFromLinkDialog/'<>c__DisplayClass11_0' Game.DownloadContentFromLinkDialog/'<>c__DisplayClass11_1'::'CS$<>8__locals1'
    IL_019e:  ldloc.2
    IL_019f:  ldstr      "Downloading"
    IL_01a4:  ldc.i4.0
    IL_01a5:  newobj     instance void Game.CancellableBusyDialog::.ctor(string,
                                                                         bool)
    IL_01aa:  stfld      class Game.CancellableBusyDialog Game.DownloadContentFromLinkDialog/'<>c__DisplayClass11_1'::busyDialog
    IL_01af:  ldarg.0
    IL_01b0:  call       instance class Game.ContainerWidget Game.Widget::get_ParentWidget()
    IL_01b5:  ldloc.2
    IL_01b6:  ldfld      class Game.CancellableBusyDialog Game.DownloadContentFromLinkDialog/'<>c__DisplayClass11_1'::busyDialog
    IL_01bb:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_01c0:  ldloc.1
    IL_01c1:  ldnull
    IL_01c2:  ldnull
    IL_01c3:  ldloc.2
    IL_01c4:  ldfld      class Game.CancellableBusyDialog Game.DownloadContentFromLinkDialog/'<>c__DisplayClass11_1'::busyDialog
    IL_01c9:  callvirt   instance class Game.CancellableProgress Game.CancellableBusyDialog::get_Progress()
    IL_01ce:  ldloc.2
    IL_01cf:  ldftn      instance void Game.DownloadContentFromLinkDialog/'<>c__DisplayClass11_1'::'<Update>b__1'(uint8[])
    IL_01d5:  newobj     instance void class [System.Runtime]System.Action`1<uint8[]>::.ctor(object,
                                                                                             native int)
    IL_01da:  ldloc.2
    IL_01db:  ldftn      instance void Game.DownloadContentFromLinkDialog/'<>c__DisplayClass11_1'::'<Update>b__4'(class [System.Runtime]System.Exception)
    IL_01e1:  newobj     instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::.ctor(object,
                                                                                                                            native int)
    IL_01e6:  call       void Game.WebManager::Get(string,
                                                   class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>,
                                                   class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>,
                                                   class Game.CancellableProgress,
                                                   class [System.Runtime]System.Action`1<uint8[]>,
                                                   class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>)
    IL_01eb:  ret
  } // end of method DownloadContentFromLinkDialog::Update

  .method private hidebysig static string 
          UnclutterLink(string address) cil managed
  {
    // 代码大小       64 (0x40)
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
      IL_0032:  stloc.3
      IL_0033:  leave.s    IL_003e

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_0035:  pop
      IL_0036:  ldsfld     string [System.Runtime]System.String::Empty
      IL_003b:  stloc.3
      IL_003c:  leave.s    IL_003e

    }  // end handler
    IL_003e:  ldloc.3
    IL_003f:  ret
  } // end of method DownloadContentFromLinkDialog::UnclutterLink

  .method private hidebysig static string 
          GetNameFromLink(string address) cil managed
  {
    // 代码大小       25 (0x19)
    .maxstack  1
    .locals init (string V_0)
    .try
    {
      IL_0000:  ldarg.0
      IL_0001:  call       string Game.DownloadContentFromLinkDialog::UnclutterLink(string)
      IL_0006:  call       string [Engine]Engine.Storage::GetFileNameWithoutExtension(string)
      IL_000b:  stloc.0
      IL_000c:  leave.s    IL_0017

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_000e:  pop
      IL_000f:  ldsfld     string [System.Runtime]System.String::Empty
      IL_0014:  stloc.0
      IL_0015:  leave.s    IL_0017

    }  // end handler
    IL_0017:  ldloc.0
    IL_0018:  ret
  } // end of method DownloadContentFromLinkDialog::GetNameFromLink

  .method private hidebysig static valuetype Game.ExternalContentType 
          GetTypeFromLink(string address) cil managed
  {
    // 代码大小       26 (0x1a)
    .maxstack  1
    .locals init (valuetype Game.ExternalContentType V_0)
    .try
    {
      IL_0000:  ldarg.0
      IL_0001:  call       string Game.DownloadContentFromLinkDialog::UnclutterLink(string)
      IL_0006:  call       string [Engine]Engine.Storage::GetExtension(string)
      IL_000b:  call       valuetype Game.ExternalContentType Game.ExternalContentManager::ExtensionToType(string)
      IL_0010:  stloc.0
      IL_0011:  leave.s    IL_0018

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_0013:  pop
      IL_0014:  ldc.i4.0
      IL_0015:  stloc.0
      IL_0016:  leave.s    IL_0018

    }  // end handler
    IL_0018:  ldloc.0
    IL_0019:  ret
  } // end of method DownloadContentFromLinkDialog::GetTypeFromLink

  .method private hidebysig instance void 
          '<.ctor>b__10_0'(class Game.TextBoxWidget '<obj>') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  stfld      bool Game.DownloadContentFromLinkDialog::m_updateContentName
    IL_0007:  ldarg.0
    IL_0008:  ldc.i4.1
    IL_0009:  stfld      bool Game.DownloadContentFromLinkDialog::m_updateContentType
    IL_000e:  ret
  } // end of method DownloadContentFromLinkDialog::'<.ctor>b__10_0'

  .method private hidebysig instance void 
          '<Update>b__11_0'(valuetype Game.ExternalContentType item) cil managed
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
  } // end of method DownloadContentFromLinkDialog::'<Update>b__11_0'

} // end of class Game.DownloadContentFromLinkDialog