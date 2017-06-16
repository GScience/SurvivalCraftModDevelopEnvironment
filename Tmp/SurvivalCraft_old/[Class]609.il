.class public auto ansi beforefieldinit Game.SubsystemBlockEntities
       extends [EntitySystem]GameEntitySystem.Subsystem
{
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.ComponentBlockEntity> m_blockEntities
  .method public hidebysig instance class Game.ComponentBlockEntity 
          GetBlockEntity(int32 x,
                         int32 y,
                         int32 z) cil managed
  {
    // 代码大小       24 (0x18)
    .maxstack  4
    .locals init (class Game.ComponentBlockEntity V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.ComponentBlockEntity> Game.SubsystemBlockEntities::m_blockEntities
    IL_0006:  ldarg.1
    IL_0007:  ldarg.2
    IL_0008:  ldarg.3
    IL_0009:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_000e:  ldloca.s   V_0
    IL_0010:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.ComponentBlockEntity>::TryGetValue(!0,
                                                                                                                                                                                       !1&)
    IL_0015:  pop
    IL_0016:  ldloc.0
    IL_0017:  ret
  } // end of method SubsystemBlockEntities::GetBlockEntity

  .method family hidebysig virtual instance void 
          OnEntityAdded(class [EntitySystem]GameEntitySystem.Entity entity) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  3
    .locals init (class Game.ComponentBlockEntity V_0)
    IL_0000:  ldarg.1
    IL_0001:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentBlockEntity>()
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  brfalse.s  IL_001c

    IL_000a:  ldarg.0
    IL_000b:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.ComponentBlockEntity> Game.SubsystemBlockEntities::m_blockEntities
    IL_0010:  ldloc.0
    IL_0011:  callvirt   instance valuetype [Engine]Engine.Point3 Game.ComponentBlockEntity::get_Coordinates()
    IL_0016:  ldloc.0
    IL_0017:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.ComponentBlockEntity>::Add(!0,
                                                                                                                                                                               !1)
    IL_001c:  ret
  } // end of method SubsystemBlockEntities::OnEntityAdded

  .method family hidebysig virtual instance void 
          OnEntityRemoved(class [EntitySystem]GameEntitySystem.Entity entity) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  2
    .locals init (class Game.ComponentBlockEntity V_0)
    IL_0000:  ldarg.1
    IL_0001:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentBlockEntity>()
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  brfalse.s  IL_001c

    IL_000a:  ldarg.0
    IL_000b:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.ComponentBlockEntity> Game.SubsystemBlockEntities::m_blockEntities
    IL_0010:  ldloc.0
    IL_0011:  callvirt   instance valuetype [Engine]Engine.Point3 Game.ComponentBlockEntity::get_Coordinates()
    IL_0016:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.ComponentBlockEntity>::Remove(!0)
    IL_001b:  pop
    IL_001c:  ret
  } // end of method SubsystemBlockEntities::OnEntityRemoved

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.ComponentBlockEntity>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.ComponentBlockEntity> Game.SubsystemBlockEntities::m_blockEntities
    IL_000b:  ldarg.0
    IL_000c:  call       instance void [EntitySystem]GameEntitySystem.Subsystem::.ctor()
    IL_0011:  ret
  } // end of method SubsystemBlockEntities::.ctor

} // end of class Game.SubsystemBlockEntities