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
    // 代码大小       2011 (0x7db)
    .maxstack  9
    .locals init (valuetype [Engine]Engine.Matrix V_0,
             valuetype [Engine]Engine.Matrix V_1,
             class Game.FurnitureGeometry V_2,
             valuetype [Engine]Engine.Graphics.Viewport V_3,
             valuetype [Engine]Engine.Vector3 V_4,
             valuetype [Engine]Engine.Matrix V_5,
             valuetype [Engine]Engine.Matrix V_6,
             class [Engine]Engine.Graphics.FlatBatch3D V_7,
             valuetype [Engine]Engine.Color V_8,
             int32 V_9,
             float32 V_10,
             valuetype [Engine]Engine.Color V_11,
             valuetype [Engine]Engine.Vector3 V_12,
             valuetype [Engine]Engine.Vector3 V_13,
             valuetype [Engine]Engine.Graphics.Viewport V_14,
             valuetype [Engine]Engine.Matrix V_15,
             valuetype [Engine]Engine.Matrix V_16,
             valuetype [Engine]Engine.Matrix V_17,
             class [Engine]Engine.Graphics.FlatBatch2D V_18,
             valuetype [Engine]Engine.Matrix V_19,
             int32 V_20,
             float32 V_21,
             valuetype [Engine]Engine.Vector2 V_22,
             valuetype [Engine]Engine.Vector2 V_23,
             valuetype [Engine]Engine.Vector2 V_24,
             valuetype [Engine]Engine.Vector2 V_25,
             valuetype [Engine]Engine.Color V_26,
             valuetype [Engine]Engine.Color V_27,
             int32 V_28,
             valuetype [Engine]Engine.Color V_29,
             float32 V_30)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.FurnitureDesign Game.FurnitureDesignWidget::get_Design()
    IL_0006:  brtrue.s   IL_0009

    IL_0008:  ret

    IL_0009:  ldarg.0
    IL_000a:  call       instance valuetype Game.FurnitureDesignWidget/ViewMode Game.FurnitureDesignWidget::get_Mode()
    IL_000f:  ldc.i4.3
    IL_0010:  bne.un     IL_038c

    IL_0015:  call       valuetype [Engine]Engine.Graphics.Viewport [Engine]Engine.Graphics.Display::get_Viewport()
    IL_001a:  stloc.3
    IL_001b:  ldloca.s   V_4
    IL_001d:  ldc.r4     0.5
    IL_0022:  ldc.r4     0.5
    IL_0027:  ldc.r4     0.5
    IL_002c:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0031:  ldc.r4     2.6500001
    IL_0036:  ldarg.0
    IL_0037:  ldfld      valuetype [Engine]Engine.Vector3 Game.FurnitureDesignWidget::m_direction
    IL_003c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0041:  ldloc.s    V_4
    IL_0043:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0048:  ldloc.s    V_4
    IL_004a:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_004f:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateLookAt(valuetype [Engine]Engine.Vector3,
                                                                                             valuetype [Engine]Engine.Vector3,
                                                                                             valuetype [Engine]Engine.Vector3)
    IL_0054:  ldc.r4     1.2
    IL_0059:  ldarg.0
    IL_005a:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_005f:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0064:  ldarg.0
    IL_0065:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_006a:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_006f:  div
    IL_0070:  ldc.r4     0.40000001
    IL_0075:  ldc.r4     4.
    IL_007a:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreatePerspectiveFieldOfView(float32,
                                                                                                             float32,
                                                                                                             float32,
                                                                                                             float32)
    IL_007f:  stloc.s    V_5
    IL_0081:  ldarg.0
    IL_0082:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0087:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_008c:  ldarg.0
    IL_008d:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0092:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0097:  neg
    IL_0098:  ldarg.0
    IL_0099:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_009e:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_00a3:  ldc.r4     2.
    IL_00a8:  div
    IL_00a9:  ldarg.0
    IL_00aa:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_00af:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00b4:  ldc.r4     2.
    IL_00b9:  div
    IL_00ba:  call       valuetype [Engine]Engine.Matrix Game.MatrixUtils::CreateScaleTranslation(float32,
                                                                                                  float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_00bf:  ldarg.0
    IL_00c0:  call       instance valuetype [Engine]Engine.Matrix Game.Widget::get_GlobalTransform()
    IL_00c5:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00ca:  ldc.r4     2.
    IL_00cf:  ldloc.3
    IL_00d0:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Width
    IL_00d5:  conv.r4
    IL_00d6:  div
    IL_00d7:  ldc.r4     -2.
    IL_00dc:  ldloc.3
    IL_00dd:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Height
    IL_00e2:  conv.r4
    IL_00e3:  div
    IL_00e4:  ldc.r4     -1.
    IL_00e9:  ldc.r4     1.
    IL_00ee:  call       valuetype [Engine]Engine.Matrix Game.MatrixUtils::CreateScaleTranslation(float32,
                                                                                                  float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_00f3:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00f8:  stloc.s    V_6
    IL_00fa:  ldloc.s    V_5
    IL_00fc:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0101:  ldloc.s    V_6
    IL_0103:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0108:  stloc.0
    IL_0109:  ldarg.0
    IL_010a:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.FurnitureDesignWidget::m_primitivesRenderer3d
    IL_010f:  ldc.i4.1
    IL_0110:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::DepthRead
    IL_0115:  ldnull
    IL_0116:  ldnull
    IL_0117:  callvirt   instance class [Engine]Engine.Graphics.FlatBatch3D [Engine]Engine.Graphics.PrimitivesRenderer3D::FlatBatch(int32,
                                                                                                                                    class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                    class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                    class [Engine]Engine.Graphics.BlendState)
    IL_011c:  stloc.s    V_7
    IL_011e:  ldc.i4.0
    IL_011f:  stloc.s    V_9
    IL_0121:  br         IL_0273

    IL_0126:  ldloc.s    V_9
    IL_0128:  conv.r4
    IL_0129:  ldarg.0
    IL_012a:  call       instance class Game.FurnitureDesign Game.FurnitureDesignWidget::get_Design()
    IL_012f:  callvirt   instance int32 Game.FurnitureDesign::get_Resolution()
    IL_0134:  conv.r4
    IL_0135:  div
    IL_0136:  stloc.s    V_10
    IL_0138:  ldloc.s    V_9
    IL_013a:  ldc.i4.2
    IL_013b:  rem
    IL_013c:  brfalse.s  IL_014d

    IL_013e:  ldc.i4.s   28
    IL_0140:  ldc.i4.s   28
    IL_0142:  ldc.i4.s   28
    IL_0144:  ldc.i4.s   28
    IL_0146:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32,
                                                                   int32)
    IL_014b:  br.s       IL_015a

    IL_014d:  ldc.i4.s   56
    IL_014f:  ldc.i4.s   56
    IL_0151:  ldc.i4.s   56
    IL_0153:  ldc.i4.s   56
    IL_0155:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32,
                                                                   int32)
    IL_015a:  stloc.s    V_11
    IL_015c:  ldloc.s    V_11
    IL_015e:  ldarg.0
    IL_015f:  call       instance valuetype [Engine]Engine.Color Game.Widget::get_GlobalColorTransform()
    IL_0164:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color)
    IL_0169:  stloc.s    V_11
    IL_016b:  ldloc.s    V_7
    IL_016d:  ldloc.s    V_10
    IL_016f:  ldc.r4     0.0
    IL_0174:  ldc.r4     0.0
    IL_0179:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_017e:  ldloc.s    V_10
    IL_0180:  ldc.r4     0.0
    IL_0185:  ldc.r4     1.
    IL_018a:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_018f:  ldloc.s    V_11
    IL_0191:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch3D::QueueLine(valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Color)
    IL_0196:  ldloc.s    V_7
    IL_0198:  ldc.r4     0.0
    IL_019d:  ldc.r4     0.0
    IL_01a2:  ldloc.s    V_10
    IL_01a4:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_01a9:  ldc.r4     1.
    IL_01ae:  ldc.r4     0.0
    IL_01b3:  ldloc.s    V_10
    IL_01b5:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_01ba:  ldloc.s    V_11
    IL_01bc:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch3D::QueueLine(valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Color)
    IL_01c1:  ldloc.s    V_7
    IL_01c3:  ldc.r4     0.0
    IL_01c8:  ldloc.s    V_10
    IL_01ca:  ldc.r4     0.0
    IL_01cf:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_01d4:  ldc.r4     0.0
    IL_01d9:  ldloc.s    V_10
    IL_01db:  ldc.r4     1.
    IL_01e0:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_01e5:  ldloc.s    V_11
    IL_01e7:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch3D::QueueLine(valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Color)
    IL_01ec:  ldloc.s    V_7
    IL_01ee:  ldc.r4     0.0
    IL_01f3:  ldc.r4     0.0
    IL_01f8:  ldloc.s    V_10
    IL_01fa:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_01ff:  ldc.r4     0.0
    IL_0204:  ldc.r4     1.
    IL_0209:  ldloc.s    V_10
    IL_020b:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0210:  ldloc.s    V_11
    IL_0212:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch3D::QueueLine(valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Color)
    IL_0217:  ldloc.s    V_7
    IL_0219:  ldc.r4     0.0
    IL_021e:  ldloc.s    V_10
    IL_0220:  ldc.r4     1.
    IL_0225:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_022a:  ldc.r4     1.
    IL_022f:  ldloc.s    V_10
    IL_0231:  ldc.r4     1.
    IL_0236:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_023b:  ldloc.s    V_11
    IL_023d:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch3D::QueueLine(valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Color)
    IL_0242:  ldloc.s    V_7
    IL_0244:  ldloc.s    V_10
    IL_0246:  ldc.r4     0.0
    IL_024b:  ldc.r4     1.
    IL_0250:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0255:  ldloc.s    V_10
    IL_0257:  ldc.r4     1.
    IL_025c:  ldc.r4     1.
    IL_0261:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0266:  ldloc.s    V_11
    IL_0268:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch3D::QueueLine(valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Color)
    IL_026d:  ldloc.s    V_9
    IL_026f:  ldc.i4.1
    IL_0270:  add
    IL_0271:  stloc.s    V_9
    IL_0273:  ldloc.s    V_9
    IL_0275:  ldarg.0
    IL_0276:  call       instance class Game.FurnitureDesign Game.FurnitureDesignWidget::get_Design()
    IL_027b:  callvirt   instance int32 Game.FurnitureDesign::get_Resolution()
    IL_0280:  ble        IL_0126

    IL_0285:  ldc.i4.s   64
    IL_0287:  ldc.i4.s   64
    IL_0289:  ldc.i4.s   64
    IL_028b:  ldc.i4     0xff
    IL_0290:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32,
                                                                   int32)
    IL_0295:  ldarg.0
    IL_0296:  call       instance valuetype [Engine]Engine.Color Game.Widget::get_GlobalColorTransform()
    IL_029b:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color)
    IL_02a0:  stloc.s    V_8
    IL_02a2:  ldarg.0
    IL_02a3:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.FurnitureDesignWidget::m_primitivesRenderer3d
    IL_02a8:  ldstr      "Fonts/Pericles32"
    IL_02ad:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Media.BitmapFont>(string)
    IL_02b2:  ldc.i4.1
    IL_02b3:  ldnull
    IL_02b4:  ldnull
    IL_02b5:  ldnull
    IL_02b6:  ldnull
    IL_02b7:  callvirt   instance class [Engine]Engine.Graphics.FontBatch3D [Engine]Engine.Graphics.PrimitivesRenderer3D::FontBatch(class [Engine]Engine.Media.BitmapFont,
                                                                                                                                    int32,
                                                                                                                                    class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                    class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                    class [Engine]Engine.Graphics.BlendState,
                                                                                                                                    class [Engine]Engine.Graphics.SamplerState)
    IL_02bc:  dup
    IL_02bd:  ldstr      "Front"
    IL_02c2:  ldc.r4     0.5
    IL_02c7:  ldc.r4     0.0
    IL_02cc:  ldc.r4     0.0
    IL_02d1:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_02d6:  ldc.r4     4.0000002e-003
    IL_02db:  ldc.r4     -1.
    IL_02e0:  ldc.r4     0.0
    IL_02e5:  ldc.r4     0.0
    IL_02ea:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_02ef:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_02f4:  ldc.r4     4.0000002e-003
    IL_02f9:  ldc.r4     0.0
    IL_02fe:  ldc.r4     0.0
    IL_0303:  ldc.r4     -1.
    IL_0308:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_030d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0312:  ldloc.s    V_8
    IL_0314:  ldc.i4.1
    IL_0315:  callvirt   instance void [Engine]Engine.Graphics.FontBatch3D::QueueText(string,
                                                                                      valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Color,
                                                                                      valuetype [Engine]Engine.Graphics.TextAnchor)
    IL_031a:  ldstr      "Side"
    IL_031f:  ldc.r4     1.
    IL_0324:  ldc.r4     0.0
    IL_0329:  ldc.r4     0.5
    IL_032e:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0333:  ldc.r4     4.0000002e-003
    IL_0338:  ldc.r4     0.0
    IL_033d:  ldc.r4     0.0
    IL_0342:  ldc.r4     -1.
    IL_0347:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_034c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0351:  ldc.r4     4.0000002e-003
    IL_0356:  ldc.r4     1.
    IL_035b:  ldc.r4     0.0
    IL_0360:  ldc.r4     0.0
    IL_0365:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_036a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_036f:  ldloc.s    V_8
    IL_0371:  ldc.i4.1
    IL_0372:  callvirt   instance void [Engine]Engine.Graphics.FontBatch3D::QueueText(string,
                                                                                      valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Color,
                                                                                      valuetype [Engine]Engine.Graphics.TextAnchor)
    IL_0377:  ldsfld     bool Game.FurnitureDesignWidget::DrawDebugFurniture
    IL_037c:  brfalse    IL_0708

    IL_0381:  ldarg.0
    IL_0382:  call       instance void Game.FurnitureDesignWidget::DebugDraw()
    IL_0387:  br         IL_0708

    IL_038c:  ldarg.0
    IL_038d:  call       instance valuetype Game.FurnitureDesignWidget/ViewMode Game.FurnitureDesignWidget::get_Mode()
    IL_0392:  brtrue.s   IL_03c2

    IL_0394:  ldloca.s   V_12
    IL_0396:  ldc.r4     1.
    IL_039b:  ldc.r4     0.0
    IL_03a0:  ldc.r4     0.0
    IL_03a5:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_03aa:  ldloca.s   V_13
    IL_03ac:  ldc.r4     0.0
    IL_03b1:  ldc.r4     1.
    IL_03b6:  ldc.r4     0.0
    IL_03bb:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_03c0:  br.s       IL_0425

    IL_03c2:  ldarg.0
    IL_03c3:  call       instance valuetype Game.FurnitureDesignWidget/ViewMode Game.FurnitureDesignWidget::get_Mode()
    IL_03c8:  ldc.i4.1
    IL_03c9:  bne.un.s   IL_03f9

    IL_03cb:  ldloca.s   V_12
    IL_03cd:  ldc.r4     0.0
    IL_03d2:  ldc.r4     1.
    IL_03d7:  ldc.r4     0.0
    IL_03dc:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_03e1:  ldloca.s   V_13
    IL_03e3:  ldc.r4     0.0
    IL_03e8:  ldc.r4     0.0
    IL_03ed:  ldc.r4     1.
    IL_03f2:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_03f7:  br.s       IL_0425

    IL_03f9:  ldloca.s   V_12
    IL_03fb:  ldc.r4     0.0
    IL_0400:  ldc.r4     0.0
    IL_0405:  ldc.r4     -1.
    IL_040a:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_040f:  ldloca.s   V_13
    IL_0411:  ldc.r4     0.0
    IL_0416:  ldc.r4     1.
    IL_041b:  ldc.r4     0.0
    IL_0420:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0425:  call       valuetype [Engine]Engine.Graphics.Viewport [Engine]Engine.Graphics.Display::get_Viewport()
    IL_042a:  stloc.s    V_14
    IL_042c:  ldarg.0
    IL_042d:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0432:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0437:  ldarg.0
    IL_0438:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_043d:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0442:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_0447:  ldloc.s    V_12
    IL_0449:  ldc.r4     0.0
    IL_044e:  ldc.r4     0.0
    IL_0453:  ldc.r4     0.0
    IL_0458:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_045d:  ldloc.s    V_13
    IL_045f:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateLookAt(valuetype [Engine]Engine.Vector3,
                                                                                             valuetype [Engine]Engine.Vector3,
                                                                                             valuetype [Engine]Engine.Vector3)
    IL_0464:  stloc.s    V_15
    IL_0466:  ldc.r4     2.
    IL_046b:  ldc.r4     2.
    IL_0470:  ldc.r4     -10.
    IL_0475:  ldc.r4     10.
    IL_047a:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateOrthographic(float32,
                                                                                                   float32,
                                                                                                   float32,
                                                                                                   float32)
    IL_047f:  stloc.s    V_16
    IL_0481:  dup
    IL_0482:  neg
    IL_0483:  ldarg.0
    IL_0484:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0489:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_048e:  ldc.r4     2.
    IL_0493:  div
    IL_0494:  ldarg.0
    IL_0495:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_049a:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_049f:  ldc.r4     2.
    IL_04a4:  div
    IL_04a5:  call       valuetype [Engine]Engine.Matrix Game.MatrixUtils::CreateScaleTranslation(float32,
                                                                                                  float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_04aa:  ldarg.0
    IL_04ab:  call       instance valuetype [Engine]Engine.Matrix Game.Widget::get_GlobalTransform()
    IL_04b0:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_04b5:  ldc.r4     2.
    IL_04ba:  ldloc.s    V_14
    IL_04bc:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Width
    IL_04c1:  conv.r4
    IL_04c2:  div
    IL_04c3:  ldc.r4     -2.
    IL_04c8:  ldloc.s    V_14
    IL_04ca:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Height
    IL_04cf:  conv.r4
    IL_04d0:  div
    IL_04d1:  ldc.r4     -1.
    IL_04d6:  ldc.r4     1.
    IL_04db:  call       valuetype [Engine]Engine.Matrix Game.MatrixUtils::CreateScaleTranslation(float32,
                                                                                                  float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_04e0:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_04e5:  stloc.s    V_17
    IL_04e7:  ldc.r4     -0.5
    IL_04ec:  ldc.r4     -0.5
    IL_04f1:  ldc.r4     -0.5
    IL_04f6:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_04fb:  ldloc.s    V_15
    IL_04fd:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0502:  ldloc.s    V_16
    IL_0504:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0509:  ldloc.s    V_17
    IL_050b:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0510:  stloc.0
    IL_0511:  ldarg.0
    IL_0512:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.FurnitureDesignWidget::m_primitivesRenderer2d
    IL_0517:  ldc.i4.0
    IL_0518:  ldnull
    IL_0519:  ldnull
    IL_051a:  ldnull
    IL_051b:  callvirt   instance class [Engine]Engine.Graphics.FlatBatch2D [Engine]Engine.Graphics.PrimitivesRenderer2D::FlatBatch(int32,
                                                                                                                                    class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                    class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                    class [Engine]Engine.Graphics.BlendState)
    IL_0520:  stloc.s    V_18
    IL_0522:  ldarg.0
    IL_0523:  call       instance valuetype [Engine]Engine.Matrix Game.Widget::get_GlobalTransform()
    IL_0528:  stloc.s    V_19
    IL_052a:  ldc.i4.1
    IL_052b:  stloc.s    V_20
    IL_052d:  br         IL_06f6

    IL_0532:  ldloc.s    V_20
    IL_0534:  conv.r4
    IL_0535:  ldarg.0
    IL_0536:  call       instance class Game.FurnitureDesign Game.FurnitureDesignWidget::get_Design()
    IL_053b:  callvirt   instance int32 Game.FurnitureDesign::get_Resolution()
    IL_0540:  conv.r4
    IL_0541:  div
    IL_0542:  stloc.s    V_21
    IL_0544:  ldloca.s   V_22
    IL_0546:  ldarg.0
    IL_0547:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_054c:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0551:  ldloc.s    V_21
    IL_0553:  mul
    IL_0554:  ldc.r4     0.0
    IL_0559:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_055e:  ldloca.s   V_23
    IL_0560:  ldarg.0
    IL_0561:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0566:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_056b:  ldloc.s    V_21
    IL_056d:  mul
    IL_056e:  ldarg.0
    IL_056f:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0574:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0579:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_057e:  ldloca.s   V_24
    IL_0580:  ldc.r4     0.0
    IL_0585:  ldarg.0
    IL_0586:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_058b:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0590:  ldloc.s    V_21
    IL_0592:  mul
    IL_0593:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0598:  ldloca.s   V_25
    IL_059a:  ldarg.0
    IL_059b:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_05a0:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_05a5:  ldarg.0
    IL_05a6:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_05ab:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_05b0:  ldloc.s    V_21
    IL_05b2:  mul
    IL_05b3:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_05b8:  ldloca.s   V_22
    IL_05ba:  ldloca.s   V_19
    IL_05bc:  ldloca.s   V_22
    IL_05be:  call       void [Engine]Engine.Vector2::Transform(valuetype [Engine]Engine.Vector2&,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                valuetype [Engine]Engine.Vector2&)
    IL_05c3:  ldloca.s   V_23
    IL_05c5:  ldloca.s   V_19
    IL_05c7:  ldloca.s   V_23
    IL_05c9:  call       void [Engine]Engine.Vector2::Transform(valuetype [Engine]Engine.Vector2&,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                valuetype [Engine]Engine.Vector2&)
    IL_05ce:  ldloca.s   V_24
    IL_05d0:  ldloca.s   V_19
    IL_05d2:  ldloca.s   V_24
    IL_05d4:  call       void [Engine]Engine.Vector2::Transform(valuetype [Engine]Engine.Vector2&,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                valuetype [Engine]Engine.Vector2&)
    IL_05d9:  ldloca.s   V_25
    IL_05db:  ldloca.s   V_19
    IL_05dd:  ldloca.s   V_25
    IL_05df:  call       void [Engine]Engine.Vector2::Transform(valuetype [Engine]Engine.Vector2&,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                valuetype [Engine]Engine.Vector2&)
    IL_05e4:  ldloc.s    V_20
    IL_05e6:  ldc.i4.2
    IL_05e7:  rem
    IL_05e8:  brfalse.s  IL_05f6

    IL_05ea:  ldc.i4.0
    IL_05eb:  ldc.i4.0
    IL_05ec:  ldc.i4.0
    IL_05ed:  ldc.i4.s   28
    IL_05ef:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32,
                                                                   int32)
    IL_05f4:  br.s       IL_0600

    IL_05f6:  ldc.i4.0
    IL_05f7:  ldc.i4.0
    IL_05f8:  ldc.i4.0
    IL_05f9:  ldc.i4.s   56
    IL_05fb:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32,
                                                                   int32)
    IL_0600:  stloc.s    V_26
    IL_0602:  ldloc.s    V_20
    IL_0604:  ldc.i4.2
    IL_0605:  rem
    IL_0606:  brfalse.s  IL_0617

    IL_0608:  ldc.i4.s   28
    IL_060a:  ldc.i4.s   28
    IL_060c:  ldc.i4.s   28
    IL_060e:  ldc.i4.s   28
    IL_0610:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32,
                                                                   int32)
    IL_0615:  br.s       IL_0624

    IL_0617:  ldc.i4.s   56
    IL_0619:  ldc.i4.s   56
    IL_061b:  ldc.i4.s   56
    IL_061d:  ldc.i4.s   56
    IL_061f:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32,
                                                                   int32)
    IL_0624:  stloc.s    V_27
    IL_0626:  ldloc.s    V_26
    IL_0628:  ldarg.0
    IL_0629:  call       instance valuetype [Engine]Engine.Color Game.Widget::get_GlobalColorTransform()
    IL_062e:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color)
    IL_0633:  stloc.s    V_26
    IL_0635:  ldloc.s    V_27
    IL_0637:  ldarg.0
    IL_0638:  call       instance valuetype [Engine]Engine.Color Game.Widget::get_GlobalColorTransform()
    IL_063d:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color)
    IL_0642:  stloc.s    V_27
    IL_0644:  ldloc.s    V_18
    IL_0646:  ldloc.s    V_22
    IL_0648:  ldloc.s    V_23
    IL_064a:  ldc.r4     0.0
    IL_064f:  ldloc.s    V_20
    IL_0651:  ldc.i4.2
    IL_0652:  rem
    IL_0653:  brfalse.s  IL_0663

    IL_0655:  ldloc.s    V_26
    IL_0657:  ldc.r4     0.75
    IL_065c:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_0661:  br.s       IL_0665

    IL_0663:  ldloc.s    V_26
    IL_0665:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueLine(valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      float32,
                                                                                      valuetype [Engine]Engine.Color)
    IL_066a:  ldloc.s    V_18
    IL_066c:  ldloc.s    V_22
    IL_066e:  ldc.r4     1.
    IL_0673:  ldc.r4     0.0
    IL_0678:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_067d:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0682:  ldloc.s    V_23
    IL_0684:  ldc.r4     1.
    IL_0689:  ldc.r4     0.0
    IL_068e:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0693:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0698:  ldc.r4     0.0
    IL_069d:  ldloc.s    V_27
    IL_069f:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueLine(valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      float32,
                                                                                      valuetype [Engine]Engine.Color)
    IL_06a4:  ldloc.s    V_18
    IL_06a6:  ldloc.s    V_24
    IL_06a8:  ldloc.s    V_25
    IL_06aa:  ldc.r4     0.0
    IL_06af:  ldloc.s    V_26
    IL_06b1:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueLine(valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      float32,
                                                                                      valuetype [Engine]Engine.Color)
    IL_06b6:  ldloc.s    V_18
    IL_06b8:  ldloc.s    V_24
    IL_06ba:  ldc.r4     0.0
    IL_06bf:  ldc.r4     1.
    IL_06c4:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_06c9:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_06ce:  ldloc.s    V_25
    IL_06d0:  ldc.r4     0.0
    IL_06d5:  ldc.r4     1.
    IL_06da:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_06df:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_06e4:  ldc.r4     0.0
    IL_06e9:  ldloc.s    V_27
    IL_06eb:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueLine(valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      float32,
                                                                                      valuetype [Engine]Engine.Color)
    IL_06f0:  ldloc.s    V_20
    IL_06f2:  ldc.i4.1
    IL_06f3:  add
    IL_06f4:  stloc.s    V_20
    IL_06f6:  ldloc.s    V_20
    IL_06f8:  ldarg.0
    IL_06f9:  call       instance class Game.FurnitureDesign Game.FurnitureDesignWidget::get_Design()
    IL_06fe:  callvirt   instance int32 Game.FurnitureDesign::get_Resolution()
    IL_0703:  blt        IL_0532

    IL_0708:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
    IL_070d:  stloc.1
    IL_070e:  ldarg.0
    IL_070f:  call       instance class Game.FurnitureDesign Game.FurnitureDesignWidget::get_Design()
    IL_0714:  callvirt   instance class Game.FurnitureGeometry Game.FurnitureDesign::get_Geometry()
    IL_0719:  stloc.2
    IL_071a:  ldc.i4.0
    IL_071b:  stloc.s    V_28
    IL_071d:  br         IL_07b4

    IL_0722:  ldarg.0
    IL_0723:  call       instance valuetype [Engine]Engine.Color Game.Widget::get_GlobalColorTransform()
    IL_0728:  stloc.s    V_29
    IL_072a:  ldarg.0
    IL_072b:  call       instance valuetype Game.FurnitureDesignWidget/ViewMode Game.FurnitureDesignWidget::get_Mode()
    IL_0730:  ldc.i4.3
    IL_0731:  bne.un.s   IL_075c

    IL_0733:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValueAndFace
    IL_0738:  ldc.i4.s   15
    IL_073a:  ldc.i4.s   16
    IL_073c:  ldloc.s    V_28
    IL_073e:  call       int32 Game.CellFace::OppositeFace(int32)
    IL_0743:  mul
    IL_0744:  add
    IL_0745:  ldelem.r4
    IL_0746:  stloc.s    V_30
    IL_0748:  ldloc.s    V_29
    IL_074a:  ldloc.s    V_30
    IL_074c:  ldloc.s    V_30
    IL_074e:  ldloc.s    V_30
    IL_0750:  newobj     instance void [Engine]Engine.Color::.ctor(float32,
                                                                   float32,
                                                                   float32)
    IL_0755:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color)
    IL_075a:  stloc.s    V_29
    IL_075c:  ldloc.2
    IL_075d:  ldfld      class Game.BlockMesh[] Game.FurnitureGeometry::SubsetOpaqueByFace
    IL_0762:  ldloc.s    V_28
    IL_0764:  ldelem.ref
    IL_0765:  brfalse.s  IL_0785

    IL_0767:  ldarg.0
    IL_0768:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.FurnitureDesignWidget::m_primitivesRenderer3d
    IL_076d:  ldloc.2
    IL_076e:  ldfld      class Game.BlockMesh[] Game.FurnitureGeometry::SubsetOpaqueByFace
    IL_0773:  ldloc.s    V_28
    IL_0775:  ldelem.ref
    IL_0776:  ldloc.s    V_29
    IL_0778:  ldc.r4     1.
    IL_077d:  ldloca.s   V_1
    IL_077f:  ldnull
    IL_0780:  call       void Game.BlocksManager::DrawMeshBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                                class Game.BlockMesh,
                                                                valuetype [Engine]Engine.Color,
                                                                float32,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                class Game.DrawBlockEnvironmentData)
    IL_0785:  ldloc.2
    IL_0786:  ldfld      class Game.BlockMesh[] Game.FurnitureGeometry::SubsetAlphaTestByFace
    IL_078b:  ldloc.s    V_28
    IL_078d:  ldelem.ref
    IL_078e:  brfalse.s  IL_07ae

    IL_0790:  ldarg.0
    IL_0791:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.FurnitureDesignWidget::m_primitivesRenderer3d
    IL_0796:  ldloc.2
    IL_0797:  ldfld      class Game.BlockMesh[] Game.FurnitureGeometry::SubsetAlphaTestByFace
    IL_079c:  ldloc.s    V_28
    IL_079e:  ldelem.ref
    IL_079f:  ldloc.s    V_29
    IL_07a1:  ldc.r4     1.
    IL_07a6:  ldloca.s   V_1
    IL_07a8:  ldnull
    IL_07a9:  call       void Game.BlocksManager::DrawMeshBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                                class Game.BlockMesh,
                                                                valuetype [Engine]Engine.Color,
                                                                float32,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                class Game.DrawBlockEnvironmentData)
    IL_07ae:  ldloc.s    V_28
    IL_07b0:  ldc.i4.1
    IL_07b1:  add
    IL_07b2:  stloc.s    V_28
    IL_07b4:  ldloc.s    V_28
    IL_07b6:  ldc.i4.6
    IL_07b7:  blt        IL_0722

    IL_07bc:  ldarg.0
    IL_07bd:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.FurnitureDesignWidget::m_primitivesRenderer3d
    IL_07c2:  ldloc.0
    IL_07c3:  ldc.i4.1
    IL_07c4:  ldc.i4     0x7fffffff
    IL_07c9:  callvirt   instance void class [Engine]Engine.Graphics.BasePrimitivesRenderer`3<class [Engine]Engine.Graphics.FlatBatch3D,class [Engine]Engine.Graphics.TexturedBatch3D,class [Engine]Engine.Graphics.FontBatch3D>::Flush(valuetype [Engine]Engine.Matrix,
                                                                                                                                                                                                                                        bool,
                                                                                                                                                                                                                                        int32)
    IL_07ce:  ldarg.0
    IL_07cf:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.FurnitureDesignWidget::m_primitivesRenderer2d
    IL_07d4:  ldc.i4.1
    IL_07d5:  callvirt   instance void [Engine]Engine.Graphics.PrimitivesRenderer2D::Flush(bool)
    IL_07da:  ret
  } // end of method FurnitureDesignWidget::Draw

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       324 (0x144)
    .maxstack  4
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> V_0,
             valuetype [Engine]Engine.Vector2 V_1,
             valuetype [Engine]Engine.Vector2 V_2)
    IL_0000:  ldarg.0
    IL_0001:  call       instance valuetype Game.FurnitureDesignWidget/ViewMode Game.FurnitureDesignWidget::get_Mode()
    IL_0006:  ldc.i4.3
    IL_0007:  bne.un     IL_0143

    IL_000c:  ldarg.0
    IL_000d:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0012:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::get_Tap()
    IL_0017:  stloc.0
    IL_0018:  ldloca.s   V_0
    IL_001a:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_001f:  brfalse.s  IL_004d

    IL_0021:  ldarg.0
    IL_0022:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0027:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::get_Tap()
    IL_002c:  stloc.0
    IL_002d:  ldloca.s   V_0
    IL_002f:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_0034:  call       class Game.Widget Game.WidgetsManager::HitTest(valuetype [Engine]Engine.Vector2)
    IL_0039:  ldarg.0
    IL_003a:  bne.un.s   IL_004d

    IL_003c:  ldarg.0
    IL_003d:  ldarg.0
    IL_003e:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0043:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::get_Tap()
    IL_0048:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.FurnitureDesignWidget::m_dragStartPoint
    IL_004d:  ldarg.0
    IL_004e:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0053:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::get_Press()
    IL_0058:  stloc.0
    IL_0059:  ldloca.s   V_0
    IL_005b:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_0060:  brfalse    IL_0101

    IL_0065:  ldarg.0
    IL_0066:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.FurnitureDesignWidget::m_dragStartPoint
    IL_006b:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_0070:  brfalse    IL_0143

    IL_0075:  ldarg.0
    IL_0076:  ldarg.0
    IL_0077:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_007c:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::get_Press()
    IL_0081:  stloc.0
    IL_0082:  ldloca.s   V_0
    IL_0084:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_0089:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::ScreenToWidget(valuetype [Engine]Engine.Vector2)
    IL_008e:  ldarg.0
    IL_008f:  ldarg.0
    IL_0090:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.FurnitureDesignWidget::m_dragStartPoint
    IL_0095:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_009a:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::ScreenToWidget(valuetype [Engine]Engine.Vector2)
    IL_009f:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_00a4:  stloc.2
    IL_00a5:  ldloca.s   V_1
    IL_00a7:  ldc.r4     -9.9999998e-003
    IL_00ac:  ldloc.2
    IL_00ad:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_00b2:  mul
    IL_00b3:  stfld      float32 [Engine]Engine.Vector2::Y
    IL_00b8:  ldloca.s   V_1
    IL_00ba:  ldc.r4     9.9999998e-003
    IL_00bf:  ldloc.2
    IL_00c0:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00c5:  mul
    IL_00c6:  stfld      float32 [Engine]Engine.Vector2::X
    IL_00cb:  call       float32 [Engine]Engine.Time::get_FrameDuration()
    IL_00d0:  ldc.r4     0.0
    IL_00d5:  ble.un.s   IL_00e8

    IL_00d7:  ldarg.0
    IL_00d8:  ldloc.1
    IL_00d9:  call       float32 [Engine]Engine.Time::get_FrameDuration()
    IL_00de:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Division(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_00e3:  stfld      valuetype [Engine]Engine.Vector2 Game.FurnitureDesignWidget::m_rotationSpeed
    IL_00e8:  ldarg.0
    IL_00e9:  ldloc.1
    IL_00ea:  call       instance void Game.FurnitureDesignWidget::Rotate(valuetype [Engine]Engine.Vector2)
    IL_00ef:  ldarg.0
    IL_00f0:  ldarg.0
    IL_00f1:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_00f6:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::get_Press()
    IL_00fb:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.FurnitureDesignWidget::m_dragStartPoint
    IL_0100:  ret

    IL_0101:  ldarg.0
    IL_0102:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.FurnitureDesignWidget::m_dragStartPoint
    IL_0107:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>
    IL_010d:  ldarg.0
    IL_010e:  ldarg.0
    IL_010f:  ldfld      valuetype [Engine]Engine.Vector2 Game.FurnitureDesignWidget::m_rotationSpeed
    IL_0114:  call       float32 [Engine]Engine.Time::get_FrameDuration()
    IL_0119:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_011e:  call       instance void Game.FurnitureDesignWidget::Rotate(valuetype [Engine]Engine.Vector2)
    IL_0123:  ldarg.0
    IL_0124:  ldarg.0
    IL_0125:  ldfld      valuetype [Engine]Engine.Vector2 Game.FurnitureDesignWidget::m_rotationSpeed
    IL_012a:  ldc.r4     0.1
    IL_012f:  call       float32 [Engine]Engine.Time::get_FrameDuration()
    IL_0134:  call       float32 [Engine]Engine.MathUtils::Pow(float32,
                                                               float32)
    IL_0139:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_013e:  stfld      valuetype [Engine]Engine.Vector2 Game.FurnitureDesignWidget::m_rotationSpeed
    IL_0143:  ret
  } // end of method FurnitureDesignWidget::Update

  .method public hidebysig virtual instance void 
          MeasureOverride(valuetype [Engine]Engine.Vector2 parentAvailableSize) cil managed
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
  } // end of method FurnitureDesignWidget::MeasureOverride

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