.class public auto ansi beforefieldinit Game.EditBatteryDialog
       extends Game.Dialog
{
  .field private class [System.Runtime]System.Action`1<int32> m_handler
  .field private class Game.ButtonWidget m_okButton
  .field private class Game.ButtonWidget m_cancelButton
  .field private class Game.SliderWidget m_voltageSlider
  .field private int32 m_voltageLevel
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(int32 voltageLevel,
                               class [System.Runtime]System.Action`1<int32> 'handler') cil managed
  {
    // 代码大小       141 (0x8d)
    .maxstack  4
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.Dialog::.ctor()
    IL_0006:  ldstr      "Dialogs/EditBatteryDialog"
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
    IL_0030:  ldstr      "EditBatteryDialog.OK"
    IL_0035:  ldc.i4.1
    IL_0036:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_003b:  stfld      class Game.ButtonWidget Game.EditBatteryDialog::m_okButton
    IL_0040:  ldarg.0
    IL_0041:  ldarg.0
    IL_0042:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_0047:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_004c:  ldstr      "EditBatteryDialog.Cancel"
    IL_0051:  ldc.i4.1
    IL_0052:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_0057:  stfld      class Game.ButtonWidget Game.EditBatteryDialog::m_cancelButton
    IL_005c:  ldarg.0
    IL_005d:  ldarg.0
    IL_005e:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_0063:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0068:  ldstr      "EditBatteryDialog.VoltageSlider"
    IL_006d:  ldc.i4.1
    IL_006e:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.SliderWidget>(string,
                                                                                           bool)
    IL_0073:  stfld      class Game.SliderWidget Game.EditBatteryDialog::m_voltageSlider
    IL_0078:  ldarg.0
    IL_0079:  ldarg.2
    IL_007a:  stfld      class [System.Runtime]System.Action`1<int32> Game.EditBatteryDialog::m_handler
    IL_007f:  ldarg.0
    IL_0080:  ldarg.1
    IL_0081:  stfld      int32 Game.EditBatteryDialog::m_voltageLevel
    IL_0086:  ldarg.0
    IL_0087:  call       instance void Game.EditBatteryDialog::UpdateControls()
    IL_008c:  ret
  } // end of method EditBatteryDialog::.ctor

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       120 (0x78)
    .maxstack  2
    .locals init (valuetype [System.Runtime]System.Nullable`1<int32> V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SliderWidget Game.EditBatteryDialog::m_voltageSlider
    IL_0006:  callvirt   instance bool Game.SliderWidget::get_IsSliding()
    IL_000b:  brfalse.s  IL_001f

    IL_000d:  ldarg.0
    IL_000e:  ldarg.0
    IL_000f:  ldfld      class Game.SliderWidget Game.EditBatteryDialog::m_voltageSlider
    IL_0014:  callvirt   instance float32 Game.SliderWidget::get_Value()
    IL_0019:  conv.i4
    IL_001a:  stfld      int32 Game.EditBatteryDialog::m_voltageLevel
    IL_001f:  ldarg.0
    IL_0020:  ldfld      class Game.ButtonWidget Game.EditBatteryDialog::m_okButton
    IL_0025:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_002a:  brfalse.s  IL_003d

    IL_002c:  ldarg.0
    IL_002d:  ldarg.0
    IL_002e:  ldfld      int32 Game.EditBatteryDialog::m_voltageLevel
    IL_0033:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_0038:  call       instance void Game.EditBatteryDialog::Dismiss(valuetype [System.Runtime]System.Nullable`1<int32>)
    IL_003d:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_0042:  ldfld      bool Game.InputState::Back
    IL_0047:  brtrue.s   IL_0062

    IL_0049:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_004e:  ldfld      bool Game.InputState::B
    IL_0053:  brtrue.s   IL_0062

    IL_0055:  ldarg.0
    IL_0056:  ldfld      class Game.ButtonWidget Game.EditBatteryDialog::m_cancelButton
    IL_005b:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0060:  brfalse.s  IL_0071

    IL_0062:  ldarg.0
    IL_0063:  ldloca.s   V_0
    IL_0065:  initobj    valuetype [System.Runtime]System.Nullable`1<int32>
    IL_006b:  ldloc.0
    IL_006c:  call       instance void Game.EditBatteryDialog::Dismiss(valuetype [System.Runtime]System.Nullable`1<int32>)
    IL_0071:  ldarg.0
    IL_0072:  call       instance void Game.EditBatteryDialog::UpdateControls()
    IL_0077:  ret
  } // end of method EditBatteryDialog::Update

  .method private hidebysig instance void 
          UpdateControls() cil managed
  {
    // 代码大小       97 (0x61)
    .maxstack  7
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SliderWidget Game.EditBatteryDialog::m_voltageSlider
    IL_0006:  ldstr      "{0:0.0}V ({1})"
    IL_000b:  ldc.i4.2
    IL_000c:  newarr     [System.Runtime]System.Object
    IL_0011:  dup
    IL_0012:  ldc.i4.0
    IL_0013:  ldc.r4     1.5
    IL_0018:  ldarg.0
    IL_0019:  ldfld      int32 Game.EditBatteryDialog::m_voltageLevel
    IL_001e:  conv.r4
    IL_001f:  mul
    IL_0020:  ldc.r4     15.
    IL_0025:  div
    IL_0026:  box        [System.Runtime]System.Single
    IL_002b:  stelem.ref
    IL_002c:  dup
    IL_002d:  ldc.i4.1
    IL_002e:  ldarg.0
    IL_002f:  ldfld      int32 Game.EditBatteryDialog::m_voltageLevel
    IL_0034:  ldc.i4.8
    IL_0035:  blt.s      IL_003e

    IL_0037:  ldstr      "High"
    IL_003c:  br.s       IL_0043

    IL_003e:  ldstr      "Low"
    IL_0043:  stelem.ref
    IL_0044:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0049:  callvirt   instance void Game.SliderWidget::set_Text(string)
    IL_004e:  ldarg.0
    IL_004f:  ldfld      class Game.SliderWidget Game.EditBatteryDialog::m_voltageSlider
    IL_0054:  ldarg.0
    IL_0055:  ldfld      int32 Game.EditBatteryDialog::m_voltageLevel
    IL_005a:  conv.r4
    IL_005b:  callvirt   instance void Game.SliderWidget::set_Value(float32)
    IL_0060:  ret
  } // end of method EditBatteryDialog::UpdateControls

  .method private hidebysig instance void 
          Dismiss(valuetype [System.Runtime]System.Nullable`1<int32> result) cil managed
  {
    // 代码大小       42 (0x2a)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class [System.Runtime]System.Action`1<int32> Game.EditBatteryDialog::m_handler
    IL_000c:  brfalse.s  IL_0029

    IL_000e:  ldarga.s   result
    IL_0010:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0015:  brfalse.s  IL_0029

    IL_0017:  ldarg.0
    IL_0018:  ldfld      class [System.Runtime]System.Action`1<int32> Game.EditBatteryDialog::m_handler
    IL_001d:  ldarga.s   result
    IL_001f:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
    IL_0024:  callvirt   instance void class [System.Runtime]System.Action`1<int32>::Invoke(!0)
    IL_0029:  ret
  } // end of method EditBatteryDialog::Dismiss

} // end of class Game.EditBatteryDialog