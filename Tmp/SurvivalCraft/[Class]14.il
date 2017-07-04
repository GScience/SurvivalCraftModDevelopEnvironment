.class public auto ansi beforefieldinit Game.ComponentDumpRiderBehavior
       extends Game.ComponentBehavior
       implements Game.IUpdateable
{
  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.ComponentCreature m_componentCreature
  .field private class Game.ComponentPathfinding m_componentPathfinding
  .field private class Game.ComponentMount m_componentMount
  .field private class Game.StateMachine m_stateMachine
  .field private float32 m_importanceLevel
  .field private bool m_isEnabled
  .field private class Game.Random m_random
  .field private class Game.ComponentRider m_rider
  .field private float64 m_dumpStartTime
  .field private valuetype [Engine]Engine.Vector2 m_walkOrder
  .field private valuetype [Engine]Engine.Vector2 m_turnOrder
  .field private valuetype [Engine]Engine.Vector2 m_lookOrder
  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method ComponentDumpRiderBehavior::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.StateMachine Game.ComponentDumpRiderBehavior::m_stateMachine
    IL_0006:  callvirt   instance void Game.StateMachine::Update()
    IL_000b:  ret
  } // end of method ComponentDumpRiderBehavior::Update

  .method public hidebysig specialname virtual 
          instance float32  get_ImportanceLevel() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentDumpRiderBehavior::m_importanceLevel
    IL_0006:  ret
  } // end of method ComponentDumpRiderBehavior::get_ImportanceLevel

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       293 (0x125)
    .maxstack  5
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_000d:  stfld      class Game.SubsystemTime Game.ComponentDumpRiderBehavior::m_subsystemTime
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreature>(bool)
    IL_001f:  stfld      class Game.ComponentCreature Game.ComponentDumpRiderBehavior::m_componentCreature
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentPathfinding>(bool)
    IL_0031:  stfld      class Game.ComponentPathfinding Game.ComponentDumpRiderBehavior::m_componentPathfinding
    IL_0036:  ldarg.0
    IL_0037:  ldarg.0
    IL_0038:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_003d:  ldc.i4.1
    IL_003e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentMount>(bool)
    IL_0043:  stfld      class Game.ComponentMount Game.ComponentDumpRiderBehavior::m_componentMount
    IL_0048:  ldarg.0
    IL_0049:  ldarg.0
    IL_004a:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_004f:  callvirt   instance class [EntitySystem]TemplatesDatabase.ValuesDictionary [EntitySystem]GameEntitySystem.Entity::get_ValuesDictionary()
    IL_0054:  callvirt   instance class [EntitySystem]TemplatesDatabase.DatabaseObject [EntitySystem]TemplatesDatabase.ValuesDictionary::get_DatabaseObject()
    IL_0059:  callvirt   instance string [EntitySystem]TemplatesDatabase.DatabaseObject::get_Name()
    IL_005e:  ldstr      "_Saddled"
    IL_0063:  callvirt   instance bool [System.Runtime]System.String::EndsWith(string)
    IL_0068:  ldc.i4.0
    IL_0069:  ceq
    IL_006b:  stfld      bool Game.ComponentDumpRiderBehavior::m_isEnabled
    IL_0070:  ldarg.0
    IL_0071:  ldfld      class Game.StateMachine Game.ComponentDumpRiderBehavior::m_stateMachine
    IL_0076:  ldstr      "Inactive"
    IL_007b:  ldarg.0
    IL_007c:  ldftn      instance void Game.ComponentDumpRiderBehavior::'<Load>b__18_0'()
    IL_0082:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0087:  ldarg.0
    IL_0088:  ldftn      instance void Game.ComponentDumpRiderBehavior::'<Load>b__18_1'()
    IL_008e:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0093:  ldnull
    IL_0094:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_0099:  ldarg.0
    IL_009a:  ldfld      class Game.StateMachine Game.ComponentDumpRiderBehavior::m_stateMachine
    IL_009f:  ldstr      "WildJumping"
    IL_00a4:  ldarg.0
    IL_00a5:  ldftn      instance void Game.ComponentDumpRiderBehavior::'<Load>b__18_2'()
    IL_00ab:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00b0:  ldarg.0
    IL_00b1:  ldftn      instance void Game.ComponentDumpRiderBehavior::'<Load>b__18_3'()
    IL_00b7:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00bc:  ldnull
    IL_00bd:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_00c2:  ldarg.0
    IL_00c3:  ldfld      class Game.StateMachine Game.ComponentDumpRiderBehavior::m_stateMachine
    IL_00c8:  ldstr      "BlindRacing"
    IL_00cd:  ldarg.0
    IL_00ce:  ldftn      instance void Game.ComponentDumpRiderBehavior::'<Load>b__18_4'()
    IL_00d4:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00d9:  ldarg.0
    IL_00da:  ldftn      instance void Game.ComponentDumpRiderBehavior::'<Load>b__18_5'()
    IL_00e0:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00e5:  ldnull
    IL_00e6:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_00eb:  ldarg.0
    IL_00ec:  ldfld      class Game.StateMachine Game.ComponentDumpRiderBehavior::m_stateMachine
    IL_00f1:  ldstr      "Stupor"
    IL_00f6:  ldarg.0
    IL_00f7:  ldftn      instance void Game.ComponentDumpRiderBehavior::'<Load>b__18_6'()
    IL_00fd:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0102:  ldarg.0
    IL_0103:  ldftn      instance void Game.ComponentDumpRiderBehavior::'<Load>b__18_7'()
    IL_0109:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_010e:  ldnull
    IL_010f:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_0114:  ldarg.0
    IL_0115:  ldfld      class Game.StateMachine Game.ComponentDumpRiderBehavior::m_stateMachine
    IL_011a:  ldstr      "Inactive"
    IL_011f:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0124:  ret
  } // end of method ComponentDumpRiderBehavior::Load

  .method private hidebysig instance void 
          TransitionToRandomDumpingBehavior() cil managed
  {
    // 代码大小       89 (0x59)
    .maxstack  3
    .locals init (float32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.Random Game.ComponentDumpRiderBehavior::m_random
    IL_0006:  ldc.r4     0.0
    IL_000b:  ldc.r4     1.
    IL_0010:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0015:  stloc.0
    IL_0016:  ldloc.0
    IL_0017:  ldc.r4     0.5
    IL_001c:  bge.un.s   IL_002f

    IL_001e:  ldarg.0
    IL_001f:  ldfld      class Game.StateMachine Game.ComponentDumpRiderBehavior::m_stateMachine
    IL_0024:  ldstr      "WildJumping"
    IL_0029:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_002e:  ret

    IL_002f:  ldloc.0
    IL_0030:  ldc.r4     0.80000001
    IL_0035:  bge.un.s   IL_0048

    IL_0037:  ldarg.0
    IL_0038:  ldfld      class Game.StateMachine Game.ComponentDumpRiderBehavior::m_stateMachine
    IL_003d:  ldstr      "BlindRacing"
    IL_0042:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0047:  ret

    IL_0048:  ldarg.0
    IL_0049:  ldfld      class Game.StateMachine Game.ComponentDumpRiderBehavior::m_stateMachine
    IL_004e:  ldstr      "Stupor"
    IL_0053:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0058:  ret
  } // end of method ComponentDumpRiderBehavior::TransitionToRandomDumpingBehavior

  .method private hidebysig instance void 
          RunAway() cil managed
  {
    // 代码大小       46 (0x2e)
    .maxstack  2
    .locals init (class Game.ComponentRunAwayBehavior V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentRider Game.ComponentDumpRiderBehavior::m_rider
    IL_0006:  brfalse.s  IL_002d

    IL_0008:  ldarg.0
    IL_0009:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_000e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentRunAwayBehavior>()
    IL_0013:  stloc.0
    IL_0014:  ldloc.0
    IL_0015:  brfalse.s  IL_002d

    IL_0017:  ldloc.0
    IL_0018:  ldarg.0
    IL_0019:  ldfld      class Game.ComponentRider Game.ComponentDumpRiderBehavior::m_rider
    IL_001e:  callvirt   instance class Game.ComponentCreature Game.ComponentRider::get_ComponentCreature()
    IL_0023:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0028:  callvirt   instance void Game.ComponentRunAwayBehavior::RunAwayFrom(class Game.ComponentBody)
    IL_002d:  ret
  } // end of method ComponentDumpRiderBehavior::RunAway

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.StateMachine::.ctor()
    IL_0006:  stfld      class Game.StateMachine Game.ComponentDumpRiderBehavior::m_stateMachine
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void Game.Random::.ctor()
    IL_0011:  stfld      class Game.Random Game.ComponentDumpRiderBehavior::m_random
    IL_0016:  ldarg.0
    IL_0017:  call       instance void Game.ComponentBehavior::.ctor()
    IL_001c:  ret
  } // end of method ComponentDumpRiderBehavior::.ctor

  .method private hidebysig instance void 
          '<Load>b__18_0'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.r4     0.0
    IL_0006:  stfld      float32 Game.ComponentDumpRiderBehavior::m_importanceLevel
    IL_000b:  ldarg.0
    IL_000c:  ldnull
    IL_000d:  stfld      class Game.ComponentRider Game.ComponentDumpRiderBehavior::m_rider
    IL_0012:  ret
  } // end of method ComponentDumpRiderBehavior::'<Load>b__18_0'

  .method private hidebysig instance void 
          '<Load>b__18_1'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       131 (0x83)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.ComponentDumpRiderBehavior::m_isEnabled
    IL_0006:  brfalse.s  IL_006a

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.Random Game.ComponentDumpRiderBehavior::m_random
    IL_000e:  ldc.r4     0.0
    IL_0013:  ldc.r4     1.
    IL_0018:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_001d:  ldc.r4     1.
    IL_0022:  ldarg.0
    IL_0023:  ldfld      class Game.SubsystemTime Game.ComponentDumpRiderBehavior::m_subsystemTime
    IL_0028:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
    IL_002d:  mul
    IL_002e:  bge.un.s   IL_006a

    IL_0030:  ldarg.0
    IL_0031:  ldfld      class Game.ComponentMount Game.ComponentDumpRiderBehavior::m_componentMount
    IL_0036:  callvirt   instance class Game.ComponentRider Game.ComponentMount::get_Rider()
    IL_003b:  brfalse.s  IL_006a

    IL_003d:  ldarg.0
    IL_003e:  ldc.r4     220.
    IL_0043:  stfld      float32 Game.ComponentDumpRiderBehavior::m_importanceLevel
    IL_0048:  ldarg.0
    IL_0049:  ldarg.0
    IL_004a:  ldfld      class Game.SubsystemTime Game.ComponentDumpRiderBehavior::m_subsystemTime
    IL_004f:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0054:  stfld      float64 Game.ComponentDumpRiderBehavior::m_dumpStartTime
    IL_0059:  ldarg.0
    IL_005a:  ldarg.0
    IL_005b:  ldfld      class Game.ComponentMount Game.ComponentDumpRiderBehavior::m_componentMount
    IL_0060:  callvirt   instance class Game.ComponentRider Game.ComponentMount::get_Rider()
    IL_0065:  stfld      class Game.ComponentRider Game.ComponentDumpRiderBehavior::m_rider
    IL_006a:  ldarg.0
    IL_006b:  callvirt   instance bool Game.ComponentBehavior::get_IsActive()
    IL_0070:  brfalse.s  IL_0082

    IL_0072:  ldarg.0
    IL_0073:  ldfld      class Game.StateMachine Game.ComponentDumpRiderBehavior::m_stateMachine
    IL_0078:  ldstr      "WildJumping"
    IL_007d:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0082:  ret
  } // end of method ComponentDumpRiderBehavior::'<Load>b__18_1'

  .method private hidebysig instance void 
          '<Load>b__18_2'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       28 (0x1c)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentCreature Game.ComponentDumpRiderBehavior::m_componentCreature
    IL_0006:  callvirt   instance class Game.ComponentCreatureSounds Game.ComponentCreature::get_ComponentCreatureSounds()
    IL_000b:  callvirt   instance void Game.ComponentCreatureSounds::PlayPainSound()
    IL_0010:  ldarg.0
    IL_0011:  ldfld      class Game.ComponentPathfinding Game.ComponentDumpRiderBehavior::m_componentPathfinding
    IL_0016:  callvirt   instance void Game.ComponentPathfinding::Stop()
    IL_001b:  ret
  } // end of method ComponentDumpRiderBehavior::'<Load>b__18_2'

  .method private hidebysig instance void 
          '<Load>b__18_3'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       780 (0x30c)
    .maxstack  5
    IL_0000:  ldarg.0
    IL_0001:  callvirt   instance bool Game.ComponentBehavior::get_IsActive()
    IL_0006:  brtrue.s   IL_001a

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.StateMachine Game.ComponentDumpRiderBehavior::m_stateMachine
    IL_000e:  ldstr      "Inactive"
    IL_0013:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0018:  br.s       IL_0038

    IL_001a:  ldarg.0
    IL_001b:  ldfld      class Game.ComponentMount Game.ComponentDumpRiderBehavior::m_componentMount
    IL_0020:  callvirt   instance class Game.ComponentRider Game.ComponentMount::get_Rider()
    IL_0025:  brtrue.s   IL_0038

    IL_0027:  ldarg.0
    IL_0028:  ldc.r4     0.0
    IL_002d:  stfld      float32 Game.ComponentDumpRiderBehavior::m_importanceLevel
    IL_0032:  ldarg.0
    IL_0033:  call       instance void Game.ComponentDumpRiderBehavior::RunAway()
    IL_0038:  ldarg.0
    IL_0039:  ldfld      class Game.Random Game.ComponentDumpRiderBehavior::m_random
    IL_003e:  ldc.r4     0.0
    IL_0043:  ldc.r4     1.
    IL_0048:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_004d:  ldc.r4     1.
    IL_0052:  ldarg.0
    IL_0053:  ldfld      class Game.SubsystemTime Game.ComponentDumpRiderBehavior::m_subsystemTime
    IL_0058:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
    IL_005d:  mul
    IL_005e:  bge.un.s   IL_0070

    IL_0060:  ldarg.0
    IL_0061:  ldfld      class Game.ComponentCreature Game.ComponentDumpRiderBehavior::m_componentCreature
    IL_0066:  callvirt   instance class Game.ComponentCreatureSounds Game.ComponentCreature::get_ComponentCreatureSounds()
    IL_006b:  callvirt   instance void Game.ComponentCreatureSounds::PlayPainSound()
    IL_0070:  ldarg.0
    IL_0071:  ldfld      class Game.Random Game.ComponentDumpRiderBehavior::m_random
    IL_0076:  ldc.r4     0.0
    IL_007b:  ldc.r4     1.
    IL_0080:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0085:  ldc.r4     3.
    IL_008a:  ldarg.0
    IL_008b:  ldfld      class Game.SubsystemTime Game.ComponentDumpRiderBehavior::m_subsystemTime
    IL_0090:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
    IL_0095:  mul
    IL_0096:  bge.un.s   IL_00cd

    IL_0098:  ldarg.0
    IL_0099:  ldarg.0
    IL_009a:  ldfld      class Game.Random Game.ComponentDumpRiderBehavior::m_random
    IL_009f:  ldc.r4     -0.5
    IL_00a4:  ldc.r4     0.5
    IL_00a9:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_00ae:  ldarg.0
    IL_00af:  ldfld      class Game.Random Game.ComponentDumpRiderBehavior::m_random
    IL_00b4:  ldc.r4     -0.5
    IL_00b9:  ldc.r4     1.5
    IL_00be:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_00c3:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00c8:  stfld      valuetype [Engine]Engine.Vector2 Game.ComponentDumpRiderBehavior::m_walkOrder
    IL_00cd:  ldarg.0
    IL_00ce:  ldfld      class Game.Random Game.ComponentDumpRiderBehavior::m_random
    IL_00d3:  ldc.r4     0.0
    IL_00d8:  ldc.r4     1.
    IL_00dd:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_00e2:  ldc.r4     2.5
    IL_00e7:  ldarg.0
    IL_00e8:  ldfld      class Game.SubsystemTime Game.ComponentDumpRiderBehavior::m_subsystemTime
    IL_00ed:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
    IL_00f2:  mul
    IL_00f3:  bge.un.s   IL_0115

    IL_00f5:  ldarg.0
    IL_00f6:  ldflda     valuetype [Engine]Engine.Vector2 Game.ComponentDumpRiderBehavior::m_turnOrder
    IL_00fb:  ldarg.0
    IL_00fc:  ldfld      class Game.Random Game.ComponentDumpRiderBehavior::m_random
    IL_0101:  ldc.r4     -1.
    IL_0106:  ldc.r4     1.
    IL_010b:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0110:  stfld      float32 [Engine]Engine.Vector2::X
    IL_0115:  ldarg.0
    IL_0116:  ldfld      class Game.Random Game.ComponentDumpRiderBehavior::m_random
    IL_011b:  ldc.r4     0.0
    IL_0120:  ldc.r4     1.
    IL_0125:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_012a:  ldc.r4     2.
    IL_012f:  ldarg.0
    IL_0130:  ldfld      class Game.SubsystemTime Game.ComponentDumpRiderBehavior::m_subsystemTime
    IL_0135:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
    IL_013a:  mul
    IL_013b:  bge.un     IL_0243

    IL_0140:  ldarg.0
    IL_0141:  ldfld      class Game.ComponentCreature Game.ComponentDumpRiderBehavior::m_componentCreature
    IL_0146:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_014b:  ldarg.0
    IL_014c:  ldfld      class Game.Random Game.ComponentDumpRiderBehavior::m_random
    IL_0151:  ldc.r4     0.89999998
    IL_0156:  ldc.r4     1.
    IL_015b:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0160:  callvirt   instance void Game.ComponentLocomotion::set_JumpOrder(float32)
    IL_0165:  ldarg.0
    IL_0166:  ldfld      class Game.ComponentMount Game.ComponentDumpRiderBehavior::m_componentMount
    IL_016b:  callvirt   instance class Game.ComponentRider Game.ComponentMount::get_Rider()
    IL_0170:  brfalse    IL_0243

    IL_0175:  ldarg.0
    IL_0176:  ldfld      class Game.SubsystemTime Game.ComponentDumpRiderBehavior::m_subsystemTime
    IL_017b:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0180:  ldarg.0
    IL_0181:  ldfld      float64 Game.ComponentDumpRiderBehavior::m_dumpStartTime
    IL_0186:  sub
    IL_0187:  ldc.r8     3.
    IL_0190:  ble.un     IL_0243

    IL_0195:  ldarg.0
    IL_0196:  ldfld      class Game.Random Game.ComponentDumpRiderBehavior::m_random
    IL_019b:  ldc.r4     0.0
    IL_01a0:  ldc.r4     1.
    IL_01a5:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_01aa:  ldc.r4     5.0000001e-002
    IL_01af:  bge.un.s   IL_01fc

    IL_01b1:  ldarg.0
    IL_01b2:  ldfld      class Game.ComponentMount Game.ComponentDumpRiderBehavior::m_componentMount
    IL_01b7:  callvirt   instance class Game.ComponentRider Game.ComponentMount::get_Rider()
    IL_01bc:  callvirt   instance void Game.ComponentRider::StartDismounting()
    IL_01c1:  ldarg.0
    IL_01c2:  ldfld      class Game.ComponentMount Game.ComponentDumpRiderBehavior::m_componentMount
    IL_01c7:  callvirt   instance class Game.ComponentRider Game.ComponentMount::get_Rider()
    IL_01cc:  callvirt   instance class Game.ComponentCreature Game.ComponentRider::get_ComponentCreature()
    IL_01d1:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_01d6:  ldarg.0
    IL_01d7:  ldfld      class Game.Random Game.ComponentDumpRiderBehavior::m_random
    IL_01dc:  ldc.r4     5.0000001e-002
    IL_01e1:  ldc.r4     0.2
    IL_01e6:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_01eb:  ldarg.0
    IL_01ec:  ldfld      class Game.ComponentCreature Game.ComponentDumpRiderBehavior::m_componentCreature
    IL_01f1:  ldc.i4.0
    IL_01f2:  ldstr      "Thrown from a mount"
    IL_01f7:  callvirt   instance void Game.ComponentHealth::Injure(float32,
                                                                    class Game.ComponentCreature,
                                                                    bool,
                                                                    string)
    IL_01fc:  ldarg.0
    IL_01fd:  ldfld      class Game.Random Game.ComponentDumpRiderBehavior::m_random
    IL_0202:  ldc.r4     0.0
    IL_0207:  ldc.r4     1.
    IL_020c:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0211:  ldc.r4     0.25
    IL_0216:  bge.un.s   IL_0243

    IL_0218:  ldarg.0
    IL_0219:  ldfld      class Game.ComponentMount Game.ComponentDumpRiderBehavior::m_componentMount
    IL_021e:  callvirt   instance class Game.ComponentRider Game.ComponentMount::get_Rider()
    IL_0223:  callvirt   instance class Game.ComponentCreature Game.ComponentRider::get_ComponentCreature()
    IL_0228:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_022d:  ldc.r4     5.0000001e-002
    IL_0232:  ldarg.0
    IL_0233:  ldfld      class Game.ComponentCreature Game.ComponentDumpRiderBehavior::m_componentCreature
    IL_0238:  ldc.i4.0
    IL_0239:  ldstr      "Thrown from a mount"
    IL_023e:  callvirt   instance void Game.ComponentHealth::Injure(float32,
                                                                    class Game.ComponentCreature,
                                                                    bool,
                                                                    string)
    IL_0243:  ldarg.0
    IL_0244:  ldfld      class Game.Random Game.ComponentDumpRiderBehavior::m_random
    IL_0249:  ldc.r4     0.0
    IL_024e:  ldc.r4     1.
    IL_0253:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0258:  ldc.r4     4.
    IL_025d:  ldarg.0
    IL_025e:  ldfld      class Game.SubsystemTime Game.ComponentDumpRiderBehavior::m_subsystemTime
    IL_0263:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
    IL_0268:  mul
    IL_0269:  bge.un.s   IL_0296

    IL_026b:  ldarg.0
    IL_026c:  ldarg.0
    IL_026d:  ldfld      class Game.Random Game.ComponentDumpRiderBehavior::m_random
    IL_0272:  ldc.r4     -3.
    IL_0277:  ldc.r4     3.
    IL_027c:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0281:  ldarg.0
    IL_0282:  ldflda     valuetype [Engine]Engine.Vector2 Game.ComponentDumpRiderBehavior::m_lookOrder
    IL_0287:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_028c:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0291:  stfld      valuetype [Engine]Engine.Vector2 Game.ComponentDumpRiderBehavior::m_lookOrder
    IL_0296:  ldarg.0
    IL_0297:  ldfld      class Game.Random Game.ComponentDumpRiderBehavior::m_random
    IL_029c:  ldc.r4     0.0
    IL_02a1:  ldc.r4     1.
    IL_02a6:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_02ab:  ldc.r4     0.25
    IL_02b0:  ldarg.0
    IL_02b1:  ldfld      class Game.SubsystemTime Game.ComponentDumpRiderBehavior::m_subsystemTime
    IL_02b6:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
    IL_02bb:  mul
    IL_02bc:  bge.un.s   IL_02c4

    IL_02be:  ldarg.0
    IL_02bf:  call       instance void Game.ComponentDumpRiderBehavior::TransitionToRandomDumpingBehavior()
    IL_02c4:  ldarg.0
    IL_02c5:  ldfld      class Game.ComponentCreature Game.ComponentDumpRiderBehavior::m_componentCreature
    IL_02ca:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_02cf:  ldarg.0
    IL_02d0:  ldfld      valuetype [Engine]Engine.Vector2 Game.ComponentDumpRiderBehavior::m_walkOrder
    IL_02d5:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_02da:  callvirt   instance void Game.ComponentLocomotion::set_WalkOrder(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>)
    IL_02df:  ldarg.0
    IL_02e0:  ldfld      class Game.ComponentCreature Game.ComponentDumpRiderBehavior::m_componentCreature
    IL_02e5:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_02ea:  ldarg.0
    IL_02eb:  ldfld      valuetype [Engine]Engine.Vector2 Game.ComponentDumpRiderBehavior::m_turnOrder
    IL_02f0:  callvirt   instance void Game.ComponentLocomotion::set_TurnOrder(valuetype [Engine]Engine.Vector2)
    IL_02f5:  ldarg.0
    IL_02f6:  ldfld      class Game.ComponentCreature Game.ComponentDumpRiderBehavior::m_componentCreature
    IL_02fb:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_0300:  ldarg.0
    IL_0301:  ldfld      valuetype [Engine]Engine.Vector2 Game.ComponentDumpRiderBehavior::m_lookOrder
    IL_0306:  callvirt   instance void Game.ComponentLocomotion::set_LookOrder(valuetype [Engine]Engine.Vector2)
    IL_030b:  ret
  } // end of method ComponentDumpRiderBehavior::'<Load>b__18_3'

  .method private hidebysig instance void 
          '<Load>b__18_4'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       121 (0x79)
    .maxstack  9
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentCreature Game.ComponentDumpRiderBehavior::m_componentCreature
    IL_0006:  callvirt   instance class Game.ComponentCreatureSounds Game.ComponentCreature::get_ComponentCreatureSounds()
    IL_000b:  callvirt   instance void Game.ComponentCreatureSounds::PlayPainSound()
    IL_0010:  ldarg.0
    IL_0011:  ldfld      class Game.ComponentPathfinding Game.ComponentDumpRiderBehavior::m_componentPathfinding
    IL_0016:  ldarg.0
    IL_0017:  ldfld      class Game.ComponentCreature Game.ComponentDumpRiderBehavior::m_componentCreature
    IL_001c:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0021:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0026:  ldarg.0
    IL_0027:  ldfld      class Game.Random Game.ComponentDumpRiderBehavior::m_random
    IL_002c:  ldc.r4     -15.
    IL_0031:  ldc.r4     15.
    IL_0036:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_003b:  ldc.r4     0.0
    IL_0040:  ldarg.0
    IL_0041:  ldfld      class Game.Random Game.ComponentDumpRiderBehavior::m_random
    IL_0046:  ldc.r4     -15.
    IL_004b:  ldc.r4     15.
    IL_0050:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0055:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_005a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_005f:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_0064:  ldc.r4     1.
    IL_0069:  ldc.r4     2.
    IL_006e:  ldc.i4.0
    IL_006f:  ldc.i4.0
    IL_0070:  ldc.i4.1
    IL_0071:  ldc.i4.0
    IL_0072:  ldnull
    IL_0073:  callvirt   instance void Game.ComponentPathfinding::SetDestination(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>,
                                                                                 float32,
                                                                                 float32,
                                                                                 int32,
                                                                                 bool,
                                                                                 bool,
                                                                                 bool,
                                                                                 class Game.ComponentBody)
    IL_0078:  ret
  } // end of method ComponentDumpRiderBehavior::'<Load>b__18_4'

  .method private hidebysig instance void 
          '<Load>b__18_5'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       176 (0xb0)
    .maxstack  3
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> V_0)
    IL_0000:  ldarg.0
    IL_0001:  callvirt   instance bool Game.ComponentBehavior::get_IsActive()
    IL_0006:  brtrue.s   IL_001a

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.StateMachine Game.ComponentDumpRiderBehavior::m_stateMachine
    IL_000e:  ldstr      "Inactive"
    IL_0013:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0018:  br.s       IL_0062

    IL_001a:  ldarg.0
    IL_001b:  ldfld      class Game.ComponentMount Game.ComponentDumpRiderBehavior::m_componentMount
    IL_0020:  callvirt   instance class Game.ComponentRider Game.ComponentMount::get_Rider()
    IL_0025:  brtrue.s   IL_003a

    IL_0027:  ldarg.0
    IL_0028:  ldc.r4     0.0
    IL_002d:  stfld      float32 Game.ComponentDumpRiderBehavior::m_importanceLevel
    IL_0032:  ldarg.0
    IL_0033:  call       instance void Game.ComponentDumpRiderBehavior::RunAway()
    IL_0038:  br.s       IL_0062

    IL_003a:  ldarg.0
    IL_003b:  ldfld      class Game.ComponentPathfinding Game.ComponentDumpRiderBehavior::m_componentPathfinding
    IL_0040:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPathfinding::get_Destination()
    IL_0045:  stloc.0
    IL_0046:  ldloca.s   V_0
    IL_0048:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_004d:  brfalse.s  IL_005c

    IL_004f:  ldarg.0
    IL_0050:  ldfld      class Game.ComponentPathfinding Game.ComponentDumpRiderBehavior::m_componentPathfinding
    IL_0055:  callvirt   instance bool Game.ComponentPathfinding::get_IsStuck()
    IL_005a:  brfalse.s  IL_0062

    IL_005c:  ldarg.0
    IL_005d:  call       instance void Game.ComponentDumpRiderBehavior::TransitionToRandomDumpingBehavior()
    IL_0062:  ldarg.0
    IL_0063:  ldfld      class Game.Random Game.ComponentDumpRiderBehavior::m_random
    IL_0068:  ldc.r4     0.0
    IL_006d:  ldc.r4     1.
    IL_0072:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0077:  ldc.r4     0.5
    IL_007c:  ldarg.0
    IL_007d:  ldfld      class Game.SubsystemTime Game.ComponentDumpRiderBehavior::m_subsystemTime
    IL_0082:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
    IL_0087:  mul
    IL_0088:  bge.un.s   IL_00af

    IL_008a:  ldarg.0
    IL_008b:  ldfld      class Game.ComponentCreature Game.ComponentDumpRiderBehavior::m_componentCreature
    IL_0090:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_0095:  ldc.r4     1.
    IL_009a:  callvirt   instance void Game.ComponentLocomotion::set_JumpOrder(float32)
    IL_009f:  ldarg.0
    IL_00a0:  ldfld      class Game.ComponentCreature Game.ComponentDumpRiderBehavior::m_componentCreature
    IL_00a5:  callvirt   instance class Game.ComponentCreatureSounds Game.ComponentCreature::get_ComponentCreatureSounds()
    IL_00aa:  callvirt   instance void Game.ComponentCreatureSounds::PlayPainSound()
    IL_00af:  ret
  } // end of method ComponentDumpRiderBehavior::'<Load>b__18_5'

  .method private hidebysig instance void 
          '<Load>b__18_6'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       28 (0x1c)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentCreature Game.ComponentDumpRiderBehavior::m_componentCreature
    IL_0006:  callvirt   instance class Game.ComponentCreatureSounds Game.ComponentCreature::get_ComponentCreatureSounds()
    IL_000b:  callvirt   instance void Game.ComponentCreatureSounds::PlayPainSound()
    IL_0010:  ldarg.0
    IL_0011:  ldfld      class Game.ComponentPathfinding Game.ComponentDumpRiderBehavior::m_componentPathfinding
    IL_0016:  callvirt   instance void Game.ComponentPathfinding::Stop()
    IL_001b:  ret
  } // end of method ComponentDumpRiderBehavior::'<Load>b__18_6'

  .method private hidebysig instance void 
          '<Load>b__18_7'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       88 (0x58)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  callvirt   instance bool Game.ComponentBehavior::get_IsActive()
    IL_0006:  brtrue.s   IL_001a

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.StateMachine Game.ComponentDumpRiderBehavior::m_stateMachine
    IL_000e:  ldstr      "Inactive"
    IL_0013:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0018:  br.s       IL_0032

    IL_001a:  ldarg.0
    IL_001b:  ldfld      class Game.ComponentMount Game.ComponentDumpRiderBehavior::m_componentMount
    IL_0020:  callvirt   instance class Game.ComponentRider Game.ComponentMount::get_Rider()
    IL_0025:  brtrue.s   IL_0032

    IL_0027:  ldarg.0
    IL_0028:  ldc.r4     0.0
    IL_002d:  stfld      float32 Game.ComponentDumpRiderBehavior::m_importanceLevel
    IL_0032:  ldarg.0
    IL_0033:  ldfld      class Game.SubsystemTime Game.ComponentDumpRiderBehavior::m_subsystemTime
    IL_0038:  ldc.r8     2.
    IL_0041:  ldc.r8     0.0
    IL_004a:  callvirt   instance bool Game.SubsystemTime::PeriodicGameTimeEvent(float64,
                                                                                 float64)
    IL_004f:  brfalse.s  IL_0057

    IL_0051:  ldarg.0
    IL_0052:  call       instance void Game.ComponentDumpRiderBehavior::TransitionToRandomDumpingBehavior()
    IL_0057:  ret
  } // end of method ComponentDumpRiderBehavior::'<Load>b__18_7'

  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.ComponentDumpRiderBehavior::get_UpdateOrder()
  } // end of property ComponentDumpRiderBehavior::UpdateOrder
  .property instance float32 ImportanceLevel()
  {
    .get instance float32 Game.ComponentDumpRiderBehavior::get_ImportanceLevel()
  } // end of property ComponentDumpRiderBehavior::ImportanceLevel
} // end of class Game.ComponentDumpRiderBehavior