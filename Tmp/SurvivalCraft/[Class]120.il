.class public auto ansi beforefieldinit Game.SpawnDialog
       extends Game.Dialog
{
  .field private class Game.LabelWidget m_largeLabelWidget
  .field private class Game.LabelWidget m_smallLabelWidget
  .field private class Game.ValueBarWidget m_progressWidget
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       95 (0x5f)
    .maxstack  4
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.Dialog::.ctor()
    IL_0006:  ldstr      "Dialogs/SpawnDialog"
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
    IL_0020:  ldstr      "SpawnDialog.LargeLabel"
    IL_0025:  ldc.i4.1
    IL_0026:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_002b:  stfld      class Game.LabelWidget Game.SpawnDialog::m_largeLabelWidget
    IL_0030:  ldarg.0
    IL_0031:  ldarg.0
    IL_0032:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0037:  ldstr      "SpawnDialog.SmallLabel"
    IL_003c:  ldc.i4.1
    IL_003d:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_0042:  stfld      class Game.LabelWidget Game.SpawnDialog::m_smallLabelWidget
    IL_0047:  ldarg.0
    IL_0048:  ldarg.0
    IL_0049:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_004e:  ldstr      "SpawnDialog.Progress"
    IL_0053:  ldc.i4.1
    IL_0054:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ValueBarWidget>(string,
                                                                                        bool)
    IL_0059:  stfld      class Game.ValueBarWidget Game.SpawnDialog::m_progressWidget
    IL_005e:  ret
  } // end of method SpawnDialog::.ctor

  .method public hidebysig specialname instance string 
          get_LargeMessage() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.LabelWidget Game.SpawnDialog::m_largeLabelWidget
    IL_0006:  callvirt   instance string Game.LabelWidget::get_Text()
    IL_000b:  ret
  } // end of method SpawnDialog::get_LargeMessage

  .method public hidebysig specialname instance void 
          set_LargeMessage(string 'value') cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.LabelWidget Game.SpawnDialog::m_largeLabelWidget
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_000c:  ret
  } // end of method SpawnDialog::set_LargeMessage

  .method public hidebysig specialname instance string 
          get_SmallMessage() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.LabelWidget Game.SpawnDialog::m_smallLabelWidget
    IL_0006:  callvirt   instance string Game.LabelWidget::get_Text()
    IL_000b:  ret
  } // end of method SpawnDialog::get_SmallMessage

  .method public hidebysig specialname instance void 
          set_SmallMessage(string 'value') cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.LabelWidget Game.SpawnDialog::m_smallLabelWidget
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_000c:  ret
  } // end of method SpawnDialog::set_SmallMessage

  .method public hidebysig specialname instance float32 
          get_Progress() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ValueBarWidget Game.SpawnDialog::m_progressWidget
    IL_0006:  callvirt   instance float32 Game.ValueBarWidget::get_Value()
    IL_000b:  ret
  } // end of method SpawnDialog::get_Progress

  .method public hidebysig specialname instance void 
          set_Progress(float32 'value') cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ValueBarWidget Game.SpawnDialog::m_progressWidget
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance void Game.ValueBarWidget::set_Value(float32)
    IL_000c:  ret
  } // end of method SpawnDialog::set_Progress

  .property instance string LargeMessage()
  {
    .get instance string Game.SpawnDialog::get_LargeMessage()
    .set instance void Game.SpawnDialog::set_LargeMessage(string)
  } // end of property SpawnDialog::LargeMessage
  .property instance string SmallMessage()
  {
    .get instance string Game.SpawnDialog::get_SmallMessage()
    .set instance void Game.SpawnDialog::set_SmallMessage(string)
  } // end of property SpawnDialog::SmallMessage
  .property instance float32 Progress()
  {
    .get instance float32 Game.SpawnDialog::get_Progress()
    .set instance void Game.SpawnDialog::set_Progress(float32)
  } // end of property SpawnDialog::Progress
} // end of class Game.SpawnDialog