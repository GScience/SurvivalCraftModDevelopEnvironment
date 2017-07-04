.class public auto ansi beforefieldinit Game.ChestBlock
       extends Game.CubeBlock
{
  .field public static literal int32 Index = int32(0x0000002D)
  .method public hidebysig virtual instance int32 
          GetFaceTextureSlot(int32 face,
                             int32 'value') cil managed
  {
    // 代码大小       98 (0x62)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  ldarg.1
    IL_0001:  ldc.i4.4
    IL_0002:  bne.un.s   IL_0007

    IL_0004:  ldc.i4.s   42
    IL_0006:  ret

    IL_0007:  ldarg.1
    IL_0008:  ldc.i4.5
    IL_0009:  bne.un.s   IL_000e

    IL_000b:  ldc.i4.s   42
    IL_000d:  ret

    IL_000e:  ldarg.2
    IL_000f:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0014:  stloc.0
    IL_0015:  ldloc.0
    IL_0016:  brtrue.s   IL_0028

    IL_0018:  ldarg.1
    IL_0019:  brtrue.s   IL_001e

    IL_001b:  ldc.i4.s   27
    IL_001d:  ret

    IL_001e:  ldarg.1
    IL_001f:  ldc.i4.2
    IL_0020:  bne.un.s   IL_0025

    IL_0022:  ldc.i4.s   26
    IL_0024:  ret

    IL_0025:  ldc.i4.s   25
    IL_0027:  ret

    IL_0028:  ldloc.0
    IL_0029:  ldc.i4.1
    IL_002a:  bne.un.s   IL_003d

    IL_002c:  ldarg.1
    IL_002d:  ldc.i4.1
    IL_002e:  bne.un.s   IL_0033

    IL_0030:  ldc.i4.s   27
    IL_0032:  ret

    IL_0033:  ldarg.1
    IL_0034:  ldc.i4.3
    IL_0035:  bne.un.s   IL_003a

    IL_0037:  ldc.i4.s   26
    IL_0039:  ret

    IL_003a:  ldc.i4.s   25
    IL_003c:  ret

    IL_003d:  ldloc.0
    IL_003e:  ldc.i4.2
    IL_003f:  bne.un.s   IL_0051

    IL_0041:  ldarg.1
    IL_0042:  ldc.i4.2
    IL_0043:  bne.un.s   IL_0048

    IL_0045:  ldc.i4.s   27
    IL_0047:  ret

    IL_0048:  ldarg.1
    IL_0049:  brtrue.s   IL_004e

    IL_004b:  ldc.i4.s   26
    IL_004d:  ret

    IL_004e:  ldc.i4.s   25
    IL_0050:  ret

    IL_0051:  ldarg.1
    IL_0052:  ldc.i4.3
    IL_0053:  bne.un.s   IL_0058

    IL_0055:  ldc.i4.s   27
    IL_0057:  ret

    IL_0058:  ldarg.1
    IL_0059:  ldc.i4.1
    IL_005a:  bne.un.s   IL_005f

    IL_005c:  ldc.i4.s   26
    IL_005e:  ret

    IL_005f:  ldc.i4.s   25
    IL_0061:  ret
  } // end of method ChestBlock::GetFaceTextureSlot

  .method public hidebysig virtual instance valuetype Game.BlockPlacementData 
          GetPlacementValue(class Game.SubsystemTerrain subsystemTerrain,
                            class Game.ComponentMiner componentMiner,
                            int32 'value',
                            valuetype Game.TerrainRaycastResult raycastResult) cil managed
  {
    // 代码大小       203 (0xcb)
    .maxstack  5
    .locals init (float32 V_0,
             float32 V_1,
             float32 V_2,
             float32 V_3,
             int32 V_4,
             valuetype [Engine]Engine.Matrix V_5,
             valuetype Game.BlockPlacementData V_6)
    IL_0000:  ldarg.2
    IL_0001:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_0006:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_000b:  callvirt   instance valuetype [Engine]Engine.Quaternion Game.ComponentCreatureModel::get_EyeRotation()
    IL_0010:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateFromQuaternion(valuetype [Engine]Engine.Quaternion)
    IL_0015:  stloc.s    V_5
    IL_0017:  ldloca.s   V_5
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
    IL_0047:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitX
    IL_004c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_0051:  call       float32 [Engine]Engine.Vector3::Dot(valuetype [Engine]Engine.Vector3,
                                                             valuetype [Engine]Engine.Vector3)
    IL_0056:  stloc.3
    IL_0057:  ldc.i4.0
    IL_0058:  stloc.s    V_4
    IL_005a:  ldloc.0
    IL_005b:  ldloc.0
    IL_005c:  ldloc.1
    IL_005d:  ldloc.2
    IL_005e:  ldloc.3
    IL_005f:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32,
                                                               float32,
                                                               float32)
    IL_0064:  bne.un.s   IL_006b

    IL_0066:  ldc.i4.2
    IL_0067:  stloc.s    V_4
    IL_0069:  br.s       IL_009c

    IL_006b:  ldloc.1
    IL_006c:  ldloc.0
    IL_006d:  ldloc.1
    IL_006e:  ldloc.2
    IL_006f:  ldloc.3
    IL_0070:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32,
                                                               float32,
                                                               float32)
    IL_0075:  bne.un.s   IL_007c

    IL_0077:  ldc.i4.3
    IL_0078:  stloc.s    V_4
    IL_007a:  br.s       IL_009c

    IL_007c:  ldloc.2
    IL_007d:  ldloc.0
    IL_007e:  ldloc.1
    IL_007f:  ldloc.2
    IL_0080:  ldloc.3
    IL_0081:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32,
                                                               float32,
                                                               float32)
    IL_0086:  bne.un.s   IL_008d

    IL_0088:  ldc.i4.0
    IL_0089:  stloc.s    V_4
    IL_008b:  br.s       IL_009c

    IL_008d:  ldloc.3
    IL_008e:  ldloc.0
    IL_008f:  ldloc.1
    IL_0090:  ldloc.2
    IL_0091:  ldloc.3
    IL_0092:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32,
                                                               float32,
                                                               float32)
    IL_0097:  bne.un.s   IL_009c

    IL_0099:  ldc.i4.1
    IL_009a:  stloc.s    V_4
    IL_009c:  ldloca.s   V_6
    IL_009e:  initobj    Game.BlockPlacementData
    IL_00a4:  ldloca.s   V_6
    IL_00a6:  ldc.i4.0
    IL_00a7:  ldc.i4.s   45
    IL_00a9:  call       int32 Game.Terrain::ReplaceContents(int32,
                                                             int32)
    IL_00ae:  ldloc.s    V_4
    IL_00b0:  call       int32 Game.Terrain::ReplaceData(int32,
                                                         int32)
    IL_00b5:  stfld      int32 Game.BlockPlacementData::Value
    IL_00ba:  ldloca.s   V_6
    IL_00bc:  ldarg.s    raycastResult
    IL_00be:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_00c3:  stfld      valuetype Game.CellFace Game.BlockPlacementData::CellFace
    IL_00c8:  ldloc.s    V_6
    IL_00ca:  ret
  } // end of method ChestBlock::GetPlacementValue

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.CubeBlock::.ctor()
    IL_0006:  ret
  } // end of method ChestBlock::.ctor

} // end of class Game.ChestBlock