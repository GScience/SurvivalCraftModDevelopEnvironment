.class public auto ansi beforefieldinit Game.DispenserBlock
       extends Game.CubeBlock
       implements Game.IElectricElementBlock
{
  .class auto ansi sealed nested public Mode
         extends [System.Runtime]System.Enum
  {
    .field public specialname rtspecialname int32 value__
    .field public static literal valuetype Game.DispenserBlock/Mode Dispense = int32(0x00000000)
    .field public static literal valuetype Game.DispenserBlock/Mode Shoot = int32(0x00000001)
  } // end of class Mode

  .field public static literal int32 Index = int32(0x000000D8)
  .method public hidebysig virtual instance int32 
          GetFaceTextureSlot(int32 face,
                             int32 'value') cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  call       int32 Game.DispenserBlock::GetDirection(int32)
    IL_000b:  stloc.0
    IL_000c:  ldarg.1
    IL_000d:  ldloc.0
    IL_000e:  beq.s      IL_0013

    IL_0010:  ldc.i4.s   42
    IL_0012:  ret

    IL_0013:  ldc.i4.s   59
    IL_0015:  ret
  } // end of method DispenserBlock::GetFaceTextureSlot

  .method public hidebysig virtual instance valuetype Game.BlockPlacementData 
          GetPlacementValue(class Game.SubsystemTerrain terrain,
                            class Game.ComponentMiner componentMiner,
                            int32 'value',
                            valuetype Game.TerrainRaycastResult raycastResult) cil managed
  {
    // 代码大小       257 (0x101)
    .maxstack  5
    .locals init (float32 V_0,
             float32 V_1,
             float32 V_2,
             float32 V_3,
             float32 V_4,
             float32 V_5,
             float32 V_6,
             int32 V_7,
             valuetype [Engine]Engine.Matrix V_8,
             valuetype Game.BlockPlacementData V_9)
    IL_0000:  ldarg.2
    IL_0001:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_0006:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_000b:  callvirt   instance valuetype [Engine]Engine.Quaternion Game.ComponentCreatureModel::get_EyeRotation()
    IL_0010:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateFromQuaternion(valuetype [Engine]Engine.Quaternion)
    IL_0015:  stloc.s    V_8
    IL_0017:  ldloca.s   V_8
    IL_0019:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Forward()
    IL_001e:  dup
    IL_001f:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitZ
    IL_0024:  call       float32 [Engine]Engine.Vector3::Dot(valuetype [Engine]Engine.Vector3,
                                                             valuetype [Engine]Engine.Vector3)
    IL_0029:  stloc.0
    IL_002a:  dup
    IL_002b:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitX
    IL_0030:  call       float32 [Engine]Engine.Vector3::Dot(valuetype [Engine]Engine.Vector3,
                                                             valuetype [Engine]Engine.Vector3)
    IL_0035:  stloc.1
    IL_0036:  dup
    IL_0037:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitZ
    IL_003c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_0041:  call       float32 [Engine]Engine.Vector3::Dot(valuetype [Engine]Engine.Vector3,
                                                             valuetype [Engine]Engine.Vector3)
    IL_0046:  stloc.2
    IL_0047:  dup
    IL_0048:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitX
    IL_004d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_0052:  call       float32 [Engine]Engine.Vector3::Dot(valuetype [Engine]Engine.Vector3,
                                                             valuetype [Engine]Engine.Vector3)
    IL_0057:  stloc.3
    IL_0058:  dup
    IL_0059:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_005e:  call       float32 [Engine]Engine.Vector3::Dot(valuetype [Engine]Engine.Vector3,
                                                             valuetype [Engine]Engine.Vector3)
    IL_0063:  stloc.s    V_4
    IL_0065:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_006a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_006f:  call       float32 [Engine]Engine.Vector3::Dot(valuetype [Engine]Engine.Vector3,
                                                             valuetype [Engine]Engine.Vector3)
    IL_0074:  stloc.s    V_5
    IL_0076:  ldloc.0
    IL_0077:  ldloc.1
    IL_0078:  ldloc.2
    IL_0079:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32,
                                                               float32)
    IL_007e:  ldloc.3
    IL_007f:  ldloc.s    V_4
    IL_0081:  ldloc.s    V_5
    IL_0083:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32,
                                                               float32)
    IL_0088:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_008d:  stloc.s    V_6
    IL_008f:  ldc.i4.0
    IL_0090:  stloc.s    V_7
    IL_0092:  ldloc.0
    IL_0093:  ldloc.s    V_6
    IL_0095:  bne.un.s   IL_009c

    IL_0097:  ldc.i4.0
    IL_0098:  stloc.s    V_7
    IL_009a:  br.s       IL_00ce

    IL_009c:  ldloc.1
    IL_009d:  ldloc.s    V_6
    IL_009f:  bne.un.s   IL_00a6

    IL_00a1:  ldc.i4.1
    IL_00a2:  stloc.s    V_7
    IL_00a4:  br.s       IL_00ce

    IL_00a6:  ldloc.2
    IL_00a7:  ldloc.s    V_6
    IL_00a9:  bne.un.s   IL_00b0

    IL_00ab:  ldc.i4.2
    IL_00ac:  stloc.s    V_7
    IL_00ae:  br.s       IL_00ce

    IL_00b0:  ldloc.3
    IL_00b1:  ldloc.s    V_6
    IL_00b3:  bne.un.s   IL_00ba

    IL_00b5:  ldc.i4.3
    IL_00b6:  stloc.s    V_7
    IL_00b8:  br.s       IL_00ce

    IL_00ba:  ldloc.s    V_4
    IL_00bc:  ldloc.s    V_6
    IL_00be:  bne.un.s   IL_00c5

    IL_00c0:  ldc.i4.4
    IL_00c1:  stloc.s    V_7
    IL_00c3:  br.s       IL_00ce

    IL_00c5:  ldloc.s    V_5
    IL_00c7:  ldloc.s    V_6
    IL_00c9:  bne.un.s   IL_00ce

    IL_00cb:  ldc.i4.5
    IL_00cc:  stloc.s    V_7
    IL_00ce:  ldloca.s   V_9
    IL_00d0:  initobj    Game.BlockPlacementData
    IL_00d6:  ldloca.s   V_9
    IL_00d8:  ldc.i4     0xd8
    IL_00dd:  ldc.i4.0
    IL_00de:  ldc.i4.0
    IL_00df:  ldloc.s    V_7
    IL_00e1:  call       int32 Game.DispenserBlock::SetDirection(int32,
                                                                 int32)
    IL_00e6:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_00eb:  stfld      int32 Game.BlockPlacementData::Value
    IL_00f0:  ldloca.s   V_9
    IL_00f2:  ldarg.s    raycastResult
    IL_00f4:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_00f9:  stfld      valuetype Game.CellFace Game.BlockPlacementData::CellFace
    IL_00fe:  ldloc.s    V_9
    IL_0100:  ret
  } // end of method DispenserBlock::GetPlacementValue

  .method public hidebysig static int32  GetDirection(int32 data) cil managed
  {
    // 代码大小       4 (0x4)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.7
    IL_0002:  and
    IL_0003:  ret
  } // end of method DispenserBlock::GetDirection

  .method public hidebysig static int32  SetDirection(int32 data,
                                                      int32 direction) cil managed
  {
    // 代码大小       9 (0x9)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.s   -8
    IL_0003:  and
    IL_0004:  ldarg.1
    IL_0005:  ldc.i4.7
    IL_0006:  and
    IL_0007:  or
    IL_0008:  ret
  } // end of method DispenserBlock::SetDirection

  .method public hidebysig static valuetype Game.DispenserBlock/Mode 
          GetMode(int32 data) cil managed
  {
    // 代码大小       9 (0x9)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.8
    IL_0002:  and
    IL_0003:  brfalse.s  IL_0007

    IL_0005:  ldc.i4.1
    IL_0006:  ret

    IL_0007:  ldc.i4.0
    IL_0008:  ret
  } // end of method DispenserBlock::GetMode

  .method public hidebysig static int32  SetMode(int32 data,
                                                 valuetype Game.DispenserBlock/Mode mode) cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.s   -9
    IL_0003:  and
    IL_0004:  ldarg.1
    IL_0005:  brfalse.s  IL_000a

    IL_0007:  ldc.i4.8
    IL_0008:  br.s       IL_000b

    IL_000a:  ldc.i4.0
    IL_000b:  or
    IL_000c:  ret
  } // end of method DispenserBlock::SetMode

  .method public hidebysig newslot virtual final 
          instance class Game.ElectricElement 
          CreateElectricElement(class Game.SubsystemElectricity subsystemElectricity,
                                int32 'value',
                                int32 x,
                                int32 y,
                                int32 z) cil managed
  {
    // 代码大小       17 (0x11)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.3
    IL_0002:  ldarg.s    y
    IL_0004:  ldarg.s    z
    IL_0006:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_000b:  newobj     instance void Game.DispenserElectricElement::.ctor(class Game.SubsystemElectricity,
                                                                            valuetype [Engine]Engine.Point3)
    IL_0010:  ret
  } // end of method DispenserBlock::CreateElectricElement

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
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType>::.ctor(!0)
    IL_0006:  ret
  } // end of method DispenserBlock::GetConnectorType

  .method public hidebysig newslot virtual final 
          instance int32  GetConnectionMask(int32 'value') cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldc.i4     0x7fffffff
    IL_0005:  ret
  } // end of method DispenserBlock::GetConnectionMask

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.CubeBlock::.ctor()
    IL_0006:  ret
  } // end of method DispenserBlock::.ctor

} // end of class Game.DispenserBlock