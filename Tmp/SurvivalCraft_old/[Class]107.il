.class public auto ansi beforefieldinit Game.TextBoxDialog
       extends Game.Dialog
{
  .field private class [System.Runtime]System.Action`1<string> m_handler
  .field private class Game.LabelWidget m_titleWidget
  .field private class Game.TextBoxWidget m_textBoxWidget
  .field private class Game.ButtonWidget m_okButtonWidget
  .field private class Game.ButtonWidget m_cancelButtonWidget
  .field private bool '<AutoHide>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string title,
                               string text,
                               int32 maximumLength,
                               class [System.Runtime]System.Action`1<string> 'handler') cil managed
  {
    // 代码大小       296 (0x128)
    .maxstack  4
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.Dialog::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldarg.s    'handler'
    IL_0009:  stfld      class [System.Runtime]System.Action`1<string> Game.TextBoxDialog::m_handler
    IL_000e:  ldstr      "Dialogs/TextBoxDialog"
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
    IL_0038:  ldstr      "TextBoxDialog.Title"
    IL_003d:  ldc.i4.1
    IL_003e:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_0043:  stfld      class Game.LabelWidget Game.TextBoxDialog::m_titleWidget
    IL_0048:  ldarg.0
    IL_0049:  ldarg.0
    IL_004a:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_004f:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0054:  ldstr      "TextBoxDialog.TextBox"
    IL_0059:  ldc.i4.1
    IL_005a:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.TextBoxWidget>(string,
                                                                                            bool)
    IL_005f:  stfld      class Game.TextBoxWidget Game.TextBoxDialog::m_textBoxWidget
    IL_0064:  ldarg.0
    IL_0065:  ldarg.0
    IL_0066:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_006b:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0070:  ldstr      "TextBoxDialog.OkButton"
    IL_0075:  ldc.i4.1
    IL_0076:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_007b:  stfld      class Game.ButtonWidget Game.TextBoxDialog::m_okButtonWidget
    IL_0080:  ldarg.0
    IL_0081:  ldarg.0
    IL_0082:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_0087:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_008c:  ldstr      "TextBoxDialog.CancelButton"
    IL_0091:  ldc.i4.1
    IL_0092:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_0097:  stfld      class Game.ButtonWidget Game.TextBoxDialog::m_cancelButtonWidget
    IL_009c:  ldarg.0
    IL_009d:  ldfld      class Game.LabelWidget Game.TextBoxDialog::m_titleWidget
    IL_00a2:  ldarg.1
    IL_00a3:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_00a8:  ldc.i4.0
    IL_00a9:  ceq
    IL_00ab:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_00b0:  ldarg.0
    IL_00b1:  ldfld      class Game.LabelWidget Game.TextBoxDialog::m_titleWidget
    IL_00b6:  ldarg.1
    IL_00b7:  dup
    IL_00b8:  brtrue.s   IL_00c0

    IL_00ba:  pop
    IL_00bb:  ldsfld     string [System.Runtime]System.String::Empty
    IL_00c0:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_00c5:  ldarg.0
    IL_00c6:  ldfld      class Game.TextBoxWidget Game.TextBoxDialog::m_textBoxWidget
    IL_00cb:  ldarg.3
    IL_00cc:  callvirt   instance void Game.TextBoxWidget::set_MaximumLength(int32)
    IL_00d1:  ldarg.0
    IL_00d2:  ldfld      class Game.TextBoxWidget Game.TextBoxDialog::m_textBoxWidget
    IL_00d7:  ldarg.2
    IL_00d8:  dup
    IL_00d9:  brtrue.s   IL_00e1

    IL_00db:  pop
    IL_00dc:  ldsfld     string [System.Runtime]System.String::Empty
    IL_00e1:  callvirt   instance void Game.TextBoxWidget::set_Text(string)
    IL_00e6:  ldarg.0
    IL_00e7:  ldfld      class Game.TextBoxWidget Game.TextBoxDialog::m_textBoxWidget
    IL_00ec:  ldc.i4.1
    IL_00ed:  callvirt   instance void Game.TextBoxWidget::set_HasFocus(bool)
    IL_00f2:  ldarg.0
    IL_00f3:  ldfld      class Game.TextBoxWidget Game.TextBoxDialog::m_textBoxWidget
    IL_00f8:  ldarg.0
    IL_00f9:  ldftn      instance void Game.TextBoxDialog::'<.ctor>b__5_0'(class Game.TextBoxWidget)
    IL_00ff:  newobj     instance void class [System.Runtime]System.Action`1<class Game.TextBoxWidget>::.ctor(object,
                                                                                                              native int)
    IL_0104:  callvirt   instance void Game.TextBoxWidget::add_Enter(class [System.Runtime]System.Action`1<class Game.TextBoxWidget>)
    IL_0109:  ldarg.0
    IL_010a:  ldfld      class Game.TextBoxWidget Game.TextBoxDialog::m_textBoxWidget
    IL_010f:  ldarg.0
    IL_0110:  ldftn      instance void Game.TextBoxDialog::'<.ctor>b__5_1'(class Game.TextBoxWidget)
    IL_0116:  newobj     instance void class [System.Runtime]System.Action`1<class Game.TextBoxWidget>::.ctor(object,
                                                                                                              native int)
    IL_011b:  callvirt   instance void Game.TextBoxWidget::add_Escape(class [System.Runtime]System.Action`1<class Game.TextBoxWidget>)
    IL_0120:  ldarg.0
    IL_0121:  ldc.i4.1
    IL_0122:  call       instance void Game.TextBoxDialog::set_AutoHide(bool)
    IL_0127:  ret
  } // end of method TextBoxDialog::.ctor

  .method public hidebysig specialname instance bool 
          get_AutoHide() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.TextBoxDialog::'<AutoHide>k__BackingField'
    IL_0006:  ret
  } // end of method TextBoxDialog::get_AutoHide

  .method public hidebysig specialname instance void 
          set_AutoHide(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.TextBoxDialog::'<AutoHide>k__BackingField'
    IL_0007:  ret
  } // end of method TextBoxDialog::set_AutoHide

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       114 (0x72)
    .maxstack  2
    IL_0000:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_0005:  ldfld      bool Game.InputState::Back
    IL_000a:  brtrue.s   IL_0018

    IL_000c:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_0011:  ldfld      bool Game.InputState::B
    IL_0016:  brfalse.s  IL_0020

    IL_0018:  ldarg.0
    IL_0019:  ldnull
    IL_001a:  call       instance void Game.TextBoxDialog::Dismiss(string)
    IL_001f:  ret

    IL_0020:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_0025:  ldfld      bool Game.InputState::A
    IL_002a:  brfalse.s  IL_003e

    IL_002c:  ldarg.0
    IL_002d:  ldarg.0
    IL_002e:  ldfld      class Game.TextBoxWidget Game.TextBoxDialog::m_textBoxWidget
    IL_0033:  callvirt   instance string Game.TextBoxWidget::get_Text()
    IL_0038:  call       instance void Game.TextBoxDialog::Dismiss(string)
    IL_003d:  ret

    IL_003e:  ldarg.0
    IL_003f:  ldfld      class Game.ButtonWidget Game.TextBoxDialog::m_okButtonWidget
    IL_0044:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0049:  brfalse.s  IL_005d

    IL_004b:  ldarg.0
    IL_004c:  ldarg.0
    IL_004d:  ldfld      class Game.TextBoxWidget Game.TextBoxDialog::m_textBoxWidget
    IL_0052:  callvirt   instance string Game.TextBoxWidget::get_Text()
    IL_0057:  call       instance void Game.TextBoxDialog::Dismiss(string)
    IL_005c:  ret

    IL_005d:  ldarg.0
    IL_005e:  ldfld      class Game.ButtonWidget Game.TextBoxDialog::m_cancelButtonWidget
    IL_0063:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0068:  brfalse.s  IL_0071

    IL_006a:  ldarg.0
    IL_006b:  ldnull
    IL_006c:  call       instance void Game.TextBoxDialog::Dismiss(string)
    IL_0071:  ret
  } // end of method TextBoxDialog::Update

  .method private hidebysig instance void 
          Dismiss(string result) cil managed
  {
    // 代码大小       35 (0x23)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance bool Game.TextBoxDialog::get_AutoHide()
    IL_0006:  brfalse.s  IL_000e

    IL_0008:  ldarg.0
    IL_0009:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
    IL_000e:  ldarg.0
    IL_000f:  ldfld      class [System.Runtime]System.Action`1<string> Game.TextBoxDialog::m_handler
    IL_0014:  brfalse.s  IL_0022

    IL_0016:  ldarg.0
    IL_0017:  ldfld      class [System.Runtime]System.Action`1<string> Game.TextBoxDialog::m_handler
    IL_001c:  ldarg.1
    IL_001d:  callvirt   instance void class [System.Runtime]System.Action`1<string>::Invoke(!0)
    IL_0022:  ret
  } // end of method TextBoxDialog::Dismiss

  .method private hidebysig instance void 
          '<.ctor>b__5_0'(class Game.TextBoxWidget '<obj>') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class Game.TextBoxWidget Game.TextBoxDialog::m_textBoxWidget
    IL_0007:  callvirt   instance string Game.TextBoxWidget::get_Text()
    IL_000c:  call       instance void Game.TextBoxDialog::Dismiss(string)
    IL_0011:  ret
  } // end of method TextBoxDialog::'<.ctor>b__5_0'

  .method private hidebysig instance void 
          '<.ctor>b__5_1'(class Game.TextBoxWidget '<obj>') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldnull
    IL_0002:  call       instance void Game.TextBoxDialog::Dismiss(string)
    IL_0007:  ret
  } // end of method TextBoxDialog::'<.ctor>b__5_1'

  .property instance bool AutoHide()
  {
    .get instance bool Game.TextBoxDialog::get_AutoHide()
    .set instance void Game.TextBoxDialog::set_AutoHide(bool)
  } // end of property TextBoxDialog::AutoHide
} // end of class Game.TextBoxDialog