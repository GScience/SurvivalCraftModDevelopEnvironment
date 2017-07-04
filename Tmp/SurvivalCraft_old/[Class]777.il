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
      IL_0006:  call       int32 Game.Terrain::ExtractContents(int32)
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
      IL_0006:  call       int32 Game.Terrain::ExtractContents(int32)
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
    IL_0006:  newobj     instance void valuetype [Engine]Engine.ReadOnlyList`1<class Game.Projectile>::.ctor(class [System.Runtime]System.Collections.Generic.IList`1<!0>)
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
    IL_0001:  call       int32 Game.Terrain::ExtractContents(int32)
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
          instance void  Draw(class Game.Camera camera,
                              int32 drawOrder) cil managed
  {
    // 代码大小       595 (0x253)
    .maxstack  7
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
      IL_003e:  br         IL_021f

      IL_0043:  ldloca.s   V_1
      IL_0045:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.Projectile>::get_Current()
      IL_004a:  stloc.2
      IL_004b:  ldloc.2
      IL_004c:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0051:  stloc.3
      IL_0052:  ldloc.2
      IL_0053:  ldfld      bool Game.Projectile::NoChunk
      IL_0058:  brtrue     IL_021f

      IL_005d:  ldarg.1
      IL_005e:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewPosition()
      IL_0063:  ldloc.3
      IL_0064:  call       float32 [Engine]Engine.Vector3::DistanceSquared(valuetype [Engine]Engine.Vector3,
                                                                           valuetype [Engine]Engine.Vector3)
      IL_0069:  ldloc.0
      IL_006a:  bge.un     IL_021f

      IL_006f:  ldarg.1
      IL_0070:  callvirt   instance class [Engine]Engine.BoundingFrustum Game.Camera::get_ViewFrustum()
      IL_0075:  ldloc.3
      IL_0076:  callvirt   instance bool [Engine]Engine.BoundingFrustum::Intersection(valuetype [Engine]Engine.Vector3)
      IL_007b:  brfalse    IL_021f

      IL_0080:  ldloc.3
      IL_0081:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_0086:  call       int32 Game.Terrain::ToCell(float32)
      IL_008b:  stloc.s    V_4
      IL_008d:  ldloc.3
      IL_008e:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_0093:  call       int32 Game.Terrain::ToCell(float32)
      IL_0098:  stloc.s    V_5
      IL_009a:  ldloc.3
      IL_009b:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_00a0:  call       int32 Game.Terrain::ToCell(float32)
      IL_00a5:  stloc.s    V_6
      IL_00a7:  ldloc.2
      IL_00a8:  ldfld      int32 Game.WorldItem::Value
      IL_00ad:  call       int32 Game.Terrain::ExtractContents(int32)
      IL_00b2:  stloc.s    V_7
      IL_00b4:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
      IL_00b9:  ldloc.s    V_7
      IL_00bb:  ldelem.ref
      IL_00bc:  stloc.s    V_8
      IL_00be:  ldarg.0
      IL_00bf:  ldfld      class Game.SubsystemTerrain Game.SubsystemProjectiles::m_subsystemTerrain
      IL_00c4:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
      IL_00c9:  ldloc.s    V_4
      IL_00cb:  ldloc.s    V_6
      IL_00cd:  callvirt   instance class Game.TerrainChunk Game.Terrain::GetChunkAtCell(int32,
                                                                                         int32)
      IL_00d2:  stloc.s    V_9
      IL_00d4:  ldloc.s    V_9
      IL_00d6:  brfalse.s  IL_0147

      IL_00d8:  ldloc.s    V_9
      IL_00da:  ldfld      valuetype Game.TerrainChunkState Game.TerrainChunk::State
      IL_00df:  ldc.i4.7
      IL_00e0:  blt.s      IL_0147

      IL_00e2:  ldloc.s    V_5
      IL_00e4:  ldc.i4.0
      IL_00e5:  blt.s      IL_0147

      IL_00e7:  ldloc.s    V_5
      IL_00e9:  ldc.i4.s   127
      IL_00eb:  bge.s      IL_0147

      IL_00ed:  ldarg.0
      IL_00ee:  ldfld      class Game.DrawBlockEnvironmentData Game.SubsystemProjectiles::m_drawBlockEnvironmentData
      IL_00f3:  ldarg.0
      IL_00f4:  ldfld      class Game.SubsystemTerrain Game.SubsystemProjectiles::m_subsystemTerrain
      IL_00f9:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
      IL_00fe:  ldloc.s    V_4
      IL_0100:  ldloc.s    V_6
      IL_0102:  callvirt   instance int32 Game.Terrain::GetHumidity(int32,
                                                                    int32)
      IL_0107:  stfld      int32 Game.DrawBlockEnvironmentData::Humidity
      IL_010c:  ldarg.0
      IL_010d:  ldfld      class Game.DrawBlockEnvironmentData Game.SubsystemProjectiles::m_drawBlockEnvironmentData
      IL_0112:  ldarg.0
      IL_0113:  ldfld      class Game.SubsystemTerrain Game.SubsystemProjectiles::m_subsystemTerrain
      IL_0118:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
      IL_011d:  ldloc.s    V_4
      IL_011f:  ldloc.s    V_6
      IL_0121:  callvirt   instance int32 Game.Terrain::GetTemperature(int32,
                                                                       int32)
      IL_0126:  stfld      int32 Game.DrawBlockEnvironmentData::Temperature
      IL_012b:  ldloc.2
      IL_012c:  ldarg.0
      IL_012d:  ldfld      class Game.SubsystemTerrain Game.SubsystemProjectiles::m_subsystemTerrain
      IL_0132:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
      IL_0137:  ldloc.s    V_4
      IL_0139:  ldloc.s    V_5
      IL_013b:  ldloc.s    V_6
      IL_013d:  callvirt   instance int32 Game.Terrain::GetCellLightFast(int32,
                                                                         int32,
                                                                         int32)
      IL_0142:  stfld      int32 Game.WorldItem::Light
      IL_0147:  ldarg.0
      IL_0148:  ldfld      class Game.DrawBlockEnvironmentData Game.SubsystemProjectiles::m_drawBlockEnvironmentData
      IL_014d:  ldloc.2
      IL_014e:  ldfld      int32 Game.WorldItem::Light
      IL_0153:  stfld      int32 Game.DrawBlockEnvironmentData::Light
      IL_0158:  ldarg.0
      IL_0159:  ldfld      class Game.DrawBlockEnvironmentData Game.SubsystemProjectiles::m_drawBlockEnvironmentData
      IL_015e:  ldloc.s    V_8
      IL_0160:  ldfld      bool Game.Block::AlignToVelocity
      IL_0165:  brtrue.s   IL_0174

      IL_0167:  ldarg.1
      IL_0168:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewDirection()
      IL_016d:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
      IL_0172:  br.s       IL_017e

      IL_0174:  ldloca.s   V_11
      IL_0176:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>
      IL_017c:  ldloc.s    V_11
      IL_017e:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.DrawBlockEnvironmentData::BillboardDirection
      IL_0183:  ldarg.0
      IL_0184:  ldfld      class Game.DrawBlockEnvironmentData Game.SubsystemProjectiles::m_drawBlockEnvironmentData
      IL_0189:  ldflda     valuetype [Engine]Engine.Matrix Game.DrawBlockEnvironmentData::InWorldMatrix
      IL_018e:  ldloc.3
      IL_018f:  call       instance void [Engine]Engine.Matrix::set_Translation(valuetype [Engine]Engine.Vector3)
      IL_0194:  ldloc.s    V_8
      IL_0196:  ldfld      bool Game.Block::AlignToVelocity
      IL_019b:  brfalse.s  IL_01af

      IL_019d:  ldloc.s    V_8
      IL_019f:  ldloc.3
      IL_01a0:  ldloc.2
      IL_01a1:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_01a6:  ldloca.s   V_10
      IL_01a8:  call       void Game.SubsystemProjectiles::CalculateVelocityAlignMatrix(class Game.Block,
                                                                                        valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Matrix&)
      IL_01ad:  br.s       IL_01fa

      IL_01af:  ldloc.2
      IL_01b0:  ldfld      valuetype [Engine]Engine.Vector3 Game.Projectile::Rotation
      IL_01b5:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
      IL_01ba:  call       bool [Engine]Engine.Vector3::op_Inequality(valuetype [Engine]Engine.Vector3,
                                                                      valuetype [Engine]Engine.Vector3)
      IL_01bf:  brfalse.s  IL_01ed

      IL_01c1:  ldloc.2
      IL_01c2:  ldfld      valuetype [Engine]Engine.Vector3 Game.Projectile::Rotation
      IL_01c7:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
      IL_01cc:  ldloc.2
      IL_01cd:  ldflda     valuetype [Engine]Engine.Vector3 Game.Projectile::Rotation
      IL_01d2:  call       instance float32 [Engine]Engine.Vector3::Length()
      IL_01d7:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateFromAxisAngle(valuetype [Engine]Engine.Vector3,
                                                                                                      float32)
      IL_01dc:  stloc.s    V_10
      IL_01de:  ldloca.s   V_10
      IL_01e0:  ldloc.2
      IL_01e1:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_01e6:  call       instance void [Engine]Engine.Matrix::set_Translation(valuetype [Engine]Engine.Vector3)
      IL_01eb:  br.s       IL_01fa

      IL_01ed:  ldloc.2
      IL_01ee:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_01f3:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(valuetype [Engine]Engine.Vector3)
      IL_01f8:  stloc.s    V_10
      IL_01fa:  ldloc.s    V_8
      IL_01fc:  ldarg.0
      IL_01fd:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.SubsystemProjectiles::m_primitivesRenderer
      IL_0202:  ldloc.2
      IL_0203:  ldfld      int32 Game.WorldItem::Value
      IL_0208:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
      IL_020d:  ldc.r4     0.30000001
      IL_0212:  ldloca.s   V_10
      IL_0214:  ldarg.0
      IL_0215:  ldfld      class Game.DrawBlockEnvironmentData Game.SubsystemProjectiles::m_drawBlockEnvironmentData
      IL_021a:  callvirt   instance void Game.Block::DrawBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                               int32,
                                                               valuetype [Engine]Engine.Color,
                                                               float32,
                                                               valuetype [Engine]Engine.Matrix&,
                                                               class Game.DrawBlockEnvironmentData)
      IL_021f:  ldloca.s   V_1
      IL_0221:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.Projectile>::MoveNext()
      IL_0226:  brtrue     IL_0043

      IL_022b:  leave.s    IL_023b

    }  // end .try
    finally
    {
      IL_022d:  ldloca.s   V_1
      IL_022f:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.Projectile>
      IL_0235:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_023a:  endfinally
    }  // end handler
    IL_023b:  ldarg.0
    IL_023c:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.SubsystemProjectiles::m_primitivesRenderer
    IL_0241:  ldarg.1
    IL_0242:  callvirt   instance valuetype [Engine]Engine.Matrix Game.Camera::get_ViewProjectionMatrix()
    IL_0247:  ldc.i4.1
    IL_0248:  ldc.i4     0x7fffffff
    IL_024d:  callvirt   instance void class [Engine]Engine.Graphics.BasePrimitivesRenderer`3<class [Engine]Engine.Graphics.FlatBatch3D,class [Engine]Engine.Graphics.TexturedBatch3D,class [Engine]Engine.Graphics.FontBatch3D>::Flush(valuetype [Engine]Engine.Matrix,
                                                                                                                                                                                                                                        bool,
                                                                                                                                                                                                                                        int32)
    IL_0252:  ret
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
    // 代码大小       3482 (0xd9a)
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
      IL_0018:  br         IL_0d09

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
      IL_0039:  br         IL_0d09

      IL_003e:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
      IL_0043:  ldloc.2
      IL_0044:  ldfld      int32 Game.WorldItem::Value
      IL_0049:  call       int32 Game.Terrain::ExtractContents(int32)
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
      IL_0070:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
      IL_0075:  ldloc.2
      IL_0076:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_007b:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_0080:  call       int32 Game.Terrain::ToCell(float32)
      IL_0085:  ldloc.2
      IL_0086:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_008b:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_0090:  call       int32 Game.Terrain::ToCell(float32)
      IL_0095:  callvirt   instance class Game.TerrainChunk Game.Terrain::GetChunkAtCell(int32,
                                                                                         int32)
      IL_009a:  stloc.s    V_4
      IL_009c:  ldloc.s    V_4
      IL_009e:  brfalse.s  IL_00aa

      IL_00a0:  ldloc.s    V_4
      IL_00a2:  ldfld      valuetype Game.TerrainChunkState Game.TerrainChunk::State
      IL_00a7:  ldc.i4.4
      IL_00a8:  bgt.s      IL_00cd

      IL_00aa:  ldloc.2
      IL_00ab:  ldc.i4.1
      IL_00ac:  stfld      bool Game.Projectile::NoChunk
      IL_00b1:  ldloc.2
      IL_00b2:  ldfld      class Game.ITrailParticleSystem Game.Projectile::TrailParticleSystem
      IL_00b7:  brfalse    IL_0d09

      IL_00bc:  ldloc.2
      IL_00bd:  ldfld      class Game.ITrailParticleSystem Game.Projectile::TrailParticleSystem
      IL_00c2:  ldc.i4.1
      IL_00c3:  callvirt   instance void Game.ITrailParticleSystem::set_IsStopped(bool)
      IL_00c8:  br         IL_0d09

      IL_00cd:  ldloc.2
      IL_00ce:  ldc.i4.0
      IL_00cf:  stfld      bool Game.Projectile::NoChunk
      IL_00d4:  ldloc.2
      IL_00d5:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_00da:  stloc.s    V_5
      IL_00dc:  ldloc.s    V_5
      IL_00de:  ldloc.2
      IL_00df:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_00e4:  ldarg.1
      IL_00e5:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                                float32)
      IL_00ea:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_00ef:  stloc.s    V_6
      IL_00f1:  ldloc.3
      IL_00f2:  ldfld      float32 Game.Block::ProjectileTipOffset
      IL_00f7:  ldloc.2
      IL_00f8:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_00fd:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
      IL_0102:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0107:  stloc.s    V_7
      IL_0109:  ldarg.0
      IL_010a:  ldfld      class Game.SubsystemBodies Game.SubsystemProjectiles::m_subsystemBodies
      IL_010f:  ldloc.s    V_5
      IL_0111:  ldloc.s    V_7
      IL_0113:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0118:  ldloc.s    V_6
      IL_011a:  ldloc.s    V_7
      IL_011c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0121:  ldc.r4     0.2
      IL_0126:  ldsfld     class [System.Runtime]System.Func`3<class Game.ComponentBody,float32,bool> Game.SubsystemProjectiles/'<>c'::'<>9__38_0'
      IL_012b:  dup
      IL_012c:  brtrue.s   IL_0145

      IL_012e:  pop
      IL_012f:  ldsfld     class Game.SubsystemProjectiles/'<>c' Game.SubsystemProjectiles/'<>c'::'<>9'
      IL_0134:  ldftn      instance bool Game.SubsystemProjectiles/'<>c'::'<Update>b__38_0'(class Game.ComponentBody,
                                                                                            float32)
      IL_013a:  newobj     instance void class [System.Runtime]System.Func`3<class Game.ComponentBody,float32,bool>::.ctor(object,
                                                                                                                           native int)
      IL_013f:  dup
      IL_0140:  stsfld     class [System.Runtime]System.Func`3<class Game.ComponentBody,float32,bool> Game.SubsystemProjectiles/'<>c'::'<>9__38_0'
      IL_0145:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.BodyRaycastResult> Game.SubsystemBodies::Raycast(valuetype [Engine]Engine.Vector3,
                                                                                                                                                valuetype [Engine]Engine.Vector3,
                                                                                                                                                float32,
                                                                                                                                                class [System.Runtime]System.Func`3<class Game.ComponentBody,float32,bool>)
      IL_014a:  stloc.s    V_8
      IL_014c:  ldarg.0
      IL_014d:  ldfld      class Game.SubsystemTerrain Game.SubsystemProjectiles::m_subsystemTerrain
      IL_0152:  ldloc.s    V_5
      IL_0154:  ldloc.s    V_7
      IL_0156:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_015b:  ldloc.s    V_6
      IL_015d:  ldloc.s    V_7
      IL_015f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0164:  ldc.i4.0
      IL_0165:  ldc.i4.1
      IL_0166:  ldsfld     class [System.Runtime]System.Func`3<int32,float32,bool> Game.SubsystemProjectiles/'<>c'::'<>9__38_1'
      IL_016b:  dup
      IL_016c:  brtrue.s   IL_0185

      IL_016e:  pop
      IL_016f:  ldsfld     class Game.SubsystemProjectiles/'<>c' Game.SubsystemProjectiles/'<>c'::'<>9'
      IL_0174:  ldftn      instance bool Game.SubsystemProjectiles/'<>c'::'<Update>b__38_1'(int32,
                                                                                            float32)
      IL_017a:  newobj     instance void class [System.Runtime]System.Func`3<int32,float32,bool>::.ctor(object,
                                                                                                        native int)
      IL_017f:  dup
      IL_0180:  stsfld     class [System.Runtime]System.Func`3<int32,float32,bool> Game.SubsystemProjectiles/'<>c'::'<>9__38_1'
      IL_0185:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> Game.SubsystemTerrain::Raycast(valuetype [Engine]Engine.Vector3,
                                                                                                                                                    valuetype [Engine]Engine.Vector3,
                                                                                                                                                    bool,
                                                                                                                                                    bool,
                                                                                                                                                    class [System.Runtime]System.Func`3<int32,float32,bool>)
      IL_018a:  stloc.s    V_9
      IL_018c:  ldloc.3
      IL_018d:  ldfld      bool Game.Block::DisintegratesOnHit
      IL_0192:  stloc.s    V_10
      IL_0194:  ldloca.s   V_9
      IL_0196:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_HasValue()
      IL_019b:  brtrue.s   IL_01a9

      IL_019d:  ldloca.s   V_8
      IL_019f:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.BodyRaycastResult>::get_HasValue()
      IL_01a4:  brfalse    IL_0239

      IL_01a9:  ldloca.s   V_9
      IL_01ab:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_HasValue()
      IL_01b0:  brtrue.s   IL_01be

      IL_01b2:  ldloca.s   V_17
      IL_01b4:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace>
      IL_01ba:  ldloc.s    V_17
      IL_01bc:  br.s       IL_01cf

      IL_01be:  ldloca.s   V_9
      IL_01c0:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
      IL_01c5:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
      IL_01ca:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace>::.ctor(!0)
      IL_01cf:  stloc.s    V_14
      IL_01d1:  ldloca.s   V_8
      IL_01d3:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.BodyRaycastResult>::get_HasValue()
      IL_01d8:  brtrue.s   IL_01dd

      IL_01da:  ldnull
      IL_01db:  br.s       IL_01e9

      IL_01dd:  ldloca.s   V_8
      IL_01df:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.BodyRaycastResult>::get_Value()
      IL_01e4:  ldfld      class Game.ComponentBody Game.BodyRaycastResult::ComponentBody
      IL_01e9:  stloc.s    V_15
      IL_01eb:  ldarg.0
      IL_01ec:  ldfld      class Game.SubsystemBlockBehaviors Game.SubsystemProjectiles::m_subsystemBlockBehaviors
      IL_01f1:  ldloc.2
      IL_01f2:  ldfld      int32 Game.WorldItem::Value
      IL_01f7:  call       int32 Game.Terrain::ExtractContents(int32)
      IL_01fc:  callvirt   instance class Game.SubsystemBlockBehavior[] Game.SubsystemBlockBehaviors::GetBlockBehaviors(int32)
      IL_0201:  stloc.s    V_16
      IL_0203:  ldc.i4.0
      IL_0204:  stloc.s    V_18
      IL_0206:  br.s       IL_0222

      IL_0208:  ldloc.s    V_10
      IL_020a:  ldloc.s    V_16
      IL_020c:  ldloc.s    V_18
      IL_020e:  ldelem.ref
      IL_020f:  ldloc.s    V_14
      IL_0211:  ldloc.s    V_15
      IL_0213:  ldloc.2
      IL_0214:  callvirt   instance bool Game.SubsystemBlockBehavior::OnHitAsProjectile(valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace>,
                                                                                        class Game.ComponentBody,
                                                                                        class Game.WorldItem)
      IL_0219:  or
      IL_021a:  stloc.s    V_10
      IL_021c:  ldloc.s    V_18
      IL_021e:  ldc.i4.1
      IL_021f:  add
      IL_0220:  stloc.s    V_18
      IL_0222:  ldloc.s    V_18
      IL_0224:  ldloc.s    V_16
      IL_0226:  ldlen
      IL_0227:  conv.i4
      IL_0228:  blt.s      IL_0208

      IL_022a:  ldloc.2
      IL_022b:  dup
      IL_022c:  ldfld      bool Game.WorldItem::ToRemove
      IL_0231:  ldloc.s    V_10
      IL_0233:  or
      IL_0234:  stfld      bool Game.WorldItem::ToRemove
      IL_0239:  ldloca.s   V_11
      IL_023b:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>
      IL_0241:  ldloca.s   V_8
      IL_0243:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.BodyRaycastResult>::get_HasValue()
      IL_0248:  brfalse    IL_0391

      IL_024d:  ldloca.s   V_9
      IL_024f:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_HasValue()
      IL_0254:  brfalse.s  IL_0273

      IL_0256:  ldloca.s   V_8
      IL_0258:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.BodyRaycastResult>::get_Value()
      IL_025d:  ldfld      float32 Game.BodyRaycastResult::Distance
      IL_0262:  ldloca.s   V_9
      IL_0264:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
      IL_0269:  ldfld      float32 Game.TerrainRaycastResult::Distance
      IL_026e:  bge.un     IL_0391

      IL_0273:  ldloc.2
      IL_0274:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_0279:  call       instance float32 [Engine]Engine.Vector3::Length()
      IL_027e:  ldc.r4     10.
      IL_0283:  ble.un.s   IL_02e2

      IL_0285:  ldloca.s   V_8
      IL_0287:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.BodyRaycastResult>::get_Value()
      IL_028c:  ldfld      class Game.ComponentBody Game.BodyRaycastResult::ComponentBody
      IL_0291:  ldloc.2
      IL_0292:  ldfld      class Game.ComponentCreature Game.Projectile::Owner
      IL_0297:  ldloc.2
      IL_0298:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_029d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
      IL_02a2:  ldloc.3
      IL_02a3:  ldloc.2
      IL_02a4:  ldfld      int32 Game.WorldItem::Value
      IL_02a9:  callvirt   instance float32 Game.Block::GetProjectilePower(int32)
      IL_02ae:  ldc.i4.0
      IL_02af:  call       void Game.ComponentMiner::AttackBody(class Game.ComponentBody,
                                                                class Game.ComponentCreature,
                                                                valuetype [Engine]Engine.Vector3,
                                                                float32,
                                                                bool)
      IL_02b4:  ldloc.2
      IL_02b5:  ldfld      class Game.ComponentCreature Game.Projectile::Owner
      IL_02ba:  brfalse.s  IL_02e2

      IL_02bc:  ldloc.2
      IL_02bd:  ldfld      class Game.ComponentCreature Game.Projectile::Owner
      IL_02c2:  callvirt   instance class Game.PlayerStats Game.ComponentCreature::get_PlayerStats()
      IL_02c7:  brfalse.s  IL_02e2

      IL_02c9:  ldloc.2
      IL_02ca:  ldfld      class Game.ComponentCreature Game.Projectile::Owner
      IL_02cf:  callvirt   instance class Game.PlayerStats Game.ComponentCreature::get_PlayerStats()
      IL_02d4:  dup
      IL_02d5:  ldfld      int64 Game.PlayerStats::RangedHits
      IL_02da:  ldc.i4.1
      IL_02db:  conv.i8
      IL_02dc:  add
      IL_02dd:  stfld      int64 Game.PlayerStats::RangedHits
      IL_02e2:  ldloc.2
      IL_02e3:  ldfld      bool Game.Projectile::IsIncendiary
      IL_02e8:  brfalse.s  IL_032e

      IL_02ea:  ldloca.s   V_8
      IL_02ec:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.BodyRaycastResult>::get_Value()
      IL_02f1:  ldfld      class Game.ComponentBody Game.BodyRaycastResult::ComponentBody
      IL_02f6:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
      IL_02fb:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentOnFire>()
      IL_0300:  stloc.s    V_19
      IL_0302:  ldloc.s    V_19
      IL_0304:  brfalse.s  IL_032e

      IL_0306:  ldloc.s    V_19
      IL_0308:  ldloc.2
      IL_0309:  brtrue.s   IL_030e

      IL_030b:  ldnull
      IL_030c:  br.s       IL_0314

      IL_030e:  ldloc.2
      IL_030f:  ldfld      class Game.ComponentCreature Game.Projectile::Owner
      IL_0314:  ldarg.0
      IL_0315:  ldfld      class Game.Random Game.SubsystemProjectiles::m_random
      IL_031a:  ldc.r4     6.
      IL_031f:  ldc.r4     8.
      IL_0324:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                      float32)
      IL_0329:  callvirt   instance void Game.ComponentOnFire::SetOnFire(class Game.ComponentCreature,
                                                                         float32)
      IL_032e:  ldloc.s    V_5
      IL_0330:  stloc.s    V_6
      IL_0332:  ldloc.2
      IL_0333:  dup
      IL_0334:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_0339:  ldc.r4     -5.0000001e-002
      IL_033e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                                float32)
      IL_0343:  stfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_0348:  ldloc.2
      IL_0349:  dup
      IL_034a:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_034f:  ldarg.0
      IL_0350:  ldfld      class Game.Random Game.SubsystemProjectiles::m_random
      IL_0355:  ldc.r4     0.33000001
      IL_035a:  ldloc.2
      IL_035b:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_0360:  call       instance float32 [Engine]Engine.Vector3::Length()
      IL_0365:  mul
      IL_0366:  ldc.i4.0
      IL_0367:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Random::Vector3(float32,
                                                                                          bool)
      IL_036c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0371:  stfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_0376:  ldloc.2
      IL_0377:  dup
      IL_0378:  ldfld      valuetype [Engine]Engine.Vector3 Game.Projectile::AngularVelocity
      IL_037d:  ldc.r4     -5.0000001e-002
      IL_0382:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                                float32)
      IL_0387:  stfld      valuetype [Engine]Engine.Vector3 Game.Projectile::AngularVelocity
      IL_038c:  br         IL_0779

      IL_0391:  ldloca.s   V_9
      IL_0393:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_HasValue()
      IL_0398:  brfalse    IL_0779

      IL_039d:  ldloca.s   V_9
      IL_039f:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
      IL_03a4:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
      IL_03a9:  stloc.s    V_20
      IL_03ab:  ldarg.0
      IL_03ac:  ldfld      class Game.SubsystemTerrain Game.SubsystemProjectiles::m_subsystemTerrain
      IL_03b1:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
      IL_03b6:  ldloc.s    V_20
      IL_03b8:  ldfld      int32 Game.CellFace::X
      IL_03bd:  ldloc.s    V_20
      IL_03bf:  ldfld      int32 Game.CellFace::Y
      IL_03c4:  ldloc.s    V_20
      IL_03c6:  ldfld      int32 Game.CellFace::Z
      IL_03cb:  callvirt   instance int32 Game.Terrain::GetCellValue(int32,
                                                                     int32,
                                                                     int32)
      IL_03d0:  stloc.s    V_21
      IL_03d2:  ldloc.s    V_21
      IL_03d4:  call       int32 Game.Terrain::ExtractContents(int32)
      IL_03d9:  stloc.s    V_22
      IL_03db:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
      IL_03e0:  ldloc.s    V_22
      IL_03e2:  ldelem.ref
      IL_03e3:  stloc.s    V_23
      IL_03e5:  ldloc.2
      IL_03e6:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_03eb:  call       instance float32 [Engine]Engine.Vector3::Length()
      IL_03f0:  stloc.s    V_24
      IL_03f2:  ldarg.0
      IL_03f3:  ldfld      class Game.SubsystemBlockBehaviors Game.SubsystemProjectiles::m_subsystemBlockBehaviors
      IL_03f8:  ldloc.s    V_22
      IL_03fa:  callvirt   instance class Game.SubsystemBlockBehavior[] Game.SubsystemBlockBehaviors::GetBlockBehaviors(int32)
      IL_03ff:  stloc.s    V_25
      IL_0401:  ldc.i4.0
      IL_0402:  stloc.s    V_26
      IL_0404:  br.s       IL_0419

      IL_0406:  ldloc.s    V_25
      IL_0408:  ldloc.s    V_26
      IL_040a:  ldelem.ref
      IL_040b:  ldloc.s    V_20
      IL_040d:  ldloc.2
      IL_040e:  callvirt   instance void Game.SubsystemBlockBehavior::OnHitByProjectile(valuetype Game.CellFace,
                                                                                        class Game.WorldItem)
      IL_0413:  ldloc.s    V_26
      IL_0415:  ldc.i4.1
      IL_0416:  add
      IL_0417:  stloc.s    V_26
      IL_0419:  ldloc.s    V_26
      IL_041b:  ldloc.s    V_25
      IL_041d:  ldlen
      IL_041e:  conv.i4
      IL_041f:  blt.s      IL_0406

      IL_0421:  ldloc.s    V_24
      IL_0423:  ldc.r4     10.
      IL_0428:  ble.un.s   IL_0480

      IL_042a:  ldarg.0
      IL_042b:  ldfld      class Game.Random Game.SubsystemProjectiles::m_random
      IL_0430:  ldc.r4     0.0
      IL_0435:  ldc.r4     1.
      IL_043a:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                      float32)
      IL_043f:  ldloc.s    V_23
      IL_0441:  ldfld      float32 Game.Block::ProjectileResilience
      IL_0446:  ble.un.s   IL_0480

      IL_0448:  ldarg.0
      IL_0449:  ldfld      class Game.SubsystemTerrain Game.SubsystemProjectiles::m_subsystemTerrain
      IL_044e:  ldc.i4.0
      IL_044f:  ldloc.s    V_20
      IL_0451:  ldfld      int32 Game.CellFace::X
      IL_0456:  ldloc.s    V_20
      IL_0458:  ldfld      int32 Game.CellFace::Y
      IL_045d:  ldloc.s    V_20
      IL_045f:  ldfld      int32 Game.CellFace::Z
      IL_0464:  ldc.i4.0
      IL_0465:  ldc.i4.1
      IL_0466:  ldc.i4.0
      IL_0467:  callvirt   instance void Game.SubsystemTerrain::DestroyCell(int32,
                                                                            int32,
                                                                            int32,
                                                                            int32,
                                                                            int32,
                                                                            bool,
                                                                            bool)
      IL_046c:  ldarg.0
      IL_046d:  ldfld      class Game.SubsystemSoundMaterials Game.SubsystemProjectiles::m_subsystemSoundMaterials
      IL_0472:  ldloc.s    V_21
      IL_0474:  ldloc.s    V_5
      IL_0476:  ldc.r4     1.
      IL_047b:  callvirt   instance void Game.SubsystemSoundMaterials::PlayImpactSound(int32,
                                                                                       valuetype [Engine]Engine.Vector3,
                                                                                       float32)
      IL_0480:  ldloc.2
      IL_0481:  ldfld      bool Game.Projectile::IsIncendiary
      IL_0486:  brfalse    IL_05b1

      IL_048b:  ldarg.0
      IL_048c:  ldfld      class Game.SubsystemFireBlockBehavior Game.SubsystemProjectiles::m_subsystemFireBlockBehavior
      IL_0491:  ldloca.s   V_9
      IL_0493:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
      IL_0498:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
      IL_049d:  ldfld      int32 Game.CellFace::X
      IL_04a2:  ldloca.s   V_9
      IL_04a4:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
      IL_04a9:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
      IL_04ae:  ldfld      int32 Game.CellFace::Y
      IL_04b3:  ldloca.s   V_9
      IL_04b5:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
      IL_04ba:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
      IL_04bf:  ldfld      int32 Game.CellFace::Z
      IL_04c4:  ldc.r4     1.
      IL_04c9:  callvirt   instance bool Game.SubsystemFireBlockBehavior::SetCellOnFire(int32,
                                                                                        int32,
                                                                                        int32,
                                                                                        float32)
      IL_04ce:  pop
      IL_04cf:  ldloc.2
      IL_04d0:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_04d5:  ldc.r4     0.75
      IL_04da:  ldloc.2
      IL_04db:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_04e0:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
      IL_04e5:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_04ea:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                   valuetype [Engine]Engine.Vector3)
      IL_04ef:  stloc.s    V_27
      IL_04f1:  ldc.i4.0
      IL_04f2:  stloc.s    V_28
      IL_04f4:  br         IL_05a9

      IL_04f9:  ldloc.s    V_28
      IL_04fb:  brfalse.s  IL_0510

      IL_04fd:  ldarg.0
      IL_04fe:  ldfld      class Game.Random Game.SubsystemProjectiles::m_random
      IL_0503:  ldc.r4     1.5
      IL_0508:  ldc.i4.0
      IL_0509:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Random::Vector3(float32,
                                                                                          bool)
      IL_050e:  br.s       IL_051b

      IL_0510:  ldloc.2
      IL_0511:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_0516:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
      IL_051b:  stloc.s    V_29
      IL_051d:  ldarg.0
      IL_051e:  ldfld      class Game.SubsystemTerrain Game.SubsystemProjectiles::m_subsystemTerrain
      IL_0523:  ldloc.s    V_27
      IL_0525:  ldloc.s    V_27
      IL_0527:  ldloc.s    V_29
      IL_0529:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_052e:  ldc.i4.0
      IL_052f:  ldc.i4.1
      IL_0530:  ldsfld     class [System.Runtime]System.Func`3<int32,float32,bool> Game.SubsystemProjectiles/'<>c'::'<>9__38_2'
      IL_0535:  dup
      IL_0536:  brtrue.s   IL_054f

      IL_0538:  pop
      IL_0539:  ldsfld     class Game.SubsystemProjectiles/'<>c' Game.SubsystemProjectiles/'<>c'::'<>9'
      IL_053e:  ldftn      instance bool Game.SubsystemProjectiles/'<>c'::'<Update>b__38_2'(int32,
                                                                                            float32)
      IL_0544:  newobj     instance void class [System.Runtime]System.Func`3<int32,float32,bool>::.ctor(object,
                                                                                                        native int)
      IL_0549:  dup
      IL_054a:  stsfld     class [System.Runtime]System.Func`3<int32,float32,bool> Game.SubsystemProjectiles/'<>c'::'<>9__38_2'
      IL_054f:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> Game.SubsystemTerrain::Raycast(valuetype [Engine]Engine.Vector3,
                                                                                                                                                    valuetype [Engine]Engine.Vector3,
                                                                                                                                                    bool,
                                                                                                                                                    bool,
                                                                                                                                                    class [System.Runtime]System.Func`3<int32,float32,bool>)
      IL_0554:  stloc.s    V_30
      IL_0556:  ldloca.s   V_30
      IL_0558:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_HasValue()
      IL_055d:  brfalse.s  IL_05a3

      IL_055f:  ldarg.0
      IL_0560:  ldfld      class Game.SubsystemFireBlockBehavior Game.SubsystemProjectiles::m_subsystemFireBlockBehavior
      IL_0565:  ldloca.s   V_30
      IL_0567:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
      IL_056c:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
      IL_0571:  ldfld      int32 Game.CellFace::X
      IL_0576:  ldloca.s   V_30
      IL_0578:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
      IL_057d:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
      IL_0582:  ldfld      int32 Game.CellFace::Y
      IL_0587:  ldloca.s   V_30
      IL_0589:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
      IL_058e:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
      IL_0593:  ldfld      int32 Game.CellFace::Z
      IL_0598:  ldc.r4     1.
      IL_059d:  callvirt   instance bool Game.SubsystemFireBlockBehavior::SetCellOnFire(int32,
                                                                                        int32,
                                                                                        int32,
                                                                                        float32)
      IL_05a2:  pop
      IL_05a3:  ldloc.s    V_28
      IL_05a5:  ldc.i4.1
      IL_05a6:  add
      IL_05a7:  stloc.s    V_28
      IL_05a9:  ldloc.s    V_28
      IL_05ab:  ldc.i4.8
      IL_05ac:  blt        IL_04f9

      IL_05b1:  ldloc.s    V_24
      IL_05b3:  ldc.r4     5.
      IL_05b8:  ble.un.s   IL_05ce

      IL_05ba:  ldarg.0
      IL_05bb:  ldfld      class Game.SubsystemSoundMaterials Game.SubsystemProjectiles::m_subsystemSoundMaterials
      IL_05c0:  ldloc.s    V_21
      IL_05c2:  ldloc.s    V_5
      IL_05c4:  ldc.r4     1.
      IL_05c9:  callvirt   instance void Game.SubsystemSoundMaterials::PlayImpactSound(int32,
                                                                                       valuetype [Engine]Engine.Vector3,
                                                                                       float32)
      IL_05ce:  ldloc.3
      IL_05cf:  ldfld      bool Game.Block::IsStickable
      IL_05d4:  brfalse    IL_0667

      IL_05d9:  ldloc.s    V_24
      IL_05db:  ldc.r4     10.
      IL_05e0:  ble.un     IL_0667

      IL_05e5:  ldarg.0
      IL_05e6:  ldfld      class Game.Random Game.SubsystemProjectiles::m_random
      IL_05eb:  ldloc.s    V_23
      IL_05ed:  ldfld      float32 Game.Block::ProjectileStickProbability
      IL_05f2:  callvirt   instance bool Game.Random::Bool(float32)
      IL_05f7:  brfalse.s  IL_0667

      IL_05f9:  ldloc.2
      IL_05fa:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_05ff:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
      IL_0604:  stloc.s    V_31
      IL_0606:  ldc.r4     0.1
      IL_060b:  ldc.r4     0.2
      IL_0610:  ldloc.s    V_24
      IL_0612:  ldc.r4     15.
      IL_0617:  sub
      IL_0618:  ldc.r4     20.
      IL_061d:  div
      IL_061e:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
      IL_0623:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                  float32,
                                                                  float32)
      IL_0628:  stloc.s    V_32
      IL_062a:  ldloca.s   V_11
      IL_062c:  ldloc.s    V_5
      IL_062e:  ldloca.s   V_9
      IL_0630:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
      IL_0635:  ldfld      float32 Game.TerrainRaycastResult::Distance
      IL_063a:  ldloc.2
      IL_063b:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_0640:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
      IL_0645:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_064a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_064f:  ldloc.s    V_31
      IL_0651:  ldloc.s    V_32
      IL_0653:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                                float32)
      IL_0658:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_065d:  call       instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
      IL_0662:  br         IL_0772

      IL_0667:  ldloca.s   V_20
      IL_0669:  call       instance valuetype [Engine]Engine.Plane Game.CellFace::CalculatePlane()
      IL_066e:  ldloc.s    V_5
      IL_0670:  stloc.s    V_6
      IL_0672:  dup
      IL_0673:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.Plane::Normal
      IL_0678:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_067d:  ldc.r4     0.0
      IL_0682:  beq.s      IL_06a9

      IL_0684:  ldloc.2
      IL_0685:  dup
      IL_0686:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_068b:  ldc.r4     -0.30000001
      IL_0690:  ldc.r4     0.30000001
      IL_0695:  ldc.r4     0.30000001
      IL_069a:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                       float32,
                                                                       float32)
      IL_069f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_06a4:  stfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_06a9:  dup
      IL_06aa:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.Plane::Normal
      IL_06af:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_06b4:  ldc.r4     0.0
      IL_06b9:  beq.s      IL_06e0

      IL_06bb:  ldloc.2
      IL_06bc:  dup
      IL_06bd:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_06c2:  ldc.r4     0.30000001
      IL_06c7:  ldc.r4     -0.30000001
      IL_06cc:  ldc.r4     0.30000001
      IL_06d1:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                       float32,
                                                                       float32)
      IL_06d6:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_06db:  stfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_06e0:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.Plane::Normal
      IL_06e5:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_06ea:  ldc.r4     0.0
      IL_06ef:  beq.s      IL_0716

      IL_06f1:  ldloc.2
      IL_06f2:  dup
      IL_06f3:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_06f8:  ldc.r4     0.30000001
      IL_06fd:  ldc.r4     0.30000001
      IL_0702:  ldc.r4     -0.30000001
      IL_0707:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                       float32,
                                                                       float32)
      IL_070c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0711:  stfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_0716:  ldloc.2
      IL_0717:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_071c:  call       instance float32 [Engine]Engine.Vector3::Length()
      IL_0721:  stloc.s    V_33
      IL_0723:  ldloc.2
      IL_0724:  ldloc.s    V_33
      IL_0726:  ldloc.2
      IL_0727:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_072c:  ldarg.0
      IL_072d:  ldfld      class Game.Random Game.SubsystemProjectiles::m_random
      IL_0732:  ldloc.s    V_33
      IL_0734:  ldc.r4     6.
      IL_0739:  div
      IL_073a:  ldloc.s    V_33
      IL_073c:  ldc.r4     3.
      IL_0741:  div
      IL_0742:  ldc.i4.0
      IL_0743:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Random::UniformVector3(float32,
                                                                                                 float32,
                                                                                                 bool)
      IL_0748:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_074d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
      IL_0752:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0757:  stfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_075c:  ldloc.2
      IL_075d:  dup
      IL_075e:  ldfld      valuetype [Engine]Engine.Vector3 Game.Projectile::AngularVelocity
      IL_0763:  ldc.r4     -0.30000001
      IL_0768:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                                float32)
      IL_076d:  stfld      valuetype [Engine]Engine.Vector3 Game.Projectile::AngularVelocity
      IL_0772:  ldarg.0
      IL_0773:  ldloc.2
      IL_0774:  call       instance void Game.SubsystemProjectiles::MakeProjectileNoise(class Game.Projectile)
      IL_0779:  ldloca.s   V_9
      IL_077b:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_HasValue()
      IL_0780:  brtrue.s   IL_078e

      IL_0782:  ldloca.s   V_8
      IL_0784:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.BodyRaycastResult>::get_HasValue()
      IL_0789:  brfalse    IL_0889

      IL_078e:  ldloc.s    V_10
      IL_0790:  brfalse.s  IL_07bf

      IL_0792:  ldarg.0
      IL_0793:  ldfld      class Game.SubsystemParticles Game.SubsystemProjectiles::m_subsystemParticles
      IL_0798:  ldloc.3
      IL_0799:  ldarg.0
      IL_079a:  ldfld      class Game.SubsystemTerrain Game.SubsystemProjectiles::m_subsystemTerrain
      IL_079f:  ldloc.2
      IL_07a0:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_07a5:  ldloc.2
      IL_07a6:  ldfld      int32 Game.WorldItem::Value
      IL_07ab:  ldc.r4     1.
      IL_07b0:  callvirt   instance class Game.BlockDebrisParticleSystem Game.Block::CreateDebrisParticleSystem(class Game.SubsystemTerrain,
                                                                                                                valuetype [Engine]Engine.Vector3,
                                                                                                                int32,
                                                                                                                float32)
      IL_07b5:  callvirt   instance void Game.SubsystemParticles::AddParticleSystem(class Game.ParticleSystemBase)
      IL_07ba:  br         IL_0889

      IL_07bf:  ldloc.2
      IL_07c0:  ldfld      bool Game.WorldItem::ToRemove
      IL_07c5:  brtrue     IL_0889

      IL_07ca:  ldloca.s   V_11
      IL_07cc:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
      IL_07d1:  brtrue.s   IL_07e8

      IL_07d3:  ldloc.2
      IL_07d4:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_07d9:  call       instance float32 [Engine]Engine.Vector3::Length()
      IL_07de:  ldc.r4     1.
      IL_07e3:  bge.un     IL_0889

      IL_07e8:  ldloc.2
      IL_07e9:  ldfld      valuetype Game.ProjectileStoppedAction Game.Projectile::ProjectileStoppedAction
      IL_07ee:  brtrue     IL_0879

      IL_07f3:  ldloc.2
      IL_07f4:  ldfld      int32 Game.WorldItem::Value
      IL_07f9:  ldc.i4.1
      IL_07fa:  call       int32 Game.BlocksManager::DamageItem(int32,
                                                                int32)
      IL_07ff:  stloc.s    V_34
      IL_0801:  ldloc.s    V_34
      IL_0803:  brfalse.s  IL_0870

      IL_0805:  ldloca.s   V_11
      IL_0807:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
      IL_080c:  brfalse.s  IL_084b

      IL_080e:  ldloc.3
      IL_080f:  ldloca.s   V_11
      IL_0811:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
      IL_0816:  ldloc.2
      IL_0817:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_081c:  ldloca.s   V_35
      IL_081e:  call       void Game.SubsystemProjectiles::CalculateVelocityAlignMatrix(class Game.Block,
                                                                                        valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Matrix&)
      IL_0823:  ldarg.0
      IL_0824:  ldfld      class Game.SubsystemPickables Game.SubsystemProjectiles::m_subsystemPickables
      IL_0829:  ldloc.s    V_34
      IL_082b:  ldc.i4.1
      IL_082c:  ldloc.2
      IL_082d:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0832:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
      IL_0837:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
      IL_083c:  ldloc.s    V_35
      IL_083e:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
      IL_0843:  callvirt   instance class Game.Pickable Game.SubsystemPickables::AddPickable(int32,
                                                                                             int32,
                                                                                             valuetype [Engine]Engine.Vector3,
                                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>,
                                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
      IL_0848:  pop
      IL_0849:  br.s       IL_0870

      IL_084b:  ldarg.0
      IL_084c:  ldfld      class Game.SubsystemPickables Game.SubsystemProjectiles::m_subsystemPickables
      IL_0851:  ldloc.s    V_34
      IL_0853:  ldc.i4.1
      IL_0854:  ldloc.s    V_5
      IL_0856:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
      IL_085b:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
      IL_0860:  ldloca.s   V_36
      IL_0862:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
      IL_0868:  ldloc.s    V_36
      IL_086a:  callvirt   instance class Game.Pickable Game.SubsystemPickables::AddPickable(int32,
                                                                                             int32,
                                                                                             valuetype [Engine]Engine.Vector3,
                                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>,
                                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
      IL_086f:  pop
      IL_0870:  ldloc.2
      IL_0871:  ldc.i4.1
      IL_0872:  stfld      bool Game.WorldItem::ToRemove
      IL_0877:  br.s       IL_0889

      IL_0879:  ldloc.2
      IL_087a:  ldfld      valuetype Game.ProjectileStoppedAction Game.Projectile::ProjectileStoppedAction
      IL_087f:  ldc.i4.1
      IL_0880:  bne.un.s   IL_0889

      IL_0882:  ldloc.2
      IL_0883:  ldc.i4.1
      IL_0884:  stfld      bool Game.WorldItem::ToRemove
      IL_0889:  ldloc.2
      IL_088a:  ldfld      bool Game.Projectile::IsInWater
      IL_088f:  brtrue.s   IL_089f

      IL_0891:  ldloc.3
      IL_0892:  ldfld      float32 Game.Block::ProjectileDamping
      IL_0897:  ldarg.1
      IL_0898:  call       float32 [Engine]Engine.MathUtils::Pow(float32,
                                                                 float32)
      IL_089d:  br.s       IL_08aa

      IL_089f:  ldc.r4     1.e-003
      IL_08a4:  ldarg.1
      IL_08a5:  call       float32 [Engine]Engine.MathUtils::Pow(float32,
                                                                 float32)
      IL_08aa:  stloc.s    V_12
      IL_08ac:  ldloc.2
      IL_08ad:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_08b2:  ldflda     float32 [Engine]Engine.Vector3::Y
      IL_08b7:  dup
      IL_08b8:  ldind.r4
      IL_08b9:  ldc.r4     -10.
      IL_08be:  ldarg.1
      IL_08bf:  mul
      IL_08c0:  add
      IL_08c1:  stind.r4
      IL_08c2:  ldloc.2
      IL_08c3:  dup
      IL_08c4:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_08c9:  ldloc.s    V_12
      IL_08cb:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                                float32)
      IL_08d0:  stfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_08d5:  ldloc.2
      IL_08d6:  dup
      IL_08d7:  ldfld      valuetype [Engine]Engine.Vector3 Game.Projectile::AngularVelocity
      IL_08dc:  ldloc.s    V_12
      IL_08de:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                                float32)
      IL_08e3:  stfld      valuetype [Engine]Engine.Vector3 Game.Projectile::AngularVelocity
      IL_08e8:  ldloc.2
      IL_08e9:  ldloc.s    V_6
      IL_08eb:  stfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_08f0:  ldloc.2
      IL_08f1:  dup
      IL_08f2:  ldfld      valuetype [Engine]Engine.Vector3 Game.Projectile::Rotation
      IL_08f7:  ldloc.2
      IL_08f8:  ldfld      valuetype [Engine]Engine.Vector3 Game.Projectile::AngularVelocity
      IL_08fd:  ldarg.1
      IL_08fe:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                                float32)
      IL_0903:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0908:  stfld      valuetype [Engine]Engine.Vector3 Game.Projectile::Rotation
      IL_090d:  ldloc.2
      IL_090e:  ldfld      class Game.ITrailParticleSystem Game.Projectile::TrailParticleSystem
      IL_0913:  brfalse    IL_09b3

      IL_0918:  ldarg.0
      IL_0919:  ldfld      class Game.SubsystemParticles Game.SubsystemProjectiles::m_subsystemParticles
      IL_091e:  ldloc.2
      IL_091f:  ldfld      class Game.ITrailParticleSystem Game.Projectile::TrailParticleSystem
      IL_0924:  castclass  Game.ParticleSystemBase
      IL_0929:  callvirt   instance bool Game.SubsystemParticles::ContainsParticleSystem(class Game.ParticleSystemBase)
      IL_092e:  brtrue.s   IL_0946

      IL_0930:  ldarg.0
      IL_0931:  ldfld      class Game.SubsystemParticles Game.SubsystemProjectiles::m_subsystemParticles
      IL_0936:  ldloc.2
      IL_0937:  ldfld      class Game.ITrailParticleSystem Game.Projectile::TrailParticleSystem
      IL_093c:  castclass  Game.ParticleSystemBase
      IL_0941:  callvirt   instance void Game.SubsystemParticles::AddParticleSystem(class Game.ParticleSystemBase)
      IL_0946:  ldloc.2
      IL_0947:  ldfld      valuetype [Engine]Engine.Vector3 Game.Projectile::TrailOffset
      IL_094c:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
      IL_0951:  call       bool [Engine]Engine.Vector3::op_Inequality(valuetype [Engine]Engine.Vector3,
                                                                      valuetype [Engine]Engine.Vector3)
      IL_0956:  brtrue.s   IL_095f

      IL_0958:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
      IL_095d:  br.s       IL_0985

      IL_095f:  ldloc.2
      IL_0960:  ldfld      valuetype [Engine]Engine.Vector3 Game.Projectile::TrailOffset
      IL_0965:  ldloc.2
      IL_0966:  ldfld      valuetype [Engine]Engine.Vector3 Game.Projectile::Rotation
      IL_096b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
      IL_0970:  ldloc.2
      IL_0971:  ldflda     valuetype [Engine]Engine.Vector3 Game.Projectile::Rotation
      IL_0976:  call       instance float32 [Engine]Engine.Vector3::Length()
      IL_097b:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateFromAxisAngle(valuetype [Engine]Engine.Vector3,
                                                                                                      float32)
      IL_0980:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::TransformNormal(valuetype [Engine]Engine.Vector3,
                                                                                                    valuetype [Engine]Engine.Matrix)
      IL_0985:  stloc.s    V_37
      IL_0987:  ldloc.2
      IL_0988:  ldfld      class Game.ITrailParticleSystem Game.Projectile::TrailParticleSystem
      IL_098d:  ldloc.2
      IL_098e:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0993:  ldloc.s    V_37
      IL_0995:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_099a:  callvirt   instance void Game.ITrailParticleSystem::set_Position(valuetype [Engine]Engine.Vector3)
      IL_099f:  ldloc.2
      IL_09a0:  ldfld      bool Game.Projectile::IsInWater
      IL_09a5:  brfalse.s  IL_09b3

      IL_09a7:  ldloc.2
      IL_09a8:  ldfld      class Game.ITrailParticleSystem Game.Projectile::TrailParticleSystem
      IL_09ad:  ldc.i4.1
      IL_09ae:  callvirt   instance void Game.ITrailParticleSystem::set_IsStopped(bool)
      IL_09b3:  ldarg.0
      IL_09b4:  ldloc.2
      IL_09b5:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_09ba:  call       instance bool Game.SubsystemProjectiles::IsWater(valuetype [Engine]Engine.Vector3)
      IL_09bf:  stloc.s    V_13
      IL_09c1:  ldloc.2
      IL_09c2:  ldfld      bool Game.Projectile::IsInWater
      IL_09c7:  ldloc.s    V_13
      IL_09c9:  beq        IL_0b28

      IL_09ce:  ldloc.s    V_13
      IL_09d0:  brfalse    IL_0b20

      IL_09d5:  ldloc.2
      IL_09d6:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_09db:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_09e0:  ldloc.2
      IL_09e1:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_09e6:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_09eb:  add
      IL_09ec:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
      IL_09f1:  stloc.s    V_40
      IL_09f3:  ldloca.s   V_40
      IL_09f5:  call       instance float32 [Engine]Engine.Vector2::Length()
      IL_09fa:  stloc.s    V_38
      IL_09fc:  ldloc.s    V_38
      IL_09fe:  ldc.r4     6.
      IL_0a03:  ble.un.s   IL_0a4e

      IL_0a05:  ldloc.s    V_38
      IL_0a07:  ldc.r4     4.
      IL_0a0c:  ldloc.2
      IL_0a0d:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_0a12:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_0a17:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
      IL_0a1c:  mul
      IL_0a1d:  ble.un.s   IL_0a4e

      IL_0a1f:  ldloc.2
      IL_0a20:  dup
      IL_0a21:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_0a26:  ldc.r4     0.5
      IL_0a2b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                                float32)
      IL_0a30:  stfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_0a35:  ldloc.2
      IL_0a36:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_0a3b:  ldflda     float32 [Engine]Engine.Vector3::Y
      IL_0a40:  dup
      IL_0a41:  ldind.r4
      IL_0a42:  ldc.r4     -1.
      IL_0a47:  mul
      IL_0a48:  stind.r4
      IL_0a49:  ldc.i4.0
      IL_0a4a:  stloc.s    V_13
      IL_0a4c:  br.s       IL_0a64

      IL_0a4e:  ldloc.2
      IL_0a4f:  dup
      IL_0a50:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_0a55:  ldc.r4     0.2
      IL_0a5a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                                float32)
      IL_0a5f:  stfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_0a64:  ldarg.0
      IL_0a65:  ldfld      class Game.SubsystemFluidBlockBehavior Game.SubsystemProjectiles::m_subsystemFluidBlockBehavior
      IL_0a6a:  ldloc.2
      IL_0a6b:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0a70:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_0a75:  call       int32 Game.Terrain::ToCell(float32)
      IL_0a7a:  ldloc.2
      IL_0a7b:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0a80:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_0a85:  call       int32 Game.Terrain::ToCell(float32)
      IL_0a8a:  ldloc.2
      IL_0a8b:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0a90:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_0a95:  call       int32 Game.Terrain::ToCell(float32)
      IL_0a9a:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<float32> Game.SubsystemFluidBlockBehavior::GetSurfaceHeight(int32,
                                                                                                                                            int32,
                                                                                                                                            int32)
      IL_0a9f:  stloc.s    V_39
      IL_0aa1:  ldloca.s   V_39
      IL_0aa3:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float32>::get_HasValue()
      IL_0aa8:  brfalse.s  IL_0b20

      IL_0aaa:  ldarg.0
      IL_0aab:  ldfld      class Game.SubsystemParticles Game.SubsystemProjectiles::m_subsystemParticles
      IL_0ab0:  ldarg.0
      IL_0ab1:  ldfld      class Game.SubsystemTerrain Game.SubsystemProjectiles::m_subsystemTerrain
      IL_0ab6:  ldloc.2
      IL_0ab7:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0abc:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_0ac1:  ldloca.s   V_39
      IL_0ac3:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
      IL_0ac8:  ldloc.2
      IL_0ac9:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0ace:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_0ad3:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                       float32,
                                                                       float32)
      IL_0ad8:  ldc.i4.0
      IL_0ad9:  newobj     instance void Game.WaterSplashParticleSystem::.ctor(class Game.SubsystemTerrain,
                                                                               valuetype [Engine]Engine.Vector3,
                                                                               bool)
      IL_0ade:  callvirt   instance void Game.SubsystemParticles::AddParticleSystem(class Game.ParticleSystemBase)
      IL_0ae3:  ldarg.0
      IL_0ae4:  ldfld      class Game.SubsystemAudio Game.SubsystemProjectiles::m_subsystemAudio
      IL_0ae9:  ldstr      "Audio/Splashes"
      IL_0aee:  ldc.r4     1.
      IL_0af3:  ldarg.0
      IL_0af4:  ldfld      class Game.Random Game.SubsystemProjectiles::m_random
      IL_0af9:  ldc.r4     -0.2
      IL_0afe:  ldc.r4     0.2
      IL_0b03:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                      float32)
      IL_0b08:  ldloc.2
      IL_0b09:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0b0e:  ldc.r4     6.
      IL_0b13:  ldc.i4.1
      IL_0b14:  callvirt   instance void Game.SubsystemAudio::PlayRandomSound(string,
                                                                              float32,
                                                                              float32,
                                                                              valuetype [Engine]Engine.Vector3,
                                                                              float32,
                                                                              bool)
      IL_0b19:  ldarg.0
      IL_0b1a:  ldloc.2
      IL_0b1b:  call       instance void Game.SubsystemProjectiles::MakeProjectileNoise(class Game.Projectile)
      IL_0b20:  ldloc.2
      IL_0b21:  ldloc.s    V_13
      IL_0b23:  stfld      bool Game.Projectile::IsInWater
      IL_0b28:  ldarg.0
      IL_0b29:  ldloc.2
      IL_0b2a:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0b2f:  call       instance bool Game.SubsystemProjectiles::IsMagma(valuetype [Engine]Engine.Vector3)
      IL_0b34:  brfalse    IL_0bd5

      IL_0b39:  ldarg.0
      IL_0b3a:  ldfld      class Game.SubsystemParticles Game.SubsystemProjectiles::m_subsystemParticles
      IL_0b3f:  ldarg.0
      IL_0b40:  ldfld      class Game.SubsystemTerrain Game.SubsystemProjectiles::m_subsystemTerrain
      IL_0b45:  ldloc.2
      IL_0b46:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0b4b:  ldc.i4.0
      IL_0b4c:  newobj     instance void Game.MagmaSplashParticleSystem::.ctor(class Game.SubsystemTerrain,
                                                                               valuetype [Engine]Engine.Vector3,
                                                                               bool)
      IL_0b51:  callvirt   instance void Game.SubsystemParticles::AddParticleSystem(class Game.ParticleSystemBase)
      IL_0b56:  ldarg.0
      IL_0b57:  ldfld      class Game.SubsystemAudio Game.SubsystemProjectiles::m_subsystemAudio
      IL_0b5c:  ldstr      "Audio/Sizzles"
      IL_0b61:  ldc.r4     1.
      IL_0b66:  ldarg.0
      IL_0b67:  ldfld      class Game.Random Game.SubsystemProjectiles::m_random
      IL_0b6c:  ldc.r4     -0.2
      IL_0b71:  ldc.r4     0.2
      IL_0b76:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                      float32)
      IL_0b7b:  ldloc.2
      IL_0b7c:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0b81:  ldc.r4     3.
      IL_0b86:  ldc.i4.1
      IL_0b87:  callvirt   instance void Game.SubsystemAudio::PlayRandomSound(string,
                                                                              float32,
                                                                              float32,
                                                                              valuetype [Engine]Engine.Vector3,
                                                                              float32,
                                                                              bool)
      IL_0b8c:  ldloc.2
      IL_0b8d:  ldc.i4.1
      IL_0b8e:  stfld      bool Game.WorldItem::ToRemove
      IL_0b93:  ldarg.0
      IL_0b94:  ldfld      class Game.SubsystemExplosions Game.SubsystemProjectiles::m_subsystemExplosions
      IL_0b99:  ldloc.2
      IL_0b9a:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0b9f:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_0ba4:  call       int32 Game.Terrain::ToCell(float32)
      IL_0ba9:  ldloc.2
      IL_0baa:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0baf:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_0bb4:  call       int32 Game.Terrain::ToCell(float32)
      IL_0bb9:  ldloc.2
      IL_0bba:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0bbf:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_0bc4:  call       int32 Game.Terrain::ToCell(float32)
      IL_0bc9:  ldloc.2
      IL_0bca:  ldfld      int32 Game.WorldItem::Value
      IL_0bcf:  callvirt   instance bool Game.SubsystemExplosions::TryExplodeBlock(int32,
                                                                                   int32,
                                                                                   int32,
                                                                                   int32)
      IL_0bd4:  pop
      IL_0bd5:  ldarg.0
      IL_0bd6:  ldfld      class Game.SubsystemTime Game.SubsystemProjectiles::m_subsystemTime
      IL_0bdb:  ldc.r8     1.
      IL_0be4:  ldloc.2
      IL_0be5:  callvirt   instance int32 [System.Runtime]System.Object::GetHashCode()
      IL_0bea:  ldc.i4.s   100
      IL_0bec:  rem
      IL_0bed:  conv.r8
      IL_0bee:  ldc.r8     100.
      IL_0bf7:  div
      IL_0bf8:  callvirt   instance bool Game.SubsystemTime::PeriodicGameTimeEvent(float64,
                                                                                   float64)
      IL_0bfd:  brfalse    IL_0d09

      IL_0c02:  ldarg.0
      IL_0c03:  ldfld      class Game.SubsystemFireBlockBehavior Game.SubsystemProjectiles::m_subsystemFireBlockBehavior
      IL_0c08:  ldloc.2
      IL_0c09:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0c0e:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_0c13:  call       int32 Game.Terrain::ToCell(float32)
      IL_0c18:  ldloc.2
      IL_0c19:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0c1e:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_0c23:  ldc.r4     0.1
      IL_0c28:  add
      IL_0c29:  call       int32 Game.Terrain::ToCell(float32)
      IL_0c2e:  ldloc.2
      IL_0c2f:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0c34:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_0c39:  call       int32 Game.Terrain::ToCell(float32)
      IL_0c3e:  callvirt   instance bool Game.SubsystemFireBlockBehavior::IsCellOnFire(int32,
                                                                                       int32,
                                                                                       int32)
      IL_0c43:  brtrue.s   IL_0c8a

      IL_0c45:  ldarg.0
      IL_0c46:  ldfld      class Game.SubsystemFireBlockBehavior Game.SubsystemProjectiles::m_subsystemFireBlockBehavior
      IL_0c4b:  ldloc.2
      IL_0c4c:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0c51:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_0c56:  call       int32 Game.Terrain::ToCell(float32)
      IL_0c5b:  ldloc.2
      IL_0c5c:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0c61:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_0c66:  ldc.r4     0.1
      IL_0c6b:  add
      IL_0c6c:  call       int32 Game.Terrain::ToCell(float32)
      IL_0c71:  ldc.i4.1
      IL_0c72:  sub
      IL_0c73:  ldloc.2
      IL_0c74:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0c79:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_0c7e:  call       int32 Game.Terrain::ToCell(float32)
      IL_0c83:  callvirt   instance bool Game.SubsystemFireBlockBehavior::IsCellOnFire(int32,
                                                                                       int32,
                                                                                       int32)
      IL_0c88:  brfalse.s  IL_0d09

      IL_0c8a:  ldarg.0
      IL_0c8b:  ldfld      class Game.SubsystemAudio Game.SubsystemProjectiles::m_subsystemAudio
      IL_0c90:  ldstr      "Audio/Sizzles"
      IL_0c95:  ldc.r4     1.
      IL_0c9a:  ldarg.0
      IL_0c9b:  ldfld      class Game.Random Game.SubsystemProjectiles::m_random
      IL_0ca0:  ldc.r4     -0.2
      IL_0ca5:  ldc.r4     0.2
      IL_0caa:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                      float32)
      IL_0caf:  ldloc.2
      IL_0cb0:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0cb5:  ldc.r4     3.
      IL_0cba:  ldc.i4.1
      IL_0cbb:  callvirt   instance void Game.SubsystemAudio::PlayRandomSound(string,
                                                                              float32,
                                                                              float32,
                                                                              valuetype [Engine]Engine.Vector3,
                                                                              float32,
                                                                              bool)
      IL_0cc0:  ldloc.2
      IL_0cc1:  ldc.i4.1
      IL_0cc2:  stfld      bool Game.WorldItem::ToRemove
      IL_0cc7:  ldarg.0
      IL_0cc8:  ldfld      class Game.SubsystemExplosions Game.SubsystemProjectiles::m_subsystemExplosions
      IL_0ccd:  ldloc.2
      IL_0cce:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0cd3:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_0cd8:  call       int32 Game.Terrain::ToCell(float32)
      IL_0cdd:  ldloc.2
      IL_0cde:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0ce3:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_0ce8:  call       int32 Game.Terrain::ToCell(float32)
      IL_0ced:  ldloc.2
      IL_0cee:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0cf3:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_0cf8:  call       int32 Game.Terrain::ToCell(float32)
      IL_0cfd:  ldloc.2
      IL_0cfe:  ldfld      int32 Game.WorldItem::Value
      IL_0d03:  callvirt   instance bool Game.SubsystemExplosions::TryExplodeBlock(int32,
                                                                                   int32,
                                                                                   int32,
                                                                                   int32)
      IL_0d08:  pop
      IL_0d09:  ldloca.s   V_1
      IL_0d0b:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.Projectile>::MoveNext()
      IL_0d10:  brtrue     IL_001d

      IL_0d15:  leave.s    IL_0d25

    }  // end .try
    finally
    {
      IL_0d17:  ldloca.s   V_1
      IL_0d19:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.Projectile>
      IL_0d1f:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0d24:  endfinally
    }  // end handler
    IL_0d25:  ldarg.0
    IL_0d26:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Projectile> Game.SubsystemProjectiles::m_projectilesToRemove
    IL_0d2b:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.Projectile>::GetEnumerator()
    IL_0d30:  stloc.1
    .try
    {
      IL_0d31:  br.s       IL_0d75

      IL_0d33:  ldloca.s   V_1
      IL_0d35:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.Projectile>::get_Current()
      IL_0d3a:  stloc.s    V_41
      IL_0d3c:  ldloc.s    V_41
      IL_0d3e:  ldfld      class Game.ITrailParticleSystem Game.Projectile::TrailParticleSystem
      IL_0d43:  brfalse.s  IL_0d52

      IL_0d45:  ldloc.s    V_41
      IL_0d47:  ldfld      class Game.ITrailParticleSystem Game.Projectile::TrailParticleSystem
      IL_0d4c:  ldc.i4.1
      IL_0d4d:  callvirt   instance void Game.ITrailParticleSystem::set_IsStopped(bool)
      IL_0d52:  ldarg.0
      IL_0d53:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Projectile> Game.SubsystemProjectiles::m_projectiles
      IL_0d58:  ldloc.s    V_41
      IL_0d5a:  callvirt   instance bool class [System.Collections]System.Collections.Generic.List`1<class Game.Projectile>::Remove(!0)
      IL_0d5f:  pop
      IL_0d60:  ldarg.0
      IL_0d61:  ldfld      class [System.Runtime]System.Action`1<class Game.Projectile> Game.SubsystemProjectiles::ProjectileRemoved
      IL_0d66:  brfalse.s  IL_0d75

      IL_0d68:  ldarg.0
      IL_0d69:  ldfld      class [System.Runtime]System.Action`1<class Game.Projectile> Game.SubsystemProjectiles::ProjectileRemoved
      IL_0d6e:  ldloc.s    V_41
      IL_0d70:  callvirt   instance void class [System.Runtime]System.Action`1<class Game.Projectile>::Invoke(!0)
      IL_0d75:  ldloca.s   V_1
      IL_0d77:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.Projectile>::MoveNext()
      IL_0d7c:  brtrue.s   IL_0d33

      IL_0d7e:  leave.s    IL_0d8e

    }  // end .try
    finally
    {
      IL_0d80:  ldloca.s   V_1
      IL_0d82:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.Projectile>
      IL_0d88:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0d8d:  endfinally
    }  // end handler
    IL_0d8e:  ldarg.0
    IL_0d8f:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Projectile> Game.SubsystemProjectiles::m_projectilesToRemove
    IL_0d94:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.Projectile>::Clear()
    IL_0d99:  ret
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
    // 代码大小       171 (0xab)
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
      IL_0020:  br.s       IL_0091

      IL_0022:  ldloca.s   V_2
      IL_0024:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.Projectile>::get_Current()
      IL_0029:  stloc.3
      IL_002a:  newobj     instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::.ctor()
      IL_002f:  stloc.s    V_4
      IL_0031:  ldloc.0
      IL_0032:  ldloca.s   V_1
      IL_0034:  call       class [System.Globalization]System.Globalization.CultureInfo [System.Globalization]System.Globalization.CultureInfo::get_InvariantCulture()
      IL_0039:  call       instance string [System.Runtime]System.Int32::ToString(class [System.Runtime]System.IFormatProvider)
      IL_003e:  ldloc.s    V_4
      IL_0040:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<class [EntitySystem]TemplatesDatabase.ValuesDictionary>(string,
                                                                                                                                                            !!0)
      IL_0045:  ldloc.s    V_4
      IL_0047:  ldstr      "Value"
      IL_004c:  ldloc.3
      IL_004d:  ldfld      int32 Game.WorldItem::Value
      IL_0052:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<int32>(string,
                                                                                                           !!0)
      IL_0057:  ldloc.s    V_4
      IL_0059:  ldstr      "Position"
      IL_005e:  ldloc.3
      IL_005f:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0064:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<valuetype [Engine]Engine.Vector3>(string,
                                                                                                                                      !!0)
      IL_0069:  ldloc.s    V_4
      IL_006b:  ldstr      "Velocity"
      IL_0070:  ldloc.3
      IL_0071:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_0076:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<valuetype [Engine]Engine.Vector3>(string,
                                                                                                                                      !!0)
      IL_007b:  ldloc.s    V_4
      IL_007d:  ldstr      "CreationTime"
      IL_0082:  ldloc.3
      IL_0083:  ldfld      float64 Game.WorldItem::CreationTime
      IL_0088:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<float64>(string,
                                                                                                             !!0)
      IL_008d:  ldloc.1
      IL_008e:  ldc.i4.1
      IL_008f:  add
      IL_0090:  stloc.1
      IL_0091:  ldloca.s   V_2
      IL_0093:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.Projectile>::MoveNext()
      IL_0098:  brtrue.s   IL_0022

      IL_009a:  leave.s    IL_00aa

    }  // end .try
    finally
    {
      IL_009c:  ldloca.s   V_2
      IL_009e:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.Projectile>
      IL_00a4:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00a9:  endfinally
    }  // end handler
    IL_00aa:  ret
  } // end of method SubsystemProjectiles::Save

  .method private hidebysig instance bool 
          IsWater(valuetype [Engine]Engine.Vector3 position) cil managed
  {
    // 代码大小       66 (0x42)
    .maxstack  4
    .locals init (int32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.SubsystemProjectiles::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_000b:  ldarg.1
    IL_000c:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0011:  call       int32 Game.Terrain::ToCell(float32)
    IL_0016:  ldarg.1
    IL_0017:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_001c:  call       int32 Game.Terrain::ToCell(float32)
    IL_0021:  ldarg.1
    IL_0022:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0027:  call       int32 Game.Terrain::ToCell(float32)
    IL_002c:  callvirt   instance int32 Game.Terrain::GetCellContents(int32,
                                                                      int32,
                                                                      int32)
    IL_0031:  stloc.0
    IL_0032:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0037:  ldloc.0
    IL_0038:  ldelem.ref
    IL_0039:  isinst     Game.WaterBlock
    IL_003e:  ldnull
    IL_003f:  cgt.un
    IL_0041:  ret
  } // end of method SubsystemProjectiles::IsWater

  .method private hidebysig instance bool 
          IsMagma(valuetype [Engine]Engine.Vector3 position) cil managed
  {
    // 代码大小       66 (0x42)
    .maxstack  4
    .locals init (int32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.SubsystemProjectiles::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_000b:  ldarg.1
    IL_000c:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0011:  call       int32 Game.Terrain::ToCell(float32)
    IL_0016:  ldarg.1
    IL_0017:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_001c:  call       int32 Game.Terrain::ToCell(float32)
    IL_0021:  ldarg.1
    IL_0022:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0027:  call       int32 Game.Terrain::ToCell(float32)
    IL_002c:  callvirt   instance int32 Game.Terrain::GetCellContents(int32,
                                                                      int32,
                                                                      int32)
    IL_0031:  stloc.0
    IL_0032:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0037:  ldloc.0
    IL_0038:  ldelem.ref
    IL_0039:  isinst     Game.MagmaBlock
    IL_003e:  ldnull
    IL_003f:  cgt.un
    IL_0041:  ret
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