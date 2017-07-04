.class public auto ansi beforefieldinit Game.EditAdjustableDelayGateDialog
       extends Game.Dialog
{
  .field private class [System.Runtime]System.Action`1<int32> m_handler
  .field private class Game.SliderWidget m_delaySlider
  .field private class Game.ButtonWidget m_plusButton
  .field private class Game.ButtonWidget m_minusButton
  .field private class Game.LabelWidget m_delayLabel
  .field private class Game.ButtonWidget m_okButton
  .field private class Game.ButtonWidget m_cancelButton
  .field private int32 m_delay
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(int32 delay,
                               class [System.Runtime]System.Action`1<int32> 'handler') cil managed
  {
    // 代码大小       184 (0xb8)
    .maxstack  4
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.Dialog::.ctor()
    IL_0006:  ldstr      "Dialogs/EditAdjustableDelayGateDialog"
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
    IL_0020:  ldstr      "EditAdjustableDelayGateDialog.DelaySlider"
    IL_0025:  ldc.i4.1
    IL_0026:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.SliderWidget>(string,
                                                                                      bool)
    IL_002b:  stfld      class Game.SliderWidget Game.EditAdjustableDelayGateDialog::m_delaySlider
    IL_0030:  ldarg.0
    IL_0031:  ldarg.0
    IL_0032:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0037:  ldstr      "EditAdjustableDelayGateDialog.PlusButton"
    IL_003c:  ldc.i4.1
    IL_003d:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0042:  stfld      class Game.ButtonWidget Game.EditAdjustableDelayGateDialog::m_plusButton
    IL_0047:  ldarg.0
    IL_0048:  ldarg.0
    IL_0049:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_004e:  ldstr      "EditAdjustableDelayGateDialog.MinusButton"
    IL_0053:  ldc.i4.1
    IL_0054:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0059:  stfld      class Game.ButtonWidget Game.EditAdjustableDelayGateDialog::m_minusButton
    IL_005e:  ldarg.0
    IL_005f:  ldarg.0
    IL_0060:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0065:  ldstr      "EditAdjustableDelayGateDialog.Label"
    IL_006a:  ldc.i4.1
    IL_006b:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_0070:  stfld      class Game.LabelWidget Game.EditAdjustableDelayGateDialog::m_delayLabel
    IL_0075:  ldarg.0
    IL_0076:  ldarg.0
    IL_0077:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_007c:  ldstr      "EditAdjustableDelayGateDialog.OK"
    IL_0081:  ldc.i4.1
    IL_0082:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0087:  stfld      class Game.ButtonWidget Game.EditAdjustableDelayGateDialog::m_okButton
    IL_008c:  ldarg.0
    IL_008d:  ldarg.0
    IL_008e:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0093:  ldstr      "EditAdjustableDelayGateDialog.Cancel"
    IL_0098:  ldc.i4.1
    IL_0099:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_009e:  stfld      class Game.ButtonWidget Game.EditAdjustableDelayGateDialog::m_cancelButton
    IL_00a3:  ldarg.0
    IL_00a4:  ldarg.2
    IL_00a5:  stfld      class [System.Runtime]System.Action`1<int32> Game.EditAdjustableDelayGateDialog::m_handler
    IL_00aa:  ldarg.0
    IL_00ab:  ldarg.1
    IL_00ac:  stfld      int32 Game.EditAdjustableDelayGateDialog::m_delay
    IL_00b1:  ldarg.0
    IL_00b2:  call       instance void Game.EditAdjustableDelayGateDialog::UpdateControls()
    IL_00b7:  ret
  } // end of method EditAdjustableDelayGateDialog::.ctor

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       197 (0xc5)
    .maxstack  3
    .locals init (valuetype [System.Runtime]System.Nullable`1<int32> V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SliderWidget Game.EditAdjustableDelayGateDialog::m_delaySlider
    IL_0006:  callvirt   instance bool Game.SliderWidget::get_IsSliding()
    IL_000b:  brfalse.s  IL_001f

    IL_000d:  ldarg.0
    IL_000e:  ldarg.0
    IL_000f:  ldfld      class Game.SliderWidget Game.EditAdjustableDelayGateDialog::m_delaySlider
    IL_0014:  callvirt   instance float32 Game.SliderWidget::get_Value()
    IL_0019:  conv.i4
    IL_001a:  stfld      int32 Game.EditAdjustableDelayGateDialog::m_delay
    IL_001f:  ldarg.0
    IL_0020:  ldfld      class Game.ButtonWidget Game.EditAdjustableDelayGateDialog::m_minusButton
    IL_0025:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_002a:  brfalse.s  IL_004b

    IL_002c:  ldarg.0
    IL_002d:  ldarg.0
    IL_002e:  ldfld      int32 Game.EditAdjustableDelayGateDialog::m_delay
    IL_0033:  ldc.i4.1
    IL_0034:  sub
    IL_0035:  ldarg.0
    IL_0036:  ldfld      class Game.SliderWidget Game.EditAdjustableDelayGateDialog::m_delaySlider
    IL_003b:  callvirt   instance float32 Game.SliderWidget::get_MinValue()
    IL_0040:  conv.i4
    IL_0041:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_0046:  stfld      int32 Game.EditAdjustableDelayGateDialog::m_delay
    IL_004b:  ldarg.0
    IL_004c:  ldfld      class Game.ButtonWidget Game.EditAdjustableDelayGateDialog::m_plusButton
    IL_0051:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0056:  brfalse.s  IL_0077

    IL_0058:  ldarg.0
    IL_0059:  ldarg.0
    IL_005a:  ldfld      int32 Game.EditAdjustableDelayGateDialog::m_delay
    IL_005f:  ldc.i4.1
    IL_0060:  add
    IL_0061:  ldarg.0
    IL_0062:  ldfld      class Game.SliderWidget Game.EditAdjustableDelayGateDialog::m_delaySlider
    IL_0067:  callvirt   instance float32 Game.SliderWidget::get_MaxValue()
    IL_006c:  conv.i4
    IL_006d:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_0072:  stfld      int32 Game.EditAdjustableDelayGateDialog::m_delay
    IL_0077:  ldarg.0
    IL_0078:  ldfld      class Game.ButtonWidget Game.EditAdjustableDelayGateDialog::m_okButton
    IL_007d:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0082:  brfalse.s  IL_0095

    IL_0084:  ldarg.0
    IL_0085:  ldarg.0
    IL_0086:  ldfld      int32 Game.EditAdjustableDelayGateDialog::m_delay
    IL_008b:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_0090:  call       instance void Game.EditAdjustableDelayGateDialog::Dismiss(valuetype [System.Runtime]System.Nullable`1<int32>)
    IL_0095:  ldarg.0
    IL_0096:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_009b:  callvirt   instance bool Game.WidgetInput::get_Cancel()
    IL_00a0:  brtrue.s   IL_00af

    IL_00a2:  ldarg.0
    IL_00a3:  ldfld      class Game.ButtonWidget Game.EditAdjustableDelayGateDialog::m_cancelButton
    IL_00a8:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_00ad:  brfalse.s  IL_00be

    IL_00af:  ldarg.0
    IL_00b0:  ldloca.s   V_0
    IL_00b2:  initobj    valuetype [System.Runtime]System.Nullable`1<int32>
    IL_00b8:  ldloc.0
    IL_00b9:  call       instance void Game.EditAdjustableDelayGateDialog::Dismiss(valuetype [System.Runtime]System.Nullable`1<int32>)
    IL_00be:  ldarg.0
    IL_00bf:  call       instance void Game.EditAdjustableDelayGateDialog::UpdateControls()
    IL_00c4:  ret
  } // end of method EditAdjustableDelayGateDialog::Update

  .method private hidebysig instance void 
          UpdateControls() cil managed
  {
    // 代码大小       131 (0x83)
    .maxstack  7
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SliderWidget Game.EditAdjustableDelayGateDialog::m_delaySlider
    IL_0006:  ldarg.0
    IL_0007:  ldfld      int32 Game.EditAdjustableDelayGateDialog::m_delay
    IL_000c:  conv.r4
    IL_000d:  callvirt   instance void Game.SliderWidget::set_Value(float32)
    IL_0012:  ldarg.0
    IL_0013:  ldfld      class Game.ButtonWidget Game.EditAdjustableDelayGateDialog::m_minusButton
    IL_0018:  ldarg.0
    IL_0019:  ldfld      int32 Game.EditAdjustableDelayGateDialog::m_delay
    IL_001e:  conv.r4
    IL_001f:  ldarg.0
    IL_0020:  ldfld      class Game.SliderWidget Game.EditAdjustableDelayGateDialog::m_delaySlider
    IL_0025:  callvirt   instance float32 Game.SliderWidget::get_MinValue()
    IL_002a:  cgt
    IL_002c:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_0031:  ldarg.0
    IL_0032:  ldfld      class Game.ButtonWidget Game.EditAdjustableDelayGateDialog::m_plusButton
    IL_0037:  ldarg.0
    IL_0038:  ldfld      int32 Game.EditAdjustableDelayGateDialog::m_delay
    IL_003d:  conv.r4
    IL_003e:  ldarg.0
    IL_003f:  ldfld      class Game.SliderWidget Game.EditAdjustableDelayGateDialog::m_delaySlider
    IL_0044:  callvirt   instance float32 Game.SliderWidget::get_MaxValue()
    IL_0049:  clt
    IL_004b:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_0050:  ldarg.0
    IL_0051:  ldfld      class Game.LabelWidget Game.EditAdjustableDelayGateDialog::m_delayLabel
    IL_0056:  ldstr      "{0:0.00} seconds"
    IL_005b:  ldc.i4.1
    IL_005c:  newarr     [System.Runtime]System.Object
    IL_0061:  dup
    IL_0062:  ldc.i4.0
    IL_0063:  ldarg.0
    IL_0064:  ldfld      int32 Game.EditAdjustableDelayGateDialog::m_delay
    IL_0069:  ldc.i4.1
    IL_006a:  add
    IL_006b:  conv.r4
    IL_006c:  ldc.r4     9.9999998e-003
    IL_0071:  mul
    IL_0072:  box        [System.Runtime]System.Single
    IL_0077:  stelem.ref
    IL_0078:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_007d:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0082:  ret
  } // end of method EditAdjustableDelayGateDialog::UpdateControls

  .method private hidebysig instance void 
          Dismiss(valuetype [System.Runtime]System.Nullable`1<int32> result) cil managed
  {
    // 代码大小       42 (0x2a)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class [System.Runtime]System.Action`1<int32> Game.EditAdjustableDelayGateDialog::m_handler
    IL_000c:  brfalse.s  IL_0029

    IL_000e:  ldarga.s   result
    IL_0010:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0015:  brfalse.s  IL_0029

    IL_0017:  ldarg.0
    IL_0018:  ldfld      class [System.Runtime]System.Action`1<int32> Game.EditAdjustableDelayGateDialog::m_handler
    IL_001d:  ldarga.s   result
    IL_001f:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
    IL_0024:  callvirt   instance void class [System.Runtime]System.Action`1<int32>::Invoke(!0)
    IL_0029:  ret
  } // end of method EditAdjustableDelayGateDialog::Dismiss

} // end of class Game.EditAdjustableDelayGateDialog