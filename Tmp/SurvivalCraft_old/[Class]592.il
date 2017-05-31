.class public auto ansi beforefieldinit Game.SubsystemSaddleBlockBehavior
       extends Game.SubsystemBlockBehavior
{
  .field private class Game.SubsystemAudio m_subsystemAudio
  .field private class Game.SubsystemEntityFactory m_subsystemEntityFactory
  .field private class Game.Random m_random
  .method public hidebysig specialname virtual 
          instance int32[]  get_HandledBlocks() cil managed
  {
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  ldc.i4.1
    IL_0001:  newarr     [System.Runtime]System.Int32
    IL_0006:  dup
    IL_0007:  ldc.i4.0
    IL_0008:  ldc.i4     0x9e
    IL_000d:  stelem.i4
    IL_000e:  ret
  } // end of method SubsystemSaddleBlockBehavior::get_HandledBlocks

  .method public hidebysig virtual instance bool 
          OnUse(valuetype [Engine]Engine.Vector3 start,
                valuetype [Engine]Engine.Vector3 direction,
                class Game.ComponentMiner componentMiner) cil managed
  {
    // 代码大小       370 (0x172)
    .maxstack  7
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype Game.BodyRaycastResult> V_0,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> V_1,
             class Game.ComponentHealth V_2,
             string V_3,
             class [EntitySystem]GameEntitySystem.Entity V_4)
    IL_0000:  ldarg.3
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.BodyRaycastResult> Game.ComponentMiner::PickBody(valuetype [Engine]Engine.Vector3,
                                                                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0008:  stloc.0
    IL_0009:  ldarg.3
    IL_000a:  ldarg.1
    IL_000b:  ldarg.2
    IL_000c:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> Game.ComponentMiner::PickTerrainForDigging(valuetype [Engine]Engine.Vector3,
                                                                                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0011:  stloc.1
    IL_0012:  ldloca.s   V_0
    IL_0014:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.BodyRaycastResult>::get_HasValue()
    IL_0019:  brfalse    IL_0170

    IL_001e:  ldloca.s   V_1
    IL_0020:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_HasValue()
    IL_0025:  brfalse.s  IL_0044

    IL_0027:  ldloca.s   V_1
    IL_0029:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_002e:  ldfld      float32 Game.TerrainRaycastResult::Distance
    IL_0033:  ldloca.s   V_0
    IL_0035:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.BodyRaycastResult>::get_Value()
    IL_003a:  ldfld      float32 Game.BodyRaycastResult::Distance
    IL_003f:  ble.un     IL_0170

    IL_0044:  ldloca.s   V_0
    IL_0046:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.BodyRaycastResult>::get_Value()
    IL_004b:  ldfld      class Game.ComponentBody Game.BodyRaycastResult::ComponentBody
    IL_0050:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0055:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentHealth>()
    IL_005a:  stloc.2
    IL_005b:  ldloc.2
    IL_005c:  brfalse.s  IL_006e

    IL_005e:  ldloc.2
    IL_005f:  callvirt   instance float32 Game.ComponentHealth::get_Health()
    IL_0064:  ldc.r4     0.0
    IL_0069:  ble.un     IL_016e

    IL_006e:  ldloca.s   V_0
    IL_0070:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.BodyRaycastResult>::get_Value()
    IL_0075:  ldfld      class Game.ComponentBody Game.BodyRaycastResult::ComponentBody
    IL_007a:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_007f:  callvirt   instance class [EntitySystem]TemplatesDatabase.ValuesDictionary [EntitySystem]GameEntitySystem.Entity::get_ValuesDictionary()
    IL_0084:  callvirt   instance class [EntitySystem]TemplatesDatabase.DatabaseObject [EntitySystem]TemplatesDatabase.ValuesDictionary::get_DatabaseObject()
    IL_0089:  callvirt   instance string [EntitySystem]TemplatesDatabase.DatabaseObject::get_Name()
    IL_008e:  ldstr      "_Saddled"
    IL_0093:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_0098:  stloc.3
    IL_0099:  ldarg.0
    IL_009a:  ldfld      class Game.SubsystemEntityFactory Game.SubsystemSaddleBlockBehavior::m_subsystemEntityFactory
    IL_009f:  ldloc.3
    IL_00a0:  ldc.i4.0
    IL_00a1:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity Game.SubsystemEntityFactory::CreateEntity(string,
                                                                                                                        bool)
    IL_00a6:  stloc.s    V_4
    IL_00a8:  ldloc.s    V_4
    IL_00aa:  brfalse    IL_016e

    IL_00af:  ldloc.s    V_4
    IL_00b1:  ldc.i4.1
    IL_00b2:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentBody>(bool)
    IL_00b7:  dup
    IL_00b8:  ldloca.s   V_0
    IL_00ba:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.BodyRaycastResult>::get_Value()
    IL_00bf:  ldfld      class Game.ComponentBody Game.BodyRaycastResult::ComponentBody
    IL_00c4:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_00c9:  callvirt   instance void Game.ComponentFrame::set_Position(valuetype [Engine]Engine.Vector3)
    IL_00ce:  dup
    IL_00cf:  ldloca.s   V_0
    IL_00d1:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.BodyRaycastResult>::get_Value()
    IL_00d6:  ldfld      class Game.ComponentBody Game.BodyRaycastResult::ComponentBody
    IL_00db:  callvirt   instance valuetype [Engine]Engine.Quaternion Game.ComponentFrame::get_Rotation()
    IL_00e0:  callvirt   instance void Game.ComponentFrame::set_Rotation(valuetype [Engine]Engine.Quaternion)
    IL_00e5:  ldloca.s   V_0
    IL_00e7:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.BodyRaycastResult>::get_Value()
    IL_00ec:  ldfld      class Game.ComponentBody Game.BodyRaycastResult::ComponentBody
    IL_00f1:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_Velocity()
    IL_00f6:  callvirt   instance void Game.ComponentBody::set_Velocity(valuetype [Engine]Engine.Vector3)
    IL_00fb:  ldloc.s    V_4
    IL_00fd:  ldc.i4.1
    IL_00fe:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentSpawn>(bool)
    IL_0103:  ldc.r4     0.0
    IL_0108:  callvirt   instance void Game.ComponentSpawn::set_SpawnDuration(float32)
    IL_010d:  ldarg.0
    IL_010e:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0113:  ldloca.s   V_0
    IL_0115:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.BodyRaycastResult>::get_Value()
    IL_011a:  ldfld      class Game.ComponentBody Game.BodyRaycastResult::ComponentBody
    IL_011f:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0124:  callvirt   instance void [EntitySystem]GameEntitySystem.Project::RemoveEntity(class [EntitySystem]GameEntitySystem.Entity)
    IL_0129:  ldarg.0
    IL_012a:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_012f:  ldloc.s    V_4
    IL_0131:  callvirt   instance void [EntitySystem]GameEntitySystem.Project::AddEntity(class [EntitySystem]GameEntitySystem.Entity)
    IL_0136:  ldarg.0
    IL_0137:  ldfld      class Game.SubsystemAudio Game.SubsystemSaddleBlockBehavior::m_subsystemAudio
    IL_013c:  ldstr      "Audio/BlockPlaced"
    IL_0141:  ldc.r4     1.
    IL_0146:  ldarg.0
    IL_0147:  ldfld      class Game.Random Game.SubsystemSaddleBlockBehavior::m_random
    IL_014c:  ldc.r4     -0.1
    IL_0151:  ldc.r4     0.1
    IL_0156:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_015b:  ldarg.1
    IL_015c:  ldc.r4     1.
    IL_0161:  ldc.i4.1
    IL_0162:  callvirt   instance void Game.SubsystemAudio::PlaySound(string,
                                                                      float32,
                                                                      float32,
                                                                      valuetype [Engine]Engine.Vector3,
                                                                      float32,
                                                                      bool)
    IL_0167:  ldarg.3
    IL_0168:  ldc.i4.1
    IL_0169:  callvirt   instance void Game.ComponentMiner::RemoveActiveTool(int32)
    IL_016e:  ldc.i4.1
    IL_016f:  ret

    IL_0170:  ldc.i4.0
    IL_0171:  ret
  } // end of method SubsystemSaddleBlockBehavior::OnUse

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       44 (0x2c)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void Game.SubsystemBlockBehavior::Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary)
    IL_0007:  ldarg.0
    IL_0008:  ldarg.0
    IL_0009:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_000e:  ldc.i4.1
    IL_000f:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemAudio>(bool)
    IL_0014:  stfld      class Game.SubsystemAudio Game.SubsystemSaddleBlockBehavior::m_subsystemAudio
    IL_0019:  ldarg.0
    IL_001a:  ldarg.0
    IL_001b:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0020:  ldc.i4.1
    IL_0021:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemEntityFactory>(bool)
    IL_0026:  stfld      class Game.SubsystemEntityFactory Game.SubsystemSaddleBlockBehavior::m_subsystemEntityFactory
    IL_002b:  ret
  } // end of method SubsystemSaddleBlockBehavior::Load

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.Random::.ctor()
    IL_0006:  stfld      class Game.Random Game.SubsystemSaddleBlockBehavior::m_random
    IL_000b:  ldarg.0
    IL_000c:  call       instance void Game.SubsystemBlockBehavior::.ctor()
    IL_0011:  ret
  } // end of method SubsystemSaddleBlockBehavior::.ctor

  .property instance int32[] HandledBlocks()
  {
    .get instance int32[] Game.SubsystemSaddleBlockBehavior::get_HandledBlocks()
  } // end of property SubsystemSaddleBlockBehavior::HandledBlocks
} // end of class Game.SubsystemSaddleBlockBehavior