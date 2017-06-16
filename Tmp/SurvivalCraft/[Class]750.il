.class public auto ansi beforefieldinit Game.SubsystemProjectiles
       extends [EntitySystem]GameEntitySystem.Subsystem
       implements Game.IUpdateable,
                  Game.IDrawable
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.SubsystemProjectiles/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`3<int32,float32,bool> '<>9__29_0'
    .field public static class [System.Runtime]System.Func`3<class Game.ComponentBody,float32,bool> '<>9__38_0'
    .field public static class [System.Runtime]System.Func`3<int32,float32,bool> '<>9__38_1'
    .field public static class [System.Runtime]System.Func`3<int32,float32,bool> '<>9__38_2'
    .field public static class [System.Runtime]System.Func`2<object,bool> '<>9__39_0'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.SubsystemProjectiles/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.SubsystemProjectiles/'<>c' Game.SubsystemProjectiles/'<>c'::'<>9'
      IL_000a:  ret
    } // end of method '<>c'::.cctor

    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c'::.ctor

    .method assembly hidebysig instance bool 
            '<FireProjectile>b__29_0'(int32 testValue,
                                      float32 distance) cil managed
    {
      // 代码大小       18 (0x12)
      .maxstack  8
      IL_0000:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
      IL_0005:  ldarg.1
      IL_0006:  call       int32 Game.TerrainData::ExtractContents(int32)
      IL_000b:  ldelem.ref
      IL_000c:  ldfld      bool Game.Block::IsCollidable
      IL_0011:  ret
    } // end of method '<>c'::'<FireProjectile>b__29_0'

    .method assembly hidebysig instance bool 
            '<Update>b__38_0'(class Game.ComponentBody body,
                              float32 distance) cil managed
    {
      // 代码大小       2 (0x2)
      .maxstack  8
      IL_0000:  ldc.i4.1
      IL_0001:  ret
    } // end of method '<>c'::'<Update>b__38_0'

    .method assembly hidebysig instance bool 
            '<Update>b__38_1'(int32 'value',
                              float32 distance) cil managed
    {
      // 代码大小       18 (0x12)
      .maxstack  8
      IL_0000:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
      IL_0005:  ldarg.1
      IL_0006:  call       int32 Game.TerrainData::ExtractContents(int32)
      IL_000b:  ldelem.ref
      IL_000c:  ldfld      bool Game.Block::IsCollidable
      IL_0011:  ret
    } // end of method '<>c'::'<Update>b__38_1'

    .method assembly hidebysig instance bool 
            '<Update>b__38_2'(int32 'value',
                              float32 distance) cil managed
    {
      // 代码大小       2 (0x2)
      .maxstack  8
      IL_0000:  ldc.i4.1
      IL_0001:  ret
    } // end of method '<>c'::'<Update>b__38_2'

    .method assembly hidebysig instance bool 
            '<Load>b__39_0'(object v) cil managed
    {
      // 代码大小       10 (0xa)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  isinst     [EntitySystem]TemplatesDatabase.ValuesDictionary
      IL_0006:  ldnull
      IL_0007:  cgt.un
      IL_0009:  ret
    } // end of method '<>c'::'<Load>b__39_0'

  } // end of class '<>c'

  .field private class Game.SubsystemAudio m_subsystemAudio
  .field private class Game.SubsystemSoundMaterials m_subsystemSoundMaterials
  .field private class Game.SubsystemParticles m_subsystemParticles
  .field private class Game.SubsystemPickables m_subsystemPickables
  .field private class Game.SubsystemBodies m_subsystemBodies
  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.SubsystemSky m_subsystemSky
  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.SubsystemNoise m_subsystemNoise
  .field private class Game.SubsystemExplosions m_subsystemExplosions
  .field private class Game.SubsystemGameInfo m_subsystemGameInfo
  .field private class Game.SubsystemBlockBehaviors m_subsystemBlockBehaviors
  .field private class Game.SubsystemFluidBlockBehavior m_subsystemFluidBlockBehavior
  .field private class Game.SubsystemFireBlockBehavior m_subsystemFireBlockBehavior
  .field private class [System.Collections]System.Collections.Generic.List`1<class Game.Projectile> m_projectiles
  .field private class [System.Collections]System.Collections.Generic.List`1<class Game.Projectile> m_projectilesToRemove
  .field private class [Engine]Engine.Graphics.PrimitivesRenderer3D m_primitivesRenderer
  .field private class Game.Random m_random
  .field private class Game.DrawBlockEnvironmentData m_drawBlockEnvironmentData
  .field private static literal float32 BodyInflateAmount = float32(0.2)
  .field private class [System.Runtime]System.Action`1<class Game.Projectile> ProjectileAdded
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class [System.Runtime]System.Action`1<class Game.Projectile> ProjectileRemoved
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static int32[] m_drawOrders
  .method public hidebysig specialname instance void 
          add_ProjectileAdded(class [System.Runtime]System.Action`1<class Game.Projectile> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       41 (0x29)
    .maxstack  3
    .locals init (class [System.Runtime]System.Action`1<class Game.Projectile> V_0,
             class [System.Runtime]System.Action`1<class Game.Projectile> V_1,
             class [System.Runtime]System.Action`1<class Game.Projectile> V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Runtime]System.Action`1<class Game.Projectile> Game.SubsystemProjectiles::ProjectileAdded
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  stloc.1
    IL_0009:  ldloc.1
    IL_000a:  ldarg.1
    IL_000b:  call       class [System.Runtime]System.Delegate [System.Runtime]System.Delegate::Combine(class [System.Runtime]System.Delegate,
                                                                                                        class [System.Runtime]System.Delegate)
    IL_0010:  castclass  class [System.Runtime]System.Action`1<class Game.Projectile>
    IL_0015:  stloc.2
    IL_0016:  ldarg.0
    IL_0017:  ldflda     class [System.Runtime]System.Action`1<class Game.Projectile> Game.SubsystemProjectiles::ProjectileAdded
    IL_001c:  ldloc.2
    IL_001d:  ldloc.1
    IL_001e:  call       !!0 [System.Threading]System.Threading.Interlocked::CompareExchange<class [System.Runtime]System.Action`1<class Game.Projectile>>(!!0&,
                                                                                                                                                           !!0,
                                                                                                                                                           !!0)
    IL_0023:  stloc.0
    IL_0024:  ldloc.0
    IL_0025:  ldloc.1
    IL_0026:  bne.un.s   IL_0007

    IL_0028:  ret
  } // end of method SubsystemProjectiles::add_ProjectileAdded

  .method public hidebysig specialname instance void 
          remove_ProjectileAdded(class [System.Runtime]System.Action`1<class Game.Projectile> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       41 (0x29)
    .maxstack  3
    .locals init (class [System.Runtime]System.Action`1<class Game.Projectile> V_0,
             class [System.Runtime]System.Action`1<class Game.Projectile> V_1,
             class [System.Runtime]System.Action`1<class Game.Projectile> V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Runtime]System.Action`1<class Game.Projectile> Game.SubsystemProjectiles::ProjectileAdded
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  stloc.1
    IL_0009:  ldloc.1
    IL_000a:  ldarg.1
    IL_000b:  call       class [System.Runtime]System.Delegate [System.Runtime]System.Delegate::Remove(class [System.Runtime]System.Delegate,
                                                                                                       class [System.Runtime]System.Delegate)
    IL_0010:  castclass  class [System.Runtime]System.Action`1<class Game.Projectile>
    IL_0015:  stloc.2
    IL_0016:  ldarg.0
    IL_0017:  ldflda     class [System.Runtime]System.Action`1<class Game.Projectile> Game.SubsystemProjectiles::ProjectileAdded
    IL_001c:  ldloc.2
    IL_001d:  ldloc.1
    IL_001e:  call       !!0 [System.Threading]System.Threading.Interlocked::CompareExchange<class [System.Runtime]System.Action`1<class Game.Projectile>>(!!0&,
                                                                                                                                                           !!0,
                                                                                                                                                           !!0)
    IL_0023:  stloc.0
    IL_0024:  ldloc.0
    IL_0025:  ldloc.1
    IL_0026:  bne.un.s   IL_0007

    IL_0028:  ret
  } // end of method SubsystemProjectiles::remove_ProjectileAdded

  .method public hidebysig specialname instance void 
          add_ProjectileRemoved(class [System.Runtime]System.Action`1<class Game.Projectile> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       41 (0x29)
    .maxstack  3
    .locals init (class [System.Runtime]System.Action`1<class Game.Projectile> V_0,
             class [System.Runtime]System.Action`1<class Game.Projectile> V_1,
             class [System.Runtime]System.Action`1<class Game.Projectile> V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Runtime]System.Action`1<class Game.Projectile> Game.SubsystemProjectiles::ProjectileRemoved
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  stloc.1
    IL_0009:  ldloc.1
    IL_000a:  ldarg.1
    IL_000b:  call       class [System.Runtime]System.Delegate [System.Runtime]System.Delegate::Combine(class [System.Runtime]System.Delegate,
                                                                                                        class [System.Runtime]System.Delegate)
    IL_0010:  castclass  class [System.Runtime]System.Action`1<class Game.Projectile>
    IL_0015:  stloc.2
    IL_0016:  ldarg.0
    IL_0017:  ldflda     class [System.Runtime]System.Action`1<class Game.Projectile> Game.SubsystemProjectiles::ProjectileRemoved
    IL_001c:  ldloc.2
    IL_001d:  ldloc.1
    IL_001e:  call       !!0 [System.Threading]System.Threading.Interlocked::CompareExchange<class [System.Runtime]System.Action`1<class Game.Projectile>>(!!0&,
                                                                                                                                                           !!0,
                                                                                                                                                           !!0)
    IL_0023:  stloc.0
    IL_0024:  ldloc.0
    IL_0025:  ldloc.1
    IL_0026:  bne.un.s   IL_0007

    IL_0028:  ret
  } // end of method SubsystemProjectiles::add_ProjectileRemoved

  .method public hidebysig specialname instance void 
          remove_ProjectileRemoved(class [System.Runtime]System.Action`1<class Game.Projectile> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       41 (0x29)
    .maxstack  3
    .locals init (class [System.Runtime]System.Action`1<class Game.Projectile> V_0,
             class [System.Runtime]System.Action`1<class Game.Projectile> V_1,
             class [System.Runtime]System.Action`1<class Game.Projectile> V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Runtime]System.Action`1<class Game.Projectile> Game.SubsystemProjectiles::ProjectileRemoved
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  stloc.1
    IL_0009:  ldloc.1
    IL_000a:  ldarg.1
    IL_000b:  call       class [System.Runtime]System.Delegate [System.Runtime]System.Delegate::Remove(class [System.Runtime]System.Delegate,
                                                                                                       class [System.Runtime]System.Delegate)
    IL_0010:  castclass  class [System.Runtime]System.Action`1<class Game.Projectile>
    IL_0015:  stloc.2
    IL_0016:  ldarg.0
    IL_0017:  ldflda     class [System.Runtime]System.Action`1<class Game.Projectile> Game.SubsystemProjectiles::ProjectileRemoved
    IL_001c:  ldloc.2
    IL_001d:  ldloc.1
    IL_001e:  call       !!0 [System.Threading]System.Threading.Interlocked::CompareExchange<class [System.Runtime]System.Action`1<class Game.Projectile>>(!!0&,
                                                                                                                                                           !!0,
                                                                                                                                                           !!0)
    IL_0023:  stloc.0
    IL_0024:  ldloc.0
    IL_0025:  ldloc.1
    IL_0026:  bne.un.s   IL_0007

    IL_0028:  ret
  } // end of method SubsystemProjectiles::remove_ProjectileRemoved

  .method public hidebysig specialname instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.Projectile> 
          get_Projectiles() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Projectile> Game.SubsystemProjectiles::m_projectiles
    IL_0006:  newobj     instance void valuetype [Engine]Engine.ReadOnlyList`1<class Game.Projectile>::.ctor(class [System.Collections]System.Collections.Generic.List`1<!0>)
    IL_000b:  ret
  } // end of method SubsystemProjectiles::get_Projectiles

  .method public hidebysig instance class Game.Projectile 
          AddProjectile(int32 'value',
                        valuetype [Engine]Engine.Vector3 position,
                        valuetype [Engine]Engine.Vector3 velocity,
                        valuetype [Engine]Engine.Vector3 angularVelocity,
                        class Game.ComponentCreature owner) cil managed
  {
    // 代码大小       159 (0x9f)
    .maxstack  3
    .locals init (class Game.Projectile V_0)
    IL_0000:  newobj     instance void Game.Projectile::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.1
    IL_0008:  stfld      int32 Game.WorldItem::Value
    IL_000d:  ldloc.0
    IL_000e:  ldarg.2
    IL_000f:  stfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
    IL_0014:  ldloc.0
    IL_0015:  ldarg.3
    IL_0016:  stfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
    IL_001b:  ldloc.0
    IL_001c:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_0021:  stfld      valuetype [Engine]Engine.Vector3 Game.Projectile::Rotation
    IL_0026:  ldloc.0
    IL_0027:  ldarg.s    angularVelocity
    IL_0029:  stfld      valuetype [Engine]Engine.Vector3 Game.Projectile::AngularVelocity
    IL_002e:  ldloc.0
    IL_002f:  ldarg.0
    IL_0030:  ldfld      class Game.SubsystemGameInfo Game.SubsystemProjectiles::m_subsystemGameInfo
    IL_0035:  callvirt   instance float64 Game.SubsystemGameInfo::get_TotalElapsedGameTime()
    IL_003a:  stfld      float64 Game.WorldItem::CreationTime
    IL_003f:  ldloc.0
    IL_0040:  ldarg.0
    IL_0041:  ldarg.2
    IL_0042:  call       instance bool Game.SubsystemProjectiles::IsWater(valuetype [Engine]Engine.Vector3)
    IL_0047:  stfld      bool Game.Projectile::IsInWater
    IL_004c:  ldloc.0
    IL_004d:  ldarg.s    owner
    IL_004f:  stfld      class Game.ComponentCreature Game.Projectile::Owner
    IL_0054:  ldloc.0
    IL_0055:  ldc.i4.0
    IL_0056:  stfld      valuetype Game.ProjectileStoppedAction Game.Projectile::ProjectileStoppedAction
    IL_005b:  ldarg.0
    IL_005c:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Projectile> Game.SubsystemProjectiles::m_projectiles
    IL_0061:  ldloc.0
    IL_0062:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.Projectile>::Add(!0)
    IL_0067:  ldarg.0
    IL_0068:  ldfld      class [System.Runtime]System.Action`1<class Game.Projectile> Game.SubsystemProjectiles::ProjectileAdded
    IL_006d:  brfalse.s  IL_007b

    IL_006f:  ldarg.0
    IL_0070:  ldfld      class [System.Runtime]System.Action`1<class Game.Projectile> Game.SubsystemProjectiles::ProjectileAdded
    IL_0075:  ldloc.0
    IL_0076:  callvirt   instance void class [System.Runtime]System.Action`1<class Game.Projectile>::Invoke(!0)
    IL_007b:  ldarg.s    owner
    IL_007d:  brfalse.s  IL_009d

    IL_007f:  ldarg.s    owner
    IL_0081:  callvirt   instance class Game.PlayerStats Game.ComponentCreature::get_PlayerStats()
    IL_0086:  brfalse.s  IL_009d

    IL_0088:  ldarg.s    owner
    IL_008a:  callvirt   instance class Game.PlayerStats Game.ComponentCreature::get_PlayerStats()
    IL_008f:  dup
    IL_0090:  ldfld      int64 Game.PlayerStats::RangedAttacks
    IL_0095:  ldc.i4.1
    IL_0096:  conv.i8
    IL_0097:  add
    IL_0098:  stfld      int64 Game.PlayerStats::RangedAttacks
    IL_009d:  ldloc.0
    IL_009e:  ret
  } // end of method SubsystemProjectiles::AddProjectile

  .method public hidebysig instance class Game.Projectile 
          FireProjectile(int32 'value',
                         valuetype [Engine]Engine.Vector3 position,
                         valuetype [Engine]Engine.Vector3 velocity,
                         valuetype [Engine]Engine.Vector3 angularVelocity,
                         class Game.ComponentCreature owner) cil managed
  {
    // 代码大小       352 (0x160)
    .maxstack  7
    .locals init (int32 V_0,
             class Game.Block V_1,
             valuetype [Engine]Engine.Vector3 V_2,
             valuetype [Engine]Engine.Vector3 V_3,
             valuetype [Engine]Engine.Vector3 V_4,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> V_5,
             valuetype [Engine]Engine.Ray V_6,
             valuetype [Engine]Engine.BoundingBox V_7,
             valuetype [System.Runtime]System.Nullable`1<float32> V_8,
             class Game.Projectile V_9,
             class Game.SubsystemBlockBehavior[] V_10,
             int32 V_11)
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0006:  stloc.0
    IL_0007:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_000c:  ldloc.0
    IL_000d:  ldelem.ref
    IL_000e:  stloc.1
    IL_000f:  ldarg.3
    IL_0010:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0015:  stloc.2
    IL_0016:  ldarg.2
    IL_0017:  stloc.3
    IL_0018:  ldarg.s    owner
    IL_001a:  brfalse    IL_00d1

    IL_001f:  ldloca.s   V_6
    IL_0021:  ldarg.2
    IL_0022:  ldloc.2
    IL_0023:  ldc.r4     5.
    IL_0028:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_002d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0032:  ldloc.2
    IL_0033:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_0038:  call       instance void [Engine]Engine.Ray::.ctor(valuetype [Engine]Engine.Vector3,
                                                                 valuetype [Engine]Engine.Vector3)
    IL_003d:  ldarg.s    owner
    IL_003f:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0044:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.ComponentBody::get_BoundingBox()
    IL_0049:  stloc.s    V_7
    IL_004b:  ldloca.s   V_7
    IL_004d:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_0052:  dup
    IL_0053:  ldobj      [Engine]Engine.Vector3
    IL_0058:  ldc.r4     0.40000001
    IL_005d:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32)
    IL_0062:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0067:  stobj      [Engine]Engine.Vector3
    IL_006c:  ldloca.s   V_7
    IL_006e:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_0073:  dup
    IL_0074:  ldobj      [Engine]Engine.Vector3
    IL_0079:  ldc.r4     0.40000001
    IL_007e:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32)
    IL_0083:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0088:  stobj      [Engine]Engine.Vector3
    IL_008d:  ldloca.s   V_6
    IL_008f:  ldloc.s    V_7
    IL_0091:  call       instance valuetype [System.Runtime]System.Nullable`1<float32> [Engine]Engine.Ray::Intersection(valuetype [Engine]Engine.BoundingBox)
    IL_0096:  stloc.s    V_8
    IL_0098:  ldloca.s   V_8
    IL_009a:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float32>::get_HasValue()
    IL_009f:  brfalse.s  IL_00d1

    IL_00a1:  ldloca.s   V_8
    IL_00a3:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_00a8:  ldc.r4     0.0
    IL_00ad:  bne.un.s   IL_00b1

    IL_00af:  ldnull
    IL_00b0:  ret

    IL_00b1:  ldarg.2
    IL_00b2:  ldloc.2
    IL_00b3:  ldc.r4     5.
    IL_00b8:  ldloca.s   V_8
    IL_00ba:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_00bf:  sub
    IL_00c0:  ldc.r4     0.1
    IL_00c5:  add
    IL_00c6:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_00cb:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00d0:  stloc.3
    IL_00d1:  ldloc.3
    IL_00d2:  ldloc.2
    IL_00d3:  ldloc.1
    IL_00d4:  ldfld      float32 Game.Block::ProjectileTipOffset
    IL_00d9:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_00de:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00e3:  stloc.s    V_4
    IL_00e5:  ldarg.0
    IL_00e6:  ldfld      class Game.SubsystemTerrain Game.SubsystemProjectiles::m_subsystemTerrain
    IL_00eb:  ldarg.2
    IL_00ec:  ldloc.s    V_4
    IL_00ee:  ldc.i4.0
    IL_00ef:  ldc.i4.1
    IL_00f0:  ldsfld     class [System.Runtime]System.Func`3<int32,float32,bool> Game.SubsystemProjectiles/'<>c'::'<>9__29_0'
    IL_00f5:  dup
    IL_00f6:  brtrue.s   IL_010f

    IL_00f8:  pop
    IL_00f9:  ldsfld     class Game.SubsystemProjectiles/'<>c' Game.SubsystemProjectiles/'<>c'::'<>9'
    IL_00fe:  ldftn      instance bool Game.SubsystemProjectiles/'<>c'::'<FireProjectile>b__29_0'(int32,
                                                                                                  float32)
    IL_0104:  newobj     instance void class [System.Runtime]System.Func`3<int32,float32,bool>::.ctor(object,
                                                                                                      native int)
    IL_0109:  dup
    IL_010a:  stsfld     class [System.Runtime]System.Func`3<int32,float32,bool> Game.SubsystemProjectiles/'<>c'::'<>9__29_0'
    IL_010f:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> Game.SubsystemTerrain::Raycast(valuetype [Engine]Engine.Vector3,
                                                                                                                                                  valuetype [Engine]Engine.Vector3,
                                                                                                                                                  bool,
                                                                                                                                                  bool,
                                                                                                                                                  class [System.Runtime]System.Func`3<int32,float32,bool>)
    IL_0114:  stloc.s    V_5
    IL_0116:  ldloca.s   V_5
    IL_0118:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_HasValue()
    IL_011d:  brtrue.s   IL_015e

    IL_011f:  ldarg.0
    IL_0120:  ldarg.1
    IL_0121:  ldloc.3
    IL_0122:  ldarg.3
    IL_0123:  ldarg.s    angularVelocity
    IL_0125:  ldarg.s    owner
    IL_0127:  call       instance class Game.Projectile Game.SubsystemProjectiles::AddProjectile(int32,
                                                                                                 valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3,
                                                                                                 class Game.ComponentCreature)
    IL_012c:  stloc.s    V_9
    IL_012e:  ldarg.0
    IL_012f:  ldfld      class Game.SubsystemBlockBehaviors Game.SubsystemProjectiles::m_subsystemBlockBehaviors
    IL_0134:  ldloc.0
    IL_0135:  callvirt   instance class Game.SubsystemBlockBehavior[] Game.SubsystemBlockBehaviors::GetBlockBehaviors(int32)
    IL_013a:  stloc.s    V_10
    IL_013c:  ldc.i4.0
    IL_013d:  stloc.s    V_11
    IL_013f:  br.s       IL_0153

    IL_0141:  ldloc.s    V_10
    IL_0143:  ldloc.s    V_11
    IL_0145:  ldelem.ref
    IL_0146:  ldloc.s    V_9
    IL_0148:  callvirt   instance void Game.SubsystemBlockBehavior::OnFiredAsProjectile(class Game.Projectile)
    IL_014d:  ldloc.s    V_11
    IL_014f:  ldc.i4.1
    IL_0150:  add
    IL_0151:  stloc.s    V_11
    IL_0153:  ldloc.s    V_11
    IL_0155:  ldloc.s    V_10
    IL_0157:  ldlen
    IL_0158:  conv.i4
    IL_0159:  blt.s      IL_0141

    IL_015b:  ldloc.s    V_9
    IL_015d:  ret

    IL_015e:  ldnull
    IL_015f:  ret
  } // end of method SubsystemProjectiles::FireProjectile

  .method public hidebysig instance void 
          AddTrail(class Game.Projectile projectile,
                   valuetype [Engine]Engine.Vector3 offset,
                   class Game.ITrailParticleSystem particleSystem) cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void Game.SubsystemProjectiles::RemoveTrail(class Game.Projectile)
    IL_0007:  ldarg.1
    IL_0008:  ldarg.3
    IL_0009:  stfld      class Game.ITrailParticleSystem Game.Projectile::TrailParticleSystem
    IL_000e:  ldarg.1
    IL_000f:  ldarg.2
    IL_0010:  stfld      valuetype [Engine]Engine.Vector3 Game.Projectile::TrailOffset
    IL_0015:  ret
  } // end of method SubsystemProjectiles::AddTrail

  .method public hidebysig instance void 
          RemoveTrail(class Game.Projectile projectile) cil managed
  {
    // 代码大小       62 (0x3e)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldfld      class Game.ITrailParticleSystem Game.Projectile::TrailParticleSystem
    IL_0006:  brfalse.s  IL_003d

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.SubsystemParticles Game.SubsystemProjectiles::m_subsystemParticles
    IL_000e:  ldarg.1
    IL_000f:  ldfld      class Game.ITrailParticleSystem Game.Projectile::TrailParticleSystem
    IL_0014:  castclass  Game.ParticleSystemBase
    IL_0019:  callvirt   instance bool Game.SubsystemParticles::ContainsParticleSystem(class Game.ParticleSystemBase)
    IL_001e:  brfalse.s  IL_0036

    IL_0020:  ldarg.0
    IL_0021:  ldfld      class Game.SubsystemParticles Game.SubsystemProjectiles::m_subsystemParticles
    IL_0026:  ldarg.1
    IL_0027:  ldfld      class Game.ITrailParticleSystem Game.Projectile::TrailParticleSystem
    IL_002c:  castclass  Game.ParticleSystemBase
    IL_0031:  callvirt   instance void Game.SubsystemParticles::RemoveParticleSystem(class Game.ParticleSystemBase)
    IL_0036:  ldarg.1
    IL_0037:  ldnull
    IL_0038:  stfld      class Game.ITrailParticleSystem Game.Projectile::TrailParticleSystem
    IL_003d:  ret
  } // end of method SubsystemProjectiles::RemoveTrail

  .method public hidebysig newslot specialname virtual final 
          instance int32[]  get_DrawOrders() cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     int32[] Game.SubsystemProjectiles::m_drawOrders
    IL_0005:  ret
  } // end of method SubsystemProjectiles::get_DrawOrders

  .method public hidebysig newslot virtual final 
          instance void  Draw(class Game.SubsystemDrawing subsystemDrawing,
                              int32 drawOrder) cil managed
  {
    // 代码大小       568 (0x238)
    .maxstack  6
    .locals init (float32 V_0,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.Projectile> V_1,
             class Game.Projectile V_2,
             valuetype [Engine]Engine.Vector3 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7,
             class Game.Block V_8,
             class Game.TerrainChunk V_9,
             valuetype [Engine]Engine.Matrix V_10,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> V_11)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.DrawBlockEnvironmentData Game.SubsystemProjectiles::m_drawBlockEnvironmentData
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class Game.SubsystemTerrain Game.SubsystemProjectiles::m_subsystemTerrain
    IL_000c:  stfld      class Game.SubsystemTerrain Game.DrawBlockEnvironmentData::SubsystemTerrain
    IL_0011:  ldarg.0
    IL_0012:  ldfld      class Game.DrawBlockEnvironmentData Game.SubsystemProjectiles::m_drawBlockEnvironmentData
    IL_0017:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
    IL_001c:  stfld      valuetype [Engine]Engine.Matrix Game.DrawBlockEnvironmentData::InWorldMatrix
    IL_0021:  ldarg.0
    IL_0022:  ldfld      class Game.SubsystemSky Game.SubsystemProjectiles::m_subsystemSky
    IL_0027:  callvirt   instance float32 Game.SubsystemSky::get_VisibilityRange()
    IL_002c:  call       float32 [Engine]Engine.MathUtils::Sqr(float32)
    IL_0031:  stloc.0
    IL_0032:  ldarg.0
    IL_0033:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Projectile> Game.SubsystemProjectiles::m_projectiles
    IL_0038:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.Projectile>::GetEnumerator()
    IL_003d:  stloc.1
    .try
    {
      IL_003e:  br         IL_0209

      IL_0043:  ldloca.s   V_1
      IL_0045:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.Projectile>::get_Current()
      IL_004a:  stloc.2
      IL_004b:  ldloc.2
      IL_004c:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0051:  stloc.3
      IL_0052:  ldloc.2
      IL_0053:  ldfld      bool Game.Projectile::NoChunk
      IL_0058:  brtrue     IL_0209

      IL_005d:  ldarg.1
      IL_005e:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
      IL_0063:  ldloc.3
      IL_0064:  call       float32 [Engine]Engine.Vector3::DistanceSquared(valuetype [Engine]Engine.Vector3,
                                                                           valuetype [Engine]Engine.Vector3)
      IL_0069:  ldloc.0
      IL_006a:  bge.un     IL_0209

      IL_006f:  ldarg.1
      IL_0070:  callvirt   instance class [Engine]Engine.BoundingFrustum Game.SubsystemDrawing::get_ViewFrustum()
      IL_0075:  ldloc.3
      IL_0076:  callvirt   instance bool [Engine]Engine.BoundingFrustum::Intersection(valuetype [Engine]Engine.Vector3)
      IL_007b:  brfalse    IL_0209

      IL_0080:  ldloc.3
      IL_0081:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_0086:  conv.i4
      IL_0087:  stloc.s    V_4
      IL_0089:  ldloc.3
      IL_008a:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_008f:  conv.i4
      IL_0090:  stloc.s    V_5
      IL_0092:  ldloc.3
      IL_0093:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_0098:  conv.i4
      IL_0099:  stloc.s    V_6
      IL_009b:  ldloc.2
      IL_009c:  ldfld      int32 Game.WorldItem::Value
      IL_00a1:  call       int32 Game.TerrainData::ExtractContents(int32)
      IL_00a6:  stloc.s    V_7
      IL_00a8:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
      IL_00ad:  ldloc.s    V_7
      IL_00af:  ldelem.ref
      IL_00b0:  stloc.s    V_8
      IL_00b2:  ldarg.0
      IL_00b3:  ldfld      class Game.SubsystemTerrain Game.SubsystemProjectiles::m_subsystemTerrain
      IL_00b8:  ldloc.s    V_4
      IL_00ba:  ldloc.s    V_6
      IL_00bc:  callvirt   instance class Game.TerrainChunk Game.SubsystemTerrain::CellToChunk(int32,
                                                                                               int32)
      IL_00c1:  stloc.s    V_9
      IL_00c3:  ldloc.s    V_9
      IL_00c5:  brfalse.s  IL_0136

      IL_00c7:  ldloc.s    V_9
      IL_00c9:  ldfld      valuetype Game.TerrainChunkState Game.TerrainChunk::State
      IL_00ce:  ldc.i4.7
      IL_00cf:  blt.s      IL_0136

      IL_00d1:  ldloc.s    V_5
      IL_00d3:  ldc.i4.0
      IL_00d4:  blt.s      IL_0136

      IL_00d6:  ldloc.s    V_5
      IL_00d8:  ldc.i4.s   127
      IL_00da:  bge.s      IL_0136

      IL_00dc:  ldarg.0
      IL_00dd:  ldfld      class Game.DrawBlockEnvironmentData Game.SubsystemProjectiles::m_drawBlockEnvironmentData
      IL_00e2:  ldarg.0
      IL_00e3:  ldfld      class Game.SubsystemTerrain Game.SubsystemProjectiles::m_subsystemTerrain
      IL_00e8:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
      IL_00ed:  ldloc.s    V_4
      IL_00ef:  ldloc.s    V_6
      IL_00f1:  callvirt   instance int32 Game.TerrainData::GetHumidityFast(int32,
                                                                            int32)
      IL_00f6:  stfld      int32 Game.DrawBlockEnvironmentData::Humidity
      IL_00fb:  ldarg.0
      IL_00fc:  ldfld      class Game.DrawBlockEnvironmentData Game.SubsystemProjectiles::m_drawBlockEnvironmentData
      IL_0101:  ldarg.0
      IL_0102:  ldfld      class Game.SubsystemTerrain Game.SubsystemProjectiles::m_subsystemTerrain
      IL_0107:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
      IL_010c:  ldloc.s    V_4
      IL_010e:  ldloc.s    V_6
      IL_0110:  callvirt   instance int32 Game.TerrainData::GetTemperatureFast(int32,
                                                                               int32)
      IL_0115:  stfld      int32 Game.DrawBlockEnvironmentData::Temperature
      IL_011a:  ldloc.2
      IL_011b:  ldarg.0
      IL_011c:  ldfld      class Game.SubsystemTerrain Game.SubsystemProjectiles::m_subsystemTerrain
      IL_0121:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
      IL_0126:  ldloc.s    V_4
      IL_0128:  ldloc.s    V_5
      IL_012a:  ldloc.s    V_6
      IL_012c:  callvirt   instance int32 Game.TerrainData::GetCellLightFast(int32,
                                                                             int32,
                                                                             int32)
      IL_0131:  stfld      int32 Game.WorldItem::Light
      IL_0136:  ldarg.0
      IL_0137:  ldfld      class Game.DrawBlockEnvironmentData Game.SubsystemProjectiles::m_drawBlockEnvironmentData
      IL_013c:  ldloc.2
      IL_013d:  ldfld      int32 Game.WorldItem::Light
      IL_0142:  stfld      int32 Game.DrawBlockEnvironmentData::Light
      IL_0147:  ldarg.0
      IL_0148:  ldfld      class Game.DrawBlockEnvironmentData Game.SubsystemProjectiles::m_drawBlockEnvironmentData
      IL_014d:  ldloc.s    V_8
      IL_014f:  ldfld      bool Game.Block::AlignToVelocity
      IL_0154:  brtrue.s   IL_0163

      IL_0156:  ldarg.1
      IL_0157:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewDirection()
      IL_015c:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
      IL_0161:  br.s       IL_016d

      IL_0163:  ldloca.s   V_11
      IL_0165:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>
      IL_016b:  ldloc.s    V_11
      IL_016d:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.DrawBlockEnvironmentData::BillboardDirection
      IL_0172:  ldarg.0
      IL_0173:  ldfld      class Game.DrawBlockEnvironmentData Game.SubsystemProjectiles::m_drawBlockEnvironmentData
      IL_0178:  ldflda     valuetype [Engine]Engine.Matrix Game.DrawBlockEnvironmentData::InWorldMatrix
      IL_017d:  ldloc.3
      IL_017e:  call       instance void [Engine]Engine.Matrix::set_Translation(valuetype [Engine]Engine.Vector3)
      IL_0183:  ldloc.s    V_8
      IL_0185:  ldfld      bool Game.Block::AlignToVelocity
      IL_018a:  brfalse.s  IL_019e

      IL_018c:  ldloc.s    V_8
      IL_018e:  ldloc.3
      IL_018f:  ldloc.2
      IL_0190:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_0195:  ldloca.s   V_10
      IL_0197:  call       void Game.SubsystemProjectiles::CalculateVelocityAlignMatrix(class Game.Block,
                                                                                        valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Matrix&)
      IL_019c:  br.s       IL_01e9

      IL_019e:  ldloc.2
      IL_019f:  ldfld      valuetype [Engine]Engine.Vector3 Game.Projectile::Rotation
      IL_01a4:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
      IL_01a9:  call       bool [Engine]Engine.Vector3::op_Inequality(valuetype [Engine]Engine.Vector3,
                                                                      valuetype [Engine]Engine.Vector3)
      IL_01ae:  brfalse.s  IL_01dc

      IL_01b0:  ldloc.2
      IL_01b1:  ldfld      valuetype [Engine]Engine.Vector3 Game.Projectile::Rotation
      IL_01b6:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
      IL_01bb:  ldloc.2
      IL_01bc:  ldflda     valuetype [Engine]Engine.Vector3 Game.Projectile::Rotation
      IL_01c1:  call       instance float32 [Engine]Engine.Vector3::Length()
      IL_01c6:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateFromAxisAngle(valuetype [Engine]Engine.Vector3,
                                                                                                      float32)
      IL_01cb:  stloc.s    V_10
      IL_01cd:  ldloca.s   V_10
      IL_01cf:  ldloc.2
      IL_01d0:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_01d5:  call       instance void [Engine]Engine.Matrix::set_Translation(valuetype [Engine]Engine.Vector3)
      IL_01da:  br.s       IL_01e9

      IL_01dc:  ldloc.2
      IL_01dd:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_01e2:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(valuetype [Engine]Engine.Vector3)
      IL_01e7:  stloc.s    V_10
      IL_01e9:  ldloc.s    V_8
      IL_01eb:  ldarg.0
      IL_01ec:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.SubsystemProjectiles::m_primitivesRenderer
      IL_01f1:  ldloc.2
      IL_01f2:  ldfld      int32 Game.WorldItem::Value
      IL_01f7:  ldc.r4     0.30000001
      IL_01fc:  ldloca.s   V_10
      IL_01fe:  ldarg.0
      IL_01ff:  ldfld      class Game.DrawBlockEnvironmentData Game.SubsystemProjectiles::m_drawBlockEnvironmentData
      IL_0204:  callvirt   instance void Game.Block::DrawBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                               int32,
                                                               float32,
                                                               valuetype [Engine]Engine.Matrix&,
                                                               class Game.DrawBlockEnvironmentData)
      IL_0209:  ldloca.s   V_1
      IL_020b:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.Projectile>::MoveNext()
      IL_0210:  brtrue     IL_0043

      IL_0215:  leave.s    IL_0225

    }  // end .try
    finally
    {
      IL_0217:  ldloca.s   V_1
      IL_0219:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.Projectile>
      IL_021f:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0224:  endfinally
    }  // end handler
    IL_0225:  ldarg.0
    IL_0226:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.SubsystemProjectiles::m_primitivesRenderer
    IL_022b:  ldarg.1
    IL_022c:  callvirt   instance valuetype [Engine]Engine.Matrix Game.SubsystemDrawing::get_ViewProjectionMatrix()
    IL_0231:  ldc.i4.1
    IL_0232:  callvirt   instance void class [Engine]Engine.Graphics.BasePrimitivesRenderer`3<class [Engine]Engine.Graphics.FlatBatch3D,class [Engine]Engine.Graphics.TexturedBatch3D,class [Engine]Engine.Graphics.FontBatch3D>::Flush(valuetype [Engine]Engine.Matrix,
                                                                                                                                                                                                                                        bool)
    IL_0237:  ret
  } // end of method SubsystemProjectiles::Draw

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method SubsystemProjectiles::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       3409 (0xd51)
    .maxstack  8
    .locals init (float64 V_0,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.Projectile> V_1,
             class Game.Projectile V_2,
             class Game.Block V_3,
             class Game.TerrainChunk V_4,
             valuetype [Engine]Engine.Vector3 V_5,
             valuetype [Engine]Engine.Vector3 V_6,
             valuetype [Engine]Engine.Vector3 V_7,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.BodyRaycastResult> V_8,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> V_9,
             bool V_10,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> V_11,
             float32 V_12,
             bool V_13,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace> V_14,
             class Game.ComponentBody V_15,
             class Game.SubsystemBlockBehavior[] V_16,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace> V_17,
             int32 V_18,
             class Game.ComponentOnFire V_19,
             valuetype Game.CellFace V_20,
             int32 V_21,
             int32 V_22,
             class Game.Block V_23,
             float32 V_24,
             class Game.SubsystemBlockBehavior[] V_25,
             int32 V_26,
             valuetype [Engine]Engine.Vector3 V_27,
             int32 V_28,
             valuetype [Engine]Engine.Vector3 V_29,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> V_30,
             valuetype [Engine]Engine.Vector3 V_31,
             float32 V_32,
             float32 V_33,
             int32 V_34,
             valuetype [Engine]Engine.Matrix V_35,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> V_36,
             valuetype [Engine]Engine.Vector3 V_37,
             float32 V_38,
             valuetype [System.Runtime]System.Nullable`1<float32> V_39,
             valuetype [Engine]Engine.Vector2 V_40,
             class Game.Projectile V_41)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemGameInfo Game.SubsystemProjectiles::m_subsystemGameInfo
    IL_0006:  callvirt   instance float64 Game.SubsystemGameInfo::get_TotalElapsedGameTime()
    IL_000b:  stloc.0
    IL_000c:  ldarg.0
    IL_000d:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Projectile> Game.SubsystemProjectiles::m_projectiles
    IL_0012:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.Projectile>::GetEnumerator()
    IL_0017:  stloc.1
    .try
    {
      IL_0018:  br         IL_0cc0

      IL_001d:  ldloca.s   V_1
      IL_001f:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.Projectile>::get_Current()
      IL_0024:  stloc.2
      IL_0025:  ldloc.2
      IL_0026:  ldfld      bool Game.WorldItem::ToRemove
      IL_002b:  brfalse.s  IL_003e

      IL_002d:  ldarg.0
      IL_002e:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Projectile> Game.SubsystemProjectiles::m_projectilesToRemove
      IL_0033:  ldloc.2
      IL_0034:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.Projectile>::Add(!0)
      IL_0039:  br         IL_0cc0

      IL_003e:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
      IL_0043:  ldloc.2
      IL_0044:  ldfld      int32 Game.WorldItem::Value
      IL_0049:  call       int32 Game.TerrainData::ExtractContents(int32)
      IL_004e:  ldelem.ref
      IL_004f:  stloc.3
      IL_0050:  ldloc.0
      IL_0051:  ldloc.2
      IL_0052:  ldfld      float64 Game.WorldItem::CreationTime
      IL_0057:  sub
      IL_0058:  ldc.r8     20.
      IL_0061:  ble.un.s   IL_006a

      IL_0063:  ldloc.2
      IL_0064:  ldc.i4.1
      IL_0065:  stfld      bool Game.WorldItem::ToRemove
      IL_006a:  ldarg.0
      IL_006b:  ldfld      class Game.SubsystemTerrain Game.SubsystemProjectiles::m_subsystemTerrain
      IL_0070:  ldloc.2
      IL_0071:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0076:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_007b:  conv.i4
      IL_007c:  ldloc.2
      IL_007d:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0082:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_0087:  conv.i4
      IL_0088:  callvirt   instance class Game.TerrainChunk Game.SubsystemTerrain::CellToChunk(int32,
                                                                                               int32)
      IL_008d:  stloc.s    V_4
      IL_008f:  ldloc.s    V_4
      IL_0091:  brfalse.s  IL_009d

      IL_0093:  ldloc.s    V_4
      IL_0095:  ldfld      valuetype Game.TerrainChunkState Game.TerrainChunk::State
      IL_009a:  ldc.i4.4
      IL_009b:  bgt.s      IL_00c0

      IL_009d:  ldloc.2
      IL_009e:  ldc.i4.1
      IL_009f:  stfld      bool Game.Projectile::NoChunk
      IL_00a4:  ldloc.2
      IL_00a5:  ldfld      class Game.ITrailParticleSystem Game.Projectile::TrailParticleSystem
      IL_00aa:  brfalse    IL_0cc0

      IL_00af:  ldloc.2
      IL_00b0:  ldfld      class Game.ITrailParticleSystem Game.Projectile::TrailParticleSystem
      IL_00b5:  ldc.i4.1
      IL_00b6:  callvirt   instance void Game.ITrailParticleSystem::set_IsStopped(bool)
      IL_00bb:  br         IL_0cc0

      IL_00c0:  ldloc.2
      IL_00c1:  ldc.i4.0
      IL_00c2:  stfld      bool Game.Projectile::NoChunk
      IL_00c7:  ldloc.2
      IL_00c8:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_00cd:  stloc.s    V_5
      IL_00cf:  ldloc.s    V_5
      IL_00d1:  ldloc.2
      IL_00d2:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_00d7:  ldarg.1
      IL_00d8:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                                float32)
      IL_00dd:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_00e2:  stloc.s    V_6
      IL_00e4:  ldloc.3
      IL_00e5:  ldfld      float32 Game.Block::ProjectileTipOffset
      IL_00ea:  ldloc.2
      IL_00eb:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_00f0:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
      IL_00f5:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_00fa:  stloc.s    V_7
      IL_00fc:  ldarg.0
      IL_00fd:  ldfld      class Game.SubsystemBodies Game.SubsystemProjectiles::m_subsystemBodies
      IL_0102:  ldloc.s    V_5
      IL_0104:  ldloc.s    V_7
      IL_0106:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_010b:  ldloc.s    V_6
      IL_010d:  ldloc.s    V_7
      IL_010f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0114:  ldc.r4     0.2
      IL_0119:  ldsfld     class [System.Runtime]System.Func`3<class Game.ComponentBody,float32,bool> Game.SubsystemProjectiles/'<>c'::'<>9__38_0'
      IL_011e:  dup
      IL_011f:  brtrue.s   IL_0138

      IL_0121:  pop
      IL_0122:  ldsfld     class Game.SubsystemProjectiles/'<>c' Game.SubsystemProjectiles/'<>c'::'<>9'
      IL_0127:  ldftn      instance bool Game.SubsystemProjectiles/'<>c'::'<Update>b__38_0'(class Game.ComponentBody,
                                                                                            float32)
      IL_012d:  newobj     instance void class [System.Runtime]System.Func`3<class Game.ComponentBody,float32,bool>::.ctor(object,
                                                                                                                           native int)
      IL_0132:  dup
      IL_0133:  stsfld     class [System.Runtime]System.Func`3<class Game.ComponentBody,float32,bool> Game.SubsystemProjectiles/'<>c'::'<>9__38_0'
      IL_0138:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.BodyRaycastResult> Game.SubsystemBodies::Raycast(valuetype [Engine]Engine.Vector3,
                                                                                                                                                valuetype [Engine]Engine.Vector3,
                                                                                                                                                float32,
                                                                                                                                                class [System.Runtime]System.Func`3<class Game.ComponentBody,float32,bool>)
      IL_013d:  stloc.s    V_8
      IL_013f:  ldarg.0
      IL_0140:  ldfld      class Game.SubsystemTerrain Game.SubsystemProjectiles::m_subsystemTerrain
      IL_0145:  ldloc.s    V_5
      IL_0147:  ldloc.s    V_7
      IL_0149:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_014e:  ldloc.s    V_6
      IL_0150:  ldloc.s    V_7
      IL_0152:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0157:  ldc.i4.0
      IL_0158:  ldc.i4.1
      IL_0159:  ldsfld     class [System.Runtime]System.Func`3<int32,float32,bool> Game.SubsystemProjectiles/'<>c'::'<>9__38_1'
      IL_015e:  dup
      IL_015f:  brtrue.s   IL_0178

      IL_0161:  pop
      IL_0162:  ldsfld     class Game.SubsystemProjectiles/'<>c' Game.SubsystemProjectiles/'<>c'::'<>9'
      IL_0167:  ldftn      instance bool Game.SubsystemProjectiles/'<>c'::'<Update>b__38_1'(int32,
                                                                                            float32)
      IL_016d:  newobj     instance void class [System.Runtime]System.Func`3<int32,float32,bool>::.ctor(object,
                                                                                                        native int)
      IL_0172:  dup
      IL_0173:  stsfld     class [System.Runtime]System.Func`3<int32,float32,bool> Game.SubsystemProjectiles/'<>c'::'<>9__38_1'
      IL_0178:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> Game.SubsystemTerrain::Raycast(valuetype [Engine]Engine.Vector3,
                                                                                                                                                    valuetype [Engine]Engine.Vector3,
                                                                                                                                                    bool,
                                                                                                                                                    bool,
                                                                                                                                                    class [System.Runtime]System.Func`3<int32,float32,bool>)
      IL_017d:  stloc.s    V_9
      IL_017f:  ldloc.3
      IL_0180:  ldfld      bool Game.Block::DisintegratesOnHit
      IL_0185:  stloc.s    V_10
      IL_0187:  ldloca.s   V_9
      IL_0189:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_HasValue()
      IL_018e:  brtrue.s   IL_019c

      IL_0190:  ldloca.s   V_8
      IL_0192:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.BodyRaycastResult>::get_HasValue()
      IL_0197:  brfalse    IL_022c

      IL_019c:  ldloca.s   V_9
      IL_019e:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_HasValue()
      IL_01a3:  brtrue.s   IL_01b1

      IL_01a5:  ldloca.s   V_17
      IL_01a7:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace>
      IL_01ad:  ldloc.s    V_17
      IL_01af:  br.s       IL_01c2

      IL_01b1:  ldloca.s   V_9
      IL_01b3:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
      IL_01b8:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
      IL_01bd:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace>::.ctor(!0)
      IL_01c2:  stloc.s    V_14
      IL_01c4:  ldloca.s   V_8
      IL_01c6:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.BodyRaycastResult>::get_HasValue()
      IL_01cb:  brtrue.s   IL_01d0

      IL_01cd:  ldnull
      IL_01ce:  br.s       IL_01dc

      IL_01d0:  ldloca.s   V_8
      IL_01d2:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.BodyRaycastResult>::get_Value()
      IL_01d7:  ldfld      class Game.ComponentBody Game.BodyRaycastResult::ComponentBody
      IL_01dc:  stloc.s    V_15
      IL_01de:  ldarg.0
      IL_01df:  ldfld      class Game.SubsystemBlockBehaviors Game.SubsystemProjectiles::m_subsystemBlockBehaviors
      IL_01e4:  ldloc.2
      IL_01e5:  ldfld      int32 Game.WorldItem::Value
      IL_01ea:  call       int32 Game.TerrainData::ExtractContents(int32)
      IL_01ef:  callvirt   instance class Game.SubsystemBlockBehavior[] Game.SubsystemBlockBehaviors::GetBlockBehaviors(int32)
      IL_01f4:  stloc.s    V_16
      IL_01f6:  ldc.i4.0
      IL_01f7:  stloc.s    V_18
      IL_01f9:  br.s       IL_0215

      IL_01fb:  ldloc.s    V_10
      IL_01fd:  ldloc.s    V_16
      IL_01ff:  ldloc.s    V_18
      IL_0201:  ldelem.ref
      IL_0202:  ldloc.s    V_14
      IL_0204:  ldloc.s    V_15
      IL_0206:  ldloc.2
      IL_0207:  callvirt   instance bool Game.SubsystemBlockBehavior::OnHitAsProjectile(valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace>,
                                                                                        class Game.ComponentBody,
                                                                                        class Game.WorldItem)
      IL_020c:  or
      IL_020d:  stloc.s    V_10
      IL_020f:  ldloc.s    V_18
      IL_0211:  ldc.i4.1
      IL_0212:  add
      IL_0213:  stloc.s    V_18
      IL_0215:  ldloc.s    V_18
      IL_0217:  ldloc.s    V_16
      IL_0219:  ldlen
      IL_021a:  conv.i4
      IL_021b:  blt.s      IL_01fb

      IL_021d:  ldloc.2
      IL_021e:  dup
      IL_021f:  ldfld      bool Game.WorldItem::ToRemove
      IL_0224:  ldloc.s    V_10
      IL_0226:  or
      IL_0227:  stfld      bool Game.WorldItem::ToRemove
      IL_022c:  ldloca.s   V_11
      IL_022e:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>
      IL_0234:  ldloca.s   V_8
      IL_0236:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.BodyRaycastResult>::get_HasValue()
      IL_023b:  brfalse    IL_0384

      IL_0240:  ldloca.s   V_9
      IL_0242:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_HasValue()
      IL_0247:  brfalse.s  IL_0266

      IL_0249:  ldloca.s   V_8
      IL_024b:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.BodyRaycastResult>::get_Value()
      IL_0250:  ldfld      float32 Game.BodyRaycastResult::Distance
      IL_0255:  ldloca.s   V_9
      IL_0257:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
      IL_025c:  ldfld      float32 Game.TerrainRaycastResult::Distance
      IL_0261:  bge.un     IL_0384

      IL_0266:  ldloc.2
      IL_0267:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_026c:  call       instance float32 [Engine]Engine.Vector3::Length()
      IL_0271:  ldc.r4     10.
      IL_0276:  ble.un.s   IL_02d5

      IL_0278:  ldloca.s   V_8
      IL_027a:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.BodyRaycastResult>::get_Value()
      IL_027f:  ldfld      class Game.ComponentBody Game.BodyRaycastResult::ComponentBody
      IL_0284:  ldloc.2
      IL_0285:  ldfld      class Game.ComponentCreature Game.Projectile::Owner
      IL_028a:  ldloc.2
      IL_028b:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_0290:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
      IL_0295:  ldloc.3
      IL_0296:  ldloc.2
      IL_0297:  ldfld      int32 Game.WorldItem::Value
      IL_029c:  callvirt   instance float32 Game.Block::GetProjectilePower(int32)
      IL_02a1:  ldc.i4.0
      IL_02a2:  call       void Game.ComponentMiner::AttackBody(class Game.ComponentBody,
                                                                class Game.ComponentCreature,
                                                                valuetype [Engine]Engine.Vector3,
                                                                float32,
                                                                bool)
      IL_02a7:  ldloc.2
      IL_02a8:  ldfld      class Game.ComponentCreature Game.Projectile::Owner
      IL_02ad:  brfalse.s  IL_02d5

      IL_02af:  ldloc.2
      IL_02b0:  ldfld      class Game.ComponentCreature Game.Projectile::Owner
      IL_02b5:  callvirt   instance class Game.PlayerStats Game.ComponentCreature::get_PlayerStats()
      IL_02ba:  brfalse.s  IL_02d5

      IL_02bc:  ldloc.2
      IL_02bd:  ldfld      class Game.ComponentCreature Game.Projectile::Owner
      IL_02c2:  callvirt   instance class Game.PlayerStats Game.ComponentCreature::get_PlayerStats()
      IL_02c7:  dup
      IL_02c8:  ldfld      int64 Game.PlayerStats::RangedHits
      IL_02cd:  ldc.i4.1
      IL_02ce:  conv.i8
      IL_02cf:  add
      IL_02d0:  stfld      int64 Game.PlayerStats::RangedHits
      IL_02d5:  ldloc.2
      IL_02d6:  ldfld      bool Game.Projectile::IsIncendiary
      IL_02db:  brfalse.s  IL_0321

      IL_02dd:  ldloca.s   V_8
      IL_02df:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.BodyRaycastResult>::get_Value()
      IL_02e4:  ldfld      class Game.ComponentBody Game.BodyRaycastResult::ComponentBody
      IL_02e9:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
      IL_02ee:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentOnFire>()
      IL_02f3:  stloc.s    V_19
      IL_02f5:  ldloc.s    V_19
      IL_02f7:  brfalse.s  IL_0321

      IL_02f9:  ldloc.s    V_19
      IL_02fb:  ldloc.2
      IL_02fc:  brtrue.s   IL_0301

      IL_02fe:  ldnull
      IL_02ff:  br.s       IL_0307

      IL_0301:  ldloc.2
      IL_0302:  ldfld      class Game.ComponentCreature Game.Projectile::Owner
      IL_0307:  ldarg.0
      IL_0308:  ldfld      class Game.Random Game.SubsystemProjectiles::m_random
      IL_030d:  ldc.r4     6.
      IL_0312:  ldc.r4     8.
      IL_0317:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                      float32)
      IL_031c:  callvirt   instance void Game.ComponentOnFire::SetOnFire(class Game.ComponentCreature,
                                                                         float32)
      IL_0321:  ldloc.s    V_5
      IL_0323:  stloc.s    V_6
      IL_0325:  ldloc.2
      IL_0326:  dup
      IL_0327:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_032c:  ldc.r4     -5.0000001e-002
      IL_0331:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                                float32)
      IL_0336:  stfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_033b:  ldloc.2
      IL_033c:  dup
      IL_033d:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_0342:  ldarg.0
      IL_0343:  ldfld      class Game.Random Game.SubsystemProjectiles::m_random
      IL_0348:  ldc.r4     0.33000001
      IL_034d:  ldloc.2
      IL_034e:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_0353:  call       instance float32 [Engine]Engine.Vector3::Length()
      IL_0358:  mul
      IL_0359:  ldc.i4.0
      IL_035a:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Random::Vector3(float32,
                                                                                          bool)
      IL_035f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0364:  stfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_0369:  ldloc.2
      IL_036a:  dup
      IL_036b:  ldfld      valuetype [Engine]Engine.Vector3 Game.Projectile::AngularVelocity
      IL_0370:  ldc.r4     -5.0000001e-002
      IL_0375:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                                float32)
      IL_037a:  stfld      valuetype [Engine]Engine.Vector3 Game.Projectile::AngularVelocity
      IL_037f:  br         IL_076c

      IL_0384:  ldloca.s   V_9
      IL_0386:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_HasValue()
      IL_038b:  brfalse    IL_076c

      IL_0390:  ldloca.s   V_9
      IL_0392:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
      IL_0397:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
      IL_039c:  stloc.s    V_20
      IL_039e:  ldarg.0
      IL_039f:  ldfld      class Game.SubsystemTerrain Game.SubsystemProjectiles::m_subsystemTerrain
      IL_03a4:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
      IL_03a9:  ldloc.s    V_20
      IL_03ab:  ldfld      int32 Game.CellFace::X
      IL_03b0:  ldloc.s    V_20
      IL_03b2:  ldfld      int32 Game.CellFace::Y
      IL_03b7:  ldloc.s    V_20
      IL_03b9:  ldfld      int32 Game.CellFace::Z
      IL_03be:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                         int32,
                                                                         int32)
      IL_03c3:  stloc.s    V_21
      IL_03c5:  ldloc.s    V_21
      IL_03c7:  call       int32 Game.TerrainData::ExtractContents(int32)
      IL_03cc:  stloc.s    V_22
      IL_03ce:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
      IL_03d3:  ldloc.s    V_22
      IL_03d5:  ldelem.ref
      IL_03d6:  stloc.s    V_23
      IL_03d8:  ldloc.2
      IL_03d9:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_03de:  call       instance float32 [Engine]Engine.Vector3::Length()
      IL_03e3:  stloc.s    V_24
      IL_03e5:  ldarg.0
      IL_03e6:  ldfld      class Game.SubsystemBlockBehaviors Game.SubsystemProjectiles::m_subsystemBlockBehaviors
      IL_03eb:  ldloc.s    V_22
      IL_03ed:  callvirt   instance class Game.SubsystemBlockBehavior[] Game.SubsystemBlockBehaviors::GetBlockBehaviors(int32)
      IL_03f2:  stloc.s    V_25
      IL_03f4:  ldc.i4.0
      IL_03f5:  stloc.s    V_26
      IL_03f7:  br.s       IL_040c

      IL_03f9:  ldloc.s    V_25
      IL_03fb:  ldloc.s    V_26
      IL_03fd:  ldelem.ref
      IL_03fe:  ldloc.s    V_20
      IL_0400:  ldloc.2
      IL_0401:  callvirt   instance void Game.SubsystemBlockBehavior::OnHitByProjectile(valuetype Game.CellFace,
                                                                                        class Game.WorldItem)
      IL_0406:  ldloc.s    V_26
      IL_0408:  ldc.i4.1
      IL_0409:  add
      IL_040a:  stloc.s    V_26
      IL_040c:  ldloc.s    V_26
      IL_040e:  ldloc.s    V_25
      IL_0410:  ldlen
      IL_0411:  conv.i4
      IL_0412:  blt.s      IL_03f9

      IL_0414:  ldloc.s    V_24
      IL_0416:  ldc.r4     10.
      IL_041b:  ble.un.s   IL_0473

      IL_041d:  ldarg.0
      IL_041e:  ldfld      class Game.Random Game.SubsystemProjectiles::m_random
      IL_0423:  ldc.r4     0.0
      IL_0428:  ldc.r4     1.
      IL_042d:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                      float32)
      IL_0432:  ldloc.s    V_23
      IL_0434:  ldfld      float32 Game.Block::ProjectileResilience
      IL_0439:  ble.un.s   IL_0473

      IL_043b:  ldarg.0
      IL_043c:  ldfld      class Game.SubsystemTerrain Game.SubsystemProjectiles::m_subsystemTerrain
      IL_0441:  ldc.i4.0
      IL_0442:  ldloc.s    V_20
      IL_0444:  ldfld      int32 Game.CellFace::X
      IL_0449:  ldloc.s    V_20
      IL_044b:  ldfld      int32 Game.CellFace::Y
      IL_0450:  ldloc.s    V_20
      IL_0452:  ldfld      int32 Game.CellFace::Z
      IL_0457:  ldc.i4.0
      IL_0458:  ldc.i4.1
      IL_0459:  ldc.i4.0
      IL_045a:  callvirt   instance void Game.SubsystemTerrain::DestroyCell(int32,
                                                                            int32,
                                                                            int32,
                                                                            int32,
                                                                            int32,
                                                                            bool,
                                                                            bool)
      IL_045f:  ldarg.0
      IL_0460:  ldfld      class Game.SubsystemSoundMaterials Game.SubsystemProjectiles::m_subsystemSoundMaterials
      IL_0465:  ldloc.s    V_21
      IL_0467:  ldloc.s    V_5
      IL_0469:  ldc.r4     1.
      IL_046e:  callvirt   instance void Game.SubsystemSoundMaterials::PlayImpactSound(int32,
                                                                                       valuetype [Engine]Engine.Vector3,
                                                                                       float32)
      IL_0473:  ldloc.2
      IL_0474:  ldfld      bool Game.Projectile::IsIncendiary
      IL_0479:  brfalse    IL_05a4

      IL_047e:  ldarg.0
      IL_047f:  ldfld      class Game.SubsystemFireBlockBehavior Game.SubsystemProjectiles::m_subsystemFireBlockBehavior
      IL_0484:  ldloca.s   V_9
      IL_0486:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
      IL_048b:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
      IL_0490:  ldfld      int32 Game.CellFace::X
      IL_0495:  ldloca.s   V_9
      IL_0497:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
      IL_049c:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
      IL_04a1:  ldfld      int32 Game.CellFace::Y
      IL_04a6:  ldloca.s   V_9
      IL_04a8:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
      IL_04ad:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
      IL_04b2:  ldfld      int32 Game.CellFace::Z
      IL_04b7:  ldc.r4     1.
      IL_04bc:  callvirt   instance bool Game.SubsystemFireBlockBehavior::SetCellOnFire(int32,
                                                                                        int32,
                                                                                        int32,
                                                                                        float32)
      IL_04c1:  pop
      IL_04c2:  ldloc.2
      IL_04c3:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_04c8:  ldc.r4     0.75
      IL_04cd:  ldloc.2
      IL_04ce:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_04d3:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
      IL_04d8:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_04dd:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                   valuetype [Engine]Engine.Vector3)
      IL_04e2:  stloc.s    V_27
      IL_04e4:  ldc.i4.0
      IL_04e5:  stloc.s    V_28
      IL_04e7:  br         IL_059c

      IL_04ec:  ldloc.s    V_28
      IL_04ee:  brfalse.s  IL_0503

      IL_04f0:  ldarg.0
      IL_04f1:  ldfld      class Game.Random Game.SubsystemProjectiles::m_random
      IL_04f6:  ldc.r4     1.5
      IL_04fb:  ldc.i4.0
      IL_04fc:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Random::Vector3(float32,
                                                                                          bool)
      IL_0501:  br.s       IL_050e

      IL_0503:  ldloc.2
      IL_0504:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_0509:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
      IL_050e:  stloc.s    V_29
      IL_0510:  ldarg.0
      IL_0511:  ldfld      class Game.SubsystemTerrain Game.SubsystemProjectiles::m_subsystemTerrain
      IL_0516:  ldloc.s    V_27
      IL_0518:  ldloc.s    V_27
      IL_051a:  ldloc.s    V_29
      IL_051c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0521:  ldc.i4.0
      IL_0522:  ldc.i4.1
      IL_0523:  ldsfld     class [System.Runtime]System.Func`3<int32,float32,bool> Game.SubsystemProjectiles/'<>c'::'<>9__38_2'
      IL_0528:  dup
      IL_0529:  brtrue.s   IL_0542

      IL_052b:  pop
      IL_052c:  ldsfld     class Game.SubsystemProjectiles/'<>c' Game.SubsystemProjectiles/'<>c'::'<>9'
      IL_0531:  ldftn      instance bool Game.SubsystemProjectiles/'<>c'::'<Update>b__38_2'(int32,
                                                                                            float32)
      IL_0537:  newobj     instance void class [System.Runtime]System.Func`3<int32,float32,bool>::.ctor(object,
                                                                                                        native int)
      IL_053c:  dup
      IL_053d:  stsfld     class [System.Runtime]System.Func`3<int32,float32,bool> Game.SubsystemProjectiles/'<>c'::'<>9__38_2'
      IL_0542:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> Game.SubsystemTerrain::Raycast(valuetype [Engine]Engine.Vector3,
                                                                                                                                                    valuetype [Engine]Engine.Vector3,
                                                                                                                                                    bool,
                                                                                                                                                    bool,
                                                                                                                                                    class [System.Runtime]System.Func`3<int32,float32,bool>)
      IL_0547:  stloc.s    V_30
      IL_0549:  ldloca.s   V_30
      IL_054b:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_HasValue()
      IL_0550:  brfalse.s  IL_0596

      IL_0552:  ldarg.0
      IL_0553:  ldfld      class Game.SubsystemFireBlockBehavior Game.SubsystemProjectiles::m_subsystemFireBlockBehavior
      IL_0558:  ldloca.s   V_30
      IL_055a:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
      IL_055f:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
      IL_0564:  ldfld      int32 Game.CellFace::X
      IL_0569:  ldloca.s   V_30
      IL_056b:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
      IL_0570:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
      IL_0575:  ldfld      int32 Game.CellFace::Y
      IL_057a:  ldloca.s   V_30
      IL_057c:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
      IL_0581:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
      IL_0586:  ldfld      int32 Game.CellFace::Z
      IL_058b:  ldc.r4     1.
      IL_0590:  callvirt   instance bool Game.SubsystemFireBlockBehavior::SetCellOnFire(int32,
                                                                                        int32,
                                                                                        int32,
                                                                                        float32)
      IL_0595:  pop
      IL_0596:  ldloc.s    V_28
      IL_0598:  ldc.i4.1
      IL_0599:  add
      IL_059a:  stloc.s    V_28
      IL_059c:  ldloc.s    V_28
      IL_059e:  ldc.i4.8
      IL_059f:  blt        IL_04ec

      IL_05a4:  ldloc.s    V_24
      IL_05a6:  ldc.r4     5.
      IL_05ab:  ble.un.s   IL_05c1

      IL_05ad:  ldarg.0
      IL_05ae:  ldfld      class Game.SubsystemSoundMaterials Game.SubsystemProjectiles::m_subsystemSoundMaterials
      IL_05b3:  ldloc.s    V_21
      IL_05b5:  ldloc.s    V_5
      IL_05b7:  ldc.r4     1.
      IL_05bc:  callvirt   instance void Game.SubsystemSoundMaterials::PlayImpactSound(int32,
                                                                                       valuetype [Engine]Engine.Vector3,
                                                                                       float32)
      IL_05c1:  ldloc.3
      IL_05c2:  ldfld      bool Game.Block::IsStickable
      IL_05c7:  brfalse    IL_065a

      IL_05cc:  ldloc.s    V_24
      IL_05ce:  ldc.r4     15.
      IL_05d3:  ble.un     IL_065a

      IL_05d8:  ldarg.0
      IL_05d9:  ldfld      class Game.Random Game.SubsystemProjectiles::m_random
      IL_05de:  ldloc.s    V_23
      IL_05e0:  ldfld      float32 Game.Block::ProjectileStickProbability
      IL_05e5:  callvirt   instance bool Game.Random::Bool(float32)
      IL_05ea:  brfalse.s  IL_065a

      IL_05ec:  ldloc.2
      IL_05ed:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_05f2:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
      IL_05f7:  stloc.s    V_31
      IL_05f9:  ldc.r4     0.1
      IL_05fe:  ldc.r4     0.2
      IL_0603:  ldloc.s    V_24
      IL_0605:  ldc.r4     15.
      IL_060a:  sub
      IL_060b:  ldc.r4     20.
      IL_0610:  div
      IL_0611:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
      IL_0616:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                  float32,
                                                                  float32)
      IL_061b:  stloc.s    V_32
      IL_061d:  ldloca.s   V_11
      IL_061f:  ldloc.s    V_5
      IL_0621:  ldloca.s   V_9
      IL_0623:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
      IL_0628:  ldfld      float32 Game.TerrainRaycastResult::Distance
      IL_062d:  ldloc.2
      IL_062e:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_0633:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
      IL_0638:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_063d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0642:  ldloc.s    V_31
      IL_0644:  ldloc.s    V_32
      IL_0646:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                                float32)
      IL_064b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0650:  call       instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
      IL_0655:  br         IL_0765

      IL_065a:  ldloca.s   V_20
      IL_065c:  call       instance valuetype [Engine]Engine.Plane Game.CellFace::CalculatePlane()
      IL_0661:  ldloc.s    V_5
      IL_0663:  stloc.s    V_6
      IL_0665:  dup
      IL_0666:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.Plane::Normal
      IL_066b:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_0670:  ldc.r4     0.0
      IL_0675:  beq.s      IL_069c

      IL_0677:  ldloc.2
      IL_0678:  dup
      IL_0679:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_067e:  ldc.r4     -0.30000001
      IL_0683:  ldc.r4     0.30000001
      IL_0688:  ldc.r4     0.30000001
      IL_068d:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                       float32,
                                                                       float32)
      IL_0692:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0697:  stfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_069c:  dup
      IL_069d:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.Plane::Normal
      IL_06a2:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_06a7:  ldc.r4     0.0
      IL_06ac:  beq.s      IL_06d3

      IL_06ae:  ldloc.2
      IL_06af:  dup
      IL_06b0:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_06b5:  ldc.r4     0.30000001
      IL_06ba:  ldc.r4     -0.30000001
      IL_06bf:  ldc.r4     0.30000001
      IL_06c4:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                       float32,
                                                                       float32)
      IL_06c9:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_06ce:  stfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_06d3:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.Plane::Normal
      IL_06d8:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_06dd:  ldc.r4     0.0
      IL_06e2:  beq.s      IL_0709

      IL_06e4:  ldloc.2
      IL_06e5:  dup
      IL_06e6:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_06eb:  ldc.r4     0.30000001
      IL_06f0:  ldc.r4     0.30000001
      IL_06f5:  ldc.r4     -0.30000001
      IL_06fa:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                       float32,
                                                                       float32)
      IL_06ff:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0704:  stfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_0709:  ldloc.2
      IL_070a:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_070f:  call       instance float32 [Engine]Engine.Vector3::Length()
      IL_0714:  stloc.s    V_33
      IL_0716:  ldloc.2
      IL_0717:  ldloc.s    V_33
      IL_0719:  ldloc.2
      IL_071a:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_071f:  ldarg.0
      IL_0720:  ldfld      class Game.Random Game.SubsystemProjectiles::m_random
      IL_0725:  ldloc.s    V_33
      IL_0727:  ldc.r4     6.
      IL_072c:  div
      IL_072d:  ldloc.s    V_33
      IL_072f:  ldc.r4     3.
      IL_0734:  div
      IL_0735:  ldc.i4.0
      IL_0736:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Random::UniformVector3(float32,
                                                                                                 float32,
                                                                                                 bool)
      IL_073b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0740:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
      IL_0745:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_074a:  stfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_074f:  ldloc.2
      IL_0750:  dup
      IL_0751:  ldfld      valuetype [Engine]Engine.Vector3 Game.Projectile::AngularVelocity
      IL_0756:  ldc.r4     -0.30000001
      IL_075b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                                float32)
      IL_0760:  stfld      valuetype [Engine]Engine.Vector3 Game.Projectile::AngularVelocity
      IL_0765:  ldarg.0
      IL_0766:  ldloc.2
      IL_0767:  call       instance void Game.SubsystemProjectiles::MakeProjectileNoise(class Game.Projectile)
      IL_076c:  ldloca.s   V_9
      IL_076e:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_HasValue()
      IL_0773:  brtrue.s   IL_0781

      IL_0775:  ldloca.s   V_8
      IL_0777:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.BodyRaycastResult>::get_HasValue()
      IL_077c:  brfalse    IL_087c

      IL_0781:  ldloc.s    V_10
      IL_0783:  brfalse.s  IL_07b2

      IL_0785:  ldarg.0
      IL_0786:  ldfld      class Game.SubsystemParticles Game.SubsystemProjectiles::m_subsystemParticles
      IL_078b:  ldloc.3
      IL_078c:  ldarg.0
      IL_078d:  ldfld      class Game.SubsystemTerrain Game.SubsystemProjectiles::m_subsystemTerrain
      IL_0792:  ldloc.2
      IL_0793:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0798:  ldloc.2
      IL_0799:  ldfld      int32 Game.WorldItem::Value
      IL_079e:  ldc.r4     1.
      IL_07a3:  callvirt   instance class Game.BlockDebrisParticleSystem Game.Block::CreateDebrisParticleSystem(class Game.SubsystemTerrain,
                                                                                                                valuetype [Engine]Engine.Vector3,
                                                                                                                int32,
                                                                                                                float32)
      IL_07a8:  callvirt   instance void Game.SubsystemParticles::AddParticleSystem(class Game.ParticleSystemBase)
      IL_07ad:  br         IL_087c

      IL_07b2:  ldloc.2
      IL_07b3:  ldfld      bool Game.WorldItem::ToRemove
      IL_07b8:  brtrue     IL_087c

      IL_07bd:  ldloca.s   V_11
      IL_07bf:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
      IL_07c4:  brtrue.s   IL_07db

      IL_07c6:  ldloc.2
      IL_07c7:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_07cc:  call       instance float32 [Engine]Engine.Vector3::Length()
      IL_07d1:  ldc.r4     1.
      IL_07d6:  bge.un     IL_087c

      IL_07db:  ldloc.2
      IL_07dc:  ldfld      valuetype Game.ProjectileStoppedAction Game.Projectile::ProjectileStoppedAction
      IL_07e1:  brtrue     IL_086c

      IL_07e6:  ldloc.2
      IL_07e7:  ldfld      int32 Game.WorldItem::Value
      IL_07ec:  ldc.i4.1
      IL_07ed:  call       int32 Game.BlocksManager::DamageItem(int32,
                                                                int32)
      IL_07f2:  stloc.s    V_34
      IL_07f4:  ldloc.s    V_34
      IL_07f6:  brfalse.s  IL_0863

      IL_07f8:  ldloca.s   V_11
      IL_07fa:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
      IL_07ff:  brfalse.s  IL_083e

      IL_0801:  ldloc.3
      IL_0802:  ldloca.s   V_11
      IL_0804:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
      IL_0809:  ldloc.2
      IL_080a:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_080f:  ldloca.s   V_35
      IL_0811:  call       void Game.SubsystemProjectiles::CalculateVelocityAlignMatrix(class Game.Block,
                                                                                        valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Matrix&)
      IL_0816:  ldarg.0
      IL_0817:  ldfld      class Game.SubsystemPickables Game.SubsystemProjectiles::m_subsystemPickables
      IL_081c:  ldloc.s    V_34
      IL_081e:  ldc.i4.1
      IL_081f:  ldloc.2
      IL_0820:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0825:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
      IL_082a:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
      IL_082f:  ldloc.s    V_35
      IL_0831:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
      IL_0836:  callvirt   instance class Game.Pickable Game.SubsystemPickables::AddPickable(int32,
                                                                                             int32,
                                                                                             valuetype [Engine]Engine.Vector3,
                                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>,
                                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
      IL_083b:  pop
      IL_083c:  br.s       IL_0863

      IL_083e:  ldarg.0
      IL_083f:  ldfld      class Game.SubsystemPickables Game.SubsystemProjectiles::m_subsystemPickables
      IL_0844:  ldloc.s    V_34
      IL_0846:  ldc.i4.1
      IL_0847:  ldloc.s    V_5
      IL_0849:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
      IL_084e:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
      IL_0853:  ldloca.s   V_36
      IL_0855:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
      IL_085b:  ldloc.s    V_36
      IL_085d:  callvirt   instance class Game.Pickable Game.SubsystemPickables::AddPickable(int32,
                                                                                             int32,
                                                                                             valuetype [Engine]Engine.Vector3,
                                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>,
                                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
      IL_0862:  pop
      IL_0863:  ldloc.2
      IL_0864:  ldc.i4.1
      IL_0865:  stfld      bool Game.WorldItem::ToRemove
      IL_086a:  br.s       IL_087c

      IL_086c:  ldloc.2
      IL_086d:  ldfld      valuetype Game.ProjectileStoppedAction Game.Projectile::ProjectileStoppedAction
      IL_0872:  ldc.i4.1
      IL_0873:  bne.un.s   IL_087c

      IL_0875:  ldloc.2
      IL_0876:  ldc.i4.1
      IL_0877:  stfld      bool Game.WorldItem::ToRemove
      IL_087c:  ldloc.2
      IL_087d:  ldfld      bool Game.Projectile::IsInWater
      IL_0882:  brtrue.s   IL_0892

      IL_0884:  ldloc.3
      IL_0885:  ldfld      float32 Game.Block::ProjectileDamping
      IL_088a:  ldarg.1
      IL_088b:  call       float32 [Engine]Engine.MathUtils::Pow(float32,
                                                                 float32)
      IL_0890:  br.s       IL_089d

      IL_0892:  ldc.r4     1.e-003
      IL_0897:  ldarg.1
      IL_0898:  call       float32 [Engine]Engine.MathUtils::Pow(float32,
                                                                 float32)
      IL_089d:  stloc.s    V_12
      IL_089f:  ldloc.2
      IL_08a0:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_08a5:  ldflda     float32 [Engine]Engine.Vector3::Y
      IL_08aa:  dup
      IL_08ab:  ldind.r4
      IL_08ac:  ldc.r4     -10.
      IL_08b1:  ldarg.1
      IL_08b2:  mul
      IL_08b3:  add
      IL_08b4:  stind.r4
      IL_08b5:  ldloc.2
      IL_08b6:  dup
      IL_08b7:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_08bc:  ldloc.s    V_12
      IL_08be:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                                float32)
      IL_08c3:  stfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_08c8:  ldloc.2
      IL_08c9:  dup
      IL_08ca:  ldfld      valuetype [Engine]Engine.Vector3 Game.Projectile::AngularVelocity
      IL_08cf:  ldloc.s    V_12
      IL_08d1:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                                float32)
      IL_08d6:  stfld      valuetype [Engine]Engine.Vector3 Game.Projectile::AngularVelocity
      IL_08db:  ldloc.2
      IL_08dc:  ldloc.s    V_6
      IL_08de:  stfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_08e3:  ldloc.2
      IL_08e4:  dup
      IL_08e5:  ldfld      valuetype [Engine]Engine.Vector3 Game.Projectile::Rotation
      IL_08ea:  ldloc.2
      IL_08eb:  ldfld      valuetype [Engine]Engine.Vector3 Game.Projectile::AngularVelocity
      IL_08f0:  ldarg.1
      IL_08f1:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                                float32)
      IL_08f6:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_08fb:  stfld      valuetype [Engine]Engine.Vector3 Game.Projectile::Rotation
      IL_0900:  ldloc.2
      IL_0901:  ldfld      class Game.ITrailParticleSystem Game.Projectile::TrailParticleSystem
      IL_0906:  brfalse    IL_09a6

      IL_090b:  ldarg.0
      IL_090c:  ldfld      class Game.SubsystemParticles Game.SubsystemProjectiles::m_subsystemParticles
      IL_0911:  ldloc.2
      IL_0912:  ldfld      class Game.ITrailParticleSystem Game.Projectile::TrailParticleSystem
      IL_0917:  castclass  Game.ParticleSystemBase
      IL_091c:  callvirt   instance bool Game.SubsystemParticles::ContainsParticleSystem(class Game.ParticleSystemBase)
      IL_0921:  brtrue.s   IL_0939

      IL_0923:  ldarg.0
      IL_0924:  ldfld      class Game.SubsystemParticles Game.SubsystemProjectiles::m_subsystemParticles
      IL_0929:  ldloc.2
      IL_092a:  ldfld      class Game.ITrailParticleSystem Game.Projectile::TrailParticleSystem
      IL_092f:  castclass  Game.ParticleSystemBase
      IL_0934:  callvirt   instance void Game.SubsystemParticles::AddParticleSystem(class Game.ParticleSystemBase)
      IL_0939:  ldloc.2
      IL_093a:  ldfld      valuetype [Engine]Engine.Vector3 Game.Projectile::TrailOffset
      IL_093f:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
      IL_0944:  call       bool [Engine]Engine.Vector3::op_Inequality(valuetype [Engine]Engine.Vector3,
                                                                      valuetype [Engine]Engine.Vector3)
      IL_0949:  brtrue.s   IL_0952

      IL_094b:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
      IL_0950:  br.s       IL_0978

      IL_0952:  ldloc.2
      IL_0953:  ldfld      valuetype [Engine]Engine.Vector3 Game.Projectile::TrailOffset
      IL_0958:  ldloc.2
      IL_0959:  ldfld      valuetype [Engine]Engine.Vector3 Game.Projectile::Rotation
      IL_095e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
      IL_0963:  ldloc.2
      IL_0964:  ldflda     valuetype [Engine]Engine.Vector3 Game.Projectile::Rotation
      IL_0969:  call       instance float32 [Engine]Engine.Vector3::Length()
      IL_096e:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateFromAxisAngle(valuetype [Engine]Engine.Vector3,
                                                                                                      float32)
      IL_0973:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::TransformNormal(valuetype [Engine]Engine.Vector3,
                                                                                                    valuetype [Engine]Engine.Matrix)
      IL_0978:  stloc.s    V_37
      IL_097a:  ldloc.2
      IL_097b:  ldfld      class Game.ITrailParticleSystem Game.Projectile::TrailParticleSystem
      IL_0980:  ldloc.2
      IL_0981:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0986:  ldloc.s    V_37
      IL_0988:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_098d:  callvirt   instance void Game.ITrailParticleSystem::set_Position(valuetype [Engine]Engine.Vector3)
      IL_0992:  ldloc.2
      IL_0993:  ldfld      bool Game.Projectile::IsInWater
      IL_0998:  brfalse.s  IL_09a6

      IL_099a:  ldloc.2
      IL_099b:  ldfld      class Game.ITrailParticleSystem Game.Projectile::TrailParticleSystem
      IL_09a0:  ldc.i4.1
      IL_09a1:  callvirt   instance void Game.ITrailParticleSystem::set_IsStopped(bool)
      IL_09a6:  ldarg.0
      IL_09a7:  ldloc.2
      IL_09a8:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_09ad:  call       instance bool Game.SubsystemProjectiles::IsWater(valuetype [Engine]Engine.Vector3)
      IL_09b2:  stloc.s    V_13
      IL_09b4:  ldloc.2
      IL_09b5:  ldfld      bool Game.Projectile::IsInWater
      IL_09ba:  ldloc.s    V_13
      IL_09bc:  beq        IL_0b0f

      IL_09c1:  ldloc.s    V_13
      IL_09c3:  brfalse    IL_0b07

      IL_09c8:  ldloc.2
      IL_09c9:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_09ce:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_09d3:  ldloc.2
      IL_09d4:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_09d9:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_09de:  add
      IL_09df:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
      IL_09e4:  stloc.s    V_40
      IL_09e6:  ldloca.s   V_40
      IL_09e8:  call       instance float32 [Engine]Engine.Vector2::Length()
      IL_09ed:  stloc.s    V_38
      IL_09ef:  ldloc.s    V_38
      IL_09f1:  ldc.r4     6.
      IL_09f6:  ble.un.s   IL_0a41

      IL_09f8:  ldloc.s    V_38
      IL_09fa:  ldc.r4     4.
      IL_09ff:  ldloc.2
      IL_0a00:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_0a05:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_0a0a:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
      IL_0a0f:  mul
      IL_0a10:  ble.un.s   IL_0a41

      IL_0a12:  ldloc.2
      IL_0a13:  dup
      IL_0a14:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_0a19:  ldc.r4     0.5
      IL_0a1e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                                float32)
      IL_0a23:  stfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_0a28:  ldloc.2
      IL_0a29:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_0a2e:  ldflda     float32 [Engine]Engine.Vector3::Y
      IL_0a33:  dup
      IL_0a34:  ldind.r4
      IL_0a35:  ldc.r4     -1.
      IL_0a3a:  mul
      IL_0a3b:  stind.r4
      IL_0a3c:  ldc.i4.0
      IL_0a3d:  stloc.s    V_13
      IL_0a3f:  br.s       IL_0a57

      IL_0a41:  ldloc.2
      IL_0a42:  dup
      IL_0a43:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_0a48:  ldc.r4     0.2
      IL_0a4d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                                float32)
      IL_0a52:  stfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_0a57:  ldarg.0
      IL_0a58:  ldfld      class Game.SubsystemFluidBlockBehavior Game.SubsystemProjectiles::m_subsystemFluidBlockBehavior
      IL_0a5d:  ldloc.2
      IL_0a5e:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0a63:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_0a68:  conv.i4
      IL_0a69:  ldloc.2
      IL_0a6a:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0a6f:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_0a74:  conv.i4
      IL_0a75:  ldloc.2
      IL_0a76:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0a7b:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_0a80:  conv.i4
      IL_0a81:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<float32> Game.SubsystemFluidBlockBehavior::GetSurfaceHeight(int32,
                                                                                                                                            int32,
                                                                                                                                            int32)
      IL_0a86:  stloc.s    V_39
      IL_0a88:  ldloca.s   V_39
      IL_0a8a:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float32>::get_HasValue()
      IL_0a8f:  brfalse.s  IL_0b07

      IL_0a91:  ldarg.0
      IL_0a92:  ldfld      class Game.SubsystemParticles Game.SubsystemProjectiles::m_subsystemParticles
      IL_0a97:  ldarg.0
      IL_0a98:  ldfld      class Game.SubsystemTerrain Game.SubsystemProjectiles::m_subsystemTerrain
      IL_0a9d:  ldloc.2
      IL_0a9e:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0aa3:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_0aa8:  ldloca.s   V_39
      IL_0aaa:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
      IL_0aaf:  ldloc.2
      IL_0ab0:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0ab5:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_0aba:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                       float32,
                                                                       float32)
      IL_0abf:  ldc.i4.0
      IL_0ac0:  newobj     instance void Game.WaterSplashParticleSystem::.ctor(class Game.SubsystemTerrain,
                                                                               valuetype [Engine]Engine.Vector3,
                                                                               bool)
      IL_0ac5:  callvirt   instance void Game.SubsystemParticles::AddParticleSystem(class Game.ParticleSystemBase)
      IL_0aca:  ldarg.0
      IL_0acb:  ldfld      class Game.SubsystemAudio Game.SubsystemProjectiles::m_subsystemAudio
      IL_0ad0:  ldstr      "Audio/Splashes"
      IL_0ad5:  ldc.r4     1.
      IL_0ada:  ldarg.0
      IL_0adb:  ldfld      class Game.Random Game.SubsystemProjectiles::m_random
      IL_0ae0:  ldc.r4     -0.2
      IL_0ae5:  ldc.r4     0.2
      IL_0aea:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                      float32)
      IL_0aef:  ldloc.2
      IL_0af0:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0af5:  ldc.r4     6.
      IL_0afa:  ldc.i4.1
      IL_0afb:  callvirt   instance void Game.SubsystemAudio::PlayRandomSound(string,
                                                                              float32,
                                                                              float32,
                                                                              valuetype [Engine]Engine.Vector3,
                                                                              float32,
                                                                              bool)
      IL_0b00:  ldarg.0
      IL_0b01:  ldloc.2
      IL_0b02:  call       instance void Game.SubsystemProjectiles::MakeProjectileNoise(class Game.Projectile)
      IL_0b07:  ldloc.2
      IL_0b08:  ldloc.s    V_13
      IL_0b0a:  stfld      bool Game.Projectile::IsInWater
      IL_0b0f:  ldarg.0
      IL_0b10:  ldloc.2
      IL_0b11:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0b16:  call       instance bool Game.SubsystemProjectiles::IsMagma(valuetype [Engine]Engine.Vector3)
      IL_0b1b:  brfalse    IL_0bb0

      IL_0b20:  ldarg.0
      IL_0b21:  ldfld      class Game.SubsystemParticles Game.SubsystemProjectiles::m_subsystemParticles
      IL_0b26:  ldarg.0
      IL_0b27:  ldfld      class Game.SubsystemTerrain Game.SubsystemProjectiles::m_subsystemTerrain
      IL_0b2c:  ldloc.2
      IL_0b2d:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0b32:  ldc.i4.0
      IL_0b33:  newobj     instance void Game.MagmaSplashParticleSystem::.ctor(class Game.SubsystemTerrain,
                                                                               valuetype [Engine]Engine.Vector3,
                                                                               bool)
      IL_0b38:  callvirt   instance void Game.SubsystemParticles::AddParticleSystem(class Game.ParticleSystemBase)
      IL_0b3d:  ldarg.0
      IL_0b3e:  ldfld      class Game.SubsystemAudio Game.SubsystemProjectiles::m_subsystemAudio
      IL_0b43:  ldstr      "Audio/Sizzles"
      IL_0b48:  ldc.r4     1.
      IL_0b4d:  ldarg.0
      IL_0b4e:  ldfld      class Game.Random Game.SubsystemProjectiles::m_random
      IL_0b53:  ldc.r4     -0.2
      IL_0b58:  ldc.r4     0.2
      IL_0b5d:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                      float32)
      IL_0b62:  ldloc.2
      IL_0b63:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0b68:  ldc.r4     3.
      IL_0b6d:  ldc.i4.1
      IL_0b6e:  callvirt   instance void Game.SubsystemAudio::PlayRandomSound(string,
                                                                              float32,
                                                                              float32,
                                                                              valuetype [Engine]Engine.Vector3,
                                                                              float32,
                                                                              bool)
      IL_0b73:  ldloc.2
      IL_0b74:  ldc.i4.1
      IL_0b75:  stfld      bool Game.WorldItem::ToRemove
      IL_0b7a:  ldarg.0
      IL_0b7b:  ldfld      class Game.SubsystemExplosions Game.SubsystemProjectiles::m_subsystemExplosions
      IL_0b80:  ldloc.2
      IL_0b81:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0b86:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_0b8b:  conv.i4
      IL_0b8c:  ldloc.2
      IL_0b8d:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0b92:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_0b97:  conv.i4
      IL_0b98:  ldloc.2
      IL_0b99:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0b9e:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_0ba3:  conv.i4
      IL_0ba4:  ldloc.2
      IL_0ba5:  ldfld      int32 Game.WorldItem::Value
      IL_0baa:  callvirt   instance bool Game.SubsystemExplosions::TryExplodeBlock(int32,
                                                                                   int32,
                                                                                   int32,
                                                                                   int32)
      IL_0baf:  pop
      IL_0bb0:  ldarg.0
      IL_0bb1:  ldfld      class Game.SubsystemTime Game.SubsystemProjectiles::m_subsystemTime
      IL_0bb6:  ldc.r8     1.
      IL_0bbf:  ldloc.2
      IL_0bc0:  callvirt   instance int32 [System.Runtime]System.Object::GetHashCode()
      IL_0bc5:  ldc.i4.s   100
      IL_0bc7:  rem
      IL_0bc8:  conv.r8
      IL_0bc9:  ldc.r8     100.
      IL_0bd2:  div
      IL_0bd3:  callvirt   instance bool Game.SubsystemTime::PeriodicGameTimeEvent(float64,
                                                                                   float64)
      IL_0bd8:  brfalse    IL_0cc0

      IL_0bdd:  ldarg.0
      IL_0bde:  ldfld      class Game.SubsystemFireBlockBehavior Game.SubsystemProjectiles::m_subsystemFireBlockBehavior
      IL_0be3:  ldloc.2
      IL_0be4:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0be9:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_0bee:  conv.i4
      IL_0bef:  ldloc.2
      IL_0bf0:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0bf5:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_0bfa:  ldc.r4     0.1
      IL_0bff:  add
      IL_0c00:  conv.i4
      IL_0c01:  ldloc.2
      IL_0c02:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0c07:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_0c0c:  conv.i4
      IL_0c0d:  callvirt   instance bool Game.SubsystemFireBlockBehavior::IsCellOnFire(int32,
                                                                                       int32,
                                                                                       int32)
      IL_0c12:  brtrue.s   IL_0c4d

      IL_0c14:  ldarg.0
      IL_0c15:  ldfld      class Game.SubsystemFireBlockBehavior Game.SubsystemProjectiles::m_subsystemFireBlockBehavior
      IL_0c1a:  ldloc.2
      IL_0c1b:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0c20:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_0c25:  conv.i4
      IL_0c26:  ldloc.2
      IL_0c27:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0c2c:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_0c31:  ldc.r4     0.1
      IL_0c36:  add
      IL_0c37:  conv.i4
      IL_0c38:  ldc.i4.1
      IL_0c39:  sub
      IL_0c3a:  ldloc.2
      IL_0c3b:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0c40:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_0c45:  conv.i4
      IL_0c46:  callvirt   instance bool Game.SubsystemFireBlockBehavior::IsCellOnFire(int32,
                                                                                       int32,
                                                                                       int32)
      IL_0c4b:  brfalse.s  IL_0cc0

      IL_0c4d:  ldarg.0
      IL_0c4e:  ldfld      class Game.SubsystemAudio Game.SubsystemProjectiles::m_subsystemAudio
      IL_0c53:  ldstr      "Audio/Sizzles"
      IL_0c58:  ldc.r4     1.
      IL_0c5d:  ldarg.0
      IL_0c5e:  ldfld      class Game.Random Game.SubsystemProjectiles::m_random
      IL_0c63:  ldc.r4     -0.2
      IL_0c68:  ldc.r4     0.2
      IL_0c6d:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                      float32)
      IL_0c72:  ldloc.2
      IL_0c73:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0c78:  ldc.r4     3.
      IL_0c7d:  ldc.i4.1
      IL_0c7e:  callvirt   instance void Game.SubsystemAudio::PlayRandomSound(string,
                                                                              float32,
                                                                              float32,
                                                                              valuetype [Engine]Engine.Vector3,
                                                                              float32,
                                                                              bool)
      IL_0c83:  ldloc.2
      IL_0c84:  ldc.i4.1
      IL_0c85:  stfld      bool Game.WorldItem::ToRemove
      IL_0c8a:  ldarg.0
      IL_0c8b:  ldfld      class Game.SubsystemExplosions Game.SubsystemProjectiles::m_subsystemExplosions
      IL_0c90:  ldloc.2
      IL_0c91:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0c96:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_0c9b:  conv.i4
      IL_0c9c:  ldloc.2
      IL_0c9d:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0ca2:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_0ca7:  conv.i4
      IL_0ca8:  ldloc.2
      IL_0ca9:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0cae:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_0cb3:  conv.i4
      IL_0cb4:  ldloc.2
      IL_0cb5:  ldfld      int32 Game.WorldItem::Value
      IL_0cba:  callvirt   instance bool Game.SubsystemExplosions::TryExplodeBlock(int32,
                                                                                   int32,
                                                                                   int32,
                                                                                   int32)
      IL_0cbf:  pop
      IL_0cc0:  ldloca.s   V_1
      IL_0cc2:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.Projectile>::MoveNext()
      IL_0cc7:  brtrue     IL_001d

      IL_0ccc:  leave.s    IL_0cdc

    }  // end .try
    finally
    {
      IL_0cce:  ldloca.s   V_1
      IL_0cd0:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.Projectile>
      IL_0cd6:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0cdb:  endfinally
    }  // end handler
    IL_0cdc:  ldarg.0
    IL_0cdd:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Projectile> Game.SubsystemProjectiles::m_projectilesToRemove
    IL_0ce2:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.Projectile>::GetEnumerator()
    IL_0ce7:  stloc.1
    .try
    {
      IL_0ce8:  br.s       IL_0d2c

      IL_0cea:  ldloca.s   V_1
      IL_0cec:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.Projectile>::get_Current()
      IL_0cf1:  stloc.s    V_41
      IL_0cf3:  ldloc.s    V_41
      IL_0cf5:  ldfld      class Game.ITrailParticleSystem Game.Projectile::TrailParticleSystem
      IL_0cfa:  brfalse.s  IL_0d09

      IL_0cfc:  ldloc.s    V_41
      IL_0cfe:  ldfld      class Game.ITrailParticleSystem Game.Projectile::TrailParticleSystem
      IL_0d03:  ldc.i4.1
      IL_0d04:  callvirt   instance void Game.ITrailParticleSystem::set_IsStopped(bool)
      IL_0d09:  ldarg.0
      IL_0d0a:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Projectile> Game.SubsystemProjectiles::m_projectiles
      IL_0d0f:  ldloc.s    V_41
      IL_0d11:  callvirt   instance bool class [System.Collections]System.Collections.Generic.List`1<class Game.Projectile>::Remove(!0)
      IL_0d16:  pop
      IL_0d17:  ldarg.0
      IL_0d18:  ldfld      class [System.Runtime]System.Action`1<class Game.Projectile> Game.SubsystemProjectiles::ProjectileRemoved
      IL_0d1d:  brfalse.s  IL_0d2c

      IL_0d1f:  ldarg.0
      IL_0d20:  ldfld      class [System.Runtime]System.Action`1<class Game.Projectile> Game.SubsystemProjectiles::ProjectileRemoved
      IL_0d25:  ldloc.s    V_41
      IL_0d27:  callvirt   instance void class [System.Runtime]System.Action`1<class Game.Projectile>::Invoke(!0)
      IL_0d2c:  ldloca.s   V_1
      IL_0d2e:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.Projectile>::MoveNext()
      IL_0d33:  brtrue.s   IL_0cea

      IL_0d35:  leave.s    IL_0d45

    }  // end .try
    finally
    {
      IL_0d37:  ldloca.s   V_1
      IL_0d39:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.Projectile>
      IL_0d3f:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0d44:  endfinally
    }  // end handler
    IL_0d45:  ldarg.0
    IL_0d46:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Projectile> Game.SubsystemProjectiles::m_projectilesToRemove
    IL_0d4b:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.Projectile>::Clear()
    IL_0d50:  ret
  } // end of method SubsystemProjectiles::Update

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       431 (0x1af)
    .maxstack  3
    .locals init (class [System.Runtime]System.Collections.Generic.IEnumerator`1<object> V_0,
             class [EntitySystem]TemplatesDatabase.ValuesDictionary V_1,
             class Game.Projectile V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemAudio>(bool)
    IL_000d:  stfld      class Game.SubsystemAudio Game.SubsystemProjectiles::m_subsystemAudio
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemSoundMaterials>(bool)
    IL_001f:  stfld      class Game.SubsystemSoundMaterials Game.SubsystemProjectiles::m_subsystemSoundMaterials
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemParticles>(bool)
    IL_0031:  stfld      class Game.SubsystemParticles Game.SubsystemProjectiles::m_subsystemParticles
    IL_0036:  ldarg.0
    IL_0037:  ldarg.0
    IL_0038:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_003d:  ldc.i4.1
    IL_003e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemPickables>(bool)
    IL_0043:  stfld      class Game.SubsystemPickables Game.SubsystemProjectiles::m_subsystemPickables
    IL_0048:  ldarg.0
    IL_0049:  ldarg.0
    IL_004a:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_004f:  ldc.i4.1
    IL_0050:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemBodies>(bool)
    IL_0055:  stfld      class Game.SubsystemBodies Game.SubsystemProjectiles::m_subsystemBodies
    IL_005a:  ldarg.0
    IL_005b:  ldarg.0
    IL_005c:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0061:  ldc.i4.1
    IL_0062:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_0067:  stfld      class Game.SubsystemTerrain Game.SubsystemProjectiles::m_subsystemTerrain
    IL_006c:  ldarg.0
    IL_006d:  ldarg.0
    IL_006e:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0073:  ldc.i4.1
    IL_0074:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemSky>(bool)
    IL_0079:  stfld      class Game.SubsystemSky Game.SubsystemProjectiles::m_subsystemSky
    IL_007e:  ldarg.0
    IL_007f:  ldarg.0
    IL_0080:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0085:  ldc.i4.1
    IL_0086:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_008b:  stfld      class Game.SubsystemTime Game.SubsystemProjectiles::m_subsystemTime
    IL_0090:  ldarg.0
    IL_0091:  ldarg.0
    IL_0092:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0097:  ldc.i4.1
    IL_0098:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemNoise>(bool)
    IL_009d:  stfld      class Game.SubsystemNoise Game.SubsystemProjectiles::m_subsystemNoise
    IL_00a2:  ldarg.0
    IL_00a3:  ldarg.0
    IL_00a4:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_00a9:  ldc.i4.1
    IL_00aa:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemExplosions>(bool)
    IL_00af:  stfld      class Game.SubsystemExplosions Game.SubsystemProjectiles::m_subsystemExplosions
    IL_00b4:  ldarg.0
    IL_00b5:  ldarg.0
    IL_00b6:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_00bb:  ldc.i4.1
    IL_00bc:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGameInfo>(bool)
    IL_00c1:  stfld      class Game.SubsystemGameInfo Game.SubsystemProjectiles::m_subsystemGameInfo
    IL_00c6:  ldarg.0
    IL_00c7:  ldarg.0
    IL_00c8:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_00cd:  ldc.i4.1
    IL_00ce:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemBlockBehaviors>(bool)
    IL_00d3:  stfld      class Game.SubsystemBlockBehaviors Game.SubsystemProjectiles::m_subsystemBlockBehaviors
    IL_00d8:  ldarg.0
    IL_00d9:  ldarg.0
    IL_00da:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_00df:  ldc.i4.1
    IL_00e0:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemFluidBlockBehavior>(bool)
    IL_00e5:  stfld      class Game.SubsystemFluidBlockBehavior Game.SubsystemProjectiles::m_subsystemFluidBlockBehavior
    IL_00ea:  ldarg.0
    IL_00eb:  ldarg.0
    IL_00ec:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_00f1:  ldc.i4.1
    IL_00f2:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemFireBlockBehavior>(bool)
    IL_00f7:  stfld      class Game.SubsystemFireBlockBehavior Game.SubsystemProjectiles::m_subsystemFireBlockBehavior
    IL_00fc:  ldarg.1
    IL_00fd:  ldstr      "Projectiles"
    IL_0102:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<class [EntitySystem]TemplatesDatabase.ValuesDictionary>(string)
    IL_0107:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<object> [EntitySystem]TemplatesDatabase.ValuesDictionary::get_Values()
    IL_010c:  ldsfld     class [System.Runtime]System.Func`2<object,bool> Game.SubsystemProjectiles/'<>c'::'<>9__39_0'
    IL_0111:  dup
    IL_0112:  brtrue.s   IL_012b

    IL_0114:  pop
    IL_0115:  ldsfld     class Game.SubsystemProjectiles/'<>c' Game.SubsystemProjectiles/'<>c'::'<>9'
    IL_011a:  ldftn      instance bool Game.SubsystemProjectiles/'<>c'::'<Load>b__39_0'(object)
    IL_0120:  newobj     instance void class [System.Runtime]System.Func`2<object,bool>::.ctor(object,
                                                                                               native int)
    IL_0125:  dup
    IL_0126:  stsfld     class [System.Runtime]System.Func`2<object,bool> Game.SubsystemProjectiles/'<>c'::'<>9__39_0'
    IL_012b:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<object>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                class [System.Runtime]System.Func`2<!!0,bool>)
    IL_0130:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<object>::GetEnumerator()
    IL_0135:  stloc.0
    .try
    {
      IL_0136:  br.s       IL_019a

      IL_0138:  ldloc.0
      IL_0139:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<object>::get_Current()
      IL_013e:  castclass  [EntitySystem]TemplatesDatabase.ValuesDictionary
      IL_0143:  stloc.1
      IL_0144:  newobj     instance void Game.Projectile::.ctor()
      IL_0149:  stloc.2
      IL_014a:  ldloc.2
      IL_014b:  ldloc.1
      IL_014c:  ldstr      "Value"
      IL_0151:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<int32>(string)
      IL_0156:  stfld      int32 Game.WorldItem::Value
      IL_015b:  ldloc.2
      IL_015c:  ldloc.1
      IL_015d:  ldstr      "Position"
      IL_0162:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<valuetype [Engine]Engine.Vector3>(string)
      IL_0167:  stfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_016c:  ldloc.2
      IL_016d:  ldloc.1
      IL_016e:  ldstr      "Velocity"
      IL_0173:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<valuetype [Engine]Engine.Vector3>(string)
      IL_0178:  stfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_017d:  ldloc.2
      IL_017e:  ldloc.1
      IL_017f:  ldstr      "CreationTime"
      IL_0184:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float64>(string)
      IL_0189:  stfld      float64 Game.WorldItem::CreationTime
      IL_018e:  ldarg.0
      IL_018f:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Projectile> Game.SubsystemProjectiles::m_projectiles
      IL_0194:  ldloc.2
      IL_0195:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.Projectile>::Add(!0)
      IL_019a:  ldloc.0
      IL_019b:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_01a0:  brtrue.s   IL_0138

      IL_01a2:  leave.s    IL_01ae

    }  // end .try
    finally
    {
      IL_01a4:  ldloc.0
      IL_01a5:  brfalse.s  IL_01ad

      IL_01a7:  ldloc.0
      IL_01a8:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_01ad:  endfinally
    }  // end handler
    IL_01ae:  ret
  } // end of method SubsystemProjectiles::Load

  .method family hidebysig virtual instance void 
          Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       166 (0xa6)
    .maxstack  3
    .locals init (class [EntitySystem]TemplatesDatabase.ValuesDictionary V_0,
             int32 V_1,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.Projectile> V_2,
             class Game.Projectile V_3,
             class [EntitySystem]TemplatesDatabase.ValuesDictionary V_4)
    IL_0000:  newobj     instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldarg.1
    IL_0007:  ldstr      "Projectiles"
    IL_000c:  ldloc.0
    IL_000d:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<class [EntitySystem]TemplatesDatabase.ValuesDictionary>(string,
                                                                                                                                                          !!0)
    IL_0012:  ldc.i4.0
    IL_0013:  stloc.1
    IL_0014:  ldarg.0
    IL_0015:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Projectile> Game.SubsystemProjectiles::m_projectiles
    IL_001a:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.Projectile>::GetEnumerator()
    IL_001f:  stloc.2
    .try
    {
      IL_0020:  br.s       IL_008c

      IL_0022:  ldloca.s   V_2
      IL_0024:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.Projectile>::get_Current()
      IL_0029:  stloc.3
      IL_002a:  newobj     instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::.ctor()
      IL_002f:  stloc.s    V_4
      IL_0031:  ldloc.0
      IL_0032:  ldloca.s   V_1
      IL_0034:  call       instance string [System.Runtime]System.Int32::ToString()
      IL_0039:  ldloc.s    V_4
      IL_003b:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<class [EntitySystem]TemplatesDatabase.ValuesDictionary>(string,
                                                                                                                                                            !!0)
      IL_0040:  ldloc.s    V_4
      IL_0042:  ldstr      "Value"
      IL_0047:  ldloc.3
      IL_0048:  ldfld      int32 Game.WorldItem::Value
      IL_004d:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<int32>(string,
                                                                                                           !!0)
      IL_0052:  ldloc.s    V_4
      IL_0054:  ldstr      "Position"
      IL_0059:  ldloc.3
      IL_005a:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_005f:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<valuetype [Engine]Engine.Vector3>(string,
                                                                                                                                      !!0)
      IL_0064:  ldloc.s    V_4
      IL_0066:  ldstr      "Velocity"
      IL_006b:  ldloc.3
      IL_006c:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_0071:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<valuetype [Engine]Engine.Vector3>(string,
                                                                                                                                      !!0)
      IL_0076:  ldloc.s    V_4
      IL_0078:  ldstr      "CreationTime"
      IL_007d:  ldloc.3
      IL_007e:  ldfld      float64 Game.WorldItem::CreationTime
      IL_0083:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<float64>(string,
                                                                                                             !!0)
      IL_0088:  ldloc.1
      IL_0089:  ldc.i4.1
      IL_008a:  add
      IL_008b:  stloc.1
      IL_008c:  ldloca.s   V_2
      IL_008e:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.Projectile>::MoveNext()
      IL_0093:  brtrue.s   IL_0022

      IL_0095:  leave.s    IL_00a5

    }  // end .try
    finally
    {
      IL_0097:  ldloca.s   V_2
      IL_0099:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.Projectile>
      IL_009f:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00a4:  endfinally
    }  // end handler
    IL_00a5:  ret
  } // end of method SubsystemProjectiles::Save

  .method private hidebysig instance bool 
          IsWater(valuetype [Engine]Engine.Vector3 position) cil managed
  {
    // 代码大小       54 (0x36)
    .maxstack  4
    .locals init (int32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.SubsystemProjectiles::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_000b:  ldarg.1
    IL_000c:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0011:  conv.i4
    IL_0012:  ldarg.1
    IL_0013:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0018:  conv.i4
    IL_0019:  ldarg.1
    IL_001a:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_001f:  conv.i4
    IL_0020:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                          int32,
                                                                          int32)
    IL_0025:  stloc.0
    IL_0026:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_002b:  ldloc.0
    IL_002c:  ldelem.ref
    IL_002d:  isinst     Game.WaterBlock
    IL_0032:  ldnull
    IL_0033:  cgt.un
    IL_0035:  ret
  } // end of method SubsystemProjectiles::IsWater

  .method private hidebysig instance bool 
          IsMagma(valuetype [Engine]Engine.Vector3 position) cil managed
  {
    // 代码大小       54 (0x36)
    .maxstack  4
    .locals init (int32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.SubsystemProjectiles::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_000b:  ldarg.1
    IL_000c:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0011:  conv.i4
    IL_0012:  ldarg.1
    IL_0013:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0018:  conv.i4
    IL_0019:  ldarg.1
    IL_001a:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_001f:  conv.i4
    IL_0020:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                          int32,
                                                                          int32)
    IL_0025:  stloc.0
    IL_0026:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_002b:  ldloc.0
    IL_002c:  ldelem.ref
    IL_002d:  isinst     Game.MagmaBlock
    IL_0032:  ldnull
    IL_0033:  cgt.un
    IL_0035:  ret
  } // end of method SubsystemProjectiles::IsMagma

  .method private hidebysig instance void 
          MakeProjectileNoise(class Game.Projectile projectile) cil managed
  {
    // 代码大小       74 (0x4a)
    .maxstack  4
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTime Game.SubsystemProjectiles::m_subsystemTime
    IL_0006:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_000b:  ldarg.1
    IL_000c:  ldfld      float64 Game.Projectile::LastNoiseTime
    IL_0011:  sub
    IL_0012:  ldc.r8     0.5
    IL_001b:  ble.un.s   IL_0049

    IL_001d:  ldarg.0
    IL_001e:  ldfld      class Game.SubsystemNoise Game.SubsystemProjectiles::m_subsystemNoise
    IL_0023:  ldarg.1
    IL_0024:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
    IL_0029:  ldc.r4     0.25
    IL_002e:  ldc.r4     6.
    IL_0033:  callvirt   instance void Game.SubsystemNoise::MakeNoise(valuetype [Engine]Engine.Vector3,
                                                                      float32,
                                                                      float32)
    IL_0038:  ldarg.1
    IL_0039:  ldarg.0
    IL_003a:  ldfld      class Game.SubsystemTime Game.SubsystemProjectiles::m_subsystemTime
    IL_003f:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0044:  stfld      float64 Game.Projectile::LastNoiseTime
    IL_0049:  ret
  } // end of method SubsystemProjectiles::MakeProjectileNoise

  .method private hidebysig static void  CalculateVelocityAlignMatrix(class Game.Block projectileBlock,
                                                                      valuetype [Engine]Engine.Vector3 position,
                                                                      valuetype [Engine]Engine.Vector3 velocity,
                                                                      [out] valuetype [Engine]Engine.Matrix& matrix) cil managed
  {
    // 代码大小       86 (0x56)
    .maxstack  3
    IL_0000:  ldarg.3
    IL_0001:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
    IL_0006:  stobj      [Engine]Engine.Matrix
    IL_000b:  ldarg.3
    IL_000c:  ldarg.2
    IL_000d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0012:  call       instance void [Engine]Engine.Matrix::set_Up(valuetype [Engine]Engine.Vector3)
    IL_0017:  ldarg.3
    IL_0018:  ldarg.3
    IL_0019:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Up()
    IL_001e:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_0023:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Cross(valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3)
    IL_0028:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_002d:  call       instance void [Engine]Engine.Matrix::set_Right(valuetype [Engine]Engine.Vector3)
    IL_0032:  ldarg.3
    IL_0033:  ldarg.3
    IL_0034:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Up()
    IL_0039:  ldarg.3
    IL_003a:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Right()
    IL_003f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Cross(valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3)
    IL_0044:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0049:  call       instance void [Engine]Engine.Matrix::set_Forward(valuetype [Engine]Engine.Vector3)
    IL_004e:  ldarg.3
    IL_004f:  ldarg.1
    IL_0050:  call       instance void [Engine]Engine.Matrix::set_Translation(valuetype [Engine]Engine.Vector3)
    IL_0055:  ret
  } // end of method SubsystemProjectiles::CalculateVelocityAlignMatrix

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       62 (0x3e)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.Projectile>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Projectile> Game.SubsystemProjectiles::m_projectiles
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.Projectile>::.ctor()
    IL_0011:  stfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Projectile> Game.SubsystemProjectiles::m_projectilesToRemove
    IL_0016:  ldarg.0
    IL_0017:  newobj     instance void [Engine]Engine.Graphics.PrimitivesRenderer3D::.ctor()
    IL_001c:  stfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.SubsystemProjectiles::m_primitivesRenderer
    IL_0021:  ldarg.0
    IL_0022:  newobj     instance void Game.Random::.ctor()
    IL_0027:  stfld      class Game.Random Game.SubsystemProjectiles::m_random
    IL_002c:  ldarg.0
    IL_002d:  newobj     instance void Game.DrawBlockEnvironmentData::.ctor()
    IL_0032:  stfld      class Game.DrawBlockEnvironmentData Game.SubsystemProjectiles::m_drawBlockEnvironmentData
    IL_0037:  ldarg.0
    IL_0038:  call       instance void [EntitySystem]GameEntitySystem.Subsystem::.ctor()
    IL_003d:  ret
  } // end of method SubsystemProjectiles::.ctor

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       17 (0x11)
    .maxstack  8
    IL_0000:  ldc.i4.1
    IL_0001:  newarr     [System.Runtime]System.Int32
    IL_0006:  dup
    IL_0007:  ldc.i4.0
    IL_0008:  ldc.i4.s   10
    IL_000a:  stelem.i4
    IL_000b:  stsfld     int32[] Game.SubsystemProjectiles::m_drawOrders
    IL_0010:  ret
  } // end of method SubsystemProjectiles::.cctor

  .event class [System.Runtime]System.Action`1<class Game.Projectile> ProjectileAdded
  {
    .addon instance void Game.SubsystemProjectiles::add_ProjectileAdded(class [System.Runtime]System.Action`1<class Game.Projectile>)
    .removeon instance void Game.SubsystemProjectiles::remove_ProjectileAdded(class [System.Runtime]System.Action`1<class Game.Projectile>)
  } // end of event SubsystemProjectiles::ProjectileAdded
  .event class [System.Runtime]System.Action`1<class Game.Projectile> ProjectileRemoved
  {
    .addon instance void Game.SubsystemProjectiles::add_ProjectileRemoved(class [System.Runtime]System.Action`1<class Game.Projectile>)
    .removeon instance void Game.SubsystemProjectiles::remove_ProjectileRemoved(class [System.Runtime]System.Action`1<class Game.Projectile>)
  } // end of event SubsystemProjectiles::ProjectileRemoved
  .property instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.Projectile>
          Projectiles()
  {
    .get instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.Projectile> Game.SubsystemProjectiles::get_Projectiles()
  } // end of property SubsystemProjectiles::Projectiles
  .property instance int32[] DrawOrders()
  {
    .get instance int32[] Game.SubsystemProjectiles::get_DrawOrders()
  } // end of property SubsystemProjectiles::DrawOrders
  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.SubsystemProjectiles::get_UpdateOrder()
  } // end of property SubsystemProjectiles::UpdateOrder
} // end of class Game.SubsystemProjectiles