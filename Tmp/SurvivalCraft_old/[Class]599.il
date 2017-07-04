.class public auto ansi beforefieldinit Game.SubsystemExplosivesBlockBehavior
       extends Game.SubsystemBlockBehavior
       implements Game.IUpdateable
{
  .class auto ansi nested private beforefieldinit ExplosiveData
         extends [System.Runtime]System.Object
  {
    .field public valuetype [Engine]Engine.Point3 Point
    .field public float32 TimeToExplosion
    .field public class Game.FuseParticleSystem FuseParticleSystem
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method ExplosiveData::.ctor

  } // end of class ExplosiveData

  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.SubsystemParticles m_subsystemParticles
  .field private class Game.SubsystemExplosions m_subsystemExplosions
  .field private class Game.SubsystemFireBlockBehavior m_subsystemFireBlockBehavior
  .field private class Game.SubsystemAudio m_subsystemAudio
  .field private class Game.Random m_random
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemExplosivesBlockBehavior/ExplosiveData> m_explosiveDataByPoint
  .field private class [Engine]Engine.Audio.Sound m_fuseSound
  .method public hidebysig instance bool 
          IgniteFuse(int32 x,
                     int32 y,
                     int32 z) cil managed
  {
    // 代码大小       124 (0x7c)
    .maxstack  5
    .locals init (int32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.SubsystemExplosivesBlockBehavior::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_000b:  ldarg.1
    IL_000c:  ldarg.2
    IL_000d:  ldarg.3
    IL_000e:  callvirt   instance int32 Game.Terrain::GetCellContents(int32,
                                                                      int32,
                                                                      int32)
    IL_0013:  stloc.0
    IL_0014:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0019:  ldloc.0
    IL_001a:  ldelem.ref
    IL_001b:  isinst     Game.GunpowderKegBlock
    IL_0020:  brfalse.s  IL_0047

    IL_0022:  ldarg.0
    IL_0023:  ldarg.1
    IL_0024:  ldarg.2
    IL_0025:  ldarg.3
    IL_0026:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_002b:  ldarg.0
    IL_002c:  ldfld      class Game.Random Game.SubsystemExplosivesBlockBehavior::m_random
    IL_0031:  ldc.r4     4.
    IL_0036:  ldc.r4     5.
    IL_003b:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0040:  call       instance void Game.SubsystemExplosivesBlockBehavior::AddExplosive(valuetype [Engine]Engine.Point3,
                                                                                           float32)
    IL_0045:  ldc.i4.1
    IL_0046:  ret

    IL_0047:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_004c:  ldloc.0
    IL_004d:  ldelem.ref
    IL_004e:  isinst     Game.DetonatorBlock
    IL_0053:  brfalse.s  IL_007a

    IL_0055:  ldarg.0
    IL_0056:  ldarg.1
    IL_0057:  ldarg.2
    IL_0058:  ldarg.3
    IL_0059:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_005e:  ldarg.0
    IL_005f:  ldfld      class Game.Random Game.SubsystemExplosivesBlockBehavior::m_random
    IL_0064:  ldc.r4     0.80000001
    IL_0069:  ldc.r4     1.2
    IL_006e:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0073:  call       instance void Game.SubsystemExplosivesBlockBehavior::AddExplosive(valuetype [Engine]Engine.Point3,
                                                                                           float32)
    IL_0078:  ldc.i4.1
    IL_0079:  ret

    IL_007a:  ldc.i4.0
    IL_007b:  ret
  } // end of method SubsystemExplosivesBlockBehavior::IgniteFuse

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method SubsystemExplosivesBlockBehavior::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       441 (0x1b9)
    .maxstack  6
    .locals init (float32 V_0,
             class Game.SubsystemExplosivesBlockBehavior/ExplosiveData[] V_1,
             int32 V_2,
             class Game.SubsystemExplosivesBlockBehavior/ExplosiveData V_3,
             valuetype [Engine]Engine.Point3 V_4,
             int32 V_5,
             int32 V_6,
             class Game.Block V_7,
             float32 V_8,
             class Game.GunpowderKegBlock V_9)
    IL_0000:  ldc.r4     3.4028235e+038
    IL_0005:  stloc.0
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemExplosivesBlockBehavior/ExplosiveData> Game.SubsystemExplosivesBlockBehavior::m_explosiveDataByPoint
    IL_000c:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemExplosivesBlockBehavior/ExplosiveData>::get_Count()
    IL_0011:  ldc.i4.0
    IL_0012:  ble        IL_0168

    IL_0017:  ldarg.0
    IL_0018:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemExplosivesBlockBehavior/ExplosiveData> Game.SubsystemExplosivesBlockBehavior::m_explosiveDataByPoint
    IL_001d:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemExplosivesBlockBehavior/ExplosiveData>::get_Values()
    IL_0022:  call       !!0[] [System.Linq]System.Linq.Enumerable::ToArray<class Game.SubsystemExplosivesBlockBehavior/ExplosiveData>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_0027:  stloc.1
    IL_0028:  ldc.i4.0
    IL_0029:  stloc.2
    IL_002a:  br         IL_015f

    IL_002f:  ldloc.1
    IL_0030:  ldloc.2
    IL_0031:  ldelem.ref
    IL_0032:  stloc.3
    IL_0033:  ldloc.3
    IL_0034:  ldfld      valuetype [Engine]Engine.Point3 Game.SubsystemExplosivesBlockBehavior/ExplosiveData::Point
    IL_0039:  stloc.s    V_4
    IL_003b:  ldarg.0
    IL_003c:  ldfld      class Game.SubsystemTerrain Game.SubsystemExplosivesBlockBehavior::m_subsystemTerrain
    IL_0041:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0046:  ldloc.s    V_4
    IL_0048:  ldfld      int32 [Engine]Engine.Point3::X
    IL_004d:  ldloc.s    V_4
    IL_004f:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0054:  ldloc.s    V_4
    IL_0056:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_005b:  callvirt   instance int32 Game.Terrain::GetCellValue(int32,
                                                                   int32,
                                                                   int32)
    IL_0060:  stloc.s    V_5
    IL_0062:  ldloc.s    V_5
    IL_0064:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0069:  stloc.s    V_6
    IL_006b:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0070:  ldloc.s    V_6
    IL_0072:  ldelem.ref
    IL_0073:  stloc.s    V_7
    IL_0075:  ldloc.3
    IL_0076:  ldfld      class Game.FuseParticleSystem Game.SubsystemExplosivesBlockBehavior/ExplosiveData::FuseParticleSystem
    IL_007b:  brtrue.s   IL_00cf

    IL_007d:  ldloc.s    V_7
    IL_007f:  isinst     Game.GunpowderKegBlock
    IL_0084:  stloc.s    V_9
    IL_0086:  ldloc.s    V_9
    IL_0088:  brfalse.s  IL_00cf

    IL_008a:  ldloc.3
    IL_008b:  ldloc.s    V_4
    IL_008d:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0092:  conv.r4
    IL_0093:  ldloc.s    V_4
    IL_0095:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_009a:  conv.r4
    IL_009b:  ldloc.s    V_4
    IL_009d:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_00a2:  conv.r4
    IL_00a3:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00a8:  ldloc.s    V_9
    IL_00aa:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.GunpowderKegBlock::get_FuseOffset()
    IL_00af:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00b4:  newobj     instance void Game.FuseParticleSystem::.ctor(valuetype [Engine]Engine.Vector3)
    IL_00b9:  stfld      class Game.FuseParticleSystem Game.SubsystemExplosivesBlockBehavior/ExplosiveData::FuseParticleSystem
    IL_00be:  ldarg.0
    IL_00bf:  ldfld      class Game.SubsystemParticles Game.SubsystemExplosivesBlockBehavior::m_subsystemParticles
    IL_00c4:  ldloc.3
    IL_00c5:  ldfld      class Game.FuseParticleSystem Game.SubsystemExplosivesBlockBehavior/ExplosiveData::FuseParticleSystem
    IL_00ca:  callvirt   instance void Game.SubsystemParticles::AddParticleSystem(class Game.ParticleSystemBase)
    IL_00cf:  ldloc.3
    IL_00d0:  dup
    IL_00d1:  ldfld      float32 Game.SubsystemExplosivesBlockBehavior/ExplosiveData::TimeToExplosion
    IL_00d6:  ldarg.1
    IL_00d7:  sub
    IL_00d8:  stfld      float32 Game.SubsystemExplosivesBlockBehavior/ExplosiveData::TimeToExplosion
    IL_00dd:  ldloc.3
    IL_00de:  ldfld      float32 Game.SubsystemExplosivesBlockBehavior/ExplosiveData::TimeToExplosion
    IL_00e3:  ldc.r4     0.0
    IL_00e8:  bgt.un.s   IL_0119

    IL_00ea:  ldarg.0
    IL_00eb:  ldfld      class Game.SubsystemExplosions Game.SubsystemExplosivesBlockBehavior::m_subsystemExplosions
    IL_00f0:  ldloc.3
    IL_00f1:  ldflda     valuetype [Engine]Engine.Point3 Game.SubsystemExplosivesBlockBehavior/ExplosiveData::Point
    IL_00f6:  ldfld      int32 [Engine]Engine.Point3::X
    IL_00fb:  ldloc.3
    IL_00fc:  ldflda     valuetype [Engine]Engine.Point3 Game.SubsystemExplosivesBlockBehavior/ExplosiveData::Point
    IL_0101:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0106:  ldloc.3
    IL_0107:  ldflda     valuetype [Engine]Engine.Point3 Game.SubsystemExplosivesBlockBehavior/ExplosiveData::Point
    IL_010c:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0111:  ldloc.s    V_5
    IL_0113:  callvirt   instance bool Game.SubsystemExplosions::TryExplodeBlock(int32,
                                                                                 int32,
                                                                                 int32,
                                                                                 int32)
    IL_0118:  pop
    IL_0119:  ldarg.0
    IL_011a:  ldfld      class Game.SubsystemAudio Game.SubsystemExplosivesBlockBehavior::m_subsystemAudio
    IL_011f:  ldloc.s    V_4
    IL_0121:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0126:  conv.r4
    IL_0127:  ldloc.s    V_4
    IL_0129:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_012e:  conv.r4
    IL_012f:  ldloc.s    V_4
    IL_0131:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0136:  conv.r4
    IL_0137:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_013c:  ldc.r4     0.5
    IL_0141:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32)
    IL_0146:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_014b:  callvirt   instance float32 Game.SubsystemAudio::CalculateListenerDistance(valuetype [Engine]Engine.Vector3)
    IL_0150:  stloc.s    V_8
    IL_0152:  ldloc.0
    IL_0153:  ldloc.s    V_8
    IL_0155:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_015a:  stloc.0
    IL_015b:  ldloc.2
    IL_015c:  ldc.i4.1
    IL_015d:  add
    IL_015e:  stloc.2
    IL_015f:  ldloc.2
    IL_0160:  ldloc.1
    IL_0161:  ldlen
    IL_0162:  conv.i4
    IL_0163:  blt        IL_002f

    IL_0168:  ldarg.0
    IL_0169:  ldfld      class [Engine]Engine.Audio.Sound Game.SubsystemExplosivesBlockBehavior::m_fuseSound
    IL_016e:  call       float32 Game.SettingsManager::get_SoundsVolume()
    IL_0173:  ldarg.0
    IL_0174:  ldfld      class Game.SubsystemAudio Game.SubsystemExplosivesBlockBehavior::m_subsystemAudio
    IL_0179:  ldloc.0
    IL_017a:  ldc.r4     2.
    IL_017f:  ldc.r4     2.
    IL_0184:  callvirt   instance float32 Game.SubsystemAudio::CalculateVolume(float32,
                                                                               float32,
                                                                               float32)
    IL_0189:  mul
    IL_018a:  callvirt   instance void [Engine]Engine.Audio.BaseSound::set_Volume(float32)
    IL_018f:  ldarg.0
    IL_0190:  ldfld      class [Engine]Engine.Audio.Sound Game.SubsystemExplosivesBlockBehavior::m_fuseSound
    IL_0195:  callvirt   instance float32 [Engine]Engine.Audio.BaseSound::get_Volume()
    IL_019a:  call       float32 Game.AudioManager::get_MinAudibleVolume()
    IL_019f:  ble.un.s   IL_01ad

    IL_01a1:  ldarg.0
    IL_01a2:  ldfld      class [Engine]Engine.Audio.Sound Game.SubsystemExplosivesBlockBehavior::m_fuseSound
    IL_01a7:  callvirt   instance void [Engine]Engine.Audio.BaseSound::Play()
    IL_01ac:  ret

    IL_01ad:  ldarg.0
    IL_01ae:  ldfld      class [Engine]Engine.Audio.Sound Game.SubsystemExplosivesBlockBehavior::m_fuseSound
    IL_01b3:  callvirt   instance void [Engine]Engine.Audio.BaseSound::Pause()
    IL_01b8:  ret
  } // end of method SubsystemExplosivesBlockBehavior::Update

  .method public hidebysig specialname virtual 
          instance int32[]  get_HandledBlocks() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  newarr     [System.Runtime]System.Int32
    IL_0006:  ret
  } // end of method SubsystemExplosivesBlockBehavior::get_HandledBlocks

  .method public hidebysig virtual instance void 
          OnNeighborBlockChanged(int32 x,
                                 int32 y,
                                 int32 z,
                                 int32 neighborX,
                                 int32 neighborY,
                                 int32 neighborZ) cil managed
  {
    // 代码大小       27 (0x1b)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemFireBlockBehavior Game.SubsystemExplosivesBlockBehavior::m_subsystemFireBlockBehavior
    IL_0006:  ldarg.1
    IL_0007:  ldarg.2
    IL_0008:  ldarg.3
    IL_0009:  callvirt   instance bool Game.SubsystemFireBlockBehavior::IsCellOnFire(int32,
                                                                                     int32,
                                                                                     int32)
    IL_000e:  brfalse.s  IL_001a

    IL_0010:  ldarg.0
    IL_0011:  ldarg.1
    IL_0012:  ldarg.2
    IL_0013:  ldarg.3
    IL_0014:  call       instance bool Game.SubsystemExplosivesBlockBehavior::IgniteFuse(int32,
                                                                                         int32,
                                                                                         int32)
    IL_0019:  pop
    IL_001a:  ret
  } // end of method SubsystemExplosivesBlockBehavior::OnNeighborBlockChanged

  .method public hidebysig virtual instance void 
          OnBlockRemoved(int32 'value',
                         int32 newValue,
                         int32 x,
                         int32 y,
                         int32 z) cil managed
  {
    // 代码大小       20 (0x14)
    .maxstack  4
    .locals init (valuetype [Engine]Engine.Point3 V_0)
    IL_0000:  ldloca.s   V_0
    IL_0002:  ldarg.3
    IL_0003:  ldarg.s    y
    IL_0005:  ldarg.s    z
    IL_0007:  call       instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_000c:  ldarg.0
    IL_000d:  ldloc.0
    IL_000e:  call       instance void Game.SubsystemExplosivesBlockBehavior::RemoveExplosive(valuetype [Engine]Engine.Point3)
    IL_0013:  ret
  } // end of method SubsystemExplosivesBlockBehavior::OnBlockRemoved

  .method public hidebysig virtual instance void 
          OnChunkDiscarding(class Game.TerrainChunk chunk) cil managed
  {
    // 代码大小       199 (0xc7)
    .maxstack  3
    .locals init (class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Point3> V_0,
             valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<valuetype [Engine]Engine.Point3,class Game.SubsystemExplosivesBlockBehavior/ExplosiveData> V_1,
             valuetype [Engine]Engine.Point3 V_2,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype [Engine]Engine.Point3> V_3,
             valuetype [Engine]Engine.Point3 V_4)
    IL_0000:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Point3>::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemExplosivesBlockBehavior/ExplosiveData> Game.SubsystemExplosivesBlockBehavior::m_explosiveDataByPoint
    IL_000c:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemExplosivesBlockBehavior/ExplosiveData>::get_Keys()
    IL_0011:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<valuetype [Engine]Engine.Point3,class Game.SubsystemExplosivesBlockBehavior/ExplosiveData>::GetEnumerator()
    IL_0016:  stloc.1
    .try
    {
      IL_0017:  br.s       IL_007a

      IL_0019:  ldloca.s   V_1
      IL_001b:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<valuetype [Engine]Engine.Point3,class Game.SubsystemExplosivesBlockBehavior/ExplosiveData>::get_Current()
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
      IL_007c:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<valuetype [Engine]Engine.Point3,class Game.SubsystemExplosivesBlockBehavior/ExplosiveData>::MoveNext()
      IL_0081:  brtrue.s   IL_0019

      IL_0083:  leave.s    IL_0093

    }  // end .try
    finally
    {
      IL_0085:  ldloca.s   V_1
      IL_0087:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<valuetype [Engine]Engine.Point3,class Game.SubsystemExplosivesBlockBehavior/ExplosiveData>
      IL_008d:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0092:  endfinally
    }  // end handler
    IL_0093:  ldloc.0
    IL_0094:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Point3>::GetEnumerator()
    IL_0099:  stloc.3
    .try
    {
      IL_009a:  br.s       IL_00ad

      IL_009c:  ldloca.s   V_3
      IL_009e:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype [Engine]Engine.Point3>::get_Current()
      IL_00a3:  stloc.s    V_4
      IL_00a5:  ldarg.0
      IL_00a6:  ldloc.s    V_4
      IL_00a8:  call       instance void Game.SubsystemExplosivesBlockBehavior::RemoveExplosive(valuetype [Engine]Engine.Point3)
      IL_00ad:  ldloca.s   V_3
      IL_00af:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype [Engine]Engine.Point3>::MoveNext()
      IL_00b4:  brtrue.s   IL_009c

      IL_00b6:  leave.s    IL_00c6

    }  // end .try
    finally
    {
      IL_00b8:  ldloca.s   V_3
      IL_00ba:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype [Engine]Engine.Point3>
      IL_00c0:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00c5:  endfinally
    }  // end handler
    IL_00c6:  ret
  } // end of method SubsystemExplosivesBlockBehavior::OnChunkDiscarding

  .method public hidebysig virtual instance void 
          OnExplosion(int32 'value',
                      int32 x,
                      int32 y,
                      int32 z,
                      float32 damage) cil managed
  {
    // 代码大小       90 (0x5a)
    .maxstack  4
    .locals init (int32 V_0,
             class Game.Block V_1)
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0006:  stloc.0
    IL_0007:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_000c:  ldloc.0
    IL_000d:  ldelem.ref
    IL_000e:  stloc.1
    IL_000f:  ldloc.1
    IL_0010:  ldarg.1
    IL_0011:  callvirt   instance float32 Game.Block::GetExplosionPressure(int32)
    IL_0016:  ldc.r4     0.0
    IL_001b:  ble.un.s   IL_0059

    IL_001d:  ldarg.s    damage
    IL_001f:  ldloc.1
    IL_0020:  ldfld      float32 Game.Block::ExplosionResilience
    IL_0025:  div
    IL_0026:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_002b:  ldc.r4     9.9999998e-003
    IL_0030:  ble.un.s   IL_0059

    IL_0032:  ldarg.0
    IL_0033:  ldfld      class Game.Random Game.SubsystemExplosivesBlockBehavior::m_random
    IL_0038:  ldc.r4     0.0
    IL_003d:  ldc.r4     1.
    IL_0042:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0047:  ldc.r4     0.5
    IL_004c:  bge.un.s   IL_0059

    IL_004e:  ldarg.0
    IL_004f:  ldarg.2
    IL_0050:  ldarg.3
    IL_0051:  ldarg.s    z
    IL_0053:  call       instance bool Game.SubsystemExplosivesBlockBehavior::IgniteFuse(int32,
                                                                                         int32,
                                                                                         int32)
    IL_0058:  pop
    IL_0059:  ret
  } // end of method SubsystemExplosivesBlockBehavior::OnExplosion

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       218 (0xda)
    .maxstack  3
    .locals init (class [System.Runtime]System.Collections.Generic.IEnumerator`1<object> V_0,
             valuetype [Engine]Engine.Point3 V_1,
             float32 V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void Game.SubsystemBlockBehavior::Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary)
    IL_0007:  ldarg.0
    IL_0008:  ldarg.0
    IL_0009:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_000e:  ldc.i4.1
    IL_000f:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_0014:  stfld      class Game.SubsystemTerrain Game.SubsystemExplosivesBlockBehavior::m_subsystemTerrain
    IL_0019:  ldarg.0
    IL_001a:  ldarg.0
    IL_001b:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0020:  ldc.i4.1
    IL_0021:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemParticles>(bool)
    IL_0026:  stfld      class Game.SubsystemParticles Game.SubsystemExplosivesBlockBehavior::m_subsystemParticles
    IL_002b:  ldarg.0
    IL_002c:  ldarg.0
    IL_002d:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0032:  ldc.i4.1
    IL_0033:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemExplosions>(bool)
    IL_0038:  stfld      class Game.SubsystemExplosions Game.SubsystemExplosivesBlockBehavior::m_subsystemExplosions
    IL_003d:  ldarg.0
    IL_003e:  ldarg.0
    IL_003f:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0044:  ldc.i4.1
    IL_0045:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemFireBlockBehavior>(bool)
    IL_004a:  stfld      class Game.SubsystemFireBlockBehavior Game.SubsystemExplosivesBlockBehavior::m_subsystemFireBlockBehavior
    IL_004f:  ldarg.0
    IL_0050:  ldarg.0
    IL_0051:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0056:  ldc.i4.1
    IL_0057:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemAudio>(bool)
    IL_005c:  stfld      class Game.SubsystemAudio Game.SubsystemExplosivesBlockBehavior::m_subsystemAudio
    IL_0061:  ldarg.0
    IL_0062:  ldarg.0
    IL_0063:  ldfld      class Game.SubsystemAudio Game.SubsystemExplosivesBlockBehavior::m_subsystemAudio
    IL_0068:  ldstr      "Audio/Fuse"
    IL_006d:  callvirt   instance class [Engine]Engine.Audio.Sound Game.SubsystemAudio::CreateSound(string)
    IL_0072:  stfld      class [Engine]Engine.Audio.Sound Game.SubsystemExplosivesBlockBehavior::m_fuseSound
    IL_0077:  ldarg.0
    IL_0078:  ldfld      class [Engine]Engine.Audio.Sound Game.SubsystemExplosivesBlockBehavior::m_fuseSound
    IL_007d:  ldc.i4.1
    IL_007e:  callvirt   instance void [Engine]Engine.Audio.BaseSound::set_IsLooped(bool)
    IL_0083:  ldarg.1
    IL_0084:  ldstr      "Explosives"
    IL_0089:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<class [EntitySystem]TemplatesDatabase.ValuesDictionary>(string)
    IL_008e:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<object> [EntitySystem]TemplatesDatabase.ValuesDictionary::get_Values()
    IL_0093:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<object>::GetEnumerator()
    IL_0098:  stloc.0
    .try
    {
      IL_0099:  br.s       IL_00c5

      IL_009b:  ldloc.0
      IL_009c:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<object>::get_Current()
      IL_00a1:  castclass  [EntitySystem]TemplatesDatabase.ValuesDictionary
      IL_00a6:  dup
      IL_00a7:  ldstr      "Point"
      IL_00ac:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<valuetype [Engine]Engine.Point3>(string)
      IL_00b1:  stloc.1
      IL_00b2:  ldstr      "TimeToExplosion"
      IL_00b7:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
      IL_00bc:  stloc.2
      IL_00bd:  ldarg.0
      IL_00be:  ldloc.1
      IL_00bf:  ldloc.2
      IL_00c0:  call       instance void Game.SubsystemExplosivesBlockBehavior::AddExplosive(valuetype [Engine]Engine.Point3,
                                                                                             float32)
      IL_00c5:  ldloc.0
      IL_00c6:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_00cb:  brtrue.s   IL_009b

      IL_00cd:  leave.s    IL_00d9

    }  // end .try
    finally
    {
      IL_00cf:  ldloc.0
      IL_00d0:  brfalse.s  IL_00d8

      IL_00d2:  ldloc.0
      IL_00d3:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00d8:  endfinally
    }  // end handler
    IL_00d9:  ret
  } // end of method SubsystemExplosivesBlockBehavior::Load

  .method family hidebysig virtual instance void 
          Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       151 (0x97)
    .maxstack  3
    .locals init (int32 V_0,
             class [EntitySystem]TemplatesDatabase.ValuesDictionary V_1,
             valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<valuetype [Engine]Engine.Point3,class Game.SubsystemExplosivesBlockBehavior/ExplosiveData> V_2,
             class Game.SubsystemExplosivesBlockBehavior/ExplosiveData V_3,
             class [EntitySystem]TemplatesDatabase.ValuesDictionary V_4,
             int32 V_5)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void [EntitySystem]GameEntitySystem.Subsystem::Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary)
    IL_0007:  ldc.i4.0
    IL_0008:  stloc.0
    IL_0009:  newobj     instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::.ctor()
    IL_000e:  stloc.1
    IL_000f:  ldarg.1
    IL_0010:  ldstr      "Explosives"
    IL_0015:  ldloc.1
    IL_0016:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<class [EntitySystem]TemplatesDatabase.ValuesDictionary>(string,
                                                                                                                                                          !!0)
    IL_001b:  ldarg.0
    IL_001c:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemExplosivesBlockBehavior/ExplosiveData> Game.SubsystemExplosivesBlockBehavior::m_explosiveDataByPoint
    IL_0021:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemExplosivesBlockBehavior/ExplosiveData>::get_Values()
    IL_0026:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection<valuetype [Engine]Engine.Point3,class Game.SubsystemExplosivesBlockBehavior/ExplosiveData>::GetEnumerator()
    IL_002b:  stloc.2
    .try
    {
      IL_002c:  br.s       IL_007d

      IL_002e:  ldloca.s   V_2
      IL_0030:  call       instance !1 valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<valuetype [Engine]Engine.Point3,class Game.SubsystemExplosivesBlockBehavior/ExplosiveData>::get_Current()
      IL_0035:  stloc.3
      IL_0036:  newobj     instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::.ctor()
      IL_003b:  stloc.s    V_4
      IL_003d:  ldloc.1
      IL_003e:  ldloc.0
      IL_003f:  stloc.s    V_5
      IL_0041:  ldloc.s    V_5
      IL_0043:  ldc.i4.1
      IL_0044:  add
      IL_0045:  stloc.0
      IL_0046:  ldloca.s   V_5
      IL_0048:  call       class [System.Globalization]System.Globalization.CultureInfo [System.Globalization]System.Globalization.CultureInfo::get_InvariantCulture()
      IL_004d:  call       instance string [System.Runtime]System.Int32::ToString(class [System.Runtime]System.IFormatProvider)
      IL_0052:  ldloc.s    V_4
      IL_0054:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<class [EntitySystem]TemplatesDatabase.ValuesDictionary>(string,
                                                                                                                                                            !!0)
      IL_0059:  ldloc.s    V_4
      IL_005b:  ldstr      "Point"
      IL_0060:  ldloc.3
      IL_0061:  ldfld      valuetype [Engine]Engine.Point3 Game.SubsystemExplosivesBlockBehavior/ExplosiveData::Point
      IL_0066:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<valuetype [Engine]Engine.Point3>(string,
                                                                                                                                     !!0)
      IL_006b:  ldloc.s    V_4
      IL_006d:  ldstr      "TimeToExplosion"
      IL_0072:  ldloc.3
      IL_0073:  ldfld      float32 Game.SubsystemExplosivesBlockBehavior/ExplosiveData::TimeToExplosion
      IL_0078:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<float32>(string,
                                                                                                             !!0)
      IL_007d:  ldloca.s   V_2
      IL_007f:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<valuetype [Engine]Engine.Point3,class Game.SubsystemExplosivesBlockBehavior/ExplosiveData>::MoveNext()
      IL_0084:  brtrue.s   IL_002e

      IL_0086:  leave.s    IL_0096

    }  // end .try
    finally
    {
      IL_0088:  ldloca.s   V_2
      IL_008a:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<valuetype [Engine]Engine.Point3,class Game.SubsystemExplosivesBlockBehavior/ExplosiveData>
      IL_0090:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0095:  endfinally
    }  // end handler
    IL_0096:  ret
  } // end of method SubsystemExplosivesBlockBehavior::Save

  .method public hidebysig virtual instance void 
          Dispose() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldflda     class [Engine]Engine.Audio.Sound Game.SubsystemExplosivesBlockBehavior::m_fuseSound
    IL_0006:  call       void [Engine]Engine.Utilities::Dispose<class [Engine]Engine.Audio.Sound>(!!0&)
    IL_000b:  ret
  } // end of method SubsystemExplosivesBlockBehavior::Dispose

  .method private hidebysig instance void 
          AddExplosive(valuetype [Engine]Engine.Point3 point,
                       float32 timeToExplosion) cil managed
  {
    // 代码大小       48 (0x30)
    .maxstack  3
    .locals init (class Game.SubsystemExplosivesBlockBehavior/ExplosiveData V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemExplosivesBlockBehavior/ExplosiveData> Game.SubsystemExplosivesBlockBehavior::m_explosiveDataByPoint
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemExplosivesBlockBehavior/ExplosiveData>::ContainsKey(!0)
    IL_000c:  brtrue.s   IL_002f

    IL_000e:  newobj     instance void Game.SubsystemExplosivesBlockBehavior/ExplosiveData::.ctor()
    IL_0013:  stloc.0
    IL_0014:  ldloc.0
    IL_0015:  ldarg.1
    IL_0016:  stfld      valuetype [Engine]Engine.Point3 Game.SubsystemExplosivesBlockBehavior/ExplosiveData::Point
    IL_001b:  ldloc.0
    IL_001c:  ldarg.2
    IL_001d:  stfld      float32 Game.SubsystemExplosivesBlockBehavior/ExplosiveData::TimeToExplosion
    IL_0022:  ldarg.0
    IL_0023:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemExplosivesBlockBehavior/ExplosiveData> Game.SubsystemExplosivesBlockBehavior::m_explosiveDataByPoint
    IL_0028:  ldarg.1
    IL_0029:  ldloc.0
    IL_002a:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemExplosivesBlockBehavior/ExplosiveData>::Add(!0,
                                                                                                                                                                                                         !1)
    IL_002f:  ret
  } // end of method SubsystemExplosivesBlockBehavior::AddExplosive

  .method private hidebysig instance void 
          RemoveExplosive(valuetype [Engine]Engine.Point3 point) cil managed
  {
    // 代码大小       55 (0x37)
    .maxstack  3
    .locals init (class Game.SubsystemExplosivesBlockBehavior/ExplosiveData V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemExplosivesBlockBehavior/ExplosiveData> Game.SubsystemExplosivesBlockBehavior::m_explosiveDataByPoint
    IL_0006:  ldarg.1
    IL_0007:  ldloca.s   V_0
    IL_0009:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemExplosivesBlockBehavior/ExplosiveData>::TryGetValue(!0,
                                                                                                                                                                                                                 !1&)
    IL_000e:  brfalse.s  IL_0036

    IL_0010:  ldarg.0
    IL_0011:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemExplosivesBlockBehavior/ExplosiveData> Game.SubsystemExplosivesBlockBehavior::m_explosiveDataByPoint
    IL_0016:  ldarg.1
    IL_0017:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemExplosivesBlockBehavior/ExplosiveData>::Remove(!0)
    IL_001c:  pop
    IL_001d:  ldloc.0
    IL_001e:  ldfld      class Game.FuseParticleSystem Game.SubsystemExplosivesBlockBehavior/ExplosiveData::FuseParticleSystem
    IL_0023:  brfalse.s  IL_0036

    IL_0025:  ldarg.0
    IL_0026:  ldfld      class Game.SubsystemParticles Game.SubsystemExplosivesBlockBehavior::m_subsystemParticles
    IL_002b:  ldloc.0
    IL_002c:  ldfld      class Game.FuseParticleSystem Game.SubsystemExplosivesBlockBehavior/ExplosiveData::FuseParticleSystem
    IL_0031:  callvirt   instance void Game.SubsystemParticles::RemoveParticleSystem(class Game.ParticleSystemBase)
    IL_0036:  ret
  } // end of method SubsystemExplosivesBlockBehavior::RemoveExplosive

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.Random::.ctor()
    IL_0006:  stfld      class Game.Random Game.SubsystemExplosivesBlockBehavior::m_random
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemExplosivesBlockBehavior/ExplosiveData>::.ctor()
    IL_0011:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemExplosivesBlockBehavior/ExplosiveData> Game.SubsystemExplosivesBlockBehavior::m_explosiveDataByPoint
    IL_0016:  ldarg.0
    IL_0017:  call       instance void Game.SubsystemBlockBehavior::.ctor()
    IL_001c:  ret
  } // end of method SubsystemExplosivesBlockBehavior::.ctor

  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.SubsystemExplosivesBlockBehavior::get_UpdateOrder()
  } // end of property SubsystemExplosivesBlockBehavior::UpdateOrder
  .property instance int32[] HandledBlocks()
  {
    .get instance int32[] Game.SubsystemExplosivesBlockBehavior::get_HandledBlocks()
  } // end of property SubsystemExplosivesBlockBehavior::HandledBlocks
} // end of class Game.SubsystemExplosivesBlockBehavior