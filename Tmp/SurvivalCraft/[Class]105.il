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
    // 代码大小       298 (0x12a)
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
    IL_0021:  call       void Game.WidgetsManager::LoadWidgetContents(class Game.Widget,
                                                                      object,
                                                                      class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_0026:  ldarg.0
    IL_0027:  ldarg.0
    IL_0028:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_002d:  ldstr      "EditTruthTableDialog.LinearPanel"
    IL_0032:  ldc.i4.1
    IL_0033:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.Widget>(string,
                                                                                bool)
    IL_0038:  stfld      class Game.Widget Game.EditTruthTableDialog::m_linearPanel
    IL_003d:  ldarg.0
    IL_003e:  ldarg.0
    IL_003f:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0044:  ldstr      "EditTruthTableDialog.GridPanel"
    IL_0049:  ldc.i4.1
    IL_004a:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.Widget>(string,
                                                                                bool)
    IL_004f:  stfld      class Game.Widget Game.EditTruthTableDialog::m_gridPanel
    IL_0054:  ldarg.0
    IL_0055:  ldarg.0
    IL_0056:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_005b:  ldstr      "EditTruthTableDialog.OK"
    IL_0060:  ldc.i4.1
    IL_0061:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0066:  stfld      class Game.ButtonWidget Game.EditTruthTableDialog::m_okButton
    IL_006b:  ldarg.0
    IL_006c:  ldarg.0
    IL_006d:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0072:  ldstr      "EditTruthTableDialog.Cancel"
    IL_0077:  ldc.i4.1
    IL_0078:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_007d:  stfld      class Game.ButtonWidget Game.EditTruthTableDialog::m_cancelButton
    IL_0082:  ldarg.0
    IL_0083:  ldarg.0
    IL_0084:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0089:  ldstr      "EditTruthTableDialog.SwitchViewButton"
    IL_008e:  ldc.i4.1
    IL_008f:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0094:  stfld      class Game.ButtonWidget Game.EditTruthTableDialog::m_switchViewButton
    IL_0099:  ldarg.0
    IL_009a:  ldarg.0
    IL_009b:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00a0:  ldstr      "EditTruthTableDialog.LinearText"
    IL_00a5:  ldc.i4.1
    IL_00a6:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.TextBoxWidget>(string,
                                                                                       bool)
    IL_00ab:  stfld      class Game.TextBoxWidget Game.EditTruthTableDialog::m_linearTextBox
    IL_00b0:  ldc.i4.0
    IL_00b1:  stloc.1
    IL_00b2:  br.s       IL_00dd

    IL_00b4:  ldarg.0
    IL_00b5:  ldfld      class Game.CheckboxWidget[] Game.EditTruthTableDialog::m_lineCheckboxes
    IL_00ba:  ldloc.1
    IL_00bb:  ldarg.0
    IL_00bc:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00c1:  ldstr      "EditTruthTableDialog.Line"
    IL_00c6:  ldloca.s   V_1
    IL_00c8:  call       instance string [System.Runtime]System.Int32::ToString()
    IL_00cd:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_00d2:  ldc.i4.1
    IL_00d3:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.CheckboxWidget>(string,
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
    IL_00e4:  stfld      class [System.Runtime]System.Action`1<bool> Game.EditTruthTableDialog::m_handler
    IL_00e9:  ldarg.0
    IL_00ea:  ldarg.1
    IL_00eb:  stfld      class Game.TruthTableData Game.EditTruthTableDialog::m_truthTableData
    IL_00f0:  ldarg.0
    IL_00f1:  ldarg.0
    IL_00f2:  ldfld      class Game.TruthTableData Game.EditTruthTableDialog::m_truthTableData
    IL_00f7:  callvirt   instance class Game.IEditableItemData Game.TruthTableData::Copy()
    IL_00fc:  castclass  Game.TruthTableData
    IL_0101:  stfld      class Game.TruthTableData Game.EditTruthTableDialog::m_tmpTruthTableData
    IL_0106:  ldarg.0
    IL_0107:  ldfld      class Game.Widget Game.EditTruthTableDialog::m_linearPanel
    IL_010c:  ldc.i4.0
    IL_010d:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0112:  ldarg.0
    IL_0113:  ldfld      class Game.TextBoxWidget Game.EditTruthTableDialog::m_linearTextBox
    IL_0118:  ldarg.0
    IL_0119:  ldftn      instance void Game.EditTruthTableDialog::'<.ctor>b__11_0'(class Game.TextBoxWidget)
    IL_011f:  newobj     instance void class [System.Runtime]System.Action`1<class Game.TextBoxWidget>::.ctor(object,
                                                                                                              native int)
    IL_0124:  callvirt   instance void Game.TextBoxWidget::add_TextChanged(class [System.Runtime]System.Action`1<class Game.TextBoxWidget>)
    IL_0129:  ret
  } // end of method EditTruthTableDialog::.ctor

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       327 (0x147)
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
    IL_0125:  ldarg.0
    IL_0126:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_012b:  callvirt   instance bool Game.WidgetInput::get_Cancel()
    IL_0130:  brtrue.s   IL_013f

    IL_0132:  ldarg.0
    IL_0133:  ldfld      class Game.ButtonWidget Game.EditTruthTableDialog::m_cancelButton
    IL_0138:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_013d:  brfalse.s  IL_0146

    IL_013f:  ldarg.0
    IL_0140:  ldc.i4.0
    IL_0141:  call       instance void Game.EditTruthTableDialog::Dismiss(bool)
    IL_0146:  ret
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