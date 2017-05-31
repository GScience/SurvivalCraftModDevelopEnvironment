.class public auto ansi beforefieldinit Game.SubsystemSpikesBlockBehavior
       extends Game.SubsystemBlockBehavior
       implements Game.IUpdateable
{
  .field private static class Game.Random m_random
  .field private class Game.SubsystemAudio m_subsystemAudio
  .field private valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> m_closestSoundToPlay
  .method public hidebysig specialname virtual 
          instance int32[]  get_HandledBlocks() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldc.i4.1
    IL_0001:  newarr     [System.Runtime]System.Int32
    IL_0006:  dup
    IL_0007:  ldc.i4.0
    IL_0008:  ldc.i4.s   86
    IL_000a:  stelem.i4
    IL_000b:  ret
  } // end of method SubsystemSpikesBlockBehavior::get_HandledBlocks

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method SubsystemSpikesBlockBehavior::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       95 (0x5f)
    .maxstack  7
    IL_0000:  ldarg.0
    IL_0001:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.SubsystemSpikesBlockBehavior::m_closestSoundToPlay
    IL_0006:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_000b:  brfalse.s  IL_005e

    IL_000d:  ldarg.0
    IL_000e:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0013:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0018:  ldc.i4.1
    IL_0019:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemAudio>(bool)
    IL_001e:  ldstr      "Audio/Spikes"
    IL_0023:  ldc.r4     0.69999999
    IL_0028:  ldsfld     class Game.Random Game.SubsystemSpikesBlockBehavior::m_random
    IL_002d:  ldc.r4     -0.1
    IL_0032:  ldc.r4     0.1
    IL_0037:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_003c:  ldarg.0
    IL_003d:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.SubsystemSpikesBlockBehavior::m_closestSoundToPlay
    IL_0042:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_0047:  ldc.r4     4.
    IL_004c:  ldc.i4.1
    IL_004d:  callvirt   instance void Game.SubsystemAudio::PlaySound(string,
                                                                      float32,
                                                                      float32,
                                                                      valuetype [Engine]Engine.Vector3,
                                                                      float32,
                                                                      bool)
    IL_0052:  ldarg.0
    IL_0053:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.SubsystemSpikesBlockBehavior::m_closestSoundToPlay
    IL_0058:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>
    IL_005e:  ret
  } // end of method SubsystemSpikesBlockBehavior::Update

  .method public hidebysig instance bool 
          RetractExtendSpikes(int32 x,
                              int32 y,
                              int32 z,
                              bool extend) cil managed
  {
    // 代码大小       169 (0xa9)
    .maxstack  6
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             valuetype [Engine]Engine.Vector3 V_4)
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
    IL_0022:  isinst     Game.SpikedPlankBlock
    IL_0027:  brfalse.s  IL_00a7

    IL_0029:  ldloc.0
    IL_002a:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_002f:  ldarg.s    extend
    IL_0031:  call       int32 Game.SpikedPlankBlock::SetSpikesState(int32,
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
    IL_004f:  ldloca.s   V_4
    IL_0051:  ldarg.1
    IL_0052:  conv.r4
    IL_0053:  ldarg.2
    IL_0054:  conv.r4
    IL_0055:  ldarg.3
    IL_0056:  conv.r4
    IL_0057:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_005c:  ldarg.0
    IL_005d:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.SubsystemSpikesBlockBehavior::m_closestSoundToPlay
    IL_0062:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_0067:  brfalse.s  IL_0098

    IL_0069:  ldloc.s    V_4
    IL_006b:  ldarg.0
    IL_006c:  ldfld      class Game.SubsystemAudio Game.SubsystemSpikesBlockBehavior::m_subsystemAudio
    IL_0071:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemAudio::get_ListenerPosition()
    IL_0076:  call       float32 [Engine]Engine.Vector3::DistanceSquared(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_007b:  ldarg.0
    IL_007c:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.SubsystemSpikesBlockBehavior::m_closestSoundToPlay
    IL_0081:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_0086:  ldarg.0
    IL_0087:  ldfld      class Game.SubsystemAudio Game.SubsystemSpikesBlockBehavior::m_subsystemAudio
    IL_008c:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemAudio::get_ListenerPosition()
    IL_0091:  call       float32 [Engine]Engine.Vector3::DistanceSquared(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_0096:  bge.un.s   IL_00a5

    IL_0098:  ldarg.0
    IL_0099:  ldloc.s    V_4
    IL_009b:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_00a0:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.SubsystemSpikesBlockBehavior::m_closestSoundToPlay
    IL_00a5:  ldc.i4.1
    IL_00a6:  ret

    IL_00a7:  ldc.i4.0
    IL_00a8:  ret
  } // end of method SubsystemSpikesBlockBehavior::RetractExtendSpikes

  .method public hidebysig virtual instance void 
          OnCollide(valuetype Game.CellFace cellFace,
                    float32 velocity,
                    class Game.ComponentBody componentBody) cil managed
  {
    // 代码大小       110 (0x6e)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1,
             class Game.ComponentCreature V_2)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0006:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_000b:  ldarg.1
    IL_000c:  ldfld      int32 Game.CellFace::X
    IL_0011:  ldarg.1
    IL_0012:  ldfld      int32 Game.CellFace::Y
    IL_0017:  ldarg.1
    IL_0018:  ldfld      int32 Game.CellFace::Z
    IL_001d:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_0022:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0027:  stloc.0
    IL_0028:  ldloc.0
    IL_0029:  call       bool Game.SpikedPlankBlock::GetSpikesState(int32)
    IL_002e:  brfalse.s  IL_006d

    IL_0030:  ldloc.0
    IL_0031:  call       int32 Game.SpikedPlankBlock::GetMountingFace(int32)
    IL_0036:  stloc.1
    IL_0037:  ldarg.1
    IL_0038:  ldfld      int32 Game.CellFace::Face
    IL_003d:  ldloc.1
    IL_003e:  bne.un.s   IL_006d

    IL_0040:  ldarg.3
    IL_0041:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0046:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreature>()
    IL_004b:  stloc.2
    IL_004c:  ldloc.2
    IL_004d:  brfalse.s  IL_006d

    IL_004f:  ldloc.2
    IL_0050:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_0055:  ldc.r4     5.0000001e-002
    IL_005a:  ldarg.2
    IL_005b:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_0060:  mul
    IL_0061:  ldnull
    IL_0062:  ldc.i4.0
    IL_0063:  ldstr      "Spiked by a trap"
    IL_0068:  callvirt   instance void Game.ComponentHealth::Injure(float32,
                                                                    class Game.ComponentCreature,
                                                                    bool,
                                                                    string)
    IL_006d:  ret
  } // end of method SubsystemSpikesBlockBehavior::OnCollide

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
    IL_000f:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemAudio>(bool)
    IL_0014:  stfld      class Game.SubsystemAudio Game.SubsystemSpikesBlockBehavior::m_subsystemAudio
    IL_0019:  ret
  } // end of method SubsystemSpikesBlockBehavior::Load

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.SubsystemBlockBehavior::.ctor()
    IL_0006:  ret
  } // end of method SubsystemSpikesBlockBehavior::.ctor

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       11 (0xb)
    .maxstack  8
    IL_0000:  newobj     instance void Game.Random::.ctor()
    IL_0005:  stsfld     class Game.Random Game.SubsystemSpikesBlockBehavior::m_random
    IL_000a:  ret
  } // end of method SubsystemSpikesBlockBehavior::.cctor

  .property instance int32[] HandledBlocks()
  {
    .get instance int32[] Game.SubsystemSpikesBlockBehavior::get_HandledBlocks()
  } // end of property SubsystemSpikesBlockBehavior::HandledBlocks
  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.SubsystemSpikesBlockBehavior::get_UpdateOrder()
  } // end of property SubsystemSpikesBlockBehavior::UpdateOrder
} // end of class Game.SubsystemSpikesBlockBehavior