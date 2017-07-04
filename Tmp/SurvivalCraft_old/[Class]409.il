.class public auto ansi beforefieldinit Game.BatteryBlock
       extends Game.Block
       implements Game.IElectricElementBlock
{
  .field public static literal int32 Index = int32(0x0000008A)
  .field private class Game.BlockMesh m_standaloneBlockMesh
  .field private class Game.BlockMesh m_blockMesh
  .field private valuetype [Engine]Engine.BoundingBox[] m_collisionBoxes
  .method public hidebysig virtual instance void 
          Initialize() cil managed
  {
    // 代码大小       202 (0xca)
    .maxstack  8
    .locals init (class [Engine]Engine.Graphics.Model V_0,
             valuetype [Engine]Engine.Matrix V_1,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> V_2)
    IL_0000:  ldstr      "Models/Battery"
    IL_0005:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Model>(string)
    IL_000a:  stloc.0
    IL_000b:  ldloc.0
    IL_000c:  ldstr      "Battery"
    IL_0011:  ldc.i4.1
    IL_0012:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0017:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_001c:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_0021:  stloc.1
    IL_0022:  ldarg.0
    IL_0023:  ldfld      class Game.BlockMesh Game.BatteryBlock::m_standaloneBlockMesh
    IL_0028:  ldloc.0
    IL_0029:  ldstr      "Battery"
    IL_002e:  ldc.i4.1
    IL_002f:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0034:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_0039:  stloc.2
    IL_003a:  ldloca.s   V_2
    IL_003c:  ldc.i4.0
    IL_003d:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_0042:  ldloc.1
    IL_0043:  ldc.r4     0.0
    IL_0048:  ldc.r4     -0.5
    IL_004d:  ldc.r4     0.0
    IL_0052:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0057:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_005c:  ldc.i4.0
    IL_005d:  ldc.i4.0
    IL_005e:  ldc.i4.0
    IL_005f:  ldc.i4.0
    IL_0060:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0065:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_006a:  ldarg.0
    IL_006b:  ldfld      class Game.BlockMesh Game.BatteryBlock::m_blockMesh
    IL_0070:  ldloc.0
    IL_0071:  ldstr      "Battery"
    IL_0076:  ldc.i4.1
    IL_0077:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_007c:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_0081:  stloc.2
    IL_0082:  ldloca.s   V_2
    IL_0084:  ldc.i4.0
    IL_0085:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_008a:  ldloc.1
    IL_008b:  ldc.r4     0.5
    IL_0090:  ldc.r4     0.0
    IL_0095:  ldc.r4     0.5
    IL_009a:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_009f:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00a4:  ldc.i4.0
    IL_00a5:  ldc.i4.0
    IL_00a6:  ldc.i4.0
    IL_00a7:  ldc.i4.0
    IL_00a8:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_00ad:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_00b2:  ldarg.0
    IL_00b3:  ldfld      valuetype [Engine]Engine.BoundingBox[] Game.BatteryBlock::m_collisionBoxes
    IL_00b8:  ldc.i4.0
    IL_00b9:  ldarg.0
    IL_00ba:  ldfld      class Game.BlockMesh Game.BatteryBlock::m_blockMesh
    IL_00bf:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.BlockMesh::CalculateBoundingBox()
    IL_00c4:  stelem     [Engine]Engine.BoundingBox
    IL_00c9:  ret
  } // end of method BatteryBlock::Initialize

  .method public hidebysig virtual instance void 
          GetDropValues(class Game.SubsystemTerrain subsystemTerrain,
                        int32 oldValue,
                        int32 newValue,
                        int32 toolLevel,
                        class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue> dropValues,
                        [out] bool& showDebris) cil managed
  {
    // 代码大小       65 (0x41)
    .maxstack  5
    .locals init (int32 V_0,
             valuetype Game.BlockDropValue V_1)
    IL_0000:  ldarg.s    showDebris
    IL_0002:  ldc.i4.1
    IL_0003:  stind.i1
    IL_0004:  ldarg.s    toolLevel
    IL_0006:  ldarg.0
    IL_0007:  ldfld      int32 Game.Block::RequiredToolLevel
    IL_000c:  blt.s      IL_0040

    IL_000e:  ldarg.2
    IL_000f:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0014:  stloc.0
    IL_0015:  ldarg.s    dropValues
    IL_0017:  ldloca.s   V_1
    IL_0019:  initobj    Game.BlockDropValue
    IL_001f:  ldloca.s   V_1
    IL_0021:  ldc.i4     0x8a
    IL_0026:  ldc.i4.0
    IL_0027:  ldloc.0
    IL_0028:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_002d:  stfld      int32 Game.BlockDropValue::Value
    IL_0032:  ldloca.s   V_1
    IL_0034:  ldc.i4.1
    IL_0035:  stfld      int32 Game.BlockDropValue::Count
    IL_003a:  ldloc.1
    IL_003b:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue>::Add(!0)
    IL_0040:  ret
  } // end of method BatteryBlock::GetDropValues

  .method public hidebysig virtual instance valuetype [Engine]Engine.BoundingBox[] 
          GetCustomCollisionBoxes(class Game.SubsystemTerrain terrain,
                                  int32 'value') cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.BoundingBox[] Game.BatteryBlock::m_collisionBoxes
    IL_0006:  ret
  } // end of method BatteryBlock::GetCustomCollisionBoxes

  .method public hidebysig virtual instance void 
          GenerateTerrainVertices(class Game.BlockGeometryGenerator generator,
                                  class Game.TerrainGeometrySubsets geometry,
                                  int32 'value',
                                  int32 x,
                                  int32 y,
                                  int32 z) cil managed
  {
    // 代码大小       70 (0x46)
    .maxstack  9
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> V_0)
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  ldarg.s    x
    IL_0004:  ldarg.s    y
    IL_0006:  ldarg.s    z
    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.BlockMesh Game.BatteryBlock::m_blockMesh
    IL_000e:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0013:  ldloca.s   V_0
    IL_0015:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_001b:  ldloc.0
    IL_001c:  ldarg.2
    IL_001d:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetOpaque
    IL_0022:  callvirt   instance void Game.BlockGeometryGenerator::GenerateMeshVertices(class Game.Block,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         class Game.BlockMesh,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>,
                                                                                         class Game.TerrainGeometrySubset)
    IL_0027:  ldarg.1
    IL_0028:  ldarg.3
    IL_0029:  ldarg.s    x
    IL_002b:  ldarg.s    y
    IL_002d:  ldarg.s    z
    IL_002f:  ldc.i4.4
    IL_0030:  ldc.r4     0.72000003
    IL_0035:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_003a:  ldarg.2
    IL_003b:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetOpaque
    IL_0040:  callvirt   instance void Game.BlockGeometryGenerator::GenerateWireVertices(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         valuetype [Engine]Engine.Vector2,
                                                                                         class Game.TerrainGeometrySubset)
    IL_0045:  ret
  } // end of method BatteryBlock::GenerateTerrainVertices

  .method public hidebysig virtual instance void 
          DrawBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D primitivesRenderer,
                    int32 'value',
                    valuetype [Engine]Engine.Color color,
                    float32 size,
                    valuetype [Engine]Engine.Matrix& matrix,
                    class Game.DrawBlockEnvironmentData environmentData) cil managed
  {
    // 代码大小       26 (0x1a)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class Game.BlockMesh Game.BatteryBlock::m_standaloneBlockMesh
    IL_0007:  ldarg.3
    IL_0008:  ldc.r4     1.
    IL_000d:  ldarg.s    size
    IL_000f:  mul
    IL_0010:  ldarg.s    matrix
    IL_0012:  ldarg.s    environmentData
    IL_0014:  call       void Game.BlocksManager::DrawMeshBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                                class Game.BlockMesh,
                                                                valuetype [Engine]Engine.Color,
                                                                float32,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                class Game.DrawBlockEnvironmentData)
    IL_0019:  ret
  } // end of method BatteryBlock::DrawBlock

  .method public hidebysig newslot virtual final 
          instance class Game.ElectricElement 
          CreateElectricElement(class Game.SubsystemElectricity subsystemElectricity,
                                int32 'value',
                                int32 x,
                                int32 y,
                                int32 z) cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.3
    IL_0002:  ldarg.s    y
    IL_0004:  ldarg.s    z
    IL_0006:  ldc.i4.4
    IL_0007:  newobj     instance void Game.CellFace::.ctor(int32,
                                                            int32,
                                                            int32,
                                                            int32)
    IL_000c:  newobj     instance void Game.BatteryElectricElement::.ctor(class Game.SubsystemElectricity,
                                                                          valuetype Game.CellFace)
    IL_0011:  ret
  } // end of method BatteryBlock::CreateElectricElement

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
    // 代码大小       40 (0x28)
    .maxstack  3
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection> V_0,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType> V_1)
    IL_0000:  ldarg.3
    IL_0001:  ldc.i4.4
    IL_0002:  bne.un.s   IL_001e

    IL_0004:  ldc.i4.4
    IL_0005:  ldc.i4.0
    IL_0006:  ldarg.s    connectorFace
    IL_0008:  call       valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection> Game.SubsystemElectricity::GetConnectorDirection(int32,
                                                                                                                                                                 int32,
                                                                                                                                                                 int32)
    IL_000d:  stloc.0
    IL_000e:  ldloca.s   V_0
    IL_0010:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_HasValue()
    IL_0015:  brfalse.s  IL_001e

    IL_0017:  ldc.i4.1
    IL_0018:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType>::.ctor(!0)
    IL_001d:  ret

    IL_001e:  ldloca.s   V_1
    IL_0020:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType>
    IL_0026:  ldloc.1
    IL_0027:  ret
  } // end of method BatteryBlock::GetConnectorType

  .method public hidebysig newslot virtual final 
          instance int32  GetConnectionMask(int32 'value') cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldc.i4     0x7fffffff
    IL_0005:  ret
  } // end of method BatteryBlock::GetConnectionMask

  .method public hidebysig static int32  GetVoltageLevel(int32 data) cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldc.i4.s   15
    IL_0002:  ldarg.0
    IL_0003:  ldc.i4.s   15
    IL_0005:  and
    IL_0006:  sub
    IL_0007:  ret
  } // end of method BatteryBlock::GetVoltageLevel

  .method public hidebysig static int32  SetVoltageLevel(int32 data,
                                                         int32 voltageLevel) cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.s   -16
    IL_0003:  and
    IL_0004:  ldc.i4.s   15
    IL_0006:  ldarg.1
    IL_0007:  ldc.i4.s   15
    IL_0009:  and
    IL_000a:  sub
    IL_000b:  or
    IL_000c:  ret
  } // end of method BatteryBlock::SetVoltageLevel

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       41 (0x29)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0006:  stfld      class Game.BlockMesh Game.BatteryBlock::m_standaloneBlockMesh
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0011:  stfld      class Game.BlockMesh Game.BatteryBlock::m_blockMesh
    IL_0016:  ldarg.0
    IL_0017:  ldc.i4.1
    IL_0018:  newarr     [Engine]Engine.BoundingBox
    IL_001d:  stfld      valuetype [Engine]Engine.BoundingBox[] Game.BatteryBlock::m_collisionBoxes
    IL_0022:  ldarg.0
    IL_0023:  call       instance void Game.Block::.ctor()
    IL_0028:  ret
  } // end of method BatteryBlock::.ctor

} // end of class Game.BatteryBlock