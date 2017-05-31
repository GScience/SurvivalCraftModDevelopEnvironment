.class public abstract auto ansi beforefieldinit Game.WireThroughBlock
       extends Game.CubeBlock
       implements Game.IElectricWireElementBlock,
                  Game.IElectricElementBlock
{
  .field private int32 m_wiredTextureSlot
  .field private int32 m_unwiredTextureSlot
  .method family hidebysig specialname rtspecialname 
          instance void  .ctor(int32 wiredTextureSlot,
                               int32 unwiredTextureSlot) cil managed
  {
    // 代码大小       21 (0x15)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.CubeBlock::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  stfld      int32 Game.WireThroughBlock::m_wiredTextureSlot
    IL_000d:  ldarg.0
    IL_000e:  ldarg.2
    IL_000f:  stfld      int32 Game.WireThroughBlock::m_unwiredTextureSlot
    IL_0014:  ret
  } // end of method WireThroughBlock::.ctor

  .method public hidebysig newslot virtual final 
          instance class Game.ElectricElement 
          CreateElectricElement(class Game.SubsystemElectricity subsystemElectricity,
                                int32 'value',
                                int32 x,
                                int32 y,
                                int32 z) cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldnull
    IL_0001:  ret
  } // end of method WireThroughBlock::CreateElectricElement

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
    // 代码大小       52 (0x34)
    .maxstack  2
    .locals init (int32 V_0,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType> V_1)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  call       int32 Game.WireThroughBlock::GetWiredFace(int32)
    IL_000b:  stloc.0
    IL_000c:  ldarg.3
    IL_000d:  ldloc.0
    IL_000e:  beq.s      IL_0019

    IL_0010:  ldarg.3
    IL_0011:  ldloc.0
    IL_0012:  call       int32 Game.CellFace::OppositeFace(int32)
    IL_0017:  bne.un.s   IL_002a

    IL_0019:  ldarg.s    connectorFace
    IL_001b:  ldarg.3
    IL_001c:  call       int32 Game.CellFace::OppositeFace(int32)
    IL_0021:  bne.un.s   IL_002a

    IL_0023:  ldc.i4.2
    IL_0024:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType>::.ctor(!0)
    IL_0029:  ret

    IL_002a:  ldloca.s   V_1
    IL_002c:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType>
    IL_0032:  ldloc.1
    IL_0033:  ret
  } // end of method WireThroughBlock::GetConnectorType

  .method public hidebysig newslot virtual final 
          instance int32  GetConnectionMask(int32 'value') cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldc.i4     0x7fffffff
    IL_0005:  ret
  } // end of method WireThroughBlock::GetConnectionMask

  .method public hidebysig newslot virtual final 
          instance int32  GetConnectedWireFacesMask(int32 'value',
                                                    int32 face) cil managed
  {
    // 代码大小       46 (0x2e)
    .maxstack  4
    .locals init (int32 V_0)
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  call       int32 Game.WireThroughBlock::GetWiredFace(int32)
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  ldarg.2
    IL_000e:  beq.s      IL_0019

    IL_0010:  ldloc.0
    IL_0011:  call       int32 Game.CellFace::OppositeFace(int32)
    IL_0016:  ldarg.2
    IL_0017:  bne.un.s   IL_002c

    IL_0019:  ldc.i4.1
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.s   31
    IL_001d:  and
    IL_001e:  shl
    IL_001f:  ldc.i4.1
    IL_0020:  ldloc.0
    IL_0021:  call       int32 Game.CellFace::OppositeFace(int32)
    IL_0026:  ldc.i4.s   31
    IL_0028:  and
    IL_0029:  shl
    IL_002a:  or
    IL_002b:  ret

    IL_002c:  ldc.i4.0
    IL_002d:  ret
  } // end of method WireThroughBlock::GetConnectedWireFacesMask

  .method public hidebysig virtual instance int32 
          GetFaceTextureSlot(int32 face,
                             int32 'value') cil managed
  {
    // 代码大小       39 (0x27)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  call       int32 Game.WireThroughBlock::GetWiredFace(int32)
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  ldarg.1
    IL_000e:  beq.s      IL_0019

    IL_0010:  ldloc.0
    IL_0011:  call       int32 Game.CellFace::OppositeFace(int32)
    IL_0016:  ldarg.1
    IL_0017:  bne.un.s   IL_0020

    IL_0019:  ldarg.0
    IL_001a:  ldfld      int32 Game.WireThroughBlock::m_wiredTextureSlot
    IL_001f:  ret

    IL_0020:  ldarg.0
    IL_0021:  ldfld      int32 Game.WireThroughBlock::m_unwiredTextureSlot
    IL_0026:  ret
  } // end of method WireThroughBlock::GetFaceTextureSlot

  .method public hidebysig virtual instance valuetype Game.BlockPlacementData 
          GetPlacementValue(class Game.SubsystemTerrain terrain,
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
    IL_0063:  call       int32 Game.WireThroughBlock::SetWiredFace(int32,
                                                                   int32)
    IL_0068:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_006d:  stfld      int32 Game.BlockPlacementData::Value
    IL_0072:  ldloca.s   V_6
    IL_0074:  ldarg.s    raycastResult
    IL_0076:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_007b:  stfld      valuetype Game.CellFace Game.BlockPlacementData::CellFace
    IL_0080:  ldloc.s    V_6
    IL_0082:  ret
  } // end of method WireThroughBlock::GetPlacementValue

  .method public hidebysig static int32  GetWiredFace(int32 data) cil managed
  {
    // 代码大小       17 (0x11)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.3
    IL_0002:  and
    IL_0003:  brtrue.s   IL_0007

    IL_0005:  ldc.i4.0
    IL_0006:  ret

    IL_0007:  ldarg.0
    IL_0008:  ldc.i4.3
    IL_0009:  and
    IL_000a:  ldc.i4.1
    IL_000b:  bne.un.s   IL_000f

    IL_000d:  ldc.i4.1
    IL_000e:  ret

    IL_000f:  ldc.i4.4
    IL_0010:  ret
  } // end of method WireThroughBlock::GetWiredFace

  .method public hidebysig static int32  SetWiredFace(int32 data,
                                                      int32 wiredFace) cil managed
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
    IL_000b:  bne.un.s   IL_000f

    IL_000d:  ldarg.0
    IL_000e:  ret

    IL_000f:  ldarg.1
    IL_0010:  ldc.i4.1
    IL_0011:  beq.s      IL_0017

    IL_0013:  ldarg.1
    IL_0014:  ldc.i4.3
    IL_0015:  bne.un.s   IL_001b

    IL_0017:  ldarg.0
    IL_0018:  ldc.i4.1
    IL_0019:  or
    IL_001a:  ret

    IL_001b:  ldarg.0
    IL_001c:  ldc.i4.2
    IL_001d:  or
    IL_001e:  ret
  } // end of method WireThroughBlock::SetWiredFace

} // end of class Game.WireThroughBlock