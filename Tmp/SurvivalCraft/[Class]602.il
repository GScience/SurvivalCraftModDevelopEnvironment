.class public auto ansi beforefieldinit Game.SubsystemTrapdoorBlockBehavior
       extends Game.SubsystemBlockBehavior
{
  .field private class Game.SubsystemElectricity m_subsystemElectricity
  .field private static class Game.Random m_random
  .method public hidebysig specialname virtual 
          instance int32[]  get_HandledBlocks() cil managed
  {
    // 代码大小       17 (0x11)
    .maxstack  8
    IL_0000:  ldc.i4.2
    IL_0001:  newarr     [System.Runtime]System.Int32
    IL_0006:  dup
    IL_0007:  ldc.i4.0
    IL_0008:  ldc.i4.s   83
    IL_000a:  stelem.i4
    IL_000b:  dup
    IL_000c:  ldc.i4.1
    IL_000d:  ldc.i4.s   84
    IL_000f:  stelem.i4
    IL_0010:  ret
  } // end of method SubsystemTrapdoorBlockBehavior::get_HandledBlocks

  .method public hidebysig instance bool 
          IsTrapdoorElectricallyConnected(int32 x,
                                          int32 y,
                                          int32 z) cil managed
  {
    // 代码大小       88 (0x58)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1,
             class Game.ElectricElement V_2)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0006:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_000b:  ldarg.1
    IL_000c:  ldarg.2
    IL_000d:  ldarg.3
    IL_000e:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_0013:  dup
    IL_0014:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0019:  stloc.0
    IL_001a:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_001f:  stloc.1
    IL_0020:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0025:  ldloc.0
    IL_0026:  ldelem.ref
    IL_0027:  isinst     Game.TrapdoorBlock
    IL_002c:  brfalse.s  IL_0056

    IL_002e:  ldarg.0
    IL_002f:  ldfld      class Game.SubsystemElectricity Game.SubsystemTrapdoorBlockBehavior::m_subsystemElectricity
    IL_0034:  ldarg.1
    IL_0035:  ldarg.2
    IL_0036:  ldarg.3
    IL_0037:  ldloc.1
    IL_0038:  call       int32 Game.TrapdoorBlock::GetMountingFace(int32)
    IL_003d:  callvirt   instance class Game.ElectricElement Game.SubsystemElectricity::GetElectricElement(int32,
                                                                                                           int32,
                                                                                                           int32,
                                                                                                           int32)
    IL_0042:  stloc.2
    IL_0043:  ldloc.2
    IL_0044:  brfalse.s  IL_0056

    IL_0046:  ldloc.2
    IL_0047:  callvirt   instance class [System.Collections]System.Collections.Generic.List`1<class Game.ElectricConnection> Game.ElectricElement::get_Connections()
    IL_004c:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.ElectricConnection>::get_Count()
    IL_0051:  ldc.i4.0
    IL_0052:  ble.s      IL_0056

    IL_0054:  ldc.i4.1
    IL_0055:  ret

    IL_0056:  ldc.i4.0
    IL_0057:  ret
  } // end of method SubsystemTrapdoorBlockBehavior::IsTrapdoorElectricallyConnected

  .method public hidebysig instance bool 
          OpenCloseTrapdoor(int32 x,
                            int32 y,
                            int32 z,
                            bool open) cil managed
  {
    // 代码大小       167 (0xa7)
    .maxstack  7
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             string V_4)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0006:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_000b:  ldarg.1
    IL_000c:  ldarg.2
    IL_000d:  ldarg.3
    IL_000e:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_0013:  stloc.0
    IL_0014:  ldloc.0
    IL_0015:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_001a:  stloc.1
    IL_001b:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0020:  ldloc.1
    IL_0021:  ldelem.ref
    IL_0022:  isinst     Game.TrapdoorBlock
    IL_0027:  brfalse.s  IL_00a5

    IL_0029:  ldloc.0
    IL_002a:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_002f:  ldarg.s    open
    IL_0031:  call       int32 Game.TrapdoorBlock::SetOpen(int32,
                                                           bool)
    IL_0036:  stloc.2
    IL_0037:  ldloc.0
    IL_0038:  ldloc.2
    IL_0039:  call       int32 Game.TerrainData::ReplaceData(int32,
                                                             int32)
    IL_003e:  stloc.3
    IL_003f:  ldarg.0
    IL_0040:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0045:  ldarg.1
    IL_0046:  ldarg.2
    IL_0047:  ldarg.3
    IL_0048:  ldloc.3
    IL_0049:  ldc.i4.1
    IL_004a:  callvirt   instance void Game.SubsystemTerrain::ChangeCell(int32,
                                                                         int32,
                                                                         int32,
                                                                         int32,
                                                                         bool)
    IL_004f:  ldarg.s    open
    IL_0051:  brtrue.s   IL_005a

    IL_0053:  ldstr      "Audio/Doors/DoorClose"
    IL_0058:  br.s       IL_005f

    IL_005a:  ldstr      "Audio/Doors/DoorOpen"
    IL_005f:  stloc.s    V_4
    IL_0061:  ldarg.0
    IL_0062:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0067:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_006c:  ldc.i4.1
    IL_006d:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemAudio>(bool)
    IL_0072:  ldloc.s    V_4
    IL_0074:  ldc.r4     0.69999999
    IL_0079:  ldsfld     class Game.Random Game.SubsystemTrapdoorBlockBehavior::m_random
    IL_007e:  ldc.r4     -0.1
    IL_0083:  ldc.r4     0.1
    IL_0088:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_008d:  ldarg.1
    IL_008e:  conv.r4
    IL_008f:  ldarg.2
    IL_0090:  conv.r4
    IL_0091:  ldarg.3
    IL_0092:  conv.r4
    IL_0093:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0098:  ldc.r4     4.
    IL_009d:  ldc.i4.1
    IL_009e:  callvirt   instance void Game.SubsystemAudio::PlaySound(string,
                                                                      float32,
                                                                      float32,
                                                                      valuetype [Engine]Engine.Vector3,
                                                                      float32,
                                                                      bool)
    IL_00a3:  ldc.i4.1
    IL_00a4:  ret

    IL_00a5:  ldc.i4.0
    IL_00a6:  ret
  } // end of method SubsystemTrapdoorBlockBehavior::OpenCloseTrapdoor

  .method public hidebysig virtual instance bool 
          OnInteract(valuetype Game.TerrainRaycastResult raycastResult,
                     class Game.ComponentMiner componentMiner) cil managed
  {
    // 代码大小       123 (0x7b)
    .maxstack  6
    .locals init (valuetype Game.CellFace V_0,
             int32 V_1,
             int32 V_2,
             bool V_3)
    IL_0000:  ldarg.1
    IL_0001:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0006:  stloc.0
    IL_0007:  ldarg.0
    IL_0008:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_000d:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0012:  ldloc.0
    IL_0013:  ldfld      int32 Game.CellFace::X
    IL_0018:  ldloc.0
    IL_0019:  ldfld      int32 Game.CellFace::Y
    IL_001e:  ldloc.0
    IL_001f:  ldfld      int32 Game.CellFace::Z
    IL_0024:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_0029:  dup
    IL_002a:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_002f:  stloc.1
    IL_0030:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0035:  stloc.2
    IL_0036:  ldloc.1
    IL_0037:  ldc.i4.s   83
    IL_0039:  beq.s      IL_0055

    IL_003b:  ldarg.0
    IL_003c:  ldloc.0
    IL_003d:  ldfld      int32 Game.CellFace::X
    IL_0042:  ldloc.0
    IL_0043:  ldfld      int32 Game.CellFace::Y
    IL_0048:  ldloc.0
    IL_0049:  ldfld      int32 Game.CellFace::Z
    IL_004e:  call       instance bool Game.SubsystemTrapdoorBlockBehavior::IsTrapdoorElectricallyConnected(int32,
                                                                                                            int32,
                                                                                                            int32)
    IL_0053:  brtrue.s   IL_0079

    IL_0055:  ldloc.2
    IL_0056:  call       bool Game.TrapdoorBlock::GetOpen(int32)
    IL_005b:  stloc.3
    IL_005c:  ldarg.0
    IL_005d:  ldloc.0
    IL_005e:  ldfld      int32 Game.CellFace::X
    IL_0063:  ldloc.0
    IL_0064:  ldfld      int32 Game.CellFace::Y
    IL_0069:  ldloc.0
    IL_006a:  ldfld      int32 Game.CellFace::Z
    IL_006f:  ldloc.3
    IL_0070:  ldc.i4.0
    IL_0071:  ceq
    IL_0073:  call       instance bool Game.SubsystemTrapdoorBlockBehavior::OpenCloseTrapdoor(int32,
                                                                                              int32,
                                                                                              int32,
                                                                                              bool)
    IL_0078:  ret

    IL_0079:  ldc.i4.1
    IL_007a:  ret
  } // end of method SubsystemTrapdoorBlockBehavior::OnInteract

  .method public hidebysig virtual instance void 
          OnNeighborBlockChanged(int32 x,
                                 int32 y,
                                 int32 z,
                                 int32 neighborX,
                                 int32 neighborY,
                                 int32 neighborZ) cil managed
  {
    // 代码大小       392 (0x188)
    .maxstack  8
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             bool V_4,
             valuetype [Engine]Engine.Point3 V_5,
             int32 V_6,
             int32 V_7,
             int32 V_8,
             int32 V_9,
             int32 V_10)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0006:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_000b:  ldarg.1
    IL_000c:  ldarg.2
    IL_000d:  ldarg.3
    IL_000e:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_0013:  stloc.0
    IL_0014:  ldloc.0
    IL_0015:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_001a:  stloc.1
    IL_001b:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0020:  ldloc.1
    IL_0021:  ldelem.ref
    IL_0022:  ldloc.0
    IL_0023:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0028:  stloc.2
    IL_0029:  isinst     Game.TrapdoorBlock
    IL_002e:  brfalse    IL_0187

    IL_0033:  ldloc.2
    IL_0034:  call       int32 Game.TrapdoorBlock::GetRotation(int32)
    IL_0039:  stloc.3
    IL_003a:  ldloc.2
    IL_003b:  call       bool Game.TrapdoorBlock::GetUpsideDown(int32)
    IL_0040:  ldc.i4.0
    IL_0041:  stloc.s    V_4
    IL_0043:  ldloc.3
    IL_0044:  call       valuetype [Engine]Engine.Point3 Game.CellFace::FaceToPoint3(int32)
    IL_0049:  stloc.s    V_5
    IL_004b:  ldarg.0
    IL_004c:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0051:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0056:  ldarg.1
    IL_0057:  ldloc.s    V_5
    IL_0059:  ldfld      int32 [Engine]Engine.Point3::X
    IL_005e:  sub
    IL_005f:  ldarg.2
    IL_0060:  ldloc.s    V_5
    IL_0062:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0067:  sub
    IL_0068:  ldarg.3
    IL_0069:  ldloc.s    V_5
    IL_006b:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0070:  sub
    IL_0071:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                          int32,
                                                                          int32)
    IL_0076:  stloc.s    V_6
    IL_0078:  ldloc.s    V_4
    IL_007a:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_007f:  ldloc.s    V_6
    IL_0081:  ldelem.ref
    IL_0082:  ldfld      bool Game.Block::IsTransparent
    IL_0087:  ldc.i4.0
    IL_0088:  ceq
    IL_008a:  or
    IL_008b:  stloc.s    V_4
    IL_008d:  brfalse.s  IL_0101

    IL_008f:  ldarg.0
    IL_0090:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0095:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_009a:  ldarg.1
    IL_009b:  ldarg.2
    IL_009c:  ldc.i4.1
    IL_009d:  add
    IL_009e:  ldarg.3
    IL_009f:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                          int32,
                                                                          int32)
    IL_00a4:  stloc.s    V_7
    IL_00a6:  ldloc.s    V_4
    IL_00a8:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_00ad:  ldloc.s    V_7
    IL_00af:  ldelem.ref
    IL_00b0:  ldfld      bool Game.Block::IsTransparent
    IL_00b5:  ldc.i4.0
    IL_00b6:  ceq
    IL_00b8:  or
    IL_00b9:  stloc.s    V_4
    IL_00bb:  ldarg.0
    IL_00bc:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_00c1:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_00c6:  ldarg.1
    IL_00c7:  ldloc.s    V_5
    IL_00c9:  ldfld      int32 [Engine]Engine.Point3::X
    IL_00ce:  sub
    IL_00cf:  ldarg.2
    IL_00d0:  ldloc.s    V_5
    IL_00d2:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_00d7:  sub
    IL_00d8:  ldc.i4.1
    IL_00d9:  add
    IL_00da:  ldarg.3
    IL_00db:  ldloc.s    V_5
    IL_00dd:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_00e2:  sub
    IL_00e3:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                          int32,
                                                                          int32)
    IL_00e8:  stloc.s    V_8
    IL_00ea:  ldloc.s    V_4
    IL_00ec:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_00f1:  ldloc.s    V_8
    IL_00f3:  ldelem.ref
    IL_00f4:  ldfld      bool Game.Block::IsTransparent
    IL_00f9:  ldc.i4.0
    IL_00fa:  ceq
    IL_00fc:  or
    IL_00fd:  stloc.s    V_4
    IL_00ff:  br.s       IL_0171

    IL_0101:  ldarg.0
    IL_0102:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0107:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_010c:  ldarg.1
    IL_010d:  ldarg.2
    IL_010e:  ldc.i4.1
    IL_010f:  sub
    IL_0110:  ldarg.3
    IL_0111:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                          int32,
                                                                          int32)
    IL_0116:  stloc.s    V_9
    IL_0118:  ldloc.s    V_4
    IL_011a:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_011f:  ldloc.s    V_9
    IL_0121:  ldelem.ref
    IL_0122:  ldfld      bool Game.Block::IsTransparent
    IL_0127:  ldc.i4.0
    IL_0128:  ceq
    IL_012a:  or
    IL_012b:  stloc.s    V_4
    IL_012d:  ldarg.0
    IL_012e:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0133:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0138:  ldarg.1
    IL_0139:  ldloc.s    V_5
    IL_013b:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0140:  sub
    IL_0141:  ldarg.2
    IL_0142:  ldloc.s    V_5
    IL_0144:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0149:  sub
    IL_014a:  ldc.i4.1
    IL_014b:  sub
    IL_014c:  ldarg.3
    IL_014d:  ldloc.s    V_5
    IL_014f:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0154:  sub
    IL_0155:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                          int32,
                                                                          int32)
    IL_015a:  stloc.s    V_10
    IL_015c:  ldloc.s    V_4
    IL_015e:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0163:  ldloc.s    V_10
    IL_0165:  ldelem.ref
    IL_0166:  ldfld      bool Game.Block::IsTransparent
    IL_016b:  ldc.i4.0
    IL_016c:  ceq
    IL_016e:  or
    IL_016f:  stloc.s    V_4
    IL_0171:  ldloc.s    V_4
    IL_0173:  brtrue.s   IL_0187

    IL_0175:  ldarg.0
    IL_0176:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_017b:  ldc.i4.0
    IL_017c:  ldarg.1
    IL_017d:  ldarg.2
    IL_017e:  ldarg.3
    IL_017f:  ldc.i4.0
    IL_0180:  ldc.i4.0
    IL_0181:  ldc.i4.0
    IL_0182:  callvirt   instance void Game.SubsystemTerrain::DestroyCell(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          bool,
                                                                          bool)
    IL_0187:  ret
  } // end of method SubsystemTrapdoorBlockBehavior::OnNeighborBlockChanged

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       26 (0x1a)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void Game.SubsystemBlockBehavior::Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary)
    IL_0007:  ldarg.0
    IL_0008:  ldarg.0
    IL_0009:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_000e:  ldc.i4.1
    IL_000f:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemElectricity>(bool)
    IL_0014:  stfld      class Game.SubsystemElectricity Game.SubsystemTrapdoorBlockBehavior::m_subsystemElectricity
    IL_0019:  ret
  } // end of method SubsystemTrapdoorBlockBehavior::Load

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.SubsystemBlockBehavior::.ctor()
    IL_0006:  ret
  } // end of method SubsystemTrapdoorBlockBehavior::.ctor

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       11 (0xb)
    .maxstack  8
    IL_0000:  newobj     instance void Game.Random::.ctor()
    IL_0005:  stsfld     class Game.Random Game.SubsystemTrapdoorBlockBehavior::m_random
    IL_000a:  ret
  } // end of method SubsystemTrapdoorBlockBehavior::.cctor

  .property instance int32[] HandledBlocks()
  {
    .get instance int32[] Game.SubsystemTrapdoorBlockBehavior::get_HandledBlocks()
  } // end of property SubsystemTrapdoorBlockBehavior::HandledBlocks
} // end of class Game.SubsystemTrapdoorBlockBehavior