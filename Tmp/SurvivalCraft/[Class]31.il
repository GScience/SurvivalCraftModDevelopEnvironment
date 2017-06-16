.class public auto ansi beforefieldinit Game.ComponentSteedBehavior
       extends Game.ComponentBehavior
       implements Game.IUpdateable
{
  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.SubsystemBodies m_subsystemBodies
  .field private class Game.ComponentCreature m_componentCreature
  .field private class Game.ComponentPathfinding m_componentPathfinding
  .field private class Game.ComponentMount m_componentMount
  .field private class Game.StateMachine m_stateMachine
  .field private float32 m_importanceLevel
  .field private bool m_isEnabled
  .field private class Game.Random m_random
  .field private class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> m_bodies
  .field private float32[] m_speedLevels
  .field private int32 m_speedLevel
  .field private float32 m_speed
  .field private float32 m_turnSpeed
  .field private float32 m_speedChangeFactor
  .field private float32 m_timeToSpeedReduction
  .field private float64 m_lastNotBlockedTime
  .field private int32 '<SpeedOrder>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<TurnOrder>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<JumpOrder>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private bool '<WasOrderIssued>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname instance int32 
          get_SpeedOrder() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Game.ComponentSteedBehavior::'<SpeedOrder>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentSteedBehavior::get_SpeedOrder

  .method public hidebysig specialname instance void 
          set_SpeedOrder(int32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 Game.ComponentSteedBehavior::'<SpeedOrder>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentSteedBehavior::set_SpeedOrder

  .method public hidebysig specialname instance float32 
          get_TurnOrder() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentSteedBehavior::'<TurnOrder>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentSteedBehavior::get_TurnOrder

  .method public hidebysig specialname instance void 
          set_TurnOrder(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ComponentSteedBehavior::'<TurnOrder>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentSteedBehavior::set_TurnOrder

  .method public hidebysig specialname instance float32 
          get_JumpOrder() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentSteedBehavior::'<JumpOrder>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentSteedBehavior::get_JumpOrder

  .method public hidebysig specialname instance void 
          set_JumpOrder(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ComponentSteedBehavior::'<JumpOrder>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentSteedBehavior::set_JumpOrder

  .method public hidebysig specialname instance bool 
          get_WasOrderIssued() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.ComponentSteedBehavior::'<WasOrderIssued>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentSteedBehavior::get_WasOrderIssued

  .method private hidebysig specialname instance void 
          set_WasOrderIssued(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.ComponentSteedBehavior::'<WasOrderIssued>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentSteedBehavior::set_WasOrderIssued

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method ComponentSteedBehavior::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       223 (0xdf)
    .maxstack  4
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.StateMachine Game.ComponentSteedBehavior::m_stateMachine
    IL_0006:  callvirt   instance void Game.StateMachine::Update()
    IL_000b:  ldarg.0
    IL_000c:  call       instance int32 Game.ComponentSteedBehavior::get_SpeedOrder()
    IL_0011:  brtrue.s   IL_002d

    IL_0013:  ldarg.0
    IL_0014:  call       instance float32 Game.ComponentSteedBehavior::get_TurnOrder()
    IL_0019:  ldc.r4     0.0
    IL_001e:  bne.un.s   IL_002d

    IL_0020:  ldarg.0
    IL_0021:  call       instance float32 Game.ComponentSteedBehavior::get_JumpOrder()
    IL_0026:  ldc.r4     0.0
    IL_002b:  beq.s      IL_0053

    IL_002d:  ldarg.0
    IL_002e:  ldc.i4.0
    IL_002f:  call       instance void Game.ComponentSteedBehavior::set_SpeedOrder(int32)
    IL_0034:  ldarg.0
    IL_0035:  ldc.r4     0.0
    IL_003a:  call       instance void Game.ComponentSteedBehavior::set_TurnOrder(float32)
    IL_003f:  ldarg.0
    IL_0040:  ldc.r4     0.0
    IL_0045:  call       instance void Game.ComponentSteedBehavior::set_JumpOrder(float32)
    IL_004a:  ldarg.0
    IL_004b:  ldc.i4.1
    IL_004c:  call       instance void Game.ComponentSteedBehavior::set_WasOrderIssued(bool)
    IL_0051:  br.s       IL_005a

    IL_0053:  ldarg.0
    IL_0054:  ldc.i4.0
    IL_0055:  call       instance void Game.ComponentSteedBehavior::set_WasOrderIssued(bool)
    IL_005a:  ldarg.0
    IL_005b:  ldfld      class Game.SubsystemTime Game.ComponentSteedBehavior::m_subsystemTime
    IL_0060:  ldc.r8     1.
    IL_0069:  ldarg.0
    IL_006a:  callvirt   instance int32 [System.Runtime]System.Object::GetHashCode()
    IL_006f:  ldc.i4.s   100
    IL_0071:  rem
    IL_0072:  conv.r4
    IL_0073:  ldc.r4     9.9999998e-003
    IL_0078:  mul
    IL_0079:  conv.r8
    IL_007a:  callvirt   instance bool Game.SubsystemTime::PeriodicGameTimeEvent(float64,
                                                                                 float64)
    IL_007f:  brfalse.s  IL_00c6

    IL_0081:  ldarg.0
    IL_0082:  ldc.r4     0.0
    IL_0087:  stfld      float32 Game.ComponentSteedBehavior::m_importanceLevel
    IL_008c:  ldarg.0
    IL_008d:  ldfld      bool Game.ComponentSteedBehavior::m_isEnabled
    IL_0092:  brfalse.s  IL_00c6

    IL_0094:  ldarg.0
    IL_0095:  ldfld      class Game.ComponentMount Game.ComponentSteedBehavior::m_componentMount
    IL_009a:  callvirt   instance class Game.ComponentRider Game.ComponentMount::get_Rider()
    IL_009f:  brfalse.s  IL_00ae

    IL_00a1:  ldarg.0
    IL_00a2:  ldc.r4     200.
    IL_00a7:  stfld      float32 Game.ComponentSteedBehavior::m_importanceLevel
    IL_00ac:  br.s       IL_00c6

    IL_00ae:  ldarg.0
    IL_00af:  ldc.r4     7.
    IL_00b4:  call       instance class Game.ComponentRider Game.ComponentSteedBehavior::FindNearbyRider(float32)
    IL_00b9:  brfalse.s  IL_00c6

    IL_00bb:  ldarg.0
    IL_00bc:  ldc.r4     7.
    IL_00c1:  stfld      float32 Game.ComponentSteedBehavior::m_importanceLevel
    IL_00c6:  ldarg.0
    IL_00c7:  callvirt   instance bool Game.ComponentBehavior::get_IsActive()
    IL_00cc:  brtrue.s   IL_00de

    IL_00ce:  ldarg.0
    IL_00cf:  ldfld      class Game.StateMachine Game.ComponentSteedBehavior::m_stateMachine
    IL_00d4:  ldstr      "Inactive"
    IL_00d9:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_00de:  ret
  } // end of method ComponentSteedBehavior::Update

  .method public hidebysig specialname virtual 
          instance float32  get_ImportanceLevel() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentSteedBehavior::m_importanceLevel
    IL_0006:  ret
  } // end of method ComponentSteedBehavior::get_ImportanceLevel

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       256 (0x100)
    .maxstack  5
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_000d:  stfld      class Game.SubsystemTime Game.ComponentSteedBehavior::m_subsystemTime
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemBodies>(bool)
    IL_001f:  stfld      class Game.SubsystemBodies Game.ComponentSteedBehavior::m_subsystemBodies
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreature>(bool)
    IL_0031:  stfld      class Game.ComponentCreature Game.ComponentSteedBehavior::m_componentCreature
    IL_0036:  ldarg.0
    IL_0037:  ldarg.0
    IL_0038:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_003d:  ldc.i4.1
    IL_003e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentPathfinding>(bool)
    IL_0043:  stfld      class Game.ComponentPathfinding Game.ComponentSteedBehavior::m_componentPathfinding
    IL_0048:  ldarg.0
    IL_0049:  ldarg.0
    IL_004a:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_004f:  ldc.i4.1
    IL_0050:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentMount>(bool)
    IL_0055:  stfld      class Game.ComponentMount Game.ComponentSteedBehavior::m_componentMount
    IL_005a:  ldarg.0
    IL_005b:  ldarg.0
    IL_005c:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0061:  callvirt   instance class [EntitySystem]TemplatesDatabase.ValuesDictionary [EntitySystem]GameEntitySystem.Entity::get_ValuesDictionary()
    IL_0066:  callvirt   instance class [EntitySystem]TemplatesDatabase.DatabaseObject [EntitySystem]TemplatesDatabase.ValuesDictionary::get_DatabaseObject()
    IL_006b:  callvirt   instance string [EntitySystem]TemplatesDatabase.DatabaseObject::get_Name()
    IL_0070:  ldstr      "_Saddled"
    IL_0075:  callvirt   instance bool [System.Runtime]System.String::EndsWith(string)
    IL_007a:  stfld      bool Game.ComponentSteedBehavior::m_isEnabled
    IL_007f:  ldarg.0
    IL_0080:  ldfld      class Game.StateMachine Game.ComponentSteedBehavior::m_stateMachine
    IL_0085:  ldstr      "Inactive"
    IL_008a:  ldnull
    IL_008b:  ldarg.0
    IL_008c:  ldftn      instance void Game.ComponentSteedBehavior::'<Load>b__38_0'()
    IL_0092:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0097:  ldnull
    IL_0098:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_009d:  ldarg.0
    IL_009e:  ldfld      class Game.StateMachine Game.ComponentSteedBehavior::m_stateMachine
    IL_00a3:  ldstr      "Wait"
    IL_00a8:  ldarg.0
    IL_00a9:  ldftn      instance void Game.ComponentSteedBehavior::'<Load>b__38_1'()
    IL_00af:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00b4:  ldarg.0
    IL_00b5:  ldftn      instance void Game.ComponentSteedBehavior::'<Load>b__38_2'()
    IL_00bb:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00c0:  ldnull
    IL_00c1:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_00c6:  ldarg.0
    IL_00c7:  ldfld      class Game.StateMachine Game.ComponentSteedBehavior::m_stateMachine
    IL_00cc:  ldstr      "Steed"
    IL_00d1:  ldarg.0
    IL_00d2:  ldftn      instance void Game.ComponentSteedBehavior::'<Load>b__38_3'()
    IL_00d8:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00dd:  ldarg.0
    IL_00de:  ldftn      instance void Game.ComponentSteedBehavior::'<Load>b__38_4'()
    IL_00e4:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00e9:  ldnull
    IL_00ea:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_00ef:  ldarg.0
    IL_00f0:  ldfld      class Game.StateMachine Game.ComponentSteedBehavior::m_stateMachine
    IL_00f5:  ldstr      "Inactive"
    IL_00fa:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_00ff:  ret
  } // end of method ComponentSteedBehavior::Load

  .method private hidebysig instance class Game.ComponentRider 
          FindNearbyRider(float32 range) cil managed
  {
    // 代码大小       178 (0xb2)
    .maxstack  4
    .locals init (valuetype [Engine]Engine.DynamicArray`1/Enumerator<class Game.ComponentBody> V_0,
             class Game.ComponentBody V_1,
             class Game.ComponentRider V_2,
             class Game.ComponentRider V_3)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> Game.ComponentSteedBehavior::m_bodies
    IL_0006:  callvirt   instance void class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>::Clear()
    IL_000b:  ldarg.0
    IL_000c:  ldfld      class Game.SubsystemBodies Game.ComponentSteedBehavior::m_subsystemBodies
    IL_0011:  ldarg.0
    IL_0012:  ldfld      class Game.ComponentCreature Game.ComponentSteedBehavior::m_componentCreature
    IL_0017:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_001c:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0021:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0026:  ldarg.0
    IL_0027:  ldfld      class Game.ComponentCreature Game.ComponentSteedBehavior::m_componentCreature
    IL_002c:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0031:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0036:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_003b:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0040:  ldarg.1
    IL_0041:  ldarg.0
    IL_0042:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> Game.ComponentSteedBehavior::m_bodies
    IL_0047:  callvirt   instance void Game.SubsystemBodies::FindBodiesAroundPoint(valuetype [Engine]Engine.Vector2,
                                                                                   float32,
                                                                                   class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>)
    IL_004c:  ldarg.0
    IL_004d:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> Game.ComponentSteedBehavior::m_bodies
    IL_0052:  callvirt   instance valuetype [Engine]Engine.DynamicArray`1/Enumerator<!0> class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>::GetEnumerator()
    IL_0057:  stloc.0
    .try
    {
      IL_0058:  br.s       IL_0095

      IL_005a:  ldloca.s   V_0
      IL_005c:  call       instance !0 valuetype [Engine]Engine.DynamicArray`1/Enumerator<class Game.ComponentBody>::get_Current()
      IL_0061:  stloc.1
      IL_0062:  ldarg.0
      IL_0063:  ldfld      class Game.ComponentCreature Game.ComponentSteedBehavior::m_componentCreature
      IL_0068:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
      IL_006d:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
      IL_0072:  ldloc.1
      IL_0073:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
      IL_0078:  call       float32 [Engine]Engine.Vector3::DistanceSquared(valuetype [Engine]Engine.Vector3,
                                                                           valuetype [Engine]Engine.Vector3)
      IL_007d:  ldarg.1
      IL_007e:  ldarg.1
      IL_007f:  mul
      IL_0080:  bge.un.s   IL_0095

      IL_0082:  ldloc.1
      IL_0083:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
      IL_0088:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentRider>()
      IL_008d:  stloc.2
      IL_008e:  ldloc.2
      IL_008f:  brfalse.s  IL_0095

      IL_0091:  ldloc.2
      IL_0092:  stloc.3
      IL_0093:  leave.s    IL_00b0

      IL_0095:  ldloca.s   V_0
      IL_0097:  call       instance bool valuetype [Engine]Engine.DynamicArray`1/Enumerator<class Game.ComponentBody>::MoveNext()
      IL_009c:  brtrue.s   IL_005a

      IL_009e:  leave.s    IL_00ae

    }  // end .try
    finally
    {
      IL_00a0:  ldloca.s   V_0
      IL_00a2:  constrained. valuetype [Engine]Engine.DynamicArray`1/Enumerator<class Game.ComponentBody>
      IL_00a8:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00ad:  endfinally
    }  // end handler
    IL_00ae:  ldnull
    IL_00af:  ret

    IL_00b0:  ldloc.3
    IL_00b1:  ret
  } // end of method ComponentSteedBehavior::FindNearbyRider

  .method private hidebysig instance void 
          ProcessRidingOrders() cil managed
  {
    // 代码大小       796 (0x31c)
    .maxstack  6
    .locals init (float32 V_0,
             valuetype [Engine]Engine.Vector2 V_1,
             valuetype [Engine]Engine.Vector3 V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  ldfld      int32 Game.ComponentSteedBehavior::m_speedLevel
    IL_0007:  ldarg.0
    IL_0008:  call       instance int32 Game.ComponentSteedBehavior::get_SpeedOrder()
    IL_000d:  add
    IL_000e:  ldc.i4.0
    IL_000f:  ldarg.0
    IL_0010:  ldfld      float32[] Game.ComponentSteedBehavior::m_speedLevels
    IL_0015:  ldlen
    IL_0016:  conv.i4
    IL_0017:  ldc.i4.1
    IL_0018:  sub
    IL_0019:  call       int32 [Engine]Engine.MathUtils::Clamp(int32,
                                                               int32,
                                                               int32)
    IL_001e:  stfld      int32 Game.ComponentSteedBehavior::m_speedLevel
    IL_0023:  ldarg.0
    IL_0024:  ldfld      int32 Game.ComponentSteedBehavior::m_speedLevel
    IL_0029:  ldarg.0
    IL_002a:  ldfld      float32[] Game.ComponentSteedBehavior::m_speedLevels
    IL_002f:  ldlen
    IL_0030:  conv.i4
    IL_0031:  ldc.i4.1
    IL_0032:  sub
    IL_0033:  bne.un.s   IL_0059

    IL_0035:  ldarg.0
    IL_0036:  call       instance int32 Game.ComponentSteedBehavior::get_SpeedOrder()
    IL_003b:  ldc.i4.0
    IL_003c:  ble.s      IL_0059

    IL_003e:  ldarg.0
    IL_003f:  ldarg.0
    IL_0040:  ldfld      class Game.Random Game.ComponentSteedBehavior::m_random
    IL_0045:  ldc.r4     8.
    IL_004a:  ldc.r4     12.
    IL_004f:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0054:  stfld      float32 Game.ComponentSteedBehavior::m_timeToSpeedReduction
    IL_0059:  ldarg.0
    IL_005a:  ldfld      int32 Game.ComponentSteedBehavior::m_speedLevel
    IL_005f:  brtrue.s   IL_0075

    IL_0061:  ldarg.0
    IL_0062:  call       instance int32 Game.ComponentSteedBehavior::get_SpeedOrder()
    IL_0067:  ldc.i4.0
    IL_0068:  bge.s      IL_0075

    IL_006a:  ldarg.0
    IL_006b:  ldc.r4     1.25
    IL_0070:  stfld      float32 Game.ComponentSteedBehavior::m_timeToSpeedReduction
    IL_0075:  ldarg.0
    IL_0076:  ldarg.0
    IL_0077:  ldfld      float32 Game.ComponentSteedBehavior::m_timeToSpeedReduction
    IL_007c:  ldarg.0
    IL_007d:  ldfld      class Game.SubsystemTime Game.ComponentSteedBehavior::m_subsystemTime
    IL_0082:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
    IL_0087:  sub
    IL_0088:  stfld      float32 Game.ComponentSteedBehavior::m_timeToSpeedReduction
    IL_008d:  ldarg.0
    IL_008e:  ldfld      float32 Game.ComponentSteedBehavior::m_timeToSpeedReduction
    IL_0093:  ldc.r4     0.0
    IL_0098:  bgt.un.s   IL_00c7

    IL_009a:  ldarg.0
    IL_009b:  ldfld      int32 Game.ComponentSteedBehavior::m_speedLevel
    IL_00a0:  ldarg.0
    IL_00a1:  ldfld      float32[] Game.ComponentSteedBehavior::m_speedLevels
    IL_00a6:  ldlen
    IL_00a7:  conv.i4
    IL_00a8:  ldc.i4.1
    IL_00a9:  sub
    IL_00aa:  bne.un.s   IL_00c7

    IL_00ac:  ldarg.0
    IL_00ad:  ldarg.0
    IL_00ae:  ldfld      int32 Game.ComponentSteedBehavior::m_speedLevel
    IL_00b3:  ldc.i4.1
    IL_00b4:  sub
    IL_00b5:  stfld      int32 Game.ComponentSteedBehavior::m_speedLevel
    IL_00ba:  ldarg.0
    IL_00bb:  ldc.r4     0.25
    IL_00c0:  stfld      float32 Game.ComponentSteedBehavior::m_speedChangeFactor
    IL_00c5:  br.s       IL_00fb

    IL_00c7:  ldarg.0
    IL_00c8:  ldfld      float32 Game.ComponentSteedBehavior::m_timeToSpeedReduction
    IL_00cd:  ldc.r4     0.0
    IL_00d2:  bgt.un.s   IL_00f0

    IL_00d4:  ldarg.0
    IL_00d5:  ldfld      int32 Game.ComponentSteedBehavior::m_speedLevel
    IL_00da:  brtrue.s   IL_00f0

    IL_00dc:  ldarg.0
    IL_00dd:  ldc.i4.1
    IL_00de:  stfld      int32 Game.ComponentSteedBehavior::m_speedLevel
    IL_00e3:  ldarg.0
    IL_00e4:  ldc.r4     100.
    IL_00e9:  stfld      float32 Game.ComponentSteedBehavior::m_speedChangeFactor
    IL_00ee:  br.s       IL_00fb

    IL_00f0:  ldarg.0
    IL_00f1:  ldc.r4     100.
    IL_00f6:  stfld      float32 Game.ComponentSteedBehavior::m_speedChangeFactor
    IL_00fb:  ldarg.0
    IL_00fc:  ldfld      class Game.SubsystemTime Game.ComponentSteedBehavior::m_subsystemTime
    IL_0101:  ldc.r8     0.25
    IL_010a:  ldc.r8     0.0
    IL_0113:  callvirt   instance bool Game.SubsystemTime::PeriodicGameTimeEvent(float64,
                                                                                 float64)
    IL_0118:  brfalse    IL_01d8

    IL_011d:  ldarg.0
    IL_011e:  ldfld      class Game.ComponentCreature Game.ComponentSteedBehavior::m_componentCreature
    IL_0123:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0128:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_CollisionVelocityChange()
    IL_012d:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0132:  ldarg.0
    IL_0133:  ldfld      class Game.ComponentCreature Game.ComponentSteedBehavior::m_componentCreature
    IL_0138:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_013d:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_CollisionVelocityChange()
    IL_0142:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0147:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_014c:  stloc.1
    IL_014d:  ldloca.s   V_1
    IL_014f:  call       instance float32 [Engine]Engine.Vector2::Length()
    IL_0154:  stloc.0
    IL_0155:  ldarg.0
    IL_0156:  ldfld      int32 Game.ComponentSteedBehavior::m_speedLevel
    IL_015b:  brfalse.s  IL_01a1

    IL_015d:  ldloc.0
    IL_015e:  ldc.r4     0.1
    IL_0163:  blt.s      IL_01a1

    IL_0165:  ldarg.0
    IL_0166:  ldfld      class Game.ComponentCreature Game.ComponentSteedBehavior::m_componentCreature
    IL_016b:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0170:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_Velocity()
    IL_0175:  stloc.2
    IL_0176:  ldloca.s   V_2
    IL_0178:  call       instance float32 [Engine]Engine.Vector3::Length()
    IL_017d:  ldc.r4     0.5
    IL_0182:  ldarg.0
    IL_0183:  ldfld      float32 Game.ComponentSteedBehavior::m_speed
    IL_0188:  mul
    IL_0189:  ldarg.0
    IL_018a:  ldfld      class Game.ComponentCreature Game.ComponentSteedBehavior::m_componentCreature
    IL_018f:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_0194:  callvirt   instance float32 Game.ComponentLocomotion::get_WalkSpeed()
    IL_0199:  mul
    IL_019a:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_019f:  ble.un.s   IL_01b4

    IL_01a1:  ldarg.0
    IL_01a2:  ldarg.0
    IL_01a3:  ldfld      class Game.SubsystemTime Game.ComponentSteedBehavior::m_subsystemTime
    IL_01a8:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_01ad:  stfld      float64 Game.ComponentSteedBehavior::m_lastNotBlockedTime
    IL_01b2:  br.s       IL_01d8

    IL_01b4:  ldarg.0
    IL_01b5:  ldfld      class Game.SubsystemTime Game.ComponentSteedBehavior::m_subsystemTime
    IL_01ba:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_01bf:  ldarg.0
    IL_01c0:  ldfld      float64 Game.ComponentSteedBehavior::m_lastNotBlockedTime
    IL_01c5:  sub
    IL_01c6:  ldc.r8     0.75
    IL_01cf:  ble.un.s   IL_01d8

    IL_01d1:  ldarg.0
    IL_01d2:  ldc.i4.1
    IL_01d3:  stfld      int32 Game.ComponentSteedBehavior::m_speedLevel
    IL_01d8:  ldarg.0
    IL_01d9:  ldarg.0
    IL_01da:  ldfld      float32 Game.ComponentSteedBehavior::m_speed
    IL_01df:  ldarg.0
    IL_01e0:  ldfld      float32 Game.ComponentSteedBehavior::m_speedChangeFactor
    IL_01e5:  ldarg.0
    IL_01e6:  ldfld      class Game.SubsystemTime Game.ComponentSteedBehavior::m_subsystemTime
    IL_01eb:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
    IL_01f0:  mul
    IL_01f1:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_01f6:  ldarg.0
    IL_01f7:  ldfld      float32[] Game.ComponentSteedBehavior::m_speedLevels
    IL_01fc:  ldarg.0
    IL_01fd:  ldfld      int32 Game.ComponentSteedBehavior::m_speedLevel
    IL_0202:  ldelem.r4
    IL_0203:  ldarg.0
    IL_0204:  ldfld      float32 Game.ComponentSteedBehavior::m_speed
    IL_0209:  sub
    IL_020a:  mul
    IL_020b:  add
    IL_020c:  stfld      float32 Game.ComponentSteedBehavior::m_speed
    IL_0211:  ldarg.0
    IL_0212:  ldarg.0
    IL_0213:  ldfld      float32 Game.ComponentSteedBehavior::m_turnSpeed
    IL_0218:  ldc.r4     2.
    IL_021d:  ldarg.0
    IL_021e:  ldfld      class Game.SubsystemTime Game.ComponentSteedBehavior::m_subsystemTime
    IL_0223:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
    IL_0228:  mul
    IL_0229:  ldarg.0
    IL_022a:  call       instance float32 Game.ComponentSteedBehavior::get_TurnOrder()
    IL_022f:  ldc.r4     -0.5
    IL_0234:  ldc.r4     0.5
    IL_0239:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_023e:  ldarg.0
    IL_023f:  ldfld      float32 Game.ComponentSteedBehavior::m_turnSpeed
    IL_0244:  sub
    IL_0245:  mul
    IL_0246:  add
    IL_0247:  stfld      float32 Game.ComponentSteedBehavior::m_turnSpeed
    IL_024c:  ldarg.0
    IL_024d:  ldfld      class Game.ComponentCreature Game.ComponentSteedBehavior::m_componentCreature
    IL_0252:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_0257:  ldarg.0
    IL_0258:  ldfld      float32 Game.ComponentSteedBehavior::m_turnSpeed
    IL_025d:  ldc.r4     0.0
    IL_0262:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0267:  callvirt   instance void Game.ComponentLocomotion::set_TurnOrder(valuetype [Engine]Engine.Vector2)
    IL_026c:  ldarg.0
    IL_026d:  ldfld      class Game.ComponentCreature Game.ComponentSteedBehavior::m_componentCreature
    IL_0272:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_0277:  ldc.r4     0.0
    IL_027c:  ldarg.0
    IL_027d:  ldfld      float32 Game.ComponentSteedBehavior::m_speed
    IL_0282:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0287:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_028c:  callvirt   instance void Game.ComponentLocomotion::set_WalkOrder(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>)
    IL_0291:  ldarg.0
    IL_0292:  ldfld      float32 Game.ComponentSteedBehavior::m_speed
    IL_0297:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_029c:  ldc.r4     9.9999998e-003
    IL_02a1:  bgt.s      IL_02b5

    IL_02a3:  ldarg.0
    IL_02a4:  ldfld      float32 Game.ComponentSteedBehavior::m_turnSpeed
    IL_02a9:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_02ae:  ldc.r4     9.9999998e-003
    IL_02b3:  ble.un.s   IL_02f0

    IL_02b5:  ldarg.0
    IL_02b6:  ldfld      class Game.ComponentCreature Game.ComponentSteedBehavior::m_componentCreature
    IL_02bb:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_02c0:  ldc.r4     2.
    IL_02c5:  ldarg.0
    IL_02c6:  ldfld      float32 Game.ComponentSteedBehavior::m_turnSpeed
    IL_02cb:  mul
    IL_02cc:  ldc.r4     0.0
    IL_02d1:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_02d6:  ldarg.0
    IL_02d7:  ldfld      class Game.ComponentCreature Game.ComponentSteedBehavior::m_componentCreature
    IL_02dc:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_02e1:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.ComponentLocomotion::get_LookAngles()
    IL_02e6:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_02eb:  callvirt   instance void Game.ComponentLocomotion::set_LookOrder(valuetype [Engine]Engine.Vector2)
    IL_02f0:  ldarg.0
    IL_02f1:  ldfld      class Game.ComponentCreature Game.ComponentSteedBehavior::m_componentCreature
    IL_02f6:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_02fb:  ldarg.0
    IL_02fc:  ldfld      class Game.ComponentCreature Game.ComponentSteedBehavior::m_componentCreature
    IL_0301:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_0306:  callvirt   instance float32 Game.ComponentLocomotion::get_JumpOrder()
    IL_030b:  ldarg.0
    IL_030c:  call       instance float32 Game.ComponentSteedBehavior::get_JumpOrder()
    IL_0311:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_0316:  callvirt   instance void Game.ComponentLocomotion::set_JumpOrder(float32)
    IL_031b:  ret
  } // end of method ComponentSteedBehavior::ProcessRidingOrders

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       63 (0x3f)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.StateMachine::.ctor()
    IL_0006:  stfld      class Game.StateMachine Game.ComponentSteedBehavior::m_stateMachine
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void Game.Random::.ctor()
    IL_0011:  stfld      class Game.Random Game.ComponentSteedBehavior::m_random
    IL_0016:  ldarg.0
    IL_0017:  newobj     instance void class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>::.ctor()
    IL_001c:  stfld      class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> Game.ComponentSteedBehavior::m_bodies
    IL_0021:  ldarg.0
    IL_0022:  ldc.i4.5
    IL_0023:  newarr     [System.Runtime]System.Single
    IL_0028:  dup
    IL_0029:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=20' '<PrivateImplementationDetails>'::'1869462BB5948620246F601DE6A8EA31F11DE0D0'
    IL_002e:  call       void [System.Runtime]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [System.Runtime]System.Array,
                                                                                                              valuetype [System.Runtime]System.RuntimeFieldHandle)
    IL_0033:  stfld      float32[] Game.ComponentSteedBehavior::m_speedLevels
    IL_0038:  ldarg.0
    IL_0039:  call       instance void Game.ComponentBehavior::.ctor()
    IL_003e:  ret
  } // end of method ComponentSteedBehavior::.ctor

  .method private hidebysig instance void 
          '<Load>b__38_0'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       25 (0x19)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  callvirt   instance bool Game.ComponentBehavior::get_IsActive()
    IL_0006:  brfalse.s  IL_0018

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.StateMachine Game.ComponentSteedBehavior::m_stateMachine
    IL_000e:  ldstr      "Wait"
    IL_0013:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0018:  ret
  } // end of method ComponentSteedBehavior::'<Load>b__38_0'

  .method private hidebysig instance void 
          '<Load>b__38_1'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       123 (0x7b)
    .maxstack  8
    .locals init (class Game.ComponentRider V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldc.r4     6.
    IL_0006:  call       instance class Game.ComponentRider Game.ComponentSteedBehavior::FindNearbyRider(float32)
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  brfalse.s  IL_007a

    IL_000f:  ldarg.0
    IL_0010:  ldfld      class Game.ComponentPathfinding Game.ComponentSteedBehavior::m_componentPathfinding
    IL_0015:  ldloc.0
    IL_0016:  callvirt   instance class Game.ComponentCreature Game.ComponentRider::get_ComponentCreature()
    IL_001b:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0020:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0025:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_002a:  ldarg.0
    IL_002b:  ldfld      class Game.Random Game.ComponentSteedBehavior::m_random
    IL_0030:  ldc.r4     0.2
    IL_0035:  ldc.r4     0.30000001
    IL_003a:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_003f:  ldc.r4     3.25
    IL_0044:  ldc.i4.0
    IL_0045:  ldc.i4.0
    IL_0046:  ldc.i4.1
    IL_0047:  ldc.i4.0
    IL_0048:  callvirt   instance void Game.ComponentPathfinding::SetDestination(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>,
                                                                                 float32,
                                                                                 float32,
                                                                                 int32,
                                                                                 bool,
                                                                                 bool,
                                                                                 bool)
    IL_004d:  ldarg.0
    IL_004e:  ldfld      class Game.Random Game.ComponentSteedBehavior::m_random
    IL_0053:  ldc.r4     0.0
    IL_0058:  ldc.r4     1.
    IL_005d:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0062:  ldc.r4     0.5
    IL_0067:  bge.un.s   IL_007a

    IL_0069:  ldarg.0
    IL_006a:  ldfld      class Game.ComponentCreature Game.ComponentSteedBehavior::m_componentCreature
    IL_006f:  callvirt   instance class Game.ComponentCreatureSounds Game.ComponentCreature::get_ComponentCreatureSounds()
    IL_0074:  ldc.i4.1
    IL_0075:  callvirt   instance void Game.ComponentCreatureSounds::PlayIdleSound(bool)
    IL_007a:  ret
  } // end of method ComponentSteedBehavior::'<Load>b__38_1'

  .method private hidebysig instance void 
          '<Load>b__38_2'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       47 (0x2f)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentMount Game.ComponentSteedBehavior::m_componentMount
    IL_0006:  callvirt   instance class Game.ComponentRider Game.ComponentMount::get_Rider()
    IL_000b:  brfalse.s  IL_001d

    IL_000d:  ldarg.0
    IL_000e:  ldfld      class Game.StateMachine Game.ComponentSteedBehavior::m_stateMachine
    IL_0013:  ldstr      "Steed"
    IL_0018:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_001d:  ldarg.0
    IL_001e:  ldfld      class Game.ComponentCreature Game.ComponentSteedBehavior::m_componentCreature
    IL_0023:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_0028:  ldc.i4.1
    IL_0029:  callvirt   instance void Game.ComponentCreatureModel::set_LookRandomOrder(bool)
    IL_002e:  ret
  } // end of method ComponentSteedBehavior::'<Load>b__38_2'

  .method private hidebysig instance void 
          '<Load>b__38_3'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       30 (0x1e)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentPathfinding Game.ComponentSteedBehavior::m_componentPathfinding
    IL_0006:  callvirt   instance void Game.ComponentPathfinding::Stop()
    IL_000b:  ldarg.0
    IL_000c:  ldc.r4     0.0
    IL_0011:  stfld      float32 Game.ComponentSteedBehavior::m_speed
    IL_0016:  ldarg.0
    IL_0017:  ldc.i4.1
    IL_0018:  stfld      int32 Game.ComponentSteedBehavior::m_speedLevel
    IL_001d:  ret
  } // end of method ComponentSteedBehavior::'<Load>b__38_3'

  .method private hidebysig instance void 
          '<Load>b__38_4'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.ComponentSteedBehavior::ProcessRidingOrders()
    IL_0006:  ret
  } // end of method ComponentSteedBehavior::'<Load>b__38_4'

  .property instance int32 SpeedOrder()
  {
    .get instance int32 Game.ComponentSteedBehavior::get_SpeedOrder()
    .set instance void Game.ComponentSteedBehavior::set_SpeedOrder(int32)
  } // end of property ComponentSteedBehavior::SpeedOrder
  .property instance float32 TurnOrder()
  {
    .get instance float32 Game.ComponentSteedBehavior::get_TurnOrder()
    .set instance void Game.ComponentSteedBehavior::set_TurnOrder(float32)
  } // end of property ComponentSteedBehavior::TurnOrder
  .property instance float32 JumpOrder()
  {
    .get instance float32 Game.ComponentSteedBehavior::get_JumpOrder()
    .set instance void Game.ComponentSteedBehavior::set_JumpOrder(float32)
  } // end of property ComponentSteedBehavior::JumpOrder
  .property instance bool WasOrderIssued()
  {
    .get instance bool Game.ComponentSteedBehavior::get_WasOrderIssued()
    .set instance void Game.ComponentSteedBehavior::set_WasOrderIssued(bool)
  } // end of property ComponentSteedBehavior::WasOrderIssued
  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.ComponentSteedBehavior::get_UpdateOrder()
  } // end of property ComponentSteedBehavior::UpdateOrder
  .property instance float32 ImportanceLevel()
  {
    .get instance float32 Game.ComponentSteedBehavior::get_ImportanceLevel()
  } // end of property ComponentSteedBehavior::ImportanceLevel
} // end of class Game.ComponentSteedBehavior