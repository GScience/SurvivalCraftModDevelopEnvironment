.class public auto ansi beforefieldinit Game.SubsystemDispenserBlockBehavior
       extends Game.SubsystemBlockBehavior
{
  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.SubsystemBlockEntities m_subsystemBlockEntities
  .field private class Game.SubsystemGameInfo m_subsystemGameInfo
  .field private class Game.SubsystemAudio m_subsystemAudio
  .method public hidebysig specialname virtual 
          instance int32[]  get_HandledBlocks() cil managed
  {
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  ldc.i4.1
    IL_0001:  newarr     [System.Runtime]System.Int32
    IL_0006:  dup
    IL_0007:  ldc.i4.0
    IL_0008:  ldc.i4     0xd8
    IL_000d:  stelem.i4
    IL_000e:  ret
  } // end of method SubsystemDispenserBlockBehavior::get_HandledBlocks

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       80 (0x50)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void Game.SubsystemBlockBehavior::Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary)
    IL_0007:  ldarg.0
    IL_0008:  ldarg.0
    IL_0009:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_000e:  ldc.i4.1
    IL_000f:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_0014:  stfld      class Game.SubsystemTerrain Game.SubsystemDispenserBlockBehavior::m_subsystemTerrain
    IL_0019:  ldarg.0
    IL_001a:  ldarg.0
    IL_001b:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0020:  ldc.i4.1
    IL_0021:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemBlockEntities>(bool)
    IL_0026:  stfld      class Game.SubsystemBlockEntities Game.SubsystemDispenserBlockBehavior::m_subsystemBlockEntities
    IL_002b:  ldarg.0
    IL_002c:  ldarg.0
    IL_002d:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0032:  ldc.i4.1
    IL_0033:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGameInfo>(bool)
    IL_0038:  stfld      class Game.SubsystemGameInfo Game.SubsystemDispenserBlockBehavior::m_subsystemGameInfo
    IL_003d:  ldarg.0
    IL_003e:  ldarg.0
    IL_003f:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0044:  ldc.i4.1
    IL_0045:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemAudio>(bool)
    IL_004a:  stfld      class Game.SubsystemAudio Game.SubsystemDispenserBlockBehavior::m_subsystemAudio
    IL_004f:  ret
  } // end of method SubsystemDispenserBlockBehavior::Load

  .method public hidebysig virtual instance void 
          OnBlockAdded(int32 'value',
                       int32 oldValue,
                       int32 x,
                       int32 y,
                       int32 z) cil managed
  {
    // 代码大小       114 (0x72)
    .maxstack  5
    .locals init (class [EntitySystem]TemplatesDatabase.DatabaseObject V_0,
             class [EntitySystem]TemplatesDatabase.ValuesDictionary V_1,
             class [EntitySystem]GameEntitySystem.Entity V_2)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0006:  callvirt   instance class [EntitySystem]GameEntitySystem.GameDatabase [EntitySystem]GameEntitySystem.Project::get_GameDatabase()
    IL_000b:  callvirt   instance class [EntitySystem]TemplatesDatabase.Database [EntitySystem]GameEntitySystem.GameDatabase::get_Database()
    IL_0010:  ldstr      "Dispenser"
    IL_0015:  ldarg.0
    IL_0016:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_001b:  callvirt   instance class [EntitySystem]GameEntitySystem.GameDatabase [EntitySystem]GameEntitySystem.Project::get_GameDatabase()
    IL_0020:  callvirt   instance class [EntitySystem]TemplatesDatabase.DatabaseObjectType [EntitySystem]GameEntitySystem.GameDatabase::get_EntityTemplateType()
    IL_0025:  ldc.i4.1
    IL_0026:  callvirt   instance class [EntitySystem]TemplatesDatabase.DatabaseObject [EntitySystem]TemplatesDatabase.Database::FindDatabaseObject(string,
                                                                                                                                                    class [EntitySystem]TemplatesDatabase.DatabaseObjectType,
                                                                                                                                                    bool)
    IL_002b:  stloc.0
    IL_002c:  newobj     instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::.ctor()
    IL_0031:  stloc.1
    IL_0032:  ldloc.1
    IL_0033:  ldloc.0
    IL_0034:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::PopulateFromDatabaseObject(class [EntitySystem]TemplatesDatabase.DatabaseObject)
    IL_0039:  ldloc.1
    IL_003a:  ldstr      "BlockEntity"
    IL_003f:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<class [EntitySystem]TemplatesDatabase.ValuesDictionary>(string)
    IL_0044:  ldstr      "Coordinates"
    IL_0049:  ldarg.3
    IL_004a:  ldarg.s    y
    IL_004c:  ldarg.s    z
    IL_004e:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0053:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<valuetype [Engine]Engine.Point3>(string,
                                                                                                                                   !!0)
    IL_0058:  ldarg.0
    IL_0059:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_005e:  ldloc.1
    IL_005f:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Project::CreateEntity(class [EntitySystem]TemplatesDatabase.ValuesDictionary)
    IL_0064:  stloc.2
    IL_0065:  ldarg.0
    IL_0066:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_006b:  ldloc.2
    IL_006c:  callvirt   instance void [EntitySystem]GameEntitySystem.Project::AddEntity(class [EntitySystem]GameEntitySystem.Entity)
    IL_0071:  ret
  } // end of method SubsystemDispenserBlockBehavior::OnBlockAdded

  .method public hidebysig virtual instance void 
          OnBlockRemoved(int32 'value',
                         int32 newValue,
                         int32 x,
                         int32 y,
                         int32 z) cil managed
  {
    // 代码大小       128 (0x80)
    .maxstack  4
    .locals init (class Game.ComponentBlockEntity V_0,
             valuetype [Engine]Engine.Vector3 V_1,
             valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.IInventory> V_2,
             valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerable`1<class Game.IInventory> V_3)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemBlockEntities Game.SubsystemDispenserBlockBehavior::m_subsystemBlockEntities
    IL_0006:  ldarg.3
    IL_0007:  ldarg.s    y
    IL_0009:  ldarg.s    z
    IL_000b:  callvirt   instance class Game.ComponentBlockEntity Game.SubsystemBlockEntities::GetBlockEntity(int32,
                                                                                                              int32,
                                                                                                              int32)
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  brfalse.s  IL_007f

    IL_0014:  ldarg.3
    IL_0015:  conv.r4
    IL_0016:  ldarg.s    y
    IL_0018:  conv.r4
    IL_0019:  ldarg.s    z
    IL_001b:  conv.r4
    IL_001c:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0021:  ldc.r4     0.5
    IL_0026:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32)
    IL_002b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0030:  stloc.1
    IL_0031:  ldloc.0
    IL_0032:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0037:  callvirt   instance valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerable`1<!!0> [EntitySystem]GameEntitySystem.Entity::FindComponents<class Game.IInventory>()
    IL_003c:  stloc.3
    IL_003d:  ldloca.s   V_3
    IL_003f:  call       instance valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<!0> valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerable`1<class Game.IInventory>::GetEnumerator()
    IL_0044:  stloc.2
    .try
    {
      IL_0045:  br.s       IL_0054

      IL_0047:  ldloca.s   V_2
      IL_0049:  call       instance !0 valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.IInventory>::get_Current()
      IL_004e:  ldloc.1
      IL_004f:  callvirt   instance void Game.IInventory::DropAllItems(valuetype [Engine]Engine.Vector3)
      IL_0054:  ldloca.s   V_2
      IL_0056:  call       instance bool valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.IInventory>::MoveNext()
      IL_005b:  brtrue.s   IL_0047

      IL_005d:  leave.s    IL_006d

    }  // end .try
    finally
    {
      IL_005f:  ldloca.s   V_2
      IL_0061:  constrained. valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.IInventory>
      IL_0067:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_006c:  endfinally
    }  // end handler
    IL_006d:  ldarg.0
    IL_006e:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0073:  ldloc.0
    IL_0074:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0079:  ldc.i4.1
    IL_007a:  callvirt   instance void [EntitySystem]GameEntitySystem.Project::RemoveEntity(class [EntitySystem]GameEntitySystem.Entity,
                                                                                            bool)
    IL_007f:  ret
  } // end of method SubsystemDispenserBlockBehavior::OnBlockRemoved

  .method public hidebysig virtual instance bool 
          OnInteract(valuetype Game.TerrainRaycastResult raycastResult,
                     class Game.ComponentMiner componentMiner) cil managed
  {
    // 代码大小       145 (0x91)
    .maxstack  4
    .locals init (class Game.ComponentBlockEntity V_0,
             class Game.ComponentDispenser V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemGameInfo Game.SubsystemDispenserBlockBehavior::m_subsystemGameInfo
    IL_0006:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_000b:  ldfld      valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_0010:  ldc.i4.4
    IL_0011:  beq.s      IL_008f

    IL_0013:  ldarg.0
    IL_0014:  ldfld      class Game.SubsystemBlockEntities Game.SubsystemDispenserBlockBehavior::m_subsystemBlockEntities
    IL_0019:  ldarg.1
    IL_001a:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_001f:  ldfld      int32 Game.CellFace::X
    IL_0024:  ldarg.1
    IL_0025:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_002a:  ldfld      int32 Game.CellFace::Y
    IL_002f:  ldarg.1
    IL_0030:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0035:  ldfld      int32 Game.CellFace::Z
    IL_003a:  callvirt   instance class Game.ComponentBlockEntity Game.SubsystemBlockEntities::GetBlockEntity(int32,
                                                                                                              int32,
                                                                                                              int32)
    IL_003f:  stloc.0
    IL_0040:  ldloc.0
    IL_0041:  brfalse.s  IL_008f

    IL_0043:  ldarg.2
    IL_0044:  callvirt   instance class Game.ComponentPlayer Game.ComponentMiner::get_ComponentPlayer()
    IL_0049:  brfalse.s  IL_008f

    IL_004b:  ldloc.0
    IL_004c:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0051:  ldc.i4.1
    IL_0052:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentDispenser>(bool)
    IL_0057:  stloc.1
    IL_0058:  ldarg.2
    IL_0059:  callvirt   instance class Game.ComponentPlayer Game.ComponentMiner::get_ComponentPlayer()
    IL_005e:  callvirt   instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_0063:  ldarg.2
    IL_0064:  callvirt   instance class Game.IInventory Game.ComponentMiner::get_Inventory()
    IL_0069:  ldloc.1
    IL_006a:  newobj     instance void Game.DispenserWidget::.ctor(class Game.IInventory,
                                                                   class Game.ComponentDispenser)
    IL_006f:  callvirt   instance void Game.ComponentGui::set_ModalPanelWidget(class Game.Widget)
    IL_0074:  ldstr      "Audio/UI/ButtonClick"
    IL_0079:  ldc.r4     1.
    IL_007e:  ldc.r4     0.0
    IL_0083:  ldc.r4     0.0
    IL_0088:  call       void Game.AudioManager::PlaySound(string,
                                                           float32,
                                                           float32,
                                                           float32)
    IL_008d:  ldc.i4.1
    IL_008e:  ret

    IL_008f:  ldc.i4.0
    IL_0090:  ret
  } // end of method SubsystemDispenserBlockBehavior::OnInteract

  .method public hidebysig virtual instance void 
          OnHitByProjectile(valuetype Game.CellFace cellFace,
                            class Game.WorldItem worldItem) cil managed
  {
    // 代码大小       203 (0xcb)
    .maxstack  7
    .locals init (class Game.ComponentBlockEntity V_0,
             class Game.Pickable V_1,
             int32 V_2,
             int32 V_3)
    IL_0000:  ldarg.2
    IL_0001:  ldfld      bool Game.WorldItem::ToRemove
    IL_0006:  brtrue     IL_00ca

    IL_000b:  ldarg.0
    IL_000c:  ldfld      class Game.SubsystemBlockEntities Game.SubsystemDispenserBlockBehavior::m_subsystemBlockEntities
    IL_0011:  ldarg.1
    IL_0012:  ldfld      int32 Game.CellFace::X
    IL_0017:  ldarg.1
    IL_0018:  ldfld      int32 Game.CellFace::Y
    IL_001d:  ldarg.1
    IL_001e:  ldfld      int32 Game.CellFace::Z
    IL_0023:  callvirt   instance class Game.ComponentBlockEntity Game.SubsystemBlockEntities::GetBlockEntity(int32,
                                                                                                              int32,
                                                                                                              int32)
    IL_0028:  stloc.0
    IL_0029:  ldloc.0
    IL_002a:  brfalse    IL_00ca

    IL_002f:  ldarg.0
    IL_0030:  ldfld      class Game.SubsystemTerrain Game.SubsystemDispenserBlockBehavior::m_subsystemTerrain
    IL_0035:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_003a:  ldarg.1
    IL_003b:  ldfld      int32 Game.CellFace::X
    IL_0040:  ldarg.1
    IL_0041:  ldfld      int32 Game.CellFace::Y
    IL_0046:  ldarg.1
    IL_0047:  ldfld      int32 Game.CellFace::Z
    IL_004c:  callvirt   instance int32 Game.Terrain::GetCellValue(int32,
                                                                   int32,
                                                                   int32)
    IL_0051:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0056:  call       bool Game.DispenserBlock::GetAcceptsDrops(int32)
    IL_005b:  brfalse.s  IL_00ca

    IL_005d:  ldloc.0
    IL_005e:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0063:  ldc.i4.1
    IL_0064:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentDispenser>(bool)
    IL_0069:  ldarg.2
    IL_006a:  isinst     Game.Pickable
    IL_006f:  stloc.1
    IL_0070:  ldloc.1
    IL_0071:  brtrue.s   IL_0076

    IL_0073:  ldc.i4.1
    IL_0074:  br.s       IL_007c

    IL_0076:  ldloc.1
    IL_0077:  ldfld      int32 Game.Pickable::Count
    IL_007c:  stloc.2
    IL_007d:  ldarg.2
    IL_007e:  ldfld      int32 Game.WorldItem::Value
    IL_0083:  ldloc.2
    IL_0084:  call       int32 Game.ComponentInventoryBase::AcquireItems(class Game.IInventory,
                                                                         int32,
                                                                         int32)
    IL_0089:  stloc.3
    IL_008a:  ldloc.3
    IL_008b:  ldloc.2
    IL_008c:  bge.s      IL_00b4

    IL_008e:  ldarg.0
    IL_008f:  ldfld      class Game.SubsystemAudio Game.SubsystemDispenserBlockBehavior::m_subsystemAudio
    IL_0094:  ldstr      "Audio/PickableCollected"
    IL_0099:  ldc.r4     1.
    IL_009e:  ldc.r4     0.0
    IL_00a3:  ldarg.2
    IL_00a4:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
    IL_00a9:  ldc.r4     3.
    IL_00ae:  ldc.i4.1
    IL_00af:  callvirt   instance void Game.SubsystemAudio::PlaySound(string,
                                                                      float32,
                                                                      float32,
                                                                      valuetype [Engine]Engine.Vector3,
                                                                      float32,
                                                                      bool)
    IL_00b4:  ldloc.3
    IL_00b5:  ldc.i4.0
    IL_00b6:  bgt.s      IL_00c0

    IL_00b8:  ldarg.2
    IL_00b9:  ldc.i4.1
    IL_00ba:  stfld      bool Game.WorldItem::ToRemove
    IL_00bf:  ret

    IL_00c0:  ldloc.1
    IL_00c1:  brfalse.s  IL_00ca

    IL_00c3:  ldloc.1
    IL_00c4:  ldloc.3
    IL_00c5:  stfld      int32 Game.Pickable::Count
    IL_00ca:  ret
  } // end of method SubsystemDispenserBlockBehavior::OnHitByProjectile

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.SubsystemBlockBehavior::.ctor()
    IL_0006:  ret
  } // end of method SubsystemDispenserBlockBehavior::.ctor

  .property instance int32[] HandledBlocks()
  {
    .get instance int32[] Game.SubsystemDispenserBlockBehavior::get_HandledBlocks()
  } // end of property SubsystemDispenserBlockBehavior::HandledBlocks
} // end of class Game.SubsystemDispenserBlockBehavior