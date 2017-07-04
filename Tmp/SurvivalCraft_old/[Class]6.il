.class public auto ansi beforefieldinit Game.ComponentAvoidFireBehavior
       extends Game.ComponentBehavior
       implements Game.IUpdateable
{
  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.SubsystemSky m_subsystemSky
  .field private class Game.SubsystemCampfireBlockBehavior m_subsystemCampfireBlockBehavior
  .field private class Game.ComponentCreature m_componentCreature
  .field private class Game.ComponentPathfinding m_componentPathfinding
  .field private class Game.StateMachine m_stateMachine
  .field private class Game.Random m_random
  .field private float32 m_importanceLevel
  .field private float32 m_dayRange
  .field private float32 m_nightRange
  .field private valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> m_target
  .field private float32 m_circlingDirection
  .field private float32 m_periodicEventOffset
  .field private float64 m_ignoreFireUntil
  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method ComponentAvoidFireBehavior::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.StateMachine Game.ComponentAvoidFireBehavior::m_stateMachine
    IL_0006:  callvirt   instance void Game.StateMachine::Update()
    IL_000b:  ret
  } // end of method ComponentAvoidFireBehavior::Update

  .method public hidebysig specialname virtual 
          instance float32  get_ImportanceLevel() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentAvoidFireBehavior::m_importanceLevel
    IL_0006:  ret
  } // end of method ComponentAvoidFireBehavior::get_ImportanceLevel

  .method public hidebysig specialname virtual 
          instance string  get_DebugInfo() cil managed
  {
    // 代码大小       68 (0x44)
    .maxstack  6
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float64 Game.ComponentAvoidFireBehavior::m_ignoreFireUntil
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class Game.SubsystemTime Game.ComponentAvoidFireBehavior::m_subsystemTime
    IL_000c:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0011:  blt.s      IL_0019

    IL_0013:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0018:  ret

    IL_0019:  ldstr      "ifu={0:0}"
    IL_001e:  ldc.i4.1
    IL_001f:  newarr     [System.Runtime]System.Object
    IL_0024:  dup
    IL_0025:  ldc.i4.0
    IL_0026:  ldarg.0
    IL_0027:  ldfld      float64 Game.ComponentAvoidFireBehavior::m_ignoreFireUntil
    IL_002c:  ldarg.0
    IL_002d:  ldfld      class Game.SubsystemTime Game.ComponentAvoidFireBehavior::m_subsystemTime
    IL_0032:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0037:  sub
    IL_0038:  box        [System.Runtime]System.Double
    IL_003d:  stelem.ref
    IL_003e:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0043:  ret
  } // end of method ComponentAvoidFireBehavior::get_DebugInfo

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       291 (0x123)
    .maxstack  5
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_000d:  stfld      class Game.SubsystemTime Game.ComponentAvoidFireBehavior::m_subsystemTime
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemSky>(bool)
    IL_001f:  stfld      class Game.SubsystemSky Game.ComponentAvoidFireBehavior::m_subsystemSky
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreature>(bool)
    IL_0031:  stfld      class Game.ComponentCreature Game.ComponentAvoidFireBehavior::m_componentCreature
    IL_0036:  ldarg.0
    IL_0037:  ldarg.0
    IL_0038:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_003d:  ldc.i4.1
    IL_003e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentPathfinding>(bool)
    IL_0043:  stfld      class Game.ComponentPathfinding Game.ComponentAvoidFireBehavior::m_componentPathfinding
    IL_0048:  ldarg.0
    IL_0049:  ldarg.0
    IL_004a:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_004f:  ldc.i4.1
    IL_0050:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemCampfireBlockBehavior>(bool)
    IL_0055:  stfld      class Game.SubsystemCampfireBlockBehavior Game.ComponentAvoidFireBehavior::m_subsystemCampfireBlockBehavior
    IL_005a:  ldarg.0
    IL_005b:  ldarg.1
    IL_005c:  ldstr      "DayRange"
    IL_0061:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_0066:  stfld      float32 Game.ComponentAvoidFireBehavior::m_dayRange
    IL_006b:  ldarg.0
    IL_006c:  ldarg.1
    IL_006d:  ldstr      "NightRange"
    IL_0072:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_0077:  stfld      float32 Game.ComponentAvoidFireBehavior::m_nightRange
    IL_007c:  ldarg.0
    IL_007d:  ldarg.0
    IL_007e:  ldfld      class Game.Random Game.ComponentAvoidFireBehavior::m_random
    IL_0083:  ldc.r4     0.0
    IL_0088:  ldc.r4     10.
    IL_008d:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0092:  stfld      float32 Game.ComponentAvoidFireBehavior::m_periodicEventOffset
    IL_0097:  ldarg.0
    IL_0098:  ldfld      class Game.StateMachine Game.ComponentAvoidFireBehavior::m_stateMachine
    IL_009d:  ldstr      "Inactive"
    IL_00a2:  ldarg.0
    IL_00a3:  ldftn      instance void Game.ComponentAvoidFireBehavior::'<Load>b__21_0'()
    IL_00a9:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00ae:  ldarg.0
    IL_00af:  ldftn      instance void Game.ComponentAvoidFireBehavior::'<Load>b__21_1'()
    IL_00b5:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00ba:  ldnull
    IL_00bb:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_00c0:  ldarg.0
    IL_00c1:  ldfld      class Game.StateMachine Game.ComponentAvoidFireBehavior::m_stateMachine
    IL_00c6:  ldstr      "Move"
    IL_00cb:  ldarg.0
    IL_00cc:  ldftn      instance void Game.ComponentAvoidFireBehavior::'<Load>b__21_2'()
    IL_00d2:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00d7:  ldarg.0
    IL_00d8:  ldftn      instance void Game.ComponentAvoidFireBehavior::'<Load>b__21_3'()
    IL_00de:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00e3:  ldnull
    IL_00e4:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_00e9:  ldarg.0
    IL_00ea:  ldfld      class Game.StateMachine Game.ComponentAvoidFireBehavior::m_stateMachine
    IL_00ef:  ldstr      "Circle"
    IL_00f4:  ldarg.0
    IL_00f5:  ldftn      instance void Game.ComponentAvoidFireBehavior::'<Load>b__21_4'()
    IL_00fb:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0100:  ldarg.0
    IL_0101:  ldftn      instance void Game.ComponentAvoidFireBehavior::'<Load>b__21_5'()
    IL_0107:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_010c:  ldnull
    IL_010d:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_0112:  ldarg.0
    IL_0113:  ldfld      class Game.StateMachine Game.ComponentAvoidFireBehavior::m_stateMachine
    IL_0118:  ldstr      "Inactive"
    IL_011d:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0122:  ret
  } // end of method ComponentAvoidFireBehavior::Load

  .method private hidebysig instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> 
          FindTarget([out] float32& targetScore) cil managed
  {
    // 代码大小       142 (0x8e)
    .maxstack  4
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> V_0,
             float32 V_1,
             valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<valuetype [Engine]Engine.Point3,class Game.FireParticleSystem> V_2,
             valuetype [Engine]Engine.Point3 V_3,
             valuetype [Engine]Engine.Vector3 V_4,
             float32 V_5)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentCreature Game.ComponentAvoidFireBehavior::m_componentCreature
    IL_0006:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_000b:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0010:  pop
    IL_0011:  ldloca.s   V_0
    IL_0013:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>
    IL_0019:  ldc.r4     0.0
    IL_001e:  stloc.1
    IL_001f:  ldarg.0
    IL_0020:  ldfld      class Game.SubsystemCampfireBlockBehavior Game.ComponentAvoidFireBehavior::m_subsystemCampfireBlockBehavior
    IL_0025:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<valuetype [Engine]Engine.Point3,class Game.FireParticleSystem> Game.SubsystemCampfireBlockBehavior::get_Campfires()
    IL_002a:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<valuetype [Engine]Engine.Point3,class Game.FireParticleSystem>::GetEnumerator()
    IL_002f:  stloc.2
    .try
    {
      IL_0030:  br.s       IL_0070

      IL_0032:  ldloca.s   V_2
      IL_0034:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<valuetype [Engine]Engine.Point3,class Game.FireParticleSystem>::get_Current()
      IL_0039:  stloc.3
      IL_003a:  ldloca.s   V_4
      IL_003c:  ldloc.3
      IL_003d:  ldfld      int32 [Engine]Engine.Point3::X
      IL_0042:  conv.r4
      IL_0043:  ldloc.3
      IL_0044:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_0049:  conv.r4
      IL_004a:  ldloc.3
      IL_004b:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_0050:  conv.r4
      IL_0051:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                       float32,
                                                                       float32)
      IL_0056:  ldarg.0
      IL_0057:  ldloc.s    V_4
      IL_0059:  call       instance float32 Game.ComponentAvoidFireBehavior::ScoreTarget(valuetype [Engine]Engine.Vector3)
      IL_005e:  stloc.s    V_5
      IL_0060:  ldloc.s    V_5
      IL_0062:  ldloc.1
      IL_0063:  ble.un.s   IL_0070

      IL_0065:  ldloc.s    V_5
      IL_0067:  stloc.1
      IL_0068:  ldloc.s    V_4
      IL_006a:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
      IL_006f:  stloc.0
      IL_0070:  ldloca.s   V_2
      IL_0072:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<valuetype [Engine]Engine.Point3,class Game.FireParticleSystem>::MoveNext()
      IL_0077:  brtrue.s   IL_0032

      IL_0079:  leave.s    IL_0089

    }  // end .try
    finally
    {
      IL_007b:  ldloca.s   V_2
      IL_007d:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<valuetype [Engine]Engine.Point3,class Game.FireParticleSystem>
      IL_0083:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0088:  endfinally
    }  // end handler
    IL_0089:  ldarg.1
    IL_008a:  ldloc.1
    IL_008b:  stind.r4
    IL_008c:  ldloc.0
    IL_008d:  ret
  } // end of method ComponentAvoidFireBehavior::FindTarget

  .method private hidebysig instance float32 
          ScoreTarget(valuetype [Engine]Engine.Vector3 target) cil managed
  {
    // 代码大小       85 (0x55)
    .maxstack  3
    .locals init (float32 V_0,
             float32 V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemSky Game.ComponentAvoidFireBehavior::m_subsystemSky
    IL_0006:  callvirt   instance float32 Game.SubsystemSky::get_SkyLightIntensity()
    IL_000b:  ldc.r4     0.2
    IL_0010:  bgt.s      IL_001a

    IL_0012:  ldarg.0
    IL_0013:  ldfld      float32 Game.ComponentAvoidFireBehavior::m_nightRange
    IL_0018:  br.s       IL_0020

    IL_001a:  ldarg.0
    IL_001b:  ldfld      float32 Game.ComponentAvoidFireBehavior::m_dayRange
    IL_0020:  stloc.0
    IL_0021:  ldloc.0
    IL_0022:  ldc.r4     0.0
    IL_0027:  ble.un.s   IL_004f

    IL_0029:  ldarg.1
    IL_002a:  ldarg.0
    IL_002b:  ldfld      class Game.ComponentCreature Game.ComponentAvoidFireBehavior::m_componentCreature
    IL_0030:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0035:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_003a:  call       float32 [Engine]Engine.Vector3::Distance(valuetype [Engine]Engine.Vector3,
                                                                  valuetype [Engine]Engine.Vector3)
    IL_003f:  stloc.1
    IL_0040:  ldc.r4     1.
    IL_0045:  ldloc.1
    IL_0046:  ldloc.0
    IL_0047:  div
    IL_0048:  sub
    IL_0049:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_004e:  ret

    IL_004f:  ldc.r4     0.0
    IL_0054:  ret
  } // end of method ComponentAvoidFireBehavior::ScoreTarget

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       40 (0x28)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.StateMachine::.ctor()
    IL_0006:  stfld      class Game.StateMachine Game.ComponentAvoidFireBehavior::m_stateMachine
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void Game.Random::.ctor()
    IL_0011:  stfld      class Game.Random Game.ComponentAvoidFireBehavior::m_random
    IL_0016:  ldarg.0
    IL_0017:  ldc.r4     1.
    IL_001c:  stfld      float32 Game.ComponentAvoidFireBehavior::m_circlingDirection
    IL_0021:  ldarg.0
    IL_0022:  call       instance void Game.ComponentBehavior::.ctor()
    IL_0027:  ret
  } // end of method ComponentAvoidFireBehavior::.ctor

  .method private hidebysig instance void 
          '<Load>b__21_0'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       24 (0x18)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.r4     0.0
    IL_0006:  stfld      float32 Game.ComponentAvoidFireBehavior::m_importanceLevel
    IL_000b:  ldarg.0
    IL_000c:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentAvoidFireBehavior::m_target
    IL_0011:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>
    IL_0017:  ret
  } // end of method ComponentAvoidFireBehavior::'<Load>b__21_0'

  .method private hidebysig instance void 
          '<Load>b__21_1'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       281 (0x119)
    .maxstack  4
    .locals init (float32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  callvirt   instance bool Game.ComponentBehavior::get_IsActive()
    IL_0006:  brfalse.s  IL_002d

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.StateMachine Game.ComponentAvoidFireBehavior::m_stateMachine
    IL_000e:  ldarg.0
    IL_000f:  ldfld      float32 Game.ComponentAvoidFireBehavior::m_importanceLevel
    IL_0014:  ldc.r4     10.
    IL_0019:  blt.s      IL_0022

    IL_001b:  ldstr      "Move"
    IL_0020:  br.s       IL_0027

    IL_0022:  ldstr      "Circle"
    IL_0027:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_002c:  ret

    IL_002d:  ldarg.0
    IL_002e:  ldfld      class Game.SubsystemTime Game.ComponentAvoidFireBehavior::m_subsystemTime
    IL_0033:  ldc.r8     1.
    IL_003c:  ldarg.0
    IL_003d:  ldfld      float32 Game.ComponentAvoidFireBehavior::m_periodicEventOffset
    IL_0042:  conv.r8
    IL_0043:  callvirt   instance bool Game.SubsystemTime::PeriodicGameTimeEvent(float64,
                                                                                 float64)
    IL_0048:  brfalse    IL_0118

    IL_004d:  ldarg.0
    IL_004e:  ldarg.0
    IL_004f:  ldloca.s   V_0
    IL_0051:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentAvoidFireBehavior::FindTarget(float32&)
    IL_0056:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentAvoidFireBehavior::m_target
    IL_005b:  ldarg.0
    IL_005c:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentAvoidFireBehavior::m_target
    IL_0061:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_0066:  brfalse    IL_010d

    IL_006b:  ldarg.0
    IL_006c:  ldfld      class Game.Random Game.ComponentAvoidFireBehavior::m_random
    IL_0071:  ldc.r4     0.0
    IL_0076:  ldc.r4     1.
    IL_007b:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0080:  ldc.r4     1.5e-002
    IL_0085:  bge.un.s   IL_00a2

    IL_0087:  ldarg.0
    IL_0088:  ldarg.0
    IL_0089:  ldfld      class Game.SubsystemTime Game.ComponentAvoidFireBehavior::m_subsystemTime
    IL_008e:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0093:  ldc.r8     20.
    IL_009c:  add
    IL_009d:  stfld      float64 Game.ComponentAvoidFireBehavior::m_ignoreFireUntil
    IL_00a2:  ldarg.0
    IL_00a3:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentAvoidFireBehavior::m_target
    IL_00a8:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_00ad:  ldarg.0
    IL_00ae:  ldfld      class Game.ComponentCreature Game.ComponentAvoidFireBehavior::m_componentCreature
    IL_00b3:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_00b8:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_00bd:  call       float32 [Engine]Engine.Vector3::Distance(valuetype [Engine]Engine.Vector3,
                                                                  valuetype [Engine]Engine.Vector3)
    IL_00c2:  pop
    IL_00c3:  ldarg.0
    IL_00c4:  ldfld      class Game.SubsystemTime Game.ComponentAvoidFireBehavior::m_subsystemTime
    IL_00c9:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_00ce:  ldarg.0
    IL_00cf:  ldfld      float64 Game.ComponentAvoidFireBehavior::m_ignoreFireUntil
    IL_00d4:  bge.un.s   IL_00e2

    IL_00d6:  ldarg.0
    IL_00d7:  ldc.r4     0.0
    IL_00dc:  stfld      float32 Game.ComponentAvoidFireBehavior::m_importanceLevel
    IL_00e1:  ret

    IL_00e2:  ldarg.0
    IL_00e3:  ldloc.0
    IL_00e4:  ldc.r4     0.5
    IL_00e9:  bgt.s      IL_0102

    IL_00eb:  ldarg.0
    IL_00ec:  ldfld      class Game.Random Game.ComponentAvoidFireBehavior::m_random
    IL_00f1:  ldc.r4     1.
    IL_00f6:  ldc.r4     5.
    IL_00fb:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0100:  br.s       IL_0107

    IL_0102:  ldc.r4     250.
    IL_0107:  stfld      float32 Game.ComponentAvoidFireBehavior::m_importanceLevel
    IL_010c:  ret

    IL_010d:  ldarg.0
    IL_010e:  ldc.r4     0.0
    IL_0113:  stfld      float32 Game.ComponentAvoidFireBehavior::m_importanceLevel
    IL_0118:  ret
  } // end of method ComponentAvoidFireBehavior::'<Load>b__21_1'

  .method private hidebysig instance void 
          '<Load>b__21_2'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       205 (0xcd)
    .maxstack  9
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             valuetype [Engine]Engine.Vector3 V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentAvoidFireBehavior::m_target
    IL_0006:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_000b:  brfalse    IL_00cc

    IL_0010:  ldarg.0
    IL_0011:  ldfld      class Game.ComponentCreature Game.ComponentAvoidFireBehavior::m_componentCreature
    IL_0016:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_001b:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0020:  ldarg.0
    IL_0021:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentAvoidFireBehavior::m_target
    IL_0026:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_002b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0030:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0035:  ldarg.0
    IL_0036:  ldfld      class Game.Random Game.ComponentAvoidFireBehavior::m_random
    IL_003b:  ldc.r4     0.5
    IL_0040:  ldc.i4.0
    IL_0041:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Random::Vector3(float32,
                                                                                        bool)
    IL_0046:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_004b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0050:  stloc.0
    IL_0051:  ldarg.0
    IL_0052:  ldfld      class Game.ComponentCreature Game.ComponentAvoidFireBehavior::m_componentCreature
    IL_0057:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_005c:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0061:  ldarg.0
    IL_0062:  ldfld      class Game.Random Game.ComponentAvoidFireBehavior::m_random
    IL_0067:  ldc.r4     6.
    IL_006c:  ldc.r4     8.
    IL_0071:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0076:  ldloc.0
    IL_0077:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_007c:  ldc.r4     0.0
    IL_0081:  ldloc.0
    IL_0082:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0087:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_008c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0091:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0096:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_009b:  stloc.1
    IL_009c:  ldarg.0
    IL_009d:  ldfld      class Game.ComponentPathfinding Game.ComponentAvoidFireBehavior::m_componentPathfinding
    IL_00a2:  ldloc.1
    IL_00a3:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_00a8:  ldarg.0
    IL_00a9:  ldfld      class Game.Random Game.ComponentAvoidFireBehavior::m_random
    IL_00ae:  ldc.r4     0.60000002
    IL_00b3:  ldc.r4     0.80000001
    IL_00b8:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_00bd:  ldc.r4     1.
    IL_00c2:  ldc.i4.0
    IL_00c3:  ldc.i4.0
    IL_00c4:  ldc.i4.1
    IL_00c5:  ldc.i4.0
    IL_00c6:  ldnull
    IL_00c7:  callvirt   instance void Game.ComponentPathfinding::SetDestination(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>,
                                                                                 float32,
                                                                                 float32,
                                                                                 int32,
                                                                                 bool,
                                                                                 bool,
                                                                                 bool,
                                                                                 class Game.ComponentBody)
    IL_00cc:  ret
  } // end of method ComponentAvoidFireBehavior::'<Load>b__21_2'

  .method private hidebysig instance void 
          '<Load>b__21_3'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       183 (0xb7)
    .maxstack  3
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> V_0)
    IL_0000:  ldarg.0
    IL_0001:  callvirt   instance bool Game.ComponentBehavior::get_IsActive()
    IL_0006:  brtrue.s   IL_001a

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.StateMachine Game.ComponentAvoidFireBehavior::m_stateMachine
    IL_000e:  ldstr      "Inactive"
    IL_0013:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0018:  br.s       IL_006c

    IL_001a:  ldarg.0
    IL_001b:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentAvoidFireBehavior::m_target
    IL_0020:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_0025:  brfalse.s  IL_0061

    IL_0027:  ldarg.0
    IL_0028:  ldfld      class Game.ComponentPathfinding Game.ComponentAvoidFireBehavior::m_componentPathfinding
    IL_002d:  callvirt   instance bool Game.ComponentPathfinding::get_IsStuck()
    IL_0032:  brtrue.s   IL_0061

    IL_0034:  ldarg.0
    IL_0035:  ldfld      class Game.ComponentPathfinding Game.ComponentAvoidFireBehavior::m_componentPathfinding
    IL_003a:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPathfinding::get_Destination()
    IL_003f:  stloc.0
    IL_0040:  ldloca.s   V_0
    IL_0042:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_0047:  brfalse.s  IL_0061

    IL_0049:  ldarg.0
    IL_004a:  ldarg.0
    IL_004b:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentAvoidFireBehavior::m_target
    IL_0050:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_0055:  call       instance float32 Game.ComponentAvoidFireBehavior::ScoreTarget(valuetype [Engine]Engine.Vector3)
    IL_005a:  ldc.r4     0.0
    IL_005f:  bgt.un.s   IL_006c

    IL_0061:  ldarg.0
    IL_0062:  ldc.r4     0.0
    IL_0067:  stfld      float32 Game.ComponentAvoidFireBehavior::m_importanceLevel
    IL_006c:  ldarg.0
    IL_006d:  ldfld      class Game.Random Game.ComponentAvoidFireBehavior::m_random
    IL_0072:  ldc.r4     0.0
    IL_0077:  ldc.r4     1.
    IL_007c:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0081:  ldc.r4     0.1
    IL_0086:  ldarg.0
    IL_0087:  ldfld      class Game.SubsystemTime Game.ComponentAvoidFireBehavior::m_subsystemTime
    IL_008c:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
    IL_0091:  mul
    IL_0092:  bge.un.s   IL_00a5

    IL_0094:  ldarg.0
    IL_0095:  ldfld      class Game.ComponentCreature Game.ComponentAvoidFireBehavior::m_componentCreature
    IL_009a:  callvirt   instance class Game.ComponentCreatureSounds Game.ComponentCreature::get_ComponentCreatureSounds()
    IL_009f:  ldc.i4.1
    IL_00a0:  callvirt   instance void Game.ComponentCreatureSounds::PlayIdleSound(bool)
    IL_00a5:  ldarg.0
    IL_00a6:  ldfld      class Game.ComponentCreature Game.ComponentAvoidFireBehavior::m_componentCreature
    IL_00ab:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_00b0:  ldc.i4.1
    IL_00b1:  callvirt   instance void Game.ComponentCreatureModel::set_LookRandomOrder(bool)
    IL_00b6:  ret
  } // end of method ComponentAvoidFireBehavior::'<Load>b__21_3'

  .method private hidebysig instance void 
          '<Load>b__21_4'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       199 (0xc7)
    .maxstack  9
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             valuetype [Engine]Engine.Vector3 V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentAvoidFireBehavior::m_target
    IL_0006:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_000b:  brfalse    IL_00c6

    IL_0010:  ldarg.0
    IL_0011:  ldfld      class Game.ComponentCreature Game.ComponentAvoidFireBehavior::m_componentCreature
    IL_0016:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_001b:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0020:  ldarg.0
    IL_0021:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentAvoidFireBehavior::m_target
    IL_0026:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_002b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0030:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0035:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_003a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Cross(valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3)
    IL_003f:  ldarg.0
    IL_0040:  ldfld      float32 Game.ComponentAvoidFireBehavior::m_circlingDirection
    IL_0045:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_004a:  stloc.0
    IL_004b:  ldarg.0
    IL_004c:  ldfld      class Game.ComponentCreature Game.ComponentAvoidFireBehavior::m_componentCreature
    IL_0051:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0056:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_005b:  ldarg.0
    IL_005c:  ldfld      class Game.Random Game.ComponentAvoidFireBehavior::m_random
    IL_0061:  ldc.r4     6.
    IL_0066:  ldc.r4     8.
    IL_006b:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0070:  ldloc.0
    IL_0071:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0076:  ldc.r4     0.0
    IL_007b:  ldloc.0
    IL_007c:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0081:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0086:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_008b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0090:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0095:  stloc.1
    IL_0096:  ldarg.0
    IL_0097:  ldfld      class Game.ComponentPathfinding Game.ComponentAvoidFireBehavior::m_componentPathfinding
    IL_009c:  ldloc.1
    IL_009d:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_00a2:  ldarg.0
    IL_00a3:  ldfld      class Game.Random Game.ComponentAvoidFireBehavior::m_random
    IL_00a8:  ldc.r4     0.40000001
    IL_00ad:  ldc.r4     0.89999998
    IL_00b2:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_00b7:  ldc.r4     1.
    IL_00bc:  ldc.i4.0
    IL_00bd:  ldc.i4.0
    IL_00be:  ldc.i4.1
    IL_00bf:  ldc.i4.0
    IL_00c0:  ldnull
    IL_00c1:  callvirt   instance void Game.ComponentPathfinding::SetDestination(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>,
                                                                                 float32,
                                                                                 float32,
                                                                                 int32,
                                                                                 bool,
                                                                                 bool,
                                                                                 bool,
                                                                                 class Game.ComponentBody)
    IL_00c6:  ret
  } // end of method ComponentAvoidFireBehavior::'<Load>b__21_4'

  .method private hidebysig instance void 
          '<Load>b__21_5'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       214 (0xd6)
    .maxstack  3
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> V_0)
    IL_0000:  ldarg.0
    IL_0001:  callvirt   instance bool Game.ComponentBehavior::get_IsActive()
    IL_0006:  brtrue.s   IL_001a

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.StateMachine Game.ComponentAvoidFireBehavior::m_stateMachine
    IL_000e:  ldstr      "Inactive"
    IL_0013:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0018:  br.s       IL_0086

    IL_001a:  ldarg.0
    IL_001b:  ldfld      class Game.ComponentPathfinding Game.ComponentAvoidFireBehavior::m_componentPathfinding
    IL_0020:  callvirt   instance bool Game.ComponentPathfinding::get_IsStuck()
    IL_0025:  brfalse.s  IL_0041

    IL_0027:  ldarg.0
    IL_0028:  ldarg.0
    IL_0029:  ldfld      float32 Game.ComponentAvoidFireBehavior::m_circlingDirection
    IL_002e:  neg
    IL_002f:  stfld      float32 Game.ComponentAvoidFireBehavior::m_circlingDirection
    IL_0034:  ldarg.0
    IL_0035:  ldc.r4     0.0
    IL_003a:  stfld      float32 Game.ComponentAvoidFireBehavior::m_importanceLevel
    IL_003f:  br.s       IL_0086

    IL_0041:  ldarg.0
    IL_0042:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentAvoidFireBehavior::m_target
    IL_0047:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_004c:  brfalse.s  IL_007b

    IL_004e:  ldarg.0
    IL_004f:  ldfld      class Game.ComponentPathfinding Game.ComponentAvoidFireBehavior::m_componentPathfinding
    IL_0054:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPathfinding::get_Destination()
    IL_0059:  stloc.0
    IL_005a:  ldloca.s   V_0
    IL_005c:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_0061:  brfalse.s  IL_007b

    IL_0063:  ldarg.0
    IL_0064:  ldarg.0
    IL_0065:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentAvoidFireBehavior::m_target
    IL_006a:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_006f:  call       instance float32 Game.ComponentAvoidFireBehavior::ScoreTarget(valuetype [Engine]Engine.Vector3)
    IL_0074:  ldc.r4     0.0
    IL_0079:  bgt.un.s   IL_0086

    IL_007b:  ldarg.0
    IL_007c:  ldc.r4     0.0
    IL_0081:  stfld      float32 Game.ComponentAvoidFireBehavior::m_importanceLevel
    IL_0086:  ldarg.0
    IL_0087:  ldfld      class Game.Random Game.ComponentAvoidFireBehavior::m_random
    IL_008c:  ldc.r4     0.0
    IL_0091:  ldc.r4     1.
    IL_0096:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_009b:  ldc.r4     0.1
    IL_00a0:  ldarg.0
    IL_00a1:  ldfld      class Game.SubsystemTime Game.ComponentAvoidFireBehavior::m_subsystemTime
    IL_00a6:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
    IL_00ab:  mul
    IL_00ac:  bge.un.s   IL_00bf

    IL_00ae:  ldarg.0
    IL_00af:  ldfld      class Game.ComponentCreature Game.ComponentAvoidFireBehavior::m_componentCreature
    IL_00b4:  callvirt   instance class Game.ComponentCreatureSounds Game.ComponentCreature::get_ComponentCreatureSounds()
    IL_00b9:  ldc.i4.1
    IL_00ba:  callvirt   instance void Game.ComponentCreatureSounds::PlayIdleSound(bool)
    IL_00bf:  ldarg.0
    IL_00c0:  ldfld      class Game.ComponentCreature Game.ComponentAvoidFireBehavior::m_componentCreature
    IL_00c5:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_00ca:  ldarg.0
    IL_00cb:  ldfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentAvoidFireBehavior::m_target
    IL_00d0:  callvirt   instance void Game.ComponentCreatureModel::set_LookAtOrder(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>)
    IL_00d5:  ret
  } // end of method ComponentAvoidFireBehavior::'<Load>b__21_5'

  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.ComponentAvoidFireBehavior::get_UpdateOrder()
  } // end of property ComponentAvoidFireBehavior::UpdateOrder
  .property instance float32 ImportanceLevel()
  {
    .get instance float32 Game.ComponentAvoidFireBehavior::get_ImportanceLevel()
  } // end of property ComponentAvoidFireBehavior::ImportanceLevel
  .property instance string DebugInfo()
  {
    .get instance string Game.ComponentAvoidFireBehavior::get_DebugInfo()
  } // end of property ComponentAvoidFireBehavior::DebugInfo
} // end of class Game.ComponentAvoidFireBehavior