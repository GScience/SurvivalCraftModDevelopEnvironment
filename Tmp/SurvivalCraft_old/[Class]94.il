.class public auto ansi beforefieldinit Game.EditPistonDialog
       extends Game.Dialog
{
  .field private class Game.LabelWidget m_title
  .field private class Game.SliderWidget m_slider1
  .field private class Game.SliderWidget m_slider2
  .field private class Game.ContainerWidget m_panel2
  .field private class Game.SliderWidget m_slider3
  .field private class Game.ButtonWidget m_okButton
  .field private class Game.ButtonWidget m_cancelButton
  .field private class [System.Runtime]System.Action`1<int32> m_handler
  .field private int32 m_data
  .field private valuetype Game.PistonMode m_mode
  .field private int32 m_maxExtension
  .field private int32 m_pullCount
  .field private int32 m_speed
  .field private static string[] m_speedNames
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(int32 data,
                               class [System.Runtime]System.Action`1<int32> 'handler') cil managed
  {
    // 代码大小       515 (0x203)
    .maxstack  7
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.Dialog::.ctor()
    IL_0006:  ldstr      "Dialogs/EditPistonDialog"
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
    IL_0030:  ldstr      "EditPistonDialog.Title"
    IL_0035:  ldc.i4.1
    IL_0036:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_003b:  stfld      class Game.LabelWidget Game.EditPistonDialog::m_title
    IL_0040:  ldarg.0
    IL_0041:  ldarg.0
    IL_0042:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_0047:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_004c:  ldstr      "EditPistonDialog.Slider1"
    IL_0051:  ldc.i4.1
    IL_0052:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.SliderWidget>(string,
                                                                                           bool)
    IL_0057:  stfld      class Game.SliderWidget Game.EditPistonDialog::m_slider1
    IL_005c:  ldarg.0
    IL_005d:  ldarg.0
    IL_005e:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_0063:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0068:  ldstr      "EditPistonDialog.Panel2"
    IL_006d:  ldc.i4.1
    IL_006e:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ContainerWidget>(string,
                                                                                              bool)
    IL_0073:  stfld      class Game.ContainerWidget Game.EditPistonDialog::m_panel2
    IL_0078:  ldarg.0
    IL_0079:  ldarg.0
    IL_007a:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_007f:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0084:  ldstr      "EditPistonDialog.Slider2"
    IL_0089:  ldc.i4.1
    IL_008a:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.SliderWidget>(string,
                                                                                           bool)
    IL_008f:  stfld      class Game.SliderWidget Game.EditPistonDialog::m_slider2
    IL_0094:  ldarg.0
    IL_0095:  ldarg.0
    IL_0096:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_009b:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00a0:  ldstr      "EditPistonDialog.Slider3"
    IL_00a5:  ldc.i4.1
    IL_00a6:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.SliderWidget>(string,
                                                                                           bool)
    IL_00ab:  stfld      class Game.SliderWidget Game.EditPistonDialog::m_slider3
    IL_00b0:  ldarg.0
    IL_00b1:  ldarg.0
    IL_00b2:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_00b7:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00bc:  ldstr      "EditPistonDialog.OK"
    IL_00c1:  ldc.i4.1
    IL_00c2:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_00c7:  stfld      class Game.ButtonWidget Game.EditPistonDialog::m_okButton
    IL_00cc:  ldarg.0
    IL_00cd:  ldarg.0
    IL_00ce:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_00d3:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00d8:  ldstr      "EditPistonDialog.Cancel"
    IL_00dd:  ldc.i4.1
    IL_00de:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_00e3:  stfld      class Game.ButtonWidget Game.EditPistonDialog::m_cancelButton
    IL_00e8:  ldarg.0
    IL_00e9:  ldarg.2
    IL_00ea:  stfld      class [System.Runtime]System.Action`1<int32> Game.EditPistonDialog::m_handler
    IL_00ef:  ldarg.0
    IL_00f0:  ldarg.1
    IL_00f1:  stfld      int32 Game.EditPistonDialog::m_data
    IL_00f6:  ldarg.0
    IL_00f7:  ldarg.1
    IL_00f8:  call       valuetype Game.PistonMode Game.PistonBlock::GetMode(int32)
    IL_00fd:  stfld      valuetype Game.PistonMode Game.EditPistonDialog::m_mode
    IL_0102:  ldarg.0
    IL_0103:  ldarg.1
    IL_0104:  call       int32 Game.PistonBlock::GetMaxExtension(int32)
    IL_0109:  stfld      int32 Game.EditPistonDialog::m_maxExtension
    IL_010e:  ldarg.0
    IL_010f:  ldarg.1
    IL_0110:  call       int32 Game.PistonBlock::GetPullCount(int32)
    IL_0115:  stfld      int32 Game.EditPistonDialog::m_pullCount
    IL_011a:  ldarg.0
    IL_011b:  ldarg.1
    IL_011c:  call       int32 Game.PistonBlock::GetSpeed(int32)
    IL_0121:  stfld      int32 Game.EditPistonDialog::m_speed
    IL_0126:  ldarg.0
    IL_0127:  ldfld      class Game.LabelWidget Game.EditPistonDialog::m_title
    IL_012c:  ldstr      "Edit "
    IL_0131:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0136:  ldc.i4     0xed
    IL_013b:  ldelem.ref
    IL_013c:  ldnull
    IL_013d:  ldc.i4     0xed
    IL_0142:  ldc.i4.0
    IL_0143:  ldarg.1
    IL_0144:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_0149:  callvirt   instance string Game.Block::GetDisplayName(class Game.SubsystemTerrain,
                                                                    int32)
    IL_014e:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_0153:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0158:  ldarg.0
    IL_0159:  ldfld      class Game.SliderWidget Game.EditPistonDialog::m_slider1
    IL_015e:  ldc.r4     1.
    IL_0163:  callvirt   instance void Game.SliderWidget::set_Granularity(float32)
    IL_0168:  ldarg.0
    IL_0169:  ldfld      class Game.SliderWidget Game.EditPistonDialog::m_slider1
    IL_016e:  ldc.r4     1.
    IL_0173:  callvirt   instance void Game.SliderWidget::set_MinValue(float32)
    IL_0178:  ldarg.0
    IL_0179:  ldfld      class Game.SliderWidget Game.EditPistonDialog::m_slider1
    IL_017e:  ldc.r4     8.
    IL_0183:  callvirt   instance void Game.SliderWidget::set_MaxValue(float32)
    IL_0188:  ldarg.0
    IL_0189:  ldfld      class Game.SliderWidget Game.EditPistonDialog::m_slider2
    IL_018e:  ldc.r4     1.
    IL_0193:  callvirt   instance void Game.SliderWidget::set_Granularity(float32)
    IL_0198:  ldarg.0
    IL_0199:  ldfld      class Game.SliderWidget Game.EditPistonDialog::m_slider2
    IL_019e:  ldc.r4     1.
    IL_01a3:  callvirt   instance void Game.SliderWidget::set_MinValue(float32)
    IL_01a8:  ldarg.0
    IL_01a9:  ldfld      class Game.SliderWidget Game.EditPistonDialog::m_slider2
    IL_01ae:  ldc.r4     8.
    IL_01b3:  callvirt   instance void Game.SliderWidget::set_MaxValue(float32)
    IL_01b8:  ldarg.0
    IL_01b9:  ldfld      class Game.SliderWidget Game.EditPistonDialog::m_slider3
    IL_01be:  ldc.r4     1.
    IL_01c3:  callvirt   instance void Game.SliderWidget::set_Granularity(float32)
    IL_01c8:  ldarg.0
    IL_01c9:  ldfld      class Game.SliderWidget Game.EditPistonDialog::m_slider3
    IL_01ce:  ldc.r4     0.0
    IL_01d3:  callvirt   instance void Game.SliderWidget::set_MinValue(float32)
    IL_01d8:  ldarg.0
    IL_01d9:  ldfld      class Game.SliderWidget Game.EditPistonDialog::m_slider3
    IL_01de:  ldc.r4     3.
    IL_01e3:  callvirt   instance void Game.SliderWidget::set_MaxValue(float32)
    IL_01e8:  ldarg.0
    IL_01e9:  ldfld      class Game.ContainerWidget Game.EditPistonDialog::m_panel2
    IL_01ee:  ldarg.0
    IL_01ef:  ldfld      valuetype Game.PistonMode Game.EditPistonDialog::m_mode
    IL_01f4:  ldc.i4.0
    IL_01f5:  cgt.un
    IL_01f7:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_01fc:  ldarg.0
    IL_01fd:  call       instance void Game.EditPistonDialog::UpdateControls()
    IL_0202:  ret
  } // end of method EditPistonDialog::.ctor

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       221 (0xdd)
    .maxstack  3
    .locals init (int32 V_0,
             valuetype [System.Runtime]System.Nullable`1<int32> V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SliderWidget Game.EditPistonDialog::m_slider1
    IL_0006:  callvirt   instance bool Game.SliderWidget::get_IsSliding()
    IL_000b:  brfalse.s  IL_0021

    IL_000d:  ldarg.0
    IL_000e:  ldarg.0
    IL_000f:  ldfld      class Game.SliderWidget Game.EditPistonDialog::m_slider1
    IL_0014:  callvirt   instance float32 Game.SliderWidget::get_Value()
    IL_0019:  conv.i4
    IL_001a:  ldc.i4.1
    IL_001b:  sub
    IL_001c:  stfld      int32 Game.EditPistonDialog::m_maxExtension
    IL_0021:  ldarg.0
    IL_0022:  ldfld      class Game.SliderWidget Game.EditPistonDialog::m_slider2
    IL_0027:  callvirt   instance bool Game.SliderWidget::get_IsSliding()
    IL_002c:  brfalse.s  IL_0042

    IL_002e:  ldarg.0
    IL_002f:  ldarg.0
    IL_0030:  ldfld      class Game.SliderWidget Game.EditPistonDialog::m_slider2
    IL_0035:  callvirt   instance float32 Game.SliderWidget::get_Value()
    IL_003a:  conv.i4
    IL_003b:  ldc.i4.1
    IL_003c:  sub
    IL_003d:  stfld      int32 Game.EditPistonDialog::m_pullCount
    IL_0042:  ldarg.0
    IL_0043:  ldfld      class Game.SliderWidget Game.EditPistonDialog::m_slider3
    IL_0048:  callvirt   instance bool Game.SliderWidget::get_IsSliding()
    IL_004d:  brfalse.s  IL_0061

    IL_004f:  ldarg.0
    IL_0050:  ldarg.0
    IL_0051:  ldfld      class Game.SliderWidget Game.EditPistonDialog::m_slider3
    IL_0056:  callvirt   instance float32 Game.SliderWidget::get_Value()
    IL_005b:  conv.i4
    IL_005c:  stfld      int32 Game.EditPistonDialog::m_speed
    IL_0061:  ldarg.0
    IL_0062:  ldfld      class Game.ButtonWidget Game.EditPistonDialog::m_okButton
    IL_0067:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_006c:  brfalse.s  IL_00a2

    IL_006e:  ldarg.0
    IL_006f:  ldfld      int32 Game.EditPistonDialog::m_data
    IL_0074:  ldarg.0
    IL_0075:  ldfld      int32 Game.EditPistonDialog::m_speed
    IL_007a:  call       int32 Game.PistonBlock::SetSpeed(int32,
                                                          int32)
    IL_007f:  ldarg.0
    IL_0080:  ldfld      int32 Game.EditPistonDialog::m_pullCount
    IL_0085:  call       int32 Game.PistonBlock::SetPullCount(int32,
                                                              int32)
    IL_008a:  ldarg.0
    IL_008b:  ldfld      int32 Game.EditPistonDialog::m_maxExtension
    IL_0090:  call       int32 Game.PistonBlock::SetMaxExtension(int32,
                                                                 int32)
    IL_0095:  stloc.0
    IL_0096:  ldarg.0
    IL_0097:  ldloc.0
    IL_0098:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_009d:  call       instance void Game.EditPistonDialog::Dismiss(valuetype [System.Runtime]System.Nullable`1<int32>)
    IL_00a2:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_00a7:  ldfld      bool Game.InputState::Back
    IL_00ac:  brtrue.s   IL_00c7

    IL_00ae:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_00b3:  ldfld      bool Game.InputState::B
    IL_00b8:  brtrue.s   IL_00c7

    IL_00ba:  ldarg.0
    IL_00bb:  ldfld      class Game.ButtonWidget Game.EditPistonDialog::m_cancelButton
    IL_00c0:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_00c5:  brfalse.s  IL_00d6

    IL_00c7:  ldarg.0
    IL_00c8:  ldloca.s   V_1
    IL_00ca:  initobj    valuetype [System.Runtime]System.Nullable`1<int32>
    IL_00d0:  ldloc.1
    IL_00d1:  call       instance void Game.EditPistonDialog::Dismiss(valuetype [System.Runtime]System.Nullable`1<int32>)
    IL_00d6:  ldarg.0
    IL_00d7:  call       instance void Game.EditPistonDialog::UpdateControls()
    IL_00dc:  ret
  } // end of method EditPistonDialog::Update

  .method private hidebysig instance void 
          UpdateControls() cil managed
  {
    // 代码大小       168 (0xa8)
    .maxstack  7
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SliderWidget Game.EditPistonDialog::m_slider1
    IL_0006:  ldarg.0
    IL_0007:  ldfld      int32 Game.EditPistonDialog::m_maxExtension
    IL_000c:  ldc.i4.1
    IL_000d:  add
    IL_000e:  conv.r4
    IL_000f:  callvirt   instance void Game.SliderWidget::set_Value(float32)
    IL_0014:  ldarg.0
    IL_0015:  ldfld      class Game.SliderWidget Game.EditPistonDialog::m_slider1
    IL_001a:  ldstr      "{0} blocks"
    IL_001f:  ldc.i4.1
    IL_0020:  newarr     [System.Runtime]System.Object
    IL_0025:  dup
    IL_0026:  ldc.i4.0
    IL_0027:  ldarg.0
    IL_0028:  ldfld      int32 Game.EditPistonDialog::m_maxExtension
    IL_002d:  ldc.i4.1
    IL_002e:  add
    IL_002f:  box        [System.Runtime]System.Int32
    IL_0034:  stelem.ref
    IL_0035:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_003a:  callvirt   instance void Game.SliderWidget::set_Text(string)
    IL_003f:  ldarg.0
    IL_0040:  ldfld      class Game.SliderWidget Game.EditPistonDialog::m_slider2
    IL_0045:  ldarg.0
    IL_0046:  ldfld      int32 Game.EditPistonDialog::m_pullCount
    IL_004b:  ldc.i4.1
    IL_004c:  add
    IL_004d:  conv.r4
    IL_004e:  callvirt   instance void Game.SliderWidget::set_Value(float32)
    IL_0053:  ldarg.0
    IL_0054:  ldfld      class Game.SliderWidget Game.EditPistonDialog::m_slider2
    IL_0059:  ldstr      "{0} blocks"
    IL_005e:  ldc.i4.1
    IL_005f:  newarr     [System.Runtime]System.Object
    IL_0064:  dup
    IL_0065:  ldc.i4.0
    IL_0066:  ldarg.0
    IL_0067:  ldfld      int32 Game.EditPistonDialog::m_pullCount
    IL_006c:  ldc.i4.1
    IL_006d:  add
    IL_006e:  box        [System.Runtime]System.Int32
    IL_0073:  stelem.ref
    IL_0074:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0079:  callvirt   instance void Game.SliderWidget::set_Text(string)
    IL_007e:  ldarg.0
    IL_007f:  ldfld      class Game.SliderWidget Game.EditPistonDialog::m_slider3
    IL_0084:  ldarg.0
    IL_0085:  ldfld      int32 Game.EditPistonDialog::m_speed
    IL_008a:  conv.r4
    IL_008b:  callvirt   instance void Game.SliderWidget::set_Value(float32)
    IL_0090:  ldarg.0
    IL_0091:  ldfld      class Game.SliderWidget Game.EditPistonDialog::m_slider3
    IL_0096:  ldsfld     string[] Game.EditPistonDialog::m_speedNames
    IL_009b:  ldarg.0
    IL_009c:  ldfld      int32 Game.EditPistonDialog::m_speed
    IL_00a1:  ldelem.ref
    IL_00a2:  callvirt   instance void Game.SliderWidget::set_Text(string)
    IL_00a7:  ret
  } // end of method EditPistonDialog::UpdateControls

  .method private hidebysig instance void 
          Dismiss(valuetype [System.Runtime]System.Nullable`1<int32> result) cil managed
  {
    // 代码大小       42 (0x2a)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class [System.Runtime]System.Action`1<int32> Game.EditPistonDialog::m_handler
    IL_000c:  brfalse.s  IL_0029

    IL_000e:  ldarga.s   result
    IL_0010:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0015:  brfalse.s  IL_0029

    IL_0017:  ldarg.0
    IL_0018:  ldfld      class [System.Runtime]System.Action`1<int32> Game.EditPistonDialog::m_handler
    IL_001d:  ldarga.s   result
    IL_001f:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
    IL_0024:  callvirt   instance void class [System.Runtime]System.Action`1<int32>::Invoke(!0)
    IL_0029:  ret
  } // end of method EditPistonDialog::Dismiss

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       44 (0x2c)
    .maxstack  8
    IL_0000:  ldc.i4.4
    IL_0001:  newarr     [System.Runtime]System.String
    IL_0006:  dup
    IL_0007:  ldc.i4.0
    IL_0008:  ldstr      "Fast"
    IL_000d:  stelem.ref
    IL_000e:  dup
    IL_000f:  ldc.i4.1
    IL_0010:  ldstr      "Medium"
    IL_0015:  stelem.ref
    IL_0016:  dup
    IL_0017:  ldc.i4.2
    IL_0018:  ldstr      "Slow"
    IL_001d:  stelem.ref
    IL_001e:  dup
    IL_001f:  ldc.i4.3
    IL_0020:  ldstr      "Very Slow"
    IL_0025:  stelem.ref
    IL_0026:  stsfld     string[] Game.EditPistonDialog::m_speedNames
    IL_002b:  ret
  } // end of method EditPistonDialog::.cctor

} // end of class Game.EditPistonDialog