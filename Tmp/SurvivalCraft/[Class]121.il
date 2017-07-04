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
    // 代码大小       242 (0xf2)
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
    IL_001c:  call       void Game.WidgetsManager::LoadWidgetContents(class Game.Widget,
                                                                      object,
                                                                      class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_0021:  ldarg.0
    IL_0022:  ldarg.0
    IL_0023:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0028:  ldstr      "TextBoxDialog.Title"
    IL_002d:  ldc.i4.1
    IL_002e:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_0033:  stfld      class Game.LabelWidget Game.TextBoxDialog::m_titleWidget
    IL_0038:  ldarg.0
    IL_0039:  ldarg.0
    IL_003a:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_003f:  ldstr      "TextBoxDialog.TextBox"
    IL_0044:  ldc.i4.1
    IL_0045:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.TextBoxWidget>(string,
                                                                                       bool)
    IL_004a:  stfld      class Game.TextBoxWidget Game.TextBoxDialog::m_textBoxWidget
    IL_004f:  ldarg.0
    IL_0050:  ldarg.0
    IL_0051:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0056:  ldstr      "TextBoxDialog.OkButton"
    IL_005b:  ldc.i4.1
    IL_005c:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0061:  stfld      class Game.ButtonWidget Game.TextBoxDialog::m_okButtonWidget
    IL_0066:  ldarg.0
    IL_0067:  ldarg.0
    IL_0068:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_006d:  ldstr      "TextBoxDialog.CancelButton"
    IL_0072:  ldc.i4.1
    IL_0073:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0078:  stfld      class Game.ButtonWidget Game.TextBoxDialog::m_cancelButtonWidget
    IL_007d:  ldarg.0
    IL_007e:  ldfld      class Game.LabelWidget Game.TextBoxDialog::m_titleWidget
    IL_0083:  ldarg.1
    IL_0084:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_0089:  ldc.i4.0
    IL_008a:  ceq
    IL_008c:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0091:  ldarg.0
    IL_0092:  ldfld      class Game.LabelWidget Game.TextBoxDialog::m_titleWidget
    IL_0097:  ldarg.1
    IL_0098:  dup
    IL_0099:  brtrue.s   IL_00a1

    IL_009b:  pop
    IL_009c:  ldsfld     string [System.Runtime]System.String::Empty
    IL_00a1:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_00a6:  ldarg.0
    IL_00a7:  ldfld      class Game.TextBoxWidget Game.TextBoxDialog::m_textBoxWidget
    IL_00ac:  ldarg.3
    IL_00ad:  callvirt   instance void Game.TextBoxWidget::set_MaximumLength(int32)
    IL_00b2:  ldarg.0
    IL_00b3:  ldfld      class Game.TextBoxWidget Game.TextBoxDialog::m_textBoxWidget
    IL_00b8:  ldarg.2
    IL_00b9:  dup
    IL_00ba:  brtrue.s   IL_00c2

    IL_00bc:  pop
    IL_00bd:  ldsfld     string [System.Runtime]System.String::Empty
    IL_00c2:  callvirt   instance void Game.TextBoxWidget::set_Text(string)
    IL_00c7:  ldarg.0
    IL_00c8:  ldfld      class Game.TextBoxWidget Game.TextBoxDialog::m_textBoxWidget
    IL_00cd:  ldc.i4.1
    IL_00ce:  callvirt   instance void Game.TextBoxWidget::set_HasFocus(bool)
    IL_00d3:  ldarg.0
    IL_00d4:  ldfld      class Game.TextBoxWidget Game.TextBoxDialog::m_textBoxWidget
    IL_00d9:  ldarg.0
    IL_00da:  ldftn      instance void Game.TextBoxDialog::'<.ctor>b__5_0'(class Game.TextBoxWidget)
    IL_00e0:  newobj     instance void class [System.Runtime]System.Action`1<class Game.TextBoxWidget>::.ctor(object,
                                                                                                              native int)
    IL_00e5:  callvirt   instance void Game.TextBoxWidget::add_Enter(class [System.Runtime]System.Action`1<class Game.TextBoxWidget>)
    IL_00ea:  ldarg.0
    IL_00eb:  ldc.i4.1
    IL_00ec:  call       instance void Game.TextBoxDialog::set_AutoHide(bool)
    IL_00f1:  ret
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
    // 代码大小       104 (0x68)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0006:  callvirt   instance bool Game.WidgetInput::get_Cancel()
    IL_000b:  brfalse.s  IL_0015

    IL_000d:  ldarg.0
    IL_000e:  ldnull
    IL_000f:  call       instance void Game.TextBoxDialog::Dismiss(string)
    IL_0014:  ret

    IL_0015:  ldarg.0
    IL_0016:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_001b:  callvirt   instance bool Game.WidgetInput::get_Ok()
    IL_0020:  brfalse.s  IL_0034

    IL_0022:  ldarg.0
    IL_0023:  ldarg.0
    IL_0024:  ldfld      class Game.TextBoxWidget Game.TextBoxDialog::m_textBoxWidget
    IL_0029:  callvirt   instance string Game.TextBoxWidget::get_Text()
    IL_002e:  call       instance void Game.TextBoxDialog::Dismiss(string)
    IL_0033:  ret

    IL_0034:  ldarg.0
    IL_0035:  ldfld      class Game.ButtonWidget Game.TextBoxDialog::m_okButtonWidget
    IL_003a:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_003f:  brfalse.s  IL_0053

    IL_0041:  ldarg.0
    IL_0042:  ldarg.0
    IL_0043:  ldfld      class Game.TextBoxWidget Game.TextBoxDialog::m_textBoxWidget
    IL_0048:  callvirt   instance string Game.TextBoxWidget::get_Text()
    IL_004d:  call       instance void Game.TextBoxDialog::Dismiss(string)
    IL_0052:  ret

    IL_0053:  ldarg.0
    IL_0054:  ldfld      class Game.ButtonWidget Game.TextBoxDialog::m_cancelButtonWidget
    IL_0059:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_005e:  brfalse.s  IL_0067

    IL_0060:  ldarg.0
    IL_0061:  ldnull
    IL_0062:  call       instance void Game.TextBoxDialog::Dismiss(string)
    IL_0067:  ret
  } // end of method TextBoxDialog::Update

  .method private hidebysig instance void 
          Dismiss(string result) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance bool Game.TextBoxDialog::get_AutoHide()
    IL_0006:  brfalse.s  IL_000e

    IL_0008:  ldarg.0
    IL_0009:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
    IL_000e:  ldarg.0
    IL_000f:  ldfld      class [System.Runtime]System.Action`1<string> Game.TextBoxDialog::m_handler
    IL_0014:  dup
    IL_0015:  brtrue.s   IL_0019

    IL_0017:  pop
    IL_0018:  ret

    IL_0019:  ldarg.1
    IL_001a:  callvirt   instance void class [System.Runtime]System.Action`1<string>::Invoke(!0)
    IL_001f:  ret
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

  .property instance bool AutoHide()
  {
    .get instance bool Game.TextBoxDialog::get_AutoHide()
    .set instance void Game.TextBoxDialog::set_AutoHide(bool)
  } // end of property TextBoxDialog::AutoHide
} // end of class Game.TextBoxDialog