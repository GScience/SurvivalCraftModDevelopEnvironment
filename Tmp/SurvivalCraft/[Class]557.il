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
    // 代码大小       82 (0x52)
    .maxstack  3
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  call       instance void [Survivalcraft]Game.SubsystemBlockBehavior::Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary)
    IL_0008:  nop
    IL_0009:  ldarg.0
    IL_000a:  ldarg.0
    IL_000b:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0010:  ldc.i4.1
    IL_0011:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class [Survivalcraft]Game.SubsystemGameInfo>(bool)
    IL_0016:  stfld      class [Survivalcraft]Game.SubsystemGameInfo Game.SubsystemEggBlockBehavior::m_subsystemGameInfo
    IL_001b:  ldarg.0
    IL_001c:  ldarg.0
    IL_001d:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0022:  ldc.i4.1
    IL_0023:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class [Survivalcraft]Game.SubsystemEntityFactory>(bool)
    IL_0028:  stfld      class [Survivalcraft]Game.SubsystemEntityFactory Game.SubsystemEggBlockBehavior::m_subsystemEntityFactory
    IL_002d:  ldarg.0
    IL_002e:  ldarg.0
    IL_002f:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0034:  ldc.i4.1
    IL_0035:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class [Survivalcraft]Game.SubsystemCreatureSpawn>(bool)
    IL_003a:  stfld      class [Survivalcraft]Game.SubsystemCreatureSpawn Game.SubsystemEggBlockBehavior::m_subsystemCreatureSpawn
    IL_003f:  ldarg.0
    IL_0040:  ldarg.0
    IL_0041:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0046:  ldc.i4.1
    IL_0047:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class [Survivalcraft]Game.SubsystemGui>(bool)
    IL_004c:  stfld      class [Survivalcraft]Game.SubsystemGui Game.SubsystemEggBlockBehavior::m_subsystemGui
    IL_0051:  ret
  } // end of method SubsystemEggBlockBehavior::Load

  .method public hidebysig virtual instance bool 
          OnHitAsProjectile(valuetype [System.Runtime]System.Nullable`1<valuetype [Survivalcraft]Game.CellFace> cellFace,
                            class [Survivalcraft]Game.ComponentBody componentBody,
                            class [Survivalcraft]Game.WorldItem worldItem) cil managed
  {
    // 代码大小       241 (0xf1)
    .maxstack  5
    .locals init (int32 V_0,
             bool V_1,
             bool V_2,
             class [Survivalcraft]Game.EggBlock/EggType V_3,
             class [EntitySystem]GameEntitySystem.Entity V_4,
             bool V_5)
    IL_0000:  nop
    IL_0001:  ldarg.3
    IL_0002:  ldfld      int32 [Survivalcraft]Game.WorldItem::Value
    IL_0007:  call       int32 [Survivalcraft]Game.TerrainData::ExtractData(int32)
    IL_000c:  stloc.0
    IL_000d:  ldloc.0
    IL_000e:  call       bool [Survivalcraft]Game.EggBlock::GetIsLaid(int32)
    IL_0013:  stloc.1
    IL_0014:  ldloc.0
    IL_0015:  call       bool [Survivalcraft]Game.EggBlock::GetIsCooked(int32)
    IL_001a:  brtrue.s   IL_005c

    IL_001c:  ldarg.0
    IL_001d:  ldfld      class [Survivalcraft]Game.SubsystemGameInfo Game.SubsystemEggBlockBehavior::m_subsystemGameInfo
    IL_0022:  callvirt   instance class [Survivalcraft]Game.WorldInfo [Survivalcraft]Game.SubsystemGameInfo::get_WorldInfo()
    IL_0027:  ldfld      valuetype [Survivalcraft]Game.GameMode [Survivalcraft]Game.WorldInfo::GameMode
    IL_002c:  brfalse.s  IL_0059

    IL_002e:  ldarg.0
    IL_002f:  ldfld      class [Survivalcraft]Game.Random Game.SubsystemEggBlockBehavior::m_random
    IL_0034:  ldc.r4     0.0
    IL_0039:  ldc.r4     1.
    IL_003e:  callvirt   instance float32 [Survivalcraft]Game.Random::UniformFloat(float32,
                                                                                   float32)
    IL_0043:  ldloc.1
    IL_0044:  brtrue.s   IL_004d

    IL_0046:  ldc.r4     1.
    IL_004b:  br.s       IL_0052

    IL_004d:  ldc.r4     0.2
    IL_0052:  cgt.un
    IL_0054:  ldc.i4.0
    IL_0055:  ceq
    IL_0057:  br.s       IL_005a

    IL_0059:  ldc.i4.1
    IL_005a:  br.s       IL_005d

    IL_005c:  ldc.i4.0
    IL_005d:  stloc.2
    IL_005e:  ldloc.2
    IL_005f:  brfalse    IL_00e9

    IL_0064:  nop
    IL_0065:  ldarg.0
    IL_0066:  ldfld      class [Survivalcraft]Game.EggBlock Game.SubsystemEggBlockBehavior::m_eggBlock
    IL_006b:  ldloc.0
    IL_006c:  callvirt   instance class [Survivalcraft]Game.EggBlock/EggType [Survivalcraft]Game.EggBlock::GetEggType(int32)
    IL_0071:  stloc.3
    IL_0072:  ldarg.0
    IL_0073:  ldfld      class [Survivalcraft]Game.SubsystemEntityFactory Game.SubsystemEggBlockBehavior::m_subsystemEntityFactory
    IL_0078:  ldloc.3
    IL_0079:  ldfld      string [Survivalcraft]Game.EggBlock/EggType::TemplateName
    IL_007e:  ldc.i4.1
    IL_007f:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [Survivalcraft]Game.SubsystemEntityFactory::CreateEntity(string,
                                                                                                                                       bool)
    IL_0084:  stloc.s    V_4
    IL_0086:  ldloc.s    V_4
    IL_0088:  ldc.i4.1
    IL_0089:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class [Survivalcraft]Game.ComponentBody>(bool)
    IL_008e:  ldarg.3
    IL_008f:  ldfld      valuetype [Engine]Engine.Vector3 [Survivalcraft]Game.WorldItem::Position
    IL_0094:  callvirt   instance void [Survivalcraft]Game.ComponentFrame::set_Position(valuetype [Engine]Engine.Vector3)
    IL_0099:  nop
    IL_009a:  ldloc.s    V_4
    IL_009c:  ldc.i4.1
    IL_009d:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class [Survivalcraft]Game.ComponentBody>(bool)
    IL_00a2:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_00a7:  ldarg.0
    IL_00a8:  ldfld      class [Survivalcraft]Game.Random Game.SubsystemEggBlockBehavior::m_random
    IL_00ad:  ldc.r4     0.0
    IL_00b2:  ldc.r4     6.283185
    IL_00b7:  callvirt   instance float32 [Survivalcraft]Game.Random::UniformFloat(float32,
                                                                                   float32)
    IL_00bc:  call       valuetype [Engine]Engine.Quaternion [Engine]Engine.Quaternion::CreateFromAxisAngle(valuetype [Engine]Engine.Vector3,
                                                                                                            float32)
    IL_00c1:  callvirt   instance void [Survivalcraft]Game.ComponentFrame::set_Rotation(valuetype [Engine]Engine.Quaternion)
    IL_00c6:  nop
    IL_00c7:  ldloc.s    V_4
    IL_00c9:  ldc.i4.1
    IL_00ca:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class [Survivalcraft]Game.ComponentSpawn>(bool)
    IL_00cf:  ldc.r4     0.25
    IL_00d4:  callvirt   instance void [Survivalcraft]Game.ComponentSpawn::set_SpawnDuration(float32)
    IL_00d9:  nop
    IL_00da:  ldarg.0
    IL_00db:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_00e0:  ldloc.s    V_4
    IL_00e2:  callvirt   instance void [EntitySystem]GameEntitySystem.Project::AddEntity(class [EntitySystem]GameEntitySystem.Entity)
    IL_00e7:  nop
    IL_00e8:  nop
    IL_00e9:  ldc.i4.1
    IL_00ea:  stloc.s    V_5
    IL_00ec:  br.s       IL_00ee

    IL_00ee:  ldloc.s    V_5
    IL_00f0:  ret
  } // end of method SubsystemEggBlockBehavior::OnHitAsProjectile

  .method public hidebysig specialname virtual 
          instance int32[]  get_HandledBlocks() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  1
    .locals init (int32[] V_0)
    IL_0000:  nop
    IL_0001:  ldc.i4.0
    IL_0002:  newarr     [System.Runtime]System.Int32
    IL_0007:  stloc.0
    IL_0008:  br.s       IL_000a

    IL_000a:  ldloc.0
    IL_000b:  ret
  } // end of method SubsystemEggBlockBehavior::get_HandledBlocks

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       class [Survivalcraft]Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0006:  ldc.i4.s   118
    IL_0008:  ldelem.ref
    IL_0009:  castclass  [Survivalcraft]Game.EggBlock
    IL_000e:  stfld      class [Survivalcraft]Game.EggBlock Game.SubsystemEggBlockBehavior::m_eggBlock
    IL_0013:  ldarg.0
    IL_0014:  newobj     instance void [Survivalcraft]Game.Random::.ctor()
    IL_0019:  stfld      class [Survivalcraft]Game.Random Game.SubsystemEggBlockBehavior::m_random
    IL_001e:  ldarg.0
    IL_001f:  call       instance void [Survivalcraft]Game.SubsystemBlockBehavior::.ctor()
    IL_0024:  nop
    IL_0025:  ret
  } // end of method SubsystemEggBlockBehavior::.ctor

  .property instance int32[] HandledBlocks()
  {
    .get instance int32[] Game.SubsystemEggBlockBehavior::get_HandledBlocks()
  } // end of property SubsystemEggBlockBehavior::HandledBlocks
} // end of class Game.SubsystemEggBlockBehavior
