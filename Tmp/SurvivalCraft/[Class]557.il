.class public auto ansi beforefieldinit Game.SubsystemEggBlockBehavior
       extends [Survivalcraft]Game.SubsystemBlockBehavior
{
  .field private class [Survivalcraft]Game.EggBlock m_eggBlock
  .field private class [Survivalcraft]Game.Random m_random
  .field private class [Survivalcraft]Game.SubsystemCreatureSpawn m_subsystemCreatureSpawn
  .field private class [Survivalcraft]Game.SubsystemEntityFactory m_subsystemEntityFactory
  .field private class [Survivalcraft]Game.SubsystemGameInfo m_subsystemGameInfo
  .field private class [Survivalcraft]Game.SubsystemGui m_subsystemGui
  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       80 (0x50)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void [Survivalcraft]Game.SubsystemBlockBehavior::Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary)
    IL_0007:  ldarg.0
    IL_0008:  ldarg.0
    IL_0009:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_000e:  ldc.i4.1
    IL_000f:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class [Survivalcraft]Game.SubsystemGameInfo>(bool)
    IL_0014:  stfld      class [Survivalcraft]Game.SubsystemGameInfo Game.SubsystemEggBlockBehavior::m_subsystemGameInfo
    IL_0019:  ldarg.0
    IL_001a:  ldarg.0
    IL_001b:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0020:  ldc.i4.1
    IL_0021:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class [Survivalcraft]Game.SubsystemEntityFactory>(bool)
    IL_0026:  stfld      class [Survivalcraft]Game.SubsystemEntityFactory Game.SubsystemEggBlockBehavior::m_subsystemEntityFactory
    IL_002b:  ldarg.0
    IL_002c:  ldarg.0
    IL_002d:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0032:  ldc.i4.1
    IL_0033:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class [Survivalcraft]Game.SubsystemCreatureSpawn>(bool)
    IL_0038:  stfld      class [Survivalcraft]Game.SubsystemCreatureSpawn Game.SubsystemEggBlockBehavior::m_subsystemCreatureSpawn
    IL_003d:  ldarg.0
    IL_003e:  ldarg.0
    IL_003f:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0044:  ldc.i4.1
    IL_0045:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class [Survivalcraft]Game.SubsystemGui>(bool)
    IL_004a:  stfld      class [Survivalcraft]Game.SubsystemGui Game.SubsystemEggBlockBehavior::m_subsystemGui
    IL_004f:  ret
  } // end of method SubsystemEggBlockBehavior::Load

  .method public hidebysig virtual instance bool 
          OnHitAsProjectile(valuetype [System.Runtime]System.Nullable`1<valuetype [Survivalcraft]Game.CellFace> cellFace,
                            class [Survivalcraft]Game.ComponentBody componentBody,
                            class [Survivalcraft]Game.WorldItem worldItem) cil managed
  {
    // 代码大小       251 (0xfb)
    .maxstack  5
    .locals init (int32 V_0,
             bool V_1,
             class [Survivalcraft]Game.EggBlock/EggType V_2,
             class [EntitySystem]GameEntitySystem.Entity V_3)
    IL_0000:  ldarg.3
    IL_0001:  ldfld      int32 [Survivalcraft]Game.WorldItem::Value
    IL_0006:  call       int32 [Survivalcraft]Game.TerrainData::ExtractData(int32)
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  call       bool [Survivalcraft]Game.EggBlock::GetIsLaid(int32)
    IL_0012:  stloc.1
    IL_0013:  ldloc.0
    IL_0014:  call       bool [Survivalcraft]Game.EggBlock::GetIsCooked(int32)
    IL_0019:  brtrue     IL_00f9

    IL_001e:  ldarg.0
    IL_001f:  ldfld      class [Survivalcraft]Game.SubsystemGameInfo Game.SubsystemEggBlockBehavior::m_subsystemGameInfo
    IL_0024:  callvirt   instance class [Survivalcraft]Game.WorldInfo [Survivalcraft]Game.SubsystemGameInfo::get_WorldInfo()
    IL_0029:  ldfld      valuetype [Survivalcraft]Game.GameMode [Survivalcraft]Game.WorldInfo::GameMode
    IL_002e:  brfalse.s  IL_0059

    IL_0030:  ldarg.0
    IL_0031:  ldfld      class [Survivalcraft]Game.Random Game.SubsystemEggBlockBehavior::m_random
    IL_0036:  ldc.r4     0.0
    IL_003b:  ldc.r4     1.
    IL_0040:  callvirt   instance float32 [Survivalcraft]Game.Random::UniformFloat(float32,
                                                                                   float32)
    IL_0045:  ldloc.1
    IL_0046:  brtrue.s   IL_004f

    IL_0048:  ldc.r4     1.
    IL_004d:  br.s       IL_0054

    IL_004f:  ldc.r4     0.2
    IL_0054:  bgt.un     IL_00f9

    IL_0059:  ldarg.0
    IL_005a:  ldfld      class [Survivalcraft]Game.EggBlock Game.SubsystemEggBlockBehavior::m_eggBlock
    IL_005f:  ldloc.0
    IL_0060:  callvirt   instance class [Survivalcraft]Game.EggBlock/EggType [Survivalcraft]Game.EggBlock::GetEggType(int32)
    IL_0065:  stloc.2
    IL_0066:  ldarg.0
    IL_0067:  ldfld      class [Survivalcraft]Game.SubsystemEntityFactory Game.SubsystemEggBlockBehavior::m_subsystemEntityFactory
    IL_006c:  ldloc.2
    IL_006d:  ldfld      string [Survivalcraft]Game.EggBlock/EggType::TemplateName
    IL_0072:  ldc.i4.1
    IL_0073:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [Survivalcraft]Game.SubsystemEntityFactory::CreateEntity(string,
                                                                                                                                       bool)
    IL_0078:  stloc.3
    IL_0079:  ldloc.3
    IL_007a:  ldc.i4.1
    IL_007b:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class [Survivalcraft]Game.ComponentBody>(bool)
    IL_0080:  ldarg.3
    IL_0081:  ldfld      valuetype [Engine]Engine.Vector3 [Survivalcraft]Game.WorldItem::Position
    IL_0086:  callvirt   instance void [Survivalcraft]Game.ComponentFrame::set_Position(valuetype [Engine]Engine.Vector3)
    IL_008b:  ldloc.3
    IL_008c:  ldc.i4.1
    IL_008d:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class [Survivalcraft]Game.ComponentBody>(bool)
    IL_0092:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_0097:  ldarg.0
    IL_0098:  ldfld      class [Survivalcraft]Game.Random Game.SubsystemEggBlockBehavior::m_random
    IL_009d:  ldc.r4     0.0
    IL_00a2:  ldc.r4     6.283185
    IL_00a7:  callvirt   instance float32 [Survivalcraft]Game.Random::UniformFloat(float32,
                                                                                   float32)
    IL_00ac:  call       valuetype [Engine]Engine.Quaternion [Engine]Engine.Quaternion::CreateFromAxisAngle(valuetype [Engine]Engine.Vector3,
                                                                                                            float32)
    IL_00b1:  callvirt   instance void [Survivalcraft]Game.ComponentFrame::set_Rotation(valuetype [Engine]Engine.Quaternion)
    IL_00b6:  ldloc.3
    IL_00b7:  ldc.i4.1
    IL_00b8:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class [Survivalcraft]Game.ComponentSpawn>(bool)
    IL_00bd:  ldc.r4     0.25
    IL_00c2:  callvirt   instance void [Survivalcraft]Game.ComponentSpawn::set_SpawnDuration(float32)
    IL_00c7:  ldarg.0
    IL_00c8:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_00cd:  ldloc.3
    IL_00ce:  callvirt   instance void [EntitySystem]GameEntitySystem.Project::AddEntity(class [EntitySystem]GameEntitySystem.Entity)
    IL_00d3:  ldarg.0
    IL_00d4:  ldfld      class [Survivalcraft]Game.SubsystemCreatureSpawn Game.SubsystemEggBlockBehavior::m_subsystemCreatureSpawn
    IL_00d9:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<class [Survivalcraft]Game.ComponentCreature,bool> [Survivalcraft]Game.SubsystemCreatureSpawn::get_Creatures()
    IL_00de:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<class [Survivalcraft]Game.ComponentCreature,bool>::get_Count()
    IL_00e3:  ldc.i4.s   30
    IL_00e5:  ble.s      IL_00f9

    IL_00e7:  ldarg.0
    IL_00e8:  ldfld      class [Survivalcraft]Game.SubsystemGui Game.SubsystemEggBlockBehavior::m_subsystemGui
    IL_00ed:  ldstr      "Too many creatures. But you can still drop egg~"
    IL_00f2:  ldc.i4.1
    IL_00f3:  ldc.i4.0
    IL_00f4:  callvirt   instance void [Survivalcraft]Game.SubsystemGui::DisplaySmallMessage(string,
                                                                                             bool,
                                                                                             bool)
    IL_00f9:  ldc.i4.1
    IL_00fa:  ret
  } // end of method SubsystemEggBlockBehavior::OnHitAsProjectile

  .method public hidebysig specialname virtual 
          instance int32[]  get_HandledBlocks() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  newarr     [System.Runtime]System.Int32
    IL_0006:  ret
  } // end of method SubsystemEggBlockBehavior::get_HandledBlocks

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       37 (0x25)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       class [Survivalcraft]Game.Block[] [Survivalcraft]Game.BlocksManager::get_Blocks()
    IL_0006:  ldc.i4.s   118
    IL_0008:  ldelem.ref
    IL_0009:  castclass  [Survivalcraft]Game.EggBlock
    IL_000e:  stfld      class [Survivalcraft]Game.EggBlock Game.SubsystemEggBlockBehavior::m_eggBlock
    IL_0013:  ldarg.0
    IL_0014:  newobj     instance void [Survivalcraft]Game.Random::.ctor()
    IL_0019:  stfld      class [Survivalcraft]Game.Random Game.SubsystemEggBlockBehavior::m_random
    IL_001e:  ldarg.0
    IL_001f:  call       instance void [Survivalcraft]Game.SubsystemBlockBehavior::.ctor()
    IL_0024:  ret
  } // end of method SubsystemEggBlockBehavior::.ctor

  .property instance int32[] HandledBlocks()
  {
    .get instance int32[] Game.SubsystemEggBlockBehavior::get_HandledBlocks()
  } // end of property SubsystemEggBlockBehavior::HandledBlocks
} // end of class Game.SubsystemEggBlockBehavior
