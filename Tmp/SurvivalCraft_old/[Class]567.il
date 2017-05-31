.class public auto ansi beforefieldinit Game.SubsystemWaterBlockBehavior
       extends Game.SubsystemFluidBlockBehavior
       implements Game.IUpdateable
{
  .field private class Game.Random m_random
  .field private float32 m_soundVolume
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       27 (0x1b)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.Random::.ctor()
    IL_0006:  stfld      class Game.Random Game.SubsystemWaterBlockBehavior::m_random
    IL_000b:  ldarg.0
    IL_000c:  call       class Game.FluidBlock[] Game.BlocksManager::get_FluidBlocks()
    IL_0011:  ldc.i4.s   18
    IL_0013:  ldelem.ref
    IL_0014:  ldc.i4.1
    IL_0015:  call       instance void Game.SubsystemFluidBlockBehavior::.ctor(class Game.FluidBlock,
                                                                               bool)
    IL_001a:  ret
  } // end of method SubsystemWaterBlockBehavior::.ctor

  .method public hidebysig specialname virtual 
          instance int32[]  get_HandledBlocks() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldc.i4.1
    IL_0001:  newarr     [System.Runtime]System.Int32
    IL_0006:  dup
    IL_0007:  ldc.i4.0
    IL_0008:  ldc.i4.s   18
    IL_000a:  stelem.i4
    IL_000b:  ret
  } // end of method SubsystemWaterBlockBehavior::get_HandledBlocks

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method SubsystemWaterBlockBehavior::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       178 (0xb2)
    .maxstack  6
    .locals init (valuetype [System.Runtime]System.Nullable`1<float32> V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.SubsystemTime Game.SubsystemFluidBlockBehavior::get_SubsystemTime()
    IL_0006:  ldc.r8     0.25
    IL_000f:  ldc.r8     0.0
    IL_0018:  callvirt   instance bool Game.SubsystemTime::PeriodicGameTimeEvent(float64,
                                                                                 float64)
    IL_001d:  brfalse.s  IL_0025

    IL_001f:  ldarg.0
    IL_0020:  call       instance void Game.SubsystemFluidBlockBehavior::SpreadFluid()
    IL_0025:  ldarg.0
    IL_0026:  call       instance class Game.SubsystemTime Game.SubsystemFluidBlockBehavior::get_SubsystemTime()
    IL_002b:  ldc.r8     1.
    IL_0034:  ldc.r8     0.25
    IL_003d:  callvirt   instance bool Game.SubsystemTime::PeriodicGameTimeEvent(float64,
                                                                                 float64)
    IL_0042:  brfalse.s  IL_0090

    IL_0044:  ldarg.0
    IL_0045:  ldarg.0
    IL_0046:  call       instance class Game.SubsystemAudio Game.SubsystemFluidBlockBehavior::get_SubsystemAudio()
    IL_004b:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemAudio::get_ListenerPosition()
    IL_0050:  ldc.i4.8
    IL_0051:  ldc.i4.1
    IL_0052:  call       instance valuetype [System.Runtime]System.Nullable`1<float32> Game.SubsystemFluidBlockBehavior::CalculateDistanceToFluid(valuetype [Engine]Engine.Vector3,
                                                                                                                                                  int32,
                                                                                                                                                  bool)
    IL_0057:  stloc.0
    IL_0058:  ldarg.0
    IL_0059:  ldloca.s   V_0
    IL_005b:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float32>::get_HasValue()
    IL_0060:  brtrue.s   IL_0069

    IL_0062:  ldc.r4     0.0
    IL_0067:  br.s       IL_008b

    IL_0069:  ldc.r4     0.5
    IL_006e:  ldarg.0
    IL_006f:  call       instance class Game.SubsystemAudio Game.SubsystemFluidBlockBehavior::get_SubsystemAudio()
    IL_0074:  ldloca.s   V_0
    IL_0076:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_007b:  ldc.r4     2.
    IL_0080:  ldc.r4     3.5
    IL_0085:  callvirt   instance float32 Game.SubsystemAudio::CalculateVolume(float32,
                                                                               float32,
                                                                               float32)
    IL_008a:  mul
    IL_008b:  stfld      float32 Game.SubsystemWaterBlockBehavior::m_soundVolume
    IL_0090:  ldarg.0
    IL_0091:  call       instance class Game.SubsystemAmbientSounds Game.SubsystemFluidBlockBehavior::get_SubsystemAmbientSounds()
    IL_0096:  ldarg.0
    IL_0097:  call       instance class Game.SubsystemAmbientSounds Game.SubsystemFluidBlockBehavior::get_SubsystemAmbientSounds()
    IL_009c:  callvirt   instance float32 Game.SubsystemAmbientSounds::get_WaterSoundVolume()
    IL_00a1:  ldarg.0
    IL_00a2:  ldfld      float32 Game.SubsystemWaterBlockBehavior::m_soundVolume
    IL_00a7:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_00ac:  callvirt   instance void Game.SubsystemAmbientSounds::set_WaterSoundVolume(float32)
    IL_00b1:  ret
  } // end of method SubsystemWaterBlockBehavior::Update

  .method family hidebysig virtual instance bool 
          OnFluidInteract(int32 interactValue,
                          int32 x,
                          int32 y,
                          int32 z,
                          int32 fluidValue) cil managed
  {
    // 代码大小       125 (0x7d)
    .maxstack  8
    IL_0000:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0005:  ldarg.1
    IL_0006:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_000b:  ldelem.ref
    IL_000c:  isinst     Game.MagmaBlock
    IL_0011:  brfalse.s  IL_006f

    IL_0013:  ldarg.0
    IL_0014:  call       instance class Game.SubsystemAudio Game.SubsystemFluidBlockBehavior::get_SubsystemAudio()
    IL_0019:  ldstr      "Audio/Sizzles"
    IL_001e:  ldc.r4     1.
    IL_0023:  ldarg.0
    IL_0024:  ldfld      class Game.Random Game.SubsystemWaterBlockBehavior::m_random
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
    IL_0067:  ldc.i4.3
    IL_0068:  call       instance void Game.SubsystemFluidBlockBehavior::Set(int32,
                                                                             int32,
                                                                             int32,
                                                                             int32)
    IL_006d:  ldc.i4.1
    IL_006e:  ret

    IL_006f:  ldarg.0
    IL_0070:  ldarg.1
    IL_0071:  ldarg.2
    IL_0072:  ldarg.3
    IL_0073:  ldarg.s    z
    IL_0075:  ldarg.s    fluidValue
    IL_0077:  call       instance bool Game.SubsystemFluidBlockBehavior::OnFluidInteract(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32)
    IL_007c:  ret
  } // end of method SubsystemWaterBlockBehavior::OnFluidInteract

  .property instance int32[] HandledBlocks()
  {
    .get instance int32[] Game.SubsystemWaterBlockBehavior::get_HandledBlocks()
  } // end of property SubsystemWaterBlockBehavior::HandledBlocks
  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.SubsystemWaterBlockBehavior::get_UpdateOrder()
  } // end of property SubsystemWaterBlockBehavior::UpdateOrder
} // end of class Game.SubsystemWaterBlockBehavior