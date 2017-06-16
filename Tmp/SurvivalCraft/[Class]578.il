.class public auto ansi beforefieldinit Game.SubsystemHammerBlockBehavior
       extends Game.SubsystemBlockBehavior
{
  .field private class Game.SubsystemFurnitureBlockBehavior m_subsystemFurnitureBlockBehavior
  .method public hidebysig specialname virtual 
          instance int32[]  get_HandledBlocks() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  newarr     [System.Runtime]System.Int32
    IL_0006:  ret
  } // end of method SubsystemHammerBlockBehavior::get_HandledBlocks

  .method public hidebysig virtual instance bool 
          OnUse(valuetype [Engine]Engine.Vector3 start,
                valuetype [Engine]Engine.Vector3 direction,
                class Game.ComponentMiner componentMiner) cil managed
  {
    // 代码大小       47 (0x2f)
    .maxstack  4
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> V_0)
    IL_0000:  ldarg.3
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> Game.ComponentMiner::PickTerrainForDigging(valuetype [Engine]Engine.Vector3,
                                                                                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0008:  stloc.0
    IL_0009:  ldloca.s   V_0
    IL_000b:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_HasValue()
    IL_0010:  brfalse.s  IL_002d

    IL_0012:  ldarg.0
    IL_0013:  ldfld      class Game.SubsystemFurnitureBlockBehavior Game.SubsystemHammerBlockBehavior::m_subsystemFurnitureBlockBehavior
    IL_0018:  ldloca.s   V_0
    IL_001a:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_001f:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0024:  ldarg.2
    IL_0025:  ldarg.3
    IL_0026:  callvirt   instance void Game.SubsystemFurnitureBlockBehavior::ScanDesign(valuetype Game.CellFace,
                                                                                        valuetype [Engine]Engine.Vector3,
                                                                                        class Game.ComponentMiner)
    IL_002b:  ldc.i4.1
    IL_002c:  ret

    IL_002d:  ldc.i4.0
    IL_002e:  ret
  } // end of method SubsystemHammerBlockBehavior::OnUse

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
    IL_000f:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemFurnitureBlockBehavior>(bool)
    IL_0014:  stfld      class Game.SubsystemFurnitureBlockBehavior Game.SubsystemHammerBlockBehavior::m_subsystemFurnitureBlockBehavior
    IL_0019:  ret
  } // end of method SubsystemHammerBlockBehavior::Load

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.SubsystemBlockBehavior::.ctor()
    IL_0006:  ret
  } // end of method SubsystemHammerBlockBehavior::.ctor

  .property instance int32[] HandledBlocks()
  {
    .get instance int32[] Game.SubsystemHammerBlockBehavior::get_HandledBlocks()
  } // end of property SubsystemHammerBlockBehavior::HandledBlocks
} // end of class Game.SubsystemHammerBlockBehavior