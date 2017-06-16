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
    // 代码大小       1052 (0x41c)
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
    IL_00b9:  ldnull
    IL_00ba:  call       class Game.Widget Game.WidgetsManager::LoadWidget(object,
                                                                           class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                           class Game.ContainerWidget)
    IL_00bf:  castclass  Game.ContainerWidget
    IL_00c4:  call       instance void Game.Dialog::set_DialogWidget(class Game.ContainerWidget)
    IL_00c9:  ldarg.0
    IL_00ca:  ldarg.0
    IL_00cb:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_00d0:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00d5:  ldstr      "EditSignDialog.LinesPage"
    IL_00da:  ldc.i4.1
    IL_00db:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ContainerWidget>(string,
                                                                                              bool)
    IL_00e0:  stfld      class Game.ContainerWidget Game.EditSignDialog::m_linesPage
    IL_00e5:  ldarg.0
    IL_00e6:  ldarg.0
    IL_00e7:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_00ec:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00f1:  ldstr      "EditSignDialog.UrlPage"
    IL_00f6:  ldc.i4.1
    IL_00f7:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ContainerWidget>(string,
                                                                                              bool)
    IL_00fc:  stfld      class Game.ContainerWidget Game.EditSignDialog::m_urlPage
    IL_0101:  ldarg.0
    IL_0102:  ldarg.0
    IL_0103:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_0108:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_010d:  ldstr      "EditSignDialog.TextBox1"
    IL_0112:  ldc.i4.1
    IL_0113:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.TextBoxWidget>(string,
                                                                                            bool)
    IL_0118:  stfld      class Game.TextBoxWidget Game.EditSignDialog::m_textBox1
    IL_011d:  ldarg.0
    IL_011e:  ldarg.0
    IL_011f:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_0124:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0129:  ldstr      "EditSignDialog.TextBox2"
    IL_012e:  ldc.i4.1
    IL_012f:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.TextBoxWidget>(string,
                                                                                            bool)
    IL_0134:  stfld      class Game.TextBoxWidget Game.EditSignDialog::m_textBox2
    IL_0139:  ldarg.0
    IL_013a:  ldarg.0
    IL_013b:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_0140:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0145:  ldstr      "EditSignDialog.TextBox3"
    IL_014a:  ldc.i4.1
    IL_014b:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.TextBoxWidget>(string,
                                                                                            bool)
    IL_0150:  stfld      class Game.TextBoxWidget Game.EditSignDialog::m_textBox3
    IL_0155:  ldarg.0
    IL_0156:  ldarg.0
    IL_0157:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_015c:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0161:  ldstr      "EditSignDialog.TextBox4"
    IL_0166:  ldc.i4.1
    IL_0167:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.TextBoxWidget>(string,
                                                                                            bool)
    IL_016c:  stfld      class Game.TextBoxWidget Game.EditSignDialog::m_textBox4
    IL_0171:  ldarg.0
    IL_0172:  ldarg.0
    IL_0173:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_0178:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_017d:  ldstr      "EditSignDialog.ColorButton1"
    IL_0182:  ldc.i4.1
    IL_0183:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_0188:  stfld      class Game.ButtonWidget Game.EditSignDialog::m_colorButton1
    IL_018d:  ldarg.0
    IL_018e:  ldarg.0
    IL_018f:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_0194:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0199:  ldstr      "EditSignDialog.ColorButton2"
    IL_019e:  ldc.i4.1
    IL_019f:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_01a4:  stfld      class Game.ButtonWidget Game.EditSignDialog::m_colorButton2
    IL_01a9:  ldarg.0
    IL_01aa:  ldarg.0
    IL_01ab:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_01b0:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_01b5:  ldstr      "EditSignDialog.ColorButton3"
    IL_01ba:  ldc.i4.1
    IL_01bb:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_01c0:  stfld      class Game.ButtonWidget Game.EditSignDialog::m_colorButton3
    IL_01c5:  ldarg.0
    IL_01c6:  ldarg.0
    IL_01c7:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_01cc:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_01d1:  ldstr      "EditSignDialog.ColorButton4"
    IL_01d6:  ldc.i4.1
    IL_01d7:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_01dc:  stfld      class Game.ButtonWidget Game.EditSignDialog::m_colorButton4
    IL_01e1:  ldarg.0
    IL_01e2:  ldarg.0
    IL_01e3:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_01e8:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_01ed:  ldstr      "EditSignDialog.UrlTextBox"
    IL_01f2:  ldc.i4.1
    IL_01f3:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.TextBoxWidget>(string,
                                                                                            bool)
    IL_01f8:  stfld      class Game.TextBoxWidget Game.EditSignDialog::m_urlTextBox
    IL_01fd:  ldarg.0
    IL_01fe:  ldarg.0
    IL_01ff:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_0204:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0209:  ldstr      "EditSignDialog.UrlTestButton"
    IL_020e:  ldc.i4.1
    IL_020f:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_0214:  stfld      class Game.ButtonWidget Game.EditSignDialog::m_urlTestButton
    IL_0219:  ldarg.0
    IL_021a:  ldarg.0
    IL_021b:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_0220:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0225:  ldstr      "EditSignDialog.OkButton"
    IL_022a:  ldc.i4.1
    IL_022b:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_0230:  stfld      class Game.ButtonWidget Game.EditSignDialog::m_okButton
    IL_0235:  ldarg.0
    IL_0236:  ldarg.0
    IL_0237:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_023c:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0241:  ldstr      "EditSignDialog.CancelButton"
    IL_0246:  ldc.i4.1
    IL_0247:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_024c:  stfld      class Game.ButtonWidget Game.EditSignDialog::m_cancelButton
    IL_0251:  ldarg.0
    IL_0252:  ldarg.0
    IL_0253:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_0258:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_025d:  ldstr      "EditSignDialog.UrlButton"
    IL_0262:  ldc.i4.1
    IL_0263:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_0268:  stfld      class Game.ButtonWidget Game.EditSignDialog::m_urlButton
    IL_026d:  ldarg.0
    IL_026e:  ldarg.0
    IL_026f:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_0274:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0279:  ldstr      "EditSignDialog.LinesButton"
    IL_027e:  ldc.i4.1
    IL_027f:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_0284:  stfld      class Game.ButtonWidget Game.EditSignDialog::m_linesButton
    IL_0289:  ldarg.0
    IL_028a:  ldarg.1
    IL_028b:  stfld      class Game.SubsystemSignBlockBehavior Game.EditSignDialog::m_subsystemSignBlockBehavior
    IL_0290:  ldarg.0
    IL_0291:  ldarg.2
    IL_0292:  stfld      valuetype [Engine]Engine.Point3 Game.EditSignDialog::m_signPoint
    IL_0297:  ldarg.0
    IL_0298:  ldfld      class Game.SubsystemSignBlockBehavior Game.EditSignDialog::m_subsystemSignBlockBehavior
    IL_029d:  ldarg.0
    IL_029e:  ldfld      valuetype [Engine]Engine.Point3 Game.EditSignDialog::m_signPoint
    IL_02a3:  callvirt   instance class Game.SignData Game.SubsystemSignBlockBehavior::GetSignData(valuetype [Engine]Engine.Point3)
    IL_02a8:  stloc.1
    IL_02a9:  ldloc.1
    IL_02aa:  brfalse    IL_036d

    IL_02af:  ldarg.0
    IL_02b0:  ldfld      class Game.TextBoxWidget Game.EditSignDialog::m_textBox1
    IL_02b5:  ldloc.1
    IL_02b6:  ldfld      string[] Game.SignData::Lines
    IL_02bb:  ldc.i4.0
    IL_02bc:  ldelem.ref
    IL_02bd:  callvirt   instance void Game.TextBoxWidget::set_Text(string)
    IL_02c2:  ldarg.0
    IL_02c3:  ldfld      class Game.TextBoxWidget Game.EditSignDialog::m_textBox2
    IL_02c8:  ldloc.1
    IL_02c9:  ldfld      string[] Game.SignData::Lines
    IL_02ce:  ldc.i4.1
    IL_02cf:  ldelem.ref
    IL_02d0:  callvirt   instance void Game.TextBoxWidget::set_Text(string)
    IL_02d5:  ldarg.0
    IL_02d6:  ldfld      class Game.TextBoxWidget Game.EditSignDialog::m_textBox3
    IL_02db:  ldloc.1
    IL_02dc:  ldfld      string[] Game.SignData::Lines
    IL_02e1:  ldc.i4.2
    IL_02e2:  ldelem.ref
    IL_02e3:  callvirt   instance void Game.TextBoxWidget::set_Text(string)
    IL_02e8:  ldarg.0
    IL_02e9:  ldfld      class Game.TextBoxWidget Game.EditSignDialog::m_textBox4
    IL_02ee:  ldloc.1
    IL_02ef:  ldfld      string[] Game.SignData::Lines
    IL_02f4:  ldc.i4.3
    IL_02f5:  ldelem.ref
    IL_02f6:  callvirt   instance void Game.TextBoxWidget::set_Text(string)
    IL_02fb:  ldarg.0
    IL_02fc:  ldfld      class Game.ButtonWidget Game.EditSignDialog::m_colorButton1
    IL_0301:  ldloc.1
    IL_0302:  ldfld      valuetype [Engine]Engine.Color[] Game.SignData::Colors
    IL_0307:  ldc.i4.0
    IL_0308:  ldelem     [Engine]Engine.Color
    IL_030d:  callvirt   instance void Game.ButtonWidget::set_Color(valuetype [Engine]Engine.Color)
    IL_0312:  ldarg.0
    IL_0313:  ldfld      class Game.ButtonWidget Game.EditSignDialog::m_colorButton2
    IL_0318:  ldloc.1
    IL_0319:  ldfld      valuetype [Engine]Engine.Color[] Game.SignData::Colors
    IL_031e:  ldc.i4.1
    IL_031f:  ldelem     [Engine]Engine.Color
    IL_0324:  callvirt   instance void Game.ButtonWidget::set_Color(valuetype [Engine]Engine.Color)
    IL_0329:  ldarg.0
    IL_032a:  ldfld      class Game.ButtonWidget Game.EditSignDialog::m_colorButton3
    IL_032f:  ldloc.1
    IL_0330:  ldfld      valuetype [Engine]Engine.Color[] Game.SignData::Colors
    IL_0335:  ldc.i4.2
    IL_0336:  ldelem     [Engine]Engine.Color
    IL_033b:  callvirt   instance void Game.ButtonWidget::set_Color(valuetype [Engine]Engine.Color)
    IL_0340:  ldarg.0
    IL_0341:  ldfld      class Game.ButtonWidget Game.EditSignDialog::m_colorButton4
    IL_0346:  ldloc.1
    IL_0347:  ldfld      valuetype [Engine]Engine.Color[] Game.SignData::Colors
    IL_034c:  ldc.i4.3
    IL_034d:  ldelem     [Engine]Engine.Color
    IL_0352:  callvirt   instance void Game.ButtonWidget::set_Color(valuetype [Engine]Engine.Color)
    IL_0357:  ldarg.0
    IL_0358:  ldfld      class Game.TextBoxWidget Game.EditSignDialog::m_urlTextBox
    IL_035d:  ldloc.1
    IL_035e:  ldfld      string Game.SignData::Url
    IL_0363:  callvirt   instance void Game.TextBoxWidget::set_Text(string)
    IL_0368:  br         IL_03fd

    IL_036d:  ldarg.0
    IL_036e:  ldfld      class Game.TextBoxWidget Game.EditSignDialog::m_textBox1
    IL_0373:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0378:  callvirt   instance void Game.TextBoxWidget::set_Text(string)
    IL_037d:  ldarg.0
    IL_037e:  ldfld      class Game.TextBoxWidget Game.EditSignDialog::m_textBox2
    IL_0383:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0388:  callvirt   instance void Game.TextBoxWidget::set_Text(string)
    IL_038d:  ldarg.0
    IL_038e:  ldfld      class Game.TextBoxWidget Game.EditSignDialog::m_textBox3
    IL_0393:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0398:  callvirt   instance void Game.TextBoxWidget::set_Text(string)
    IL_039d:  ldarg.0
    IL_039e:  ldfld      class Game.TextBoxWidget Game.EditSignDialog::m_textBox4
    IL_03a3:  ldsfld     string [System.Runtime]System.String::Empty
    IL_03a8:  callvirt   instance void Game.TextBoxWidget::set_Text(string)
    IL_03ad:  ldarg.0
    IL_03ae:  ldfld      class Game.ButtonWidget Game.EditSignDialog::m_colorButton1
    IL_03b3:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Black
    IL_03b8:  callvirt   instance void Game.ButtonWidget::set_Color(valuetype [Engine]Engine.Color)
    IL_03bd:  ldarg.0
    IL_03be:  ldfld      class Game.ButtonWidget Game.EditSignDialog::m_colorButton2
    IL_03c3:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Black
    IL_03c8:  callvirt   instance void Game.ButtonWidget::set_Color(valuetype [Engine]Engine.Color)
    IL_03cd:  ldarg.0
    IL_03ce:  ldfld      class Game.ButtonWidget Game.EditSignDialog::m_colorButton3
    IL_03d3:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Black
    IL_03d8:  callvirt   instance void Game.ButtonWidget::set_Color(valuetype [Engine]Engine.Color)
    IL_03dd:  ldarg.0
    IL_03de:  ldfld      class Game.ButtonWidget Game.EditSignDialog::m_colorButton4
    IL_03e3:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Black
    IL_03e8:  callvirt   instance void Game.ButtonWidget::set_Color(valuetype [Engine]Engine.Color)
    IL_03ed:  ldarg.0
    IL_03ee:  ldfld      class Game.TextBoxWidget Game.EditSignDialog::m_urlTextBox
    IL_03f3:  ldsfld     string [System.Runtime]System.String::Empty
    IL_03f8:  callvirt   instance void Game.TextBoxWidget::set_Text(string)
    IL_03fd:  ldarg.0
    IL_03fe:  ldfld      class Game.ContainerWidget Game.EditSignDialog::m_linesPage
    IL_0403:  ldc.i4.1
    IL_0404:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0409:  ldarg.0
    IL_040a:  ldfld      class Game.ContainerWidget Game.EditSignDialog::m_urlPage
    IL_040f:  ldc.i4.0
    IL_0410:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0415:  ldarg.0
    IL_0416:  call       instance void Game.EditSignDialog::UpdateControls()
    IL_041b:  ret
  } // end of method EditSignDialog::.ctor

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       607 (0x25f)
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
    IL_023f:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_0244:  ldfld      bool Game.InputState::Back
    IL_0249:  brtrue.s   IL_0258

    IL_024b:  ldarg.0
    IL_024c:  ldfld      class Game.ButtonWidget Game.EditSignDialog::m_cancelButton
    IL_0251:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0256:  brfalse.s  IL_025e

    IL_0258:  ldarg.0
    IL_0259:  call       instance void Game.EditSignDialog::Dismiss()
    IL_025e:  ret
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