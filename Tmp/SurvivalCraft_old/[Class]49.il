.class public auto ansi beforefieldinit Game.ComponentDiggingCracks
       extends [EntitySystem]GameEntitySystem.Component
       implements Game.IDrawable
{
  .class sequential ansi sealed nested private beforefieldinit CracksVertex
         extends [System.Runtime]System.ValueType
  {
    .field public float32 X
    .field public float32 Y
    .field public float32 Z
    .field public float32 Tx
    .field public float32 Ty
    .field public valuetype [Engine]Engine.Color Color
    .field public static initonly class [Engine]Engine.Graphics.VertexDeclaration VertexDeclaration
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       52 (0x34)
      .maxstack  8
      IL_0000:  ldc.i4.3
      IL_0001:  newarr     [Engine]Engine.Graphics.VertexElement
      IL_0006:  dup
      IL_0007:  ldc.i4.0
      IL_0008:  ldc.i4.0
      IL_0009:  ldc.i4.2
      IL_000a:  ldc.i4.0
      IL_000b:  newobj     instance void [Engine]Engine.Graphics.VertexElement::.ctor(int32,
                                                                                      valuetype [Engine]Engine.Graphics.VertexElementFormat,
                                                                                      valuetype [Engine]Engine.Graphics.VertexElementSemantic)
      IL_0010:  stelem.ref
      IL_0011:  dup
      IL_0012:  ldc.i4.1
      IL_0013:  ldc.i4.s   12
      IL_0015:  ldc.i4.1
      IL_0016:  ldc.i4.3
      IL_0017:  newobj     instance void [Engine]Engine.Graphics.VertexElement::.ctor(int32,
                                                                                      valuetype [Engine]Engine.Graphics.VertexElementFormat,
                                                                                      valuetype [Engine]Engine.Graphics.VertexElementSemantic)
      IL_001c:  stelem.ref
      IL_001d:  dup
      IL_001e:  ldc.i4.2
      IL_001f:  ldc.i4.s   20
      IL_0021:  ldc.i4.5
      IL_0022:  ldc.i4.1
      IL_0023:  newobj     instance void [Engine]Engine.Graphics.VertexElement::.ctor(int32,
                                                                                      valuetype [Engine]Engine.Graphics.VertexElementFormat,
                                                                                      valuetype [Engine]Engine.Graphics.VertexElementSemantic)
      IL_0028:  stelem.ref
      IL_0029:  newobj     instance void [Engine]Engine.Graphics.VertexDeclaration::.ctor(class [Engine]Engine.Graphics.VertexElement[])
      IL_002e:  stsfld     class [Engine]Engine.Graphics.VertexDeclaration Game.ComponentDiggingCracks/CracksVertex::VertexDeclaration
      IL_0033:  ret
    } // end of method CracksVertex::.cctor

  } // end of class CracksVertex

  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.SubsystemSky m_subsystemSky
  .field private class Game.ComponentMiner m_componentMiner
  .field private class [Engine]Engine.Graphics.Texture2D[] m_textures
  .field private class [Engine]Engine.Graphics.Shader m_shader
  .field private class Game.TerrainCrackGeometry m_geometry
  .field private class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentDiggingCracks/CracksVertex> m_vertices
  .field private valuetype [Engine]Engine.Point3 m_point
  .field private int32 m_value
  .field private static int32[] m_drawOrders
  .method public hidebysig newslot specialname virtual final 
          instance int32[]  get_DrawOrders() cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     int32[] Game.ComponentDiggingCracks::m_drawOrders
    IL_0005:  ret
  } // end of method ComponentDiggingCracks::get_DrawOrders

  .method public hidebysig newslot virtual final 
          instance void  Draw(class Game.Camera camera,
                              int32 drawOrder) cil managed
  {
    // 代码大小       865 (0x361)
    .maxstack  9
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace> V_0,
             valuetype [Engine]Engine.Point3 V_1,
             int32 V_2,
             int32 V_3,
             class Game.Block V_4,
             class [Engine]Engine.DynamicArray`1<uint16> V_5,
             float32 V_6,
             float32 V_7,
             int32 V_8,
             valuetype Game.CellFace V_9,
             int32 V_10,
             valuetype Game.TerrainVertex V_11,
             uint8 V_12,
             valuetype Game.ComponentDiggingCracks/CracksVertex V_13)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentMiner Game.ComponentDiggingCracks::m_componentMiner
    IL_0006:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace> Game.ComponentMiner::get_DigCellFace()
    IL_000b:  stloc.0
    IL_000c:  ldloca.s   V_0
    IL_000e:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace>::get_HasValue()
    IL_0013:  brfalse    IL_0360

    IL_0018:  ldarg.0
    IL_0019:  ldfld      class Game.ComponentMiner Game.ComponentDiggingCracks::m_componentMiner
    IL_001e:  callvirt   instance float32 Game.ComponentMiner::get_DigProgress()
    IL_0023:  ldc.r4     0.0
    IL_0028:  ble.un     IL_0360

    IL_002d:  ldarg.0
    IL_002e:  ldfld      class Game.ComponentMiner Game.ComponentDiggingCracks::m_componentMiner
    IL_0033:  callvirt   instance float32 Game.ComponentMiner::get_DigTime()
    IL_0038:  ldc.r4     0.2
    IL_003d:  ble.un     IL_0360

    IL_0042:  ldarg.0
    IL_0043:  ldfld      class Game.ComponentMiner Game.ComponentDiggingCracks::m_componentMiner
    IL_0048:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace> Game.ComponentMiner::get_DigCellFace()
    IL_004d:  stloc.0
    IL_004e:  ldloca.s   V_0
    IL_0050:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace>::get_Value()
    IL_0055:  stloc.s    V_9
    IL_0057:  ldloca.s   V_9
    IL_0059:  call       instance valuetype [Engine]Engine.Point3 Game.CellFace::get_Point()
    IL_005e:  stloc.1
    IL_005f:  ldarg.0
    IL_0060:  ldfld      class Game.SubsystemTerrain Game.ComponentDiggingCracks::m_subsystemTerrain
    IL_0065:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_006a:  ldloc.1
    IL_006b:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0070:  ldloc.1
    IL_0071:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0076:  ldloc.1
    IL_0077:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_007c:  callvirt   instance int32 Game.Terrain::GetCellValue(int32,
                                                                   int32,
                                                                   int32)
    IL_0081:  stloc.2
    IL_0082:  ldloc.2
    IL_0083:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0088:  stloc.3
    IL_0089:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_008e:  ldloc.3
    IL_008f:  ldelem.ref
    IL_0090:  stloc.s    V_4
    IL_0092:  ldarg.0
    IL_0093:  ldfld      class Game.TerrainCrackGeometry Game.ComponentDiggingCracks::m_geometry
    IL_0098:  brfalse.s  IL_00b4

    IL_009a:  ldloc.2
    IL_009b:  ldarg.0
    IL_009c:  ldfld      int32 Game.ComponentDiggingCracks::m_value
    IL_00a1:  bne.un.s   IL_00b4

    IL_00a3:  ldloc.1
    IL_00a4:  ldarg.0
    IL_00a5:  ldfld      valuetype [Engine]Engine.Point3 Game.ComponentDiggingCracks::m_point
    IL_00aa:  call       bool [Engine]Engine.Point3::op_Inequality(valuetype [Engine]Engine.Point3,
                                                                   valuetype [Engine]Engine.Point3)
    IL_00af:  brfalse    IL_01fa

    IL_00b4:  ldarg.0
    IL_00b5:  newobj     instance void Game.TerrainCrackGeometry::.ctor()
    IL_00ba:  stfld      class Game.TerrainCrackGeometry Game.ComponentDiggingCracks::m_geometry
    IL_00bf:  ldloc.s    V_4
    IL_00c1:  ldarg.0
    IL_00c2:  ldfld      class Game.SubsystemTerrain Game.ComponentDiggingCracks::m_subsystemTerrain
    IL_00c7:  callvirt   instance class Game.BlockGeometryGenerator Game.SubsystemTerrain::get_BlockGeometryGenerator()
    IL_00cc:  ldarg.0
    IL_00cd:  ldfld      class Game.TerrainCrackGeometry Game.ComponentDiggingCracks::m_geometry
    IL_00d2:  ldloc.2
    IL_00d3:  ldloc.1
    IL_00d4:  ldfld      int32 [Engine]Engine.Point3::X
    IL_00d9:  ldloc.1
    IL_00da:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_00df:  ldloc.1
    IL_00e0:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_00e5:  callvirt   instance void Game.Block::GenerateTerrainVertices(class Game.BlockGeometryGenerator,
                                                                           class Game.TerrainGeometrySubsets,
                                                                           int32,
                                                                           int32,
                                                                           int32,
                                                                           int32)
    IL_00ea:  ldarg.0
    IL_00eb:  ldloc.1
    IL_00ec:  stfld      valuetype [Engine]Engine.Point3 Game.ComponentDiggingCracks::m_point
    IL_00f1:  ldarg.0
    IL_00f2:  ldloc.2
    IL_00f3:  stfld      int32 Game.ComponentDiggingCracks::m_value
    IL_00f8:  ldarg.0
    IL_00f9:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentDiggingCracks/CracksVertex> Game.ComponentDiggingCracks::m_vertices
    IL_00fe:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentDiggingCracks/CracksVertex>::Clear()
    IL_0103:  ldc.i4.0
    IL_0104:  stloc.s    V_10
    IL_0106:  br         IL_01de

    IL_010b:  ldarg.0
    IL_010c:  ldfld      class Game.TerrainCrackGeometry Game.ComponentDiggingCracks::m_geometry
    IL_0111:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetOpaque
    IL_0116:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.TerrainGeometrySubset::Vertices
    IL_011b:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0120:  ldloc.s    V_10
    IL_0122:  ldelem     Game.TerrainVertex
    IL_0127:  stloc.s    V_11
    IL_0129:  ldloca.s   V_11
    IL_012b:  ldflda     valuetype [Engine]Engine.Color Game.TerrainVertex::Color
    IL_0130:  call       instance uint8 [Engine]Engine.Color::get_R()
    IL_0135:  ldloca.s   V_11
    IL_0137:  ldflda     valuetype [Engine]Engine.Color Game.TerrainVertex::Color
    IL_013c:  call       instance uint8 [Engine]Engine.Color::get_G()
    IL_0141:  add
    IL_0142:  ldloca.s   V_11
    IL_0144:  ldflda     valuetype [Engine]Engine.Color Game.TerrainVertex::Color
    IL_0149:  call       instance uint8 [Engine]Engine.Color::get_A()
    IL_014e:  add
    IL_014f:  ldc.i4.3
    IL_0150:  div
    IL_0151:  conv.u1
    IL_0152:  stloc.s    V_12
    IL_0154:  ldloca.s   V_13
    IL_0156:  ldloc.s    V_11
    IL_0158:  ldfld      float32 Game.TerrainVertex::X
    IL_015d:  stfld      float32 Game.ComponentDiggingCracks/CracksVertex::X
    IL_0162:  ldloca.s   V_13
    IL_0164:  ldloc.s    V_11
    IL_0166:  ldfld      float32 Game.TerrainVertex::Y
    IL_016b:  stfld      float32 Game.ComponentDiggingCracks/CracksVertex::Y
    IL_0170:  ldloca.s   V_13
    IL_0172:  ldloc.s    V_11
    IL_0174:  ldfld      float32 Game.TerrainVertex::Z
    IL_0179:  stfld      float32 Game.ComponentDiggingCracks/CracksVertex::Z
    IL_017e:  ldloca.s   V_13
    IL_0180:  ldloc.s    V_11
    IL_0182:  ldfld      int16 Game.TerrainVertex::Tx
    IL_0187:  conv.r4
    IL_0188:  ldc.r4     32767.
    IL_018d:  div
    IL_018e:  ldc.r4     16.
    IL_0193:  mul
    IL_0194:  stfld      float32 Game.ComponentDiggingCracks/CracksVertex::Tx
    IL_0199:  ldloca.s   V_13
    IL_019b:  ldloc.s    V_11
    IL_019d:  ldfld      int16 Game.TerrainVertex::Ty
    IL_01a2:  conv.r4
    IL_01a3:  ldc.r4     32767.
    IL_01a8:  div
    IL_01a9:  ldc.r4     16.
    IL_01ae:  mul
    IL_01af:  stfld      float32 Game.ComponentDiggingCracks/CracksVertex::Ty
    IL_01b4:  ldloca.s   V_13
    IL_01b6:  ldloc.s    V_12
    IL_01b8:  ldloc.s    V_12
    IL_01ba:  ldloc.s    V_12
    IL_01bc:  ldc.i4     0x80
    IL_01c1:  newobj     instance void [Engine]Engine.Color::.ctor(uint8,
                                                                   uint8,
                                                                   uint8,
                                                                   uint8)
    IL_01c6:  stfld      valuetype [Engine]Engine.Color Game.ComponentDiggingCracks/CracksVertex::Color
    IL_01cb:  ldarg.0
    IL_01cc:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentDiggingCracks/CracksVertex> Game.ComponentDiggingCracks::m_vertices
    IL_01d1:  ldloc.s    V_13
    IL_01d3:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentDiggingCracks/CracksVertex>::Add(!0)
    IL_01d8:  ldloc.s    V_10
    IL_01da:  ldc.i4.1
    IL_01db:  add
    IL_01dc:  stloc.s    V_10
    IL_01de:  ldloc.s    V_10
    IL_01e0:  ldarg.0
    IL_01e1:  ldfld      class Game.TerrainCrackGeometry Game.ComponentDiggingCracks::m_geometry
    IL_01e6:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetOpaque
    IL_01eb:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.TerrainGeometrySubset::Vertices
    IL_01f0:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_01f5:  blt        IL_010b

    IL_01fa:  ldarg.0
    IL_01fb:  ldfld      class Game.TerrainCrackGeometry Game.ComponentDiggingCracks::m_geometry
    IL_0200:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetOpaque
    IL_0205:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.TerrainGeometrySubset::Indices
    IL_020a:  stloc.s    V_5
    IL_020c:  ldarg.0
    IL_020d:  ldfld      class Game.SubsystemSky Game.ComponentDiggingCracks::m_subsystemSky
    IL_0212:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.SubsystemSky::get_ViewFogRange()
    IL_0217:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_021c:  stloc.s    V_6
    IL_021e:  ldarg.0
    IL_021f:  ldfld      class Game.SubsystemSky Game.ComponentDiggingCracks::m_subsystemSky
    IL_0224:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.SubsystemSky::get_ViewFogRange()
    IL_0229:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_022e:  stloc.s    V_7
    IL_0230:  ldarg.0
    IL_0231:  ldfld      class Game.ComponentMiner Game.ComponentDiggingCracks::m_componentMiner
    IL_0236:  callvirt   instance float32 Game.ComponentMiner::get_DigProgress()
    IL_023b:  ldc.r4     8.
    IL_0240:  mul
    IL_0241:  conv.i4
    IL_0242:  ldc.i4.0
    IL_0243:  ldc.i4.7
    IL_0244:  call       int32 [Engine]Engine.MathUtils::Clamp(int32,
                                                               int32,
                                                               int32)
    IL_0249:  stloc.s    V_8
    IL_024b:  ldsfld     class [Engine]Engine.Graphics.BlendState [Engine]Engine.Graphics.BlendState::NonPremultiplied
    IL_0250:  call       void [Engine]Engine.Graphics.Display::set_BlendState(class [Engine]Engine.Graphics.BlendState)
    IL_0255:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::Default
    IL_025a:  call       void [Engine]Engine.Graphics.Display::set_DepthStencilState(class [Engine]Engine.Graphics.DepthStencilState)
    IL_025f:  ldsfld     class [Engine]Engine.Graphics.RasterizerState [Engine]Engine.Graphics.RasterizerState::CullCounterClockwiseScissor
    IL_0264:  call       void [Engine]Engine.Graphics.Display::set_RasterizerState(class [Engine]Engine.Graphics.RasterizerState)
    IL_0269:  ldarg.0
    IL_026a:  ldfld      class [Engine]Engine.Graphics.Shader Game.ComponentDiggingCracks::m_shader
    IL_026f:  ldstr      "u_worldViewProjectionMatrix"
    IL_0274:  ldc.i4.0
    IL_0275:  callvirt   instance class [Engine]Engine.Graphics.ShaderParameter [Engine]Engine.Graphics.Shader::GetParameter(string,
                                                                                                                             bool)
    IL_027a:  ldarg.1
    IL_027b:  callvirt   instance valuetype [Engine]Engine.Matrix Game.Camera::get_ViewProjectionMatrix()
    IL_0280:  callvirt   instance void [Engine]Engine.Graphics.ShaderParameter::SetValue(valuetype [Engine]Engine.Matrix)
    IL_0285:  ldarg.0
    IL_0286:  ldfld      class [Engine]Engine.Graphics.Shader Game.ComponentDiggingCracks::m_shader
    IL_028b:  ldstr      "u_viewPosition"
    IL_0290:  ldc.i4.0
    IL_0291:  callvirt   instance class [Engine]Engine.Graphics.ShaderParameter [Engine]Engine.Graphics.Shader::GetParameter(string,
                                                                                                                             bool)
    IL_0296:  ldarg.1
    IL_0297:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewPosition()
    IL_029c:  callvirt   instance void [Engine]Engine.Graphics.ShaderParameter::SetValue(valuetype [Engine]Engine.Vector3)
    IL_02a1:  ldarg.0
    IL_02a2:  ldfld      class [Engine]Engine.Graphics.Shader Game.ComponentDiggingCracks::m_shader
    IL_02a7:  ldstr      "u_texture"
    IL_02ac:  ldc.i4.0
    IL_02ad:  callvirt   instance class [Engine]Engine.Graphics.ShaderParameter [Engine]Engine.Graphics.Shader::GetParameter(string,
                                                                                                                             bool)
    IL_02b2:  ldarg.0
    IL_02b3:  ldfld      class [Engine]Engine.Graphics.Texture2D[] Game.ComponentDiggingCracks::m_textures
    IL_02b8:  ldloc.s    V_8
    IL_02ba:  ldelem.ref
    IL_02bb:  callvirt   instance void [Engine]Engine.Graphics.ShaderParameter::SetValue(class [Engine]Engine.Graphics.Texture2D)
    IL_02c0:  ldarg.0
    IL_02c1:  ldfld      class [Engine]Engine.Graphics.Shader Game.ComponentDiggingCracks::m_shader
    IL_02c6:  ldstr      "u_samplerState"
    IL_02cb:  ldc.i4.0
    IL_02cc:  callvirt   instance class [Engine]Engine.Graphics.ShaderParameter [Engine]Engine.Graphics.Shader::GetParameter(string,
                                                                                                                             bool)
    IL_02d1:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::PointWrap
    IL_02d6:  callvirt   instance void [Engine]Engine.Graphics.ShaderParameter::SetValue(class [Engine]Engine.Graphics.SamplerState)
    IL_02db:  ldarg.0
    IL_02dc:  ldfld      class [Engine]Engine.Graphics.Shader Game.ComponentDiggingCracks::m_shader
    IL_02e1:  ldstr      "u_fogColor"
    IL_02e6:  ldc.i4.0
    IL_02e7:  callvirt   instance class [Engine]Engine.Graphics.ShaderParameter [Engine]Engine.Graphics.Shader::GetParameter(string,
                                                                                                                             bool)
    IL_02ec:  ldarg.0
    IL_02ed:  ldfld      class Game.SubsystemSky Game.ComponentDiggingCracks::m_subsystemSky
    IL_02f2:  callvirt   instance valuetype [Engine]Engine.Color Game.SubsystemSky::get_ViewFogColor()
    IL_02f7:  newobj     instance void [Engine]Engine.Vector3::.ctor(valuetype [Engine]Engine.Color)
    IL_02fc:  callvirt   instance void [Engine]Engine.Graphics.ShaderParameter::SetValue(valuetype [Engine]Engine.Vector3)
    IL_0301:  ldarg.0
    IL_0302:  ldfld      class [Engine]Engine.Graphics.Shader Game.ComponentDiggingCracks::m_shader
    IL_0307:  ldstr      "u_fogStartInvLength"
    IL_030c:  ldc.i4.0
    IL_030d:  callvirt   instance class [Engine]Engine.Graphics.ShaderParameter [Engine]Engine.Graphics.Shader::GetParameter(string,
                                                                                                                             bool)
    IL_0312:  ldloc.s    V_6
    IL_0314:  ldc.r4     1.
    IL_0319:  ldloc.s    V_7
    IL_031b:  ldloc.s    V_6
    IL_031d:  sub
    IL_031e:  div
    IL_031f:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0324:  callvirt   instance void [Engine]Engine.Graphics.ShaderParameter::SetValue(valuetype [Engine]Engine.Vector2)
    IL_0329:  ldc.i4.2
    IL_032a:  ldarg.0
    IL_032b:  ldfld      class [Engine]Engine.Graphics.Shader Game.ComponentDiggingCracks::m_shader
    IL_0330:  ldsfld     class [Engine]Engine.Graphics.VertexDeclaration Game.ComponentDiggingCracks/CracksVertex::VertexDeclaration
    IL_0335:  ldarg.0
    IL_0336:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentDiggingCracks/CracksVertex> Game.ComponentDiggingCracks::m_vertices
    IL_033b:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentDiggingCracks/CracksVertex>::get_Array()
    IL_0340:  ldc.i4.0
    IL_0341:  ldarg.0
    IL_0342:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentDiggingCracks/CracksVertex> Game.ComponentDiggingCracks::m_vertices
    IL_0347:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentDiggingCracks/CracksVertex>::get_Count()
    IL_034c:  ldloc.s    V_5
    IL_034e:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0353:  ldc.i4.0
    IL_0354:  ldloc.s    V_5
    IL_0356:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_035b:  call       void [Engine]Engine.Graphics.Display::DrawUserIndexed<valuetype Game.ComponentDiggingCracks/CracksVertex>(valuetype [Engine]Engine.Graphics.PrimitiveType,
                                                                                                                                   class [Engine]Engine.Graphics.Shader,
                                                                                                                                   class [Engine]Engine.Graphics.VertexDeclaration,
                                                                                                                                   !!0[],
                                                                                                                                   int32,
                                                                                                                                   int32,
                                                                                                                                   uint16[],
                                                                                                                                   int32,
                                                                                                                                   int32)
    IL_0360:  ret
  } // end of method ComponentDiggingCracks::Draw

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       135 (0x87)
    .maxstack  8
    .locals init (int32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_000d:  stfld      class Game.SubsystemTerrain Game.ComponentDiggingCracks::m_subsystemTerrain
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemSky>(bool)
    IL_001f:  stfld      class Game.SubsystemSky Game.ComponentDiggingCracks::m_subsystemSky
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentMiner>(bool)
    IL_0031:  stfld      class Game.ComponentMiner Game.ComponentDiggingCracks::m_componentMiner
    IL_0036:  ldarg.0
    IL_0037:  ldstr      "Shaders/AlphaTested"
    IL_003c:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Shader>(string)
    IL_0041:  stfld      class [Engine]Engine.Graphics.Shader Game.ComponentDiggingCracks::m_shader
    IL_0046:  ldarg.0
    IL_0047:  ldc.i4.8
    IL_0048:  newarr     [Engine]Engine.Graphics.Texture2D
    IL_004d:  stfld      class [Engine]Engine.Graphics.Texture2D[] Game.ComponentDiggingCracks::m_textures
    IL_0052:  ldc.i4.0
    IL_0053:  stloc.0
    IL_0054:  br.s       IL_0082

    IL_0056:  ldarg.0
    IL_0057:  ldfld      class [Engine]Engine.Graphics.Texture2D[] Game.ComponentDiggingCracks::m_textures
    IL_005c:  ldloc.0
    IL_005d:  ldstr      "Textures/Cracks{0}"
    IL_0062:  ldc.i4.1
    IL_0063:  newarr     [System.Runtime]System.Object
    IL_0068:  dup
    IL_0069:  ldc.i4.0
    IL_006a:  ldloc.0
    IL_006b:  ldc.i4.1
    IL_006c:  add
    IL_006d:  box        [System.Runtime]System.Int32
    IL_0072:  stelem.ref
    IL_0073:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0078:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Texture2D>(string)
    IL_007d:  stelem.ref
    IL_007e:  ldloc.0
    IL_007f:  ldc.i4.1
    IL_0080:  add
    IL_0081:  stloc.0
    IL_0082:  ldloc.0
    IL_0083:  ldc.i4.8
    IL_0084:  blt.s      IL_0056

    IL_0086:  ret
  } // end of method ComponentDiggingCracks::Load

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentDiggingCracks/CracksVertex>::.ctor()
    IL_0006:  stfld      class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentDiggingCracks/CracksVertex> Game.ComponentDiggingCracks::m_vertices
    IL_000b:  ldarg.0
    IL_000c:  call       instance void [EntitySystem]GameEntitySystem.Component::.ctor()
    IL_0011:  ret
  } // end of method ComponentDiggingCracks::.ctor

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       16 (0x10)
    .maxstack  8
    IL_0000:  ldc.i4.1
    IL_0001:  newarr     [System.Runtime]System.Int32
    IL_0006:  dup
    IL_0007:  ldc.i4.0
    IL_0008:  ldc.i4.1
    IL_0009:  stelem.i4
    IL_000a:  stsfld     int32[] Game.ComponentDiggingCracks::m_drawOrders
    IL_000f:  ret
  } // end of method ComponentDiggingCracks::.cctor

  .property instance int32[] DrawOrders()
  {
    .get instance int32[] Game.ComponentDiggingCracks::get_DrawOrders()
  } // end of property ComponentDiggingCracks::DrawOrders
} // end of class Game.ComponentDiggingCracks