.class public auto ansi beforefieldinit Game.ComponentSwimAroundBehavior
       extends Game.ComponentBehavior
       implements Game.IUpdateable
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.ComponentSwimAroundBehavior/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`3<int32,float32,bool> '<>9__12_0'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.ComponentSwimAroundBehavior/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.ComponentSwimAroundBehavior/'<>c' Game.ComponentSwimAroundBehavior/'<>c'::'<>9'
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
            '<FindDestination>b__12_0'(int32 'value',
                                       float32 d) cil managed
    {
      // 代码大小       26 (0x1a)
      .maxstack  2
      .locals init (int32 V_0)
      IL_0000:  ldarg.1
      IL_0001:  call       int32 Game.Terrain::ExtractContents(int32)
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
    } // end of method '<>c'::'<FindDestination>b__12_0'

  } // end of class '<>c'

  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.ComponentCreature m_componentCreature
  .field private class Game.ComponentPathfinding m_componentPathfinding
  .field private class Game.StateMachine m_stateMachine
  .field private float32 m_importanceLevel
  .field private class Game.Random m_random
  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method ComponentSwimAroundBehavior::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       128 (0x80)
    .maxstack  4
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.StateMachine Game.ComponentSwimAroundBehavior::m_stateMachine
    IL_0006:  callvirt   instance string Game.StateMachine::get_CurrentState()
    IL_000b:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_0010:  brfalse.s  IL_0022

    IL_0012:  ldarg.0
    IL_0013:  ldfld      class Game.StateMachine Game.ComponentSwimAroundBehavior::m_stateMachine
    IL_0018:  ldstr      "Inactive"
    IL_001d:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0022:  ldarg.0
    IL_0023:  ldfld      class Game.Random Game.ComponentSwimAroundBehavior::m_random
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
    IL_0042:  ldfld      class Game.Random Game.ComponentSwimAroundBehavior::m_random
    IL_0047:  ldc.r4     1.
    IL_004c:  ldc.r4     3.
    IL_0051:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0056:  stfld      float32 Game.ComponentSwimAroundBehavior::m_importanceLevel
    IL_005b:  ldarg.0
    IL_005c:  callvirt   instance bool Game.ComponentBehavior::get_IsActive()
    IL_0061:  brfalse.s  IL_006f

    IL_0063:  ldarg.0
    IL_0064:  ldfld      class Game.StateMachine Game.ComponentSwimAroundBehavior::m_stateMachine
    IL_0069:  callvirt   instance void Game.StateMachine::Update()
    IL_006e:  ret

    IL_006f:  ldarg.0
    IL_0070:  ldfld      class Game.StateMachine Game.ComponentSwimAroundBehavior::m_stateMachine
    IL_0075:  ldstr      "Inactive"
    IL_007a:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_007f:  ret
  } // end of method ComponentSwimAroundBehavior::Update

  .method public hidebysig specialname virtual 
          instance float32  get_ImportanceLevel() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentSwimAroundBehavior::m_importanceLevel
    IL_0006:  ret
  } // end of method ComponentSwimAroundBehavior::get_ImportanceLevel

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       156 (0x9c)
    .maxstack  5
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_000d:  stfld      class Game.SubsystemTerrain Game.ComponentSwimAroundBehavior::m_subsystemTerrain
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreature>(bool)
    IL_001f:  stfld      class Game.ComponentCreature Game.ComponentSwimAroundBehavior::m_componentCreature
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentPathfinding>(bool)
    IL_0031:  stfld      class Game.ComponentPathfinding Game.ComponentSwimAroundBehavior::m_componentPathfinding
    IL_0036:  ldarg.0
    IL_0037:  ldfld      class Game.StateMachine Game.ComponentSwimAroundBehavior::m_stateMachine
    IL_003c:  ldstr      "Inactive"
    IL_0041:  ldnull
    IL_0042:  ldarg.0
    IL_0043:  ldftn      instance void Game.ComponentSwimAroundBehavior::'<Load>b__11_0'()
    IL_0049:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_004e:  ldnull
    IL_004f:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_0054:  ldarg.0
    IL_0055:  ldfld      class Game.StateMachine Game.ComponentSwimAroundBehavior::m_stateMachine
    IL_005a:  ldstr      "Stuck"
    IL_005f:  ldarg.0
    IL_0060:  ldftn      instance void Game.ComponentSwimAroundBehavior::'<Load>b__11_1'()
    IL_0066:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_006b:  ldnull
    IL_006c:  ldnull
    IL_006d:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_0072:  ldarg.0
    IL_0073:  ldfld      class Game.StateMachine Game.ComponentSwimAroundBehavior::m_stateMachine
    IL_0078:  ldstr      "Swim"
    IL_007d:  ldarg.0
    IL_007e:  ldftn      instance void Game.ComponentSwimAroundBehavior::'<Load>b__11_2'()
    IL_0084:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0089:  ldarg.0
    IL_008a:  ldftn      instance void Game.ComponentSwimAroundBehavior::'<Load>b__11_3'()
    IL_0090:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0095:  ldnull
    IL_0096:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_009b:  ret
  } // end of method ComponentSwimAroundBehavior::Load

  .method private hidebysig instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> 
          FindDestination() cil managed
  {
    // 代码大小       351 (0x15f)
    .maxstack  7
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             float32 V_1,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> V_2,
             float32 V_3,
             int32 V_4,
             valuetype [Engine]Engine.Vector2 V_5,
             float32 V_6,
             valuetype [Engine]Engine.Vector3 V_7,
             valuetype [Engine]Engine.Vector3 V_8,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> V_9)
    IL_0000:  ldc.r4     0.5
    IL_0005:  ldarg.0
    IL_0006:  ldfld      class Game.ComponentCreature Game.ComponentSwimAroundBehavior::m_componentCreature
    IL_000b:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0010:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.ComponentBody::get_BoundingBox()
    IL_0015:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_001a:  ldarg.0
    IL_001b:  ldfld      class Game.ComponentCreature Game.ComponentSwimAroundBehavior::m_componentCreature
    IL_0020:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0025:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.ComponentBody::get_BoundingBox()
    IL_002a:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_002f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0034:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0039:  stloc.0
    IL_003a:  ldc.r4     2.
    IL_003f:  stloc.1
    IL_0040:  ldloca.s   V_2
    IL_0042:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>
    IL_0048:  ldarg.0
    IL_0049:  ldfld      class Game.Random Game.ComponentSwimAroundBehavior::m_random
    IL_004e:  ldc.r4     10.
    IL_0053:  ldc.r4     16.
    IL_0058:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_005d:  stloc.3
    IL_005e:  ldc.i4.0
    IL_005f:  stloc.s    V_4
    IL_0061:  br         IL_0154

    IL_0066:  ldarg.0
    IL_0067:  ldfld      class Game.Random Game.ComponentSwimAroundBehavior::m_random
    IL_006c:  ldc.r4     1.
    IL_0071:  ldc.r4     1.
    IL_0076:  ldc.i4.0
    IL_0077:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Random::UniformVector2(float32,
                                                                                               float32,
                                                                                               bool)
    IL_007c:  stloc.s    V_5
    IL_007e:  ldc.r4     0.30000001
    IL_0083:  ldarg.0
    IL_0084:  ldfld      class Game.Random Game.ComponentSwimAroundBehavior::m_random
    IL_0089:  ldc.r4     -0.89999998
    IL_008e:  ldc.r4     1.
    IL_0093:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0098:  mul
    IL_0099:  stloc.s    V_6
    IL_009b:  ldloc.s    V_5
    IL_009d:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_00a2:  ldloc.s    V_6
    IL_00a4:  ldloc.s    V_5
    IL_00a6:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00ab:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00b0:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_00b5:  stloc.s    V_7
    IL_00b7:  ldloc.0
    IL_00b8:  ldloc.3
    IL_00b9:  ldloc.s    V_7
    IL_00bb:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00c0:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00c5:  stloc.s    V_8
    IL_00c7:  ldarg.0
    IL_00c8:  ldfld      class Game.SubsystemTerrain Game.ComponentSwimAroundBehavior::m_subsystemTerrain
    IL_00cd:  ldloc.0
    IL_00ce:  ldloc.s    V_8
    IL_00d0:  ldc.i4.0
    IL_00d1:  ldc.i4.0
    IL_00d2:  ldsfld     class [System.Runtime]System.Func`3<int32,float32,bool> Game.ComponentSwimAroundBehavior/'<>c'::'<>9__12_0'
    IL_00d7:  dup
    IL_00d8:  brtrue.s   IL_00f1

    IL_00da:  pop
    IL_00db:  ldsfld     class Game.ComponentSwimAroundBehavior/'<>c' Game.ComponentSwimAroundBehavior/'<>c'::'<>9'
    IL_00e0:  ldftn      instance bool Game.ComponentSwimAroundBehavior/'<>c'::'<FindDestination>b__12_0'(int32,
                                                                                                          float32)
    IL_00e6:  newobj     instance void class [System.Runtime]System.Func`3<int32,float32,bool>::.ctor(object,
                                                                                                      native int)
    IL_00eb:  dup
    IL_00ec:  stsfld     class [System.Runtime]System.Func`3<int32,float32,bool> Game.ComponentSwimAroundBehavior/'<>c'::'<>9__12_0'
    IL_00f1:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> Game.SubsystemTerrain::Raycast(valuetype [Engine]Engine.Vector3,
                                                                                                                                                  valuetype [Engine]Engine.Vector3,
                                                                                                                                                  bool,
                                                                                                                                                  bool,
                                                                                                                                                  class [System.Runtime]System.Func`3<int32,float32,bool>)
    IL_00f6:  stloc.s    V_9
    IL_00f8:  ldloca.s   V_9
    IL_00fa:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_HasValue()
    IL_00ff:  brtrue.s   IL_0112

    IL_0101:  ldloc.3
    IL_0102:  ldloc.1
    IL_0103:  ble.un.s   IL_014e

    IL_0105:  ldloca.s   V_2
    IL_0107:  ldloc.s    V_8
    IL_0109:  call       instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_010e:  ldloc.3
    IL_010f:  stloc.1
    IL_0110:  br.s       IL_014e

    IL_0112:  ldloca.s   V_9
    IL_0114:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_0119:  ldfld      float32 Game.TerrainRaycastResult::Distance
    IL_011e:  ldloc.1
    IL_011f:  ble.un.s   IL_014e

    IL_0121:  ldloca.s   V_2
    IL_0123:  ldloc.0
    IL_0124:  ldloc.s    V_7
    IL_0126:  ldloca.s   V_9
    IL_0128:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_012d:  ldfld      float32 Game.TerrainRaycastResult::Distance
    IL_0132:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0137:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_013c:  call       instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_0141:  ldloca.s   V_9
    IL_0143:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_0148:  ldfld      float32 Game.TerrainRaycastResult::Distance
    IL_014d:  stloc.1
    IL_014e:  ldloc.s    V_4
    IL_0150:  ldc.i4.1
    IL_0151:  add
    IL_0152:  stloc.s    V_4
    IL_0154:  ldloc.s    V_4
    IL_0156:  ldc.i4.s   16
    IL_0158:  blt        IL_0066

    IL_015d:  ldloc.2
    IL_015e:  ret
  } // end of method ComponentSwimAroundBehavior::FindDestination

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       40 (0x28)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.StateMachine::.ctor()
    IL_0006:  stfld      class Game.StateMachine Game.ComponentSwimAroundBehavior::m_stateMachine
    IL_000b:  ldarg.0
    IL_000c:  ldc.r4     1.
    IL_0011:  stfld      float32 Game.ComponentSwimAroundBehavior::m_importanceLevel
    IL_0016:  ldarg.0
    IL_0017:  newobj     instance void Game.Random::.ctor()
    IL_001c:  stfld      class Game.Random Game.ComponentSwimAroundBehavior::m_random
    IL_0021:  ldarg.0
    IL_0022:  call       instance void Game.ComponentBehavior::.ctor()
    IL_0027:  ret
  } // end of method ComponentSwimAroundBehavior::.ctor

  .method private hidebysig instance void 
          '<Load>b__11_0'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       25 (0x19)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  callvirt   instance bool Game.ComponentBehavior::get_IsActive()
    IL_0006:  brfalse.s  IL_0018

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.StateMachine Game.ComponentSwimAroundBehavior::m_stateMachine
    IL_000e:  ldstr      "Swim"
    IL_0013:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0018:  ret
  } // end of method ComponentSwimAroundBehavior::'<Load>b__11_0'

  .method private hidebysig instance void 
          '<Load>b__11_1'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       56 (0x38)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.Random Game.ComponentSwimAroundBehavior::m_random
    IL_0006:  ldc.r4     0.0
    IL_000b:  ldc.r4     1.
    IL_0010:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0015:  ldc.r4     0.5
    IL_001a:  bge.un.s   IL_0027

    IL_001c:  ldarg.0
    IL_001d:  ldc.r4     1.
    IL_0022:  stfld      float32 Game.ComponentSwimAroundBehavior::m_importanceLevel
    IL_0027:  ldarg.0
    IL_0028:  ldfld      class Game.StateMachine Game.ComponentSwimAroundBehavior::m_stateMachine
    IL_002d:  ldstr      "Swim"
    IL_0032:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0037:  ret
  } // end of method ComponentSwimAroundBehavior::'<Load>b__11_1'

  .method private hidebysig instance void 
          '<Load>b__11_2'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentPathfinding Game.ComponentSwimAroundBehavior::m_componentPathfinding
    IL_0006:  callvirt   instance void Game.ComponentPathfinding::Stop()
    IL_000b:  ret
  } // end of method ComponentSwimAroundBehavior::'<Load>b__11_2'

  .method private hidebysig instance void 
          '<Load>b__11_3'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       140 (0x8c)
    .maxstack  9
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> V_0,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentCreature Game.ComponentSwimAroundBehavior::m_componentCreature
    IL_0006:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_000b:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0010:  pop
    IL_0011:  ldarg.0
    IL_0012:  ldfld      class Game.ComponentPathfinding Game.ComponentSwimAroundBehavior::m_componentPathfinding
    IL_0017:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPathfinding::get_Destination()
    IL_001c:  stloc.0
    IL_001d:  ldloca.s   V_0
    IL_001f:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_0024:  brtrue.s   IL_006e

    IL_0026:  ldarg.0
    IL_0027:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentSwimAroundBehavior::FindDestination()
    IL_002c:  stloc.1
    IL_002d:  ldloca.s   V_1
    IL_002f:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_0034:  brfalse.s  IL_0062

    IL_0036:  ldarg.0
    IL_0037:  ldfld      class Game.ComponentPathfinding Game.ComponentSwimAroundBehavior::m_componentPathfinding
    IL_003c:  ldloc.1
    IL_003d:  ldarg.0
    IL_003e:  ldfld      class Game.Random Game.ComponentSwimAroundBehavior::m_random
    IL_0043:  ldc.r4     0.30000001
    IL_0048:  ldc.r4     0.40000001
    IL_004d:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0052:  ldc.r4     1.
    IL_0057:  ldc.i4.0
    IL_0058:  ldc.i4.0
    IL_0059:  ldc.i4.1
    IL_005a:  ldc.i4.0
    IL_005b:  ldnull
    IL_005c:  callvirt   instance void Game.ComponentPathfinding::SetDestination(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>,
                                                                                 float32,
                                                                                 float32,
                                                                                 int32,
                                                                                 bool,
                                                                                 bool,
                                                                                 bool,
                                                                                 class Game.ComponentBody)
    IL_0061:  ret

    IL_0062:  ldarg.0
    IL_0063:  ldc.r4     1.
    IL_0068:  stfld      float32 Game.ComponentSwimAroundBehavior::m_importanceLevel
    IL_006d:  ret

    IL_006e:  ldarg.0
    IL_006f:  ldfld      class Game.ComponentPathfinding Game.ComponentSwimAroundBehavior::m_componentPathfinding
    IL_0074:  callvirt   instance bool Game.ComponentPathfinding::get_IsStuck()
    IL_0079:  brfalse.s  IL_008b

    IL_007b:  ldarg.0
    IL_007c:  ldfld      class Game.StateMachine Game.ComponentSwimAroundBehavior::m_stateMachine
    IL_0081:  ldstr      "Stuck"
    IL_0086:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_008b:  ret
  } // end of method ComponentSwimAroundBehavior::'<Load>b__11_3'

  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.ComponentSwimAroundBehavior::get_UpdateOrder()
  } // end of property ComponentSwimAroundBehavior::UpdateOrder
  .property instance float32 ImportanceLevel()
  {
    .get instance float32 Game.ComponentSwimAroundBehavior::get_ImportanceLevel()
  } // end of property ComponentSwimAroundBehavior::ImportanceLevel
} // end of class Game.ComponentSwimAroundBehavior