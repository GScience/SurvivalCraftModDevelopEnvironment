.class public auto ansi beforefieldinit Game.ComponentCattleDriveBehavior
       extends Game.ComponentBehavior
       implements Game.IUpdateable,
                  Game.INoiseListener
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.ComponentCattleDriveBehavior/'<>c' '<>9'
    .field public static class [System.Runtime]System.Action '<>9__15_2'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.ComponentCattleDriveBehavior/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.ComponentCattleDriveBehavior/'<>c' Game.ComponentCattleDriveBehavior/'<>c'::'<>9'
      IL_000a:  ret
    } // end of method '<>c'::.cctor

    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c'::.ctor

    .method assembly hidebysig instance void 
            '<Load>b__15_2'() cil managed
    {
      // 代码大小       1 (0x1)
      .maxstack  8
      IL_0000:  ret
    } // end of method '<>c'::'<Load>b__15_2'

  } // end of class '<>c'

  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.SubsystemCreatureSpawn m_subsystemCreatureSpawn
  .field private class Game.ComponentCreature m_componentCreature
  .field private class Game.ComponentPathfinding m_componentPathfinding
  .field private class Game.ComponentHerdBehavior m_componentHerdBehavior
  .field private class Game.StateMachine m_stateMachine
  .field private class Game.Random m_random
  .field private float32 m_importanceLevel
  .field private valuetype [Engine]Engine.Vector3 m_driveVector
  .method public hidebysig newslot virtual final 
          instance void  HearNoise(class Game.ComponentBody sourceBody,
                                   valuetype [Engine]Engine.Vector3 sourcePosition,
                                   float32 loudness) cil managed
  {
    // 代码大小       157 (0x9d)
    .maxstack  6
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             float32 V_1)
    IL_0000:  ldarg.3
    IL_0001:  ldc.r4     0.5
    IL_0006:  blt.un     IL_009c

    IL_000b:  ldarg.0
    IL_000c:  ldfld      class Game.ComponentCreature Game.ComponentCattleDriveBehavior::m_componentCreature
    IL_0011:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0016:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_001b:  ldarg.2
    IL_001c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0021:  stloc.0
    IL_0022:  ldarg.0
    IL_0023:  ldarg.0
    IL_0024:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentCattleDriveBehavior::m_driveVector
    IL_0029:  ldloc.0
    IL_002a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_002f:  ldc.r4     8.
    IL_0034:  ldc.r4     0.25
    IL_0039:  ldloca.s   V_0
    IL_003b:  call       instance float32 [Engine]Engine.Vector3::Length()
    IL_0040:  mul
    IL_0041:  sub
    IL_0042:  ldc.r4     1.
    IL_0047:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_004c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0051:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0056:  stfld      valuetype [Engine]Engine.Vector3 Game.ComponentCattleDriveBehavior::m_driveVector
    IL_005b:  ldc.r4     12.
    IL_0060:  ldarg.0
    IL_0061:  ldfld      class Game.Random Game.ComponentCattleDriveBehavior::m_random
    IL_0066:  ldc.r4     0.0
    IL_006b:  ldc.r4     3.
    IL_0070:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0075:  add
    IL_0076:  stloc.1
    IL_0077:  ldarg.0
    IL_0078:  ldflda     valuetype [Engine]Engine.Vector3 Game.ComponentCattleDriveBehavior::m_driveVector
    IL_007d:  call       instance float32 [Engine]Engine.Vector3::Length()
    IL_0082:  ldloc.1
    IL_0083:  ble.un.s   IL_009c

    IL_0085:  ldarg.0
    IL_0086:  ldloc.1
    IL_0087:  ldarg.0
    IL_0088:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentCattleDriveBehavior::m_driveVector
    IL_008d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0092:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0097:  stfld      valuetype [Engine]Engine.Vector3 Game.ComponentCattleDriveBehavior::m_driveVector
    IL_009c:  ret
  } // end of method ComponentCattleDriveBehavior::HearNoise

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method ComponentCattleDriveBehavior::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.StateMachine Game.ComponentCattleDriveBehavior::m_stateMachine
    IL_0006:  callvirt   instance void Game.StateMachine::Update()
    IL_000b:  ret
  } // end of method ComponentCattleDriveBehavior::Update

  .method public hidebysig specialname virtual 
          instance float32  get_ImportanceLevel() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentCattleDriveBehavior::m_importanceLevel
    IL_0006:  ret
  } // end of method ComponentCattleDriveBehavior::get_ImportanceLevel

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       208 (0xd0)
    .maxstack  5
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_000d:  stfld      class Game.SubsystemTime Game.ComponentCattleDriveBehavior::m_subsystemTime
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemCreatureSpawn>(bool)
    IL_001f:  stfld      class Game.SubsystemCreatureSpawn Game.ComponentCattleDriveBehavior::m_subsystemCreatureSpawn
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreature>(bool)
    IL_0031:  stfld      class Game.ComponentCreature Game.ComponentCattleDriveBehavior::m_componentCreature
    IL_0036:  ldarg.0
    IL_0037:  ldarg.0
    IL_0038:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_003d:  ldc.i4.1
    IL_003e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentPathfinding>(bool)
    IL_0043:  stfld      class Game.ComponentPathfinding Game.ComponentCattleDriveBehavior::m_componentPathfinding
    IL_0048:  ldarg.0
    IL_0049:  ldarg.0
    IL_004a:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_004f:  ldc.i4.1
    IL_0050:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentHerdBehavior>(bool)
    IL_0055:  stfld      class Game.ComponentHerdBehavior Game.ComponentCattleDriveBehavior::m_componentHerdBehavior
    IL_005a:  ldarg.0
    IL_005b:  ldfld      class Game.StateMachine Game.ComponentCattleDriveBehavior::m_stateMachine
    IL_0060:  ldstr      "Inactive"
    IL_0065:  ldarg.0
    IL_0066:  ldftn      instance void Game.ComponentCattleDriveBehavior::'<Load>b__15_0'()
    IL_006c:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0071:  ldarg.0
    IL_0072:  ldftn      instance void Game.ComponentCattleDriveBehavior::'<Load>b__15_1'()
    IL_0078:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_007d:  ldnull
    IL_007e:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_0083:  ldarg.0
    IL_0084:  ldfld      class Game.StateMachine Game.ComponentCattleDriveBehavior::m_stateMachine
    IL_0089:  ldstr      "Drive"
    IL_008e:  ldsfld     class [System.Runtime]System.Action Game.ComponentCattleDriveBehavior/'<>c'::'<>9__15_2'
    IL_0093:  dup
    IL_0094:  brtrue.s   IL_00ad

    IL_0096:  pop
    IL_0097:  ldsfld     class Game.ComponentCattleDriveBehavior/'<>c' Game.ComponentCattleDriveBehavior/'<>c'::'<>9'
    IL_009c:  ldftn      instance void Game.ComponentCattleDriveBehavior/'<>c'::'<Load>b__15_2'()
    IL_00a2:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00a7:  dup
    IL_00a8:  stsfld     class [System.Runtime]System.Action Game.ComponentCattleDriveBehavior/'<>c'::'<>9__15_2'
    IL_00ad:  ldarg.0
    IL_00ae:  ldftn      instance void Game.ComponentCattleDriveBehavior::'<Load>b__15_3'()
    IL_00b4:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00b9:  ldnull
    IL_00ba:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_00bf:  ldarg.0
    IL_00c0:  ldfld      class Game.StateMachine Game.ComponentCattleDriveBehavior::m_stateMachine
    IL_00c5:  ldstr      "Inactive"
    IL_00ca:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_00cf:  ret
  } // end of method ComponentCattleDriveBehavior::Load

  .method private hidebysig instance void 
          FadeDriveVector() cil managed
  {
    // 代码大小       66 (0x42)
    .maxstack  4
    .locals init (float32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldflda     valuetype [Engine]Engine.Vector3 Game.ComponentCattleDriveBehavior::m_driveVector
    IL_0006:  call       instance float32 [Engine]Engine.Vector3::Length()
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  ldc.r4     0.1
    IL_0012:  ble.un.s   IL_0041

    IL_0014:  ldarg.0
    IL_0015:  ldarg.0
    IL_0016:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentCattleDriveBehavior::m_driveVector
    IL_001b:  ldarg.0
    IL_001c:  ldfld      class Game.SubsystemTime Game.ComponentCattleDriveBehavior::m_subsystemTime
    IL_0021:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
    IL_0026:  ldarg.0
    IL_0027:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentCattleDriveBehavior::m_driveVector
    IL_002c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0031:  ldloc.0
    IL_0032:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Division(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0037:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_003c:  stfld      valuetype [Engine]Engine.Vector3 Game.ComponentCattleDriveBehavior::m_driveVector
    IL_0041:  ret
  } // end of method ComponentCattleDriveBehavior::FadeDriveVector

  .method private hidebysig instance valuetype [Engine]Engine.Vector3 
          CalculateDriveDirectionAndSpeed() cil managed
  {
    // 代码大小       331 (0x14b)
    .maxstack  3
    .locals init (int32 V_0,
             valuetype [Engine]Engine.Vector3 V_1,
             valuetype [Engine]Engine.Vector3 V_2,
             valuetype [Engine]Engine.Vector3 V_3,
             valuetype [Engine]Engine.Vector3 V_4,
             float32 V_5,
             valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.ComponentCreature,bool> V_6,
             class Game.ComponentCreature V_7,
             class Game.ComponentCattleDriveBehavior V_8,
             valuetype [Engine]Engine.Vector3 V_9)
    IL_0000:  ldc.i4.1
    IL_0001:  stloc.0
    IL_0002:  ldarg.0
    IL_0003:  ldfld      class Game.ComponentCreature Game.ComponentCattleDriveBehavior::m_componentCreature
    IL_0008:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_000d:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0012:  stloc.1
    IL_0013:  ldloc.1
    IL_0014:  stloc.2
    IL_0015:  ldarg.0
    IL_0016:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentCattleDriveBehavior::m_driveVector
    IL_001b:  stloc.3
    IL_001c:  ldarg.0
    IL_001d:  ldfld      class Game.SubsystemCreatureSpawn Game.ComponentCattleDriveBehavior::m_subsystemCreatureSpawn
    IL_0022:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<class Game.ComponentCreature,bool> Game.SubsystemCreatureSpawn::get_Creatures()
    IL_0027:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<class Game.ComponentCreature,bool>::GetEnumerator()
    IL_002c:  stloc.s    V_6
    .try
    {
      IL_002e:  br         IL_00c1

      IL_0033:  ldloca.s   V_6
      IL_0035:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.ComponentCreature,bool>::get_Current()
      IL_003a:  stloc.s    V_7
      IL_003c:  ldloc.s    V_7
      IL_003e:  ldarg.0
      IL_003f:  ldfld      class Game.ComponentCreature Game.ComponentCattleDriveBehavior::m_componentCreature
      IL_0044:  beq.s      IL_00c1

      IL_0046:  ldloc.s    V_7
      IL_0048:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
      IL_004d:  callvirt   instance float32 Game.ComponentHealth::get_Health()
      IL_0052:  ldc.r4     0.0
      IL_0057:  ble.un.s   IL_00c1

      IL_0059:  ldloc.s    V_7
      IL_005b:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
      IL_0060:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCattleDriveBehavior>()
      IL_0065:  stloc.s    V_8
      IL_0067:  ldloc.s    V_8
      IL_0069:  brfalse.s  IL_00c1

      IL_006b:  ldloc.s    V_8
      IL_006d:  ldfld      class Game.ComponentHerdBehavior Game.ComponentCattleDriveBehavior::m_componentHerdBehavior
      IL_0072:  callvirt   instance string Game.ComponentHerdBehavior::get_HerdName()
      IL_0077:  ldarg.0
      IL_0078:  ldfld      class Game.ComponentHerdBehavior Game.ComponentCattleDriveBehavior::m_componentHerdBehavior
      IL_007d:  callvirt   instance string Game.ComponentHerdBehavior::get_HerdName()
      IL_0082:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_0087:  brfalse.s  IL_00c1

      IL_0089:  ldloc.s    V_7
      IL_008b:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
      IL_0090:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
      IL_0095:  stloc.s    V_9
      IL_0097:  ldloc.1
      IL_0098:  ldloc.s    V_9
      IL_009a:  call       float32 [Engine]Engine.Vector3::DistanceSquared(valuetype [Engine]Engine.Vector3,
                                                                           valuetype [Engine]Engine.Vector3)
      IL_009f:  ldc.r4     625.
      IL_00a4:  bge.un.s   IL_00c1

      IL_00a6:  ldloc.2
      IL_00a7:  ldloc.s    V_9
      IL_00a9:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_00ae:  stloc.2
      IL_00af:  ldloc.3
      IL_00b0:  ldloc.s    V_8
      IL_00b2:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentCattleDriveBehavior::m_driveVector
      IL_00b7:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_00bc:  stloc.3
      IL_00bd:  ldloc.0
      IL_00be:  ldc.i4.1
      IL_00bf:  add
      IL_00c0:  stloc.0
      IL_00c1:  ldloca.s   V_6
      IL_00c3:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.ComponentCreature,bool>::MoveNext()
      IL_00c8:  brtrue     IL_0033

      IL_00cd:  leave.s    IL_00dd

    }  // end .try
    finally
    {
      IL_00cf:  ldloca.s   V_6
      IL_00d1:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.ComponentCreature,bool>
      IL_00d7:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00dc:  endfinally
    }  // end handler
    IL_00dd:  ldloc.2
    IL_00de:  ldloc.0
    IL_00df:  conv.r4
    IL_00e0:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Division(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_00e5:  stloc.2
    IL_00e6:  ldloc.3
    IL_00e7:  ldloc.0
    IL_00e8:  conv.r4
    IL_00e9:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Division(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_00ee:  stloc.3
    IL_00ef:  ldloc.2
    IL_00f0:  ldloc.1
    IL_00f1:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_00f6:  stloc.s    V_4
    IL_00f8:  ldc.r4     1.5
    IL_00fd:  ldloca.s   V_4
    IL_00ff:  call       instance float32 [Engine]Engine.Vector3::Length()
    IL_0104:  mul
    IL_0105:  ldc.r4     3.
    IL_010a:  sub
    IL_010b:  ldc.r4     0.0
    IL_0110:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_0115:  stloc.s    V_5
    IL_0117:  ldc.r4     0.33000001
    IL_011c:  ldarg.0
    IL_011d:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentCattleDriveBehavior::m_driveVector
    IL_0122:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0127:  ldc.r4     0.66000003
    IL_012c:  ldloc.3
    IL_012d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0132:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0137:  ldloc.s    V_5
    IL_0139:  ldloc.s    V_4
    IL_013b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0140:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0145:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_014a:  ret
  } // end of method ComponentCattleDriveBehavior::CalculateDriveDirectionAndSpeed

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.StateMachine::.ctor()
    IL_0006:  stfld      class Game.StateMachine Game.ComponentCattleDriveBehavior::m_stateMachine
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void Game.Random::.ctor()
    IL_0011:  stfld      class Game.Random Game.ComponentCattleDriveBehavior::m_random
    IL_0016:  ldarg.0
    IL_0017:  call       instance void Game.ComponentBehavior::.ctor()
    IL_001c:  ret
  } // end of method ComponentCattleDriveBehavior::.ctor

  .method private hidebysig instance void 
          '<Load>b__15_0'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.r4     0.0
    IL_0006:  stfld      float32 Game.ComponentCattleDriveBehavior::m_importanceLevel
    IL_000b:  ldarg.0
    IL_000c:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_0011:  stfld      valuetype [Engine]Engine.Vector3 Game.ComponentCattleDriveBehavior::m_driveVector
    IL_0016:  ret
  } // end of method ComponentCattleDriveBehavior::'<Load>b__15_0'

  .method private hidebysig instance void 
          '<Load>b__15_1'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       60 (0x3c)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  callvirt   instance bool Game.ComponentBehavior::get_IsActive()
    IL_0006:  brfalse.s  IL_0018

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.StateMachine Game.ComponentCattleDriveBehavior::m_stateMachine
    IL_000e:  ldstr      "Drive"
    IL_0013:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0018:  ldarg.0
    IL_0019:  ldflda     valuetype [Engine]Engine.Vector3 Game.ComponentCattleDriveBehavior::m_driveVector
    IL_001e:  call       instance float32 [Engine]Engine.Vector3::Length()
    IL_0023:  ldc.r4     3.
    IL_0028:  ble.un.s   IL_0035

    IL_002a:  ldarg.0
    IL_002b:  ldc.r4     7.
    IL_0030:  stfld      float32 Game.ComponentCattleDriveBehavior::m_importanceLevel
    IL_0035:  ldarg.0
    IL_0036:  call       instance void Game.ComponentCattleDriveBehavior::FadeDriveVector()
    IL_003b:  ret
  } // end of method ComponentCattleDriveBehavior::'<Load>b__15_1'

  .method private hidebysig instance void 
          '<Load>b__15_3'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       260 (0x104)
    .maxstack  9
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             float32 V_1)
    IL_0000:  ldarg.0
    IL_0001:  callvirt   instance bool Game.ComponentBehavior::get_IsActive()
    IL_0006:  brtrue.s   IL_0018

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.StateMachine Game.ComponentCattleDriveBehavior::m_stateMachine
    IL_000e:  ldstr      "Inactive"
    IL_0013:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0018:  ldarg.0
    IL_0019:  ldflda     valuetype [Engine]Engine.Vector3 Game.ComponentCattleDriveBehavior::m_driveVector
    IL_001e:  call       instance float32 [Engine]Engine.Vector3::LengthSquared()
    IL_0023:  ldc.r4     1.
    IL_0028:  blt.s      IL_0037

    IL_002a:  ldarg.0
    IL_002b:  ldfld      class Game.ComponentPathfinding Game.ComponentCattleDriveBehavior::m_componentPathfinding
    IL_0030:  callvirt   instance bool Game.ComponentPathfinding::get_IsStuck()
    IL_0035:  brfalse.s  IL_0042

    IL_0037:  ldarg.0
    IL_0038:  ldc.r4     0.0
    IL_003d:  stfld      float32 Game.ComponentCattleDriveBehavior::m_importanceLevel
    IL_0042:  ldarg.0
    IL_0043:  ldfld      class Game.Random Game.ComponentCattleDriveBehavior::m_random
    IL_0048:  ldc.r4     0.0
    IL_004d:  ldc.r4     1.
    IL_0052:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0057:  ldc.r4     0.1
    IL_005c:  ldarg.0
    IL_005d:  ldfld      class Game.SubsystemTime Game.ComponentCattleDriveBehavior::m_subsystemTime
    IL_0062:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
    IL_0067:  mul
    IL_0068:  bge.un.s   IL_007b

    IL_006a:  ldarg.0
    IL_006b:  ldfld      class Game.ComponentCreature Game.ComponentCattleDriveBehavior::m_componentCreature
    IL_0070:  callvirt   instance class Game.ComponentCreatureSounds Game.ComponentCreature::get_ComponentCreatureSounds()
    IL_0075:  ldc.i4.1
    IL_0076:  callvirt   instance void Game.ComponentCreatureSounds::PlayIdleSound(bool)
    IL_007b:  ldarg.0
    IL_007c:  ldfld      class Game.Random Game.ComponentCattleDriveBehavior::m_random
    IL_0081:  ldc.r4     0.0
    IL_0086:  ldc.r4     1.
    IL_008b:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0090:  ldc.r4     3.
    IL_0095:  ldarg.0
    IL_0096:  ldfld      class Game.SubsystemTime Game.ComponentCattleDriveBehavior::m_subsystemTime
    IL_009b:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
    IL_00a0:  mul
    IL_00a1:  bge.un.s   IL_00fd

    IL_00a3:  ldarg.0
    IL_00a4:  call       instance valuetype [Engine]Engine.Vector3 Game.ComponentCattleDriveBehavior::CalculateDriveDirectionAndSpeed()
    IL_00a9:  stloc.0
    IL_00aa:  ldc.r4     0.2
    IL_00af:  ldloca.s   V_0
    IL_00b1:  call       instance float32 [Engine]Engine.Vector3::Length()
    IL_00b6:  mul
    IL_00b7:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_00bc:  stloc.1
    IL_00bd:  ldarg.0
    IL_00be:  ldfld      class Game.ComponentPathfinding Game.ComponentCattleDriveBehavior::m_componentPathfinding
    IL_00c3:  ldarg.0
    IL_00c4:  ldfld      class Game.ComponentCreature Game.ComponentCattleDriveBehavior::m_componentCreature
    IL_00c9:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_00ce:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_00d3:  ldc.r4     15.
    IL_00d8:  ldloc.0
    IL_00d9:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_00de:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00e3:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00e8:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_00ed:  ldloc.1
    IL_00ee:  ldc.r4     5.
    IL_00f3:  ldc.i4.0
    IL_00f4:  ldc.i4.0
    IL_00f5:  ldc.i4.1
    IL_00f6:  ldc.i4.0
    IL_00f7:  ldnull
    IL_00f8:  callvirt   instance void Game.ComponentPathfinding::SetDestination(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>,
                                                                                 float32,
                                                                                 float32,
                                                                                 int32,
                                                                                 bool,
                                                                                 bool,
                                                                                 bool,
                                                                                 class Game.ComponentBody)
    IL_00fd:  ldarg.0
    IL_00fe:  call       instance void Game.ComponentCattleDriveBehavior::FadeDriveVector()
    IL_0103:  ret
  } // end of method ComponentCattleDriveBehavior::'<Load>b__15_3'

  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.ComponentCattleDriveBehavior::get_UpdateOrder()
  } // end of property ComponentCattleDriveBehavior::UpdateOrder
  .property instance float32 ImportanceLevel()
  {
    .get instance float32 Game.ComponentCattleDriveBehavior::get_ImportanceLevel()
  } // end of property ComponentCattleDriveBehavior::ImportanceLevel
} // end of class Game.ComponentCattleDriveBehavior