.class public abstract auto ansi beforefieldinit Game.SubsystemBlockBehavior
       extends [EntitySystem]GameEntitySystem.Subsystem
{
  .field private class Game.SubsystemTerrain '<SubsystemTerrain>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig newslot specialname abstract virtual 
          instance int32[]  get_HandledBlocks() cil managed
  {
  } // end of method SubsystemBlockBehavior::get_HandledBlocks

  .method family hidebysig specialname instance class Game.SubsystemTerrain 
          get_SubsystemTerrain() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.SubsystemBlockBehavior::'<SubsystemTerrain>k__BackingField'
    IL_0006:  ret
  } // end of method SubsystemBlockBehavior::get_SubsystemTerrain

  .method private hidebysig specialname instance void 
          set_SubsystemTerrain(class Game.SubsystemTerrain 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.SubsystemTerrain Game.SubsystemBlockBehavior::'<SubsystemTerrain>k__BackingField'
    IL_0007:  ret
  } // end of method SubsystemBlockBehavior::set_SubsystemTerrain

  .method public hidebysig newslot virtual 
          instance void  OnChunkInitialized(class Game.TerrainChunk chunk) cil managed
  {
    // 代码大小       1 (0x1)
    .maxstack  8
    IL_0000:  ret
  } // end of method SubsystemBlockBehavior::OnChunkInitialized

  .method public hidebysig newslot virtual 
          instance void  OnChunkDiscarding(class Game.TerrainChunk chunk) cil managed
  {
    // 代码大小       1 (0x1)
    .maxstack  8
    IL_0000:  ret
  } // end of method SubsystemBlockBehavior::OnChunkDiscarding

  .method public hidebysig newslot virtual 
          instance void  OnBlockGenerated(int32 'value',
                                          int32 x,
                                          int32 y,
                                          int32 z,
                                          bool isLoaded) cil managed
  {
    // 代码大小       1 (0x1)
    .maxstack  8
    IL_0000:  ret
  } // end of method SubsystemBlockBehavior::OnBlockGenerated

  .method public hidebysig newslot virtual 
          instance void  OnBlockAdded(int32 'value',
                                      int32 oldValue,
                                      int32 x,
                                      int32 y,
                                      int32 z) cil managed
  {
    // 代码大小       1 (0x1)
    .maxstack  8
    IL_0000:  ret
  } // end of method SubsystemBlockBehavior::OnBlockAdded

  .method public hidebysig newslot virtual 
          instance void  OnBlockRemoved(int32 'value',
                                        int32 newValue,
                                        int32 x,
                                        int32 y,
                                        int32 z) cil managed
  {
    // 代码大小       1 (0x1)
    .maxstack  8
    IL_0000:  ret
  } // end of method SubsystemBlockBehavior::OnBlockRemoved

  .method public hidebysig newslot virtual 
          instance void  OnBlockModified(int32 'value',
                                         int32 oldValue,
                                         int32 x,
                                         int32 y,
                                         int32 z) cil managed
  {
    // 代码大小       1 (0x1)
    .maxstack  8
    IL_0000:  ret
  } // end of method SubsystemBlockBehavior::OnBlockModified

  .method public hidebysig newslot virtual 
          instance void  OnNeighborBlockChanged(int32 x,
                                                int32 y,
                                                int32 z,
                                                int32 neighborX,
                                                int32 neighborY,
                                                int32 neighborZ) cil managed
  {
    // 代码大小       1 (0x1)
    .maxstack  8
    IL_0000:  ret
  } // end of method SubsystemBlockBehavior::OnNeighborBlockChanged

  .method public hidebysig newslot virtual 
          instance bool  OnUse(valuetype [Engine]Engine.Vector3 start,
                               valuetype [Engine]Engine.Vector3 direction,
                               class Game.ComponentMiner componentMiner) cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method SubsystemBlockBehavior::OnUse

  .method public hidebysig newslot virtual 
          instance bool  OnInteract(valuetype Game.TerrainRaycastResult raycastResult,
                                    class Game.ComponentMiner componentMiner) cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method SubsystemBlockBehavior::OnInteract

  .method public hidebysig newslot virtual 
          instance bool  OnAim(valuetype [Engine]Engine.Vector3 start,
                               valuetype [Engine]Engine.Vector3 direction,
                               class Game.ComponentMiner componentMiner,
                               valuetype Game.AimState state) cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method SubsystemBlockBehavior::OnAim

  .method public hidebysig newslot virtual 
          instance bool  OnEditBlock(int32 x,
                                     int32 y,
                                     int32 z,
                                     int32 'value',
                                     class Game.ComponentPlayer componentPlayer) cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method SubsystemBlockBehavior::OnEditBlock

  .method public hidebysig newslot virtual 
          instance bool  OnEditInventoryItem(class Game.IInventory inventory,
                                             int32 slotIndex,
                                             class Game.ComponentPlayer componentPlayer) cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method SubsystemBlockBehavior::OnEditInventoryItem

  .method public hidebysig newslot virtual 
          instance void  OnItemPlaced(int32 x,
                                      int32 y,
                                      int32 z,
                                      valuetype Game.BlockPlacementData& placementData,
                                      int32 itemValue) cil managed
  {
    // 代码大小       1 (0x1)
    .maxstack  8
    IL_0000:  ret
  } // end of method SubsystemBlockBehavior::OnItemPlaced

  .method public hidebysig newslot virtual 
          instance void  OnItemHarvested(int32 x,
                                         int32 y,
                                         int32 z,
                                         int32 blockValue,
                                         valuetype Game.BlockDropValue& dropValue,
                                         int32& newBlockValue) cil managed
  {
    // 代码大小       1 (0x1)
    .maxstack  8
    IL_0000:  ret
  } // end of method SubsystemBlockBehavior::OnItemHarvested

  .method public hidebysig newslot virtual 
          instance void  OnCollide(valuetype Game.CellFace cellFace,
                                   float32 velocity,
                                   class Game.ComponentBody componentBody) cil managed
  {
    // 代码大小       1 (0x1)
    .maxstack  8
    IL_0000:  ret
  } // end of method SubsystemBlockBehavior::OnCollide

  .method public hidebysig newslot virtual 
          instance void  OnExplosion(int32 'value',
                                     int32 x,
                                     int32 y,
                                     int32 z,
                                     float32 damage) cil managed
  {
    // 代码大小       1 (0x1)
    .maxstack  8
    IL_0000:  ret
  } // end of method SubsystemBlockBehavior::OnExplosion

  .method public hidebysig newslot virtual 
          instance void  OnFiredAsProjectile(class Game.Projectile projectile) cil managed
  {
    // 代码大小       1 (0x1)
    .maxstack  8
    IL_0000:  ret
  } // end of method SubsystemBlockBehavior::OnFiredAsProjectile

  .method public hidebysig newslot virtual 
          instance bool  OnHitAsProjectile(valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace> cellFace,
                                           class Game.ComponentBody componentBody,
                                           class Game.WorldItem worldItem) cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method SubsystemBlockBehavior::OnHitAsProjectile

  .method public hidebysig newslot virtual 
          instance void  OnHitByProjectile(valuetype Game.CellFace cellFace,
                                           class Game.WorldItem worldItem) cil managed
  {
    // 代码大小       1 (0x1)
    .maxstack  8
    IL_0000:  ret
  } // end of method SubsystemBlockBehavior::OnHitByProjectile

  .method public hidebysig newslot virtual 
          instance int32  GetProcessInventoryItemCapacity(class Game.IInventory inventory,
                                                          int32 slotIndex,
                                                          int32 'value') cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method SubsystemBlockBehavior::GetProcessInventoryItemCapacity

  .method public hidebysig newslot virtual 
          instance void  ProcessInventoryItem(class Game.IInventory inventory,
                                              int32 slotIndex,
                                              int32 'value',
                                              int32 count,
                                              int32 processCount,
                                              [out] int32& processedValue,
                                              [out] int32& processedCount) cil managed
  {
    // 代码大小       11 (0xb)
    .maxstack  8
    IL_0000:  ldstr      "Cannot process items."
    IL_0005:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_000a:  throw
  } // end of method SubsystemBlockBehavior::ProcessInventoryItem

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_000d:  call       instance void Game.SubsystemBlockBehavior::set_SubsystemTerrain(class Game.SubsystemTerrain)
    IL_0012:  ret
  } // end of method SubsystemBlockBehavior::Load

  .method family hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [EntitySystem]GameEntitySystem.Subsystem::.ctor()
    IL_0006:  ret
  } // end of method SubsystemBlockBehavior::.ctor

  .property instance int32[] HandledBlocks()
  {
    .get instance int32[] Game.SubsystemBlockBehavior::get_HandledBlocks()
  } // end of property SubsystemBlockBehavior::HandledBlocks
  .property instance class Game.SubsystemTerrain
          SubsystemTerrain()
  {
    .get instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    .set instance void Game.SubsystemBlockBehavior::set_SubsystemTerrain(class Game.SubsystemTerrain)
  } // end of property SubsystemBlockBehavior::SubsystemTerrain
} // end of class Game.SubsystemBlockBehavior