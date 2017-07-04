.class public auto ansi beforefieldinit Game.ScrollPanelWidget
       extends Game.ContainerWidget
{
  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass23_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public bool found
    .field public class Game.ScrollPanelWidget '<>4__this'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass23_0'::.ctor

    .method assembly hidebysig instance bool 
            '<HitTestPanel>b__0'(class Game.Widget widget) cil managed
    {
      // 代码大小       34 (0x22)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldarg.1
      IL_0002:  ldarg.0
      IL_0003:  ldfld      class Game.ScrollPanelWidget Game.ScrollPanelWidget/'<>c__DisplayClass23_0'::'<>4__this'
      IL_0008:  callvirt   instance bool Game.Widget::IsChildWidgetOf(class Game.ContainerWidget)
      IL_000d:  brtrue.s   IL_001a

      IL_000f:  ldarg.1
      IL_0010:  ldarg.0
      IL_0011:  ldfld      class Game.ScrollPanelWidget Game.ScrollPanelWidget/'<>c__DisplayClass23_0'::'<>4__this'
      IL_0016:  ceq
      IL_0018:  br.s       IL_001b

      IL_001a:  ldc.i4.1
      IL_001b:  stfld      bool Game.ScrollPanelWidget/'<>c__DisplayClass23_0'::found
      IL_0020:  ldc.i4.1
      IL_0021:  ret
    } // end of method '<>c__DisplayClass23_0'::'<HitTestPanel>b__0'

  } // end of class '<>c__DisplayClass23_0'

  .field private valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> m_lastDragPosition
  .field private float32 m_dragSpeed
  .field private float32 m_scrollBarAlpha
  .field private float32 m_scrollAreaLength
  .field private valuetype Game.LayoutDirection '<Direction>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<ScrollPosition>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<ScrollSpeed>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       20 (0x14)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.ContainerWidget::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldc.i4.1
    IL_0008:  call       instance void Game.Widget::set_ClampToBounds(bool)
    IL_000d:  ldarg.0
    IL_000e:  call       instance void Game.ScrollPanelWidget::StartInitialScroll()
    IL_0013:  ret
  } // end of method ScrollPanelWidget::.ctor

  .method public hidebysig newslot specialname virtual 
          instance valuetype Game.LayoutDirection 
          get_Direction() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype Game.LayoutDirection Game.ScrollPanelWidget::'<Direction>k__BackingField'
    IL_0006:  ret
  } // end of method ScrollPanelWidget::get_Direction

  .method public hidebysig newslot specialname virtual 
          instance void  set_Direction(valuetype Game.LayoutDirection 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype Game.LayoutDirection Game.ScrollPanelWidget::'<Direction>k__BackingField'
    IL_0007:  ret
  } // end of method ScrollPanelWidget::set_Direction

  .method public hidebysig newslot specialname virtual 
          instance float32  get_ScrollPosition() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ScrollPanelWidget::'<ScrollPosition>k__BackingField'
    IL_0006:  ret
  } // end of method ScrollPanelWidget::get_ScrollPosition

  .method public hidebysig newslot specialname virtual 
          instance void  set_ScrollPosition(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ScrollPanelWidget::'<ScrollPosition>k__BackingField'
    IL_0007:  ret
  } // end of method ScrollPanelWidget::set_ScrollPosition

  .method public hidebysig newslot specialname virtual 
          instance float32  get_ScrollSpeed() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ScrollPanelWidget::'<ScrollSpeed>k__BackingField'
    IL_0006:  ret
  } // end of method ScrollPanelWidget::get_ScrollSpeed

  .method public hidebysig newslot specialname virtual 
          instance void  set_ScrollSpeed(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ScrollPanelWidget::'<ScrollSpeed>k__BackingField'
    IL_0007:  ret
  } // end of method ScrollPanelWidget::set_ScrollSpeed

  .method public hidebysig instance void 
          StartInitialScroll() cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.r4     12.
    IL_0006:  callvirt   instance void Game.ScrollPanelWidget::set_ScrollPosition(float32)
    IL_000b:  ldarg.0
    IL_000c:  ldc.r4     -70.
    IL_0011:  callvirt   instance void Game.ScrollPanelWidget::set_ScrollSpeed(float32)
    IL_0016:  ret
  } // end of method ScrollPanelWidget::StartInitialScroll

  .method public hidebysig newslot virtual 
          instance float32  CalculateScrollAreaLength() cil managed
  {
    // 代码大小       145 (0x91)
    .maxstack  4
    .locals init (float32 V_0,
             valuetype Game.WidgetsList/Enumerator V_1,
             class Game.Widget V_2)
    IL_0000:  ldc.r4     0.0
    IL_0005:  stloc.0
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_000c:  callvirt   instance valuetype Game.WidgetsList/Enumerator Game.WidgetsList::GetEnumerator()
    IL_0011:  stloc.1
    .try
    {
      IL_0012:  br.s       IL_0076

      IL_0014:  ldloca.s   V_1
      IL_0016:  call       instance class Game.Widget Game.WidgetsList/Enumerator::get_Current()
      IL_001b:  stloc.2
      IL_001c:  ldloc.2
      IL_001d:  callvirt   instance bool Game.Widget::get_IsVisible()
      IL_0022:  brfalse.s  IL_0076

      IL_0024:  ldarg.0
      IL_0025:  callvirt   instance valuetype Game.LayoutDirection Game.ScrollPanelWidget::get_Direction()
      IL_002a:  brtrue.s   IL_0052

      IL_002c:  ldloc.0
      IL_002d:  ldloc.2
      IL_002e:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ParentDesiredSize()
      IL_0033:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_0038:  ldc.r4     2.
      IL_003d:  ldloc.2
      IL_003e:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Margin()
      IL_0043:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_0048:  mul
      IL_0049:  add
      IL_004a:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                                 float32)
      IL_004f:  stloc.0
      IL_0050:  br.s       IL_0076

      IL_0052:  ldloc.0
      IL_0053:  ldloc.2
      IL_0054:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ParentDesiredSize()
      IL_0059:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_005e:  ldc.r4     2.
      IL_0063:  ldloc.2
      IL_0064:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Margin()
      IL_0069:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_006e:  mul
      IL_006f:  add
      IL_0070:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                                 float32)
      IL_0075:  stloc.0
      IL_0076:  ldloca.s   V_1
      IL_0078:  call       instance bool Game.WidgetsList/Enumerator::MoveNext()
      IL_007d:  brtrue.s   IL_0014

      IL_007f:  leave.s    IL_008f

    }  // end .try
    finally
    {
      IL_0081:  ldloca.s   V_1
      IL_0083:  constrained. Game.WidgetsList/Enumerator
      IL_0089:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_008e:  endfinally
    }  // end handler
    IL_008f:  ldloc.0
    IL_0090:  ret
  } // end of method ScrollPanelWidget::CalculateScrollAreaLength

  .method public hidebysig virtual instance void 
          MeasureOverride(valuetype [Engine]Engine.Vector2 parentAvailableSize) cil managed
  {
    // 代码大小       176 (0xb0)
    .maxstack  5
    .locals init (valuetype Game.WidgetsList/Enumerator V_0,
             class Game.Widget V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  call       instance void Game.Widget::set_IsDrawRequired(bool)
    IL_0007:  ldarg.0
    IL_0008:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_000d:  callvirt   instance valuetype Game.WidgetsList/Enumerator Game.WidgetsList::GetEnumerator()
    IL_0012:  stloc.0
    .try
    {
      IL_0013:  br.s       IL_0093

      IL_0015:  ldloca.s   V_0
      IL_0017:  call       instance class Game.Widget Game.WidgetsList/Enumerator::get_Current()
      IL_001c:  stloc.1
      IL_001d:  ldloc.1
      IL_001e:  callvirt   instance bool Game.Widget::get_IsVisible()
      IL_0023:  brfalse.s  IL_0093

      IL_0025:  ldarg.0
      IL_0026:  callvirt   instance valuetype Game.LayoutDirection Game.ScrollPanelWidget::get_Direction()
      IL_002b:  brtrue.s   IL_0061

      IL_002d:  ldloc.1
      IL_002e:  ldc.r4     3.4028235e+038
      IL_0033:  ldarg.1
      IL_0034:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_0039:  ldc.r4     2.
      IL_003e:  ldloc.1
      IL_003f:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Margin()
      IL_0044:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_0049:  mul
      IL_004a:  sub
      IL_004b:  ldc.r4     0.0
      IL_0050:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                                 float32)
      IL_0055:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_005a:  callvirt   instance void Game.Widget::Measure(valuetype [Engine]Engine.Vector2)
      IL_005f:  br.s       IL_0093

      IL_0061:  ldloc.1
      IL_0062:  ldarg.1
      IL_0063:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_0068:  ldc.r4     2.
      IL_006d:  ldloc.1
      IL_006e:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Margin()
      IL_0073:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_0078:  mul
      IL_0079:  sub
      IL_007a:  ldc.r4     0.0
      IL_007f:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                                 float32)
      IL_0084:  ldc.r4     3.4028235e+038
      IL_0089:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_008e:  callvirt   instance void Game.Widget::Measure(valuetype [Engine]Engine.Vector2)
      IL_0093:  ldloca.s   V_0
      IL_0095:  call       instance bool Game.WidgetsList/Enumerator::MoveNext()
      IL_009a:  brtrue     IL_0015

      IL_009f:  leave.s    IL_00af

    }  // end .try
    finally
    {
      IL_00a1:  ldloca.s   V_0
      IL_00a3:  constrained. Game.WidgetsList/Enumerator
      IL_00a9:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00ae:  endfinally
    }  // end handler
    IL_00af:  ret
  } // end of method ScrollPanelWidget::MeasureOverride

  .method public hidebysig virtual instance void 
          ArrangeOverride() cil managed
  {
    // 代码大小       166 (0xa6)
    .maxstack  3
    .locals init (valuetype Game.WidgetsList/Enumerator V_0,
             class Game.Widget V_1,
             valuetype [Engine]Engine.Vector2 V_2,
             valuetype [Engine]Engine.Vector2 V_3)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0006:  callvirt   instance valuetype Game.WidgetsList/Enumerator Game.WidgetsList::GetEnumerator()
    IL_000b:  stloc.0
    .try
    {
      IL_000c:  br.s       IL_0089

      IL_000e:  ldloca.s   V_0
      IL_0010:  call       instance class Game.Widget Game.WidgetsList/Enumerator::get_Current()
      IL_0015:  stloc.1
      IL_0016:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
      IL_001b:  stloc.2
      IL_001c:  ldarg.0
      IL_001d:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
      IL_0022:  stloc.3
      IL_0023:  ldarg.0
      IL_0024:  callvirt   instance valuetype Game.LayoutDirection Game.ScrollPanelWidget::get_Direction()
      IL_0029:  brtrue.s   IL_0057

      IL_002b:  ldloca.s   V_2
      IL_002d:  ldflda     float32 [Engine]Engine.Vector2::X
      IL_0032:  dup
      IL_0033:  ldind.r4
      IL_0034:  ldarg.0
      IL_0035:  callvirt   instance float32 Game.ScrollPanelWidget::get_ScrollPosition()
      IL_003a:  sub
      IL_003b:  stind.r4
      IL_003c:  ldloca.s   V_3
      IL_003e:  ldloc.2
      IL_003f:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_0044:  ldloc.1
      IL_0045:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ParentDesiredSize()
      IL_004a:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_004f:  add
      IL_0050:  stfld      float32 [Engine]Engine.Vector2::X
      IL_0055:  br.s       IL_0081

      IL_0057:  ldloca.s   V_2
      IL_0059:  ldflda     float32 [Engine]Engine.Vector2::Y
      IL_005e:  dup
      IL_005f:  ldind.r4
      IL_0060:  ldarg.0
      IL_0061:  callvirt   instance float32 Game.ScrollPanelWidget::get_ScrollPosition()
      IL_0066:  sub
      IL_0067:  stind.r4
      IL_0068:  ldloca.s   V_3
      IL_006a:  ldloc.2
      IL_006b:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_0070:  ldloc.1
      IL_0071:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ParentDesiredSize()
      IL_0076:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_007b:  add
      IL_007c:  stfld      float32 [Engine]Engine.Vector2::Y
      IL_0081:  ldloc.2
      IL_0082:  ldloc.3
      IL_0083:  ldloc.1
      IL_0084:  call       void Game.ContainerWidget::ArrangeChildWidgetInCell(valuetype [Engine]Engine.Vector2,
                                                                               valuetype [Engine]Engine.Vector2,
                                                                               class Game.Widget)
      IL_0089:  ldloca.s   V_0
      IL_008b:  call       instance bool Game.WidgetsList/Enumerator::MoveNext()
      IL_0090:  brtrue     IL_000e

      IL_0095:  leave.s    IL_00a5

    }  // end .try
    finally
    {
      IL_0097:  ldloca.s   V_0
      IL_0099:  constrained. Game.WidgetsList/Enumerator
      IL_009f:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00a4:  endfinally
    }  // end handler
    IL_00a5:  ret
  } // end of method ScrollPanelWidget::ArrangeOverride

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       990 (0x3de)
    .maxstack  5
    .locals init (float32 V_0,
             float32 V_1,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> V_2,
             float32 V_3,
             valuetype [Engine]Engine.Vector2 V_4,
             valuetype [Engine]Engine.Vector2 V_5,
             float32 V_6,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> V_7,
             valuetype [Engine]Engine.Vector3 V_8)
    IL_0000:  ldc.r4     50.
    IL_0005:  stloc.0
    IL_0006:  ldarg.0
    IL_0007:  ldarg.0
    IL_0008:  callvirt   instance float32 Game.ScrollPanelWidget::CalculateScrollAreaLength()
    IL_000d:  stfld      float32 Game.ScrollPanelWidget::m_scrollAreaLength
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  ldfld      float32 Game.ScrollPanelWidget::m_scrollBarAlpha
    IL_0019:  ldc.r4     2.
    IL_001e:  call       float32 [Engine]Engine.Time::get_FrameDuration()
    IL_0023:  mul
    IL_0024:  sub
    IL_0025:  ldc.r4     0.0
    IL_002a:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_002f:  stfld      float32 Game.ScrollPanelWidget::m_scrollBarAlpha
    IL_0034:  ldarg.0
    IL_0035:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_003a:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::get_Tap()
    IL_003f:  stloc.2
    IL_0040:  ldloca.s   V_2
    IL_0042:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_0047:  brfalse.s  IL_0088

    IL_0049:  ldarg.0
    IL_004a:  ldarg.0
    IL_004b:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0050:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::get_Tap()
    IL_0055:  stloc.2
    IL_0056:  ldloca.s   V_2
    IL_0058:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_005d:  call       instance bool Game.ScrollPanelWidget::HitTestPanel(valuetype [Engine]Engine.Vector2)
    IL_0062:  brfalse.s  IL_0088

    IL_0064:  ldarg.0
    IL_0065:  ldarg.0
    IL_0066:  ldarg.0
    IL_0067:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_006c:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::get_Tap()
    IL_0071:  stloc.2
    IL_0072:  ldloca.s   V_2
    IL_0074:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_0079:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::ScreenToWidget(valuetype [Engine]Engine.Vector2)
    IL_007e:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_0083:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.ScrollPanelWidget::m_lastDragPosition
    IL_0088:  ldarg.0
    IL_0089:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.ScrollPanelWidget::m_lastDragPosition
    IL_008e:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_0093:  brfalse    IL_01c2

    IL_0098:  ldarg.0
    IL_0099:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_009e:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::get_Press()
    IL_00a3:  stloc.2
    IL_00a4:  ldloca.s   V_2
    IL_00a6:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_00ab:  brfalse    IL_019e

    IL_00b0:  ldc.r4     0.0
    IL_00b5:  stloc.3
    IL_00b6:  ldarg.0
    IL_00b7:  ldarg.0
    IL_00b8:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_00bd:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::get_Press()
    IL_00c2:  stloc.2
    IL_00c3:  ldloca.s   V_2
    IL_00c5:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_00ca:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::ScreenToWidget(valuetype [Engine]Engine.Vector2)
    IL_00cf:  stloc.s    V_4
    IL_00d1:  ldloc.s    V_4
    IL_00d3:  ldarg.0
    IL_00d4:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.ScrollPanelWidget::m_lastDragPosition
    IL_00d9:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_00de:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_00e3:  stloc.s    V_5
    IL_00e5:  ldarg.0
    IL_00e6:  callvirt   instance valuetype Game.LayoutDirection Game.ScrollPanelWidget::get_Direction()
    IL_00eb:  brtrue.s   IL_0112

    IL_00ed:  ldarg.0
    IL_00ee:  ldarg.0
    IL_00ef:  callvirt   instance float32 Game.ScrollPanelWidget::get_ScrollPosition()
    IL_00f4:  ldloc.s    V_5
    IL_00f6:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_00fb:  neg
    IL_00fc:  add
    IL_00fd:  callvirt   instance void Game.ScrollPanelWidget::set_ScrollPosition(float32)
    IL_0102:  ldloc.s    V_5
    IL_0104:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0109:  call       float32 [Engine]Engine.Time::get_FrameDuration()
    IL_010e:  div
    IL_010f:  stloc.3
    IL_0110:  br.s       IL_0135

    IL_0112:  ldarg.0
    IL_0113:  ldarg.0
    IL_0114:  callvirt   instance float32 Game.ScrollPanelWidget::get_ScrollPosition()
    IL_0119:  ldloc.s    V_5
    IL_011b:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0120:  neg
    IL_0121:  add
    IL_0122:  callvirt   instance void Game.ScrollPanelWidget::set_ScrollPosition(float32)
    IL_0127:  ldloc.s    V_5
    IL_0129:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_012e:  call       float32 [Engine]Engine.Time::get_FrameDuration()
    IL_0133:  div
    IL_0134:  stloc.3
    IL_0135:  ldloc.3
    IL_0136:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_013b:  ldarg.0
    IL_013c:  ldfld      float32 Game.ScrollPanelWidget::m_dragSpeed
    IL_0141:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_0146:  blt.s      IL_014f

    IL_0148:  ldc.r4     16.
    IL_014d:  br.s       IL_0154

    IL_014f:  ldc.r4     20.
    IL_0154:  stloc.s    V_6
    IL_0156:  ldarg.0
    IL_0157:  ldarg.0
    IL_0158:  ldfld      float32 Game.ScrollPanelWidget::m_dragSpeed
    IL_015d:  ldloc.s    V_6
    IL_015f:  call       float32 [Engine]Engine.Time::get_FrameDuration()
    IL_0164:  mul
    IL_0165:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_016a:  ldloc.3
    IL_016b:  ldarg.0
    IL_016c:  ldfld      float32 Game.ScrollPanelWidget::m_dragSpeed
    IL_0171:  sub
    IL_0172:  mul
    IL_0173:  add
    IL_0174:  stfld      float32 Game.ScrollPanelWidget::m_dragSpeed
    IL_0179:  ldarg.0
    IL_017a:  ldc.r4     4.
    IL_017f:  stfld      float32 Game.ScrollPanelWidget::m_scrollBarAlpha
    IL_0184:  ldarg.0
    IL_0185:  ldloc.s    V_4
    IL_0187:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_018c:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.ScrollPanelWidget::m_lastDragPosition
    IL_0191:  ldarg.0
    IL_0192:  ldc.r4     0.0
    IL_0197:  callvirt   instance void Game.ScrollPanelWidget::set_ScrollSpeed(float32)
    IL_019c:  br.s       IL_01c2

    IL_019e:  ldarg.0
    IL_019f:  ldarg.0
    IL_01a0:  ldfld      float32 Game.ScrollPanelWidget::m_dragSpeed
    IL_01a5:  neg
    IL_01a6:  callvirt   instance void Game.ScrollPanelWidget::set_ScrollSpeed(float32)
    IL_01ab:  ldarg.0
    IL_01ac:  ldc.r4     0.0
    IL_01b1:  stfld      float32 Game.ScrollPanelWidget::m_dragSpeed
    IL_01b6:  ldarg.0
    IL_01b7:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.ScrollPanelWidget::m_lastDragPosition
    IL_01bc:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>
    IL_01c2:  ldarg.0
    IL_01c3:  callvirt   instance float32 Game.ScrollPanelWidget::get_ScrollSpeed()
    IL_01c8:  ldc.r4     0.0
    IL_01cd:  beq.s      IL_022c

    IL_01cf:  ldarg.0
    IL_01d0:  ldarg.0
    IL_01d1:  callvirt   instance float32 Game.ScrollPanelWidget::get_ScrollSpeed()
    IL_01d6:  ldc.r4     0.33000001
    IL_01db:  call       float32 [Engine]Engine.Time::get_FrameDuration()
    IL_01e0:  call       float32 [Engine]Engine.MathUtils::Pow(float32,
                                                               float32)
    IL_01e5:  mul
    IL_01e6:  callvirt   instance void Game.ScrollPanelWidget::set_ScrollSpeed(float32)
    IL_01eb:  ldarg.0
    IL_01ec:  callvirt   instance float32 Game.ScrollPanelWidget::get_ScrollSpeed()
    IL_01f1:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_01f6:  ldc.r4     40.
    IL_01fb:  bge.un.s   IL_0208

    IL_01fd:  ldarg.0
    IL_01fe:  ldc.r4     0.0
    IL_0203:  callvirt   instance void Game.ScrollPanelWidget::set_ScrollSpeed(float32)
    IL_0208:  ldarg.0
    IL_0209:  ldarg.0
    IL_020a:  callvirt   instance float32 Game.ScrollPanelWidget::get_ScrollPosition()
    IL_020f:  ldarg.0
    IL_0210:  callvirt   instance float32 Game.ScrollPanelWidget::get_ScrollSpeed()
    IL_0215:  call       float32 [Engine]Engine.Time::get_FrameDuration()
    IL_021a:  mul
    IL_021b:  add
    IL_021c:  callvirt   instance void Game.ScrollPanelWidget::set_ScrollPosition(float32)
    IL_0221:  ldarg.0
    IL_0222:  ldc.r4     3.
    IL_0227:  stfld      float32 Game.ScrollPanelWidget::m_scrollBarAlpha
    IL_022c:  ldarg.0
    IL_022d:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0232:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.WidgetInput::get_Scroll()
    IL_0237:  stloc.s    V_7
    IL_0239:  ldloca.s   V_7
    IL_023b:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_0240:  brfalse.s  IL_02af

    IL_0242:  ldarg.0
    IL_0243:  ldarg.0
    IL_0244:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0249:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.WidgetInput::get_Scroll()
    IL_024e:  stloc.s    V_7
    IL_0250:  ldloca.s   V_7
    IL_0252:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_0257:  stloc.s    V_8
    IL_0259:  ldloca.s   V_8
    IL_025b:  call       instance valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector3::get_XY()
    IL_0260:  call       instance bool Game.ScrollPanelWidget::HitTestPanel(valuetype [Engine]Engine.Vector2)
    IL_0265:  brfalse.s  IL_02af

    IL_0267:  ldarg.0
    IL_0268:  ldarg.0
    IL_0269:  callvirt   instance float32 Game.ScrollPanelWidget::get_ScrollPosition()
    IL_026e:  ldc.r4     40.
    IL_0273:  ldarg.0
    IL_0274:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0279:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.WidgetInput::get_Scroll()
    IL_027e:  stloc.s    V_7
    IL_0280:  ldloca.s   V_7
    IL_0282:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_0287:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_028c:  mul
    IL_028d:  sub
    IL_028e:  callvirt   instance void Game.ScrollPanelWidget::set_ScrollPosition(float32)
    IL_0293:  ldarg.0
    IL_0294:  ldc.r4     0.0
    IL_0299:  callvirt   instance void Game.ScrollPanelWidget::set_ScrollSpeed(float32)
    IL_029e:  ldc.r4     0.0
    IL_02a3:  stloc.0
    IL_02a4:  ldarg.0
    IL_02a5:  ldc.r4     3.
    IL_02aa:  stfld      float32 Game.ScrollPanelWidget::m_scrollBarAlpha
    IL_02af:  ldarg.0
    IL_02b0:  ldfld      float32 Game.ScrollPanelWidget::m_scrollAreaLength
    IL_02b5:  ldarg.0
    IL_02b6:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_02bb:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_02c0:  sub
    IL_02c1:  ldc.r4     0.0
    IL_02c6:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_02cb:  stloc.1
    IL_02cc:  ldarg.0
    IL_02cd:  callvirt   instance float32 Game.ScrollPanelWidget::get_ScrollPosition()
    IL_02d2:  ldc.r4     0.0
    IL_02d7:  bge.un.s   IL_0339

    IL_02d9:  ldarg.0
    IL_02da:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.ScrollPanelWidget::m_lastDragPosition
    IL_02df:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_02e4:  brtrue.s   IL_031b

    IL_02e6:  ldarg.0
    IL_02e7:  ldarg.0
    IL_02e8:  callvirt   instance float32 Game.ScrollPanelWidget::get_ScrollPosition()
    IL_02ed:  ldc.r4     6.
    IL_02f2:  call       float32 [Engine]Engine.Time::get_FrameDuration()
    IL_02f7:  mul
    IL_02f8:  ldc.r4     0.0
    IL_02fd:  ldarg.0
    IL_02fe:  callvirt   instance float32 Game.ScrollPanelWidget::get_ScrollPosition()
    IL_0303:  sub
    IL_0304:  ldc.r4     5.
    IL_0309:  add
    IL_030a:  mul
    IL_030b:  add
    IL_030c:  ldc.r4     0.0
    IL_0311:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_0316:  callvirt   instance void Game.ScrollPanelWidget::set_ScrollPosition(float32)
    IL_031b:  ldarg.0
    IL_031c:  ldarg.0
    IL_031d:  callvirt   instance float32 Game.ScrollPanelWidget::get_ScrollPosition()
    IL_0322:  ldloc.0
    IL_0323:  neg
    IL_0324:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_0329:  callvirt   instance void Game.ScrollPanelWidget::set_ScrollPosition(float32)
    IL_032e:  ldarg.0
    IL_032f:  ldc.r4     0.0
    IL_0334:  callvirt   instance void Game.ScrollPanelWidget::set_ScrollSpeed(float32)
    IL_0339:  ldarg.0
    IL_033a:  callvirt   instance float32 Game.ScrollPanelWidget::get_ScrollPosition()
    IL_033f:  ldloc.1
    IL_0340:  ble.un.s   IL_039b

    IL_0342:  ldarg.0
    IL_0343:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.ScrollPanelWidget::m_lastDragPosition
    IL_0348:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_034d:  brtrue.s   IL_037c

    IL_034f:  ldarg.0
    IL_0350:  ldarg.0
    IL_0351:  callvirt   instance float32 Game.ScrollPanelWidget::get_ScrollPosition()
    IL_0356:  ldc.r4     6.
    IL_035b:  call       float32 [Engine]Engine.Time::get_FrameDuration()
    IL_0360:  mul
    IL_0361:  ldloc.1
    IL_0362:  ldarg.0
    IL_0363:  callvirt   instance float32 Game.ScrollPanelWidget::get_ScrollPosition()
    IL_0368:  sub
    IL_0369:  ldc.r4     5.
    IL_036e:  sub
    IL_036f:  mul
    IL_0370:  add
    IL_0371:  ldloc.1
    IL_0372:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_0377:  callvirt   instance void Game.ScrollPanelWidget::set_ScrollPosition(float32)
    IL_037c:  ldarg.0
    IL_037d:  ldarg.0
    IL_037e:  callvirt   instance float32 Game.ScrollPanelWidget::get_ScrollPosition()
    IL_0383:  ldloc.1
    IL_0384:  ldloc.0
    IL_0385:  add
    IL_0386:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_038b:  callvirt   instance void Game.ScrollPanelWidget::set_ScrollPosition(float32)
    IL_0390:  ldarg.0
    IL_0391:  ldc.r4     0.0
    IL_0396:  callvirt   instance void Game.ScrollPanelWidget::set_ScrollSpeed(float32)
    IL_039b:  ldarg.0
    IL_039c:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.ScrollPanelWidget::m_lastDragPosition
    IL_03a1:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_03a6:  brfalse.s  IL_03dd

    IL_03a8:  ldarg.0
    IL_03a9:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_03ae:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::get_Drag()
    IL_03b3:  stloc.2
    IL_03b4:  ldloca.s   V_2
    IL_03b6:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_03bb:  brtrue.s   IL_03d2

    IL_03bd:  ldarg.0
    IL_03be:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_03c3:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::get_Hold()
    IL_03c8:  stloc.2
    IL_03c9:  ldloca.s   V_2
    IL_03cb:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_03d0:  brfalse.s  IL_03dd

    IL_03d2:  ldarg.0
    IL_03d3:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_03d8:  callvirt   instance void Game.WidgetInput::Clear()
    IL_03dd:  ret
  } // end of method ScrollPanelWidget::Update

  .method public hidebysig virtual instance void 
          Draw() cil managed
  {
    // 代码大小       354 (0x162)
    .maxstack  5
    .locals init (valuetype [Engine]Engine.Color V_0,
             class [Engine]Engine.Graphics.FlatBatch2D V_1,
             int32 V_2,
             float32 V_3,
             float32 V_4,
             valuetype [Engine]Engine.Vector2 V_5,
             valuetype [Engine]Engine.Vector2 V_6,
             float32 V_7,
             float32 V_8,
             valuetype [Engine]Engine.Vector2 V_9,
             valuetype [Engine]Engine.Vector2 V_10)
    IL_0000:  ldc.i4     0x80
    IL_0005:  ldc.i4     0x80
    IL_000a:  ldc.i4     0x80
    IL_000f:  newobj     instance void [Engine]Engine.Color::.ctor(uint8,
                                                                   uint8,
                                                                   uint8)
    IL_0014:  ldarg.0
    IL_0015:  call       instance valuetype [Engine]Engine.Color Game.Widget::get_GlobalColorTransform()
    IL_001a:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color)
    IL_001f:  ldarg.0
    IL_0020:  ldfld      float32 Game.ScrollPanelWidget::m_scrollBarAlpha
    IL_0025:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_002a:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_002f:  stloc.0
    IL_0030:  ldloca.s   V_0
    IL_0032:  call       instance uint8 [Engine]Engine.Color::get_A()
    IL_0037:  ldc.i4.0
    IL_0038:  ble        IL_0161

    IL_003d:  ldarg.0
    IL_003e:  ldfld      float32 Game.ScrollPanelWidget::m_scrollAreaLength
    IL_0043:  ldc.r4     0.0
    IL_0048:  ble.un     IL_0161

    IL_004d:  ldsfld     class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.WidgetsManager::PrimitivesRenderer2D
    IL_0052:  ldc.i4.0
    IL_0053:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::None
    IL_0058:  ldnull
    IL_0059:  ldnull
    IL_005a:  callvirt   instance class [Engine]Engine.Graphics.FlatBatch2D [Engine]Engine.Graphics.PrimitivesRenderer2D::FlatBatch(int32,
                                                                                                                                    class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                    class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                    class [Engine]Engine.Graphics.BlendState)
    IL_005f:  stloc.1
    IL_0060:  ldloc.1
    IL_0061:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColor> [Engine]Engine.Graphics.BaseFlatBatch::TriangleVertices
    IL_0066:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColor>::get_Count()
    IL_006b:  stloc.2
    IL_006c:  ldarg.0
    IL_006d:  callvirt   instance valuetype Game.LayoutDirection Game.ScrollPanelWidget::get_Direction()
    IL_0072:  brtrue.s   IL_00e3

    IL_0074:  ldarg.0
    IL_0075:  callvirt   instance float32 Game.ScrollPanelWidget::get_ScrollPosition()
    IL_007a:  stloc.3
    IL_007b:  ldarg.0
    IL_007c:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0081:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0086:  stloc.s    V_4
    IL_0088:  ldloca.s   V_5
    IL_008a:  ldloc.3
    IL_008b:  ldarg.0
    IL_008c:  ldfld      float32 Game.ScrollPanelWidget::m_scrollAreaLength
    IL_0091:  div
    IL_0092:  ldloc.s    V_4
    IL_0094:  mul
    IL_0095:  ldarg.0
    IL_0096:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_009b:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00a0:  ldc.r4     5.
    IL_00a5:  sub
    IL_00a6:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00ab:  ldloca.s   V_6
    IL_00ad:  ldloc.3
    IL_00ae:  ldloc.s    V_4
    IL_00b0:  add
    IL_00b1:  ldarg.0
    IL_00b2:  ldfld      float32 Game.ScrollPanelWidget::m_scrollAreaLength
    IL_00b7:  div
    IL_00b8:  ldloc.s    V_4
    IL_00ba:  mul
    IL_00bb:  ldarg.0
    IL_00bc:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_00c1:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00c6:  ldc.r4     1.
    IL_00cb:  sub
    IL_00cc:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00d1:  ldloc.1
    IL_00d2:  ldloc.s    V_5
    IL_00d4:  ldloc.s    V_6
    IL_00d6:  ldc.r4     0.0
    IL_00db:  ldloc.0
    IL_00dc:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      float32,
                                                                                      valuetype [Engine]Engine.Color)
    IL_00e1:  br.s       IL_0153

    IL_00e3:  ldarg.0
    IL_00e4:  callvirt   instance float32 Game.ScrollPanelWidget::get_ScrollPosition()
    IL_00e9:  stloc.s    V_7
    IL_00eb:  ldarg.0
    IL_00ec:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_00f1:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00f6:  stloc.s    V_8
    IL_00f8:  ldloca.s   V_9
    IL_00fa:  ldarg.0
    IL_00fb:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0100:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0105:  ldc.r4     5.
    IL_010a:  sub
    IL_010b:  ldloc.s    V_7
    IL_010d:  ldarg.0
    IL_010e:  ldfld      float32 Game.ScrollPanelWidget::m_scrollAreaLength
    IL_0113:  div
    IL_0114:  ldloc.s    V_8
    IL_0116:  mul
    IL_0117:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_011c:  ldloca.s   V_10
    IL_011e:  ldarg.0
    IL_011f:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0124:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0129:  ldc.r4     1.
    IL_012e:  sub
    IL_012f:  ldloc.s    V_7
    IL_0131:  ldloc.s    V_8
    IL_0133:  add
    IL_0134:  ldarg.0
    IL_0135:  ldfld      float32 Game.ScrollPanelWidget::m_scrollAreaLength
    IL_013a:  div
    IL_013b:  ldloc.s    V_8
    IL_013d:  mul
    IL_013e:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0143:  ldloc.1
    IL_0144:  ldloc.s    V_9
    IL_0146:  ldloc.s    V_10
    IL_0148:  ldc.r4     0.0
    IL_014d:  ldloc.0
    IL_014e:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      float32,
                                                                                      valuetype [Engine]Engine.Color)
    IL_0153:  ldloc.1
    IL_0154:  ldarg.0
    IL_0155:  call       instance valuetype [Engine]Engine.Matrix Game.Widget::get_GlobalTransform()
    IL_015a:  ldloc.2
    IL_015b:  ldc.i4.m1
    IL_015c:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::TransformTriangles(valuetype [Engine]Engine.Matrix,
                                                                                               int32,
                                                                                               int32)
    IL_0161:  ret
  } // end of method ScrollPanelWidget::Draw

  .method family hidebysig instance bool 
          HitTestPanel(valuetype [Engine]Engine.Vector2 position) cil managed
  {
    // 代码大小       46 (0x2e)
    .maxstack  3
    .locals init (class Game.ScrollPanelWidget/'<>c__DisplayClass23_0' V_0)
    IL_0000:  newobj     instance void Game.ScrollPanelWidget/'<>c__DisplayClass23_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.0
    IL_0008:  stfld      class Game.ScrollPanelWidget Game.ScrollPanelWidget/'<>c__DisplayClass23_0'::'<>4__this'
    IL_000d:  ldloc.0
    IL_000e:  ldc.i4.0
    IL_000f:  stfld      bool Game.ScrollPanelWidget/'<>c__DisplayClass23_0'::found
    IL_0014:  ldarg.1
    IL_0015:  ldloc.0
    IL_0016:  ldftn      instance bool Game.ScrollPanelWidget/'<>c__DisplayClass23_0'::'<HitTestPanel>b__0'(class Game.Widget)
    IL_001c:  newobj     instance void class [System.Runtime]System.Func`2<class Game.Widget,bool>::.ctor(object,
                                                                                                          native int)
    IL_0021:  call       class Game.Widget Game.WidgetsManager::HitTest(valuetype [Engine]Engine.Vector2,
                                                                        class [System.Runtime]System.Func`2<class Game.Widget,bool>)
    IL_0026:  pop
    IL_0027:  ldloc.0
    IL_0028:  ldfld      bool Game.ScrollPanelWidget/'<>c__DisplayClass23_0'::found
    IL_002d:  ret
  } // end of method ScrollPanelWidget::HitTestPanel

  .property instance valuetype Game.LayoutDirection
          Direction()
  {
    .get instance valuetype Game.LayoutDirection Game.ScrollPanelWidget::get_Direction()
    .set instance void Game.ScrollPanelWidget::set_Direction(valuetype Game.LayoutDirection)
  } // end of property ScrollPanelWidget::Direction
  .property instance float32 ScrollPosition()
  {
    .get instance float32 Game.ScrollPanelWidget::get_ScrollPosition()
    .set instance void Game.ScrollPanelWidget::set_ScrollPosition(float32)
  } // end of property ScrollPanelWidget::ScrollPosition
  .property instance float32 ScrollSpeed()
  {
    .get instance float32 Game.ScrollPanelWidget::get_ScrollSpeed()
    .set instance void Game.ScrollPanelWidget::set_ScrollSpeed(float32)
  } // end of property ScrollPanelWidget::ScrollSpeed
} // end of class Game.ScrollPanelWidget