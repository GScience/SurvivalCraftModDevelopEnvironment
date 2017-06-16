.class public auto ansi beforefieldinit Game.SubsystemBombBlockBehavior
       extends Game.SubsystemBlockBehavior
       implements Game.IUpdateable
{
  .field private class Game.SubsystemGameInfo m_subsystemGameInfo
  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.SubsystemBlockBehaviors m_subsystemBlockBehaviors
  .field private class Game.SubsystemExplosions m_subsystemExplosions
  .field private class Game.SubsystemProjectiles m_subsystemProjectiles
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.Projectile,bool> m_projectiles
  .method public hidebysig specialname virtual 
          instance int32[]  get_HandledBlocks() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  newarr     [System.Runtime]System.Int32
    IL_0006:  ret
  } // end of method SubsystemBombBlockBehavior::get_HandledBlocks

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       206 (0xce)
    .maxstack  3
    .locals init (valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.Projectile> V_0,
             valuetype [Engine]Engine.ReadOnlyList`1<class Game.Projectile> V_1,
             class Game.Projectile V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void Game.SubsystemBlockBehavior::Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary)
    IL_0007:  ldarg.0
    IL_0008:  ldarg.0
    IL_0009:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_000e:  ldc.i4.1
    IL_000f:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGameInfo>(bool)
    IL_0014:  stfld      class Game.SubsystemGameInfo Game.SubsystemBombBlockBehavior::m_subsystemGameInfo
    IL_0019:  ldarg.0
    IL_001a:  ldarg.0
    IL_001b:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0020:  ldc.i4.1
    IL_0021:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_0026:  stfld      class Game.SubsystemTime Game.SubsystemBombBlockBehavior::m_subsystemTime
    IL_002b:  ldarg.0
    IL_002c:  ldarg.0
    IL_002d:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0032:  ldc.i4.1
    IL_0033:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemExplosions>(bool)
    IL_0038:  stfld      class Game.SubsystemExplosions Game.SubsystemBombBlockBehavior::m_subsystemExplosions
    IL_003d:  ldarg.0
    IL_003e:  ldarg.0
    IL_003f:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0044:  ldc.i4.1
    IL_0045:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemProjectiles>(bool)
    IL_004a:  stfld      class Game.SubsystemProjectiles Game.SubsystemBombBlockBehavior::m_subsystemProjectiles
    IL_004f:  ldarg.0
    IL_0050:  ldarg.0
    IL_0051:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0056:  ldc.i4.1
    IL_0057:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemBlockBehaviors>(bool)
    IL_005c:  stfld      class Game.SubsystemBlockBehaviors Game.SubsystemBombBlockBehavior::m_subsystemBlockBehaviors
    IL_0061:  ldarg.0
    IL_0062:  ldfld      class Game.SubsystemProjectiles Game.SubsystemBombBlockBehavior::m_subsystemProjectiles
    IL_0067:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.Projectile> Game.SubsystemProjectiles::get_Projectiles()
    IL_006c:  stloc.1
    IL_006d:  ldloca.s   V_1
    IL_006f:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<class Game.Projectile>::GetEnumerator()
    IL_0074:  stloc.0
    .try
    {
      IL_0075:  br.s       IL_0086

      IL_0077:  ldloca.s   V_0
      IL_0079:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.Projectile>::get_Current()
      IL_007e:  stloc.2
      IL_007f:  ldarg.0
      IL_0080:  ldloc.2
      IL_0081:  call       instance void Game.SubsystemBombBlockBehavior::ScanProjectile(class Game.Projectile)
      IL_0086:  ldloca.s   V_0
      IL_0088:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.Projectile>::MoveNext()
      IL_008d:  brtrue.s   IL_0077

      IL_008f:  leave.s    IL_009f

    }  // end .try
    finally
    {
      IL_0091:  ldloca.s   V_0
      IL_0093:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.Projectile>
      IL_0099:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_009e:  endfinally
    }  // end handler
    IL_009f:  ldarg.0
    IL_00a0:  ldfld      class Game.SubsystemProjectiles Game.SubsystemBombBlockBehavior::m_subsystemProjectiles
    IL_00a5:  ldarg.0
    IL_00a6:  ldftn      instance void Game.SubsystemBombBlockBehavior::'<Load>b__8_0'(class Game.Projectile)
    IL_00ac:  newobj     instance void class [System.Runtime]System.Action`1<class Game.Projectile>::.ctor(object,
                                                                                                           native int)
    IL_00b1:  callvirt   instance void Game.SubsystemProjectiles::add_ProjectileAdded(class [System.Runtime]System.Action`1<class Game.Projectile>)
    IL_00b6:  ldarg.0
    IL_00b7:  ldfld      class Game.SubsystemProjectiles Game.SubsystemBombBlockBehavior::m_subsystemProjectiles
    IL_00bc:  ldarg.0
    IL_00bd:  ldftn      instance void Game.SubsystemBombBlockBehavior::'<Load>b__8_1'(class Game.Projectile)
    IL_00c3:  newobj     instance void class [System.Runtime]System.Action`1<class Game.Projectile>::.ctor(object,
                                                                                                           native int)
    IL_00c8:  callvirt   instance void Game.SubsystemProjectiles::add_ProjectileRemoved(class [System.Runtime]System.Action`1<class Game.Projectile>)
    IL_00cd:  ret
  } // end of method SubsystemBombBlockBehavior::Load

  .method private hidebysig instance void 
          ScanProjectile(class Game.Projectile projectile) cil managed
  {
    // 代码大小       156 (0x9c)
    .maxstack  7
    .locals init (int32 V_0,
             valuetype [Engine]Engine.Color V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.Projectile,bool> Game.SubsystemBombBlockBehavior::m_projectiles
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.Projectile,bool>::ContainsKey(!0)
    IL_000c:  brtrue     IL_009b

    IL_0011:  ldarg.1
    IL_0012:  ldfld      int32 Game.WorldItem::Value
    IL_0017:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_001c:  stloc.0
    IL_001d:  ldarg.0
    IL_001e:  ldfld      class Game.SubsystemBlockBehaviors Game.SubsystemBombBlockBehavior::m_subsystemBlockBehaviors
    IL_0023:  ldloc.0
    IL_0024:  callvirt   instance class Game.SubsystemBlockBehavior[] Game.SubsystemBlockBehaviors::GetBlockBehaviors(int32)
    IL_0029:  ldarg.0
    IL_002a:  call       bool [System.Linq]System.Linq.Enumerable::Contains<class Game.SubsystemBlockBehavior>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                               !!0)
    IL_002f:  brfalse.s  IL_009b

    IL_0031:  ldarg.0
    IL_0032:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.Projectile,bool> Game.SubsystemBombBlockBehavior::m_projectiles
    IL_0037:  ldarg.1
    IL_0038:  ldc.i4.1
    IL_0039:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.Projectile,bool>::Add(!0,
                                                                                                                                          !1)
    IL_003e:  ldarg.1
    IL_003f:  ldc.i4.2
    IL_0040:  stfld      valuetype Game.ProjectileStoppedAction Game.Projectile::ProjectileStoppedAction
    IL_0045:  ldloc.0
    IL_0046:  ldc.i4     0xe4
    IL_004b:  beq.s      IL_0054

    IL_004d:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0052:  br.s       IL_0068

    IL_0054:  ldc.i4     0xff
    IL_0059:  ldc.i4     0x8c
    IL_005e:  ldc.i4     0xc0
    IL_0063:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0068:  stloc.1
    IL_0069:  ldarg.0
    IL_006a:  ldfld      class Game.SubsystemProjectiles Game.SubsystemBombBlockBehavior::m_subsystemProjectiles
    IL_006f:  ldarg.1
    IL_0070:  ldc.r4     0.0
    IL_0075:  ldc.r4     0.25
    IL_007a:  ldc.r4     0.1
    IL_007f:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0084:  ldc.i4.s   20
    IL_0086:  ldc.r4     0.33000001
    IL_008b:  ldc.r4     3.4028235e+038
    IL_0090:  ldloc.1
    IL_0091:  newobj     instance void Game.SmokeTrailParticleSystem::.ctor(int32,
                                                                            float32,
                                                                            float32,
                                                                            valuetype [Engine]Engine.Color)
    IL_0096:  callvirt   instance void Game.SubsystemProjectiles::AddTrail(class Game.Projectile,
                                                                           valuetype [Engine]Engine.Vector3,
                                                                           class Game.ITrailParticleSystem)
    IL_009b:  ret
  } // end of method SubsystemBombBlockBehavior::ScanProjectile

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method SubsystemBombBlockBehavior::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       177 (0xb1)
    .maxstack  5
    .locals init (valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.Projectile,bool> V_0,
             class Game.Projectile V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTime Game.SubsystemBombBlockBehavior::m_subsystemTime
    IL_0006:  ldc.r8     0.10000000000000001
    IL_000f:  ldc.r8     0.0
    IL_0018:  callvirt   instance bool Game.SubsystemTime::PeriodicGameTimeEvent(float64,
                                                                                 float64)
    IL_001d:  brfalse    IL_00b0

    IL_0022:  ldarg.0
    IL_0023:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.Projectile,bool> Game.SubsystemBombBlockBehavior::m_projectiles
    IL_0028:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.Projectile,bool>::get_Keys()
    IL_002d:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<class Game.Projectile,bool>::GetEnumerator()
    IL_0032:  stloc.0
    .try
    {
      IL_0033:  br.s       IL_0097

      IL_0035:  ldloca.s   V_0
      IL_0037:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.Projectile,bool>::get_Current()
      IL_003c:  stloc.1
      IL_003d:  ldarg.0
      IL_003e:  ldfld      class Game.SubsystemGameInfo Game.SubsystemBombBlockBehavior::m_subsystemGameInfo
      IL_0043:  callvirt   instance float64 Game.SubsystemGameInfo::get_TotalElapsedGameTime()
      IL_0048:  ldloc.1
      IL_0049:  ldfld      float64 Game.WorldItem::CreationTime
      IL_004e:  sub
      IL_004f:  ldc.r8     5.
      IL_0058:  ble.un.s   IL_0097

      IL_005a:  ldarg.0
      IL_005b:  ldfld      class Game.SubsystemExplosions Game.SubsystemBombBlockBehavior::m_subsystemExplosions
      IL_0060:  ldloc.1
      IL_0061:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0066:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_006b:  conv.i4
      IL_006c:  ldloc.1
      IL_006d:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0072:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_0077:  conv.i4
      IL_0078:  ldloc.1
      IL_0079:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_007e:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_0083:  conv.i4
      IL_0084:  ldloc.1
      IL_0085:  ldfld      int32 Game.WorldItem::Value
      IL_008a:  callvirt   instance bool Game.SubsystemExplosions::TryExplodeBlock(int32,
                                                                                   int32,
                                                                                   int32,
                                                                                   int32)
      IL_008f:  pop
      IL_0090:  ldloc.1
      IL_0091:  ldc.i4.1
      IL_0092:  stfld      bool Game.WorldItem::ToRemove
      IL_0097:  ldloca.s   V_0
      IL_0099:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.Projectile,bool>::MoveNext()
      IL_009e:  brtrue.s   IL_0035

      IL_00a0:  leave.s    IL_00b0

    }  // end .try
    finally
    {
      IL_00a2:  ldloca.s   V_0
      IL_00a4:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.Projectile,bool>
      IL_00aa:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00af:  endfinally
    }  // end handler
    IL_00b0:  ret
  } // end of method SubsystemBombBlockBehavior::Update

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.Projectile,bool>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.Projectile,bool> Game.SubsystemBombBlockBehavior::m_projectiles
    IL_000b:  ldarg.0
    IL_000c:  call       instance void Game.SubsystemBlockBehavior::.ctor()
    IL_0011:  ret
  } // end of method SubsystemBombBlockBehavior::.ctor

  .method private hidebysig instance void 
          '<Load>b__8_0'(class Game.Projectile projectile) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void Game.SubsystemBombBlockBehavior::ScanProjectile(class Game.Projectile)
    IL_0007:  ret
  } // end of method SubsystemBombBlockBehavior::'<Load>b__8_0'

  .method private hidebysig instance void 
          '<Load>b__8_1'(class Game.Projectile projectile) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.Projectile,bool> Game.SubsystemBombBlockBehavior::m_projectiles
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.Projectile,bool>::Remove(!0)
    IL_000c:  pop
    IL_000d:  ret
  } // end of method SubsystemBombBlockBehavior::'<Load>b__8_1'

  .property instance int32[] HandledBlocks()
  {
    .get instance int32[] Game.SubsystemBombBlockBehavior::get_HandledBlocks()
  } // end of property SubsystemBombBlockBehavior::HandledBlocks
  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.SubsystemBombBlockBehavior::get_UpdateOrder()
  } // end of property SubsystemBombBlockBehavior::UpdateOrder
} // end of class Game.SubsystemBombBlockBehavior