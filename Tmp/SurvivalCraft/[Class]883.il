.class public auto ansi beforefieldinit Game.GamesWidget
       extends Game.ContainerWidget
{
  .field private float32 m_spacing
  .field private float32 m_bevel
  .method public hidebysig virtual instance void 
          MeasureOverride(valuetype [Engine]Engine.Vector2 parentAvailableSize) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void Game.ContainerWidget::MeasureOverride(valuetype [Engine]Engine.Vector2)
    IL_0007:  ldarg.0
    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_000e:  callvirt   instance int32 Game.WidgetsList::get_Count()
    IL_0013:  ldc.i4.1
    IL_0014:  cgt
    IL_0016:  call       instance void Game.Widget::set_IsOverdrawRequired(bool)
    IL_001b:  ret
  } // end of method GamesWidget::MeasureOverride

  .method public hidebysig virtual instance void 
          ArrangeOverride() cil managed
  {
    // 代码大小       4809 (0x12c9)
    .maxstack  17
    .locals init (float32 V_0,
             float32 V_1,
             float32 V_2,
             float32 V_3,
             float32 V_4,
             float32 V_5,
             float32 V_6,
             float32 V_7,
             float32 V_8,
             float32 V_9,
             float32 V_10,
             float32 V_11,
             float32 V_12,
             float32 V_13,
             float32 V_14,
             float32 V_15,
             float32 V_16,
             float32 V_17,
             float32 V_18,
             float32 V_19,
             float32 V_20,
             float32 V_21,
             float32 V_22,
             float32 V_23,
             float32 V_24,
             float32 V_25,
             float32 V_26,
             float32 V_27,
             float32 V_28,
             float32 V_29,
             float32 V_30,
             float32 V_31,
             float32 V_32,
             float32 V_33,
             float32 V_34,
             float32 V_35,
             float32 V_36,
             float32 V_37,
             float32 V_38,
             float32 V_39,
             float32 V_40,
             float32 V_41,
             float32 V_42,
             float32 V_43,
             float32 V_44,
             float32 V_45,
             float32 V_46,
             float32 V_47,
             float32 V_48,
             float32 V_49,
             float32 V_50,
             float32 V_51,
             float32 V_52,
             float32 V_53,
             float32 V_54,
             float32 V_55,
             float32 V_56,
             float32 V_57,
             float32 V_58,
             float32 V_59,
             float32 V_60,
             float32 V_61,
             float32 V_62,
             float32 V_63,
             float32 V_64,
             float32 V_65,
             float32 V_66,
             float32 V_67,
             float32 V_68,
             float32 V_69,
             float32 V_70,
             float32 V_71,
             float32 V_72,
             float32 V_73,
             float32 V_74,
             float32 V_75,
             float32 V_76,
             float32 V_77,
             float32 V_78,
             float32 V_79,
             float32 V_80,
             float32 V_81)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0006:  callvirt   instance int32 Game.WidgetsList::get_Count()
    IL_000b:  ldc.i4.1
    IL_000c:  bne.un.s   IL_004b

    IL_000e:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_0013:  ldarg.0
    IL_0014:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0019:  ldarg.0
    IL_001a:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_001f:  ldc.i4.0
    IL_0020:  callvirt   instance class Game.Widget Game.WidgetsList::get_Item(int32)
    IL_0025:  call       void Game.ContainerWidget::ArrangeChildWidgetInCell(valuetype [Engine]Engine.Vector2,
                                                                             valuetype [Engine]Engine.Vector2,
                                                                             class Game.Widget)
    IL_002a:  call       valuetype Game.ScreenLayout Game.SettingsManager::get_ScreenLayout1()
    IL_002f:  brtrue     IL_12c8

    IL_0034:  ldarg.0
    IL_0035:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_003a:  ldc.i4.0
    IL_003b:  callvirt   instance class Game.Widget Game.WidgetsList::get_Item(int32)
    IL_0040:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
    IL_0045:  callvirt   instance void Game.Widget::set_LayoutTransform(valuetype [Engine]Engine.Matrix)
    IL_004a:  ret

    IL_004b:  ldarg.0
    IL_004c:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0051:  callvirt   instance int32 Game.WidgetsList::get_Count()
    IL_0056:  ldc.i4.2
    IL_0057:  bne.un     IL_048f

    IL_005c:  call       valuetype Game.ScreenLayout Game.SettingsManager::get_ScreenLayout2()
    IL_0061:  ldc.i4.1
    IL_0062:  bne.un     IL_0188

    IL_0067:  ldarg.0
    IL_0068:  ldc.r4     12.
    IL_006d:  stfld      float32 Game.GamesWidget::m_spacing
    IL_0072:  ldarg.0
    IL_0073:  ldc.r4     3.
    IL_0078:  stfld      float32 Game.GamesWidget::m_bevel
    IL_007d:  ldc.r4     0.0
    IL_0082:  stloc.0
    IL_0083:  ldc.r4     0.0
    IL_0088:  stloc.1
    IL_0089:  ldarg.0
    IL_008a:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_008f:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0094:  ldc.r4     2.
    IL_0099:  div
    IL_009a:  ldarg.0
    IL_009b:  ldfld      float32 Game.GamesWidget::m_spacing
    IL_00a0:  ldc.r4     2.
    IL_00a5:  div
    IL_00a6:  add
    IL_00a7:  stloc.2
    IL_00a8:  ldc.r4     0.0
    IL_00ad:  stloc.3
    IL_00ae:  ldarg.0
    IL_00af:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_00b4:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_00b9:  ldc.r4     2.
    IL_00be:  div
    IL_00bf:  ldarg.0
    IL_00c0:  ldfld      float32 Game.GamesWidget::m_spacing
    IL_00c5:  ldc.r4     2.
    IL_00ca:  div
    IL_00cb:  sub
    IL_00cc:  stloc.s    V_4
    IL_00ce:  ldarg.0
    IL_00cf:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_00d4:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00d9:  stloc.s    V_5
    IL_00db:  ldc.r4     0.5
    IL_00e0:  stloc.s    V_6
    IL_00e2:  ldloc.0
    IL_00e3:  ldloc.1
    IL_00e4:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00e9:  ldloc.0
    IL_00ea:  ldloc.1
    IL_00eb:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00f0:  ldloc.s    V_4
    IL_00f2:  ldloc.s    V_5
    IL_00f4:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00f9:  ldloc.s    V_6
    IL_00fb:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Division(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0100:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0105:  ldarg.0
    IL_0106:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_010b:  ldc.i4.0
    IL_010c:  callvirt   instance class Game.Widget Game.WidgetsList::get_Item(int32)
    IL_0111:  call       void Game.ContainerWidget::ArrangeChildWidgetInCell(valuetype [Engine]Engine.Vector2,
                                                                             valuetype [Engine]Engine.Vector2,
                                                                             class Game.Widget)
    IL_0116:  ldarg.0
    IL_0117:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_011c:  ldc.i4.0
    IL_011d:  callvirt   instance class Game.Widget Game.WidgetsList::get_Item(int32)
    IL_0122:  ldloc.s    V_6
    IL_0124:  ldloc.s    V_6
    IL_0126:  ldc.r4     1.
    IL_012b:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateScale(float32,
                                                                                            float32,
                                                                                            float32)
    IL_0130:  callvirt   instance void Game.Widget::set_LayoutTransform(valuetype [Engine]Engine.Matrix)
    IL_0135:  ldloc.2
    IL_0136:  ldloc.3
    IL_0137:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_013c:  ldloc.2
    IL_013d:  ldloc.3
    IL_013e:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0143:  ldloc.s    V_4
    IL_0145:  ldloc.s    V_5
    IL_0147:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_014c:  ldloc.s    V_6
    IL_014e:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Division(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0153:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0158:  ldarg.0
    IL_0159:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_015e:  ldc.i4.1
    IL_015f:  callvirt   instance class Game.Widget Game.WidgetsList::get_Item(int32)
    IL_0164:  call       void Game.ContainerWidget::ArrangeChildWidgetInCell(valuetype [Engine]Engine.Vector2,
                                                                             valuetype [Engine]Engine.Vector2,
                                                                             class Game.Widget)
    IL_0169:  ldarg.0
    IL_016a:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_016f:  ldc.i4.1
    IL_0170:  callvirt   instance class Game.Widget Game.WidgetsList::get_Item(int32)
    IL_0175:  ldloc.s    V_6
    IL_0177:  ldloc.s    V_6
    IL_0179:  ldc.r4     1.
    IL_017e:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateScale(float32,
                                                                                            float32,
                                                                                            float32)
    IL_0183:  callvirt   instance void Game.Widget::set_LayoutTransform(valuetype [Engine]Engine.Matrix)
    IL_0188:  call       valuetype Game.ScreenLayout Game.SettingsManager::get_ScreenLayout2()
    IL_018d:  ldc.i4.2
    IL_018e:  bne.un     IL_02c0

    IL_0193:  ldarg.0
    IL_0194:  ldc.r4     12.
    IL_0199:  stfld      float32 Game.GamesWidget::m_spacing
    IL_019e:  ldarg.0
    IL_019f:  ldc.r4     3.
    IL_01a4:  stfld      float32 Game.GamesWidget::m_bevel
    IL_01a9:  ldc.r4     0.0
    IL_01ae:  stloc.s    V_7
    IL_01b0:  ldc.r4     0.0
    IL_01b5:  stloc.s    V_8
    IL_01b7:  ldc.r4     0.0
    IL_01bc:  stloc.s    V_9
    IL_01be:  ldarg.0
    IL_01bf:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_01c4:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_01c9:  ldc.r4     2.
    IL_01ce:  div
    IL_01cf:  ldarg.0
    IL_01d0:  ldfld      float32 Game.GamesWidget::m_spacing
    IL_01d5:  ldc.r4     2.
    IL_01da:  div
    IL_01db:  add
    IL_01dc:  stloc.s    V_10
    IL_01de:  ldarg.0
    IL_01df:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_01e4:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_01e9:  stloc.s    V_11
    IL_01eb:  ldarg.0
    IL_01ec:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_01f1:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_01f6:  ldc.r4     2.
    IL_01fb:  div
    IL_01fc:  ldarg.0
    IL_01fd:  ldfld      float32 Game.GamesWidget::m_spacing
    IL_0202:  ldc.r4     2.
    IL_0207:  div
    IL_0208:  sub
    IL_0209:  stloc.s    V_12
    IL_020b:  ldc.r4     0.47999999
    IL_0210:  stloc.s    V_13
    IL_0212:  ldloc.s    V_7
    IL_0214:  ldloc.s    V_8
    IL_0216:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_021b:  ldloc.s    V_7
    IL_021d:  ldloc.s    V_8
    IL_021f:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0224:  ldloc.s    V_11
    IL_0226:  ldloc.s    V_12
    IL_0228:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_022d:  ldloc.s    V_13
    IL_022f:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Division(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0234:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0239:  ldarg.0
    IL_023a:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_023f:  ldc.i4.0
    IL_0240:  callvirt   instance class Game.Widget Game.WidgetsList::get_Item(int32)
    IL_0245:  call       void Game.ContainerWidget::ArrangeChildWidgetInCell(valuetype [Engine]Engine.Vector2,
                                                                             valuetype [Engine]Engine.Vector2,
                                                                             class Game.Widget)
    IL_024a:  ldarg.0
    IL_024b:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0250:  ldc.i4.0
    IL_0251:  callvirt   instance class Game.Widget Game.WidgetsList::get_Item(int32)
    IL_0256:  ldloc.s    V_13
    IL_0258:  ldloc.s    V_13
    IL_025a:  ldc.r4     1.
    IL_025f:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateScale(float32,
                                                                                            float32,
                                                                                            float32)
    IL_0264:  callvirt   instance void Game.Widget::set_LayoutTransform(valuetype [Engine]Engine.Matrix)
    IL_0269:  ldloc.s    V_9
    IL_026b:  ldloc.s    V_10
    IL_026d:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0272:  ldloc.s    V_9
    IL_0274:  ldloc.s    V_10
    IL_0276:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_027b:  ldloc.s    V_11
    IL_027d:  ldloc.s    V_12
    IL_027f:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0284:  ldloc.s    V_13
    IL_0286:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Division(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_028b:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0290:  ldarg.0
    IL_0291:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0296:  ldc.i4.1
    IL_0297:  callvirt   instance class Game.Widget Game.WidgetsList::get_Item(int32)
    IL_029c:  call       void Game.ContainerWidget::ArrangeChildWidgetInCell(valuetype [Engine]Engine.Vector2,
                                                                             valuetype [Engine]Engine.Vector2,
                                                                             class Game.Widget)
    IL_02a1:  ldarg.0
    IL_02a2:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_02a7:  ldc.i4.1
    IL_02a8:  callvirt   instance class Game.Widget Game.WidgetsList::get_Item(int32)
    IL_02ad:  ldloc.s    V_13
    IL_02af:  ldloc.s    V_13
    IL_02b1:  ldc.r4     1.
    IL_02b6:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateScale(float32,
                                                                                            float32,
                                                                                            float32)
    IL_02bb:  callvirt   instance void Game.Widget::set_LayoutTransform(valuetype [Engine]Engine.Matrix)
    IL_02c0:  call       valuetype Game.ScreenLayout Game.SettingsManager::get_ScreenLayout2()
    IL_02c5:  ldc.i4.3
    IL_02c6:  bne.un     IL_12c8

    IL_02cb:  ldarg.0
    IL_02cc:  ldc.r4     20.
    IL_02d1:  stfld      float32 Game.GamesWidget::m_spacing
    IL_02d6:  ldarg.0
    IL_02d7:  ldc.r4     4.
    IL_02dc:  stfld      float32 Game.GamesWidget::m_bevel
    IL_02e1:  ldc.r4     0.0
    IL_02e6:  stloc.s    V_14
    IL_02e8:  ldc.r4     0.0
    IL_02ed:  stloc.s    V_15
    IL_02ef:  ldarg.0
    IL_02f0:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_02f5:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_02fa:  ldc.r4     2.
    IL_02ff:  div
    IL_0300:  ldarg.0
    IL_0301:  ldfld      float32 Game.GamesWidget::m_spacing
    IL_0306:  ldc.r4     2.
    IL_030b:  div
    IL_030c:  add
    IL_030d:  stloc.s    V_16
    IL_030f:  ldc.r4     0.0
    IL_0314:  stloc.s    V_17
    IL_0316:  ldarg.0
    IL_0317:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_031c:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0321:  ldc.r4     2.
    IL_0326:  div
    IL_0327:  ldarg.0
    IL_0328:  ldfld      float32 Game.GamesWidget::m_spacing
    IL_032d:  ldc.r4     2.
    IL_0332:  div
    IL_0333:  sub
    IL_0334:  stloc.s    V_18
    IL_0336:  ldarg.0
    IL_0337:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_033c:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0341:  stloc.s    V_19
    IL_0343:  call       valuetype [Engine]Engine.Point2 [Engine]Engine.Window::get_Size()
    IL_0348:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_034d:  conv.r4
    IL_034e:  call       valuetype [Engine]Engine.Point2 [Engine]Engine.Window::get_Size()
    IL_0353:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0358:  conv.r4
    IL_0359:  div
    IL_035a:  stloc.s    V_20
    IL_035c:  ldloc.s    V_14
    IL_035e:  ldloc.s    V_15
    IL_0360:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0365:  ldloc.s    V_14
    IL_0367:  ldloc.s    V_15
    IL_0369:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_036e:  ldloc.s    V_18
    IL_0370:  ldloc.s    V_19
    IL_0372:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0377:  ldloc.s    V_20
    IL_0379:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Division(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_037e:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0383:  ldarg.0
    IL_0384:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0389:  ldc.i4.0
    IL_038a:  callvirt   instance class Game.Widget Game.WidgetsList::get_Item(int32)
    IL_038f:  call       void Game.ContainerWidget::ArrangeChildWidgetInCell(valuetype [Engine]Engine.Vector2,
                                                                             valuetype [Engine]Engine.Vector2,
                                                                             class Game.Widget)
    IL_0394:  ldarg.0
    IL_0395:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_039a:  ldc.i4.0
    IL_039b:  callvirt   instance class Game.Widget Game.WidgetsList::get_Item(int32)
    IL_03a0:  ldc.r4     0.0
    IL_03a5:  ldloc.s    V_20
    IL_03a7:  ldc.r4     0.0
    IL_03ac:  ldc.r4     0.0
    IL_03b1:  ldloc.s    V_20
    IL_03b3:  neg
    IL_03b4:  ldc.r4     0.0
    IL_03b9:  ldc.r4     0.0
    IL_03be:  ldc.r4     0.0
    IL_03c3:  ldc.r4     0.0
    IL_03c8:  ldc.r4     0.0
    IL_03cd:  ldc.r4     1.
    IL_03d2:  ldc.r4     0.0
    IL_03d7:  ldc.r4     0.0
    IL_03dc:  ldc.r4     0.0
    IL_03e1:  ldc.r4     0.0
    IL_03e6:  ldc.r4     1.
    IL_03eb:  newobj     instance void [Engine]Engine.Matrix::.ctor(float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32)
    IL_03f0:  callvirt   instance void Game.Widget::set_LayoutTransform(valuetype [Engine]Engine.Matrix)
    IL_03f5:  ldloc.s    V_16
    IL_03f7:  ldloc.s    V_17
    IL_03f9:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_03fe:  ldloc.s    V_16
    IL_0400:  ldloc.s    V_17
    IL_0402:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0407:  ldloc.s    V_18
    IL_0409:  ldloc.s    V_19
    IL_040b:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0410:  ldloc.s    V_20
    IL_0412:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Division(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0417:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_041c:  ldarg.0
    IL_041d:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0422:  ldc.i4.1
    IL_0423:  callvirt   instance class Game.Widget Game.WidgetsList::get_Item(int32)
    IL_0428:  call       void Game.ContainerWidget::ArrangeChildWidgetInCell(valuetype [Engine]Engine.Vector2,
                                                                             valuetype [Engine]Engine.Vector2,
                                                                             class Game.Widget)
    IL_042d:  ldarg.0
    IL_042e:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0433:  ldc.i4.1
    IL_0434:  callvirt   instance class Game.Widget Game.WidgetsList::get_Item(int32)
    IL_0439:  ldc.r4     0.0
    IL_043e:  ldloc.s    V_20
    IL_0440:  neg
    IL_0441:  ldc.r4     0.0
    IL_0446:  ldc.r4     0.0
    IL_044b:  ldloc.s    V_20
    IL_044d:  ldc.r4     0.0
    IL_0452:  ldc.r4     0.0
    IL_0457:  ldc.r4     0.0
    IL_045c:  ldc.r4     0.0
    IL_0461:  ldc.r4     0.0
    IL_0466:  ldc.r4     1.
    IL_046b:  ldc.r4     0.0
    IL_0470:  ldc.r4     0.0
    IL_0475:  ldc.r4     0.0
    IL_047a:  ldc.r4     0.0
    IL_047f:  ldc.r4     1.
    IL_0484:  newobj     instance void [Engine]Engine.Matrix::.ctor(float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32)
    IL_0489:  callvirt   instance void Game.Widget::set_LayoutTransform(valuetype [Engine]Engine.Matrix)
    IL_048e:  ret

    IL_048f:  ldarg.0
    IL_0490:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0495:  callvirt   instance int32 Game.WidgetsList::get_Count()
    IL_049a:  ldc.i4.3
    IL_049b:  bne.un     IL_0cd4

    IL_04a0:  ldarg.0
    IL_04a1:  ldc.r4     12.
    IL_04a6:  stfld      float32 Game.GamesWidget::m_spacing
    IL_04ab:  ldarg.0
    IL_04ac:  ldc.r4     3.
    IL_04b1:  stfld      float32 Game.GamesWidget::m_bevel
    IL_04b6:  call       valuetype Game.ScreenLayout Game.SettingsManager::get_ScreenLayout3()
    IL_04bb:  ldc.i4.4
    IL_04bc:  bne.un     IL_068f

    IL_04c1:  ldc.r4     0.0
    IL_04c6:  stloc.s    V_21
    IL_04c8:  ldc.r4     0.0
    IL_04cd:  stloc.s    V_22
    IL_04cf:  ldarg.0
    IL_04d0:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_04d5:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_04da:  ldc.r4     2.
    IL_04df:  div
    IL_04e0:  ldarg.0
    IL_04e1:  ldfld      float32 Game.GamesWidget::m_spacing
    IL_04e6:  ldc.r4     2.
    IL_04eb:  div
    IL_04ec:  add
    IL_04ed:  stloc.s    V_23
    IL_04ef:  ldc.r4     0.0
    IL_04f4:  stloc.s    V_24
    IL_04f6:  ldarg.0
    IL_04f7:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_04fc:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0501:  ldc.r4     2.
    IL_0506:  div
    IL_0507:  ldarg.0
    IL_0508:  ldfld      float32 Game.GamesWidget::m_spacing
    IL_050d:  ldc.r4     2.
    IL_0512:  div
    IL_0513:  add
    IL_0514:  stloc.s    V_25
    IL_0516:  ldarg.0
    IL_0517:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_051c:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0521:  ldc.r4     2.
    IL_0526:  div
    IL_0527:  ldarg.0
    IL_0528:  ldfld      float32 Game.GamesWidget::m_spacing
    IL_052d:  ldc.r4     2.
    IL_0532:  div
    IL_0533:  add
    IL_0534:  stloc.s    V_26
    IL_0536:  ldarg.0
    IL_0537:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_053c:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0541:  ldc.r4     2.
    IL_0546:  div
    IL_0547:  ldarg.0
    IL_0548:  ldfld      float32 Game.GamesWidget::m_spacing
    IL_054d:  ldc.r4     2.
    IL_0552:  div
    IL_0553:  sub
    IL_0554:  stloc.s    V_27
    IL_0556:  ldarg.0
    IL_0557:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_055c:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0561:  stloc.s    V_28
    IL_0563:  ldarg.0
    IL_0564:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0569:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_056e:  ldc.r4     2.
    IL_0573:  div
    IL_0574:  ldarg.0
    IL_0575:  ldfld      float32 Game.GamesWidget::m_spacing
    IL_057a:  ldc.r4     2.
    IL_057f:  div
    IL_0580:  sub
    IL_0581:  stloc.s    V_29
    IL_0583:  ldc.r4     0.5
    IL_0588:  stloc.s    V_30
    IL_058a:  ldloc.s    V_21
    IL_058c:  ldloc.s    V_22
    IL_058e:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0593:  ldloc.s    V_21
    IL_0595:  ldloc.s    V_22
    IL_0597:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_059c:  ldloc.s    V_27
    IL_059e:  ldloc.s    V_28
    IL_05a0:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_05a5:  ldloc.s    V_30
    IL_05a7:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Division(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_05ac:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_05b1:  ldarg.0
    IL_05b2:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_05b7:  ldc.i4.0
    IL_05b8:  callvirt   instance class Game.Widget Game.WidgetsList::get_Item(int32)
    IL_05bd:  call       void Game.ContainerWidget::ArrangeChildWidgetInCell(valuetype [Engine]Engine.Vector2,
                                                                             valuetype [Engine]Engine.Vector2,
                                                                             class Game.Widget)
    IL_05c2:  ldarg.0
    IL_05c3:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_05c8:  ldc.i4.0
    IL_05c9:  callvirt   instance class Game.Widget Game.WidgetsList::get_Item(int32)
    IL_05ce:  ldloc.s    V_30
    IL_05d0:  ldloc.s    V_30
    IL_05d2:  ldc.r4     1.
    IL_05d7:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateScale(float32,
                                                                                            float32,
                                                                                            float32)
    IL_05dc:  callvirt   instance void Game.Widget::set_LayoutTransform(valuetype [Engine]Engine.Matrix)
    IL_05e1:  ldloc.s    V_23
    IL_05e3:  ldloc.s    V_24
    IL_05e5:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_05ea:  ldloc.s    V_23
    IL_05ec:  ldloc.s    V_24
    IL_05ee:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_05f3:  ldloc.s    V_27
    IL_05f5:  ldloc.s    V_29
    IL_05f7:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_05fc:  ldloc.s    V_30
    IL_05fe:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Division(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0603:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0608:  ldarg.0
    IL_0609:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_060e:  ldc.i4.1
    IL_060f:  callvirt   instance class Game.Widget Game.WidgetsList::get_Item(int32)
    IL_0614:  call       void Game.ContainerWidget::ArrangeChildWidgetInCell(valuetype [Engine]Engine.Vector2,
                                                                             valuetype [Engine]Engine.Vector2,
                                                                             class Game.Widget)
    IL_0619:  ldarg.0
    IL_061a:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_061f:  ldc.i4.1
    IL_0620:  callvirt   instance class Game.Widget Game.WidgetsList::get_Item(int32)
    IL_0625:  ldloc.s    V_30
    IL_0627:  ldloc.s    V_30
    IL_0629:  ldc.r4     1.
    IL_062e:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateScale(float32,
                                                                                            float32,
                                                                                            float32)
    IL_0633:  callvirt   instance void Game.Widget::set_LayoutTransform(valuetype [Engine]Engine.Matrix)
    IL_0638:  ldloc.s    V_25
    IL_063a:  ldloc.s    V_26
    IL_063c:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0641:  ldloc.s    V_25
    IL_0643:  ldloc.s    V_26
    IL_0645:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_064a:  ldloc.s    V_27
    IL_064c:  ldloc.s    V_29
    IL_064e:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0653:  ldloc.s    V_30
    IL_0655:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Division(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_065a:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_065f:  ldarg.0
    IL_0660:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0665:  ldc.i4.2
    IL_0666:  callvirt   instance class Game.Widget Game.WidgetsList::get_Item(int32)
    IL_066b:  call       void Game.ContainerWidget::ArrangeChildWidgetInCell(valuetype [Engine]Engine.Vector2,
                                                                             valuetype [Engine]Engine.Vector2,
                                                                             class Game.Widget)
    IL_0670:  ldarg.0
    IL_0671:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0676:  ldc.i4.2
    IL_0677:  callvirt   instance class Game.Widget Game.WidgetsList::get_Item(int32)
    IL_067c:  ldloc.s    V_30
    IL_067e:  ldloc.s    V_30
    IL_0680:  ldc.r4     1.
    IL_0685:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateScale(float32,
                                                                                            float32,
                                                                                            float32)
    IL_068a:  callvirt   instance void Game.Widget::set_LayoutTransform(valuetype [Engine]Engine.Matrix)
    IL_068f:  call       valuetype Game.ScreenLayout Game.SettingsManager::get_ScreenLayout3()
    IL_0694:  ldc.i4.5
    IL_0695:  bne.un     IL_0868

    IL_069a:  ldc.r4     0.0
    IL_069f:  stloc.s    V_31
    IL_06a1:  ldc.r4     0.0
    IL_06a6:  stloc.s    V_32
    IL_06a8:  ldc.r4     0.0
    IL_06ad:  stloc.s    V_33
    IL_06af:  ldarg.0
    IL_06b0:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_06b5:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_06ba:  ldc.r4     2.
    IL_06bf:  div
    IL_06c0:  ldarg.0
    IL_06c1:  ldfld      float32 Game.GamesWidget::m_spacing
    IL_06c6:  ldc.r4     2.
    IL_06cb:  div
    IL_06cc:  add
    IL_06cd:  stloc.s    V_34
    IL_06cf:  ldarg.0
    IL_06d0:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_06d5:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_06da:  ldc.r4     2.
    IL_06df:  div
    IL_06e0:  ldarg.0
    IL_06e1:  ldfld      float32 Game.GamesWidget::m_spacing
    IL_06e6:  ldc.r4     2.
    IL_06eb:  div
    IL_06ec:  add
    IL_06ed:  stloc.s    V_35
    IL_06ef:  ldarg.0
    IL_06f0:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_06f5:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_06fa:  ldc.r4     2.
    IL_06ff:  div
    IL_0700:  ldarg.0
    IL_0701:  ldfld      float32 Game.GamesWidget::m_spacing
    IL_0706:  ldc.r4     2.
    IL_070b:  div
    IL_070c:  add
    IL_070d:  stloc.s    V_36
    IL_070f:  ldarg.0
    IL_0710:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0715:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_071a:  stloc.s    V_37
    IL_071c:  ldarg.0
    IL_071d:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0722:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0727:  ldc.r4     2.
    IL_072c:  div
    IL_072d:  ldarg.0
    IL_072e:  ldfld      float32 Game.GamesWidget::m_spacing
    IL_0733:  ldc.r4     2.
    IL_0738:  div
    IL_0739:  sub
    IL_073a:  stloc.s    V_38
    IL_073c:  ldarg.0
    IL_073d:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0742:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0747:  ldc.r4     2.
    IL_074c:  div
    IL_074d:  ldarg.0
    IL_074e:  ldfld      float32 Game.GamesWidget::m_spacing
    IL_0753:  ldc.r4     2.
    IL_0758:  div
    IL_0759:  sub
    IL_075a:  stloc.s    V_39
    IL_075c:  ldc.r4     0.5
    IL_0761:  stloc.s    V_40
    IL_0763:  ldloc.s    V_31
    IL_0765:  ldloc.s    V_32
    IL_0767:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_076c:  ldloc.s    V_31
    IL_076e:  ldloc.s    V_32
    IL_0770:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0775:  ldloc.s    V_37
    IL_0777:  ldloc.s    V_39
    IL_0779:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_077e:  ldloc.s    V_40
    IL_0780:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Division(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0785:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_078a:  ldarg.0
    IL_078b:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0790:  ldc.i4.0
    IL_0791:  callvirt   instance class Game.Widget Game.WidgetsList::get_Item(int32)
    IL_0796:  call       void Game.ContainerWidget::ArrangeChildWidgetInCell(valuetype [Engine]Engine.Vector2,
                                                                             valuetype [Engine]Engine.Vector2,
                                                                             class Game.Widget)
    IL_079b:  ldarg.0
    IL_079c:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_07a1:  ldc.i4.0
    IL_07a2:  callvirt   instance class Game.Widget Game.WidgetsList::get_Item(int32)
    IL_07a7:  ldloc.s    V_40
    IL_07a9:  ldloc.s    V_40
    IL_07ab:  ldc.r4     1.
    IL_07b0:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateScale(float32,
                                                                                            float32,
                                                                                            float32)
    IL_07b5:  callvirt   instance void Game.Widget::set_LayoutTransform(valuetype [Engine]Engine.Matrix)
    IL_07ba:  ldloc.s    V_33
    IL_07bc:  ldloc.s    V_34
    IL_07be:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_07c3:  ldloc.s    V_33
    IL_07c5:  ldloc.s    V_34
    IL_07c7:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_07cc:  ldloc.s    V_38
    IL_07ce:  ldloc.s    V_39
    IL_07d0:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_07d5:  ldloc.s    V_40
    IL_07d7:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Division(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_07dc:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_07e1:  ldarg.0
    IL_07e2:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_07e7:  ldc.i4.1
    IL_07e8:  callvirt   instance class Game.Widget Game.WidgetsList::get_Item(int32)
    IL_07ed:  call       void Game.ContainerWidget::ArrangeChildWidgetInCell(valuetype [Engine]Engine.Vector2,
                                                                             valuetype [Engine]Engine.Vector2,
                                                                             class Game.Widget)
    IL_07f2:  ldarg.0
    IL_07f3:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_07f8:  ldc.i4.1
    IL_07f9:  callvirt   instance class Game.Widget Game.WidgetsList::get_Item(int32)
    IL_07fe:  ldloc.s    V_40
    IL_0800:  ldloc.s    V_40
    IL_0802:  ldc.r4     1.
    IL_0807:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateScale(float32,
                                                                                            float32,
                                                                                            float32)
    IL_080c:  callvirt   instance void Game.Widget::set_LayoutTransform(valuetype [Engine]Engine.Matrix)
    IL_0811:  ldloc.s    V_35
    IL_0813:  ldloc.s    V_36
    IL_0815:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_081a:  ldloc.s    V_35
    IL_081c:  ldloc.s    V_36
    IL_081e:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0823:  ldloc.s    V_38
    IL_0825:  ldloc.s    V_39
    IL_0827:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_082c:  ldloc.s    V_40
    IL_082e:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Division(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0833:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0838:  ldarg.0
    IL_0839:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_083e:  ldc.i4.2
    IL_083f:  callvirt   instance class Game.Widget Game.WidgetsList::get_Item(int32)
    IL_0844:  call       void Game.ContainerWidget::ArrangeChildWidgetInCell(valuetype [Engine]Engine.Vector2,
                                                                             valuetype [Engine]Engine.Vector2,
                                                                             class Game.Widget)
    IL_0849:  ldarg.0
    IL_084a:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_084f:  ldc.i4.2
    IL_0850:  callvirt   instance class Game.Widget Game.WidgetsList::get_Item(int32)
    IL_0855:  ldloc.s    V_40
    IL_0857:  ldloc.s    V_40
    IL_0859:  ldc.r4     1.
    IL_085e:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateScale(float32,
                                                                                            float32,
                                                                                            float32)
    IL_0863:  callvirt   instance void Game.Widget::set_LayoutTransform(valuetype [Engine]Engine.Matrix)
    IL_0868:  call       valuetype Game.ScreenLayout Game.SettingsManager::get_ScreenLayout3()
    IL_086d:  ldc.i4.6
    IL_086e:  bne.un     IL_0a34

    IL_0873:  ldc.r4     0.0
    IL_0878:  stloc.s    V_41
    IL_087a:  ldc.r4     0.0
    IL_087f:  stloc.s    V_42
    IL_0881:  ldarg.0
    IL_0882:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0887:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_088c:  ldc.r4     2.
    IL_0891:  div
    IL_0892:  ldarg.0
    IL_0893:  ldfld      float32 Game.GamesWidget::m_spacing
    IL_0898:  ldc.r4     2.
    IL_089d:  div
    IL_089e:  add
    IL_089f:  stloc.s    V_43
    IL_08a1:  ldc.r4     0.0
    IL_08a6:  stloc.s    V_44
    IL_08a8:  ldarg.0
    IL_08a9:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_08ae:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_08b3:  ldc.r4     4.
    IL_08b8:  div
    IL_08b9:  ldarg.0
    IL_08ba:  ldfld      float32 Game.GamesWidget::m_spacing
    IL_08bf:  ldc.r4     4.
    IL_08c4:  div
    IL_08c5:  add
    IL_08c6:  stloc.s    V_45
    IL_08c8:  ldarg.0
    IL_08c9:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_08ce:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_08d3:  ldc.r4     2.
    IL_08d8:  div
    IL_08d9:  ldarg.0
    IL_08da:  ldfld      float32 Game.GamesWidget::m_spacing
    IL_08df:  ldc.r4     2.
    IL_08e4:  div
    IL_08e5:  add
    IL_08e6:  stloc.s    V_46
    IL_08e8:  ldarg.0
    IL_08e9:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_08ee:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_08f3:  ldc.r4     2.
    IL_08f8:  div
    IL_08f9:  ldarg.0
    IL_08fa:  ldfld      float32 Game.GamesWidget::m_spacing
    IL_08ff:  ldc.r4     2.
    IL_0904:  div
    IL_0905:  sub
    IL_0906:  stloc.s    V_47
    IL_0908:  ldarg.0
    IL_0909:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_090e:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0913:  ldc.r4     2.
    IL_0918:  div
    IL_0919:  ldarg.0
    IL_091a:  ldfld      float32 Game.GamesWidget::m_spacing
    IL_091f:  ldc.r4     2.
    IL_0924:  div
    IL_0925:  sub
    IL_0926:  stloc.s    V_48
    IL_0928:  ldc.r4     0.5
    IL_092d:  stloc.s    V_49
    IL_092f:  ldloc.s    V_41
    IL_0931:  ldloc.s    V_42
    IL_0933:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0938:  ldloc.s    V_41
    IL_093a:  ldloc.s    V_42
    IL_093c:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0941:  ldloc.s    V_47
    IL_0943:  ldloc.s    V_48
    IL_0945:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_094a:  ldloc.s    V_49
    IL_094c:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Division(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0951:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0956:  ldarg.0
    IL_0957:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_095c:  ldc.i4.0
    IL_095d:  callvirt   instance class Game.Widget Game.WidgetsList::get_Item(int32)
    IL_0962:  call       void Game.ContainerWidget::ArrangeChildWidgetInCell(valuetype [Engine]Engine.Vector2,
                                                                             valuetype [Engine]Engine.Vector2,
                                                                             class Game.Widget)
    IL_0967:  ldarg.0
    IL_0968:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_096d:  ldc.i4.0
    IL_096e:  callvirt   instance class Game.Widget Game.WidgetsList::get_Item(int32)
    IL_0973:  ldloc.s    V_49
    IL_0975:  ldloc.s    V_49
    IL_0977:  ldc.r4     1.
    IL_097c:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateScale(float32,
                                                                                            float32,
                                                                                            float32)
    IL_0981:  callvirt   instance void Game.Widget::set_LayoutTransform(valuetype [Engine]Engine.Matrix)
    IL_0986:  ldloc.s    V_43
    IL_0988:  ldloc.s    V_44
    IL_098a:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_098f:  ldloc.s    V_43
    IL_0991:  ldloc.s    V_44
    IL_0993:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0998:  ldloc.s    V_47
    IL_099a:  ldloc.s    V_48
    IL_099c:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_09a1:  ldloc.s    V_49
    IL_09a3:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Division(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_09a8:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_09ad:  ldarg.0
    IL_09ae:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_09b3:  ldc.i4.1
    IL_09b4:  callvirt   instance class Game.Widget Game.WidgetsList::get_Item(int32)
    IL_09b9:  call       void Game.ContainerWidget::ArrangeChildWidgetInCell(valuetype [Engine]Engine.Vector2,
                                                                             valuetype [Engine]Engine.Vector2,
                                                                             class Game.Widget)
    IL_09be:  ldarg.0
    IL_09bf:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_09c4:  ldc.i4.1
    IL_09c5:  callvirt   instance class Game.Widget Game.WidgetsList::get_Item(int32)
    IL_09ca:  ldloc.s    V_49
    IL_09cc:  ldloc.s    V_49
    IL_09ce:  ldc.r4     1.
    IL_09d3:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateScale(float32,
                                                                                            float32,
                                                                                            float32)
    IL_09d8:  callvirt   instance void Game.Widget::set_LayoutTransform(valuetype [Engine]Engine.Matrix)
    IL_09dd:  ldloc.s    V_45
    IL_09df:  ldloc.s    V_46
    IL_09e1:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_09e6:  ldloc.s    V_45
    IL_09e8:  ldloc.s    V_46
    IL_09ea:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_09ef:  ldloc.s    V_47
    IL_09f1:  ldloc.s    V_48
    IL_09f3:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_09f8:  ldloc.s    V_49
    IL_09fa:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Division(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_09ff:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0a04:  ldarg.0
    IL_0a05:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0a0a:  ldc.i4.2
    IL_0a0b:  callvirt   instance class Game.Widget Game.WidgetsList::get_Item(int32)
    IL_0a10:  call       void Game.ContainerWidget::ArrangeChildWidgetInCell(valuetype [Engine]Engine.Vector2,
                                                                             valuetype [Engine]Engine.Vector2,
                                                                             class Game.Widget)
    IL_0a15:  ldarg.0
    IL_0a16:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0a1b:  ldc.i4.2
    IL_0a1c:  callvirt   instance class Game.Widget Game.WidgetsList::get_Item(int32)
    IL_0a21:  ldloc.s    V_49
    IL_0a23:  ldloc.s    V_49
    IL_0a25:  ldc.r4     1.
    IL_0a2a:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateScale(float32,
                                                                                            float32,
                                                                                            float32)
    IL_0a2f:  callvirt   instance void Game.Widget::set_LayoutTransform(valuetype [Engine]Engine.Matrix)
    IL_0a34:  call       valuetype Game.ScreenLayout Game.SettingsManager::get_ScreenLayout3()
    IL_0a39:  ldc.i4.7
    IL_0a3a:  bne.un     IL_12c8

    IL_0a3f:  ldc.r4     0.0
    IL_0a44:  stloc.s    V_50
    IL_0a46:  ldc.r4     0.0
    IL_0a4b:  stloc.s    V_51
    IL_0a4d:  ldarg.0
    IL_0a4e:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0a53:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0a58:  ldc.r4     2.
    IL_0a5d:  div
    IL_0a5e:  ldarg.0
    IL_0a5f:  ldfld      float32 Game.GamesWidget::m_spacing
    IL_0a64:  ldc.r4     2.
    IL_0a69:  div
    IL_0a6a:  add
    IL_0a6b:  stloc.s    V_52
    IL_0a6d:  ldc.r4     0.0
    IL_0a72:  stloc.s    V_53
    IL_0a74:  ldarg.0
    IL_0a75:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0a7a:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0a7f:  ldc.r4     2.
    IL_0a84:  div
    IL_0a85:  ldarg.0
    IL_0a86:  ldfld      float32 Game.GamesWidget::m_spacing
    IL_0a8b:  ldc.r4     2.
    IL_0a90:  div
    IL_0a91:  add
    IL_0a92:  stloc.s    V_54
    IL_0a94:  ldarg.0
    IL_0a95:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0a9a:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0a9f:  ldc.r4     2.
    IL_0aa4:  div
    IL_0aa5:  ldarg.0
    IL_0aa6:  ldfld      float32 Game.GamesWidget::m_spacing
    IL_0aab:  ldc.r4     2.
    IL_0ab0:  div
    IL_0ab1:  add
    IL_0ab2:  stloc.s    V_55
    IL_0ab4:  ldarg.0
    IL_0ab5:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0aba:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0abf:  ldc.r4     2.
    IL_0ac4:  div
    IL_0ac5:  ldarg.0
    IL_0ac6:  ldfld      float32 Game.GamesWidget::m_spacing
    IL_0acb:  ldc.r4     2.
    IL_0ad0:  div
    IL_0ad1:  sub
    IL_0ad2:  stloc.s    V_56
    IL_0ad4:  ldarg.0
    IL_0ad5:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0ada:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0adf:  stloc.s    V_57
    IL_0ae1:  ldarg.0
    IL_0ae2:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0ae7:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0aec:  ldc.r4     2.
    IL_0af1:  div
    IL_0af2:  ldarg.0
    IL_0af3:  ldfld      float32 Game.GamesWidget::m_spacing
    IL_0af8:  ldc.r4     2.
    IL_0afd:  div
    IL_0afe:  sub
    IL_0aff:  stloc.s    V_58
    IL_0b01:  ldc.r4     0.5
    IL_0b06:  stloc.s    V_59
    IL_0b08:  ldloc.s    V_50
    IL_0b0a:  ldloc.s    V_51
    IL_0b0c:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0b11:  ldloc.s    V_50
    IL_0b13:  ldloc.s    V_51
    IL_0b15:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0b1a:  ldloc.s    V_56
    IL_0b1c:  ldloc.s    V_57
    IL_0b1e:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0b23:  ldloc.s    V_59
    IL_0b25:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Division(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0b2a:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0b2f:  ldarg.0
    IL_0b30:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0b35:  ldc.i4.0
    IL_0b36:  callvirt   instance class Game.Widget Game.WidgetsList::get_Item(int32)
    IL_0b3b:  call       void Game.ContainerWidget::ArrangeChildWidgetInCell(valuetype [Engine]Engine.Vector2,
                                                                             valuetype [Engine]Engine.Vector2,
                                                                             class Game.Widget)
    IL_0b40:  ldarg.0
    IL_0b41:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0b46:  ldc.i4.0
    IL_0b47:  callvirt   instance class Game.Widget Game.WidgetsList::get_Item(int32)
    IL_0b4c:  ldc.r4     0.0
    IL_0b51:  ldloc.s    V_59
    IL_0b53:  ldc.r4     0.0
    IL_0b58:  ldc.r4     0.0
    IL_0b5d:  ldloc.s    V_59
    IL_0b5f:  neg
    IL_0b60:  ldc.r4     0.0
    IL_0b65:  ldc.r4     0.0
    IL_0b6a:  ldc.r4     0.0
    IL_0b6f:  ldc.r4     0.0
    IL_0b74:  ldc.r4     0.0
    IL_0b79:  ldc.r4     1.
    IL_0b7e:  ldc.r4     0.0
    IL_0b83:  ldc.r4     0.0
    IL_0b88:  ldc.r4     0.0
    IL_0b8d:  ldc.r4     0.0
    IL_0b92:  ldc.r4     1.
    IL_0b97:  newobj     instance void [Engine]Engine.Matrix::.ctor(float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32)
    IL_0b9c:  callvirt   instance void Game.Widget::set_LayoutTransform(valuetype [Engine]Engine.Matrix)
    IL_0ba1:  ldloc.s    V_52
    IL_0ba3:  ldloc.s    V_53
    IL_0ba5:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0baa:  ldloc.s    V_52
    IL_0bac:  ldloc.s    V_53
    IL_0bae:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0bb3:  ldloc.s    V_56
    IL_0bb5:  ldloc.s    V_58
    IL_0bb7:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0bbc:  ldloc.s    V_59
    IL_0bbe:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Division(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0bc3:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0bc8:  ldarg.0
    IL_0bc9:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0bce:  ldc.i4.1
    IL_0bcf:  callvirt   instance class Game.Widget Game.WidgetsList::get_Item(int32)
    IL_0bd4:  call       void Game.ContainerWidget::ArrangeChildWidgetInCell(valuetype [Engine]Engine.Vector2,
                                                                             valuetype [Engine]Engine.Vector2,
                                                                             class Game.Widget)
    IL_0bd9:  ldarg.0
    IL_0bda:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0bdf:  ldc.i4.1
    IL_0be0:  callvirt   instance class Game.Widget Game.WidgetsList::get_Item(int32)
    IL_0be5:  ldloc.s    V_59
    IL_0be7:  neg
    IL_0be8:  ldc.r4     0.0
    IL_0bed:  ldc.r4     0.0
    IL_0bf2:  ldc.r4     0.0
    IL_0bf7:  ldc.r4     0.0
    IL_0bfc:  ldloc.s    V_59
    IL_0bfe:  neg
    IL_0bff:  ldc.r4     0.0
    IL_0c04:  ldc.r4     0.0
    IL_0c09:  ldc.r4     0.0
    IL_0c0e:  ldc.r4     0.0
    IL_0c13:  ldc.r4     1.
    IL_0c18:  ldc.r4     0.0
    IL_0c1d:  ldc.r4     0.0
    IL_0c22:  ldc.r4     0.0
    IL_0c27:  ldc.r4     0.0
    IL_0c2c:  ldc.r4     1.
    IL_0c31:  newobj     instance void [Engine]Engine.Matrix::.ctor(float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32)
    IL_0c36:  callvirt   instance void Game.Widget::set_LayoutTransform(valuetype [Engine]Engine.Matrix)
    IL_0c3b:  ldloc.s    V_54
    IL_0c3d:  ldloc.s    V_55
    IL_0c3f:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0c44:  ldloc.s    V_54
    IL_0c46:  ldloc.s    V_55
    IL_0c48:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0c4d:  ldloc.s    V_56
    IL_0c4f:  ldloc.s    V_58
    IL_0c51:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0c56:  ldloc.s    V_59
    IL_0c58:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Division(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0c5d:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0c62:  ldarg.0
    IL_0c63:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0c68:  ldc.i4.2
    IL_0c69:  callvirt   instance class Game.Widget Game.WidgetsList::get_Item(int32)
    IL_0c6e:  call       void Game.ContainerWidget::ArrangeChildWidgetInCell(valuetype [Engine]Engine.Vector2,
                                                                             valuetype [Engine]Engine.Vector2,
                                                                             class Game.Widget)
    IL_0c73:  ldarg.0
    IL_0c74:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0c79:  ldc.i4.2
    IL_0c7a:  callvirt   instance class Game.Widget Game.WidgetsList::get_Item(int32)
    IL_0c7f:  ldloc.s    V_59
    IL_0c81:  ldc.r4     0.0
    IL_0c86:  ldc.r4     0.0
    IL_0c8b:  ldc.r4     0.0
    IL_0c90:  ldc.r4     0.0
    IL_0c95:  ldloc.s    V_59
    IL_0c97:  ldc.r4     0.0
    IL_0c9c:  ldc.r4     0.0
    IL_0ca1:  ldc.r4     0.0
    IL_0ca6:  ldc.r4     0.0
    IL_0cab:  ldc.r4     1.
    IL_0cb0:  ldc.r4     0.0
    IL_0cb5:  ldc.r4     0.0
    IL_0cba:  ldc.r4     0.0
    IL_0cbf:  ldc.r4     0.0
    IL_0cc4:  ldc.r4     1.
    IL_0cc9:  newobj     instance void [Engine]Engine.Matrix::.ctor(float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32)
    IL_0cce:  callvirt   instance void Game.Widget::set_LayoutTransform(valuetype [Engine]Engine.Matrix)
    IL_0cd3:  ret

    IL_0cd4:  ldarg.0
    IL_0cd5:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0cda:  callvirt   instance int32 Game.WidgetsList::get_Count()
    IL_0cdf:  ldc.i4.4
    IL_0ce0:  bne.un     IL_12af

    IL_0ce5:  call       valuetype Game.ScreenLayout Game.SettingsManager::get_ScreenLayout4()
    IL_0cea:  ldc.i4.8
    IL_0ceb:  bne.un     IL_0f45

    IL_0cf0:  ldarg.0
    IL_0cf1:  ldc.r4     12.
    IL_0cf6:  stfld      float32 Game.GamesWidget::m_spacing
    IL_0cfb:  ldarg.0
    IL_0cfc:  ldc.r4     3.
    IL_0d01:  stfld      float32 Game.GamesWidget::m_bevel
    IL_0d06:  ldc.r4     0.0
    IL_0d0b:  stloc.s    V_60
    IL_0d0d:  ldc.r4     0.0
    IL_0d12:  stloc.s    V_61
    IL_0d14:  ldarg.0
    IL_0d15:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0d1a:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0d1f:  ldc.r4     2.
    IL_0d24:  div
    IL_0d25:  ldarg.0
    IL_0d26:  ldfld      float32 Game.GamesWidget::m_spacing
    IL_0d2b:  ldc.r4     2.
    IL_0d30:  div
    IL_0d31:  add
    IL_0d32:  stloc.s    V_62
    IL_0d34:  ldc.r4     0.0
    IL_0d39:  stloc.s    V_63
    IL_0d3b:  ldc.r4     0.0
    IL_0d40:  stloc.s    V_64
    IL_0d42:  ldarg.0
    IL_0d43:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0d48:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0d4d:  ldc.r4     2.
    IL_0d52:  div
    IL_0d53:  ldarg.0
    IL_0d54:  ldfld      float32 Game.GamesWidget::m_spacing
    IL_0d59:  ldc.r4     2.
    IL_0d5e:  div
    IL_0d5f:  add
    IL_0d60:  stloc.s    V_65
    IL_0d62:  ldarg.0
    IL_0d63:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0d68:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0d6d:  ldc.r4     2.
    IL_0d72:  div
    IL_0d73:  ldarg.0
    IL_0d74:  ldfld      float32 Game.GamesWidget::m_spacing
    IL_0d79:  ldc.r4     2.
    IL_0d7e:  div
    IL_0d7f:  add
    IL_0d80:  stloc.s    V_66
    IL_0d82:  ldarg.0
    IL_0d83:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0d88:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0d8d:  ldc.r4     2.
    IL_0d92:  div
    IL_0d93:  ldarg.0
    IL_0d94:  ldfld      float32 Game.GamesWidget::m_spacing
    IL_0d99:  ldc.r4     2.
    IL_0d9e:  div
    IL_0d9f:  add
    IL_0da0:  stloc.s    V_67
    IL_0da2:  ldarg.0
    IL_0da3:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0da8:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0dad:  ldc.r4     2.
    IL_0db2:  div
    IL_0db3:  ldarg.0
    IL_0db4:  ldfld      float32 Game.GamesWidget::m_spacing
    IL_0db9:  ldc.r4     2.
    IL_0dbe:  div
    IL_0dbf:  sub
    IL_0dc0:  stloc.s    V_68
    IL_0dc2:  ldarg.0
    IL_0dc3:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0dc8:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0dcd:  ldc.r4     2.
    IL_0dd2:  div
    IL_0dd3:  ldarg.0
    IL_0dd4:  ldfld      float32 Game.GamesWidget::m_spacing
    IL_0dd9:  ldc.r4     2.
    IL_0dde:  div
    IL_0ddf:  sub
    IL_0de0:  stloc.s    V_69
    IL_0de2:  ldc.r4     0.5
    IL_0de7:  stloc.s    V_70
    IL_0de9:  ldloc.s    V_60
    IL_0deb:  ldloc.s    V_61
    IL_0ded:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0df2:  ldloc.s    V_60
    IL_0df4:  ldloc.s    V_61
    IL_0df6:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0dfb:  ldloc.s    V_68
    IL_0dfd:  ldloc.s    V_69
    IL_0dff:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0e04:  ldloc.s    V_70
    IL_0e06:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Division(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0e0b:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0e10:  ldarg.0
    IL_0e11:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0e16:  ldc.i4.0
    IL_0e17:  callvirt   instance class Game.Widget Game.WidgetsList::get_Item(int32)
    IL_0e1c:  call       void Game.ContainerWidget::ArrangeChildWidgetInCell(valuetype [Engine]Engine.Vector2,
                                                                             valuetype [Engine]Engine.Vector2,
                                                                             class Game.Widget)
    IL_0e21:  ldarg.0
    IL_0e22:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0e27:  ldc.i4.0
    IL_0e28:  callvirt   instance class Game.Widget Game.WidgetsList::get_Item(int32)
    IL_0e2d:  ldloc.s    V_70
    IL_0e2f:  ldloc.s    V_70
    IL_0e31:  ldc.r4     1.
    IL_0e36:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateScale(float32,
                                                                                            float32,
                                                                                            float32)
    IL_0e3b:  callvirt   instance void Game.Widget::set_LayoutTransform(valuetype [Engine]Engine.Matrix)
    IL_0e40:  ldloc.s    V_62
    IL_0e42:  ldloc.s    V_63
    IL_0e44:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0e49:  ldloc.s    V_62
    IL_0e4b:  ldloc.s    V_63
    IL_0e4d:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0e52:  ldloc.s    V_68
    IL_0e54:  ldloc.s    V_69
    IL_0e56:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0e5b:  ldloc.s    V_70
    IL_0e5d:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Division(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0e62:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0e67:  ldarg.0
    IL_0e68:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0e6d:  ldc.i4.1
    IL_0e6e:  callvirt   instance class Game.Widget Game.WidgetsList::get_Item(int32)
    IL_0e73:  call       void Game.ContainerWidget::ArrangeChildWidgetInCell(valuetype [Engine]Engine.Vector2,
                                                                             valuetype [Engine]Engine.Vector2,
                                                                             class Game.Widget)
    IL_0e78:  ldarg.0
    IL_0e79:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0e7e:  ldc.i4.1
    IL_0e7f:  callvirt   instance class Game.Widget Game.WidgetsList::get_Item(int32)
    IL_0e84:  ldloc.s    V_70
    IL_0e86:  ldloc.s    V_70
    IL_0e88:  ldc.r4     1.
    IL_0e8d:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateScale(float32,
                                                                                            float32,
                                                                                            float32)
    IL_0e92:  callvirt   instance void Game.Widget::set_LayoutTransform(valuetype [Engine]Engine.Matrix)
    IL_0e97:  ldloc.s    V_64
    IL_0e99:  ldloc.s    V_65
    IL_0e9b:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0ea0:  ldloc.s    V_64
    IL_0ea2:  ldloc.s    V_65
    IL_0ea4:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0ea9:  ldloc.s    V_68
    IL_0eab:  ldloc.s    V_69
    IL_0ead:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0eb2:  ldloc.s    V_70
    IL_0eb4:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Division(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0eb9:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0ebe:  ldarg.0
    IL_0ebf:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0ec4:  ldc.i4.2
    IL_0ec5:  callvirt   instance class Game.Widget Game.WidgetsList::get_Item(int32)
    IL_0eca:  call       void Game.ContainerWidget::ArrangeChildWidgetInCell(valuetype [Engine]Engine.Vector2,
                                                                             valuetype [Engine]Engine.Vector2,
                                                                             class Game.Widget)
    IL_0ecf:  ldarg.0
    IL_0ed0:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0ed5:  ldc.i4.2
    IL_0ed6:  callvirt   instance class Game.Widget Game.WidgetsList::get_Item(int32)
    IL_0edb:  ldloc.s    V_70
    IL_0edd:  ldloc.s    V_70
    IL_0edf:  ldc.r4     1.
    IL_0ee4:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateScale(float32,
                                                                                            float32,
                                                                                            float32)
    IL_0ee9:  callvirt   instance void Game.Widget::set_LayoutTransform(valuetype [Engine]Engine.Matrix)
    IL_0eee:  ldloc.s    V_66
    IL_0ef0:  ldloc.s    V_67
    IL_0ef2:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0ef7:  ldloc.s    V_66
    IL_0ef9:  ldloc.s    V_67
    IL_0efb:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0f00:  ldloc.s    V_68
    IL_0f02:  ldloc.s    V_69
    IL_0f04:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0f09:  ldloc.s    V_70
    IL_0f0b:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Division(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0f10:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0f15:  ldarg.0
    IL_0f16:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0f1b:  ldc.i4.3
    IL_0f1c:  callvirt   instance class Game.Widget Game.WidgetsList::get_Item(int32)
    IL_0f21:  call       void Game.ContainerWidget::ArrangeChildWidgetInCell(valuetype [Engine]Engine.Vector2,
                                                                             valuetype [Engine]Engine.Vector2,
                                                                             class Game.Widget)
    IL_0f26:  ldarg.0
    IL_0f27:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0f2c:  ldc.i4.3
    IL_0f2d:  callvirt   instance class Game.Widget Game.WidgetsList::get_Item(int32)
    IL_0f32:  ldloc.s    V_70
    IL_0f34:  ldloc.s    V_70
    IL_0f36:  ldc.r4     1.
    IL_0f3b:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateScale(float32,
                                                                                            float32,
                                                                                            float32)
    IL_0f40:  callvirt   instance void Game.Widget::set_LayoutTransform(valuetype [Engine]Engine.Matrix)
    IL_0f45:  call       valuetype Game.ScreenLayout Game.SettingsManager::get_ScreenLayout4()
    IL_0f4a:  ldc.i4.s   9
    IL_0f4c:  bne.un     IL_12c8

    IL_0f51:  ldarg.0
    IL_0f52:  ldc.r4     12.
    IL_0f57:  stfld      float32 Game.GamesWidget::m_spacing
    IL_0f5c:  ldarg.0
    IL_0f5d:  ldc.r4     3.
    IL_0f62:  stfld      float32 Game.GamesWidget::m_bevel
    IL_0f67:  ldc.r4     0.0
    IL_0f6c:  stloc.s    V_71
    IL_0f6e:  ldc.r4     0.0
    IL_0f73:  stloc.s    V_72
    IL_0f75:  ldarg.0
    IL_0f76:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0f7b:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0f80:  ldc.r4     2.
    IL_0f85:  div
    IL_0f86:  ldarg.0
    IL_0f87:  ldfld      float32 Game.GamesWidget::m_spacing
    IL_0f8c:  ldc.r4     2.
    IL_0f91:  div
    IL_0f92:  add
    IL_0f93:  stloc.s    V_73
    IL_0f95:  ldc.r4     0.0
    IL_0f9a:  stloc.s    V_74
    IL_0f9c:  ldc.r4     0.0
    IL_0fa1:  stloc.s    V_75
    IL_0fa3:  ldarg.0
    IL_0fa4:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0fa9:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0fae:  ldc.r4     2.
    IL_0fb3:  div
    IL_0fb4:  ldarg.0
    IL_0fb5:  ldfld      float32 Game.GamesWidget::m_spacing
    IL_0fba:  ldc.r4     2.
    IL_0fbf:  div
    IL_0fc0:  add
    IL_0fc1:  stloc.s    V_76
    IL_0fc3:  ldarg.0
    IL_0fc4:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0fc9:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0fce:  ldc.r4     2.
    IL_0fd3:  div
    IL_0fd4:  ldarg.0
    IL_0fd5:  ldfld      float32 Game.GamesWidget::m_spacing
    IL_0fda:  ldc.r4     2.
    IL_0fdf:  div
    IL_0fe0:  add
    IL_0fe1:  stloc.s    V_77
    IL_0fe3:  ldarg.0
    IL_0fe4:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0fe9:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0fee:  ldc.r4     2.
    IL_0ff3:  div
    IL_0ff4:  ldarg.0
    IL_0ff5:  ldfld      float32 Game.GamesWidget::m_spacing
    IL_0ffa:  ldc.r4     2.
    IL_0fff:  div
    IL_1000:  add
    IL_1001:  stloc.s    V_78
    IL_1003:  ldarg.0
    IL_1004:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_1009:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_100e:  ldc.r4     2.
    IL_1013:  div
    IL_1014:  ldarg.0
    IL_1015:  ldfld      float32 Game.GamesWidget::m_spacing
    IL_101a:  ldc.r4     2.
    IL_101f:  div
    IL_1020:  sub
    IL_1021:  stloc.s    V_79
    IL_1023:  ldarg.0
    IL_1024:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_1029:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_102e:  ldc.r4     2.
    IL_1033:  div
    IL_1034:  ldarg.0
    IL_1035:  ldfld      float32 Game.GamesWidget::m_spacing
    IL_103a:  ldc.r4     2.
    IL_103f:  div
    IL_1040:  sub
    IL_1041:  stloc.s    V_80
    IL_1043:  ldc.r4     0.5
    IL_1048:  stloc.s    V_81
    IL_104a:  ldloc.s    V_71
    IL_104c:  ldloc.s    V_72
    IL_104e:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_1053:  ldloc.s    V_71
    IL_1055:  ldloc.s    V_72
    IL_1057:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_105c:  ldloc.s    V_79
    IL_105e:  ldloc.s    V_80
    IL_1060:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_1065:  ldloc.s    V_81
    IL_1067:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Division(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_106c:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_1071:  ldarg.0
    IL_1072:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_1077:  ldc.i4.0
    IL_1078:  callvirt   instance class Game.Widget Game.WidgetsList::get_Item(int32)
    IL_107d:  call       void Game.ContainerWidget::ArrangeChildWidgetInCell(valuetype [Engine]Engine.Vector2,
                                                                             valuetype [Engine]Engine.Vector2,
                                                                             class Game.Widget)
    IL_1082:  ldarg.0
    IL_1083:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_1088:  ldc.i4.0
    IL_1089:  callvirt   instance class Game.Widget Game.WidgetsList::get_Item(int32)
    IL_108e:  ldloc.s    V_81
    IL_1090:  neg
    IL_1091:  ldc.r4     0.0
    IL_1096:  ldc.r4     0.0
    IL_109b:  ldc.r4     0.0
    IL_10a0:  ldc.r4     0.0
    IL_10a5:  ldloc.s    V_81
    IL_10a7:  neg
    IL_10a8:  ldc.r4     0.0
    IL_10ad:  ldc.r4     0.0
    IL_10b2:  ldc.r4     0.0
    IL_10b7:  ldc.r4     0.0
    IL_10bc:  ldc.r4     1.
    IL_10c1:  ldc.r4     0.0
    IL_10c6:  ldc.r4     0.0
    IL_10cb:  ldc.r4     0.0
    IL_10d0:  ldc.r4     0.0
    IL_10d5:  ldc.r4     1.
    IL_10da:  newobj     instance void [Engine]Engine.Matrix::.ctor(float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32)
    IL_10df:  callvirt   instance void Game.Widget::set_LayoutTransform(valuetype [Engine]Engine.Matrix)
    IL_10e4:  ldloc.s    V_73
    IL_10e6:  ldloc.s    V_74
    IL_10e8:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_10ed:  ldloc.s    V_73
    IL_10ef:  ldloc.s    V_74
    IL_10f1:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_10f6:  ldloc.s    V_79
    IL_10f8:  ldloc.s    V_80
    IL_10fa:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_10ff:  ldloc.s    V_81
    IL_1101:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Division(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_1106:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_110b:  ldarg.0
    IL_110c:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_1111:  ldc.i4.1
    IL_1112:  callvirt   instance class Game.Widget Game.WidgetsList::get_Item(int32)
    IL_1117:  call       void Game.ContainerWidget::ArrangeChildWidgetInCell(valuetype [Engine]Engine.Vector2,
                                                                             valuetype [Engine]Engine.Vector2,
                                                                             class Game.Widget)
    IL_111c:  ldarg.0
    IL_111d:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_1122:  ldc.i4.1
    IL_1123:  callvirt   instance class Game.Widget Game.WidgetsList::get_Item(int32)
    IL_1128:  ldloc.s    V_81
    IL_112a:  neg
    IL_112b:  ldc.r4     0.0
    IL_1130:  ldc.r4     0.0
    IL_1135:  ldc.r4     0.0
    IL_113a:  ldc.r4     0.0
    IL_113f:  ldloc.s    V_81
    IL_1141:  neg
    IL_1142:  ldc.r4     0.0
    IL_1147:  ldc.r4     0.0
    IL_114c:  ldc.r4     0.0
    IL_1151:  ldc.r4     0.0
    IL_1156:  ldc.r4     1.
    IL_115b:  ldc.r4     0.0
    IL_1160:  ldc.r4     0.0
    IL_1165:  ldc.r4     0.0
    IL_116a:  ldc.r4     0.0
    IL_116f:  ldc.r4     1.
    IL_1174:  newobj     instance void [Engine]Engine.Matrix::.ctor(float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32)
    IL_1179:  callvirt   instance void Game.Widget::set_LayoutTransform(valuetype [Engine]Engine.Matrix)
    IL_117e:  ldloc.s    V_75
    IL_1180:  ldloc.s    V_76
    IL_1182:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_1187:  ldloc.s    V_75
    IL_1189:  ldloc.s    V_76
    IL_118b:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_1190:  ldloc.s    V_79
    IL_1192:  ldloc.s    V_80
    IL_1194:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_1199:  ldloc.s    V_81
    IL_119b:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Division(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_11a0:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_11a5:  ldarg.0
    IL_11a6:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_11ab:  ldc.i4.2
    IL_11ac:  callvirt   instance class Game.Widget Game.WidgetsList::get_Item(int32)
    IL_11b1:  call       void Game.ContainerWidget::ArrangeChildWidgetInCell(valuetype [Engine]Engine.Vector2,
                                                                             valuetype [Engine]Engine.Vector2,
                                                                             class Game.Widget)
    IL_11b6:  ldarg.0
    IL_11b7:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_11bc:  ldc.i4.2
    IL_11bd:  callvirt   instance class Game.Widget Game.WidgetsList::get_Item(int32)
    IL_11c2:  ldloc.s    V_81
    IL_11c4:  ldc.r4     0.0
    IL_11c9:  ldc.r4     0.0
    IL_11ce:  ldc.r4     0.0
    IL_11d3:  ldc.r4     0.0
    IL_11d8:  ldloc.s    V_81
    IL_11da:  ldc.r4     0.0
    IL_11df:  ldc.r4     0.0
    IL_11e4:  ldc.r4     0.0
    IL_11e9:  ldc.r4     0.0
    IL_11ee:  ldc.r4     1.
    IL_11f3:  ldc.r4     0.0
    IL_11f8:  ldc.r4     0.0
    IL_11fd:  ldc.r4     0.0
    IL_1202:  ldc.r4     0.0
    IL_1207:  ldc.r4     1.
    IL_120c:  newobj     instance void [Engine]Engine.Matrix::.ctor(float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32)
    IL_1211:  callvirt   instance void Game.Widget::set_LayoutTransform(valuetype [Engine]Engine.Matrix)
    IL_1216:  ldloc.s    V_77
    IL_1218:  ldloc.s    V_78
    IL_121a:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_121f:  ldloc.s    V_77
    IL_1221:  ldloc.s    V_78
    IL_1223:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_1228:  ldloc.s    V_79
    IL_122a:  ldloc.s    V_80
    IL_122c:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_1231:  ldloc.s    V_81
    IL_1233:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Division(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_1238:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_123d:  ldarg.0
    IL_123e:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_1243:  ldc.i4.3
    IL_1244:  callvirt   instance class Game.Widget Game.WidgetsList::get_Item(int32)
    IL_1249:  call       void Game.ContainerWidget::ArrangeChildWidgetInCell(valuetype [Engine]Engine.Vector2,
                                                                             valuetype [Engine]Engine.Vector2,
                                                                             class Game.Widget)
    IL_124e:  ldarg.0
    IL_124f:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_1254:  ldc.i4.3
    IL_1255:  callvirt   instance class Game.Widget Game.WidgetsList::get_Item(int32)
    IL_125a:  ldloc.s    V_81
    IL_125c:  ldc.r4     0.0
    IL_1261:  ldc.r4     0.0
    IL_1266:  ldc.r4     0.0
    IL_126b:  ldc.r4     0.0
    IL_1270:  ldloc.s    V_81
    IL_1272:  ldc.r4     0.0
    IL_1277:  ldc.r4     0.0
    IL_127c:  ldc.r4     0.0
    IL_1281:  ldc.r4     0.0
    IL_1286:  ldc.r4     1.
    IL_128b:  ldc.r4     0.0
    IL_1290:  ldc.r4     0.0
    IL_1295:  ldc.r4     0.0
    IL_129a:  ldc.r4     0.0
    IL_129f:  ldc.r4     1.
    IL_12a4:  newobj     instance void [Engine]Engine.Matrix::.ctor(float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32)
    IL_12a9:  callvirt   instance void Game.Widget::set_LayoutTransform(valuetype [Engine]Engine.Matrix)
    IL_12ae:  ret

    IL_12af:  ldarg.0
    IL_12b0:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_12b5:  callvirt   instance int32 Game.WidgetsList::get_Count()
    IL_12ba:  ldc.i4.4
    IL_12bb:  ble.s      IL_12c8

    IL_12bd:  ldstr      "Too many GameWidgets."
    IL_12c2:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_12c7:  throw

    IL_12c8:  ret
  } // end of method GamesWidget::ArrangeOverride

  .method public hidebysig virtual instance void 
          Overdraw() cil managed
  {
    // 代码大小       2513 (0x9d1)
    .maxstack  12
    .locals init (valuetype [Engine]Engine.Color V_0,
             float32 V_1,
             float32 V_2,
             class [Engine]Engine.Graphics.FlatBatch2D V_3,
             int32 V_4,
             valuetype [Engine]Engine.Vector2 V_5,
             valuetype [Engine]Engine.Vector2 V_6,
             valuetype [Engine]Engine.Vector2 V_7,
             valuetype [Engine]Engine.Vector2 V_8,
             float32 V_9,
             float32 V_10,
             float32 V_11,
             float32 V_12,
             float32 V_13,
             float32 V_14,
             float32 V_15,
             float32 V_16,
             valuetype [Engine]Engine.Color V_17,
             float32 V_18,
             float32 V_19,
             float32 V_20,
             float32 V_21,
             float32 V_22,
             float32 V_23,
             float32 V_24,
             float32 V_25,
             valuetype [Engine]Engine.Color V_26,
             float32 V_27,
             float32 V_28,
             float32 V_29,
             float32 V_30,
             float32 V_31,
             float32 V_32,
             float32 V_33,
             float32 V_34,
             float32 V_35,
             float32 V_36,
             valuetype [Engine]Engine.Color V_37,
             float32 V_38,
             float32 V_39,
             float32 V_40,
             float32 V_41,
             float32 V_42,
             float32 V_43,
             float32 V_44,
             float32 V_45,
             valuetype [Engine]Engine.Color V_46)
    IL_0000:  ldc.i4     0xb5
    IL_0005:  ldc.i4     0xac
    IL_000a:  ldc.i4     0x9a
    IL_000f:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0014:  ldarg.0
    IL_0015:  call       instance valuetype [Engine]Engine.Color Game.Widget::get_GlobalColorTransform()
    IL_001a:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color)
    IL_001f:  stloc.0
    IL_0020:  ldc.r4     0.60000002
    IL_0025:  stloc.1
    IL_0026:  ldc.r4     0.40000001
    IL_002b:  stloc.2
    IL_002c:  ldsfld     class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.WidgetsManager::PrimitivesRenderer2D
    IL_0031:  ldc.i4.0
    IL_0032:  ldnull
    IL_0033:  ldnull
    IL_0034:  ldnull
    IL_0035:  callvirt   instance class [Engine]Engine.Graphics.FlatBatch2D [Engine]Engine.Graphics.PrimitivesRenderer2D::FlatBatch(int32,
                                                                                                                                    class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                    class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                    class [Engine]Engine.Graphics.BlendState)
    IL_003a:  stloc.3
    IL_003b:  ldloc.3
    IL_003c:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColor> [Engine]Engine.Graphics.BaseFlatBatch::TriangleVertices
    IL_0041:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColor>::get_Count()
    IL_0046:  stloc.s    V_4
    IL_0048:  ldarg.0
    IL_0049:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_004e:  callvirt   instance int32 Game.WidgetsList::get_Count()
    IL_0053:  ldc.i4.2
    IL_0054:  bne.un     IL_0184

    IL_0059:  call       valuetype Game.ScreenLayout Game.SettingsManager::get_ScreenLayout2()
    IL_005e:  ldc.i4.1
    IL_005f:  beq.s      IL_006c

    IL_0061:  call       valuetype Game.ScreenLayout Game.SettingsManager::get_ScreenLayout2()
    IL_0066:  ldc.i4.3
    IL_0067:  bne.un     IL_00f0

    IL_006c:  ldloca.s   V_5
    IL_006e:  ldarg.0
    IL_006f:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0074:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0079:  ldc.r4     2.
    IL_007e:  div
    IL_007f:  ldarg.0
    IL_0080:  ldfld      float32 Game.GamesWidget::m_spacing
    IL_0085:  ldc.r4     2.
    IL_008a:  div
    IL_008b:  sub
    IL_008c:  ldc.r4     -100.
    IL_0091:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0096:  ldloca.s   V_6
    IL_0098:  ldarg.0
    IL_0099:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_009e:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_00a3:  ldc.r4     2.
    IL_00a8:  div
    IL_00a9:  ldarg.0
    IL_00aa:  ldfld      float32 Game.GamesWidget::m_spacing
    IL_00af:  ldc.r4     2.
    IL_00b4:  div
    IL_00b5:  add
    IL_00b6:  ldarg.0
    IL_00b7:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_00bc:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00c1:  ldc.r4     100.
    IL_00c6:  add
    IL_00c7:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00cc:  ldnull
    IL_00cd:  ldloc.3
    IL_00ce:  ldloc.s    V_5
    IL_00d0:  ldloc.s    V_6
    IL_00d2:  ldc.r4     0.0
    IL_00d7:  ldarg.0
    IL_00d8:  ldfld      float32 Game.GamesWidget::m_bevel
    IL_00dd:  ldloc.0
    IL_00de:  ldloc.0
    IL_00df:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
    IL_00e4:  ldloc.1
    IL_00e5:  ldloc.2
    IL_00e6:  ldc.r4     0.0
    IL_00eb:  call       void Game.BevelledRectangleWidget::QueueBevelledRectangle(class [Engine]Engine.Graphics.TexturedBatch2D,
                                                                                   class [Engine]Engine.Graphics.FlatBatch2D,
                                                                                   valuetype [Engine]Engine.Vector2,
                                                                                   valuetype [Engine]Engine.Vector2,
                                                                                   float32,
                                                                                   float32,
                                                                                   valuetype [Engine]Engine.Color,
                                                                                   valuetype [Engine]Engine.Color,
                                                                                   valuetype [Engine]Engine.Color,
                                                                                   float32,
                                                                                   float32,
                                                                                   float32)
    IL_00f0:  call       valuetype Game.ScreenLayout Game.SettingsManager::get_ScreenLayout2()
    IL_00f5:  ldc.i4.2
    IL_00f6:  bne.un     IL_09c1

    IL_00fb:  ldloca.s   V_7
    IL_00fd:  ldc.r4     -100.
    IL_0102:  ldarg.0
    IL_0103:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0108:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_010d:  ldc.r4     2.
    IL_0112:  div
    IL_0113:  ldarg.0
    IL_0114:  ldfld      float32 Game.GamesWidget::m_spacing
    IL_0119:  ldc.r4     2.
    IL_011e:  div
    IL_011f:  sub
    IL_0120:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0125:  ldloca.s   V_8
    IL_0127:  ldarg.0
    IL_0128:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_012d:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0132:  ldc.r4     100.
    IL_0137:  add
    IL_0138:  ldarg.0
    IL_0139:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_013e:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0143:  ldc.r4     2.
    IL_0148:  div
    IL_0149:  ldarg.0
    IL_014a:  ldfld      float32 Game.GamesWidget::m_spacing
    IL_014f:  ldc.r4     2.
    IL_0154:  div
    IL_0155:  add
    IL_0156:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_015b:  ldnull
    IL_015c:  ldloc.3
    IL_015d:  ldloc.s    V_7
    IL_015f:  ldloc.s    V_8
    IL_0161:  ldc.r4     0.0
    IL_0166:  ldarg.0
    IL_0167:  ldfld      float32 Game.GamesWidget::m_bevel
    IL_016c:  ldloc.0
    IL_016d:  ldloc.0
    IL_016e:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
    IL_0173:  ldloc.1
    IL_0174:  ldloc.2
    IL_0175:  ldc.r4     0.0
    IL_017a:  call       void Game.BevelledRectangleWidget::QueueBevelledRectangle(class [Engine]Engine.Graphics.TexturedBatch2D,
                                                                                   class [Engine]Engine.Graphics.FlatBatch2D,
                                                                                   valuetype [Engine]Engine.Vector2,
                                                                                   valuetype [Engine]Engine.Vector2,
                                                                                   float32,
                                                                                   float32,
                                                                                   valuetype [Engine]Engine.Color,
                                                                                   valuetype [Engine]Engine.Color,
                                                                                   valuetype [Engine]Engine.Color,
                                                                                   float32,
                                                                                   float32,
                                                                                   float32)
    IL_017f:  br         IL_09c1

    IL_0184:  ldarg.0
    IL_0185:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_018a:  callvirt   instance int32 Game.WidgetsList::get_Count()
    IL_018f:  ldc.i4.3
    IL_0190:  bne.un     IL_0785

    IL_0195:  call       valuetype Game.ScreenLayout Game.SettingsManager::get_ScreenLayout3()
    IL_019a:  ldc.i4.4
    IL_019b:  beq.s      IL_01a8

    IL_019d:  call       valuetype Game.ScreenLayout Game.SettingsManager::get_ScreenLayout3()
    IL_01a2:  ldc.i4.7
    IL_01a3:  bne.un     IL_0370

    IL_01a8:  ldc.r4     -100.
    IL_01ad:  stloc.s    V_9
    IL_01af:  ldarg.0
    IL_01b0:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_01b5:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_01ba:  ldc.r4     2.
    IL_01bf:  div
    IL_01c0:  ldarg.0
    IL_01c1:  ldfld      float32 Game.GamesWidget::m_spacing
    IL_01c6:  ldc.r4     2.
    IL_01cb:  div
    IL_01cc:  sub
    IL_01cd:  ldarg.0
    IL_01ce:  ldfld      float32 Game.GamesWidget::m_bevel
    IL_01d3:  add
    IL_01d4:  stloc.s    V_10
    IL_01d6:  ldarg.0
    IL_01d7:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_01dc:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_01e1:  ldc.r4     2.
    IL_01e6:  div
    IL_01e7:  ldarg.0
    IL_01e8:  ldfld      float32 Game.GamesWidget::m_spacing
    IL_01ed:  ldc.r4     2.
    IL_01f2:  div
    IL_01f3:  add
    IL_01f4:  ldarg.0
    IL_01f5:  ldfld      float32 Game.GamesWidget::m_bevel
    IL_01fa:  sub
    IL_01fb:  stloc.s    V_11
    IL_01fd:  ldarg.0
    IL_01fe:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0203:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0208:  ldc.r4     100.
    IL_020d:  add
    IL_020e:  stloc.s    V_12
    IL_0210:  ldc.r4     -100.
    IL_0215:  stloc.s    V_13
    IL_0217:  ldarg.0
    IL_0218:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_021d:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0222:  ldc.r4     2.
    IL_0227:  div
    IL_0228:  ldarg.0
    IL_0229:  ldfld      float32 Game.GamesWidget::m_spacing
    IL_022e:  ldc.r4     2.
    IL_0233:  div
    IL_0234:  sub
    IL_0235:  ldarg.0
    IL_0236:  ldfld      float32 Game.GamesWidget::m_bevel
    IL_023b:  add
    IL_023c:  stloc.s    V_14
    IL_023e:  ldarg.0
    IL_023f:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0244:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0249:  ldc.r4     2.
    IL_024e:  div
    IL_024f:  ldarg.0
    IL_0250:  ldfld      float32 Game.GamesWidget::m_spacing
    IL_0255:  ldc.r4     2.
    IL_025a:  div
    IL_025b:  add
    IL_025c:  ldarg.0
    IL_025d:  ldfld      float32 Game.GamesWidget::m_bevel
    IL_0262:  sub
    IL_0263:  stloc.s    V_15
    IL_0265:  ldarg.0
    IL_0266:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_026b:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0270:  ldc.r4     100.
    IL_0275:  add
    IL_0276:  stloc.s    V_16
    IL_0278:  ldnull
    IL_0279:  ldloc.3
    IL_027a:  ldloc.s    V_9
    IL_027c:  ldloc.s    V_13
    IL_027e:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0283:  ldloc.s    V_10
    IL_0285:  ldloc.s    V_16
    IL_0287:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_028c:  ldc.r4     0.0
    IL_0291:  ldarg.0
    IL_0292:  ldfld      float32 Game.GamesWidget::m_bevel
    IL_0297:  neg
    IL_0298:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
    IL_029d:  ldloc.0
    IL_029e:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
    IL_02a3:  ldloc.1
    IL_02a4:  ldloc.2
    IL_02a5:  ldc.r4     0.0
    IL_02aa:  call       void Game.BevelledRectangleWidget::QueueBevelledRectangle(class [Engine]Engine.Graphics.TexturedBatch2D,
                                                                                   class [Engine]Engine.Graphics.FlatBatch2D,
                                                                                   valuetype [Engine]Engine.Vector2,
                                                                                   valuetype [Engine]Engine.Vector2,
                                                                                   float32,
                                                                                   float32,
                                                                                   valuetype [Engine]Engine.Color,
                                                                                   valuetype [Engine]Engine.Color,
                                                                                   valuetype [Engine]Engine.Color,
                                                                                   float32,
                                                                                   float32,
                                                                                   float32)
    IL_02af:  ldnull
    IL_02b0:  ldloc.3
    IL_02b1:  ldloc.s    V_11
    IL_02b3:  ldloc.s    V_13
    IL_02b5:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_02ba:  ldloc.s    V_12
    IL_02bc:  ldloc.s    V_14
    IL_02be:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_02c3:  ldc.r4     0.0
    IL_02c8:  ldarg.0
    IL_02c9:  ldfld      float32 Game.GamesWidget::m_bevel
    IL_02ce:  neg
    IL_02cf:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
    IL_02d4:  ldloc.0
    IL_02d5:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
    IL_02da:  ldloc.1
    IL_02db:  ldloc.2
    IL_02dc:  ldc.r4     0.0
    IL_02e1:  call       void Game.BevelledRectangleWidget::QueueBevelledRectangle(class [Engine]Engine.Graphics.TexturedBatch2D,
                                                                                   class [Engine]Engine.Graphics.FlatBatch2D,
                                                                                   valuetype [Engine]Engine.Vector2,
                                                                                   valuetype [Engine]Engine.Vector2,
                                                                                   float32,
                                                                                   float32,
                                                                                   valuetype [Engine]Engine.Color,
                                                                                   valuetype [Engine]Engine.Color,
                                                                                   valuetype [Engine]Engine.Color,
                                                                                   float32,
                                                                                   float32,
                                                                                   float32)
    IL_02e6:  ldnull
    IL_02e7:  ldloc.3
    IL_02e8:  ldloc.s    V_11
    IL_02ea:  ldloc.s    V_15
    IL_02ec:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_02f1:  ldloc.s    V_12
    IL_02f3:  ldloc.s    V_16
    IL_02f5:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_02fa:  ldc.r4     0.0
    IL_02ff:  ldarg.0
    IL_0300:  ldfld      float32 Game.GamesWidget::m_bevel
    IL_0305:  neg
    IL_0306:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
    IL_030b:  ldloc.0
    IL_030c:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
    IL_0311:  ldloc.1
    IL_0312:  ldloc.2
    IL_0313:  ldc.r4     0.0
    IL_0318:  call       void Game.BevelledRectangleWidget::QueueBevelledRectangle(class [Engine]Engine.Graphics.TexturedBatch2D,
                                                                                   class [Engine]Engine.Graphics.FlatBatch2D,
                                                                                   valuetype [Engine]Engine.Vector2,
                                                                                   valuetype [Engine]Engine.Vector2,
                                                                                   float32,
                                                                                   float32,
                                                                                   valuetype [Engine]Engine.Color,
                                                                                   valuetype [Engine]Engine.Color,
                                                                                   valuetype [Engine]Engine.Color,
                                                                                   float32,
                                                                                   float32,
                                                                                   float32)
    IL_031d:  ldloc.0
    IL_031e:  ldloc.1
    IL_031f:  ldloc.1
    IL_0320:  ldloc.1
    IL_0321:  ldc.r4     1.
    IL_0326:  newobj     instance void [Engine]Engine.Color::.ctor(float32,
                                                                   float32,
                                                                   float32,
                                                                   float32)
    IL_032b:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color)
    IL_0330:  stloc.s    V_17
    IL_0332:  ldloc.3
    IL_0333:  ldloc.s    V_10
    IL_0335:  ldloc.s    V_13
    IL_0337:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_033c:  ldloc.s    V_11
    IL_033e:  ldloc.s    V_16
    IL_0340:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0345:  ldc.r4     0.0
    IL_034a:  ldloc.s    V_17
    IL_034c:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      float32,
                                                                                      valuetype [Engine]Engine.Color)
    IL_0351:  ldloc.3
    IL_0352:  ldloc.s    V_11
    IL_0354:  ldloc.s    V_14
    IL_0356:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_035b:  ldloc.s    V_12
    IL_035d:  ldloc.s    V_15
    IL_035f:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0364:  ldc.r4     0.0
    IL_0369:  ldloc.s    V_17
    IL_036b:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      float32,
                                                                                      valuetype [Engine]Engine.Color)
    IL_0370:  call       valuetype Game.ScreenLayout Game.SettingsManager::get_ScreenLayout3()
    IL_0375:  ldc.i4.5
    IL_0376:  bne.un     IL_0543

    IL_037b:  ldc.r4     -100.
    IL_0380:  stloc.s    V_18
    IL_0382:  ldarg.0
    IL_0383:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0388:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_038d:  ldc.r4     2.
    IL_0392:  div
    IL_0393:  ldarg.0
    IL_0394:  ldfld      float32 Game.GamesWidget::m_spacing
    IL_0399:  ldc.r4     2.
    IL_039e:  div
    IL_039f:  sub
    IL_03a0:  ldarg.0
    IL_03a1:  ldfld      float32 Game.GamesWidget::m_bevel
    IL_03a6:  add
    IL_03a7:  stloc.s    V_19
    IL_03a9:  ldarg.0
    IL_03aa:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_03af:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_03b4:  ldc.r4     2.
    IL_03b9:  div
    IL_03ba:  ldarg.0
    IL_03bb:  ldfld      float32 Game.GamesWidget::m_spacing
    IL_03c0:  ldc.r4     2.
    IL_03c5:  div
    IL_03c6:  add
    IL_03c7:  ldarg.0
    IL_03c8:  ldfld      float32 Game.GamesWidget::m_bevel
    IL_03cd:  sub
    IL_03ce:  stloc.s    V_20
    IL_03d0:  ldarg.0
    IL_03d1:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_03d6:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_03db:  ldc.r4     100.
    IL_03e0:  add
    IL_03e1:  stloc.s    V_21
    IL_03e3:  ldc.r4     -100.
    IL_03e8:  stloc.s    V_22
    IL_03ea:  ldarg.0
    IL_03eb:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_03f0:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_03f5:  ldc.r4     2.
    IL_03fa:  div
    IL_03fb:  ldarg.0
    IL_03fc:  ldfld      float32 Game.GamesWidget::m_spacing
    IL_0401:  ldc.r4     2.
    IL_0406:  div
    IL_0407:  sub
    IL_0408:  ldarg.0
    IL_0409:  ldfld      float32 Game.GamesWidget::m_bevel
    IL_040e:  add
    IL_040f:  stloc.s    V_23
    IL_0411:  ldarg.0
    IL_0412:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0417:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_041c:  ldc.r4     2.
    IL_0421:  div
    IL_0422:  ldarg.0
    IL_0423:  ldfld      float32 Game.GamesWidget::m_spacing
    IL_0428:  ldc.r4     2.
    IL_042d:  div
    IL_042e:  add
    IL_042f:  ldarg.0
    IL_0430:  ldfld      float32 Game.GamesWidget::m_bevel
    IL_0435:  sub
    IL_0436:  stloc.s    V_24
    IL_0438:  ldarg.0
    IL_0439:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_043e:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0443:  ldc.r4     100.
    IL_0448:  add
    IL_0449:  stloc.s    V_25
    IL_044b:  ldnull
    IL_044c:  ldloc.3
    IL_044d:  ldloc.s    V_18
    IL_044f:  ldloc.s    V_22
    IL_0451:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0456:  ldloc.s    V_21
    IL_0458:  ldloc.s    V_23
    IL_045a:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_045f:  ldc.r4     0.0
    IL_0464:  ldarg.0
    IL_0465:  ldfld      float32 Game.GamesWidget::m_bevel
    IL_046a:  neg
    IL_046b:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
    IL_0470:  ldloc.0
    IL_0471:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
    IL_0476:  ldloc.1
    IL_0477:  ldloc.2
    IL_0478:  ldc.r4     0.0
    IL_047d:  call       void Game.BevelledRectangleWidget::QueueBevelledRectangle(class [Engine]Engine.Graphics.TexturedBatch2D,
                                                                                   class [Engine]Engine.Graphics.FlatBatch2D,
                                                                                   valuetype [Engine]Engine.Vector2,
                                                                                   valuetype [Engine]Engine.Vector2,
                                                                                   float32,
                                                                                   float32,
                                                                                   valuetype [Engine]Engine.Color,
                                                                                   valuetype [Engine]Engine.Color,
                                                                                   valuetype [Engine]Engine.Color,
                                                                                   float32,
                                                                                   float32,
                                                                                   float32)
    IL_0482:  ldnull
    IL_0483:  ldloc.3
    IL_0484:  ldloc.s    V_18
    IL_0486:  ldloc.s    V_24
    IL_0488:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_048d:  ldloc.s    V_19
    IL_048f:  ldloc.s    V_25
    IL_0491:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0496:  ldc.r4     0.0
    IL_049b:  ldarg.0
    IL_049c:  ldfld      float32 Game.GamesWidget::m_bevel
    IL_04a1:  neg
    IL_04a2:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
    IL_04a7:  ldloc.0
    IL_04a8:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
    IL_04ad:  ldloc.1
    IL_04ae:  ldloc.2
    IL_04af:  ldc.r4     0.0
    IL_04b4:  call       void Game.BevelledRectangleWidget::QueueBevelledRectangle(class [Engine]Engine.Graphics.TexturedBatch2D,
                                                                                   class [Engine]Engine.Graphics.FlatBatch2D,
                                                                                   valuetype [Engine]Engine.Vector2,
                                                                                   valuetype [Engine]Engine.Vector2,
                                                                                   float32,
                                                                                   float32,
                                                                                   valuetype [Engine]Engine.Color,
                                                                                   valuetype [Engine]Engine.Color,
                                                                                   valuetype [Engine]Engine.Color,
                                                                                   float32,
                                                                                   float32,
                                                                                   float32)
    IL_04b9:  ldnull
    IL_04ba:  ldloc.3
    IL_04bb:  ldloc.s    V_20
    IL_04bd:  ldloc.s    V_24
    IL_04bf:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_04c4:  ldloc.s    V_21
    IL_04c6:  ldloc.s    V_25
    IL_04c8:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_04cd:  ldc.r4     0.0
    IL_04d2:  ldarg.0
    IL_04d3:  ldfld      float32 Game.GamesWidget::m_bevel
    IL_04d8:  neg
    IL_04d9:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
    IL_04de:  ldloc.0
    IL_04df:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
    IL_04e4:  ldloc.1
    IL_04e5:  ldloc.2
    IL_04e6:  ldc.r4     0.0
    IL_04eb:  call       void Game.BevelledRectangleWidget::QueueBevelledRectangle(class [Engine]Engine.Graphics.TexturedBatch2D,
                                                                                   class [Engine]Engine.Graphics.FlatBatch2D,
                                                                                   valuetype [Engine]Engine.Vector2,
                                                                                   valuetype [Engine]Engine.Vector2,
                                                                                   float32,
                                                                                   float32,
                                                                                   valuetype [Engine]Engine.Color,
                                                                                   valuetype [Engine]Engine.Color,
                                                                                   valuetype [Engine]Engine.Color,
                                                                                   float32,
                                                                                   float32,
                                                                                   float32)
    IL_04f0:  ldloc.0
    IL_04f1:  ldloc.1
    IL_04f2:  ldloc.1
    IL_04f3:  ldloc.1
    IL_04f4:  ldc.r4     1.
    IL_04f9:  newobj     instance void [Engine]Engine.Color::.ctor(float32,
                                                                   float32,
                                                                   float32,
                                                                   float32)
    IL_04fe:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color)
    IL_0503:  stloc.s    V_26
    IL_0505:  ldloc.3
    IL_0506:  ldloc.s    V_18
    IL_0508:  ldloc.s    V_23
    IL_050a:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_050f:  ldloc.s    V_21
    IL_0511:  ldloc.s    V_24
    IL_0513:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0518:  ldc.r4     0.0
    IL_051d:  ldloc.s    V_26
    IL_051f:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      float32,
                                                                                      valuetype [Engine]Engine.Color)
    IL_0524:  ldloc.3
    IL_0525:  ldloc.s    V_19
    IL_0527:  ldloc.s    V_24
    IL_0529:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_052e:  ldloc.s    V_20
    IL_0530:  ldloc.s    V_25
    IL_0532:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0537:  ldc.r4     0.0
    IL_053c:  ldloc.s    V_26
    IL_053e:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      float32,
                                                                                      valuetype [Engine]Engine.Color)
    IL_0543:  call       valuetype Game.ScreenLayout Game.SettingsManager::get_ScreenLayout3()
    IL_0548:  ldc.i4.6
    IL_0549:  bne.un     IL_09c1

    IL_054e:  ldc.r4     -100.
    IL_0553:  stloc.s    V_27
    IL_0555:  ldarg.0
    IL_0556:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_055b:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0560:  ldc.r4     2.
    IL_0565:  div
    IL_0566:  ldarg.0
    IL_0567:  ldfld      float32 Game.GamesWidget::m_spacing
    IL_056c:  ldc.r4     2.
    IL_0571:  div
    IL_0572:  sub
    IL_0573:  ldarg.0
    IL_0574:  ldfld      float32 Game.GamesWidget::m_bevel
    IL_0579:  add
    IL_057a:  stloc.s    V_28
    IL_057c:  ldarg.0
    IL_057d:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0582:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0587:  ldc.r4     2.
    IL_058c:  div
    IL_058d:  ldarg.0
    IL_058e:  ldfld      float32 Game.GamesWidget::m_spacing
    IL_0593:  ldc.r4     2.
    IL_0598:  div
    IL_0599:  add
    IL_059a:  ldarg.0
    IL_059b:  ldfld      float32 Game.GamesWidget::m_bevel
    IL_05a0:  sub
    IL_05a1:  stloc.s    V_29
    IL_05a3:  ldarg.0
    IL_05a4:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_05a9:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_05ae:  ldc.r4     100.
    IL_05b3:  add
    IL_05b4:  stloc.s    V_30
    IL_05b6:  ldarg.0
    IL_05b7:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_05bc:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_05c1:  ldc.r4     4.
    IL_05c6:  div
    IL_05c7:  stloc.s    V_31
    IL_05c9:  ldarg.0
    IL_05ca:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_05cf:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_05d4:  ldc.r4     3.
    IL_05d9:  mul
    IL_05da:  ldc.r4     4.
    IL_05df:  div
    IL_05e0:  stloc.s    V_32
    IL_05e2:  ldc.r4     -100.
    IL_05e7:  stloc.s    V_33
    IL_05e9:  ldarg.0
    IL_05ea:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_05ef:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_05f4:  ldc.r4     2.
    IL_05f9:  div
    IL_05fa:  ldarg.0
    IL_05fb:  ldfld      float32 Game.GamesWidget::m_spacing
    IL_0600:  ldc.r4     2.
    IL_0605:  div
    IL_0606:  sub
    IL_0607:  ldarg.0
    IL_0608:  ldfld      float32 Game.GamesWidget::m_bevel
    IL_060d:  add
    IL_060e:  stloc.s    V_34
    IL_0610:  ldarg.0
    IL_0611:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0616:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_061b:  ldc.r4     2.
    IL_0620:  div
    IL_0621:  ldarg.0
    IL_0622:  ldfld      float32 Game.GamesWidget::m_spacing
    IL_0627:  ldc.r4     2.
    IL_062c:  div
    IL_062d:  add
    IL_062e:  ldarg.0
    IL_062f:  ldfld      float32 Game.GamesWidget::m_bevel
    IL_0634:  sub
    IL_0635:  stloc.s    V_35
    IL_0637:  ldarg.0
    IL_0638:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_063d:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0642:  ldc.r4     100.
    IL_0647:  add
    IL_0648:  stloc.s    V_36
    IL_064a:  ldnull
    IL_064b:  ldloc.3
    IL_064c:  ldloc.s    V_27
    IL_064e:  ldloc.s    V_33
    IL_0650:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0655:  ldloc.s    V_28
    IL_0657:  ldloc.s    V_34
    IL_0659:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_065e:  ldc.r4     0.0
    IL_0663:  ldarg.0
    IL_0664:  ldfld      float32 Game.GamesWidget::m_bevel
    IL_0669:  neg
    IL_066a:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
    IL_066f:  ldloc.0
    IL_0670:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
    IL_0675:  ldloc.1
    IL_0676:  ldloc.2
    IL_0677:  ldc.r4     0.0
    IL_067c:  call       void Game.BevelledRectangleWidget::QueueBevelledRectangle(class [Engine]Engine.Graphics.TexturedBatch2D,
                                                                                   class [Engine]Engine.Graphics.FlatBatch2D,
                                                                                   valuetype [Engine]Engine.Vector2,
                                                                                   valuetype [Engine]Engine.Vector2,
                                                                                   float32,
                                                                                   float32,
                                                                                   valuetype [Engine]Engine.Color,
                                                                                   valuetype [Engine]Engine.Color,
                                                                                   valuetype [Engine]Engine.Color,
                                                                                   float32,
                                                                                   float32,
                                                                                   float32)
    IL_0681:  ldnull
    IL_0682:  ldloc.3
    IL_0683:  ldloc.s    V_29
    IL_0685:  ldloc.s    V_33
    IL_0687:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_068c:  ldloc.s    V_30
    IL_068e:  ldloc.s    V_34
    IL_0690:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0695:  ldc.r4     0.0
    IL_069a:  ldarg.0
    IL_069b:  ldfld      float32 Game.GamesWidget::m_bevel
    IL_06a0:  neg
    IL_06a1:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
    IL_06a6:  ldloc.0
    IL_06a7:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
    IL_06ac:  ldloc.1
    IL_06ad:  ldloc.2
    IL_06ae:  ldc.r4     0.0
    IL_06b3:  call       void Game.BevelledRectangleWidget::QueueBevelledRectangle(class [Engine]Engine.Graphics.TexturedBatch2D,
                                                                                   class [Engine]Engine.Graphics.FlatBatch2D,
                                                                                   valuetype [Engine]Engine.Vector2,
                                                                                   valuetype [Engine]Engine.Vector2,
                                                                                   float32,
                                                                                   float32,
                                                                                   valuetype [Engine]Engine.Color,
                                                                                   valuetype [Engine]Engine.Color,
                                                                                   valuetype [Engine]Engine.Color,
                                                                                   float32,
                                                                                   float32,
                                                                                   float32)
    IL_06b8:  ldnull
    IL_06b9:  ldloc.3
    IL_06ba:  ldloc.s    V_31
    IL_06bc:  ldloc.s    V_35
    IL_06be:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_06c3:  ldloc.s    V_32
    IL_06c5:  ldloc.s    V_36
    IL_06c7:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_06cc:  ldc.r4     0.0
    IL_06d1:  ldarg.0
    IL_06d2:  ldfld      float32 Game.GamesWidget::m_bevel
    IL_06d7:  neg
    IL_06d8:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
    IL_06dd:  ldloc.0
    IL_06de:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
    IL_06e3:  ldloc.1
    IL_06e4:  ldloc.2
    IL_06e5:  ldc.r4     0.0
    IL_06ea:  call       void Game.BevelledRectangleWidget::QueueBevelledRectangle(class [Engine]Engine.Graphics.TexturedBatch2D,
                                                                                   class [Engine]Engine.Graphics.FlatBatch2D,
                                                                                   valuetype [Engine]Engine.Vector2,
                                                                                   valuetype [Engine]Engine.Vector2,
                                                                                   float32,
                                                                                   float32,
                                                                                   valuetype [Engine]Engine.Color,
                                                                                   valuetype [Engine]Engine.Color,
                                                                                   valuetype [Engine]Engine.Color,
                                                                                   float32,
                                                                                   float32,
                                                                                   float32)
    IL_06ef:  ldloc.0
    IL_06f0:  ldloc.1
    IL_06f1:  ldloc.1
    IL_06f2:  ldloc.1
    IL_06f3:  ldc.r4     1.
    IL_06f8:  newobj     instance void [Engine]Engine.Color::.ctor(float32,
                                                                   float32,
                                                                   float32,
                                                                   float32)
    IL_06fd:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color)
    IL_0702:  stloc.s    V_37
    IL_0704:  ldloc.3
    IL_0705:  ldloc.s    V_28
    IL_0707:  ldloc.s    V_33
    IL_0709:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_070e:  ldloc.s    V_29
    IL_0710:  ldloc.s    V_34
    IL_0712:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0717:  ldc.r4     0.0
    IL_071c:  ldloc.s    V_37
    IL_071e:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      float32,
                                                                                      valuetype [Engine]Engine.Color)
    IL_0723:  ldloc.3
    IL_0724:  ldloc.s    V_27
    IL_0726:  ldloc.s    V_34
    IL_0728:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_072d:  ldloc.s    V_30
    IL_072f:  ldloc.s    V_35
    IL_0731:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0736:  ldc.r4     0.0
    IL_073b:  ldloc.s    V_37
    IL_073d:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      float32,
                                                                                      valuetype [Engine]Engine.Color)
    IL_0742:  ldloc.3
    IL_0743:  ldloc.s    V_27
    IL_0745:  ldloc.s    V_35
    IL_0747:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_074c:  ldloc.s    V_31
    IL_074e:  ldloc.s    V_36
    IL_0750:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0755:  ldc.r4     0.0
    IL_075a:  ldloc.s    V_37
    IL_075c:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      float32,
                                                                                      valuetype [Engine]Engine.Color)
    IL_0761:  ldloc.3
    IL_0762:  ldloc.s    V_32
    IL_0764:  ldloc.s    V_35
    IL_0766:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_076b:  ldloc.s    V_30
    IL_076d:  ldloc.s    V_36
    IL_076f:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0774:  ldc.r4     0.0
    IL_0779:  ldloc.s    V_37
    IL_077b:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      float32,
                                                                                      valuetype [Engine]Engine.Color)
    IL_0780:  br         IL_09c1

    IL_0785:  ldarg.0
    IL_0786:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_078b:  callvirt   instance int32 Game.WidgetsList::get_Count()
    IL_0790:  ldc.i4.4
    IL_0791:  bne.un     IL_09a8

    IL_0796:  ldc.r4     -100.
    IL_079b:  stloc.s    V_38
    IL_079d:  ldarg.0
    IL_079e:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_07a3:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_07a8:  ldc.r4     2.
    IL_07ad:  div
    IL_07ae:  ldarg.0
    IL_07af:  ldfld      float32 Game.GamesWidget::m_spacing
    IL_07b4:  ldc.r4     2.
    IL_07b9:  div
    IL_07ba:  sub
    IL_07bb:  ldarg.0
    IL_07bc:  ldfld      float32 Game.GamesWidget::m_bevel
    IL_07c1:  add
    IL_07c2:  stloc.s    V_39
    IL_07c4:  ldarg.0
    IL_07c5:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_07ca:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_07cf:  ldc.r4     2.
    IL_07d4:  div
    IL_07d5:  ldarg.0
    IL_07d6:  ldfld      float32 Game.GamesWidget::m_spacing
    IL_07db:  ldc.r4     2.
    IL_07e0:  div
    IL_07e1:  add
    IL_07e2:  ldarg.0
    IL_07e3:  ldfld      float32 Game.GamesWidget::m_bevel
    IL_07e8:  sub
    IL_07e9:  stloc.s    V_40
    IL_07eb:  ldarg.0
    IL_07ec:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_07f1:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_07f6:  ldc.r4     100.
    IL_07fb:  add
    IL_07fc:  stloc.s    V_41
    IL_07fe:  ldc.r4     -100.
    IL_0803:  stloc.s    V_42
    IL_0805:  ldarg.0
    IL_0806:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_080b:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0810:  ldc.r4     2.
    IL_0815:  div
    IL_0816:  ldarg.0
    IL_0817:  ldfld      float32 Game.GamesWidget::m_spacing
    IL_081c:  ldc.r4     2.
    IL_0821:  div
    IL_0822:  sub
    IL_0823:  ldarg.0
    IL_0824:  ldfld      float32 Game.GamesWidget::m_bevel
    IL_0829:  add
    IL_082a:  stloc.s    V_43
    IL_082c:  ldarg.0
    IL_082d:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0832:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0837:  ldc.r4     2.
    IL_083c:  div
    IL_083d:  ldarg.0
    IL_083e:  ldfld      float32 Game.GamesWidget::m_spacing
    IL_0843:  ldc.r4     2.
    IL_0848:  div
    IL_0849:  add
    IL_084a:  ldarg.0
    IL_084b:  ldfld      float32 Game.GamesWidget::m_bevel
    IL_0850:  sub
    IL_0851:  stloc.s    V_44
    IL_0853:  ldarg.0
    IL_0854:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0859:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_085e:  ldc.r4     100.
    IL_0863:  add
    IL_0864:  stloc.s    V_45
    IL_0866:  ldnull
    IL_0867:  ldloc.3
    IL_0868:  ldloc.s    V_38
    IL_086a:  ldloc.s    V_42
    IL_086c:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0871:  ldloc.s    V_39
    IL_0873:  ldloc.s    V_43
    IL_0875:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_087a:  ldc.r4     0.0
    IL_087f:  ldarg.0
    IL_0880:  ldfld      float32 Game.GamesWidget::m_bevel
    IL_0885:  neg
    IL_0886:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
    IL_088b:  ldloc.0
    IL_088c:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
    IL_0891:  ldloc.1
    IL_0892:  ldloc.2
    IL_0893:  ldc.r4     0.0
    IL_0898:  call       void Game.BevelledRectangleWidget::QueueBevelledRectangle(class [Engine]Engine.Graphics.TexturedBatch2D,
                                                                                   class [Engine]Engine.Graphics.FlatBatch2D,
                                                                                   valuetype [Engine]Engine.Vector2,
                                                                                   valuetype [Engine]Engine.Vector2,
                                                                                   float32,
                                                                                   float32,
                                                                                   valuetype [Engine]Engine.Color,
                                                                                   valuetype [Engine]Engine.Color,
                                                                                   valuetype [Engine]Engine.Color,
                                                                                   float32,
                                                                                   float32,
                                                                                   float32)
    IL_089d:  ldnull
    IL_089e:  ldloc.3
    IL_089f:  ldloc.s    V_40
    IL_08a1:  ldloc.s    V_42
    IL_08a3:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_08a8:  ldloc.s    V_41
    IL_08aa:  ldloc.s    V_43
    IL_08ac:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_08b1:  ldc.r4     0.0
    IL_08b6:  ldarg.0
    IL_08b7:  ldfld      float32 Game.GamesWidget::m_bevel
    IL_08bc:  neg
    IL_08bd:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
    IL_08c2:  ldloc.0
    IL_08c3:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
    IL_08c8:  ldloc.1
    IL_08c9:  ldloc.2
    IL_08ca:  ldc.r4     0.0
    IL_08cf:  call       void Game.BevelledRectangleWidget::QueueBevelledRectangle(class [Engine]Engine.Graphics.TexturedBatch2D,
                                                                                   class [Engine]Engine.Graphics.FlatBatch2D,
                                                                                   valuetype [Engine]Engine.Vector2,
                                                                                   valuetype [Engine]Engine.Vector2,
                                                                                   float32,
                                                                                   float32,
                                                                                   valuetype [Engine]Engine.Color,
                                                                                   valuetype [Engine]Engine.Color,
                                                                                   valuetype [Engine]Engine.Color,
                                                                                   float32,
                                                                                   float32,
                                                                                   float32)
    IL_08d4:  ldnull
    IL_08d5:  ldloc.3
    IL_08d6:  ldloc.s    V_38
    IL_08d8:  ldloc.s    V_44
    IL_08da:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_08df:  ldloc.s    V_39
    IL_08e1:  ldloc.s    V_45
    IL_08e3:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_08e8:  ldc.r4     0.0
    IL_08ed:  ldarg.0
    IL_08ee:  ldfld      float32 Game.GamesWidget::m_bevel
    IL_08f3:  neg
    IL_08f4:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
    IL_08f9:  ldloc.0
    IL_08fa:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
    IL_08ff:  ldloc.1
    IL_0900:  ldloc.2
    IL_0901:  ldc.r4     0.0
    IL_0906:  call       void Game.BevelledRectangleWidget::QueueBevelledRectangle(class [Engine]Engine.Graphics.TexturedBatch2D,
                                                                                   class [Engine]Engine.Graphics.FlatBatch2D,
                                                                                   valuetype [Engine]Engine.Vector2,
                                                                                   valuetype [Engine]Engine.Vector2,
                                                                                   float32,
                                                                                   float32,
                                                                                   valuetype [Engine]Engine.Color,
                                                                                   valuetype [Engine]Engine.Color,
                                                                                   valuetype [Engine]Engine.Color,
                                                                                   float32,
                                                                                   float32,
                                                                                   float32)
    IL_090b:  ldnull
    IL_090c:  ldloc.3
    IL_090d:  ldloc.s    V_40
    IL_090f:  ldloc.s    V_44
    IL_0911:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0916:  ldloc.s    V_41
    IL_0918:  ldloc.s    V_45
    IL_091a:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_091f:  ldc.r4     0.0
    IL_0924:  ldarg.0
    IL_0925:  ldfld      float32 Game.GamesWidget::m_bevel
    IL_092a:  neg
    IL_092b:  ldarg.0
    IL_092c:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0931:  callvirt   instance int32 Game.WidgetsList::get_Count()
    IL_0936:  ldc.i4.3
    IL_0937:  beq.s      IL_0940

    IL_0939:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
    IL_093e:  br.s       IL_0941

    IL_0940:  ldloc.0
    IL_0941:  ldloc.0
    IL_0942:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
    IL_0947:  ldloc.1
    IL_0948:  ldloc.2
    IL_0949:  ldc.r4     0.0
    IL_094e:  call       void Game.BevelledRectangleWidget::QueueBevelledRectangle(class [Engine]Engine.Graphics.TexturedBatch2D,
                                                                                   class [Engine]Engine.Graphics.FlatBatch2D,
                                                                                   valuetype [Engine]Engine.Vector2,
                                                                                   valuetype [Engine]Engine.Vector2,
                                                                                   float32,
                                                                                   float32,
                                                                                   valuetype [Engine]Engine.Color,
                                                                                   valuetype [Engine]Engine.Color,
                                                                                   valuetype [Engine]Engine.Color,
                                                                                   float32,
                                                                                   float32,
                                                                                   float32)
    IL_0953:  ldloc.0
    IL_0954:  ldloc.1
    IL_0955:  ldloc.1
    IL_0956:  ldloc.1
    IL_0957:  ldc.r4     1.
    IL_095c:  newobj     instance void [Engine]Engine.Color::.ctor(float32,
                                                                   float32,
                                                                   float32,
                                                                   float32)
    IL_0961:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color)
    IL_0966:  stloc.s    V_46
    IL_0968:  ldloc.3
    IL_0969:  ldloc.s    V_39
    IL_096b:  ldloc.s    V_42
    IL_096d:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0972:  ldloc.s    V_40
    IL_0974:  ldloc.s    V_45
    IL_0976:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_097b:  ldc.r4     0.0
    IL_0980:  ldloc.s    V_46
    IL_0982:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      float32,
                                                                                      valuetype [Engine]Engine.Color)
    IL_0987:  ldloc.3
    IL_0988:  ldloc.s    V_38
    IL_098a:  ldloc.s    V_43
    IL_098c:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0991:  ldloc.s    V_41
    IL_0993:  ldloc.s    V_44
    IL_0995:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_099a:  ldc.r4     0.0
    IL_099f:  ldloc.s    V_46
    IL_09a1:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      float32,
                                                                                      valuetype [Engine]Engine.Color)
    IL_09a6:  br.s       IL_09c1

    IL_09a8:  ldarg.0
    IL_09a9:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_09ae:  callvirt   instance int32 Game.WidgetsList::get_Count()
    IL_09b3:  ldc.i4.4
    IL_09b4:  ble.s      IL_09c1

    IL_09b6:  ldstr      "Too many GameWidgets."
    IL_09bb:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_09c0:  throw

    IL_09c1:  ldloc.3
    IL_09c2:  ldarg.0
    IL_09c3:  call       instance valuetype [Engine]Engine.Matrix Game.Widget::get_GlobalTransform()
    IL_09c8:  ldloc.s    V_4
    IL_09ca:  ldc.i4.m1
    IL_09cb:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::TransformTriangles(valuetype [Engine]Engine.Matrix,
                                                                                               int32,
                                                                                               int32)
    IL_09d0:  ret
  } // end of method GamesWidget::Overdraw

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.ContainerWidget::.ctor()
    IL_0006:  ret
  } // end of method GamesWidget::.ctor

} // end of class Game.GamesWidget