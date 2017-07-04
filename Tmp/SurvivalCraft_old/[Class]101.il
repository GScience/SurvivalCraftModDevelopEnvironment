.class public auto ansi beforefieldinit Game.EditMemoryBankDialog
       extends Game.Dialog
{
  .field private class [System.Runtime]System.Action m_handler
  .field private class Game.Widget m_linearPanel
  .field private class Game.Widget m_gridPanel
  .field private class Game.ButtonWidget m_okButton
  .field private class Game.ButtonWidget m_cancelButton
  .field private class Game.ButtonWidget m_switchViewButton
  .field private class Game.TextBoxWidget[] m_lineTextBoxes
  .field private class Game.TextBoxWidget m_linearTextBox
  .field private class Game.MemoryBankData m_memoryBankData
  .field private class Game.MemoryBankData m_tmpMemoryBankData
  .field private bool m_ignoreTextChanges
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.MemoryBankData memoryBankData,
                               class [System.Runtime]System.Action 'handler') cil managed
  {
    // 代码大小       336 (0x150)
    .maxstack  5
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0,
             int32 V_1,
             int32 V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.s   16
    IL_0003:  newarr     Game.TextBoxWidget
    IL_0008:  stfld      class Game.TextBoxWidget[] Game.EditMemoryBankDialog::m_lineTextBoxes
    IL_000d:  ldarg.0
    IL_000e:  call       instance void Game.Dialog::.ctor()
    IL_0013:  ldstr      "Dialogs/EditMemoryBankDialog"
    IL_0018:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_001d:  stloc.0
    IL_001e:  ldarg.0
    IL_001f:  ldarg.0
    IL_0020:  ldloc.0
    IL_0021:  call       void Game.WidgetsManager::LoadWidgetContents(class Game.Widget,
                                                                      object,
                                                                      class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_0026:  ldarg.0
    IL_0027:  ldarg.0
    IL_0028:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_002d:  ldstr      "EditMemoryBankDialog.LinearPanel"
    IL_0032:  ldc.i4.1
    IL_0033:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.Widget>(string,
                                                                                bool)
    IL_0038:  stfld      class Game.Widget Game.EditMemoryBankDialog::m_linearPanel
    IL_003d:  ldarg.0
    IL_003e:  ldarg.0
    IL_003f:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0044:  ldstr      "EditMemoryBankDialog.GridPanel"
    IL_0049:  ldc.i4.1
    IL_004a:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.Widget>(string,
                                                                                bool)
    IL_004f:  stfld      class Game.Widget Game.EditMemoryBankDialog::m_gridPanel
    IL_0054:  ldarg.0
    IL_0055:  ldarg.0
    IL_0056:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_005b:  ldstr      "EditMemoryBankDialog.OK"
    IL_0060:  ldc.i4.1
    IL_0061:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0066:  stfld      class Game.ButtonWidget Game.EditMemoryBankDialog::m_okButton
    IL_006b:  ldarg.0
    IL_006c:  ldarg.0
    IL_006d:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0072:  ldstr      "EditMemoryBankDialog.Cancel"
    IL_0077:  ldc.i4.1
    IL_0078:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_007d:  stfld      class Game.ButtonWidget Game.EditMemoryBankDialog::m_cancelButton
    IL_0082:  ldarg.0
    IL_0083:  ldarg.0
    IL_0084:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0089:  ldstr      "EditMemoryBankDialog.SwitchViewButton"
    IL_008e:  ldc.i4.1
    IL_008f:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0094:  stfld      class Game.ButtonWidget Game.EditMemoryBankDialog::m_switchViewButton
    IL_0099:  ldarg.0
    IL_009a:  ldarg.0
    IL_009b:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00a0:  ldstr      "EditMemoryBankDialog.LinearText"
    IL_00a5:  ldc.i4.1
    IL_00a6:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.TextBoxWidget>(string,
                                                                                       bool)
    IL_00ab:  stfld      class Game.TextBoxWidget Game.EditMemoryBankDialog::m_linearTextBox
    IL_00b0:  ldc.i4.0
    IL_00b1:  stloc.1
    IL_00b2:  br.s       IL_00dd

    IL_00b4:  ldarg.0
    IL_00b5:  ldfld      class Game.TextBoxWidget[] Game.EditMemoryBankDialog::m_lineTextBoxes
    IL_00ba:  ldloc.1
    IL_00bb:  ldarg.0
    IL_00bc:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00c1:  ldstr      "EditMemoryBankDialog.Line"
    IL_00c6:  ldloca.s   V_1
    IL_00c8:  call       instance string [System.Runtime]System.Int32::ToString()
    IL_00cd:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_00d2:  ldc.i4.1
    IL_00d3:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.TextBoxWidget>(string,
                                                                                       bool)
    IL_00d8:  stelem.ref
    IL_00d9:  ldloc.1
    IL_00da:  ldc.i4.1
    IL_00db:  add
    IL_00dc:  stloc.1
    IL_00dd:  ldloc.1
    IL_00de:  ldc.i4.s   16
    IL_00e0:  blt.s      IL_00b4

    IL_00e2:  ldarg.0
    IL_00e3:  ldarg.2
    IL_00e4:  stfld      class [System.Runtime]System.Action Game.EditMemoryBankDialog::m_handler
    IL_00e9:  ldarg.0
    IL_00ea:  ldarg.1
    IL_00eb:  stfld      class Game.MemoryBankData Game.EditMemoryBankDialog::m_memoryBankData
    IL_00f0:  ldarg.0
    IL_00f1:  ldarg.0
    IL_00f2:  ldfld      class Game.MemoryBankData Game.EditMemoryBankDialog::m_memoryBankData
    IL_00f7:  callvirt   instance class Game.IEditableItemData Game.MemoryBankData::Copy()
    IL_00fc:  castclass  Game.MemoryBankData
    IL_0101:  stfld      class Game.MemoryBankData Game.EditMemoryBankDialog::m_tmpMemoryBankData
    IL_0106:  ldarg.0
    IL_0107:  ldfld      class Game.Widget Game.EditMemoryBankDialog::m_linearPanel
    IL_010c:  ldc.i4.0
    IL_010d:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0112:  ldc.i4.0
    IL_0113:  stloc.2
    IL_0114:  br.s       IL_0133

    IL_0116:  ldarg.0
    IL_0117:  ldfld      class Game.TextBoxWidget[] Game.EditMemoryBankDialog::m_lineTextBoxes
    IL_011c:  ldloc.2
    IL_011d:  ldelem.ref
    IL_011e:  ldarg.0
    IL_011f:  ldftn      instance void Game.EditMemoryBankDialog::TextBox_TextChanged(class Game.TextBoxWidget)
    IL_0125:  newobj     instance void class [System.Runtime]System.Action`1<class Game.TextBoxWidget>::.ctor(object,
                                                                                                              native int)
    IL_012a:  callvirt   instance void Game.TextBoxWidget::add_TextChanged(class [System.Runtime]System.Action`1<class Game.TextBoxWidget>)
    IL_012f:  ldloc.2
    IL_0130:  ldc.i4.1
    IL_0131:  add
    IL_0132:  stloc.2
    IL_0133:  ldloc.2
    IL_0134:  ldc.i4.s   16
    IL_0136:  blt.s      IL_0116

    IL_0138:  ldarg.0
    IL_0139:  ldfld      class Game.TextBoxWidget Game.EditMemoryBankDialog::m_linearTextBox
    IL_013e:  ldarg.0
    IL_013f:  ldftn      instance void Game.EditMemoryBankDialog::TextBox_TextChanged(class Game.TextBoxWidget)
    IL_0145:  newobj     instance void class [System.Runtime]System.Action`1<class Game.TextBoxWidget>::.ctor(object,
                                                                                                              native int)
    IL_014a:  callvirt   instance void Game.TextBoxWidget::add_TextChanged(class [System.Runtime]System.Action`1<class Game.TextBoxWidget>)
    IL_014f:  ret
  } // end of method EditMemoryBankDialog::.ctor

  .method private hidebysig instance void 
          TextBox_TextChanged(class Game.TextBoxWidget textBox) cil managed
  {
    // 代码大小       114 (0x72)
    .maxstack  3
    .locals init (string V_0,
             int32 V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.EditMemoryBankDialog::m_ignoreTextChanges
    IL_0006:  brtrue.s   IL_0071

    IL_0008:  ldarg.1
    IL_0009:  ldarg.0
    IL_000a:  ldfld      class Game.TextBoxWidget Game.EditMemoryBankDialog::m_linearTextBox
    IL_000f:  bne.un.s   IL_0033

    IL_0011:  ldarg.0
    IL_0012:  newobj     instance void Game.MemoryBankData::.ctor()
    IL_0017:  stfld      class Game.MemoryBankData Game.EditMemoryBankDialog::m_tmpMemoryBankData
    IL_001c:  ldarg.0
    IL_001d:  ldfld      class Game.MemoryBankData Game.EditMemoryBankDialog::m_tmpMemoryBankData
    IL_0022:  ldarg.0
    IL_0023:  ldfld      class Game.TextBoxWidget Game.EditMemoryBankDialog::m_linearTextBox
    IL_0028:  callvirt   instance string Game.TextBoxWidget::get_Text()
    IL_002d:  callvirt   instance void Game.MemoryBankData::LoadString(string)
    IL_0032:  ret

    IL_0033:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0038:  stloc.0
    IL_0039:  ldc.i4.0
    IL_003a:  stloc.1
    IL_003b:  br.s       IL_0055

    IL_003d:  ldloc.0
    IL_003e:  ldarg.0
    IL_003f:  ldfld      class Game.TextBoxWidget[] Game.EditMemoryBankDialog::m_lineTextBoxes
    IL_0044:  ldloc.1
    IL_0045:  ldelem.ref
    IL_0046:  callvirt   instance string Game.TextBoxWidget::get_Text()
    IL_004b:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_0050:  stloc.0
    IL_0051:  ldloc.1
    IL_0052:  ldc.i4.1
    IL_0053:  add
    IL_0054:  stloc.1
    IL_0055:  ldloc.1
    IL_0056:  ldc.i4.s   16
    IL_0058:  blt.s      IL_003d

    IL_005a:  ldarg.0
    IL_005b:  newobj     instance void Game.MemoryBankData::.ctor()
    IL_0060:  stfld      class Game.MemoryBankData Game.EditMemoryBankDialog::m_tmpMemoryBankData
    IL_0065:  ldarg.0
    IL_0066:  ldfld      class Game.MemoryBankData Game.EditMemoryBankDialog::m_tmpMemoryBankData
    IL_006b:  ldloc.0
    IL_006c:  callvirt   instance void Game.MemoryBankData::LoadString(string)
    IL_0071:  ret
  } // end of method EditMemoryBankDialog::TextBox_TextChanged

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       327 (0x147)
    .maxstack  4
    .locals init (string V_0,
             int32 V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  stfld      bool Game.EditMemoryBankDialog::m_ignoreTextChanges
    .try
    {
      IL_0007:  ldarg.0
      IL_0008:  ldfld      class Game.MemoryBankData Game.EditMemoryBankDialog::m_tmpMemoryBankData
      IL_000d:  ldc.i4.0
      IL_000e:  callvirt   instance string Game.MemoryBankData::SaveString(bool)
      IL_0013:  stloc.0
      IL_0014:  ldloc.0
      IL_0015:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
      IL_001a:  ldc.i4     0x100
      IL_001f:  bge.s      IL_003b

      IL_0021:  ldloc.0
      IL_0022:  ldc.i4.s   48
      IL_0024:  ldc.i4     0x100
      IL_0029:  ldloc.0
      IL_002a:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
      IL_002f:  sub
      IL_0030:  newobj     instance void [System.Runtime]System.String::.ctor(char,
                                                                              int32)
      IL_0035:  call       string [System.Runtime]System.String::Concat(string,
                                                                        string)
      IL_003a:  stloc.0
      IL_003b:  ldc.i4.0
      IL_003c:  stloc.1
      IL_003d:  br.s       IL_005c

      IL_003f:  ldarg.0
      IL_0040:  ldfld      class Game.TextBoxWidget[] Game.EditMemoryBankDialog::m_lineTextBoxes
      IL_0045:  ldloc.1
      IL_0046:  ldelem.ref
      IL_0047:  ldloc.0
      IL_0048:  ldloc.1
      IL_0049:  ldc.i4.s   16
      IL_004b:  mul
      IL_004c:  ldc.i4.s   16
      IL_004e:  callvirt   instance string [System.Runtime]System.String::Substring(int32,
                                                                                    int32)
      IL_0053:  callvirt   instance void Game.TextBoxWidget::set_Text(string)
      IL_0058:  ldloc.1
      IL_0059:  ldc.i4.1
      IL_005a:  add
      IL_005b:  stloc.1
      IL_005c:  ldloc.1
      IL_005d:  ldc.i4.s   16
      IL_005f:  blt.s      IL_003f

      IL_0061:  ldarg.0
      IL_0062:  ldfld      class Game.TextBoxWidget Game.EditMemoryBankDialog::m_linearTextBox
      IL_0067:  ldarg.0
      IL_0068:  ldfld      class Game.MemoryBankData Game.EditMemoryBankDialog::m_tmpMemoryBankData
      IL_006d:  ldc.i4.0
      IL_006e:  callvirt   instance string Game.MemoryBankData::SaveString(bool)
      IL_0073:  callvirt   instance void Game.TextBoxWidget::set_Text(string)
      IL_0078:  leave.s    IL_0082

    }  // end .try
    finally
    {
      IL_007a:  ldarg.0
      IL_007b:  ldc.i4.0
      IL_007c:  stfld      bool Game.EditMemoryBankDialog::m_ignoreTextChanges
      IL_0081:  endfinally
    }  // end handler
    IL_0082:  ldarg.0
    IL_0083:  ldfld      class Game.Widget Game.EditMemoryBankDialog::m_linearPanel
    IL_0088:  callvirt   instance bool Game.Widget::get_IsVisible()
    IL_008d:  brfalse.s  IL_00c6

    IL_008f:  ldarg.0
    IL_0090:  ldfld      class Game.ButtonWidget Game.EditMemoryBankDialog::m_switchViewButton
    IL_0095:  ldstr      "Grid"
    IL_009a:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_009f:  ldarg.0
    IL_00a0:  ldfld      class Game.ButtonWidget Game.EditMemoryBankDialog::m_switchViewButton
    IL_00a5:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_00aa:  brfalse.s  IL_00fb

    IL_00ac:  ldarg.0
    IL_00ad:  ldfld      class Game.Widget Game.EditMemoryBankDialog::m_linearPanel
    IL_00b2:  ldc.i4.0
    IL_00b3:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_00b8:  ldarg.0
    IL_00b9:  ldfld      class Game.Widget Game.EditMemoryBankDialog::m_gridPanel
    IL_00be:  ldc.i4.1
    IL_00bf:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_00c4:  br.s       IL_00fb

    IL_00c6:  ldarg.0
    IL_00c7:  ldfld      class Game.ButtonWidget Game.EditMemoryBankDialog::m_switchViewButton
    IL_00cc:  ldstr      "Linear"
    IL_00d1:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_00d6:  ldarg.0
    IL_00d7:  ldfld      class Game.ButtonWidget Game.EditMemoryBankDialog::m_switchViewButton
    IL_00dc:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_00e1:  brfalse.s  IL_00fb

    IL_00e3:  ldarg.0
    IL_00e4:  ldfld      class Game.Widget Game.EditMemoryBankDialog::m_linearPanel
    IL_00e9:  ldc.i4.1
    IL_00ea:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_00ef:  ldarg.0
    IL_00f0:  ldfld      class Game.Widget Game.EditMemoryBankDialog::m_gridPanel
    IL_00f5:  ldc.i4.0
    IL_00f6:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_00fb:  ldarg.0
    IL_00fc:  ldfld      class Game.ButtonWidget Game.EditMemoryBankDialog::m_okButton
    IL_0101:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0106:  brfalse.s  IL_0125

    IL_0108:  ldarg.0
    IL_0109:  ldfld      class Game.MemoryBankData Game.EditMemoryBankDialog::m_memoryBankData
    IL_010e:  ldarg.0
    IL_010f:  ldfld      class Game.MemoryBankData Game.EditMemoryBankDialog::m_tmpMemoryBankData
    IL_0114:  ldfld      class [Engine]Engine.DynamicArray`1<uint8> Game.MemoryBankData::Data
    IL_0119:  stfld      class [Engine]Engine.DynamicArray`1<uint8> Game.MemoryBankData::Data
    IL_011e:  ldarg.0
    IL_011f:  ldc.i4.1
    IL_0120:  call       instance void Game.EditMemoryBankDialog::Dismiss(bool)
    IL_0125:  ldarg.0
    IL_0126:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_012b:  callvirt   instance bool Game.WidgetInput::get_Cancel()
    IL_0130:  brtrue.s   IL_013f

    IL_0132:  ldarg.0
    IL_0133:  ldfld      class Game.ButtonWidget Game.EditMemoryBankDialog::m_cancelButton
    IL_0138:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_013d:  brfalse.s  IL_0146

    IL_013f:  ldarg.0
    IL_0140:  ldc.i4.0
    IL_0141:  call       instance void Game.EditMemoryBankDialog::Dismiss(bool)
    IL_0146:  ret
  } // end of method EditMemoryBankDialog::Update

  .method private hidebysig instance void 
          Dismiss(bool result) cil managed
  {
    // 代码大小       31 (0x1f)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class [System.Runtime]System.Action Game.EditMemoryBankDialog::m_handler
    IL_000c:  ldnull
    IL_000d:  cgt.un
    IL_000f:  ldarg.1
    IL_0010:  and
    IL_0011:  brfalse.s  IL_001e

    IL_0013:  ldarg.0
    IL_0014:  ldfld      class [System.Runtime]System.Action Game.EditMemoryBankDialog::m_handler
    IL_0019:  callvirt   instance void [System.Runtime]System.Action::Invoke()
    IL_001e:  ret
  } // end of method EditMemoryBankDialog::Dismiss

} // end of class Game.EditMemoryBankDialog