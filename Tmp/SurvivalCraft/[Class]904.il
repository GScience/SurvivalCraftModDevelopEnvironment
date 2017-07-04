.class public auto ansi beforefieldinit Game.SliderWidget
       extends Game.CanvasWidget
{
  .field private class Game.CanvasWidget m_canvasWidget
  .field private class Game.CanvasWidget m_labelCanvasWidget
  .field private class Game.Widget m_tabWidget
  .field private class Game.LabelWidget m_labelWidget
  .field private float32 m_minValue
  .field private float32 m_maxValue
  .field private float32 m_granularity
  .field private float32 m_value
  .field private valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> m_dragStartPoint
  .field private bool '<IsSliding>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype Game.LayoutDirection '<LayoutDirection>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private string '<SoundName>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       148 (0x94)
    .maxstack  4
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldc.r4     1.
    IL_0006:  stfld      float32 Game.SliderWidget::m_maxValue
    IL_000b:  ldarg.0
    IL_000c:  ldc.r4     0.1
    IL_0011:  stfld      float32 Game.SliderWidget::m_granularity
    IL_0016:  ldarg.0
    IL_0017:  call       instance void Game.CanvasWidget::.ctor()
    IL_001c:  ldstr      "Widgets/SliderContents"
    IL_0021:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_0026:  stloc.0
    IL_0027:  ldarg.0
    IL_0028:  ldarg.0
    IL_0029:  ldloc.0
    IL_002a:  call       void Game.WidgetsManager::LoadWidgetChildren(class Game.Widget,
                                                                      object,
                                                                      class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_002f:  ldarg.0
    IL_0030:  ldarg.0
    IL_0031:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0036:  ldstr      "Slider.Canvas"
    IL_003b:  ldc.i4.1
    IL_003c:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.CanvasWidget>(string,
                                                                                      bool)
    IL_0041:  stfld      class Game.CanvasWidget Game.SliderWidget::m_canvasWidget
    IL_0046:  ldarg.0
    IL_0047:  ldarg.0
    IL_0048:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_004d:  ldstr      "Slider.LabelCanvas"
    IL_0052:  ldc.i4.1
    IL_0053:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.CanvasWidget>(string,
                                                                                      bool)
    IL_0058:  stfld      class Game.CanvasWidget Game.SliderWidget::m_labelCanvasWidget
    IL_005d:  ldarg.0
    IL_005e:  ldarg.0
    IL_005f:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0064:  ldstr      "Slider.Tab"
    IL_0069:  ldc.i4.1
    IL_006a:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.Widget>(string,
                                                                                bool)
    IL_006f:  stfld      class Game.Widget Game.SliderWidget::m_tabWidget
    IL_0074:  ldarg.0
    IL_0075:  ldarg.0
    IL_0076:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_007b:  ldstr      "Slider.Label"
    IL_0080:  ldc.i4.1
    IL_0081:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_0086:  stfld      class Game.LabelWidget Game.SliderWidget::m_labelWidget
    IL_008b:  ldarg.0
    IL_008c:  ldarg.0
    IL_008d:  ldloc.0
    IL_008e:  call       void Game.WidgetsManager::LoadWidgetProperties(class Game.Widget,
                                                                        object,
                                                                        class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_0093:  ret
  } // end of method SliderWidget::.ctor

  .method public hidebysig specialname instance bool 
          get_IsSliding() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.SliderWidget::'<IsSliding>k__BackingField'
    IL_0006:  ret
  } // end of method SliderWidget::get_IsSliding

  .method private hidebysig specialname instance void 
          set_IsSliding(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.SliderWidget::'<IsSliding>k__BackingField'
    IL_0007:  ret
  } // end of method SliderWidget::set_IsSliding

  .method public hidebysig specialname instance valuetype Game.LayoutDirection 
          get_LayoutDirection() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype Game.LayoutDirection Game.SliderWidget::'<LayoutDirection>k__BackingField'
    IL_0006:  ret
  } // end of method SliderWidget::get_LayoutDirection

  .method public hidebysig specialname instance void 
          set_LayoutDirection(valuetype Game.LayoutDirection 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype Game.LayoutDirection Game.SliderWidget::'<LayoutDirection>k__BackingField'
    IL_0007:  ret
  } // end of method SliderWidget::set_LayoutDirection

  .method public hidebysig specialname instance float32 
          get_MinValue() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.SliderWidget::m_minValue
    IL_0006:  ret
  } // end of method SliderWidget::get_MinValue

  .method public hidebysig specialname instance void 
          set_MinValue(float32 'value') cil managed
  {
    // 代码大小       69 (0x45)
    .maxstack  4
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  ldfld      float32 Game.SliderWidget::m_minValue
    IL_0007:  beq.s      IL_0044

    IL_0009:  ldarg.0
    IL_000a:  ldarg.1
    IL_000b:  stfld      float32 Game.SliderWidget::m_minValue
    IL_0010:  ldarg.0
    IL_0011:  ldarg.0
    IL_0012:  call       instance float32 Game.SliderWidget::get_MinValue()
    IL_0017:  ldarg.0
    IL_0018:  call       instance float32 Game.SliderWidget::get_MaxValue()
    IL_001d:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_0022:  call       instance void Game.SliderWidget::set_MaxValue(float32)
    IL_0027:  ldarg.0
    IL_0028:  ldarg.0
    IL_0029:  call       instance float32 Game.SliderWidget::get_Value()
    IL_002e:  ldarg.0
    IL_002f:  call       instance float32 Game.SliderWidget::get_MinValue()
    IL_0034:  ldarg.0
    IL_0035:  call       instance float32 Game.SliderWidget::get_MaxValue()
    IL_003a:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_003f:  call       instance void Game.SliderWidget::set_Value(float32)
    IL_0044:  ret
  } // end of method SliderWidget::set_MinValue

  .method public hidebysig specialname instance float32 
          get_MaxValue() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.SliderWidget::m_maxValue
    IL_0006:  ret
  } // end of method SliderWidget::get_MaxValue

  .method public hidebysig specialname instance void 
          set_MaxValue(float32 'value') cil managed
  {
    // 代码大小       69 (0x45)
    .maxstack  4
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  ldfld      float32 Game.SliderWidget::m_maxValue
    IL_0007:  beq.s      IL_0044

    IL_0009:  ldarg.0
    IL_000a:  ldarg.1
    IL_000b:  stfld      float32 Game.SliderWidget::m_maxValue
    IL_0010:  ldarg.0
    IL_0011:  ldarg.0
    IL_0012:  call       instance float32 Game.SliderWidget::get_MinValue()
    IL_0017:  ldarg.0
    IL_0018:  call       instance float32 Game.SliderWidget::get_MaxValue()
    IL_001d:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_0022:  call       instance void Game.SliderWidget::set_MinValue(float32)
    IL_0027:  ldarg.0
    IL_0028:  ldarg.0
    IL_0029:  call       instance float32 Game.SliderWidget::get_Value()
    IL_002e:  ldarg.0
    IL_002f:  call       instance float32 Game.SliderWidget::get_MinValue()
    IL_0034:  ldarg.0
    IL_0035:  call       instance float32 Game.SliderWidget::get_MaxValue()
    IL_003a:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_003f:  call       instance void Game.SliderWidget::set_Value(float32)
    IL_0044:  ret
  } // end of method SliderWidget::set_MaxValue

  .method public hidebysig specialname instance float32 
          get_Value() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.SliderWidget::m_value
    IL_0006:  ret
  } // end of method SliderWidget::get_Value

  .method public hidebysig specialname instance void 
          set_Value(float32 'value') cil managed
  {
    // 代码大小       82 (0x52)
    .maxstack  4
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.SliderWidget::m_granularity
    IL_0006:  ldc.r4     0.0
    IL_000b:  ble.un.s   IL_0039

    IL_000d:  ldarg.0
    IL_000e:  ldarg.1
    IL_000f:  ldarg.0
    IL_0010:  call       instance float32 Game.SliderWidget::get_MinValue()
    IL_0015:  ldarg.0
    IL_0016:  call       instance float32 Game.SliderWidget::get_MaxValue()
    IL_001b:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_0020:  ldarg.0
    IL_0021:  ldfld      float32 Game.SliderWidget::m_granularity
    IL_0026:  div
    IL_0027:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_002c:  ldarg.0
    IL_002d:  ldfld      float32 Game.SliderWidget::m_granularity
    IL_0032:  mul
    IL_0033:  stfld      float32 Game.SliderWidget::m_value
    IL_0038:  ret

    IL_0039:  ldarg.0
    IL_003a:  ldarg.1
    IL_003b:  ldarg.0
    IL_003c:  call       instance float32 Game.SliderWidget::get_MinValue()
    IL_0041:  ldarg.0
    IL_0042:  call       instance float32 Game.SliderWidget::get_MaxValue()
    IL_0047:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_004c:  stfld      float32 Game.SliderWidget::m_value
    IL_0051:  ret
  } // end of method SliderWidget::set_Value

  .method public hidebysig specialname instance float32 
          get_Granularity() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.SliderWidget::m_granularity
    IL_0006:  ret
  } // end of method SliderWidget::get_Granularity

  .method public hidebysig specialname instance void 
          set_Granularity(float32 'value') cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldc.r4     0.0
    IL_0007:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_000c:  stfld      float32 Game.SliderWidget::m_granularity
    IL_0011:  ret
  } // end of method SliderWidget::set_Granularity

  .method public hidebysig specialname instance string 
          get_Text() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.LabelWidget Game.SliderWidget::m_labelWidget
    IL_0006:  callvirt   instance string Game.LabelWidget::get_Text()
    IL_000b:  ret
  } // end of method SliderWidget::get_Text

  .method public hidebysig specialname instance void 
          set_Text(string 'value') cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.LabelWidget Game.SliderWidget::m_labelWidget
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_000c:  ret
  } // end of method SliderWidget::set_Text

  .method public hidebysig specialname instance class [Engine]Engine.Media.BitmapFont 
          get_Font() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.LabelWidget Game.SliderWidget::m_labelWidget
    IL_0006:  callvirt   instance class [Engine]Engine.Media.BitmapFont Game.LabelWidget::get_Font()
    IL_000b:  ret
  } // end of method SliderWidget::get_Font

  .method public hidebysig specialname instance void 
          set_Font(class [Engine]Engine.Media.BitmapFont 'value') cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.LabelWidget Game.SliderWidget::m_labelWidget
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance void Game.LabelWidget::set_Font(class [Engine]Engine.Media.BitmapFont)
    IL_000c:  ret
  } // end of method SliderWidget::set_Font

  .method public hidebysig specialname instance string 
          get_SoundName() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string Game.SliderWidget::'<SoundName>k__BackingField'
    IL_0006:  ret
  } // end of method SliderWidget::get_SoundName

  .method public hidebysig specialname instance void 
          set_SoundName(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string Game.SliderWidget::'<SoundName>k__BackingField'
    IL_0007:  ret
  } // end of method SliderWidget::set_SoundName

  .method public hidebysig specialname instance bool 
          get_IsLabelVisible() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.CanvasWidget Game.SliderWidget::m_labelCanvasWidget
    IL_0006:  callvirt   instance bool Game.Widget::get_IsVisible()
    IL_000b:  ret
  } // end of method SliderWidget::get_IsLabelVisible

  .method public hidebysig specialname instance void 
          set_IsLabelVisible(bool 'value') cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.CanvasWidget Game.SliderWidget::m_labelCanvasWidget
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_000c:  ret
  } // end of method SliderWidget::set_IsLabelVisible

  .method public hidebysig specialname instance float32 
          get_LabelWidth() cil managed
  {
    // 代码大小       17 (0x11)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.CanvasWidget Game.SliderWidget::m_labelCanvasWidget
    IL_0006:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.CanvasWidget::get_Size()
    IL_000b:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0010:  ret
  } // end of method SliderWidget::get_LabelWidth

  .method public hidebysig specialname instance void 
          set_LabelWidth(float32 'value') cil managed
  {
    // 代码大小       34 (0x22)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.CanvasWidget Game.SliderWidget::m_labelCanvasWidget
    IL_0006:  ldarg.1
    IL_0007:  ldarg.0
    IL_0008:  ldfld      class Game.CanvasWidget Game.SliderWidget::m_labelCanvasWidget
    IL_000d:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.CanvasWidget::get_Size()
    IL_0012:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0017:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_001c:  callvirt   instance void Game.CanvasWidget::set_Size(valuetype [Engine]Engine.Vector2)
    IL_0021:  ret
  } // end of method SliderWidget::set_LabelWidth

  .method public hidebysig virtual instance void 
          MeasureOverride(valuetype [Engine]Engine.Vector2 parentAvailableSize) cil managed
  {
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void Game.CanvasWidget::MeasureOverride(valuetype [Engine]Engine.Vector2)
    IL_0007:  ldarg.0
    IL_0008:  ldc.i4.1
    IL_0009:  call       instance void Game.Widget::set_IsDrawRequired(bool)
    IL_000e:  ret
  } // end of method SliderWidget::MeasureOverride

  .method public hidebysig virtual instance void 
          ArrangeOverride() cil managed
  {
    // 代码大小       344 (0x158)
    .maxstack  4
    .locals init (float32 V_0,
             float32 V_1,
             float32 V_2,
             valuetype [Engine]Engine.Vector2 V_3,
             valuetype [Engine]Engine.Vector2 V_4)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.CanvasWidget::ArrangeOverride()
    IL_0006:  ldarg.0
    IL_0007:  call       instance valuetype Game.LayoutDirection Game.SliderWidget::get_LayoutDirection()
    IL_000c:  brfalse.s  IL_0020

    IL_000e:  ldarg.0
    IL_000f:  ldfld      class Game.CanvasWidget Game.SliderWidget::m_canvasWidget
    IL_0014:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0019:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_001e:  br.s       IL_0030

    IL_0020:  ldarg.0
    IL_0021:  ldfld      class Game.CanvasWidget Game.SliderWidget::m_canvasWidget
    IL_0026:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_002b:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0030:  stloc.0
    IL_0031:  ldarg.0
    IL_0032:  call       instance valuetype Game.LayoutDirection Game.SliderWidget::get_LayoutDirection()
    IL_0037:  brfalse.s  IL_004b

    IL_0039:  ldarg.0
    IL_003a:  ldfld      class Game.Widget Game.SliderWidget::m_tabWidget
    IL_003f:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0044:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0049:  br.s       IL_005b

    IL_004b:  ldarg.0
    IL_004c:  ldfld      class Game.Widget Game.SliderWidget::m_tabWidget
    IL_0051:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0056:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_005b:  stloc.1
    IL_005c:  ldarg.0
    IL_005d:  call       instance float32 Game.SliderWidget::get_MaxValue()
    IL_0062:  ldarg.0
    IL_0063:  call       instance float32 Game.SliderWidget::get_MinValue()
    IL_0068:  bgt.s      IL_0071

    IL_006a:  ldc.r4     0.0
    IL_006f:  br.s       IL_008c

    IL_0071:  ldarg.0
    IL_0072:  call       instance float32 Game.SliderWidget::get_Value()
    IL_0077:  ldarg.0
    IL_0078:  call       instance float32 Game.SliderWidget::get_MinValue()
    IL_007d:  sub
    IL_007e:  ldarg.0
    IL_007f:  call       instance float32 Game.SliderWidget::get_MaxValue()
    IL_0084:  ldarg.0
    IL_0085:  call       instance float32 Game.SliderWidget::get_MinValue()
    IL_008a:  sub
    IL_008b:  div
    IL_008c:  stloc.2
    IL_008d:  ldarg.0
    IL_008e:  call       instance valuetype Game.LayoutDirection Game.SliderWidget::get_LayoutDirection()
    IL_0093:  brtrue.s   IL_00f3

    IL_0095:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_009a:  stloc.3
    IL_009b:  ldloca.s   V_3
    IL_009d:  ldloc.2
    IL_009e:  ldloc.0
    IL_009f:  ldloc.1
    IL_00a0:  sub
    IL_00a1:  mul
    IL_00a2:  stfld      float32 [Engine]Engine.Vector2::X
    IL_00a7:  ldloca.s   V_3
    IL_00a9:  ldarg.0
    IL_00aa:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_00af:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00b4:  ldarg.0
    IL_00b5:  ldfld      class Game.Widget Game.SliderWidget::m_tabWidget
    IL_00ba:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_00bf:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00c4:  sub
    IL_00c5:  ldc.r4     2.
    IL_00ca:  div
    IL_00cb:  ldc.r4     0.0
    IL_00d0:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_00d5:  stfld      float32 [Engine]Engine.Vector2::Y
    IL_00da:  ldarg.0
    IL_00db:  ldfld      class Game.CanvasWidget Game.SliderWidget::m_canvasWidget
    IL_00e0:  ldarg.0
    IL_00e1:  ldfld      class Game.Widget Game.SliderWidget::m_tabWidget
    IL_00e6:  ldloc.3
    IL_00e7:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_00ec:  callvirt   instance void Game.CanvasWidget::SetWidgetPosition(class Game.Widget,
                                                                            valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>)
    IL_00f1:  br.s       IL_0151

    IL_00f3:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_00f8:  stloc.s    V_4
    IL_00fa:  ldloca.s   V_4
    IL_00fc:  ldarg.0
    IL_00fd:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0102:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0107:  ldarg.0
    IL_0108:  ldfld      class Game.Widget Game.SliderWidget::m_tabWidget
    IL_010d:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0112:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0117:  sub
    IL_0118:  ldc.r4     0.0
    IL_011d:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_0122:  ldc.r4     2.
    IL_0127:  div
    IL_0128:  stfld      float32 [Engine]Engine.Vector2::X
    IL_012d:  ldloca.s   V_4
    IL_012f:  ldloc.2
    IL_0130:  ldloc.0
    IL_0131:  ldloc.1
    IL_0132:  sub
    IL_0133:  mul
    IL_0134:  stfld      float32 [Engine]Engine.Vector2::Y
    IL_0139:  ldarg.0
    IL_013a:  ldfld      class Game.CanvasWidget Game.SliderWidget::m_canvasWidget
    IL_013f:  ldarg.0
    IL_0140:  ldfld      class Game.Widget Game.SliderWidget::m_tabWidget
    IL_0145:  ldloc.s    V_4
    IL_0147:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_014c:  callvirt   instance void Game.CanvasWidget::SetWidgetPosition(class Game.Widget,
                                                                            valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>)
    IL_0151:  ldarg.0
    IL_0152:  call       instance void Game.CanvasWidget::ArrangeOverride()
    IL_0157:  ret
  } // end of method SliderWidget::ArrangeOverride

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       486 (0x1e6)
    .maxstack  4
    .locals init (float32 V_0,
             float32 V_1,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> V_2,
             valuetype [Engine]Engine.Vector2 V_3,
             float32 V_4,
             float32 V_5,
             float32 V_6)
    IL_0000:  ldarg.0
    IL_0001:  call       instance valuetype Game.LayoutDirection Game.SliderWidget::get_LayoutDirection()
    IL_0006:  brfalse.s  IL_001a

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.CanvasWidget Game.SliderWidget::m_canvasWidget
    IL_000e:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0013:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0018:  br.s       IL_002a

    IL_001a:  ldarg.0
    IL_001b:  ldfld      class Game.CanvasWidget Game.SliderWidget::m_canvasWidget
    IL_0020:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0025:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_002a:  stloc.0
    IL_002b:  ldarg.0
    IL_002c:  call       instance valuetype Game.LayoutDirection Game.SliderWidget::get_LayoutDirection()
    IL_0031:  brfalse.s  IL_0045

    IL_0033:  ldarg.0
    IL_0034:  ldfld      class Game.Widget Game.SliderWidget::m_tabWidget
    IL_0039:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_003e:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0043:  br.s       IL_0055

    IL_0045:  ldarg.0
    IL_0046:  ldfld      class Game.Widget Game.SliderWidget::m_tabWidget
    IL_004b:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0050:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0055:  stloc.1
    IL_0056:  ldarg.0
    IL_0057:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_005c:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::get_Tap()
    IL_0061:  stloc.2
    IL_0062:  ldloca.s   V_2
    IL_0064:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_0069:  brfalse.s  IL_00af

    IL_006b:  ldarg.0
    IL_006c:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0071:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::get_Tap()
    IL_0076:  stloc.2
    IL_0077:  ldloca.s   V_2
    IL_0079:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_007e:  call       class Game.Widget Game.WidgetsManager::HitTest(valuetype [Engine]Engine.Vector2)
    IL_0083:  ldarg.0
    IL_0084:  ldfld      class Game.Widget Game.SliderWidget::m_tabWidget
    IL_0089:  bne.un.s   IL_00af

    IL_008b:  ldarg.0
    IL_008c:  ldarg.0
    IL_008d:  ldarg.0
    IL_008e:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0093:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::get_Press()
    IL_0098:  stloc.2
    IL_0099:  ldloca.s   V_2
    IL_009b:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_00a0:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::ScreenToWidget(valuetype [Engine]Engine.Vector2)
    IL_00a5:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_00aa:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.SliderWidget::m_dragStartPoint
    IL_00af:  ldarg.0
    IL_00b0:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_00b5:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::get_Press()
    IL_00ba:  stloc.2
    IL_00bb:  ldloca.s   V_2
    IL_00bd:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_00c2:  brfalse    IL_019d

    IL_00c7:  ldarg.0
    IL_00c8:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.SliderWidget::m_dragStartPoint
    IL_00cd:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_00d2:  brfalse    IL_01a9

    IL_00d7:  ldarg.0
    IL_00d8:  ldarg.0
    IL_00d9:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_00de:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::get_Press()
    IL_00e3:  stloc.2
    IL_00e4:  ldloca.s   V_2
    IL_00e6:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_00eb:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::ScreenToWidget(valuetype [Engine]Engine.Vector2)
    IL_00f0:  stloc.3
    IL_00f1:  ldarg.0
    IL_00f2:  call       instance float32 Game.SliderWidget::get_Value()
    IL_00f7:  stloc.s    V_4
    IL_00f9:  ldarg.0
    IL_00fa:  call       instance valuetype Game.LayoutDirection Game.SliderWidget::get_LayoutDirection()
    IL_00ff:  brtrue.s   IL_0130

    IL_0101:  ldloc.3
    IL_0102:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0107:  ldloc.1
    IL_0108:  ldc.r4     2.
    IL_010d:  div
    IL_010e:  sub
    IL_010f:  ldloc.0
    IL_0110:  ldloc.1
    IL_0111:  sub
    IL_0112:  div
    IL_0113:  stloc.s    V_5
    IL_0115:  ldarg.0
    IL_0116:  ldarg.0
    IL_0117:  call       instance float32 Game.SliderWidget::get_MinValue()
    IL_011c:  ldarg.0
    IL_011d:  call       instance float32 Game.SliderWidget::get_MaxValue()
    IL_0122:  ldloc.s    V_5
    IL_0124:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0129:  call       instance void Game.SliderWidget::set_Value(float32)
    IL_012e:  br.s       IL_015d

    IL_0130:  ldloc.3
    IL_0131:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0136:  ldloc.1
    IL_0137:  ldc.r4     2.
    IL_013c:  div
    IL_013d:  sub
    IL_013e:  ldloc.0
    IL_013f:  ldloc.1
    IL_0140:  sub
    IL_0141:  div
    IL_0142:  stloc.s    V_6
    IL_0144:  ldarg.0
    IL_0145:  ldarg.0
    IL_0146:  call       instance float32 Game.SliderWidget::get_MinValue()
    IL_014b:  ldarg.0
    IL_014c:  call       instance float32 Game.SliderWidget::get_MaxValue()
    IL_0151:  ldloc.s    V_6
    IL_0153:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0158:  call       instance void Game.SliderWidget::set_Value(float32)
    IL_015d:  ldarg.0
    IL_015e:  call       instance float32 Game.SliderWidget::get_Value()
    IL_0163:  ldloc.s    V_4
    IL_0165:  beq.s      IL_01a9

    IL_0167:  ldarg.0
    IL_0168:  ldfld      float32 Game.SliderWidget::m_granularity
    IL_016d:  ldc.r4     0.0
    IL_0172:  ble.un.s   IL_01a9

    IL_0174:  ldarg.0
    IL_0175:  call       instance string Game.SliderWidget::get_SoundName()
    IL_017a:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_017f:  brtrue.s   IL_01a9

    IL_0181:  ldarg.0
    IL_0182:  call       instance string Game.SliderWidget::get_SoundName()
    IL_0187:  ldc.r4     1.
    IL_018c:  ldc.r4     0.0
    IL_0191:  ldc.r4     0.0
    IL_0196:  call       void Game.AudioManager::PlaySound(string,
                                                           float32,
                                                           float32,
                                                           float32)
    IL_019b:  br.s       IL_01a9

    IL_019d:  ldarg.0
    IL_019e:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.SliderWidget::m_dragStartPoint
    IL_01a3:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>
    IL_01a9:  ldarg.0
    IL_01aa:  ldarg.0
    IL_01ab:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.SliderWidget::m_dragStartPoint
    IL_01b0:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_01b5:  brfalse.s  IL_01c7

    IL_01b7:  ldarg.0
    IL_01b8:  call       bool Game.WidgetsManager::IsWidgetEnabled(class Game.Widget)
    IL_01bd:  brfalse.s  IL_01c7

    IL_01bf:  ldarg.0
    IL_01c0:  call       bool Game.WidgetsManager::IsWidgetVisible(class Game.Widget)
    IL_01c5:  br.s       IL_01c8

    IL_01c7:  ldc.i4.0
    IL_01c8:  call       instance void Game.SliderWidget::set_IsSliding(bool)
    IL_01cd:  ldarg.0
    IL_01ce:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.SliderWidget::m_dragStartPoint
    IL_01d3:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_01d8:  brfalse.s  IL_01e5

    IL_01da:  ldarg.0
    IL_01db:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_01e0:  callvirt   instance void Game.WidgetInput::Clear()
    IL_01e5:  ret
  } // end of method SliderWidget::Update

  .property instance bool IsSliding()
  {
    .get instance bool Game.SliderWidget::get_IsSliding()
    .set instance void Game.SliderWidget::set_IsSliding(bool)
  } // end of property SliderWidget::IsSliding
  .property instance valuetype Game.LayoutDirection
          LayoutDirection()
  {
    .get instance valuetype Game.LayoutDirection Game.SliderWidget::get_LayoutDirection()
    .set instance void Game.SliderWidget::set_LayoutDirection(valuetype Game.LayoutDirection)
  } // end of property SliderWidget::LayoutDirection
  .property instance float32 MinValue()
  {
    .get instance float32 Game.SliderWidget::get_MinValue()
    .set instance void Game.SliderWidget::set_MinValue(float32)
  } // end of property SliderWidget::MinValue
  .property instance float32 MaxValue()
  {
    .get instance float32 Game.SliderWidget::get_MaxValue()
    .set instance void Game.SliderWidget::set_MaxValue(float32)
  } // end of property SliderWidget::MaxValue
  .property instance float32 Value()
  {
    .get instance float32 Game.SliderWidget::get_Value()
    .set instance void Game.SliderWidget::set_Value(float32)
  } // end of property SliderWidget::Value
  .property instance float32 Granularity()
  {
    .get instance float32 Game.SliderWidget::get_Granularity()
    .set instance void Game.SliderWidget::set_Granularity(float32)
  } // end of property SliderWidget::Granularity
  .property instance string Text()
  {
    .get instance string Game.SliderWidget::get_Text()
    .set instance void Game.SliderWidget::set_Text(string)
  } // end of property SliderWidget::Text
  .property instance class [Engine]Engine.Media.BitmapFont
          Font()
  {
    .get instance class [Engine]Engine.Media.BitmapFont Game.SliderWidget::get_Font()
    .set instance void Game.SliderWidget::set_Font(class [Engine]Engine.Media.BitmapFont)
  } // end of property SliderWidget::Font
  .property instance string SoundName()
  {
    .get instance string Game.SliderWidget::get_SoundName()
    .set instance void Game.SliderWidget::set_SoundName(string)
  } // end of property SliderWidget::SoundName
  .property instance bool IsLabelVisible()
  {
    .get instance bool Game.SliderWidget::get_IsLabelVisible()
    .set instance void Game.SliderWidget::set_IsLabelVisible(bool)
  } // end of property SliderWidget::IsLabelVisible
  .property instance float32 LabelWidth()
  {
    .get instance float32 Game.SliderWidget::get_LabelWidth()
    .set instance void Game.SliderWidget::set_LabelWidth(float32)
  } // end of property SliderWidget::LabelWidth
} // end of class Game.SliderWidget