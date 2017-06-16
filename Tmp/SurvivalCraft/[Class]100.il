.class public auto ansi beforefieldinit Game.MessageDialog
       extends Game.Dialog
{
  .field private class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton> m_handler
  .field private class Game.LabelWidget m_largeLabelWidget
  .field private class Game.LabelWidget m_smallLabelWidget
  .field private class Game.ButtonWidget m_button1Widget
  .field private class Game.ButtonWidget m_button2Widget
  .field private bool '<AutoHide>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string largeMessage,
                               string smallMessage,
                               string button1Text,
                               string button2Text,
                               class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton> 'handler') cil managed
  {
    // 代码大小       367 (0x16f)
    .maxstack  4
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.Dialog::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldarg.s    'handler'
    IL_0009:  stfld      class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton> Game.MessageDialog::m_handler
    IL_000e:  ldstr      "Dialogs/MessageDialog"
    IL_0013:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_0018:  stloc.0
    IL_0019:  ldarg.0
    IL_001a:  ldarg.0
    IL_001b:  ldloc.0
    IL_001c:  ldnull
    IL_001d:  call       class Game.Widget Game.WidgetsManager::LoadWidget(object,
                                                                           class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                           class Game.ContainerWidget)
    IL_0022:  castclass  Game.ContainerWidget
    IL_0027:  call       instance void Game.Dialog::set_DialogWidget(class Game.ContainerWidget)
    IL_002c:  ldarg.0
    IL_002d:  ldarg.0
    IL_002e:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_0033:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0038:  ldstr      "MessageDialog.LargeLabel"
    IL_003d:  ldc.i4.1
    IL_003e:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_0043:  stfld      class Game.LabelWidget Game.MessageDialog::m_largeLabelWidget
    IL_0048:  ldarg.0
    IL_0049:  ldarg.0
    IL_004a:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_004f:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0054:  ldstr      "MessageDialog.SmallLabel"
    IL_0059:  ldc.i4.1
    IL_005a:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_005f:  stfld      class Game.LabelWidget Game.MessageDialog::m_smallLabelWidget
    IL_0064:  ldarg.0
    IL_0065:  ldarg.0
    IL_0066:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_006b:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0070:  ldstr      "MessageDialog.Button1"
    IL_0075:  ldc.i4.1
    IL_0076:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_007b:  stfld      class Game.ButtonWidget Game.MessageDialog::m_button1Widget
    IL_0080:  ldarg.0
    IL_0081:  ldarg.0
    IL_0082:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_0087:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_008c:  ldstr      "MessageDialog.Button2"
    IL_0091:  ldc.i4.1
    IL_0092:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_0097:  stfld      class Game.ButtonWidget Game.MessageDialog::m_button2Widget
    IL_009c:  ldarg.0
    IL_009d:  ldfld      class Game.LabelWidget Game.MessageDialog::m_largeLabelWidget
    IL_00a2:  ldarg.1
    IL_00a3:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_00a8:  ldc.i4.0
    IL_00a9:  ceq
    IL_00ab:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_00b0:  ldarg.0
    IL_00b1:  ldfld      class Game.LabelWidget Game.MessageDialog::m_largeLabelWidget
    IL_00b6:  ldarg.1
    IL_00b7:  dup
    IL_00b8:  brtrue.s   IL_00c0

    IL_00ba:  pop
    IL_00bb:  ldsfld     string [System.Runtime]System.String::Empty
    IL_00c0:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_00c5:  ldarg.0
    IL_00c6:  ldfld      class Game.LabelWidget Game.MessageDialog::m_smallLabelWidget
    IL_00cb:  ldarg.2
    IL_00cc:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_00d1:  ldc.i4.0
    IL_00d2:  ceq
    IL_00d4:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_00d9:  ldarg.0
    IL_00da:  ldfld      class Game.LabelWidget Game.MessageDialog::m_smallLabelWidget
    IL_00df:  ldarg.2
    IL_00e0:  dup
    IL_00e1:  brtrue.s   IL_00e9

    IL_00e3:  pop
    IL_00e4:  ldsfld     string [System.Runtime]System.String::Empty
    IL_00e9:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_00ee:  ldarg.0
    IL_00ef:  ldfld      class Game.ButtonWidget Game.MessageDialog::m_button1Widget
    IL_00f4:  ldarg.3
    IL_00f5:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_00fa:  ldc.i4.0
    IL_00fb:  ceq
    IL_00fd:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0102:  ldarg.0
    IL_0103:  ldfld      class Game.ButtonWidget Game.MessageDialog::m_button1Widget
    IL_0108:  ldarg.3
    IL_0109:  dup
    IL_010a:  brtrue.s   IL_0112

    IL_010c:  pop
    IL_010d:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0112:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_0117:  ldarg.0
    IL_0118:  ldfld      class Game.ButtonWidget Game.MessageDialog::m_button2Widget
    IL_011d:  ldarg.s    button2Text
    IL_011f:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_0124:  ldc.i4.0
    IL_0125:  ceq
    IL_0127:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_012c:  ldarg.0
    IL_012d:  ldfld      class Game.ButtonWidget Game.MessageDialog::m_button2Widget
    IL_0132:  ldarg.s    button2Text
    IL_0134:  dup
    IL_0135:  brtrue.s   IL_013d

    IL_0137:  pop
    IL_0138:  ldsfld     string [System.Runtime]System.String::Empty
    IL_013d:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_0142:  ldarg.0
    IL_0143:  ldfld      class Game.ButtonWidget Game.MessageDialog::m_button1Widget
    IL_0148:  callvirt   instance bool Game.Widget::get_IsVisible()
    IL_014d:  brtrue.s   IL_0167

    IL_014f:  ldarg.0
    IL_0150:  ldfld      class Game.ButtonWidget Game.MessageDialog::m_button2Widget
    IL_0155:  callvirt   instance bool Game.Widget::get_IsVisible()
    IL_015a:  brtrue.s   IL_0167

    IL_015c:  ldstr      "MessageDialog must have at least one button."
    IL_0161:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0166:  throw

    IL_0167:  ldarg.0
    IL_0168:  ldc.i4.1
    IL_0169:  call       instance void Game.MessageDialog::set_AutoHide(bool)
    IL_016e:  ret
  } // end of method MessageDialog::.ctor

  .method public hidebysig specialname instance bool 
          get_AutoHide() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.MessageDialog::'<AutoHide>k__BackingField'
    IL_0006:  ret
  } // end of method MessageDialog::get_AutoHide

  .method public hidebysig specialname instance void 
          set_AutoHide(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.MessageDialog::'<AutoHide>k__BackingField'
    IL_0007:  ret
  } // end of method MessageDialog::set_AutoHide

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       115 (0x73)
    .maxstack  2
    IL_0000:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_0005:  ldfld      bool Game.InputState::Back
    IL_000a:  brtrue.s   IL_0018

    IL_000c:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_0011:  ldfld      bool Game.InputState::B
    IL_0016:  brfalse.s  IL_0035

    IL_0018:  ldarg.0
    IL_0019:  ldfld      class Game.ButtonWidget Game.MessageDialog::m_button2Widget
    IL_001e:  callvirt   instance bool Game.Widget::get_IsVisible()
    IL_0023:  brfalse.s  IL_002d

    IL_0025:  ldarg.0
    IL_0026:  ldc.i4.1
    IL_0027:  call       instance void Game.MessageDialog::Dismiss(valuetype Game.MessageDialogButton)
    IL_002c:  ret

    IL_002d:  ldarg.0
    IL_002e:  ldc.i4.0
    IL_002f:  call       instance void Game.MessageDialog::Dismiss(valuetype Game.MessageDialogButton)
    IL_0034:  ret

    IL_0035:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_003a:  ldfld      bool Game.InputState::A
    IL_003f:  brfalse.s  IL_0049

    IL_0041:  ldarg.0
    IL_0042:  ldc.i4.0
    IL_0043:  call       instance void Game.MessageDialog::Dismiss(valuetype Game.MessageDialogButton)
    IL_0048:  ret

    IL_0049:  ldarg.0
    IL_004a:  ldfld      class Game.ButtonWidget Game.MessageDialog::m_button1Widget
    IL_004f:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0054:  brfalse.s  IL_005e

    IL_0056:  ldarg.0
    IL_0057:  ldc.i4.0
    IL_0058:  call       instance void Game.MessageDialog::Dismiss(valuetype Game.MessageDialogButton)
    IL_005d:  ret

    IL_005e:  ldarg.0
    IL_005f:  ldfld      class Game.ButtonWidget Game.MessageDialog::m_button2Widget
    IL_0064:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0069:  brfalse.s  IL_0072

    IL_006b:  ldarg.0
    IL_006c:  ldc.i4.1
    IL_006d:  call       instance void Game.MessageDialog::Dismiss(valuetype Game.MessageDialogButton)
    IL_0072:  ret
  } // end of method MessageDialog::Update

  .method private hidebysig instance void 
          Dismiss(valuetype Game.MessageDialogButton button) cil managed
  {
    // 代码大小       35 (0x23)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance bool Game.MessageDialog::get_AutoHide()
    IL_0006:  brfalse.s  IL_000e

    IL_0008:  ldarg.0
    IL_0009:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
    IL_000e:  ldarg.0
    IL_000f:  ldfld      class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton> Game.MessageDialog::m_handler
    IL_0014:  brfalse.s  IL_0022

    IL_0016:  ldarg.0
    IL_0017:  ldfld      class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton> Game.MessageDialog::m_handler
    IL_001c:  ldarg.1
    IL_001d:  callvirt   instance void class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>::Invoke(!0)
    IL_0022:  ret
  } // end of method MessageDialog::Dismiss

  .property instance bool AutoHide()
  {
    .get instance bool Game.MessageDialog::get_AutoHide()
    .set instance void Game.MessageDialog::set_AutoHide(bool)
  } // end of property MessageDialog::AutoHide
} // end of class Game.MessageDialog