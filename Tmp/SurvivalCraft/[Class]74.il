.class public auto ansi beforefieldinit Game.ComponentRider
       extends [EntitySystem]GameEntitySystem.Component
       implements Game.IUpdateable
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.ComponentRider/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`2<class Game.ComponentBody,class Game.ComponentMount> '<>9__16_0'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.ComponentRider/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.ComponentRider/'<>c' Game.ComponentRider/'<>c'::'<>9'
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

    .method assembly hidebysig instance class Game.ComponentMount 
            '<FindNearestMount>b__16_0'(class Game.ComponentBody b) cil managed
    {
      // 代码大小       12 (0xc)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
      IL_0006:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentMount>()
      IL_000b:  ret
    } // end of method '<>c'::'<FindNearestMount>b__16_0'

  } // end of class '<>c'

  .field private class Game.SubsystemBodies m_subsystemBodies
  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> m_componentBodies
  .field private valuetype [Engine]Engine.Vector3 m_riderOffset
  .field private float32 m_animationTime
  .field private bool m_isAnimating
  .field private bool m_isDismounting
  .field private valuetype [Engine]Engine.Vector3 m_targetPositionOffset
  .field private valuetype [Engine]Engine.Quaternion m_targetRotationOffset
  .field private float32 m_outOfMountTime
  .field private class Game.ComponentCreature '<ComponentCreature>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname instance class Game.ComponentCreature 
          get_ComponentCreature() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentCreature Game.ComponentRider::'<ComponentCreature>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentRider::get_ComponentCreature

  .method private hidebysig specialname instance void 
          set_ComponentCreature(class Game.ComponentCreature 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.ComponentCreature Game.ComponentRider::'<ComponentCreature>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentRider::set_ComponentCreature

  .method public hidebysig specialname instance class Game.ComponentMount 
          get_Mount() cil managed
  {
    // 代码大小       47 (0x2f)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.ComponentCreature Game.ComponentRider::get_ComponentCreature()
    IL_0006:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_000b:  callvirt   instance class Game.ComponentBody Game.ComponentBody::get_ParentBody()
    IL_0010:  brfalse.s  IL_002d

    IL_0012:  ldarg.0
    IL_0013:  call       instance class Game.ComponentCreature Game.ComponentRider::get_ComponentCreature()
    IL_0018:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_001d:  callvirt   instance class Game.ComponentBody Game.ComponentBody::get_ParentBody()
    IL_0022:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0027:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentMount>()
    IL_002c:  ret

    IL_002d:  ldnull
    IL_002e:  ret
  } // end of method ComponentRider::get_Mount

  .method public hidebysig instance class Game.ComponentMount 
          FindNearestMount() cil managed
  {
    // 代码大小       214 (0xd6)
    .maxstack  4
    .locals init (valuetype [Engine]Engine.Vector2 V_0,
             float32 V_1,
             class Game.ComponentMount V_2,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.ComponentMount> V_3,
             class Game.ComponentMount V_4,
             float32 V_5)
    IL_0000:  ldloca.s   V_0
    IL_0002:  ldarg.0
    IL_0003:  call       instance class Game.ComponentCreature Game.ComponentRider::get_ComponentCreature()
    IL_0008:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_000d:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0012:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0017:  ldarg.0
    IL_0018:  call       instance class Game.ComponentCreature Game.ComponentRider::get_ComponentCreature()
    IL_001d:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0022:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0027:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_002c:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0031:  ldarg.0
    IL_0032:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> Game.ComponentRider::m_componentBodies
    IL_0037:  callvirt   instance void class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>::Clear()
    IL_003c:  ldarg.0
    IL_003d:  ldfld      class Game.SubsystemBodies Game.ComponentRider::m_subsystemBodies
    IL_0042:  ldloc.0
    IL_0043:  ldc.r4     2.5
    IL_0048:  ldarg.0
    IL_0049:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> Game.ComponentRider::m_componentBodies
    IL_004e:  callvirt   instance void Game.SubsystemBodies::FindBodiesAroundPoint(valuetype [Engine]Engine.Vector2,
                                                                                   float32,
                                                                                   class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>)
    IL_0053:  ldc.r4     0.0
    IL_0058:  stloc.1
    IL_0059:  ldnull
    IL_005a:  stloc.2
    IL_005b:  ldarg.0
    IL_005c:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> Game.ComponentRider::m_componentBodies
    IL_0061:  ldsfld     class [System.Runtime]System.Func`2<class Game.ComponentBody,class Game.ComponentMount> Game.ComponentRider/'<>c'::'<>9__16_0'
    IL_0066:  dup
    IL_0067:  brtrue.s   IL_0080

    IL_0069:  pop
    IL_006a:  ldsfld     class Game.ComponentRider/'<>c' Game.ComponentRider/'<>c'::'<>9'
    IL_006f:  ldftn      instance class Game.ComponentMount Game.ComponentRider/'<>c'::'<FindNearestMount>b__16_0'(class Game.ComponentBody)
    IL_0075:  newobj     instance void class [System.Runtime]System.Func`2<class Game.ComponentBody,class Game.ComponentMount>::.ctor(object,
                                                                                                                                      native int)
    IL_007a:  dup
    IL_007b:  stsfld     class [System.Runtime]System.Func`2<class Game.ComponentBody,class Game.ComponentMount> Game.ComponentRider/'<>c'::'<>9__16_0'
    IL_0080:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!1> [System.Linq]System.Linq.Enumerable::Select<class Game.ComponentBody,class Game.ComponentMount>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                             class [System.Runtime]System.Func`2<!!0,!!1>)
    IL_0085:  ldarg.0
    IL_0086:  ldftn      instance bool Game.ComponentRider::'<FindNearestMount>b__16_1'(class Game.ComponentMount)
    IL_008c:  newobj     instance void class [System.Runtime]System.Func`2<class Game.ComponentMount,bool>::.ctor(object,
                                                                                                                  native int)
    IL_0091:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<class Game.ComponentMount>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                   class [System.Runtime]System.Func`2<!!0,bool>)
    IL_0096:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.ComponentMount>::GetEnumerator()
    IL_009b:  stloc.3
    .try
    {
      IL_009c:  br.s       IL_00c0

      IL_009e:  ldloc.3
      IL_009f:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.ComponentMount>::get_Current()
      IL_00a4:  stloc.s    V_4
      IL_00a6:  ldarg.0
      IL_00a7:  ldloc.s    V_4
      IL_00a9:  ldc.r4     2.5
      IL_00ae:  call       instance float32 Game.ComponentRider::ScoreMount(class Game.ComponentMount,
                                                                            float32)
      IL_00b3:  stloc.s    V_5
      IL_00b5:  ldloc.s    V_5
      IL_00b7:  ldloc.1
      IL_00b8:  ble.un.s   IL_00c0

      IL_00ba:  ldloc.s    V_5
      IL_00bc:  stloc.1
      IL_00bd:  ldloc.s    V_4
      IL_00bf:  stloc.2
      IL_00c0:  ldloc.3
      IL_00c1:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_00c6:  brtrue.s   IL_009e

      IL_00c8:  leave.s    IL_00d4

    }  // end .try
    finally
    {
      IL_00ca:  ldloc.3
      IL_00cb:  brfalse.s  IL_00d3

      IL_00cd:  ldloc.3
      IL_00ce:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00d3:  endfinally
    }  // end handler
    IL_00d4:  ldloc.2
    IL_00d5:  ret
  } // end of method ComponentRider::FindNearestMount

  .method public hidebysig instance void 
          StartMounting(class Game.ComponentMount componentMount) cil managed
  {
    // 代码大小       243 (0xf3)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.ComponentRider::m_isAnimating
    IL_0006:  brtrue     IL_00f2

    IL_000b:  ldarg.0
    IL_000c:  call       instance class Game.ComponentMount Game.ComponentRider::get_Mount()
    IL_0011:  brtrue     IL_00f2

    IL_0016:  ldarg.0
    IL_0017:  ldc.i4.1
    IL_0018:  stfld      bool Game.ComponentRider::m_isAnimating
    IL_001d:  ldarg.0
    IL_001e:  ldc.r4     0.0
    IL_0023:  stfld      float32 Game.ComponentRider::m_animationTime
    IL_0028:  ldarg.0
    IL_0029:  ldc.i4.0
    IL_002a:  stfld      bool Game.ComponentRider::m_isDismounting
    IL_002f:  ldarg.0
    IL_0030:  call       instance class Game.ComponentCreature Game.ComponentRider::get_ComponentCreature()
    IL_0035:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_003a:  ldarg.1
    IL_003b:  callvirt   instance class Game.ComponentBody Game.ComponentMount::get_ComponentBody()
    IL_0040:  callvirt   instance void Game.ComponentBody::set_ParentBody(class Game.ComponentBody)
    IL_0045:  ldarg.0
    IL_0046:  call       instance class Game.ComponentCreature Game.ComponentRider::get_ComponentCreature()
    IL_004b:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0050:  ldarg.0
    IL_0051:  call       instance class Game.ComponentCreature Game.ComponentRider::get_ComponentCreature()
    IL_0056:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_005b:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0060:  ldarg.1
    IL_0061:  callvirt   instance class Game.ComponentBody Game.ComponentMount::get_ComponentBody()
    IL_0066:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_006b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0070:  ldarg.1
    IL_0071:  callvirt   instance class Game.ComponentBody Game.ComponentMount::get_ComponentBody()
    IL_0076:  callvirt   instance valuetype [Engine]Engine.Quaternion Game.ComponentFrame::get_Rotation()
    IL_007b:  call       valuetype [Engine]Engine.Quaternion [Engine]Engine.Quaternion::Conjugate(valuetype [Engine]Engine.Quaternion)
    IL_0080:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3,
                                                                                            valuetype [Engine]Engine.Quaternion)
    IL_0085:  callvirt   instance void Game.ComponentBody::set_ParentBodyPositionOffset(valuetype [Engine]Engine.Vector3)
    IL_008a:  ldarg.0
    IL_008b:  call       instance class Game.ComponentCreature Game.ComponentRider::get_ComponentCreature()
    IL_0090:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0095:  ldarg.1
    IL_0096:  callvirt   instance class Game.ComponentBody Game.ComponentMount::get_ComponentBody()
    IL_009b:  callvirt   instance valuetype [Engine]Engine.Quaternion Game.ComponentFrame::get_Rotation()
    IL_00a0:  call       valuetype [Engine]Engine.Quaternion [Engine]Engine.Quaternion::Conjugate(valuetype [Engine]Engine.Quaternion)
    IL_00a5:  ldarg.0
    IL_00a6:  call       instance class Game.ComponentCreature Game.ComponentRider::get_ComponentCreature()
    IL_00ab:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_00b0:  callvirt   instance valuetype [Engine]Engine.Quaternion Game.ComponentFrame::get_Rotation()
    IL_00b5:  call       valuetype [Engine]Engine.Quaternion [Engine]Engine.Quaternion::op_Multiply(valuetype [Engine]Engine.Quaternion,
                                                                                                    valuetype [Engine]Engine.Quaternion)
    IL_00ba:  callvirt   instance void Game.ComponentBody::set_ParentBodyRotationOffset(valuetype [Engine]Engine.Quaternion)
    IL_00bf:  ldarg.0
    IL_00c0:  ldarg.1
    IL_00c1:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentMount::get_MountOffset()
    IL_00c6:  ldarg.0
    IL_00c7:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentRider::m_riderOffset
    IL_00cc:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00d1:  stfld      valuetype [Engine]Engine.Vector3 Game.ComponentRider::m_targetPositionOffset
    IL_00d6:  ldarg.0
    IL_00d7:  ldsfld     valuetype [Engine]Engine.Quaternion [Engine]Engine.Quaternion::Identity
    IL_00dc:  stfld      valuetype [Engine]Engine.Quaternion Game.ComponentRider::m_targetRotationOffset
    IL_00e1:  ldarg.0
    IL_00e2:  call       instance class Game.ComponentCreature Game.ComponentRider::get_ComponentCreature()
    IL_00e7:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_00ec:  ldc.i4.0
    IL_00ed:  callvirt   instance void Game.ComponentLocomotion::set_IsCreativeFlyEnabled(bool)
    IL_00f2:  ret
  } // end of method ComponentRider::StartMounting

  .method public hidebysig instance void 
          StartDismounting() cil managed
  {
    // 代码大小       526 (0x20e)
    .maxstack  6
    .locals init (float32 V_0,
             float32 V_1,
             valuetype [Engine]Engine.Vector3 V_2,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> V_3,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> V_4,
             valuetype [Engine]Engine.Matrix V_5)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.ComponentRider::m_isAnimating
    IL_0006:  brtrue     IL_020d

    IL_000b:  ldarg.0
    IL_000c:  call       instance class Game.ComponentMount Game.ComponentRider::get_Mount()
    IL_0011:  brfalse    IL_020d

    IL_0016:  ldc.r4     0.0
    IL_001b:  stloc.0
    IL_001c:  ldarg.0
    IL_001d:  call       instance class Game.ComponentMount Game.ComponentRider::get_Mount()
    IL_0022:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentMount::get_DismountOffset()
    IL_0027:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_002c:  ldc.r4     0.0
    IL_0031:  ble.un     IL_018c

    IL_0036:  ldarg.0
    IL_0037:  call       instance class Game.ComponentMount Game.ComponentRider::get_Mount()
    IL_003c:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentMount::get_DismountOffset()
    IL_0041:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0046:  ldc.r4     0.5
    IL_004b:  add
    IL_004c:  stloc.1
    IL_004d:  ldc.r4     0.5
    IL_0052:  ldarg.0
    IL_0053:  call       instance class Game.ComponentCreature Game.ComponentRider::get_ComponentCreature()
    IL_0058:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_005d:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.ComponentBody::get_BoundingBox()
    IL_0062:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_0067:  ldarg.0
    IL_0068:  call       instance class Game.ComponentCreature Game.ComponentRider::get_ComponentCreature()
    IL_006d:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0072:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.ComponentBody::get_BoundingBox()
    IL_0077:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_007c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0081:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0086:  stloc.2
    IL_0087:  ldarg.0
    IL_0088:  ldfld      class Game.SubsystemTerrain Game.ComponentRider::m_subsystemTerrain
    IL_008d:  ldloc.2
    IL_008e:  ldloc.2
    IL_008f:  ldloc.1
    IL_0090:  ldarg.0
    IL_0091:  call       instance class Game.ComponentCreature Game.ComponentRider::get_ComponentCreature()
    IL_0096:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_009b:  callvirt   instance valuetype [Engine]Engine.Matrix Game.ComponentFrame::get_Matrix()
    IL_00a0:  stloc.s    V_5
    IL_00a2:  ldloca.s   V_5
    IL_00a4:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Right()
    IL_00a9:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00ae:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_00b3:  ldc.i4.0
    IL_00b4:  ldc.i4.1
    IL_00b5:  ldnull
    IL_00b6:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> Game.SubsystemTerrain::Raycast(valuetype [Engine]Engine.Vector3,
                                                                                                                                                  valuetype [Engine]Engine.Vector3,
                                                                                                                                                  bool,
                                                                                                                                                  bool,
                                                                                                                                                  class [System.Runtime]System.Func`3<int32,float32,bool>)
    IL_00bb:  stloc.3
    IL_00bc:  ldarg.0
    IL_00bd:  ldfld      class Game.SubsystemTerrain Game.ComponentRider::m_subsystemTerrain
    IL_00c2:  ldloc.2
    IL_00c3:  ldloc.2
    IL_00c4:  ldloc.1
    IL_00c5:  ldarg.0
    IL_00c6:  call       instance class Game.ComponentCreature Game.ComponentRider::get_ComponentCreature()
    IL_00cb:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_00d0:  callvirt   instance valuetype [Engine]Engine.Matrix Game.ComponentFrame::get_Matrix()
    IL_00d5:  stloc.s    V_5
    IL_00d7:  ldloca.s   V_5
    IL_00d9:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Right()
    IL_00de:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00e3:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00e8:  ldc.i4.0
    IL_00e9:  ldc.i4.1
    IL_00ea:  ldnull
    IL_00eb:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> Game.SubsystemTerrain::Raycast(valuetype [Engine]Engine.Vector3,
                                                                                                                                                  valuetype [Engine]Engine.Vector3,
                                                                                                                                                  bool,
                                                                                                                                                  bool,
                                                                                                                                                  class [System.Runtime]System.Func`3<int32,float32,bool>)
    IL_00f0:  stloc.s    V_4
    IL_00f2:  ldloca.s   V_3
    IL_00f4:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_HasValue()
    IL_00f9:  brtrue.s   IL_010f

    IL_00fb:  ldarg.0
    IL_00fc:  call       instance class Game.ComponentMount Game.ComponentRider::get_Mount()
    IL_0101:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentMount::get_DismountOffset()
    IL_0106:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_010b:  neg
    IL_010c:  stloc.0
    IL_010d:  br.s       IL_018c

    IL_010f:  ldloca.s   V_4
    IL_0111:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_HasValue()
    IL_0116:  brtrue.s   IL_012b

    IL_0118:  ldarg.0
    IL_0119:  call       instance class Game.ComponentMount Game.ComponentRider::get_Mount()
    IL_011e:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentMount::get_DismountOffset()
    IL_0123:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0128:  stloc.0
    IL_0129:  br.s       IL_018c

    IL_012b:  ldloca.s   V_3
    IL_012d:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_0132:  ldfld      float32 Game.TerrainRaycastResult::Distance
    IL_0137:  ldloca.s   V_4
    IL_0139:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_013e:  ldfld      float32 Game.TerrainRaycastResult::Distance
    IL_0143:  ble.un.s   IL_016a

    IL_0145:  ldloca.s   V_3
    IL_0147:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_014c:  ldfld      float32 Game.TerrainRaycastResult::Distance
    IL_0151:  ldarg.0
    IL_0152:  call       instance class Game.ComponentMount Game.ComponentRider::get_Mount()
    IL_0157:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentMount::get_DismountOffset()
    IL_015c:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0161:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_0166:  neg
    IL_0167:  stloc.0
    IL_0168:  br.s       IL_018c

    IL_016a:  ldloca.s   V_4
    IL_016c:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_0171:  ldfld      float32 Game.TerrainRaycastResult::Distance
    IL_0176:  ldarg.0
    IL_0177:  call       instance class Game.ComponentMount Game.ComponentRider::get_Mount()
    IL_017c:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentMount::get_DismountOffset()
    IL_0181:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0186:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_018b:  stloc.0
    IL_018c:  ldarg.0
    IL_018d:  ldc.i4.1
    IL_018e:  stfld      bool Game.ComponentRider::m_isAnimating
    IL_0193:  ldarg.0
    IL_0194:  ldc.r4     0.0
    IL_0199:  stfld      float32 Game.ComponentRider::m_animationTime
    IL_019e:  ldarg.0
    IL_019f:  ldc.i4.1
    IL_01a0:  stfld      bool Game.ComponentRider::m_isDismounting
    IL_01a5:  ldarg.0
    IL_01a6:  ldarg.0
    IL_01a7:  call       instance class Game.ComponentMount Game.ComponentRider::get_Mount()
    IL_01ac:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentMount::get_MountOffset()
    IL_01b1:  ldarg.0
    IL_01b2:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentRider::m_riderOffset
    IL_01b7:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01bc:  ldloc.0
    IL_01bd:  ldarg.0
    IL_01be:  call       instance class Game.ComponentMount Game.ComponentRider::get_Mount()
    IL_01c3:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentMount::get_DismountOffset()
    IL_01c8:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_01cd:  ldarg.0
    IL_01ce:  call       instance class Game.ComponentMount Game.ComponentRider::get_Mount()
    IL_01d3:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentMount::get_DismountOffset()
    IL_01d8:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_01dd:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_01e2:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01e7:  stfld      valuetype [Engine]Engine.Vector3 Game.ComponentRider::m_targetPositionOffset
    IL_01ec:  ldarg.0
    IL_01ed:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_01f2:  ldloc.0
    IL_01f3:  call       float32 [Engine]Engine.MathUtils::Sign(float32)
    IL_01f8:  ldc.r4     60.
    IL_01fd:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_0202:  mul
    IL_0203:  call       valuetype [Engine]Engine.Quaternion [Engine]Engine.Quaternion::CreateFromAxisAngle(valuetype [Engine]Engine.Vector3,
                                                                                                            float32)
    IL_0208:  stfld      valuetype [Engine]Engine.Quaternion Game.ComponentRider::m_targetRotationOffset
    IL_020d:  ret
  } // end of method ComponentRider::StartDismounting

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method ComponentRider::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       471 (0x1d7)
    .maxstack  4
    .locals init (class Game.ComponentMount V_0,
             float32 V_1,
             class Game.ComponentBody V_2,
             class Game.ComponentBody V_3,
             class Game.ComponentBody V_4,
             class Game.ComponentHealth V_5)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.ComponentRider::m_isAnimating
    IL_0006:  brfalse    IL_00d6

    IL_000b:  ldc.r4     8.
    IL_0010:  ldarg.1
    IL_0011:  mul
    IL_0012:  stloc.1
    IL_0013:  ldarg.0
    IL_0014:  call       instance class Game.ComponentCreature Game.ComponentRider::get_ComponentCreature()
    IL_0019:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_001e:  stloc.2
    IL_001f:  ldloc.2
    IL_0020:  ldloc.2
    IL_0021:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_ParentBodyPositionOffset()
    IL_0026:  ldarg.0
    IL_0027:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentRider::m_targetPositionOffset
    IL_002c:  ldloc.1
    IL_002d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Lerp(valuetype [Engine]Engine.Vector3,
                                                                                       valuetype [Engine]Engine.Vector3,
                                                                                       float32)
    IL_0032:  callvirt   instance void Game.ComponentBody::set_ParentBodyPositionOffset(valuetype [Engine]Engine.Vector3)
    IL_0037:  ldloc.2
    IL_0038:  ldloc.2
    IL_0039:  callvirt   instance valuetype [Engine]Engine.Quaternion Game.ComponentBody::get_ParentBodyRotationOffset()
    IL_003e:  ldarg.0
    IL_003f:  ldfld      valuetype [Engine]Engine.Quaternion Game.ComponentRider::m_targetRotationOffset
    IL_0044:  ldloc.1
    IL_0045:  call       valuetype [Engine]Engine.Quaternion [Engine]Engine.Quaternion::Slerp(valuetype [Engine]Engine.Quaternion,
                                                                                              valuetype [Engine]Engine.Quaternion,
                                                                                              float32)
    IL_004a:  callvirt   instance void Game.ComponentBody::set_ParentBodyRotationOffset(valuetype [Engine]Engine.Quaternion)
    IL_004f:  ldarg.0
    IL_0050:  ldarg.0
    IL_0051:  ldfld      float32 Game.ComponentRider::m_animationTime
    IL_0056:  ldarg.1
    IL_0057:  add
    IL_0058:  stfld      float32 Game.ComponentRider::m_animationTime
    IL_005d:  ldloc.2
    IL_005e:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_ParentBodyPositionOffset()
    IL_0063:  ldarg.0
    IL_0064:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentRider::m_targetPositionOffset
    IL_0069:  call       float32 [Engine]Engine.Vector3::DistanceSquared(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_006e:  ldc.r4     1.0000001e-002
    IL_0073:  blt.s      IL_0082

    IL_0075:  ldarg.0
    IL_0076:  ldfld      float32 Game.ComponentRider::m_animationTime
    IL_007b:  ldc.r4     0.75
    IL_0080:  ble.un.s   IL_00d6

    IL_0082:  ldarg.0
    IL_0083:  ldc.i4.0
    IL_0084:  stfld      bool Game.ComponentRider::m_isAnimating
    IL_0089:  ldarg.0
    IL_008a:  ldfld      bool Game.ComponentRider::m_isDismounting
    IL_008f:  brfalse.s  IL_00b3

    IL_0091:  ldloc.2
    IL_0092:  callvirt   instance class Game.ComponentBody Game.ComponentBody::get_ParentBody()
    IL_0097:  brfalse.s  IL_00d6

    IL_0099:  ldloc.2
    IL_009a:  ldloc.2
    IL_009b:  callvirt   instance class Game.ComponentBody Game.ComponentBody::get_ParentBody()
    IL_00a0:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_Velocity()
    IL_00a5:  callvirt   instance void Game.ComponentBody::set_Velocity(valuetype [Engine]Engine.Vector3)
    IL_00aa:  ldloc.2
    IL_00ab:  ldnull
    IL_00ac:  callvirt   instance void Game.ComponentBody::set_ParentBody(class Game.ComponentBody)
    IL_00b1:  br.s       IL_00d6

    IL_00b3:  ldloc.2
    IL_00b4:  ldarg.0
    IL_00b5:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentRider::m_targetPositionOffset
    IL_00ba:  callvirt   instance void Game.ComponentBody::set_ParentBodyPositionOffset(valuetype [Engine]Engine.Vector3)
    IL_00bf:  ldloc.2
    IL_00c0:  ldarg.0
    IL_00c1:  ldfld      valuetype [Engine]Engine.Quaternion Game.ComponentRider::m_targetRotationOffset
    IL_00c6:  callvirt   instance void Game.ComponentBody::set_ParentBodyRotationOffset(valuetype [Engine]Engine.Quaternion)
    IL_00cb:  ldarg.0
    IL_00cc:  ldc.r4     0.0
    IL_00d1:  stfld      float32 Game.ComponentRider::m_outOfMountTime
    IL_00d6:  ldarg.0
    IL_00d7:  call       instance class Game.ComponentMount Game.ComponentRider::get_Mount()
    IL_00dc:  stloc.0
    IL_00dd:  ldloc.0
    IL_00de:  brfalse    IL_01d6

    IL_00e3:  ldarg.0
    IL_00e4:  ldfld      bool Game.ComponentRider::m_isAnimating
    IL_00e9:  brtrue     IL_01d6

    IL_00ee:  ldarg.0
    IL_00ef:  call       instance class Game.ComponentCreature Game.ComponentRider::get_ComponentCreature()
    IL_00f4:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_00f9:  stloc.3
    IL_00fa:  ldarg.0
    IL_00fb:  call       instance class Game.ComponentCreature Game.ComponentRider::get_ComponentCreature()
    IL_0100:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0105:  callvirt   instance class Game.ComponentBody Game.ComponentBody::get_ParentBody()
    IL_010a:  stloc.s    V_4
    IL_010c:  ldloc.s    V_4
    IL_010e:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0113:  ldloc.3
    IL_0114:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_ParentBodyPositionOffset()
    IL_0119:  ldloc.s    V_4
    IL_011b:  callvirt   instance valuetype [Engine]Engine.Quaternion Game.ComponentFrame::get_Rotation()
    IL_0120:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3,
                                                                                            valuetype [Engine]Engine.Quaternion)
    IL_0125:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_012a:  ldloc.3
    IL_012b:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0130:  call       float32 [Engine]Engine.Vector3::DistanceSquared(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_0135:  ldc.r4     0.16000001
    IL_013a:  ble.un.s   IL_014c

    IL_013c:  ldarg.0
    IL_013d:  ldarg.0
    IL_013e:  ldfld      float32 Game.ComponentRider::m_outOfMountTime
    IL_0143:  ldarg.1
    IL_0144:  add
    IL_0145:  stfld      float32 Game.ComponentRider::m_outOfMountTime
    IL_014a:  br.s       IL_0157

    IL_014c:  ldarg.0
    IL_014d:  ldc.r4     0.0
    IL_0152:  stfld      float32 Game.ComponentRider::m_outOfMountTime
    IL_0157:  ldloc.0
    IL_0158:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_015d:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentHealth>()
    IL_0162:  stloc.s    V_5
    IL_0164:  ldarg.0
    IL_0165:  ldfld      float32 Game.ComponentRider::m_outOfMountTime
    IL_016a:  ldc.r4     0.1
    IL_016f:  bgt.s      IL_019a

    IL_0171:  ldloc.s    V_5
    IL_0173:  brfalse.s  IL_0183

    IL_0175:  ldloc.s    V_5
    IL_0177:  callvirt   instance float32 Game.ComponentHealth::get_Health()
    IL_017c:  ldc.r4     0.0
    IL_0181:  ble.s      IL_019a

    IL_0183:  ldarg.0
    IL_0184:  call       instance class Game.ComponentCreature Game.ComponentRider::get_ComponentCreature()
    IL_0189:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_018e:  callvirt   instance float32 Game.ComponentHealth::get_Health()
    IL_0193:  ldc.r4     0.0
    IL_0198:  bgt.un.s   IL_01a0

    IL_019a:  ldarg.0
    IL_019b:  call       instance void Game.ComponentRider::StartDismounting()
    IL_01a0:  ldarg.0
    IL_01a1:  call       instance class Game.ComponentCreature Game.ComponentRider::get_ComponentCreature()
    IL_01a6:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_01ab:  ldloc.0
    IL_01ac:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentMount::get_MountOffset()
    IL_01b1:  ldarg.0
    IL_01b2:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentRider::m_riderOffset
    IL_01b7:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01bc:  callvirt   instance void Game.ComponentBody::set_ParentBodyPositionOffset(valuetype [Engine]Engine.Vector3)
    IL_01c1:  ldarg.0
    IL_01c2:  call       instance class Game.ComponentCreature Game.ComponentRider::get_ComponentCreature()
    IL_01c7:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_01cc:  ldsfld     valuetype [Engine]Engine.Quaternion [Engine]Engine.Quaternion::Identity
    IL_01d1:  callvirt   instance void Game.ComponentBody::set_ParentBodyRotationOffset(valuetype [Engine]Engine.Quaternion)
    IL_01d6:  ret
  } // end of method ComponentRider::Update

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       72 (0x48)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemBodies>(bool)
    IL_000d:  stfld      class Game.SubsystemBodies Game.ComponentRider::m_subsystemBodies
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_001f:  stfld      class Game.SubsystemTerrain Game.ComponentRider::m_subsystemTerrain
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreature>(bool)
    IL_0031:  call       instance void Game.ComponentRider::set_ComponentCreature(class Game.ComponentCreature)
    IL_0036:  ldarg.0
    IL_0037:  ldarg.1
    IL_0038:  ldstr      "RiderOffset"
    IL_003d:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<valuetype [Engine]Engine.Vector3>(string)
    IL_0042:  stfld      valuetype [Engine]Engine.Vector3 Game.ComponentRider::m_riderOffset
    IL_0047:  ret
  } // end of method ComponentRider::Load

  .method private hidebysig instance float32 
          ScoreMount(class Game.ComponentMount componentMount,
                     float32 maxDistance) cil managed
  {
    // 代码大小       164 (0xa4)
    .maxstack  3
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             valuetype [Engine]Engine.Vector3 V_1,
             valuetype [Engine]Engine.Vector3 V_2,
             valuetype [Engine]Engine.Matrix V_3)
    IL_0000:  ldarg.1
    IL_0001:  callvirt   instance class Game.ComponentBody Game.ComponentMount::get_ComponentBody()
    IL_0006:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_Velocity()
    IL_000b:  stloc.0
    IL_000c:  ldloca.s   V_0
    IL_000e:  call       instance float32 [Engine]Engine.Vector3::LengthSquared()
    IL_0013:  ldc.r4     1.
    IL_0018:  bge.un     IL_009e

    IL_001d:  ldarg.1
    IL_001e:  callvirt   instance class Game.ComponentBody Game.ComponentMount::get_ComponentBody()
    IL_0023:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0028:  ldarg.1
    IL_0029:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentMount::get_MountOffset()
    IL_002e:  ldarg.1
    IL_002f:  callvirt   instance class Game.ComponentBody Game.ComponentMount::get_ComponentBody()
    IL_0034:  callvirt   instance valuetype [Engine]Engine.Quaternion Game.ComponentFrame::get_Rotation()
    IL_0039:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3,
                                                                                            valuetype [Engine]Engine.Quaternion)
    IL_003e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0043:  ldarg.0
    IL_0044:  call       instance class Game.ComponentCreature Game.ComponentRider::get_ComponentCreature()
    IL_0049:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_004e:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentCreatureModel::get_EyePosition()
    IL_0053:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0058:  stloc.1
    IL_0059:  ldloca.s   V_1
    IL_005b:  call       instance float32 [Engine]Engine.Vector3::Length()
    IL_0060:  ldarg.2
    IL_0061:  bge.un.s   IL_009e

    IL_0063:  ldarg.0
    IL_0064:  call       instance class Game.ComponentCreature Game.ComponentRider::get_ComponentCreature()
    IL_0069:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_006e:  callvirt   instance valuetype [Engine]Engine.Quaternion Game.ComponentCreatureModel::get_EyeRotation()
    IL_0073:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateFromQuaternion(valuetype [Engine]Engine.Quaternion)
    IL_0078:  stloc.3
    IL_0079:  ldloca.s   V_3
    IL_007b:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Forward()
    IL_0080:  stloc.2
    IL_0081:  ldloc.1
    IL_0082:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0087:  ldloc.2
    IL_0088:  call       float32 [Engine]Engine.Vector3::Dot(valuetype [Engine]Engine.Vector3,
                                                             valuetype [Engine]Engine.Vector3)
    IL_008d:  ldc.r4     0.33000001
    IL_0092:  ble.un.s   IL_009e

    IL_0094:  ldarg.2
    IL_0095:  ldloca.s   V_1
    IL_0097:  call       instance float32 [Engine]Engine.Vector3::Length()
    IL_009c:  sub
    IL_009d:  ret

    IL_009e:  ldc.r4     0.0
    IL_00a3:  ret
  } // end of method ComponentRider::ScoreMount

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>::.ctor()
    IL_0006:  stfld      class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> Game.ComponentRider::m_componentBodies
    IL_000b:  ldarg.0
    IL_000c:  call       instance void [EntitySystem]GameEntitySystem.Component::.ctor()
    IL_0011:  ret
  } // end of method ComponentRider::.ctor

  .method private hidebysig instance bool 
          '<FindNearestMount>b__16_1'(class Game.ComponentMount m) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  brfalse.s  IL_0015

    IL_0003:  ldarg.1
    IL_0004:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0009:  ldarg.0
    IL_000a:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_000f:  ceq
    IL_0011:  ldc.i4.0
    IL_0012:  ceq
    IL_0014:  ret

    IL_0015:  ldc.i4.0
    IL_0016:  ret
  } // end of method ComponentRider::'<FindNearestMount>b__16_1'

  .property instance class Game.ComponentCreature
          ComponentCreature()
  {
    .get instance class Game.ComponentCreature Game.ComponentRider::get_ComponentCreature()
    .set instance void Game.ComponentRider::set_ComponentCreature(class Game.ComponentCreature)
  } // end of property ComponentRider::ComponentCreature
  .property instance class Game.ComponentMount
          Mount()
  {
    .get instance class Game.ComponentMount Game.ComponentRider::get_Mount()
  } // end of property ComponentRider::Mount
  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.ComponentRider::get_UpdateOrder()
  } // end of property ComponentRider::UpdateOrder
} // end of class Game.ComponentRider