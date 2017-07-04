.class public auto ansi beforefieldinit Game.SubsystemArrowBlockBehavior
       extends Game.SubsystemBlockBehavior
{
  .field private class Game.SubsystemProjectiles m_subsystemProjectiles
  .field private class Game.Random m_random
  .method public hidebysig specialname virtual 
          instance int32[]  get_HandledBlocks() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  newarr     [System.Runtime]System.Int32
    IL_0006:  ret
  } // end of method SubsystemArrowBlockBehavior::get_HandledBlocks

  .method public hidebysig virtual instance void 
          OnFiredAsProjectile(class Game.Projectile projectile) cil managed
  {
    // 代码大小       73 (0x49)
    .maxstack  7
    IL_0000:  ldarg.1
    IL_0001:  ldfld      int32 Game.WorldItem::Value
    IL_0006:  call       int32 Game.Terrain::ExtractData(int32)
    IL_000b:  call       valuetype Game.ArrowBlock/ArrowType Game.ArrowBlock::GetArrowType(int32)
    IL_0010:  ldc.i4.4
    IL_0011:  bne.un.s   IL_0048

    IL_0013:  ldarg.0
    IL_0014:  ldfld      class Game.SubsystemProjectiles Game.SubsystemArrowBlockBehavior::m_subsystemProjectiles
    IL_0019:  ldarg.1
    IL_001a:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_001f:  ldc.i4.s   20
    IL_0021:  ldc.r4     0.5
    IL_0026:  ldc.r4     3.4028235e+038
    IL_002b:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0030:  newobj     instance void Game.SmokeTrailParticleSystem::.ctor(int32,
                                                                            float32,
                                                                            float32,
                                                                            valuetype [Engine]Engine.Color)
    IL_0035:  callvirt   instance void Game.SubsystemProjectiles::AddTrail(class Game.Projectile,
                                                                           valuetype [Engine]Engine.Vector3,
                                                                           class Game.ITrailParticleSystem)
    IL_003a:  ldarg.1
    IL_003b:  ldc.i4.1
    IL_003c:  stfld      valuetype Game.ProjectileStoppedAction Game.Projectile::ProjectileStoppedAction
    IL_0041:  ldarg.1
    IL_0042:  ldc.i4.1
    IL_0043:  stfld      bool Game.Projectile::IsIncendiary
    IL_0048:  ret
  } // end of method SubsystemArrowBlockBehavior::OnFiredAsProjectile

  .method public hidebysig virtual instance bool 
          OnHitAsProjectile(valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace> cellFace,
                            class Game.ComponentBody componentBody,
                            class Game.WorldItem worldItem) cil managed
  {
    // 代码大小       118 (0x76)
    .maxstack  3
    .locals init (valuetype Game.ArrowBlock/ArrowType V_0,
             float32 V_1)
    IL_0000:  ldarg.3
    IL_0001:  ldfld      int32 Game.WorldItem::Value
    IL_0006:  call       int32 Game.Terrain::ExtractData(int32)
    IL_000b:  call       valuetype Game.ArrowBlock/ArrowType Game.ArrowBlock::GetArrowType(int32)
    IL_0010:  stloc.0
    IL_0011:  ldarg.3
    IL_0012:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
    IL_0017:  call       instance float32 [Engine]Engine.Vector3::Length()
    IL_001c:  ldc.r4     10.
    IL_0021:  ble.un.s   IL_0074

    IL_0023:  ldc.r4     0.1
    IL_0028:  stloc.1
    IL_0029:  ldloc.0
    IL_002a:  ldc.i4.4
    IL_002b:  bne.un.s   IL_0033

    IL_002d:  ldc.r4     0.5
    IL_0032:  stloc.1
    IL_0033:  ldloc.0
    IL_0034:  brtrue.s   IL_003c

    IL_0036:  ldc.r4     0.2
    IL_003b:  stloc.1
    IL_003c:  ldloc.0
    IL_003d:  ldc.i4.3
    IL_003e:  bne.un.s   IL_0046

    IL_0040:  ldc.r4     0.0
    IL_0045:  stloc.1
    IL_0046:  ldloc.0
    IL_0047:  ldc.i4.5
    IL_0048:  bne.un.s   IL_0050

    IL_004a:  ldc.r4     5.0000001e-002
    IL_004f:  stloc.1
    IL_0050:  ldloc.0
    IL_0051:  ldc.i4.6
    IL_0052:  bne.un.s   IL_005a

    IL_0054:  ldc.r4     0.0
    IL_0059:  stloc.1
    IL_005a:  ldarg.0
    IL_005b:  ldfld      class Game.Random Game.SubsystemArrowBlockBehavior::m_random
    IL_0060:  ldc.r4     0.0
    IL_0065:  ldc.r4     1.
    IL_006a:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_006f:  ldloc.1
    IL_0070:  bge.un.s   IL_0074

    IL_0072:  ldc.i4.1
    IL_0073:  ret

    IL_0074:  ldc.i4.0
    IL_0075:  ret
  } // end of method SubsystemArrowBlockBehavior::OnHitAsProjectile

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
    IL_000f:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemProjectiles>(bool)
    IL_0014:  stfld      class Game.SubsystemProjectiles Game.SubsystemArrowBlockBehavior::m_subsystemProjectiles
    IL_0019:  ret
  } // end of method SubsystemArrowBlockBehavior::Load

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.Random::.ctor()
    IL_0006:  stfld      class Game.Random Game.SubsystemArrowBlockBehavior::m_random
    IL_000b:  ldarg.0
    IL_000c:  call       instance void Game.SubsystemBlockBehavior::.ctor()
    IL_0011:  ret
  } // end of method SubsystemArrowBlockBehavior::.ctor

  .property instance int32[] HandledBlocks()
  {
    .get instance int32[] Game.SubsystemArrowBlockBehavior::get_HandledBlocks()
  } // end of property SubsystemArrowBlockBehavior::HandledBlocks
} // end of class Game.SubsystemArrowBlockBehavior