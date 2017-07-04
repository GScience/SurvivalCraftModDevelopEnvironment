.class public auto ansi beforefieldinit Game.ExternalContentLinkDialog
       extends Game.Dialog
{
  .field private class Game.TextBoxWidget m_textBoxWidget
  .field private class Game.ButtonWidget m_okButtonWidget
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string link) cil managed
  {
    // 代码大小       90 (0x5a)
    .maxstack  4
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.Dialog::.ctor()
    IL_0006:  ldarg.1
    IL_0007:  call       void Game.ClipboardManager::set_ClipboardString(string)
    IL_000c:  ldstr      "Dialogs/ExternalContentLinkDialog"
    IL_0011:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_0016:  stloc.0
    IL_0017:  ldarg.0
    IL_0018:  ldarg.0
    IL_0019:  ldloc.0
    IL_001a:  call       void Game.WidgetsManager::LoadWidgetContents(class Game.Widget,
                                                                      object,
                                                                      class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_001f:  ldarg.0
    IL_0020:  ldarg.0
    IL_0021:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0026:  ldstr      "ExternalContentLinkDialog.TextBox"
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.TextBoxWidget>(string,
                                                                                       bool)
    IL_0031:  stfld      class Game.TextBoxWidget Game.ExternalContentLinkDialog::m_textBoxWidget
    IL_0036:  ldarg.0
    IL_0037:  ldarg.0
    IL_0038:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_003d:  ldstr      "ExternalContentLinkDialog.OkButton"
    IL_0042:  ldc.i4.1
    IL_0043:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0048:  stfld      class Game.ButtonWidget Game.ExternalContentLinkDialog::m_okButtonWidget
    IL_004d:  ldarg.0
    IL_004e:  ldfld      class Game.TextBoxWidget Game.ExternalContentLinkDialog::m_textBoxWidget
    IL_0053:  ldarg.1
    IL_0054:  callvirt   instance void Game.TextBoxWidget::set_Text(string)
    IL_0059:  ret
  } // end of method ExternalContentLinkDialog::.ctor

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0006:  callvirt   instance bool Game.WidgetInput::get_Cancel()
    IL_000b:  brtrue.s   IL_001a

    IL_000d:  ldarg.0
    IL_000e:  ldfld      class Game.ButtonWidget Game.ExternalContentLinkDialog::m_okButtonWidget
    IL_0013:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0018:  brfalse.s  IL_0020

    IL_001a:  ldarg.0
    IL_001b:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
    IL_0020:  ret
  } // end of method ExternalContentLinkDialog::Update

} // end of class Game.ExternalContentLinkDialog