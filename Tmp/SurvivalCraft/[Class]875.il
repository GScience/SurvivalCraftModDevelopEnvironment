.class public auto ansi beforefieldinit Game.DragHostWidget
       extends Game.ContainerWidget
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.DragHostWidget/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`2<class Game.Widget,bool> '<>9__9_0'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.DragHostWidget/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.DragHostWidget/'<>c' Game.DragHostWidget/'<>c'::'<>9'
      IL_000a:  ret
    } // end of method '<>c'::.cctor

    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c'::.ctor

    .method assembly hidebysig instance bool 
            '<Update>b__9_0'(class Game.Widget w) cil managed
    {
      // 代码大小       10 (0xa)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  isinst     Game.IDragTargetWidget
      IL_0006:  ldnull
      IL_0007:  cgt.un
      IL_0009:  ret
    } // end of method '<>c'::'<Update>b__9_0'

  } // end of class '<>c'

  .field private class Game.Widget m_dragWidget
  .field private object m_dragData
  .field private class [System.Runtime]System.Action m_dragEndedHandler
  .field private valuetype [Engine]Engine.Vector2 m_dragPosition
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.ContainerWidget::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldc.i4.0
    IL_0008:  callvirt   instance void Game.Widget::set_IsHitTestVisible(bool)
    IL_000d:  ret
  } // end of method DragHostWidget::.ctor

  .method public hidebysig specialname instance bool 
          get_IsDragInProgress() cil managed
  {
    // 代码大小       10 (0xa)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.Widget Game.DragHostWidget::m_dragWidget
    IL_0006:  ldnull
    IL_0007:  cgt.un
    IL_0009:  ret
  } // end of method DragHostWidget::get_IsDragInProgress

  .method public hidebysig instance void 
          BeginDrag(class Game.Widget dragWidget,
                    object dragData,
                    class [System.Runtime]System.Action dragEndedHandler) cil managed
  {
    // 代码大小       53 (0x35)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.Widget Game.DragHostWidget::m_dragWidget
    IL_0006:  brtrue.s   IL_0034

    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  stfld      class Game.Widget Game.DragHostWidget::m_dragWidget
    IL_000f:  ldarg.0
    IL_0010:  ldarg.2
    IL_0011:  stfld      object Game.DragHostWidget::m_dragData
    IL_0016:  ldarg.0
    IL_0017:  ldarg.3
    IL_0018:  stfld      class [System.Runtime]System.Action Game.DragHostWidget::m_dragEndedHandler
    IL_001d:  ldarg.0
    IL_001e:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0023:  ldarg.0
    IL_0024:  ldfld      class Game.Widget Game.DragHostWidget::m_dragWidget
    IL_0029:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
    IL_002e:  ldarg.0
    IL_002f:  call       instance void Game.DragHostWidget::UpdateDragPosition()
    IL_0034:  ret
  } // end of method DragHostWidget::BeginDrag

  .method public hidebysig instance void 
          EndDrag() cil managed
  {
    // 代码大小       66 (0x42)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.Widget Game.DragHostWidget::m_dragWidget
    IL_0006:  brfalse.s  IL_0041

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_000e:  ldarg.0
    IL_000f:  ldfld      class Game.Widget Game.DragHostWidget::m_dragWidget
    IL_0014:  callvirt   instance void Game.WidgetsList::Remove(class Game.Widget)
    IL_0019:  ldarg.0
    IL_001a:  ldnull
    IL_001b:  stfld      class Game.Widget Game.DragHostWidget::m_dragWidget
    IL_0020:  ldarg.0
    IL_0021:  ldnull
    IL_0022:  stfld      object Game.DragHostWidget::m_dragData
    IL_0027:  ldarg.0
    IL_0028:  ldfld      class [System.Runtime]System.Action Game.DragHostWidget::m_dragEndedHandler
    IL_002d:  brfalse.s  IL_0041

    IL_002f:  ldarg.0
    IL_0030:  ldfld      class [System.Runtime]System.Action Game.DragHostWidget::m_dragEndedHandler
    IL_0035:  callvirt   instance void [System.Runtime]System.Action::Invoke()
    IL_003a:  ldarg.0
    IL_003b:  ldnull
    IL_003c:  stfld      class [System.Runtime]System.Action Game.DragHostWidget::m_dragEndedHandler
    IL_0041:  ret
  } // end of method DragHostWidget::EndDrag

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       140 (0x8c)
    .maxstack  3
    .locals init (class Game.IDragTargetWidget V_0,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.Widget Game.DragHostWidget::m_dragWidget
    IL_0006:  brfalse    IL_008b

    IL_000b:  ldarg.0
    IL_000c:  call       instance void Game.DragHostWidget::UpdateDragPosition()
    IL_0011:  ldarg.0
    IL_0012:  ldfld      valuetype [Engine]Engine.Vector2 Game.DragHostWidget::m_dragPosition
    IL_0017:  ldsfld     class [System.Runtime]System.Func`2<class Game.Widget,bool> Game.DragHostWidget/'<>c'::'<>9__9_0'
    IL_001c:  dup
    IL_001d:  brtrue.s   IL_0036

    IL_001f:  pop
    IL_0020:  ldsfld     class Game.DragHostWidget/'<>c' Game.DragHostWidget/'<>c'::'<>9'
    IL_0025:  ldftn      instance bool Game.DragHostWidget/'<>c'::'<Update>b__9_0'(class Game.Widget)
    IL_002b:  newobj     instance void class [System.Runtime]System.Func`2<class Game.Widget,bool>::.ctor(object,
                                                                                                          native int)
    IL_0030:  dup
    IL_0031:  stsfld     class [System.Runtime]System.Func`2<class Game.Widget,bool> Game.DragHostWidget/'<>c'::'<>9__9_0'
    IL_0036:  call       class Game.Widget Game.WidgetsManager::HitTest(valuetype [Engine]Engine.Vector2,
                                                                        class [System.Runtime]System.Func`2<class Game.Widget,bool>)
    IL_003b:  isinst     Game.IDragTargetWidget
    IL_0040:  stloc.0
    IL_0041:  ldarg.0
    IL_0042:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0047:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::get_Drag()
    IL_004c:  stloc.1
    IL_004d:  ldloca.s   V_1
    IL_004f:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_0054:  brfalse.s  IL_006c

    IL_0056:  ldloc.0
    IL_0057:  brfalse.s  IL_008b

    IL_0059:  ldloc.0
    IL_005a:  ldarg.0
    IL_005b:  ldfld      class Game.Widget Game.DragHostWidget::m_dragWidget
    IL_0060:  ldarg.0
    IL_0061:  ldfld      object Game.DragHostWidget::m_dragData
    IL_0066:  callvirt   instance void Game.IDragTargetWidget::DragOver(class Game.Widget,
                                                                        object)
    IL_006b:  ret

    IL_006c:  nop
    .try
    {
      IL_006d:  ldloc.0
      IL_006e:  brfalse.s  IL_0082

      IL_0070:  ldloc.0
      IL_0071:  ldarg.0
      IL_0072:  ldfld      class Game.Widget Game.DragHostWidget::m_dragWidget
      IL_0077:  ldarg.0
      IL_0078:  ldfld      object Game.DragHostWidget::m_dragData
      IL_007d:  callvirt   instance void Game.IDragTargetWidget::DragDrop(class Game.Widget,
                                                                          object)
      IL_0082:  leave.s    IL_008b

    }  // end .try
    finally
    {
      IL_0084:  ldarg.0
      IL_0085:  call       instance void Game.DragHostWidget::EndDrag()
      IL_008a:  endfinally
    }  // end handler
    IL_008b:  ret
  } // end of method DragHostWidget::Update

  .method public hidebysig virtual instance void 
          ArrangeOverride() cil managed
  {
    // 代码大小       146 (0x92)
    .maxstack  4
    .locals init (valuetype Game.WidgetsList/Enumerator V_0,
             valuetype [Engine]Engine.Vector2 V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0006:  callvirt   instance valuetype Game.WidgetsList/Enumerator Game.WidgetsList::GetEnumerator()
    IL_000b:  stloc.0
    .try
    {
      IL_000c:  br.s       IL_0078

      IL_000e:  ldloca.s   V_0
      IL_0010:  call       instance class Game.Widget Game.WidgetsList/Enumerator::get_Current()
      IL_0015:  dup
      IL_0016:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ParentDesiredSize()
      IL_001b:  stloc.1
      IL_001c:  ldloca.s   V_1
      IL_001e:  ldloc.1
      IL_001f:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_0024:  ldarg.0
      IL_0025:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
      IL_002a:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_002f:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                                 float32)
      IL_0034:  stfld      float32 [Engine]Engine.Vector2::X
      IL_0039:  ldloca.s   V_1
      IL_003b:  ldloc.1
      IL_003c:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_0041:  ldarg.0
      IL_0042:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
      IL_0047:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_004c:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                                 float32)
      IL_0051:  stfld      float32 [Engine]Engine.Vector2::Y
      IL_0056:  ldarg.0
      IL_0057:  ldarg.0
      IL_0058:  ldfld      valuetype [Engine]Engine.Vector2 Game.DragHostWidget::m_dragPosition
      IL_005d:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::ScreenToWidget(valuetype [Engine]Engine.Vector2)
      IL_0062:  ldc.r4     0.5
      IL_0067:  ldloc.1
      IL_0068:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(float32,
                                                                                                valuetype [Engine]Engine.Vector2)
      IL_006d:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                   valuetype [Engine]Engine.Vector2)
      IL_0072:  ldloc.1
      IL_0073:  callvirt   instance void Game.Widget::Arrange(valuetype [Engine]Engine.Vector2,
                                                              valuetype [Engine]Engine.Vector2)
      IL_0078:  ldloca.s   V_0
      IL_007a:  call       instance bool Game.WidgetsList/Enumerator::MoveNext()
      IL_007f:  brtrue.s   IL_000e

      IL_0081:  leave.s    IL_0091

    }  // end .try
    finally
    {
      IL_0083:  ldloca.s   V_0
      IL_0085:  constrained. Game.WidgetsList/Enumerator
      IL_008b:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0090:  endfinally
    }  // end handler
    IL_0091:  ret
  } // end of method DragHostWidget::ArrangeOverride

  .method private hidebysig instance void 
          UpdateDragPosition() cil managed
  {
    // 代码大小       180 (0xb4)
    .maxstack  5
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0006:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::get_Drag()
    IL_000b:  stloc.0
    IL_000c:  ldloca.s   V_0
    IL_000e:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_0013:  brfalse    IL_00b3

    IL_0018:  ldarg.0
    IL_0019:  ldarg.0
    IL_001a:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_001f:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::get_Drag()
    IL_0024:  stloc.0
    IL_0025:  ldloca.s   V_0
    IL_0027:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_002c:  stfld      valuetype [Engine]Engine.Vector2 Game.DragHostWidget::m_dragPosition
    IL_0031:  ldarg.0
    IL_0032:  ldflda     valuetype [Engine]Engine.Vector2 Game.DragHostWidget::m_dragPosition
    IL_0037:  ldarg.0
    IL_0038:  ldflda     valuetype [Engine]Engine.Vector2 Game.DragHostWidget::m_dragPosition
    IL_003d:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0042:  ldarg.0
    IL_0043:  call       instance valuetype [Engine]Engine.BoundingRectangle Game.Widget::get_GlobalBounds()
    IL_0048:  ldfld      valuetype [Engine]Engine.Vector2 [Engine]Engine.BoundingRectangle::Min
    IL_004d:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0052:  ldarg.0
    IL_0053:  call       instance valuetype [Engine]Engine.BoundingRectangle Game.Widget::get_GlobalBounds()
    IL_0058:  ldfld      valuetype [Engine]Engine.Vector2 [Engine]Engine.BoundingRectangle::Max
    IL_005d:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0062:  ldc.r4     1.
    IL_0067:  sub
    IL_0068:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_006d:  stfld      float32 [Engine]Engine.Vector2::X
    IL_0072:  ldarg.0
    IL_0073:  ldflda     valuetype [Engine]Engine.Vector2 Game.DragHostWidget::m_dragPosition
    IL_0078:  ldarg.0
    IL_0079:  ldflda     valuetype [Engine]Engine.Vector2 Game.DragHostWidget::m_dragPosition
    IL_007e:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0083:  ldarg.0
    IL_0084:  call       instance valuetype [Engine]Engine.BoundingRectangle Game.Widget::get_GlobalBounds()
    IL_0089:  ldfld      valuetype [Engine]Engine.Vector2 [Engine]Engine.BoundingRectangle::Min
    IL_008e:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0093:  ldarg.0
    IL_0094:  call       instance valuetype [Engine]Engine.BoundingRectangle Game.Widget::get_GlobalBounds()
    IL_0099:  ldfld      valuetype [Engine]Engine.Vector2 [Engine]Engine.BoundingRectangle::Max
    IL_009e:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00a3:  ldc.r4     1.
    IL_00a8:  sub
    IL_00a9:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_00ae:  stfld      float32 [Engine]Engine.Vector2::Y
    IL_00b3:  ret
  } // end of method DragHostWidget::UpdateDragPosition

  .property instance bool IsDragInProgress()
  {
    .get instance bool Game.DragHostWidget::get_IsDragInProgress()
  } // end of property DragHostWidget::IsDragInProgress
} // end of class Game.DragHostWidget