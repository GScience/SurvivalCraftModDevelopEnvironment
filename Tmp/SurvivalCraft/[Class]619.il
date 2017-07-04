.class public auto ansi beforefieldinit Game.SubsystemImpactExplosivesBlockBehavior
       extends Game.SubsystemBlockBehavior
{
  .field private class Game.SubsystemExplosions m_subsystemExplosions
  .method public hidebysig specialname virtual 
          instance int32[]  get_HandledBlocks() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  newarr     [System.Runtime]System.Int32
    IL_0006:  ret
  } // end of method SubsystemImpactExplosivesBlockBehavior::get_HandledBlocks

  .method public hidebysig virtual instance bool 
          OnHitAsProjectile(valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace> cellFace,
                            class Game.ComponentBody componentBody,
                            class Game.WorldItem worldItem) cil managed
  {
    // 代码大小       66 (0x42)
    .maxstack  5
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemExplosions Game.SubsystemImpactExplosivesBlockBehavior::m_subsystemExplosions
    IL_0006:  ldarg.3
    IL_0007:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
    IL_000c:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0011:  call       int32 Game.Terrain::ToCell(float32)
    IL_0016:  ldarg.3
    IL_0017:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
    IL_001c:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0021:  call       int32 Game.Terrain::ToCell(float32)
    IL_0026:  ldarg.3
    IL_0027:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
    IL_002c:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0031:  call       int32 Game.Terrain::ToCell(float32)
    IL_0036:  ldarg.3
    IL_0037:  ldfld      int32 Game.WorldItem::Value
    IL_003c:  callvirt   instance bool Game.SubsystemExplosions::TryExplodeBlock(int32,
                                                                                 int32,
                                                                                 int32,
                                                                                 int32)
    IL_0041:  ret
  } // end of method SubsystemImpactExplosivesBlockBehavior::OnHitAsProjectile

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
    IL_000f:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemExplosions>(bool)
    IL_0014:  stfld      class Game.SubsystemExplosions Game.SubsystemImpactExplosivesBlockBehavior::m_subsystemExplosions
    IL_0019:  ret
  } // end of method SubsystemImpactExplosivesBlockBehavior::Load

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.SubsystemBlockBehavior::.ctor()
    IL_0006:  ret
  } // end of method SubsystemImpactExplosivesBlockBehavior::.ctor

  .property instance int32[] HandledBlocks()
  {
    .get instance int32[] Game.SubsystemImpactExplosivesBlockBehavior::get_HandledBlocks()
  } // end of property SubsystemImpactExplosivesBlockBehavior::HandledBlocks
} // end of class Game.SubsystemImpactExplosivesBlockBehavior