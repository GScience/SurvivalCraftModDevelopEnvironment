.class public auto ansi beforefieldinit Game.ComponentSummonBehavior
       extends Game.ComponentBehavior
       implements Game.IUpdateable
{
  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.ComponentCreature m_componentCreature
  .field private class Game.ComponentPathfinding m_componentPathfinding
  .field private class Game.StateMachine m_stateMachine
  .field private float32 m_importanceLevel
  .field private class Game.Random m_random
  .field private bool m_isEnabled
  .field private float64 m_summonedTime
  .field private float64 m_stoppedTime
  .field private class Game.ComponentBody '<SummonTarget>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname instance class Game.ComponentBody 
          get_SummonTarget() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentBody Game.ComponentSummonBehavior::'<SummonTarget>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentSummonBehavior::get_SummonTarget

  .method public hidebysig specialname instance void 
          set_SummonTarget(class Game.ComponentBody 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.ComponentBody Game.ComponentSummonBehavior::'<SummonTarget>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentSummonBehavior::set_SummonTarget

  .method public hidebysig specialname instance bool 
          get_IsEnabled() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.ComponentSummonBehavior::m_isEnabled
    IL_0006:  ret
  } // end of method ComponentSummonBehavior::get_IsEnabled

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method ComponentSummonBehavior::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.StateMachine Game.ComponentSummonBehavior::m_stateMachine
    IL_0006:  callvirt   instance void Game.StateMachine::Update()
    IL_000b:  ret
  } // end of method ComponentSummonBehavior::Update

  .method public hidebysig specialname virtual 
          instance float32  get_ImportanceLevel() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentSummonBehavior::m_importanceLevel
    IL_0006:  ret
  } // end of method ComponentSummonBehavior::get_ImportanceLevel

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       170 (0xaa)
    .maxstack  5
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_000d:  stfld      class Game.SubsystemTime Game.ComponentSummonBehavior::m_subsystemTime
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreature>(bool)
    IL_001f:  stfld      class Game.ComponentCreature Game.ComponentSummonBehavior::m_componentCreature
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentPathfinding>(bool)
    IL_0031:  stfld      class Game.ComponentPathfinding Game.ComponentSummonBehavior::m_componentPathfinding
    IL_0036:  ldarg.0
    IL_0037:  ldarg.1
    IL_0038:  ldstr      "IsEnabled"
    IL_003d:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<bool>(string)
    IL_0042:  stfld      bool Game.ComponentSummonBehavior::m_isEnabled
    IL_0047:  ldarg.0
    IL_0048:  ldfld      class Game.StateMachine Game.ComponentSummonBehavior::m_stateMachine
    IL_004d:  ldstr      "Inactive"
    IL_0052:  ldarg.0
    IL_0053:  ldftn      instance void Game.ComponentSummonBehavior::'<Load>b__20_0'()
    IL_0059:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_005e:  ldarg.0
    IL_005f:  ldftn      instance void Game.ComponentSummonBehavior::'<Load>b__20_1'()
    IL_0065:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_006a:  ldnull
    IL_006b:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_0070:  ldarg.0
    IL_0071:  ldfld      class Game.StateMachine Game.ComponentSummonBehavior::m_stateMachine
    IL_0076:  ldstr      "FollowTarget"
    IL_007b:  ldarg.0
    IL_007c:  ldftn      instance void Game.ComponentSummonBehavior::'<Load>b__20_3'()
    IL_0082:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0087:  ldarg.0
    IL_0088:  ldftn      instance void Game.ComponentSummonBehavior::'<Load>b__20_4'()
    IL_008e:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0093:  ldnull
    IL_0094:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_0099:  ldarg.0
    IL_009a:  ldfld      class Game.StateMachine Game.ComponentSummonBehavior::m_stateMachine
    IL_009f:  ldstr      "Inactive"
    IL_00a4:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_00a9:  ret
  } // end of method ComponentSummonBehavior::Load

  .method private hidebysig instance void 
          FollowTarget(bool noDelay) cil managed
  {
    // 代码大小       287 (0x11f)
    .maxstack  9
    .locals init (float32 V_0,
             valuetype [Engine]Engine.Vector3 V_1,
             float32 V_2)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.ComponentBody Game.ComponentSummonBehavior::get_SummonTarget()
    IL_0006:  brfalse    IL_011e

    IL_000b:  ldarg.1
    IL_000c:  brtrue.s   IL_0039

    IL_000e:  ldarg.0
    IL_000f:  ldfld      class Game.Random Game.ComponentSummonBehavior::m_random
    IL_0014:  ldc.r4     0.0
    IL_0019:  ldc.r4     1.
    IL_001e:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0023:  ldc.r4     5.
    IL_0028:  ldarg.0
    IL_0029:  ldfld      class Game.SubsystemTime Game.ComponentSummonBehavior::m_subsystemTime
    IL_002e:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
    IL_0033:  mul
    IL_0034:  bge.un     IL_011e

    IL_0039:  ldarg.0
    IL_003a:  ldfld      class Game.ComponentCreature Game.ComponentSummonBehavior::m_componentCreature
    IL_003f:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0044:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0049:  ldarg.0
    IL_004a:  call       instance class Game.ComponentBody Game.ComponentSummonBehavior::get_SummonTarget()
    IL_004f:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0054:  call       float32 [Engine]Engine.Vector3::Distance(valuetype [Engine]Engine.Vector3,
                                                                  valuetype [Engine]Engine.Vector3)
    IL_0059:  stloc.0
    IL_005a:  ldloc.0
    IL_005b:  ldc.r4     4.
    IL_0060:  ble.un     IL_011e

    IL_0065:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_006a:  ldarg.0
    IL_006b:  call       instance class Game.ComponentBody Game.ComponentSummonBehavior::get_SummonTarget()
    IL_0070:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0075:  ldarg.0
    IL_0076:  ldfld      class Game.ComponentCreature Game.ComponentSummonBehavior::m_componentCreature
    IL_007b:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0080:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0085:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_008a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Cross(valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3)
    IL_008f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0094:  stloc.1
    IL_0095:  ldloc.1
    IL_0096:  ldc.r4     0.75
    IL_009b:  ldarg.0
    IL_009c:  callvirt   instance int32 [System.Runtime]System.Object::GetHashCode()
    IL_00a1:  ldc.i4.2
    IL_00a2:  rem
    IL_00a3:  brfalse.s  IL_00a8

    IL_00a5:  ldc.i4.1
    IL_00a6:  br.s       IL_00a9

    IL_00a8:  ldc.i4.m1
    IL_00a9:  conv.r4
    IL_00aa:  mul
    IL_00ab:  ldc.i4.1
    IL_00ac:  ldarg.0
    IL_00ad:  callvirt   instance int32 [System.Runtime]System.Object::GetHashCode()
    IL_00b2:  ldc.i4.3
    IL_00b3:  rem
    IL_00b4:  add
    IL_00b5:  conv.r4
    IL_00b6:  mul
    IL_00b7:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_00bc:  stloc.1
    IL_00bd:  ldc.r4     0.40000001
    IL_00c2:  ldc.r4     1.
    IL_00c7:  ldc.r4     0.25
    IL_00cc:  ldloc.0
    IL_00cd:  ldc.r4     5.
    IL_00d2:  sub
    IL_00d3:  mul
    IL_00d4:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_00d9:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_00de:  stloc.2
    IL_00df:  ldarg.0
    IL_00e0:  ldfld      class Game.ComponentPathfinding Game.ComponentSummonBehavior::m_componentPathfinding
    IL_00e5:  ldarg.0
    IL_00e6:  call       instance class Game.ComponentBody Game.ComponentSummonBehavior::get_SummonTarget()
    IL_00eb:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_00f0:  ldloc.1
    IL_00f1:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00f6:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_00fb:  ldloc.2
    IL_00fc:  ldc.r4     3.75
    IL_0101:  ldc.i4     0x7d0
    IL_0106:  ldc.i4.1
    IL_0107:  ldc.i4.0
    IL_0108:  ldc.i4.1
    IL_0109:  ldnull
    IL_010a:  callvirt   instance void Game.ComponentPathfinding::SetDestination(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>,
                                                                                 float32,
                                                                                 float32,
                                                                                 int32,
                                                                                 bool,
                                                                                 bool,
                                                                                 bool,
                                                                                 class Game.ComponentBody)
    IL_010f:  ldarg.0
    IL_0110:  ldc.r8     -1.
    IL_0119:  stfld      float64 Game.ComponentSummonBehavior::m_stoppedTime
    IL_011e:  ret
  } // end of method ComponentSummonBehavior::FollowTarget

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.StateMachine::.ctor()
    IL_0006:  stfld      class Game.StateMachine Game.ComponentSummonBehavior::m_stateMachine
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void Game.Random::.ctor()
    IL_0011:  stfld      class Game.Random Game.ComponentSummonBehavior::m_random
    IL_0016:  ldarg.0
    IL_0017:  call       instance void Game.ComponentBehavior::.ctor()
    IL_001c:  ret
  } // end of method ComponentSummonBehavior::.ctor

  .method private hidebysig instance void 
          '<Load>b__20_0'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       34 (0x22)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.r4     0.0
    IL_0006:  stfld      float32 Game.ComponentSummonBehavior::m_importanceLevel
    IL_000b:  ldarg.0
    IL_000c:  ldnull
    IL_000d:  call       instance void Game.ComponentSummonBehavior::set_SummonTarget(class Game.ComponentBody)
    IL_0012:  ldarg.0
    IL_0013:  ldc.r8     0.0
    IL_001c:  stfld      float64 Game.ComponentSummonBehavior::m_summonedTime
    IL_0021:  ret
  } // end of method ComponentSummonBehavior::'<Load>b__20_0'

  .method private hidebysig instance void 
          '<Load>b__20_1'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       102 (0x66)
    .maxstack  4
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.ComponentSummonBehavior::m_isEnabled
    IL_0006:  brfalse.s  IL_004d

    IL_0008:  ldarg.0
    IL_0009:  call       instance class Game.ComponentBody Game.ComponentSummonBehavior::get_SummonTarget()
    IL_000e:  brfalse.s  IL_004d

    IL_0010:  ldarg.0
    IL_0011:  ldfld      float64 Game.ComponentSummonBehavior::m_summonedTime
    IL_0016:  ldc.r8     0.0
    IL_001f:  bne.un.s   IL_004d

    IL_0021:  ldarg.0
    IL_0022:  ldfld      class Game.SubsystemTime Game.ComponentSummonBehavior::m_subsystemTime
    IL_0027:  ldarg.0
    IL_0028:  ldfld      class Game.SubsystemTime Game.ComponentSummonBehavior::m_subsystemTime
    IL_002d:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0032:  ldc.r8     0.5
    IL_003b:  add
    IL_003c:  ldarg.0
    IL_003d:  ldftn      instance void Game.ComponentSummonBehavior::'<Load>b__20_2'()
    IL_0043:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0048:  callvirt   instance void Game.SubsystemTime::QueueGameTimeDelayedExecution(float64,
                                                                                         class [System.Runtime]System.Action)
    IL_004d:  ldarg.0
    IL_004e:  callvirt   instance bool Game.ComponentBehavior::get_IsActive()
    IL_0053:  brfalse.s  IL_0065

    IL_0055:  ldarg.0
    IL_0056:  ldfld      class Game.StateMachine Game.ComponentSummonBehavior::m_stateMachine
    IL_005b:  ldstr      "FollowTarget"
    IL_0060:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0065:  ret
  } // end of method ComponentSummonBehavior::'<Load>b__20_1'

  .method private hidebysig instance void 
          '<Load>b__20_2'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       46 (0x2e)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentCreature Game.ComponentSummonBehavior::m_componentCreature
    IL_0006:  callvirt   instance class Game.ComponentCreatureSounds Game.ComponentCreature::get_ComponentCreatureSounds()
    IL_000b:  ldc.i4.1
    IL_000c:  callvirt   instance void Game.ComponentCreatureSounds::PlayIdleSound(bool)
    IL_0011:  ldarg.0
    IL_0012:  ldc.r4     270.
    IL_0017:  stfld      float32 Game.ComponentSummonBehavior::m_importanceLevel
    IL_001c:  ldarg.0
    IL_001d:  ldarg.0
    IL_001e:  ldfld      class Game.SubsystemTime Game.ComponentSummonBehavior::m_subsystemTime
    IL_0023:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0028:  stfld      float64 Game.ComponentSummonBehavior::m_summonedTime
    IL_002d:  ret
  } // end of method ComponentSummonBehavior::'<Load>b__20_2'

  .method private hidebysig instance void 
          '<Load>b__20_3'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  call       instance void Game.ComponentSummonBehavior::FollowTarget(bool)
    IL_0007:  ret
  } // end of method ComponentSummonBehavior::'<Load>b__20_3'

  .method private hidebysig instance void 
          '<Load>b__20_4'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       212 (0xd4)
    .maxstack  2
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> V_0)
    IL_0000:  ldarg.0
    IL_0001:  callvirt   instance bool Game.ComponentBehavior::get_IsActive()
    IL_0006:  brtrue.s   IL_001d

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.StateMachine Game.ComponentSummonBehavior::m_stateMachine
    IL_000e:  ldstr      "Inactive"
    IL_0013:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0018:  br         IL_00bb

    IL_001d:  ldarg.0
    IL_001e:  call       instance class Game.ComponentBody Game.ComponentSummonBehavior::get_SummonTarget()
    IL_0023:  brfalse.s  IL_004f

    IL_0025:  ldarg.0
    IL_0026:  ldfld      class Game.ComponentPathfinding Game.ComponentSummonBehavior::m_componentPathfinding
    IL_002b:  callvirt   instance bool Game.ComponentPathfinding::get_IsStuck()
    IL_0030:  brtrue.s   IL_004f

    IL_0032:  ldarg.0
    IL_0033:  ldfld      class Game.SubsystemTime Game.ComponentSummonBehavior::m_subsystemTime
    IL_0038:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_003d:  ldarg.0
    IL_003e:  ldfld      float64 Game.ComponentSummonBehavior::m_summonedTime
    IL_0043:  sub
    IL_0044:  ldc.r8     30.
    IL_004d:  ble.un.s   IL_005c

    IL_004f:  ldarg.0
    IL_0050:  ldc.r4     0.0
    IL_0055:  stfld      float32 Game.ComponentSummonBehavior::m_importanceLevel
    IL_005a:  br.s       IL_00bb

    IL_005c:  ldarg.0
    IL_005d:  ldfld      class Game.ComponentPathfinding Game.ComponentSummonBehavior::m_componentPathfinding
    IL_0062:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPathfinding::get_Destination()
    IL_0067:  stloc.0
    IL_0068:  ldloca.s   V_0
    IL_006a:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_006f:  brtrue.s   IL_00bb

    IL_0071:  ldarg.0
    IL_0072:  ldfld      float64 Game.ComponentSummonBehavior::m_stoppedTime
    IL_0077:  ldc.r8     0.0
    IL_0080:  bge.un.s   IL_0093

    IL_0082:  ldarg.0
    IL_0083:  ldarg.0
    IL_0084:  ldfld      class Game.SubsystemTime Game.ComponentSummonBehavior::m_subsystemTime
    IL_0089:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_008e:  stfld      float64 Game.ComponentSummonBehavior::m_stoppedTime
    IL_0093:  ldarg.0
    IL_0094:  ldfld      class Game.SubsystemTime Game.ComponentSummonBehavior::m_subsystemTime
    IL_0099:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_009e:  ldarg.0
    IL_009f:  ldfld      float64 Game.ComponentSummonBehavior::m_stoppedTime
    IL_00a4:  sub
    IL_00a5:  ldc.r8     6.
    IL_00ae:  ble.un.s   IL_00bb

    IL_00b0:  ldarg.0
    IL_00b1:  ldc.r4     0.0
    IL_00b6:  stfld      float32 Game.ComponentSummonBehavior::m_importanceLevel
    IL_00bb:  ldarg.0
    IL_00bc:  ldc.i4.0
    IL_00bd:  call       instance void Game.ComponentSummonBehavior::FollowTarget(bool)
    IL_00c2:  ldarg.0
    IL_00c3:  ldfld      class Game.ComponentCreature Game.ComponentSummonBehavior::m_componentCreature
    IL_00c8:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_00cd:  ldc.i4.1
    IL_00ce:  callvirt   instance void Game.ComponentCreatureModel::set_LookRandomOrder(bool)
    IL_00d3:  ret
  } // end of method ComponentSummonBehavior::'<Load>b__20_4'

  .property instance class Game.ComponentBody
          SummonTarget()
  {
    .get instance class Game.ComponentBody Game.ComponentSummonBehavior::get_SummonTarget()
    .set instance void Game.ComponentSummonBehavior::set_SummonTarget(class Game.ComponentBody)
  } // end of property ComponentSummonBehavior::SummonTarget
  .property instance bool IsEnabled()
  {
    .get instance bool Game.ComponentSummonBehavior::get_IsEnabled()
  } // end of property ComponentSummonBehavior::IsEnabled
  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.ComponentSummonBehavior::get_UpdateOrder()
  } // end of property ComponentSummonBehavior::UpdateOrder
  .property instance float32 ImportanceLevel()
  {
    .get instance float32 Game.ComponentSummonBehavior::get_ImportanceLevel()
  } // end of property ComponentSummonBehavior::ImportanceLevel
} // end of class Game.ComponentSummonBehavior