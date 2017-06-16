.class public auto ansi beforefieldinit Game.ThermometerBlock
       extends Game.Block
       implements Game.IElectricElementBlock
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.ThermometerBlock/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`2<valuetype Game.BlockMeshVertex,float32> '<>9__6_0'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.ThermometerBlock/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.ThermometerBlock/'<>c' Game.ThermometerBlock/'<>c'::'<>9'
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

    .method assembly hidebysig instance float32 
            '<Initialize>b__6_0'(valuetype Game.BlockMeshVertex v) cil managed
    {
      // 代码大小       12 (0xc)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldfld      valuetype [Engine]Engine.Vector3 Game.BlockMeshVertex::Position
      IL_0006:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_000b:  ret
    } // end of method '<>c'::'<Initialize>b__6_0'

  } // end of class '<>c'

  .field public static literal int32 Index = int32(0x00000078)
  .field private class Game.BlockMesh m_caseMesh
  .field private class Game.BlockMesh m_fluidMesh
  .field private valuetype [Engine]Engine.Matrix[] m_matricesByData
  .field private valuetype [Engine]Engine.BoundingBox[][] m_collisionBoxesByData
  .field private float32 m_fluidBottomPosition
  .method public hidebysig virtual instance void 
          Initialize() cil managed
  {
    // 代码大小       404 (0x194)
    .maxstack  8
    .locals init (class [Engine]Engine.Graphics.Model V_0,
             valuetype [Engine]Engine.Matrix V_1,
             valuetype [Engine]Engine.Matrix V_2,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> V_3,
             int32 V_4)
    IL_0000:  ldstr      "Models/Thermometer"
    IL_0005:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Model>(string)
    IL_000a:  stloc.0
    IL_000b:  ldloc.0
    IL_000c:  ldstr      "Case"
    IL_0011:  ldc.i4.1
    IL_0012:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0017:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_001c:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_0021:  stloc.1
    IL_0022:  ldloc.0
    IL_0023:  ldstr      "Fluid"
    IL_0028:  ldc.i4.1
    IL_0029:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_002e:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_0033:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_0038:  stloc.2
    IL_0039:  ldarg.0
    IL_003a:  ldfld      class Game.BlockMesh Game.ThermometerBlock::m_caseMesh
    IL_003f:  ldloc.0
    IL_0040:  ldstr      "Case"
    IL_0045:  ldc.i4.1
    IL_0046:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_004b:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_0050:  stloc.3
    IL_0051:  ldloca.s   V_3
    IL_0053:  ldc.i4.0
    IL_0054:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_0059:  ldloc.1
    IL_005a:  ldc.i4.0
    IL_005b:  ldc.i4.0
    IL_005c:  ldc.i4.1
    IL_005d:  ldc.i4.0
    IL_005e:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0063:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_0068:  ldarg.0
    IL_0069:  ldfld      class Game.BlockMesh Game.ThermometerBlock::m_fluidMesh
    IL_006e:  ldloc.0
    IL_006f:  ldstr      "Fluid"
    IL_0074:  ldc.i4.1
    IL_0075:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_007a:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_007f:  stloc.3
    IL_0080:  ldloca.s   V_3
    IL_0082:  ldc.i4.0
    IL_0083:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_0088:  ldloc.2
    IL_0089:  ldc.i4.0
    IL_008a:  ldc.i4.0
    IL_008b:  ldc.i4.0
    IL_008c:  ldc.i4.0
    IL_008d:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0092:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_0097:  ldc.i4.0
    IL_0098:  stloc.s    V_4
    IL_009a:  br         IL_0150

    IL_009f:  ldarg.0
    IL_00a0:  ldfld      valuetype [Engine]Engine.Matrix[] Game.ThermometerBlock::m_matricesByData
    IL_00a5:  ldloc.s    V_4
    IL_00a7:  ldc.r4     1.5
    IL_00ac:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateScale(float32)
    IL_00b1:  ldc.r4     0.94999999
    IL_00b6:  ldc.r4     0.15000001
    IL_00bb:  ldc.r4     0.5
    IL_00c0:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_00c5:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00ca:  ldc.r4     -0.5
    IL_00cf:  ldc.r4     0.0
    IL_00d4:  ldc.r4     -0.5
    IL_00d9:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_00de:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00e3:  ldloc.s    V_4
    IL_00e5:  ldc.i4.1
    IL_00e6:  add
    IL_00e7:  conv.r4
    IL_00e8:  ldc.r4     3.1415927
    IL_00ed:  mul
    IL_00ee:  ldc.r4     2.
    IL_00f3:  div
    IL_00f4:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_00f9:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00fe:  ldc.r4     0.5
    IL_0103:  ldc.r4     0.0
    IL_0108:  ldc.r4     0.5
    IL_010d:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0112:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0117:  stelem     [Engine]Engine.Matrix
    IL_011c:  ldarg.0
    IL_011d:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.ThermometerBlock::m_collisionBoxesByData
    IL_0122:  ldloc.s    V_4
    IL_0124:  ldc.i4.1
    IL_0125:  newarr     [Engine]Engine.BoundingBox
    IL_012a:  dup
    IL_012b:  ldc.i4.0
    IL_012c:  ldarg.0
    IL_012d:  ldfld      class Game.BlockMesh Game.ThermometerBlock::m_caseMesh
    IL_0132:  ldarg.0
    IL_0133:  ldfld      valuetype [Engine]Engine.Matrix[] Game.ThermometerBlock::m_matricesByData
    IL_0138:  ldloc.s    V_4
    IL_013a:  ldelem     [Engine]Engine.Matrix
    IL_013f:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.BlockMesh::CalculateBoundingBox(valuetype [Engine]Engine.Matrix)
    IL_0144:  stelem     [Engine]Engine.BoundingBox
    IL_0149:  stelem.ref
    IL_014a:  ldloc.s    V_4
    IL_014c:  ldc.i4.1
    IL_014d:  add
    IL_014e:  stloc.s    V_4
    IL_0150:  ldloc.s    V_4
    IL_0152:  ldc.i4.4
    IL_0153:  blt        IL_009f

    IL_0158:  ldarg.0
    IL_0159:  ldarg.0
    IL_015a:  ldfld      class Game.BlockMesh Game.ThermometerBlock::m_fluidMesh
    IL_015f:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex> Game.BlockMesh::Vertices
    IL_0164:  ldsfld     class [System.Runtime]System.Func`2<valuetype Game.BlockMeshVertex,float32> Game.ThermometerBlock/'<>c'::'<>9__6_0'
    IL_0169:  dup
    IL_016a:  brtrue.s   IL_0183

    IL_016c:  pop
    IL_016d:  ldsfld     class Game.ThermometerBlock/'<>c' Game.ThermometerBlock/'<>c'::'<>9'
    IL_0172:  ldftn      instance float32 Game.ThermometerBlock/'<>c'::'<Initialize>b__6_0'(valuetype Game.BlockMeshVertex)
    IL_0178:  newobj     instance void class [System.Runtime]System.Func`2<valuetype Game.BlockMeshVertex,float32>::.ctor(object,
                                                                                                                          native int)
    IL_017d:  dup
    IL_017e:  stsfld     class [System.Runtime]System.Func`2<valuetype Game.BlockMeshVertex,float32> Game.ThermometerBlock/'<>c'::'<>9__6_0'
    IL_0183:  call       float32 [System.Linq]System.Linq.Enumerable::Min<valuetype Game.BlockMeshVertex>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                          class [System.Runtime]System.Func`2<!!0,float32>)
    IL_0188:  stfld      float32 Game.ThermometerBlock::m_fluidBottomPosition
    IL_018d:  ldarg.0
    IL_018e:  call       instance void Game.Block::Initialize()
    IL_0193:  ret
  } // end of method ThermometerBlock::Initialize

  .method public hidebysig newslot virtual final 
          instance class Game.ElectricElement 
          CreateElectricElement(class Game.SubsystemElectricity subsystemElectricity,
                                int32 'value',
                                int32 x,
                                int32 y,
                                int32 z) cil managed
  {
    // 代码大小       27 (0x1b)
    .maxstack  6
    .locals init (int32 V_0)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  stloc.0
    IL_0007:  ldarg.1
    IL_0008:  ldarg.3
    IL_0009:  ldarg.s    y
    IL_000b:  ldarg.s    z
    IL_000d:  ldloc.0
    IL_000e:  ldc.i4.3
    IL_000f:  and
    IL_0010:  newobj     instance void Game.CellFace::.ctor(int32,
                                                            int32,
                                                            int32,
                                                            int32)
    IL_0015:  newobj     instance void Game.ThermometerElectricElement::.ctor(class Game.SubsystemElectricity,
                                                                              valuetype Game.CellFace)
    IL_001a:  ret
  } // end of method ThermometerBlock::CreateElectricElement

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
    // 代码大小       28 (0x1c)
    .maxstack  2
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType> V_0)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  ldc.i4.3
    IL_0007:  and
    IL_0008:  ldarg.3
    IL_0009:  bne.un.s   IL_0012

    IL_000b:  ldc.i4.1
    IL_000c:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType>::.ctor(!0)
    IL_0011:  ret

    IL_0012:  ldloca.s   V_0
    IL_0014:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType>
    IL_001a:  ldloc.0
    IL_001b:  ret
  } // end of method ThermometerBlock::GetConnectorType

  .method public hidebysig newslot virtual final 
          instance int32  GetConnectionMask(int32 'value') cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldc.i4     0x7fffffff
    IL_0005:  ret
  } // end of method ThermometerBlock::GetConnectionMask

  .method public hidebysig virtual instance valuetype [Engine]Engine.BoundingBox[] 
          GetCustomCollisionBoxes(class Game.SubsystemTerrain terrain,
                                  int32 'value') cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  ldarg.0
    IL_0009:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.ThermometerBlock::m_collisionBoxesByData
    IL_000e:  ldlen
    IL_000f:  conv.i4
    IL_0010:  bge.s      IL_001b

    IL_0012:  ldarg.0
    IL_0013:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.ThermometerBlock::m_collisionBoxesByData
    IL_0018:  ldloc.0
    IL_0019:  ldelem.ref
    IL_001a:  ret

    IL_001b:  ldnull
    IL_001c:  ret
  } // end of method ThermometerBlock::GetCustomCollisionBoxes

  .method public hidebysig virtual instance valuetype Game.BlockPlacementData 
          GetPlacementValue(class Game.SubsystemTerrain terrain,
                            class Game.ComponentMiner componentMiner,
                            int32 'value',
                            valuetype Game.TerrainRaycastResult raycastResult) cil managed
  {
    // 代码大小       153 (0x99)
    .maxstack  2
    .locals init (int32 V_0,
             valuetype Game.BlockPlacementData V_1)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  ldarg.s    raycastResult
    IL_0004:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0009:  ldfld      int32 Game.CellFace::Face
    IL_000e:  brtrue.s   IL_001f

    IL_0010:  ldc.i4.0
    IL_0011:  ldc.i4.s   120
    IL_0013:  call       int32 Game.TerrainData::ReplaceContents(int32,
                                                                 int32)
    IL_0018:  ldc.i4.0
    IL_0019:  call       int32 Game.TerrainData::ReplaceData(int32,
                                                             int32)
    IL_001e:  stloc.0
    IL_001f:  ldarg.s    raycastResult
    IL_0021:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0026:  ldfld      int32 Game.CellFace::Face
    IL_002b:  ldc.i4.1
    IL_002c:  bne.un.s   IL_003d

    IL_002e:  ldc.i4.0
    IL_002f:  ldc.i4.s   120
    IL_0031:  call       int32 Game.TerrainData::ReplaceContents(int32,
                                                                 int32)
    IL_0036:  ldc.i4.1
    IL_0037:  call       int32 Game.TerrainData::ReplaceData(int32,
                                                             int32)
    IL_003c:  stloc.0
    IL_003d:  ldarg.s    raycastResult
    IL_003f:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0044:  ldfld      int32 Game.CellFace::Face
    IL_0049:  ldc.i4.2
    IL_004a:  bne.un.s   IL_005b

    IL_004c:  ldc.i4.0
    IL_004d:  ldc.i4.s   120
    IL_004f:  call       int32 Game.TerrainData::ReplaceContents(int32,
                                                                 int32)
    IL_0054:  ldc.i4.2
    IL_0055:  call       int32 Game.TerrainData::ReplaceData(int32,
                                                             int32)
    IL_005a:  stloc.0
    IL_005b:  ldarg.s    raycastResult
    IL_005d:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0062:  ldfld      int32 Game.CellFace::Face
    IL_0067:  ldc.i4.3
    IL_0068:  bne.un.s   IL_0079

    IL_006a:  ldc.i4.0
    IL_006b:  ldc.i4.s   120
    IL_006d:  call       int32 Game.TerrainData::ReplaceContents(int32,
                                                                 int32)
    IL_0072:  ldc.i4.3
    IL_0073:  call       int32 Game.TerrainData::ReplaceData(int32,
                                                             int32)
    IL_0078:  stloc.0
    IL_0079:  ldloca.s   V_1
    IL_007b:  initobj    Game.BlockPlacementData
    IL_0081:  ldloca.s   V_1
    IL_0083:  ldloc.0
    IL_0084:  stfld      int32 Game.BlockPlacementData::Value
    IL_0089:  ldloca.s   V_1
    IL_008b:  ldarg.s    raycastResult
    IL_008d:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0092:  stfld      valuetype Game.CellFace Game.BlockPlacementData::CellFace
    IL_0097:  ldloc.1
    IL_0098:  ret
  } // end of method ThermometerBlock::GetPlacementValue

  .method public hidebysig virtual instance void 
          GenerateTerrainVertices(class Game.BlockGeometryGenerator generator,
                                  class Game.TerrainGeometrySubsets geometry,
                                  int32 'value',
                                  int32 x,
                                  int32 y,
                                  int32 z) cil managed
  {
    // 代码大小       270 (0x10e)
    .maxstack  9
    .locals init (int32 V_0,
             int32 V_1,
             float32 V_2,
             valuetype [Engine]Engine.Matrix V_3,
             valuetype [Engine]Engine.Matrix V_4)
    IL_0000:  ldarg.3
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  ldarg.0
    IL_0009:  ldfld      valuetype [Engine]Engine.Matrix[] Game.ThermometerBlock::m_matricesByData
    IL_000e:  ldlen
    IL_000f:  conv.i4
    IL_0010:  bge        IL_010d

    IL_0015:  ldarg.1
    IL_0016:  ldfld      class Game.SubsystemMetersBlockBehavior Game.BlockGeometryGenerator::SubsystemMetersBlockBehavior
    IL_001b:  brtrue.s   IL_0020

    IL_001d:  ldc.i4.8
    IL_001e:  br.s       IL_0031

    IL_0020:  ldarg.1
    IL_0021:  ldfld      class Game.SubsystemMetersBlockBehavior Game.BlockGeometryGenerator::SubsystemMetersBlockBehavior
    IL_0026:  ldarg.s    x
    IL_0028:  ldarg.s    y
    IL_002a:  ldarg.s    z
    IL_002c:  callvirt   instance int32 Game.SubsystemMetersBlockBehavior::GetThermometerReading(int32,
                                                                                                 int32,
                                                                                                 int32)
    IL_0031:  stloc.1
    IL_0032:  ldc.r4     1.
    IL_0037:  ldc.r4     4.
    IL_003c:  ldloc.1
    IL_003d:  conv.r4
    IL_003e:  ldc.r4     15.
    IL_0043:  div
    IL_0044:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0049:  stloc.2
    IL_004a:  ldarg.0
    IL_004b:  ldfld      valuetype [Engine]Engine.Matrix[] Game.ThermometerBlock::m_matricesByData
    IL_0050:  ldloc.0
    IL_0051:  ldelem     [Engine]Engine.Matrix
    IL_0056:  stloc.3
    IL_0057:  ldc.r4     0.0
    IL_005c:  ldarg.0
    IL_005d:  ldfld      float32 Game.ThermometerBlock::m_fluidBottomPosition
    IL_0062:  neg
    IL_0063:  ldc.r4     0.0
    IL_0068:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_006d:  ldc.r4     1.
    IL_0072:  ldloc.2
    IL_0073:  ldc.r4     1.
    IL_0078:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateScale(float32,
                                                                                            float32,
                                                                                            float32)
    IL_007d:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0082:  ldc.r4     0.0
    IL_0087:  ldarg.0
    IL_0088:  ldfld      float32 Game.ThermometerBlock::m_fluidBottomPosition
    IL_008d:  ldc.r4     0.0
    IL_0092:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0097:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_009c:  ldloc.3
    IL_009d:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00a2:  stloc.s    V_4
    IL_00a4:  ldarg.1
    IL_00a5:  ldarg.0
    IL_00a6:  ldarg.s    x
    IL_00a8:  ldarg.s    y
    IL_00aa:  ldarg.s    z
    IL_00ac:  ldarg.0
    IL_00ad:  ldfld      class Game.BlockMesh Game.ThermometerBlock::m_caseMesh
    IL_00b2:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_00b7:  ldloc.3
    IL_00b8:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_00bd:  ldarg.2
    IL_00be:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetOpaque
    IL_00c3:  callvirt   instance void Game.BlockGeometryGenerator::GenerateMeshVertices(class Game.Block,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         class Game.BlockMesh,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>,
                                                                                         class Game.TerrainGeometrySubset)
    IL_00c8:  ldarg.1
    IL_00c9:  ldarg.0
    IL_00ca:  ldarg.s    x
    IL_00cc:  ldarg.s    y
    IL_00ce:  ldarg.s    z
    IL_00d0:  ldarg.0
    IL_00d1:  ldfld      class Game.BlockMesh Game.ThermometerBlock::m_fluidMesh
    IL_00d6:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_00db:  ldloc.s    V_4
    IL_00dd:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_00e2:  ldarg.2
    IL_00e3:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetOpaque
    IL_00e8:  callvirt   instance void Game.BlockGeometryGenerator::GenerateMeshVertices(class Game.Block,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         class Game.BlockMesh,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>,
                                                                                         class Game.TerrainGeometrySubset)
    IL_00ed:  ldarg.1
    IL_00ee:  ldarg.3
    IL_00ef:  ldarg.s    x
    IL_00f1:  ldarg.s    y
    IL_00f3:  ldarg.s    z
    IL_00f5:  ldloc.0
    IL_00f6:  ldc.i4.3
    IL_00f7:  and
    IL_00f8:  ldc.r4     0.2
    IL_00fd:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_0102:  ldarg.2
    IL_0103:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetOpaque
    IL_0108:  callvirt   instance void Game.BlockGeometryGenerator::GenerateWireVertices(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         valuetype [Engine]Engine.Vector2,
                                                                                         class Game.TerrainGeometrySubset)
    IL_010d:  ret
  } // end of method ThermometerBlock::GenerateTerrainVertices

  .method public hidebysig virtual instance void 
          DrawBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D primitivesRenderer,
                    int32 'value',
                    float32 size,
                    valuetype [Engine]Engine.Matrix& matrix,
                    class Game.DrawBlockEnvironmentData environmentData) cil managed
  {
    // 代码大小       468 (0x1d4)
    .maxstack  5
    .locals init (float32 V_0,
             float32 V_1,
             valuetype [Engine]Engine.Matrix V_2,
             valuetype [Engine]Engine.Matrix V_3,
             valuetype [Engine]Engine.Vector3 V_4,
             int32 V_5,
             int32 V_6,
             float32 V_7,
             float32 V_8,
             float32 V_9,
             float32 V_10,
             float32 V_11,
             float32 V_12)
    IL_0000:  ldc.r4     8.
    IL_0005:  stloc.0
    IL_0006:  ldarg.s    environmentData
    IL_0008:  brfalse    IL_0113

    IL_000d:  ldarg.s    environmentData
    IL_000f:  ldfld      class Game.SubsystemTerrain Game.DrawBlockEnvironmentData::SubsystemTerrain
    IL_0014:  brfalse    IL_0113

    IL_0019:  ldarg.s    environmentData
    IL_001b:  ldflda     valuetype [Engine]Engine.Matrix Game.DrawBlockEnvironmentData::InWorldMatrix
    IL_0020:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Translation()
    IL_0025:  stloc.s    V_4
    IL_0027:  ldloc.s    V_4
    IL_0029:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_002e:  conv.i4
    IL_002f:  stloc.s    V_5
    IL_0031:  ldloc.s    V_4
    IL_0033:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0038:  conv.i4
    IL_0039:  stloc.s    V_6
    IL_003b:  ldarg.s    environmentData
    IL_003d:  ldfld      class Game.SubsystemTerrain Game.DrawBlockEnvironmentData::SubsystemTerrain
    IL_0042:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0047:  ldloc.s    V_5
    IL_0049:  ldloc.s    V_6
    IL_004b:  callvirt   instance bool Game.TerrainData::IsShaftValid(int32,
                                                                      int32)
    IL_0050:  brfalse    IL_0113

    IL_0055:  ldarg.s    environmentData
    IL_0057:  ldfld      class Game.SubsystemTerrain Game.DrawBlockEnvironmentData::SubsystemTerrain
    IL_005c:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0061:  ldloc.s    V_5
    IL_0063:  ldc.i4.1
    IL_0064:  add
    IL_0065:  ldloc.s    V_6
    IL_0067:  ldc.i4.1
    IL_0068:  add
    IL_0069:  callvirt   instance bool Game.TerrainData::IsShaftValid(int32,
                                                                      int32)
    IL_006e:  brfalse    IL_0113

    IL_0073:  ldloc.s    V_4
    IL_0075:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_007a:  ldloc.s    V_5
    IL_007c:  conv.r4
    IL_007d:  sub
    IL_007e:  stloc.s    V_7
    IL_0080:  ldloc.s    V_4
    IL_0082:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0087:  ldloc.s    V_6
    IL_0089:  conv.r4
    IL_008a:  sub
    IL_008b:  stloc.s    V_8
    IL_008d:  ldarg.s    environmentData
    IL_008f:  ldfld      class Game.SubsystemTerrain Game.DrawBlockEnvironmentData::SubsystemTerrain
    IL_0094:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0099:  ldloc.s    V_5
    IL_009b:  ldloc.s    V_6
    IL_009d:  callvirt   instance int32 Game.TerrainData::GetTemperatureFast(int32,
                                                                             int32)
    IL_00a2:  conv.r4
    IL_00a3:  ldarg.s    environmentData
    IL_00a5:  ldfld      class Game.SubsystemTerrain Game.DrawBlockEnvironmentData::SubsystemTerrain
    IL_00aa:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_00af:  ldloc.s    V_5
    IL_00b1:  ldloc.s    V_6
    IL_00b3:  ldc.i4.1
    IL_00b4:  add
    IL_00b5:  callvirt   instance int32 Game.TerrainData::GetTemperatureFast(int32,
                                                                             int32)
    IL_00ba:  conv.r4
    IL_00bb:  stloc.s    V_9
    IL_00bd:  ldarg.s    environmentData
    IL_00bf:  ldfld      class Game.SubsystemTerrain Game.DrawBlockEnvironmentData::SubsystemTerrain
    IL_00c4:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_00c9:  ldloc.s    V_5
    IL_00cb:  ldc.i4.1
    IL_00cc:  add
    IL_00cd:  ldloc.s    V_6
    IL_00cf:  callvirt   instance int32 Game.TerrainData::GetTemperatureFast(int32,
                                                                             int32)
    IL_00d4:  conv.r4
    IL_00d5:  stloc.s    V_10
    IL_00d7:  ldarg.s    environmentData
    IL_00d9:  ldfld      class Game.SubsystemTerrain Game.DrawBlockEnvironmentData::SubsystemTerrain
    IL_00de:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_00e3:  ldloc.s    V_5
    IL_00e5:  ldc.i4.1
    IL_00e6:  add
    IL_00e7:  ldloc.s    V_6
    IL_00e9:  ldc.i4.1
    IL_00ea:  add
    IL_00eb:  callvirt   instance int32 Game.TerrainData::GetTemperatureFast(int32,
                                                                             int32)
    IL_00f0:  conv.r4
    IL_00f1:  stloc.s    V_11
    IL_00f3:  ldloc.s    V_9
    IL_00f5:  ldloc.s    V_8
    IL_00f7:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_00fc:  ldloc.s    V_10
    IL_00fe:  ldloc.s    V_11
    IL_0100:  ldloc.s    V_8
    IL_0102:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0107:  stloc.s    V_12
    IL_0109:  ldloc.s    V_12
    IL_010b:  ldloc.s    V_7
    IL_010d:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0112:  stloc.0
    IL_0113:  ldc.r4     1.
    IL_0118:  ldc.r4     4.
    IL_011d:  ldloc.0
    IL_011e:  conv.r4
    IL_011f:  ldc.r4     15.
    IL_0124:  div
    IL_0125:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_012a:  stloc.1
    IL_012b:  ldc.r4     3.
    IL_0130:  ldarg.3
    IL_0131:  mul
    IL_0132:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateScale(float32)
    IL_0137:  ldc.r4     0.0
    IL_013c:  ldc.r4     -0.15000001
    IL_0141:  ldc.r4     0.0
    IL_0146:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_014b:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0150:  ldarg.s    matrix
    IL_0152:  ldobj      [Engine]Engine.Matrix
    IL_0157:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_015c:  stloc.2
    IL_015d:  ldc.r4     0.0
    IL_0162:  ldarg.0
    IL_0163:  ldfld      float32 Game.ThermometerBlock::m_fluidBottomPosition
    IL_0168:  neg
    IL_0169:  ldc.r4     0.0
    IL_016e:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0173:  ldc.r4     1.
    IL_0178:  ldloc.1
    IL_0179:  ldc.r4     1.
    IL_017e:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateScale(float32,
                                                                                            float32,
                                                                                            float32)
    IL_0183:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0188:  ldc.r4     0.0
    IL_018d:  ldarg.0
    IL_018e:  ldfld      float32 Game.ThermometerBlock::m_fluidBottomPosition
    IL_0193:  ldc.r4     0.0
    IL_0198:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_019d:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_01a2:  ldloc.2
    IL_01a3:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_01a8:  stloc.3
    IL_01a9:  ldarg.1
    IL_01aa:  ldarg.0
    IL_01ab:  ldfld      class Game.BlockMesh Game.ThermometerBlock::m_caseMesh
    IL_01b0:  ldc.r4     1.
    IL_01b5:  ldloca.s   V_2
    IL_01b7:  ldarg.s    environmentData
    IL_01b9:  call       void Game.BlocksManager::DrawMeshBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                                class Game.BlockMesh,
                                                                float32,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                class Game.DrawBlockEnvironmentData)
    IL_01be:  ldarg.1
    IL_01bf:  ldarg.0
    IL_01c0:  ldfld      class Game.BlockMesh Game.ThermometerBlock::m_fluidMesh
    IL_01c5:  ldc.r4     1.
    IL_01ca:  ldloca.s   V_3
    IL_01cc:  ldarg.s    environmentData
    IL_01ce:  call       void Game.BlocksManager::DrawMeshBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                                class Game.BlockMesh,
                                                                float32,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                class Game.DrawBlockEnvironmentData)
    IL_01d3:  ret
  } // end of method ThermometerBlock::DrawBlock

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       53 (0x35)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0006:  stfld      class Game.BlockMesh Game.ThermometerBlock::m_caseMesh
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0011:  stfld      class Game.BlockMesh Game.ThermometerBlock::m_fluidMesh
    IL_0016:  ldarg.0
    IL_0017:  ldc.i4.4
    IL_0018:  newarr     [Engine]Engine.Matrix
    IL_001d:  stfld      valuetype [Engine]Engine.Matrix[] Game.ThermometerBlock::m_matricesByData
    IL_0022:  ldarg.0
    IL_0023:  ldc.i4.4
    IL_0024:  newarr     valuetype [Engine]Engine.BoundingBox[]
    IL_0029:  stfld      valuetype [Engine]Engine.BoundingBox[][] Game.ThermometerBlock::m_collisionBoxesByData
    IL_002e:  ldarg.0
    IL_002f:  call       instance void Game.Block::.ctor()
    IL_0034:  ret
  } // end of method ThermometerBlock::.ctor

} // end of class Game.ThermometerBlock