.class public auto ansi beforefieldinit Game.FurnitureBlock
       extends Game.Block
       implements Game.IPaintableBlock,
                  Game.IElectricElementBlock
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.FurnitureBlock/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`2<class Game.FurnitureDesign,class Game.FurnitureDesign> '<>9__19_0'
    .field public static class [System.Runtime]System.Func`2<class Game.FurnitureDesign,class Game.FurnitureDesign> '<>9__19_1'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.FurnitureBlock/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.FurnitureBlock/'<>c' Game.FurnitureBlock/'<>c'::'<>9'
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

    .method assembly hidebysig instance class Game.FurnitureDesign 
            '<GetAdHocCraftingRecipe>b__19_0'(class Game.FurnitureDesign d) cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  callvirt   instance class Game.FurnitureDesign Game.FurnitureDesign::Clone()
      IL_0006:  ret
    } // end of method '<>c'::'<GetAdHocCraftingRecipe>b__19_0'

    .method assembly hidebysig instance class Game.FurnitureDesign 
            '<GetAdHocCraftingRecipe>b__19_1'(class Game.FurnitureDesign d) cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  callvirt   instance class Game.FurnitureDesign Game.FurnitureDesign::Clone()
      IL_0006:  ret
    } // end of method '<>c'::'<GetAdHocCraftingRecipe>b__19_1'

  } // end of class '<>c'

  .field public static literal int32 Index = int32(0x000000E3)
  .field private valuetype [Engine]Engine.Matrix[] m_matrices
  .field private int32[][] m_facesMaps
  .method public hidebysig virtual instance void 
          Initialize() cil managed
  {
    // 代码大小       110 (0x6e)
    .maxstack  6
    .locals init (int32 V_0)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  br.s       IL_0063

    IL_0004:  ldarg.0
    IL_0005:  ldfld      valuetype [Engine]Engine.Matrix[] Game.FurnitureBlock::m_matrices
    IL_000a:  ldloc.0
    IL_000b:  ldc.r4     -0.5
    IL_0010:  ldc.r4     0.0
    IL_0015:  ldc.r4     -0.5
    IL_001a:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_001f:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(valuetype [Engine]Engine.Vector3)
    IL_0024:  ldloc.0
    IL_0025:  conv.r4
    IL_0026:  ldc.r4     3.1415927
    IL_002b:  mul
    IL_002c:  ldc.r4     2.
    IL_0031:  div
    IL_0032:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_0037:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_003c:  ldc.r4     0.5
    IL_0041:  ldc.r4     0.0
    IL_0046:  ldc.r4     0.5
    IL_004b:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0050:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(valuetype [Engine]Engine.Vector3)
    IL_0055:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_005a:  stelem     [Engine]Engine.Matrix
    IL_005f:  ldloc.0
    IL_0060:  ldc.i4.1
    IL_0061:  add
    IL_0062:  stloc.0
    IL_0063:  ldloc.0
    IL_0064:  ldc.i4.4
    IL_0065:  blt.s      IL_0004

    IL_0067:  ldarg.0
    IL_0068:  call       instance void Game.Block::Initialize()
    IL_006d:  ret
  } // end of method FurnitureBlock::Initialize

  .method public hidebysig virtual instance void 
          GenerateTerrainVertices(class Game.BlockGeometryGenerator generator,
                                  class Game.TerrainGeometrySubsets geometry,
                                  int32 'value',
                                  int32 x,
                                  int32 y,
                                  int32 z) cil managed
  {
    // 代码大小       350 (0x15e)
    .maxstack  11
    .locals init (int32 V_0,
             int32 V_1,
             class Game.FurnitureDesign V_2,
             class Game.FurnitureGeometry V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             uint8 V_7,
             valuetype [Engine]Engine.Color V_8,
             int32 V_9)
    IL_0000:  ldarg.1
    IL_0001:  ldfld      class Game.SubsystemFurnitureBlockBehavior Game.BlockGeometryGenerator::SubsystemFurnitureBlockBehavior
    IL_0006:  brfalse    IL_015d

    IL_000b:  ldarg.3
    IL_000c:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0011:  dup
    IL_0012:  call       int32 Game.FurnitureBlock::GetDesignIndex(int32)
    IL_0017:  stloc.0
    IL_0018:  call       int32 Game.FurnitureBlock::GetRotation(int32)
    IL_001d:  stloc.1
    IL_001e:  ldarg.1
    IL_001f:  ldfld      class Game.SubsystemFurnitureBlockBehavior Game.BlockGeometryGenerator::SubsystemFurnitureBlockBehavior
    IL_0024:  ldloc.0
    IL_0025:  callvirt   instance class Game.FurnitureDesign Game.SubsystemFurnitureBlockBehavior::GetDesign(int32)
    IL_002a:  stloc.2
    IL_002b:  ldloc.2
    IL_002c:  brfalse    IL_015d

    IL_0031:  ldloc.2
    IL_0032:  callvirt   instance class Game.FurnitureGeometry Game.FurnitureDesign::get_Geometry()
    IL_0037:  stloc.3
    IL_0038:  ldloc.2
    IL_0039:  callvirt   instance int32 Game.FurnitureDesign::get_MountingFacesMask()
    IL_003e:  stloc.s    V_4
    IL_0040:  ldc.i4.0
    IL_0041:  stloc.s    V_5
    IL_0043:  br         IL_0155

    IL_0048:  ldloc.s    V_5
    IL_004a:  ldc.i4.4
    IL_004b:  blt.s      IL_0051

    IL_004d:  ldloc.s    V_5
    IL_004f:  br.s       IL_0057

    IL_0051:  ldloc.s    V_5
    IL_0053:  ldloc.1
    IL_0054:  add
    IL_0055:  ldc.i4.4
    IL_0056:  rem
    IL_0057:  call       int32 Game.CellFace::OppositeFace(int32)
    IL_005c:  stloc.s    V_6
    IL_005e:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValueAndFace
    IL_0063:  ldc.i4.s   15
    IL_0065:  ldc.i4.s   16
    IL_0067:  ldloc.s    V_6
    IL_0069:  mul
    IL_006a:  add
    IL_006b:  ldelem.r4
    IL_006c:  ldc.r4     255.
    IL_0071:  mul
    IL_0072:  conv.u1
    IL_0073:  stloc.s    V_7
    IL_0075:  ldloca.s   V_8
    IL_0077:  ldloc.s    V_7
    IL_0079:  ldloc.s    V_7
    IL_007b:  ldloc.s    V_7
    IL_007d:  call       instance void [Engine]Engine.Color::.ctor(uint8,
                                                                   uint8,
                                                                   uint8)
    IL_0082:  ldloc.3
    IL_0083:  ldfld      class Game.BlockMesh[] Game.FurnitureGeometry::SubsetOpaqueByFace
    IL_0088:  ldloc.s    V_5
    IL_008a:  ldelem.ref
    IL_008b:  brfalse.s  IL_00c7

    IL_008d:  ldarg.1
    IL_008e:  ldarg.0
    IL_008f:  ldarg.s    x
    IL_0091:  ldarg.s    y
    IL_0093:  ldarg.s    z
    IL_0095:  ldloc.3
    IL_0096:  ldfld      class Game.BlockMesh[] Game.FurnitureGeometry::SubsetOpaqueByFace
    IL_009b:  ldloc.s    V_5
    IL_009d:  ldelem.ref
    IL_009e:  ldloc.s    V_8
    IL_00a0:  ldarg.0
    IL_00a1:  ldfld      valuetype [Engine]Engine.Matrix[] Game.FurnitureBlock::m_matrices
    IL_00a6:  ldloc.1
    IL_00a7:  ldelem     [Engine]Engine.Matrix
    IL_00ac:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_00b1:  ldarg.0
    IL_00b2:  ldfld      int32[][] Game.FurnitureBlock::m_facesMaps
    IL_00b7:  ldloc.1
    IL_00b8:  ldelem.ref
    IL_00b9:  ldarg.2
    IL_00ba:  ldfld      class Game.TerrainGeometrySubset[] Game.TerrainGeometrySubsets::OpaqueSubsetsByFace
    IL_00bf:  ldloc.s    V_6
    IL_00c1:  ldelem.ref
    IL_00c2:  callvirt   instance void Game.BlockGeometryGenerator::GenerateShadedMeshVertices(class Game.Block,
                                                                                               int32,
                                                                                               int32,
                                                                                               int32,
                                                                                               class Game.BlockMesh,
                                                                                               valuetype [Engine]Engine.Color,
                                                                                               valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>,
                                                                                               int32[],
                                                                                               class Game.TerrainGeometrySubset)
    IL_00c7:  ldloc.3
    IL_00c8:  ldfld      class Game.BlockMesh[] Game.FurnitureGeometry::SubsetAlphaTestByFace
    IL_00cd:  ldloc.s    V_5
    IL_00cf:  ldelem.ref
    IL_00d0:  brfalse.s  IL_010c

    IL_00d2:  ldarg.1
    IL_00d3:  ldarg.0
    IL_00d4:  ldarg.s    x
    IL_00d6:  ldarg.s    y
    IL_00d8:  ldarg.s    z
    IL_00da:  ldloc.3
    IL_00db:  ldfld      class Game.BlockMesh[] Game.FurnitureGeometry::SubsetAlphaTestByFace
    IL_00e0:  ldloc.s    V_5
    IL_00e2:  ldelem.ref
    IL_00e3:  ldloc.s    V_8
    IL_00e5:  ldarg.0
    IL_00e6:  ldfld      valuetype [Engine]Engine.Matrix[] Game.FurnitureBlock::m_matrices
    IL_00eb:  ldloc.1
    IL_00ec:  ldelem     [Engine]Engine.Matrix
    IL_00f1:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_00f6:  ldarg.0
    IL_00f7:  ldfld      int32[][] Game.FurnitureBlock::m_facesMaps
    IL_00fc:  ldloc.1
    IL_00fd:  ldelem.ref
    IL_00fe:  ldarg.2
    IL_00ff:  ldfld      class Game.TerrainGeometrySubset[] Game.TerrainGeometrySubsets::AlphaTestSubsetsByFace
    IL_0104:  ldloc.s    V_6
    IL_0106:  ldelem.ref
    IL_0107:  callvirt   instance void Game.BlockGeometryGenerator::GenerateShadedMeshVertices(class Game.Block,
                                                                                               int32,
                                                                                               int32,
                                                                                               int32,
                                                                                               class Game.BlockMesh,
                                                                                               valuetype [Engine]Engine.Color,
                                                                                               valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>,
                                                                                               int32[],
                                                                                               class Game.TerrainGeometrySubset)
    IL_010c:  ldloc.s    V_5
    IL_010e:  ldc.i4.4
    IL_010f:  blt.s      IL_0115

    IL_0111:  ldloc.s    V_5
    IL_0113:  br.s       IL_011d

    IL_0115:  ldloc.s    V_5
    IL_0117:  ldloc.1
    IL_0118:  sub
    IL_0119:  ldc.i4.4
    IL_011a:  add
    IL_011b:  ldc.i4.4
    IL_011c:  rem
    IL_011d:  call       int32 Game.CellFace::OppositeFace(int32)
    IL_0122:  stloc.s    V_9
    IL_0124:  ldloc.s    V_4
    IL_0126:  ldc.i4.1
    IL_0127:  ldloc.s    V_9
    IL_0129:  ldc.i4.s   31
    IL_012b:  and
    IL_012c:  shl
    IL_012d:  and
    IL_012e:  brfalse.s  IL_014f

    IL_0130:  ldarg.1
    IL_0131:  ldarg.3
    IL_0132:  ldarg.s    x
    IL_0134:  ldarg.s    y
    IL_0136:  ldarg.s    z
    IL_0138:  ldloc.s    V_5
    IL_013a:  ldc.r4     0.0
    IL_013f:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_0144:  ldarg.2
    IL_0145:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetOpaque
    IL_014a:  callvirt   instance void Game.BlockGeometryGenerator::GenerateWireVertices(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         valuetype [Engine]Engine.Vector2,
                                                                                         class Game.TerrainGeometrySubset)
    IL_014f:  ldloc.s    V_5
    IL_0151:  ldc.i4.1
    IL_0152:  add
    IL_0153:  stloc.s    V_5
    IL_0155:  ldloc.s    V_5
    IL_0157:  ldc.i4.6
    IL_0158:  blt        IL_0048

    IL_015d:  ret
  } // end of method FurnitureBlock::GenerateTerrainVertices

  .method public hidebysig virtual instance void 
          DrawBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D primitivesRenderer,
                    int32 'value',
                    valuetype [Engine]Engine.Color color,
                    float32 size,
                    valuetype [Engine]Engine.Matrix& matrix,
                    class Game.DrawBlockEnvironmentData environmentData) cil managed
  {
    // 代码大小       359 (0x167)
    .maxstack  6
    .locals init (int32 V_0,
             class Game.FurnitureDesign V_1,
             valuetype [Engine]Engine.Matrix V_2,
             class Game.FurnitureGeometry V_3,
             valuetype [Engine]Engine.Vector3 V_4,
             valuetype [Engine]Engine.Box V_5,
             int32 V_6,
             float32 V_7,
             valuetype [Engine]Engine.Color V_8)
    IL_0000:  ldarg.s    environmentData
    IL_0002:  ldfld      class Game.SubsystemTerrain Game.DrawBlockEnvironmentData::SubsystemTerrain
    IL_0007:  brfalse    IL_0166

    IL_000c:  ldarg.2
    IL_000d:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0012:  call       int32 Game.FurnitureBlock::GetDesignIndex(int32)
    IL_0017:  stloc.0
    IL_0018:  ldarg.s    environmentData
    IL_001a:  ldfld      class Game.SubsystemTerrain Game.DrawBlockEnvironmentData::SubsystemTerrain
    IL_001f:  callvirt   instance class Game.SubsystemFurnitureBlockBehavior Game.SubsystemTerrain::get_SubsystemFurnitureBlockBehavior()
    IL_0024:  ldloc.0
    IL_0025:  callvirt   instance class Game.FurnitureDesign Game.SubsystemFurnitureBlockBehavior::GetDesign(int32)
    IL_002a:  stloc.1
    IL_002b:  ldloc.1
    IL_002c:  brfalse    IL_0166

    IL_0031:  ldloca.s   V_4
    IL_0033:  initobj    [Engine]Engine.Vector3
    IL_0039:  ldloca.s   V_4
    IL_003b:  ldc.r4     -0.5
    IL_0040:  ldloc.1
    IL_0041:  callvirt   instance valuetype [Engine]Engine.Box Game.FurnitureDesign::get_Box()
    IL_0046:  ldfld      int32 [Engine]Engine.Box::Left
    IL_004b:  ldloc.1
    IL_004c:  callvirt   instance valuetype [Engine]Engine.Box Game.FurnitureDesign::get_Box()
    IL_0051:  stloc.s    V_5
    IL_0053:  ldloca.s   V_5
    IL_0055:  call       instance int32 [Engine]Engine.Box::get_Right()
    IL_005a:  add
    IL_005b:  conv.r4
    IL_005c:  mul
    IL_005d:  ldloc.1
    IL_005e:  callvirt   instance int32 Game.FurnitureDesign::get_Resolution()
    IL_0063:  conv.r4
    IL_0064:  div
    IL_0065:  stfld      float32 [Engine]Engine.Vector3::X
    IL_006a:  ldloca.s   V_4
    IL_006c:  ldc.r4     -0.5
    IL_0071:  ldloc.1
    IL_0072:  callvirt   instance valuetype [Engine]Engine.Box Game.FurnitureDesign::get_Box()
    IL_0077:  ldfld      int32 [Engine]Engine.Box::Top
    IL_007c:  ldloc.1
    IL_007d:  callvirt   instance valuetype [Engine]Engine.Box Game.FurnitureDesign::get_Box()
    IL_0082:  stloc.s    V_5
    IL_0084:  ldloca.s   V_5
    IL_0086:  call       instance int32 [Engine]Engine.Box::get_Bottom()
    IL_008b:  add
    IL_008c:  conv.r4
    IL_008d:  mul
    IL_008e:  ldloc.1
    IL_008f:  callvirt   instance int32 Game.FurnitureDesign::get_Resolution()
    IL_0094:  conv.r4
    IL_0095:  div
    IL_0096:  stfld      float32 [Engine]Engine.Vector3::Y
    IL_009b:  ldloca.s   V_4
    IL_009d:  ldc.r4     -0.5
    IL_00a2:  ldloc.1
    IL_00a3:  callvirt   instance valuetype [Engine]Engine.Box Game.FurnitureDesign::get_Box()
    IL_00a8:  ldfld      int32 [Engine]Engine.Box::Near
    IL_00ad:  ldloc.1
    IL_00ae:  callvirt   instance valuetype [Engine]Engine.Box Game.FurnitureDesign::get_Box()
    IL_00b3:  stloc.s    V_5
    IL_00b5:  ldloca.s   V_5
    IL_00b7:  call       instance int32 [Engine]Engine.Box::get_Far()
    IL_00bc:  add
    IL_00bd:  conv.r4
    IL_00be:  mul
    IL_00bf:  ldloc.1
    IL_00c0:  callvirt   instance int32 Game.FurnitureDesign::get_Resolution()
    IL_00c5:  conv.r4
    IL_00c6:  div
    IL_00c7:  stfld      float32 [Engine]Engine.Vector3::Z
    IL_00cc:  ldloc.s    V_4
    IL_00ce:  ldarg.s    size
    IL_00d0:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_00d5:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(valuetype [Engine]Engine.Vector3)
    IL_00da:  ldarg.s    matrix
    IL_00dc:  ldobj      [Engine]Engine.Matrix
    IL_00e1:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00e6:  stloc.2
    IL_00e7:  ldloc.1
    IL_00e8:  callvirt   instance class Game.FurnitureGeometry Game.FurnitureDesign::get_Geometry()
    IL_00ed:  stloc.3
    IL_00ee:  ldc.i4.0
    IL_00ef:  stloc.s    V_6
    IL_00f1:  br.s       IL_0161

    IL_00f3:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValueAndFace
    IL_00f8:  ldarg.s    environmentData
    IL_00fa:  ldfld      int32 Game.DrawBlockEnvironmentData::Light
    IL_00ff:  ldc.i4.s   16
    IL_0101:  ldloc.s    V_6
    IL_0103:  call       int32 Game.CellFace::OppositeFace(int32)
    IL_0108:  mul
    IL_0109:  add
    IL_010a:  ldelem.r4
    IL_010b:  stloc.s    V_7
    IL_010d:  ldarg.3
    IL_010e:  ldloc.s    V_7
    IL_0110:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::MultiplyColorOnly(valuetype [Engine]Engine.Color,
                                                                                                float32)
    IL_0115:  stloc.s    V_8
    IL_0117:  ldloc.3
    IL_0118:  ldfld      class Game.BlockMesh[] Game.FurnitureGeometry::SubsetOpaqueByFace
    IL_011d:  ldloc.s    V_6
    IL_011f:  ldelem.ref
    IL_0120:  brfalse.s  IL_0139

    IL_0122:  ldarg.1
    IL_0123:  ldloc.3
    IL_0124:  ldfld      class Game.BlockMesh[] Game.FurnitureGeometry::SubsetOpaqueByFace
    IL_0129:  ldloc.s    V_6
    IL_012b:  ldelem.ref
    IL_012c:  ldloc.s    V_8
    IL_012e:  ldarg.s    size
    IL_0130:  ldloca.s   V_2
    IL_0132:  ldarg.s    environmentData
    IL_0134:  call       void Game.BlocksManager::DrawMeshBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                                class Game.BlockMesh,
                                                                valuetype [Engine]Engine.Color,
                                                                float32,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                class Game.DrawBlockEnvironmentData)
    IL_0139:  ldloc.3
    IL_013a:  ldfld      class Game.BlockMesh[] Game.FurnitureGeometry::SubsetAlphaTestByFace
    IL_013f:  ldloc.s    V_6
    IL_0141:  ldelem.ref
    IL_0142:  brfalse.s  IL_015b

    IL_0144:  ldarg.1
    IL_0145:  ldloc.3
    IL_0146:  ldfld      class Game.BlockMesh[] Game.FurnitureGeometry::SubsetAlphaTestByFace
    IL_014b:  ldloc.s    V_6
    IL_014d:  ldelem.ref
    IL_014e:  ldloc.s    V_8
    IL_0150:  ldarg.s    size
    IL_0152:  ldloca.s   V_2
    IL_0154:  ldarg.s    environmentData
    IL_0156:  call       void Game.BlocksManager::DrawMeshBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                                class Game.BlockMesh,
                                                                valuetype [Engine]Engine.Color,
                                                                float32,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                class Game.DrawBlockEnvironmentData)
    IL_015b:  ldloc.s    V_6
    IL_015d:  ldc.i4.1
    IL_015e:  add
    IL_015f:  stloc.s    V_6
    IL_0161:  ldloc.s    V_6
    IL_0163:  ldc.i4.6
    IL_0164:  blt.s      IL_00f3

    IL_0166:  ret
  } // end of method FurnitureBlock::DrawBlock

  .method public hidebysig virtual instance int32 
          GetShadowStrength(int32 'value') cil managed
  {
    // 代码大小       16 (0x10)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  call       int32 Game.FurnitureBlock::GetShadowStrengthFactor(int32)
    IL_000b:  ldc.i4.3
    IL_000c:  mul
    IL_000d:  ldc.i4.1
    IL_000e:  add
    IL_000f:  ret
  } // end of method FurnitureBlock::GetShadowStrength

  .method public hidebysig virtual instance int32 
          GetEmittedLightAmount(int32 'value') cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  call       bool Game.FurnitureBlock::GetIsLightEmitter(int32)
    IL_000b:  brtrue.s   IL_000f

    IL_000d:  ldc.i4.0
    IL_000e:  ret

    IL_000f:  ldc.i4.s   15
    IL_0011:  ret
  } // end of method FurnitureBlock::GetEmittedLightAmount

  .method public hidebysig virtual instance string 
          GetDisplayName(class Game.SubsystemTerrain subsystemTerrain,
                         int32 'value') cil managed
  {
    // 代码大小       61 (0x3d)
    .maxstack  2
    .locals init (int32 V_0,
             class Game.FurnitureDesign V_1)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  call       int32 Game.FurnitureBlock::GetDesignIndex(int32)
    IL_000b:  stloc.0
    IL_000c:  ldarg.1
    IL_000d:  callvirt   instance class Game.SubsystemFurnitureBlockBehavior Game.SubsystemTerrain::get_SubsystemFurnitureBlockBehavior()
    IL_0012:  ldloc.0
    IL_0013:  callvirt   instance class Game.FurnitureDesign Game.SubsystemFurnitureBlockBehavior::GetDesign(int32)
    IL_0018:  stloc.1
    IL_0019:  ldloc.1
    IL_001a:  brfalse.s  IL_0037

    IL_001c:  ldloc.1
    IL_001d:  callvirt   instance string Game.FurnitureDesign::get_Name()
    IL_0022:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_0027:  brtrue.s   IL_0030

    IL_0029:  ldloc.1
    IL_002a:  callvirt   instance string Game.FurnitureDesign::get_Name()
    IL_002f:  ret

    IL_0030:  ldloc.1
    IL_0031:  callvirt   instance string Game.FurnitureDesign::GetDefaultName()
    IL_0036:  ret

    IL_0037:  ldstr      "Furniture"
    IL_003c:  ret
  } // end of method FurnitureBlock::GetDisplayName

  .method public hidebysig virtual instance bool 
          IsInteractive(class Game.SubsystemTerrain terrain,
                        int32 'value') cil managed
  {
    // 代码大小       76 (0x4c)
    .maxstack  3
    .locals init (int32 V_0,
             class Game.FurnitureDesign V_1)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  call       int32 Game.FurnitureBlock::GetDesignIndex(int32)
    IL_000b:  stloc.0
    IL_000c:  ldarg.1
    IL_000d:  callvirt   instance class Game.SubsystemFurnitureBlockBehavior Game.SubsystemTerrain::get_SubsystemFurnitureBlockBehavior()
    IL_0012:  ldloc.0
    IL_0013:  callvirt   instance class Game.FurnitureDesign Game.SubsystemFurnitureBlockBehavior::GetDesign(int32)
    IL_0018:  stloc.1
    IL_0019:  ldloc.1
    IL_001a:  brfalse.s  IL_0043

    IL_001c:  ldloc.1
    IL_001d:  callvirt   instance valuetype Game.FurnitureInteractionMode Game.FurnitureDesign::get_InteractionMode()
    IL_0022:  ldc.i4.1
    IL_0023:  beq.s      IL_0041

    IL_0025:  ldloc.1
    IL_0026:  callvirt   instance valuetype Game.FurnitureInteractionMode Game.FurnitureDesign::get_InteractionMode()
    IL_002b:  ldc.i4.2
    IL_002c:  beq.s      IL_0041

    IL_002e:  ldloc.1
    IL_002f:  callvirt   instance valuetype Game.FurnitureInteractionMode Game.FurnitureDesign::get_InteractionMode()
    IL_0034:  ldc.i4.3
    IL_0035:  beq.s      IL_0041

    IL_0037:  ldloc.1
    IL_0038:  callvirt   instance valuetype Game.FurnitureInteractionMode Game.FurnitureDesign::get_InteractionMode()
    IL_003d:  ldc.i4.4
    IL_003e:  ceq
    IL_0040:  ret

    IL_0041:  ldc.i4.1
    IL_0042:  ret

    IL_0043:  ldarg.0
    IL_0044:  ldarg.1
    IL_0045:  ldarg.2
    IL_0046:  call       instance bool Game.Block::IsInteractive(class Game.SubsystemTerrain,
                                                                 int32)
    IL_004b:  ret
  } // end of method FurnitureBlock::IsInteractive

  .method public hidebysig virtual instance string 
          GetSoundMaterialName(class Game.SubsystemTerrain terrain,
                               int32 'value') cil managed
  {
    // 代码大小       66 (0x42)
    .maxstack  3
    .locals init (int32 V_0,
             class Game.FurnitureDesign V_1,
             int32 V_2,
             int32 V_3)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  call       int32 Game.FurnitureBlock::GetDesignIndex(int32)
    IL_000b:  stloc.0
    IL_000c:  ldarg.1
    IL_000d:  callvirt   instance class Game.SubsystemFurnitureBlockBehavior Game.SubsystemTerrain::get_SubsystemFurnitureBlockBehavior()
    IL_0012:  ldloc.0
    IL_0013:  callvirt   instance class Game.FurnitureDesign Game.SubsystemFurnitureBlockBehavior::GetDesign(int32)
    IL_0018:  stloc.1
    IL_0019:  ldloc.1
    IL_001a:  brfalse.s  IL_0039

    IL_001c:  ldloc.1
    IL_001d:  callvirt   instance int32 Game.FurnitureDesign::get_MainValue()
    IL_0022:  stloc.2
    IL_0023:  ldloc.2
    IL_0024:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0029:  stloc.3
    IL_002a:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_002f:  ldloc.3
    IL_0030:  ldelem.ref
    IL_0031:  ldarg.1
    IL_0032:  ldloc.2
    IL_0033:  callvirt   instance string Game.Block::GetSoundMaterialName(class Game.SubsystemTerrain,
                                                                          int32)
    IL_0038:  ret

    IL_0039:  ldarg.0
    IL_003a:  ldarg.1
    IL_003b:  ldarg.2
    IL_003c:  call       instance string Game.Block::GetSoundMaterialName(class Game.SubsystemTerrain,
                                                                          int32)
    IL_0041:  ret
  } // end of method FurnitureBlock::GetSoundMaterialName

  .method public hidebysig virtual instance valuetype [Engine]Engine.BoundingBox[] 
          GetCustomCollisionBoxes(class Game.SubsystemTerrain terrain,
                                  int32 'value') cil managed
  {
    // 代码大小       52 (0x34)
    .maxstack  3
    .locals init (int32 V_0,
             int32 V_1,
             class Game.FurnitureDesign V_2)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  dup
    IL_0007:  call       int32 Game.FurnitureBlock::GetDesignIndex(int32)
    IL_000c:  stloc.0
    IL_000d:  call       int32 Game.FurnitureBlock::GetRotation(int32)
    IL_0012:  stloc.1
    IL_0013:  ldarg.1
    IL_0014:  callvirt   instance class Game.SubsystemFurnitureBlockBehavior Game.SubsystemTerrain::get_SubsystemFurnitureBlockBehavior()
    IL_0019:  ldloc.0
    IL_001a:  callvirt   instance class Game.FurnitureDesign Game.SubsystemFurnitureBlockBehavior::GetDesign(int32)
    IL_001f:  stloc.2
    IL_0020:  ldloc.2
    IL_0021:  brfalse.s  IL_002b

    IL_0023:  ldloc.2
    IL_0024:  ldloc.1
    IL_0025:  callvirt   instance valuetype [Engine]Engine.BoundingBox[] Game.FurnitureDesign::GetCollisionBoxes(int32)
    IL_002a:  ret

    IL_002b:  ldarg.0
    IL_002c:  ldarg.1
    IL_002d:  ldarg.2
    IL_002e:  call       instance valuetype [Engine]Engine.BoundingBox[] Game.Block::GetCustomCollisionBoxes(class Game.SubsystemTerrain,
                                                                                                             int32)
    IL_0033:  ret
  } // end of method FurnitureBlock::GetCustomCollisionBoxes

  .method public hidebysig virtual instance valuetype [Engine]Engine.BoundingBox[] 
          GetCustomInteractionBoxes(class Game.SubsystemTerrain terrain,
                                    int32 'value') cil managed
  {
    // 代码大小       52 (0x34)
    .maxstack  3
    .locals init (int32 V_0,
             int32 V_1,
             class Game.FurnitureDesign V_2)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  dup
    IL_0007:  call       int32 Game.FurnitureBlock::GetDesignIndex(int32)
    IL_000c:  stloc.0
    IL_000d:  call       int32 Game.FurnitureBlock::GetRotation(int32)
    IL_0012:  stloc.1
    IL_0013:  ldarg.1
    IL_0014:  callvirt   instance class Game.SubsystemFurnitureBlockBehavior Game.SubsystemTerrain::get_SubsystemFurnitureBlockBehavior()
    IL_0019:  ldloc.0
    IL_001a:  callvirt   instance class Game.FurnitureDesign Game.SubsystemFurnitureBlockBehavior::GetDesign(int32)
    IL_001f:  stloc.2
    IL_0020:  ldloc.2
    IL_0021:  brfalse.s  IL_002b

    IL_0023:  ldloc.2
    IL_0024:  ldloc.1
    IL_0025:  callvirt   instance valuetype [Engine]Engine.BoundingBox[] Game.FurnitureDesign::GetInteractionBoxes(int32)
    IL_002a:  ret

    IL_002b:  ldarg.0
    IL_002c:  ldarg.1
    IL_002d:  ldarg.2
    IL_002e:  call       instance valuetype [Engine]Engine.BoundingBox[] Game.Block::GetCustomInteractionBoxes(class Game.SubsystemTerrain,
                                                                                                               int32)
    IL_0033:  ret
  } // end of method FurnitureBlock::GetCustomInteractionBoxes

  .method public hidebysig virtual instance class Game.BlockDebrisParticleSystem 
          CreateDebrisParticleSystem(class Game.SubsystemTerrain subsystemTerrain,
                                     valuetype [Engine]Engine.Vector3 position,
                                     int32 'value',
                                     float32 strength) cil managed
  {
    // 代码大小       93 (0x5d)
    .maxstack  6
    .locals init (int32 V_0,
             class Game.FurnitureDesign V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4)
    IL_0000:  ldarg.3
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  call       int32 Game.FurnitureBlock::GetDesignIndex(int32)
    IL_000b:  stloc.0
    IL_000c:  ldarg.1
    IL_000d:  callvirt   instance class Game.SubsystemFurnitureBlockBehavior Game.SubsystemTerrain::get_SubsystemFurnitureBlockBehavior()
    IL_0012:  ldloc.0
    IL_0013:  callvirt   instance class Game.FurnitureDesign Game.SubsystemFurnitureBlockBehavior::GetDesign(int32)
    IL_0018:  stloc.1
    IL_0019:  ldarg.0
    IL_001a:  ldc.i4.4
    IL_001b:  ldarg.3
    IL_001c:  callvirt   instance int32 Game.Block::GetFaceTextureSlot(int32,
                                                                       int32)
    IL_0021:  stloc.2
    IL_0022:  ldloc.1
    IL_0023:  brfalse.s  IL_0047

    IL_0025:  ldloc.1
    IL_0026:  callvirt   instance int32 Game.FurnitureDesign::get_MainValue()
    IL_002b:  stloc.3
    IL_002c:  ldloc.3
    IL_002d:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0032:  stloc.s    V_4
    IL_0034:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0039:  ldloc.s    V_4
    IL_003b:  ldelem.ref
    IL_003c:  ldarg.1
    IL_003d:  ldarg.2
    IL_003e:  ldloc.3
    IL_003f:  ldarg.s    strength
    IL_0041:  callvirt   instance class Game.BlockDebrisParticleSystem Game.Block::CreateDebrisParticleSystem(class Game.SubsystemTerrain,
                                                                                                              valuetype [Engine]Engine.Vector3,
                                                                                                              int32,
                                                                                                              float32)
    IL_0046:  ret

    IL_0047:  ldarg.1
    IL_0048:  ldarg.2
    IL_0049:  ldarg.s    strength
    IL_004b:  ldarg.0
    IL_004c:  ldfld      float32 Game.Block::DestructionDebrisScale
    IL_0051:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0056:  ldloc.2
    IL_0057:  newobj     instance void Game.BlockDebrisParticleSystem::.ctor(class Game.SubsystemTerrain,
                                                                             valuetype [Engine]Engine.Vector3,
                                                                             float32,
                                                                             float32,
                                                                             valuetype [Engine]Engine.Color,
                                                                             int32)
    IL_005c:  ret
  } // end of method FurnitureBlock::CreateDebrisParticleSystem

  .method public hidebysig virtual instance valuetype Game.BlockPlacementData 
          GetPlacementValue(class Game.SubsystemTerrain subsystemTerrain,
                            class Game.ComponentMiner componentMiner,
                            int32 'value',
                            valuetype Game.TerrainRaycastResult raycastResult) cil managed
  {
    // 代码大小       253 (0xfd)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1,
             float32 V_2,
             float32 V_3,
             float32 V_4,
             float32 V_5,
             valuetype [Engine]Engine.Matrix V_6,
             valuetype Game.BlockPlacementData V_7)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  ldarg.s    raycastResult
    IL_0004:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0009:  ldfld      int32 Game.CellFace::Face
    IL_000e:  ldc.i4.4
    IL_000f:  bge.s      IL_0028

    IL_0011:  ldarg.s    raycastResult
    IL_0013:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0018:  ldfld      int32 Game.CellFace::Face
    IL_001d:  call       int32 Game.CellFace::OppositeFace(int32)
    IL_0022:  stloc.0
    IL_0023:  br         IL_00c9

    IL_0028:  ldarg.2
    IL_0029:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_002e:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_0033:  callvirt   instance valuetype [Engine]Engine.Quaternion Game.ComponentCreatureModel::get_EyeRotation()
    IL_0038:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateFromQuaternion(valuetype [Engine]Engine.Quaternion)
    IL_003d:  stloc.s    V_6
    IL_003f:  ldloca.s   V_6
    IL_0041:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Forward()
    IL_0046:  dup
    IL_0047:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitZ
    IL_004c:  call       float32 [Engine]Engine.Vector3::Dot(valuetype [Engine]Engine.Vector3,
                                                             valuetype [Engine]Engine.Vector3)
    IL_0051:  stloc.2
    IL_0052:  dup
    IL_0053:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitX
    IL_0058:  call       float32 [Engine]Engine.Vector3::Dot(valuetype [Engine]Engine.Vector3,
                                                             valuetype [Engine]Engine.Vector3)
    IL_005d:  stloc.3
    IL_005e:  dup
    IL_005f:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitZ
    IL_0064:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_0069:  call       float32 [Engine]Engine.Vector3::Dot(valuetype [Engine]Engine.Vector3,
                                                             valuetype [Engine]Engine.Vector3)
    IL_006e:  stloc.s    V_4
    IL_0070:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitX
    IL_0075:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_007a:  call       float32 [Engine]Engine.Vector3::Dot(valuetype [Engine]Engine.Vector3,
                                                             valuetype [Engine]Engine.Vector3)
    IL_007f:  stloc.s    V_5
    IL_0081:  ldloc.2
    IL_0082:  ldloc.2
    IL_0083:  ldloc.3
    IL_0084:  ldloc.s    V_4
    IL_0086:  ldloc.s    V_5
    IL_0088:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32,
                                                               float32,
                                                               float32)
    IL_008d:  bne.un.s   IL_0093

    IL_008f:  ldc.i4.0
    IL_0090:  stloc.0
    IL_0091:  br.s       IL_00c9

    IL_0093:  ldloc.3
    IL_0094:  ldloc.2
    IL_0095:  ldloc.3
    IL_0096:  ldloc.s    V_4
    IL_0098:  ldloc.s    V_5
    IL_009a:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32,
                                                               float32,
                                                               float32)
    IL_009f:  bne.un.s   IL_00a5

    IL_00a1:  ldc.i4.1
    IL_00a2:  stloc.0
    IL_00a3:  br.s       IL_00c9

    IL_00a5:  ldloc.s    V_4
    IL_00a7:  ldloc.2
    IL_00a8:  ldloc.3
    IL_00a9:  ldloc.s    V_4
    IL_00ab:  ldloc.s    V_5
    IL_00ad:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32,
                                                               float32,
                                                               float32)
    IL_00b2:  bne.un.s   IL_00b8

    IL_00b4:  ldc.i4.2
    IL_00b5:  stloc.0
    IL_00b6:  br.s       IL_00c9

    IL_00b8:  ldloc.s    V_5
    IL_00ba:  ldloc.2
    IL_00bb:  ldloc.3
    IL_00bc:  ldloc.s    V_4
    IL_00be:  ldloc.s    V_5
    IL_00c0:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32,
                                                               float32,
                                                               float32)
    IL_00c5:  bne.un.s   IL_00c9

    IL_00c7:  ldc.i4.3
    IL_00c8:  stloc.0
    IL_00c9:  ldarg.3
    IL_00ca:  call       int32 Game.Terrain::ExtractData(int32)
    IL_00cf:  ldloc.0
    IL_00d0:  call       int32 Game.FurnitureBlock::SetRotation(int32,
                                                                int32)
    IL_00d5:  stloc.1
    IL_00d6:  ldloca.s   V_7
    IL_00d8:  initobj    Game.BlockPlacementData
    IL_00de:  ldloca.s   V_7
    IL_00e0:  ldarg.s    raycastResult
    IL_00e2:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_00e7:  stfld      valuetype Game.CellFace Game.BlockPlacementData::CellFace
    IL_00ec:  ldloca.s   V_7
    IL_00ee:  ldarg.3
    IL_00ef:  ldloc.1
    IL_00f0:  call       int32 Game.Terrain::ReplaceData(int32,
                                                         int32)
    IL_00f5:  stfld      int32 Game.BlockPlacementData::Value
    IL_00fa:  ldloc.s    V_7
    IL_00fc:  ret
  } // end of method FurnitureBlock::GetPlacementValue

  .method public hidebysig virtual instance void 
          GetDropValues(class Game.SubsystemTerrain subsystemTerrain,
                        int32 oldValue,
                        int32 newValue,
                        int32 toolLevel,
                        class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue> dropValues,
                        [out] bool& showDebris) cil managed
  {
    // 代码大小       63 (0x3f)
    .maxstack  5
    .locals init (int32 V_0,
             valuetype Game.BlockDropValue V_1)
    IL_0000:  ldarg.s    showDebris
    IL_0002:  ldc.i4.1
    IL_0003:  stind.i1
    IL_0004:  ldarg.2
    IL_0005:  call       int32 Game.Terrain::ExtractData(int32)
    IL_000a:  stloc.0
    IL_000b:  ldloc.0
    IL_000c:  ldc.i4.0
    IL_000d:  call       int32 Game.FurnitureBlock::SetRotation(int32,
                                                                int32)
    IL_0012:  stloc.0
    IL_0013:  ldarg.s    dropValues
    IL_0015:  ldloca.s   V_1
    IL_0017:  initobj    Game.BlockDropValue
    IL_001d:  ldloca.s   V_1
    IL_001f:  ldc.i4     0xe3
    IL_0024:  ldc.i4.0
    IL_0025:  ldloc.0
    IL_0026:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_002b:  stfld      int32 Game.BlockDropValue::Value
    IL_0030:  ldloca.s   V_1
    IL_0032:  ldc.i4.1
    IL_0033:  stfld      int32 Game.BlockDropValue::Count
    IL_0038:  ldloc.1
    IL_0039:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue>::Add(!0)
    IL_003e:  ret
  } // end of method FurnitureBlock::GetDropValues

  .method public hidebysig virtual instance float32 
          GetIconViewScale(int32 'value',
                           class Game.DrawBlockEnvironmentData environmentData) cil managed
  {
    // 代码大小       107 (0x6b)
    .maxstack  4
    .locals init (int32 V_0,
             class Game.FurnitureDesign V_1,
             float32 V_2)
    IL_0000:  ldarg.2
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.DrawBlockEnvironmentData::SubsystemTerrain
    IL_0006:  brfalse.s  IL_0062

    IL_0008:  ldarg.1
    IL_0009:  call       int32 Game.Terrain::ExtractData(int32)
    IL_000e:  call       int32 Game.FurnitureBlock::GetDesignIndex(int32)
    IL_0013:  stloc.0
    IL_0014:  ldarg.2
    IL_0015:  ldfld      class Game.SubsystemTerrain Game.DrawBlockEnvironmentData::SubsystemTerrain
    IL_001a:  callvirt   instance class Game.SubsystemFurnitureBlockBehavior Game.SubsystemTerrain::get_SubsystemFurnitureBlockBehavior()
    IL_001f:  ldloc.0
    IL_0020:  callvirt   instance class Game.FurnitureDesign Game.SubsystemFurnitureBlockBehavior::GetDesign(int32)
    IL_0025:  stloc.1
    IL_0026:  ldloc.1
    IL_0027:  brfalse.s  IL_0062

    IL_0029:  ldloc.1
    IL_002a:  callvirt   instance int32 Game.FurnitureDesign::get_Resolution()
    IL_002f:  conv.r4
    IL_0030:  ldloc.1
    IL_0031:  callvirt   instance valuetype [Engine]Engine.Box Game.FurnitureDesign::get_Box()
    IL_0036:  ldfld      int32 [Engine]Engine.Box::Width
    IL_003b:  ldloc.1
    IL_003c:  callvirt   instance valuetype [Engine]Engine.Box Game.FurnitureDesign::get_Box()
    IL_0041:  ldfld      int32 [Engine]Engine.Box::Height
    IL_0046:  ldloc.1
    IL_0047:  callvirt   instance valuetype [Engine]Engine.Box Game.FurnitureDesign::get_Box()
    IL_004c:  ldfld      int32 [Engine]Engine.Box::Depth
    IL_0051:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32,
                                                             int32)
    IL_0056:  conv.r4
    IL_0057:  div
    IL_0058:  stloc.2
    IL_0059:  ldarg.0
    IL_005a:  ldfld      float32 Game.Block::DefaultIconViewScale
    IL_005f:  ldloc.2
    IL_0060:  mul
    IL_0061:  ret

    IL_0062:  ldarg.0
    IL_0063:  ldarg.1
    IL_0064:  ldarg.2
    IL_0065:  call       instance float32 Game.Block::GetIconViewScale(int32,
                                                                       class Game.DrawBlockEnvironmentData)
    IL_006a:  ret
  } // end of method FurnitureBlock::GetIconViewScale

  .method public hidebysig newslot virtual final 
          instance valuetype [System.Runtime]System.Nullable`1<int32> 
          GetPaintColor(int32 'value') cil managed
  {
    // 代码大小       10 (0xa)
    .maxstack  1
    .locals init (valuetype [System.Runtime]System.Nullable`1<int32> V_0)
    IL_0000:  ldloca.s   V_0
    IL_0002:  initobj    valuetype [System.Runtime]System.Nullable`1<int32>
    IL_0008:  ldloc.0
    IL_0009:  ret
  } // end of method FurnitureBlock::GetPaintColor

  .method public hidebysig newslot virtual final 
          instance int32  Paint(class Game.SubsystemTerrain terrain,
                                int32 'value',
                                valuetype [System.Runtime]System.Nullable`1<int32> color) cil managed
  {
    // 代码大小       155 (0x9b)
    .maxstack  4
    .locals init (int32 V_0,
             int32 V_1,
             class Game.FurnitureDesign V_2,
             class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign> V_3,
             class Game.FurnitureDesign V_4,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.FurnitureDesign> V_5,
             int32 V_6)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  call       int32 Game.FurnitureBlock::GetDesignIndex(int32)
    IL_000d:  stloc.1
    IL_000e:  ldarg.1
    IL_000f:  callvirt   instance class Game.SubsystemFurnitureBlockBehavior Game.SubsystemTerrain::get_SubsystemFurnitureBlockBehavior()
    IL_0014:  ldloc.1
    IL_0015:  callvirt   instance class Game.FurnitureDesign Game.SubsystemFurnitureBlockBehavior::GetDesign(int32)
    IL_001a:  stloc.2
    IL_001b:  ldloc.2
    IL_001c:  brfalse.s  IL_0099

    IL_001e:  ldloc.2
    IL_001f:  callvirt   instance class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign> Game.FurnitureDesign::CloneChain()
    IL_0024:  stloc.3
    IL_0025:  ldloc.3
    IL_0026:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>::GetEnumerator()
    IL_002b:  stloc.s    V_5
    .try
    {
      IL_002d:  br.s       IL_003c

      IL_002f:  ldloca.s   V_5
      IL_0031:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.FurnitureDesign>::get_Current()
      IL_0036:  ldarg.3
      IL_0037:  callvirt   instance void Game.FurnitureDesign::Paint(valuetype [System.Runtime]System.Nullable`1<int32>)
      IL_003c:  ldloca.s   V_5
      IL_003e:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.FurnitureDesign>::MoveNext()
      IL_0043:  brtrue.s   IL_002f

      IL_0045:  leave.s    IL_0055

    }  // end .try
    finally
    {
      IL_0047:  ldloca.s   V_5
      IL_0049:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.FurnitureDesign>
      IL_004f:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0054:  endfinally
    }  // end handler
    IL_0055:  ldarg.1
    IL_0056:  callvirt   instance class Game.SubsystemFurnitureBlockBehavior Game.SubsystemTerrain::get_SubsystemFurnitureBlockBehavior()
    IL_005b:  ldloc.3
    IL_005c:  ldc.i4.0
    IL_005d:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>::get_Item(int32)
    IL_0062:  callvirt   instance class Game.FurnitureDesign Game.SubsystemFurnitureBlockBehavior::TryAddDesignChain(class Game.FurnitureDesign)
    IL_0067:  stloc.s    V_4
    IL_0069:  ldloc.s    V_4
    IL_006b:  brfalse.s  IL_0093

    IL_006d:  ldloc.0
    IL_006e:  ldloc.s    V_4
    IL_0070:  callvirt   instance int32 Game.FurnitureDesign::get_Index()
    IL_0075:  ldloc.s    V_4
    IL_0077:  callvirt   instance int32 Game.FurnitureDesign::get_ShadowStrengthFactor()
    IL_007c:  ldloc.s    V_4
    IL_007e:  callvirt   instance bool Game.FurnitureDesign::get_IsLightEmitter()
    IL_0083:  call       int32 Game.FurnitureBlock::SetDesignIndex(int32,
                                                                   int32,
                                                                   int32,
                                                                   bool)
    IL_0088:  stloc.s    V_6
    IL_008a:  ldarg.2
    IL_008b:  ldloc.s    V_6
    IL_008d:  call       int32 Game.Terrain::ReplaceData(int32,
                                                         int32)
    IL_0092:  ret

    IL_0093:  ldarg.0
    IL_0094:  call       instance void Game.FurnitureBlock::DisplayError()
    IL_0099:  ldarg.2
    IL_009a:  ret
  } // end of method FurnitureBlock::Paint

  .method public hidebysig virtual instance class Game.CraftingRecipe 
          GetAdHocCraftingRecipe(class Game.SubsystemTerrain terrain,
                                 string[] ingredients,
                                 float32 heatLevel) cil managed
  {
    // 代码大小       949 (0x3b5)
    .maxstack  8
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign> V_3,
             int32 V_4,
             string V_5,
             valuetype [System.Runtime]System.Nullable`1<int32> V_6,
             class Game.FurnitureDesign V_7,
             valuetype [System.Runtime]System.Nullable`1<int32> V_8,
             class Game.FurnitureDesign V_9,
             class Game.FurnitureDesign V_10,
             class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign> V_11,
             class Game.FurnitureDesign V_12,
             int32 V_13,
             class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign> V_14,
             class Game.FurnitureDesign V_15,
             int32 V_16)
    IL_0000:  ldarg.3
    IL_0001:  ldc.r4     0.0
    IL_0006:  beq.s      IL_000a

    IL_0008:  ldnull
    IL_0009:  ret

    IL_000a:  ldc.i4.0
    IL_000b:  stloc.0
    IL_000c:  ldc.i4.0
    IL_000d:  stloc.1
    IL_000e:  ldc.i4.0
    IL_000f:  stloc.2
    IL_0010:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>::.ctor()
    IL_0015:  stloc.3
    IL_0016:  ldc.i4.0
    IL_0017:  stloc.s    V_4
    IL_0019:  br         IL_00f0

    IL_001e:  ldarg.2
    IL_001f:  ldloc.s    V_4
    IL_0021:  ldelem.ref
    IL_0022:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_0027:  brtrue     IL_00ea

    IL_002c:  ldarg.2
    IL_002d:  ldloc.s    V_4
    IL_002f:  ldelem.ref
    IL_0030:  ldloca.s   V_5
    IL_0032:  ldloca.s   V_6
    IL_0034:  call       void Game.CraftingRecipesManager::DecodeIngredient(string,
                                                                            string&,
                                                                            valuetype [System.Runtime]System.Nullable`1<int32>&)
    IL_0039:  ldloc.s    V_5
    IL_003b:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0040:  ldc.i4     0xe3
    IL_0045:  ldelem.ref
    IL_0046:  ldfld      string Game.Block::CraftingId
    IL_004b:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                         string)
    IL_0050:  brfalse.s  IL_008b

    IL_0052:  ldarg.1
    IL_0053:  callvirt   instance class Game.SubsystemFurnitureBlockBehavior Game.SubsystemTerrain::get_SubsystemFurnitureBlockBehavior()
    IL_0058:  ldloc.s    V_6
    IL_005a:  stloc.s    V_8
    IL_005c:  ldloca.s   V_8
    IL_005e:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0063:  brtrue.s   IL_0068

    IL_0065:  ldc.i4.0
    IL_0066:  br.s       IL_006f

    IL_0068:  ldloca.s   V_8
    IL_006a:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::GetValueOrDefault()
    IL_006f:  call       int32 Game.FurnitureBlock::GetDesignIndex(int32)
    IL_0074:  callvirt   instance class Game.FurnitureDesign Game.SubsystemFurnitureBlockBehavior::GetDesign(int32)
    IL_0079:  stloc.s    V_7
    IL_007b:  ldloc.s    V_7
    IL_007d:  brtrue.s   IL_0081

    IL_007f:  ldnull
    IL_0080:  ret

    IL_0081:  ldloc.3
    IL_0082:  ldloc.s    V_7
    IL_0084:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>::Add(!0)
    IL_0089:  br.s       IL_00ea

    IL_008b:  ldloc.s    V_5
    IL_008d:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0092:  ldc.i4     0x8e
    IL_0097:  ldelem.ref
    IL_0098:  ldfld      string Game.Block::CraftingId
    IL_009d:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                         string)
    IL_00a2:  brfalse.s  IL_00aa

    IL_00a4:  ldloc.0
    IL_00a5:  ldc.i4.1
    IL_00a6:  add
    IL_00a7:  stloc.0
    IL_00a8:  br.s       IL_00ea

    IL_00aa:  ldloc.s    V_5
    IL_00ac:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_00b1:  ldc.i4     0x8d
    IL_00b6:  ldelem.ref
    IL_00b7:  ldfld      string Game.Block::CraftingId
    IL_00bc:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                         string)
    IL_00c1:  brfalse.s  IL_00c9

    IL_00c3:  ldloc.1
    IL_00c4:  ldc.i4.1
    IL_00c5:  add
    IL_00c6:  stloc.1
    IL_00c7:  br.s       IL_00ea

    IL_00c9:  ldloc.s    V_5
    IL_00cb:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_00d0:  ldc.i4     0x85
    IL_00d5:  ldelem.ref
    IL_00d6:  ldfld      string Game.Block::CraftingId
    IL_00db:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                         string)
    IL_00e0:  brfalse.s  IL_00e8

    IL_00e2:  ldloc.2
    IL_00e3:  ldc.i4.1
    IL_00e4:  add
    IL_00e5:  stloc.2
    IL_00e6:  br.s       IL_00ea

    IL_00e8:  ldnull
    IL_00e9:  ret

    IL_00ea:  ldloc.s    V_4
    IL_00ec:  ldc.i4.1
    IL_00ed:  add
    IL_00ee:  stloc.s    V_4
    IL_00f0:  ldloc.s    V_4
    IL_00f2:  ldarg.2
    IL_00f3:  ldlen
    IL_00f4:  conv.i4
    IL_00f5:  blt        IL_001e

    IL_00fa:  ldloc.3
    IL_00fb:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>::get_Count()
    IL_0100:  ldc.i4.1
    IL_0101:  bne.un     IL_019f

    IL_0106:  ldloc.0
    IL_0107:  ldc.i4.1
    IL_0108:  bne.un     IL_019f

    IL_010d:  ldloc.1
    IL_010e:  brtrue     IL_019f

    IL_0113:  ldloc.2
    IL_0114:  brtrue     IL_019f

    IL_0119:  ldloc.3
    IL_011a:  ldc.i4.0
    IL_011b:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>::get_Item(int32)
    IL_0120:  callvirt   instance class Game.FurnitureDesign Game.FurnitureDesign::Clone()
    IL_0125:  stloc.s    V_9
    IL_0127:  ldloc.s    V_9
    IL_0129:  ldc.i4.2
    IL_012a:  callvirt   instance void Game.FurnitureDesign::set_InteractionMode(valuetype Game.FurnitureInteractionMode)
    IL_012f:  ldarg.1
    IL_0130:  callvirt   instance class Game.SubsystemFurnitureBlockBehavior Game.SubsystemTerrain::get_SubsystemFurnitureBlockBehavior()
    IL_0135:  ldloc.s    V_9
    IL_0137:  callvirt   instance class Game.FurnitureDesign Game.SubsystemFurnitureBlockBehavior::TryAddDesignChain(class Game.FurnitureDesign)
    IL_013c:  stloc.s    V_10
    IL_013e:  ldloc.s    V_10
    IL_0140:  brtrue.s   IL_014a

    IL_0142:  ldarg.0
    IL_0143:  call       instance void Game.FurnitureBlock::DisplayError()
    IL_0148:  ldnull
    IL_0149:  ret

    IL_014a:  newobj     instance void Game.CraftingRecipe::.ctor()
    IL_014f:  dup
    IL_0150:  ldc.i4     0xe3
    IL_0155:  ldc.i4.0
    IL_0156:  ldc.i4.0
    IL_0157:  ldloc.s    V_10
    IL_0159:  callvirt   instance int32 Game.FurnitureDesign::get_Index()
    IL_015e:  ldloc.s    V_10
    IL_0160:  callvirt   instance int32 Game.FurnitureDesign::get_ShadowStrengthFactor()
    IL_0165:  ldloc.s    V_10
    IL_0167:  callvirt   instance bool Game.FurnitureDesign::get_IsLightEmitter()
    IL_016c:  call       int32 Game.FurnitureBlock::SetDesignIndex(int32,
                                                                   int32,
                                                                   int32,
                                                                   bool)
    IL_0171:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_0176:  stfld      int32 Game.CraftingRecipe::ResultValue
    IL_017b:  dup
    IL_017c:  ldc.i4.1
    IL_017d:  stfld      int32 Game.CraftingRecipe::ResultCount
    IL_0182:  dup
    IL_0183:  ldstr      "Combine furniture into interactive design"
    IL_0188:  stfld      string Game.CraftingRecipe::Description
    IL_018d:  dup
    IL_018e:  ldarg.2
    IL_018f:  callvirt   instance object [System.Runtime]System.Array::Clone()
    IL_0194:  castclass  string[]
    IL_0199:  stfld      string[] Game.CraftingRecipe::Ingredients
    IL_019e:  ret

    IL_019f:  ldloc.3
    IL_01a0:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>::get_Count()
    IL_01a5:  ldc.i4.2
    IL_01a6:  bne.un     IL_02a6

    IL_01ab:  ldloc.0
    IL_01ac:  brtrue     IL_02a6

    IL_01b1:  ldloc.1
    IL_01b2:  ldc.i4.1
    IL_01b3:  bne.un     IL_02a6

    IL_01b8:  ldloc.2
    IL_01b9:  brtrue     IL_02a6

    IL_01be:  ldloc.3
    IL_01bf:  ldsfld     class [System.Runtime]System.Func`2<class Game.FurnitureDesign,class Game.FurnitureDesign> Game.FurnitureBlock/'<>c'::'<>9__19_0'
    IL_01c4:  dup
    IL_01c5:  brtrue.s   IL_01de

    IL_01c7:  pop
    IL_01c8:  ldsfld     class Game.FurnitureBlock/'<>c' Game.FurnitureBlock/'<>c'::'<>9'
    IL_01cd:  ldftn      instance class Game.FurnitureDesign Game.FurnitureBlock/'<>c'::'<GetAdHocCraftingRecipe>b__19_0'(class Game.FurnitureDesign)
    IL_01d3:  newobj     instance void class [System.Runtime]System.Func`2<class Game.FurnitureDesign,class Game.FurnitureDesign>::.ctor(object,
                                                                                                                                         native int)
    IL_01d8:  dup
    IL_01d9:  stsfld     class [System.Runtime]System.Func`2<class Game.FurnitureDesign,class Game.FurnitureDesign> Game.FurnitureBlock/'<>c'::'<>9__19_0'
    IL_01de:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!1> [System.Linq]System.Linq.Enumerable::Select<class Game.FurnitureDesign,class Game.FurnitureDesign>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                                class [System.Runtime]System.Func`2<!!0,!!1>)
    IL_01e3:  call       class [System.Collections]System.Collections.Generic.List`1<!!0> [System.Linq]System.Linq.Enumerable::ToList<class Game.FurnitureDesign>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_01e8:  stloc.s    V_11
    IL_01ea:  ldc.i4.0
    IL_01eb:  stloc.s    V_13
    IL_01ed:  br.s       IL_0225

    IL_01ef:  ldloc.s    V_11
    IL_01f1:  ldloc.s    V_13
    IL_01f3:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>::get_Item(int32)
    IL_01f8:  ldc.i4.3
    IL_01f9:  callvirt   instance void Game.FurnitureDesign::set_InteractionMode(valuetype Game.FurnitureInteractionMode)
    IL_01fe:  ldloc.s    V_11
    IL_0200:  ldloc.s    V_13
    IL_0202:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>::get_Item(int32)
    IL_0207:  ldloc.s    V_11
    IL_0209:  ldloc.s    V_13
    IL_020b:  ldc.i4.1
    IL_020c:  add
    IL_020d:  ldloc.s    V_11
    IL_020f:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>::get_Count()
    IL_0214:  rem
    IL_0215:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>::get_Item(int32)
    IL_021a:  callvirt   instance void Game.FurnitureDesign::set_LinkedDesign(class Game.FurnitureDesign)
    IL_021f:  ldloc.s    V_13
    IL_0221:  ldc.i4.1
    IL_0222:  add
    IL_0223:  stloc.s    V_13
    IL_0225:  ldloc.s    V_13
    IL_0227:  ldloc.s    V_11
    IL_0229:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>::get_Count()
    IL_022e:  blt.s      IL_01ef

    IL_0230:  ldarg.1
    IL_0231:  callvirt   instance class Game.SubsystemFurnitureBlockBehavior Game.SubsystemTerrain::get_SubsystemFurnitureBlockBehavior()
    IL_0236:  ldloc.s    V_11
    IL_0238:  ldc.i4.0
    IL_0239:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>::get_Item(int32)
    IL_023e:  callvirt   instance class Game.FurnitureDesign Game.SubsystemFurnitureBlockBehavior::TryAddDesignChain(class Game.FurnitureDesign)
    IL_0243:  stloc.s    V_12
    IL_0245:  ldloc.s    V_12
    IL_0247:  brtrue.s   IL_0251

    IL_0249:  ldarg.0
    IL_024a:  call       instance void Game.FurnitureBlock::DisplayError()
    IL_024f:  ldnull
    IL_0250:  ret

    IL_0251:  newobj     instance void Game.CraftingRecipe::.ctor()
    IL_0256:  dup
    IL_0257:  ldc.i4     0xe3
    IL_025c:  ldc.i4.0
    IL_025d:  ldc.i4.0
    IL_025e:  ldloc.s    V_12
    IL_0260:  callvirt   instance int32 Game.FurnitureDesign::get_Index()
    IL_0265:  ldloc.s    V_12
    IL_0267:  callvirt   instance int32 Game.FurnitureDesign::get_ShadowStrengthFactor()
    IL_026c:  ldloc.s    V_12
    IL_026e:  callvirt   instance bool Game.FurnitureDesign::get_IsLightEmitter()
    IL_0273:  call       int32 Game.FurnitureBlock::SetDesignIndex(int32,
                                                                   int32,
                                                                   int32,
                                                                   bool)
    IL_0278:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_027d:  stfld      int32 Game.CraftingRecipe::ResultValue
    IL_0282:  dup
    IL_0283:  ldc.i4.1
    IL_0284:  stfld      int32 Game.CraftingRecipe::ResultCount
    IL_0289:  dup
    IL_028a:  ldstr      "Combine furniture into interactive design"
    IL_028f:  stfld      string Game.CraftingRecipe::Description
    IL_0294:  dup
    IL_0295:  ldarg.2
    IL_0296:  callvirt   instance object [System.Runtime]System.Array::Clone()
    IL_029b:  castclass  string[]
    IL_02a0:  stfld      string[] Game.CraftingRecipe::Ingredients
    IL_02a5:  ret

    IL_02a6:  ldloc.3
    IL_02a7:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>::get_Count()
    IL_02ac:  ldc.i4.2
    IL_02ad:  blt        IL_03b3

    IL_02b2:  ldloc.0
    IL_02b3:  brtrue     IL_03b3

    IL_02b8:  ldloc.1
    IL_02b9:  brtrue     IL_03b3

    IL_02be:  ldloc.2
    IL_02bf:  ldc.i4.1
    IL_02c0:  bgt        IL_03b3

    IL_02c5:  ldloc.3
    IL_02c6:  ldsfld     class [System.Runtime]System.Func`2<class Game.FurnitureDesign,class Game.FurnitureDesign> Game.FurnitureBlock/'<>c'::'<>9__19_1'
    IL_02cb:  dup
    IL_02cc:  brtrue.s   IL_02e5

    IL_02ce:  pop
    IL_02cf:  ldsfld     class Game.FurnitureBlock/'<>c' Game.FurnitureBlock/'<>c'::'<>9'
    IL_02d4:  ldftn      instance class Game.FurnitureDesign Game.FurnitureBlock/'<>c'::'<GetAdHocCraftingRecipe>b__19_1'(class Game.FurnitureDesign)
    IL_02da:  newobj     instance void class [System.Runtime]System.Func`2<class Game.FurnitureDesign,class Game.FurnitureDesign>::.ctor(object,
                                                                                                                                         native int)
    IL_02df:  dup
    IL_02e0:  stsfld     class [System.Runtime]System.Func`2<class Game.FurnitureDesign,class Game.FurnitureDesign> Game.FurnitureBlock/'<>c'::'<>9__19_1'
    IL_02e5:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!1> [System.Linq]System.Linq.Enumerable::Select<class Game.FurnitureDesign,class Game.FurnitureDesign>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                                class [System.Runtime]System.Func`2<!!0,!!1>)
    IL_02ea:  call       class [System.Collections]System.Collections.Generic.List`1<!!0> [System.Linq]System.Linq.Enumerable::ToList<class Game.FurnitureDesign>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_02ef:  stloc.s    V_14
    IL_02f1:  ldc.i4.0
    IL_02f2:  stloc.s    V_16
    IL_02f4:  br.s       IL_0332

    IL_02f6:  ldloc.s    V_14
    IL_02f8:  ldloc.s    V_16
    IL_02fa:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>::get_Item(int32)
    IL_02ff:  ldloc.2
    IL_0300:  brfalse.s  IL_0305

    IL_0302:  ldc.i4.4
    IL_0303:  br.s       IL_0306

    IL_0305:  ldc.i4.1
    IL_0306:  callvirt   instance void Game.FurnitureDesign::set_InteractionMode(valuetype Game.FurnitureInteractionMode)
    IL_030b:  ldloc.s    V_14
    IL_030d:  ldloc.s    V_16
    IL_030f:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>::get_Item(int32)
    IL_0314:  ldloc.s    V_14
    IL_0316:  ldloc.s    V_16
    IL_0318:  ldc.i4.1
    IL_0319:  add
    IL_031a:  ldloc.s    V_14
    IL_031c:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>::get_Count()
    IL_0321:  rem
    IL_0322:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>::get_Item(int32)
    IL_0327:  callvirt   instance void Game.FurnitureDesign::set_LinkedDesign(class Game.FurnitureDesign)
    IL_032c:  ldloc.s    V_16
    IL_032e:  ldc.i4.1
    IL_032f:  add
    IL_0330:  stloc.s    V_16
    IL_0332:  ldloc.s    V_16
    IL_0334:  ldloc.s    V_14
    IL_0336:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>::get_Count()
    IL_033b:  blt.s      IL_02f6

    IL_033d:  ldarg.1
    IL_033e:  callvirt   instance class Game.SubsystemFurnitureBlockBehavior Game.SubsystemTerrain::get_SubsystemFurnitureBlockBehavior()
    IL_0343:  ldloc.s    V_14
    IL_0345:  ldc.i4.0
    IL_0346:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>::get_Item(int32)
    IL_034b:  callvirt   instance class Game.FurnitureDesign Game.SubsystemFurnitureBlockBehavior::TryAddDesignChain(class Game.FurnitureDesign)
    IL_0350:  stloc.s    V_15
    IL_0352:  ldloc.s    V_15
    IL_0354:  brtrue.s   IL_035e

    IL_0356:  ldarg.0
    IL_0357:  call       instance void Game.FurnitureBlock::DisplayError()
    IL_035c:  ldnull
    IL_035d:  ret

    IL_035e:  newobj     instance void Game.CraftingRecipe::.ctor()
    IL_0363:  dup
    IL_0364:  ldc.i4     0xe3
    IL_0369:  ldc.i4.0
    IL_036a:  ldc.i4.0
    IL_036b:  ldloc.s    V_15
    IL_036d:  callvirt   instance int32 Game.FurnitureDesign::get_Index()
    IL_0372:  ldloc.s    V_15
    IL_0374:  callvirt   instance int32 Game.FurnitureDesign::get_ShadowStrengthFactor()
    IL_0379:  ldloc.s    V_15
    IL_037b:  callvirt   instance bool Game.FurnitureDesign::get_IsLightEmitter()
    IL_0380:  call       int32 Game.FurnitureBlock::SetDesignIndex(int32,
                                                                   int32,
                                                                   int32,
                                                                   bool)
    IL_0385:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_038a:  stfld      int32 Game.CraftingRecipe::ResultValue
    IL_038f:  dup
    IL_0390:  ldc.i4.1
    IL_0391:  stfld      int32 Game.CraftingRecipe::ResultCount
    IL_0396:  dup
    IL_0397:  ldstr      "Combine furniture into interactive design"
    IL_039c:  stfld      string Game.CraftingRecipe::Description
    IL_03a1:  dup
    IL_03a2:  ldarg.2
    IL_03a3:  callvirt   instance object [System.Runtime]System.Array::Clone()
    IL_03a8:  castclass  string[]
    IL_03ad:  stfld      string[] Game.CraftingRecipe::Ingredients
    IL_03b2:  ret

    IL_03b3:  ldnull
    IL_03b4:  ret
  } // end of method FurnitureBlock::GetAdHocCraftingRecipe

  .method public hidebysig newslot virtual final 
          instance class Game.ElectricElement 
          CreateElectricElement(class Game.SubsystemElectricity subsystemElectricity,
                                int32 'value',
                                int32 x,
                                int32 y,
                                int32 z) cil managed
  {
    // 代码大小       123 (0x7b)
    .maxstack  4
    .locals init (int32 V_0,
             class Game.FurnitureDesign V_1)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  call       int32 Game.FurnitureBlock::GetDesignIndex(int32)
    IL_000b:  stloc.0
    IL_000c:  ldarg.1
    IL_000d:  callvirt   instance class Game.SubsystemTerrain Game.SubsystemElectricity::get_SubsystemTerrain()
    IL_0012:  callvirt   instance class Game.SubsystemFurnitureBlockBehavior Game.SubsystemTerrain::get_SubsystemFurnitureBlockBehavior()
    IL_0017:  ldloc.0
    IL_0018:  callvirt   instance class Game.FurnitureDesign Game.SubsystemFurnitureBlockBehavior::GetDesign(int32)
    IL_001d:  stloc.1
    IL_001e:  ldloc.1
    IL_001f:  brfalse.s  IL_0079

    IL_0021:  ldloc.1
    IL_0022:  callvirt   instance valuetype Game.FurnitureInteractionMode Game.FurnitureDesign::get_InteractionMode()
    IL_0027:  ldc.i4.1
    IL_0028:  beq.s      IL_0033

    IL_002a:  ldloc.1
    IL_002b:  callvirt   instance valuetype Game.FurnitureInteractionMode Game.FurnitureDesign::get_InteractionMode()
    IL_0030:  ldc.i4.4
    IL_0031:  bne.un.s   IL_0044

    IL_0033:  ldarg.1
    IL_0034:  ldarg.3
    IL_0035:  ldarg.s    y
    IL_0037:  ldarg.s    z
    IL_0039:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_003e:  newobj     instance void Game.MultistateFurnitureElectricElement::.ctor(class Game.SubsystemElectricity,
                                                                                      valuetype [Engine]Engine.Point3)
    IL_0043:  ret

    IL_0044:  ldloc.1
    IL_0045:  callvirt   instance valuetype Game.FurnitureInteractionMode Game.FurnitureDesign::get_InteractionMode()
    IL_004a:  ldc.i4.2
    IL_004b:  bne.un.s   IL_005e

    IL_004d:  ldarg.1
    IL_004e:  ldarg.3
    IL_004f:  ldarg.s    y
    IL_0051:  ldarg.s    z
    IL_0053:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0058:  newobj     instance void Game.ButtonFurnitureElectricElement::.ctor(class Game.SubsystemElectricity,
                                                                                  valuetype [Engine]Engine.Point3)
    IL_005d:  ret

    IL_005e:  ldloc.1
    IL_005f:  callvirt   instance valuetype Game.FurnitureInteractionMode Game.FurnitureDesign::get_InteractionMode()
    IL_0064:  ldc.i4.3
    IL_0065:  bne.un.s   IL_0079

    IL_0067:  ldarg.1
    IL_0068:  ldarg.3
    IL_0069:  ldarg.s    y
    IL_006b:  ldarg.s    z
    IL_006d:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0072:  ldarg.2
    IL_0073:  newobj     instance void Game.SwitchFurnitureElectricElement::.ctor(class Game.SubsystemElectricity,
                                                                                  valuetype [Engine]Engine.Point3,
                                                                                  int32)
    IL_0078:  ret

    IL_0079:  ldnull
    IL_007a:  ret
  } // end of method FurnitureBlock::CreateElectricElement

  .method public hidebysig newslot virtual final 
          instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType> 
          GetConnectorType(class Game.SubsystemTerrain terrain,
                           int32 'value',
                           int32 face,
                           int32 connectorFace,
                           int32 x,
                           int32 y,
                           int32 z) cil managed
  {
    // 代码大小       239 (0xef)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1,
             class Game.FurnitureDesign V_2,
             int32 V_3,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection> V_4,
             valuetype [Engine]Engine.Point3 V_5,
             int32 V_6,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType> V_7)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  dup
    IL_0007:  call       int32 Game.FurnitureBlock::GetRotation(int32)
    IL_000c:  stloc.0
    IL_000d:  call       int32 Game.FurnitureBlock::GetDesignIndex(int32)
    IL_0012:  stloc.1
    IL_0013:  ldarg.1
    IL_0014:  callvirt   instance class Game.SubsystemFurnitureBlockBehavior Game.SubsystemTerrain::get_SubsystemFurnitureBlockBehavior()
    IL_0019:  ldloc.1
    IL_001a:  callvirt   instance class Game.FurnitureDesign Game.SubsystemFurnitureBlockBehavior::GetDesign(int32)
    IL_001f:  stloc.2
    IL_0020:  ldloc.2
    IL_0021:  brfalse    IL_00e4

    IL_0026:  ldarg.3
    IL_0027:  ldc.i4.4
    IL_0028:  blt.s      IL_002d

    IL_002a:  ldarg.3
    IL_002b:  br.s       IL_0034

    IL_002d:  ldarg.3
    IL_002e:  ldloc.0
    IL_002f:  sub
    IL_0030:  ldc.i4.4
    IL_0031:  add
    IL_0032:  ldc.i4.4
    IL_0033:  rem
    IL_0034:  call       int32 Game.CellFace::OppositeFace(int32)
    IL_0039:  stloc.3
    IL_003a:  ldloc.2
    IL_003b:  callvirt   instance int32 Game.FurnitureDesign::get_MountingFacesMask()
    IL_0040:  ldc.i4.1
    IL_0041:  ldloc.3
    IL_0042:  ldc.i4.s   31
    IL_0044:  and
    IL_0045:  shl
    IL_0046:  and
    IL_0047:  brfalse    IL_00e4

    IL_004c:  ldarg.3
    IL_004d:  ldc.i4.0
    IL_004e:  ldarg.s    connectorFace
    IL_0050:  call       valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection> Game.SubsystemElectricity::GetConnectorDirection(int32,
                                                                                                                                                                 int32,
                                                                                                                                                                 int32)
    IL_0055:  stloc.s    V_4
    IL_0057:  ldloca.s   V_4
    IL_0059:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_HasValue()
    IL_005e:  brfalse    IL_00e4

    IL_0063:  ldarg.3
    IL_0064:  call       valuetype [Engine]Engine.Point3 Game.CellFace::FaceToPoint3(int32)
    IL_0069:  stloc.s    V_5
    IL_006b:  ldarg.1
    IL_006c:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0071:  ldarg.s    x
    IL_0073:  ldloc.s    V_5
    IL_0075:  ldfld      int32 [Engine]Engine.Point3::X
    IL_007a:  sub
    IL_007b:  ldarg.s    y
    IL_007d:  ldloc.s    V_5
    IL_007f:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0084:  sub
    IL_0085:  ldarg.s    z
    IL_0087:  ldloc.s    V_5
    IL_0089:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_008e:  sub
    IL_008f:  callvirt   instance int32 Game.Terrain::GetCellValue(int32,
                                                                   int32,
                                                                   int32)
    IL_0094:  stloc.s    V_6
    IL_0096:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_009b:  ldloc.s    V_6
    IL_009d:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_00a2:  ldelem.ref
    IL_00a3:  ldloc.3
    IL_00a4:  call       int32 Game.CellFace::OppositeFace(int32)
    IL_00a9:  ldloc.s    V_6
    IL_00ab:  callvirt   instance bool Game.Block::IsFaceTransparent(int32,
                                                                     int32)
    IL_00b0:  brtrue.s   IL_00e4

    IL_00b2:  ldloc.2
    IL_00b3:  callvirt   instance valuetype Game.FurnitureInteractionMode Game.FurnitureDesign::get_InteractionMode()
    IL_00b8:  ldc.i4.1
    IL_00b9:  beq.s      IL_00c4

    IL_00bb:  ldloc.2
    IL_00bc:  callvirt   instance valuetype Game.FurnitureInteractionMode Game.FurnitureDesign::get_InteractionMode()
    IL_00c1:  ldc.i4.4
    IL_00c2:  bne.un.s   IL_00cb

    IL_00c4:  ldc.i4.0
    IL_00c5:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType>::.ctor(!0)
    IL_00ca:  ret

    IL_00cb:  ldloc.2
    IL_00cc:  callvirt   instance valuetype Game.FurnitureInteractionMode Game.FurnitureDesign::get_InteractionMode()
    IL_00d1:  ldc.i4.2
    IL_00d2:  beq.s      IL_00dd

    IL_00d4:  ldloc.2
    IL_00d5:  callvirt   instance valuetype Game.FurnitureInteractionMode Game.FurnitureDesign::get_InteractionMode()
    IL_00da:  ldc.i4.3
    IL_00db:  bne.un.s   IL_00e4

    IL_00dd:  ldc.i4.1
    IL_00de:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType>::.ctor(!0)
    IL_00e3:  ret

    IL_00e4:  ldloca.s   V_7
    IL_00e6:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType>
    IL_00ec:  ldloc.s    V_7
    IL_00ee:  ret
  } // end of method FurnitureBlock::GetConnectorType

  .method public hidebysig newslot virtual final 
          instance int32  GetConnectionMask(int32 'value') cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldc.i4     0x7fffffff
    IL_0005:  ret
  } // end of method FurnitureBlock::GetConnectionMask

  .method private hidebysig instance void 
          DisplayError() cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  8
    IL_0000:  ldnull
    IL_0001:  ldstr      "Error"
    IL_0006:  ldstr      "Too many different furniture designs"
    IL_000b:  ldstr      "OK"
    IL_0010:  ldnull
    IL_0011:  ldnull
    IL_0012:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                 string,
                                                                 string,
                                                                 string,
                                                                 class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
    IL_0017:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_001c:  ret
  } // end of method FurnitureBlock::DisplayError

  .method public hidebysig static int32  GetRotation(int32 data) cil managed
  {
    // 代码大小       4 (0x4)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.3
    IL_0002:  and
    IL_0003:  ret
  } // end of method FurnitureBlock::GetRotation

  .method public hidebysig static int32  SetRotation(int32 data,
                                                     int32 rotation) cil managed
  {
    // 代码大小       9 (0x9)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.s   -4
    IL_0003:  and
    IL_0004:  ldarg.1
    IL_0005:  ldc.i4.3
    IL_0006:  and
    IL_0007:  or
    IL_0008:  ret
  } // end of method FurnitureBlock::SetRotation

  .method public hidebysig static int32  GetDesignIndex(int32 data) cil managed
  {
    // 代码大小       10 (0xa)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.2
    IL_0002:  shr
    IL_0003:  ldc.i4     0x3ff
    IL_0008:  and
    IL_0009:  ret
  } // end of method FurnitureBlock::GetDesignIndex

  .method public hidebysig static int32  SetDesignIndex(int32 data,
                                                        int32 designIndex,
                                                        int32 shadowStrengthFactor,
                                                        bool isLightEmitter) cil managed
  {
    // 代码大小       57 (0x39)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4     0xfffff003
    IL_0006:  and
    IL_0007:  ldarg.1
    IL_0008:  ldc.i4     0x3ff
    IL_000d:  and
    IL_000e:  ldc.i4.2
    IL_000f:  shl
    IL_0010:  or
    IL_0011:  starg.s    data
    IL_0013:  ldarg.0
    IL_0014:  ldc.i4     0xffffcfff
    IL_0019:  and
    IL_001a:  ldarg.2
    IL_001b:  ldc.i4.3
    IL_001c:  and
    IL_001d:  ldc.i4.s   12
    IL_001f:  shl
    IL_0020:  or
    IL_0021:  starg.s    data
    IL_0023:  ldarg.0
    IL_0024:  ldc.i4     0xffffbfff
    IL_0029:  and
    IL_002a:  ldarg.3
    IL_002b:  brtrue.s   IL_0030

    IL_002d:  ldc.i4.0
    IL_002e:  br.s       IL_0031

    IL_0030:  ldc.i4.1
    IL_0031:  ldc.i4.s   14
    IL_0033:  shl
    IL_0034:  or
    IL_0035:  starg.s    data
    IL_0037:  ldarg.0
    IL_0038:  ret
  } // end of method FurnitureBlock::SetDesignIndex

  .method public hidebysig static class Game.FurnitureDesign 
          GetDesign(class Game.SubsystemFurnitureBlockBehavior subsystemFurnitureBlockBehavior,
                    int32 'value') cil managed
  {
    // 代码大小       20 (0x14)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  call       int32 Game.FurnitureBlock::GetDesignIndex(int32)
    IL_000b:  stloc.0
    IL_000c:  ldarg.0
    IL_000d:  ldloc.0
    IL_000e:  callvirt   instance class Game.FurnitureDesign Game.SubsystemFurnitureBlockBehavior::GetDesign(int32)
    IL_0013:  ret
  } // end of method FurnitureBlock::GetDesign

  .method public hidebysig static int32  GetShadowStrengthFactor(int32 data) cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.s   12
    IL_0003:  shr
    IL_0004:  ldc.i4.3
    IL_0005:  and
    IL_0006:  ret
  } // end of method FurnitureBlock::GetShadowStrengthFactor

  .method public hidebysig static bool  GetIsLightEmitter(int32 data) cil managed
  {
    // 代码大小       10 (0xa)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.s   14
    IL_0003:  shr
    IL_0004:  ldc.i4.1
    IL_0005:  and
    IL_0006:  ldc.i4.0
    IL_0007:  cgt.un
    IL_0009:  ret
  } // end of method FurnitureBlock::GetIsLightEmitter

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       91 (0x5b)
    .maxstack  7
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.4
    IL_0002:  newarr     [Engine]Engine.Matrix
    IL_0007:  stfld      valuetype [Engine]Engine.Matrix[] Game.FurnitureBlock::m_matrices
    IL_000c:  ldarg.0
    IL_000d:  ldc.i4.4
    IL_000e:  newarr     int32[]
    IL_0013:  dup
    IL_0014:  ldc.i4.1
    IL_0015:  ldc.i4.6
    IL_0016:  newarr     [System.Runtime]System.Int32
    IL_001b:  dup
    IL_001c:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=24' '<PrivateImplementationDetails>'::'3EE94A125E758C99527431EB1FFDD043DD30BE3F'
    IL_0021:  call       void [System.Runtime]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [System.Runtime]System.Array,
                                                                                                              valuetype [System.Runtime]System.RuntimeFieldHandle)
    IL_0026:  stelem.ref
    IL_0027:  dup
    IL_0028:  ldc.i4.2
    IL_0029:  ldc.i4.6
    IL_002a:  newarr     [System.Runtime]System.Int32
    IL_002f:  dup
    IL_0030:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=24' '<PrivateImplementationDetails>'::'390473E3061254C260D8A45BF69FF93D0AFB9412'
    IL_0035:  call       void [System.Runtime]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [System.Runtime]System.Array,
                                                                                                              valuetype [System.Runtime]System.RuntimeFieldHandle)
    IL_003a:  stelem.ref
    IL_003b:  dup
    IL_003c:  ldc.i4.3
    IL_003d:  ldc.i4.6
    IL_003e:  newarr     [System.Runtime]System.Int32
    IL_0043:  dup
    IL_0044:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=24' '<PrivateImplementationDetails>'::'5002C4B96226B297A43D9BAF7D25F07B3DA4402F'
    IL_0049:  call       void [System.Runtime]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [System.Runtime]System.Array,
                                                                                                              valuetype [System.Runtime]System.RuntimeFieldHandle)
    IL_004e:  stelem.ref
    IL_004f:  stfld      int32[][] Game.FurnitureBlock::m_facesMaps
    IL_0054:  ldarg.0
    IL_0055:  call       instance void Game.Block::.ctor()
    IL_005a:  ret
  } // end of method FurnitureBlock::.ctor

} // end of class Game.FurnitureBlock