.class public auto ansi beforefieldinit Game.SubsystemFireworksBlockBehavior
       extends Game.SubsystemBlockBehavior
       implements Game.IUpdateable
{
  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass13_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class Game.Projectile projectile
    .field public int32 data
    .field public class Game.SubsystemFireworksBlockBehavior '<>4__this'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass13_0'::.ctor

    .method assembly hidebysig instance void 
            '<OnFiredAsProjectile>b__0'() cil managed
    {
      // 代码大小       54 (0x36)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.Projectile Game.SubsystemFireworksBlockBehavior/'<>c__DisplayClass13_0'::projectile
      IL_0006:  ldfld      bool Game.WorldItem::ToRemove
      IL_000b:  brtrue.s   IL_0035

      IL_000d:  ldarg.0
      IL_000e:  ldfld      class Game.Projectile Game.SubsystemFireworksBlockBehavior/'<>c__DisplayClass13_0'::projectile
      IL_0013:  ldc.i4.1
      IL_0014:  stfld      bool Game.WorldItem::ToRemove
      IL_0019:  ldarg.0
      IL_001a:  ldfld      class Game.SubsystemFireworksBlockBehavior Game.SubsystemFireworksBlockBehavior/'<>c__DisplayClass13_0'::'<>4__this'
      IL_001f:  ldarg.0
      IL_0020:  ldfld      class Game.Projectile Game.SubsystemFireworksBlockBehavior/'<>c__DisplayClass13_0'::projectile
      IL_0025:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_002a:  ldarg.0
      IL_002b:  ldfld      int32 Game.SubsystemFireworksBlockBehavior/'<>c__DisplayClass13_0'::data
      IL_0030:  call       instance void Game.SubsystemFireworksBlockBehavior::ExplodeFireworks(valuetype [Engine]Engine.Vector3,
                                                                                                int32)
      IL_0035:  ret
    } // end of method '<>c__DisplayClass13_0'::'<OnFiredAsProjectile>b__0'

  } // end of class '<>c__DisplayClass13_0'

  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.SubsystemProjectiles m_subsystemProjectiles
  .field private class Game.SubsystemParticles m_subsystemParticles
  .field private class Game.SubsystemAudio m_subsystemAudio
  .field private class Game.SubsystemNoise m_subsystemNoise
  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.SubsystemSky m_subsystemSky
  .field private class Game.SubsystemPlayers m_subsystemPlayers
  .field private class Game.Random m_random
  .field private float32 m_newYearCelebrationTimeRemaining
  .method public hidebysig instance void 
          ExplodeFireworks(valuetype [Engine]Engine.Vector3 position,
                           int32 data) cil managed
  {
    // 代码大小       265 (0x109)
    .maxstack  7
    .locals init (valuetype Game.FireworksBlock/Shape V_0,
             float32 V_1,
             float32 V_2,
             valuetype [Engine]Engine.Color V_3,
             int32 V_4,
             valuetype [Engine]Engine.Vector3 V_5,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> V_6)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.s    V_4
    IL_0003:  br.s       IL_0064

    IL_0005:  ldloca.s   V_5
    IL_0007:  ldarg.0
    IL_0008:  ldfld      class Game.Random Game.SubsystemFireworksBlockBehavior::m_random
    IL_000d:  ldc.r4     -3.
    IL_0012:  ldc.r4     3.
    IL_0017:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_001c:  ldc.r4     -15.
    IL_0021:  ldarg.0
    IL_0022:  ldfld      class Game.Random Game.SubsystemFireworksBlockBehavior::m_random
    IL_0027:  ldc.r4     -3.
    IL_002c:  ldc.r4     3.
    IL_0031:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0036:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_003b:  ldarg.0
    IL_003c:  ldfld      class Game.SubsystemTerrain Game.SubsystemFireworksBlockBehavior::m_subsystemTerrain
    IL_0041:  ldarg.1
    IL_0042:  ldarg.1
    IL_0043:  ldloc.s    V_5
    IL_0045:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_004a:  ldc.i4.0
    IL_004b:  ldc.i4.1
    IL_004c:  ldnull
    IL_004d:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> Game.SubsystemTerrain::Raycast(valuetype [Engine]Engine.Vector3,
                                                                                                                                                  valuetype [Engine]Engine.Vector3,
                                                                                                                                                  bool,
                                                                                                                                                  bool,
                                                                                                                                                  class [System.Runtime]System.Func`3<int32,float32,bool>)
    IL_0052:  stloc.s    V_6
    IL_0054:  ldloca.s   V_6
    IL_0056:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_HasValue()
    IL_005b:  brfalse.s  IL_005e

    IL_005d:  ret

    IL_005e:  ldloc.s    V_4
    IL_0060:  ldc.i4.1
    IL_0061:  add
    IL_0062:  stloc.s    V_4
    IL_0064:  ldloc.s    V_4
    IL_0066:  ldc.i4.3
    IL_0067:  blt.s      IL_0005

    IL_0069:  ldarg.2
    IL_006a:  call       valuetype Game.FireworksBlock/Shape Game.FireworksBlock::GetShape(int32)
    IL_006f:  stloc.0
    IL_0070:  ldarg.2
    IL_0071:  call       bool Game.FireworksBlock::GetFlickering(int32)
    IL_0076:  brtrue.s   IL_007f

    IL_0078:  ldc.r4     0.0
    IL_007d:  br.s       IL_0084

    IL_007f:  ldc.r4     0.66000003
    IL_0084:  stloc.1
    IL_0085:  ldarg.2
    IL_0086:  call       int32 Game.FireworksBlock::GetAltitude(int32)
    IL_008b:  ldc.i4.0
    IL_008c:  bgt.s      IL_0095

    IL_008e:  ldc.r4     1.
    IL_0093:  br.s       IL_009a

    IL_0095:  ldc.r4     1.1
    IL_009a:  stloc.2
    IL_009b:  ldsfld     valuetype [Engine]Engine.Color[] Game.FireworksBlock::FireworksColors
    IL_00a0:  ldarg.2
    IL_00a1:  call       int32 Game.FireworksBlock::GetColor(int32)
    IL_00a6:  ldelem     [Engine]Engine.Color
    IL_00ab:  stloc.3
    IL_00ac:  ldarg.0
    IL_00ad:  ldfld      class Game.SubsystemParticles Game.SubsystemFireworksBlockBehavior::m_subsystemParticles
    IL_00b2:  ldarg.1
    IL_00b3:  ldloc.3
    IL_00b4:  ldloc.0
    IL_00b5:  ldloc.1
    IL_00b6:  ldloc.2
    IL_00b7:  newobj     instance void Game.FireworksParticleSystem::.ctor(valuetype [Engine]Engine.Vector3,
                                                                           valuetype [Engine]Engine.Color,
                                                                           valuetype Game.FireworksBlock/Shape,
                                                                           float32,
                                                                           float32)
    IL_00bc:  callvirt   instance void Game.SubsystemParticles::AddParticleSystem(class Game.ParticleSystemBase)
    IL_00c1:  ldarg.0
    IL_00c2:  ldfld      class Game.SubsystemAudio Game.SubsystemFireworksBlockBehavior::m_subsystemAudio
    IL_00c7:  ldstr      "Audio/FireworksPop"
    IL_00cc:  ldc.r4     1.
    IL_00d1:  ldarg.0
    IL_00d2:  ldfld      class Game.Random Game.SubsystemFireworksBlockBehavior::m_random
    IL_00d7:  ldc.r4     -0.40000001
    IL_00dc:  ldc.r4     0.0
    IL_00e1:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_00e6:  ldarg.1
    IL_00e7:  ldc.r4     80.
    IL_00ec:  ldc.i4.1
    IL_00ed:  callvirt   instance void Game.SubsystemAudio::PlayRandomSound(string,
                                                                            float32,
                                                                            float32,
                                                                            valuetype [Engine]Engine.Vector3,
                                                                            float32,
                                                                            bool)
    IL_00f2:  ldarg.0
    IL_00f3:  ldfld      class Game.SubsystemNoise Game.SubsystemFireworksBlockBehavior::m_subsystemNoise
    IL_00f8:  ldarg.1
    IL_00f9:  ldc.r4     1.
    IL_00fe:  ldc.r4     60.
    IL_0103:  callvirt   instance void Game.SubsystemNoise::MakeNoise(valuetype [Engine]Engine.Vector3,
                                                                      float32,
                                                                      float32)
    IL_0108:  ret
  } // end of method SubsystemFireworksBlockBehavior::ExplodeFireworks

  .method public hidebysig specialname virtual 
          instance int32[]  get_HandledBlocks() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  newarr     [System.Runtime]System.Int32
    IL_0006:  ret
  } // end of method SubsystemFireworksBlockBehavior::get_HandledBlocks

  .method public hidebysig virtual instance void 
          OnFiredAsProjectile(class Game.Projectile projectile) cil managed
  {
    // 代码大小       224 (0xe0)
    .maxstack  7
    .locals init (class Game.SubsystemFireworksBlockBehavior/'<>c__DisplayClass13_0' V_0,
             float32 V_1)
    IL_0000:  newobj     instance void Game.SubsystemFireworksBlockBehavior/'<>c__DisplayClass13_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.0
    IL_0008:  stfld      class Game.SubsystemFireworksBlockBehavior Game.SubsystemFireworksBlockBehavior/'<>c__DisplayClass13_0'::'<>4__this'
    IL_000d:  ldloc.0
    IL_000e:  ldarg.1
    IL_000f:  stfld      class Game.Projectile Game.SubsystemFireworksBlockBehavior/'<>c__DisplayClass13_0'::projectile
    IL_0014:  ldloc.0
    IL_0015:  ldloc.0
    IL_0016:  ldfld      class Game.Projectile Game.SubsystemFireworksBlockBehavior/'<>c__DisplayClass13_0'::projectile
    IL_001b:  ldfld      int32 Game.WorldItem::Value
    IL_0020:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0025:  stfld      int32 Game.SubsystemFireworksBlockBehavior/'<>c__DisplayClass13_0'::data
    IL_002a:  ldloc.0
    IL_002b:  ldfld      int32 Game.SubsystemFireworksBlockBehavior/'<>c__DisplayClass13_0'::data
    IL_0030:  call       int32 Game.FireworksBlock::GetAltitude(int32)
    IL_0035:  brfalse.s  IL_003e

    IL_0037:  ldc.r4     1.3
    IL_003c:  br.s       IL_0043

    IL_003e:  ldc.r4     0.80000001
    IL_0043:  stloc.1
    IL_0044:  ldarg.0
    IL_0045:  ldfld      class Game.SubsystemProjectiles Game.SubsystemFireworksBlockBehavior::m_subsystemProjectiles
    IL_004a:  ldloc.0
    IL_004b:  ldfld      class Game.Projectile Game.SubsystemFireworksBlockBehavior/'<>c__DisplayClass13_0'::projectile
    IL_0050:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_0055:  newobj     instance void Game.FireworksTrailParticleSystem::.ctor()
    IL_005a:  callvirt   instance void Game.SubsystemProjectiles::AddTrail(class Game.Projectile,
                                                                           valuetype [Engine]Engine.Vector3,
                                                                           class Game.ITrailParticleSystem)
    IL_005f:  ldarg.0
    IL_0060:  ldfld      class Game.SubsystemAudio Game.SubsystemFireworksBlockBehavior::m_subsystemAudio
    IL_0065:  ldstr      "Audio/FireworksWhoosh"
    IL_006a:  ldc.r4     1.
    IL_006f:  ldarg.0
    IL_0070:  ldfld      class Game.Random Game.SubsystemFireworksBlockBehavior::m_random
    IL_0075:  ldc.r4     -0.2
    IL_007a:  ldc.r4     0.2
    IL_007f:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0084:  ldloc.0
    IL_0085:  ldfld      class Game.Projectile Game.SubsystemFireworksBlockBehavior/'<>c__DisplayClass13_0'::projectile
    IL_008a:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
    IL_008f:  ldc.r4     8.
    IL_0094:  ldc.i4.1
    IL_0095:  callvirt   instance void Game.SubsystemAudio::PlayRandomSound(string,
                                                                            float32,
                                                                            float32,
                                                                            valuetype [Engine]Engine.Vector3,
                                                                            float32,
                                                                            bool)
    IL_009a:  ldarg.0
    IL_009b:  ldfld      class Game.SubsystemNoise Game.SubsystemFireworksBlockBehavior::m_subsystemNoise
    IL_00a0:  ldloc.0
    IL_00a1:  ldfld      class Game.Projectile Game.SubsystemFireworksBlockBehavior/'<>c__DisplayClass13_0'::projectile
    IL_00a6:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
    IL_00ab:  ldc.r4     1.
    IL_00b0:  ldc.r4     10.
    IL_00b5:  callvirt   instance void Game.SubsystemNoise::MakeNoise(valuetype [Engine]Engine.Vector3,
                                                                      float32,
                                                                      float32)
    IL_00ba:  ldarg.0
    IL_00bb:  ldfld      class Game.SubsystemTime Game.SubsystemFireworksBlockBehavior::m_subsystemTime
    IL_00c0:  ldarg.0
    IL_00c1:  ldfld      class Game.SubsystemTime Game.SubsystemFireworksBlockBehavior::m_subsystemTime
    IL_00c6:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_00cb:  ldloc.1
    IL_00cc:  conv.r8
    IL_00cd:  add
    IL_00ce:  ldloc.0
    IL_00cf:  ldftn      instance void Game.SubsystemFireworksBlockBehavior/'<>c__DisplayClass13_0'::'<OnFiredAsProjectile>b__0'()
    IL_00d5:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00da:  callvirt   instance void Game.SubsystemTime::QueueGameTimeDelayedExecution(float64,
                                                                                         class [System.Runtime]System.Action)
    IL_00df:  ret
  } // end of method SubsystemFireworksBlockBehavior::OnFiredAsProjectile

  .method public hidebysig virtual instance bool 
          OnHitAsProjectile(valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace> cellFace,
                            class Game.ComponentBody componentBody,
                            class Game.WorldItem worldItem) cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.1
    IL_0001:  ret
  } // end of method SubsystemFireworksBlockBehavior::OnHitAsProjectile

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       152 (0x98)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void Game.SubsystemBlockBehavior::Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary)
    IL_0007:  ldarg.0
    IL_0008:  ldarg.0
    IL_0009:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_000e:  ldc.i4.1
    IL_000f:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_0014:  stfld      class Game.SubsystemTerrain Game.SubsystemFireworksBlockBehavior::m_subsystemTerrain
    IL_0019:  ldarg.0
    IL_001a:  ldarg.0
    IL_001b:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0020:  ldc.i4.1
    IL_0021:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemProjectiles>(bool)
    IL_0026:  stfld      class Game.SubsystemProjectiles Game.SubsystemFireworksBlockBehavior::m_subsystemProjectiles
    IL_002b:  ldarg.0
    IL_002c:  ldarg.0
    IL_002d:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0032:  ldc.i4.1
    IL_0033:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemParticles>(bool)
    IL_0038:  stfld      class Game.SubsystemParticles Game.SubsystemFireworksBlockBehavior::m_subsystemParticles
    IL_003d:  ldarg.0
    IL_003e:  ldarg.0
    IL_003f:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0044:  ldc.i4.1
    IL_0045:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemAudio>(bool)
    IL_004a:  stfld      class Game.SubsystemAudio Game.SubsystemFireworksBlockBehavior::m_subsystemAudio
    IL_004f:  ldarg.0
    IL_0050:  ldarg.0
    IL_0051:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0056:  ldc.i4.1
    IL_0057:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemNoise>(bool)
    IL_005c:  stfld      class Game.SubsystemNoise Game.SubsystemFireworksBlockBehavior::m_subsystemNoise
    IL_0061:  ldarg.0
    IL_0062:  ldarg.0
    IL_0063:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0068:  ldc.i4.1
    IL_0069:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_006e:  stfld      class Game.SubsystemTime Game.SubsystemFireworksBlockBehavior::m_subsystemTime
    IL_0073:  ldarg.0
    IL_0074:  ldarg.0
    IL_0075:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_007a:  ldc.i4.1
    IL_007b:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemSky>(bool)
    IL_0080:  stfld      class Game.SubsystemSky Game.SubsystemFireworksBlockBehavior::m_subsystemSky
    IL_0085:  ldarg.0
    IL_0086:  ldarg.0
    IL_0087:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_008c:  ldc.i4.1
    IL_008d:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemPlayers>(bool)
    IL_0092:  stfld      class Game.SubsystemPlayers Game.SubsystemFireworksBlockBehavior::m_subsystemPlayers
    IL_0097:  ret
  } // end of method SubsystemFireworksBlockBehavior::Load

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method SubsystemFireworksBlockBehavior::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       766 (0x2fe)
    .maxstack  8
    .locals init (class Game.ComponentPlayer V_0,
             valuetype [System.Runtime]System.DateTime V_1,
             float32 V_2,
             valuetype [Engine]Engine.Vector2 V_3,
             valuetype [Engine]Engine.Vector3 V_4,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> V_5,
             int32 V_6,
             int32 V_7,
             valuetype [Engine]Engine.Vector3 V_8,
             valuetype Game.TerrainRaycastResult V_9)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemPlayers Game.SubsystemFireworksBlockBehavior::m_subsystemPlayers
    IL_0006:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.ComponentPlayer> Game.SubsystemPlayers::get_ComponentPlayers()
    IL_000b:  box        valuetype [Engine]Engine.ReadOnlyList`1<class Game.ComponentPlayer>
    IL_0010:  call       !!0 [System.Linq]System.Linq.Enumerable::FirstOrDefault<class Game.ComponentPlayer>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_0015:  stloc.0
    IL_0016:  ldloc.0
    IL_0017:  brfalse    IL_02fd

    IL_001c:  ldarg.0
    IL_001d:  ldfld      float32 Game.SubsystemFireworksBlockBehavior::m_newYearCelebrationTimeRemaining
    IL_0022:  ldc.r4     0.0
    IL_0027:  bgt.un     IL_00d9

    IL_002c:  ldc.r8     5.
    IL_0035:  ldc.r8     0.0
    IL_003e:  call       bool [Engine]Engine.Time::PeriodicEvent(float64,
                                                                 float64)
    IL_0043:  brfalse    IL_00d9

    IL_0048:  ldarg.0
    IL_0049:  ldfld      class Game.SubsystemSky Game.SubsystemFireworksBlockBehavior::m_subsystemSky
    IL_004e:  callvirt   instance float32 Game.SubsystemSky::get_SkyLightIntensity()
    IL_0053:  ldc.r4     0.0
    IL_0058:  bne.un.s   IL_00d9

    IL_005a:  ldloc.0
    IL_005b:  callvirt   instance class Game.ComponentSleep Game.ComponentPlayer::get_ComponentSleep()
    IL_0060:  callvirt   instance bool Game.ComponentSleep::get_IsSleeping()
    IL_0065:  brtrue.s   IL_00d9

    IL_0067:  call       valuetype [System.Runtime]System.DateTime [System.Runtime]System.DateTime::get_Now()
    IL_006c:  stloc.1
    IL_006d:  ldloca.s   V_1
    IL_006f:  call       instance int32 [System.Runtime]System.DateTime::get_Year()
    IL_0074:  call       int32 Game.SettingsManager::get_NewYearCelebrationLastYear()
    IL_0079:  ble.s      IL_00d9

    IL_007b:  ldloca.s   V_1
    IL_007d:  call       instance int32 [System.Runtime]System.DateTime::get_Month()
    IL_0082:  ldc.i4.1
    IL_0083:  bne.un.s   IL_00d9

    IL_0085:  ldloca.s   V_1
    IL_0087:  call       instance int32 [System.Runtime]System.DateTime::get_Day()
    IL_008c:  ldc.i4.1
    IL_008d:  bne.un.s   IL_00d9

    IL_008f:  ldloca.s   V_1
    IL_0091:  call       instance int32 [System.Runtime]System.DateTime::get_Hour()
    IL_0096:  brtrue.s   IL_00d9

    IL_0098:  ldloca.s   V_1
    IL_009a:  call       instance int32 [System.Runtime]System.DateTime::get_Minute()
    IL_009f:  ldc.i4.s   59
    IL_00a1:  bge.s      IL_00d9

    IL_00a3:  ldloca.s   V_1
    IL_00a5:  call       instance int32 [System.Runtime]System.DateTime::get_Year()
    IL_00aa:  call       void Game.SettingsManager::set_NewYearCelebrationLastYear(int32)
    IL_00af:  ldarg.0
    IL_00b0:  ldc.r4     180.
    IL_00b5:  stfld      float32 Game.SubsystemFireworksBlockBehavior::m_newYearCelebrationTimeRemaining
    IL_00ba:  ldloc.0
    IL_00bb:  callvirt   instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_00c0:  ldstr      "Happy New Year!"
    IL_00c5:  ldstr      "--- Enjoy the fireworks ---"
    IL_00ca:  ldc.r4     15.
    IL_00cf:  ldc.r4     3.
    IL_00d4:  callvirt   instance void Game.ComponentGui::DisplayLargeMessage(string,
                                                                              string,
                                                                              float32,
                                                                              float32)
    IL_00d9:  ldarg.0
    IL_00da:  ldfld      float32 Game.SubsystemFireworksBlockBehavior::m_newYearCelebrationTimeRemaining
    IL_00df:  ldc.r4     0.0
    IL_00e4:  ble.un     IL_02fd

    IL_00e9:  ldarg.0
    IL_00ea:  ldarg.0
    IL_00eb:  ldfld      float32 Game.SubsystemFireworksBlockBehavior::m_newYearCelebrationTimeRemaining
    IL_00f0:  ldarg.1
    IL_00f1:  sub
    IL_00f2:  stfld      float32 Game.SubsystemFireworksBlockBehavior::m_newYearCelebrationTimeRemaining
    IL_00f7:  ldarg.0
    IL_00f8:  ldfld      float32 Game.SubsystemFireworksBlockBehavior::m_newYearCelebrationTimeRemaining
    IL_00fd:  ldc.r4     10.
    IL_0102:  bgt.s      IL_010b

    IL_0104:  ldc.r4     20.
    IL_0109:  br.s       IL_0137

    IL_010b:  ldc.r4     1.
    IL_0110:  ldc.r4     7.
    IL_0115:  ldc.r4     0.5
    IL_011a:  ldc.r4     0.25
    IL_011f:  ldarg.0
    IL_0120:  ldfld      float32 Game.SubsystemFireworksBlockBehavior::m_newYearCelebrationTimeRemaining
    IL_0125:  mul
    IL_0126:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_012b:  mul
    IL_012c:  ldc.r4     0.5
    IL_0131:  add
    IL_0132:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0137:  stloc.2
    IL_0138:  ldarg.0
    IL_0139:  ldfld      class Game.Random Game.SubsystemFireworksBlockBehavior::m_random
    IL_013e:  ldc.r4     0.0
    IL_0143:  ldc.r4     1.
    IL_0148:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_014d:  ldloc.2
    IL_014e:  ldarg.1
    IL_014f:  mul
    IL_0150:  bge.un     IL_02fd

    IL_0155:  ldarg.0
    IL_0156:  ldfld      class Game.Random Game.SubsystemFireworksBlockBehavior::m_random
    IL_015b:  ldc.r4     35.
    IL_0160:  ldc.r4     50.
    IL_0165:  ldc.i4.1
    IL_0166:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Random::UniformVector2(float32,
                                                                                               float32,
                                                                                               bool)
    IL_016b:  stloc.3
    IL_016c:  ldloc.0
    IL_016d:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0172:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0177:  ldloc.3
    IL_0178:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_017d:  ldc.r4     0.0
    IL_0182:  ldloc.3
    IL_0183:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0188:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_018d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0192:  stloc.s    V_4
    IL_0194:  ldarg.0
    IL_0195:  ldfld      class Game.SubsystemTerrain Game.SubsystemFireworksBlockBehavior::m_subsystemTerrain
    IL_019a:  ldloc.s    V_4
    IL_019c:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_01a1:  ldc.r4     120.
    IL_01a6:  ldloc.s    V_4
    IL_01a8:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_01ad:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_01b2:  ldloc.s    V_4
    IL_01b4:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_01b9:  ldc.r4     40.
    IL_01be:  ldloc.s    V_4
    IL_01c0:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_01c5:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_01ca:  ldc.i4.0
    IL_01cb:  ldc.i4.1
    IL_01cc:  ldnull
    IL_01cd:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> Game.SubsystemTerrain::Raycast(valuetype [Engine]Engine.Vector3,
                                                                                                                                                  valuetype [Engine]Engine.Vector3,
                                                                                                                                                  bool,
                                                                                                                                                  bool,
                                                                                                                                                  class [System.Runtime]System.Func`3<int32,float32,bool>)
    IL_01d2:  stloc.s    V_5
    IL_01d4:  ldloca.s   V_5
    IL_01d6:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_HasValue()
    IL_01db:  brfalse    IL_02fd

    IL_01e0:  ldc.i4.0
    IL_01e1:  stloc.s    V_6
    IL_01e3:  ldloc.s    V_6
    IL_01e5:  ldarg.0
    IL_01e6:  ldfld      class Game.Random Game.SubsystemFireworksBlockBehavior::m_random
    IL_01eb:  ldc.i4.0
    IL_01ec:  ldc.i4.7
    IL_01ed:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_01f2:  call       int32 Game.FireworksBlock::SetShape(int32,
                                                             valuetype Game.FireworksBlock/Shape)
    IL_01f7:  stloc.s    V_6
    IL_01f9:  ldloc.s    V_6
    IL_01fb:  ldarg.0
    IL_01fc:  ldfld      class Game.Random Game.SubsystemFireworksBlockBehavior::m_random
    IL_0201:  ldc.i4.0
    IL_0202:  ldc.i4.7
    IL_0203:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0208:  call       int32 Game.FireworksBlock::SetColor(int32,
                                                             int32)
    IL_020d:  stloc.s    V_6
    IL_020f:  ldloc.s    V_6
    IL_0211:  ldarg.0
    IL_0212:  ldfld      class Game.Random Game.SubsystemFireworksBlockBehavior::m_random
    IL_0217:  ldc.i4.0
    IL_0218:  ldc.i4.1
    IL_0219:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_021e:  call       int32 Game.FireworksBlock::SetAltitude(int32,
                                                                int32)
    IL_0223:  stloc.s    V_6
    IL_0225:  ldloc.s    V_6
    IL_0227:  ldarg.0
    IL_0228:  ldfld      class Game.Random Game.SubsystemFireworksBlockBehavior::m_random
    IL_022d:  ldc.r4     0.0
    IL_0232:  ldc.r4     1.
    IL_0237:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_023c:  ldc.r4     0.25
    IL_0241:  clt
    IL_0243:  call       int32 Game.FireworksBlock::SetFlickering(int32,
                                                                  bool)
    IL_0248:  stloc.s    V_6
    IL_024a:  ldc.i4     0xd7
    IL_024f:  ldc.i4.0
    IL_0250:  ldloc.s    V_6
    IL_0252:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_0257:  stloc.s    V_7
    IL_0259:  ldloca.s   V_8
    IL_025b:  ldloca.s   V_5
    IL_025d:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_0262:  stloc.s    V_9
    IL_0264:  ldloca.s   V_9
    IL_0266:  ldflda     valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_026b:  call       instance valuetype [Engine]Engine.Point3 Game.CellFace::get_Point()
    IL_0270:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0275:  conv.r4
    IL_0276:  ldloca.s   V_5
    IL_0278:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_027d:  stloc.s    V_9
    IL_027f:  ldloca.s   V_9
    IL_0281:  ldflda     valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0286:  call       instance valuetype [Engine]Engine.Point3 Game.CellFace::get_Point()
    IL_028b:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0290:  ldc.i4.1
    IL_0291:  add
    IL_0292:  conv.r4
    IL_0293:  ldloca.s   V_5
    IL_0295:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_029a:  stloc.s    V_9
    IL_029c:  ldloca.s   V_9
    IL_029e:  ldflda     valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_02a3:  call       instance valuetype [Engine]Engine.Point3 Game.CellFace::get_Point()
    IL_02a8:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_02ad:  conv.r4
    IL_02ae:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_02b3:  ldarg.0
    IL_02b4:  ldfld      class Game.SubsystemProjectiles Game.SubsystemFireworksBlockBehavior::m_subsystemProjectiles
    IL_02b9:  ldloc.s    V_7
    IL_02bb:  ldloc.s    V_8
    IL_02bd:  ldarg.0
    IL_02be:  ldfld      class Game.Random Game.SubsystemFireworksBlockBehavior::m_random
    IL_02c3:  ldc.r4     -3.
    IL_02c8:  ldc.r4     3.
    IL_02cd:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_02d2:  ldc.r4     45.
    IL_02d7:  ldarg.0
    IL_02d8:  ldfld      class Game.Random Game.SubsystemFireworksBlockBehavior::m_random
    IL_02dd:  ldc.r4     -3.
    IL_02e2:  ldc.r4     3.
    IL_02e7:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_02ec:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_02f1:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_02f6:  ldnull
    IL_02f7:  callvirt   instance class Game.Projectile Game.SubsystemProjectiles::FireProjectile(int32,
                                                                                                  valuetype [Engine]Engine.Vector3,
                                                                                                  valuetype [Engine]Engine.Vector3,
                                                                                                  valuetype [Engine]Engine.Vector3,
                                                                                                  class Game.ComponentCreature)
    IL_02fc:  pop
    IL_02fd:  ret
  } // end of method SubsystemFireworksBlockBehavior::Update

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.Random::.ctor()
    IL_0006:  stfld      class Game.Random Game.SubsystemFireworksBlockBehavior::m_random
    IL_000b:  ldarg.0
    IL_000c:  call       instance void Game.SubsystemBlockBehavior::.ctor()
    IL_0011:  ret
  } // end of method SubsystemFireworksBlockBehavior::.ctor

  .property instance int32[] HandledBlocks()
  {
    .get instance int32[] Game.SubsystemFireworksBlockBehavior::get_HandledBlocks()
  } // end of property SubsystemFireworksBlockBehavior::HandledBlocks
  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.SubsystemFireworksBlockBehavior::get_UpdateOrder()
  } // end of property SubsystemFireworksBlockBehavior::UpdateOrder
} // end of class Game.SubsystemFireworksBlockBehavior