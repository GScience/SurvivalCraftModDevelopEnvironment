.class public auto ansi beforefieldinit Game.SubsystemCampfireBlockBehavior
       extends Game.SubsystemBlockBehavior
       implements Game.IUpdateable
{
  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.SubsystemParticles m_subsystemParticles
  .field private class Game.SubsystemWeather m_subsystemWeather
  .field private class Game.SubsystemAmbientSounds m_subsystemAmbientSounds
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.FireParticleSystem> m_particleSystemsByCell
  .field private float32 m_fireSoundVolume
  .field private class Game.Random m_random
  .field private int32 m_updateIndex
  .field private class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Point3> m_toReduce
  .method public hidebysig specialname instance class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<valuetype [Engine]Engine.Point3,class Game.FireParticleSystem> 
          get_Campfires() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.FireParticleSystem> Game.SubsystemCampfireBlockBehavior::m_particleSystemsByCell
    IL_0006:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.FireParticleSystem>::get_Keys()
    IL_000b:  ret
  } // end of method SubsystemCampfireBlockBehavior::get_Campfires

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method SubsystemCampfireBlockBehavior::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       496 (0x1f0)
    .maxstack  6
    .locals init (valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<valuetype [Engine]Engine.Point3,class Game.FireParticleSystem> V_0,
             valuetype [Engine]Engine.Point3 V_1,
             valuetype Game.PrecipitationShaftInfo V_2,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype [Engine]Engine.Point3> V_3,
             valuetype [Engine]Engine.Point3 V_4,
             float32 V_5,
             valuetype [Engine]Engine.Point3 V_6,
             float32 V_7)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTime Game.SubsystemCampfireBlockBehavior::m_subsystemTime
    IL_0006:  ldc.r8     5.
    IL_000f:  ldc.r8     0.0
    IL_0018:  callvirt   instance bool Game.SubsystemTime::PeriodicGameTimeEvent(float64,
                                                                                 float64)
    IL_001d:  brfalse    IL_0110

    IL_0022:  ldarg.0
    IL_0023:  ldarg.0
    IL_0024:  ldfld      int32 Game.SubsystemCampfireBlockBehavior::m_updateIndex
    IL_0029:  ldc.i4.1
    IL_002a:  add
    IL_002b:  stfld      int32 Game.SubsystemCampfireBlockBehavior::m_updateIndex
    IL_0030:  ldarg.0
    IL_0031:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.FireParticleSystem> Game.SubsystemCampfireBlockBehavior::m_particleSystemsByCell
    IL_0036:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.FireParticleSystem>::get_Keys()
    IL_003b:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<valuetype [Engine]Engine.Point3,class Game.FireParticleSystem>::GetEnumerator()
    IL_0040:  stloc.0
    .try
    {
      IL_0041:  br.s       IL_009e

      IL_0043:  ldloca.s   V_0
      IL_0045:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<valuetype [Engine]Engine.Point3,class Game.FireParticleSystem>::get_Current()
      IL_004a:  stloc.1
      IL_004b:  ldarg.0
      IL_004c:  ldfld      class Game.SubsystemWeather Game.SubsystemCampfireBlockBehavior::m_subsystemWeather
      IL_0051:  ldloc.1
      IL_0052:  ldfld      int32 [Engine]Engine.Point3::X
      IL_0057:  ldloc.1
      IL_0058:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_005d:  callvirt   instance valuetype Game.PrecipitationShaftInfo Game.SubsystemWeather::GetPrecipitationShaftInfo(int32,
                                                                                                                           int32)
      IL_0062:  stloc.2
      IL_0063:  ldloc.2
      IL_0064:  ldfld      float32 Game.PrecipitationShaftInfo::Intensity
      IL_0069:  ldc.r4     0.0
      IL_006e:  ble.un.s   IL_0085

      IL_0070:  ldloc.1
      IL_0071:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_0076:  ldloc.2
      IL_0077:  ldfld      int32 Game.PrecipitationShaftInfo::YLimit
      IL_007c:  ldc.i4.1
      IL_007d:  sub
      IL_007e:  clt
      IL_0080:  ldc.i4.0
      IL_0081:  ceq
      IL_0083:  br.s       IL_0086

      IL_0085:  ldc.i4.0
      IL_0086:  brtrue.s   IL_0092

      IL_0088:  ldarg.0
      IL_0089:  ldfld      int32 Game.SubsystemCampfireBlockBehavior::m_updateIndex
      IL_008e:  ldc.i4.4
      IL_008f:  rem
      IL_0090:  brtrue.s   IL_009e

      IL_0092:  ldarg.0
      IL_0093:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Point3> Game.SubsystemCampfireBlockBehavior::m_toReduce
      IL_0098:  ldloc.1
      IL_0099:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Point3>::Add(!0)
      IL_009e:  ldloca.s   V_0
      IL_00a0:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<valuetype [Engine]Engine.Point3,class Game.FireParticleSystem>::MoveNext()
      IL_00a5:  brtrue.s   IL_0043

      IL_00a7:  leave.s    IL_00b7

    }  // end .try
    finally
    {
      IL_00a9:  ldloca.s   V_0
      IL_00ab:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<valuetype [Engine]Engine.Point3,class Game.FireParticleSystem>
      IL_00b1:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00b6:  endfinally
    }  // end handler
    IL_00b7:  ldarg.0
    IL_00b8:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Point3> Game.SubsystemCampfireBlockBehavior::m_toReduce
    IL_00bd:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Point3>::GetEnumerator()
    IL_00c2:  stloc.3
    .try
    {
      IL_00c3:  br.s       IL_00ec

      IL_00c5:  ldloca.s   V_3
      IL_00c7:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype [Engine]Engine.Point3>::get_Current()
      IL_00cc:  stloc.s    V_4
      IL_00ce:  ldarg.0
      IL_00cf:  ldloc.s    V_4
      IL_00d1:  ldfld      int32 [Engine]Engine.Point3::X
      IL_00d6:  ldloc.s    V_4
      IL_00d8:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_00dd:  ldloc.s    V_4
      IL_00df:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_00e4:  ldc.i4.m1
      IL_00e5:  ldc.i4.1
      IL_00e6:  call       instance bool Game.SubsystemCampfireBlockBehavior::ResizeCampfire(int32,
                                                                                             int32,
                                                                                             int32,
                                                                                             int32,
                                                                                             bool)
      IL_00eb:  pop
      IL_00ec:  ldloca.s   V_3
      IL_00ee:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype [Engine]Engine.Point3>::MoveNext()
      IL_00f3:  brtrue.s   IL_00c5

      IL_00f5:  leave.s    IL_0105

    }  // end .try
    finally
    {
      IL_00f7:  ldloca.s   V_3
      IL_00f9:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype [Engine]Engine.Point3>
      IL_00ff:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0104:  endfinally
    }  // end handler
    IL_0105:  ldarg.0
    IL_0106:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Point3> Game.SubsystemCampfireBlockBehavior::m_toReduce
    IL_010b:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Point3>::Clear()
    IL_0110:  ldc.r8     0.5
    IL_0119:  ldc.r8     0.0
    IL_0122:  call       bool [Engine]Engine.Time::PeriodicEvent(float64,
                                                                 float64)
    IL_0127:  brfalse    IL_01ce

    IL_012c:  ldc.r4     3.4028235e+038
    IL_0131:  stloc.s    V_5
    IL_0133:  ldarg.0
    IL_0134:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.FireParticleSystem> Game.SubsystemCampfireBlockBehavior::m_particleSystemsByCell
    IL_0139:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.FireParticleSystem>::get_Keys()
    IL_013e:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<valuetype [Engine]Engine.Point3,class Game.FireParticleSystem>::GetEnumerator()
    IL_0143:  stloc.0
    .try
    {
      IL_0144:  br.s       IL_018e

      IL_0146:  ldloca.s   V_0
      IL_0148:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<valuetype [Engine]Engine.Point3,class Game.FireParticleSystem>::get_Current()
      IL_014d:  stloc.s    V_6
      IL_014f:  ldloc.s    V_6
      IL_0151:  ldfld      int32 [Engine]Engine.Point3::X
      IL_0156:  conv.r4
      IL_0157:  ldloc.s    V_6
      IL_0159:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_015e:  conv.r4
      IL_015f:  ldloc.s    V_6
      IL_0161:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_0166:  conv.r4
      IL_0167:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                       float32,
                                                                       float32)
      IL_016c:  ldarg.0
      IL_016d:  ldfld      class Game.SubsystemAmbientSounds Game.SubsystemCampfireBlockBehavior::m_subsystemAmbientSounds
      IL_0172:  callvirt   instance class Game.SubsystemAudio Game.SubsystemAmbientSounds::get_SubsystemAudio()
      IL_0177:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemAudio::get_ListenerPosition()
      IL_017c:  call       float32 [Engine]Engine.Vector3::DistanceSquared(valuetype [Engine]Engine.Vector3,
                                                                           valuetype [Engine]Engine.Vector3)
      IL_0181:  stloc.s    V_7
      IL_0183:  ldloc.s    V_5
      IL_0185:  ldloc.s    V_7
      IL_0187:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                                 float32)
      IL_018c:  stloc.s    V_5
      IL_018e:  ldloca.s   V_0
      IL_0190:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<valuetype [Engine]Engine.Point3,class Game.FireParticleSystem>::MoveNext()
      IL_0195:  brtrue.s   IL_0146

      IL_0197:  leave.s    IL_01a7

    }  // end .try
    finally
    {
      IL_0199:  ldloca.s   V_0
      IL_019b:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<valuetype [Engine]Engine.Point3,class Game.FireParticleSystem>
      IL_01a1:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_01a6:  endfinally
    }  // end handler
    IL_01a7:  ldarg.0
    IL_01a8:  ldarg.0
    IL_01a9:  ldfld      class Game.SubsystemAmbientSounds Game.SubsystemCampfireBlockBehavior::m_subsystemAmbientSounds
    IL_01ae:  callvirt   instance class Game.SubsystemAudio Game.SubsystemAmbientSounds::get_SubsystemAudio()
    IL_01b3:  ldloc.s    V_5
    IL_01b5:  call       float32 [Engine]Engine.MathUtils::Sqrt(float32)
    IL_01ba:  ldc.r4     2.
    IL_01bf:  ldc.r4     2.
    IL_01c4:  callvirt   instance float32 Game.SubsystemAudio::CalculateVolume(float32,
                                                                               float32,
                                                                               float32)
    IL_01c9:  stfld      float32 Game.SubsystemCampfireBlockBehavior::m_fireSoundVolume
    IL_01ce:  ldarg.0
    IL_01cf:  ldfld      class Game.SubsystemAmbientSounds Game.SubsystemCampfireBlockBehavior::m_subsystemAmbientSounds
    IL_01d4:  ldarg.0
    IL_01d5:  ldfld      class Game.SubsystemAmbientSounds Game.SubsystemCampfireBlockBehavior::m_subsystemAmbientSounds
    IL_01da:  callvirt   instance float32 Game.SubsystemAmbientSounds::get_FireSoundVolume()
    IL_01df:  ldarg.0
    IL_01e0:  ldfld      float32 Game.SubsystemCampfireBlockBehavior::m_fireSoundVolume
    IL_01e5:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_01ea:  callvirt   instance void Game.SubsystemAmbientSounds::set_FireSoundVolume(float32)
    IL_01ef:  ret
  } // end of method SubsystemCampfireBlockBehavior::Update

  .method public hidebysig specialname virtual 
          instance int32[]  get_HandledBlocks() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  newarr     [System.Runtime]System.Int32
    IL_0006:  ret
  } // end of method SubsystemCampfireBlockBehavior::get_HandledBlocks

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
  } // end of method SubsystemCampfireBlockBehavior::OnNeighborBlockChanged

  .method public hidebysig virtual instance void 
          OnBlockAdded(int32 'value',
                       int32 oldValue,
                       int32 x,
                       int32 y,
                       int32 z) cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.3
    IL_0003:  ldarg.s    y
    IL_0005:  ldarg.s    z
    IL_0007:  call       instance void Game.SubsystemCampfireBlockBehavior::AddCampfireParticleSystem(int32,
                                                                                                      int32,
                                                                                                      int32,
                                                                                                      int32)
    IL_000c:  ret
  } // end of method SubsystemCampfireBlockBehavior::OnBlockAdded

  .method public hidebysig virtual instance void 
          OnBlockRemoved(int32 'value',
                         int32 newValue,
                         int32 x,
                         int32 y,
                         int32 z) cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.3
    IL_0002:  ldarg.s    y
    IL_0004:  ldarg.s    z
    IL_0006:  call       instance void Game.SubsystemCampfireBlockBehavior::RemoveCampfireParticleSystem(int32,
                                                                                                         int32,
                                                                                                         int32)
    IL_000b:  ret
  } // end of method SubsystemCampfireBlockBehavior::OnBlockRemoved

  .method public hidebysig virtual instance void 
          OnBlockModified(int32 'value',
                          int32 oldValue,
                          int32 x,
                          int32 y,
                          int32 z) cil managed
  {
    // 代码大小       24 (0x18)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.3
    IL_0002:  ldarg.s    y
    IL_0004:  ldarg.s    z
    IL_0006:  call       instance void Game.SubsystemCampfireBlockBehavior::RemoveCampfireParticleSystem(int32,
                                                                                                         int32,
                                                                                                         int32)
    IL_000b:  ldarg.0
    IL_000c:  ldarg.1
    IL_000d:  ldarg.3
    IL_000e:  ldarg.s    y
    IL_0010:  ldarg.s    z
    IL_0012:  call       instance void Game.SubsystemCampfireBlockBehavior::AddCampfireParticleSystem(int32,
                                                                                                      int32,
                                                                                                      int32,
                                                                                                      int32)
    IL_0017:  ret
  } // end of method SubsystemCampfireBlockBehavior::OnBlockModified

  .method public hidebysig virtual instance void 
          OnBlockGenerated(int32 'value',
                           int32 x,
                           int32 y,
                           int32 z,
                           bool isLoaded) cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  ldarg.3
    IL_0004:  ldarg.s    z
    IL_0006:  call       instance void Game.SubsystemCampfireBlockBehavior::AddCampfireParticleSystem(int32,
                                                                                                      int32,
                                                                                                      int32,
                                                                                                      int32)
    IL_000b:  ret
  } // end of method SubsystemCampfireBlockBehavior::OnBlockGenerated

  .method public hidebysig virtual instance void 
          OnChunkDiscarding(class Game.TerrainChunk chunk) cil managed
  {
    // 代码大小       249 (0xf9)
    .maxstack  6
    .locals init (class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Point3> V_0,
             valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<valuetype [Engine]Engine.Point3,class Game.FireParticleSystem> V_1,
             valuetype [Engine]Engine.Point3 V_2,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype [Engine]Engine.Point3> V_3,
             valuetype [Engine]Engine.Point3 V_4)
    IL_0000:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Point3>::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.FireParticleSystem> Game.SubsystemCampfireBlockBehavior::m_particleSystemsByCell
    IL_000c:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.FireParticleSystem>::get_Keys()
    IL_0011:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<valuetype [Engine]Engine.Point3,class Game.FireParticleSystem>::GetEnumerator()
    IL_0016:  stloc.1
    .try
    {
      IL_0017:  br.s       IL_007a

      IL_0019:  ldloca.s   V_1
      IL_001b:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<valuetype [Engine]Engine.Point3,class Game.FireParticleSystem>::get_Current()
      IL_0020:  stloc.2
      IL_0021:  ldloc.2
      IL_0022:  ldfld      int32 [Engine]Engine.Point3::X
      IL_0027:  ldarg.1
      IL_0028:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
      IL_002d:  ldfld      int32 [Engine]Engine.Point2::X
      IL_0032:  blt.s      IL_007a

      IL_0034:  ldloc.2
      IL_0035:  ldfld      int32 [Engine]Engine.Point3::X
      IL_003a:  ldarg.1
      IL_003b:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
      IL_0040:  ldfld      int32 [Engine]Engine.Point2::X
      IL_0045:  ldc.i4.s   16
      IL_0047:  add
      IL_0048:  bge.s      IL_007a

      IL_004a:  ldloc.2
      IL_004b:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_0050:  ldarg.1
      IL_0051:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
      IL_0056:  ldfld      int32 [Engine]Engine.Point2::Y
      IL_005b:  blt.s      IL_007a

      IL_005d:  ldloc.2
      IL_005e:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_0063:  ldarg.1
      IL_0064:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
      IL_0069:  ldfld      int32 [Engine]Engine.Point2::Y
      IL_006e:  ldc.i4.s   16
      IL_0070:  add
      IL_0071:  bge.s      IL_007a

      IL_0073:  ldloc.0
      IL_0074:  ldloc.2
      IL_0075:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Point3>::Add(!0)
      IL_007a:  ldloca.s   V_1
      IL_007c:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<valuetype [Engine]Engine.Point3,class Game.FireParticleSystem>::MoveNext()
      IL_0081:  brtrue.s   IL_0019

      IL_0083:  leave.s    IL_0093

    }  // end .try
    finally
    {
      IL_0085:  ldloca.s   V_1
      IL_0087:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<valuetype [Engine]Engine.Point3,class Game.FireParticleSystem>
      IL_008d:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0092:  endfinally
    }  // end handler
    IL_0093:  ldloc.0
    IL_0094:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Point3>::GetEnumerator()
    IL_0099:  stloc.3
    .try
    {
      IL_009a:  br.s       IL_00df

      IL_009c:  ldloca.s   V_3
      IL_009e:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype [Engine]Engine.Point3>::get_Current()
      IL_00a3:  stloc.s    V_4
      IL_00a5:  ldarg.0
      IL_00a6:  ldloc.s    V_4
      IL_00a8:  ldfld      int32 [Engine]Engine.Point3::X
      IL_00ad:  ldloc.s    V_4
      IL_00af:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_00b4:  ldloc.s    V_4
      IL_00b6:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_00bb:  ldc.i4.s   -15
      IL_00bd:  ldc.i4.0
      IL_00be:  call       instance bool Game.SubsystemCampfireBlockBehavior::ResizeCampfire(int32,
                                                                                             int32,
                                                                                             int32,
                                                                                             int32,
                                                                                             bool)
      IL_00c3:  pop
      IL_00c4:  ldarg.0
      IL_00c5:  ldloc.s    V_4
      IL_00c7:  ldfld      int32 [Engine]Engine.Point3::X
      IL_00cc:  ldloc.s    V_4
      IL_00ce:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_00d3:  ldloc.s    V_4
      IL_00d5:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_00da:  call       instance void Game.SubsystemCampfireBlockBehavior::RemoveCampfireParticleSystem(int32,
                                                                                                           int32,
                                                                                                           int32)
      IL_00df:  ldloca.s   V_3
      IL_00e1:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype [Engine]Engine.Point3>::MoveNext()
      IL_00e6:  brtrue.s   IL_009c

      IL_00e8:  leave.s    IL_00f8

    }  // end .try
    finally
    {
      IL_00ea:  ldloca.s   V_3
      IL_00ec:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype [Engine]Engine.Point3>
      IL_00f2:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00f7:  endfinally
    }  // end handler
    IL_00f8:  ret
  } // end of method SubsystemCampfireBlockBehavior::OnChunkDiscarding

  .method public hidebysig virtual instance void 
          OnHitByProjectile(valuetype Game.CellFace cellFace,
                            class Game.WorldItem worldItem) cil managed
  {
    // 代码大小       67 (0x43)
    .maxstack  6
    .locals init (class Game.Pickable V_0)
    IL_0000:  ldarg.2
    IL_0001:  ldfld      bool Game.WorldItem::ToRemove
    IL_0006:  brtrue.s   IL_0042

    IL_0008:  ldarg.2
    IL_0009:  isinst     Game.Pickable
    IL_000e:  stloc.0
    IL_000f:  ldarg.0
    IL_0010:  ldarg.1
    IL_0011:  ldfld      int32 Game.CellFace::X
    IL_0016:  ldarg.1
    IL_0017:  ldfld      int32 Game.CellFace::Y
    IL_001c:  ldarg.1
    IL_001d:  ldfld      int32 Game.CellFace::Z
    IL_0022:  ldarg.2
    IL_0023:  ldfld      int32 Game.WorldItem::Value
    IL_0028:  ldloc.0
    IL_0029:  brtrue.s   IL_002e

    IL_002b:  ldc.i4.1
    IL_002c:  br.s       IL_0034

    IL_002e:  ldloc.0
    IL_002f:  ldfld      int32 Game.Pickable::Count
    IL_0034:  call       instance bool Game.SubsystemCampfireBlockBehavior::AddFuel(int32,
                                                                                    int32,
                                                                                    int32,
                                                                                    int32,
                                                                                    int32)
    IL_0039:  brfalse.s  IL_0042

    IL_003b:  ldarg.2
    IL_003c:  ldc.i4.1
    IL_003d:  stfld      bool Game.WorldItem::ToRemove
    IL_0042:  ret
  } // end of method SubsystemCampfireBlockBehavior::OnHitByProjectile

  .method public hidebysig virtual instance bool 
          OnInteract(valuetype Game.TerrainRaycastResult raycastResult,
                     class Game.ComponentMiner componentMiner) cil managed
  {
    // 代码大小       57 (0x39)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0007:  ldfld      int32 Game.CellFace::X
    IL_000c:  ldarg.1
    IL_000d:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0012:  ldfld      int32 Game.CellFace::Y
    IL_0017:  ldarg.1
    IL_0018:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_001d:  ldfld      int32 Game.CellFace::Z
    IL_0022:  ldarg.2
    IL_0023:  callvirt   instance int32 Game.ComponentMiner::get_ActiveBlockValue()
    IL_0028:  ldc.i4.1
    IL_0029:  call       instance bool Game.SubsystemCampfireBlockBehavior::AddFuel(int32,
                                                                                    int32,
                                                                                    int32,
                                                                                    int32,
                                                                                    int32)
    IL_002e:  brfalse.s  IL_0037

    IL_0030:  ldarg.2
    IL_0031:  ldc.i4.1
    IL_0032:  callvirt   instance void Game.ComponentMiner::RemoveActiveTool(int32)
    IL_0037:  ldc.i4.1
    IL_0038:  ret
  } // end of method SubsystemCampfireBlockBehavior::OnInteract

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       80 (0x50)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void Game.SubsystemBlockBehavior::Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary)
    IL_0007:  ldarg.0
    IL_0008:  ldarg.0
    IL_0009:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_000e:  ldc.i4.1
    IL_000f:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_0014:  stfld      class Game.SubsystemTime Game.SubsystemCampfireBlockBehavior::m_subsystemTime
    IL_0019:  ldarg.0
    IL_001a:  ldarg.0
    IL_001b:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0020:  ldc.i4.1
    IL_0021:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemParticles>(bool)
    IL_0026:  stfld      class Game.SubsystemParticles Game.SubsystemCampfireBlockBehavior::m_subsystemParticles
    IL_002b:  ldarg.0
    IL_002c:  ldarg.0
    IL_002d:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0032:  ldc.i4.1
    IL_0033:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemWeather>(bool)
    IL_0038:  stfld      class Game.SubsystemWeather Game.SubsystemCampfireBlockBehavior::m_subsystemWeather
    IL_003d:  ldarg.0
    IL_003e:  ldarg.0
    IL_003f:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0044:  ldc.i4.1
    IL_0045:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemAmbientSounds>(bool)
    IL_004a:  stfld      class Game.SubsystemAmbientSounds Game.SubsystemCampfireBlockBehavior::m_subsystemAmbientSounds
    IL_004f:  ret
  } // end of method SubsystemCampfireBlockBehavior::Load

  .method private hidebysig instance void 
          AddCampfireParticleSystem(int32 'value',
                                    int32 x,
                                    int32 y,
                                    int32 z) cil managed
  {
    // 代码大小       121 (0x79)
    .maxstack  4
    .locals init (int32 V_0,
             valuetype [Engine]Engine.Vector3 V_1,
             float32 V_2,
             class Game.FireParticleSystem V_3)
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  ldc.i4.0
    IL_0009:  ble.s      IL_0078

    IL_000b:  ldloca.s   V_1
    IL_000d:  ldc.r4     0.5
    IL_0012:  ldc.r4     0.15000001
    IL_0017:  ldc.r4     0.5
    IL_001c:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0021:  ldc.r4     0.2
    IL_0026:  ldc.r4     0.5
    IL_002b:  ldloc.0
    IL_002c:  conv.r4
    IL_002d:  ldc.r4     15.
    IL_0032:  div
    IL_0033:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0038:  stloc.2
    IL_0039:  ldarg.2
    IL_003a:  conv.r4
    IL_003b:  ldarg.3
    IL_003c:  conv.r4
    IL_003d:  ldarg.s    z
    IL_003f:  conv.r4
    IL_0040:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0045:  ldloc.1
    IL_0046:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_004b:  ldloc.2
    IL_004c:  ldc.r4     256.
    IL_0051:  newobj     instance void Game.FireParticleSystem::.ctor(valuetype [Engine]Engine.Vector3,
                                                                      float32,
                                                                      float32)
    IL_0056:  stloc.3
    IL_0057:  ldarg.0
    IL_0058:  ldfld      class Game.SubsystemParticles Game.SubsystemCampfireBlockBehavior::m_subsystemParticles
    IL_005d:  ldloc.3
    IL_005e:  callvirt   instance void Game.SubsystemParticles::AddParticleSystem(class Game.ParticleSystemBase)
    IL_0063:  ldarg.0
    IL_0064:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.FireParticleSystem> Game.SubsystemCampfireBlockBehavior::m_particleSystemsByCell
    IL_0069:  ldarg.2
    IL_006a:  ldarg.3
    IL_006b:  ldarg.s    z
    IL_006d:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0072:  ldloc.3
    IL_0073:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.FireParticleSystem>::set_Item(!0,
                                                                                                                                                                                  !1)
    IL_0078:  ret
  } // end of method SubsystemCampfireBlockBehavior::AddCampfireParticleSystem

  .method private hidebysig instance void 
          RemoveCampfireParticleSystem(int32 x,
                                       int32 y,
                                       int32 z) cil managed
  {
    // 代码大小       47 (0x2f)
    .maxstack  4
    .locals init (valuetype [Engine]Engine.Point3 V_0,
             class Game.FireParticleSystem V_1)
    IL_0000:  ldloca.s   V_0
    IL_0002:  ldarg.1
    IL_0003:  ldarg.2
    IL_0004:  ldarg.3
    IL_0005:  call       instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_000a:  ldarg.0
    IL_000b:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.FireParticleSystem> Game.SubsystemCampfireBlockBehavior::m_particleSystemsByCell
    IL_0010:  ldloc.0
    IL_0011:  ldloca.s   V_1
    IL_0013:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.FireParticleSystem>::TryGetValue(!0,
                                                                                                                                                                                     !1&)
    IL_0018:  brfalse.s  IL_002e

    IL_001a:  ldloc.1
    IL_001b:  ldc.i4.1
    IL_001c:  callvirt   instance void Game.FireParticleSystem::set_IsStopped(bool)
    IL_0021:  ldarg.0
    IL_0022:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.FireParticleSystem> Game.SubsystemCampfireBlockBehavior::m_particleSystemsByCell
    IL_0027:  ldloc.0
    IL_0028:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.FireParticleSystem>::Remove(!0)
    IL_002d:  pop
    IL_002e:  ret
  } // end of method SubsystemCampfireBlockBehavior::RemoveCampfireParticleSystem

  .method private hidebysig instance bool 
          AddFuel(int32 x,
                  int32 y,
                  int32 z,
                  int32 'value',
                  int32 count) cil managed
  {
    // 代码大小       202 (0xca)
    .maxstack  6
    .locals init (int32 V_0,
             class Game.Block V_1,
             int32 V_2,
             float32 V_3)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0006:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_000b:  ldarg.1
    IL_000c:  ldarg.2
    IL_000d:  ldarg.3
    IL_000e:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_0013:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0018:  ldc.i4.0
    IL_0019:  ble        IL_00c8

    IL_001e:  ldarg.s    'value'
    IL_0020:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0025:  stloc.0
    IL_0026:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_002b:  ldloc.0
    IL_002c:  ldelem.ref
    IL_002d:  stloc.1
    IL_002e:  ldarg.0
    IL_002f:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0034:  ldc.i4.1
    IL_0035:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemExplosions>(bool)
    IL_003a:  ldarg.1
    IL_003b:  ldarg.2
    IL_003c:  ldarg.3
    IL_003d:  ldarg.s    'value'
    IL_003f:  callvirt   instance bool Game.SubsystemExplosions::TryExplodeBlock(int32,
                                                                                 int32,
                                                                                 int32,
                                                                                 int32)
    IL_0044:  brfalse.s  IL_0048

    IL_0046:  ldc.i4.1
    IL_0047:  ret

    IL_0048:  ldloc.1
    IL_0049:  isinst     Game.SnowBlock
    IL_004e:  brtrue.s   IL_0060

    IL_0050:  ldloc.1
    IL_0051:  isinst     Game.SnowballBlock
    IL_0056:  brtrue.s   IL_0060

    IL_0058:  ldloc.1
    IL_0059:  isinst     Game.IceBlock
    IL_005e:  brfalse.s  IL_006c

    IL_0060:  ldarg.0
    IL_0061:  ldarg.1
    IL_0062:  ldarg.2
    IL_0063:  ldarg.3
    IL_0064:  ldc.i4.m1
    IL_0065:  ldc.i4.1
    IL_0066:  call       instance bool Game.SubsystemCampfireBlockBehavior::ResizeCampfire(int32,
                                                                                           int32,
                                                                                           int32,
                                                                                           int32,
                                                                                           bool)
    IL_006b:  ret

    IL_006c:  ldloc.1
    IL_006d:  ldfld      float32 Game.Block::FuelHeatLevel
    IL_0072:  ldc.r4     0.0
    IL_0077:  ble.un.s   IL_00c8

    IL_0079:  ldarg.s    count
    IL_007b:  conv.r4
    IL_007c:  ldloc.1
    IL_007d:  ldfld      float32 Game.Block::FuelFireDuration
    IL_0082:  ldc.r4     20.
    IL_0087:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_008c:  mul
    IL_008d:  ldc.r4     5.
    IL_0092:  div
    IL_0093:  dup
    IL_0094:  conv.i4
    IL_0095:  stloc.2
    IL_0096:  ldloc.2
    IL_0097:  conv.r4
    IL_0098:  sub
    IL_0099:  stloc.3
    IL_009a:  ldarg.0
    IL_009b:  ldfld      class Game.Random Game.SubsystemCampfireBlockBehavior::m_random
    IL_00a0:  ldc.r4     0.0
    IL_00a5:  ldc.r4     1.
    IL_00aa:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_00af:  ldloc.3
    IL_00b0:  bge.un.s   IL_00b6

    IL_00b2:  ldloc.2
    IL_00b3:  ldc.i4.1
    IL_00b4:  add
    IL_00b5:  stloc.2
    IL_00b6:  ldloc.2
    IL_00b7:  ldc.i4.0
    IL_00b8:  ble.s      IL_00c6

    IL_00ba:  ldarg.0
    IL_00bb:  ldarg.1
    IL_00bc:  ldarg.2
    IL_00bd:  ldarg.3
    IL_00be:  ldloc.2
    IL_00bf:  ldc.i4.1
    IL_00c0:  call       instance bool Game.SubsystemCampfireBlockBehavior::ResizeCampfire(int32,
                                                                                           int32,
                                                                                           int32,
                                                                                           int32,
                                                                                           bool)
    IL_00c5:  ret

    IL_00c6:  ldc.i4.1
    IL_00c7:  ret

    IL_00c8:  ldc.i4.0
    IL_00c9:  ret
  } // end of method SubsystemCampfireBlockBehavior::AddFuel

  .method private hidebysig instance bool 
          ResizeCampfire(int32 x,
                         int32 y,
                         int32 z,
                         int32 steps,
                         bool playSound) cil managed
  {
    // 代码大小       189 (0xbd)
    .maxstack  7
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3)
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
    IL_0015:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_001a:  stloc.1
    IL_001b:  ldloc.1
    IL_001c:  ldc.i4.0
    IL_001d:  ble        IL_00bb

    IL_0022:  ldloc.1
    IL_0023:  ldarg.s    steps
    IL_0025:  add
    IL_0026:  ldc.i4.0
    IL_0027:  ldc.i4.s   15
    IL_0029:  call       int32 [Engine]Engine.MathUtils::Clamp(int32,
                                                               int32,
                                                               int32)
    IL_002e:  stloc.2
    IL_002f:  ldloc.2
    IL_0030:  ldloc.1
    IL_0031:  beq        IL_00bb

    IL_0036:  ldloc.0
    IL_0037:  ldloc.2
    IL_0038:  call       int32 Game.TerrainData::ReplaceData(int32,
                                                             int32)
    IL_003d:  stloc.3
    IL_003e:  ldarg.0
    IL_003f:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0044:  ldarg.1
    IL_0045:  ldarg.2
    IL_0046:  ldarg.3
    IL_0047:  ldloc.3
    IL_0048:  ldc.i4.1
    IL_0049:  callvirt   instance void Game.SubsystemTerrain::ChangeCell(int32,
                                                                         int32,
                                                                         int32,
                                                                         int32,
                                                                         bool)
    IL_004e:  ldarg.s    playSound
    IL_0050:  brfalse.s  IL_00b9

    IL_0052:  ldarg.s    steps
    IL_0054:  ldc.i4.0
    IL_0055:  blt.s      IL_0089

    IL_0057:  ldarg.0
    IL_0058:  ldfld      class Game.SubsystemAmbientSounds Game.SubsystemCampfireBlockBehavior::m_subsystemAmbientSounds
    IL_005d:  callvirt   instance class Game.SubsystemAudio Game.SubsystemAmbientSounds::get_SubsystemAudio()
    IL_0062:  ldstr      "Audio/BlockPlaced"
    IL_0067:  ldc.r4     1.
    IL_006c:  ldc.r4     0.0
    IL_0071:  ldarg.1
    IL_0072:  conv.r4
    IL_0073:  ldarg.2
    IL_0074:  conv.r4
    IL_0075:  ldarg.3
    IL_0076:  conv.r4
    IL_0077:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_007c:  ldc.r4     3.
    IL_0081:  ldc.i4.0
    IL_0082:  callvirt   instance void Game.SubsystemAudio::PlaySound(string,
                                                                      float32,
                                                                      float32,
                                                                      valuetype [Engine]Engine.Vector3,
                                                                      float32,
                                                                      bool)
    IL_0087:  br.s       IL_00b9

    IL_0089:  ldarg.0
    IL_008a:  ldfld      class Game.SubsystemAmbientSounds Game.SubsystemCampfireBlockBehavior::m_subsystemAmbientSounds
    IL_008f:  callvirt   instance class Game.SubsystemAudio Game.SubsystemAmbientSounds::get_SubsystemAudio()
    IL_0094:  ldstr      "Audio/Sizzles"
    IL_0099:  ldc.r4     1.
    IL_009e:  ldc.r4     0.0
    IL_00a3:  ldarg.1
    IL_00a4:  conv.r4
    IL_00a5:  ldarg.2
    IL_00a6:  conv.r4
    IL_00a7:  ldarg.3
    IL_00a8:  conv.r4
    IL_00a9:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00ae:  ldc.r4     3.
    IL_00b3:  ldc.i4.1
    IL_00b4:  callvirt   instance void Game.SubsystemAudio::PlayRandomSound(string,
                                                                            float32,
                                                                            float32,
                                                                            valuetype [Engine]Engine.Vector3,
                                                                            float32,
                                                                            bool)
    IL_00b9:  ldc.i4.1
    IL_00ba:  ret

    IL_00bb:  ldc.i4.0
    IL_00bc:  ret
  } // end of method SubsystemCampfireBlockBehavior::ResizeCampfire

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       40 (0x28)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.FireParticleSystem>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.FireParticleSystem> Game.SubsystemCampfireBlockBehavior::m_particleSystemsByCell
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void Game.Random::.ctor()
    IL_0011:  stfld      class Game.Random Game.SubsystemCampfireBlockBehavior::m_random
    IL_0016:  ldarg.0
    IL_0017:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Point3>::.ctor()
    IL_001c:  stfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Point3> Game.SubsystemCampfireBlockBehavior::m_toReduce
    IL_0021:  ldarg.0
    IL_0022:  call       instance void Game.SubsystemBlockBehavior::.ctor()
    IL_0027:  ret
  } // end of method SubsystemCampfireBlockBehavior::.ctor

  .property instance class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<valuetype [Engine]Engine.Point3,class Game.FireParticleSystem>
          Campfires()
  {
    .get instance class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<valuetype [Engine]Engine.Point3,class Game.FireParticleSystem> Game.SubsystemCampfireBlockBehavior::get_Campfires()
  } // end of property SubsystemCampfireBlockBehavior::Campfires
  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.SubsystemCampfireBlockBehavior::get_UpdateOrder()
  } // end of property SubsystemCampfireBlockBehavior::UpdateOrder
  .property instance int32[] HandledBlocks()
  {
    .get instance int32[] Game.SubsystemCampfireBlockBehavior::get_HandledBlocks()
  } // end of property SubsystemCampfireBlockBehavior::HandledBlocks
} // end of class Game.SubsystemCampfireBlockBehavior