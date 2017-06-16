.class public auto ansi beforefieldinit Game.EditTruthTableDialog
       extends Game.Dialog
{
  .field private class [System.Runtime]System.Action`1<bool> m_handler
  .field private class Game.Widget m_linearPanel
  .field private class Game.Widget m_gridPanel
  .field private class Game.ButtonWidget m_okButton
  .field private class Game.ButtonWidget m_cancelButton
  .field private class Game.ButtonWidget m_switchViewButton
  .field private class Game.CheckboxWidget[] m_lineCheckboxes
  .field private class Game.TextBoxWidget m_linearTextBox
  .field private class Game.TruthTableData m_truthTableData
  .field private class Game.TruthTableData m_tmpTruthTableData
  .field private bool m_ignoreTextChanges
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.TruthTableData truthTableData,
                               class [System.Runtime]System.Action`1<bool> 'handler') cil managed
  {
    // 代码大小       344 (0x158)
    .maxstack  5
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0,
             int32 V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.s   16
    IL_0003:  newarr     Game.CheckboxWidget
    IL_0008:  stfld      class Game.CheckboxWidget[] Game.EditTruthTableDialog::m_lineCheckboxes
    IL_000d:  ldarg.0
    IL_000e:  call       instance void Game.Dialog::.ctor()
    IL_0013:  ldstr      "Dialogs/EditTruthTableDialog"
    IL_0018:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_001d:  stloc.0
    IL_001e:  ldarg.0
    IL_001f:  ldarg.0
    IL_0020:  ldloc.0
    IL_0021:  ldnull
    IL_0022:  call       class Game.Widget Game.WidgetsManager::LoadWidget(object,
                                                                           class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                           class Game.ContainerWidget)
    IL_0027:  castclass  Game.ContainerWidget
    IL_002c:  call       instance void Game.Dialog::set_DialogWidget(class Game.ContainerWidget)
    IL_0031:  ldarg.0
    IL_0032:  ldarg.0
    IL_0033:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_0038:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_003d:  ldstr      "EditTruthTableDialog.LinearPanel"
    IL_0042:  ldc.i4.1
    IL_0043:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.Widget>(string,
                                                                                     bool)
    IL_0048:  stfld      class Game.Widget Game.EditTruthTableDialog::m_linearPanel
    IL_004d:  ldarg.0
    IL_004e:  ldarg.0
    IL_004f:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_0054:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0059:  ldstr      "EditTruthTableDialog.GridPanel"
    IL_005e:  ldc.i4.1
    IL_005f:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.Widget>(string,
                                                                                     bool)
    IL_0064:  stfld      class Game.Widget Game.EditTruthTableDialog::m_gridPanel
    IL_0069:  ldarg.0
    IL_006a:  ldarg.0
    IL_006b:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_0070:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0075:  ldstr      "EditTruthTableDialog.OK"
    IL_007a:  ldc.i4.1
    IL_007b:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_0080:  stfld      class Game.ButtonWidget Game.EditTruthTableDialog::m_okButton
    IL_0085:  ldarg.0
    IL_0086:  ldarg.0
    IL_0087:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_008c:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0091:  ldstr      "EditTruthTableDialog.Cancel"
    IL_0096:  ldc.i4.1
    IL_0097:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_009c:  stfld      class Game.ButtonWidget Game.EditTruthTableDialog::m_cancelButton
    IL_00a1:  ldarg.0
    IL_00a2:  ldarg.0
    IL_00a3:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_00a8:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00ad:  ldstr      "EditTruthTableDialog.SwitchViewButton"
    IL_00b2:  ldc.i4.1
    IL_00b3:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_00b8:  stfld      class Game.ButtonWidget Game.EditTruthTableDialog::m_switchViewButton
    IL_00bd:  ldarg.0
    IL_00be:  ldarg.0
    IL_00bf:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_00c4:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00c9:  ldstr      "EditTruthTableDialog.LinearText"
    IL_00ce:  ldc.i4.1
    IL_00cf:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.TextBoxWidget>(string,
                                                                                            bool)
    IL_00d4:  stfld      class Game.TextBoxWidget Game.EditTruthTableDialog::m_linearTextBox
    IL_00d9:  ldc.i4.0
    IL_00da:  stloc.1
    IL_00db:  br.s       IL_010b

    IL_00dd:  ldarg.0
    IL_00de:  ldfld      class Game.CheckboxWidget[] Game.EditTruthTableDialog::m_lineCheckboxes
    IL_00e3:  ldloc.1
    IL_00e4:  ldarg.0
    IL_00e5:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_00ea:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00ef:  ldstr      "EditTruthTableDialog.Line"
    IL_00f4:  ldloca.s   V_1
    IL_00f6:  call       instance string [System.Runtime]System.Int32::ToString()
    IL_00fb:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_0100:  ldc.i4.1
    IL_0101:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.CheckboxWidget>(string,
                                                                                             bool)
    IL_0106:  stelem.ref
    IL_0107:  ldloc.1
    IL_0108:  ldc.i4.1
    IL_0109:  add
    IL_010a:  stloc.1
    IL_010b:  ldloc.1
    IL_010c:  ldc.i4.s   16
    IL_010e:  blt.s      IL_00dd

    IL_0110:  ldarg.0
    IL_0111:  ldarg.2
    IL_0112:  stfld      class [System.Runtime]System.Action`1<bool> Game.EditTruthTableDialog::m_handler
    IL_0117:  ldarg.0
    IL_0118:  ldarg.1
    IL_0119:  stfld      class Game.TruthTableData Game.EditTruthTableDialog::m_truthTableData
    IL_011e:  ldarg.0
    IL_011f:  ldarg.0
    IL_0120:  ldfld      class Game.TruthTableData Game.EditTruthTableDialog::m_truthTableData
    IL_0125:  callvirt   instance class Game.IEditableItemData Game.TruthTableData::Copy()
    IL_012a:  castclass  Game.TruthTableData
    IL_012f:  stfld      class Game.TruthTableData Game.EditTruthTableDialog::m_tmpTruthTableData
    IL_0134:  ldarg.0
    IL_0135:  ldfld      class Game.Widget Game.EditTruthTableDialog::m_linearPanel
    IL_013a:  ldc.i4.0
    IL_013b:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0140:  ldarg.0
    IL_0141:  ldfld      class Game.TextBoxWidget Game.EditTruthTableDialog::m_linearTextBox
    IL_0146:  ldarg.0
    IL_0147:  ldftn      instance void Game.EditTruthTableDialog::'<.ctor>b__11_0'(class Game.TextBoxWidget)
    IL_014d:  newobj     instance void class [System.Runtime]System.Action`1<class Game.TextBoxWidget>::.ctor(object,
                                                                                                              native int)
    IL_0152:  callvirt   instance void Game.TextBoxWidget::add_TextChanged(class [System.Runtime]System.Action`1<class Game.TextBoxWidget>)
    IL_0157:  ret
  } // end of method EditTruthTableDialog::.ctor

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       338 (0x152)
    .maxstack  4
    .locals init (int32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  stfld      bool Game.EditTruthTableDialog::m_ignoreTextChanges
    .try
    {
      IL_0007:  ldarg.0
      IL_0008:  ldfld      class Game.TextBoxWidget Game.EditTruthTableDialog::m_linearTextBox
      IL_000d:  ldarg.0
      IL_000e:  ldfld      class Game.TruthTableData Game.EditTruthTableDialog::m_tmpTruthTableData
      IL_0013:  callvirt   instance string Game.TruthTableData::SaveBinaryString()
      IL_0018:  callvirt   instance void Game.TextBoxWidget::set_Text(string)
      IL_001d:  leave.s    IL_0027

    }  // end .try
    finally
    {
      IL_001f:  ldarg.0
      IL_0020:  ldc.i4.0
      IL_0021:  stfld      bool Game.EditTruthTableDialog::m_ignoreTextChanges
      IL_0026:  endfinally
    }  // end handler
    IL_0027:  ldc.i4.0
    IL_0028:  stloc.0
    IL_0029:  br.s       IL_007d

    IL_002b:  ldarg.0
    IL_002c:  ldfld      class Game.CheckboxWidget[] Game.EditTruthTableDialog::m_lineCheckboxes
    IL_0031:  ldloc.0
    IL_0032:  ldelem.ref
    IL_0033:  callvirt   instance bool Game.CheckboxWidget::get_IsClicked()
    IL_0038:  brfalse.s  IL_005c

    IL_003a:  ldarg.0
    IL_003b:  ldfld      class Game.TruthTableData Game.EditTruthTableDialog::m_tmpTruthTableData
    IL_0040:  ldfld      uint8[] Game.TruthTableData::Data
    IL_0045:  ldloc.0
    IL_0046:  ldarg.0
    IL_0047:  ldfld      class Game.TruthTableData Game.EditTruthTableDialog::m_tmpTruthTableData
    IL_004c:  ldfld      uint8[] Game.TruthTableData::Data
    IL_0051:  ldloc.0
    IL_0052:  ldelem.u1
    IL_0053:  brfalse.s  IL_0058

    IL_0055:  ldc.i4.0
    IL_0056:  br.s       IL_005a

    IL_0058:  ldc.i4.s   15
    IL_005a:  conv.u1
    IL_005b:  stelem.i1
    IL_005c:  ldarg.0
    IL_005d:  ldfld      class Game.CheckboxWidget[] Game.EditTruthTableDialog::m_lineCheckboxes
    IL_0062:  ldloc.0
    IL_0063:  ldelem.ref
    IL_0064:  ldarg.0
    IL_0065:  ldfld      class Game.TruthTableData Game.EditTruthTableDialog::m_tmpTruthTableData
    IL_006a:  ldfld      uint8[] Game.TruthTableData::Data
    IL_006f:  ldloc.0
    IL_0070:  ldelem.u1
    IL_0071:  ldc.i4.0
    IL_0072:  cgt
    IL_0074:  callvirt   instance void Game.CheckboxWidget::set_IsChecked(bool)
    IL_0079:  ldloc.0
    IL_007a:  ldc.i4.1
    IL_007b:  add
    IL_007c:  stloc.0
    IL_007d:  ldloc.0
    IL_007e:  ldc.i4.s   16
    IL_0080:  blt.s      IL_002b

    IL_0082:  ldarg.0
    IL_0083:  ldfld      class Game.Widget Game.EditTruthTableDialog::m_linearPanel
    IL_0088:  callvirt   instance bool Game.Widget::get_IsVisible()
    IL_008d:  brfalse.s  IL_00c6

    IL_008f:  ldarg.0
    IL_0090:  ldfld      class Game.ButtonWidget Game.EditTruthTableDialog::m_switchViewButton
    IL_0095:  ldstr      "Table"
    IL_009a:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_009f:  ldarg.0
    IL_00a0:  ldfld      class Game.ButtonWidget Game.EditTruthTableDialog::m_switchViewButton
    IL_00a5:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_00aa:  brfalse.s  IL_00fb

    IL_00ac:  ldarg.0
    IL_00ad:  ldfld      class Game.Widget Game.EditTruthTableDialog::m_linearPanel
    IL_00b2:  ldc.i4.0
    IL_00b3:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_00b8:  ldarg.0
    IL_00b9:  ldfld      class Game.Widget Game.EditTruthTableDialog::m_gridPanel
    IL_00be:  ldc.i4.1
    IL_00bf:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_00c4:  br.s       IL_00fb

    IL_00c6:  ldarg.0
    IL_00c7:  ldfld      class Game.ButtonWidget Game.EditTruthTableDialog::m_switchViewButton
    IL_00cc:  ldstr      "Linear"
    IL_00d1:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_00d6:  ldarg.0
    IL_00d7:  ldfld      class Game.ButtonWidget Game.EditTruthTableDialog::m_switchViewButton
    IL_00dc:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_00e1:  brfalse.s  IL_00fb

    IL_00e3:  ldarg.0
    IL_00e4:  ldfld      class Game.Widget Game.EditTruthTableDialog::m_linearPanel
    IL_00e9:  ldc.i4.1
    IL_00ea:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_00ef:  ldarg.0
    IL_00f0:  ldfld      class Game.Widget Game.EditTruthTableDialog::m_gridPanel
    IL_00f5:  ldc.i4.0
    IL_00f6:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_00fb:  ldarg.0
    IL_00fc:  ldfld      class Game.ButtonWidget Game.EditTruthTableDialog::m_okButton
    IL_0101:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0106:  brfalse.s  IL_0125

    IL_0108:  ldarg.0
    IL_0109:  ldfld      class Game.TruthTableData Game.EditTruthTableDialog::m_truthTableData
    IL_010e:  ldarg.0
    IL_010f:  ldfld      class Game.TruthTableData Game.EditTruthTableDialog::m_tmpTruthTableData
    IL_0114:  ldfld      uint8[] Game.TruthTableData::Data
    IL_0119:  stfld      uint8[] Game.TruthTableData::Data
    IL_011e:  ldarg.0
    IL_011f:  ldc.i4.1
    IL_0120:  call       instance void Game.EditTruthTableDialog::Dismiss(bool)
    IL_0125:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_012a:  ldfld      bool Game.InputState::Back
    IL_012f:  brtrue.s   IL_014a

    IL_0131:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_0136:  ldfld      bool Game.InputState::B
    IL_013b:  brtrue.s   IL_014a

    IL_013d:  ldarg.0
    IL_013e:  ldfld      class Game.ButtonWidget Game.EditTruthTableDialog::m_cancelButton
    IL_0143:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0148:  brfalse.s  IL_0151

    IL_014a:  ldarg.0
    IL_014b:  ldc.i4.0
    IL_014c:  call       instance void Game.EditTruthTableDialog::Dismiss(bool)
    IL_0151:  ret
  } // end of method EditTruthTableDialog::Update

  .method private hidebysig instance void 
          Dismiss(bool result) cil managed
  {
    // 代码大小       27 (0x1b)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class [System.Runtime]System.Action`1<bool> Game.EditTruthTableDialog::m_handler
    IL_000c:  brfalse.s  IL_001a

    IL_000e:  ldarg.0
    IL_000f:  ldfld      class [System.Runtime]System.Action`1<bool> Game.EditTruthTableDialog::m_handler
    IL_0014:  ldarg.1
    IL_0015:  callvirt   instance void class [System.Runtime]System.Action`1<bool>::Invoke(!0)
    IL_001a:  ret
  } // end of method EditTruthTableDialog::Dismiss

  .method private hidebysig instance void 
          '<.ctor>b__11_0'(class Game.TextBoxWidget '<obj>') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       42 (0x2a)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.EditTruthTableDialog::m_ignoreTextChanges
    IL_0006:  brtrue.s   IL_0029

    IL_0008:  ldarg.0
    IL_0009:  newobj     instance void Game.TruthTableData::.ctor()
    IL_000e:  stfld      class Game.TruthTableData Game.EditTruthTableDialog::m_tmpTruthTableData
    IL_0013:  ldarg.0
    IL_0014:  ldfld      class Game.TruthTableData Game.EditTruthTableDialog::m_tmpTruthTableData
    IL_0019:  ldarg.0
    IL_001a:  ldfld      class Game.TextBoxWidget Game.EditTruthTableDialog::m_linearTextBox
    IL_001f:  callvirt   instance string Game.TextBoxWidget::get_Text()
    IL_0024:  callvirt   instance void Game.TruthTableData::LoadBinaryString(string)
    IL_0029:  ret
  } // end of method EditTruthTableDialog::'<.ctor>b__11_0'

} // end of class Game.EditTruthTableDialog