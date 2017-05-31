.class public auto ansi beforefieldinit Game.ComponentSwimAwayBehavior
       extends Game.ComponentBehavior
       implements Game.IUpdateable
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.ComponentSwimAwayBehavior/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`3<int32,float32,bool> '<>9__17_0'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.ComponentSwimAwayBehavior/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.ComponentSwimAwayBehavior/'<>c' Game.ComponentSwimAwayBehavior/'<>c'::'<>9'
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

    .method assembly hidebysig instance bool 
            '<FindSafePlace>b__17_0'(int32 'value',
                                     float32 d) cil managed
    {
      // 代码大小       26 (0x1a)
      .maxstack  2
      .locals init (int32 V_0)
      IL_0000:  ldarg.1
      IL_0001:  call       int32 Game.TerrainData::ExtractContents(int32)
      IL_0006:  stloc.0
      IL_0007:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
      IL_000c:  ldloc.0
      IL_000d:  ldelem.ref
      IL_000e:  isinst     Game.WaterBlock
      IL_0013:  ldnull
      IL_0014:  cgt.un
      IL_0016:  ldc.i4.0
      IL_0017:  ceq
      IL_0019:  ret
    } // end of method '<>c'::'<FindSafePlace>b__17_0'

  } // end of class '<>c'

  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.ComponentCreature m_componentCreature
  .field private class Game.ComponentPathfinding m_componentPathfinding
  .field private class Game.ComponentHerdBehavior m_componentHerdBehavior
  .field private class Game.StateMachine m_stateMachine
  .field private class Game.Random m_random
  .field private float32 m_importanceLevel
  .field private class Game.ComponentFrame m_attacker
  .field private float32 m_timeToForgetAttacker
  .method public hidebysig instance void 
          SwimAwayFrom(class Game.ComponentBody attacker) cil managed
  {
    // 代码大小       35 (0x23)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.ComponentFrame Game.ComponentSwimAwayBehavior::m_attacker
    IL_0007:  ldarg.0
    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.Random Game.ComponentSwimAwayBehavior::m_random
    IL_000e:  ldc.r4     10.
    IL_0013:  ldc.r4     20.
    IL_0018:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_001d:  stfld      float32 Game.ComponentSwimAwayBehavior::m_timeToForgetAttacker
    IL_0022:  ret
  } // end of method ComponentSwimAwayBehavior::SwimAwayFrom

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method ComponentSwimAwayBehavior::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.StateMachine Game.ComponentSwimAwayBehavior::m_stateMachine
    IL_0006:  callvirt   instance void Game.StateMachine::Update()
    IL_000b:  ret
  } // end of method ComponentSwimAwayBehavior::Update

  .method public hidebysig specialname virtual 
          instance float32  get_ImportanceLevel() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentSwimAwayBehavior::m_importanceLevel
    IL_0006:  ret
  } // end of method ComponentSwimAwayBehavior::get_ImportanceLevel

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       216 (0xd8)
    .maxstack  5
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_000d:  stfld      class Game.SubsystemTerrain Game.ComponentSwimAwayBehavior::m_subsystemTerrain
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_001f:  stfld      class Game.SubsystemTime Game.ComponentSwimAwayBehavior::m_subsystemTime
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreature>(bool)
    IL_0031:  stfld      class Game.ComponentCreature Game.ComponentSwimAwayBehavior::m_componentCreature
    IL_0036:  ldarg.0
    IL_0037:  ldarg.0
    IL_0038:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_003d:  ldc.i4.1
    IL_003e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentPathfinding>(bool)
    IL_0043:  stfld      class Game.ComponentPathfinding Game.ComponentSwimAwayBehavior::m_componentPathfinding
    IL_0048:  ldarg.0
    IL_0049:  ldarg.0
    IL_004a:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_004f:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentHerdBehavior>()
    IL_0054:  stfld      class Game.ComponentHerdBehavior Game.ComponentSwimAwayBehavior::m_componentHerdBehavior
    IL_0059:  ldarg.0
    IL_005a:  ldfld      class Game.ComponentCreature Game.ComponentSwimAwayBehavior::m_componentCreature
    IL_005f:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_0064:  ldarg.0
    IL_0065:  ldftn      instance void Game.ComponentSwimAwayBehavior::'<Load>b__16_0'(class Game.ComponentCreature)
    IL_006b:  newobj     instance void class [System.Runtime]System.Action`1<class Game.ComponentCreature>::.ctor(object,
                                                                                                                  native int)
    IL_0070:  callvirt   instance void Game.ComponentHealth::add_Attacked(class [System.Runtime]System.Action`1<class Game.ComponentCreature>)
    IL_0075:  ldarg.0
    IL_0076:  ldfld      class Game.StateMachine Game.ComponentSwimAwayBehavior::m_stateMachine
    IL_007b:  ldstr      "Inactive"
    IL_0080:  ldarg.0
    IL_0081:  ldftn      instance void Game.ComponentSwimAwayBehavior::'<Load>b__16_1'()
    IL_0087:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_008c:  ldarg.0
    IL_008d:  ldftn      instance void Game.ComponentSwimAwayBehavior::'<Load>b__16_2'()
    IL_0093:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0098:  ldnull
    IL_0099:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_009e:  ldarg.0
    IL_009f:  ldfld      class Game.StateMachine Game.ComponentSwimAwayBehavior::m_stateMachine
    IL_00a4:  ldstr      "SwimmingAway"
    IL_00a9:  ldarg.0
    IL_00aa:  ldftn      instance void Game.ComponentSwimAwayBehavior::'<Load>b__16_3'()
    IL_00b0:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00b5:  ldarg.0
    IL_00b6:  ldftn      instance void Game.ComponentSwimAwayBehavior::'<Load>b__16_4'()
    IL_00bc:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00c1:  ldnull
    IL_00c2:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_00c7:  ldarg.0
    IL_00c8:  ldfld      class Game.StateMachine Game.ComponentSwimAwayBehavior::m_stateMachine
    IL_00cd:  ldstr      "Inactive"
    IL_00d2:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_00d7:  ret
  } // end of method ComponentSwimAwayBehavior::Load

  .method private hidebysig instance valuetype [Engine]Engine.Vector3 
          FindSafePlace() cil managed
  {
    // 代码大小       352 (0x160)
    .maxstack  7
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> V_1,
             float32 V_2,
             valuetype [Engine]Engine.Vector3 V_3,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> V_4,
             int32 V_5,
             valuetype [Engine]Engine.Vector2 V_6,
             float32 V_7,
             valuetype [Engine]Engine.Vector3 V_8,
             valuetype [Engine]Engine.Vector3 V_9,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> V_10,
             valuetype [Engine]Engine.Vector3 V_11,
             float32 V_12)
    IL_0000:  ldc.r4     0.5
    IL_0005:  ldarg.0
    IL_0006:  ldfld      class Game.ComponentCreature Game.ComponentSwimAwayBehavior::m_componentCreature
    IL_000b:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0010:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.ComponentBody::get_BoundingBox()
    IL_0015:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_001a:  ldarg.0
    IL_001b:  ldfld      class Game.ComponentCreature Game.ComponentSwimAwayBehavior::m_componentCreature
    IL_0020:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0025:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.ComponentBody::get_BoundingBox()
    IL_002a:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_002f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0034:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0039:  stloc.0
    IL_003a:  ldarg.0
    IL_003b:  ldfld      class Game.ComponentHerdBehavior Game.ComponentSwimAwayBehavior::m_componentHerdBehavior
    IL_0040:  brtrue.s   IL_004e

    IL_0042:  ldloca.s   V_4
    IL_0044:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>
    IL_004a:  ldloc.s    V_4
    IL_004c:  br.s       IL_0059

    IL_004e:  ldarg.0
    IL_004f:  ldfld      class Game.ComponentHerdBehavior Game.ComponentSwimAwayBehavior::m_componentHerdBehavior
    IL_0054:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentHerdBehavior::FindHerdCenter()
    IL_0059:  stloc.1
    IL_005a:  ldc.r4     (00 00 80 FF)
    IL_005f:  stloc.2
    IL_0060:  ldloc.0
    IL_0061:  stloc.3
    IL_0062:  ldc.i4.0
    IL_0063:  stloc.s    V_5
    IL_0065:  br         IL_0155

    IL_006a:  ldarg.0
    IL_006b:  ldfld      class Game.Random Game.ComponentSwimAwayBehavior::m_random
    IL_0070:  ldc.r4     1.
    IL_0075:  ldc.r4     1.
    IL_007a:  ldc.i4.0
    IL_007b:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Random::UniformVector2(float32,
                                                                                               float32,
                                                                                               bool)
    IL_0080:  stloc.s    V_6
    IL_0082:  ldc.r4     0.40000001
    IL_0087:  ldarg.0
    IL_0088:  ldfld      class Game.Random Game.ComponentSwimAwayBehavior::m_random
    IL_008d:  ldc.r4     -1.
    IL_0092:  ldc.r4     1.
    IL_0097:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_009c:  mul
    IL_009d:  stloc.s    V_7
    IL_009f:  ldloc.s    V_6
    IL_00a1:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_00a6:  ldloc.s    V_7
    IL_00a8:  ldloc.s    V_6
    IL_00aa:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00af:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00b4:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_00b9:  stloc.s    V_8
    IL_00bb:  ldloc.0
    IL_00bc:  ldarg.0
    IL_00bd:  ldfld      class Game.Random Game.ComponentSwimAwayBehavior::m_random
    IL_00c2:  ldc.r4     10.
    IL_00c7:  ldc.r4     20.
    IL_00cc:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_00d1:  ldloc.s    V_8
    IL_00d3:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00d8:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00dd:  stloc.s    V_9
    IL_00df:  ldarg.0
    IL_00e0:  ldfld      class Game.SubsystemTerrain Game.ComponentSwimAwayBehavior::m_subsystemTerrain
    IL_00e5:  ldloc.0
    IL_00e6:  ldloc.s    V_9
    IL_00e8:  ldc.i4.0
    IL_00e9:  ldc.i4.0
    IL_00ea:  ldsfld     class [System.Runtime]System.Func`3<int32,float32,bool> Game.ComponentSwimAwayBehavior/'<>c'::'<>9__17_0'
    IL_00ef:  dup
    IL_00f0:  brtrue.s   IL_0109

    IL_00f2:  pop
    IL_00f3:  ldsfld     class Game.ComponentSwimAwayBehavior/'<>c' Game.ComponentSwimAwayBehavior/'<>c'::'<>9'
    IL_00f8:  ldftn      instance bool Game.ComponentSwimAwayBehavior/'<>c'::'<FindSafePlace>b__17_0'(int32,
                                                                                                      float32)
    IL_00fe:  newobj     instance void class [System.Runtime]System.Func`3<int32,float32,bool>::.ctor(object,
                                                                                                      native int)
    IL_0103:  dup
    IL_0104:  stsfld     class [System.Runtime]System.Func`3<int32,float32,bool> Game.ComponentSwimAwayBehavior/'<>c'::'<>9__17_0'
    IL_0109:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> Game.SubsystemTerrain::Raycast(valuetype [Engine]Engine.Vector3,
                                                                                                                                                  valuetype [Engine]Engine.Vector3,
                                                                                                                                                  bool,
                                                                                                                                                  bool,
                                                                                                                                                  class [System.Runtime]System.Func`3<int32,float32,bool>)
    IL_010e:  stloc.s    V_10
    IL_0110:  ldloca.s   V_10
    IL_0112:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_HasValue()
    IL_0117:  brtrue.s   IL_011d

    IL_0119:  ldloc.s    V_9
    IL_011b:  br.s       IL_0136

    IL_011d:  ldloc.0
    IL_011e:  ldloc.s    V_8
    IL_0120:  ldloca.s   V_10
    IL_0122:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_0127:  ldfld      float32 Game.TerrainRaycastResult::Distance
    IL_012c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0131:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0136:  stloc.s    V_11
    IL_0138:  ldarg.0
    IL_0139:  ldloc.0
    IL_013a:  ldloc.s    V_11
    IL_013c:  ldloc.1
    IL_013d:  call       instance float32 Game.ComponentSwimAwayBehavior::ScoreSafePlace(valuetype [Engine]Engine.Vector3,
                                                                                         valuetype [Engine]Engine.Vector3,
                                                                                         valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>)
    IL_0142:  stloc.s    V_12
    IL_0144:  ldloc.s    V_12
    IL_0146:  ldloc.2
    IL_0147:  ble.un.s   IL_014f

    IL_0149:  ldloc.s    V_12
    IL_014b:  stloc.2
    IL_014c:  ldloc.s    V_11
    IL_014e:  stloc.3
    IL_014f:  ldloc.s    V_5
    IL_0151:  ldc.i4.1
    IL_0152:  add
    IL_0153:  stloc.s    V_5
    IL_0155:  ldloc.s    V_5
    IL_0157:  ldc.i4.s   40
    IL_0159:  blt        IL_006a

    IL_015e:  ldloc.3
    IL_015f:  ret
  } // end of method ComponentSwimAwayBehavior::FindSafePlace

  .method private hidebysig instance float32 
          ScoreSafePlace(valuetype [Engine]Engine.Vector3 currentPosition,
                         valuetype [Engine]Engine.Vector3 safePosition,
                         valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> herdPosition) cil managed
  {
    // 代码大小       224 (0xe0)
    .maxstack  3
    .locals init (valuetype [Engine]Engine.Vector2 V_0,
             valuetype [Engine]Engine.Vector2 V_1,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> V_2,
             valuetype Game.Segment2 V_3,
             float32 V_4,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> V_5,
             valuetype [Engine]Engine.Vector3 V_6,
             valuetype [Engine]Engine.Vector2 V_7,
             float32 V_8)
    IL_0000:  ldloca.s   V_0
    IL_0002:  ldarg.1
    IL_0003:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0008:  ldarg.1
    IL_0009:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_000e:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0013:  ldloca.s   V_1
    IL_0015:  ldarg.2
    IL_0016:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_001b:  ldarg.2
    IL_001c:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0021:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0026:  ldarga.s   herdPosition
    IL_0028:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_002d:  brtrue.s   IL_003b

    IL_002f:  ldloca.s   V_5
    IL_0031:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>
    IL_0037:  ldloc.s    V_5
    IL_0039:  br.s       IL_005d

    IL_003b:  ldarga.s   herdPosition
    IL_003d:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_0042:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0047:  ldarga.s   herdPosition
    IL_0049:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_004e:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0053:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0058:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_005d:  stloc.2
    IL_005e:  ldloca.s   V_3
    IL_0060:  ldloc.0
    IL_0061:  ldloc.1
    IL_0062:  call       instance void Game.Segment2::.ctor(valuetype [Engine]Engine.Vector2,
                                                            valuetype [Engine]Engine.Vector2)
    IL_0067:  ldloca.s   V_2
    IL_0069:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_006e:  brtrue.s   IL_0077

    IL_0070:  ldc.r4     0.0
    IL_0075:  br.s       IL_0084

    IL_0077:  ldloc.3
    IL_0078:  ldloca.s   V_2
    IL_007a:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_007f:  call       float32 Game.Segment2::Distance(valuetype Game.Segment2,
                                                         valuetype [Engine]Engine.Vector2)
    IL_0084:  stloc.s    V_4
    IL_0086:  ldarg.0
    IL_0087:  ldfld      class Game.ComponentFrame Game.ComponentSwimAwayBehavior::m_attacker
    IL_008c:  brfalse.s  IL_00cf

    IL_008e:  ldarg.0
    IL_008f:  ldfld      class Game.ComponentFrame Game.ComponentSwimAwayBehavior::m_attacker
    IL_0094:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0099:  stloc.s    V_6
    IL_009b:  ldloca.s   V_7
    IL_009d:  ldloc.s    V_6
    IL_009f:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_00a4:  ldloc.s    V_6
    IL_00a6:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_00ab:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00b0:  ldloc.s    V_7
    IL_00b2:  ldloc.1
    IL_00b3:  call       float32 [Engine]Engine.Vector2::Distance(valuetype [Engine]Engine.Vector2,
                                                                  valuetype [Engine]Engine.Vector2)
    IL_00b8:  ldloc.3
    IL_00b9:  ldloc.s    V_7
    IL_00bb:  call       float32 Game.Segment2::Distance(valuetype Game.Segment2,
                                                         valuetype [Engine]Engine.Vector2)
    IL_00c0:  stloc.s    V_8
    IL_00c2:  ldc.r4     1.5
    IL_00c7:  ldloc.s    V_8
    IL_00c9:  mul
    IL_00ca:  add
    IL_00cb:  ldloc.s    V_4
    IL_00cd:  sub
    IL_00ce:  ret

    IL_00cf:  ldc.r4     1.5
    IL_00d4:  ldloc.0
    IL_00d5:  ldloc.1
    IL_00d6:  call       float32 [Engine]Engine.Vector2::Distance(valuetype [Engine]Engine.Vector2,
                                                                  valuetype [Engine]Engine.Vector2)
    IL_00db:  mul
    IL_00dc:  ldloc.s    V_4
    IL_00de:  sub
    IL_00df:  ret
  } // end of method ComponentSwimAwayBehavior::ScoreSafePlace

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.StateMachine::.ctor()
    IL_0006:  stfld      class Game.StateMachine Game.ComponentSwimAwayBehavior::m_stateMachine
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void Game.Random::.ctor()
    IL_0011:  stfld      class Game.Random Game.ComponentSwimAwayBehavior::m_random
    IL_0016:  ldarg.0
    IL_0017:  call       instance void Game.ComponentBehavior::.ctor()
    IL_001c:  ret
  } // end of method ComponentSwimAwayBehavior::.ctor

  .method private hidebysig instance void 
          '<Load>b__16_0'(class Game.ComponentCreature attacker) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0007:  call       instance void Game.ComponentSwimAwayBehavior::SwimAwayFrom(class Game.ComponentBody)
    IL_000c:  ret
  } // end of method ComponentSwimAwayBehavior::'<Load>b__16_0'

  .method private hidebysig instance void 
          '<Load>b__16_1'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.r4     0.0
    IL_0006:  stfld      float32 Game.ComponentSwimAwayBehavior::m_importanceLevel
    IL_000b:  ldarg.0
    IL_000c:  ldnull
    IL_000d:  stfld      class Game.ComponentFrame Game.ComponentSwimAwayBehavior::m_attacker
    IL_0012:  ret
  } // end of method ComponentSwimAwayBehavior::'<Load>b__16_1'

  .method private hidebysig instance void 
          '<Load>b__16_2'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       199 (0xc7)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentFrame Game.ComponentSwimAwayBehavior::m_attacker
    IL_0006:  brfalse.s  IL_0034

    IL_0008:  ldarg.0
    IL_0009:  ldarg.0
    IL_000a:  ldfld      float32 Game.ComponentSwimAwayBehavior::m_timeToForgetAttacker
    IL_000f:  ldarg.0
    IL_0010:  ldfld      class Game.SubsystemTime Game.ComponentSwimAwayBehavior::m_subsystemTime
    IL_0015:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
    IL_001a:  sub
    IL_001b:  stfld      float32 Game.ComponentSwimAwayBehavior::m_timeToForgetAttacker
    IL_0020:  ldarg.0
    IL_0021:  ldfld      float32 Game.ComponentSwimAwayBehavior::m_timeToForgetAttacker
    IL_0026:  ldc.r4     0.0
    IL_002b:  bgt.un.s   IL_0034

    IL_002d:  ldarg.0
    IL_002e:  ldnull
    IL_002f:  stfld      class Game.ComponentFrame Game.ComponentSwimAwayBehavior::m_attacker
    IL_0034:  ldarg.0
    IL_0035:  ldfld      class Game.ComponentCreature Game.ComponentSwimAwayBehavior::m_componentCreature
    IL_003a:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_003f:  callvirt   instance float32 Game.ComponentHealth::get_HealthChange()
    IL_0044:  ldc.r4     0.0
    IL_0049:  bge.un.s   IL_0074

    IL_004b:  ldarg.0
    IL_004c:  ldarg.0
    IL_004d:  ldfld      class Game.ComponentCreature Game.ComponentSwimAwayBehavior::m_componentCreature
    IL_0052:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_0057:  callvirt   instance float32 Game.ComponentHealth::get_Health()
    IL_005c:  ldc.r4     0.33000001
    IL_0061:  blt.s      IL_0067

    IL_0063:  ldc.i4.s   100
    IL_0065:  br.s       IL_006c

    IL_0067:  ldc.i4     0x12c
    IL_006c:  conv.r4
    IL_006d:  stfld      float32 Game.ComponentSwimAwayBehavior::m_importanceLevel
    IL_0072:  br.s       IL_00ae

    IL_0074:  ldarg.0
    IL_0075:  ldfld      class Game.ComponentFrame Game.ComponentSwimAwayBehavior::m_attacker
    IL_007a:  brfalse.s  IL_00ae

    IL_007c:  ldarg.0
    IL_007d:  ldfld      class Game.ComponentFrame Game.ComponentSwimAwayBehavior::m_attacker
    IL_0082:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0087:  ldarg.0
    IL_0088:  ldfld      class Game.ComponentCreature Game.ComponentSwimAwayBehavior::m_componentCreature
    IL_008d:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0092:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0097:  call       float32 [Engine]Engine.Vector3::DistanceSquared(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_009c:  ldc.r4     25.
    IL_00a1:  bge.un.s   IL_00ae

    IL_00a3:  ldarg.0
    IL_00a4:  ldc.r4     100.
    IL_00a9:  stfld      float32 Game.ComponentSwimAwayBehavior::m_importanceLevel
    IL_00ae:  ldarg.0
    IL_00af:  callvirt   instance bool Game.ComponentBehavior::get_IsActive()
    IL_00b4:  brfalse.s  IL_00c6

    IL_00b6:  ldarg.0
    IL_00b7:  ldfld      class Game.StateMachine Game.ComponentSwimAwayBehavior::m_stateMachine
    IL_00bc:  ldstr      "SwimmingAway"
    IL_00c1:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_00c6:  ret
  } // end of method ComponentSwimAwayBehavior::'<Load>b__16_2'

  .method private hidebysig instance void 
          '<Load>b__16_3'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       37 (0x25)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentPathfinding Game.ComponentSwimAwayBehavior::m_componentPathfinding
    IL_0006:  ldarg.0
    IL_0007:  call       instance valuetype [Engine]Engine.Vector3 Game.ComponentSwimAwayBehavior::FindSafePlace()
    IL_000c:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_0011:  ldc.r4     1.
    IL_0016:  ldc.r4     1.
    IL_001b:  ldc.i4.0
    IL_001c:  ldc.i4.0
    IL_001d:  ldc.i4.1
    IL_001e:  ldc.i4.0
    IL_001f:  callvirt   instance void Game.ComponentPathfinding::SetDestination(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>,
                                                                                 float32,
                                                                                 float32,
                                                                                 int32,
                                                                                 bool,
                                                                                 bool,
                                                                                 bool)
    IL_0024:  ret
  } // end of method ComponentSwimAwayBehavior::'<Load>b__16_3'

  .method private hidebysig instance void 
          '<Load>b__16_4'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       59 (0x3b)
    .maxstack  2
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> V_0)
    IL_0000:  ldarg.0
    IL_0001:  callvirt   instance bool Game.ComponentBehavior::get_IsActive()
    IL_0006:  brfalse.s  IL_002a

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.ComponentPathfinding Game.ComponentSwimAwayBehavior::m_componentPathfinding
    IL_000e:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPathfinding::get_Destination()
    IL_0013:  stloc.0
    IL_0014:  ldloca.s   V_0
    IL_0016:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_001b:  brfalse.s  IL_002a

    IL_001d:  ldarg.0
    IL_001e:  ldfld      class Game.ComponentPathfinding Game.ComponentSwimAwayBehavior::m_componentPathfinding
    IL_0023:  callvirt   instance bool Game.ComponentPathfinding::get_IsStuck()
    IL_0028:  brfalse.s  IL_003a

    IL_002a:  ldarg.0
    IL_002b:  ldfld      class Game.StateMachine Game.ComponentSwimAwayBehavior::m_stateMachine
    IL_0030:  ldstr      "Inactive"
    IL_0035:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_003a:  ret
  } // end of method ComponentSwimAwayBehavior::'<Load>b__16_4'

  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.ComponentSwimAwayBehavior::get_UpdateOrder()
  } // end of property ComponentSwimAwayBehavior::UpdateOrder
  .property instance float32 ImportanceLevel()
  {
    .get instance float32 Game.ComponentSwimAwayBehavior::get_ImportanceLevel()
  } // end of property ComponentSwimAwayBehavior::ImportanceLevel
} // end of class Game.ComponentSwimAwayBehavior