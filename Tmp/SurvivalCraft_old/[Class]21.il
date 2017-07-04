.class public auto ansi beforefieldinit Game.ComponentHowlBehavior
       extends Game.ComponentBehavior
       implements Game.IUpdateable
{
  .field private class Game.SubsystemSky m_subsystemSky
  .field private class Game.SubsystemAudio m_subsystemAudio
  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.ComponentCreature m_componentCreature
  .field private class Game.ComponentPathfinding m_componentPathfinding
  .field private class Game.StateMachine m_stateMachine
  .field private float32 m_importanceLevel
  .field private string m_howlSoundName
  .field private float32 m_howlTime
  .field private float32 m_howlDuration
  .field private class Game.Random m_random
  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method ComponentHowlBehavior::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.StateMachine Game.ComponentHowlBehavior::m_stateMachine
    IL_0006:  callvirt   instance void Game.StateMachine::Update()
    IL_000b:  ret
  } // end of method ComponentHowlBehavior::Update

  .method public hidebysig specialname virtual 
          instance float32  get_ImportanceLevel() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentHowlBehavior::m_importanceLevel
    IL_0006:  ret
  } // end of method ComponentHowlBehavior::get_ImportanceLevel

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       206 (0xce)
    .maxstack  5
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemSky>(bool)
    IL_000d:  stfld      class Game.SubsystemSky Game.ComponentHowlBehavior::m_subsystemSky
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_001f:  stfld      class Game.SubsystemTime Game.ComponentHowlBehavior::m_subsystemTime
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemAudio>(bool)
    IL_0031:  stfld      class Game.SubsystemAudio Game.ComponentHowlBehavior::m_subsystemAudio
    IL_0036:  ldarg.0
    IL_0037:  ldarg.0
    IL_0038:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_003d:  ldc.i4.1
    IL_003e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreature>(bool)
    IL_0043:  stfld      class Game.ComponentCreature Game.ComponentHowlBehavior::m_componentCreature
    IL_0048:  ldarg.0
    IL_0049:  ldarg.0
    IL_004a:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_004f:  ldc.i4.1
    IL_0050:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentPathfinding>(bool)
    IL_0055:  stfld      class Game.ComponentPathfinding Game.ComponentHowlBehavior::m_componentPathfinding
    IL_005a:  ldarg.0
    IL_005b:  ldarg.1
    IL_005c:  ldstr      "HowlSoundName"
    IL_0061:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string)
    IL_0066:  stfld      string Game.ComponentHowlBehavior::m_howlSoundName
    IL_006b:  ldarg.0
    IL_006c:  ldfld      class Game.StateMachine Game.ComponentHowlBehavior::m_stateMachine
    IL_0071:  ldstr      "Inactive"
    IL_0076:  ldarg.0
    IL_0077:  ldftn      instance void Game.ComponentHowlBehavior::'<Load>b__16_0'()
    IL_007d:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0082:  ldarg.0
    IL_0083:  ldftn      instance void Game.ComponentHowlBehavior::'<Load>b__16_1'()
    IL_0089:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_008e:  ldnull
    IL_008f:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_0094:  ldarg.0
    IL_0095:  ldfld      class Game.StateMachine Game.ComponentHowlBehavior::m_stateMachine
    IL_009a:  ldstr      "Howl"
    IL_009f:  ldarg.0
    IL_00a0:  ldftn      instance void Game.ComponentHowlBehavior::'<Load>b__16_2'()
    IL_00a6:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00ab:  ldarg.0
    IL_00ac:  ldftn      instance void Game.ComponentHowlBehavior::'<Load>b__16_3'()
    IL_00b2:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00b7:  ldnull
    IL_00b8:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_00bd:  ldarg.0
    IL_00be:  ldfld      class Game.StateMachine Game.ComponentHowlBehavior::m_stateMachine
    IL_00c3:  ldstr      "Inactive"
    IL_00c8:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_00cd:  ret
  } // end of method ComponentHowlBehavior::Load

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.StateMachine::.ctor()
    IL_0006:  stfld      class Game.StateMachine Game.ComponentHowlBehavior::m_stateMachine
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void Game.Random::.ctor()
    IL_0011:  stfld      class Game.Random Game.ComponentHowlBehavior::m_random
    IL_0016:  ldarg.0
    IL_0017:  call       instance void Game.ComponentBehavior::.ctor()
    IL_001c:  ret
  } // end of method ComponentHowlBehavior::.ctor

  .method private hidebysig instance void 
          '<Load>b__16_0'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.r4     0.0
    IL_0006:  stfld      float32 Game.ComponentHowlBehavior::m_importanceLevel
    IL_000b:  ret
  } // end of method ComponentHowlBehavior::'<Load>b__16_0'

  .method private hidebysig instance void 
          '<Load>b__16_1'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       122 (0x7a)
    .maxstack  4
    IL_0000:  ldarg.0
    IL_0001:  callvirt   instance bool Game.ComponentBehavior::get_IsActive()
    IL_0006:  brfalse.s  IL_0018

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.StateMachine Game.ComponentHowlBehavior::m_stateMachine
    IL_000e:  ldstr      "Howl"
    IL_0013:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0018:  ldarg.0
    IL_0019:  ldfld      class Game.SubsystemSky Game.ComponentHowlBehavior::m_subsystemSky
    IL_001e:  callvirt   instance float32 Game.SubsystemSky::get_SkyLightIntensity()
    IL_0023:  ldc.r4     0.1
    IL_0028:  bge.un.s   IL_006e

    IL_002a:  ldarg.0
    IL_002b:  ldfld      class Game.Random Game.ComponentHowlBehavior::m_random
    IL_0030:  ldc.r4     0.0
    IL_0035:  ldc.r4     1.
    IL_003a:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_003f:  ldc.r4     1.5e-002
    IL_0044:  ldarg.0
    IL_0045:  ldfld      class Game.SubsystemTime Game.ComponentHowlBehavior::m_subsystemTime
    IL_004a:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
    IL_004f:  mul
    IL_0050:  bge.un.s   IL_0079

    IL_0052:  ldarg.0
    IL_0053:  ldarg.0
    IL_0054:  ldfld      class Game.Random Game.ComponentHowlBehavior::m_random
    IL_0059:  ldc.r4     1.
    IL_005e:  ldc.r4     3.
    IL_0063:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0068:  stfld      float32 Game.ComponentHowlBehavior::m_importanceLevel
    IL_006d:  ret

    IL_006e:  ldarg.0
    IL_006f:  ldc.r4     0.0
    IL_0074:  stfld      float32 Game.ComponentHowlBehavior::m_importanceLevel
    IL_0079:  ret
  } // end of method ComponentHowlBehavior::'<Load>b__16_1'

  .method private hidebysig instance void 
          '<Load>b__16_2'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       61 (0x3d)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.r4     0.0
    IL_0006:  stfld      float32 Game.ComponentHowlBehavior::m_howlTime
    IL_000b:  ldarg.0
    IL_000c:  ldarg.0
    IL_000d:  ldfld      class Game.Random Game.ComponentHowlBehavior::m_random
    IL_0012:  ldc.r4     5.
    IL_0017:  ldc.r4     6.
    IL_001c:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0021:  stfld      float32 Game.ComponentHowlBehavior::m_howlDuration
    IL_0026:  ldarg.0
    IL_0027:  ldfld      class Game.ComponentPathfinding Game.ComponentHowlBehavior::m_componentPathfinding
    IL_002c:  callvirt   instance void Game.ComponentPathfinding::Stop()
    IL_0031:  ldarg.0
    IL_0032:  ldc.r4     10.
    IL_0037:  stfld      float32 Game.ComponentHowlBehavior::m_importanceLevel
    IL_003c:  ret
  } // end of method ComponentHowlBehavior::'<Load>b__16_2'

  .method private hidebysig instance void 
          '<Load>b__16_3'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       209 (0xd1)
    .maxstack  7
    .locals init (float32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  callvirt   instance bool Game.ComponentBehavior::get_IsActive()
    IL_0006:  brtrue.s   IL_0018

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.StateMachine Game.ComponentHowlBehavior::m_stateMachine
    IL_000e:  ldstr      "Inactive"
    IL_0013:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0018:  ldarg.0
    IL_0019:  ldfld      class Game.ComponentCreature Game.ComponentHowlBehavior::m_componentCreature
    IL_001e:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_0023:  ldarg.0
    IL_0024:  ldfld      class Game.ComponentCreature Game.ComponentHowlBehavior::m_componentCreature
    IL_0029:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_002e:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.ComponentLocomotion::get_LookOrder()
    IL_0033:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0038:  ldc.r4     2.
    IL_003d:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0042:  callvirt   instance void Game.ComponentLocomotion::set_LookOrder(valuetype [Engine]Engine.Vector2)
    IL_0047:  ldarg.0
    IL_0048:  ldfld      float32 Game.ComponentHowlBehavior::m_howlTime
    IL_004d:  ldarg.0
    IL_004e:  ldfld      class Game.SubsystemTime Game.ComponentHowlBehavior::m_subsystemTime
    IL_0053:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
    IL_0058:  add
    IL_0059:  stloc.0
    IL_005a:  ldarg.0
    IL_005b:  ldfld      float32 Game.ComponentHowlBehavior::m_howlTime
    IL_0060:  ldc.r4     0.5
    IL_0065:  bgt.un.s   IL_00b0

    IL_0067:  ldloc.0
    IL_0068:  ldc.r4     0.5
    IL_006d:  ble.un.s   IL_00b0

    IL_006f:  ldarg.0
    IL_0070:  ldfld      class Game.SubsystemAudio Game.ComponentHowlBehavior::m_subsystemAudio
    IL_0075:  ldarg.0
    IL_0076:  ldfld      string Game.ComponentHowlBehavior::m_howlSoundName
    IL_007b:  ldc.r4     1.
    IL_0080:  ldarg.0
    IL_0081:  ldfld      class Game.Random Game.ComponentHowlBehavior::m_random
    IL_0086:  ldc.r4     -0.1
    IL_008b:  ldc.r4     0.1
    IL_0090:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0095:  ldarg.0
    IL_0096:  ldfld      class Game.ComponentCreature Game.ComponentHowlBehavior::m_componentCreature
    IL_009b:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_00a0:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_00a5:  ldc.r4     10.
    IL_00aa:  ldc.i4.1
    IL_00ab:  callvirt   instance void Game.SubsystemAudio::PlayRandomSound(string,
                                                                            float32,
                                                                            float32,
                                                                            valuetype [Engine]Engine.Vector3,
                                                                            float32,
                                                                            bool)
    IL_00b0:  ldarg.0
    IL_00b1:  ldloc.0
    IL_00b2:  stfld      float32 Game.ComponentHowlBehavior::m_howlTime
    IL_00b7:  ldarg.0
    IL_00b8:  ldfld      float32 Game.ComponentHowlBehavior::m_howlTime
    IL_00bd:  ldarg.0
    IL_00be:  ldfld      float32 Game.ComponentHowlBehavior::m_howlDuration
    IL_00c3:  blt.un.s   IL_00d0

    IL_00c5:  ldarg.0
    IL_00c6:  ldc.r4     0.0
    IL_00cb:  stfld      float32 Game.ComponentHowlBehavior::m_importanceLevel
    IL_00d0:  ret
  } // end of method ComponentHowlBehavior::'<Load>b__16_3'

  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.ComponentHowlBehavior::get_UpdateOrder()
  } // end of property ComponentHowlBehavior::UpdateOrder
  .property instance float32 ImportanceLevel()
  {
    .get instance float32 Game.ComponentHowlBehavior::get_ImportanceLevel()
  } // end of property ComponentHowlBehavior::ImportanceLevel
} // end of class Game.ComponentHowlBehavior