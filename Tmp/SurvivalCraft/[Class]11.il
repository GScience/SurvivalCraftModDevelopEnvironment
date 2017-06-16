.class public auto ansi beforefieldinit Game.ComponentCetaceanBreatheBehavior
       extends Game.ComponentBehavior
       implements Game.IUpdateable
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.ComponentCetaceanBreatheBehavior/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`3<int32,float32,bool> '<>9__15_0'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.ComponentCetaceanBreatheBehavior/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.ComponentCetaceanBreatheBehavior/'<>c' Game.ComponentCetaceanBreatheBehavior/'<>c'::'<>9'
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
            '<FindSurfaceDestination>b__15_0'(int32 'value',
                                              float32 d) cil managed
    {
      // 代码大小       14 (0xe)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  call       int32 Game.TerrainData::ExtractContents(int32)
      IL_0006:  ldc.i4.s   18
      IL_0008:  ceq
      IL_000a:  ldc.i4.0
      IL_000b:  ceq
      IL_000d:  ret
    } // end of method '<>c'::'<FindSurfaceDestination>b__15_0'

  } // end of class '<>c'

  .field private class Game.SubsystemParticles m_subsystemParticles
  .field private class Game.SubsystemAudio m_subsystemAudio
  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.ComponentCreature m_componentCreature
  .field private class Game.ComponentPathfinding m_componentPathfinding
  .field private class Game.StateMachine m_stateMachine
  .field private class Game.Random m_random
  .field private class Game.WhalePlumeParticleSystem m_particleSystem
  .field private float32 m_importanceLevel
  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method ComponentCetaceanBreatheBehavior::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  callvirt   instance bool Game.ComponentBehavior::get_IsActive()
    IL_0006:  brtrue.s   IL_0018

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.StateMachine Game.ComponentCetaceanBreatheBehavior::m_stateMachine
    IL_000e:  ldstr      "Inactive"
    IL_0013:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0018:  ldarg.0
    IL_0019:  ldfld      class Game.StateMachine Game.ComponentCetaceanBreatheBehavior::m_stateMachine
    IL_001e:  callvirt   instance void Game.StateMachine::Update()
    IL_0023:  ret
  } // end of method ComponentCetaceanBreatheBehavior::Update

  .method public hidebysig specialname virtual 
          instance float32  get_ImportanceLevel() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentCetaceanBreatheBehavior::m_importanceLevel
    IL_0006:  ret
  } // end of method ComponentCetaceanBreatheBehavior::get_ImportanceLevel

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       214 (0xd6)
    .maxstack  6
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemParticles>(bool)
    IL_000d:  stfld      class Game.SubsystemParticles Game.ComponentCetaceanBreatheBehavior::m_subsystemParticles
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemAudio>(bool)
    IL_001f:  stfld      class Game.SubsystemAudio Game.ComponentCetaceanBreatheBehavior::m_subsystemAudio
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_0031:  stfld      class Game.SubsystemTerrain Game.ComponentCetaceanBreatheBehavior::m_subsystemTerrain
    IL_0036:  ldarg.0
    IL_0037:  ldarg.0
    IL_0038:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_003d:  ldc.i4.1
    IL_003e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreature>(bool)
    IL_0043:  stfld      class Game.ComponentCreature Game.ComponentCetaceanBreatheBehavior::m_componentCreature
    IL_0048:  ldarg.0
    IL_0049:  ldarg.0
    IL_004a:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_004f:  ldc.i4.1
    IL_0050:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentPathfinding>(bool)
    IL_0055:  stfld      class Game.ComponentPathfinding Game.ComponentCetaceanBreatheBehavior::m_componentPathfinding
    IL_005a:  ldarg.0
    IL_005b:  ldfld      class Game.StateMachine Game.ComponentCetaceanBreatheBehavior::m_stateMachine
    IL_0060:  ldstr      "Inactive"
    IL_0065:  ldnull
    IL_0066:  ldarg.0
    IL_0067:  ldftn      instance void Game.ComponentCetaceanBreatheBehavior::'<Load>b__14_0'()
    IL_006d:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0072:  ldnull
    IL_0073:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_0078:  ldarg.0
    IL_0079:  ldfld      class Game.StateMachine Game.ComponentCetaceanBreatheBehavior::m_stateMachine
    IL_007e:  ldstr      "Surface"
    IL_0083:  ldarg.0
    IL_0084:  ldftn      instance void Game.ComponentCetaceanBreatheBehavior::'<Load>b__14_1'()
    IL_008a:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_008f:  ldarg.0
    IL_0090:  ldftn      instance void Game.ComponentCetaceanBreatheBehavior::'<Load>b__14_2'()
    IL_0096:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_009b:  ldnull
    IL_009c:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_00a1:  ldarg.0
    IL_00a2:  ldfld      class Game.StateMachine Game.ComponentCetaceanBreatheBehavior::m_stateMachine
    IL_00a7:  ldstr      "Breathe"
    IL_00ac:  ldarg.0
    IL_00ad:  ldftn      instance void Game.ComponentCetaceanBreatheBehavior::'<Load>b__14_3'()
    IL_00b3:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00b8:  ldarg.0
    IL_00b9:  ldftn      instance void Game.ComponentCetaceanBreatheBehavior::'<Load>b__14_4'()
    IL_00bf:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00c4:  ldarg.0
    IL_00c5:  ldftn      instance void Game.ComponentCetaceanBreatheBehavior::'<Load>b__14_5'()
    IL_00cb:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00d0:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_00d5:  ret
  } // end of method ComponentCetaceanBreatheBehavior::Load

  .method private hidebysig instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> 
          FindSurfaceDestination() cil managed
  {
    // 代码大小       416 (0x1a0)
    .maxstack  7
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             valuetype [Engine]Engine.Vector3 V_1,
             float32 V_2,
             valuetype [Engine]Engine.Matrix V_3,
             int32 V_4,
             valuetype [Engine]Engine.Vector2 V_5,
             valuetype [Engine]Engine.Vector3 V_6,
             valuetype [Engine]Engine.Vector3 V_7,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> V_8,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> V_9)
    IL_0000:  ldc.r4     0.5
    IL_0005:  ldarg.0
    IL_0006:  ldfld      class Game.ComponentCreature Game.ComponentCetaceanBreatheBehavior::m_componentCreature
    IL_000b:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0010:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.ComponentBody::get_BoundingBox()
    IL_0015:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_001a:  ldarg.0
    IL_001b:  ldfld      class Game.ComponentCreature Game.ComponentCetaceanBreatheBehavior::m_componentCreature
    IL_0020:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0025:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.ComponentBody::get_BoundingBox()
    IL_002a:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_002f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0034:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0039:  stloc.0
    IL_003a:  ldarg.0
    IL_003b:  ldfld      class Game.ComponentCreature Game.ComponentCetaceanBreatheBehavior::m_componentCreature
    IL_0040:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0045:  callvirt   instance valuetype [Engine]Engine.Matrix Game.ComponentFrame::get_Matrix()
    IL_004a:  stloc.3
    IL_004b:  ldloca.s   V_3
    IL_004d:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Forward()
    IL_0052:  stloc.1
    IL_0053:  ldc.r4     2.
    IL_0058:  ldarg.0
    IL_0059:  ldfld      class Game.ComponentCreature Game.ComponentCetaceanBreatheBehavior::m_componentCreature
    IL_005e:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0063:  callvirt   instance float32 Game.ComponentBody::get_ImmersionDepth()
    IL_0068:  mul
    IL_0069:  stloc.2
    IL_006a:  ldc.i4.0
    IL_006b:  stloc.s    V_4
    IL_006d:  br         IL_018c

    IL_0072:  ldloc.s    V_4
    IL_0074:  ldc.i4.4
    IL_0075:  blt.s      IL_008f

    IL_0077:  ldarg.0
    IL_0078:  ldfld      class Game.Random Game.ComponentCetaceanBreatheBehavior::m_random
    IL_007d:  ldc.r4     0.5
    IL_0082:  ldc.r4     1.
    IL_0087:  ldc.i4.0
    IL_0088:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Random::UniformVector2(float32,
                                                                                               float32,
                                                                                               bool)
    IL_008d:  br.s       IL_00bb

    IL_008f:  ldloc.1
    IL_0090:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0095:  ldloc.1
    IL_0096:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_009b:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00a0:  ldarg.0
    IL_00a1:  ldfld      class Game.Random Game.ComponentCetaceanBreatheBehavior::m_random
    IL_00a6:  ldc.r4     0.0
    IL_00ab:  ldc.r4     0.25
    IL_00b0:  ldc.i4.0
    IL_00b1:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Random::UniformVector2(float32,
                                                                                               float32,
                                                                                               bool)
    IL_00b6:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_00bb:  stloc.s    V_5
    IL_00bd:  ldloc.s    V_5
    IL_00bf:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_00c4:  ldc.r4     1.
    IL_00c9:  ldloc.s    V_5
    IL_00cb:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00d0:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00d5:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_00da:  stloc.s    V_6
    IL_00dc:  ldloc.0
    IL_00dd:  ldloc.2
    IL_00de:  ldloc.s    V_6
    IL_00e0:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00e5:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00ea:  stloc.s    V_7
    IL_00ec:  ldarg.0
    IL_00ed:  ldfld      class Game.SubsystemTerrain Game.ComponentCetaceanBreatheBehavior::m_subsystemTerrain
    IL_00f2:  ldloc.0
    IL_00f3:  ldloc.s    V_7
    IL_00f5:  ldc.i4.0
    IL_00f6:  ldc.i4.0
    IL_00f7:  ldsfld     class [System.Runtime]System.Func`3<int32,float32,bool> Game.ComponentCetaceanBreatheBehavior/'<>c'::'<>9__15_0'
    IL_00fc:  dup
    IL_00fd:  brtrue.s   IL_0116

    IL_00ff:  pop
    IL_0100:  ldsfld     class Game.ComponentCetaceanBreatheBehavior/'<>c' Game.ComponentCetaceanBreatheBehavior/'<>c'::'<>9'
    IL_0105:  ldftn      instance bool Game.ComponentCetaceanBreatheBehavior/'<>c'::'<FindSurfaceDestination>b__15_0'(int32,
                                                                                                                      float32)
    IL_010b:  newobj     instance void class [System.Runtime]System.Func`3<int32,float32,bool>::.ctor(object,
                                                                                                      native int)
    IL_0110:  dup
    IL_0111:  stsfld     class [System.Runtime]System.Func`3<int32,float32,bool> Game.ComponentCetaceanBreatheBehavior/'<>c'::'<>9__15_0'
    IL_0116:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> Game.SubsystemTerrain::Raycast(valuetype [Engine]Engine.Vector3,
                                                                                                                                                  valuetype [Engine]Engine.Vector3,
                                                                                                                                                  bool,
                                                                                                                                                  bool,
                                                                                                                                                  class [System.Runtime]System.Func`3<int32,float32,bool>)
    IL_011b:  stloc.s    V_8
    IL_011d:  ldloca.s   V_8
    IL_011f:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_HasValue()
    IL_0124:  brfalse.s  IL_0186

    IL_0126:  ldloca.s   V_8
    IL_0128:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_012d:  ldfld      int32 Game.TerrainRaycastResult::Value
    IL_0132:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0137:  brtrue.s   IL_0186

    IL_0139:  ldloca.s   V_8
    IL_013b:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_0140:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0145:  ldfld      int32 Game.CellFace::X
    IL_014a:  conv.r4
    IL_014b:  ldc.r4     0.5
    IL_0150:  add
    IL_0151:  ldloca.s   V_8
    IL_0153:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_0158:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_015d:  ldfld      int32 Game.CellFace::Y
    IL_0162:  conv.r4
    IL_0163:  ldloca.s   V_8
    IL_0165:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_016a:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_016f:  ldfld      int32 Game.CellFace::Z
    IL_0174:  conv.r4
    IL_0175:  ldc.r4     0.5
    IL_017a:  add
    IL_017b:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0180:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_0185:  ret

    IL_0186:  ldloc.s    V_4
    IL_0188:  ldc.i4.1
    IL_0189:  add
    IL_018a:  stloc.s    V_4
    IL_018c:  ldloc.s    V_4
    IL_018e:  ldc.i4.s   16
    IL_0190:  blt        IL_0072

    IL_0195:  ldloca.s   V_9
    IL_0197:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>
    IL_019d:  ldloc.s    V_9
    IL_019f:  ret
  } // end of method ComponentCetaceanBreatheBehavior::FindSurfaceDestination

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.StateMachine::.ctor()
    IL_0006:  stfld      class Game.StateMachine Game.ComponentCetaceanBreatheBehavior::m_stateMachine
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void Game.Random::.ctor()
    IL_0011:  stfld      class Game.Random Game.ComponentCetaceanBreatheBehavior::m_random
    IL_0016:  ldarg.0
    IL_0017:  call       instance void Game.ComponentBehavior::.ctor()
    IL_001c:  ret
  } // end of method ComponentCetaceanBreatheBehavior::.ctor

  .method private hidebysig instance void 
          '<Load>b__14_0'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       79 (0x4f)
    .maxstack  5
    IL_0000:  ldarg.0
    IL_0001:  ldc.r4     0.0
    IL_0006:  ldc.r4     400.
    IL_000b:  ldc.r4     0.75
    IL_0010:  ldarg.0
    IL_0011:  ldfld      class Game.ComponentCreature Game.ComponentCetaceanBreatheBehavior::m_componentCreature
    IL_0016:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_001b:  callvirt   instance float32 Game.ComponentHealth::get_Air()
    IL_0020:  sub
    IL_0021:  ldc.r4     0.75
    IL_0026:  div
    IL_0027:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_002c:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0031:  stfld      float32 Game.ComponentCetaceanBreatheBehavior::m_importanceLevel
    IL_0036:  ldarg.0
    IL_0037:  callvirt   instance bool Game.ComponentBehavior::get_IsActive()
    IL_003c:  brfalse.s  IL_004e

    IL_003e:  ldarg.0
    IL_003f:  ldfld      class Game.StateMachine Game.ComponentCetaceanBreatheBehavior::m_stateMachine
    IL_0044:  ldstr      "Surface"
    IL_0049:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_004e:  ret
  } // end of method ComponentCetaceanBreatheBehavior::'<Load>b__14_0'

  .method private hidebysig instance void 
          '<Load>b__14_1'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentPathfinding Game.ComponentCetaceanBreatheBehavior::m_componentPathfinding
    IL_0006:  callvirt   instance void Game.ComponentPathfinding::Stop()
    IL_000b:  ret
  } // end of method ComponentCetaceanBreatheBehavior::'<Load>b__14_1'

  .method private hidebysig instance void 
          '<Load>b__14_2'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       194 (0xc2)
    .maxstack  8
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> V_0,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> V_1,
             float32 V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentCreature Game.ComponentCetaceanBreatheBehavior::m_componentCreature
    IL_0006:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_000b:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0010:  pop
    IL_0011:  ldarg.0
    IL_0012:  ldfld      class Game.ComponentPathfinding Game.ComponentCetaceanBreatheBehavior::m_componentPathfinding
    IL_0017:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPathfinding::get_Destination()
    IL_001c:  stloc.0
    IL_001d:  ldloca.s   V_0
    IL_001f:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_0024:  brtrue.s   IL_0082

    IL_0026:  ldarg.0
    IL_0027:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentCetaceanBreatheBehavior::FindSurfaceDestination()
    IL_002c:  stloc.1
    IL_002d:  ldloca.s   V_1
    IL_002f:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_0034:  brfalse.s  IL_009a

    IL_0036:  ldarg.0
    IL_0037:  ldfld      class Game.ComponentCreature Game.ComponentCetaceanBreatheBehavior::m_componentCreature
    IL_003c:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_0041:  callvirt   instance float32 Game.ComponentHealth::get_Air()
    IL_0046:  ldc.r4     0.25
    IL_004b:  blt.s      IL_0064

    IL_004d:  ldarg.0
    IL_004e:  ldfld      class Game.Random Game.ComponentCetaceanBreatheBehavior::m_random
    IL_0053:  ldc.r4     0.40000001
    IL_0058:  ldc.r4     0.60000002
    IL_005d:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0062:  br.s       IL_0069

    IL_0064:  ldc.r4     1.
    IL_0069:  stloc.2
    IL_006a:  ldarg.0
    IL_006b:  ldfld      class Game.ComponentPathfinding Game.ComponentCetaceanBreatheBehavior::m_componentPathfinding
    IL_0070:  ldloc.1
    IL_0071:  ldloc.2
    IL_0072:  ldc.r4     1.
    IL_0077:  ldc.i4.0
    IL_0078:  ldc.i4.0
    IL_0079:  ldc.i4.0
    IL_007a:  ldc.i4.0
    IL_007b:  callvirt   instance void Game.ComponentPathfinding::SetDestination(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>,
                                                                                 float32,
                                                                                 float32,
                                                                                 int32,
                                                                                 bool,
                                                                                 bool,
                                                                                 bool)
    IL_0080:  br.s       IL_009a

    IL_0082:  ldarg.0
    IL_0083:  ldfld      class Game.ComponentPathfinding Game.ComponentCetaceanBreatheBehavior::m_componentPathfinding
    IL_0088:  callvirt   instance bool Game.ComponentPathfinding::get_IsStuck()
    IL_008d:  brfalse.s  IL_009a

    IL_008f:  ldarg.0
    IL_0090:  ldc.r4     0.0
    IL_0095:  stfld      float32 Game.ComponentCetaceanBreatheBehavior::m_importanceLevel
    IL_009a:  ldarg.0
    IL_009b:  ldfld      class Game.ComponentCreature Game.ComponentCetaceanBreatheBehavior::m_componentCreature
    IL_00a0:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_00a5:  callvirt   instance float32 Game.ComponentHealth::get_Air()
    IL_00aa:  ldc.r4     0.89999998
    IL_00af:  ble.un.s   IL_00c1

    IL_00b1:  ldarg.0
    IL_00b2:  ldfld      class Game.StateMachine Game.ComponentCetaceanBreatheBehavior::m_stateMachine
    IL_00b7:  ldstr      "Breathe"
    IL_00bc:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_00c1:  ret
  } // end of method ComponentCetaceanBreatheBehavior::'<Load>b__14_2'

  .method private hidebysig instance void 
          '<Load>b__14_3'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       263 (0x107)
    .maxstack  8
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             valuetype [Engine]Engine.Vector3 V_1,
             valuetype [Engine]Engine.Matrix V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentCreature Game.ComponentCetaceanBreatheBehavior::m_componentCreature
    IL_0006:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_000b:  callvirt   instance valuetype [Engine]Engine.Matrix Game.ComponentFrame::get_Matrix()
    IL_0010:  stloc.2
    IL_0011:  ldloca.s   V_2
    IL_0013:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Forward()
    IL_0018:  stloc.0
    IL_0019:  ldarg.0
    IL_001a:  ldfld      class Game.ComponentCreature Game.ComponentCetaceanBreatheBehavior::m_componentCreature
    IL_001f:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0024:  callvirt   instance valuetype [Engine]Engine.Matrix Game.ComponentFrame::get_Matrix()
    IL_0029:  stloc.2
    IL_002a:  ldloca.s   V_2
    IL_002c:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Translation()
    IL_0031:  ldc.r4     10.
    IL_0036:  ldloc.0
    IL_0037:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_003c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0041:  ldc.r4     0.0
    IL_0046:  ldc.r4     2.
    IL_004b:  ldc.r4     0.0
    IL_0050:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0055:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_005a:  stloc.1
    IL_005b:  ldarg.0
    IL_005c:  ldfld      class Game.ComponentPathfinding Game.ComponentCetaceanBreatheBehavior::m_componentPathfinding
    IL_0061:  ldloc.1
    IL_0062:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_0067:  ldc.r4     0.60000002
    IL_006c:  ldc.r4     1.
    IL_0071:  ldc.i4.0
    IL_0072:  ldc.i4.0
    IL_0073:  ldc.i4.0
    IL_0074:  ldc.i4.0
    IL_0075:  callvirt   instance void Game.ComponentPathfinding::SetDestination(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>,
                                                                                 float32,
                                                                                 float32,
                                                                                 int32,
                                                                                 bool,
                                                                                 bool,
                                                                                 bool)
    IL_007a:  ldarg.0
    IL_007b:  ldarg.0
    IL_007c:  ldfld      class Game.SubsystemTerrain Game.ComponentCetaceanBreatheBehavior::m_subsystemTerrain
    IL_0081:  ldarg.0
    IL_0082:  ldfld      class Game.Random Game.ComponentCetaceanBreatheBehavior::m_random
    IL_0087:  ldc.r4     0.80000001
    IL_008c:  ldc.r4     1.1
    IL_0091:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0096:  ldarg.0
    IL_0097:  ldfld      class Game.Random Game.ComponentCetaceanBreatheBehavior::m_random
    IL_009c:  ldc.r4     1.
    IL_00a1:  ldc.r4     1.3
    IL_00a6:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_00ab:  newobj     instance void Game.WhalePlumeParticleSystem::.ctor(class Game.SubsystemTerrain,
                                                                            float32,
                                                                            float32)
    IL_00b0:  stfld      class Game.WhalePlumeParticleSystem Game.ComponentCetaceanBreatheBehavior::m_particleSystem
    IL_00b5:  ldarg.0
    IL_00b6:  ldfld      class Game.SubsystemParticles Game.ComponentCetaceanBreatheBehavior::m_subsystemParticles
    IL_00bb:  ldarg.0
    IL_00bc:  ldfld      class Game.WhalePlumeParticleSystem Game.ComponentCetaceanBreatheBehavior::m_particleSystem
    IL_00c1:  callvirt   instance void Game.SubsystemParticles::AddParticleSystem(class Game.ParticleSystemBase)
    IL_00c6:  ldarg.0
    IL_00c7:  ldfld      class Game.SubsystemAudio Game.ComponentCetaceanBreatheBehavior::m_subsystemAudio
    IL_00cc:  ldstr      "Audio/Creatures/WhaleBlow"
    IL_00d1:  ldc.r4     1.
    IL_00d6:  ldarg.0
    IL_00d7:  ldfld      class Game.Random Game.ComponentCetaceanBreatheBehavior::m_random
    IL_00dc:  ldc.r4     -0.2
    IL_00e1:  ldc.r4     0.2
    IL_00e6:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_00eb:  ldarg.0
    IL_00ec:  ldfld      class Game.ComponentCreature Game.ComponentCetaceanBreatheBehavior::m_componentCreature
    IL_00f1:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_00f6:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_00fb:  ldc.r4     10.
    IL_0100:  ldc.i4.1
    IL_0101:  callvirt   instance void Game.SubsystemAudio::PlayRandomSound(string,
                                                                            float32,
                                                                            float32,
                                                                            valuetype [Engine]Engine.Vector3,
                                                                            float32,
                                                                            bool)
    IL_0106:  ret
  } // end of method ComponentCetaceanBreatheBehavior::'<Load>b__14_3'

  .method private hidebysig instance void 
          '<Load>b__14_4'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       105 (0x69)
    .maxstack  5
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.WhalePlumeParticleSystem Game.ComponentCetaceanBreatheBehavior::m_particleSystem
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class Game.ComponentCreature Game.ComponentCetaceanBreatheBehavior::m_componentCreature
    IL_000c:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0011:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0016:  ldc.r4     0.0
    IL_001b:  ldc.r4     0.80000001
    IL_0020:  ldarg.0
    IL_0021:  ldfld      class Game.ComponentCreature Game.ComponentCetaceanBreatheBehavior::m_componentCreature
    IL_0026:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_002b:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_BoxSize()
    IL_0030:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0035:  mul
    IL_0036:  ldc.r4     0.0
    IL_003b:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0040:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0045:  callvirt   instance void Game.WhalePlumeParticleSystem::set_Position(valuetype [Engine]Engine.Vector3)
    IL_004a:  ldarg.0
    IL_004b:  ldfld      class Game.SubsystemParticles Game.ComponentCetaceanBreatheBehavior::m_subsystemParticles
    IL_0050:  ldarg.0
    IL_0051:  ldfld      class Game.WhalePlumeParticleSystem Game.ComponentCetaceanBreatheBehavior::m_particleSystem
    IL_0056:  callvirt   instance bool Game.SubsystemParticles::ContainsParticleSystem(class Game.ParticleSystemBase)
    IL_005b:  brtrue.s   IL_0068

    IL_005d:  ldarg.0
    IL_005e:  ldc.r4     0.0
    IL_0063:  stfld      float32 Game.ComponentCetaceanBreatheBehavior::m_importanceLevel
    IL_0068:  ret
  } // end of method ComponentCetaceanBreatheBehavior::'<Load>b__14_4'

  .method private hidebysig instance void 
          '<Load>b__14_5'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       20 (0x14)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.WhalePlumeParticleSystem Game.ComponentCetaceanBreatheBehavior::m_particleSystem
    IL_0006:  ldc.i4.1
    IL_0007:  callvirt   instance void Game.WhalePlumeParticleSystem::set_IsStopped(bool)
    IL_000c:  ldarg.0
    IL_000d:  ldnull
    IL_000e:  stfld      class Game.WhalePlumeParticleSystem Game.ComponentCetaceanBreatheBehavior::m_particleSystem
    IL_0013:  ret
  } // end of method ComponentCetaceanBreatheBehavior::'<Load>b__14_5'

  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.ComponentCetaceanBreatheBehavior::get_UpdateOrder()
  } // end of property ComponentCetaceanBreatheBehavior::UpdateOrder
  .property instance float32 ImportanceLevel()
  {
    .get instance float32 Game.ComponentCetaceanBreatheBehavior::get_ImportanceLevel()
  } // end of property ComponentCetaceanBreatheBehavior::ImportanceLevel
} // end of class Game.ComponentCetaceanBreatheBehavior