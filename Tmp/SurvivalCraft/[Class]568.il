.class public auto ansi beforefieldinit Game.SubsystemMagmaBlockBehavior
       extends Game.SubsystemFluidBlockBehavior
       implements Game.IUpdateable
{
  .field private class Game.Random m_random
  .field private class Game.SubsystemFireBlockBehavior m_subsystemFireBlockBehavior
  .field private class Game.SubsystemParticles m_subsystemParticles
  .field private float32 m_soundVolume
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       27 (0x1b)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.Random::.ctor()
    IL_0006:  stfld      class Game.Random Game.SubsystemMagmaBlockBehavior::m_random
    IL_000b:  ldarg.0
    IL_000c:  call       class Game.FluidBlock[] Game.BlocksManager::get_FluidBlocks()
    IL_0011:  ldc.i4.s   92
    IL_0013:  ldelem.ref
    IL_0014:  ldc.i4.0
    IL_0015:  call       instance void Game.SubsystemFluidBlockBehavior::.ctor(class Game.FluidBlock,
                                                                               bool)
    IL_001a:  ret
  } // end of method SubsystemMagmaBlockBehavior::.ctor

  .method public hidebysig specialname virtual 
          instance int32[]  get_HandledBlocks() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldc.i4.1
    IL_0001:  newarr     [System.Runtime]System.Int32
    IL_0006:  dup
    IL_0007:  ldc.i4.0
    IL_0008:  ldc.i4.s   92
    IL_000a:  stelem.i4
    IL_000b:  ret
  } // end of method SubsystemMagmaBlockBehavior::get_HandledBlocks

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method SubsystemMagmaBlockBehavior::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       172 (0xac)
    .maxstack  5
    .locals init (valuetype [System.Runtime]System.Nullable`1<float32> V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.SubsystemTime Game.SubsystemFluidBlockBehavior::get_SubsystemTime()
    IL_0006:  ldc.r8     2.
    IL_000f:  ldc.r8     0.0
    IL_0018:  callvirt   instance bool Game.SubsystemTime::PeriodicGameTimeEvent(float64,
                                                                                 float64)
    IL_001d:  brfalse.s  IL_0025

    IL_001f:  ldarg.0
    IL_0020:  call       instance void Game.SubsystemFluidBlockBehavior::SpreadFluid()
    IL_0025:  ldarg.0
    IL_0026:  call       instance class Game.SubsystemTime Game.SubsystemFluidBlockBehavior::get_SubsystemTime()
    IL_002b:  ldc.r8     1.
    IL_0034:  ldc.r8     0.75
    IL_003d:  callvirt   instance bool Game.SubsystemTime::PeriodicGameTimeEvent(float64,
                                                                                 float64)
    IL_0042:  brfalse.s  IL_008a

    IL_0044:  ldarg.0
    IL_0045:  ldarg.0
    IL_0046:  call       instance class Game.SubsystemAudio Game.SubsystemFluidBlockBehavior::get_SubsystemAudio()
    IL_004b:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemAudio::get_ListenerPosition()
    IL_0050:  ldc.i4.8
    IL_0051:  ldc.i4.0
    IL_0052:  call       instance valuetype [System.Runtime]System.Nullable`1<float32> Game.SubsystemFluidBlockBehavior::CalculateDistanceToFluid(valuetype [Engine]Engine.Vector3,
                                                                                                                                                  int32,
                                                                                                                                                  bool)
    IL_0057:  stloc.0
    IL_0058:  ldarg.0
    IL_0059:  ldloca.s   V_0
    IL_005b:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float32>::get_HasValue()
    IL_0060:  brtrue.s   IL_0069

    IL_0062:  ldc.r4     0.0
    IL_0067:  br.s       IL_0085

    IL_0069:  ldarg.0
    IL_006a:  call       instance class Game.SubsystemAudio Game.SubsystemFluidBlockBehavior::get_SubsystemAudio()
    IL_006f:  ldloca.s   V_0
    IL_0071:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_0076:  ldc.r4     2.
    IL_007b:  ldc.r4     3.5
    IL_0080:  callvirt   instance float32 Game.SubsystemAudio::CalculateVolume(float32,
                                                                               float32,
                                                                               float32)
    IL_0085:  stfld      float32 Game.SubsystemMagmaBlockBehavior::m_soundVolume
    IL_008a:  ldarg.0
    IL_008b:  call       instance class Game.SubsystemAmbientSounds Game.SubsystemFluidBlockBehavior::get_SubsystemAmbientSounds()
    IL_0090:  ldarg.0
    IL_0091:  call       instance class Game.SubsystemAmbientSounds Game.SubsystemFluidBlockBehavior::get_SubsystemAmbientSounds()
    IL_0096:  callvirt   instance float32 Game.SubsystemAmbientSounds::get_MagmaSoundVolume()
    IL_009b:  ldarg.0
    IL_009c:  ldfld      float32 Game.SubsystemMagmaBlockBehavior::m_soundVolume
    IL_00a1:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_00a6:  callvirt   instance void Game.SubsystemAmbientSounds::set_MagmaSoundVolume(float32)
    IL_00ab:  ret
  } // end of method SubsystemMagmaBlockBehavior::Update

  .method public hidebysig virtual instance void 
          OnBlockAdded(int32 'value',
                       int32 oldValue,
                       int32 x,
                       int32 y,
                       int32 z) cil managed
  {
    // 代码大小       67 (0x43)
    .maxstack  6
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  ldarg.3
    IL_0004:  ldarg.s    y
    IL_0006:  ldarg.s    z
    IL_0008:  call       instance void Game.SubsystemFluidBlockBehavior::OnBlockAdded(int32,
                                                                                      int32,
                                                                                      int32,
                                                                                      int32,
                                                                                      int32)
    IL_000d:  ldc.i4.m1
    IL_000e:  stloc.0
    IL_000f:  br.s       IL_003e

    IL_0011:  ldc.i4.m1
    IL_0012:  stloc.1
    IL_0013:  br.s       IL_0036

    IL_0015:  ldc.i4.m1
    IL_0016:  stloc.2
    IL_0017:  br.s       IL_002e

    IL_0019:  ldarg.0
    IL_001a:  ldarg.3
    IL_001b:  ldloc.0
    IL_001c:  add
    IL_001d:  ldarg.s    y
    IL_001f:  ldloc.1
    IL_0020:  add
    IL_0021:  ldarg.s    z
    IL_0023:  ldloc.2
    IL_0024:  add
    IL_0025:  call       instance void Game.SubsystemMagmaBlockBehavior::ApplyMagmaNeighborhoodEffect(int32,
                                                                                                      int32,
                                                                                                      int32)
    IL_002a:  ldloc.2
    IL_002b:  ldc.i4.1
    IL_002c:  add
    IL_002d:  stloc.2
    IL_002e:  ldloc.2
    IL_002f:  ldc.i4.1
    IL_0030:  ble.s      IL_0019

    IL_0032:  ldloc.1
    IL_0033:  ldc.i4.1
    IL_0034:  add
    IL_0035:  stloc.1
    IL_0036:  ldloc.1
    IL_0037:  ldc.i4.1
    IL_0038:  ble.s      IL_0015

    IL_003a:  ldloc.0
    IL_003b:  ldc.i4.1
    IL_003c:  add
    IL_003d:  stloc.0
    IL_003e:  ldloc.0
    IL_003f:  ldc.i4.1
    IL_0040:  ble.s      IL_0011

    IL_0042:  ret
  } // end of method SubsystemMagmaBlockBehavior::OnBlockAdded

  .method public hidebysig virtual instance void 
          OnNeighborBlockChanged(int32 x,
                                 int32 y,
                                 int32 z,
                                 int32 neighborX,
                                 int32 neighborY,
                                 int32 neighborZ) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  ldarg.3
    IL_0004:  ldarg.s    neighborX
    IL_0006:  ldarg.s    neighborY
    IL_0008:  ldarg.s    neighborZ
    IL_000a:  call       instance void Game.SubsystemFluidBlockBehavior::OnNeighborBlockChanged(int32,
                                                                                                int32,
                                                                                                int32,
                                                                                                int32,
                                                                                                int32,
                                                                                                int32)
    IL_000f:  ldarg.0
    IL_0010:  ldarg.s    neighborX
    IL_0012:  ldarg.s    neighborY
    IL_0014:  ldarg.s    neighborZ
    IL_0016:  call       instance void Game.SubsystemMagmaBlockBehavior::ApplyMagmaNeighborhoodEffect(int32,
                                                                                                      int32,
                                                                                                      int32)
    IL_001b:  ret
  } // end of method SubsystemMagmaBlockBehavior::OnNeighborBlockChanged

  .method family hidebysig virtual instance bool 
          OnFluidInteract(int32 interactValue,
                          int32 x,
                          int32 y,
                          int32 z,
                          int32 fluidValue) cil managed
  {
    // 代码大小       126 (0x7e)
    .maxstack  8
    IL_0000:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0005:  ldarg.1
    IL_0006:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_000b:  ldelem.ref
    IL_000c:  isinst     Game.WaterBlock
    IL_0011:  brfalse.s  IL_0070

    IL_0013:  ldarg.0
    IL_0014:  call       instance class Game.SubsystemAudio Game.SubsystemFluidBlockBehavior::get_SubsystemAudio()
    IL_0019:  ldstr      "Audio/Sizzles"
    IL_001e:  ldc.r4     1.
    IL_0023:  ldarg.0
    IL_0024:  ldfld      class Game.Random Game.SubsystemMagmaBlockBehavior::m_random
    IL_0029:  ldc.r4     -0.1
    IL_002e:  ldc.r4     0.1
    IL_0033:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0038:  ldarg.2
    IL_0039:  conv.r4
    IL_003a:  ldarg.3
    IL_003b:  conv.r4
    IL_003c:  ldarg.s    z
    IL_003e:  conv.r4
    IL_003f:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0044:  ldc.r4     5.
    IL_0049:  ldc.i4.1
    IL_004a:  callvirt   instance void Game.SubsystemAudio::PlayRandomSound(string,
                                                                            float32,
                                                                            float32,
                                                                            valuetype [Engine]Engine.Vector3,
                                                                            float32,
                                                                            bool)
    IL_004f:  ldarg.0
    IL_0050:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0055:  ldc.i4.0
    IL_0056:  ldarg.2
    IL_0057:  ldarg.3
    IL_0058:  ldarg.s    z
    IL_005a:  ldc.i4.0
    IL_005b:  ldc.i4.0
    IL_005c:  ldc.i4.0
    IL_005d:  callvirt   instance void Game.SubsystemTerrain::DestroyCell(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          bool,
                                                                          bool)
    IL_0062:  ldarg.0
    IL_0063:  ldarg.2
    IL_0064:  ldarg.3
    IL_0065:  ldarg.s    z
    IL_0067:  ldc.i4.s   67
    IL_0069:  call       instance void Game.SubsystemFluidBlockBehavior::Set(int32,
                                                                             int32,
                                                                             int32,
                                                                             int32)
    IL_006e:  ldc.i4.1
    IL_006f:  ret

    IL_0070:  ldarg.0
    IL_0071:  ldarg.1
    IL_0072:  ldarg.2
    IL_0073:  ldarg.3
    IL_0074:  ldarg.s    z
    IL_0076:  ldarg.s    fluidValue
    IL_0078:  call       instance bool Game.SubsystemFluidBlockBehavior::OnFluidInteract(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32)
    IL_007d:  ret
  } // end of method SubsystemMagmaBlockBehavior::OnFluidInteract

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       44 (0x2c)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void Game.SubsystemFluidBlockBehavior::Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary)
    IL_0007:  ldarg.0
    IL_0008:  ldarg.0
    IL_0009:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_000e:  ldc.i4.1
    IL_000f:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemFireBlockBehavior>(bool)
    IL_0014:  stfld      class Game.SubsystemFireBlockBehavior Game.SubsystemMagmaBlockBehavior::m_subsystemFireBlockBehavior
    IL_0019:  ldarg.0
    IL_001a:  ldarg.0
    IL_001b:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0020:  ldc.i4.1
    IL_0021:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemParticles>(bool)
    IL_0026:  stfld      class Game.SubsystemParticles Game.SubsystemMagmaBlockBehavior::m_subsystemParticles
    IL_002b:  ret
  } // end of method SubsystemMagmaBlockBehavior::Load

  .method private hidebysig instance void 
          ApplyMagmaNeighborhoodEffect(int32 x,
                                       int32 y,
                                       int32 z) cil managed
  {
    // 代码大小       184 (0xb8)
    .maxstack  8
    .locals init (int32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemFireBlockBehavior Game.SubsystemMagmaBlockBehavior::m_subsystemFireBlockBehavior
    IL_0006:  ldarg.1
    IL_0007:  ldarg.2
    IL_0008:  ldarg.3
    IL_0009:  ldc.r4     1.
    IL_000e:  callvirt   instance bool Game.SubsystemFireBlockBehavior::SetCellOnFire(int32,
                                                                                      int32,
                                                                                      int32,
                                                                                      float32)
    IL_0013:  pop
    IL_0014:  ldarg.0
    IL_0015:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_001a:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_001f:  ldarg.1
    IL_0020:  ldarg.2
    IL_0021:  ldarg.3
    IL_0022:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                          int32,
                                                                          int32)
    IL_0027:  stloc.0
    IL_0028:  ldloc.0
    IL_0029:  ldc.i4.s   61
    IL_002b:  beq.s      IL_0032

    IL_002d:  ldloc.0
    IL_002e:  ldc.i4.s   62
    IL_0030:  bne.un.s   IL_0074

    IL_0032:  ldarg.0
    IL_0033:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0038:  ldc.i4.0
    IL_0039:  ldarg.1
    IL_003a:  ldarg.2
    IL_003b:  ldarg.3
    IL_003c:  ldc.i4.0
    IL_003d:  ldc.i4.0
    IL_003e:  ldc.i4.0
    IL_003f:  callvirt   instance void Game.SubsystemTerrain::DestroyCell(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          bool,
                                                                          bool)
    IL_0044:  ldarg.0
    IL_0045:  ldfld      class Game.SubsystemParticles Game.SubsystemMagmaBlockBehavior::m_subsystemParticles
    IL_004a:  ldarg.0
    IL_004b:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0050:  ldarg.1
    IL_0051:  conv.r4
    IL_0052:  ldc.r4     0.5
    IL_0057:  add
    IL_0058:  ldarg.2
    IL_0059:  ldc.i4.1
    IL_005a:  add
    IL_005b:  conv.r4
    IL_005c:  ldarg.3
    IL_005d:  conv.r4
    IL_005e:  ldc.r4     0.5
    IL_0063:  add
    IL_0064:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0069:  newobj     instance void Game.BurntDebrisParticleSystem::.ctor(class Game.SubsystemTerrain,
                                                                             valuetype [Engine]Engine.Vector3)
    IL_006e:  callvirt   instance void Game.SubsystemParticles::AddParticleSystem(class Game.ParticleSystemBase)
    IL_0073:  ret

    IL_0074:  ldloc.0
    IL_0075:  ldc.i4.8
    IL_0076:  bne.un.s   IL_00b7

    IL_0078:  ldarg.0
    IL_0079:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_007e:  ldarg.1
    IL_007f:  ldarg.2
    IL_0080:  ldarg.3
    IL_0081:  ldc.i4.2
    IL_0082:  ldc.i4.1
    IL_0083:  callvirt   instance void Game.SubsystemTerrain::ChangeCell(int32,
                                                                         int32,
                                                                         int32,
                                                                         int32,
                                                                         bool)
    IL_0088:  ldarg.0
    IL_0089:  ldfld      class Game.SubsystemParticles Game.SubsystemMagmaBlockBehavior::m_subsystemParticles
    IL_008e:  ldarg.0
    IL_008f:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0094:  ldarg.1
    IL_0095:  conv.r4
    IL_0096:  ldc.r4     0.5
    IL_009b:  add
    IL_009c:  ldarg.2
    IL_009d:  ldc.i4.1
    IL_009e:  add
    IL_009f:  conv.r4
    IL_00a0:  ldarg.3
    IL_00a1:  conv.r4
    IL_00a2:  ldc.r4     0.5
    IL_00a7:  add
    IL_00a8:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00ad:  newobj     instance void Game.BurntDebrisParticleSystem::.ctor(class Game.SubsystemTerrain,
                                                                             valuetype [Engine]Engine.Vector3)
    IL_00b2:  callvirt   instance void Game.SubsystemParticles::AddParticleSystem(class Game.ParticleSystemBase)
    IL_00b7:  ret
  } // end of method SubsystemMagmaBlockBehavior::ApplyMagmaNeighborhoodEffect

  .property instance int32[] HandledBlocks()
  {
    .get instance int32[] Game.SubsystemMagmaBlockBehavior::get_HandledBlocks()
  } // end of property SubsystemMagmaBlockBehavior::HandledBlocks
  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.SubsystemMagmaBlockBehavior::get_UpdateOrder()
  } // end of property SubsystemMagmaBlockBehavior::UpdateOrder
} // end of class Game.SubsystemMagmaBlockBehavior