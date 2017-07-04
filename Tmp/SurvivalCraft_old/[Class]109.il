.class public auto ansi beforefieldinit Game.KeyboardHelpDialog
       extends Game.Dialog
{
  .field private class Game.ButtonWidget m_okButton
  .field private class Game.ButtonWidget m_helpButton
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       72 (0x48)
    .maxstack  4
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.Dialog::.ctor()
    IL_0006:  ldstr      "Dialogs/KeyboardHelpDialog"
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
    IL_0020:  ldstr      "OkButton"
    IL_0025:  ldc.i4.1
    IL_0026:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_002b:  stfld      class Game.ButtonWidget Game.KeyboardHelpDialog::m_okButton
    IL_0030:  ldarg.0
    IL_0031:  ldarg.0
    IL_0032:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0037:  ldstr      "HelpButton"
    IL_003c:  ldc.i4.1
    IL_003d:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0042:  stfld      class Game.ButtonWidget Game.KeyboardHelpDialog::m_helpButton
    IL_0047:  ret
  } // end of method KeyboardHelpDialog::.ctor

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       110 (0x6e)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ButtonWidget Game.KeyboardHelpDialog::m_helpButton
    IL_0006:  call       class Game.Screen Game.ScreensManager::get_CurrentScreen()
    IL_000b:  isinst     Game.HelpScreen
    IL_0010:  ldnull
    IL_0011:  cgt.un
    IL_0013:  ldc.i4.0
    IL_0014:  ceq
    IL_0016:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_001b:  ldarg.0
    IL_001c:  ldfld      class Game.ButtonWidget Game.KeyboardHelpDialog::m_okButton
    IL_0021:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0026:  brtrue.s   IL_0044

    IL_0028:  ldarg.0
    IL_0029:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_002e:  callvirt   instance bool Game.WidgetInput::get_Cancel()
    IL_0033:  brtrue.s   IL_0044

    IL_0035:  ldarg.0
    IL_0036:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_003b:  ldc.i4.s   38
    IL_003d:  callvirt   instance bool Game.WidgetInput::IsKeyDownOnce(valuetype [Engine]Engine.Input.Key)
    IL_0042:  brfalse.s  IL_004a

    IL_0044:  ldarg.0
    IL_0045:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
    IL_004a:  ldarg.0
    IL_004b:  ldfld      class Game.ButtonWidget Game.KeyboardHelpDialog::m_helpButton
    IL_0050:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0055:  brfalse.s  IL_006d

    IL_0057:  ldarg.0
    IL_0058:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
    IL_005d:  ldstr      "Help"
    IL_0062:  ldc.i4.0
    IL_0063:  newarr     [System.Runtime]System.Object
    IL_0068:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                object[])
    IL_006d:  ret
  } // end of method KeyboardHelpDialog::Update

} // end of class Game.KeyboardHelpDialog