.class public auto ansi beforefieldinit Game.KeyboardHelpDialog
       extends Game.Dialog
{
  .field private class Game.ButtonWidget m_okButton
  .field private class Game.ButtonWidget m_helpButton
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       93 (0x5d)
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
    IL_0014:  ldnull
    IL_0015:  call       class Game.Widget Game.WidgetsManager::LoadWidget(object,
                                                                           class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                           class Game.ContainerWidget)
    IL_001a:  castclass  Game.ContainerWidget
    IL_001f:  call       instance void Game.Dialog::set_DialogWidget(class Game.ContainerWidget)
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_002b:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0030:  ldstr      "OkButton"
    IL_0035:  ldc.i4.1
    IL_0036:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_003b:  stfld      class Game.ButtonWidget Game.KeyboardHelpDialog::m_okButton
    IL_0040:  ldarg.0
    IL_0041:  ldarg.0
    IL_0042:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_0047:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_004c:  ldstr      "HelpButton"
    IL_0051:  ldc.i4.1
    IL_0052:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_0057:  stfld      class Game.ButtonWidget Game.KeyboardHelpDialog::m_helpButton
    IL_005c:  ret
  } // end of method KeyboardHelpDialog::.ctor

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       74 (0x4a)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ButtonWidget Game.KeyboardHelpDialog::m_okButton
    IL_0006:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_000b:  brtrue.s   IL_0025

    IL_000d:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_0012:  ldfld      bool Game.InputState::Back
    IL_0017:  brtrue.s   IL_0025

    IL_0019:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_001e:  ldfld      bool Game.InputState::B
    IL_0023:  brfalse.s  IL_002b

    IL_0025:  ldarg.0
    IL_0026:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
    IL_002b:  ldarg.0
    IL_002c:  ldfld      class Game.ButtonWidget Game.KeyboardHelpDialog::m_helpButton
    IL_0031:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0036:  brfalse.s  IL_0049

    IL_0038:  ldarg.0
    IL_0039:  ldftn      instance void Game.KeyboardHelpDialog::'<Update>b__3_0'()
    IL_003f:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0044:  call       void Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
    IL_0049:  ret
  } // end of method KeyboardHelpDialog::Update

  .method private hidebysig instance void 
          '<Update>b__3_0'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
    IL_0006:  ldstr      "Help"
    IL_000b:  ldc.i4.0
    IL_000c:  newarr     [System.Runtime]System.Object
    IL_0011:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                object[])
    IL_0016:  ret
  } // end of method KeyboardHelpDialog::'<Update>b__3_0'

} // end of class Game.KeyboardHelpDialog