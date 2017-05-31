.class public auto ansi beforefieldinit Game.ComponentChaseBehavior
       extends Game.ComponentBehavior
       implements Game.IUpdateable
{
  .field private class Game.SubsystemGameInfo m_subsystemGameInfo
  .field private class Game.SubsystemPlayer m_subsystemPlayer
  .field private class Game.SubsystemSky m_subsystemSky
  .field private class Game.SubsystemBodies m_subsystemBodies
  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.SubsystemNoise m_subsystemNoise
  .field private class Game.ComponentCreature m_componentCreature
  .field private class Game.ComponentPathfinding m_componentPathfinding
  .field private class Game.ComponentMiner m_componentMiner
  .field private class Game.ComponentRandomFeedBehavior m_componentFeedBehavior
  .field private class Game.ComponentCreatureModel m_componentCreatureModel
  .field private class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> m_componentBodies
  .field private class Game.Random m_random
  .field private class Game.StateMachine m_stateMachine
  .field private float32 m_dayChaseRange
  .field private float32 m_nightChaseRange
  .field private float32 m_dayChaseTime
  .field private float32 m_nightChaseTime
  .field private float32 m_chaseNonPlayerProbability
  .field private float32 m_chaseWhenAttackedProbability
  .field private float32 m_chaseOnTouchProbability
  .field private valuetype Game.CreatureCategory m_autoChaseMask
  .field private float32 m_importanceLevel
  .field private float32 m_targetUnsuitableTime
  .field private float32 m_targetInRangeTime
  .field private float64 m_nextUpdateTime
  .field private class Game.ComponentCreature m_target
  .field private float32 m_dt
  .field private float32 m_range
  .field private float32 m_chaseTime
  .field private bool m_isPersistent
  .field private float32 m_autoChaseSuppressionTime
  .method public hidebysig specialname instance class Game.ComponentCreature 
          get_Target() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentCreature Game.ComponentChaseBehavior::m_target
    IL_0006:  ret
  } // end of method ComponentChaseBehavior::get_Target

  .method public hidebysig instance void 
          Attack(class Game.ComponentCreature componentCreature,
                 float32 maxRange,
                 float32 maxChaseTime,
                 bool isPersistent) cil managed
  {
    // 代码大小       56 (0x38)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.ComponentCreature Game.ComponentChaseBehavior::m_target
    IL_0007:  ldarg.0
    IL_0008:  ldc.r8     0.0
    IL_0011:  stfld      float64 Game.ComponentChaseBehavior::m_nextUpdateTime
    IL_0016:  ldarg.0
    IL_0017:  ldarg.2
    IL_0018:  stfld      float32 Game.ComponentChaseBehavior::m_range
    IL_001d:  ldarg.0
    IL_001e:  ldarg.3
    IL_001f:  stfld      float32 Game.ComponentChaseBehavior::m_chaseTime
    IL_0024:  ldarg.0
    IL_0025:  ldarg.s    isPersistent
    IL_0027:  stfld      bool Game.ComponentChaseBehavior::m_isPersistent
    IL_002c:  ldarg.0
    IL_002d:  ldc.r4     200.
    IL_0032:  stfld      float32 Game.ComponentChaseBehavior::m_importanceLevel
    IL_0037:  ret
  } // end of method ComponentChaseBehavior::Attack

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method ComponentChaseBehavior::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       375 (0x177)
    .maxstack  4
    .locals init (class Game.ComponentBody V_0,
             float32 V_1,
             valuetype [Engine]Engine.Matrix V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  ldfld      float32 Game.ComponentChaseBehavior::m_autoChaseSuppressionTime
    IL_0007:  ldarg.1
    IL_0008:  sub
    IL_0009:  stfld      float32 Game.ComponentChaseBehavior::m_autoChaseSuppressionTime
    IL_000e:  ldarg.0
    IL_000f:  callvirt   instance bool Game.ComponentBehavior::get_IsActive()
    IL_0014:  brfalse    IL_0106

    IL_0019:  ldarg.0
    IL_001a:  ldfld      class Game.ComponentCreature Game.ComponentChaseBehavior::m_target
    IL_001f:  brfalse    IL_0106

    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  ldfld      float32 Game.ComponentChaseBehavior::m_chaseTime
    IL_002b:  ldarg.1
    IL_002c:  sub
    IL_002d:  stfld      float32 Game.ComponentChaseBehavior::m_chaseTime
    IL_0032:  ldarg.0
    IL_0033:  ldfld      class Game.ComponentCreature Game.ComponentChaseBehavior::m_componentCreature
    IL_0038:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_003d:  ldarg.0
    IL_003e:  ldfld      class Game.ComponentCreature Game.ComponentChaseBehavior::m_target
    IL_0043:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_0048:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentCreatureModel::get_EyePosition()
    IL_004d:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_0052:  callvirt   instance void Game.ComponentCreatureModel::set_LookAtOrder(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>)
    IL_0057:  ldarg.0
    IL_0058:  ldarg.0
    IL_0059:  ldfld      class Game.ComponentCreature Game.ComponentChaseBehavior::m_target
    IL_005e:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0063:  call       instance bool Game.ComponentChaseBehavior::IsTargetInAttackRange(class Game.ComponentBody)
    IL_0068:  brfalse.s  IL_0076

    IL_006a:  ldarg.0
    IL_006b:  ldfld      class Game.ComponentCreatureModel Game.ComponentChaseBehavior::m_componentCreatureModel
    IL_0070:  ldc.i4.1
    IL_0071:  callvirt   instance void Game.ComponentCreatureModel::set_AttackOrder(bool)
    IL_0076:  ldarg.0
    IL_0077:  ldfld      class Game.ComponentCreatureModel Game.ComponentChaseBehavior::m_componentCreatureModel
    IL_007c:  callvirt   instance bool Game.ComponentCreatureModel::get_IsAttackHitMoment()
    IL_0081:  brfalse    IL_0106

    IL_0086:  ldarg.0
    IL_0087:  ldarg.0
    IL_0088:  ldfld      class Game.ComponentCreature Game.ComponentChaseBehavior::m_target
    IL_008d:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0092:  call       instance class Game.ComponentBody Game.ComponentChaseBehavior::GetHitBody(class Game.ComponentBody)
    IL_0097:  stloc.0
    IL_0098:  ldloc.0
    IL_0099:  brfalse.s  IL_0106

    IL_009b:  ldarg.0
    IL_009c:  ldfld      bool Game.ComponentChaseBehavior::m_isPersistent
    IL_00a1:  brtrue.s   IL_00aa

    IL_00a3:  ldc.r4     2.
    IL_00a8:  br.s       IL_00bf

    IL_00aa:  ldarg.0
    IL_00ab:  ldfld      class Game.Random Game.ComponentChaseBehavior::m_random
    IL_00b0:  ldc.r4     8.
    IL_00b5:  ldc.r4     10.
    IL_00ba:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_00bf:  stloc.1
    IL_00c0:  ldarg.0
    IL_00c1:  ldarg.0
    IL_00c2:  ldfld      float32 Game.ComponentChaseBehavior::m_chaseTime
    IL_00c7:  ldloc.1
    IL_00c8:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_00cd:  stfld      float32 Game.ComponentChaseBehavior::m_chaseTime
    IL_00d2:  ldarg.0
    IL_00d3:  ldfld      class Game.ComponentMiner Game.ComponentChaseBehavior::m_componentMiner
    IL_00d8:  ldloc.0
    IL_00d9:  ldarg.0
    IL_00da:  ldfld      class Game.ComponentCreature Game.ComponentChaseBehavior::m_componentCreature
    IL_00df:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_00e4:  callvirt   instance valuetype [Engine]Engine.Matrix Game.ComponentFrame::get_Matrix()
    IL_00e9:  stloc.2
    IL_00ea:  ldloca.s   V_2
    IL_00ec:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Forward()
    IL_00f1:  callvirt   instance void Game.ComponentMiner::Hit(class Game.ComponentBody,
                                                                valuetype [Engine]Engine.Vector3)
    IL_00f6:  ldarg.0
    IL_00f7:  ldfld      class Game.ComponentCreature Game.ComponentChaseBehavior::m_componentCreature
    IL_00fc:  callvirt   instance class Game.ComponentCreatureSounds Game.ComponentCreature::get_ComponentCreatureSounds()
    IL_0101:  callvirt   instance void Game.ComponentCreatureSounds::PlayAttackSound()
    IL_0106:  ldarg.0
    IL_0107:  ldfld      class Game.SubsystemTime Game.ComponentChaseBehavior::m_subsystemTime
    IL_010c:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0111:  ldarg.0
    IL_0112:  ldfld      float64 Game.ComponentChaseBehavior::m_nextUpdateTime
    IL_0117:  blt.un.s   IL_0176

    IL_0119:  ldarg.0
    IL_011a:  ldarg.0
    IL_011b:  ldfld      class Game.Random Game.ComponentChaseBehavior::m_random
    IL_0120:  ldc.r4     0.25
    IL_0125:  ldc.r4     0.34999999
    IL_012a:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_012f:  ldarg.0
    IL_0130:  ldfld      class Game.SubsystemTime Game.ComponentChaseBehavior::m_subsystemTime
    IL_0135:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_013a:  ldarg.0
    IL_013b:  ldfld      float64 Game.ComponentChaseBehavior::m_nextUpdateTime
    IL_0140:  sub
    IL_0141:  conv.r4
    IL_0142:  ldc.r4     0.1
    IL_0147:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_014c:  add
    IL_014d:  stfld      float32 Game.ComponentChaseBehavior::m_dt
    IL_0152:  ldarg.0
    IL_0153:  ldarg.0
    IL_0154:  ldfld      class Game.SubsystemTime Game.ComponentChaseBehavior::m_subsystemTime
    IL_0159:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_015e:  ldarg.0
    IL_015f:  ldfld      float32 Game.ComponentChaseBehavior::m_dt
    IL_0164:  conv.r8
    IL_0165:  add
    IL_0166:  stfld      float64 Game.ComponentChaseBehavior::m_nextUpdateTime
    IL_016b:  ldarg.0
    IL_016c:  ldfld      class Game.StateMachine Game.ComponentChaseBehavior::m_stateMachine
    IL_0171:  callvirt   instance void Game.StateMachine::Update()
    IL_0176:  ret
  } // end of method ComponentChaseBehavior::Update

  .method public hidebysig specialname virtual 
          instance float32  get_ImportanceLevel() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentChaseBehavior::m_importanceLevel
    IL_0006:  ret
  } // end of method ComponentChaseBehavior::get_ImportanceLevel

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       540 (0x21c)
    .maxstack  6
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGameInfo>(bool)
    IL_000d:  stfld      class Game.SubsystemGameInfo Game.ComponentChaseBehavior::m_subsystemGameInfo
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemPlayer>(bool)
    IL_001f:  stfld      class Game.SubsystemPlayer Game.ComponentChaseBehavior::m_subsystemPlayer
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemSky>(bool)
    IL_0031:  stfld      class Game.SubsystemSky Game.ComponentChaseBehavior::m_subsystemSky
    IL_0036:  ldarg.0
    IL_0037:  ldarg.0
    IL_0038:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_003d:  ldc.i4.1
    IL_003e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemBodies>(bool)
    IL_0043:  stfld      class Game.SubsystemBodies Game.ComponentChaseBehavior::m_subsystemBodies
    IL_0048:  ldarg.0
    IL_0049:  ldarg.0
    IL_004a:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_004f:  ldc.i4.1
    IL_0050:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_0055:  stfld      class Game.SubsystemTime Game.ComponentChaseBehavior::m_subsystemTime
    IL_005a:  ldarg.0
    IL_005b:  ldarg.0
    IL_005c:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0061:  ldc.i4.1
    IL_0062:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemNoise>(bool)
    IL_0067:  stfld      class Game.SubsystemNoise Game.ComponentChaseBehavior::m_subsystemNoise
    IL_006c:  ldarg.0
    IL_006d:  ldarg.0
    IL_006e:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0073:  ldc.i4.1
    IL_0074:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreature>(bool)
    IL_0079:  stfld      class Game.ComponentCreature Game.ComponentChaseBehavior::m_componentCreature
    IL_007e:  ldarg.0
    IL_007f:  ldarg.0
    IL_0080:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0085:  ldc.i4.1
    IL_0086:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentPathfinding>(bool)
    IL_008b:  stfld      class Game.ComponentPathfinding Game.ComponentChaseBehavior::m_componentPathfinding
    IL_0090:  ldarg.0
    IL_0091:  ldarg.0
    IL_0092:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0097:  ldc.i4.1
    IL_0098:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentMiner>(bool)
    IL_009d:  stfld      class Game.ComponentMiner Game.ComponentChaseBehavior::m_componentMiner
    IL_00a2:  ldarg.0
    IL_00a3:  ldarg.0
    IL_00a4:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_00a9:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentRandomFeedBehavior>()
    IL_00ae:  stfld      class Game.ComponentRandomFeedBehavior Game.ComponentChaseBehavior::m_componentFeedBehavior
    IL_00b3:  ldarg.0
    IL_00b4:  ldarg.0
    IL_00b5:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_00ba:  ldc.i4.1
    IL_00bb:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreatureModel>(bool)
    IL_00c0:  stfld      class Game.ComponentCreatureModel Game.ComponentChaseBehavior::m_componentCreatureModel
    IL_00c5:  ldarg.0
    IL_00c6:  ldarg.1
    IL_00c7:  ldstr      "DayChaseRange"
    IL_00cc:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_00d1:  stfld      float32 Game.ComponentChaseBehavior::m_dayChaseRange
    IL_00d6:  ldarg.0
    IL_00d7:  ldarg.1
    IL_00d8:  ldstr      "NightChaseRange"
    IL_00dd:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_00e2:  stfld      float32 Game.ComponentChaseBehavior::m_nightChaseRange
    IL_00e7:  ldarg.0
    IL_00e8:  ldarg.1
    IL_00e9:  ldstr      "DayChaseTime"
    IL_00ee:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_00f3:  stfld      float32 Game.ComponentChaseBehavior::m_dayChaseTime
    IL_00f8:  ldarg.0
    IL_00f9:  ldarg.1
    IL_00fa:  ldstr      "NightChaseTime"
    IL_00ff:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_0104:  stfld      float32 Game.ComponentChaseBehavior::m_nightChaseTime
    IL_0109:  ldarg.0
    IL_010a:  ldarg.1
    IL_010b:  ldstr      "AutoChaseMask"
    IL_0110:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<valuetype Game.CreatureCategory>(string)
    IL_0115:  stfld      valuetype Game.CreatureCategory Game.ComponentChaseBehavior::m_autoChaseMask
    IL_011a:  ldarg.0
    IL_011b:  ldarg.1
    IL_011c:  ldstr      "ChaseNonPlayerProbability"
    IL_0121:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_0126:  stfld      float32 Game.ComponentChaseBehavior::m_chaseNonPlayerProbability
    IL_012b:  ldarg.0
    IL_012c:  ldarg.1
    IL_012d:  ldstr      "ChaseWhenAttackedProbability"
    IL_0132:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_0137:  stfld      float32 Game.ComponentChaseBehavior::m_chaseWhenAttackedProbability
    IL_013c:  ldarg.0
    IL_013d:  ldarg.1
    IL_013e:  ldstr      "ChaseOnTouchProbability"
    IL_0143:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_0148:  stfld      float32 Game.ComponentChaseBehavior::m_chaseOnTouchProbability
    IL_014d:  ldarg.0
    IL_014e:  ldfld      class Game.ComponentCreature Game.ComponentChaseBehavior::m_componentCreature
    IL_0153:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_0158:  ldarg.0
    IL_0159:  ldftn      instance void Game.ComponentChaseBehavior::'<Load>b__40_0'(class Game.ComponentCreature)
    IL_015f:  newobj     instance void class [System.Runtime]System.Action`1<class Game.ComponentCreature>::.ctor(object,
                                                                                                                  native int)
    IL_0164:  callvirt   instance void Game.ComponentHealth::add_Attacked(class [System.Runtime]System.Action`1<class Game.ComponentCreature>)
    IL_0169:  ldarg.0
    IL_016a:  ldfld      class Game.ComponentCreature Game.ComponentChaseBehavior::m_componentCreature
    IL_016f:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0174:  ldarg.0
    IL_0175:  ldftn      instance void Game.ComponentChaseBehavior::'<Load>b__40_1'(class Game.ComponentBody)
    IL_017b:  newobj     instance void class [System.Runtime]System.Action`1<class Game.ComponentBody>::.ctor(object,
                                                                                                              native int)
    IL_0180:  callvirt   instance void Game.ComponentBody::add_CollidedWithBody(class [System.Runtime]System.Action`1<class Game.ComponentBody>)
    IL_0185:  ldarg.0
    IL_0186:  ldfld      class Game.StateMachine Game.ComponentChaseBehavior::m_stateMachine
    IL_018b:  ldstr      "LookingForTarget"
    IL_0190:  ldarg.0
    IL_0191:  ldftn      instance void Game.ComponentChaseBehavior::'<Load>b__40_2'()
    IL_0197:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_019c:  ldarg.0
    IL_019d:  ldftn      instance void Game.ComponentChaseBehavior::'<Load>b__40_3'()
    IL_01a3:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_01a8:  ldnull
    IL_01a9:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_01ae:  ldarg.0
    IL_01af:  ldfld      class Game.StateMachine Game.ComponentChaseBehavior::m_stateMachine
    IL_01b4:  ldstr      "RandomMoving"
    IL_01b9:  ldarg.0
    IL_01ba:  ldftn      instance void Game.ComponentChaseBehavior::'<Load>b__40_4'()
    IL_01c0:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_01c5:  ldarg.0
    IL_01c6:  ldftn      instance void Game.ComponentChaseBehavior::'<Load>b__40_5'()
    IL_01cc:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_01d1:  ldarg.0
    IL_01d2:  ldftn      instance void Game.ComponentChaseBehavior::'<Load>b__40_6'()
    IL_01d8:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_01dd:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_01e2:  ldarg.0
    IL_01e3:  ldfld      class Game.StateMachine Game.ComponentChaseBehavior::m_stateMachine
    IL_01e8:  ldstr      "Chasing"
    IL_01ed:  ldarg.0
    IL_01ee:  ldftn      instance void Game.ComponentChaseBehavior::'<Load>b__40_7'()
    IL_01f4:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_01f9:  ldarg.0
    IL_01fa:  ldftn      instance void Game.ComponentChaseBehavior::'<Load>b__40_8'()
    IL_0200:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0205:  ldnull
    IL_0206:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_020b:  ldarg.0
    IL_020c:  ldfld      class Game.StateMachine Game.ComponentChaseBehavior::m_stateMachine
    IL_0211:  ldstr      "LookingForTarget"
    IL_0216:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_021b:  ret
  } // end of method ComponentChaseBehavior::Load

  .method private hidebysig instance class Game.ComponentCreature 
          FindTarget() cil managed
  {
    // 代码大小       150 (0x96)
    .maxstack  4
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             class Game.ComponentCreature V_1,
             float32 V_2,
             int32 V_3,
             class Game.ComponentCreature V_4,
             float32 V_5)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentCreature Game.ComponentChaseBehavior::m_componentCreature
    IL_0006:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_000b:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0010:  stloc.0
    IL_0011:  ldnull
    IL_0012:  stloc.1
    IL_0013:  ldc.r4     0.0
    IL_0018:  stloc.2
    IL_0019:  ldarg.0
    IL_001a:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> Game.ComponentChaseBehavior::m_componentBodies
    IL_001f:  callvirt   instance void class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>::Clear()
    IL_0024:  ldarg.0
    IL_0025:  ldfld      class Game.SubsystemBodies Game.ComponentChaseBehavior::m_subsystemBodies
    IL_002a:  ldloc.0
    IL_002b:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0030:  ldloc.0
    IL_0031:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0036:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_003b:  ldarg.0
    IL_003c:  ldfld      float32 Game.ComponentChaseBehavior::m_range
    IL_0041:  ldarg.0
    IL_0042:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> Game.ComponentChaseBehavior::m_componentBodies
    IL_0047:  callvirt   instance void Game.SubsystemBodies::FindBodiesAroundPoint(valuetype [Engine]Engine.Vector2,
                                                                                   float32,
                                                                                   class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>)
    IL_004c:  ldc.i4.0
    IL_004d:  stloc.3
    IL_004e:  br.s       IL_0086

    IL_0050:  ldarg.0
    IL_0051:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> Game.ComponentChaseBehavior::m_componentBodies
    IL_0056:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>::get_Array()
    IL_005b:  ldloc.3
    IL_005c:  ldelem.ref
    IL_005d:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0062:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreature>()
    IL_0067:  stloc.s    V_4
    IL_0069:  ldloc.s    V_4
    IL_006b:  brfalse.s  IL_0082

    IL_006d:  ldarg.0
    IL_006e:  ldloc.s    V_4
    IL_0070:  call       instance float32 Game.ComponentChaseBehavior::ScoreTarget(class Game.ComponentCreature)
    IL_0075:  stloc.s    V_5
    IL_0077:  ldloc.s    V_5
    IL_0079:  ldloc.2
    IL_007a:  ble.un.s   IL_0082

    IL_007c:  ldloc.s    V_5
    IL_007e:  stloc.2
    IL_007f:  ldloc.s    V_4
    IL_0081:  stloc.1
    IL_0082:  ldloc.3
    IL_0083:  ldc.i4.1
    IL_0084:  add
    IL_0085:  stloc.3
    IL_0086:  ldloc.3
    IL_0087:  ldarg.0
    IL_0088:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> Game.ComponentChaseBehavior::m_componentBodies
    IL_008d:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>::get_Count()
    IL_0092:  blt.s      IL_0050

    IL_0094:  ldloc.1
    IL_0095:  ret
  } // end of method ComponentChaseBehavior::FindTarget

  .method private hidebysig instance float32 
          ScoreTarget(class Game.ComponentCreature componentCreature) cil managed
  {
    // 代码大小       336 (0x150)
    .maxstack  3
    .locals init (bool V_0,
             bool V_1,
             bool V_2,
             bool V_3,
             bool V_4,
             float32 V_5)
    IL_0000:  ldarg.1
    IL_0001:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0006:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentPlayer>()
    IL_000b:  ldnull
    IL_000c:  cgt.un
    IL_000e:  stloc.0
    IL_000f:  ldarg.0
    IL_0010:  ldfld      class Game.ComponentCreature Game.ComponentChaseBehavior::m_componentCreature
    IL_0015:  callvirt   instance valuetype Game.CreatureCategory Game.ComponentCreature::get_Category()
    IL_001a:  ldc.i4.4
    IL_001b:  beq.s      IL_0030

    IL_001d:  ldarg.0
    IL_001e:  ldfld      class Game.ComponentCreature Game.ComponentChaseBehavior::m_componentCreature
    IL_0023:  callvirt   instance valuetype Game.CreatureCategory Game.ComponentCreature::get_Category()
    IL_0028:  ldc.i4.8
    IL_0029:  ceq
    IL_002b:  ldc.i4.0
    IL_002c:  ceq
    IL_002e:  br.s       IL_0031

    IL_0030:  ldc.i4.0
    IL_0031:  stloc.1
    IL_0032:  ldarg.1
    IL_0033:  ldarg.0
    IL_0034:  call       instance class Game.ComponentCreature Game.ComponentChaseBehavior::get_Target()
    IL_0039:  beq.s      IL_0050

    IL_003b:  ldarg.0
    IL_003c:  ldfld      class Game.SubsystemGameInfo Game.ComponentChaseBehavior::m_subsystemGameInfo
    IL_0041:  callvirt   instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
    IL_0046:  ldfld      valuetype Game.GameMode Game.WorldInfo::GameMode
    IL_004b:  ldc.i4.1
    IL_004c:  cgt
    IL_004e:  br.s       IL_0051

    IL_0050:  ldc.i4.1
    IL_0051:  stloc.2
    IL_0052:  ldarg.1
    IL_0053:  callvirt   instance valuetype Game.CreatureCategory Game.ComponentCreature::get_Category()
    IL_0058:  ldarg.0
    IL_0059:  ldfld      valuetype Game.CreatureCategory Game.ComponentChaseBehavior::m_autoChaseMask
    IL_005e:  and
    IL_005f:  ldc.i4.0
    IL_0060:  cgt.un
    IL_0062:  stloc.3
    IL_0063:  ldarg.1
    IL_0064:  ldarg.0
    IL_0065:  call       instance class Game.ComponentCreature Game.ComponentChaseBehavior::get_Target()
    IL_006a:  beq.s      IL_00ca

    IL_006c:  ldloc.3
    IL_006d:  brfalse.s  IL_00c7

    IL_006f:  ldc.r8     4.999999888241291e-003
    IL_0078:  ldarg.0
    IL_0079:  ldfld      class Game.SubsystemTime Game.ComponentChaseBehavior::m_subsystemTime
    IL_007e:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0083:  mul
    IL_0084:  ldarg.0
    IL_0085:  callvirt   instance int32 [System.Runtime]System.Object::GetHashCode()
    IL_008a:  ldc.i4     0x3e8
    IL_008f:  rem
    IL_0090:  conv.r4
    IL_0091:  ldc.r4     1000.
    IL_0096:  div
    IL_0097:  conv.r8
    IL_0098:  add
    IL_0099:  ldarg.1
    IL_009a:  callvirt   instance int32 [System.Runtime]System.Object::GetHashCode()
    IL_009f:  ldc.i4     0x3e8
    IL_00a4:  rem
    IL_00a5:  conv.r4
    IL_00a6:  ldc.r4     1000.
    IL_00ab:  div
    IL_00ac:  conv.r8
    IL_00ad:  add
    IL_00ae:  ldc.r8     1.
    IL_00b7:  call       float64 [Engine]Engine.MathUtils::Remainder(float64,
                                                                     float64)
    IL_00bc:  ldarg.0
    IL_00bd:  ldfld      float32 Game.ComponentChaseBehavior::m_chaseNonPlayerProbability
    IL_00c2:  conv.r8
    IL_00c3:  clt
    IL_00c5:  br.s       IL_00cb

    IL_00c7:  ldc.i4.0
    IL_00c8:  br.s       IL_00cb

    IL_00ca:  ldc.i4.1
    IL_00cb:  stloc.s    V_4
    IL_00cd:  ldarg.1
    IL_00ce:  ldarg.0
    IL_00cf:  ldfld      class Game.ComponentCreature Game.ComponentChaseBehavior::m_componentCreature
    IL_00d4:  beq.s      IL_014a

    IL_00d6:  ldloc.0
    IL_00d7:  ldc.i4.0
    IL_00d8:  ceq
    IL_00da:  ldloc.s    V_4
    IL_00dc:  and
    IL_00dd:  brtrue.s   IL_00e4

    IL_00df:  ldloc.0
    IL_00e0:  ldloc.2
    IL_00e1:  and
    IL_00e2:  brfalse.s  IL_014a

    IL_00e4:  ldarg.1
    IL_00e5:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_00ea:  callvirt   instance bool [EntitySystem]GameEntitySystem.Entity::get_IsAddedToProject()
    IL_00ef:  brfalse.s  IL_014a

    IL_00f1:  ldarg.1
    IL_00f2:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_00f7:  callvirt   instance float32 Game.ComponentHealth::get_Health()
    IL_00fc:  ldc.r4     0.0
    IL_0101:  ble.un.s   IL_014a

    IL_0103:  ldloc.1
    IL_0104:  brtrue.s   IL_0114

    IL_0106:  ldarg.0
    IL_0107:  ldarg.1
    IL_0108:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_010d:  call       instance bool Game.ComponentChaseBehavior::IsTargetInWater(class Game.ComponentBody)
    IL_0112:  brfalse.s  IL_014a

    IL_0114:  ldarg.0
    IL_0115:  ldfld      class Game.ComponentCreature Game.ComponentChaseBehavior::m_componentCreature
    IL_011a:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_011f:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0124:  ldarg.1
    IL_0125:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_012a:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_012f:  call       float32 [Engine]Engine.Vector3::Distance(valuetype [Engine]Engine.Vector3,
                                                                  valuetype [Engine]Engine.Vector3)
    IL_0134:  stloc.s    V_5
    IL_0136:  ldloc.s    V_5
    IL_0138:  ldarg.0
    IL_0139:  ldfld      float32 Game.ComponentChaseBehavior::m_range
    IL_013e:  bge.un.s   IL_014a

    IL_0140:  ldarg.0
    IL_0141:  ldfld      float32 Game.ComponentChaseBehavior::m_range
    IL_0146:  ldloc.s    V_5
    IL_0148:  sub
    IL_0149:  ret

    IL_014a:  ldc.r4     0.0
    IL_014f:  ret
  } // end of method ComponentChaseBehavior::ScoreTarget

  .method private hidebysig instance bool 
          IsTargetInWater(class Game.ComponentBody target) cil managed
  {
    // 代码大小       94 (0x5e)
    .maxstack  2
    IL_0000:  ldarg.1
    IL_0001:  callvirt   instance float32 Game.ComponentBody::get_ImmersionDepth()
    IL_0006:  ldc.r4     0.0
    IL_000b:  ble.un.s   IL_000f

    IL_000d:  ldc.i4.1
    IL_000e:  ret

    IL_000f:  ldarg.1
    IL_0010:  callvirt   instance class Game.ComponentBody Game.ComponentBody::get_ParentBody()
    IL_0015:  brfalse.s  IL_0027

    IL_0017:  ldarg.0
    IL_0018:  ldarg.1
    IL_0019:  callvirt   instance class Game.ComponentBody Game.ComponentBody::get_ParentBody()
    IL_001e:  call       instance bool Game.ComponentChaseBehavior::IsTargetInWater(class Game.ComponentBody)
    IL_0023:  brfalse.s  IL_0027

    IL_0025:  ldc.i4.1
    IL_0026:  ret

    IL_0027:  ldarg.1
    IL_0028:  callvirt   instance class Game.ComponentBody Game.ComponentBody::get_StandingOnBody()
    IL_002d:  brfalse.s  IL_005c

    IL_002f:  ldarg.1
    IL_0030:  callvirt   instance class Game.ComponentBody Game.ComponentBody::get_StandingOnBody()
    IL_0035:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_003a:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_003f:  ldarg.1
    IL_0040:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0045:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_004a:  bge.un.s   IL_005c

    IL_004c:  ldarg.0
    IL_004d:  ldarg.1
    IL_004e:  callvirt   instance class Game.ComponentBody Game.ComponentBody::get_StandingOnBody()
    IL_0053:  call       instance bool Game.ComponentChaseBehavior::IsTargetInWater(class Game.ComponentBody)
    IL_0058:  brfalse.s  IL_005c

    IL_005a:  ldc.i4.1
    IL_005b:  ret

    IL_005c:  ldc.i4.0
    IL_005d:  ret
  } // end of method ComponentChaseBehavior::IsTargetInWater

  .method private hidebysig instance bool 
          IsTargetInAttackRange(class Game.ComponentBody target) cil managed
  {
    // 代码大小       417 (0x1a1)
    .maxstack  3
    .locals init (valuetype [Engine]Engine.BoundingBox V_0,
             valuetype [Engine]Engine.BoundingBox V_1,
             valuetype [Engine]Engine.Vector3 V_2,
             valuetype [Engine]Engine.Vector3 V_3,
             float32 V_4,
             valuetype [Engine]Engine.Vector3 V_5,
             float32 V_6,
             float32 V_7,
             valuetype [Engine]Engine.Matrix V_8)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance bool Game.ComponentChaseBehavior::IsBodyInAttackRange(class Game.ComponentBody)
    IL_0007:  brfalse.s  IL_000b

    IL_0009:  ldc.i4.1
    IL_000a:  ret

    IL_000b:  ldarg.0
    IL_000c:  ldfld      class Game.ComponentCreature Game.ComponentChaseBehavior::m_componentCreature
    IL_0011:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0016:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.ComponentBody::get_BoundingBox()
    IL_001b:  stloc.0
    IL_001c:  ldarg.1
    IL_001d:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.ComponentBody::get_BoundingBox()
    IL_0022:  stloc.1
    IL_0023:  ldc.r4     0.5
    IL_0028:  ldloc.0
    IL_0029:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_002e:  ldloc.0
    IL_002f:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_0034:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0039:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_003e:  stloc.2
    IL_003f:  ldc.r4     0.5
    IL_0044:  ldloc.1
    IL_0045:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_004a:  ldloc.1
    IL_004b:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_0050:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0055:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_005a:  ldloc.2
    IL_005b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0060:  stloc.3
    IL_0061:  ldloca.s   V_3
    IL_0063:  call       instance float32 [Engine]Engine.Vector3::Length()
    IL_0068:  stloc.s    V_4
    IL_006a:  ldloc.3
    IL_006b:  ldloc.s    V_4
    IL_006d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Division(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0072:  stloc.s    V_5
    IL_0074:  ldc.r4     0.5
    IL_0079:  ldloc.0
    IL_007a:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_007f:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0084:  ldloc.0
    IL_0085:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_008a:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_008f:  sub
    IL_0090:  ldloc.1
    IL_0091:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_0096:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_009b:  add
    IL_009c:  ldloc.1
    IL_009d:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_00a2:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_00a7:  sub
    IL_00a8:  mul
    IL_00a9:  stloc.s    V_6
    IL_00ab:  ldc.r4     0.5
    IL_00b0:  ldloc.0
    IL_00b1:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_00b6:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_00bb:  ldloc.0
    IL_00bc:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_00c1:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_00c6:  sub
    IL_00c7:  ldloc.1
    IL_00c8:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_00cd:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_00d2:  add
    IL_00d3:  ldloc.1
    IL_00d4:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_00d9:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_00de:  sub
    IL_00df:  mul
    IL_00e0:  stloc.s    V_7
    IL_00e2:  ldloc.3
    IL_00e3:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_00e8:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_00ed:  ldloc.s    V_7
    IL_00ef:  ldc.r4     0.99000001
    IL_00f4:  mul
    IL_00f5:  bge.un.s   IL_012c

    IL_00f7:  ldloc.s    V_4
    IL_00f9:  ldloc.s    V_6
    IL_00fb:  ldc.r4     0.99000001
    IL_0100:  add
    IL_0101:  bge.un.s   IL_0152

    IL_0103:  ldloc.s    V_5
    IL_0105:  ldarg.0
    IL_0106:  ldfld      class Game.ComponentCreature Game.ComponentChaseBehavior::m_componentCreature
    IL_010b:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0110:  callvirt   instance valuetype [Engine]Engine.Matrix Game.ComponentFrame::get_Matrix()
    IL_0115:  stloc.s    V_8
    IL_0117:  ldloca.s   V_8
    IL_0119:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Forward()
    IL_011e:  call       float32 [Engine]Engine.Vector3::Dot(valuetype [Engine]Engine.Vector3,
                                                             valuetype [Engine]Engine.Vector3)
    IL_0123:  ldc.r4     0.25
    IL_0128:  ble.un.s   IL_0152

    IL_012a:  ldc.i4.1
    IL_012b:  ret

    IL_012c:  ldloc.s    V_4
    IL_012e:  ldloc.s    V_7
    IL_0130:  ldc.r4     0.30000001
    IL_0135:  add
    IL_0136:  bge.un.s   IL_0152

    IL_0138:  ldloc.s    V_5
    IL_013a:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_013f:  call       float32 [Engine]Engine.Vector3::Dot(valuetype [Engine]Engine.Vector3,
                                                             valuetype [Engine]Engine.Vector3)
    IL_0144:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_0149:  ldc.r4     0.80000001
    IL_014e:  ble.un.s   IL_0152

    IL_0150:  ldc.i4.1
    IL_0151:  ret

    IL_0152:  ldarg.1
    IL_0153:  callvirt   instance class Game.ComponentBody Game.ComponentBody::get_ParentBody()
    IL_0158:  brfalse.s  IL_016a

    IL_015a:  ldarg.0
    IL_015b:  ldarg.1
    IL_015c:  callvirt   instance class Game.ComponentBody Game.ComponentBody::get_ParentBody()
    IL_0161:  call       instance bool Game.ComponentChaseBehavior::IsTargetInAttackRange(class Game.ComponentBody)
    IL_0166:  brfalse.s  IL_016a

    IL_0168:  ldc.i4.1
    IL_0169:  ret

    IL_016a:  ldarg.1
    IL_016b:  callvirt   instance class Game.ComponentBody Game.ComponentBody::get_StandingOnBody()
    IL_0170:  brfalse.s  IL_019f

    IL_0172:  ldarg.1
    IL_0173:  callvirt   instance class Game.ComponentBody Game.ComponentBody::get_StandingOnBody()
    IL_0178:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_017d:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0182:  ldarg.1
    IL_0183:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0188:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_018d:  bge.un.s   IL_019f

    IL_018f:  ldarg.0
    IL_0190:  ldarg.1
    IL_0191:  callvirt   instance class Game.ComponentBody Game.ComponentBody::get_StandingOnBody()
    IL_0196:  call       instance bool Game.ComponentChaseBehavior::IsTargetInAttackRange(class Game.ComponentBody)
    IL_019b:  brfalse.s  IL_019f

    IL_019d:  ldc.i4.1
    IL_019e:  ret

    IL_019f:  ldc.i4.0
    IL_01a0:  ret
  } // end of method ComponentChaseBehavior::IsTargetInAttackRange

  .method private hidebysig instance bool 
          IsBodyInAttackRange(class Game.ComponentBody target) cil managed
  {
    // 代码大小       329 (0x149)
    .maxstack  3
    .locals init (valuetype [Engine]Engine.BoundingBox V_0,
             valuetype [Engine]Engine.BoundingBox V_1,
             valuetype [Engine]Engine.Vector3 V_2,
             valuetype [Engine]Engine.Vector3 V_3,
             float32 V_4,
             valuetype [Engine]Engine.Vector3 V_5,
             float32 V_6,
             float32 V_7,
             valuetype [Engine]Engine.Matrix V_8)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentCreature Game.ComponentChaseBehavior::m_componentCreature
    IL_0006:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_000b:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.ComponentBody::get_BoundingBox()
    IL_0010:  stloc.0
    IL_0011:  ldarg.1
    IL_0012:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.ComponentBody::get_BoundingBox()
    IL_0017:  stloc.1
    IL_0018:  ldc.r4     0.5
    IL_001d:  ldloc.0
    IL_001e:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_0023:  ldloc.0
    IL_0024:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_0029:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_002e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0033:  stloc.2
    IL_0034:  ldc.r4     0.5
    IL_0039:  ldloc.1
    IL_003a:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_003f:  ldloc.1
    IL_0040:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_0045:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_004a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_004f:  ldloc.2
    IL_0050:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0055:  stloc.3
    IL_0056:  ldloca.s   V_3
    IL_0058:  call       instance float32 [Engine]Engine.Vector3::Length()
    IL_005d:  stloc.s    V_4
    IL_005f:  ldloc.3
    IL_0060:  ldloc.s    V_4
    IL_0062:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Division(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0067:  stloc.s    V_5
    IL_0069:  ldc.r4     0.5
    IL_006e:  ldloc.0
    IL_006f:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_0074:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0079:  ldloc.0
    IL_007a:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_007f:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0084:  sub
    IL_0085:  ldloc.1
    IL_0086:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_008b:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0090:  add
    IL_0091:  ldloc.1
    IL_0092:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_0097:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_009c:  sub
    IL_009d:  mul
    IL_009e:  stloc.s    V_6
    IL_00a0:  ldc.r4     0.5
    IL_00a5:  ldloc.0
    IL_00a6:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_00ab:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_00b0:  ldloc.0
    IL_00b1:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_00b6:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_00bb:  sub
    IL_00bc:  ldloc.1
    IL_00bd:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_00c2:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_00c7:  add
    IL_00c8:  ldloc.1
    IL_00c9:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_00ce:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_00d3:  sub
    IL_00d4:  mul
    IL_00d5:  stloc.s    V_7
    IL_00d7:  ldloc.3
    IL_00d8:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_00dd:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_00e2:  ldloc.s    V_7
    IL_00e4:  ldc.r4     0.99000001
    IL_00e9:  mul
    IL_00ea:  bge.un.s   IL_0121

    IL_00ec:  ldloc.s    V_4
    IL_00ee:  ldloc.s    V_6
    IL_00f0:  ldc.r4     0.99000001
    IL_00f5:  add
    IL_00f6:  bge.un.s   IL_0147

    IL_00f8:  ldloc.s    V_5
    IL_00fa:  ldarg.0
    IL_00fb:  ldfld      class Game.ComponentCreature Game.ComponentChaseBehavior::m_componentCreature
    IL_0100:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0105:  callvirt   instance valuetype [Engine]Engine.Matrix Game.ComponentFrame::get_Matrix()
    IL_010a:  stloc.s    V_8
    IL_010c:  ldloca.s   V_8
    IL_010e:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Forward()
    IL_0113:  call       float32 [Engine]Engine.Vector3::Dot(valuetype [Engine]Engine.Vector3,
                                                             valuetype [Engine]Engine.Vector3)
    IL_0118:  ldc.r4     0.25
    IL_011d:  ble.un.s   IL_0147

    IL_011f:  ldc.i4.1
    IL_0120:  ret

    IL_0121:  ldloc.s    V_4
    IL_0123:  ldloc.s    V_7
    IL_0125:  ldc.r4     0.30000001
    IL_012a:  add
    IL_012b:  bge.un.s   IL_0147

    IL_012d:  ldloc.s    V_5
    IL_012f:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_0134:  call       float32 [Engine]Engine.Vector3::Dot(valuetype [Engine]Engine.Vector3,
                                                             valuetype [Engine]Engine.Vector3)
    IL_0139:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_013e:  ldc.r4     0.80000001
    IL_0143:  ble.un.s   IL_0147

    IL_0145:  ldc.i4.1
    IL_0146:  ret

    IL_0147:  ldc.i4.0
    IL_0148:  ret
  } // end of method ComponentChaseBehavior::IsBodyInAttackRange

  .method private hidebysig instance class Game.ComponentBody 
          GetHitBody(class Game.ComponentBody target) cil managed
  {
    // 代码大小       183 (0xb7)
    .maxstack  3
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             valuetype [Engine]Engine.Vector3 V_1,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.BodyRaycastResult> V_2,
             valuetype [Engine]Engine.BoundingBox V_3)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentCreature Game.ComponentChaseBehavior::m_componentCreature
    IL_0006:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_000b:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.ComponentBody::get_BoundingBox()
    IL_0010:  stloc.3
    IL_0011:  ldloca.s   V_3
    IL_0013:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Center()
    IL_0018:  stloc.0
    IL_0019:  ldarg.1
    IL_001a:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.ComponentBody::get_BoundingBox()
    IL_001f:  stloc.3
    IL_0020:  ldloca.s   V_3
    IL_0022:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Center()
    IL_0027:  ldloc.0
    IL_0028:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_002d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0032:  stloc.1
    IL_0033:  ldarg.0
    IL_0034:  ldfld      class Game.ComponentMiner Game.ComponentChaseBehavior::m_componentMiner
    IL_0039:  ldloc.0
    IL_003a:  ldloc.1
    IL_003b:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.BodyRaycastResult> Game.ComponentMiner::PickBody(valuetype [Engine]Engine.Vector3,
                                                                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0040:  stloc.2
    IL_0041:  ldloca.s   V_2
    IL_0043:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.BodyRaycastResult>::get_HasValue()
    IL_0048:  brfalse.s  IL_00b5

    IL_004a:  ldloca.s   V_2
    IL_004c:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.BodyRaycastResult>::get_Value()
    IL_0051:  ldfld      float32 Game.BodyRaycastResult::Distance
    IL_0056:  ldc.r4     1.75
    IL_005b:  bge.un.s   IL_00b5

    IL_005d:  ldloca.s   V_2
    IL_005f:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.BodyRaycastResult>::get_Value()
    IL_0064:  ldfld      class Game.ComponentBody Game.BodyRaycastResult::ComponentBody
    IL_0069:  ldarg.1
    IL_006a:  beq.s      IL_00a8

    IL_006c:  ldloca.s   V_2
    IL_006e:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.BodyRaycastResult>::get_Value()
    IL_0073:  ldfld      class Game.ComponentBody Game.BodyRaycastResult::ComponentBody
    IL_0078:  ldarg.1
    IL_0079:  callvirt   instance bool Game.ComponentBody::IsChildOfBody(class Game.ComponentBody)
    IL_007e:  brtrue.s   IL_00a8

    IL_0080:  ldarg.1
    IL_0081:  ldloca.s   V_2
    IL_0083:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.BodyRaycastResult>::get_Value()
    IL_0088:  ldfld      class Game.ComponentBody Game.BodyRaycastResult::ComponentBody
    IL_008d:  callvirt   instance bool Game.ComponentBody::IsChildOfBody(class Game.ComponentBody)
    IL_0092:  brtrue.s   IL_00a8

    IL_0094:  ldarg.1
    IL_0095:  callvirt   instance class Game.ComponentBody Game.ComponentBody::get_StandingOnBody()
    IL_009a:  ldloca.s   V_2
    IL_009c:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.BodyRaycastResult>::get_Value()
    IL_00a1:  ldfld      class Game.ComponentBody Game.BodyRaycastResult::ComponentBody
    IL_00a6:  bne.un.s   IL_00b5

    IL_00a8:  ldloca.s   V_2
    IL_00aa:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.BodyRaycastResult>::get_Value()
    IL_00af:  ldfld      class Game.ComponentBody Game.BodyRaycastResult::ComponentBody
    IL_00b4:  ret

    IL_00b5:  ldnull
    IL_00b6:  ret
  } // end of method ComponentChaseBehavior::GetHitBody

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       40 (0x28)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>::.ctor()
    IL_0006:  stfld      class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> Game.ComponentChaseBehavior::m_componentBodies
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void Game.Random::.ctor()
    IL_0011:  stfld      class Game.Random Game.ComponentChaseBehavior::m_random
    IL_0016:  ldarg.0
    IL_0017:  newobj     instance void Game.StateMachine::.ctor()
    IL_001c:  stfld      class Game.StateMachine Game.ComponentChaseBehavior::m_stateMachine
    IL_0021:  ldarg.0
    IL_0022:  call       instance void Game.ComponentBehavior::.ctor()
    IL_0027:  ret
  } // end of method ComponentChaseBehavior::.ctor

  .method private hidebysig instance void 
          '<Load>b__40_0'(class Game.ComponentCreature attacker) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       80 (0x50)
    .maxstack  5
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.Random Game.ComponentChaseBehavior::m_random
    IL_0006:  ldc.r4     0.0
    IL_000b:  ldc.r4     1.
    IL_0010:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0015:  ldarg.0
    IL_0016:  ldfld      float32 Game.ComponentChaseBehavior::m_chaseWhenAttackedProbability
    IL_001b:  bge.un.s   IL_004f

    IL_001d:  ldarg.0
    IL_001e:  ldfld      float32 Game.ComponentChaseBehavior::m_chaseWhenAttackedProbability
    IL_0023:  ldc.r4     1.
    IL_0028:  blt.un.s   IL_003d

    IL_002a:  ldarg.0
    IL_002b:  ldarg.1
    IL_002c:  ldc.r4     30.
    IL_0031:  ldc.r4     60.
    IL_0036:  ldc.i4.1
    IL_0037:  call       instance void Game.ComponentChaseBehavior::Attack(class Game.ComponentCreature,
                                                                           float32,
                                                                           float32,
                                                                           bool)
    IL_003c:  ret

    IL_003d:  ldarg.0
    IL_003e:  ldarg.1
    IL_003f:  ldc.r4     7.
    IL_0044:  ldc.r4     7.
    IL_0049:  ldc.i4.0
    IL_004a:  call       instance void Game.ComponentChaseBehavior::Attack(class Game.ComponentCreature,
                                                                           float32,
                                                                           float32,
                                                                           bool)
    IL_004f:  ret
  } // end of method ComponentChaseBehavior::'<Load>b__40_0'

  .method private hidebysig instance void 
          '<Load>b__40_1'(class Game.ComponentBody body) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       214 (0xd6)
    .maxstack  5
    .locals init (class Game.ComponentCreature V_0,
             bool V_1,
             bool V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentCreature Game.ComponentChaseBehavior::m_target
    IL_0006:  brtrue     IL_0097

    IL_000b:  ldarg.0
    IL_000c:  ldfld      float32 Game.ComponentChaseBehavior::m_autoChaseSuppressionTime
    IL_0011:  ldc.r4     0.0
    IL_0016:  bgt.un.s   IL_0097

    IL_0018:  ldarg.0
    IL_0019:  ldfld      class Game.Random Game.ComponentChaseBehavior::m_random
    IL_001e:  ldc.r4     0.0
    IL_0023:  ldc.r4     1.
    IL_0028:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_002d:  ldarg.0
    IL_002e:  ldfld      float32 Game.ComponentChaseBehavior::m_chaseOnTouchProbability
    IL_0033:  bge.un.s   IL_0097

    IL_0035:  ldarg.1
    IL_0036:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_003b:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreature>()
    IL_0040:  stloc.0
    IL_0041:  ldloc.0
    IL_0042:  brfalse.s  IL_0097

    IL_0044:  ldarg.0
    IL_0045:  ldfld      class Game.SubsystemPlayer Game.ComponentChaseBehavior::m_subsystemPlayer
    IL_004a:  ldarg.1
    IL_004b:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0050:  callvirt   instance bool Game.SubsystemPlayer::IsPlayer(class [EntitySystem]GameEntitySystem.Entity)
    IL_0055:  stloc.1
    IL_0056:  ldloc.0
    IL_0057:  callvirt   instance valuetype Game.CreatureCategory Game.ComponentCreature::get_Category()
    IL_005c:  ldarg.0
    IL_005d:  ldfld      valuetype Game.CreatureCategory Game.ComponentChaseBehavior::m_autoChaseMask
    IL_0062:  and
    IL_0063:  ldc.i4.0
    IL_0064:  cgt.un
    IL_0066:  stloc.2
    IL_0067:  ldloc.1
    IL_0068:  brfalse.s  IL_007d

    IL_006a:  ldarg.0
    IL_006b:  ldfld      class Game.SubsystemGameInfo Game.ComponentChaseBehavior::m_subsystemGameInfo
    IL_0070:  callvirt   instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
    IL_0075:  ldfld      valuetype Game.GameMode Game.WorldInfo::GameMode
    IL_007a:  ldc.i4.1
    IL_007b:  bgt.s      IL_0085

    IL_007d:  ldloc.1
    IL_007e:  ldc.i4.0
    IL_007f:  ceq
    IL_0081:  ldloc.2
    IL_0082:  and
    IL_0083:  brfalse.s  IL_0097

    IL_0085:  ldarg.0
    IL_0086:  ldloc.0
    IL_0087:  ldc.r4     7.
    IL_008c:  ldc.r4     7.
    IL_0091:  ldc.i4.0
    IL_0092:  call       instance void Game.ComponentChaseBehavior::Attack(class Game.ComponentCreature,
                                                                           float32,
                                                                           float32,
                                                                           bool)
    IL_0097:  ldarg.0
    IL_0098:  ldfld      class Game.ComponentCreature Game.ComponentChaseBehavior::m_target
    IL_009d:  brfalse.s  IL_00d5

    IL_009f:  ldarg.1
    IL_00a0:  ldarg.0
    IL_00a1:  ldfld      class Game.ComponentCreature Game.ComponentChaseBehavior::m_target
    IL_00a6:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_00ab:  bne.un.s   IL_00d5

    IL_00ad:  ldarg.1
    IL_00ae:  callvirt   instance class Game.ComponentBody Game.ComponentBody::get_StandingOnBody()
    IL_00b3:  ldarg.0
    IL_00b4:  ldfld      class Game.ComponentCreature Game.ComponentChaseBehavior::m_componentCreature
    IL_00b9:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_00be:  bne.un.s   IL_00d5

    IL_00c0:  ldarg.0
    IL_00c1:  ldfld      class Game.ComponentCreature Game.ComponentChaseBehavior::m_componentCreature
    IL_00c6:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_00cb:  ldc.r4     1.
    IL_00d0:  callvirt   instance void Game.ComponentLocomotion::set_JumpOrder(float32)
    IL_00d5:  ret
  } // end of method ComponentChaseBehavior::'<Load>b__40_1'

  .method private hidebysig instance void 
          '<Load>b__40_2'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.r4     0.0
    IL_0006:  stfld      float32 Game.ComponentChaseBehavior::m_importanceLevel
    IL_000b:  ldarg.0
    IL_000c:  ldnull
    IL_000d:  stfld      class Game.ComponentCreature Game.ComponentChaseBehavior::m_target
    IL_0012:  ret
  } // end of method ComponentChaseBehavior::'<Load>b__40_2'

  .method private hidebysig instance void 
          '<Load>b__40_3'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       324 (0x144)
    .maxstack  5
    .locals init (class Game.ComponentCreature V_0,
             bool V_1,
             float32 V_2,
             float32 V_3)
    IL_0000:  ldarg.0
    IL_0001:  callvirt   instance bool Game.ComponentBehavior::get_IsActive()
    IL_0006:  brfalse.s  IL_0019

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.StateMachine Game.ComponentChaseBehavior::m_stateMachine
    IL_000e:  ldstr      "Chasing"
    IL_0013:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0018:  ret

    IL_0019:  ldarg.0
    IL_001a:  ldfld      float32 Game.ComponentChaseBehavior::m_autoChaseSuppressionTime
    IL_001f:  ldc.r4     0.0
    IL_0024:  bgt.un     IL_0143

    IL_0029:  ldarg.0
    IL_002a:  ldfld      class Game.ComponentCreature Game.ComponentChaseBehavior::m_target
    IL_002f:  brfalse.s  IL_0047

    IL_0031:  ldarg.0
    IL_0032:  ldarg.0
    IL_0033:  ldfld      class Game.ComponentCreature Game.ComponentChaseBehavior::m_target
    IL_0038:  call       instance float32 Game.ComponentChaseBehavior::ScoreTarget(class Game.ComponentCreature)
    IL_003d:  ldc.r4     0.0
    IL_0042:  bgt.un     IL_0143

    IL_0047:  ldarg.0
    IL_0048:  ldfld      class Game.ComponentCreature Game.ComponentChaseBehavior::m_componentCreature
    IL_004d:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_0052:  callvirt   instance float32 Game.ComponentHealth::get_Health()
    IL_0057:  ldc.r4     0.40000001
    IL_005c:  ble.un     IL_0143

    IL_0061:  ldarg.0
    IL_0062:  ldarg.0
    IL_0063:  ldfld      class Game.SubsystemSky Game.ComponentChaseBehavior::m_subsystemSky
    IL_0068:  callvirt   instance float32 Game.SubsystemSky::get_LightIntensity()
    IL_006d:  ldc.r4     0.2
    IL_0072:  blt.s      IL_007c

    IL_0074:  ldarg.0
    IL_0075:  ldfld      float32 Game.ComponentChaseBehavior::m_dayChaseRange
    IL_007a:  br.s       IL_0082

    IL_007c:  ldarg.0
    IL_007d:  ldfld      float32 Game.ComponentChaseBehavior::m_nightChaseRange
    IL_0082:  stfld      float32 Game.ComponentChaseBehavior::m_range
    IL_0087:  ldarg.0
    IL_0088:  call       instance class Game.ComponentCreature Game.ComponentChaseBehavior::FindTarget()
    IL_008d:  stloc.0
    IL_008e:  ldloc.0
    IL_008f:  brfalse.s  IL_00a6

    IL_0091:  ldarg.0
    IL_0092:  ldarg.0
    IL_0093:  ldfld      float32 Game.ComponentChaseBehavior::m_targetInRangeTime
    IL_0098:  ldarg.0
    IL_0099:  ldfld      float32 Game.ComponentChaseBehavior::m_dt
    IL_009e:  add
    IL_009f:  stfld      float32 Game.ComponentChaseBehavior::m_targetInRangeTime
    IL_00a4:  br.s       IL_00b1

    IL_00a6:  ldarg.0
    IL_00a7:  ldc.r4     0.0
    IL_00ac:  stfld      float32 Game.ComponentChaseBehavior::m_targetInRangeTime
    IL_00b1:  ldarg.0
    IL_00b2:  ldfld      float32 Game.ComponentChaseBehavior::m_targetInRangeTime
    IL_00b7:  ldc.r4     3.
    IL_00bc:  ble.un     IL_0143

    IL_00c1:  ldarg.0
    IL_00c2:  ldfld      class Game.SubsystemSky Game.ComponentChaseBehavior::m_subsystemSky
    IL_00c7:  callvirt   instance float32 Game.SubsystemSky::get_LightIntensity()
    IL_00cc:  ldc.r4     0.1
    IL_00d1:  clt.un
    IL_00d3:  ldc.i4.0
    IL_00d4:  ceq
    IL_00d6:  stloc.1
    IL_00d7:  ldloc.1
    IL_00d8:  brtrue.s   IL_00e8

    IL_00da:  ldarg.0
    IL_00db:  ldfld      float32 Game.ComponentChaseBehavior::m_nightChaseRange
    IL_00e0:  ldc.r4     6.
    IL_00e5:  add
    IL_00e6:  br.s       IL_00f4

    IL_00e8:  ldarg.0
    IL_00e9:  ldfld      float32 Game.ComponentChaseBehavior::m_dayChaseRange
    IL_00ee:  ldc.r4     6.
    IL_00f3:  add
    IL_00f4:  stloc.2
    IL_00f5:  ldloc.1
    IL_00f6:  brtrue.s   IL_0116

    IL_00f8:  ldarg.0
    IL_00f9:  ldfld      float32 Game.ComponentChaseBehavior::m_nightChaseTime
    IL_00fe:  ldarg.0
    IL_00ff:  ldfld      class Game.Random Game.ComponentChaseBehavior::m_random
    IL_0104:  ldc.r4     0.75
    IL_0109:  ldc.r4     1.
    IL_010e:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0113:  mul
    IL_0114:  br.s       IL_0132

    IL_0116:  ldarg.0
    IL_0117:  ldfld      float32 Game.ComponentChaseBehavior::m_dayChaseTime
    IL_011c:  ldarg.0
    IL_011d:  ldfld      class Game.Random Game.ComponentChaseBehavior::m_random
    IL_0122:  ldc.r4     0.75
    IL_0127:  ldc.r4     1.
    IL_012c:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0131:  mul
    IL_0132:  stloc.3
    IL_0133:  ldarg.0
    IL_0134:  ldloc.0
    IL_0135:  ldloc.2
    IL_0136:  ldloc.3
    IL_0137:  ldloc.1
    IL_0138:  brtrue.s   IL_013d

    IL_013a:  ldc.i4.1
    IL_013b:  br.s       IL_013e

    IL_013d:  ldc.i4.0
    IL_013e:  call       instance void Game.ComponentChaseBehavior::Attack(class Game.ComponentCreature,
                                                                           float32,
                                                                           float32,
                                                                           bool)
    IL_0143:  ret
  } // end of method ComponentChaseBehavior::'<Load>b__40_3'

  .method private hidebysig instance void 
          '<Load>b__40_4'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       116 (0x74)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentPathfinding Game.ComponentChaseBehavior::m_componentPathfinding
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class Game.ComponentCreature Game.ComponentChaseBehavior::m_componentCreature
    IL_000c:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0011:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0016:  ldc.r4     6.
    IL_001b:  ldarg.0
    IL_001c:  ldfld      class Game.Random Game.ComponentChaseBehavior::m_random
    IL_0021:  ldc.r4     -1.
    IL_0026:  ldc.r4     1.
    IL_002b:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0030:  mul
    IL_0031:  ldc.r4     0.0
    IL_0036:  ldc.r4     6.
    IL_003b:  ldarg.0
    IL_003c:  ldfld      class Game.Random Game.ComponentChaseBehavior::m_random
    IL_0041:  ldc.r4     -1.
    IL_0046:  ldc.r4     1.
    IL_004b:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0050:  mul
    IL_0051:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0056:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_005b:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_0060:  ldc.r4     1.
    IL_0065:  ldc.r4     1.
    IL_006a:  ldc.i4.0
    IL_006b:  ldc.i4.0
    IL_006c:  ldc.i4.1
    IL_006d:  ldc.i4.0
    IL_006e:  callvirt   instance void Game.ComponentPathfinding::SetDestination(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>,
                                                                                 float32,
                                                                                 float32,
                                                                                 int32,
                                                                                 bool,
                                                                                 bool,
                                                                                 bool)
    IL_0073:  ret
  } // end of method ComponentChaseBehavior::'<Load>b__40_4'

  .method private hidebysig instance void 
          '<Load>b__40_5'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       75 (0x4b)
    .maxstack  2
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentPathfinding Game.ComponentChaseBehavior::m_componentPathfinding
    IL_0006:  callvirt   instance bool Game.ComponentPathfinding::get_IsStuck()
    IL_000b:  brtrue.s   IL_0022

    IL_000d:  ldarg.0
    IL_000e:  ldfld      class Game.ComponentPathfinding Game.ComponentChaseBehavior::m_componentPathfinding
    IL_0013:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPathfinding::get_Destination()
    IL_0018:  stloc.0
    IL_0019:  ldloca.s   V_0
    IL_001b:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_0020:  brtrue.s   IL_0032

    IL_0022:  ldarg.0
    IL_0023:  ldfld      class Game.StateMachine Game.ComponentChaseBehavior::m_stateMachine
    IL_0028:  ldstr      "Chasing"
    IL_002d:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0032:  ldarg.0
    IL_0033:  callvirt   instance bool Game.ComponentBehavior::get_IsActive()
    IL_0038:  brtrue.s   IL_004a

    IL_003a:  ldarg.0
    IL_003b:  ldfld      class Game.StateMachine Game.ComponentChaseBehavior::m_stateMachine
    IL_0040:  ldstr      "LookingForTarget"
    IL_0045:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_004a:  ret
  } // end of method ComponentChaseBehavior::'<Load>b__40_5'

  .method private hidebysig instance void 
          '<Load>b__40_6'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentPathfinding Game.ComponentChaseBehavior::m_componentPathfinding
    IL_0006:  callvirt   instance void Game.ComponentPathfinding::Stop()
    IL_000b:  ret
  } // end of method ComponentChaseBehavior::'<Load>b__40_6'

  .method private hidebysig instance void 
          '<Load>b__40_7'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       65 (0x41)
    .maxstack  4
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemNoise Game.ComponentChaseBehavior::m_subsystemNoise
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class Game.ComponentCreature Game.ComponentChaseBehavior::m_componentCreature
    IL_000c:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0011:  ldc.r4     0.25
    IL_0016:  ldc.r4     6.
    IL_001b:  callvirt   instance void Game.SubsystemNoise::MakeNoise(class Game.ComponentBody,
                                                                      float32,
                                                                      float32)
    IL_0020:  ldarg.0
    IL_0021:  ldfld      class Game.ComponentCreature Game.ComponentChaseBehavior::m_componentCreature
    IL_0026:  callvirt   instance class Game.ComponentCreatureSounds Game.ComponentCreature::get_ComponentCreatureSounds()
    IL_002b:  ldc.i4.0
    IL_002c:  callvirt   instance void Game.ComponentCreatureSounds::PlayIdleSound(bool)
    IL_0031:  ldarg.0
    IL_0032:  ldc.r8     0.0
    IL_003b:  stfld      float64 Game.ComponentChaseBehavior::m_nextUpdateTime
    IL_0040:  ret
  } // end of method ComponentChaseBehavior::'<Load>b__40_7'

  .method private hidebysig instance void 
          '<Load>b__40_8'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       637 (0x27d)
    .maxstack  8
    .locals init (valuetype [Engine]Engine.BoundingBox V_0,
             valuetype [Engine]Engine.BoundingBox V_1,
             valuetype [Engine]Engine.Vector3 V_2,
             float32 V_3,
             float32 V_4,
             int32 V_5)
    IL_0000:  ldarg.0
    IL_0001:  callvirt   instance bool Game.ComponentBehavior::get_IsActive()
    IL_0006:  brtrue.s   IL_0019

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.StateMachine Game.ComponentChaseBehavior::m_stateMachine
    IL_000e:  ldstr      "LookingForTarget"
    IL_0013:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0018:  ret

    IL_0019:  ldarg.0
    IL_001a:  ldfld      float32 Game.ComponentChaseBehavior::m_chaseTime
    IL_001f:  ldc.r4     0.0
    IL_0024:  bgt.un.s   IL_004d

    IL_0026:  ldarg.0
    IL_0027:  ldarg.0
    IL_0028:  ldfld      class Game.Random Game.ComponentChaseBehavior::m_random
    IL_002d:  ldc.r4     5.
    IL_0032:  ldc.r4     15.
    IL_0037:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_003c:  stfld      float32 Game.ComponentChaseBehavior::m_autoChaseSuppressionTime
    IL_0041:  ldarg.0
    IL_0042:  ldc.r4     0.0
    IL_0047:  stfld      float32 Game.ComponentChaseBehavior::m_importanceLevel
    IL_004c:  ret

    IL_004d:  ldarg.0
    IL_004e:  ldfld      class Game.ComponentCreature Game.ComponentChaseBehavior::m_target
    IL_0053:  brtrue.s   IL_0061

    IL_0055:  ldarg.0
    IL_0056:  ldc.r4     0.0
    IL_005b:  stfld      float32 Game.ComponentChaseBehavior::m_importanceLevel
    IL_0060:  ret

    IL_0061:  ldarg.0
    IL_0062:  ldfld      class Game.ComponentCreature Game.ComponentChaseBehavior::m_target
    IL_0067:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_006c:  callvirt   instance float32 Game.ComponentHealth::get_Health()
    IL_0071:  ldc.r4     0.0
    IL_0076:  bgt.un.s   IL_00c6

    IL_0078:  ldarg.0
    IL_0079:  ldfld      class Game.ComponentRandomFeedBehavior Game.ComponentChaseBehavior::m_componentFeedBehavior
    IL_007e:  brfalse.s  IL_00ba

    IL_0080:  ldarg.0
    IL_0081:  ldfld      class Game.SubsystemTime Game.ComponentChaseBehavior::m_subsystemTime
    IL_0086:  ldarg.0
    IL_0087:  ldfld      class Game.SubsystemTime Game.ComponentChaseBehavior::m_subsystemTime
    IL_008c:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0091:  ldarg.0
    IL_0092:  ldfld      class Game.Random Game.ComponentChaseBehavior::m_random
    IL_0097:  ldc.r4     1.
    IL_009c:  ldc.r4     3.
    IL_00a1:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_00a6:  conv.r8
    IL_00a7:  add
    IL_00a8:  ldnull
    IL_00a9:  ldarg.0
    IL_00aa:  ldftn      instance void Game.ComponentChaseBehavior::'<Load>b__40_9'(object)
    IL_00b0:  newobj     instance void class [System.Runtime]System.Action`1<object>::.ctor(object,
                                                                                            native int)
    IL_00b5:  callvirt   instance void Game.SubsystemTime::QueueGameTimeDelayedExecution(float64,
                                                                                         object,
                                                                                         class [System.Runtime]System.Action`1<object>)
    IL_00ba:  ldarg.0
    IL_00bb:  ldc.r4     0.0
    IL_00c0:  stfld      float32 Game.ComponentChaseBehavior::m_importanceLevel
    IL_00c5:  ret

    IL_00c6:  ldarg.0
    IL_00c7:  ldfld      bool Game.ComponentChaseBehavior::m_isPersistent
    IL_00cc:  brtrue.s   IL_00e7

    IL_00ce:  ldarg.0
    IL_00cf:  ldfld      class Game.ComponentPathfinding Game.ComponentChaseBehavior::m_componentPathfinding
    IL_00d4:  callvirt   instance bool Game.ComponentPathfinding::get_IsStuck()
    IL_00d9:  brfalse.s  IL_00e7

    IL_00db:  ldarg.0
    IL_00dc:  ldc.r4     0.0
    IL_00e1:  stfld      float32 Game.ComponentChaseBehavior::m_importanceLevel
    IL_00e6:  ret

    IL_00e7:  ldarg.0
    IL_00e8:  ldfld      bool Game.ComponentChaseBehavior::m_isPersistent
    IL_00ed:  brfalse.s  IL_010d

    IL_00ef:  ldarg.0
    IL_00f0:  ldfld      class Game.ComponentPathfinding Game.ComponentChaseBehavior::m_componentPathfinding
    IL_00f5:  callvirt   instance bool Game.ComponentPathfinding::get_IsStuck()
    IL_00fa:  brfalse.s  IL_010d

    IL_00fc:  ldarg.0
    IL_00fd:  ldfld      class Game.StateMachine Game.ComponentChaseBehavior::m_stateMachine
    IL_0102:  ldstr      "RandomMoving"
    IL_0107:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_010c:  ret

    IL_010d:  ldarg.0
    IL_010e:  ldarg.0
    IL_010f:  ldfld      class Game.ComponentCreature Game.ComponentChaseBehavior::m_target
    IL_0114:  call       instance float32 Game.ComponentChaseBehavior::ScoreTarget(class Game.ComponentCreature)
    IL_0119:  ldc.r4     0.0
    IL_011e:  bgt.un.s   IL_0135

    IL_0120:  ldarg.0
    IL_0121:  ldarg.0
    IL_0122:  ldfld      float32 Game.ComponentChaseBehavior::m_targetUnsuitableTime
    IL_0127:  ldarg.0
    IL_0128:  ldfld      float32 Game.ComponentChaseBehavior::m_dt
    IL_012d:  add
    IL_012e:  stfld      float32 Game.ComponentChaseBehavior::m_targetUnsuitableTime
    IL_0133:  br.s       IL_0140

    IL_0135:  ldarg.0
    IL_0136:  ldc.r4     0.0
    IL_013b:  stfld      float32 Game.ComponentChaseBehavior::m_targetUnsuitableTime
    IL_0140:  ldarg.0
    IL_0141:  ldfld      float32 Game.ComponentChaseBehavior::m_targetUnsuitableTime
    IL_0146:  ldc.r4     3.
    IL_014b:  ble.un.s   IL_0159

    IL_014d:  ldarg.0
    IL_014e:  ldc.r4     0.0
    IL_0153:  stfld      float32 Game.ComponentChaseBehavior::m_importanceLevel
    IL_0158:  ret

    IL_0159:  ldarg.0
    IL_015a:  ldfld      class Game.ComponentCreature Game.ComponentChaseBehavior::m_componentCreature
    IL_015f:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0164:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.ComponentBody::get_BoundingBox()
    IL_0169:  stloc.0
    IL_016a:  ldarg.0
    IL_016b:  ldfld      class Game.ComponentCreature Game.ComponentChaseBehavior::m_target
    IL_0170:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0175:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.ComponentBody::get_BoundingBox()
    IL_017a:  stloc.1
    IL_017b:  ldc.r4     0.5
    IL_0180:  ldloc.0
    IL_0181:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_0186:  ldloc.0
    IL_0187:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_018c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0191:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0196:  ldc.r4     0.5
    IL_019b:  ldloc.1
    IL_019c:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_01a1:  ldloc.1
    IL_01a2:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_01a7:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01ac:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01b1:  stloc.2
    IL_01b2:  ldloc.2
    IL_01b3:  call       float32 [Engine]Engine.Vector3::Distance(valuetype [Engine]Engine.Vector3,
                                                                  valuetype [Engine]Engine.Vector3)
    IL_01b8:  stloc.3
    IL_01b9:  ldloc.3
    IL_01ba:  ldc.r4     4.
    IL_01bf:  blt.s      IL_01c8

    IL_01c1:  ldc.r4     0.0
    IL_01c6:  br.s       IL_01cd

    IL_01c8:  ldc.r4     0.2
    IL_01cd:  stloc.s    V_4
    IL_01cf:  ldarg.0
    IL_01d0:  ldfld      bool Game.ComponentChaseBehavior::m_isPersistent
    IL_01d5:  brtrue.s   IL_01da

    IL_01d7:  ldc.i4.0
    IL_01d8:  br.s       IL_01df

    IL_01da:  ldc.i4     0x1f4
    IL_01df:  stloc.s    V_5
    IL_01e1:  ldarg.0
    IL_01e2:  ldfld      class Game.SubsystemPlayer Game.ComponentChaseBehavior::m_subsystemPlayer
    IL_01e7:  callvirt   instance class Game.ComponentPlayer Game.SubsystemPlayer::get_ComponentPlayer()
    IL_01ec:  brfalse.s  IL_020b

    IL_01ee:  ldarg.0
    IL_01ef:  ldfld      class Game.SubsystemPlayer Game.ComponentChaseBehavior::m_subsystemPlayer
    IL_01f4:  callvirt   instance class Game.ComponentPlayer Game.SubsystemPlayer::get_ComponentPlayer()
    IL_01f9:  callvirt   instance class Game.ComponentSleep Game.ComponentPlayer::get_ComponentSleep()
    IL_01fe:  callvirt   instance bool Game.ComponentSleep::get_IsSleeping()
    IL_0203:  brfalse.s  IL_020b

    IL_0205:  ldloc.s    V_5
    IL_0207:  ldc.i4.2
    IL_0208:  mul
    IL_0209:  stloc.s    V_5
    IL_020b:  ldarg.0
    IL_020c:  ldfld      class Game.ComponentPathfinding Game.ComponentChaseBehavior::m_componentPathfinding
    IL_0211:  ldloc.2
    IL_0212:  ldloc.s    V_4
    IL_0214:  ldloc.3
    IL_0215:  mul
    IL_0216:  ldarg.0
    IL_0217:  ldfld      class Game.ComponentCreature Game.ComponentChaseBehavior::m_target
    IL_021c:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0221:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_Velocity()
    IL_0226:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_022b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0230:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_0235:  ldc.r4     1.
    IL_023a:  ldc.r4     1.5
    IL_023f:  ldloc.s    V_5
    IL_0241:  ldc.i4.1
    IL_0242:  ldc.i4.0
    IL_0243:  ldc.i4.1
    IL_0244:  callvirt   instance void Game.ComponentPathfinding::SetDestination(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>,
                                                                                 float32,
                                                                                 float32,
                                                                                 int32,
                                                                                 bool,
                                                                                 bool,
                                                                                 bool)
    IL_0249:  ldarg.0
    IL_024a:  ldfld      class Game.Random Game.ComponentChaseBehavior::m_random
    IL_024f:  ldc.r4     0.0
    IL_0254:  ldc.r4     1.
    IL_0259:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_025e:  ldc.r4     0.33000001
    IL_0263:  ldarg.0
    IL_0264:  ldfld      float32 Game.ComponentChaseBehavior::m_dt
    IL_0269:  mul
    IL_026a:  bge.un.s   IL_027c

    IL_026c:  ldarg.0
    IL_026d:  ldfld      class Game.ComponentCreature Game.ComponentChaseBehavior::m_componentCreature
    IL_0272:  callvirt   instance class Game.ComponentCreatureSounds Game.ComponentCreature::get_ComponentCreatureSounds()
    IL_0277:  callvirt   instance void Game.ComponentCreatureSounds::PlayAttackSound()
    IL_027c:  ret
  } // end of method ComponentChaseBehavior::'<Load>b__40_8'

  .method private hidebysig instance void 
          '<Load>b__40_9'(object '<obj>') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       36 (0x24)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentCreature Game.ComponentChaseBehavior::m_target
    IL_0006:  brfalse.s  IL_0023

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.ComponentRandomFeedBehavior Game.ComponentChaseBehavior::m_componentFeedBehavior
    IL_000e:  ldarg.0
    IL_000f:  ldfld      class Game.ComponentCreature Game.ComponentChaseBehavior::m_target
    IL_0014:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0019:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_001e:  callvirt   instance void Game.ComponentRandomFeedBehavior::Feed(valuetype [Engine]Engine.Vector3)
    IL_0023:  ret
  } // end of method ComponentChaseBehavior::'<Load>b__40_9'

  .property instance class Game.ComponentCreature
          Target()
  {
    .get instance class Game.ComponentCreature Game.ComponentChaseBehavior::get_Target()
  } // end of property ComponentChaseBehavior::Target
  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.ComponentChaseBehavior::get_UpdateOrder()
  } // end of property ComponentChaseBehavior::UpdateOrder
  .property instance float32 ImportanceLevel()
  {
    .get instance float32 Game.ComponentChaseBehavior::get_ImportanceLevel()
  } // end of property ComponentChaseBehavior::ImportanceLevel
} // end of class Game.ComponentChaseBehavior