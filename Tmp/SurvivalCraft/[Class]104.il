.class public auto ansi beforefieldinit Game.EditSignDialog
       extends Game.Dialog
{
  .field private class Game.SubsystemSignBlockBehavior m_subsystemSignBlockBehavior
  .field private valuetype [Engine]Engine.Point3 m_signPoint
  .field private class Game.ContainerWidget m_linesPage
  .field private class Game.ContainerWidget m_urlPage
  .field private class Game.TextBoxWidget m_textBox1
  .field private class Game.TextBoxWidget m_textBox2
  .field private class Game.TextBoxWidget m_textBox3
  .field private class Game.TextBoxWidget m_textBox4
  .field private class Game.ButtonWidget m_colorButton1
  .field private class Game.ButtonWidget m_colorButton2
  .field private class Game.ButtonWidget m_colorButton3
  .field private class Game.ButtonWidget m_colorButton4
  .field private class Game.TextBoxWidget m_urlTextBox
  .field private class Game.ButtonWidget m_urlTestButton
  .field private class Game.ButtonWidget m_okButton
  .field private class Game.ButtonWidget m_cancelButton
  .field private class Game.ButtonWidget m_urlButton
  .field private class Game.ButtonWidget m_linesButton
  .field private valuetype [Engine]Engine.Color[] m_colors
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.SubsystemSignBlockBehavior subsystemSignBlockBehavior,
                               valuetype [Engine]Engine.Point3 signPoint) cil managed
  {
    // 代码大小       961 (0x3c1)
    .maxstack  7
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0,
             class Game.SignData V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.8
    IL_0002:  newarr     [Engine]Engine.Color
    IL_0007:  dup
    IL_0008:  ldc.i4.0
    IL_0009:  ldc.i4.0
    IL_000a:  ldc.i4.0
    IL_000b:  ldc.i4.0
    IL_000c:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0011:  stelem     [Engine]Engine.Color
    IL_0016:  dup
    IL_0017:  ldc.i4.1
    IL_0018:  ldc.i4     0x8c
    IL_001d:  ldc.i4.0
    IL_001e:  ldc.i4.0
    IL_001f:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0024:  stelem     [Engine]Engine.Color
    IL_0029:  dup
    IL_002a:  ldc.i4.2
    IL_002b:  ldc.i4.0
    IL_002c:  ldc.i4.s   112
    IL_002e:  ldc.i4.0
    IL_002f:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0034:  stelem     [Engine]Engine.Color
    IL_0039:  dup
    IL_003a:  ldc.i4.3
    IL_003b:  ldc.i4.0
    IL_003c:  ldc.i4.0
    IL_003d:  ldc.i4.s   96
    IL_003f:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0044:  stelem     [Engine]Engine.Color
    IL_0049:  dup
    IL_004a:  ldc.i4.4
    IL_004b:  ldc.i4     0xa0
    IL_0050:  ldc.i4.0
    IL_0051:  ldc.i4     0x80
    IL_0056:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_005b:  stelem     [Engine]Engine.Color
    IL_0060:  dup
    IL_0061:  ldc.i4.5
    IL_0062:  ldc.i4.0
    IL_0063:  ldc.i4.s   112
    IL_0065:  ldc.i4.s   112
    IL_0067:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_006c:  stelem     [Engine]Engine.Color
    IL_0071:  dup
    IL_0072:  ldc.i4.6
    IL_0073:  ldc.i4     0xa0
    IL_0078:  ldc.i4.s   112
    IL_007a:  ldc.i4.0
    IL_007b:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0080:  stelem     [Engine]Engine.Color
    IL_0085:  dup
    IL_0086:  ldc.i4.7
    IL_0087:  ldc.i4     0xb4
    IL_008c:  ldc.i4     0xb4
    IL_0091:  ldc.i4     0xb4
    IL_0096:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_009b:  stelem     [Engine]Engine.Color
    IL_00a0:  stfld      valuetype [Engine]Engine.Color[] Game.EditSignDialog::m_colors
    IL_00a5:  ldarg.0
    IL_00a6:  call       instance void Game.Dialog::.ctor()
    IL_00ab:  ldstr      "Dialogs/EditSignDialog"
    IL_00b0:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_00b5:  stloc.0
    IL_00b6:  ldarg.0
    IL_00b7:  ldarg.0
    IL_00b8:  ldloc.0
    IL_00b9:  call       void Game.WidgetsManager::LoadWidgetContents(class Game.Widget,
                                                                      object,
                                                                      class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_00be:  ldarg.0
    IL_00bf:  ldarg.0
    IL_00c0:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00c5:  ldstr      "EditSignDialog.LinesPage"
    IL_00ca:  ldc.i4.1
    IL_00cb:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ContainerWidget>(string,
                                                                                         bool)
    IL_00d0:  stfld      class Game.ContainerWidget Game.EditSignDialog::m_linesPage
    IL_00d5:  ldarg.0
    IL_00d6:  ldarg.0
    IL_00d7:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00dc:  ldstr      "EditSignDialog.UrlPage"
    IL_00e1:  ldc.i4.1
    IL_00e2:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ContainerWidget>(string,
                                                                                         bool)
    IL_00e7:  stfld      class Game.ContainerWidget Game.EditSignDialog::m_urlPage
    IL_00ec:  ldarg.0
    IL_00ed:  ldarg.0
    IL_00ee:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00f3:  ldstr      "EditSignDialog.TextBox1"
    IL_00f8:  ldc.i4.1
    IL_00f9:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.TextBoxWidget>(string,
                                                                                       bool)
    IL_00fe:  stfld      class Game.TextBoxWidget Game.EditSignDialog::m_textBox1
    IL_0103:  ldarg.0
    IL_0104:  ldarg.0
    IL_0105:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_010a:  ldstr      "EditSignDialog.TextBox2"
    IL_010f:  ldc.i4.1
    IL_0110:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.TextBoxWidget>(string,
                                                                                       bool)
    IL_0115:  stfld      class Game.TextBoxWidget Game.EditSignDialog::m_textBox2
    IL_011a:  ldarg.0
    IL_011b:  ldarg.0
    IL_011c:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0121:  ldstr      "EditSignDialog.TextBox3"
    IL_0126:  ldc.i4.1
    IL_0127:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.TextBoxWidget>(string,
                                                                                       bool)
    IL_012c:  stfld      class Game.TextBoxWidget Game.EditSignDialog::m_textBox3
    IL_0131:  ldarg.0
    IL_0132:  ldarg.0
    IL_0133:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0138:  ldstr      "EditSignDialog.TextBox4"
    IL_013d:  ldc.i4.1
    IL_013e:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.TextBoxWidget>(string,
                                                                                       bool)
    IL_0143:  stfld      class Game.TextBoxWidget Game.EditSignDialog::m_textBox4
    IL_0148:  ldarg.0
    IL_0149:  ldarg.0
    IL_014a:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_014f:  ldstr      "EditSignDialog.ColorButton1"
    IL_0154:  ldc.i4.1
    IL_0155:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_015a:  stfld      class Game.ButtonWidget Game.EditSignDialog::m_colorButton1
    IL_015f:  ldarg.0
    IL_0160:  ldarg.0
    IL_0161:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0166:  ldstr      "EditSignDialog.ColorButton2"
    IL_016b:  ldc.i4.1
    IL_016c:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0171:  stfld      class Game.ButtonWidget Game.EditSignDialog::m_colorButton2
    IL_0176:  ldarg.0
    IL_0177:  ldarg.0
    IL_0178:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_017d:  ldstr      "EditSignDialog.ColorButton3"
    IL_0182:  ldc.i4.1
    IL_0183:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0188:  stfld      class Game.ButtonWidget Game.EditSignDialog::m_colorButton3
    IL_018d:  ldarg.0
    IL_018e:  ldarg.0
    IL_018f:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0194:  ldstr      "EditSignDialog.ColorButton4"
    IL_0199:  ldc.i4.1
    IL_019a:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_019f:  stfld      class Game.ButtonWidget Game.EditSignDialog::m_colorButton4
    IL_01a4:  ldarg.0
    IL_01a5:  ldarg.0
    IL_01a6:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_01ab:  ldstr      "EditSignDialog.UrlTextBox"
    IL_01b0:  ldc.i4.1
    IL_01b1:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.TextBoxWidget>(string,
                                                                                       bool)
    IL_01b6:  stfld      class Game.TextBoxWidget Game.EditSignDialog::m_urlTextBox
    IL_01bb:  ldarg.0
    IL_01bc:  ldarg.0
    IL_01bd:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_01c2:  ldstr      "EditSignDialog.UrlTestButton"
    IL_01c7:  ldc.i4.1
    IL_01c8:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_01cd:  stfld      class Game.ButtonWidget Game.EditSignDialog::m_urlTestButton
    IL_01d2:  ldarg.0
    IL_01d3:  ldarg.0
    IL_01d4:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_01d9:  ldstr      "EditSignDialog.OkButton"
    IL_01de:  ldc.i4.1
    IL_01df:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_01e4:  stfld      class Game.ButtonWidget Game.EditSignDialog::m_okButton
    IL_01e9:  ldarg.0
    IL_01ea:  ldarg.0
    IL_01eb:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_01f0:  ldstr      "EditSignDialog.CancelButton"
    IL_01f5:  ldc.i4.1
    IL_01f6:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_01fb:  stfld      class Game.ButtonWidget Game.EditSignDialog::m_cancelButton
    IL_0200:  ldarg.0
    IL_0201:  ldarg.0
    IL_0202:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0207:  ldstr      "EditSignDialog.UrlButton"
    IL_020c:  ldc.i4.1
    IL_020d:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0212:  stfld      class Game.ButtonWidget Game.EditSignDialog::m_urlButton
    IL_0217:  ldarg.0
    IL_0218:  ldarg.0
    IL_0219:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_021e:  ldstr      "EditSignDialog.LinesButton"
    IL_0223:  ldc.i4.1
    IL_0224:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0229:  stfld      class Game.ButtonWidget Game.EditSignDialog::m_linesButton
    IL_022e:  ldarg.0
    IL_022f:  ldarg.1
    IL_0230:  stfld      class Game.SubsystemSignBlockBehavior Game.EditSignDialog::m_subsystemSignBlockBehavior
    IL_0235:  ldarg.0
    IL_0236:  ldarg.2
    IL_0237:  stfld      valuetype [Engine]Engine.Point3 Game.EditSignDialog::m_signPoint
    IL_023c:  ldarg.0
    IL_023d:  ldfld      class Game.SubsystemSignBlockBehavior Game.EditSignDialog::m_subsystemSignBlockBehavior
    IL_0242:  ldarg.0
    IL_0243:  ldfld      valuetype [Engine]Engine.Point3 Game.EditSignDialog::m_signPoint
    IL_0248:  callvirt   instance class Game.SignData Game.SubsystemSignBlockBehavior::GetSignData(valuetype [Engine]Engine.Point3)
    IL_024d:  stloc.1
    IL_024e:  ldloc.1
    IL_024f:  brfalse    IL_0312

    IL_0254:  ldarg.0
    IL_0255:  ldfld      class Game.TextBoxWidget Game.EditSignDialog::m_textBox1
    IL_025a:  ldloc.1
    IL_025b:  ldfld      string[] Game.SignData::Lines
    IL_0260:  ldc.i4.0
    IL_0261:  ldelem.ref
    IL_0262:  callvirt   instance void Game.TextBoxWidget::set_Text(string)
    IL_0267:  ldarg.0
    IL_0268:  ldfld      class Game.TextBoxWidget Game.EditSignDialog::m_textBox2
    IL_026d:  ldloc.1
    IL_026e:  ldfld      string[] Game.SignData::Lines
    IL_0273:  ldc.i4.1
    IL_0274:  ldelem.ref
    IL_0275:  callvirt   instance void Game.TextBoxWidget::set_Text(string)
    IL_027a:  ldarg.0
    IL_027b:  ldfld      class Game.TextBoxWidget Game.EditSignDialog::m_textBox3
    IL_0280:  ldloc.1
    IL_0281:  ldfld      string[] Game.SignData::Lines
    IL_0286:  ldc.i4.2
    IL_0287:  ldelem.ref
    IL_0288:  callvirt   instance void Game.TextBoxWidget::set_Text(string)
    IL_028d:  ldarg.0
    IL_028e:  ldfld      class Game.TextBoxWidget Game.EditSignDialog::m_textBox4
    IL_0293:  ldloc.1
    IL_0294:  ldfld      string[] Game.SignData::Lines
    IL_0299:  ldc.i4.3
    IL_029a:  ldelem.ref
    IL_029b:  callvirt   instance void Game.TextBoxWidget::set_Text(string)
    IL_02a0:  ldarg.0
    IL_02a1:  ldfld      class Game.ButtonWidget Game.EditSignDialog::m_colorButton1
    IL_02a6:  ldloc.1
    IL_02a7:  ldfld      valuetype [Engine]Engine.Color[] Game.SignData::Colors
    IL_02ac:  ldc.i4.0
    IL_02ad:  ldelem     [Engine]Engine.Color
    IL_02b2:  callvirt   instance void Game.ButtonWidget::set_Color(valuetype [Engine]Engine.Color)
    IL_02b7:  ldarg.0
    IL_02b8:  ldfld      class Game.ButtonWidget Game.EditSignDialog::m_colorButton2
    IL_02bd:  ldloc.1
    IL_02be:  ldfld      valuetype [Engine]Engine.Color[] Game.SignData::Colors
    IL_02c3:  ldc.i4.1
    IL_02c4:  ldelem     [Engine]Engine.Color
    IL_02c9:  callvirt   instance void Game.ButtonWidget::set_Color(valuetype [Engine]Engine.Color)
    IL_02ce:  ldarg.0
    IL_02cf:  ldfld      class Game.ButtonWidget Game.EditSignDialog::m_colorButton3
    IL_02d4:  ldloc.1
    IL_02d5:  ldfld      valuetype [Engine]Engine.Color[] Game.SignData::Colors
    IL_02da:  ldc.i4.2
    IL_02db:  ldelem     [Engine]Engine.Color
    IL_02e0:  callvirt   instance void Game.ButtonWidget::set_Color(valuetype [Engine]Engine.Color)
    IL_02e5:  ldarg.0
    IL_02e6:  ldfld      class Game.ButtonWidget Game.EditSignDialog::m_colorButton4
    IL_02eb:  ldloc.1
    IL_02ec:  ldfld      valuetype [Engine]Engine.Color[] Game.SignData::Colors
    IL_02f1:  ldc.i4.3
    IL_02f2:  ldelem     [Engine]Engine.Color
    IL_02f7:  callvirt   instance void Game.ButtonWidget::set_Color(valuetype [Engine]Engine.Color)
    IL_02fc:  ldarg.0
    IL_02fd:  ldfld      class Game.TextBoxWidget Game.EditSignDialog::m_urlTextBox
    IL_0302:  ldloc.1
    IL_0303:  ldfld      string Game.SignData::Url
    IL_0308:  callvirt   instance void Game.TextBoxWidget::set_Text(string)
    IL_030d:  br         IL_03a2

    IL_0312:  ldarg.0
    IL_0313:  ldfld      class Game.TextBoxWidget Game.EditSignDialog::m_textBox1
    IL_0318:  ldsfld     string [System.Runtime]System.String::Empty
    IL_031d:  callvirt   instance void Game.TextBoxWidget::set_Text(string)
    IL_0322:  ldarg.0
    IL_0323:  ldfld      class Game.TextBoxWidget Game.EditSignDialog::m_textBox2
    IL_0328:  ldsfld     string [System.Runtime]System.String::Empty
    IL_032d:  callvirt   instance void Game.TextBoxWidget::set_Text(string)
    IL_0332:  ldarg.0
    IL_0333:  ldfld      class Game.TextBoxWidget Game.EditSignDialog::m_textBox3
    IL_0338:  ldsfld     string [System.Runtime]System.String::Empty
    IL_033d:  callvirt   instance void Game.TextBoxWidget::set_Text(string)
    IL_0342:  ldarg.0
    IL_0343:  ldfld      class Game.TextBoxWidget Game.EditSignDialog::m_textBox4
    IL_0348:  ldsfld     string [System.Runtime]System.String::Empty
    IL_034d:  callvirt   instance void Game.TextBoxWidget::set_Text(string)
    IL_0352:  ldarg.0
    IL_0353:  ldfld      class Game.ButtonWidget Game.EditSignDialog::m_colorButton1
    IL_0358:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Black
    IL_035d:  callvirt   instance void Game.ButtonWidget::set_Color(valuetype [Engine]Engine.Color)
    IL_0362:  ldarg.0
    IL_0363:  ldfld      class Game.ButtonWidget Game.EditSignDialog::m_colorButton2
    IL_0368:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Black
    IL_036d:  callvirt   instance void Game.ButtonWidget::set_Color(valuetype [Engine]Engine.Color)
    IL_0372:  ldarg.0
    IL_0373:  ldfld      class Game.ButtonWidget Game.EditSignDialog::m_colorButton3
    IL_0378:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Black
    IL_037d:  callvirt   instance void Game.ButtonWidget::set_Color(valuetype [Engine]Engine.Color)
    IL_0382:  ldarg.0
    IL_0383:  ldfld      class Game.ButtonWidget Game.EditSignDialog::m_colorButton4
    IL_0388:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Black
    IL_038d:  callvirt   instance void Game.ButtonWidget::set_Color(valuetype [Engine]Engine.Color)
    IL_0392:  ldarg.0
    IL_0393:  ldfld      class Game.TextBoxWidget Game.EditSignDialog::m_urlTextBox
    IL_0398:  ldsfld     string [System.Runtime]System.String::Empty
    IL_039d:  callvirt   instance void Game.TextBoxWidget::set_Text(string)
    IL_03a2:  ldarg.0
    IL_03a3:  ldfld      class Game.ContainerWidget Game.EditSignDialog::m_linesPage
    IL_03a8:  ldc.i4.1
    IL_03a9:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_03ae:  ldarg.0
    IL_03af:  ldfld      class Game.ContainerWidget Game.EditSignDialog::m_urlPage
    IL_03b4:  ldc.i4.0
    IL_03b5:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_03ba:  ldarg.0
    IL_03bb:  call       instance void Game.EditSignDialog::UpdateControls()
    IL_03c0:  ret
  } // end of method EditSignDialog::.ctor

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       608 (0x260)
    .maxstack  5
    .locals init (string[] V_0,
             valuetype [Engine]Engine.Color[] V_1)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.EditSignDialog::UpdateControls()
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class Game.ButtonWidget Game.EditSignDialog::m_okButton
    IL_000c:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0011:  brfalse    IL_00c8

    IL_0016:  ldc.i4.4
    IL_0017:  newarr     [System.Runtime]System.String
    IL_001c:  dup
    IL_001d:  ldc.i4.0
    IL_001e:  ldarg.0
    IL_001f:  ldfld      class Game.TextBoxWidget Game.EditSignDialog::m_textBox1
    IL_0024:  callvirt   instance string Game.TextBoxWidget::get_Text()
    IL_0029:  stelem.ref
    IL_002a:  dup
    IL_002b:  ldc.i4.1
    IL_002c:  ldarg.0
    IL_002d:  ldfld      class Game.TextBoxWidget Game.EditSignDialog::m_textBox2
    IL_0032:  callvirt   instance string Game.TextBoxWidget::get_Text()
    IL_0037:  stelem.ref
    IL_0038:  dup
    IL_0039:  ldc.i4.2
    IL_003a:  ldarg.0
    IL_003b:  ldfld      class Game.TextBoxWidget Game.EditSignDialog::m_textBox3
    IL_0040:  callvirt   instance string Game.TextBoxWidget::get_Text()
    IL_0045:  stelem.ref
    IL_0046:  dup
    IL_0047:  ldc.i4.3
    IL_0048:  ldarg.0
    IL_0049:  ldfld      class Game.TextBoxWidget Game.EditSignDialog::m_textBox4
    IL_004e:  callvirt   instance string Game.TextBoxWidget::get_Text()
    IL_0053:  stelem.ref
    IL_0054:  stloc.0
    IL_0055:  ldc.i4.4
    IL_0056:  newarr     [Engine]Engine.Color
    IL_005b:  dup
    IL_005c:  ldc.i4.0
    IL_005d:  ldarg.0
    IL_005e:  ldfld      class Game.ButtonWidget Game.EditSignDialog::m_colorButton1
    IL_0063:  callvirt   instance valuetype [Engine]Engine.Color Game.ButtonWidget::get_Color()
    IL_0068:  stelem     [Engine]Engine.Color
    IL_006d:  dup
    IL_006e:  ldc.i4.1
    IL_006f:  ldarg.0
    IL_0070:  ldfld      class Game.ButtonWidget Game.EditSignDialog::m_colorButton2
    IL_0075:  callvirt   instance valuetype [Engine]Engine.Color Game.ButtonWidget::get_Color()
    IL_007a:  stelem     [Engine]Engine.Color
    IL_007f:  dup
    IL_0080:  ldc.i4.2
    IL_0081:  ldarg.0
    IL_0082:  ldfld      class Game.ButtonWidget Game.EditSignDialog::m_colorButton3
    IL_0087:  callvirt   instance valuetype [Engine]Engine.Color Game.ButtonWidget::get_Color()
    IL_008c:  stelem     [Engine]Engine.Color
    IL_0091:  dup
    IL_0092:  ldc.i4.3
    IL_0093:  ldarg.0
    IL_0094:  ldfld      class Game.ButtonWidget Game.EditSignDialog::m_colorButton4
    IL_0099:  callvirt   instance valuetype [Engine]Engine.Color Game.ButtonWidget::get_Color()
    IL_009e:  stelem     [Engine]Engine.Color
    IL_00a3:  stloc.1
    IL_00a4:  ldarg.0
    IL_00a5:  ldfld      class Game.SubsystemSignBlockBehavior Game.EditSignDialog::m_subsystemSignBlockBehavior
    IL_00aa:  ldarg.0
    IL_00ab:  ldfld      valuetype [Engine]Engine.Point3 Game.EditSignDialog::m_signPoint
    IL_00b0:  ldloc.0
    IL_00b1:  ldloc.1
    IL_00b2:  ldarg.0
    IL_00b3:  ldfld      class Game.TextBoxWidget Game.EditSignDialog::m_urlTextBox
    IL_00b8:  callvirt   instance string Game.TextBoxWidget::get_Text()
    IL_00bd:  callvirt   instance void Game.SubsystemSignBlockBehavior::SetSignData(valuetype [Engine]Engine.Point3,
                                                                                    string[],
                                                                                    valuetype [Engine]Engine.Color[],
                                                                                    string)
    IL_00c2:  ldarg.0
    IL_00c3:  call       instance void Game.EditSignDialog::Dismiss()
    IL_00c8:  ldarg.0
    IL_00c9:  ldfld      class Game.ButtonWidget Game.EditSignDialog::m_urlButton
    IL_00ce:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_00d3:  brfalse.s  IL_00ed

    IL_00d5:  ldarg.0
    IL_00d6:  ldfld      class Game.ContainerWidget Game.EditSignDialog::m_urlPage
    IL_00db:  ldc.i4.1
    IL_00dc:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_00e1:  ldarg.0
    IL_00e2:  ldfld      class Game.ContainerWidget Game.EditSignDialog::m_linesPage
    IL_00e7:  ldc.i4.0
    IL_00e8:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_00ed:  ldarg.0
    IL_00ee:  ldfld      class Game.ButtonWidget Game.EditSignDialog::m_linesButton
    IL_00f3:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_00f8:  brfalse.s  IL_0112

    IL_00fa:  ldarg.0
    IL_00fb:  ldfld      class Game.ContainerWidget Game.EditSignDialog::m_urlPage
    IL_0100:  ldc.i4.0
    IL_0101:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0106:  ldarg.0
    IL_0107:  ldfld      class Game.ContainerWidget Game.EditSignDialog::m_linesPage
    IL_010c:  ldc.i4.1
    IL_010d:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0112:  ldarg.0
    IL_0113:  ldfld      class Game.ButtonWidget Game.EditSignDialog::m_urlTestButton
    IL_0118:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_011d:  brfalse.s  IL_012f

    IL_011f:  ldarg.0
    IL_0120:  ldfld      class Game.TextBoxWidget Game.EditSignDialog::m_urlTextBox
    IL_0125:  callvirt   instance string Game.TextBoxWidget::get_Text()
    IL_012a:  call       void Game.WebBrowserManager::LaunchBrowser(string)
    IL_012f:  ldarg.0
    IL_0130:  ldfld      class Game.ButtonWidget Game.EditSignDialog::m_colorButton1
    IL_0135:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_013a:  brfalse.s  IL_0173

    IL_013c:  ldarg.0
    IL_013d:  ldfld      class Game.ButtonWidget Game.EditSignDialog::m_colorButton1
    IL_0142:  ldarg.0
    IL_0143:  ldfld      valuetype [Engine]Engine.Color[] Game.EditSignDialog::m_colors
    IL_0148:  ldarg.0
    IL_0149:  ldfld      valuetype [Engine]Engine.Color[] Game.EditSignDialog::m_colors
    IL_014e:  ldarg.0
    IL_014f:  ldfld      class Game.ButtonWidget Game.EditSignDialog::m_colorButton1
    IL_0154:  callvirt   instance valuetype [Engine]Engine.Color Game.ButtonWidget::get_Color()
    IL_0159:  call       int32 Game.CollectionUtils::FirstIndex<valuetype [Engine]Engine.Color>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                !!0)
    IL_015e:  ldc.i4.1
    IL_015f:  add
    IL_0160:  ldarg.0
    IL_0161:  ldfld      valuetype [Engine]Engine.Color[] Game.EditSignDialog::m_colors
    IL_0166:  ldlen
    IL_0167:  conv.i4
    IL_0168:  rem
    IL_0169:  ldelem     [Engine]Engine.Color
    IL_016e:  callvirt   instance void Game.ButtonWidget::set_Color(valuetype [Engine]Engine.Color)
    IL_0173:  ldarg.0
    IL_0174:  ldfld      class Game.ButtonWidget Game.EditSignDialog::m_colorButton2
    IL_0179:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_017e:  brfalse.s  IL_01b7

    IL_0180:  ldarg.0
    IL_0181:  ldfld      class Game.ButtonWidget Game.EditSignDialog::m_colorButton2
    IL_0186:  ldarg.0
    IL_0187:  ldfld      valuetype [Engine]Engine.Color[] Game.EditSignDialog::m_colors
    IL_018c:  ldarg.0
    IL_018d:  ldfld      valuetype [Engine]Engine.Color[] Game.EditSignDialog::m_colors
    IL_0192:  ldarg.0
    IL_0193:  ldfld      class Game.ButtonWidget Game.EditSignDialog::m_colorButton2
    IL_0198:  callvirt   instance valuetype [Engine]Engine.Color Game.ButtonWidget::get_Color()
    IL_019d:  call       int32 Game.CollectionUtils::FirstIndex<valuetype [Engine]Engine.Color>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                !!0)
    IL_01a2:  ldc.i4.1
    IL_01a3:  add
    IL_01a4:  ldarg.0
    IL_01a5:  ldfld      valuetype [Engine]Engine.Color[] Game.EditSignDialog::m_colors
    IL_01aa:  ldlen
    IL_01ab:  conv.i4
    IL_01ac:  rem
    IL_01ad:  ldelem     [Engine]Engine.Color
    IL_01b2:  callvirt   instance void Game.ButtonWidget::set_Color(valuetype [Engine]Engine.Color)
    IL_01b7:  ldarg.0
    IL_01b8:  ldfld      class Game.ButtonWidget Game.EditSignDialog::m_colorButton3
    IL_01bd:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_01c2:  brfalse.s  IL_01fb

    IL_01c4:  ldarg.0
    IL_01c5:  ldfld      class Game.ButtonWidget Game.EditSignDialog::m_colorButton3
    IL_01ca:  ldarg.0
    IL_01cb:  ldfld      valuetype [Engine]Engine.Color[] Game.EditSignDialog::m_colors
    IL_01d0:  ldarg.0
    IL_01d1:  ldfld      valuetype [Engine]Engine.Color[] Game.EditSignDialog::m_colors
    IL_01d6:  ldarg.0
    IL_01d7:  ldfld      class Game.ButtonWidget Game.EditSignDialog::m_colorButton3
    IL_01dc:  callvirt   instance valuetype [Engine]Engine.Color Game.ButtonWidget::get_Color()
    IL_01e1:  call       int32 Game.CollectionUtils::FirstIndex<valuetype [Engine]Engine.Color>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                !!0)
    IL_01e6:  ldc.i4.1
    IL_01e7:  add
    IL_01e8:  ldarg.0
    IL_01e9:  ldfld      valuetype [Engine]Engine.Color[] Game.EditSignDialog::m_colors
    IL_01ee:  ldlen
    IL_01ef:  conv.i4
    IL_01f0:  rem
    IL_01f1:  ldelem     [Engine]Engine.Color
    IL_01f6:  callvirt   instance void Game.ButtonWidget::set_Color(valuetype [Engine]Engine.Color)
    IL_01fb:  ldarg.0
    IL_01fc:  ldfld      class Game.ButtonWidget Game.EditSignDialog::m_colorButton4
    IL_0201:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0206:  brfalse.s  IL_023f

    IL_0208:  ldarg.0
    IL_0209:  ldfld      class Game.ButtonWidget Game.EditSignDialog::m_colorButton4
    IL_020e:  ldarg.0
    IL_020f:  ldfld      valuetype [Engine]Engine.Color[] Game.EditSignDialog::m_colors
    IL_0214:  ldarg.0
    IL_0215:  ldfld      valuetype [Engine]Engine.Color[] Game.EditSignDialog::m_colors
    IL_021a:  ldarg.0
    IL_021b:  ldfld      class Game.ButtonWidget Game.EditSignDialog::m_colorButton4
    IL_0220:  callvirt   instance valuetype [Engine]Engine.Color Game.ButtonWidget::get_Color()
    IL_0225:  call       int32 Game.CollectionUtils::FirstIndex<valuetype [Engine]Engine.Color>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                !!0)
    IL_022a:  ldc.i4.1
    IL_022b:  add
    IL_022c:  ldarg.0
    IL_022d:  ldfld      valuetype [Engine]Engine.Color[] Game.EditSignDialog::m_colors
    IL_0232:  ldlen
    IL_0233:  conv.i4
    IL_0234:  rem
    IL_0235:  ldelem     [Engine]Engine.Color
    IL_023a:  callvirt   instance void Game.ButtonWidget::set_Color(valuetype [Engine]Engine.Color)
    IL_023f:  ldarg.0
    IL_0240:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0245:  callvirt   instance bool Game.WidgetInput::get_Cancel()
    IL_024a:  brtrue.s   IL_0259

    IL_024c:  ldarg.0
    IL_024d:  ldfld      class Game.ButtonWidget Game.EditSignDialog::m_cancelButton
    IL_0252:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0257:  brfalse.s  IL_025f

    IL_0259:  ldarg.0
    IL_025a:  call       instance void Game.EditSignDialog::Dismiss()
    IL_025f:  ret
  } // end of method EditSignDialog::Update

  .method private hidebysig instance void 
          UpdateControls() cil managed
  {
    // 代码大小       140 (0x8c)
    .maxstack  3
    .locals init (bool V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.TextBoxWidget Game.EditSignDialog::m_urlTextBox
    IL_0006:  callvirt   instance string Game.TextBoxWidget::get_Text()
    IL_000b:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_0010:  ldc.i4.0
    IL_0011:  ceq
    IL_0013:  stloc.0
    IL_0014:  ldarg.0
    IL_0015:  ldfld      class Game.ButtonWidget Game.EditSignDialog::m_urlButton
    IL_001a:  ldarg.0
    IL_001b:  ldfld      class Game.ContainerWidget Game.EditSignDialog::m_linesPage
    IL_0020:  callvirt   instance bool Game.Widget::get_IsVisible()
    IL_0025:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_002a:  ldarg.0
    IL_002b:  ldfld      class Game.ButtonWidget Game.EditSignDialog::m_linesButton
    IL_0030:  ldarg.0
    IL_0031:  ldfld      class Game.ContainerWidget Game.EditSignDialog::m_linesPage
    IL_0036:  callvirt   instance bool Game.Widget::get_IsVisible()
    IL_003b:  ldc.i4.0
    IL_003c:  ceq
    IL_003e:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0043:  ldarg.0
    IL_0044:  ldfld      class Game.ButtonWidget Game.EditSignDialog::m_colorButton1
    IL_0049:  ldloc.0
    IL_004a:  ldc.i4.0
    IL_004b:  ceq
    IL_004d:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_0052:  ldarg.0
    IL_0053:  ldfld      class Game.ButtonWidget Game.EditSignDialog::m_colorButton2
    IL_0058:  ldloc.0
    IL_0059:  ldc.i4.0
    IL_005a:  ceq
    IL_005c:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_0061:  ldarg.0
    IL_0062:  ldfld      class Game.ButtonWidget Game.EditSignDialog::m_colorButton3
    IL_0067:  ldloc.0
    IL_0068:  ldc.i4.0
    IL_0069:  ceq
    IL_006b:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_0070:  ldarg.0
    IL_0071:  ldfld      class Game.ButtonWidget Game.EditSignDialog::m_colorButton4
    IL_0076:  ldloc.0
    IL_0077:  ldc.i4.0
    IL_0078:  ceq
    IL_007a:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_007f:  ldarg.0
    IL_0080:  ldfld      class Game.ButtonWidget Game.EditSignDialog::m_urlTestButton
    IL_0085:  ldloc.0
    IL_0086:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_008b:  ret
  } // end of method EditSignDialog::UpdateControls

  .method private hidebysig instance void 
          Dismiss() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
    IL_0006:  ret
  } // end of method EditSignDialog::Dismiss

} // end of class Game.EditSignDialog