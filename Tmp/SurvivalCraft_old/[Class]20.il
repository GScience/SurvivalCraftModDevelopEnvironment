.class public auto ansi beforefieldinit Game.ComponentHerdBehavior
       extends Game.ComponentBehavior
       implements Game.IUpdateable
{
  .field private class Game.SubsystemCreatureSpawn m_subsystemCreatureSpawn
  .field private class Game.ComponentCreature m_componentCreature
  .field private class Game.ComponentPathfinding m_componentPathfinding
  .field private class Game.StateMachine m_stateMachine
  .field private float32 m_dt
  .field private float32 m_importanceLevel
  .field private class Game.Random m_random
  .field private valuetype [Engine]Engine.Vector2 m_look
  .field private bool m_autoNearbyCreaturesHelp
  .field private string '<HerdName>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname instance string 
          get_HerdName() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string Game.ComponentHerdBehavior::'<HerdName>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentHerdBehavior::get_HerdName

  .method private hidebysig specialname instance void 
          set_HerdName(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string Game.ComponentHerdBehavior::'<HerdName>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentHerdBehavior::set_HerdName

  .method public hidebysig instance void 
          CallNearbyCreaturesHelp(class Game.ComponentCreature target,
                                  float32 maxRange,
                                  float32 maxChaseTime,
                                  bool isPersistent) cil managed
  {
    // 代码大小       169 (0xa9)
    .maxstack  5
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.ComponentCreature,bool> V_1,
             class Game.ComponentCreature V_2,
             class Game.ComponentHerdBehavior V_3,
             class Game.ComponentChaseBehavior V_4)
    IL_0000:  ldarg.1
    IL_0001:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0006:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_000b:  stloc.0
    IL_000c:  ldarg.0
    IL_000d:  ldfld      class Game.SubsystemCreatureSpawn Game.ComponentHerdBehavior::m_subsystemCreatureSpawn
    IL_0012:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<class Game.ComponentCreature,bool> Game.SubsystemCreatureSpawn::get_Creatures()
    IL_0017:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<class Game.ComponentCreature,bool>::GetEnumerator()
    IL_001c:  stloc.1
    .try
    {
      IL_001d:  br.s       IL_008f

      IL_001f:  ldloca.s   V_1
      IL_0021:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.ComponentCreature,bool>::get_Current()
      IL_0026:  stloc.2
      IL_0027:  ldloc.0
      IL_0028:  ldloc.2
      IL_0029:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
      IL_002e:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
      IL_0033:  call       float32 [Engine]Engine.Vector3::DistanceSquared(valuetype [Engine]Engine.Vector3,
                                                                           valuetype [Engine]Engine.Vector3)
      IL_0038:  ldc.r4     256.
      IL_003d:  bge.un.s   IL_008f

      IL_003f:  ldloc.2
      IL_0040:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
      IL_0045:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentHerdBehavior>()
      IL_004a:  stloc.3
      IL_004b:  ldloc.3
      IL_004c:  brfalse.s  IL_008f

      IL_004e:  ldloc.3
      IL_004f:  callvirt   instance string Game.ComponentHerdBehavior::get_HerdName()
      IL_0054:  ldarg.0
      IL_0055:  call       instance string Game.ComponentHerdBehavior::get_HerdName()
      IL_005a:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_005f:  brfalse.s  IL_008f

      IL_0061:  ldloc.3
      IL_0062:  ldfld      bool Game.ComponentHerdBehavior::m_autoNearbyCreaturesHelp
      IL_0067:  brfalse.s  IL_008f

      IL_0069:  ldloc.2
      IL_006a:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
      IL_006f:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentChaseBehavior>()
      IL_0074:  stloc.s    V_4
      IL_0076:  ldloc.s    V_4
      IL_0078:  brfalse.s  IL_008f

      IL_007a:  ldloc.s    V_4
      IL_007c:  callvirt   instance class Game.ComponentCreature Game.ComponentChaseBehavior::get_Target()
      IL_0081:  brtrue.s   IL_008f

      IL_0083:  ldloc.s    V_4
      IL_0085:  ldarg.1
      IL_0086:  ldarg.2
      IL_0087:  ldarg.3
      IL_0088:  ldarg.s    isPersistent
      IL_008a:  callvirt   instance void Game.ComponentChaseBehavior::Attack(class Game.ComponentCreature,
                                                                             float32,
                                                                             float32,
                                                                             bool)
      IL_008f:  ldloca.s   V_1
      IL_0091:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.ComponentCreature,bool>::MoveNext()
      IL_0096:  brtrue.s   IL_001f

      IL_0098:  leave.s    IL_00a8

    }  // end .try
    finally
    {
      IL_009a:  ldloca.s   V_1
      IL_009c:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.ComponentCreature,bool>
      IL_00a2:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00a7:  endfinally
    }  // end handler
    IL_00a8:  ret
  } // end of method ComponentHerdBehavior::CallNearbyCreaturesHelp

  .method public hidebysig instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> 
          FindHerdCenter() cil managed
  {
    // 代码大小       229 (0xe5)
    .maxstack  2
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             int32 V_1,
             valuetype [Engine]Engine.Vector3 V_2,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> V_3,
             valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.ComponentCreature,bool> V_4,
             class Game.ComponentCreature V_5,
             class Game.ComponentHerdBehavior V_6,
             valuetype [Engine]Engine.Vector3 V_7)
    IL_0000:  ldarg.0
    IL_0001:  call       instance string Game.ComponentHerdBehavior::get_HerdName()
    IL_0006:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_000b:  brfalse.s  IL_0017

    IL_000d:  ldloca.s   V_3
    IL_000f:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>
    IL_0015:  ldloc.3
    IL_0016:  ret

    IL_0017:  ldarg.0
    IL_0018:  ldfld      class Game.ComponentCreature Game.ComponentHerdBehavior::m_componentCreature
    IL_001d:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0022:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0027:  stloc.0
    IL_0028:  ldc.i4.0
    IL_0029:  stloc.1
    IL_002a:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_002f:  stloc.2
    IL_0030:  ldarg.0
    IL_0031:  ldfld      class Game.SubsystemCreatureSpawn Game.ComponentHerdBehavior::m_subsystemCreatureSpawn
    IL_0036:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<class Game.ComponentCreature,bool> Game.SubsystemCreatureSpawn::get_Creatures()
    IL_003b:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<class Game.ComponentCreature,bool>::GetEnumerator()
    IL_0040:  stloc.s    V_4
    .try
    {
      IL_0042:  br.s       IL_00b0

      IL_0044:  ldloca.s   V_4
      IL_0046:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.ComponentCreature,bool>::get_Current()
      IL_004b:  stloc.s    V_5
      IL_004d:  ldloc.s    V_5
      IL_004f:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
      IL_0054:  callvirt   instance float32 Game.ComponentHealth::get_Health()
      IL_0059:  ldc.r4     0.0
      IL_005e:  ble.un.s   IL_00b0

      IL_0060:  ldloc.s    V_5
      IL_0062:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
      IL_0067:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentHerdBehavior>()
      IL_006c:  stloc.s    V_6
      IL_006e:  ldloc.s    V_6
      IL_0070:  brfalse.s  IL_00b0

      IL_0072:  ldloc.s    V_6
      IL_0074:  callvirt   instance string Game.ComponentHerdBehavior::get_HerdName()
      IL_0079:  ldarg.0
      IL_007a:  call       instance string Game.ComponentHerdBehavior::get_HerdName()
      IL_007f:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_0084:  brfalse.s  IL_00b0

      IL_0086:  ldloc.s    V_5
      IL_0088:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
      IL_008d:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
      IL_0092:  stloc.s    V_7
      IL_0094:  ldloc.0
      IL_0095:  ldloc.s    V_7
      IL_0097:  call       float32 [Engine]Engine.Vector3::DistanceSquared(valuetype [Engine]Engine.Vector3,
                                                                           valuetype [Engine]Engine.Vector3)
      IL_009c:  ldc.r4     900.
      IL_00a1:  bge.un.s   IL_00b0

      IL_00a3:  ldloc.2
      IL_00a4:  ldloc.s    V_7
      IL_00a6:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_00ab:  stloc.2
      IL_00ac:  ldloc.1
      IL_00ad:  ldc.i4.1
      IL_00ae:  add
      IL_00af:  stloc.1
      IL_00b0:  ldloca.s   V_4
      IL_00b2:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.ComponentCreature,bool>::MoveNext()
      IL_00b7:  brtrue.s   IL_0044

      IL_00b9:  leave.s    IL_00c9

    }  // end .try
    finally
    {
      IL_00bb:  ldloca.s   V_4
      IL_00bd:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.ComponentCreature,bool>
      IL_00c3:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00c8:  endfinally
    }  // end handler
    IL_00c9:  ldloc.1
    IL_00ca:  ldc.i4.0
    IL_00cb:  ble.s      IL_00db

    IL_00cd:  ldloc.2
    IL_00ce:  ldloc.1
    IL_00cf:  conv.r4
    IL_00d0:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Division(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_00d5:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_00da:  ret

    IL_00db:  ldloca.s   V_3
    IL_00dd:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>
    IL_00e3:  ldloc.3
    IL_00e4:  ret
  } // end of method ComponentHerdBehavior::FindHerdCenter

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method ComponentHerdBehavior::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       135 (0x87)
    .maxstack  4
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.StateMachine Game.ComponentHerdBehavior::m_stateMachine
    IL_0006:  callvirt   instance string Game.StateMachine::get_CurrentState()
    IL_000b:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_0010:  brfalse.s  IL_0022

    IL_0012:  ldarg.0
    IL_0013:  ldfld      class Game.StateMachine Game.ComponentHerdBehavior::m_stateMachine
    IL_0018:  ldstr      "Inactive"
    IL_001d:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0022:  ldarg.0
    IL_0023:  ldfld      class Game.Random Game.ComponentHerdBehavior::m_random
    IL_0028:  ldc.r4     0.0
    IL_002d:  ldc.r4     1.
    IL_0032:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0037:  ldc.r4     5.0000001e-002
    IL_003c:  ldarg.1
    IL_003d:  mul
    IL_003e:  bge.un.s   IL_005b

    IL_0040:  ldarg.0
    IL_0041:  ldarg.0
    IL_0042:  ldfld      class Game.Random Game.ComponentHerdBehavior::m_random
    IL_0047:  ldc.r4     1.
    IL_004c:  ldc.r4     5.
    IL_0051:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0056:  stfld      float32 Game.ComponentHerdBehavior::m_importanceLevel
    IL_005b:  ldarg.0
    IL_005c:  ldarg.1
    IL_005d:  stfld      float32 Game.ComponentHerdBehavior::m_dt
    IL_0062:  ldarg.0
    IL_0063:  callvirt   instance bool Game.ComponentBehavior::get_IsActive()
    IL_0068:  brfalse.s  IL_0076

    IL_006a:  ldarg.0
    IL_006b:  ldfld      class Game.StateMachine Game.ComponentHerdBehavior::m_stateMachine
    IL_0070:  callvirt   instance void Game.StateMachine::Update()
    IL_0075:  ret

    IL_0076:  ldarg.0
    IL_0077:  ldfld      class Game.StateMachine Game.ComponentHerdBehavior::m_stateMachine
    IL_007c:  ldstr      "Inactive"
    IL_0081:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0086:  ret
  } // end of method ComponentHerdBehavior::Update

  .method public hidebysig specialname virtual 
          instance float32  get_ImportanceLevel() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentHerdBehavior::m_importanceLevel
    IL_0006:  ret
  } // end of method ComponentHerdBehavior::get_ImportanceLevel

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       218 (0xda)
    .maxstack  5
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemCreatureSpawn>(bool)
    IL_000d:  stfld      class Game.SubsystemCreatureSpawn Game.ComponentHerdBehavior::m_subsystemCreatureSpawn
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreature>(bool)
    IL_001f:  stfld      class Game.ComponentCreature Game.ComponentHerdBehavior::m_componentCreature
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentPathfinding>(bool)
    IL_0031:  stfld      class Game.ComponentPathfinding Game.ComponentHerdBehavior::m_componentPathfinding
    IL_0036:  ldarg.0
    IL_0037:  ldarg.1
    IL_0038:  ldstr      "HerdName"
    IL_003d:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string)
    IL_0042:  call       instance void Game.ComponentHerdBehavior::set_HerdName(string)
    IL_0047:  ldarg.0
    IL_0048:  ldarg.1
    IL_0049:  ldstr      "AutoNearbyCreaturesHelp"
    IL_004e:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<bool>(string)
    IL_0053:  stfld      bool Game.ComponentHerdBehavior::m_autoNearbyCreaturesHelp
    IL_0058:  ldarg.0
    IL_0059:  ldfld      class Game.ComponentCreature Game.ComponentHerdBehavior::m_componentCreature
    IL_005e:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_0063:  ldarg.0
    IL_0064:  ldftn      instance void Game.ComponentHerdBehavior::'<Load>b__20_0'(class Game.ComponentCreature)
    IL_006a:  newobj     instance void class [System.Runtime]System.Action`1<class Game.ComponentCreature>::.ctor(object,
                                                                                                                  native int)
    IL_006f:  callvirt   instance void Game.ComponentHealth::add_Attacked(class [System.Runtime]System.Action`1<class Game.ComponentCreature>)
    IL_0074:  ldarg.0
    IL_0075:  ldfld      class Game.StateMachine Game.ComponentHerdBehavior::m_stateMachine
    IL_007a:  ldstr      "Inactive"
    IL_007f:  ldnull
    IL_0080:  ldarg.0
    IL_0081:  ldftn      instance void Game.ComponentHerdBehavior::'<Load>b__20_1'()
    IL_0087:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_008c:  ldnull
    IL_008d:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_0092:  ldarg.0
    IL_0093:  ldfld      class Game.StateMachine Game.ComponentHerdBehavior::m_stateMachine
    IL_0098:  ldstr      "Stuck"
    IL_009d:  ldarg.0
    IL_009e:  ldftn      instance void Game.ComponentHerdBehavior::'<Load>b__20_2'()
    IL_00a4:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00a9:  ldnull
    IL_00aa:  ldnull
    IL_00ab:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_00b0:  ldarg.0
    IL_00b1:  ldfld      class Game.StateMachine Game.ComponentHerdBehavior::m_stateMachine
    IL_00b6:  ldstr      "Walk"
    IL_00bb:  ldarg.0
    IL_00bc:  ldftn      instance void Game.ComponentHerdBehavior::'<Load>b__20_3'()
    IL_00c2:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00c7:  ldarg.0
    IL_00c8:  ldftn      instance void Game.ComponentHerdBehavior::'<Load>b__20_4'()
    IL_00ce:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00d3:  ldnull
    IL_00d4:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_00d9:  ret
  } // end of method ComponentHerdBehavior::Load

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.StateMachine::.ctor()
    IL_0006:  stfld      class Game.StateMachine Game.ComponentHerdBehavior::m_stateMachine
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void Game.Random::.ctor()
    IL_0011:  stfld      class Game.Random Game.ComponentHerdBehavior::m_random
    IL_0016:  ldarg.0
    IL_0017:  call       instance void Game.ComponentBehavior::.ctor()
    IL_001c:  ret
  } // end of method ComponentHerdBehavior::.ctor

  .method private hidebysig instance void 
          '<Load>b__20_0'(class Game.ComponentCreature attacker) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldc.r4     20.
    IL_0007:  ldc.r4     30.
    IL_000c:  ldc.i4.0
    IL_000d:  call       instance void Game.ComponentHerdBehavior::CallNearbyCreaturesHelp(class Game.ComponentCreature,
                                                                                           float32,
                                                                                           float32,
                                                                                           bool)
    IL_0012:  ret
  } // end of method ComponentHerdBehavior::'<Load>b__20_0'

  .method private hidebysig instance void 
          '<Load>b__20_1'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       25 (0x19)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  callvirt   instance bool Game.ComponentBehavior::get_IsActive()
    IL_0006:  brfalse.s  IL_0018

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.StateMachine Game.ComponentHerdBehavior::m_stateMachine
    IL_000e:  ldstr      "Walk"
    IL_0013:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0018:  ret
  } // end of method ComponentHerdBehavior::'<Load>b__20_1'

  .method private hidebysig instance void 
          '<Load>b__20_2'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       73 (0x49)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.StateMachine Game.ComponentHerdBehavior::m_stateMachine
    IL_0006:  ldstr      "Walk"
    IL_000b:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0010:  ldarg.0
    IL_0011:  ldfld      class Game.Random Game.ComponentHerdBehavior::m_random
    IL_0016:  ldc.r4     0.0
    IL_001b:  ldc.r4     1.
    IL_0020:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0025:  ldc.r4     0.5
    IL_002a:  bge.un.s   IL_0048

    IL_002c:  ldarg.0
    IL_002d:  ldfld      class Game.ComponentCreature Game.ComponentHerdBehavior::m_componentCreature
    IL_0032:  callvirt   instance class Game.ComponentCreatureSounds Game.ComponentCreature::get_ComponentCreatureSounds()
    IL_0037:  ldc.i4.0
    IL_0038:  callvirt   instance void Game.ComponentCreatureSounds::PlayIdleSound(bool)
    IL_003d:  ldarg.0
    IL_003e:  ldc.r4     0.0
    IL_0043:  stfld      float32 Game.ComponentHerdBehavior::m_importanceLevel
    IL_0048:  ret
  } // end of method ComponentHerdBehavior::'<Load>b__20_2'

  .method private hidebysig instance void 
          '<Load>b__20_3'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       117 (0x75)
    .maxstack  8
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentHerdBehavior::FindHerdCenter()
    IL_0006:  stloc.0
    IL_0007:  ldloca.s   V_0
    IL_0009:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_000e:  brfalse.s  IL_0069

    IL_0010:  ldarg.0
    IL_0011:  ldfld      class Game.ComponentCreature Game.ComponentHerdBehavior::m_componentCreature
    IL_0016:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_001b:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0020:  ldloca.s   V_0
    IL_0022:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_0027:  call       float32 [Engine]Engine.Vector3::Distance(valuetype [Engine]Engine.Vector3,
                                                                  valuetype [Engine]Engine.Vector3)
    IL_002c:  ldc.r4     6.
    IL_0031:  ble.un.s   IL_0069

    IL_0033:  ldarg.0
    IL_0034:  ldfld      class Game.ComponentPathfinding Game.ComponentHerdBehavior::m_componentPathfinding
    IL_0039:  ldloca.s   V_0
    IL_003b:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_0040:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_0045:  ldarg.0
    IL_0046:  ldfld      class Game.Random Game.ComponentHerdBehavior::m_random
    IL_004b:  ldc.r4     0.40000001
    IL_0050:  ldc.r4     0.5
    IL_0055:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_005a:  ldc.r4     1.
    IL_005f:  ldc.i4.0
    IL_0060:  ldc.i4.0
    IL_0061:  ldc.i4.1
    IL_0062:  ldc.i4.0
    IL_0063:  callvirt   instance void Game.ComponentPathfinding::SetDestination(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>,
                                                                                 float32,
                                                                                 float32,
                                                                                 int32,
                                                                                 bool,
                                                                                 bool,
                                                                                 bool)
    IL_0068:  ret

    IL_0069:  ldarg.0
    IL_006a:  ldc.r4     0.0
    IL_006f:  stfld      float32 Game.ComponentHerdBehavior::m_importanceLevel
    IL_0074:  ret
  } // end of method ComponentHerdBehavior::'<Load>b__20_3'

  .method private hidebysig instance void 
          '<Load>b__20_4'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       267 (0x10b)
    .maxstack  6
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentCreature Game.ComponentHerdBehavior::m_componentCreature
    IL_0006:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_000b:  ldarg.0
    IL_000c:  ldfld      valuetype [Engine]Engine.Vector2 Game.ComponentHerdBehavior::m_look
    IL_0011:  ldarg.0
    IL_0012:  ldfld      class Game.ComponentCreature Game.ComponentHerdBehavior::m_componentCreature
    IL_0017:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_001c:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.ComponentLocomotion::get_LookAngles()
    IL_0021:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_0026:  callvirt   instance void Game.ComponentLocomotion::set_LookOrder(valuetype [Engine]Engine.Vector2)
    IL_002b:  ldarg.0
    IL_002c:  ldfld      class Game.ComponentPathfinding Game.ComponentHerdBehavior::m_componentPathfinding
    IL_0031:  callvirt   instance bool Game.ComponentPathfinding::get_IsStuck()
    IL_0036:  brfalse.s  IL_0048

    IL_0038:  ldarg.0
    IL_0039:  ldfld      class Game.StateMachine Game.ComponentHerdBehavior::m_stateMachine
    IL_003e:  ldstr      "Stuck"
    IL_0043:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0048:  ldarg.0
    IL_0049:  ldfld      class Game.ComponentPathfinding Game.ComponentHerdBehavior::m_componentPathfinding
    IL_004e:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPathfinding::get_Destination()
    IL_0053:  stloc.0
    IL_0054:  ldloca.s   V_0
    IL_0056:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_005b:  brtrue.s   IL_0068

    IL_005d:  ldarg.0
    IL_005e:  ldc.r4     0.0
    IL_0063:  stfld      float32 Game.ComponentHerdBehavior::m_importanceLevel
    IL_0068:  ldarg.0
    IL_0069:  ldfld      class Game.Random Game.ComponentHerdBehavior::m_random
    IL_006e:  ldc.r4     0.0
    IL_0073:  ldc.r4     1.
    IL_0078:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_007d:  ldc.r4     5.0000001e-002
    IL_0082:  ldarg.0
    IL_0083:  ldfld      float32 Game.ComponentHerdBehavior::m_dt
    IL_0088:  mul
    IL_0089:  bge.un.s   IL_009c

    IL_008b:  ldarg.0
    IL_008c:  ldfld      class Game.ComponentCreature Game.ComponentHerdBehavior::m_componentCreature
    IL_0091:  callvirt   instance class Game.ComponentCreatureSounds Game.ComponentCreature::get_ComponentCreatureSounds()
    IL_0096:  ldc.i4.0
    IL_0097:  callvirt   instance void Game.ComponentCreatureSounds::PlayIdleSound(bool)
    IL_009c:  ldarg.0
    IL_009d:  ldfld      class Game.Random Game.ComponentHerdBehavior::m_random
    IL_00a2:  ldc.r4     0.0
    IL_00a7:  ldc.r4     1.
    IL_00ac:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_00b1:  ldc.r4     1.5
    IL_00b6:  ldarg.0
    IL_00b7:  ldfld      float32 Game.ComponentHerdBehavior::m_dt
    IL_00bc:  mul
    IL_00bd:  bge.un.s   IL_010a

    IL_00bf:  ldarg.0
    IL_00c0:  ldc.r4     45.
    IL_00c5:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_00ca:  ldarg.0
    IL_00cb:  ldfld      class Game.Random Game.ComponentHerdBehavior::m_random
    IL_00d0:  ldc.r4     -1.
    IL_00d5:  ldc.r4     1.
    IL_00da:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_00df:  mul
    IL_00e0:  ldc.r4     10.
    IL_00e5:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_00ea:  ldarg.0
    IL_00eb:  ldfld      class Game.Random Game.ComponentHerdBehavior::m_random
    IL_00f0:  ldc.r4     -1.
    IL_00f5:  ldc.r4     1.
    IL_00fa:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_00ff:  mul
    IL_0100:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0105:  stfld      valuetype [Engine]Engine.Vector2 Game.ComponentHerdBehavior::m_look
    IL_010a:  ret
  } // end of method ComponentHerdBehavior::'<Load>b__20_4'

  .property instance string HerdName()
  {
    .get instance string Game.ComponentHerdBehavior::get_HerdName()
    .set instance void Game.ComponentHerdBehavior::set_HerdName(string)
  } // end of property ComponentHerdBehavior::HerdName
  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.ComponentHerdBehavior::get_UpdateOrder()
  } // end of property ComponentHerdBehavior::UpdateOrder
  .property instance float32 ImportanceLevel()
  {
    .get instance float32 Game.ComponentHerdBehavior::get_ImportanceLevel()
  } // end of property ComponentHerdBehavior::ImportanceLevel
} // end of class Game.ComponentHerdBehavior