.class public auto ansi beforefieldinit Game.SubsystemSpikesBlockBehavior
       extends Game.SubsystemBlockBehavior
       implements Game.IUpdateable
{
  .field private static class Game.Random m_random
  .field private class Game.SubsystemAudio m_subsystemAudio
  .field private class Game.SubsystemTime m_subsystemTime
  .field private valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> m_closestSoundToPlay
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentCreature,float64> m_lastInjuryTimes
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
    // 代码大小       84 (0x54)
    .maxstack  7
    IL_0000:  ldarg.0
    IL_0001:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.SubsystemSpikesBlockBehavior::m_closestSoundToPlay
    IL_0006:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_000b:  brfalse.s  IL_0053

    IL_000d:  ldarg.0
    IL_000e:  ldfld      class Game.SubsystemAudio Game.SubsystemSpikesBlockBehavior::m_subsystemAudio
    IL_0013:  ldstr      "Audio/Spikes"
    IL_0018:  ldc.r4     0.69999999
    IL_001d:  ldsfld     class Game.Random Game.SubsystemSpikesBlockBehavior::m_random
    IL_0022:  ldc.r4     -0.1
    IL_0027:  ldc.r4     0.1
    IL_002c:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0031:  ldarg.0
    IL_0032:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.SubsystemSpikesBlockBehavior::m_closestSoundToPlay
    IL_0037:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_003c:  ldc.r4     4.
    IL_0041:  ldc.i4.1
    IL_0042:  callvirt   instance void Game.SubsystemAudio::PlaySound(string,
                                                                      float32,
                                                                      float32,
                                                                      valuetype [Engine]Engine.Vector3,
                                                                      float32,
                                                                      bool)
    IL_0047:  ldarg.0
    IL_0048:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.SubsystemSpikesBlockBehavior::m_closestSoundToPlay
    IL_004d:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>
    IL_0053:  ret
  } // end of method SubsystemSpikesBlockBehavior::Update

  .method public hidebysig instance bool 
          RetractExtendSpikes(int32 x,
                              int32 y,
                              int32 z,
                              bool extend) cil managed
  {
    // 代码大小       163 (0xa3)
    .maxstack  6
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             valuetype [Engine]Engine.Vector3 V_4,
             float32 V_5)
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
    IL_0022:  isinst     Game.SpikedPlankBlock
    IL_0027:  brfalse.s  IL_00a1

    IL_0029:  ldloc.0
    IL_002a:  call       int32 Game.Terrain::ExtractData(int32)
    IL_002f:  ldarg.s    extend
    IL_0031:  call       int32 Game.SpikedPlankBlock::SetSpikesState(int32,
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
    IL_005d:  ldfld      class Game.SubsystemAudio Game.SubsystemSpikesBlockBehavior::m_subsystemAudio
    IL_0062:  ldloc.s    V_4
    IL_0064:  callvirt   instance float32 Game.SubsystemAudio::CalculateListenerDistance(valuetype [Engine]Engine.Vector3)
    IL_0069:  stloc.s    V_5
    IL_006b:  ldarg.0
    IL_006c:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.SubsystemSpikesBlockBehavior::m_closestSoundToPlay
    IL_0071:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_0076:  brfalse.s  IL_0092

    IL_0078:  ldloc.s    V_5
    IL_007a:  ldarg.0
    IL_007b:  ldfld      class Game.SubsystemAudio Game.SubsystemSpikesBlockBehavior::m_subsystemAudio
    IL_0080:  ldarg.0
    IL_0081:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.SubsystemSpikesBlockBehavior::m_closestSoundToPlay
    IL_0086:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_008b:  callvirt   instance float32 Game.SubsystemAudio::CalculateListenerDistance(valuetype [Engine]Engine.Vector3)
    IL_0090:  bge.un.s   IL_009f

    IL_0092:  ldarg.0
    IL_0093:  ldloc.s    V_4
    IL_0095:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_009a:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.SubsystemSpikesBlockBehavior::m_closestSoundToPlay
    IL_009f:  ldc.i4.1
    IL_00a0:  ret

    IL_00a1:  ldc.i4.0
    IL_00a2:  ret
  } // end of method SubsystemSpikesBlockBehavior::RetractExtendSpikes

  .method public hidebysig virtual instance void 
          OnCollide(valuetype Game.CellFace cellFace,
                    float32 velocity,
                    class Game.ComponentBody componentBody) cil managed
  {
    // 代码大小       165 (0xa5)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1,
             class Game.ComponentCreature V_2,
             float64 V_3)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0006:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_000b:  ldarg.1
    IL_000c:  ldfld      int32 Game.CellFace::X
    IL_0011:  ldarg.1
    IL_0012:  ldfld      int32 Game.CellFace::Y
    IL_0017:  ldarg.1
    IL_0018:  ldfld      int32 Game.CellFace::Z
    IL_001d:  callvirt   instance int32 Game.Terrain::GetCellValue(int32,
                                                                   int32,
                                                                   int32)
    IL_0022:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0027:  stloc.0
    IL_0028:  ldloc.0
    IL_0029:  call       bool Game.SpikedPlankBlock::GetSpikesState(int32)
    IL_002e:  brfalse.s  IL_00a4

    IL_0030:  ldloc.0
    IL_0031:  call       int32 Game.SpikedPlankBlock::GetMountingFace(int32)
    IL_0036:  stloc.1
    IL_0037:  ldarg.1
    IL_0038:  ldfld      int32 Game.CellFace::Face
    IL_003d:  ldloc.1
    IL_003e:  bne.un.s   IL_00a4

    IL_0040:  ldarg.3
    IL_0041:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0046:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreature>()
    IL_004b:  stloc.2
    IL_004c:  ldloc.2
    IL_004d:  brfalse.s  IL_00a4

    IL_004f:  ldarg.0
    IL_0050:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentCreature,float64> Game.SubsystemSpikesBlockBehavior::m_lastInjuryTimes
    IL_0055:  ldloc.2
    IL_0056:  ldloca.s   V_3
    IL_0058:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentCreature,float64>::TryGetValue(!0,
                                                                                                                                                            !1&)
    IL_005d:  pop
    IL_005e:  ldarg.0
    IL_005f:  ldfld      class Game.SubsystemTime Game.SubsystemSpikesBlockBehavior::m_subsystemTime
    IL_0064:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0069:  ldloc.3
    IL_006a:  sub
    IL_006b:  ldc.r8     1.
    IL_0074:  ble.un.s   IL_00a4

    IL_0076:  ldarg.0
    IL_0077:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentCreature,float64> Game.SubsystemSpikesBlockBehavior::m_lastInjuryTimes
    IL_007c:  ldloc.2
    IL_007d:  ldarg.0
    IL_007e:  ldfld      class Game.SubsystemTime Game.SubsystemSpikesBlockBehavior::m_subsystemTime
    IL_0083:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0088:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentCreature,float64>::set_Item(!0,
                                                                                                                                                         !1)
    IL_008d:  ldloc.2
    IL_008e:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_0093:  ldc.r4     0.1
    IL_0098:  ldnull
    IL_0099:  ldc.i4.0
    IL_009a:  ldstr      "Spiked by a trap"
    IL_009f:  callvirt   instance void Game.ComponentHealth::Injure(float32,
                                                                    class Game.ComponentCreature,
                                                                    bool,
                                                                    string)
    IL_00a4:  ret
  } // end of method SubsystemSpikesBlockBehavior::OnCollide

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       44 (0x2c)
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
    IL_0019:  ldarg.0
    IL_001a:  ldarg.0
    IL_001b:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0020:  ldc.i4.1
    IL_0021:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_0026:  stfld      class Game.SubsystemTime Game.SubsystemSpikesBlockBehavior::m_subsystemTime
    IL_002b:  ret
  } // end of method SubsystemSpikesBlockBehavior::Load

  .method family hidebysig virtual instance void 
          OnEntityRemoved(class [EntitySystem]GameEntitySystem.Entity entity) cil managed
  {
    // 代码大小       24 (0x18)
    .maxstack  2
    .locals init (class Game.ComponentCreature V_0)
    IL_0000:  ldarg.1
    IL_0001:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreature>()
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  brfalse.s  IL_0017

    IL_000a:  ldarg.0
    IL_000b:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentCreature,float64> Game.SubsystemSpikesBlockBehavior::m_lastInjuryTimes
    IL_0010:  ldloc.0
    IL_0011:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentCreature,float64>::Remove(!0)
    IL_0016:  pop
    IL_0017:  ret
  } // end of method SubsystemSpikesBlockBehavior::OnEntityRemoved

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentCreature,float64>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentCreature,float64> Game.SubsystemSpikesBlockBehavior::m_lastInjuryTimes
    IL_000b:  ldarg.0
    IL_000c:  call       instance void Game.SubsystemBlockBehavior::.ctor()
    IL_0011:  ret
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