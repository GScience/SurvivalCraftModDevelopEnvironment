.class public auto ansi beforefieldinit Game.SubsystemDoorBlockBehavior
       extends Game.SubsystemBlockBehavior
{
  .field private class Game.SubsystemElectricity m_subsystemElectricity
  .field private static class Game.Random m_random
  .method public hidebysig specialname virtual 
          instance int32[]  get_HandledBlocks() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldc.i4.3
    IL_0001:  newarr     [System.Runtime]System.Int32
    IL_0006:  dup
    IL_0007:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=12' '<PrivateImplementationDetails>'::'7C58855B5246DBE012976A700C033034BF2A75AD'
    IL_000c:  call       void [System.Runtime]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [System.Runtime]System.Array,
                                                                                                              valuetype [System.Runtime]System.RuntimeFieldHandle)
    IL_0011:  ret
  } // end of method SubsystemDoorBlockBehavior::get_HandledBlocks

  .method public hidebysig instance bool 
          OpenCloseDoor(int32 x,
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
    IL_0006:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_000b:  ldarg.1
    IL_000c:  ldarg.2
    IL_000d:  ldarg.3
    IL_000e:  callvirt   instance int32 Game.Terrain::GetCellValue(int32,
                                                                   int32,
                                                                   int32)
    IL_0013:  stloc.0
    IL_0014:  ldloc.0
    IL_0015:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_001a:  stloc.1
    IL_001b:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0020:  ldloc.1
    IL_0021:  ldelem.ref
    IL_0022:  isinst     Game.DoorBlock
    IL_0027:  brfalse.s  IL_00a5

    IL_0029:  ldloc.0
    IL_002a:  call       int32 Game.Terrain::ExtractData(int32)
    IL_002f:  ldarg.s    open
    IL_0031:  call       int32 Game.DoorBlock::SetOpen(int32,
                                                       bool)
    IL_0036:  stloc.2
    IL_0037:  ldloc.0
    IL_0038:  ldloc.2
    IL_0039:  call       int32 Game.Terrain::ReplaceData(int32,
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
    IL_0079:  ldsfld     class Game.Random Game.SubsystemDoorBlockBehavior::m_random
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
  } // end of method SubsystemDoorBlockBehavior::OpenCloseDoor

  .method public hidebysig instance bool 
          IsDoorElectricallyConnected(int32 x,
                                      int32 y,
                                      int32 z) cil managed
  {
    // 代码大小       133 (0x85)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             class Game.ElectricElement V_4)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0006:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_000b:  ldarg.1
    IL_000c:  ldarg.2
    IL_000d:  ldarg.3
    IL_000e:  callvirt   instance int32 Game.Terrain::GetCellValue(int32,
                                                                   int32,
                                                                   int32)
    IL_0013:  dup
    IL_0014:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0019:  stloc.0
    IL_001a:  call       int32 Game.Terrain::ExtractData(int32)
    IL_001f:  stloc.1
    IL_0020:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0025:  ldloc.0
    IL_0026:  ldelem.ref
    IL_0027:  isinst     Game.DoorBlock
    IL_002c:  brfalse.s  IL_0083

    IL_002e:  ldarg.0
    IL_002f:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0034:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0039:  ldarg.1
    IL_003a:  ldarg.2
    IL_003b:  ldarg.3
    IL_003c:  call       bool Game.DoorBlock::IsBottomPart(class Game.Terrain,
                                                           int32,
                                                           int32,
                                                           int32)
    IL_0041:  brtrue.s   IL_0048

    IL_0043:  ldarg.2
    IL_0044:  ldc.i4.1
    IL_0045:  sub
    IL_0046:  br.s       IL_0049

    IL_0048:  ldarg.2
    IL_0049:  stloc.2
    IL_004a:  ldloc.2
    IL_004b:  stloc.3
    IL_004c:  br.s       IL_007d

    IL_004e:  ldarg.0
    IL_004f:  ldfld      class Game.SubsystemElectricity Game.SubsystemDoorBlockBehavior::m_subsystemElectricity
    IL_0054:  ldarg.1
    IL_0055:  ldloc.3
    IL_0056:  ldarg.3
    IL_0057:  ldloc.1
    IL_0058:  call       int32 Game.DoorBlock::GetHingeFace(int32)
    IL_005d:  callvirt   instance class Game.ElectricElement Game.SubsystemElectricity::GetElectricElement(int32,
                                                                                                           int32,
                                                                                                           int32,
                                                                                                           int32)
    IL_0062:  stloc.s    V_4
    IL_0064:  ldloc.s    V_4
    IL_0066:  brfalse.s  IL_0079

    IL_0068:  ldloc.s    V_4
    IL_006a:  callvirt   instance class [System.Collections]System.Collections.Generic.List`1<class Game.ElectricConnection> Game.ElectricElement::get_Connections()
    IL_006f:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.ElectricConnection>::get_Count()
    IL_0074:  ldc.i4.0
    IL_0075:  ble.s      IL_0079

    IL_0077:  ldc.i4.1
    IL_0078:  ret

    IL_0079:  ldloc.3
    IL_007a:  ldc.i4.1
    IL_007b:  add
    IL_007c:  stloc.3
    IL_007d:  ldloc.3
    IL_007e:  ldloc.2
    IL_007f:  ldc.i4.1
    IL_0080:  add
    IL_0081:  ble.s      IL_004e

    IL_0083:  ldc.i4.0
    IL_0084:  ret
  } // end of method SubsystemDoorBlockBehavior::IsDoorElectricallyConnected

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
    IL_000d:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0012:  ldloc.0
    IL_0013:  ldfld      int32 Game.CellFace::X
    IL_0018:  ldloc.0
    IL_0019:  ldfld      int32 Game.CellFace::Y
    IL_001e:  ldloc.0
    IL_001f:  ldfld      int32 Game.CellFace::Z
    IL_0024:  callvirt   instance int32 Game.Terrain::GetCellValue(int32,
                                                                   int32,
                                                                   int32)
    IL_0029:  dup
    IL_002a:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_002f:  stloc.1
    IL_0030:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0035:  stloc.2
    IL_0036:  ldloc.1
    IL_0037:  ldc.i4.s   56
    IL_0039:  beq.s      IL_0055

    IL_003b:  ldarg.0
    IL_003c:  ldloc.0
    IL_003d:  ldfld      int32 Game.CellFace::X
    IL_0042:  ldloc.0
    IL_0043:  ldfld      int32 Game.CellFace::Y
    IL_0048:  ldloc.0
    IL_0049:  ldfld      int32 Game.CellFace::Z
    IL_004e:  call       instance bool Game.SubsystemDoorBlockBehavior::IsDoorElectricallyConnected(int32,
                                                                                                    int32,
                                                                                                    int32)
    IL_0053:  brtrue.s   IL_0079

    IL_0055:  ldloc.2
    IL_0056:  call       bool Game.DoorBlock::GetOpen(int32)
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
    IL_0073:  call       instance bool Game.SubsystemDoorBlockBehavior::OpenCloseDoor(int32,
                                                                                      int32,
                                                                                      int32,
                                                                                      bool)
    IL_0078:  ret

    IL_0079:  ldc.i4.1
    IL_007a:  ret
  } // end of method SubsystemDoorBlockBehavior::OnInteract

  .method public hidebysig virtual instance void 
          OnBlockAdded(int32 'value',
                       int32 oldValue,
                       int32 x,
                       int32 y,
                       int32 z) cil managed
  {
    // 代码大小       86 (0x56)
    .maxstack  6
    .locals init (int32 V_0,
             int32 V_1)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0006:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_000b:  ldarg.3
    IL_000c:  ldarg.s    y
    IL_000e:  ldc.i4.1
    IL_000f:  sub
    IL_0010:  ldarg.s    z
    IL_0012:  callvirt   instance int32 Game.Terrain::GetCellContents(int32,
                                                                      int32,
                                                                      int32)
    IL_0017:  stloc.0
    IL_0018:  ldarg.0
    IL_0019:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_001e:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0023:  ldarg.3
    IL_0024:  ldarg.s    y
    IL_0026:  ldc.i4.1
    IL_0027:  add
    IL_0028:  ldarg.s    z
    IL_002a:  callvirt   instance int32 Game.Terrain::GetCellContents(int32,
                                                                      int32,
                                                                      int32)
    IL_002f:  stloc.1
    IL_0030:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0035:  ldloc.0
    IL_0036:  ldelem.ref
    IL_0037:  ldfld      bool Game.Block::IsTransparent
    IL_003c:  brtrue.s   IL_0055

    IL_003e:  ldloc.1
    IL_003f:  brtrue.s   IL_0055

    IL_0041:  ldarg.0
    IL_0042:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0047:  ldarg.3
    IL_0048:  ldarg.s    y
    IL_004a:  ldc.i4.1
    IL_004b:  add
    IL_004c:  ldarg.s    z
    IL_004e:  ldarg.1
    IL_004f:  ldc.i4.1
    IL_0050:  callvirt   instance void Game.SubsystemTerrain::ChangeCell(int32,
                                                                         int32,
                                                                         int32,
                                                                         int32,
                                                                         bool)
    IL_0055:  ret
  } // end of method SubsystemDoorBlockBehavior::OnBlockAdded

  .method public hidebysig virtual instance void 
          OnBlockRemoved(int32 'value',
                         int32 newValue,
                         int32 x,
                         int32 y,
                         int32 z) cil managed
  {
    // 代码大小       87 (0x57)
    .maxstack  6
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0006:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_000b:  ldarg.3
    IL_000c:  ldarg.s    y
    IL_000e:  ldarg.s    z
    IL_0010:  call       bool Game.DoorBlock::IsTopPart(class Game.Terrain,
                                                        int32,
                                                        int32,
                                                        int32)
    IL_0015:  brfalse.s  IL_002b

    IL_0017:  ldarg.0
    IL_0018:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_001d:  ldarg.3
    IL_001e:  ldarg.s    y
    IL_0020:  ldc.i4.1
    IL_0021:  sub
    IL_0022:  ldarg.s    z
    IL_0024:  ldc.i4.0
    IL_0025:  ldc.i4.1
    IL_0026:  callvirt   instance void Game.SubsystemTerrain::ChangeCell(int32,
                                                                         int32,
                                                                         int32,
                                                                         int32,
                                                                         bool)
    IL_002b:  ldarg.0
    IL_002c:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0031:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0036:  ldarg.3
    IL_0037:  ldarg.s    y
    IL_0039:  ldarg.s    z
    IL_003b:  call       bool Game.DoorBlock::IsBottomPart(class Game.Terrain,
                                                           int32,
                                                           int32,
                                                           int32)
    IL_0040:  brfalse.s  IL_0056

    IL_0042:  ldarg.0
    IL_0043:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0048:  ldarg.3
    IL_0049:  ldarg.s    y
    IL_004b:  ldc.i4.1
    IL_004c:  add
    IL_004d:  ldarg.s    z
    IL_004f:  ldc.i4.0
    IL_0050:  ldc.i4.1
    IL_0051:  callvirt   instance void Game.SubsystemTerrain::ChangeCell(int32,
                                                                         int32,
                                                                         int32,
                                                                         int32,
                                                                         bool)
    IL_0056:  ret
  } // end of method SubsystemDoorBlockBehavior::OnBlockRemoved

  .method public hidebysig virtual instance void 
          OnNeighborBlockChanged(int32 x,
                                 int32 y,
                                 int32 z,
                                 int32 neighborX,
                                 int32 neighborY,
                                 int32 neighborZ) cil managed
  {
    // 代码大小       349 (0x15d)
    .maxstack  8
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0006:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_000b:  ldarg.1
    IL_000c:  ldarg.2
    IL_000d:  ldarg.3
    IL_000e:  callvirt   instance int32 Game.Terrain::GetCellValue(int32,
                                                                   int32,
                                                                   int32)
    IL_0013:  stloc.0
    IL_0014:  ldloc.0
    IL_0015:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_001a:  stloc.1
    IL_001b:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0020:  ldloc.1
    IL_0021:  ldelem.ref
    IL_0022:  ldloc.0
    IL_0023:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0028:  stloc.2
    IL_0029:  isinst     Game.DoorBlock
    IL_002e:  brfalse    IL_015c

    IL_0033:  ldarg.s    neighborX
    IL_0035:  ldarg.1
    IL_0036:  bne.un     IL_00d3

    IL_003b:  ldarg.s    neighborY
    IL_003d:  ldarg.2
    IL_003e:  bne.un     IL_00d3

    IL_0043:  ldarg.s    neighborZ
    IL_0045:  ldarg.3
    IL_0046:  bne.un     IL_00d3

    IL_004b:  ldarg.0
    IL_004c:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0051:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0056:  ldarg.1
    IL_0057:  ldarg.2
    IL_0058:  ldarg.3
    IL_0059:  call       bool Game.DoorBlock::IsBottomPart(class Game.Terrain,
                                                           int32,
                                                           int32,
                                                           int32)
    IL_005e:  brfalse.s  IL_008e

    IL_0060:  ldarg.0
    IL_0061:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0066:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_006b:  ldarg.1
    IL_006c:  ldarg.2
    IL_006d:  ldc.i4.1
    IL_006e:  add
    IL_006f:  ldarg.3
    IL_0070:  callvirt   instance int32 Game.Terrain::GetCellValue(int32,
                                                                   int32,
                                                                   int32)
    IL_0075:  ldloc.2
    IL_0076:  call       int32 Game.Terrain::ReplaceData(int32,
                                                         int32)
    IL_007b:  stloc.3
    IL_007c:  ldarg.0
    IL_007d:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0082:  ldarg.1
    IL_0083:  ldarg.2
    IL_0084:  ldc.i4.1
    IL_0085:  add
    IL_0086:  ldarg.3
    IL_0087:  ldloc.3
    IL_0088:  ldc.i4.1
    IL_0089:  callvirt   instance void Game.SubsystemTerrain::ChangeCell(int32,
                                                                         int32,
                                                                         int32,
                                                                         int32,
                                                                         bool)
    IL_008e:  ldarg.0
    IL_008f:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0094:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0099:  ldarg.1
    IL_009a:  ldarg.2
    IL_009b:  ldarg.3
    IL_009c:  call       bool Game.DoorBlock::IsTopPart(class Game.Terrain,
                                                        int32,
                                                        int32,
                                                        int32)
    IL_00a1:  brfalse.s  IL_00d3

    IL_00a3:  ldarg.0
    IL_00a4:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_00a9:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_00ae:  ldarg.1
    IL_00af:  ldarg.2
    IL_00b0:  ldc.i4.1
    IL_00b1:  sub
    IL_00b2:  ldarg.3
    IL_00b3:  callvirt   instance int32 Game.Terrain::GetCellValue(int32,
                                                                   int32,
                                                                   int32)
    IL_00b8:  ldloc.2
    IL_00b9:  call       int32 Game.Terrain::ReplaceData(int32,
                                                         int32)
    IL_00be:  stloc.s    V_4
    IL_00c0:  ldarg.0
    IL_00c1:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_00c6:  ldarg.1
    IL_00c7:  ldarg.2
    IL_00c8:  ldc.i4.1
    IL_00c9:  sub
    IL_00ca:  ldarg.3
    IL_00cb:  ldloc.s    V_4
    IL_00cd:  ldc.i4.1
    IL_00ce:  callvirt   instance void Game.SubsystemTerrain::ChangeCell(int32,
                                                                         int32,
                                                                         int32,
                                                                         int32,
                                                                         bool)
    IL_00d3:  ldarg.0
    IL_00d4:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_00d9:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_00de:  ldarg.1
    IL_00df:  ldarg.2
    IL_00e0:  ldarg.3
    IL_00e1:  call       bool Game.DoorBlock::IsBottomPart(class Game.Terrain,
                                                           int32,
                                                           int32,
                                                           int32)
    IL_00e6:  brfalse.s  IL_0120

    IL_00e8:  ldarg.0
    IL_00e9:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_00ee:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_00f3:  ldarg.1
    IL_00f4:  ldarg.2
    IL_00f5:  ldc.i4.1
    IL_00f6:  sub
    IL_00f7:  ldarg.3
    IL_00f8:  callvirt   instance int32 Game.Terrain::GetCellContents(int32,
                                                                      int32,
                                                                      int32)
    IL_00fd:  stloc.s    V_5
    IL_00ff:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0104:  ldloc.s    V_5
    IL_0106:  ldelem.ref
    IL_0107:  ldfld      bool Game.Block::IsTransparent
    IL_010c:  brfalse.s  IL_0120

    IL_010e:  ldarg.0
    IL_010f:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0114:  ldc.i4.0
    IL_0115:  ldarg.1
    IL_0116:  ldarg.2
    IL_0117:  ldarg.3
    IL_0118:  ldc.i4.0
    IL_0119:  ldc.i4.0
    IL_011a:  ldc.i4.0
    IL_011b:  callvirt   instance void Game.SubsystemTerrain::DestroyCell(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          bool,
                                                                          bool)
    IL_0120:  ldarg.0
    IL_0121:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0126:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_012b:  ldarg.1
    IL_012c:  ldarg.2
    IL_012d:  ldarg.3
    IL_012e:  call       bool Game.DoorBlock::IsBottomPart(class Game.Terrain,
                                                           int32,
                                                           int32,
                                                           int32)
    IL_0133:  brtrue.s   IL_015c

    IL_0135:  ldarg.0
    IL_0136:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_013b:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0140:  ldarg.1
    IL_0141:  ldarg.2
    IL_0142:  ldarg.3
    IL_0143:  call       bool Game.DoorBlock::IsTopPart(class Game.Terrain,
                                                        int32,
                                                        int32,
                                                        int32)
    IL_0148:  brtrue.s   IL_015c

    IL_014a:  ldarg.0
    IL_014b:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0150:  ldc.i4.0
    IL_0151:  ldarg.1
    IL_0152:  ldarg.2
    IL_0153:  ldarg.3
    IL_0154:  ldc.i4.0
    IL_0155:  ldc.i4.0
    IL_0156:  ldc.i4.0
    IL_0157:  callvirt   instance void Game.SubsystemTerrain::DestroyCell(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          bool,
                                                                          bool)
    IL_015c:  ret
  } // end of method SubsystemDoorBlockBehavior::OnNeighborBlockChanged

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
    IL_0014:  stfld      class Game.SubsystemElectricity Game.SubsystemDoorBlockBehavior::m_subsystemElectricity
    IL_0019:  ret
  } // end of method SubsystemDoorBlockBehavior::Load

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.SubsystemBlockBehavior::.ctor()
    IL_0006:  ret
  } // end of method SubsystemDoorBlockBehavior::.ctor

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       11 (0xb)
    .maxstack  8
    IL_0000:  newobj     instance void Game.Random::.ctor()
    IL_0005:  stsfld     class Game.Random Game.SubsystemDoorBlockBehavior::m_random
    IL_000a:  ret
  } // end of method SubsystemDoorBlockBehavior::.cctor

  .property instance int32[] HandledBlocks()
  {
    .get instance int32[] Game.SubsystemDoorBlockBehavior::get_HandledBlocks()
  } // end of property SubsystemDoorBlockBehavior::HandledBlocks
} // end of class Game.SubsystemDoorBlockBehavior