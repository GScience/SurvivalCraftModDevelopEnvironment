.class public auto ansi beforefieldinit Game.SubsystemEggBlockBehavior
       extends Game.SubsystemBlockBehavior
{
  .field private class Game.SubsystemGameInfo m_subsystemGameInfo
  .field private class Game.SubsystemEntityFactory m_subsystemEntityFactory
  .field private class Game.SubsystemCreatureSpawn m_subsystemCreatureSpawn
  .field private class Game.SubsystemGui m_subsystemGui
  .field private class Game.EggBlock m_eggBlock
  .field private class Game.Random m_random
  .method public hidebysig specialname virtual 
          instance int32[]  get_HandledBlocks() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  newarr     [System.Runtime]System.Int32
    IL_0006:  ret
  } // end of method SubsystemEggBlockBehavior::get_HandledBlocks

  .method public hidebysig virtual instance bool 
          OnHitAsProjectile(valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace> cellFace,
                            class Game.ComponentBody componentBody,
                            class Game.WorldItem worldItem) cil managed
  {
    // 代码大小       253 (0xfd)
    .maxstack  5
    .locals init (int32 V_0,
             bool V_1,
             class Game.EggBlock/EggType V_2,
             class [EntitySystem]GameEntitySystem.Entity V_3)
    IL_0000:  ldarg.3
    IL_0001:  ldfld      int32 Game.WorldItem::Value
    IL_0006:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  call       bool Game.EggBlock::GetIsCooked(int32)
    IL_0012:  ldloc.0
    IL_0013:  call       bool Game.EggBlock::GetIsLaid(int32)
    IL_0018:  stloc.1
    IL_0019:  brtrue     IL_00fb

    IL_001e:  ldarg.0
    IL_001f:  ldfld      class Game.SubsystemGameInfo Game.SubsystemEggBlockBehavior::m_subsystemGameInfo
    IL_0024:  callvirt   instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
    IL_0029:  ldfld      valuetype Game.GameMode Game.WorldInfo::GameMode
    IL_002e:  brfalse.s  IL_0059

    IL_0030:  ldarg.0
    IL_0031:  ldfld      class Game.Random Game.SubsystemEggBlockBehavior::m_random
    IL_0036:  ldc.r4     0.0
    IL_003b:  ldc.r4     1.
    IL_0040:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0045:  ldloc.1
    IL_0046:  brtrue.s   IL_004f

    IL_0048:  ldc.r4     1.
    IL_004d:  br.s       IL_0054

    IL_004f:  ldc.r4     0.2
    IL_0054:  bgt.un     IL_00fb

    IL_0059:  ldarg.0
    IL_005a:  ldfld      class Game.SubsystemCreatureSpawn Game.SubsystemEggBlockBehavior::m_subsystemCreatureSpawn
    IL_005f:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<class Game.ComponentCreature,bool> Game.SubsystemCreatureSpawn::get_Creatures()
    IL_0064:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<class Game.ComponentCreature,bool>::get_Count()
    IL_0069:  ldc.i4.s   30
    IL_006b:  bge.s      IL_00e9

    IL_006d:  ldarg.0
    IL_006e:  ldfld      class Game.EggBlock Game.SubsystemEggBlockBehavior::m_eggBlock
    IL_0073:  ldloc.0
    IL_0074:  callvirt   instance class Game.EggBlock/EggType Game.EggBlock::GetEggType(int32)
    IL_0079:  stloc.2
    IL_007a:  ldarg.0
    IL_007b:  ldfld      class Game.SubsystemEntityFactory Game.SubsystemEggBlockBehavior::m_subsystemEntityFactory
    IL_0080:  ldloc.2
    IL_0081:  ldfld      string Game.EggBlock/EggType::TemplateName
    IL_0086:  ldc.i4.1
    IL_0087:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity Game.SubsystemEntityFactory::CreateEntity(string,
                                                                                                                        bool)
    IL_008c:  stloc.3
    IL_008d:  ldloc.3
    IL_008e:  ldc.i4.1
    IL_008f:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentBody>(bool)
    IL_0094:  ldarg.3
    IL_0095:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
    IL_009a:  callvirt   instance void Game.ComponentFrame::set_Position(valuetype [Engine]Engine.Vector3)
    IL_009f:  ldloc.3
    IL_00a0:  ldc.i4.1
    IL_00a1:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentBody>(bool)
    IL_00a6:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_00ab:  ldarg.0
    IL_00ac:  ldfld      class Game.Random Game.SubsystemEggBlockBehavior::m_random
    IL_00b1:  ldc.r4     0.0
    IL_00b6:  ldc.r4     6.2831855
    IL_00bb:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_00c0:  call       valuetype [Engine]Engine.Quaternion [Engine]Engine.Quaternion::CreateFromAxisAngle(valuetype [Engine]Engine.Vector3,
                                                                                                            float32)
    IL_00c5:  callvirt   instance void Game.ComponentFrame::set_Rotation(valuetype [Engine]Engine.Quaternion)
    IL_00ca:  ldloc.3
    IL_00cb:  ldc.i4.1
    IL_00cc:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentSpawn>(bool)
    IL_00d1:  ldc.r4     0.25
    IL_00d6:  callvirt   instance void Game.ComponentSpawn::set_SpawnDuration(float32)
    IL_00db:  ldarg.0
    IL_00dc:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_00e1:  ldloc.3
    IL_00e2:  callvirt   instance void [EntitySystem]GameEntitySystem.Project::AddEntity(class [EntitySystem]GameEntitySystem.Entity)
    IL_00e7:  br.s       IL_00fb

    IL_00e9:  ldarg.0
    IL_00ea:  ldfld      class Game.SubsystemGui Game.SubsystemEggBlockBehavior::m_subsystemGui
    IL_00ef:  ldstr      "Too many creatures"
    IL_00f4:  ldc.i4.1
    IL_00f5:  ldc.i4.0
    IL_00f6:  callvirt   instance void Game.SubsystemGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_00fb:  ldc.i4.1
    IL_00fc:  ret
  } // end of method SubsystemEggBlockBehavior::OnHitAsProjectile

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
    IL_000f:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGameInfo>(bool)
    IL_0014:  stfld      class Game.SubsystemGameInfo Game.SubsystemEggBlockBehavior::m_subsystemGameInfo
    IL_0019:  ldarg.0
    IL_001a:  ldarg.0
    IL_001b:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0020:  ldc.i4.1
    IL_0021:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemEntityFactory>(bool)
    IL_0026:  stfld      class Game.SubsystemEntityFactory Game.SubsystemEggBlockBehavior::m_subsystemEntityFactory
    IL_002b:  ldarg.0
    IL_002c:  ldarg.0
    IL_002d:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0032:  ldc.i4.1
    IL_0033:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemCreatureSpawn>(bool)
    IL_0038:  stfld      class Game.SubsystemCreatureSpawn Game.SubsystemEggBlockBehavior::m_subsystemCreatureSpawn
    IL_003d:  ldarg.0
    IL_003e:  ldarg.0
    IL_003f:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0044:  ldc.i4.1
    IL_0045:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGui>(bool)
    IL_004a:  stfld      class Game.SubsystemGui Game.SubsystemEggBlockBehavior::m_subsystemGui
    IL_004f:  ret
  } // end of method SubsystemEggBlockBehavior::Load

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       37 (0x25)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0006:  ldc.i4.s   118
    IL_0008:  ldelem.ref
    IL_0009:  castclass  Game.EggBlock
    IL_000e:  stfld      class Game.EggBlock Game.SubsystemEggBlockBehavior::m_eggBlock
    IL_0013:  ldarg.0
    IL_0014:  newobj     instance void Game.Random::.ctor()
    IL_0019:  stfld      class Game.Random Game.SubsystemEggBlockBehavior::m_random
    IL_001e:  ldarg.0
    IL_001f:  call       instance void Game.SubsystemBlockBehavior::.ctor()
    IL_0024:  ret
  } // end of method SubsystemEggBlockBehavior::.ctor

  .property instance int32[] HandledBlocks()
  {
    .get instance int32[] Game.SubsystemEggBlockBehavior::get_HandledBlocks()
  } // end of property SubsystemEggBlockBehavior::HandledBlocks
} // end of class Game.SubsystemEggBlockBehavior