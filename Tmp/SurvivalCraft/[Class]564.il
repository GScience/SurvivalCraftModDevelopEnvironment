.class public auto ansi beforefieldinit Game.SubsystemFireworksBlockBehavior
       extends Game.SubsystemBlockBehavior
       implements Game.IUpdateable
{
  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass14_0'
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
    } // end of method '<>c__DisplayClass14_0'::.ctor

    .method assembly hidebysig instance void 
            '<OnFiredAsProjectile>b__0'(object '<obj>') cil managed
    {
      // 代码大小       54 (0x36)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.Projectile Game.SubsystemFireworksBlockBehavior/'<>c__DisplayClass14_0'::projectile
      IL_0006:  ldfld      bool Game.WorldItem::ToRemove
      IL_000b:  brtrue.s   IL_0035

      IL_000d:  ldarg.0
      IL_000e:  ldfld      class Game.Projectile Game.SubsystemFireworksBlockBehavior/'<>c__DisplayClass14_0'::projectile
      IL_0013:  ldc.i4.1
      IL_0014:  stfld      bool Game.WorldItem::ToRemove
      IL_0019:  ldarg.0
      IL_001a:  ldfld      class Game.SubsystemFireworksBlockBehavior Game.SubsystemFireworksBlockBehavior/'<>c__DisplayClass14_0'::'<>4__this'
      IL_001f:  ldarg.0
      IL_0020:  ldfld      class Game.Projectile Game.SubsystemFireworksBlockBehavior/'<>c__DisplayClass14_0'::projectile
      IL_0025:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_002a:  ldarg.0
      IL_002b:  ldfld      int32 Game.SubsystemFireworksBlockBehavior/'<>c__DisplayClass14_0'::data
      IL_0030:  call       instance void Game.SubsystemFireworksBlockBehavior::ExplodeFireworks(valuetype [Engine]Engine.Vector3,
                                                                                                int32)
      IL_0035:  ret
    } // end of method '<>c__DisplayClass14_0'::'<OnFiredAsProjectile>b__0'

  } // end of class '<>c__DisplayClass14_0'

  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.SubsystemProjectiles m_subsystemProjectiles
  .field private class Game.SubsystemParticles m_subsystemParticles
  .field private class Game.SubsystemAudio m_subsystemAudio
  .field private class Game.SubsystemNoise m_subsystemNoise
  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.SubsystemSky m_subsystemSky
  .field private class Game.SubsystemPlayer m_subsystemPlayer
  .field private class Game.SubsystemGui m_subsystemGui
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
    // 代码大小       225 (0xe1)
    .maxstack  7
    .locals init (class Game.SubsystemFireworksBlockBehavior/'<>c__DisplayClass14_0' V_0,
             float32 V_1)
    IL_0000:  newobj     instance void Game.SubsystemFireworksBlockBehavior/'<>c__DisplayClass14_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.0
    IL_0008:  stfld      class Game.SubsystemFireworksBlockBehavior Game.SubsystemFireworksBlockBehavior/'<>c__DisplayClass14_0'::'<>4__this'
    IL_000d:  ldloc.0
    IL_000e:  ldarg.1
    IL_000f:  stfld      class Game.Projectile Game.SubsystemFireworksBlockBehavior/'<>c__DisplayClass14_0'::projectile
    IL_0014:  ldloc.0
    IL_0015:  ldloc.0
    IL_0016:  ldfld      class Game.Projectile Game.SubsystemFireworksBlockBehavior/'<>c__DisplayClass14_0'::projectile
    IL_001b:  ldfld      int32 Game.WorldItem::Value
    IL_0020:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0025:  stfld      int32 Game.SubsystemFireworksBlockBehavior/'<>c__DisplayClass14_0'::data
    IL_002a:  ldloc.0
    IL_002b:  ldfld      int32 Game.SubsystemFireworksBlockBehavior/'<>c__DisplayClass14_0'::data
    IL_0030:  call       int32 Game.FireworksBlock::GetAltitude(int32)
    IL_0035:  brfalse.s  IL_003e

    IL_0037:  ldc.r4     1.3
    IL_003c:  br.s       IL_0043

    IL_003e:  ldc.r4     0.80000001
    IL_0043:  stloc.1
    IL_0044:  ldarg.0
    IL_0045:  ldfld      class Game.SubsystemProjectiles Game.SubsystemFireworksBlockBehavior::m_subsystemProjectiles
    IL_004a:  ldloc.0
    IL_004b:  ldfld      class Game.Projectile Game.SubsystemFireworksBlockBehavior/'<>c__DisplayClass14_0'::projectile
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
    IL_0085:  ldfld      class Game.Projectile Game.SubsystemFireworksBlockBehavior/'<>c__DisplayClass14_0'::projectile
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
    IL_00a1:  ldfld      class Game.Projectile Game.SubsystemFireworksBlockBehavior/'<>c__DisplayClass14_0'::projectile
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
    IL_00ce:  ldnull
    IL_00cf:  ldloc.0
    IL_00d0:  ldftn      instance void Game.SubsystemFireworksBlockBehavior/'<>c__DisplayClass14_0'::'<OnFiredAsProjectile>b__0'(object)
    IL_00d6:  newobj     instance void class [System.Runtime]System.Action`1<object>::.ctor(object,
                                                                                            native int)
    IL_00db:  callvirt   instance void Game.SubsystemTime::QueueGameTimeDelayedExecution(float64,
                                                                                         object,
                                                                                         class [System.Runtime]System.Action`1<object>)
    IL_00e0:  ret
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
    // 代码大小       170 (0xaa)
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
    IL_008d:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemPlayer>(bool)
    IL_0092:  stfld      class Game.SubsystemPlayer Game.SubsystemFireworksBlockBehavior::m_subsystemPlayer
    IL_0097:  ldarg.0
    IL_0098:  ldarg.0
    IL_0099:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_009e:  ldc.i4.1
    IL_009f:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGui>(bool)
    IL_00a4:  stfld      class Game.SubsystemGui Game.SubsystemFireworksBlockBehavior::m_subsystemGui
    IL_00a9:  ret
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
    // 代码大小       762 (0x2fa)
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
    IL_0001:  ldfld      class Game.SubsystemPlayer Game.SubsystemFireworksBlockBehavior::m_subsystemPlayer
    IL_0006:  callvirt   instance class Game.ComponentPlayer Game.SubsystemPlayer::get_ComponentPlayer()
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  brfalse    IL_02f9

    IL_0012:  ldarg.0
    IL_0013:  ldfld      float32 Game.SubsystemFireworksBlockBehavior::m_newYearCelebrationTimeRemaining
    IL_0018:  ldc.r4     0.0
    IL_001d:  bgt.un     IL_00d5

    IL_0022:  ldarg.0
    IL_0023:  ldfld      class Game.SubsystemTime Game.SubsystemFireworksBlockBehavior::m_subsystemTime
    IL_0028:  ldc.r8     5.
    IL_0031:  ldc.r8     0.0
    IL_003a:  callvirt   instance bool Game.SubsystemTime::PeriodicRealTimeEvent(float64,
                                                                                 float64)
    IL_003f:  brfalse    IL_00d5

    IL_0044:  ldarg.0
    IL_0045:  ldfld      class Game.SubsystemSky Game.SubsystemFireworksBlockBehavior::m_subsystemSky
    IL_004a:  callvirt   instance float32 Game.SubsystemSky::get_LightIntensity()
    IL_004f:  ldc.r4     0.0
    IL_0054:  bne.un.s   IL_00d5

    IL_0056:  ldloc.0
    IL_0057:  callvirt   instance class Game.ComponentSleep Game.ComponentPlayer::get_ComponentSleep()
    IL_005c:  callvirt   instance bool Game.ComponentSleep::get_IsSleeping()
    IL_0061:  brtrue.s   IL_00d5

    IL_0063:  call       valuetype [System.Runtime]System.DateTime [System.Runtime]System.DateTime::get_Now()
    IL_0068:  stloc.1
    IL_0069:  ldloca.s   V_1
    IL_006b:  call       instance int32 [System.Runtime]System.DateTime::get_Year()
    IL_0070:  call       int32 Game.SettingsManager::get_NewYearCelebrationLastYear()
    IL_0075:  ble.s      IL_00d5

    IL_0077:  ldloca.s   V_1
    IL_0079:  call       instance int32 [System.Runtime]System.DateTime::get_Month()
    IL_007e:  ldc.i4.1
    IL_007f:  bne.un.s   IL_00d5

    IL_0081:  ldloca.s   V_1
    IL_0083:  call       instance int32 [System.Runtime]System.DateTime::get_Day()
    IL_0088:  ldc.i4.1
    IL_0089:  bne.un.s   IL_00d5

    IL_008b:  ldloca.s   V_1
    IL_008d:  call       instance int32 [System.Runtime]System.DateTime::get_Hour()
    IL_0092:  brtrue.s   IL_00d5

    IL_0094:  ldloca.s   V_1
    IL_0096:  call       instance int32 [System.Runtime]System.DateTime::get_Minute()
    IL_009b:  ldc.i4.s   59
    IL_009d:  bge.s      IL_00d5

    IL_009f:  ldloca.s   V_1
    IL_00a1:  call       instance int32 [System.Runtime]System.DateTime::get_Year()
    IL_00a6:  call       void Game.SettingsManager::set_NewYearCelebrationLastYear(int32)
    IL_00ab:  ldarg.0
    IL_00ac:  ldc.r4     180.
    IL_00b1:  stfld      float32 Game.SubsystemFireworksBlockBehavior::m_newYearCelebrationTimeRemaining
    IL_00b6:  ldarg.0
    IL_00b7:  ldfld      class Game.SubsystemGui Game.SubsystemFireworksBlockBehavior::m_subsystemGui
    IL_00bc:  ldstr      "Happy New Year!"
    IL_00c1:  ldstr      "--- Enjoy the fireworks ---"
    IL_00c6:  ldc.r4     8.
    IL_00cb:  ldc.r4     3.
    IL_00d0:  callvirt   instance void Game.SubsystemGui::DisplayLargeMessage(string,
                                                                              string,
                                                                              float32,
                                                                              float32)
    IL_00d5:  ldarg.0
    IL_00d6:  ldfld      float32 Game.SubsystemFireworksBlockBehavior::m_newYearCelebrationTimeRemaining
    IL_00db:  ldc.r4     0.0
    IL_00e0:  ble.un     IL_02f9

    IL_00e5:  ldarg.0
    IL_00e6:  ldarg.0
    IL_00e7:  ldfld      float32 Game.SubsystemFireworksBlockBehavior::m_newYearCelebrationTimeRemaining
    IL_00ec:  ldarg.1
    IL_00ed:  sub
    IL_00ee:  stfld      float32 Game.SubsystemFireworksBlockBehavior::m_newYearCelebrationTimeRemaining
    IL_00f3:  ldarg.0
    IL_00f4:  ldfld      float32 Game.SubsystemFireworksBlockBehavior::m_newYearCelebrationTimeRemaining
    IL_00f9:  ldc.r4     10.
    IL_00fe:  bgt.s      IL_0107

    IL_0100:  ldc.r4     20.
    IL_0105:  br.s       IL_0133

    IL_0107:  ldc.r4     1.
    IL_010c:  ldc.r4     7.
    IL_0111:  ldc.r4     0.5
    IL_0116:  ldc.r4     0.25
    IL_011b:  ldarg.0
    IL_011c:  ldfld      float32 Game.SubsystemFireworksBlockBehavior::m_newYearCelebrationTimeRemaining
    IL_0121:  mul
    IL_0122:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_0127:  mul
    IL_0128:  ldc.r4     0.5
    IL_012d:  add
    IL_012e:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0133:  stloc.2
    IL_0134:  ldarg.0
    IL_0135:  ldfld      class Game.Random Game.SubsystemFireworksBlockBehavior::m_random
    IL_013a:  ldc.r4     0.0
    IL_013f:  ldc.r4     1.
    IL_0144:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0149:  ldloc.2
    IL_014a:  ldarg.1
    IL_014b:  mul
    IL_014c:  bge.un     IL_02f9

    IL_0151:  ldarg.0
    IL_0152:  ldfld      class Game.Random Game.SubsystemFireworksBlockBehavior::m_random
    IL_0157:  ldc.r4     35.
    IL_015c:  ldc.r4     50.
    IL_0161:  ldc.i4.1
    IL_0162:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Random::UniformVector2(float32,
                                                                                               float32,
                                                                                               bool)
    IL_0167:  stloc.3
    IL_0168:  ldloc.0
    IL_0169:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_016e:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0173:  ldloc.3
    IL_0174:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0179:  ldc.r4     0.0
    IL_017e:  ldloc.3
    IL_017f:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0184:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0189:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_018e:  stloc.s    V_4
    IL_0190:  ldarg.0
    IL_0191:  ldfld      class Game.SubsystemTerrain Game.SubsystemFireworksBlockBehavior::m_subsystemTerrain
    IL_0196:  ldloc.s    V_4
    IL_0198:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_019d:  ldc.r4     120.
    IL_01a2:  ldloc.s    V_4
    IL_01a4:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_01a9:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_01ae:  ldloc.s    V_4
    IL_01b0:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_01b5:  ldc.r4     40.
    IL_01ba:  ldloc.s    V_4
    IL_01bc:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_01c1:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_01c6:  ldc.i4.0
    IL_01c7:  ldc.i4.1
    IL_01c8:  ldnull
    IL_01c9:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> Game.SubsystemTerrain::Raycast(valuetype [Engine]Engine.Vector3,
                                                                                                                                                  valuetype [Engine]Engine.Vector3,
                                                                                                                                                  bool,
                                                                                                                                                  bool,
                                                                                                                                                  class [System.Runtime]System.Func`3<int32,float32,bool>)
    IL_01ce:  stloc.s    V_5
    IL_01d0:  ldloca.s   V_5
    IL_01d2:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_HasValue()
    IL_01d7:  brfalse    IL_02f9

    IL_01dc:  ldc.i4.0
    IL_01dd:  stloc.s    V_6
    IL_01df:  ldloc.s    V_6
    IL_01e1:  ldarg.0
    IL_01e2:  ldfld      class Game.Random Game.SubsystemFireworksBlockBehavior::m_random
    IL_01e7:  ldc.i4.0
    IL_01e8:  ldc.i4.7
    IL_01e9:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_01ee:  call       int32 Game.FireworksBlock::SetShape(int32,
                                                             valuetype Game.FireworksBlock/Shape)
    IL_01f3:  stloc.s    V_6
    IL_01f5:  ldloc.s    V_6
    IL_01f7:  ldarg.0
    IL_01f8:  ldfld      class Game.Random Game.SubsystemFireworksBlockBehavior::m_random
    IL_01fd:  ldc.i4.0
    IL_01fe:  ldc.i4.7
    IL_01ff:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0204:  call       int32 Game.FireworksBlock::SetColor(int32,
                                                             int32)
    IL_0209:  stloc.s    V_6
    IL_020b:  ldloc.s    V_6
    IL_020d:  ldarg.0
    IL_020e:  ldfld      class Game.Random Game.SubsystemFireworksBlockBehavior::m_random
    IL_0213:  ldc.i4.0
    IL_0214:  ldc.i4.1
    IL_0215:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_021a:  call       int32 Game.FireworksBlock::SetAltitude(int32,
                                                                int32)
    IL_021f:  stloc.s    V_6
    IL_0221:  ldloc.s    V_6
    IL_0223:  ldarg.0
    IL_0224:  ldfld      class Game.Random Game.SubsystemFireworksBlockBehavior::m_random
    IL_0229:  ldc.r4     0.0
    IL_022e:  ldc.r4     1.
    IL_0233:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0238:  ldc.r4     0.25
    IL_023d:  clt
    IL_023f:  call       int32 Game.FireworksBlock::SetFlickering(int32,
                                                                  bool)
    IL_0244:  stloc.s    V_6
    IL_0246:  ldc.i4     0xd7
    IL_024b:  ldc.i4.0
    IL_024c:  ldloc.s    V_6
    IL_024e:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_0253:  stloc.s    V_7
    IL_0255:  ldloca.s   V_8
    IL_0257:  ldloca.s   V_5
    IL_0259:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_025e:  stloc.s    V_9
    IL_0260:  ldloca.s   V_9
    IL_0262:  ldflda     valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0267:  call       instance valuetype [Engine]Engine.Point3 Game.CellFace::get_Point()
    IL_026c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0271:  conv.r4
    IL_0272:  ldloca.s   V_5
    IL_0274:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_0279:  stloc.s    V_9
    IL_027b:  ldloca.s   V_9
    IL_027d:  ldflda     valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0282:  call       instance valuetype [Engine]Engine.Point3 Game.CellFace::get_Point()
    IL_0287:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_028c:  ldc.i4.1
    IL_028d:  add
    IL_028e:  conv.r4
    IL_028f:  ldloca.s   V_5
    IL_0291:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_0296:  stloc.s    V_9
    IL_0298:  ldloca.s   V_9
    IL_029a:  ldflda     valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_029f:  call       instance valuetype [Engine]Engine.Point3 Game.CellFace::get_Point()
    IL_02a4:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_02a9:  conv.r4
    IL_02aa:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_02af:  ldarg.0
    IL_02b0:  ldfld      class Game.SubsystemProjectiles Game.SubsystemFireworksBlockBehavior::m_subsystemProjectiles
    IL_02b5:  ldloc.s    V_7
    IL_02b7:  ldloc.s    V_8
    IL_02b9:  ldarg.0
    IL_02ba:  ldfld      class Game.Random Game.SubsystemFireworksBlockBehavior::m_random
    IL_02bf:  ldc.r4     -3.
    IL_02c4:  ldc.r4     3.
    IL_02c9:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_02ce:  ldc.r4     45.
    IL_02d3:  ldarg.0
    IL_02d4:  ldfld      class Game.Random Game.SubsystemFireworksBlockBehavior::m_random
    IL_02d9:  ldc.r4     -3.
    IL_02de:  ldc.r4     3.
    IL_02e3:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_02e8:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_02ed:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_02f2:  ldnull
    IL_02f3:  callvirt   instance class Game.Projectile Game.SubsystemProjectiles::FireProjectile(int32,
                                                                                                  valuetype [Engine]Engine.Vector3,
                                                                                                  valuetype [Engine]Engine.Vector3,
                                                                                                  valuetype [Engine]Engine.Vector3,
                                                                                                  class Game.ComponentCreature)
    IL_02f8:  pop
    IL_02f9:  ret
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