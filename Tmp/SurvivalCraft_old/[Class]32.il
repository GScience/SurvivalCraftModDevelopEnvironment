.class public auto ansi beforefieldinit Game.ComponentStubbornSteedBehavior
       extends Game.ComponentBehavior
       implements Game.IUpdateable
{
  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.SubsystemGameInfo m_subsystemGameInfo
  .field private class Game.ComponentCreature m_componentCreature
  .field private class Game.ComponentMount m_componentMount
  .field private class Game.ComponentSteedBehavior m_componentSteedBehavior
  .field private class Game.ComponentEatPickableBehavior m_componentEatPickableBehavior
  .field private class Game.StateMachine m_stateMachine
  .field private float32 m_importanceLevel
  .field private bool m_isSaddled
  .field private class Game.Random m_random
  .field private float32 m_periodicEventOffset
  .field private float32 m_stubbornProbability
  .field private float64 m_stubbornEndTime
  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method ComponentStubbornSteedBehavior::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       138 (0x8a)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.StateMachine Game.ComponentStubbornSteedBehavior::m_stateMachine
    IL_0006:  callvirt   instance void Game.StateMachine::Update()
    IL_000b:  ldarg.0
    IL_000c:  callvirt   instance bool Game.ComponentBehavior::get_IsActive()
    IL_0011:  brtrue.s   IL_0023

    IL_0013:  ldarg.0
    IL_0014:  ldfld      class Game.StateMachine Game.ComponentStubbornSteedBehavior::m_stateMachine
    IL_0019:  ldstr      "Inactive"
    IL_001e:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0023:  ldarg.0
    IL_0024:  ldfld      class Game.SubsystemTime Game.ComponentStubbornSteedBehavior::m_subsystemTime
    IL_0029:  ldc.r8     1.
    IL_0032:  ldarg.0
    IL_0033:  ldfld      float32 Game.ComponentStubbornSteedBehavior::m_periodicEventOffset
    IL_0038:  conv.r8
    IL_0039:  callvirt   instance bool Game.SubsystemTime::PeriodicGameTimeEvent(float64,
                                                                                 float64)
    IL_003e:  brfalse.s  IL_0089

    IL_0040:  ldarg.0
    IL_0041:  ldfld      class Game.SubsystemGameInfo Game.ComponentStubbornSteedBehavior::m_subsystemGameInfo
    IL_0046:  callvirt   instance float64 Game.SubsystemGameInfo::get_TotalElapsedGameTime()
    IL_004b:  ldarg.0
    IL_004c:  ldfld      float64 Game.ComponentStubbornSteedBehavior::m_stubbornEndTime
    IL_0051:  bge.un.s   IL_007e

    IL_0053:  ldarg.0
    IL_0054:  ldfld      class Game.ComponentEatPickableBehavior Game.ComponentStubbornSteedBehavior::m_componentEatPickableBehavior
    IL_0059:  callvirt   instance float32 Game.ComponentEatPickableBehavior::get_Satiation()
    IL_005e:  ldc.r4     0.0
    IL_0063:  bgt.un.s   IL_007e

    IL_0065:  ldarg.0
    IL_0066:  ldfld      class Game.ComponentMount Game.ComponentStubbornSteedBehavior::m_componentMount
    IL_006b:  callvirt   instance class Game.ComponentRider Game.ComponentMount::get_Rider()
    IL_0070:  brfalse.s  IL_007e

    IL_0072:  ldarg.0
    IL_0073:  ldc.r4     210.
    IL_0078:  stfld      float32 Game.ComponentStubbornSteedBehavior::m_importanceLevel
    IL_007d:  ret

    IL_007e:  ldarg.0
    IL_007f:  ldc.r4     0.0
    IL_0084:  stfld      float32 Game.ComponentStubbornSteedBehavior::m_importanceLevel
    IL_0089:  ret
  } // end of method ComponentStubbornSteedBehavior::Update

  .method public hidebysig specialname virtual 
          instance float32  get_ImportanceLevel() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentStubbornSteedBehavior::m_importanceLevel
    IL_0006:  ret
  } // end of method ComponentStubbornSteedBehavior::get_ImportanceLevel

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       283 (0x11b)
    .maxstack  5
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_000d:  stfld      class Game.SubsystemTime Game.ComponentStubbornSteedBehavior::m_subsystemTime
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGameInfo>(bool)
    IL_001f:  stfld      class Game.SubsystemGameInfo Game.ComponentStubbornSteedBehavior::m_subsystemGameInfo
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreature>(bool)
    IL_0031:  stfld      class Game.ComponentCreature Game.ComponentStubbornSteedBehavior::m_componentCreature
    IL_0036:  ldarg.0
    IL_0037:  ldarg.0
    IL_0038:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_003d:  ldc.i4.1
    IL_003e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentMount>(bool)
    IL_0043:  stfld      class Game.ComponentMount Game.ComponentStubbornSteedBehavior::m_componentMount
    IL_0048:  ldarg.0
    IL_0049:  ldarg.0
    IL_004a:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_004f:  ldc.i4.1
    IL_0050:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentSteedBehavior>(bool)
    IL_0055:  stfld      class Game.ComponentSteedBehavior Game.ComponentStubbornSteedBehavior::m_componentSteedBehavior
    IL_005a:  ldarg.0
    IL_005b:  ldarg.0
    IL_005c:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0061:  ldc.i4.1
    IL_0062:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentEatPickableBehavior>(bool)
    IL_0067:  stfld      class Game.ComponentEatPickableBehavior Game.ComponentStubbornSteedBehavior::m_componentEatPickableBehavior
    IL_006c:  ldarg.0
    IL_006d:  ldarg.1
    IL_006e:  ldstr      "StubbornProbability"
    IL_0073:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_0078:  stfld      float32 Game.ComponentStubbornSteedBehavior::m_stubbornProbability
    IL_007d:  ldarg.0
    IL_007e:  ldarg.1
    IL_007f:  ldstr      "StubbornEndTime"
    IL_0084:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float64>(string)
    IL_0089:  stfld      float64 Game.ComponentStubbornSteedBehavior::m_stubbornEndTime
    IL_008e:  ldarg.0
    IL_008f:  ldarg.0
    IL_0090:  ldfld      class Game.Random Game.ComponentStubbornSteedBehavior::m_random
    IL_0095:  ldc.r4     0.0
    IL_009a:  ldc.r4     100.
    IL_009f:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_00a4:  stfld      float32 Game.ComponentStubbornSteedBehavior::m_periodicEventOffset
    IL_00a9:  ldarg.0
    IL_00aa:  ldarg.0
    IL_00ab:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_00b0:  callvirt   instance class [EntitySystem]TemplatesDatabase.ValuesDictionary [EntitySystem]GameEntitySystem.Entity::get_ValuesDictionary()
    IL_00b5:  callvirt   instance class [EntitySystem]TemplatesDatabase.DatabaseObject [EntitySystem]TemplatesDatabase.ValuesDictionary::get_DatabaseObject()
    IL_00ba:  callvirt   instance string [EntitySystem]TemplatesDatabase.DatabaseObject::get_Name()
    IL_00bf:  ldstr      "_Saddled"
    IL_00c4:  callvirt   instance bool [System.Runtime]System.String::EndsWith(string)
    IL_00c9:  stfld      bool Game.ComponentStubbornSteedBehavior::m_isSaddled
    IL_00ce:  ldarg.0
    IL_00cf:  ldfld      class Game.StateMachine Game.ComponentStubbornSteedBehavior::m_stateMachine
    IL_00d4:  ldstr      "Inactive"
    IL_00d9:  ldnull
    IL_00da:  ldarg.0
    IL_00db:  ldftn      instance void Game.ComponentStubbornSteedBehavior::'<Load>b__18_0'()
    IL_00e1:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00e6:  ldnull
    IL_00e7:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_00ec:  ldarg.0
    IL_00ed:  ldfld      class Game.StateMachine Game.ComponentStubbornSteedBehavior::m_stateMachine
    IL_00f2:  ldstr      "Stubborn"
    IL_00f7:  ldnull
    IL_00f8:  ldarg.0
    IL_00f9:  ldftn      instance void Game.ComponentStubbornSteedBehavior::'<Load>b__18_1'()
    IL_00ff:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0104:  ldnull
    IL_0105:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_010a:  ldarg.0
    IL_010b:  ldfld      class Game.StateMachine Game.ComponentStubbornSteedBehavior::m_stateMachine
    IL_0110:  ldstr      "Inactive"
    IL_0115:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_011a:  ret
  } // end of method ComponentStubbornSteedBehavior::Load

  .method family hidebysig virtual instance void 
          Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.EntityToIdMap entityToIdMap) cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldstr      "StubbornEndTime"
    IL_0006:  ldarg.0
    IL_0007:  ldfld      float64 Game.ComponentStubbornSteedBehavior::m_stubbornEndTime
    IL_000c:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<float64>(string,
                                                                                                           !!0)
    IL_0011:  ret
  } // end of method ComponentStubbornSteedBehavior::Save

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.StateMachine::.ctor()
    IL_0006:  stfld      class Game.StateMachine Game.ComponentStubbornSteedBehavior::m_stateMachine
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void Game.Random::.ctor()
    IL_0011:  stfld      class Game.Random Game.ComponentStubbornSteedBehavior::m_random
    IL_0016:  ldarg.0
    IL_0017:  call       instance void Game.ComponentBehavior::.ctor()
    IL_001c:  ret
  } // end of method ComponentStubbornSteedBehavior::.ctor

  .method private hidebysig instance void 
          '<Load>b__18_0'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       162 (0xa2)
    .maxstack  5
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTime Game.ComponentStubbornSteedBehavior::m_subsystemTime
    IL_0006:  ldc.r8     1.
    IL_000f:  ldarg.0
    IL_0010:  ldfld      float32 Game.ComponentStubbornSteedBehavior::m_periodicEventOffset
    IL_0015:  conv.r8
    IL_0016:  callvirt   instance bool Game.SubsystemTime::PeriodicGameTimeEvent(float64,
                                                                                 float64)
    IL_001b:  brfalse.s  IL_0089

    IL_001d:  ldarg.0
    IL_001e:  ldfld      class Game.ComponentMount Game.ComponentStubbornSteedBehavior::m_componentMount
    IL_0023:  callvirt   instance class Game.ComponentRider Game.ComponentMount::get_Rider()
    IL_0028:  brfalse.s  IL_0089

    IL_002a:  ldarg.0
    IL_002b:  ldfld      class Game.Random Game.ComponentStubbornSteedBehavior::m_random
    IL_0030:  ldc.r4     0.0
    IL_0035:  ldc.r4     1.
    IL_003a:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_003f:  ldarg.0
    IL_0040:  ldfld      float32 Game.ComponentStubbornSteedBehavior::m_stubbornProbability
    IL_0045:  bge.un.s   IL_0089

    IL_0047:  ldarg.0
    IL_0048:  ldfld      bool Game.ComponentStubbornSteedBehavior::m_isSaddled
    IL_004d:  brfalse.s  IL_0061

    IL_004f:  ldarg.0
    IL_0050:  ldfld      class Game.ComponentEatPickableBehavior Game.ComponentStubbornSteedBehavior::m_componentEatPickableBehavior
    IL_0055:  callvirt   instance float32 Game.ComponentEatPickableBehavior::get_Satiation()
    IL_005a:  ldc.r4     0.0
    IL_005f:  bgt.un.s   IL_0089

    IL_0061:  ldarg.0
    IL_0062:  ldarg.0
    IL_0063:  ldfld      class Game.SubsystemGameInfo Game.ComponentStubbornSteedBehavior::m_subsystemGameInfo
    IL_0068:  callvirt   instance float64 Game.SubsystemGameInfo::get_TotalElapsedGameTime()
    IL_006d:  ldarg.0
    IL_006e:  ldfld      class Game.Random Game.ComponentStubbornSteedBehavior::m_random
    IL_0073:  ldc.r4     60.
    IL_0078:  ldc.r4     120.
    IL_007d:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0082:  conv.r8
    IL_0083:  add
    IL_0084:  stfld      float64 Game.ComponentStubbornSteedBehavior::m_stubbornEndTime
    IL_0089:  ldarg.0
    IL_008a:  callvirt   instance bool Game.ComponentBehavior::get_IsActive()
    IL_008f:  brfalse.s  IL_00a1

    IL_0091:  ldarg.0
    IL_0092:  ldfld      class Game.StateMachine Game.ComponentStubbornSteedBehavior::m_stateMachine
    IL_0097:  ldstr      "Stubborn"
    IL_009c:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_00a1:  ret
  } // end of method ComponentStubbornSteedBehavior::'<Load>b__18_0'

  .method private hidebysig instance void 
          '<Load>b__18_1'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       67 (0x43)
    .maxstack  4
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentSteedBehavior Game.ComponentStubbornSteedBehavior::m_componentSteedBehavior
    IL_0006:  callvirt   instance bool Game.ComponentSteedBehavior::get_WasOrderIssued()
    IL_000b:  brfalse.s  IL_0042

    IL_000d:  ldarg.0
    IL_000e:  ldfld      class Game.ComponentCreature Game.ComponentStubbornSteedBehavior::m_componentCreature
    IL_0013:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_0018:  ldarg.0
    IL_0019:  ldfld      class Game.Random Game.ComponentStubbornSteedBehavior::m_random
    IL_001e:  ldc.r4     0.60000002
    IL_0023:  ldc.r4     1.
    IL_0028:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_002d:  callvirt   instance void Game.ComponentCreatureModel::set_HeadShakeOrder(float32)
    IL_0032:  ldarg.0
    IL_0033:  ldfld      class Game.ComponentCreature Game.ComponentStubbornSteedBehavior::m_componentCreature
    IL_0038:  callvirt   instance class Game.ComponentCreatureSounds Game.ComponentCreature::get_ComponentCreatureSounds()
    IL_003d:  callvirt   instance void Game.ComponentCreatureSounds::PlayPainSound()
    IL_0042:  ret
  } // end of method ComponentStubbornSteedBehavior::'<Load>b__18_1'

  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.ComponentStubbornSteedBehavior::get_UpdateOrder()
  } // end of property ComponentStubbornSteedBehavior::UpdateOrder
  .property instance float32 ImportanceLevel()
  {
    .get instance float32 Game.ComponentStubbornSteedBehavior::get_ImportanceLevel()
  } // end of property ComponentStubbornSteedBehavior::ImportanceLevel
} // end of class Game.ComponentStubbornSteedBehavior