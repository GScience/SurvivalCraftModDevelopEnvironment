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
          MeasureOverride(valuetype [Engine]Engine.Vector2 parentAvailableSize) cil managed
  {
    // 代码大小       570 (0x23a)
    .maxstack  5
    .locals init (float32 V_0,
             valuetype Game.WidgetsList/Enumerator V_1,
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
    IL_0019:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_001e:  callvirt   instance valuetype Game.WidgetsList/Enumerator Game.WidgetsList::GetEnumerator()
    IL_0023:  stloc.1
    .try
    {
      IL_0024:  br         IL_01bc

      IL_0029:  ldloca.s   V_1
      IL_002b:  call       instance class Game.Widget Game.WidgetsList/Enumerator::get_Current()
      IL_0030:  stloc.2
      IL_0031:  ldloc.2
      IL_0032:  callvirt   instance bool Game.Widget::get_IsVisible()
      IL_0037:  brfalse    IL_01bc

      IL_003c:  ldloc.2
      IL_003d:  ldarg.1
      IL_003e:  ldc.r4     2.
      IL_0043:  ldloc.2
      IL_0044:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Margin()
      IL_0049:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(float32,
                                                                                                valuetype [Engine]Engine.Vector2)
      IL_004e:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                   valuetype [Engine]Engine.Vector2)
      IL_0053:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
      IL_0058:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Max(valuetype [Engine]Engine.Vector2,
                                                                                        valuetype [Engine]Engine.Vector2)
      IL_005d:  callvirt   instance void Game.Widget::Measure(valuetype [Engine]Engine.Vector2)
      IL_0062:  ldarg.0
      IL_0063:  call       instance valuetype Game.LayoutDirection Game.StackPanelWidget::get_Direction()
      IL_0068:  brtrue     IL_0117

      IL_006d:  ldloc.2
      IL_006e:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ParentDesiredSize()
      IL_0073:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_0078:  ldc.r4     (00 00 80 7F)
      IL_007d:  beq.s      IL_00e0

      IL_007f:  ldarg.0
      IL_0080:  ldarg.0
      IL_0081:  ldfld      float32 Game.StackPanelWidget::m_fixedSize
      IL_0086:  ldloc.2
      IL_0087:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ParentDesiredSize()
      IL_008c:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_0091:  ldc.r4     2.
      IL_0096:  ldloc.2
      IL_0097:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Margin()
      IL_009c:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_00a1:  mul
      IL_00a2:  add
      IL_00a3:  add
      IL_00a4:  stfld      float32 Game.StackPanelWidget::m_fixedSize
      IL_00a9:  ldarga.s   parentAvailableSize
      IL_00ab:  ldarg.1
      IL_00ac:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_00b1:  ldloc.2
      IL_00b2:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ParentDesiredSize()
      IL_00b7:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_00bc:  ldc.r4     2.
      IL_00c1:  ldloc.2
      IL_00c2:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Margin()
      IL_00c7:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_00cc:  mul
      IL_00cd:  add
      IL_00ce:  sub
      IL_00cf:  ldc.r4     0.0
      IL_00d4:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                                 float32)
      IL_00d9:  stfld      float32 [Engine]Engine.Vector2::X
      IL_00de:  br.s       IL_00ee

      IL_00e0:  ldarg.0
      IL_00e1:  ldarg.0
      IL_00e2:  ldfld      int32 Game.StackPanelWidget::m_fillCount
      IL_00e7:  ldc.i4.1
      IL_00e8:  add
      IL_00e9:  stfld      int32 Game.StackPanelWidget::m_fillCount
      IL_00ee:  ldloc.0
      IL_00ef:  ldloc.2
      IL_00f0:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ParentDesiredSize()
      IL_00f5:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_00fa:  ldc.r4     2.
      IL_00ff:  ldloc.2
      IL_0100:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Margin()
      IL_0105:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_010a:  mul
      IL_010b:  add
      IL_010c:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                                 float32)
      IL_0111:  stloc.0
      IL_0112:  br         IL_01bc

      IL_0117:  ldloc.2
      IL_0118:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ParentDesiredSize()
      IL_011d:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_0122:  ldc.r4     (00 00 80 7F)
      IL_0127:  beq.s      IL_018a

      IL_0129:  ldarg.0
      IL_012a:  ldarg.0
      IL_012b:  ldfld      float32 Game.StackPanelWidget::m_fixedSize
      IL_0130:  ldloc.2
      IL_0131:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ParentDesiredSize()
      IL_0136:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_013b:  ldc.r4     2.
      IL_0140:  ldloc.2
      IL_0141:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Margin()
      IL_0146:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_014b:  mul
      IL_014c:  add
      IL_014d:  add
      IL_014e:  stfld      float32 Game.StackPanelWidget::m_fixedSize
      IL_0153:  ldarga.s   parentAvailableSize
      IL_0155:  ldarg.1
      IL_0156:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_015b:  ldloc.2
      IL_015c:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ParentDesiredSize()
      IL_0161:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_0166:  ldc.r4     2.
      IL_016b:  ldloc.2
      IL_016c:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Margin()
      IL_0171:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_0176:  mul
      IL_0177:  add
      IL_0178:  sub
      IL_0179:  ldc.r4     0.0
      IL_017e:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                                 float32)
      IL_0183:  stfld      float32 [Engine]Engine.Vector2::Y
      IL_0188:  br.s       IL_0198

      IL_018a:  ldarg.0
      IL_018b:  ldarg.0
      IL_018c:  ldfld      int32 Game.StackPanelWidget::m_fillCount
      IL_0191:  ldc.i4.1
      IL_0192:  add
      IL_0193:  stfld      int32 Game.StackPanelWidget::m_fillCount
      IL_0198:  ldloc.0
      IL_0199:  ldloc.2
      IL_019a:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ParentDesiredSize()
      IL_019f:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_01a4:  ldc.r4     2.
      IL_01a9:  ldloc.2
      IL_01aa:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Margin()
      IL_01af:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_01b4:  mul
      IL_01b5:  add
      IL_01b6:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                                 float32)
      IL_01bb:  stloc.0
      IL_01bc:  ldloca.s   V_1
      IL_01be:  call       instance bool Game.WidgetsList/Enumerator::MoveNext()
      IL_01c3:  brtrue     IL_0029

      IL_01c8:  leave.s    IL_01d8

    }  // end .try
    finally
    {
      IL_01ca:  ldloca.s   V_1
      IL_01cc:  constrained. Game.WidgetsList/Enumerator
      IL_01d2:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_01d7:  endfinally
    }  // end handler
    IL_01d8:  ldarg.0
    IL_01d9:  call       instance valuetype Game.LayoutDirection Game.StackPanelWidget::get_Direction()
    IL_01de:  brtrue.s   IL_020d

    IL_01e0:  ldarg.0
    IL_01e1:  ldfld      int32 Game.StackPanelWidget::m_fillCount
    IL_01e6:  brtrue.s   IL_01fb

    IL_01e8:  ldarg.0
    IL_01e9:  ldarg.0
    IL_01ea:  ldfld      float32 Game.StackPanelWidget::m_fixedSize
    IL_01ef:  ldloc.0
    IL_01f0:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_01f5:  call       instance void Game.Widget::set_DesiredSize(valuetype [Engine]Engine.Vector2)
    IL_01fa:  ret

    IL_01fb:  ldarg.0
    IL_01fc:  ldc.r4     (00 00 80 7F)
    IL_0201:  ldloc.0
    IL_0202:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0207:  call       instance void Game.Widget::set_DesiredSize(valuetype [Engine]Engine.Vector2)
    IL_020c:  ret

    IL_020d:  ldarg.0
    IL_020e:  ldfld      int32 Game.StackPanelWidget::m_fillCount
    IL_0213:  brtrue.s   IL_0228

    IL_0215:  ldarg.0
    IL_0216:  ldloc.0
    IL_0217:  ldarg.0
    IL_0218:  ldfld      float32 Game.StackPanelWidget::m_fixedSize
    IL_021d:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0222:  call       instance void Game.Widget::set_DesiredSize(valuetype [Engine]Engine.Vector2)
    IL_0227:  ret

    IL_0228:  ldarg.0
    IL_0229:  ldloc.0
    IL_022a:  ldc.r4     (00 00 80 7F)
    IL_022f:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0234:  call       instance void Game.Widget::set_DesiredSize(valuetype [Engine]Engine.Vector2)
    IL_0239:  ret
  } // end of method StackPanelWidget::MeasureOverride

  .method public hidebysig virtual instance void 
          ArrangeOverride() cil managed
  {
    // 代码大小       530 (0x212)
    .maxstack  5
    .locals init (float32 V_0,
             valuetype Game.WidgetsList/Enumerator V_1,
             class Game.Widget V_2,
             float32 V_3,
             valuetype [Engine]Engine.Vector2 V_4,
             valuetype [Engine]Engine.Vector2 V_5,
             float32 V_6,
             valuetype [Engine]Engine.Vector2 V_7,
             valuetype [Engine]Engine.Vector2 V_8)
    IL_0000:  ldc.r4     0.0
    IL_0005:  stloc.0
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_000c:  callvirt   instance valuetype Game.WidgetsList/Enumerator Game.WidgetsList::GetEnumerator()
    IL_0011:  stloc.1
    .try
    {
      IL_0012:  br         IL_01f5

      IL_0017:  ldloca.s   V_1
      IL_0019:  call       instance class Game.Widget Game.WidgetsList/Enumerator::get_Current()
      IL_001e:  stloc.2
      IL_001f:  ldloc.2
      IL_0020:  callvirt   instance bool Game.Widget::get_IsVisible()
      IL_0025:  brfalse    IL_01f5

      IL_002a:  ldarg.0
      IL_002b:  call       instance valuetype Game.LayoutDirection Game.StackPanelWidget::get_Direction()
      IL_0030:  brtrue     IL_0115

      IL_0035:  ldloc.2
      IL_0036:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ParentDesiredSize()
      IL_003b:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_0040:  ldc.r4     (00 00 80 7F)
      IL_0045:  beq.s      IL_0067

      IL_0047:  ldloc.2
      IL_0048:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ParentDesiredSize()
      IL_004d:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_0052:  ldc.r4     2.
      IL_0057:  ldloc.2
      IL_0058:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Margin()
      IL_005d:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_0062:  mul
      IL_0063:  add
      IL_0064:  stloc.3
      IL_0065:  br.s       IL_009c

      IL_0067:  ldarg.0
      IL_0068:  ldfld      int32 Game.StackPanelWidget::m_fillCount
      IL_006d:  ldc.i4.0
      IL_006e:  bgt.s      IL_0077

      IL_0070:  ldc.r4     0.0
      IL_0075:  br.s       IL_009b

      IL_0077:  ldarg.0
      IL_0078:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
      IL_007d:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_0082:  ldarg.0
      IL_0083:  ldfld      float32 Game.StackPanelWidget::m_fixedSize
      IL_0088:  sub
      IL_0089:  ldc.r4     0.0
      IL_008e:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                                 float32)
      IL_0093:  ldarg.0
      IL_0094:  ldfld      int32 Game.StackPanelWidget::m_fillCount
      IL_0099:  conv.r4
      IL_009a:  div
      IL_009b:  stloc.3
      IL_009c:  ldarg.0
      IL_009d:  call       instance bool Game.StackPanelWidget::get_IsInverted()
      IL_00a2:  brfalse.s  IL_00e0

      IL_00a4:  ldloca.s   V_4
      IL_00a6:  ldarg.0
      IL_00a7:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
      IL_00ac:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_00b1:  ldloc.0
      IL_00b2:  ldloc.3
      IL_00b3:  add
      IL_00b4:  sub
      IL_00b5:  ldc.r4     0.0
      IL_00ba:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_00bf:  ldloca.s   V_5
      IL_00c1:  ldarg.0
      IL_00c2:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
      IL_00c7:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_00cc:  ldloc.0
      IL_00cd:  sub
      IL_00ce:  ldarg.0
      IL_00cf:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
      IL_00d4:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_00d9:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_00de:  br.s       IL_0102

      IL_00e0:  ldloca.s   V_4
      IL_00e2:  ldloc.0
      IL_00e3:  ldc.r4     0.0
      IL_00e8:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_00ed:  ldloca.s   V_5
      IL_00ef:  ldloc.0
      IL_00f0:  ldloc.3
      IL_00f1:  add
      IL_00f2:  ldarg.0
      IL_00f3:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
      IL_00f8:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_00fd:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_0102:  ldloc.s    V_4
      IL_0104:  ldloc.s    V_5
      IL_0106:  ldloc.2
      IL_0107:  call       void Game.ContainerWidget::ArrangeChildWidgetInCell(valuetype [Engine]Engine.Vector2,
                                                                               valuetype [Engine]Engine.Vector2,
                                                                               class Game.Widget)
      IL_010c:  ldloc.0
      IL_010d:  ldloc.3
      IL_010e:  add
      IL_010f:  stloc.0
      IL_0110:  br         IL_01f5

      IL_0115:  ldloc.2
      IL_0116:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ParentDesiredSize()
      IL_011b:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_0120:  ldc.r4     (00 00 80 7F)
      IL_0125:  beq.s      IL_0148

      IL_0127:  ldloc.2
      IL_0128:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ParentDesiredSize()
      IL_012d:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_0132:  ldc.r4     2.
      IL_0137:  ldloc.2
      IL_0138:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Margin()
      IL_013d:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_0142:  mul
      IL_0143:  add
      IL_0144:  stloc.s    V_6
      IL_0146:  br.s       IL_017e

      IL_0148:  ldarg.0
      IL_0149:  ldfld      int32 Game.StackPanelWidget::m_fillCount
      IL_014e:  ldc.i4.0
      IL_014f:  bgt.s      IL_0158

      IL_0151:  ldc.r4     0.0
      IL_0156:  br.s       IL_017c

      IL_0158:  ldarg.0
      IL_0159:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
      IL_015e:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_0163:  ldarg.0
      IL_0164:  ldfld      float32 Game.StackPanelWidget::m_fixedSize
      IL_0169:  sub
      IL_016a:  ldc.r4     0.0
      IL_016f:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                                 float32)
      IL_0174:  ldarg.0
      IL_0175:  ldfld      int32 Game.StackPanelWidget::m_fillCount
      IL_017a:  conv.r4
      IL_017b:  div
      IL_017c:  stloc.s    V_6
      IL_017e:  ldarg.0
      IL_017f:  call       instance bool Game.StackPanelWidget::get_IsInverted()
      IL_0184:  brfalse.s  IL_01c3

      IL_0186:  ldloca.s   V_7
      IL_0188:  ldc.r4     0.0
      IL_018d:  ldarg.0
      IL_018e:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
      IL_0193:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_0198:  ldloc.0
      IL_0199:  ldloc.s    V_6
      IL_019b:  add
      IL_019c:  sub
      IL_019d:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_01a2:  ldloca.s   V_8
      IL_01a4:  ldarg.0
      IL_01a5:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
      IL_01aa:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_01af:  ldarg.0
      IL_01b0:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
      IL_01b5:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_01ba:  ldloc.0
      IL_01bb:  sub
      IL_01bc:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_01c1:  br.s       IL_01e6

      IL_01c3:  ldloca.s   V_7
      IL_01c5:  ldc.r4     0.0
      IL_01ca:  ldloc.0
      IL_01cb:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_01d0:  ldloca.s   V_8
      IL_01d2:  ldarg.0
      IL_01d3:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
      IL_01d8:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_01dd:  ldloc.0
      IL_01de:  ldloc.s    V_6
      IL_01e0:  add
      IL_01e1:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_01e6:  ldloc.s    V_7
      IL_01e8:  ldloc.s    V_8
      IL_01ea:  ldloc.2
      IL_01eb:  call       void Game.ContainerWidget::ArrangeChildWidgetInCell(valuetype [Engine]Engine.Vector2,
                                                                               valuetype [Engine]Engine.Vector2,
                                                                               class Game.Widget)
      IL_01f0:  ldloc.0
      IL_01f1:  ldloc.s    V_6
      IL_01f3:  add
      IL_01f4:  stloc.0
      IL_01f5:  ldloca.s   V_1
      IL_01f7:  call       instance bool Game.WidgetsList/Enumerator::MoveNext()
      IL_01fc:  brtrue     IL_0017

      IL_0201:  leave.s    IL_0211

    }  // end .try
    finally
    {
      IL_0203:  ldloca.s   V_1
      IL_0205:  constrained. Game.WidgetsList/Enumerator
      IL_020b:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0210:  endfinally
    }  // end handler
    IL_0211:  ret
  } // end of method StackPanelWidget::ArrangeOverride

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