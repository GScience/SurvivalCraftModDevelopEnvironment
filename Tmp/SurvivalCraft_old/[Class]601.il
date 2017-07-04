.class public auto ansi beforefieldinit Game.SubsystemFenceGateBlockBehavior
       extends Game.SubsystemBlockBehavior
{
  .field private class Game.SubsystemElectricity m_subsystemElectricity
  .field private static class Game.Random m_random
  .method public hidebysig specialname virtual 
          instance int32[]  get_HandledBlocks() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  newarr     [System.Runtime]System.Int32
    IL_0006:  ret
  } // end of method SubsystemFenceGateBlockBehavior::get_HandledBlocks

  .method public hidebysig instance bool 
          OpenCloseGate(int32 x,
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
    IL_0022:  isinst     Game.FenceGateBlock
    IL_0027:  brfalse.s  IL_00a5

    IL_0029:  ldloc.0
    IL_002a:  call       int32 Game.Terrain::ExtractData(int32)
    IL_002f:  ldarg.s    open
    IL_0031:  call       int32 Game.FenceGateBlock::SetOpen(int32,
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
    IL_0079:  ldsfld     class Game.Random Game.SubsystemFenceGateBlockBehavior::m_random
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
  } // end of method SubsystemFenceGateBlockBehavior::OpenCloseGate

  .method public hidebysig instance bool 
          IsGateElectricallyConnected(int32 x,
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
    IL_0027:  isinst     Game.FenceGateBlock
    IL_002c:  brfalse.s  IL_0056

    IL_002e:  ldarg.0
    IL_002f:  ldfld      class Game.SubsystemElectricity Game.SubsystemFenceGateBlockBehavior::m_subsystemElectricity
    IL_0034:  ldarg.1
    IL_0035:  ldarg.2
    IL_0036:  ldarg.3
    IL_0037:  ldloc.1
    IL_0038:  call       int32 Game.FenceGateBlock::GetHingeFace(int32)
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
  } // end of method SubsystemFenceGateBlockBehavior::IsGateElectricallyConnected

  .method public hidebysig virtual instance bool 
          OnInteract(valuetype Game.TerrainRaycastResult raycastResult,
                     class Game.ComponentMiner componentMiner) cil managed
  {
    // 代码大小       126 (0x7e)
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
    IL_0037:  ldc.i4     0xa6
    IL_003c:  beq.s      IL_0058

    IL_003e:  ldarg.0
    IL_003f:  ldloc.0
    IL_0040:  ldfld      int32 Game.CellFace::X
    IL_0045:  ldloc.0
    IL_0046:  ldfld      int32 Game.CellFace::Y
    IL_004b:  ldloc.0
    IL_004c:  ldfld      int32 Game.CellFace::Z
    IL_0051:  call       instance bool Game.SubsystemFenceGateBlockBehavior::IsGateElectricallyConnected(int32,
                                                                                                         int32,
                                                                                                         int32)
    IL_0056:  brtrue.s   IL_007c

    IL_0058:  ldloc.2
    IL_0059:  call       bool Game.FenceGateBlock::GetOpen(int32)
    IL_005e:  stloc.3
    IL_005f:  ldarg.0
    IL_0060:  ldloc.0
    IL_0061:  ldfld      int32 Game.CellFace::X
    IL_0066:  ldloc.0
    IL_0067:  ldfld      int32 Game.CellFace::Y
    IL_006c:  ldloc.0
    IL_006d:  ldfld      int32 Game.CellFace::Z
    IL_0072:  ldloc.3
    IL_0073:  ldc.i4.0
    IL_0074:  ceq
    IL_0076:  call       instance bool Game.SubsystemFenceGateBlockBehavior::OpenCloseGate(int32,
                                                                                           int32,
                                                                                           int32,
                                                                                           bool)
    IL_007b:  ret

    IL_007c:  ldc.i4.1
    IL_007d:  ret
  } // end of method SubsystemFenceGateBlockBehavior::OnInteract

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
    IL_0014:  stfld      class Game.SubsystemElectricity Game.SubsystemFenceGateBlockBehavior::m_subsystemElectricity
    IL_0019:  ret
  } // end of method SubsystemFenceGateBlockBehavior::Load

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.SubsystemBlockBehavior::.ctor()
    IL_0006:  ret
  } // end of method SubsystemFenceGateBlockBehavior::.ctor

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       11 (0xb)
    .maxstack  8
    IL_0000:  newobj     instance void Game.Random::.ctor()
    IL_0005:  stsfld     class Game.Random Game.SubsystemFenceGateBlockBehavior::m_random
    IL_000a:  ret
  } // end of method SubsystemFenceGateBlockBehavior::.cctor

  .property instance int32[] HandledBlocks()
  {
    .get instance int32[] Game.SubsystemFenceGateBlockBehavior::get_HandledBlocks()
  } // end of property SubsystemFenceGateBlockBehavior::HandledBlocks
} // end of class Game.SubsystemFenceGateBlockBehavior