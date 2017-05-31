.class public auto ansi beforefieldinit Game.ScrollPanelWidget
       extends Game.ContainerWidget
{
  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass19_0'
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
    } // end of method '<>c__DisplayClass19_0'::.ctor

    .method assembly hidebysig instance bool 
            '<HitTestPanel>b__0'(class Game.Widget widget) cil managed
    {
      // 代码大小       34 (0x22)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldarg.1
      IL_0002:  ldarg.0
      IL_0003:  ldfld      class Game.ScrollPanelWidget Game.ScrollPanelWidget/'<>c__DisplayClass19_0'::'<>4__this'
      IL_0008:  callvirt   instance bool Game.Widget::IsChildWidgetOf(class Game.ContainerWidget)
      IL_000d:  brtrue.s   IL_001a

      IL_000f:  ldarg.1
      IL_0010:  ldarg.0
      IL_0011:  ldfld      class Game.ScrollPanelWidget Game.ScrollPanelWidget/'<>c__DisplayClass19_0'::'<>4__this'
      IL_0016:  ceq
      IL_0018:  br.s       IL_001b

      IL_001a:  ldc.i4.1
      IL_001b:  stfld      bool Game.ScrollPanelWidget/'<>c__DisplayClass19_0'::found
      IL_0020:  ldc.i4.1
      IL_0021:  ret
    } // end of method '<>c__DisplayClass19_0'::'<HitTestPanel>b__0'

  } // end of class '<>c__DisplayClass19_0'

  .field private valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> m_lastDragPosition
  .field private float32 m_dragSpeed
  .field family float32 m_scrollSpeed
  .field private float32 m_scrollBarAlpha
  .field private float32 m_scrollAreaLength
  .field private valuetype Game.LayoutDirection '<Direction>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<ScrollPosition>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.ContainerWidget::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldc.i4.1
    IL_0008:  call       instance void Game.Widget::set_ClampToBounds(bool)
    IL_000d:  ret
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

  .method public hidebysig newslot virtual 
          instance float32  CalculateScrollAreaLength() cil managed
  {
    // 代码大小       139 (0x8b)
    .maxstack  4
    .locals init (float32 V_0,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget> V_1,
             class Game.Widget V_2)
    IL_0000:  ldc.r4     0.0
    IL_0005:  stloc.0
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_000c:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget> Game.WidgetsContainer::GetEnumerator()
    IL_0011:  stloc.1
    .try
    {
      IL_0012:  br.s       IL_0075

      IL_0014:  ldloc.1
      IL_0015:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget>::get_Current()
      IL_001a:  stloc.2
      IL_001b:  ldloc.2
      IL_001c:  callvirt   instance bool Game.Widget::get_IsVisible()
      IL_0021:  brfalse.s  IL_0075

      IL_0023:  ldarg.0
      IL_0024:  callvirt   instance valuetype Game.LayoutDirection Game.ScrollPanelWidget::get_Direction()
      IL_0029:  brtrue.s   IL_0051

      IL_002b:  ldloc.0
      IL_002c:  ldloc.2
      IL_002d:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_DesiredSize()
      IL_0032:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_0037:  ldc.r4     2.
      IL_003c:  ldloc.2
      IL_003d:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Margin()
      IL_0042:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_0047:  mul
      IL_0048:  add
      IL_0049:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                                 float32)
      IL_004e:  stloc.0
      IL_004f:  br.s       IL_0075

      IL_0051:  ldloc.0
      IL_0052:  ldloc.2
      IL_0053:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_DesiredSize()
      IL_0058:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_005d:  ldc.r4     2.
      IL_0062:  ldloc.2
      IL_0063:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Margin()
      IL_0068:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_006d:  mul
      IL_006e:  add
      IL_006f:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                                 float32)
      IL_0074:  stloc.0
      IL_0075:  ldloc.1
      IL_0076:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_007b:  brtrue.s   IL_0014

      IL_007d:  leave.s    IL_0089

    }  // end .try
    finally
    {
      IL_007f:  ldloc.1
      IL_0080:  brfalse.s  IL_0088

      IL_0082:  ldloc.1
      IL_0083:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0088:  endfinally
    }  // end handler
    IL_0089:  ldloc.0
    IL_008a:  ret
  } // end of method ScrollPanelWidget::CalculateScrollAreaLength

  .method public hidebysig virtual instance void 
          Measure(valuetype [Engine]Engine.Vector2 availableSize) cil managed
  {
    // 代码大小       170 (0xaa)
    .maxstack  5
    .locals init (class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget> V_0,
             class Game.Widget V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  call       instance void Game.Widget::set_IsDrawRequired(bool)
    IL_0007:  ldarg.0
    IL_0008:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_000d:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget> Game.WidgetsContainer::GetEnumerator()
    IL_0012:  stloc.0
    .try
    {
      IL_0013:  br.s       IL_0092

      IL_0015:  ldloc.0
      IL_0016:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget>::get_Current()
      IL_001b:  stloc.1
      IL_001c:  ldloc.1
      IL_001d:  callvirt   instance bool Game.Widget::get_IsVisible()
      IL_0022:  brfalse.s  IL_0092

      IL_0024:  ldarg.0
      IL_0025:  callvirt   instance valuetype Game.LayoutDirection Game.ScrollPanelWidget::get_Direction()
      IL_002a:  brtrue.s   IL_0060

      IL_002c:  ldloc.1
      IL_002d:  ldc.r4     3.4028235e+038
      IL_0032:  ldarg.1
      IL_0033:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_0038:  ldc.r4     2.
      IL_003d:  ldloc.1
      IL_003e:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Margin()
      IL_0043:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_0048:  mul
      IL_0049:  sub
      IL_004a:  ldc.r4     0.0
      IL_004f:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                                 float32)
      IL_0054:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_0059:  callvirt   instance void Game.Widget::Measure(valuetype [Engine]Engine.Vector2)
      IL_005e:  br.s       IL_0092

      IL_0060:  ldloc.1
      IL_0061:  ldarg.1
      IL_0062:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_0067:  ldc.r4     2.
      IL_006c:  ldloc.1
      IL_006d:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Margin()
      IL_0072:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_0077:  mul
      IL_0078:  sub
      IL_0079:  ldc.r4     0.0
      IL_007e:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                                 float32)
      IL_0083:  ldc.r4     3.4028235e+038
      IL_0088:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_008d:  callvirt   instance void Game.Widget::Measure(valuetype [Engine]Engine.Vector2)
      IL_0092:  ldloc.0
      IL_0093:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_0098:  brtrue     IL_0015

      IL_009d:  leave.s    IL_00a9

    }  // end .try
    finally
    {
      IL_009f:  ldloc.0
      IL_00a0:  brfalse.s  IL_00a8

      IL_00a2:  ldloc.0
      IL_00a3:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00a8:  endfinally
    }  // end handler
    IL_00a9:  ret
  } // end of method ScrollPanelWidget::Measure

  .method public hidebysig virtual instance void 
          Arrange(valuetype [Engine]Engine.Vector2 position,
                  valuetype [Engine]Engine.Vector2 actualSize) cil managed
  {
    // 代码大小       162 (0xa2)
    .maxstack  3
    .locals init (class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget> V_0,
             class Game.Widget V_1,
             valuetype [Engine]Engine.Vector2 V_2,
             valuetype [Engine]Engine.Vector2 V_3)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  call       instance void Game.Widget::Arrange(valuetype [Engine]Engine.Vector2,
                                                            valuetype [Engine]Engine.Vector2)
    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_000e:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget> Game.WidgetsContainer::GetEnumerator()
    IL_0013:  stloc.0
    .try
    {
      IL_0014:  br.s       IL_008d

      IL_0016:  ldloc.0
      IL_0017:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget>::get_Current()
      IL_001c:  stloc.1
      IL_001d:  ldarg.1
      IL_001e:  stloc.2
      IL_001f:  ldarg.1
      IL_0020:  ldarg.2
      IL_0021:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                                valuetype [Engine]Engine.Vector2)
      IL_0026:  stloc.3
      IL_0027:  ldarg.0
      IL_0028:  callvirt   instance valuetype Game.LayoutDirection Game.ScrollPanelWidget::get_Direction()
      IL_002d:  brtrue.s   IL_005b

      IL_002f:  ldloca.s   V_2
      IL_0031:  ldflda     float32 [Engine]Engine.Vector2::X
      IL_0036:  dup
      IL_0037:  ldind.r4
      IL_0038:  ldarg.0
      IL_0039:  callvirt   instance float32 Game.ScrollPanelWidget::get_ScrollPosition()
      IL_003e:  sub
      IL_003f:  stind.r4
      IL_0040:  ldloca.s   V_3
      IL_0042:  ldloc.2
      IL_0043:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_0048:  ldloc.1
      IL_0049:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_DesiredSize()
      IL_004e:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_0053:  add
      IL_0054:  stfld      float32 [Engine]Engine.Vector2::X
      IL_0059:  br.s       IL_0085

      IL_005b:  ldloca.s   V_2
      IL_005d:  ldflda     float32 [Engine]Engine.Vector2::Y
      IL_0062:  dup
      IL_0063:  ldind.r4
      IL_0064:  ldarg.0
      IL_0065:  callvirt   instance float32 Game.ScrollPanelWidget::get_ScrollPosition()
      IL_006a:  sub
      IL_006b:  stind.r4
      IL_006c:  ldloca.s   V_3
      IL_006e:  ldloc.2
      IL_006f:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_0074:  ldloc.1
      IL_0075:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_DesiredSize()
      IL_007a:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_007f:  add
      IL_0080:  stfld      float32 [Engine]Engine.Vector2::Y
      IL_0085:  ldloc.2
      IL_0086:  ldloc.3
      IL_0087:  ldloc.1
      IL_0088:  call       void Game.ContainerWidget::ArrangeChildWidgetInCell(valuetype [Engine]Engine.Vector2,
                                                                               valuetype [Engine]Engine.Vector2,
                                                                               class Game.Widget)
      IL_008d:  ldloc.0
      IL_008e:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_0093:  brtrue.s   IL_0016

      IL_0095:  leave.s    IL_00a1

    }  // end .try
    finally
    {
      IL_0097:  ldloc.0
      IL_0098:  brfalse.s  IL_00a0

      IL_009a:  ldloc.0
      IL_009b:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00a0:  endfinally
    }  // end handler
    IL_00a1:  ret
  } // end of method ScrollPanelWidget::Arrange

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       937 (0x3a9)
    .maxstack  5
    .locals init (float32 V_0,
             float32 V_1,
             valuetype Game.InputState V_2,
             float32 V_3,
             valuetype [Engine]Engine.Vector2 V_4,
             float32 V_5,
             valuetype [Engine]Engine.Vector3 V_6)
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
    IL_0034:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_0039:  stloc.2
    IL_003a:  ldloca.s   V_2
    IL_003c:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputState::Click
    IL_0041:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_0046:  brfalse.s  IL_007f

    IL_0048:  ldarg.0
    IL_0049:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_004e:  stloc.2
    IL_004f:  ldloca.s   V_2
    IL_0051:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputState::Click
    IL_0056:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_005b:  call       instance bool Game.ScrollPanelWidget::HitTestPanel(valuetype [Engine]Engine.Vector2)
    IL_0060:  brfalse.s  IL_007f

    IL_0062:  ldarg.0
    IL_0063:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_0068:  stloc.2
    IL_0069:  ldloca.s   V_2
    IL_006b:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputState::Click
    IL_0070:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_0075:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_007a:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.ScrollPanelWidget::m_lastDragPosition
    IL_007f:  ldarg.0
    IL_0080:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.ScrollPanelWidget::m_lastDragPosition
    IL_0085:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_008a:  brfalse    IL_01d5

    IL_008f:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_0094:  stloc.2
    IL_0095:  ldloca.s   V_2
    IL_0097:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputState::Press
    IL_009c:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_00a1:  brfalse    IL_01b1

    IL_00a6:  ldc.r4     0.0
    IL_00ab:  stloc.3
    IL_00ac:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_00b1:  stloc.2
    IL_00b2:  ldloca.s   V_2
    IL_00b4:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputState::Press
    IL_00b9:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_00be:  ldarg.0
    IL_00bf:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.ScrollPanelWidget::m_lastDragPosition
    IL_00c4:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_00c9:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_00ce:  stloc.s    V_4
    IL_00d0:  ldarg.0
    IL_00d1:  callvirt   instance valuetype Game.LayoutDirection Game.ScrollPanelWidget::get_Direction()
    IL_00d6:  brtrue.s   IL_0109

    IL_00d8:  ldarg.0
    IL_00d9:  ldarg.0
    IL_00da:  callvirt   instance float32 Game.ScrollPanelWidget::get_ScrollPosition()
    IL_00df:  ldloc.s    V_4
    IL_00e1:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_00e6:  neg
    IL_00e7:  call       float32 Game.WidgetsManager::get_Scale()
    IL_00ec:  div
    IL_00ed:  add
    IL_00ee:  callvirt   instance void Game.ScrollPanelWidget::set_ScrollPosition(float32)
    IL_00f3:  ldloc.s    V_4
    IL_00f5:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_00fa:  call       float32 Game.WidgetsManager::get_Scale()
    IL_00ff:  div
    IL_0100:  call       float32 [Engine]Engine.Time::get_FrameDuration()
    IL_0105:  div
    IL_0106:  stloc.3
    IL_0107:  br.s       IL_0138

    IL_0109:  ldarg.0
    IL_010a:  ldarg.0
    IL_010b:  callvirt   instance float32 Game.ScrollPanelWidget::get_ScrollPosition()
    IL_0110:  ldloc.s    V_4
    IL_0112:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0117:  neg
    IL_0118:  call       float32 Game.WidgetsManager::get_Scale()
    IL_011d:  div
    IL_011e:  add
    IL_011f:  callvirt   instance void Game.ScrollPanelWidget::set_ScrollPosition(float32)
    IL_0124:  ldloc.s    V_4
    IL_0126:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_012b:  call       float32 Game.WidgetsManager::get_Scale()
    IL_0130:  div
    IL_0131:  call       float32 [Engine]Engine.Time::get_FrameDuration()
    IL_0136:  div
    IL_0137:  stloc.3
    IL_0138:  ldloc.3
    IL_0139:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_013e:  ldarg.0
    IL_013f:  ldfld      float32 Game.ScrollPanelWidget::m_dragSpeed
    IL_0144:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_0149:  blt.s      IL_0152

    IL_014b:  ldc.r4     5.
    IL_0150:  br.s       IL_0157

    IL_0152:  ldc.r4     30.
    IL_0157:  stloc.s    V_5
    IL_0159:  ldarg.0
    IL_015a:  ldarg.0
    IL_015b:  ldfld      float32 Game.ScrollPanelWidget::m_dragSpeed
    IL_0160:  ldloc.s    V_5
    IL_0162:  call       float32 [Engine]Engine.Time::get_FrameDuration()
    IL_0167:  mul
    IL_0168:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_016d:  ldloc.3
    IL_016e:  ldarg.0
    IL_016f:  ldfld      float32 Game.ScrollPanelWidget::m_dragSpeed
    IL_0174:  sub
    IL_0175:  mul
    IL_0176:  add
    IL_0177:  stfld      float32 Game.ScrollPanelWidget::m_dragSpeed
    IL_017c:  ldarg.0
    IL_017d:  ldc.r4     3.
    IL_0182:  stfld      float32 Game.ScrollPanelWidget::m_scrollBarAlpha
    IL_0187:  ldarg.0
    IL_0188:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_018d:  stloc.2
    IL_018e:  ldloca.s   V_2
    IL_0190:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputState::Press
    IL_0195:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_019a:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_019f:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.ScrollPanelWidget::m_lastDragPosition
    IL_01a4:  ldarg.0
    IL_01a5:  ldc.r4     0.0
    IL_01aa:  stfld      float32 Game.ScrollPanelWidget::m_scrollSpeed
    IL_01af:  br.s       IL_01d5

    IL_01b1:  ldarg.0
    IL_01b2:  ldarg.0
    IL_01b3:  ldfld      float32 Game.ScrollPanelWidget::m_dragSpeed
    IL_01b8:  neg
    IL_01b9:  stfld      float32 Game.ScrollPanelWidget::m_scrollSpeed
    IL_01be:  ldarg.0
    IL_01bf:  ldc.r4     0.0
    IL_01c4:  stfld      float32 Game.ScrollPanelWidget::m_dragSpeed
    IL_01c9:  ldarg.0
    IL_01ca:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.ScrollPanelWidget::m_lastDragPosition
    IL_01cf:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>
    IL_01d5:  ldarg.0
    IL_01d6:  ldfld      float32 Game.ScrollPanelWidget::m_scrollSpeed
    IL_01db:  ldc.r4     0.0
    IL_01e0:  beq.s      IL_023f

    IL_01e2:  ldarg.0
    IL_01e3:  ldfld      float32 Game.ScrollPanelWidget::m_scrollSpeed
    IL_01e8:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_01ed:  ldarg.0
    IL_01ee:  ldarg.0
    IL_01ef:  ldfld      float32 Game.ScrollPanelWidget::m_scrollSpeed
    IL_01f4:  ldc.r4     0.33000001
    IL_01f9:  call       float32 [Engine]Engine.Time::get_FrameDuration()
    IL_01fe:  call       float32 [Engine]Engine.MathUtils::Pow(float32,
                                                               float32)
    IL_0203:  mul
    IL_0204:  stfld      float32 Game.ScrollPanelWidget::m_scrollSpeed
    IL_0209:  ldc.r4     80.
    IL_020e:  bge.un.s   IL_021b

    IL_0210:  ldarg.0
    IL_0211:  ldc.r4     0.0
    IL_0216:  stfld      float32 Game.ScrollPanelWidget::m_scrollSpeed
    IL_021b:  ldarg.0
    IL_021c:  ldarg.0
    IL_021d:  callvirt   instance float32 Game.ScrollPanelWidget::get_ScrollPosition()
    IL_0222:  ldarg.0
    IL_0223:  ldfld      float32 Game.ScrollPanelWidget::m_scrollSpeed
    IL_0228:  call       float32 [Engine]Engine.Time::get_FrameDuration()
    IL_022d:  mul
    IL_022e:  add
    IL_022f:  callvirt   instance void Game.ScrollPanelWidget::set_ScrollPosition(float32)
    IL_0234:  ldarg.0
    IL_0235:  ldc.r4     3.
    IL_023a:  stfld      float32 Game.ScrollPanelWidget::m_scrollBarAlpha
    IL_023f:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_0244:  stloc.2
    IL_0245:  ldloca.s   V_2
    IL_0247:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.InputState::Scroll
    IL_024c:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_0251:  brfalse.s  IL_02bc

    IL_0253:  ldarg.0
    IL_0254:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_0259:  stloc.2
    IL_025a:  ldloca.s   V_2
    IL_025c:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.InputState::Scroll
    IL_0261:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_0266:  stloc.s    V_6
    IL_0268:  ldloca.s   V_6
    IL_026a:  call       instance valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector3::get_XY()
    IL_026f:  call       instance bool Game.ScrollPanelWidget::HitTestPanel(valuetype [Engine]Engine.Vector2)
    IL_0274:  brfalse.s  IL_02bc

    IL_0276:  ldarg.0
    IL_0277:  ldarg.0
    IL_0278:  callvirt   instance float32 Game.ScrollPanelWidget::get_ScrollPosition()
    IL_027d:  ldc.r4     40.
    IL_0282:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_0287:  stloc.2
    IL_0288:  ldloca.s   V_2
    IL_028a:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.InputState::Scroll
    IL_028f:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_0294:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0299:  mul
    IL_029a:  sub
    IL_029b:  callvirt   instance void Game.ScrollPanelWidget::set_ScrollPosition(float32)
    IL_02a0:  ldarg.0
    IL_02a1:  ldc.r4     0.0
    IL_02a6:  stfld      float32 Game.ScrollPanelWidget::m_scrollSpeed
    IL_02ab:  ldc.r4     0.0
    IL_02b0:  stloc.0
    IL_02b1:  ldarg.0
    IL_02b2:  ldc.r4     3.
    IL_02b7:  stfld      float32 Game.ScrollPanelWidget::m_scrollBarAlpha
    IL_02bc:  ldarg.0
    IL_02bd:  ldfld      float32 Game.ScrollPanelWidget::m_scrollAreaLength
    IL_02c2:  ldarg.0
    IL_02c3:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_02c8:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_02cd:  sub
    IL_02ce:  ldc.r4     0.0
    IL_02d3:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_02d8:  stloc.1
    IL_02d9:  ldarg.0
    IL_02da:  callvirt   instance float32 Game.ScrollPanelWidget::get_ScrollPosition()
    IL_02df:  ldc.r4     0.0
    IL_02e4:  bge.un.s   IL_0346

    IL_02e6:  ldarg.0
    IL_02e7:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.ScrollPanelWidget::m_lastDragPosition
    IL_02ec:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_02f1:  brtrue.s   IL_0328

    IL_02f3:  ldarg.0
    IL_02f4:  ldarg.0
    IL_02f5:  callvirt   instance float32 Game.ScrollPanelWidget::get_ScrollPosition()
    IL_02fa:  ldc.r4     6.
    IL_02ff:  call       float32 [Engine]Engine.Time::get_FrameDuration()
    IL_0304:  mul
    IL_0305:  ldc.r4     0.0
    IL_030a:  ldarg.0
    IL_030b:  callvirt   instance float32 Game.ScrollPanelWidget::get_ScrollPosition()
    IL_0310:  sub
    IL_0311:  ldc.r4     5.
    IL_0316:  add
    IL_0317:  mul
    IL_0318:  add
    IL_0319:  ldc.r4     0.0
    IL_031e:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_0323:  callvirt   instance void Game.ScrollPanelWidget::set_ScrollPosition(float32)
    IL_0328:  ldarg.0
    IL_0329:  ldarg.0
    IL_032a:  callvirt   instance float32 Game.ScrollPanelWidget::get_ScrollPosition()
    IL_032f:  ldloc.0
    IL_0330:  neg
    IL_0331:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_0336:  callvirt   instance void Game.ScrollPanelWidget::set_ScrollPosition(float32)
    IL_033b:  ldarg.0
    IL_033c:  ldc.r4     0.0
    IL_0341:  stfld      float32 Game.ScrollPanelWidget::m_scrollSpeed
    IL_0346:  ldarg.0
    IL_0347:  callvirt   instance float32 Game.ScrollPanelWidget::get_ScrollPosition()
    IL_034c:  ldloc.1
    IL_034d:  ble.un.s   IL_03a8

    IL_034f:  ldarg.0
    IL_0350:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.ScrollPanelWidget::m_lastDragPosition
    IL_0355:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_035a:  brtrue.s   IL_0389

    IL_035c:  ldarg.0
    IL_035d:  ldarg.0
    IL_035e:  callvirt   instance float32 Game.ScrollPanelWidget::get_ScrollPosition()
    IL_0363:  ldc.r4     6.
    IL_0368:  call       float32 [Engine]Engine.Time::get_FrameDuration()
    IL_036d:  mul
    IL_036e:  ldloc.1
    IL_036f:  ldarg.0
    IL_0370:  callvirt   instance float32 Game.ScrollPanelWidget::get_ScrollPosition()
    IL_0375:  sub
    IL_0376:  ldc.r4     5.
    IL_037b:  sub
    IL_037c:  mul
    IL_037d:  add
    IL_037e:  ldloc.1
    IL_037f:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_0384:  callvirt   instance void Game.ScrollPanelWidget::set_ScrollPosition(float32)
    IL_0389:  ldarg.0
    IL_038a:  ldarg.0
    IL_038b:  callvirt   instance float32 Game.ScrollPanelWidget::get_ScrollPosition()
    IL_0390:  ldloc.1
    IL_0391:  ldloc.0
    IL_0392:  add
    IL_0393:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_0398:  callvirt   instance void Game.ScrollPanelWidget::set_ScrollPosition(float32)
    IL_039d:  ldarg.0
    IL_039e:  ldc.r4     0.0
    IL_03a3:  stfld      float32 Game.ScrollPanelWidget::m_scrollSpeed
    IL_03a8:  ret
  } // end of method ScrollPanelWidget::Update

  .method public hidebysig virtual instance void 
          Draw() cil managed
  {
    // 代码大小       407 (0x197)
    .maxstack  5
    .locals init (class [Engine]Engine.Graphics.FlatBatch2D V_0,
             valuetype [Engine]Engine.Color V_1,
             float32 V_2,
             float32 V_3,
             valuetype [Engine]Engine.Vector2 V_4,
             valuetype [Engine]Engine.Vector2 V_5,
             float32 V_6,
             float32 V_7,
             valuetype [Engine]Engine.Vector2 V_8,
             valuetype [Engine]Engine.Vector2 V_9)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ScrollPanelWidget::m_scrollBarAlpha
    IL_0006:  ldc.r4     0.0
    IL_000b:  ble.un     IL_0196

    IL_0010:  ldarg.0
    IL_0011:  ldfld      float32 Game.ScrollPanelWidget::m_scrollAreaLength
    IL_0016:  ldc.r4     0.0
    IL_001b:  ble.un     IL_0196

    IL_0020:  ldsfld     class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.WidgetsManager::PrimitivesRenderer2D
    IL_0025:  ldc.i4.0
    IL_0026:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::None
    IL_002b:  ldnull
    IL_002c:  ldnull
    IL_002d:  callvirt   instance class [Engine]Engine.Graphics.FlatBatch2D [Engine]Engine.Graphics.PrimitivesRenderer2D::FlatBatch(int32,
                                                                                                                                    class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                    class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                    class [Engine]Engine.Graphics.BlendState)
    IL_0032:  stloc.0
    IL_0033:  ldc.i4     0x80
    IL_0038:  ldc.i4     0x80
    IL_003d:  ldc.i4     0x80
    IL_0042:  ldc.i4     0xff
    IL_0047:  newobj     instance void [Engine]Engine.Color::.ctor(uint8,
                                                                   uint8,
                                                                   uint8,
                                                                   uint8)
    IL_004c:  ldarg.0
    IL_004d:  ldfld      float32 Game.ScrollPanelWidget::m_scrollBarAlpha
    IL_0052:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0057:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_005c:  stloc.1
    IL_005d:  ldarg.0
    IL_005e:  callvirt   instance valuetype Game.LayoutDirection Game.ScrollPanelWidget::get_Direction()
    IL_0063:  brtrue     IL_00fc

    IL_0068:  ldarg.0
    IL_0069:  callvirt   instance float32 Game.ScrollPanelWidget::get_ScrollPosition()
    IL_006e:  stloc.2
    IL_006f:  ldarg.0
    IL_0070:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0075:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_007a:  stloc.3
    IL_007b:  ldarg.0
    IL_007c:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_0081:  ldloc.2
    IL_0082:  ldarg.0
    IL_0083:  ldfld      float32 Game.ScrollPanelWidget::m_scrollAreaLength
    IL_0088:  div
    IL_0089:  ldloc.3
    IL_008a:  mul
    IL_008b:  ldarg.0
    IL_008c:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0091:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0096:  ldc.r4     5.
    IL_009b:  sub
    IL_009c:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00a1:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_00a6:  call       float32 Game.WidgetsManager::get_Scale()
    IL_00ab:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_00b0:  stloc.s    V_4
    IL_00b2:  ldarg.0
    IL_00b3:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_00b8:  ldloc.2
    IL_00b9:  ldloc.3
    IL_00ba:  add
    IL_00bb:  ldarg.0
    IL_00bc:  ldfld      float32 Game.ScrollPanelWidget::m_scrollAreaLength
    IL_00c1:  div
    IL_00c2:  ldloc.3
    IL_00c3:  mul
    IL_00c4:  ldarg.0
    IL_00c5:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_00ca:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00cf:  ldc.r4     1.
    IL_00d4:  sub
    IL_00d5:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00da:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_00df:  call       float32 Game.WidgetsManager::get_Scale()
    IL_00e4:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_00e9:  stloc.s    V_5
    IL_00eb:  ldloc.0
    IL_00ec:  ldloc.s    V_4
    IL_00ee:  ldloc.s    V_5
    IL_00f0:  ldc.r4     0.0
    IL_00f5:  ldloc.1
    IL_00f6:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      float32,
                                                                                      valuetype [Engine]Engine.Color)
    IL_00fb:  ret

    IL_00fc:  ldarg.0
    IL_00fd:  callvirt   instance float32 Game.ScrollPanelWidget::get_ScrollPosition()
    IL_0102:  stloc.s    V_6
    IL_0104:  ldarg.0
    IL_0105:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_010a:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_010f:  stloc.s    V_7
    IL_0111:  ldarg.0
    IL_0112:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_0117:  ldarg.0
    IL_0118:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_011d:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0122:  ldc.r4     5.
    IL_0127:  sub
    IL_0128:  ldloc.s    V_6
    IL_012a:  ldarg.0
    IL_012b:  ldfld      float32 Game.ScrollPanelWidget::m_scrollAreaLength
    IL_0130:  div
    IL_0131:  ldloc.s    V_7
    IL_0133:  mul
    IL_0134:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0139:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_013e:  call       float32 Game.WidgetsManager::get_Scale()
    IL_0143:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0148:  stloc.s    V_8
    IL_014a:  ldarg.0
    IL_014b:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_0150:  ldarg.0
    IL_0151:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0156:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_015b:  ldc.r4     1.
    IL_0160:  sub
    IL_0161:  ldloc.s    V_6
    IL_0163:  ldloc.s    V_7
    IL_0165:  add
    IL_0166:  ldarg.0
    IL_0167:  ldfld      float32 Game.ScrollPanelWidget::m_scrollAreaLength
    IL_016c:  div
    IL_016d:  ldloc.s    V_7
    IL_016f:  mul
    IL_0170:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0175:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_017a:  call       float32 Game.WidgetsManager::get_Scale()
    IL_017f:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0184:  stloc.s    V_9
    IL_0186:  ldloc.0
    IL_0187:  ldloc.s    V_8
    IL_0189:  ldloc.s    V_9
    IL_018b:  ldc.r4     0.0
    IL_0190:  ldloc.1
    IL_0191:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      float32,
                                                                                      valuetype [Engine]Engine.Color)
    IL_0196:  ret
  } // end of method ScrollPanelWidget::Draw

  .method family hidebysig instance bool 
          HitTestPanel(valuetype [Engine]Engine.Vector2 position) cil managed
  {
    // 代码大小       46 (0x2e)
    .maxstack  3
    .locals init (class Game.ScrollPanelWidget/'<>c__DisplayClass19_0' V_0)
    IL_0000:  newobj     instance void Game.ScrollPanelWidget/'<>c__DisplayClass19_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.0
    IL_0008:  stfld      class Game.ScrollPanelWidget Game.ScrollPanelWidget/'<>c__DisplayClass19_0'::'<>4__this'
    IL_000d:  ldloc.0
    IL_000e:  ldc.i4.0
    IL_000f:  stfld      bool Game.ScrollPanelWidget/'<>c__DisplayClass19_0'::found
    IL_0014:  ldarg.1
    IL_0015:  ldloc.0
    IL_0016:  ldftn      instance bool Game.ScrollPanelWidget/'<>c__DisplayClass19_0'::'<HitTestPanel>b__0'(class Game.Widget)
    IL_001c:  newobj     instance void class [System.Runtime]System.Func`2<class Game.Widget,bool>::.ctor(object,
                                                                                                          native int)
    IL_0021:  call       class Game.Widget Game.WidgetsManager::HitTest(valuetype [Engine]Engine.Vector2,
                                                                        class [System.Runtime]System.Func`2<class Game.Widget,bool>)
    IL_0026:  pop
    IL_0027:  ldloc.0
    IL_0028:  ldfld      bool Game.ScrollPanelWidget/'<>c__DisplayClass19_0'::found
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
} // end of class Game.ScrollPanelWidget