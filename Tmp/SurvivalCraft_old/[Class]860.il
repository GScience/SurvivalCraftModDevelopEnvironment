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
    IL_0031:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0036:  ldstr      "Slider.Canvas"
    IL_003b:  ldc.i4.1
    IL_003c:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.CanvasWidget>(string,
                                                                                           bool)
    IL_0041:  stfld      class Game.CanvasWidget Game.SliderWidget::m_canvasWidget
    IL_0046:  ldarg.0
    IL_0047:  ldarg.0
    IL_0048:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_004d:  ldstr      "Slider.LabelCanvas"
    IL_0052:  ldc.i4.1
    IL_0053:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.CanvasWidget>(string,
                                                                                           bool)
    IL_0058:  stfld      class Game.CanvasWidget Game.SliderWidget::m_labelCanvasWidget
    IL_005d:  ldarg.0
    IL_005e:  ldarg.0
    IL_005f:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0064:  ldstr      "Slider.Tab"
    IL_0069:  ldc.i4.1
    IL_006a:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.Widget>(string,
                                                                                     bool)
    IL_006f:  stfld      class Game.Widget Game.SliderWidget::m_tabWidget
    IL_0074:  ldarg.0
    IL_0075:  ldarg.0
    IL_0076:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_007b:  ldstr      "Slider.Label"
    IL_0080:  ldc.i4.1
    IL_0081:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
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
          Measure(valuetype [Engine]Engine.Vector2 availableSize) cil managed
  {
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void Game.CanvasWidget::Measure(valuetype [Engine]Engine.Vector2)
    IL_0007:  ldarg.0
    IL_0008:  ldc.i4.1
    IL_0009:  call       instance void Game.Widget::set_IsDrawRequired(bool)
    IL_000e:  ret
  } // end of method SliderWidget::Measure

  .method public hidebysig virtual instance void 
          Arrange(valuetype [Engine]Engine.Vector2 position,
                  valuetype [Engine]Engine.Vector2 actualSize) cil managed
  {
    // 代码大小       338 (0x152)
    .maxstack  4
    .locals init (float32 V_0,
             float32 V_1,
             float32 V_2,
             valuetype [Engine]Engine.Vector2 V_3,
             valuetype [Engine]Engine.Vector2 V_4)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  call       instance void Game.CanvasWidget::Arrange(valuetype [Engine]Engine.Vector2,
                                                                  valuetype [Engine]Engine.Vector2)
    IL_0008:  ldarg.0
    IL_0009:  call       instance valuetype Game.LayoutDirection Game.SliderWidget::get_LayoutDirection()
    IL_000e:  brfalse.s  IL_0022

    IL_0010:  ldarg.0
    IL_0011:  ldfld      class Game.CanvasWidget Game.SliderWidget::m_canvasWidget
    IL_0016:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_001b:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0020:  br.s       IL_0032

    IL_0022:  ldarg.0
    IL_0023:  ldfld      class Game.CanvasWidget Game.SliderWidget::m_canvasWidget
    IL_0028:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_002d:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0032:  stloc.0
    IL_0033:  ldarg.0
    IL_0034:  call       instance valuetype Game.LayoutDirection Game.SliderWidget::get_LayoutDirection()
    IL_0039:  brfalse.s  IL_004d

    IL_003b:  ldarg.0
    IL_003c:  ldfld      class Game.Widget Game.SliderWidget::m_tabWidget
    IL_0041:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0046:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_004b:  br.s       IL_005d

    IL_004d:  ldarg.0
    IL_004e:  ldfld      class Game.Widget Game.SliderWidget::m_tabWidget
    IL_0053:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0058:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_005d:  stloc.1
    IL_005e:  ldarg.0
    IL_005f:  call       instance float32 Game.SliderWidget::get_MaxValue()
    IL_0064:  ldarg.0
    IL_0065:  call       instance float32 Game.SliderWidget::get_MinValue()
    IL_006a:  bgt.s      IL_0073

    IL_006c:  ldc.r4     0.0
    IL_0071:  br.s       IL_008e

    IL_0073:  ldarg.0
    IL_0074:  call       instance float32 Game.SliderWidget::get_Value()
    IL_0079:  ldarg.0
    IL_007a:  call       instance float32 Game.SliderWidget::get_MinValue()
    IL_007f:  sub
    IL_0080:  ldarg.0
    IL_0081:  call       instance float32 Game.SliderWidget::get_MaxValue()
    IL_0086:  ldarg.0
    IL_0087:  call       instance float32 Game.SliderWidget::get_MinValue()
    IL_008c:  sub
    IL_008d:  div
    IL_008e:  stloc.2
    IL_008f:  ldarg.0
    IL_0090:  call       instance valuetype Game.LayoutDirection Game.SliderWidget::get_LayoutDirection()
    IL_0095:  brtrue.s   IL_00f0

    IL_0097:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_009c:  stloc.3
    IL_009d:  ldloca.s   V_3
    IL_009f:  ldloc.2
    IL_00a0:  ldloc.0
    IL_00a1:  ldloc.1
    IL_00a2:  sub
    IL_00a3:  mul
    IL_00a4:  stfld      float32 [Engine]Engine.Vector2::X
    IL_00a9:  ldloca.s   V_3
    IL_00ab:  ldarg.2
    IL_00ac:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00b1:  ldarg.0
    IL_00b2:  ldfld      class Game.Widget Game.SliderWidget::m_tabWidget
    IL_00b7:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_00bc:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00c1:  sub
    IL_00c2:  ldc.r4     2.
    IL_00c7:  div
    IL_00c8:  ldc.r4     0.0
    IL_00cd:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_00d2:  stfld      float32 [Engine]Engine.Vector2::Y
    IL_00d7:  ldarg.0
    IL_00d8:  ldfld      class Game.CanvasWidget Game.SliderWidget::m_canvasWidget
    IL_00dd:  ldarg.0
    IL_00de:  ldfld      class Game.Widget Game.SliderWidget::m_tabWidget
    IL_00e3:  ldloc.3
    IL_00e4:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_00e9:  callvirt   instance void Game.CanvasWidget::SetWidgetPosition(class Game.Widget,
                                                                            valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>)
    IL_00ee:  br.s       IL_0149

    IL_00f0:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_00f5:  stloc.s    V_4
    IL_00f7:  ldloca.s   V_4
    IL_00f9:  ldarg.2
    IL_00fa:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_00ff:  ldarg.0
    IL_0100:  ldfld      class Game.Widget Game.SliderWidget::m_tabWidget
    IL_0105:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_010a:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_010f:  sub
    IL_0110:  ldc.r4     0.0
    IL_0115:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_011a:  ldc.r4     2.
    IL_011f:  div
    IL_0120:  stfld      float32 [Engine]Engine.Vector2::X
    IL_0125:  ldloca.s   V_4
    IL_0127:  ldloc.2
    IL_0128:  ldloc.0
    IL_0129:  ldloc.1
    IL_012a:  sub
    IL_012b:  mul
    IL_012c:  stfld      float32 [Engine]Engine.Vector2::Y
    IL_0131:  ldarg.0
    IL_0132:  ldfld      class Game.CanvasWidget Game.SliderWidget::m_canvasWidget
    IL_0137:  ldarg.0
    IL_0138:  ldfld      class Game.Widget Game.SliderWidget::m_tabWidget
    IL_013d:  ldloc.s    V_4
    IL_013f:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_0144:  callvirt   instance void Game.CanvasWidget::SetWidgetPosition(class Game.Widget,
                                                                            valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>)
    IL_0149:  ldarg.0
    IL_014a:  ldarg.1
    IL_014b:  ldarg.2
    IL_014c:  call       instance void Game.CanvasWidget::Arrange(valuetype [Engine]Engine.Vector2,
                                                                  valuetype [Engine]Engine.Vector2)
    IL_0151:  ret
  } // end of method SliderWidget::Arrange

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       507 (0x1fb)
    .maxstack  4
    .locals init (float32 V_0,
             float32 V_1,
             valuetype Game.InputState V_2,
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
    IL_0056:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_005b:  stloc.2
    IL_005c:  ldloca.s   V_2
    IL_005e:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputState::Click
    IL_0063:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_0068:  brfalse.s  IL_00b0

    IL_006a:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_006f:  stloc.2
    IL_0070:  ldloca.s   V_2
    IL_0072:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputState::Click
    IL_0077:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_007c:  call       class Game.Widget Game.WidgetsManager::HitTest(valuetype [Engine]Engine.Vector2)
    IL_0081:  ldarg.0
    IL_0082:  ldfld      class Game.Widget Game.SliderWidget::m_tabWidget
    IL_0087:  bne.un.s   IL_00b0

    IL_0089:  ldarg.0
    IL_008a:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_008f:  stloc.2
    IL_0090:  ldloca.s   V_2
    IL_0092:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputState::Press
    IL_0097:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_009c:  call       float32 Game.WidgetsManager::get_Scale()
    IL_00a1:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Division(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_00a6:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_00ab:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.SliderWidget::m_dragStartPoint
    IL_00b0:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_00b5:  stloc.2
    IL_00b6:  ldloca.s   V_2
    IL_00b8:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputState::Press
    IL_00bd:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_00c2:  brfalse    IL_01b8

    IL_00c7:  ldarg.0
    IL_00c8:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.SliderWidget::m_dragStartPoint
    IL_00cd:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_00d2:  brfalse    IL_01c4

    IL_00d7:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_00dc:  stloc.2
    IL_00dd:  ldloca.s   V_2
    IL_00df:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputState::Press
    IL_00e4:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_00e9:  call       float32 Game.WidgetsManager::get_Scale()
    IL_00ee:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Division(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_00f3:  stloc.3
    IL_00f4:  ldarg.0
    IL_00f5:  call       instance float32 Game.SliderWidget::get_Value()
    IL_00fa:  stloc.s    V_4
    IL_00fc:  ldarg.0
    IL_00fd:  call       instance valuetype Game.LayoutDirection Game.SliderWidget::get_LayoutDirection()
    IL_0102:  brtrue.s   IL_013f

    IL_0104:  ldloc.3
    IL_0105:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_010a:  ldarg.0
    IL_010b:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_0110:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0115:  ldloc.1
    IL_0116:  ldc.r4     2.
    IL_011b:  div
    IL_011c:  add
    IL_011d:  sub
    IL_011e:  ldloc.0
    IL_011f:  ldloc.1
    IL_0120:  sub
    IL_0121:  div
    IL_0122:  stloc.s    V_5
    IL_0124:  ldarg.0
    IL_0125:  ldarg.0
    IL_0126:  call       instance float32 Game.SliderWidget::get_MinValue()
    IL_012b:  ldarg.0
    IL_012c:  call       instance float32 Game.SliderWidget::get_MaxValue()
    IL_0131:  ldloc.s    V_5
    IL_0133:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0138:  call       instance void Game.SliderWidget::set_Value(float32)
    IL_013d:  br.s       IL_0178

    IL_013f:  ldloc.3
    IL_0140:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0145:  ldarg.0
    IL_0146:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_014b:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0150:  ldloc.1
    IL_0151:  ldc.r4     2.
    IL_0156:  div
    IL_0157:  add
    IL_0158:  sub
    IL_0159:  ldloc.0
    IL_015a:  ldloc.1
    IL_015b:  sub
    IL_015c:  div
    IL_015d:  stloc.s    V_6
    IL_015f:  ldarg.0
    IL_0160:  ldarg.0
    IL_0161:  call       instance float32 Game.SliderWidget::get_MinValue()
    IL_0166:  ldarg.0
    IL_0167:  call       instance float32 Game.SliderWidget::get_MaxValue()
    IL_016c:  ldloc.s    V_6
    IL_016e:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0173:  call       instance void Game.SliderWidget::set_Value(float32)
    IL_0178:  ldarg.0
    IL_0179:  call       instance float32 Game.SliderWidget::get_Value()
    IL_017e:  ldloc.s    V_4
    IL_0180:  beq.s      IL_01c4

    IL_0182:  ldarg.0
    IL_0183:  ldfld      float32 Game.SliderWidget::m_granularity
    IL_0188:  ldc.r4     0.0
    IL_018d:  ble.un.s   IL_01c4

    IL_018f:  ldarg.0
    IL_0190:  call       instance string Game.SliderWidget::get_SoundName()
    IL_0195:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_019a:  brtrue.s   IL_01c4

    IL_019c:  ldarg.0
    IL_019d:  call       instance string Game.SliderWidget::get_SoundName()
    IL_01a2:  ldc.r4     1.
    IL_01a7:  ldc.r4     0.0
    IL_01ac:  ldc.r4     0.0
    IL_01b1:  call       void Game.AudioManager::PlaySound(string,
                                                           float32,
                                                           float32,
                                                           float32)
    IL_01b6:  br.s       IL_01c4

    IL_01b8:  ldarg.0
    IL_01b9:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.SliderWidget::m_dragStartPoint
    IL_01be:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>
    IL_01c4:  ldarg.0
    IL_01c5:  ldarg.0
    IL_01c6:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.SliderWidget::m_dragStartPoint
    IL_01cb:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_01d0:  brfalse.s  IL_01e2

    IL_01d2:  ldarg.0
    IL_01d3:  call       bool Game.WidgetsManager::IsWidgetEnabled(class Game.Widget)
    IL_01d8:  brfalse.s  IL_01e2

    IL_01da:  ldarg.0
    IL_01db:  call       bool Game.WidgetsManager::IsWidgetVisible(class Game.Widget)
    IL_01e0:  br.s       IL_01e3

    IL_01e2:  ldc.i4.0
    IL_01e3:  call       instance void Game.SliderWidget::set_IsSliding(bool)
    IL_01e8:  ldarg.0
    IL_01e9:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.SliderWidget::m_dragStartPoint
    IL_01ee:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_01f3:  brfalse.s  IL_01fa

    IL_01f5:  call       void Game.InputManager::Clear()
    IL_01fa:  ret
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