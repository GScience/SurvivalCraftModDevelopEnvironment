.class public auto ansi beforefieldinit Game.SubsystemCraftingTableBlockBehavior
       extends Game.SubsystemBlockBehavior
{
  .method public hidebysig specialname virtual 
          instance int32[]  get_HandledBlocks() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldc.i4.1
    IL_0001:  newarr     [System.Runtime]System.Int32
    IL_0006:  dup
    IL_0007:  ldc.i4.0
    IL_0008:  ldc.i4.s   27
    IL_000a:  stelem.i4
    IL_000b:  ret
  } // end of method SubsystemCraftingTableBlockBehavior::get_HandledBlocks

  .method public hidebysig virtual instance void 
          OnBlockAdded(int32 'value',
                       int32 oldValue,
                       int32 x,
                       int32 y,
                       int32 z) cil managed
  {
    // 代码大小       134 (0x86)
    .maxstack  5
    .locals init (class [EntitySystem]TemplatesDatabase.DatabaseObject V_0,
             class [EntitySystem]TemplatesDatabase.ValuesDictionary V_1,
             class [EntitySystem]GameEntitySystem.Entity V_2)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0006:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_000b:  callvirt   instance class [EntitySystem]GameEntitySystem.GameDatabase [EntitySystem]GameEntitySystem.Project::get_GameDatabase()
    IL_0010:  callvirt   instance class [EntitySystem]TemplatesDatabase.Database [EntitySystem]GameEntitySystem.GameDatabase::get_Database()
    IL_0015:  ldstr      "CraftingTable"
    IL_001a:  ldarg.0
    IL_001b:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0020:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0025:  callvirt   instance class [EntitySystem]GameEntitySystem.GameDatabase [EntitySystem]GameEntitySystem.Project::get_GameDatabase()
    IL_002a:  callvirt   instance class [EntitySystem]TemplatesDatabase.DatabaseObjectType [EntitySystem]GameEntitySystem.GameDatabase::get_EntityTemplateType()
    IL_002f:  ldc.i4.1
    IL_0030:  callvirt   instance class [EntitySystem]TemplatesDatabase.DatabaseObject [EntitySystem]TemplatesDatabase.Database::FindDatabaseObject(string,
                                                                                                                                                    class [EntitySystem]TemplatesDatabase.DatabaseObjectType,
                                                                                                                                                    bool)
    IL_0035:  stloc.0
    IL_0036:  newobj     instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::.ctor()
    IL_003b:  stloc.1
    IL_003c:  ldloc.1
    IL_003d:  ldloc.0
    IL_003e:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::PopulateFromDatabaseObject(class [EntitySystem]TemplatesDatabase.DatabaseObject)
    IL_0043:  ldloc.1
    IL_0044:  ldstr      "BlockEntity"
    IL_0049:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<class [EntitySystem]TemplatesDatabase.ValuesDictionary>(string)
    IL_004e:  ldstr      "Coordinates"
    IL_0053:  ldarg.3
    IL_0054:  ldarg.s    y
    IL_0056:  ldarg.s    z
    IL_0058:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_005d:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<valuetype [Engine]Engine.Point3>(string,
                                                                                                                                   !!0)
    IL_0062:  ldarg.0
    IL_0063:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0068:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_006d:  ldloc.1
    IL_006e:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Project::CreateEntity(class [EntitySystem]TemplatesDatabase.ValuesDictionary)
    IL_0073:  stloc.2
    IL_0074:  ldarg.0
    IL_0075:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_007a:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_007f:  ldloc.2
    IL_0080:  callvirt   instance void [EntitySystem]GameEntitySystem.Project::AddEntity(class [EntitySystem]GameEntitySystem.Entity)
    IL_0085:  ret
  } // end of method SubsystemCraftingTableBlockBehavior::OnBlockAdded

  .method public hidebysig virtual instance void 
          OnBlockRemoved(int32 'value',
                         int32 newValue,
                         int32 x,
                         int32 y,
                         int32 z) cil managed
  {
    // 代码大小       143 (0x8f)
    .maxstack  4
    .locals init (class Game.ComponentBlockEntity V_0,
             valuetype [Engine]Engine.Vector3 V_1,
             valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.IInventory> V_2,
             valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerable`1<class Game.IInventory> V_3)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0006:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_000b:  ldc.i4.1
    IL_000c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemBlockEntities>(bool)
    IL_0011:  ldarg.3
    IL_0012:  ldarg.s    y
    IL_0014:  ldarg.s    z
    IL_0016:  callvirt   instance class Game.ComponentBlockEntity Game.SubsystemBlockEntities::GetBlockEntity(int32,
                                                                                                              int32,
                                                                                                              int32)
    IL_001b:  stloc.0
    IL_001c:  ldloc.0
    IL_001d:  brfalse.s  IL_008e

    IL_001f:  ldarg.3
    IL_0020:  conv.r4
    IL_0021:  ldarg.s    y
    IL_0023:  conv.r4
    IL_0024:  ldarg.s    z
    IL_0026:  conv.r4
    IL_0027:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_002c:  ldc.r4     0.5
    IL_0031:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32)
    IL_0036:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_003b:  stloc.1
    IL_003c:  ldloc.0
    IL_003d:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0042:  callvirt   instance valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerable`1<!!0> [EntitySystem]GameEntitySystem.Entity::FindComponents<class Game.IInventory>()
    IL_0047:  stloc.3
    IL_0048:  ldloca.s   V_3
    IL_004a:  call       instance valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<!0> valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerable`1<class Game.IInventory>::GetEnumerator()
    IL_004f:  stloc.2
    .try
    {
      IL_0050:  br.s       IL_005f

      IL_0052:  ldloca.s   V_2
      IL_0054:  call       instance !0 valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.IInventory>::get_Current()
      IL_0059:  ldloc.1
      IL_005a:  callvirt   instance void Game.IInventory::DropAllItems(valuetype [Engine]Engine.Vector3)
      IL_005f:  ldloca.s   V_2
      IL_0061:  call       instance bool valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.IInventory>::MoveNext()
      IL_0066:  brtrue.s   IL_0052

      IL_0068:  leave.s    IL_0078

    }  // end .try
    finally
    {
      IL_006a:  ldloca.s   V_2
      IL_006c:  constrained. valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.IInventory>
      IL_0072:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0077:  endfinally
    }  // end handler
    IL_0078:  ldarg.0
    IL_0079:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_007e:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0083:  ldloc.0
    IL_0084:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0089:  callvirt   instance void [EntitySystem]GameEntitySystem.Project::RemoveEntity(class [EntitySystem]GameEntitySystem.Entity)
    IL_008e:  ret
  } // end of method SubsystemCraftingTableBlockBehavior::OnBlockRemoved

  .method public hidebysig virtual instance bool 
          OnInteract(valuetype Game.TerrainRaycastResult raycastResult,
                     class Game.ComponentMiner componentMiner) cil managed
  {
    // 代码大小       155 (0x9b)
    .maxstack  4
    .locals init (class Game.ComponentBlockEntity V_0,
             class Game.ComponentPlayer V_1,
             class Game.ComponentCraftingTable V_2)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0006:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_000b:  ldc.i4.1
    IL_000c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemBlockEntities>(bool)
    IL_0011:  ldarg.1
    IL_0012:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0017:  ldfld      int32 Game.CellFace::X
    IL_001c:  ldarg.1
    IL_001d:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0022:  ldfld      int32 Game.CellFace::Y
    IL_0027:  ldarg.1
    IL_0028:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_002d:  ldfld      int32 Game.CellFace::Z
    IL_0032:  callvirt   instance class Game.ComponentBlockEntity Game.SubsystemBlockEntities::GetBlockEntity(int32,
                                                                                                              int32,
                                                                                                              int32)
    IL_0037:  stloc.0
    IL_0038:  ldloc.0
    IL_0039:  brfalse.s  IL_0099

    IL_003b:  ldarg.2
    IL_003c:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0041:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentPlayer>()
    IL_0046:  stloc.1
    IL_0047:  ldloc.1
    IL_0048:  brfalse.s  IL_0099

    IL_004a:  ldloc.0
    IL_004b:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0050:  ldc.i4.1
    IL_0051:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCraftingTable>(bool)
    IL_0056:  stloc.2
    IL_0057:  ldarg.0
    IL_0058:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_005d:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0062:  ldc.i4.1
    IL_0063:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGui>(bool)
    IL_0068:  ldloc.1
    IL_0069:  callvirt   instance class Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_006e:  callvirt   instance class Game.IInventory Game.ComponentMiner::get_Inventory()
    IL_0073:  ldloc.2
    IL_0074:  newobj     instance void Game.CraftingTableWidget::.ctor(class Game.IInventory,
                                                                       class Game.ComponentCraftingTable)
    IL_0079:  callvirt   instance void Game.SubsystemGui::set_ModalPanelWidget(class Game.Widget)
    IL_007e:  ldstr      "Audio/UI/ButtonClick"
    IL_0083:  ldc.r4     1.
    IL_0088:  ldc.r4     0.0
    IL_008d:  ldc.r4     0.0
    IL_0092:  call       void Game.AudioManager::PlaySound(string,
                                                           float32,
                                                           float32,
                                                           float32)
    IL_0097:  ldc.i4.1
    IL_0098:  ret

    IL_0099:  ldc.i4.0
    IL_009a:  ret
  } // end of method SubsystemCraftingTableBlockBehavior::OnInteract

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.SubsystemBlockBehavior::.ctor()
    IL_0006:  ret
  } // end of method SubsystemCraftingTableBlockBehavior::.ctor

  .property instance int32[] HandledBlocks()
  {
    .get instance int32[] Game.SubsystemCraftingTableBlockBehavior::get_HandledBlocks()
  } // end of property SubsystemCraftingTableBlockBehavior::HandledBlocks
} // end of class Game.SubsystemCraftingTableBlockBehavior