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
    // 代码大小       115 (0x73)
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
    IL_0014:  call       void Game.WidgetsManager::LoadWidgetContents(class Game.Widget,
                                                                      object,
                                                                      class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_0019:  ldarg.0
    IL_001a:  ldarg.0
    IL_001b:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0020:  ldstr      "EditBatteryDialog.OK"
    IL_0025:  ldc.i4.1
    IL_0026:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_002b:  stfld      class Game.ButtonWidget Game.EditBatteryDialog::m_okButton
    IL_0030:  ldarg.0
    IL_0031:  ldarg.0
    IL_0032:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0037:  ldstr      "EditBatteryDialog.Cancel"
    IL_003c:  ldc.i4.1
    IL_003d:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0042:  stfld      class Game.ButtonWidget Game.EditBatteryDialog::m_cancelButton
    IL_0047:  ldarg.0
    IL_0048:  ldarg.0
    IL_0049:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_004e:  ldstr      "EditBatteryDialog.VoltageSlider"
    IL_0053:  ldc.i4.1
    IL_0054:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.SliderWidget>(string,
                                                                                      bool)
    IL_0059:  stfld      class Game.SliderWidget Game.EditBatteryDialog::m_voltageSlider
    IL_005e:  ldarg.0
    IL_005f:  ldarg.2
    IL_0060:  stfld      class [System.Runtime]System.Action`1<int32> Game.EditBatteryDialog::m_handler
    IL_0065:  ldarg.0
    IL_0066:  ldarg.1
    IL_0067:  stfld      int32 Game.EditBatteryDialog::m_voltageLevel
    IL_006c:  ldarg.0
    IL_006d:  call       instance void Game.EditBatteryDialog::UpdateControls()
    IL_0072:  ret
  } // end of method EditBatteryDialog::.ctor

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       109 (0x6d)
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
    IL_003d:  ldarg.0
    IL_003e:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0043:  callvirt   instance bool Game.WidgetInput::get_Cancel()
    IL_0048:  brtrue.s   IL_0057

    IL_004a:  ldarg.0
    IL_004b:  ldfld      class Game.ButtonWidget Game.EditBatteryDialog::m_cancelButton
    IL_0050:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0055:  brfalse.s  IL_0066

    IL_0057:  ldarg.0
    IL_0058:  ldloca.s   V_0
    IL_005a:  initobj    valuetype [System.Runtime]System.Nullable`1<int32>
    IL_0060:  ldloc.0
    IL_0061:  call       instance void Game.EditBatteryDialog::Dismiss(valuetype [System.Runtime]System.Nullable`1<int32>)
    IL_0066:  ldarg.0
    IL_0067:  call       instance void Game.EditBatteryDialog::UpdateControls()
    IL_006c:  ret
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