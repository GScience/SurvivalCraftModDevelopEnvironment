.class public auto ansi beforefieldinit Game.StackPanelWidget
       extends Game.ContainerWidget
{
  .field private float32 m_fixedSize
  .field private int32 m_fillCount
  .field private valuetype Game.LayoutDirection '<Direction>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private bool '<IsInverted>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname instance valuetype Game.LayoutDirection 
          get_Direction() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype Game.LayoutDirection Game.StackPanelWidget::'<Direction>k__BackingField'
    IL_0006:  ret
  } // end of method StackPanelWidget::get_Direction

  .method public hidebysig specialname instance void 
          set_Direction(valuetype Game.LayoutDirection 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype Game.LayoutDirection Game.StackPanelWidget::'<Direction>k__BackingField'
    IL_0007:  ret
  } // end of method StackPanelWidget::set_Direction

  .method public hidebysig specialname instance bool 
          get_IsInverted() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.StackPanelWidget::'<IsInverted>k__BackingField'
    IL_0006:  ret
  } // end of method StackPanelWidget::get_IsInverted

  .method public hidebysig specialname instance void 
          set_IsInverted(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.StackPanelWidget::'<IsInverted>k__BackingField'
    IL_0007:  ret
  } // end of method StackPanelWidget::set_IsInverted

  .method public hidebysig virtual instance void 
          Measure(valuetype [Engine]Engine.Vector2 availableSize) cil managed
  {
    // 代码大小       564 (0x234)
    .maxstack  5
    .locals init (float32 V_0,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget> V_1,
             class Game.Widget V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldc.r4     0.0
    IL_0006:  stfld      float32 Game.StackPanelWidget::m_fixedSize
    IL_000b:  ldarg.0
    IL_000c:  ldc.i4.0
    IL_000d:  stfld      int32 Game.StackPanelWidget::m_fillCount
    IL_0012:  ldc.r4     0.0
    IL_0017:  stloc.0
    IL_0018:  ldarg.0
    IL_0019:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_001e:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget> Game.WidgetsContainer::GetEnumerator()
    IL_0023:  stloc.1
    .try
    {
      IL_0024:  br         IL_01bb

      IL_0029:  ldloc.1
      IL_002a:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget>::get_Current()
      IL_002f:  stloc.2
      IL_0030:  ldloc.2
      IL_0031:  callvirt   instance bool Game.Widget::get_IsVisible()
      IL_0036:  brfalse    IL_01bb

      IL_003b:  ldloc.2
      IL_003c:  ldarg.1
      IL_003d:  ldc.r4     2.
      IL_0042:  ldloc.2
      IL_0043:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Margin()
      IL_0048:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(float32,
                                                                                                valuetype [Engine]Engine.Vector2)
      IL_004d:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                   valuetype [Engine]Engine.Vector2)
      IL_0052:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
      IL_0057:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Max(valuetype [Engine]Engine.Vector2,
                                                                                        valuetype [Engine]Engine.Vector2)
      IL_005c:  callvirt   instance void Game.Widget::Measure(valuetype [Engine]Engine.Vector2)
      IL_0061:  ldarg.0
      IL_0062:  call       instance valuetype Game.LayoutDirection Game.StackPanelWidget::get_Direction()
      IL_0067:  brtrue     IL_0116

      IL_006c:  ldloc.2
      IL_006d:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_DesiredSize()
      IL_0072:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_0077:  ldc.r4     (00 00 80 7F)
      IL_007c:  beq.s      IL_00df

      IL_007e:  ldarg.0
      IL_007f:  ldarg.0
      IL_0080:  ldfld      float32 Game.StackPanelWidget::m_fixedSize
      IL_0085:  ldloc.2
      IL_0086:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_DesiredSize()
      IL_008b:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_0090:  ldc.r4     2.
      IL_0095:  ldloc.2
      IL_0096:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Margin()
      IL_009b:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_00a0:  mul
      IL_00a1:  add
      IL_00a2:  add
      IL_00a3:  stfld      float32 Game.StackPanelWidget::m_fixedSize
      IL_00a8:  ldarga.s   availableSize
      IL_00aa:  ldarg.1
      IL_00ab:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_00b0:  ldloc.2
      IL_00b1:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_DesiredSize()
      IL_00b6:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_00bb:  ldc.r4     2.
      IL_00c0:  ldloc.2
      IL_00c1:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Margin()
      IL_00c6:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_00cb:  mul
      IL_00cc:  add
      IL_00cd:  sub
      IL_00ce:  ldc.r4     0.0
      IL_00d3:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                                 float32)
      IL_00d8:  stfld      float32 [Engine]Engine.Vector2::X
      IL_00dd:  br.s       IL_00ed

      IL_00df:  ldarg.0
      IL_00e0:  ldarg.0
      IL_00e1:  ldfld      int32 Game.StackPanelWidget::m_fillCount
      IL_00e6:  ldc.i4.1
      IL_00e7:  add
      IL_00e8:  stfld      int32 Game.StackPanelWidget::m_fillCount
      IL_00ed:  ldloc.0
      IL_00ee:  ldloc.2
      IL_00ef:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_DesiredSize()
      IL_00f4:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_00f9:  ldc.r4     2.
      IL_00fe:  ldloc.2
      IL_00ff:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Margin()
      IL_0104:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_0109:  mul
      IL_010a:  add
      IL_010b:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                                 float32)
      IL_0110:  stloc.0
      IL_0111:  br         IL_01bb

      IL_0116:  ldloc.2
      IL_0117:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_DesiredSize()
      IL_011c:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_0121:  ldc.r4     (00 00 80 7F)
      IL_0126:  beq.s      IL_0189

      IL_0128:  ldarg.0
      IL_0129:  ldarg.0
      IL_012a:  ldfld      float32 Game.StackPanelWidget::m_fixedSize
      IL_012f:  ldloc.2
      IL_0130:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_DesiredSize()
      IL_0135:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_013a:  ldc.r4     2.
      IL_013f:  ldloc.2
      IL_0140:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Margin()
      IL_0145:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_014a:  mul
      IL_014b:  add
      IL_014c:  add
      IL_014d:  stfld      float32 Game.StackPanelWidget::m_fixedSize
      IL_0152:  ldarga.s   availableSize
      IL_0154:  ldarg.1
      IL_0155:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_015a:  ldloc.2
      IL_015b:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_DesiredSize()
      IL_0160:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_0165:  ldc.r4     2.
      IL_016a:  ldloc.2
      IL_016b:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Margin()
      IL_0170:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_0175:  mul
      IL_0176:  add
      IL_0177:  sub
      IL_0178:  ldc.r4     0.0
      IL_017d:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                                 float32)
      IL_0182:  stfld      float32 [Engine]Engine.Vector2::Y
      IL_0187:  br.s       IL_0197

      IL_0189:  ldarg.0
      IL_018a:  ldarg.0
      IL_018b:  ldfld      int32 Game.StackPanelWidget::m_fillCount
      IL_0190:  ldc.i4.1
      IL_0191:  add
      IL_0192:  stfld      int32 Game.StackPanelWidget::m_fillCount
      IL_0197:  ldloc.0
      IL_0198:  ldloc.2
      IL_0199:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_DesiredSize()
      IL_019e:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_01a3:  ldc.r4     2.
      IL_01a8:  ldloc.2
      IL_01a9:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Margin()
      IL_01ae:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_01b3:  mul
      IL_01b4:  add
      IL_01b5:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                                 float32)
      IL_01ba:  stloc.0
      IL_01bb:  ldloc.1
      IL_01bc:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_01c1:  brtrue     IL_0029

      IL_01c6:  leave.s    IL_01d2

    }  // end .try
    finally
    {
      IL_01c8:  ldloc.1
      IL_01c9:  brfalse.s  IL_01d1

      IL_01cb:  ldloc.1
      IL_01cc:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_01d1:  endfinally
    }  // end handler
    IL_01d2:  ldarg.0
    IL_01d3:  call       instance valuetype Game.LayoutDirection Game.StackPanelWidget::get_Direction()
    IL_01d8:  brtrue.s   IL_0207

    IL_01da:  ldarg.0
    IL_01db:  ldfld      int32 Game.StackPanelWidget::m_fillCount
    IL_01e0:  brtrue.s   IL_01f5

    IL_01e2:  ldarg.0
    IL_01e3:  ldarg.0
    IL_01e4:  ldfld      float32 Game.StackPanelWidget::m_fixedSize
    IL_01e9:  ldloc.0
    IL_01ea:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_01ef:  call       instance void Game.Widget::set_DesiredSize(valuetype [Engine]Engine.Vector2)
    IL_01f4:  ret

    IL_01f5:  ldarg.0
    IL_01f6:  ldc.r4     (00 00 80 7F)
    IL_01fb:  ldloc.0
    IL_01fc:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0201:  call       instance void Game.Widget::set_DesiredSize(valuetype [Engine]Engine.Vector2)
    IL_0206:  ret

    IL_0207:  ldarg.0
    IL_0208:  ldfld      int32 Game.StackPanelWidget::m_fillCount
    IL_020d:  brtrue.s   IL_0222

    IL_020f:  ldarg.0
    IL_0210:  ldloc.0
    IL_0211:  ldarg.0
    IL_0212:  ldfld      float32 Game.StackPanelWidget::m_fixedSize
    IL_0217:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_021c:  call       instance void Game.Widget::set_DesiredSize(valuetype [Engine]Engine.Vector2)
    IL_0221:  ret

    IL_0222:  ldarg.0
    IL_0223:  ldloc.0
    IL_0224:  ldc.r4     (00 00 80 7F)
    IL_0229:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_022e:  call       instance void Game.Widget::set_DesiredSize(valuetype [Engine]Engine.Vector2)
    IL_0233:  ret
  } // end of method StackPanelWidget::Measure

  .method public hidebysig virtual instance void 
          Arrange(valuetype [Engine]Engine.Vector2 position,
                  valuetype [Engine]Engine.Vector2 actualSize) cil managed
  {
    // 代码大小       595 (0x253)
    .maxstack  5
    .locals init (float32 V_0,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget> V_1,
             class Game.Widget V_2,
             float32 V_3,
             valuetype [Engine]Engine.Vector2 V_4,
             valuetype [Engine]Engine.Vector2 V_5,
             float32 V_6,
             valuetype [Engine]Engine.Vector2 V_7,
             valuetype [Engine]Engine.Vector2 V_8)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  call       instance void Game.Widget::Arrange(valuetype [Engine]Engine.Vector2,
                                                            valuetype [Engine]Engine.Vector2)
    IL_0008:  ldc.r4     0.0
    IL_000d:  stloc.0
    IL_000e:  ldarg.0
    IL_000f:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0014:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget> Game.WidgetsContainer::GetEnumerator()
    IL_0019:  stloc.1
    .try
    {
      IL_001a:  br         IL_023b

      IL_001f:  ldloc.1
      IL_0020:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget>::get_Current()
      IL_0025:  stloc.2
      IL_0026:  ldloc.2
      IL_0027:  callvirt   instance bool Game.Widget::get_IsVisible()
      IL_002c:  brfalse    IL_023b

      IL_0031:  ldarg.0
      IL_0032:  call       instance valuetype Game.LayoutDirection Game.StackPanelWidget::get_Direction()
      IL_0037:  brtrue     IL_0139

      IL_003c:  ldloc.2
      IL_003d:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_DesiredSize()
      IL_0042:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_0047:  ldc.r4     (00 00 80 7F)
      IL_004c:  beq.s      IL_006e

      IL_004e:  ldloc.2
      IL_004f:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_DesiredSize()
      IL_0054:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_0059:  ldc.r4     2.
      IL_005e:  ldloc.2
      IL_005f:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Margin()
      IL_0064:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_0069:  mul
      IL_006a:  add
      IL_006b:  stloc.3
      IL_006c:  br.s       IL_009e

      IL_006e:  ldarg.0
      IL_006f:  ldfld      int32 Game.StackPanelWidget::m_fillCount
      IL_0074:  ldc.i4.0
      IL_0075:  bgt.s      IL_007e

      IL_0077:  ldc.r4     0.0
      IL_007c:  br.s       IL_009d

      IL_007e:  ldarg.2
      IL_007f:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_0084:  ldarg.0
      IL_0085:  ldfld      float32 Game.StackPanelWidget::m_fixedSize
      IL_008a:  sub
      IL_008b:  ldc.r4     0.0
      IL_0090:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                                 float32)
      IL_0095:  ldarg.0
      IL_0096:  ldfld      int32 Game.StackPanelWidget::m_fillCount
      IL_009b:  conv.r4
      IL_009c:  div
      IL_009d:  stloc.3
      IL_009e:  ldarg.0
      IL_009f:  call       instance bool Game.StackPanelWidget::get_IsInverted()
      IL_00a4:  brfalse.s  IL_00f3

      IL_00a6:  ldarg.0
      IL_00a7:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
      IL_00ac:  ldarg.0
      IL_00ad:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
      IL_00b2:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_00b7:  ldloc.0
      IL_00b8:  ldloc.3
      IL_00b9:  add
      IL_00ba:  sub
      IL_00bb:  ldc.r4     0.0
      IL_00c0:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_00c5:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                                valuetype [Engine]Engine.Vector2)
      IL_00ca:  stloc.s    V_4
      IL_00cc:  ldarg.0
      IL_00cd:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
      IL_00d2:  ldarg.0
      IL_00d3:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
      IL_00d8:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_00dd:  ldloc.0
      IL_00de:  sub
      IL_00df:  ldarg.2
      IL_00e0:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_00e5:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_00ea:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                                valuetype [Engine]Engine.Vector2)
      IL_00ef:  stloc.s    V_5
      IL_00f1:  br.s       IL_0126

      IL_00f3:  ldarg.0
      IL_00f4:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
      IL_00f9:  ldloc.0
      IL_00fa:  ldc.r4     0.0
      IL_00ff:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_0104:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                                valuetype [Engine]Engine.Vector2)
      IL_0109:  stloc.s    V_4
      IL_010b:  ldarg.0
      IL_010c:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
      IL_0111:  ldloc.0
      IL_0112:  ldloc.3
      IL_0113:  add
      IL_0114:  ldarg.2
      IL_0115:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_011a:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_011f:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                                valuetype [Engine]Engine.Vector2)
      IL_0124:  stloc.s    V_5
      IL_0126:  ldloc.s    V_4
      IL_0128:  ldloc.s    V_5
      IL_012a:  ldloc.2
      IL_012b:  call       void Game.ContainerWidget::ArrangeChildWidgetInCell(valuetype [Engine]Engine.Vector2,
                                                                               valuetype [Engine]Engine.Vector2,
                                                                               class Game.Widget)
      IL_0130:  ldloc.0
      IL_0131:  ldloc.3
      IL_0132:  add
      IL_0133:  stloc.0
      IL_0134:  br         IL_023b

      IL_0139:  ldloc.2
      IL_013a:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_DesiredSize()
      IL_013f:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_0144:  ldc.r4     (00 00 80 7F)
      IL_0149:  beq.s      IL_016c

      IL_014b:  ldloc.2
      IL_014c:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_DesiredSize()
      IL_0151:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_0156:  ldc.r4     2.
      IL_015b:  ldloc.2
      IL_015c:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Margin()
      IL_0161:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_0166:  mul
      IL_0167:  add
      IL_0168:  stloc.s    V_6
      IL_016a:  br.s       IL_019d

      IL_016c:  ldarg.0
      IL_016d:  ldfld      int32 Game.StackPanelWidget::m_fillCount
      IL_0172:  ldc.i4.0
      IL_0173:  bgt.s      IL_017c

      IL_0175:  ldc.r4     0.0
      IL_017a:  br.s       IL_019b

      IL_017c:  ldarg.2
      IL_017d:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_0182:  ldarg.0
      IL_0183:  ldfld      float32 Game.StackPanelWidget::m_fixedSize
      IL_0188:  sub
      IL_0189:  ldc.r4     0.0
      IL_018e:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                                 float32)
      IL_0193:  ldarg.0
      IL_0194:  ldfld      int32 Game.StackPanelWidget::m_fillCount
      IL_0199:  conv.r4
      IL_019a:  div
      IL_019b:  stloc.s    V_6
      IL_019d:  ldarg.0
      IL_019e:  call       instance bool Game.StackPanelWidget::get_IsInverted()
      IL_01a3:  brfalse.s  IL_01f8

      IL_01a5:  ldarg.0
      IL_01a6:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
      IL_01ab:  ldc.r4     0.0
      IL_01b0:  ldarg.0
      IL_01b1:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
      IL_01b6:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_01bb:  ldloc.0
      IL_01bc:  ldloc.s    V_6
      IL_01be:  add
      IL_01bf:  sub
      IL_01c0:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_01c5:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                                valuetype [Engine]Engine.Vector2)
      IL_01ca:  stloc.s    V_7
      IL_01cc:  ldarg.0
      IL_01cd:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
      IL_01d2:  ldarg.0
      IL_01d3:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
      IL_01d8:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_01dd:  ldarg.0
      IL_01de:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
      IL_01e3:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_01e8:  ldloc.0
      IL_01e9:  sub
      IL_01ea:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_01ef:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                                valuetype [Engine]Engine.Vector2)
      IL_01f4:  stloc.s    V_8
      IL_01f6:  br.s       IL_022c

      IL_01f8:  ldarg.0
      IL_01f9:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
      IL_01fe:  ldc.r4     0.0
      IL_0203:  ldloc.0
      IL_0204:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_0209:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                                valuetype [Engine]Engine.Vector2)
      IL_020e:  stloc.s    V_7
      IL_0210:  ldarg.0
      IL_0211:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
      IL_0216:  ldarg.2
      IL_0217:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_021c:  ldloc.0
      IL_021d:  ldloc.s    V_6
      IL_021f:  add
      IL_0220:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_0225:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                                valuetype [Engine]Engine.Vector2)
      IL_022a:  stloc.s    V_8
      IL_022c:  ldloc.s    V_7
      IL_022e:  ldloc.s    V_8
      IL_0230:  ldloc.2
      IL_0231:  call       void Game.ContainerWidget::ArrangeChildWidgetInCell(valuetype [Engine]Engine.Vector2,
                                                                               valuetype [Engine]Engine.Vector2,
                                                                               class Game.Widget)
      IL_0236:  ldloc.0
      IL_0237:  ldloc.s    V_6
      IL_0239:  add
      IL_023a:  stloc.0
      IL_023b:  ldloc.1
      IL_023c:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_0241:  brtrue     IL_001f

      IL_0246:  leave.s    IL_0252

    }  // end .try
    finally
    {
      IL_0248:  ldloc.1
      IL_0249:  brfalse.s  IL_0251

      IL_024b:  ldloc.1
      IL_024c:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0251:  endfinally
    }  // end handler
    IL_0252:  ret
  } // end of method StackPanelWidget::Arrange

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.ContainerWidget::.ctor()
    IL_0006:  ret
  } // end of method StackPanelWidget::.ctor

  .property instance valuetype Game.LayoutDirection
          Direction()
  {
    .get instance valuetype Game.LayoutDirection Game.StackPanelWidget::get_Direction()
    .set instance void Game.StackPanelWidget::set_Direction(valuetype Game.LayoutDirection)
  } // end of property StackPanelWidget::Direction
  .property instance bool IsInverted()
  {
    .get instance bool Game.StackPanelWidget::get_IsInverted()
    .set instance void Game.StackPanelWidget::set_IsInverted(bool)
  } // end of property StackPanelWidget::IsInverted
} // end of class Game.StackPanelWidget