.class public auto ansi beforefieldinit Game.BusyDialog
       extends Game.Dialog
{
  .field private class Game.LabelWidget m_largeLabelWidget
  .field private class Game.LabelWidget m_smallLabelWidget
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string largeMessage,
                               string smallMessage) cil managed
  {
    // 代码大小       86 (0x56)
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
    IL_0014:  call       void Game.WidgetsManager::LoadWidgetContents(class Game.Widget,
                                                                      object,
                                                                      class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_0019:  ldarg.0
    IL_001a:  ldarg.0
    IL_001b:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0020:  ldstr      "BusyDialog.LargeLabel"
    IL_0025:  ldc.i4.1
    IL_0026:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_002b:  stfld      class Game.LabelWidget Game.BusyDialog::m_largeLabelWidget
    IL_0030:  ldarg.0
    IL_0031:  ldarg.0
    IL_0032:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0037:  ldstr      "BusyDialog.SmallLabel"
    IL_003c:  ldc.i4.1
    IL_003d:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_0042:  stfld      class Game.LabelWidget Game.BusyDialog::m_smallLabelWidget
    IL_0047:  ldarg.0
    IL_0048:  ldarg.1
    IL_0049:  call       instance void Game.BusyDialog::set_LargeMessage(string)
    IL_004e:  ldarg.0
    IL_004f:  ldarg.2
    IL_0050:  call       instance void Game.BusyDialog::set_SmallMessage(string)
    IL_0055:  ret
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
    // 代码大小       25 (0x19)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0006:  callvirt   instance bool Game.WidgetInput::get_Back()
    IL_000b:  brfalse.s  IL_0018

    IL_000d:  ldarg.0
    IL_000e:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0013:  callvirt   instance void Game.WidgetInput::Clear()
    IL_0018:  ret
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