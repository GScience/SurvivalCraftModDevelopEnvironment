.class public auto ansi beforefieldinit Game.BusyDialog
       extends Game.Dialog
{
  .field private class Game.LabelWidget m_largeLabelWidget
  .field private class Game.LabelWidget m_smallLabelWidget
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string largeMessage,
                               string smallMessage) cil managed
  {
    // 代码大小       107 (0x6b)
    .maxstack  4
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.Dialog::.ctor()
    IL_0006:  ldstr      "Dialogs/BusyDialog"
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
    IL_0030:  ldstr      "BusyDialog.LargeLabel"
    IL_0035:  ldc.i4.1
    IL_0036:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_003b:  stfld      class Game.LabelWidget Game.BusyDialog::m_largeLabelWidget
    IL_0040:  ldarg.0
    IL_0041:  ldarg.0
    IL_0042:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_0047:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_004c:  ldstr      "BusyDialog.SmallLabel"
    IL_0051:  ldc.i4.1
    IL_0052:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_0057:  stfld      class Game.LabelWidget Game.BusyDialog::m_smallLabelWidget
    IL_005c:  ldarg.0
    IL_005d:  ldarg.1
    IL_005e:  call       instance void Game.BusyDialog::set_LargeMessage(string)
    IL_0063:  ldarg.0
    IL_0064:  ldarg.2
    IL_0065:  call       instance void Game.BusyDialog::set_SmallMessage(string)
    IL_006a:  ret
  } // end of method BusyDialog::.ctor

  .method public hidebysig specialname instance string 
          get_LargeMessage() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.LabelWidget Game.BusyDialog::m_largeLabelWidget
    IL_0006:  callvirt   instance string Game.LabelWidget::get_Text()
    IL_000b:  ret
  } // end of method BusyDialog::get_LargeMessage

  .method public hidebysig specialname instance void 
          set_LargeMessage(string 'value') cil managed
  {
    // 代码大小       42 (0x2a)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.LabelWidget Game.BusyDialog::m_largeLabelWidget
    IL_0006:  ldarg.1
    IL_0007:  dup
    IL_0008:  brtrue.s   IL_0010

    IL_000a:  pop
    IL_000b:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0010:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0015:  ldarg.0
    IL_0016:  ldfld      class Game.LabelWidget Game.BusyDialog::m_largeLabelWidget
    IL_001b:  ldarg.1
    IL_001c:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_0021:  ldc.i4.0
    IL_0022:  ceq
    IL_0024:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0029:  ret
  } // end of method BusyDialog::set_LargeMessage

  .method public hidebysig specialname instance string 
          get_SmallMessage() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.LabelWidget Game.BusyDialog::m_smallLabelWidget
    IL_0006:  callvirt   instance string Game.LabelWidget::get_Text()
    IL_000b:  ret
  } // end of method BusyDialog::get_SmallMessage

  .method public hidebysig specialname instance void 
          set_SmallMessage(string 'value') cil managed
  {
    // 代码大小       42 (0x2a)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.LabelWidget Game.BusyDialog::m_smallLabelWidget
    IL_0006:  ldarg.1
    IL_0007:  dup
    IL_0008:  brtrue.s   IL_0010

    IL_000a:  pop
    IL_000b:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0010:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0015:  ldarg.0
    IL_0016:  ldfld      class Game.LabelWidget Game.BusyDialog::m_smallLabelWidget
    IL_001b:  ldarg.1
    IL_001c:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_0021:  ldc.i4.0
    IL_0022:  ceq
    IL_0024:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0029:  ret
  } // end of method BusyDialog::set_SmallMessage

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_0005:  ldfld      bool Game.InputState::Back
    IL_000a:  brfalse.s  IL_0011

    IL_000c:  call       void Game.InputManager::Clear()
    IL_0011:  ret
  } // end of method BusyDialog::Update

  .property instance string LargeMessage()
  {
    .get instance string Game.BusyDialog::get_LargeMessage()
    .set instance void Game.BusyDialog::set_LargeMessage(string)
  } // end of property BusyDialog::LargeMessage
  .property instance string SmallMessage()
  {
    .get instance string Game.BusyDialog::get_SmallMessage()
    .set instance void Game.BusyDialog::set_SmallMessage(string)
  } // end of property BusyDialog::SmallMessage
} // end of class Game.BusyDialog