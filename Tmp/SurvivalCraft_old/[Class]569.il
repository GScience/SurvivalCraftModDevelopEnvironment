.class public auto ansi beforefieldinit Game.SubsystemFurnaceBlockBehavior
       extends Game.SubsystemBlockBehavior
{
  .field private class Game.SubsystemParticles m_subsystemParticles
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.FireParticleSystem> m_particleSystemsByCell
  .method public hidebysig specialname virtual 
          instance int32[]  get_HandledBlocks() cil managed
  {
    // 代码大小       17 (0x11)
    .maxstack  8
    IL_0000:  ldc.i4.2
    IL_0001:  newarr     [System.Runtime]System.Int32
    IL_0006:  dup
    IL_0007:  ldc.i4.0
    IL_0008:  ldc.i4.s   64
    IL_000a:  stelem.i4
    IL_000b:  dup
    IL_000c:  ldc.i4.1
    IL_000d:  ldc.i4.s   65
    IL_000f:  stelem.i4
    IL_0010:  ret
  } // end of method SubsystemFurnaceBlockBehavior::get_HandledBlocks

  .method public hidebysig virtual instance void 
          OnBlockAdded(int32 'value',
                       int32 oldValue,
                       int32 x,
                       int32 y,
                       int32 z) cil managed
  {
    // 代码大小       182 (0xb6)
    .maxstack  5
    .locals init (class [EntitySystem]TemplatesDatabase.DatabaseObject V_0,
             class [EntitySystem]TemplatesDatabase.ValuesDictionary V_1,
             class [EntitySystem]GameEntitySystem.Entity V_2)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0006:  ldc.i4.s   64
    IL_0008:  beq        IL_009f

    IL_000d:  ldarg.2
    IL_000e:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0013:  ldc.i4.s   65
    IL_0015:  beq        IL_009f

    IL_001a:  ldarg.0
    IL_001b:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0020:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0025:  callvirt   instance class [EntitySystem]GameEntitySystem.GameDatabase [EntitySystem]GameEntitySystem.Project::get_GameDatabase()
    IL_002a:  callvirt   instance class [EntitySystem]TemplatesDatabase.Database [EntitySystem]GameEntitySystem.GameDatabase::get_Database()
    IL_002f:  ldstr      "Furnace"
    IL_0034:  ldarg.0
    IL_0035:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_003a:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_003f:  callvirt   instance class [EntitySystem]GameEntitySystem.GameDatabase [EntitySystem]GameEntitySystem.Project::get_GameDatabase()
    IL_0044:  callvirt   instance class [EntitySystem]TemplatesDatabase.DatabaseObjectType [EntitySystem]GameEntitySystem.GameDatabase::get_EntityTemplateType()
    IL_0049:  ldc.i4.1
    IL_004a:  callvirt   instance class [EntitySystem]TemplatesDatabase.DatabaseObject [EntitySystem]TemplatesDatabase.Database::FindDatabaseObject(string,
                                                                                                                                                    class [EntitySystem]TemplatesDatabase.DatabaseObjectType,
                                                                                                                                                    bool)
    IL_004f:  stloc.0
    IL_0050:  newobj     instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::.ctor()
    IL_0055:  stloc.1
    IL_0056:  ldloc.1
    IL_0057:  ldloc.0
    IL_0058:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::PopulateFromDatabaseObject(class [EntitySystem]TemplatesDatabase.DatabaseObject)
    IL_005d:  ldloc.1
    IL_005e:  ldstr      "BlockEntity"
    IL_0063:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<class [EntitySystem]TemplatesDatabase.ValuesDictionary>(string)
    IL_0068:  ldstr      "Coordinates"
    IL_006d:  ldarg.3
    IL_006e:  ldarg.s    y
    IL_0070:  ldarg.s    z
    IL_0072:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0077:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<valuetype [Engine]Engine.Point3>(string,
                                                                                                                                   !!0)
    IL_007c:  ldarg.0
    IL_007d:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0082:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0087:  ldloc.1
    IL_0088:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Project::CreateEntity(class [EntitySystem]TemplatesDatabase.ValuesDictionary)
    IL_008d:  stloc.2
    IL_008e:  ldarg.0
    IL_008f:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0094:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0099:  ldloc.2
    IL_009a:  callvirt   instance void [EntitySystem]GameEntitySystem.Project::AddEntity(class [EntitySystem]GameEntitySystem.Entity)
    IL_009f:  ldarg.1
    IL_00a0:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_00a5:  ldc.i4.s   65
    IL_00a7:  bne.un.s   IL_00b5

    IL_00a9:  ldarg.0
    IL_00aa:  ldarg.1
    IL_00ab:  ldarg.3
    IL_00ac:  ldarg.s    y
    IL_00ae:  ldarg.s    z
    IL_00b0:  call       instance void Game.SubsystemFurnaceBlockBehavior::AddFire(int32,
                                                                                   int32,
                                                                                   int32,
                                                                                   int32)
    IL_00b5:  ret
  } // end of method SubsystemFurnaceBlockBehavior::OnBlockAdded

  .method public hidebysig virtual instance void 
          OnBlockRemoved(int32 'value',
                         int32 newValue,
                         int32 x,
                         int32 y,
                         int32 z) cil managed
  {
    // 代码大小       190 (0xbe)
    .maxstack  4
    .locals init (class Game.ComponentBlockEntity V_0,
             valuetype [Engine]Engine.Vector3 V_1,
             valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.IInventory> V_2,
             valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerable`1<class Game.IInventory> V_3)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0006:  ldc.i4.s   64
    IL_0008:  beq        IL_00a8

    IL_000d:  ldarg.2
    IL_000e:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0013:  ldc.i4.s   65
    IL_0015:  beq        IL_00a8

    IL_001a:  ldarg.0
    IL_001b:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0020:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0025:  ldc.i4.1
    IL_0026:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemBlockEntities>(bool)
    IL_002b:  ldarg.3
    IL_002c:  ldarg.s    y
    IL_002e:  ldarg.s    z
    IL_0030:  callvirt   instance class Game.ComponentBlockEntity Game.SubsystemBlockEntities::GetBlockEntity(int32,
                                                                                                              int32,
                                                                                                              int32)
    IL_0035:  stloc.0
    IL_0036:  ldloc.0
    IL_0037:  brfalse.s  IL_00a8

    IL_0039:  ldarg.3
    IL_003a:  conv.r4
    IL_003b:  ldarg.s    y
    IL_003d:  conv.r4
    IL_003e:  ldarg.s    z
    IL_0040:  conv.r4
    IL_0041:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0046:  ldc.r4     0.5
    IL_004b:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32)
    IL_0050:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0055:  stloc.1
    IL_0056:  ldloc.0
    IL_0057:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_005c:  callvirt   instance valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerable`1<!!0> [EntitySystem]GameEntitySystem.Entity::FindComponents<class Game.IInventory>()
    IL_0061:  stloc.3
    IL_0062:  ldloca.s   V_3
    IL_0064:  call       instance valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<!0> valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerable`1<class Game.IInventory>::GetEnumerator()
    IL_0069:  stloc.2
    .try
    {
      IL_006a:  br.s       IL_0079

      IL_006c:  ldloca.s   V_2
      IL_006e:  call       instance !0 valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.IInventory>::get_Current()
      IL_0073:  ldloc.1
      IL_0074:  callvirt   instance void Game.IInventory::DropAllItems(valuetype [Engine]Engine.Vector3)
      IL_0079:  ldloca.s   V_2
      IL_007b:  call       instance bool valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.IInventory>::MoveNext()
      IL_0080:  brtrue.s   IL_006c

      IL_0082:  leave.s    IL_0092

    }  // end .try
    finally
    {
      IL_0084:  ldloca.s   V_2
      IL_0086:  constrained. valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.IInventory>
      IL_008c:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0091:  endfinally
    }  // end handler
    IL_0092:  ldarg.0
    IL_0093:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0098:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_009d:  ldloc.0
    IL_009e:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_00a3:  callvirt   instance void [EntitySystem]GameEntitySystem.Project::RemoveEntity(class [EntitySystem]GameEntitySystem.Entity)
    IL_00a8:  ldarg.1
    IL_00a9:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_00ae:  ldc.i4.s   65
    IL_00b0:  bne.un.s   IL_00bd

    IL_00b2:  ldarg.0
    IL_00b3:  ldarg.3
    IL_00b4:  ldarg.s    y
    IL_00b6:  ldarg.s    z
    IL_00b8:  call       instance void Game.SubsystemFurnaceBlockBehavior::RemoveFire(int32,
                                                                                      int32,
                                                                                      int32)
    IL_00bd:  ret
  } // end of method SubsystemFurnaceBlockBehavior::OnBlockRemoved

  .method public hidebysig virtual instance void 
          OnBlockGenerated(int32 'value',
                           int32 x,
                           int32 y,
                           int32 z,
                           bool isLoaded) cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0006:  ldc.i4.s   65
    IL_0008:  bne.un.s   IL_0015

    IL_000a:  ldarg.0
    IL_000b:  ldarg.1
    IL_000c:  ldarg.2
    IL_000d:  ldarg.3
    IL_000e:  ldarg.s    z
    IL_0010:  call       instance void Game.SubsystemFurnaceBlockBehavior::AddFire(int32,
                                                                                   int32,
                                                                                   int32,
                                                                                   int32)
    IL_0015:  ret
  } // end of method SubsystemFurnaceBlockBehavior::OnBlockGenerated

  .method public hidebysig virtual instance void 
          OnChunkDiscarding(class Game.TerrainChunk chunk) cil managed
  {
    // 代码大小       218 (0xda)
    .maxstack  4
    .locals init (class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Point3> V_0,
             valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<valuetype [Engine]Engine.Point3,class Game.FireParticleSystem> V_1,
             valuetype [Engine]Engine.Point3 V_2,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype [Engine]Engine.Point3> V_3,
             valuetype [Engine]Engine.Point3 V_4)
    IL_0000:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Point3>::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.FireParticleSystem> Game.SubsystemFurnaceBlockBehavior::m_particleSystemsByCell
    IL_000c:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.FireParticleSystem>::get_Keys()
    IL_0011:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<valuetype [Engine]Engine.Point3,class Game.FireParticleSystem>::GetEnumerator()
    IL_0016:  stloc.1
    .try
    {
      IL_0017:  br.s       IL_007a

      IL_0019:  ldloca.s   V_1
      IL_001b:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<valuetype [Engine]Engine.Point3,class Game.FireParticleSystem>::get_Current()
      IL_0020:  stloc.2
      IL_0021:  ldloc.2
      IL_0022:  ldfld      int32 [Engine]Engine.Point3::X
      IL_0027:  ldarg.1
      IL_0028:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
      IL_002d:  ldfld      int32 [Engine]Engine.Point2::X
      IL_0032:  blt.s      IL_007a

      IL_0034:  ldloc.2
      IL_0035:  ldfld      int32 [Engine]Engine.Point3::X
      IL_003a:  ldarg.1
      IL_003b:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
      IL_0040:  ldfld      int32 [Engine]Engine.Point2::X
      IL_0045:  ldc.i4.s   16
      IL_0047:  add
      IL_0048:  bge.s      IL_007a

      IL_004a:  ldloc.2
      IL_004b:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_0050:  ldarg.1
      IL_0051:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
      IL_0056:  ldfld      int32 [Engine]Engine.Point2::Y
      IL_005b:  blt.s      IL_007a

      IL_005d:  ldloc.2
      IL_005e:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_0063:  ldarg.1
      IL_0064:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
      IL_0069:  ldfld      int32 [Engine]Engine.Point2::Y
      IL_006e:  ldc.i4.s   16
      IL_0070:  add
      IL_0071:  bge.s      IL_007a

      IL_0073:  ldloc.0
      IL_0074:  ldloc.2
      IL_0075:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Point3>::Add(!0)
      IL_007a:  ldloca.s   V_1
      IL_007c:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<valuetype [Engine]Engine.Point3,class Game.FireParticleSystem>::MoveNext()
      IL_0081:  brtrue.s   IL_0019

      IL_0083:  leave.s    IL_0093

    }  // end .try
    finally
    {
      IL_0085:  ldloca.s   V_1
      IL_0087:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<valuetype [Engine]Engine.Point3,class Game.FireParticleSystem>
      IL_008d:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0092:  endfinally
    }  // end handler
    IL_0093:  ldloc.0
    IL_0094:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Point3>::GetEnumerator()
    IL_0099:  stloc.3
    .try
    {
      IL_009a:  br.s       IL_00c0

      IL_009c:  ldloca.s   V_3
      IL_009e:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype [Engine]Engine.Point3>::get_Current()
      IL_00a3:  stloc.s    V_4
      IL_00a5:  ldarg.0
      IL_00a6:  ldloc.s    V_4
      IL_00a8:  ldfld      int32 [Engine]Engine.Point3::X
      IL_00ad:  ldloc.s    V_4
      IL_00af:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_00b4:  ldloc.s    V_4
      IL_00b6:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_00bb:  call       instance void Game.SubsystemFurnaceBlockBehavior::RemoveFire(int32,
                                                                                        int32,
                                                                                        int32)
      IL_00c0:  ldloca.s   V_3
      IL_00c2:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype [Engine]Engine.Point3>::MoveNext()
      IL_00c7:  brtrue.s   IL_009c

      IL_00c9:  leave.s    IL_00d9

    }  // end .try
    finally
    {
      IL_00cb:  ldloca.s   V_3
      IL_00cd:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype [Engine]Engine.Point3>
      IL_00d3:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00d8:  endfinally
    }  // end handler
    IL_00d9:  ret
  } // end of method SubsystemFurnaceBlockBehavior::OnChunkDiscarding

  .method public hidebysig virtual instance bool 
          OnInteract(valuetype Game.TerrainRaycastResult raycastResult,
                     class Game.ComponentMiner componentMiner) cil managed
  {
    // 代码大小       155 (0x9b)
    .maxstack  4
    .locals init (class Game.ComponentBlockEntity V_0,
             class Game.ComponentPlayer V_1,
             class Game.ComponentFurnace V_2)
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
    IL_0051:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentFurnace>(bool)
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
    IL_0074:  newobj     instance void Game.FurnaceWidget::.ctor(class Game.IInventory,
                                                                 class Game.ComponentFurnace)
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
  } // end of method SubsystemFurnaceBlockBehavior::OnInteract

  .method public hidebysig virtual instance void 
          OnNeighborBlockChanged(int32 x,
                                 int32 y,
                                 int32 z,
                                 int32 neighborX,
                                 int32 neighborY,
                                 int32 neighborZ) cil managed
  {
    // 代码大小       16 (0x10)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  ldarg.3
    IL_0004:  ldarg.s    neighborX
    IL_0006:  ldarg.s    neighborY
    IL_0008:  ldarg.s    neighborZ
    IL_000a:  call       instance void Game.SubsystemBlockBehavior::OnNeighborBlockChanged(int32,
                                                                                           int32,
                                                                                           int32,
                                                                                           int32,
                                                                                           int32,
                                                                                           int32)
    IL_000f:  ret
  } // end of method SubsystemFurnaceBlockBehavior::OnNeighborBlockChanged

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
    IL_000f:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemParticles>(bool)
    IL_0014:  stfld      class Game.SubsystemParticles Game.SubsystemFurnaceBlockBehavior::m_subsystemParticles
    IL_0019:  ret
  } // end of method SubsystemFurnaceBlockBehavior::Load

  .method private hidebysig instance void 
          AddFire(int32 'value',
                  int32 x,
                  int32 y,
                  int32 z) cil managed
  {
    // 代码大小       92 (0x5c)
    .maxstack  4
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             float32 V_1,
             class Game.FireParticleSystem V_2)
    IL_0000:  ldloca.s   V_0
    IL_0002:  ldc.r4     0.5
    IL_0007:  ldc.r4     0.2
    IL_000c:  ldc.r4     0.5
    IL_0011:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0016:  ldc.r4     0.15000001
    IL_001b:  stloc.1
    IL_001c:  ldarg.2
    IL_001d:  conv.r4
    IL_001e:  ldarg.3
    IL_001f:  conv.r4
    IL_0020:  ldarg.s    z
    IL_0022:  conv.r4
    IL_0023:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0028:  ldloc.0
    IL_0029:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_002e:  ldloc.1
    IL_002f:  ldc.r4     16.
    IL_0034:  newobj     instance void Game.FireParticleSystem::.ctor(valuetype [Engine]Engine.Vector3,
                                                                      float32,
                                                                      float32)
    IL_0039:  stloc.2
    IL_003a:  ldarg.0
    IL_003b:  ldfld      class Game.SubsystemParticles Game.SubsystemFurnaceBlockBehavior::m_subsystemParticles
    IL_0040:  ldloc.2
    IL_0041:  callvirt   instance void Game.SubsystemParticles::AddParticleSystem(class Game.ParticleSystemBase)
    IL_0046:  ldarg.0
    IL_0047:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.FireParticleSystem> Game.SubsystemFurnaceBlockBehavior::m_particleSystemsByCell
    IL_004c:  ldarg.2
    IL_004d:  ldarg.3
    IL_004e:  ldarg.s    z
    IL_0050:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0055:  ldloc.2
    IL_0056:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.FireParticleSystem>::set_Item(!0,
                                                                                                                                                                                  !1)
    IL_005b:  ret
  } // end of method SubsystemFurnaceBlockBehavior::AddFire

  .method private hidebysig instance void 
          RemoveFire(int32 x,
                     int32 y,
                     int32 z) cil managed
  {
    // 代码大小       49 (0x31)
    .maxstack  4
    .locals init (valuetype [Engine]Engine.Point3 V_0,
             class Game.FireParticleSystem V_1)
    IL_0000:  ldloca.s   V_0
    IL_0002:  ldarg.1
    IL_0003:  ldarg.2
    IL_0004:  ldarg.3
    IL_0005:  call       instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_000a:  ldarg.0
    IL_000b:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.FireParticleSystem> Game.SubsystemFurnaceBlockBehavior::m_particleSystemsByCell
    IL_0010:  ldloc.0
    IL_0011:  callvirt   instance !1 class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.FireParticleSystem>::get_Item(!0)
    IL_0016:  stloc.1
    IL_0017:  ldarg.0
    IL_0018:  ldfld      class Game.SubsystemParticles Game.SubsystemFurnaceBlockBehavior::m_subsystemParticles
    IL_001d:  ldloc.1
    IL_001e:  callvirt   instance void Game.SubsystemParticles::RemoveParticleSystem(class Game.ParticleSystemBase)
    IL_0023:  ldarg.0
    IL_0024:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.FireParticleSystem> Game.SubsystemFurnaceBlockBehavior::m_particleSystemsByCell
    IL_0029:  ldloc.0
    IL_002a:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.FireParticleSystem>::Remove(!0)
    IL_002f:  pop
    IL_0030:  ret
  } // end of method SubsystemFurnaceBlockBehavior::RemoveFire

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.FireParticleSystem>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.FireParticleSystem> Game.SubsystemFurnaceBlockBehavior::m_particleSystemsByCell
    IL_000b:  ldarg.0
    IL_000c:  call       instance void Game.SubsystemBlockBehavior::.ctor()
    IL_0011:  ret
  } // end of method SubsystemFurnaceBlockBehavior::.ctor

  .property instance int32[] HandledBlocks()
  {
    .get instance int32[] Game.SubsystemFurnaceBlockBehavior::get_HandledBlocks()
  } // end of property SubsystemFurnaceBlockBehavior::HandledBlocks
} // end of class Game.SubsystemFurnaceBlockBehavior