.class public abstract auto ansi beforefieldinit Game.WoodBlock
       extends Game.CubeBlock
{
  .field private int32 m_cutTextureSlot
  .field private int32 m_sideTextureSlot
  .method family hidebysig specialname rtspecialname 
          instance void  .ctor(int32 cutTextureSlot,
                               int32 sideTextureSlot) cil managed
  {
    // 代码大小       21 (0x15)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.CubeBlock::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  stfld      int32 Game.WoodBlock::m_cutTextureSlot
    IL_000d:  ldarg.0
    IL_000e:  ldarg.2
    IL_000f:  stfld      int32 Game.WoodBlock::m_sideTextureSlot
    IL_0014:  ret
  } // end of method WoodBlock::.ctor

  .method public hidebysig virtual instance void 
          GenerateTerrainVertices(class Game.BlockGeometryGenerator generator,
                                  class Game.TerrainGeometrySubsets geometry,
                                  int32 'value',
                                  int32 x,
                                  int32 y,
                                  int32 z) cil managed
  {
    // 代码大小       103 (0x67)
    .maxstack  11
    .locals init (int32 V_0)
    IL_0000:  ldarg.3
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  call       int32 Game.WoodBlock::GetCutFace(int32)
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  ldc.i4.4
    IL_000e:  bne.un.s   IL_002a

    IL_0010:  ldarg.1
    IL_0011:  ldarg.0
    IL_0012:  ldarg.3
    IL_0013:  ldarg.s    x
    IL_0015:  ldarg.s    y
    IL_0017:  ldarg.s    z
    IL_0019:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_001e:  ldarg.2
    IL_001f:  ldfld      class Game.TerrainGeometrySubset[] Game.TerrainGeometrySubsets::OpaqueSubsetsByFace
    IL_0024:  callvirt   instance void Game.BlockGeometryGenerator::GenerateCubeVertices(class Game.Block,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         class Game.TerrainGeometrySubset[])
    IL_0029:  ret

    IL_002a:  ldloc.0
    IL_002b:  brtrue.s   IL_004a

    IL_002d:  ldarg.1
    IL_002e:  ldarg.0
    IL_002f:  ldarg.3
    IL_0030:  ldarg.s    x
    IL_0032:  ldarg.s    y
    IL_0034:  ldarg.s    z
    IL_0036:  ldc.i4.1
    IL_0037:  ldc.i4.0
    IL_0038:  ldc.i4.0
    IL_0039:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_003e:  ldarg.2
    IL_003f:  ldfld      class Game.TerrainGeometrySubset[] Game.TerrainGeometrySubsets::OpaqueSubsetsByFace
    IL_0044:  callvirt   instance void Game.BlockGeometryGenerator::GenerateCubeVertices(class Game.Block,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         class Game.TerrainGeometrySubset[])
    IL_0049:  ret

    IL_004a:  ldarg.1
    IL_004b:  ldarg.0
    IL_004c:  ldarg.3
    IL_004d:  ldarg.s    x
    IL_004f:  ldarg.s    y
    IL_0051:  ldarg.s    z
    IL_0053:  ldc.i4.0
    IL_0054:  ldc.i4.1
    IL_0055:  ldc.i4.1
    IL_0056:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_005b:  ldarg.2
    IL_005c:  ldfld      class Game.TerrainGeometrySubset[] Game.TerrainGeometrySubsets::OpaqueSubsetsByFace
    IL_0061:  callvirt   instance void Game.BlockGeometryGenerator::GenerateCubeVertices(class Game.Block,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         class Game.TerrainGeometrySubset[])
    IL_0066:  ret
  } // end of method WoodBlock::GenerateTerrainVertices

  .method public hidebysig virtual instance int32 
          GetFaceTextureSlot(int32 face,
                             int32 'value') cil managed
  {
    // 代码大小       39 (0x27)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  call       int32 Game.WoodBlock::GetCutFace(int32)
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  ldarg.1
    IL_000e:  beq.s      IL_0019

    IL_0010:  ldloc.0
    IL_0011:  call       int32 Game.CellFace::OppositeFace(int32)
    IL_0016:  ldarg.1
    IL_0017:  bne.un.s   IL_0020

    IL_0019:  ldarg.0
    IL_001a:  ldfld      int32 Game.WoodBlock::m_cutTextureSlot
    IL_001f:  ret

    IL_0020:  ldarg.0
    IL_0021:  ldfld      int32 Game.WoodBlock::m_sideTextureSlot
    IL_0026:  ret
  } // end of method WoodBlock::GetFaceTextureSlot

  .method public hidebysig virtual instance valuetype Game.BlockPlacementData 
          GetPlacementValue(class Game.SubsystemTerrain subsystemTerrain,
                            class Game.ComponentMiner componentMiner,
                            int32 'value',
                            valuetype Game.TerrainRaycastResult raycastResult) cil managed
  {
    // 代码大小       131 (0x83)
    .maxstack  5
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             float32 V_1,
             int32 V_2,
             valuetype [Engine]Engine.Matrix V_3,
             int32 V_4,
             float32 V_5,
             valuetype Game.BlockPlacementData V_6)
    IL_0000:  ldarg.2
    IL_0001:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_0006:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_000b:  callvirt   instance valuetype [Engine]Engine.Quaternion Game.ComponentCreatureModel::get_EyeRotation()
    IL_0010:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateFromQuaternion(valuetype [Engine]Engine.Quaternion)
    IL_0015:  stloc.3
    IL_0016:  ldloca.s   V_3
    IL_0018:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Forward()
    IL_001d:  stloc.0
    IL_001e:  ldc.r4     (00 00 80 FF)
    IL_0023:  stloc.1
    IL_0024:  ldc.i4.0
    IL_0025:  stloc.2
    IL_0026:  ldc.i4.0
    IL_0027:  stloc.s    V_4
    IL_0029:  br.s       IL_004b

    IL_002b:  ldloc.s    V_4
    IL_002d:  call       valuetype [Engine]Engine.Vector3 Game.CellFace::FaceToVector3(int32)
    IL_0032:  ldloc.0
    IL_0033:  call       float32 [Engine]Engine.Vector3::Dot(valuetype [Engine]Engine.Vector3,
                                                             valuetype [Engine]Engine.Vector3)
    IL_0038:  stloc.s    V_5
    IL_003a:  ldloc.s    V_5
    IL_003c:  ldloc.1
    IL_003d:  ble.un.s   IL_0045

    IL_003f:  ldloc.s    V_5
    IL_0041:  stloc.1
    IL_0042:  ldloc.s    V_4
    IL_0044:  stloc.2
    IL_0045:  ldloc.s    V_4
    IL_0047:  ldc.i4.1
    IL_0048:  add
    IL_0049:  stloc.s    V_4
    IL_004b:  ldloc.s    V_4
    IL_004d:  ldc.i4.6
    IL_004e:  blt.s      IL_002b

    IL_0050:  ldloca.s   V_6
    IL_0052:  initobj    Game.BlockPlacementData
    IL_0058:  ldloca.s   V_6
    IL_005a:  ldarg.0
    IL_005b:  ldfld      int32 Game.Block::BlockIndex
    IL_0060:  ldc.i4.0
    IL_0061:  ldc.i4.0
    IL_0062:  ldloc.2
    IL_0063:  call       int32 Game.WoodBlock::SetCutFace(int32,
                                                          int32)
    IL_0068:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_006d:  stfld      int32 Game.BlockPlacementData::Value
    IL_0072:  ldloca.s   V_6
    IL_0074:  ldarg.s    raycastResult
    IL_0076:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_007b:  stfld      valuetype Game.CellFace Game.BlockPlacementData::CellFace
    IL_0080:  ldloc.s    V_6
    IL_0082:  ret
  } // end of method WoodBlock::GetPlacementValue

  .method public hidebysig virtual instance void 
          GetDropValues(class Game.SubsystemTerrain subsystemTerrain,
                        int32 oldValue,
                        int32 newValue,
                        int32 toolLevel,
                        class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue> dropValues,
                        [out] bool& showDebris) cil managed
  {
    // 代码大小       64 (0x40)
    .maxstack  5
    .locals init (int32 V_0,
             valuetype Game.BlockDropValue V_1)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  ldc.i4.4
    IL_0009:  call       int32 Game.WoodBlock::SetCutFace(int32,
                                                          int32)
    IL_000e:  stloc.0
    IL_000f:  ldarg.s    dropValues
    IL_0011:  ldloca.s   V_1
    IL_0013:  initobj    Game.BlockDropValue
    IL_0019:  ldloca.s   V_1
    IL_001b:  ldarg.0
    IL_001c:  ldfld      int32 Game.Block::BlockIndex
    IL_0021:  ldc.i4.0
    IL_0022:  ldloc.0
    IL_0023:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_0028:  stfld      int32 Game.BlockDropValue::Value
    IL_002d:  ldloca.s   V_1
    IL_002f:  ldc.i4.1
    IL_0030:  stfld      int32 Game.BlockDropValue::Count
    IL_0035:  ldloc.1
    IL_0036:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue>::Add(!0)
    IL_003b:  ldarg.s    showDebris
    IL_003d:  ldc.i4.1
    IL_003e:  stind.i1
    IL_003f:  ret
  } // end of method WoodBlock::GetDropValues

  .method public hidebysig static int32  GetCutFace(int32 data) cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.3
    IL_0002:  and
    IL_0003:  starg.s    data
    IL_0005:  ldarg.0
    IL_0006:  brtrue.s   IL_000a

    IL_0008:  ldc.i4.4
    IL_0009:  ret

    IL_000a:  ldarg.0
    IL_000b:  ldc.i4.1
    IL_000c:  bne.un.s   IL_0010

    IL_000e:  ldc.i4.0
    IL_000f:  ret

    IL_0010:  ldc.i4.1
    IL_0011:  ret
  } // end of method WoodBlock::GetCutFace

  .method public hidebysig static int32  SetCutFace(int32 data,
                                                    int32 cutFace) cil managed
  {
    // 代码大小       31 (0x1f)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.s   -4
    IL_0003:  and
    IL_0004:  starg.s    data
    IL_0006:  ldarg.1
    IL_0007:  brfalse.s  IL_000d

    IL_0009:  ldarg.1
    IL_000a:  ldc.i4.2
    IL_000b:  bne.un.s   IL_0011

    IL_000d:  ldarg.0
    IL_000e:  ldc.i4.1
    IL_000f:  or
    IL_0010:  ret

    IL_0011:  ldarg.1
    IL_0012:  ldc.i4.1
    IL_0013:  beq.s      IL_0019

    IL_0015:  ldarg.1
    IL_0016:  ldc.i4.3
    IL_0017:  bne.un.s   IL_001d

    IL_0019:  ldarg.0
    IL_001a:  ldc.i4.2
    IL_001b:  or
    IL_001c:  ret

    IL_001d:  ldarg.0
    IL_001e:  ret
  } // end of method WoodBlock::SetCutFace

} // end of class Game.WoodBlock