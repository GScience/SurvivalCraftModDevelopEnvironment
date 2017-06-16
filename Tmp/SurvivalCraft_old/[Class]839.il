.class public auto ansi beforefieldinit Game.FurnitureDesignWidget
       extends Game.Widget
{
  .class auto ansi sealed nested public ViewMode
         extends [System.Runtime]System.Enum
  {
    .field public specialname rtspecialname int32 value__
    .field public static literal valuetype Game.FurnitureDesignWidget/ViewMode Side = int32(0x00000000)
    .field public static literal valuetype Game.FurnitureDesignWidget/ViewMode Top = int32(0x00000001)
    .field public static literal valuetype Game.FurnitureDesignWidget/ViewMode Front = int32(0x00000002)
    .field public static literal valuetype Game.FurnitureDesignWidget/ViewMode Perspective = int32(0x00000003)
  } // end of class ViewMode

  .field private class [Engine]Engine.Graphics.PrimitivesRenderer2D m_primitivesRenderer2d
  .field private class [Engine]Engine.Graphics.PrimitivesRenderer3D m_primitivesRenderer3d
  .field private valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> m_dragStartPoint
  .field private valuetype [Engine]Engine.Vector3 m_direction
  .field private valuetype [Engine]Engine.Vector2 m_rotationSpeed
  .field private static bool DrawDebugFurniture
  .field private valuetype [Engine]Engine.Vector2 '<Size>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype Game.FurnitureDesignWidget/ViewMode '<Mode>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class Game.FurnitureDesign '<Design>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       111 (0x6f)
    .maxstack  4
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void [Engine]Engine.Graphics.PrimitivesRenderer2D::.ctor()
    IL_0006:  stfld      class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.FurnitureDesignWidget::m_primitivesRenderer2d
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void [Engine]Engine.Graphics.PrimitivesRenderer3D::.ctor()
    IL_0011:  stfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.FurnitureDesignWidget::m_primitivesRenderer3d
    IL_0016:  ldarg.0
    IL_0017:  call       instance void Game.Widget::.ctor()
    IL_001c:  ldarg.0
    IL_001d:  ldc.i4.1
    IL_001e:  call       instance void Game.Widget::set_ClampToBounds(bool)
    IL_0023:  ldarg.0
    IL_0024:  ldc.r4     (00 00 80 7F)
    IL_0029:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_002e:  call       instance void Game.FurnitureDesignWidget::set_Size(valuetype [Engine]Engine.Vector2)
    IL_0033:  ldarg.0
    IL_0034:  ldc.i4.3
    IL_0035:  call       instance void Game.FurnitureDesignWidget::set_Mode(valuetype Game.FurnitureDesignWidget/ViewMode)
    IL_003a:  ldarg.0
    IL_003b:  ldc.r4     1.
    IL_0040:  ldc.r4     -0.5
    IL_0045:  ldc.r4     -1.
    IL_004a:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_004f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0054:  stfld      valuetype [Engine]Engine.Vector3 Game.FurnitureDesignWidget::m_direction
    IL_0059:  ldarg.0
    IL_005a:  ldc.r4     2.
    IL_005f:  ldc.r4     0.5
    IL_0064:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0069:  stfld      valuetype [Engine]Engine.Vector2 Game.FurnitureDesignWidget::m_rotationSpeed
    IL_006e:  ret
  } // end of method FurnitureDesignWidget::.ctor

  .method public hidebysig specialname instance valuetype [Engine]Engine.Vector2 
          get_Size() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector2 Game.FurnitureDesignWidget::'<Size>k__BackingField'
    IL_0006:  ret
  } // end of method FurnitureDesignWidget::get_Size

  .method public hidebysig specialname instance void 
          set_Size(valuetype [Engine]Engine.Vector2 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Vector2 Game.FurnitureDesignWidget::'<Size>k__BackingField'
    IL_0007:  ret
  } // end of method FurnitureDesignWidget::set_Size

  .method public hidebysig specialname instance valuetype Game.FurnitureDesignWidget/ViewMode 
          get_Mode() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype Game.FurnitureDesignWidget/ViewMode Game.FurnitureDesignWidget::'<Mode>k__BackingField'
    IL_0006:  ret
  } // end of method FurnitureDesignWidget::get_Mode

  .method public hidebysig specialname instance void 
          set_Mode(valuetype Game.FurnitureDesignWidget/ViewMode 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype Game.FurnitureDesignWidget/ViewMode Game.FurnitureDesignWidget::'<Mode>k__BackingField'
    IL_0007:  ret
  } // end of method FurnitureDesignWidget::set_Mode

  .method public hidebysig specialname instance class Game.FurnitureDesign 
          get_Design() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.FurnitureDesign Game.FurnitureDesignWidget::'<Design>k__BackingField'
    IL_0006:  ret
  } // end of method FurnitureDesignWidget::get_Design

  .method public hidebysig specialname instance void 
          set_Design(class Game.FurnitureDesign 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.FurnitureDesign Game.FurnitureDesignWidget::'<Design>k__BackingField'
    IL_0007:  ret
  } // end of method FurnitureDesignWidget::set_Design

  .method public hidebysig virtual instance void 
          Draw() cil managed
  {
    // 代码大小       2235 (0x8bb)
    .maxstack  9
    .locals init (valuetype [Engine]Engine.Matrix V_0,
             valuetype [Engine]Engine.Matrix V_1,
             class Game.FurnitureGeometry V_2,
             valuetype [Engine]Engine.Graphics.Viewport V_3,
             float32 V_4,
             valuetype [Engine]Engine.Vector3 V_5,
             valuetype [Engine]Engine.Matrix V_6,
             valuetype [Engine]Engine.Matrix V_7,
             valuetype [Engine]Engine.Matrix V_8,
             class [Engine]Engine.Graphics.FlatBatch3D V_9,
             valuetype [Engine]Engine.Color V_10,
             int32 V_11,
             float32 V_12,
             valuetype [Engine]Engine.Color V_13,
             valuetype [Engine]Engine.Vector3 V_14,
             valuetype [Engine]Engine.Vector3 V_15,
             valuetype [Engine]Engine.Graphics.Viewport V_16,
             float32 V_17,
             float32 V_18,
             float32 V_19,
             float32 V_20,
             float32 V_21,
             float32 V_22,
             float32 V_23,
             float32 V_24,
             valuetype [Engine]Engine.Matrix V_25,
             valuetype [Engine]Engine.Matrix V_26,
             class [Engine]Engine.Graphics.FlatBatch2D V_27,
             int32 V_28,
             float32 V_29,
             valuetype [Engine]Engine.Vector2 V_30,
             valuetype [Engine]Engine.Vector2 V_31,
             valuetype [Engine]Engine.Vector2 V_32,
             valuetype [Engine]Engine.Vector2 V_33,
             valuetype [Engine]Engine.Color V_34,
             valuetype [Engine]Engine.Color V_35,
             int32 V_36,
             valuetype [Engine]Engine.Color V_37,
             float32 V_38)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.FurnitureDesign Game.FurnitureDesignWidget::get_Design()
    IL_0006:  brtrue.s   IL_0009

    IL_0008:  ret

    IL_0009:  ldarg.0
    IL_000a:  call       instance valuetype Game.FurnitureDesignWidget/ViewMode Game.FurnitureDesignWidget::get_Mode()
    IL_000f:  ldc.i4.3
    IL_0010:  bne.un     IL_03bc

    IL_0015:  call       valuetype [Engine]Engine.Graphics.Viewport [Engine]Engine.Graphics.Display::get_Viewport()
    IL_001a:  stloc.3
    IL_001b:  ldarg.0
    IL_001c:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0021:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0026:  call       float32 Game.WidgetsManager::get_Scale()
    IL_002b:  mul
    IL_002c:  ldloc.3
    IL_002d:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Width
    IL_0032:  conv.r4
    IL_0033:  div
    IL_0034:  ldarg.0
    IL_0035:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_003a:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_003f:  call       float32 Game.WidgetsManager::get_Scale()
    IL_0044:  mul
    IL_0045:  ldloc.3
    IL_0046:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Height
    IL_004b:  conv.r4
    IL_004c:  div
    IL_004d:  stloc.s    V_4
    IL_004f:  ldloca.s   V_5
    IL_0051:  ldc.r4     0.5
    IL_0056:  ldc.r4     0.5
    IL_005b:  ldc.r4     0.5
    IL_0060:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0065:  ldc.r4     1.5
    IL_006a:  ldarg.0
    IL_006b:  ldfld      valuetype [Engine]Engine.Vector3 Game.FurnitureDesignWidget::m_direction
    IL_0070:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0075:  ldloc.s    V_5
    IL_0077:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_007c:  ldloc.s    V_5
    IL_007e:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_0083:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateLookAt(valuetype [Engine]Engine.Vector3,
                                                                                             valuetype [Engine]Engine.Vector3,
                                                                                             valuetype [Engine]Engine.Vector3)
    IL_0088:  stloc.s    V_6
    IL_008a:  ldc.r4     1.2
    IL_008f:  ldarg.0
    IL_0090:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0095:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_009a:  ldarg.0
    IL_009b:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_00a0:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00a5:  div
    IL_00a6:  ldc.r4     0.40000001
    IL_00ab:  ldc.r4     4.
    IL_00b0:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreatePerspectiveFieldOfView(float32,
                                                                                                             float32,
                                                                                                             float32,
                                                                                                             float32)
    IL_00b5:  stloc.s    V_7
    IL_00b7:  ldloc.s    V_4
    IL_00b9:  ldc.r4     1.
    IL_00be:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateScale(float32,
                                                                                            float32,
                                                                                            float32)
    IL_00c3:  ldc.r4     -1.
    IL_00c8:  ldc.r4     2.
    IL_00cd:  ldloc.3
    IL_00ce:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Width
    IL_00d3:  conv.r4
    IL_00d4:  div
    IL_00d5:  ldc.r4     0.5
    IL_00da:  ldarg.0
    IL_00db:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_00e0:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_00e5:  mul
    IL_00e6:  ldarg.0
    IL_00e7:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_00ec:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_00f1:  add
    IL_00f2:  mul
    IL_00f3:  call       float32 Game.WidgetsManager::get_Scale()
    IL_00f8:  mul
    IL_00f9:  add
    IL_00fa:  ldc.r4     1.
    IL_00ff:  ldc.r4     2.
    IL_0104:  ldloc.3
    IL_0105:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Height
    IL_010a:  conv.r4
    IL_010b:  div
    IL_010c:  ldc.r4     0.5
    IL_0111:  ldarg.0
    IL_0112:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0117:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_011c:  mul
    IL_011d:  ldarg.0
    IL_011e:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_0123:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0128:  add
    IL_0129:  mul
    IL_012a:  call       float32 Game.WidgetsManager::get_Scale()
    IL_012f:  mul
    IL_0130:  sub
    IL_0131:  ldc.r4     0.0
    IL_0136:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_013b:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0140:  stloc.s    V_8
    IL_0142:  ldloc.s    V_6
    IL_0144:  ldloc.s    V_7
    IL_0146:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_014b:  ldloc.s    V_8
    IL_014d:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0152:  stloc.0
    IL_0153:  ldarg.0
    IL_0154:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.FurnitureDesignWidget::m_primitivesRenderer3d
    IL_0159:  ldc.i4.1
    IL_015a:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::DepthRead
    IL_015f:  ldnull
    IL_0160:  ldnull
    IL_0161:  callvirt   instance class [Engine]Engine.Graphics.FlatBatch3D [Engine]Engine.Graphics.PrimitivesRenderer3D::FlatBatch(int32,
                                                                                                                                    class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                    class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                    class [Engine]Engine.Graphics.BlendState)
    IL_0166:  stloc.s    V_9
    IL_0168:  ldc.i4.0
    IL_0169:  stloc.s    V_11
    IL_016b:  br         IL_02ae

    IL_0170:  ldloc.s    V_11
    IL_0172:  conv.r4
    IL_0173:  ldarg.0
    IL_0174:  call       instance class Game.FurnitureDesign Game.FurnitureDesignWidget::get_Design()
    IL_0179:  callvirt   instance int32 Game.FurnitureDesign::get_Resolution()
    IL_017e:  conv.r4
    IL_017f:  div
    IL_0180:  stloc.s    V_12
    IL_0182:  ldloc.s    V_11
    IL_0184:  ldc.i4.2
    IL_0185:  rem
    IL_0186:  brfalse.s  IL_0197

    IL_0188:  ldc.i4.s   28
    IL_018a:  ldc.i4.s   28
    IL_018c:  ldc.i4.s   28
    IL_018e:  ldc.i4.s   28
    IL_0190:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32,
                                                                   int32)
    IL_0195:  br.s       IL_01a4

    IL_0197:  ldc.i4.s   56
    IL_0199:  ldc.i4.s   56
    IL_019b:  ldc.i4.s   56
    IL_019d:  ldc.i4.s   56
    IL_019f:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32,
                                                                   int32)
    IL_01a4:  stloc.s    V_13
    IL_01a6:  ldloc.s    V_9
    IL_01a8:  ldloc.s    V_12
    IL_01aa:  ldc.r4     0.0
    IL_01af:  ldc.r4     0.0
    IL_01b4:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_01b9:  ldloc.s    V_12
    IL_01bb:  ldc.r4     0.0
    IL_01c0:  ldc.r4     1.
    IL_01c5:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_01ca:  ldloc.s    V_13
    IL_01cc:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch3D::QueueLine(valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Color)
    IL_01d1:  ldloc.s    V_9
    IL_01d3:  ldc.r4     0.0
    IL_01d8:  ldc.r4     0.0
    IL_01dd:  ldloc.s    V_12
    IL_01df:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_01e4:  ldc.r4     1.
    IL_01e9:  ldc.r4     0.0
    IL_01ee:  ldloc.s    V_12
    IL_01f0:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_01f5:  ldloc.s    V_13
    IL_01f7:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch3D::QueueLine(valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Color)
    IL_01fc:  ldloc.s    V_9
    IL_01fe:  ldc.r4     0.0
    IL_0203:  ldloc.s    V_12
    IL_0205:  ldc.r4     0.0
    IL_020a:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_020f:  ldc.r4     0.0
    IL_0214:  ldloc.s    V_12
    IL_0216:  ldc.r4     1.
    IL_021b:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0220:  ldloc.s    V_13
    IL_0222:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch3D::QueueLine(valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Color)
    IL_0227:  ldloc.s    V_9
    IL_0229:  ldc.r4     0.0
    IL_022e:  ldc.r4     0.0
    IL_0233:  ldloc.s    V_12
    IL_0235:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_023a:  ldc.r4     0.0
    IL_023f:  ldc.r4     1.
    IL_0244:  ldloc.s    V_12
    IL_0246:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_024b:  ldloc.s    V_13
    IL_024d:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch3D::QueueLine(valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Color)
    IL_0252:  ldloc.s    V_9
    IL_0254:  ldc.r4     0.0
    IL_0259:  ldloc.s    V_12
    IL_025b:  ldc.r4     1.
    IL_0260:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0265:  ldc.r4     1.
    IL_026a:  ldloc.s    V_12
    IL_026c:  ldc.r4     1.
    IL_0271:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0276:  ldloc.s    V_13
    IL_0278:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch3D::QueueLine(valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Color)
    IL_027d:  ldloc.s    V_9
    IL_027f:  ldloc.s    V_12
    IL_0281:  ldc.r4     0.0
    IL_0286:  ldc.r4     1.
    IL_028b:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0290:  ldloc.s    V_12
    IL_0292:  ldc.r4     1.
    IL_0297:  ldc.r4     1.
    IL_029c:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_02a1:  ldloc.s    V_13
    IL_02a3:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch3D::QueueLine(valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Color)
    IL_02a8:  ldloc.s    V_11
    IL_02aa:  ldc.i4.1
    IL_02ab:  add
    IL_02ac:  stloc.s    V_11
    IL_02ae:  ldloc.s    V_11
    IL_02b0:  ldarg.0
    IL_02b1:  call       instance class Game.FurnitureDesign Game.FurnitureDesignWidget::get_Design()
    IL_02b6:  callvirt   instance int32 Game.FurnitureDesign::get_Resolution()
    IL_02bb:  ble        IL_0170

    IL_02c0:  ldloca.s   V_10
    IL_02c2:  ldc.i4.s   64
    IL_02c4:  ldc.i4.s   64
    IL_02c6:  ldc.i4.s   64
    IL_02c8:  ldc.i4     0xff
    IL_02cd:  call       instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32,
                                                                   int32)
    IL_02d2:  ldarg.0
    IL_02d3:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.FurnitureDesignWidget::m_primitivesRenderer3d
    IL_02d8:  ldstr      "Fonts/Pericles32"
    IL_02dd:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Media.BitmapFont>(string)
    IL_02e2:  ldc.i4.1
    IL_02e3:  ldnull
    IL_02e4:  ldnull
    IL_02e5:  ldnull
    IL_02e6:  ldnull
    IL_02e7:  callvirt   instance class [Engine]Engine.Graphics.FontBatch3D [Engine]Engine.Graphics.PrimitivesRenderer3D::FontBatch(class [Engine]Engine.Media.BitmapFont,
                                                                                                                                    int32,
                                                                                                                                    class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                    class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                    class [Engine]Engine.Graphics.BlendState,
                                                                                                                                    class [Engine]Engine.Graphics.SamplerState)
    IL_02ec:  dup
    IL_02ed:  ldstr      "Front"
    IL_02f2:  ldc.r4     0.5
    IL_02f7:  ldc.r4     0.0
    IL_02fc:  ldc.r4     0.0
    IL_0301:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0306:  ldc.r4     3.e-003
    IL_030b:  ldc.r4     -1.
    IL_0310:  ldc.r4     0.0
    IL_0315:  ldc.r4     0.0
    IL_031a:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_031f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0324:  ldc.r4     3.e-003
    IL_0329:  ldc.r4     0.0
    IL_032e:  ldc.r4     0.0
    IL_0333:  ldc.r4     -1.
    IL_0338:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_033d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0342:  ldloc.s    V_10
    IL_0344:  ldc.i4.1
    IL_0345:  callvirt   instance void [Engine]Engine.Graphics.FontBatch3D::QueueText(string,
                                                                                      valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Color,
                                                                                      valuetype [Engine]Engine.Graphics.TextAnchor)
    IL_034a:  ldstr      "Side"
    IL_034f:  ldc.r4     1.
    IL_0354:  ldc.r4     0.0
    IL_0359:  ldc.r4     0.5
    IL_035e:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0363:  ldc.r4     3.e-003
    IL_0368:  ldc.r4     0.0
    IL_036d:  ldc.r4     0.0
    IL_0372:  ldc.r4     -1.
    IL_0377:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_037c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0381:  ldc.r4     3.e-003
    IL_0386:  ldc.r4     1.
    IL_038b:  ldc.r4     0.0
    IL_0390:  ldc.r4     0.0
    IL_0395:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_039a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_039f:  ldloc.s    V_10
    IL_03a1:  ldc.i4.1
    IL_03a2:  callvirt   instance void [Engine]Engine.Graphics.FontBatch3D::QueueText(string,
                                                                                      valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Color,
                                                                                      valuetype [Engine]Engine.Graphics.TextAnchor)
    IL_03a7:  ldsfld     bool Game.FurnitureDesignWidget::DrawDebugFurniture
    IL_03ac:  brfalse    IL_07f5

    IL_03b1:  ldarg.0
    IL_03b2:  call       instance void Game.FurnitureDesignWidget::DebugDraw()
    IL_03b7:  br         IL_07f5

    IL_03bc:  ldarg.0
    IL_03bd:  call       instance valuetype Game.FurnitureDesignWidget/ViewMode Game.FurnitureDesignWidget::get_Mode()
    IL_03c2:  brtrue.s   IL_03f2

    IL_03c4:  ldloca.s   V_14
    IL_03c6:  ldc.r4     1.
    IL_03cb:  ldc.r4     0.0
    IL_03d0:  ldc.r4     0.0
    IL_03d5:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_03da:  ldloca.s   V_15
    IL_03dc:  ldc.r4     0.0
    IL_03e1:  ldc.r4     1.
    IL_03e6:  ldc.r4     0.0
    IL_03eb:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_03f0:  br.s       IL_0455

    IL_03f2:  ldarg.0
    IL_03f3:  call       instance valuetype Game.FurnitureDesignWidget/ViewMode Game.FurnitureDesignWidget::get_Mode()
    IL_03f8:  ldc.i4.1
    IL_03f9:  bne.un.s   IL_0429

    IL_03fb:  ldloca.s   V_14
    IL_03fd:  ldc.r4     0.0
    IL_0402:  ldc.r4     1.
    IL_0407:  ldc.r4     0.0
    IL_040c:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0411:  ldloca.s   V_15
    IL_0413:  ldc.r4     0.0
    IL_0418:  ldc.r4     0.0
    IL_041d:  ldc.r4     1.
    IL_0422:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0427:  br.s       IL_0455

    IL_0429:  ldloca.s   V_14
    IL_042b:  ldc.r4     0.0
    IL_0430:  ldc.r4     0.0
    IL_0435:  ldc.r4     -1.
    IL_043a:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_043f:  ldloca.s   V_15
    IL_0441:  ldc.r4     0.0
    IL_0446:  ldc.r4     1.
    IL_044b:  ldc.r4     0.0
    IL_0450:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0455:  call       valuetype [Engine]Engine.Graphics.Viewport [Engine]Engine.Graphics.Display::get_Viewport()
    IL_045a:  stloc.s    V_16
    IL_045c:  ldarg.0
    IL_045d:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0462:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0467:  ldarg.0
    IL_0468:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_046d:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0472:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_0477:  stloc.s    V_17
    IL_0479:  ldarg.0
    IL_047a:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_047f:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0484:  ldc.r4     0.5
    IL_0489:  ldarg.0
    IL_048a:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_048f:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0494:  ldloc.s    V_17
    IL_0496:  sub
    IL_0497:  mul
    IL_0498:  add
    IL_0499:  call       float32 Game.WidgetsManager::get_Scale()
    IL_049e:  mul
    IL_049f:  stloc.s    V_18
    IL_04a1:  ldarg.0
    IL_04a2:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_04a7:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_04ac:  ldc.r4     0.5
    IL_04b1:  ldarg.0
    IL_04b2:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_04b7:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_04bc:  ldloc.s    V_17
    IL_04be:  sub
    IL_04bf:  mul
    IL_04c0:  add
    IL_04c1:  call       float32 Game.WidgetsManager::get_Scale()
    IL_04c6:  mul
    IL_04c7:  stloc.s    V_19
    IL_04c9:  ldarg.0
    IL_04ca:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_04cf:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_04d4:  ldc.r4     0.5
    IL_04d9:  ldarg.0
    IL_04da:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_04df:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_04e4:  ldloc.s    V_17
    IL_04e6:  add
    IL_04e7:  mul
    IL_04e8:  add
    IL_04e9:  call       float32 Game.WidgetsManager::get_Scale()
    IL_04ee:  mul
    IL_04ef:  stloc.s    V_20
    IL_04f1:  ldarg.0
    IL_04f2:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_04f7:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_04fc:  ldc.r4     0.5
    IL_0501:  ldarg.0
    IL_0502:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0507:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_050c:  ldloc.s    V_17
    IL_050e:  add
    IL_050f:  mul
    IL_0510:  add
    IL_0511:  call       float32 Game.WidgetsManager::get_Scale()
    IL_0516:  mul
    IL_0517:  stloc.s    V_21
    IL_0519:  ldc.r4     0.5
    IL_051e:  ldloc.s    V_18
    IL_0520:  neg
    IL_0521:  ldloc.s    V_20
    IL_0523:  sub
    IL_0524:  mul
    IL_0525:  ldloc.s    V_20
    IL_0527:  ldloc.s    V_18
    IL_0529:  sub
    IL_052a:  div
    IL_052b:  ldc.r4     0.5
    IL_0530:  ldc.i4.2
    IL_0531:  ldloc.s    V_16
    IL_0533:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Width
    IL_0538:  mul
    IL_0539:  conv.r4
    IL_053a:  ldloc.s    V_18
    IL_053c:  sub
    IL_053d:  ldloc.s    V_20
    IL_053f:  sub
    IL_0540:  mul
    IL_0541:  ldloc.s    V_20
    IL_0543:  ldloc.s    V_18
    IL_0545:  sub
    IL_0546:  div
    IL_0547:  stloc.s    V_22
    IL_0549:  ldc.r4     0.5
    IL_054e:  ldloc.s    V_21
    IL_0550:  neg
    IL_0551:  ldloc.s    V_19
    IL_0553:  sub
    IL_0554:  mul
    IL_0555:  ldloc.s    V_19
    IL_0557:  ldloc.s    V_21
    IL_0559:  sub
    IL_055a:  div
    IL_055b:  stloc.s    V_23
    IL_055d:  ldc.r4     0.5
    IL_0562:  ldc.i4.2
    IL_0563:  ldloc.s    V_16
    IL_0565:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Height
    IL_056a:  mul
    IL_056b:  conv.r4
    IL_056c:  ldloc.s    V_21
    IL_056e:  sub
    IL_056f:  ldloc.s    V_19
    IL_0571:  sub
    IL_0572:  mul
    IL_0573:  ldloc.s    V_19
    IL_0575:  ldloc.s    V_21
    IL_0577:  sub
    IL_0578:  div
    IL_0579:  stloc.s    V_24
    IL_057b:  ldloc.s    V_22
    IL_057d:  ldloc.s    V_24
    IL_057f:  ldloc.s    V_23
    IL_0581:  ldc.r4     -10.
    IL_0586:  ldc.r4     10.
    IL_058b:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateOrthographicOffCenter(float32,
                                                                                                            float32,
                                                                                                            float32,
                                                                                                            float32,
                                                                                                            float32,
                                                                                                            float32)
    IL_0590:  stloc.s    V_25
    IL_0592:  ldloc.s    V_14
    IL_0594:  ldc.r4     0.0
    IL_0599:  ldc.r4     0.0
    IL_059e:  ldc.r4     0.0
    IL_05a3:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_05a8:  ldloc.s    V_15
    IL_05aa:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateLookAt(valuetype [Engine]Engine.Vector3,
                                                                                             valuetype [Engine]Engine.Vector3,
                                                                                             valuetype [Engine]Engine.Vector3)
    IL_05af:  stloc.s    V_26
    IL_05b1:  ldc.r4     -0.5
    IL_05b6:  ldc.r4     -0.5
    IL_05bb:  ldc.r4     -0.5
    IL_05c0:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_05c5:  ldloc.s    V_26
    IL_05c7:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_05cc:  ldloc.s    V_25
    IL_05ce:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_05d3:  stloc.0
    IL_05d4:  ldarg.0
    IL_05d5:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.FurnitureDesignWidget::m_primitivesRenderer2d
    IL_05da:  ldc.i4.0
    IL_05db:  ldnull
    IL_05dc:  ldnull
    IL_05dd:  ldnull
    IL_05de:  callvirt   instance class [Engine]Engine.Graphics.FlatBatch2D [Engine]Engine.Graphics.PrimitivesRenderer2D::FlatBatch(int32,
                                                                                                                                    class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                    class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                    class [Engine]Engine.Graphics.BlendState)
    IL_05e3:  stloc.s    V_27
    IL_05e5:  ldc.i4.1
    IL_05e6:  stloc.s    V_28
    IL_05e8:  br         IL_07e3

    IL_05ed:  ldloc.s    V_28
    IL_05ef:  conv.r4
    IL_05f0:  ldarg.0
    IL_05f1:  call       instance class Game.FurnitureDesign Game.FurnitureDesignWidget::get_Design()
    IL_05f6:  callvirt   instance int32 Game.FurnitureDesign::get_Resolution()
    IL_05fb:  conv.r4
    IL_05fc:  div
    IL_05fd:  stloc.s    V_29
    IL_05ff:  ldarg.0
    IL_0600:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_0605:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_060a:  ldarg.0
    IL_060b:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0610:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0615:  ldloc.s    V_29
    IL_0617:  mul
    IL_0618:  add
    IL_0619:  ldarg.0
    IL_061a:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_061f:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0624:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0629:  call       float32 Game.WidgetsManager::get_Scale()
    IL_062e:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0633:  stloc.s    V_30
    IL_0635:  ldarg.0
    IL_0636:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_063b:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0640:  ldarg.0
    IL_0641:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0646:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_064b:  ldloc.s    V_29
    IL_064d:  mul
    IL_064e:  add
    IL_064f:  ldarg.0
    IL_0650:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_0655:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_065a:  ldarg.0
    IL_065b:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0660:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0665:  add
    IL_0666:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_066b:  call       float32 Game.WidgetsManager::get_Scale()
    IL_0670:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0675:  stloc.s    V_31
    IL_0677:  ldarg.0
    IL_0678:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_067d:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0682:  ldarg.0
    IL_0683:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_0688:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_068d:  ldarg.0
    IL_068e:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0693:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0698:  ldloc.s    V_29
    IL_069a:  mul
    IL_069b:  add
    IL_069c:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_06a1:  call       float32 Game.WidgetsManager::get_Scale()
    IL_06a6:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_06ab:  stloc.s    V_32
    IL_06ad:  ldarg.0
    IL_06ae:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_06b3:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_06b8:  ldarg.0
    IL_06b9:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_06be:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_06c3:  add
    IL_06c4:  ldarg.0
    IL_06c5:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_06ca:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_06cf:  ldarg.0
    IL_06d0:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_06d5:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_06da:  ldloc.s    V_29
    IL_06dc:  mul
    IL_06dd:  add
    IL_06de:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_06e3:  call       float32 Game.WidgetsManager::get_Scale()
    IL_06e8:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_06ed:  stloc.s    V_33
    IL_06ef:  ldloc.s    V_28
    IL_06f1:  ldc.i4.2
    IL_06f2:  rem
    IL_06f3:  brfalse.s  IL_0701

    IL_06f5:  ldc.i4.0
    IL_06f6:  ldc.i4.0
    IL_06f7:  ldc.i4.0
    IL_06f8:  ldc.i4.s   28
    IL_06fa:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32,
                                                                   int32)
    IL_06ff:  br.s       IL_070b

    IL_0701:  ldc.i4.0
    IL_0702:  ldc.i4.0
    IL_0703:  ldc.i4.0
    IL_0704:  ldc.i4.s   56
    IL_0706:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32,
                                                                   int32)
    IL_070b:  stloc.s    V_34
    IL_070d:  ldloc.s    V_28
    IL_070f:  ldc.i4.2
    IL_0710:  rem
    IL_0711:  brfalse.s  IL_0722

    IL_0713:  ldc.i4.s   28
    IL_0715:  ldc.i4.s   28
    IL_0717:  ldc.i4.s   28
    IL_0719:  ldc.i4.s   28
    IL_071b:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32,
                                                                   int32)
    IL_0720:  br.s       IL_072f

    IL_0722:  ldc.i4.s   56
    IL_0724:  ldc.i4.s   56
    IL_0726:  ldc.i4.s   56
    IL_0728:  ldc.i4.s   56
    IL_072a:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32,
                                                                   int32)
    IL_072f:  stloc.s    V_35
    IL_0731:  ldloc.s    V_27
    IL_0733:  ldloc.s    V_30
    IL_0735:  ldloc.s    V_31
    IL_0737:  ldc.r4     0.0
    IL_073c:  ldloc.s    V_28
    IL_073e:  ldc.i4.2
    IL_073f:  rem
    IL_0740:  brfalse.s  IL_0750

    IL_0742:  ldloc.s    V_34
    IL_0744:  ldc.r4     0.75
    IL_0749:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_074e:  br.s       IL_0752

    IL_0750:  ldloc.s    V_34
    IL_0752:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueLine(valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      float32,
                                                                                      valuetype [Engine]Engine.Color)
    IL_0757:  ldloc.s    V_27
    IL_0759:  ldloc.s    V_30
    IL_075b:  ldc.r4     1.
    IL_0760:  ldc.r4     0.0
    IL_0765:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_076a:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_076f:  ldloc.s    V_31
    IL_0771:  ldc.r4     1.
    IL_0776:  ldc.r4     0.0
    IL_077b:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0780:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0785:  ldc.r4     0.0
    IL_078a:  ldloc.s    V_35
    IL_078c:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueLine(valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      float32,
                                                                                      valuetype [Engine]Engine.Color)
    IL_0791:  ldloc.s    V_27
    IL_0793:  ldloc.s    V_32
    IL_0795:  ldloc.s    V_33
    IL_0797:  ldc.r4     0.0
    IL_079c:  ldloc.s    V_34
    IL_079e:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueLine(valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      float32,
                                                                                      valuetype [Engine]Engine.Color)
    IL_07a3:  ldloc.s    V_27
    IL_07a5:  ldloc.s    V_32
    IL_07a7:  ldc.r4     0.0
    IL_07ac:  ldc.r4     1.
    IL_07b1:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_07b6:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_07bb:  ldloc.s    V_33
    IL_07bd:  ldc.r4     0.0
    IL_07c2:  ldc.r4     1.
    IL_07c7:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_07cc:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_07d1:  ldc.r4     0.0
    IL_07d6:  ldloc.s    V_35
    IL_07d8:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueLine(valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      float32,
                                                                                      valuetype [Engine]Engine.Color)
    IL_07dd:  ldloc.s    V_28
    IL_07df:  ldc.i4.1
    IL_07e0:  add
    IL_07e1:  stloc.s    V_28
    IL_07e3:  ldloc.s    V_28
    IL_07e5:  ldarg.0
    IL_07e6:  call       instance class Game.FurnitureDesign Game.FurnitureDesignWidget::get_Design()
    IL_07eb:  callvirt   instance int32 Game.FurnitureDesign::get_Resolution()
    IL_07f0:  blt        IL_05ed

    IL_07f5:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
    IL_07fa:  stloc.1
    IL_07fb:  ldarg.0
    IL_07fc:  call       instance class Game.FurnitureDesign Game.FurnitureDesignWidget::get_Design()
    IL_0801:  callvirt   instance class Game.FurnitureGeometry Game.FurnitureDesign::get_Geometry()
    IL_0806:  stloc.2
    IL_0807:  ldc.i4.0
    IL_0808:  stloc.s    V_36
    IL_080a:  br         IL_0899

    IL_080f:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0814:  stloc.s    V_37
    IL_0816:  ldarg.0
    IL_0817:  call       instance valuetype Game.FurnitureDesignWidget/ViewMode Game.FurnitureDesignWidget::get_Mode()
    IL_081c:  ldc.i4.3
    IL_081d:  bne.un.s   IL_0841

    IL_081f:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValueAndFace
    IL_0824:  ldc.i4.s   15
    IL_0826:  ldc.i4.s   16
    IL_0828:  ldloc.s    V_36
    IL_082a:  call       int32 Game.CellFace::OppositeFace(int32)
    IL_082f:  mul
    IL_0830:  add
    IL_0831:  ldelem.r4
    IL_0832:  stloc.s    V_38
    IL_0834:  ldloca.s   V_37
    IL_0836:  ldloc.s    V_38
    IL_0838:  ldloc.s    V_38
    IL_083a:  ldloc.s    V_38
    IL_083c:  call       instance void [Engine]Engine.Color::.ctor(float32,
                                                                   float32,
                                                                   float32)
    IL_0841:  ldloc.2
    IL_0842:  ldfld      class Game.BlockMesh[] Game.FurnitureGeometry::SubsetOpaqueByFace
    IL_0847:  ldloc.s    V_36
    IL_0849:  ldelem.ref
    IL_084a:  brfalse.s  IL_086a

    IL_084c:  ldarg.0
    IL_084d:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.FurnitureDesignWidget::m_primitivesRenderer3d
    IL_0852:  ldloc.2
    IL_0853:  ldfld      class Game.BlockMesh[] Game.FurnitureGeometry::SubsetOpaqueByFace
    IL_0858:  ldloc.s    V_36
    IL_085a:  ldelem.ref
    IL_085b:  ldloc.s    V_37
    IL_085d:  ldc.r4     1.
    IL_0862:  ldloca.s   V_1
    IL_0864:  ldnull
    IL_0865:  call       void Game.BlocksManager::DrawMeshBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                                class Game.BlockMesh,
                                                                valuetype [Engine]Engine.Color,
                                                                float32,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                class Game.DrawBlockEnvironmentData)
    IL_086a:  ldloc.2
    IL_086b:  ldfld      class Game.BlockMesh[] Game.FurnitureGeometry::SubsetAlphaTestByFace
    IL_0870:  ldloc.s    V_36
    IL_0872:  ldelem.ref
    IL_0873:  brfalse.s  IL_0893

    IL_0875:  ldarg.0
    IL_0876:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.FurnitureDesignWidget::m_primitivesRenderer3d
    IL_087b:  ldloc.2
    IL_087c:  ldfld      class Game.BlockMesh[] Game.FurnitureGeometry::SubsetAlphaTestByFace
    IL_0881:  ldloc.s    V_36
    IL_0883:  ldelem.ref
    IL_0884:  ldloc.s    V_37
    IL_0886:  ldc.r4     1.
    IL_088b:  ldloca.s   V_1
    IL_088d:  ldnull
    IL_088e:  call       void Game.BlocksManager::DrawMeshBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                                class Game.BlockMesh,
                                                                valuetype [Engine]Engine.Color,
                                                                float32,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                class Game.DrawBlockEnvironmentData)
    IL_0893:  ldloc.s    V_36
    IL_0895:  ldc.i4.1
    IL_0896:  add
    IL_0897:  stloc.s    V_36
    IL_0899:  ldloc.s    V_36
    IL_089b:  ldc.i4.6
    IL_089c:  blt        IL_080f

    IL_08a1:  ldarg.0
    IL_08a2:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.FurnitureDesignWidget::m_primitivesRenderer3d
    IL_08a7:  ldloc.0
    IL_08a8:  ldc.i4.1
    IL_08a9:  callvirt   instance void class [Engine]Engine.Graphics.BasePrimitivesRenderer`3<class [Engine]Engine.Graphics.FlatBatch3D,class [Engine]Engine.Graphics.TexturedBatch3D,class [Engine]Engine.Graphics.FontBatch3D>::Flush(valuetype [Engine]Engine.Matrix,
                                                                                                                                                                                                                                        bool)
    IL_08ae:  ldarg.0
    IL_08af:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.FurnitureDesignWidget::m_primitivesRenderer2d
    IL_08b4:  ldc.i4.1
    IL_08b5:  callvirt   instance void [Engine]Engine.Graphics.PrimitivesRenderer2D::Flush(bool)
    IL_08ba:  ret
  } // end of method FurnitureDesignWidget::Draw

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       351 (0x15f)
    .maxstack  4
    .locals init (valuetype Game.InputState V_0,
             valuetype [Engine]Engine.Vector2 V_1)
    IL_0000:  ldarg.0
    IL_0001:  call       instance valuetype Game.FurnitureDesignWidget/ViewMode Game.FurnitureDesignWidget::get_Mode()
    IL_0006:  ldc.i4.3
    IL_0007:  bne.un     IL_015e

    IL_000c:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_0011:  stloc.0
    IL_0012:  ldloca.s   V_0
    IL_0014:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputState::Click
    IL_0019:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_001e:  brfalse.s  IL_004a

    IL_0020:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_0025:  stloc.0
    IL_0026:  ldloca.s   V_0
    IL_0028:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputState::Click
    IL_002d:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_0032:  call       class Game.Widget Game.WidgetsManager::HitTest(valuetype [Engine]Engine.Vector2)
    IL_0037:  ldarg.0
    IL_0038:  bne.un.s   IL_004a

    IL_003a:  ldarg.0
    IL_003b:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_0040:  ldfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputState::Click
    IL_0045:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.FurnitureDesignWidget::m_dragStartPoint
    IL_004a:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_004f:  stloc.0
    IL_0050:  ldloca.s   V_0
    IL_0052:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputState::Press
    IL_0057:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_005c:  brfalse    IL_011c

    IL_0061:  ldarg.0
    IL_0062:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.FurnitureDesignWidget::m_dragStartPoint
    IL_0067:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_006c:  brfalse    IL_015e

    IL_0071:  ldloca.s   V_1
    IL_0073:  ldc.r4     -9.9999998e-003
    IL_0078:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_007d:  stloc.0
    IL_007e:  ldloca.s   V_0
    IL_0080:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputState::Press
    IL_0085:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_008a:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_008f:  ldarg.0
    IL_0090:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.FurnitureDesignWidget::m_dragStartPoint
    IL_0095:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_009a:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_009f:  sub
    IL_00a0:  mul
    IL_00a1:  call       float32 Game.WidgetsManager::get_Scale()
    IL_00a6:  div
    IL_00a7:  stfld      float32 [Engine]Engine.Vector2::Y
    IL_00ac:  ldloca.s   V_1
    IL_00ae:  ldc.r4     9.9999998e-003
    IL_00b3:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_00b8:  stloc.0
    IL_00b9:  ldloca.s   V_0
    IL_00bb:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputState::Press
    IL_00c0:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_00c5:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00ca:  ldarg.0
    IL_00cb:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.FurnitureDesignWidget::m_dragStartPoint
    IL_00d0:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_00d5:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00da:  sub
    IL_00db:  mul
    IL_00dc:  call       float32 Game.WidgetsManager::get_Scale()
    IL_00e1:  div
    IL_00e2:  stfld      float32 [Engine]Engine.Vector2::X
    IL_00e7:  call       float32 [Engine]Engine.Time::get_FrameDuration()
    IL_00ec:  ldc.r4     0.0
    IL_00f1:  ble.un.s   IL_0104

    IL_00f3:  ldarg.0
    IL_00f4:  ldloc.1
    IL_00f5:  call       float32 [Engine]Engine.Time::get_FrameDuration()
    IL_00fa:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Division(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_00ff:  stfld      valuetype [Engine]Engine.Vector2 Game.FurnitureDesignWidget::m_rotationSpeed
    IL_0104:  ldarg.0
    IL_0105:  ldloc.1
    IL_0106:  call       instance void Game.FurnitureDesignWidget::Rotate(valuetype [Engine]Engine.Vector2)
    IL_010b:  ldarg.0
    IL_010c:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_0111:  ldfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputState::Press
    IL_0116:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.FurnitureDesignWidget::m_dragStartPoint
    IL_011b:  ret

    IL_011c:  ldarg.0
    IL_011d:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.FurnitureDesignWidget::m_dragStartPoint
    IL_0122:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>
    IL_0128:  ldarg.0
    IL_0129:  ldarg.0
    IL_012a:  ldfld      valuetype [Engine]Engine.Vector2 Game.FurnitureDesignWidget::m_rotationSpeed
    IL_012f:  call       float32 [Engine]Engine.Time::get_FrameDuration()
    IL_0134:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0139:  call       instance void Game.FurnitureDesignWidget::Rotate(valuetype [Engine]Engine.Vector2)
    IL_013e:  ldarg.0
    IL_013f:  ldarg.0
    IL_0140:  ldfld      valuetype [Engine]Engine.Vector2 Game.FurnitureDesignWidget::m_rotationSpeed
    IL_0145:  ldc.r4     0.1
    IL_014a:  call       float32 [Engine]Engine.Time::get_FrameDuration()
    IL_014f:  call       float32 [Engine]Engine.MathUtils::Pow(float32,
                                                               float32)
    IL_0154:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0159:  stfld      valuetype [Engine]Engine.Vector2 Game.FurnitureDesignWidget::m_rotationSpeed
    IL_015e:  ret
  } // end of method FurnitureDesignWidget::Update

  .method public hidebysig virtual instance void 
          Measure(valuetype [Engine]Engine.Vector2 availableSize) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class Game.FurnitureDesign Game.FurnitureDesignWidget::get_Design()
    IL_0007:  ldnull
    IL_0008:  cgt.un
    IL_000a:  call       instance void Game.Widget::set_IsDrawRequired(bool)
    IL_000f:  ldarg.0
    IL_0010:  ldarg.0
    IL_0011:  call       instance valuetype [Engine]Engine.Vector2 Game.FurnitureDesignWidget::get_Size()
    IL_0016:  call       instance void Game.Widget::set_DesiredSize(valuetype [Engine]Engine.Vector2)
    IL_001b:  ret
  } // end of method FurnitureDesignWidget::Measure

  .method private hidebysig instance void 
          Rotate(valuetype [Engine]Engine.Vector2 angles) cil managed
  {
    // 代码大小       200 (0xc8)
    .maxstack  4
    .locals init (float32 V_0,
             valuetype [Engine]Engine.Vector3 V_1,
             float32 V_2,
             float32 V_3)
    IL_0000:  ldc.r4     1.
    IL_0005:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_000a:  stloc.0
    IL_000b:  ldarg.0
    IL_000c:  ldfld      valuetype [Engine]Engine.Vector3 Game.FurnitureDesignWidget::m_direction
    IL_0011:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_0016:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Cross(valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3)
    IL_001b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0020:  stloc.1
    IL_0021:  ldarg.0
    IL_0022:  ldarg.0
    IL_0023:  ldfld      valuetype [Engine]Engine.Vector3 Game.FurnitureDesignWidget::m_direction
    IL_0028:  ldarg.1
    IL_0029:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_002e:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_0033:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::TransformNormal(valuetype [Engine]Engine.Vector3,
                                                                                                  valuetype [Engine]Engine.Matrix)
    IL_0038:  stfld      valuetype [Engine]Engine.Vector3 Game.FurnitureDesignWidget::m_direction
    IL_003d:  ldarg.0
    IL_003e:  ldfld      valuetype [Engine]Engine.Vector3 Game.FurnitureDesignWidget::m_direction
    IL_0043:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_0048:  call       float32 [Engine]Engine.Vector3::Dot(valuetype [Engine]Engine.Vector3,
                                                             valuetype [Engine]Engine.Vector3)
    IL_004d:  call       float32 [Engine]Engine.MathUtils::Acos(float32)
    IL_0052:  stloc.2
    IL_0053:  ldarg.0
    IL_0054:  ldfld      valuetype [Engine]Engine.Vector3 Game.FurnitureDesignWidget::m_direction
    IL_0059:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_005e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_0063:  call       float32 [Engine]Engine.Vector3::Dot(valuetype [Engine]Engine.Vector3,
                                                             valuetype [Engine]Engine.Vector3)
    IL_0068:  call       float32 [Engine]Engine.MathUtils::Acos(float32)
    IL_006d:  stloc.3
    IL_006e:  ldarga.s   angles
    IL_0070:  ldarg.1
    IL_0071:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0076:  ldloc.2
    IL_0077:  ldloc.0
    IL_0078:  sub
    IL_0079:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_007e:  stfld      float32 [Engine]Engine.Vector2::X
    IL_0083:  ldarga.s   angles
    IL_0085:  ldarg.1
    IL_0086:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_008b:  ldloc.3
    IL_008c:  ldloc.0
    IL_008d:  sub
    IL_008e:  neg
    IL_008f:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_0094:  stfld      float32 [Engine]Engine.Vector2::X
    IL_0099:  ldarg.0
    IL_009a:  ldarg.0
    IL_009b:  ldfld      valuetype [Engine]Engine.Vector3 Game.FurnitureDesignWidget::m_direction
    IL_00a0:  ldloc.1
    IL_00a1:  ldarg.1
    IL_00a2:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_00a7:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateFromAxisAngle(valuetype [Engine]Engine.Vector3,
                                                                                                    float32)
    IL_00ac:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::TransformNormal(valuetype [Engine]Engine.Vector3,
                                                                                                  valuetype [Engine]Engine.Matrix)
    IL_00b1:  stfld      valuetype [Engine]Engine.Vector3 Game.FurnitureDesignWidget::m_direction
    IL_00b6:  ldarg.0
    IL_00b7:  ldarg.0
    IL_00b8:  ldfld      valuetype [Engine]Engine.Vector3 Game.FurnitureDesignWidget::m_direction
    IL_00bd:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_00c2:  stfld      valuetype [Engine]Engine.Vector3 Game.FurnitureDesignWidget::m_direction
    IL_00c7:  ret
  } // end of method FurnitureDesignWidget::Rotate

  .method private hidebysig instance void 
          DebugDraw() cil managed
  {
    // 代码大小       1 (0x1)
    .maxstack  8
    IL_0000:  ret
  } // end of method FurnitureDesignWidget::DebugDraw

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       1 (0x1)
    .maxstack  8
    IL_0000:  ret
  } // end of method FurnitureDesignWidget::.cctor

  .property instance valuetype [Engine]Engine.Vector2
          Size()
  {
    .get instance valuetype [Engine]Engine.Vector2 Game.FurnitureDesignWidget::get_Size()
    .set instance void Game.FurnitureDesignWidget::set_Size(valuetype [Engine]Engine.Vector2)
  } // end of property FurnitureDesignWidget::Size
  .property instance valuetype Game.FurnitureDesignWidget/ViewMode
          Mode()
  {
    .get instance valuetype Game.FurnitureDesignWidget/ViewMode Game.FurnitureDesignWidget::get_Mode()
    .set instance void Game.FurnitureDesignWidget::set_Mode(valuetype Game.FurnitureDesignWidget/ViewMode)
  } // end of property FurnitureDesignWidget::Mode
  .property instance class Game.FurnitureDesign
          Design()
  {
    .get instance class Game.FurnitureDesign Game.FurnitureDesignWidget::get_Design()
    .set instance void Game.FurnitureDesignWidget::set_Design(class Game.FurnitureDesign)
  } // end of property FurnitureDesignWidget::Design
} // end of class Game.FurnitureDesignWidget