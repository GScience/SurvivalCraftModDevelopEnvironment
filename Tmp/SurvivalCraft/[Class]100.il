.class public auto ansi beforefieldinit Game.EditColorDialog
       extends Game.Dialog
{
  .field private class Game.BevelledButtonWidget m_rectangle
  .field private class Game.SliderWidget m_sliderR
  .field private class Game.SliderWidget m_sliderG
  .field private class Game.SliderWidget m_sliderB
  .field private class Game.LabelWidget m_label
  .field private class Game.ButtonWidget m_okButton
  .field private class Game.ButtonWidget m_cancelButton
  .field private class [System.Runtime]System.Action`1<valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Color>> m_handler
  .field private valuetype [Engine]Engine.Color m_color
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(valuetype [Engine]Engine.Color color,
                               class [System.Runtime]System.Action`1<valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Color>> 'handler') cil managed
  {
    // 代码大小       1460 (0x5b4)
    .maxstack  16
    .locals init (class Game.SliderWidget V_0,
             class Game.BevelledButtonWidget V_1,
             class Game.LabelWidget V_2,
             class Game.ButtonWidget V_3)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.Dialog::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_000c:  newobj     instance void Game.CanvasWidget::.ctor()
    IL_0011:  dup
    IL_0012:  ldc.r4     660.
    IL_0017:  ldc.r4     420.
    IL_001c:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0021:  callvirt   instance void Game.CanvasWidget::set_Size(valuetype [Engine]Engine.Vector2)
    IL_0026:  dup
    IL_0027:  ldc.i4.1
    IL_0028:  callvirt   instance void Game.Widget::set_HorizontalAlignment(valuetype Game.WidgetAlignment)
    IL_002d:  dup
    IL_002e:  ldc.i4.1
    IL_002f:  callvirt   instance void Game.Widget::set_VerticalAlignment(valuetype Game.WidgetAlignment)
    IL_0034:  dup
    IL_0035:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_003a:  newobj     instance void Game.RectangleWidget::.ctor()
    IL_003f:  dup
    IL_0040:  ldc.i4.0
    IL_0041:  ldc.i4.0
    IL_0042:  ldc.i4.0
    IL_0043:  ldc.i4     0xff
    IL_0048:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32,
                                                                   int32)
    IL_004d:  callvirt   instance void Game.RectangleWidget::set_FillColor(valuetype [Engine]Engine.Color)
    IL_0052:  dup
    IL_0053:  ldc.i4     0x80
    IL_0058:  ldc.i4     0x80
    IL_005d:  ldc.i4     0x80
    IL_0062:  ldc.i4     0x80
    IL_0067:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32,
                                                                   int32)
    IL_006c:  callvirt   instance void Game.RectangleWidget::set_OutlineColor(valuetype [Engine]Engine.Color)
    IL_0071:  dup
    IL_0072:  ldc.r4     2.
    IL_0077:  callvirt   instance void Game.RectangleWidget::set_OutlineThickness(float32)
    IL_007c:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
    IL_0081:  dup
    IL_0082:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0087:  newobj     instance void Game.StackPanelWidget::.ctor()
    IL_008c:  dup
    IL_008d:  ldc.i4.1
    IL_008e:  callvirt   instance void Game.StackPanelWidget::set_Direction(valuetype Game.LayoutDirection)
    IL_0093:  dup
    IL_0094:  ldc.r4     15.
    IL_0099:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_009e:  callvirt   instance void Game.Widget::set_Margin(valuetype [Engine]Engine.Vector2)
    IL_00a3:  dup
    IL_00a4:  ldc.i4.1
    IL_00a5:  callvirt   instance void Game.Widget::set_HorizontalAlignment(valuetype Game.WidgetAlignment)
    IL_00aa:  dup
    IL_00ab:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00b0:  newobj     instance void Game.LabelWidget::.ctor()
    IL_00b5:  dup
    IL_00b6:  ldstr      "Edit Color"
    IL_00bb:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_00c0:  dup
    IL_00c1:  ldc.i4.1
    IL_00c2:  callvirt   instance void Game.Widget::set_HorizontalAlignment(valuetype Game.WidgetAlignment)
    IL_00c7:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
    IL_00cc:  dup
    IL_00cd:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00d2:  newobj     instance void Game.CanvasWidget::.ctor()
    IL_00d7:  dup
    IL_00d8:  ldc.r4     0.0
    IL_00dd:  ldc.r4     (00 00 80 7F)
    IL_00e2:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00e7:  callvirt   instance void Game.CanvasWidget::set_Size(valuetype [Engine]Engine.Vector2)
    IL_00ec:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
    IL_00f1:  dup
    IL_00f2:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00f7:  newobj     instance void Game.StackPanelWidget::.ctor()
    IL_00fc:  dup
    IL_00fd:  ldc.i4.0
    IL_00fe:  callvirt   instance void Game.StackPanelWidget::set_Direction(valuetype Game.LayoutDirection)
    IL_0103:  dup
    IL_0104:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0109:  newobj     instance void Game.StackPanelWidget::.ctor()
    IL_010e:  dup
    IL_010f:  ldc.i4.1
    IL_0110:  callvirt   instance void Game.StackPanelWidget::set_Direction(valuetype Game.LayoutDirection)
    IL_0115:  dup
    IL_0116:  ldc.i4.1
    IL_0117:  callvirt   instance void Game.Widget::set_VerticalAlignment(valuetype Game.WidgetAlignment)
    IL_011c:  dup
    IL_011d:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0122:  newobj     instance void Game.StackPanelWidget::.ctor()
    IL_0127:  dup
    IL_0128:  ldc.i4.0
    IL_0129:  callvirt   instance void Game.StackPanelWidget::set_Direction(valuetype Game.LayoutDirection)
    IL_012e:  dup
    IL_012f:  ldc.i4.2
    IL_0130:  callvirt   instance void Game.Widget::set_HorizontalAlignment(valuetype Game.WidgetAlignment)
    IL_0135:  dup
    IL_0136:  ldc.r4     0.0
    IL_013b:  ldc.r4     10.
    IL_0140:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0145:  callvirt   instance void Game.Widget::set_Margin(valuetype [Engine]Engine.Vector2)
    IL_014a:  dup
    IL_014b:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0150:  newobj     instance void Game.LabelWidget::.ctor()
    IL_0155:  dup
    IL_0156:  ldstr      "Red:"
    IL_015b:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0160:  dup
    IL_0161:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Gray
    IL_0166:  callvirt   instance void Game.LabelWidget::set_Color(valuetype [Engine]Engine.Color)
    IL_016b:  dup
    IL_016c:  ldc.i4.1
    IL_016d:  callvirt   instance void Game.Widget::set_VerticalAlignment(valuetype Game.WidgetAlignment)
    IL_0172:  dup
    IL_0173:  ldstr      "Fonts/Pericles24"
    IL_0178:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Media.BitmapFont>(string)
    IL_017d:  callvirt   instance void Game.LabelWidget::set_Font(class [Engine]Engine.Media.BitmapFont)
    IL_0182:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
    IL_0187:  dup
    IL_0188:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_018d:  newobj     instance void Game.CanvasWidget::.ctor()
    IL_0192:  dup
    IL_0193:  ldc.r4     10.
    IL_0198:  ldc.r4     0.0
    IL_019d:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_01a2:  callvirt   instance void Game.CanvasWidget::set_Size(valuetype [Engine]Engine.Vector2)
    IL_01a7:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
    IL_01ac:  dup
    IL_01ad:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_01b2:  ldarg.0
    IL_01b3:  newobj     instance void Game.SliderWidget::.ctor()
    IL_01b8:  dup
    IL_01b9:  ldc.r4     300.
    IL_01be:  ldc.r4     50.
    IL_01c3:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_01c8:  callvirt   instance void Game.CanvasWidget::set_Size(valuetype [Engine]Engine.Vector2)
    IL_01cd:  dup
    IL_01ce:  ldc.i4.0
    IL_01cf:  callvirt   instance void Game.SliderWidget::set_IsLabelVisible(bool)
    IL_01d4:  dup
    IL_01d5:  ldc.r4     0.0
    IL_01da:  callvirt   instance void Game.SliderWidget::set_MinValue(float32)
    IL_01df:  dup
    IL_01e0:  ldc.r4     255.
    IL_01e5:  callvirt   instance void Game.SliderWidget::set_MaxValue(float32)
    IL_01ea:  dup
    IL_01eb:  ldc.r4     1.
    IL_01f0:  callvirt   instance void Game.SliderWidget::set_Granularity(float32)
    IL_01f5:  dup
    IL_01f6:  ldstr      ""
    IL_01fb:  callvirt   instance void Game.SliderWidget::set_SoundName(string)
    IL_0200:  dup
    IL_0201:  stloc.0
    IL_0202:  stfld      class Game.SliderWidget Game.EditColorDialog::m_sliderR
    IL_0207:  ldloc.0
    IL_0208:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
    IL_020d:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
    IL_0212:  dup
    IL_0213:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0218:  newobj     instance void Game.StackPanelWidget::.ctor()
    IL_021d:  dup
    IL_021e:  ldc.i4.0
    IL_021f:  callvirt   instance void Game.StackPanelWidget::set_Direction(valuetype Game.LayoutDirection)
    IL_0224:  dup
    IL_0225:  ldc.i4.2
    IL_0226:  callvirt   instance void Game.Widget::set_HorizontalAlignment(valuetype Game.WidgetAlignment)
    IL_022b:  dup
    IL_022c:  ldc.r4     0.0
    IL_0231:  ldc.r4     10.
    IL_0236:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_023b:  callvirt   instance void Game.Widget::set_Margin(valuetype [Engine]Engine.Vector2)
    IL_0240:  dup
    IL_0241:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0246:  newobj     instance void Game.LabelWidget::.ctor()
    IL_024b:  dup
    IL_024c:  ldstr      "Green:"
    IL_0251:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0256:  dup
    IL_0257:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Gray
    IL_025c:  callvirt   instance void Game.LabelWidget::set_Color(valuetype [Engine]Engine.Color)
    IL_0261:  dup
    IL_0262:  ldc.i4.1
    IL_0263:  callvirt   instance void Game.Widget::set_VerticalAlignment(valuetype Game.WidgetAlignment)
    IL_0268:  dup
    IL_0269:  ldstr      "Fonts/Pericles24"
    IL_026e:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Media.BitmapFont>(string)
    IL_0273:  callvirt   instance void Game.LabelWidget::set_Font(class [Engine]Engine.Media.BitmapFont)
    IL_0278:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
    IL_027d:  dup
    IL_027e:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0283:  newobj     instance void Game.CanvasWidget::.ctor()
    IL_0288:  dup
    IL_0289:  ldc.r4     10.
    IL_028e:  ldc.r4     0.0
    IL_0293:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0298:  callvirt   instance void Game.CanvasWidget::set_Size(valuetype [Engine]Engine.Vector2)
    IL_029d:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
    IL_02a2:  dup
    IL_02a3:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_02a8:  ldarg.0
    IL_02a9:  newobj     instance void Game.SliderWidget::.ctor()
    IL_02ae:  dup
    IL_02af:  ldc.r4     300.
    IL_02b4:  ldc.r4     50.
    IL_02b9:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_02be:  callvirt   instance void Game.CanvasWidget::set_Size(valuetype [Engine]Engine.Vector2)
    IL_02c3:  dup
    IL_02c4:  ldc.i4.0
    IL_02c5:  callvirt   instance void Game.SliderWidget::set_IsLabelVisible(bool)
    IL_02ca:  dup
    IL_02cb:  ldc.r4     0.0
    IL_02d0:  callvirt   instance void Game.SliderWidget::set_MinValue(float32)
    IL_02d5:  dup
    IL_02d6:  ldc.r4     255.
    IL_02db:  callvirt   instance void Game.SliderWidget::set_MaxValue(float32)
    IL_02e0:  dup
    IL_02e1:  ldc.r4     1.
    IL_02e6:  callvirt   instance void Game.SliderWidget::set_Granularity(float32)
    IL_02eb:  dup
    IL_02ec:  ldstr      ""
    IL_02f1:  callvirt   instance void Game.SliderWidget::set_SoundName(string)
    IL_02f6:  dup
    IL_02f7:  stloc.0
    IL_02f8:  stfld      class Game.SliderWidget Game.EditColorDialog::m_sliderG
    IL_02fd:  ldloc.0
    IL_02fe:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
    IL_0303:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
    IL_0308:  dup
    IL_0309:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_030e:  newobj     instance void Game.StackPanelWidget::.ctor()
    IL_0313:  dup
    IL_0314:  ldc.i4.0
    IL_0315:  callvirt   instance void Game.StackPanelWidget::set_Direction(valuetype Game.LayoutDirection)
    IL_031a:  dup
    IL_031b:  ldc.i4.2
    IL_031c:  callvirt   instance void Game.Widget::set_HorizontalAlignment(valuetype Game.WidgetAlignment)
    IL_0321:  dup
    IL_0322:  ldc.r4     0.0
    IL_0327:  ldc.r4     10.
    IL_032c:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0331:  callvirt   instance void Game.Widget::set_Margin(valuetype [Engine]Engine.Vector2)
    IL_0336:  dup
    IL_0337:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_033c:  newobj     instance void Game.LabelWidget::.ctor()
    IL_0341:  dup
    IL_0342:  ldstr      "Blue:"
    IL_0347:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_034c:  dup
    IL_034d:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Gray
    IL_0352:  callvirt   instance void Game.LabelWidget::set_Color(valuetype [Engine]Engine.Color)
    IL_0357:  dup
    IL_0358:  ldc.i4.1
    IL_0359:  callvirt   instance void Game.Widget::set_VerticalAlignment(valuetype Game.WidgetAlignment)
    IL_035e:  dup
    IL_035f:  ldstr      "Fonts/Pericles24"
    IL_0364:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Media.BitmapFont>(string)
    IL_0369:  callvirt   instance void Game.LabelWidget::set_Font(class [Engine]Engine.Media.BitmapFont)
    IL_036e:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
    IL_0373:  dup
    IL_0374:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0379:  newobj     instance void Game.CanvasWidget::.ctor()
    IL_037e:  dup
    IL_037f:  ldc.r4     10.
    IL_0384:  ldc.r4     0.0
    IL_0389:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_038e:  callvirt   instance void Game.CanvasWidget::set_Size(valuetype [Engine]Engine.Vector2)
    IL_0393:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
    IL_0398:  dup
    IL_0399:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_039e:  ldarg.0
    IL_039f:  newobj     instance void Game.SliderWidget::.ctor()
    IL_03a4:  dup
    IL_03a5:  ldc.r4     300.
    IL_03aa:  ldc.r4     50.
    IL_03af:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_03b4:  callvirt   instance void Game.CanvasWidget::set_Size(valuetype [Engine]Engine.Vector2)
    IL_03b9:  dup
    IL_03ba:  ldc.i4.0
    IL_03bb:  callvirt   instance void Game.SliderWidget::set_IsLabelVisible(bool)
    IL_03c0:  dup
    IL_03c1:  ldc.r4     0.0
    IL_03c6:  callvirt   instance void Game.SliderWidget::set_MinValue(float32)
    IL_03cb:  dup
    IL_03cc:  ldc.r4     255.
    IL_03d1:  callvirt   instance void Game.SliderWidget::set_MaxValue(float32)
    IL_03d6:  dup
    IL_03d7:  ldc.r4     1.
    IL_03dc:  callvirt   instance void Game.SliderWidget::set_Granularity(float32)
    IL_03e1:  dup
    IL_03e2:  ldstr      ""
    IL_03e7:  callvirt   instance void Game.SliderWidget::set_SoundName(string)
    IL_03ec:  dup
    IL_03ed:  stloc.0
    IL_03ee:  stfld      class Game.SliderWidget Game.EditColorDialog::m_sliderB
    IL_03f3:  ldloc.0
    IL_03f4:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
    IL_03f9:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
    IL_03fe:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
    IL_0403:  dup
    IL_0404:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0409:  newobj     instance void Game.CanvasWidget::.ctor()
    IL_040e:  dup
    IL_040f:  ldc.r4     20.
    IL_0414:  ldc.r4     0.0
    IL_0419:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_041e:  callvirt   instance void Game.CanvasWidget::set_Size(valuetype [Engine]Engine.Vector2)
    IL_0423:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
    IL_0428:  dup
    IL_0429:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_042e:  newobj     instance void Game.CanvasWidget::.ctor()
    IL_0433:  dup
    IL_0434:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0439:  ldarg.0
    IL_043a:  newobj     instance void Game.BevelledButtonWidget::.ctor()
    IL_043f:  dup
    IL_0440:  ldc.r4     200.
    IL_0445:  ldc.r4     240.
    IL_044a:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_044f:  callvirt   instance void Game.CanvasWidget::set_Size(valuetype [Engine]Engine.Vector2)
    IL_0454:  dup
    IL_0455:  ldc.r4     1.
    IL_045a:  callvirt   instance void Game.BevelledButtonWidget::set_AmbientLight(float32)
    IL_045f:  dup
    IL_0460:  ldc.i4.1
    IL_0461:  callvirt   instance void Game.Widget::set_HorizontalAlignment(valuetype Game.WidgetAlignment)
    IL_0466:  dup
    IL_0467:  ldc.i4.1
    IL_0468:  callvirt   instance void Game.Widget::set_VerticalAlignment(valuetype Game.WidgetAlignment)
    IL_046d:  dup
    IL_046e:  stloc.1
    IL_046f:  stfld      class Game.BevelledButtonWidget Game.EditColorDialog::m_rectangle
    IL_0474:  ldloc.1
    IL_0475:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
    IL_047a:  dup
    IL_047b:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0480:  ldarg.0
    IL_0481:  newobj     instance void Game.LabelWidget::.ctor()
    IL_0486:  dup
    IL_0487:  ldc.i4.1
    IL_0488:  callvirt   instance void Game.Widget::set_HorizontalAlignment(valuetype Game.WidgetAlignment)
    IL_048d:  dup
    IL_048e:  ldc.i4.1
    IL_048f:  callvirt   instance void Game.Widget::set_VerticalAlignment(valuetype Game.WidgetAlignment)
    IL_0494:  dup
    IL_0495:  ldstr      "Fonts/Pericles18"
    IL_049a:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Media.BitmapFont>(string)
    IL_049f:  callvirt   instance void Game.LabelWidget::set_Font(class [Engine]Engine.Media.BitmapFont)
    IL_04a4:  dup
    IL_04a5:  stloc.2
    IL_04a6:  stfld      class Game.LabelWidget Game.EditColorDialog::m_label
    IL_04ab:  ldloc.2
    IL_04ac:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
    IL_04b1:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
    IL_04b6:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
    IL_04bb:  dup
    IL_04bc:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_04c1:  newobj     instance void Game.CanvasWidget::.ctor()
    IL_04c6:  dup
    IL_04c7:  ldc.r4     0.0
    IL_04cc:  ldc.r4     (00 00 80 7F)
    IL_04d1:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_04d6:  callvirt   instance void Game.CanvasWidget::set_Size(valuetype [Engine]Engine.Vector2)
    IL_04db:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
    IL_04e0:  dup
    IL_04e1:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_04e6:  newobj     instance void Game.StackPanelWidget::.ctor()
    IL_04eb:  dup
    IL_04ec:  ldc.i4.0
    IL_04ed:  callvirt   instance void Game.StackPanelWidget::set_Direction(valuetype Game.LayoutDirection)
    IL_04f2:  dup
    IL_04f3:  ldc.i4.1
    IL_04f4:  callvirt   instance void Game.Widget::set_HorizontalAlignment(valuetype Game.WidgetAlignment)
    IL_04f9:  dup
    IL_04fa:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_04ff:  ldarg.0
    IL_0500:  newobj     instance void Game.BevelledButtonWidget::.ctor()
    IL_0505:  dup
    IL_0506:  ldc.r4     160.
    IL_050b:  ldc.r4     60.
    IL_0510:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0515:  callvirt   instance void Game.CanvasWidget::set_Size(valuetype [Engine]Engine.Vector2)
    IL_051a:  dup
    IL_051b:  ldstr      "OK"
    IL_0520:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_0525:  dup
    IL_0526:  stloc.3
    IL_0527:  stfld      class Game.ButtonWidget Game.EditColorDialog::m_okButton
    IL_052c:  ldloc.3
    IL_052d:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
    IL_0532:  dup
    IL_0533:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0538:  newobj     instance void Game.CanvasWidget::.ctor()
    IL_053d:  dup
    IL_053e:  ldc.r4     50.
    IL_0543:  ldc.r4     0.0
    IL_0548:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_054d:  callvirt   instance void Game.CanvasWidget::set_Size(valuetype [Engine]Engine.Vector2)
    IL_0552:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
    IL_0557:  dup
    IL_0558:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_055d:  ldarg.0
    IL_055e:  newobj     instance void Game.BevelledButtonWidget::.ctor()
    IL_0563:  dup
    IL_0564:  ldc.r4     160.
    IL_0569:  ldc.r4     60.
    IL_056e:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0573:  callvirt   instance void Game.CanvasWidget::set_Size(valuetype [Engine]Engine.Vector2)
    IL_0578:  dup
    IL_0579:  ldstr      "Cancel"
    IL_057e:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_0583:  dup
    IL_0584:  stloc.3
    IL_0585:  stfld      class Game.ButtonWidget Game.EditColorDialog::m_cancelButton
    IL_058a:  ldloc.3
    IL_058b:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
    IL_0590:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
    IL_0595:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
    IL_059a:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
    IL_059f:  ldarg.0
    IL_05a0:  ldarg.2
    IL_05a1:  stfld      class [System.Runtime]System.Action`1<valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Color>> Game.EditColorDialog::m_handler
    IL_05a6:  ldarg.0
    IL_05a7:  ldarg.1
    IL_05a8:  stfld      valuetype [Engine]Engine.Color Game.EditColorDialog::m_color
    IL_05ad:  ldarg.0
    IL_05ae:  call       instance void Game.EditColorDialog::UpdateControls()
    IL_05b3:  ret
  } // end of method EditColorDialog::.ctor

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       235 (0xeb)
    .maxstack  6
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Color> V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.BevelledButtonWidget Game.EditColorDialog::m_rectangle
    IL_0006:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_000b:  brfalse.s  IL_0031

    IL_000d:  ldarg.0
    IL_000e:  ldstr      "Enter Color"
    IL_0013:  ldarg.0
    IL_0014:  call       instance string Game.EditColorDialog::GetColorString()
    IL_0019:  ldc.i4.s   20
    IL_001b:  ldarg.0
    IL_001c:  ldftn      instance void Game.EditColorDialog::'<Update>b__10_0'(string)
    IL_0022:  newobj     instance void class [System.Runtime]System.Action`1<string>::.ctor(object,
                                                                                            native int)
    IL_0027:  newobj     instance void Game.TextBoxDialog::.ctor(string,
                                                                 string,
                                                                 int32,
                                                                 class [System.Runtime]System.Action`1<string>)
    IL_002c:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_0031:  ldarg.0
    IL_0032:  ldfld      class Game.SliderWidget Game.EditColorDialog::m_sliderR
    IL_0037:  callvirt   instance bool Game.SliderWidget::get_IsSliding()
    IL_003c:  brfalse.s  IL_0055

    IL_003e:  ldarg.0
    IL_003f:  ldflda     valuetype [Engine]Engine.Color Game.EditColorDialog::m_color
    IL_0044:  ldarg.0
    IL_0045:  ldfld      class Game.SliderWidget Game.EditColorDialog::m_sliderR
    IL_004a:  callvirt   instance float32 Game.SliderWidget::get_Value()
    IL_004f:  conv.u1
    IL_0050:  call       instance void [Engine]Engine.Color::set_R(uint8)
    IL_0055:  ldarg.0
    IL_0056:  ldfld      class Game.SliderWidget Game.EditColorDialog::m_sliderG
    IL_005b:  callvirt   instance bool Game.SliderWidget::get_IsSliding()
    IL_0060:  brfalse.s  IL_0079

    IL_0062:  ldarg.0
    IL_0063:  ldflda     valuetype [Engine]Engine.Color Game.EditColorDialog::m_color
    IL_0068:  ldarg.0
    IL_0069:  ldfld      class Game.SliderWidget Game.EditColorDialog::m_sliderG
    IL_006e:  callvirt   instance float32 Game.SliderWidget::get_Value()
    IL_0073:  conv.u1
    IL_0074:  call       instance void [Engine]Engine.Color::set_G(uint8)
    IL_0079:  ldarg.0
    IL_007a:  ldfld      class Game.SliderWidget Game.EditColorDialog::m_sliderB
    IL_007f:  callvirt   instance bool Game.SliderWidget::get_IsSliding()
    IL_0084:  brfalse.s  IL_009d

    IL_0086:  ldarg.0
    IL_0087:  ldflda     valuetype [Engine]Engine.Color Game.EditColorDialog::m_color
    IL_008c:  ldarg.0
    IL_008d:  ldfld      class Game.SliderWidget Game.EditColorDialog::m_sliderB
    IL_0092:  callvirt   instance float32 Game.SliderWidget::get_Value()
    IL_0097:  conv.u1
    IL_0098:  call       instance void [Engine]Engine.Color::set_B(uint8)
    IL_009d:  ldarg.0
    IL_009e:  ldfld      class Game.ButtonWidget Game.EditColorDialog::m_okButton
    IL_00a3:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_00a8:  brfalse.s  IL_00bb

    IL_00aa:  ldarg.0
    IL_00ab:  ldarg.0
    IL_00ac:  ldfld      valuetype [Engine]Engine.Color Game.EditColorDialog::m_color
    IL_00b1:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Color>::.ctor(!0)
    IL_00b6:  call       instance void Game.EditColorDialog::Dismiss(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Color>)
    IL_00bb:  ldarg.0
    IL_00bc:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_00c1:  callvirt   instance bool Game.WidgetInput::get_Cancel()
    IL_00c6:  brtrue.s   IL_00d5

    IL_00c8:  ldarg.0
    IL_00c9:  ldfld      class Game.ButtonWidget Game.EditColorDialog::m_cancelButton
    IL_00ce:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_00d3:  brfalse.s  IL_00e4

    IL_00d5:  ldarg.0
    IL_00d6:  ldloca.s   V_0
    IL_00d8:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Color>
    IL_00de:  ldloc.0
    IL_00df:  call       instance void Game.EditColorDialog::Dismiss(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Color>)
    IL_00e4:  ldarg.0
    IL_00e5:  call       instance void Game.EditColorDialog::UpdateControls()
    IL_00ea:  ret
  } // end of method EditColorDialog::Update

  .method private hidebysig instance void 
          UpdateControls() cil managed
  {
    // 代码大小       104 (0x68)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.BevelledButtonWidget Game.EditColorDialog::m_rectangle
    IL_0006:  ldarg.0
    IL_0007:  ldfld      valuetype [Engine]Engine.Color Game.EditColorDialog::m_color
    IL_000c:  callvirt   instance void Game.BevelledButtonWidget::set_CenterColor(valuetype [Engine]Engine.Color)
    IL_0011:  ldarg.0
    IL_0012:  ldfld      class Game.SliderWidget Game.EditColorDialog::m_sliderR
    IL_0017:  ldarg.0
    IL_0018:  ldflda     valuetype [Engine]Engine.Color Game.EditColorDialog::m_color
    IL_001d:  call       instance uint8 [Engine]Engine.Color::get_R()
    IL_0022:  conv.r4
    IL_0023:  callvirt   instance void Game.SliderWidget::set_Value(float32)
    IL_0028:  ldarg.0
    IL_0029:  ldfld      class Game.SliderWidget Game.EditColorDialog::m_sliderG
    IL_002e:  ldarg.0
    IL_002f:  ldflda     valuetype [Engine]Engine.Color Game.EditColorDialog::m_color
    IL_0034:  call       instance uint8 [Engine]Engine.Color::get_G()
    IL_0039:  conv.r4
    IL_003a:  callvirt   instance void Game.SliderWidget::set_Value(float32)
    IL_003f:  ldarg.0
    IL_0040:  ldfld      class Game.SliderWidget Game.EditColorDialog::m_sliderB
    IL_0045:  ldarg.0
    IL_0046:  ldflda     valuetype [Engine]Engine.Color Game.EditColorDialog::m_color
    IL_004b:  call       instance uint8 [Engine]Engine.Color::get_B()
    IL_0050:  conv.r4
    IL_0051:  callvirt   instance void Game.SliderWidget::set_Value(float32)
    IL_0056:  ldarg.0
    IL_0057:  ldfld      class Game.LabelWidget Game.EditColorDialog::m_label
    IL_005c:  ldarg.0
    IL_005d:  call       instance string Game.EditColorDialog::GetColorString()
    IL_0062:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0067:  ret
  } // end of method EditColorDialog::UpdateControls

  .method private hidebysig instance string 
          GetColorString() cil managed
  {
    // 代码大小       74 (0x4a)
    .maxstack  5
    IL_0000:  ldstr      "#{0:X2}{1:X2}{2:X2}"
    IL_0005:  ldc.i4.3
    IL_0006:  newarr     [System.Runtime]System.Object
    IL_000b:  dup
    IL_000c:  ldc.i4.0
    IL_000d:  ldarg.0
    IL_000e:  ldflda     valuetype [Engine]Engine.Color Game.EditColorDialog::m_color
    IL_0013:  call       instance uint8 [Engine]Engine.Color::get_R()
    IL_0018:  box        [System.Runtime]System.Byte
    IL_001d:  stelem.ref
    IL_001e:  dup
    IL_001f:  ldc.i4.1
    IL_0020:  ldarg.0
    IL_0021:  ldflda     valuetype [Engine]Engine.Color Game.EditColorDialog::m_color
    IL_0026:  call       instance uint8 [Engine]Engine.Color::get_G()
    IL_002b:  box        [System.Runtime]System.Byte
    IL_0030:  stelem.ref
    IL_0031:  dup
    IL_0032:  ldc.i4.2
    IL_0033:  ldarg.0
    IL_0034:  ldflda     valuetype [Engine]Engine.Color Game.EditColorDialog::m_color
    IL_0039:  call       instance uint8 [Engine]Engine.Color::get_B()
    IL_003e:  box        [System.Runtime]System.Byte
    IL_0043:  stelem.ref
    IL_0044:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0049:  ret
  } // end of method EditColorDialog::GetColorString

  .method private hidebysig instance void 
          Dismiss(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Color> result) cil managed
  {
    // 代码大小       24 (0x18)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class [System.Runtime]System.Action`1<valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Color>> Game.EditColorDialog::m_handler
    IL_000c:  dup
    IL_000d:  brtrue.s   IL_0011

    IL_000f:  pop
    IL_0010:  ret

    IL_0011:  ldarg.1
    IL_0012:  callvirt   instance void class [System.Runtime]System.Action`1<valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Color>>::Invoke(!0)
    IL_0017:  ret
  } // end of method EditColorDialog::Dismiss

  .method private hidebysig instance void 
          '<Update>b__10_0'(string s) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       54 (0x36)
    .maxstack  6
    IL_0000:  ldarg.1
    IL_0001:  brfalse.s  IL_0035

    .try
    {
      IL_0003:  ldarg.0
      IL_0004:  ldflda     valuetype [Engine]Engine.Color Game.EditColorDialog::m_color
      IL_0009:  ldarg.1
      IL_000a:  call       !!0 [Engine]Engine.Serialization.HumanReadableConverter::ConvertFromString<valuetype [Engine]Engine.Color>(string)
      IL_000f:  call       instance void [Engine]Engine.Color::set_RGB(valuetype [Engine]Engine.Color)
      IL_0014:  leave.s    IL_0035

    }  // end .try
    catch [System.Runtime]System.Object 
    {
      IL_0016:  pop
      IL_0017:  ldarg.0
      IL_0018:  ldstr      "Invalid Color"
      IL_001d:  ldstr      "Use R,G,B or #HEX notation, e.g. 255,92,13 or #FF5"
      + "C0D"
      IL_0022:  ldstr      "OK"
      IL_0027:  ldnull
      IL_0028:  ldnull
      IL_0029:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                   string,
                                                                   string,
                                                                   string,
                                                                   class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
      IL_002e:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                                class Game.Dialog)
      IL_0033:  leave.s    IL_0035

    }  // end handler
    IL_0035:  ret
  } // end of method EditColorDialog::'<Update>b__10_0'

} // end of class Game.EditColorDialog