.class public auto ansi beforefieldinit Game.BlockIconWidget
       extends Game.Widget
{
  .field private valuetype [Engine]Engine.Matrix m_viewMatrix
  .field private int32 m_value
  .field private class Game.DrawBlockEnvironmentData '<DrawBlockEnvironmentData>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [Engine]Engine.Vector2 '<Size>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<Depth>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [Engine]Engine.Color '<Color>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> '<CustomViewMatrix>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<Scale>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       82 (0x52)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.Widget::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldc.r4     (00 00 80 7F)
    IL_000c:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_0011:  call       instance void Game.BlockIconWidget::set_Size(valuetype [Engine]Engine.Vector2)
    IL_0016:  ldarg.0
    IL_0017:  ldc.i4.0
    IL_0018:  callvirt   instance void Game.Widget::set_IsHitTestVisible(bool)
    IL_001d:  ldarg.0
    IL_001e:  ldc.i4.s   15
    IL_0020:  call       instance void Game.BlockIconWidget::set_Light(int32)
    IL_0025:  ldarg.0
    IL_0026:  ldc.r4     1.
    IL_002b:  call       instance void Game.BlockIconWidget::set_Depth(float32)
    IL_0030:  ldarg.0
    IL_0031:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0036:  call       instance void Game.BlockIconWidget::set_Color(valuetype [Engine]Engine.Color)
    IL_003b:  ldarg.0
    IL_003c:  newobj     instance void Game.DrawBlockEnvironmentData::.ctor()
    IL_0041:  call       instance void Game.BlockIconWidget::set_DrawBlockEnvironmentData(class Game.DrawBlockEnvironmentData)
    IL_0046:  ldarg.0
    IL_0047:  ldc.r4     1.
    IL_004c:  call       instance void Game.BlockIconWidget::set_Scale(float32)
    IL_0051:  ret
  } // end of method BlockIconWidget::.ctor

  .method public hidebysig specialname instance class Game.DrawBlockEnvironmentData 
          get_DrawBlockEnvironmentData() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.DrawBlockEnvironmentData Game.BlockIconWidget::'<DrawBlockEnvironmentData>k__BackingField'
    IL_0006:  ret
  } // end of method BlockIconWidget::get_DrawBlockEnvironmentData

  .method private hidebysig specialname instance void 
          set_DrawBlockEnvironmentData(class Game.DrawBlockEnvironmentData 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.DrawBlockEnvironmentData Game.BlockIconWidget::'<DrawBlockEnvironmentData>k__BackingField'
    IL_0007:  ret
  } // end of method BlockIconWidget::set_DrawBlockEnvironmentData

  .method public hidebysig specialname instance valuetype [Engine]Engine.Vector2 
          get_Size() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector2 Game.BlockIconWidget::'<Size>k__BackingField'
    IL_0006:  ret
  } // end of method BlockIconWidget::get_Size

  .method public hidebysig specialname instance void 
          set_Size(valuetype [Engine]Engine.Vector2 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Vector2 Game.BlockIconWidget::'<Size>k__BackingField'
    IL_0007:  ret
  } // end of method BlockIconWidget::set_Size

  .method public hidebysig specialname instance float32 
          get_Depth() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.BlockIconWidget::'<Depth>k__BackingField'
    IL_0006:  ret
  } // end of method BlockIconWidget::get_Depth

  .method public hidebysig specialname instance void 
          set_Depth(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.BlockIconWidget::'<Depth>k__BackingField'
    IL_0007:  ret
  } // end of method BlockIconWidget::set_Depth

  .method public hidebysig specialname instance valuetype [Engine]Engine.Color 
          get_Color() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Color Game.BlockIconWidget::'<Color>k__BackingField'
    IL_0006:  ret
  } // end of method BlockIconWidget::get_Color

  .method public hidebysig specialname instance void 
          set_Color(valuetype [Engine]Engine.Color 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Color Game.BlockIconWidget::'<Color>k__BackingField'
    IL_0007:  ret
  } // end of method BlockIconWidget::set_Color

  .method public hidebysig specialname instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> 
          get_CustomViewMatrix() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.BlockIconWidget::'<CustomViewMatrix>k__BackingField'
    IL_0006:  ret
  } // end of method BlockIconWidget::get_CustomViewMatrix

  .method public hidebysig specialname instance void 
          set_CustomViewMatrix(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.BlockIconWidget::'<CustomViewMatrix>k__BackingField'
    IL_0007:  ret
  } // end of method BlockIconWidget::set_CustomViewMatrix

  .method public hidebysig specialname instance int32 
          get_Value() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Game.BlockIconWidget::m_value
    IL_0006:  ret
  } // end of method BlockIconWidget::get_Value

  .method public hidebysig specialname instance void 
          set_Value(int32 'value') cil managed
  {
    // 代码大小       92 (0x5c)
    .maxstack  5
    .locals init (class Game.Block V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Game.BlockIconWidget::m_value
    IL_0006:  brfalse.s  IL_0011

    IL_0008:  ldarg.1
    IL_0009:  ldarg.0
    IL_000a:  ldfld      int32 Game.BlockIconWidget::m_value
    IL_000f:  beq.s      IL_005b

    IL_0011:  ldarg.0
    IL_0012:  ldarg.1
    IL_0013:  stfld      int32 Game.BlockIconWidget::m_value
    IL_0018:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_001d:  ldarg.0
    IL_001e:  call       instance int32 Game.BlockIconWidget::get_Contents()
    IL_0023:  ldelem.ref
    IL_0024:  stloc.0
    IL_0025:  ldarg.0
    IL_0026:  ldloc.0
    IL_0027:  ldarg.0
    IL_0028:  call       instance int32 Game.BlockIconWidget::get_Value()
    IL_002d:  ldarg.0
    IL_002e:  call       instance class Game.DrawBlockEnvironmentData Game.BlockIconWidget::get_DrawBlockEnvironmentData()
    IL_0033:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Block::GetIconViewOffset(int32,
                                                                                                 class Game.DrawBlockEnvironmentData)
    IL_0038:  ldc.r4     0.0
    IL_003d:  ldc.r4     0.0
    IL_0042:  ldc.r4     0.0
    IL_0047:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_004c:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_0051:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateLookAt(valuetype [Engine]Engine.Vector3,
                                                                                             valuetype [Engine]Engine.Vector3,
                                                                                             valuetype [Engine]Engine.Vector3)
    IL_0056:  stfld      valuetype [Engine]Engine.Matrix Game.BlockIconWidget::m_viewMatrix
    IL_005b:  ret
  } // end of method BlockIconWidget::set_Value

  .method public hidebysig specialname instance int32 
          get_Contents() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance int32 Game.BlockIconWidget::get_Value()
    IL_0006:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_000b:  ret
  } // end of method BlockIconWidget::get_Contents

  .method public hidebysig specialname instance void 
          set_Contents(int32 'value') cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance int32 Game.BlockIconWidget::get_Value()
    IL_0007:  ldarg.1
    IL_0008:  call       int32 Game.Terrain::ReplaceContents(int32,
                                                             int32)
    IL_000d:  call       instance void Game.BlockIconWidget::set_Value(int32)
    IL_0012:  ret
  } // end of method BlockIconWidget::set_Contents

  .method public hidebysig specialname instance int32 
          get_Light() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance int32 Game.BlockIconWidget::get_Value()
    IL_0006:  call       int32 Game.Terrain::ExtractLight(int32)
    IL_000b:  ret
  } // end of method BlockIconWidget::get_Light

  .method public hidebysig specialname instance void 
          set_Light(int32 'value') cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance int32 Game.BlockIconWidget::get_Value()
    IL_0007:  ldarg.1
    IL_0008:  call       int32 Game.Terrain::ReplaceLight(int32,
                                                          int32)
    IL_000d:  call       instance void Game.BlockIconWidget::set_Value(int32)
    IL_0012:  ret
  } // end of method BlockIconWidget::set_Light

  .method public hidebysig specialname instance int32 
          get_Data() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance int32 Game.BlockIconWidget::get_Value()
    IL_0006:  call       int32 Game.Terrain::ExtractData(int32)
    IL_000b:  ret
  } // end of method BlockIconWidget::get_Data

  .method public hidebysig specialname instance void 
          set_Data(int32 'value') cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance int32 Game.BlockIconWidget::get_Value()
    IL_0007:  ldarg.1
    IL_0008:  call       int32 Game.Terrain::ReplaceData(int32,
                                                         int32)
    IL_000d:  call       instance void Game.BlockIconWidget::set_Value(int32)
    IL_0012:  ret
  } // end of method BlockIconWidget::set_Data

  .method public hidebysig specialname instance float32 
          get_Scale() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.BlockIconWidget::'<Scale>k__BackingField'
    IL_0006:  ret
  } // end of method BlockIconWidget::get_Scale

  .method public hidebysig specialname instance void 
          set_Scale(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.BlockIconWidget::'<Scale>k__BackingField'
    IL_0007:  ret
  } // end of method BlockIconWidget::set_Scale

  .method public hidebysig virtual instance void 
          Draw() cil managed
  {
    // 代码大小       436 (0x1b4)
    .maxstack  8
    .locals init (valuetype [Engine]Engine.Graphics.Viewport V_0,
             valuetype [Engine]Engine.Matrix V_1,
             valuetype [Engine]Engine.Matrix V_2,
             float32 V_3,
             valuetype [Engine]Engine.Matrix V_4,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> V_5)
    IL_0000:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0005:  ldarg.0
    IL_0006:  call       instance int32 Game.BlockIconWidget::get_Contents()
    IL_000b:  ldelem.ref
    IL_000c:  ldarg.0
    IL_000d:  call       instance class Game.DrawBlockEnvironmentData Game.BlockIconWidget::get_DrawBlockEnvironmentData()
    IL_0012:  ldfld      class Game.SubsystemTerrain Game.DrawBlockEnvironmentData::SubsystemTerrain
    IL_0017:  brfalse.s  IL_0031

    IL_0019:  ldarg.0
    IL_001a:  call       instance class Game.DrawBlockEnvironmentData Game.BlockIconWidget::get_DrawBlockEnvironmentData()
    IL_001f:  ldfld      class Game.SubsystemTerrain Game.DrawBlockEnvironmentData::SubsystemTerrain
    IL_0024:  callvirt   instance class Game.SubsystemAnimatedTextures Game.SubsystemTerrain::get_SubsystemAnimatedTextures()
    IL_0029:  callvirt   instance class [Engine]Engine.Graphics.Texture2D Game.SubsystemAnimatedTextures::get_AnimatedBlocksTexture()
    IL_002e:  pop
    IL_002f:  br.s       IL_0037

    IL_0031:  call       class [Engine]Engine.Graphics.Texture2D Game.BlocksTexturesManager::get_DefaultBlocksTexture()
    IL_0036:  pop
    IL_0037:  call       valuetype [Engine]Engine.Graphics.Viewport [Engine]Engine.Graphics.Display::get_Viewport()
    IL_003c:  stloc.0
    IL_003d:  ldarg.0
    IL_003e:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0043:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0048:  ldarg.0
    IL_0049:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_004e:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0053:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_0058:  ldarg.0
    IL_0059:  call       instance float32 Game.BlockIconWidget::get_Scale()
    IL_005e:  mul
    IL_005f:  ldc.r4     3.5999999
    IL_0064:  ldc.r4     3.5999999
    IL_0069:  ldc.r4     -10.
    IL_006e:  ldc.r4     1.
    IL_0073:  ldarg.0
    IL_0074:  call       instance float32 Game.BlockIconWidget::get_Depth()
    IL_0079:  mul
    IL_007a:  sub
    IL_007b:  ldc.r4     10.
    IL_0080:  ldc.r4     1.
    IL_0085:  ldarg.0
    IL_0086:  call       instance float32 Game.BlockIconWidget::get_Depth()
    IL_008b:  mul
    IL_008c:  sub
    IL_008d:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateOrthographic(float32,
                                                                                                   float32,
                                                                                                   float32,
                                                                                                   float32)
    IL_0092:  stloc.1
    IL_0093:  dup
    IL_0094:  neg
    IL_0095:  ldarg.0
    IL_0096:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_009b:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_00a0:  ldc.r4     2.
    IL_00a5:  div
    IL_00a6:  ldarg.0
    IL_00a7:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_00ac:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00b1:  ldc.r4     2.
    IL_00b6:  div
    IL_00b7:  call       valuetype [Engine]Engine.Matrix Game.MatrixUtils::CreateScaleTranslation(float32,
                                                                                                  float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_00bc:  ldarg.0
    IL_00bd:  call       instance valuetype [Engine]Engine.Matrix Game.Widget::get_GlobalTransform()
    IL_00c2:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00c7:  ldc.r4     2.
    IL_00cc:  ldloc.0
    IL_00cd:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Width
    IL_00d2:  conv.r4
    IL_00d3:  div
    IL_00d4:  ldc.r4     -2.
    IL_00d9:  ldloc.0
    IL_00da:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Height
    IL_00df:  conv.r4
    IL_00e0:  div
    IL_00e1:  ldc.r4     -1.
    IL_00e6:  ldc.r4     1.
    IL_00eb:  call       valuetype [Engine]Engine.Matrix Game.MatrixUtils::CreateScaleTranslation(float32,
                                                                                                  float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_00f0:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00f5:  stloc.2
    IL_00f6:  ldarg.0
    IL_00f7:  call       instance class Game.DrawBlockEnvironmentData Game.BlockIconWidget::get_DrawBlockEnvironmentData()
    IL_00fc:  ldarg.0
    IL_00fd:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.BlockIconWidget::get_CustomViewMatrix()
    IL_0102:  stloc.s    V_5
    IL_0104:  ldloca.s   V_5
    IL_0106:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_HasValue()
    IL_010b:  brtrue.s   IL_0115

    IL_010d:  ldarg.0
    IL_010e:  ldfld      valuetype [Engine]Engine.Matrix Game.BlockIconWidget::m_viewMatrix
    IL_0113:  br.s       IL_0124

    IL_0115:  ldarg.0
    IL_0116:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.BlockIconWidget::get_CustomViewMatrix()
    IL_011b:  stloc.s    V_5
    IL_011d:  ldloca.s   V_5
    IL_011f:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_Value()
    IL_0124:  ldloc.1
    IL_0125:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_012a:  ldloc.2
    IL_012b:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0130:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_0135:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.DrawBlockEnvironmentData::ViewProjectionMatrix
    IL_013a:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_013f:  ldarg.0
    IL_0140:  call       instance int32 Game.BlockIconWidget::get_Contents()
    IL_0145:  ldelem.ref
    IL_0146:  ldarg.0
    IL_0147:  call       instance int32 Game.BlockIconWidget::get_Value()
    IL_014c:  ldarg.0
    IL_014d:  call       instance class Game.DrawBlockEnvironmentData Game.BlockIconWidget::get_DrawBlockEnvironmentData()
    IL_0152:  callvirt   instance float32 Game.Block::GetIconViewScale(int32,
                                                                       class Game.DrawBlockEnvironmentData)
    IL_0157:  stloc.3
    IL_0158:  ldarg.0
    IL_0159:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.BlockIconWidget::get_CustomViewMatrix()
    IL_015e:  stloc.s    V_5
    IL_0160:  ldloca.s   V_5
    IL_0162:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_HasValue()
    IL_0167:  brtrue.s   IL_018d

    IL_0169:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_016e:  ldarg.0
    IL_016f:  call       instance int32 Game.BlockIconWidget::get_Contents()
    IL_0174:  ldelem.ref
    IL_0175:  ldarg.0
    IL_0176:  call       instance int32 Game.BlockIconWidget::get_Value()
    IL_017b:  ldarg.0
    IL_017c:  call       instance class Game.DrawBlockEnvironmentData Game.BlockIconWidget::get_DrawBlockEnvironmentData()
    IL_0181:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Block::GetIconBlockOffset(int32,
                                                                                                  class Game.DrawBlockEnvironmentData)
    IL_0186:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(valuetype [Engine]Engine.Vector3)
    IL_018b:  br.s       IL_0192

    IL_018d:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
    IL_0192:  stloc.s    V_4
    IL_0194:  ldsfld     class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.WidgetsManager::PrimitivesRenderer3D
    IL_0199:  ldarg.0
    IL_019a:  call       instance int32 Game.BlockIconWidget::get_Value()
    IL_019f:  ldarg.0
    IL_01a0:  call       instance valuetype [Engine]Engine.Color Game.Widget::get_GlobalColorTransform()
    IL_01a5:  ldloc.3
    IL_01a6:  ldloca.s   V_4
    IL_01a8:  ldarg.0
    IL_01a9:  call       instance class Game.DrawBlockEnvironmentData Game.BlockIconWidget::get_DrawBlockEnvironmentData()
    IL_01ae:  callvirt   instance void Game.Block::DrawBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                             int32,
                                                             valuetype [Engine]Engine.Color,
                                                             float32,
                                                             valuetype [Engine]Engine.Matrix&,
                                                             class Game.DrawBlockEnvironmentData)
    IL_01b3:  ret
  } // end of method BlockIconWidget::Draw

  .method public hidebysig virtual instance void 
          MeasureOverride(valuetype [Engine]Engine.Vector2 parentAvailableSize) cil managed
  {
    // 代码大小       20 (0x14)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  call       instance void Game.Widget::set_IsDrawRequired(bool)
    IL_0007:  ldarg.0
    IL_0008:  ldarg.0
    IL_0009:  call       instance valuetype [Engine]Engine.Vector2 Game.BlockIconWidget::get_Size()
    IL_000e:  call       instance void Game.Widget::set_DesiredSize(valuetype [Engine]Engine.Vector2)
    IL_0013:  ret
  } // end of method BlockIconWidget::MeasureOverride

  .property instance class Game.DrawBlockEnvironmentData
          DrawBlockEnvironmentData()
  {
    .get instance class Game.DrawBlockEnvironmentData Game.BlockIconWidget::get_DrawBlockEnvironmentData()
    .set instance void Game.BlockIconWidget::set_DrawBlockEnvironmentData(class Game.DrawBlockEnvironmentData)
  } // end of property BlockIconWidget::DrawBlockEnvironmentData
  .property instance valuetype [Engine]Engine.Vector2
          Size()
  {
    .get instance valuetype [Engine]Engine.Vector2 Game.BlockIconWidget::get_Size()
    .set instance void Game.BlockIconWidget::set_Size(valuetype [Engine]Engine.Vector2)
  } // end of property BlockIconWidget::Size
  .property instance float32 Depth()
  {
    .get instance float32 Game.BlockIconWidget::get_Depth()
    .set instance void Game.BlockIconWidget::set_Depth(float32)
  } // end of property BlockIconWidget::Depth
  .property instance valuetype [Engine]Engine.Color
          Color()
  {
    .get instance valuetype [Engine]Engine.Color Game.BlockIconWidget::get_Color()
    .set instance void Game.BlockIconWidget::set_Color(valuetype [Engine]Engine.Color)
  } // end of property BlockIconWidget::Color
  .property instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
          CustomViewMatrix()
  {
    .get instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.BlockIconWidget::get_CustomViewMatrix()
    .set instance void Game.BlockIconWidget::set_CustomViewMatrix(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
  } // end of property BlockIconWidget::CustomViewMatrix
  .property instance int32 Value()
  {
    .get instance int32 Game.BlockIconWidget::get_Value()
    .set instance void Game.BlockIconWidget::set_Value(int32)
  } // end of property BlockIconWidget::Value
  .property instance int32 Contents()
  {
    .get instance int32 Game.BlockIconWidget::get_Contents()
    .set instance void Game.BlockIconWidget::set_Contents(int32)
  } // end of property BlockIconWidget::Contents
  .property instance int32 Light()
  {
    .get instance int32 Game.BlockIconWidget::get_Light()
    .set instance void Game.BlockIconWidget::set_Light(int32)
  } // end of property BlockIconWidget::Light
  .property instance int32 Data()
  {
    .get instance int32 Game.BlockIconWidget::get_Data()
    .set instance void Game.BlockIconWidget::set_Data(int32)
  } // end of property BlockIconWidget::Data
  .property instance float32 Scale()
  {
    .get instance float32 Game.BlockIconWidget::get_Scale()
    .set instance void Game.BlockIconWidget::set_Scale(float32)
  } // end of property BlockIconWidget::Scale
} // end of class Game.BlockIconWidget