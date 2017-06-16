.class public auto ansi beforefieldinit Game.DragHostWidget
       extends Game.ContainerWidget
{
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
    // 代码大小       47 (0x2f)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.Widget Game.DragHostWidget::m_dragWidget
    IL_0006:  brtrue.s   IL_002e

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
    IL_001e:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0023:  ldarg.0
    IL_0024:  ldfld      class Game.Widget Game.DragHostWidget::m_dragWidget
    IL_0029:  callvirt   instance void Game.WidgetsContainer::Add(class Game.Widget)
    IL_002e:  ret
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
    IL_0009:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_000e:  ldarg.0
    IL_000f:  ldfld      class Game.Widget Game.DragHostWidget::m_dragWidget
    IL_0014:  callvirt   instance void Game.WidgetsContainer::Remove(class Game.Widget)
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
    // 代码大小       273 (0x111)
    .maxstack  5
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> V_0,
             class Game.IDragTargetWidget V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.Widget Game.DragHostWidget::m_dragWidget
    IL_0006:  brfalse    IL_0110

    IL_000b:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_0010:  ldfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputState::Drag
    IL_0015:  stloc.0
    IL_0016:  ldloca.s   V_0
    IL_0018:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_001d:  brfalse    IL_00c1

    IL_0022:  ldarg.0
    IL_0023:  ldloca.s   V_0
    IL_0025:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_002a:  stfld      valuetype [Engine]Engine.Vector2 Game.DragHostWidget::m_dragPosition
    IL_002f:  ldarg.0
    IL_0030:  ldflda     valuetype [Engine]Engine.Vector2 Game.DragHostWidget::m_dragPosition
    IL_0035:  ldarg.0
    IL_0036:  ldflda     valuetype [Engine]Engine.Vector2 Game.DragHostWidget::m_dragPosition
    IL_003b:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0040:  ldarg.0
    IL_0041:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_0046:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_004b:  call       float32 Game.WidgetsManager::get_Scale()
    IL_0050:  mul
    IL_0051:  ldarg.0
    IL_0052:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_0057:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_005c:  ldarg.0
    IL_005d:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0062:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0067:  add
    IL_0068:  call       float32 Game.WidgetsManager::get_Scale()
    IL_006d:  mul
    IL_006e:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_0073:  stfld      float32 [Engine]Engine.Vector2::X
    IL_0078:  ldarg.0
    IL_0079:  ldflda     valuetype [Engine]Engine.Vector2 Game.DragHostWidget::m_dragPosition
    IL_007e:  ldarg.0
    IL_007f:  ldflda     valuetype [Engine]Engine.Vector2 Game.DragHostWidget::m_dragPosition
    IL_0084:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0089:  ldarg.0
    IL_008a:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_008f:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0094:  call       float32 Game.WidgetsManager::get_Scale()
    IL_0099:  mul
    IL_009a:  ldarg.0
    IL_009b:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_00a0:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00a5:  ldarg.0
    IL_00a6:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_00ab:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00b0:  add
    IL_00b1:  call       float32 Game.WidgetsManager::get_Scale()
    IL_00b6:  mul
    IL_00b7:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_00bc:  stfld      float32 [Engine]Engine.Vector2::Y
    IL_00c1:  ldarg.0
    IL_00c2:  ldfld      valuetype [Engine]Engine.Vector2 Game.DragHostWidget::m_dragPosition
    IL_00c7:  call       class Game.Widget Game.WidgetsManager::HitTest(valuetype [Engine]Engine.Vector2)
    IL_00cc:  isinst     Game.IDragTargetWidget
    IL_00d1:  stloc.1
    IL_00d2:  ldloca.s   V_0
    IL_00d4:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_00d9:  brfalse.s  IL_00f1

    IL_00db:  ldloc.1
    IL_00dc:  brfalse.s  IL_0110

    IL_00de:  ldloc.1
    IL_00df:  ldarg.0
    IL_00e0:  ldfld      class Game.Widget Game.DragHostWidget::m_dragWidget
    IL_00e5:  ldarg.0
    IL_00e6:  ldfld      object Game.DragHostWidget::m_dragData
    IL_00eb:  callvirt   instance void Game.IDragTargetWidget::DragOver(class Game.Widget,
                                                                        object)
    IL_00f0:  ret

    IL_00f1:  nop
    .try
    {
      IL_00f2:  ldloc.1
      IL_00f3:  brfalse.s  IL_0107

      IL_00f5:  ldloc.1
      IL_00f6:  ldarg.0
      IL_00f7:  ldfld      class Game.Widget Game.DragHostWidget::m_dragWidget
      IL_00fc:  ldarg.0
      IL_00fd:  ldfld      object Game.DragHostWidget::m_dragData
      IL_0102:  callvirt   instance void Game.IDragTargetWidget::DragDrop(class Game.Widget,
                                                                          object)
      IL_0107:  leave.s    IL_0110

    }  // end .try
    finally
    {
      IL_0109:  ldarg.0
      IL_010a:  call       instance void Game.DragHostWidget::EndDrag()
      IL_010f:  endfinally
    }  // end handler
    IL_0110:  ret
  } // end of method DragHostWidget::Update

  .method public hidebysig virtual instance void 
          Arrange(valuetype [Engine]Engine.Vector2 position,
                  valuetype [Engine]Engine.Vector2 actualSize) cil managed
  {
    // 代码大小       142 (0x8e)
    .maxstack  4
    .locals init (class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget> V_0,
             valuetype [Engine]Engine.Vector2 V_1)
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
      IL_0014:  br.s       IL_0079

      IL_0016:  ldloc.0
      IL_0017:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget>::get_Current()
      IL_001c:  dup
      IL_001d:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_DesiredSize()
      IL_0022:  stloc.1
      IL_0023:  ldloca.s   V_1
      IL_0025:  ldloc.1
      IL_0026:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_002b:  ldarg.2
      IL_002c:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_0031:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                                 float32)
      IL_0036:  stfld      float32 [Engine]Engine.Vector2::X
      IL_003b:  ldloca.s   V_1
      IL_003d:  ldloc.1
      IL_003e:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_0043:  ldarg.2
      IL_0044:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_0049:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                                 float32)
      IL_004e:  stfld      float32 [Engine]Engine.Vector2::Y
      IL_0053:  ldarg.0
      IL_0054:  ldfld      valuetype [Engine]Engine.Vector2 Game.DragHostWidget::m_dragPosition
      IL_0059:  call       float32 Game.WidgetsManager::get_Scale()
      IL_005e:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Division(valuetype [Engine]Engine.Vector2,
                                                                                                float32)
      IL_0063:  ldc.r4     0.5
      IL_0068:  ldloc.1
      IL_0069:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(float32,
                                                                                                valuetype [Engine]Engine.Vector2)
      IL_006e:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                   valuetype [Engine]Engine.Vector2)
      IL_0073:  ldloc.1
      IL_0074:  callvirt   instance void Game.Widget::Arrange(valuetype [Engine]Engine.Vector2,
                                                              valuetype [Engine]Engine.Vector2)
      IL_0079:  ldloc.0
      IL_007a:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_007f:  brtrue.s   IL_0016

      IL_0081:  leave.s    IL_008d

    }  // end .try
    finally
    {
      IL_0083:  ldloc.0
      IL_0084:  brfalse.s  IL_008c

      IL_0086:  ldloc.0
      IL_0087:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_008c:  endfinally
    }  // end handler
    IL_008d:  ret
  } // end of method DragHostWidget::Arrange

  .property instance bool IsDragInProgress()
  {
    .get instance bool Game.DragHostWidget::get_IsDragInProgress()
  } // end of property DragHostWidget::IsDragInProgress
} // end of class Game.DragHostWidget