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
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       71 (0x47)
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
    IL_0046:  ret
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
    IL_0006:  call       int32 Game.TerrainData::ExtractContents(int32)
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
    IL_0008:  call       int32 Game.TerrainData::ReplaceContents(int32,
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
    IL_0006:  call       int32 Game.TerrainData::ExtractLight(int32)
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
    IL_0008:  call       int32 Game.TerrainData::ReplaceLight(int32,
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
    IL_0006:  call       int32 Game.TerrainData::ExtractData(int32)
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
    IL_0008:  call       int32 Game.TerrainData::ReplaceData(int32,
                                                             int32)
    IL_000d:  call       instance void Game.BlockIconWidget::set_Value(int32)
    IL_0012:  ret
  } // end of method BlockIconWidget::set_Data

  .method public hidebysig virtual instance void 
          Draw() cil managed
  {
    // 代码大小       567 (0x237)
    .maxstack  9
    .locals init (valuetype [Engine]Engine.Graphics.Viewport V_0,
             float32 V_1,
             float32 V_2,
             float32 V_3,
             float32 V_4,
             float32 V_5,
             float32 V_6,
             float32 V_7,
             float32 V_8,
             valuetype [Engine]Engine.Matrix V_9,
             float32 V_10,
             valuetype [Engine]Engine.Matrix V_11,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> V_12)
    IL_0000:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0005:  ldarg.0
    IL_0006:  call       instance int32 Game.BlockIconWidget::get_Contents()
    IL_000b:  ldelem.ref
    IL_000c:  call       valuetype [Engine]Engine.Graphics.Viewport [Engine]Engine.Graphics.Display::get_Viewport()
    IL_0011:  stloc.0
    IL_0012:  ldarg.0
    IL_0013:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0018:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_001d:  ldarg.0
    IL_001e:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0023:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0028:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_002d:  stloc.1
    IL_002e:  ldarg.0
    IL_002f:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_0034:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0039:  ldc.r4     0.5
    IL_003e:  ldarg.0
    IL_003f:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0044:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0049:  ldloc.1
    IL_004a:  sub
    IL_004b:  mul
    IL_004c:  add
    IL_004d:  call       float32 Game.WidgetsManager::get_Scale()
    IL_0052:  mul
    IL_0053:  stloc.2
    IL_0054:  ldarg.0
    IL_0055:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_005a:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_005f:  ldc.r4     0.5
    IL_0064:  ldarg.0
    IL_0065:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_006a:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_006f:  ldloc.1
    IL_0070:  sub
    IL_0071:  mul
    IL_0072:  add
    IL_0073:  call       float32 Game.WidgetsManager::get_Scale()
    IL_0078:  mul
    IL_0079:  stloc.3
    IL_007a:  ldarg.0
    IL_007b:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_0080:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0085:  ldc.r4     0.5
    IL_008a:  ldarg.0
    IL_008b:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0090:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0095:  ldloc.1
    IL_0096:  add
    IL_0097:  mul
    IL_0098:  add
    IL_0099:  call       float32 Game.WidgetsManager::get_Scale()
    IL_009e:  mul
    IL_009f:  stloc.s    V_4
    IL_00a1:  ldarg.0
    IL_00a2:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_00a7:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00ac:  ldc.r4     0.5
    IL_00b1:  ldarg.0
    IL_00b2:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_00b7:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00bc:  ldloc.1
    IL_00bd:  add
    IL_00be:  mul
    IL_00bf:  add
    IL_00c0:  call       float32 Game.WidgetsManager::get_Scale()
    IL_00c5:  mul
    IL_00c6:  stloc.s    V_5
    IL_00c8:  ldc.r4     0.89999998
    IL_00cd:  ldloc.2
    IL_00ce:  neg
    IL_00cf:  ldloc.s    V_4
    IL_00d1:  sub
    IL_00d2:  mul
    IL_00d3:  ldloc.s    V_4
    IL_00d5:  ldloc.2
    IL_00d6:  sub
    IL_00d7:  div
    IL_00d8:  ldc.r4     0.89999998
    IL_00dd:  ldc.i4.2
    IL_00de:  ldloc.0
    IL_00df:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Width
    IL_00e4:  mul
    IL_00e5:  conv.r4
    IL_00e6:  ldloc.2
    IL_00e7:  sub
    IL_00e8:  ldloc.s    V_4
    IL_00ea:  sub
    IL_00eb:  mul
    IL_00ec:  ldloc.s    V_4
    IL_00ee:  ldloc.2
    IL_00ef:  sub
    IL_00f0:  div
    IL_00f1:  stloc.s    V_6
    IL_00f3:  ldc.r4     0.89999998
    IL_00f8:  ldloc.s    V_5
    IL_00fa:  neg
    IL_00fb:  ldloc.3
    IL_00fc:  sub
    IL_00fd:  mul
    IL_00fe:  ldloc.3
    IL_00ff:  ldloc.s    V_5
    IL_0101:  sub
    IL_0102:  div
    IL_0103:  stloc.s    V_7
    IL_0105:  ldc.r4     0.89999998
    IL_010a:  ldc.i4.2
    IL_010b:  ldloc.0
    IL_010c:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Height
    IL_0111:  mul
    IL_0112:  conv.r4
    IL_0113:  ldloc.s    V_5
    IL_0115:  sub
    IL_0116:  ldloc.3
    IL_0117:  sub
    IL_0118:  mul
    IL_0119:  ldloc.3
    IL_011a:  ldloc.s    V_5
    IL_011c:  sub
    IL_011d:  div
    IL_011e:  stloc.s    V_8
    IL_0120:  ldloc.s    V_6
    IL_0122:  ldloc.s    V_8
    IL_0124:  ldloc.s    V_7
    IL_0126:  ldc.r4     -10.
    IL_012b:  ldc.r4     1.
    IL_0130:  ldarg.0
    IL_0131:  call       instance float32 Game.BlockIconWidget::get_Depth()
    IL_0136:  mul
    IL_0137:  sub
    IL_0138:  ldc.r4     10.
    IL_013d:  ldc.r4     1.
    IL_0142:  ldarg.0
    IL_0143:  call       instance float32 Game.BlockIconWidget::get_Depth()
    IL_0148:  mul
    IL_0149:  sub
    IL_014a:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateOrthographicOffCenter(float32,
                                                                                                            float32,
                                                                                                            float32,
                                                                                                            float32,
                                                                                                            float32,
                                                                                                            float32)
    IL_014f:  stloc.s    V_9
    IL_0151:  ldarg.0
    IL_0152:  call       instance class Game.DrawBlockEnvironmentData Game.BlockIconWidget::get_DrawBlockEnvironmentData()
    IL_0157:  ldfld      class Game.SubsystemTerrain Game.DrawBlockEnvironmentData::SubsystemTerrain
    IL_015c:  brfalse.s  IL_017c

    IL_015e:  ldarg.0
    IL_015f:  call       instance class Game.DrawBlockEnvironmentData Game.BlockIconWidget::get_DrawBlockEnvironmentData()
    IL_0164:  ldfld      class Game.SubsystemTerrain Game.DrawBlockEnvironmentData::SubsystemTerrain
    IL_0169:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_016e:  ldc.i4.1
    IL_016f:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemAnimatedTextures>(bool)
    IL_0174:  callvirt   instance class [Engine]Engine.Graphics.Texture2D Game.SubsystemAnimatedTextures::get_AnimatedBlocksTexture()
    IL_0179:  pop
    IL_017a:  br.s       IL_0182

    IL_017c:  call       class [Engine]Engine.Graphics.Texture2D Game.BlocksTexturesManager::get_DefaultBlocksTexture()
    IL_0181:  pop
    IL_0182:  ldarg.0
    IL_0183:  call       instance class Game.DrawBlockEnvironmentData Game.BlockIconWidget::get_DrawBlockEnvironmentData()
    IL_0188:  ldarg.0
    IL_0189:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.BlockIconWidget::get_CustomViewMatrix()
    IL_018e:  stloc.s    V_12
    IL_0190:  ldloca.s   V_12
    IL_0192:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_HasValue()
    IL_0197:  brtrue.s   IL_01a1

    IL_0199:  ldarg.0
    IL_019a:  ldfld      valuetype [Engine]Engine.Matrix Game.BlockIconWidget::m_viewMatrix
    IL_019f:  br.s       IL_01b0

    IL_01a1:  ldarg.0
    IL_01a2:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.BlockIconWidget::get_CustomViewMatrix()
    IL_01a7:  stloc.s    V_12
    IL_01a9:  ldloca.s   V_12
    IL_01ab:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_Value()
    IL_01b0:  ldloc.s    V_9
    IL_01b2:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_01b7:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_01bc:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.DrawBlockEnvironmentData::ViewProjectionMatrix
    IL_01c1:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_01c6:  ldarg.0
    IL_01c7:  call       instance int32 Game.BlockIconWidget::get_Contents()
    IL_01cc:  ldelem.ref
    IL_01cd:  ldarg.0
    IL_01ce:  call       instance int32 Game.BlockIconWidget::get_Value()
    IL_01d3:  ldarg.0
    IL_01d4:  call       instance class Game.DrawBlockEnvironmentData Game.BlockIconWidget::get_DrawBlockEnvironmentData()
    IL_01d9:  callvirt   instance float32 Game.Block::GetIconViewScale(int32,
                                                                       class Game.DrawBlockEnvironmentData)
    IL_01de:  stloc.s    V_10
    IL_01e0:  ldarg.0
    IL_01e1:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.BlockIconWidget::get_CustomViewMatrix()
    IL_01e6:  stloc.s    V_12
    IL_01e8:  ldloca.s   V_12
    IL_01ea:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_HasValue()
    IL_01ef:  brtrue.s   IL_0215

    IL_01f1:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_01f6:  ldarg.0
    IL_01f7:  call       instance int32 Game.BlockIconWidget::get_Contents()
    IL_01fc:  ldelem.ref
    IL_01fd:  ldarg.0
    IL_01fe:  call       instance int32 Game.BlockIconWidget::get_Value()
    IL_0203:  ldarg.0
    IL_0204:  call       instance class Game.DrawBlockEnvironmentData Game.BlockIconWidget::get_DrawBlockEnvironmentData()
    IL_0209:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Block::GetIconBlockOffset(int32,
                                                                                                  class Game.DrawBlockEnvironmentData)
    IL_020e:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(valuetype [Engine]Engine.Vector3)
    IL_0213:  br.s       IL_021a

    IL_0215:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
    IL_021a:  stloc.s    V_11
    IL_021c:  ldsfld     class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.WidgetsManager::PrimitivesRenderer3D
    IL_0221:  ldarg.0
    IL_0222:  call       instance int32 Game.BlockIconWidget::get_Value()
    IL_0227:  ldloc.s    V_10
    IL_0229:  ldloca.s   V_11
    IL_022b:  ldarg.0
    IL_022c:  call       instance class Game.DrawBlockEnvironmentData Game.BlockIconWidget::get_DrawBlockEnvironmentData()
    IL_0231:  callvirt   instance void Game.Block::DrawBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                             int32,
                                                             float32,
                                                             valuetype [Engine]Engine.Matrix&,
                                                             class Game.DrawBlockEnvironmentData)
    IL_0236:  ret
  } // end of method BlockIconWidget::Draw

  .method public hidebysig virtual instance void 
          Measure(valuetype [Engine]Engine.Vector2 availableSize) cil managed
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
  } // end of method BlockIconWidget::Measure

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
} // end of class Game.BlockIconWidget