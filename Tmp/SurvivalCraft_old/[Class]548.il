.class public auto ansi beforefieldinit Game.SubsystemCarpetBlockBehavior
       extends Game.SubsystemPollableBlockBehavior
{
  .field private class Game.SubsystemWeather m_subsystemWeather
  .field private class Game.Random m_random
  .method public hidebysig specialname virtual 
          instance int32[]  get_HandledBlocks() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  newarr     [System.Runtime]System.Int32
    IL_0006:  ret
  } // end of method SubsystemCarpetBlockBehavior::get_HandledBlocks

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       26 (0x1a)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemWeather>(bool)
    IL_000d:  stfld      class Game.SubsystemWeather Game.SubsystemCarpetBlockBehavior::m_subsystemWeather
    IL_0012:  ldarg.0
    IL_0013:  ldarg.1
    IL_0014:  call       instance void Game.SubsystemBlockBehavior::Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary)
    IL_0019:  ret
  } // end of method SubsystemCarpetBlockBehavior::Load

  .method public hidebysig virtual instance void 
          OnNeighborBlockChanged(int32 x,
                                 int32 y,
                                 int32 z,
                                 int32 neighborX,
                                 int32 neighborY,
                                 int32 neighborZ) cil managed
  {
    // 代码大小       55 (0x37)
    .maxstack  8
    .locals init (int32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0006:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_000b:  ldarg.1
    IL_000c:  ldarg.2
    IL_000d:  ldc.i4.1
    IL_000e:  sub
    IL_000f:  ldarg.3
    IL_0010:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                          int32,
                                                                          int32)
    IL_0015:  stloc.0
    IL_0016:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_001b:  ldloc.0
    IL_001c:  ldelem.ref
    IL_001d:  ldfld      bool Game.Block::IsTransparent
    IL_0022:  brfalse.s  IL_0036

    IL_0024:  ldarg.0
    IL_0025:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_002a:  ldc.i4.0
    IL_002b:  ldarg.1
    IL_002c:  ldarg.2
    IL_002d:  ldarg.3
    IL_002e:  ldc.i4.0
    IL_002f:  ldc.i4.0
    IL_0030:  ldc.i4.0
    IL_0031:  callvirt   instance void Game.SubsystemTerrain::DestroyCell(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          bool,
                                                                          bool)
    IL_0036:  ret
  } // end of method SubsystemCarpetBlockBehavior::OnNeighborBlockChanged

  .method public hidebysig virtual instance void 
          OnPoll(int32 'value',
                 int32 x,
                 int32 y,
                 int32 z,
                 int32 pollPass) cil managed
  {
    // 代码大小       87 (0x57)
    .maxstack  8
    .locals init (valuetype Game.PrecipitationShaftInfo V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.Random Game.SubsystemCarpetBlockBehavior::m_random
    IL_0006:  ldc.r4     0.0
    IL_000b:  ldc.r4     1.
    IL_0010:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0015:  ldc.r4     0.25
    IL_001a:  bge.un.s   IL_0056

    IL_001c:  ldarg.0
    IL_001d:  ldfld      class Game.SubsystemWeather Game.SubsystemCarpetBlockBehavior::m_subsystemWeather
    IL_0022:  ldarg.2
    IL_0023:  ldarg.s    z
    IL_0025:  callvirt   instance valuetype Game.PrecipitationShaftInfo Game.SubsystemWeather::GetPrecipitationShaftInfo(int32,
                                                                                                                         int32)
    IL_002a:  stloc.0
    IL_002b:  ldloc.0
    IL_002c:  ldfld      float32 Game.PrecipitationShaftInfo::Intensity
    IL_0031:  ldc.r4     0.0
    IL_0036:  ble.un.s   IL_0056

    IL_0038:  ldarg.3
    IL_0039:  ldloc.0
    IL_003a:  ldfld      int32 Game.PrecipitationShaftInfo::YLimit
    IL_003f:  ldc.i4.1
    IL_0040:  sub
    IL_0041:  blt.s      IL_0056

    IL_0043:  ldarg.0
    IL_0044:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0049:  ldc.i4.0
    IL_004a:  ldarg.2
    IL_004b:  ldarg.3
    IL_004c:  ldarg.s    z
    IL_004e:  ldc.i4.0
    IL_004f:  ldc.i4.1
    IL_0050:  ldc.i4.0
    IL_0051:  callvirt   instance void Game.SubsystemTerrain::DestroyCell(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          bool,
                                                                          bool)
    IL_0056:  ret
  } // end of method SubsystemCarpetBlockBehavior::OnPoll

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.Random::.ctor()
    IL_0006:  stfld      class Game.Random Game.SubsystemCarpetBlockBehavior::m_random
    IL_000b:  ldarg.0
    IL_000c:  call       instance void Game.SubsystemPollableBlockBehavior::.ctor()
    IL_0011:  ret
  } // end of method SubsystemCarpetBlockBehavior::.ctor

  .property instance int32[] HandledBlocks()
  {
    .get instance int32[] Game.SubsystemCarpetBlockBehavior::get_HandledBlocks()
  } // end of property SubsystemCarpetBlockBehavior::HandledBlocks
} // end of class Game.SubsystemCarpetBlockBehavior