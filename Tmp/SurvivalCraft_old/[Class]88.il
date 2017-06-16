.class public auto ansi beforefieldinit Game.CancellableBusyDialog
       extends Game.Dialog
{
  .field private class Game.LabelWidget m_largeLabelWidget
  .field private class Game.LabelWidget m_smallLabelWidget
  .field private class Game.ButtonWidget m_cancelButtonWidget
  .field private bool m_autoHideOnCancel
  .field private class Game.CancellableProgress '<Progress>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string largeMessage,
                               bool autoHideOnCancel) cil managed
  {
    // 代码大小       146 (0x92)
    .maxstack  4
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.Dialog::.ctor()
    IL_0006:  ldstr      "Dialogs/CancellableBusyDialog"
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
    IL_0030:  ldstr      "CancellableBusyDialog.LargeLabel"
    IL_0035:  ldc.i4.1
    IL_0036:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_003b:  stfld      class Game.LabelWidget Game.CancellableBusyDialog::m_largeLabelWidget
    IL_0040:  ldarg.0
    IL_0041:  ldarg.0
    IL_0042:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_0047:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_004c:  ldstr      "CancellableBusyDialog.SmallLabel"
    IL_0051:  ldc.i4.1
    IL_0052:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_0057:  stfld      class Game.LabelWidget Game.CancellableBusyDialog::m_smallLabelWidget
    IL_005c:  ldarg.0
    IL_005d:  ldarg.0
    IL_005e:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_0063:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0068:  ldstr      "CancellableBusyDialog.CancelButton"
    IL_006d:  ldc.i4.1
    IL_006e:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_0073:  stfld      class Game.ButtonWidget Game.CancellableBusyDialog::m_cancelButtonWidget
    IL_0078:  ldarg.0
    IL_0079:  newobj     instance void Game.CancellableProgress::.ctor()
    IL_007e:  call       instance void Game.CancellableBusyDialog::set_Progress(class Game.CancellableProgress)
    IL_0083:  ldarg.0
    IL_0084:  ldarg.2
    IL_0085:  stfld      bool Game.CancellableBusyDialog::m_autoHideOnCancel
    IL_008a:  ldarg.0
    IL_008b:  ldarg.1
    IL_008c:  call       instance void Game.CancellableBusyDialog::set_LargeMessage(string)
    IL_0091:  ret
  } // end of method CancellableBusyDialog::.ctor

  .method public hidebysig specialname instance class Game.CancellableProgress 
          get_Progress() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.CancellableProgress Game.CancellableBusyDialog::'<Progress>k__BackingField'
    IL_0006:  ret
  } // end of method CancellableBusyDialog::get_Progress

  .method private hidebysig specialname instance void 
          set_Progress(class Game.CancellableProgress 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.CancellableProgress Game.CancellableBusyDialog::'<Progress>k__BackingField'
    IL_0007:  ret
  } // end of method CancellableBusyDialog::set_Progress

  .method public hidebysig specialname instance string 
          get_LargeMessage() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.LabelWidget Game.CancellableBusyDialog::m_largeLabelWidget
    IL_0006:  callvirt   instance string Game.LabelWidget::get_Text()
    IL_000b:  ret
  } // end of method CancellableBusyDialog::get_LargeMessage

  .method public hidebysig specialname instance void 
          set_LargeMessage(string 'value') cil managed
  {
    // 代码大小       42 (0x2a)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.LabelWidget Game.CancellableBusyDialog::m_largeLabelWidget
    IL_0006:  ldarg.1
    IL_0007:  dup
    IL_0008:  brtrue.s   IL_0010

    IL_000a:  pop
    IL_000b:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0010:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0015:  ldarg.0
    IL_0016:  ldfld      class Game.LabelWidget Game.CancellableBusyDialog::m_largeLabelWidget
    IL_001b:  ldarg.1
    IL_001c:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_0021:  ldc.i4.0
    IL_0022:  ceq
    IL_0024:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0029:  ret
  } // end of method CancellableBusyDialog::set_LargeMessage

  .method private hidebysig specialname instance string 
          get_SmallMessage() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.LabelWidget Game.CancellableBusyDialog::m_smallLabelWidget
    IL_0006:  callvirt   instance string Game.LabelWidget::get_Text()
    IL_000b:  ret
  } // end of method CancellableBusyDialog::get_SmallMessage

  .method private hidebysig specialname instance void 
          set_SmallMessage(string 'value') cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.LabelWidget Game.CancellableBusyDialog::m_smallLabelWidget
    IL_0006:  ldarg.1
    IL_0007:  dup
    IL_0008:  brtrue.s   IL_0010

    IL_000a:  pop
    IL_000b:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0010:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0015:  ret
  } // end of method CancellableBusyDialog::set_SmallMessage

  .method private hidebysig specialname instance bool 
          get_IsCancelButtonEnabled() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ButtonWidget Game.CancellableBusyDialog::m_cancelButtonWidget
    IL_0006:  callvirt   instance bool Game.Widget::get_IsEnabled()
    IL_000b:  ret
  } // end of method CancellableBusyDialog::get_IsCancelButtonEnabled

  .method private hidebysig specialname instance void 
          set_IsCancelButtonEnabled(bool 'value') cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ButtonWidget Game.CancellableBusyDialog::m_cancelButtonWidget
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_000c:  ret
  } // end of method CancellableBusyDialog::set_IsCancelButtonEnabled

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       169 (0xa9)
    .maxstack  7
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.CancellableProgress Game.CancellableBusyDialog::get_Progress()
    IL_0006:  ldfld      float32 Game.Progress::Completed
    IL_000b:  ldc.r4     0.0
    IL_0010:  ble.un.s   IL_0061

    IL_0012:  ldarg.0
    IL_0013:  call       instance class Game.CancellableProgress Game.CancellableBusyDialog::get_Progress()
    IL_0018:  ldfld      float32 Game.Progress::Total
    IL_001d:  ldc.r4     0.0
    IL_0022:  ble.un.s   IL_0061

    IL_0024:  ldarg.0
    IL_0025:  ldstr      "{0:0}%"
    IL_002a:  ldc.i4.1
    IL_002b:  newarr     [System.Runtime]System.Object
    IL_0030:  dup
    IL_0031:  ldc.i4.0
    IL_0032:  ldarg.0
    IL_0033:  call       instance class Game.CancellableProgress Game.CancellableBusyDialog::get_Progress()
    IL_0038:  ldfld      float32 Game.Progress::Completed
    IL_003d:  ldarg.0
    IL_003e:  call       instance class Game.CancellableProgress Game.CancellableBusyDialog::get_Progress()
    IL_0043:  ldfld      float32 Game.Progress::Total
    IL_0048:  div
    IL_0049:  ldc.r4     100.
    IL_004e:  mul
    IL_004f:  box        [System.Runtime]System.Single
    IL_0054:  stelem.ref
    IL_0055:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_005a:  call       instance void Game.CancellableBusyDialog::set_SmallMessage(string)
    IL_005f:  br.s       IL_006c

    IL_0061:  ldarg.0
    IL_0062:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0067:  call       instance void Game.CancellableBusyDialog::set_SmallMessage(string)
    IL_006c:  ldarg.0
    IL_006d:  ldfld      class Game.ButtonWidget Game.CancellableBusyDialog::m_cancelButtonWidget
    IL_0072:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0077:  brfalse.s  IL_0097

    IL_0079:  ldarg.0
    IL_007a:  call       instance class Game.CancellableProgress Game.CancellableBusyDialog::get_Progress()
    IL_007f:  ldfld      class [System.Threading.Tasks]System.Threading.CancellationTokenSource Game.CancellableProgress::CancellationTokenSource
    IL_0084:  callvirt   instance void [System.Threading.Tasks]System.Threading.CancellationTokenSource::Cancel()
    IL_0089:  ldarg.0
    IL_008a:  ldfld      bool Game.CancellableBusyDialog::m_autoHideOnCancel
    IL_008f:  brfalse.s  IL_0097

    IL_0091:  ldarg.0
    IL_0092:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
    IL_0097:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_009c:  ldfld      bool Game.InputState::Back
    IL_00a1:  brfalse.s  IL_00a8

    IL_00a3:  call       void Game.InputManager::Clear()
    IL_00a8:  ret
  } // end of method CancellableBusyDialog::Update

  .property instance class Game.CancellableProgress
          Progress()
  {
    .get instance class Game.CancellableProgress Game.CancellableBusyDialog::get_Progress()
    .set instance void Game.CancellableBusyDialog::set_Progress(class Game.CancellableProgress)
  } // end of property CancellableBusyDialog::Progress
  .property instance string LargeMessage()
  {
    .get instance string Game.CancellableBusyDialog::get_LargeMessage()
    .set instance void Game.CancellableBusyDialog::set_LargeMessage(string)
  } // end of property CancellableBusyDialog::LargeMessage
  .property instance string SmallMessage()
  {
    .get instance string Game.CancellableBusyDialog::get_SmallMessage()
    .set instance void Game.CancellableBusyDialog::set_SmallMessage(string)
  } // end of property CancellableBusyDialog::SmallMessage
  .property instance bool IsCancelButtonEnabled()
  {
    .get instance bool Game.CancellableBusyDialog::get_IsCancelButtonEnabled()
    .set instance void Game.CancellableBusyDialog::set_IsCancelButtonEnabled(bool)
  } // end of property CancellableBusyDialog::IsCancelButtonEnabled
} // end of class Game.CancellableBusyDialog