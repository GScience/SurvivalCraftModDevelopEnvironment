.class public auto ansi Game.ComponentBody
       extends Game.ComponentFrame
       implements Game.IUpdateable
{
  .class sequential ansi sealed nested private beforefieldinit CollisionBox
         extends [System.Runtime]System.ValueType
  {
    .field public int32 BlockValue
    .field public valuetype [Engine]Engine.Vector3 BlockVelocity
    .field public class Game.ComponentBody ComponentBody
    .field public valuetype [Engine]Engine.BoundingBox Box
  } // end of class CollisionBox

  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.ComponentBody/'<>c' '<>9'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.ComponentBody/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.ComponentBody/'<>c' Game.ComponentBody/'<>c'::'<>9'
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

    .method assembly hidebysig instance int32 
            '<.cctor>b__24_0'(valuetype [Engine]Engine.Vector3 o1,
                              valuetype [Engine]Engine.Vector3 o2) cil managed
    {
      // 代码大小       25 (0x19)
      .maxstack  8
      IL_0000:  call       class [System.Collections]System.Collections.Generic.Comparer`1<!0> class [System.Collections]System.Collections.Generic.Comparer`1<float32>::get_Default()
      IL_0005:  ldarga.s   o1
      IL_0007:  call       instance float32 [Engine]Engine.Vector3::LengthSquared()
      IL_000c:  ldarga.s   o2
      IL_000e:  call       instance float32 [Engine]Engine.Vector3::LengthSquared()
      IL_0013:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.Comparer`1<float32>::Compare(!0,
                                                                                                                            !0)
      IL_0018:  ret
    } // end of method '<>c'::'<.cctor>b__24_0'

  } // end of class '<>c'

  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.SubsystemBodies m_subsystemBodies
  .field private class Game.SubsystemMovingBlocks m_subsystemMovingBlocks
  .field private class Game.SubsystemAudio m_subsystemAudio
  .field private class Game.SubsystemParticles m_subsystemParticles
  .field private class Game.SubsystemBlockBehaviors m_subsystemBlockBehaviors
  .field private class Game.SubsystemFluidBlockBehavior m_subsystemFluidBlockBehavior
  .field private class Game.Random m_random
  .field private class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox> m_collisionBoxes
  .field private class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> m_componentBodies
  .field private class [Engine]Engine.DynamicArray`1<class Game.IMovingBlockSet> m_movingBlockSets
  .field private class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox> m_bodiesCollisionBoxes
  .field private class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox> m_movingBlocksCollisionBoxes
  .field private class Game.ComponentBody m_parentBody
  .field private class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentBody> m_childBodies
  .field private valuetype [Engine]Engine.Vector3 m_velocity
  .field private bool m_isSneaking
  .field private valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> m_totalImpulse
  .field private bool m_fluidEffectsPlayed
  .field private float32 m_stoppedTime
  .field private static valuetype [Engine]Engine.Vector3[] m_freeSpaceOffsets
  .field public static bool DrawBodiesBounds
  .field public static literal float32 SleepThresholdSpeed = float32(9.9999997e-006)
  .field private class [System.Runtime]System.Action`1<class Game.ComponentBody> CollidedWithBody
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [Engine]Engine.Vector3 '<BoxSize>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<Mass>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<Density>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [Engine]Engine.Vector2 '<AirDrag>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [Engine]Engine.Vector2 '<WaterDrag>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<WaterSwayAngle>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<WaterTurnSpeed>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<ImmersionDepth>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<ImmersionFactor>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class Game.FluidBlock '<ImmersionFluidBlock>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [System.Runtime]System.Nullable`1<int32> '<StandingOnValue>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class Game.ComponentBody '<StandingOnBody>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [Engine]Engine.Vector3 '<StandingOnVelocity>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private bool '<IsGravityEnabled>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private bool '<IsGroundDragEnabled>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private bool '<IsWaterDragEnabled>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private bool '<IsSmoothRiseEnabled>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<MaxSmoothRiseHeight>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [Engine]Engine.Vector3 '<CollisionVelocityChange>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [Engine]Engine.Vector3 '<ParentBodyPositionOffset>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [Engine]Engine.Quaternion '<ParentBodyRotationOffset>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       118 (0x76)
    .maxstack  5
    .locals init (class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector3> V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             valuetype [Engine]Engine.Vector3 V_4)
    IL_0000:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector3>::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldc.i4.s   -2
    IL_0008:  stloc.1
    IL_0009:  br.s       IL_0050

    IL_000b:  ldc.i4.s   -2
    IL_000d:  stloc.2
    IL_000e:  br.s       IL_0048

    IL_0010:  ldc.i4.s   -2
    IL_0012:  stloc.3
    IL_0013:  br.s       IL_0040

    IL_0015:  ldloca.s   V_4
    IL_0017:  ldc.r4     0.25
    IL_001c:  ldloc.1
    IL_001d:  conv.r4
    IL_001e:  mul
    IL_001f:  ldc.r4     0.25
    IL_0024:  ldloc.2
    IL_0025:  conv.r4
    IL_0026:  mul
    IL_0027:  ldc.r4     0.25
    IL_002c:  ldloc.3
    IL_002d:  conv.r4
    IL_002e:  mul
    IL_002f:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0034:  ldloc.0
    IL_0035:  ldloc.s    V_4
    IL_0037:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector3>::Add(!0)
    IL_003c:  ldloc.3
    IL_003d:  ldc.i4.1
    IL_003e:  add
    IL_003f:  stloc.3
    IL_0040:  ldloc.3
    IL_0041:  ldc.i4.2
    IL_0042:  ble.s      IL_0015

    IL_0044:  ldloc.2
    IL_0045:  ldc.i4.1
    IL_0046:  add
    IL_0047:  stloc.2
    IL_0048:  ldloc.2
    IL_0049:  ldc.i4.2
    IL_004a:  ble.s      IL_0010

    IL_004c:  ldloc.1
    IL_004d:  ldc.i4.1
    IL_004e:  add
    IL_004f:  stloc.1
    IL_0050:  ldloc.1
    IL_0051:  ldc.i4.2
    IL_0052:  ble.s      IL_000b

    IL_0054:  ldloc.0
    IL_0055:  ldsfld     class Game.ComponentBody/'<>c' Game.ComponentBody/'<>c'::'<>9'
    IL_005a:  ldftn      instance int32 Game.ComponentBody/'<>c'::'<.cctor>b__24_0'(valuetype [Engine]Engine.Vector3,
                                                                                    valuetype [Engine]Engine.Vector3)
    IL_0060:  newobj     instance void class [System.Runtime]System.Comparison`1<valuetype [Engine]Engine.Vector3>::.ctor(object,
                                                                                                                          native int)
    IL_0065:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector3>::Sort(class [System.Runtime]System.Comparison`1<!0>)
    IL_006a:  ldloc.0
    IL_006b:  callvirt   instance !0[] class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector3>::ToArray()
    IL_0070:  stsfld     valuetype [Engine]Engine.Vector3[] Game.ComponentBody::m_freeSpaceOffsets
    IL_0075:  ret
  } // end of method ComponentBody::.cctor

  .method public hidebysig specialname instance void 
          add_CollidedWithBody(class [System.Runtime]System.Action`1<class Game.ComponentBody> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       41 (0x29)
    .maxstack  3
    .locals init (class [System.Runtime]System.Action`1<class Game.ComponentBody> V_0,
             class [System.Runtime]System.Action`1<class Game.ComponentBody> V_1,
             class [System.Runtime]System.Action`1<class Game.ComponentBody> V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Runtime]System.Action`1<class Game.ComponentBody> Game.ComponentBody::CollidedWithBody
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  stloc.1
    IL_0009:  ldloc.1
    IL_000a:  ldarg.1
    IL_000b:  call       class [System.Runtime]System.Delegate [System.Runtime]System.Delegate::Combine(class [System.Runtime]System.Delegate,
                                                                                                        class [System.Runtime]System.Delegate)
    IL_0010:  castclass  class [System.Runtime]System.Action`1<class Game.ComponentBody>
    IL_0015:  stloc.2
    IL_0016:  ldarg.0
    IL_0017:  ldflda     class [System.Runtime]System.Action`1<class Game.ComponentBody> Game.ComponentBody::CollidedWithBody
    IL_001c:  ldloc.2
    IL_001d:  ldloc.1
    IL_001e:  call       !!0 [System.Threading]System.Threading.Interlocked::CompareExchange<class [System.Runtime]System.Action`1<class Game.ComponentBody>>(!!0&,
                                                                                                                                                              !!0,
                                                                                                                                                              !!0)
    IL_0023:  stloc.0
    IL_0024:  ldloc.0
    IL_0025:  ldloc.1
    IL_0026:  bne.un.s   IL_0007

    IL_0028:  ret
  } // end of method ComponentBody::add_CollidedWithBody

  .method public hidebysig specialname instance void 
          remove_CollidedWithBody(class [System.Runtime]System.Action`1<class Game.ComponentBody> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       41 (0x29)
    .maxstack  3
    .locals init (class [System.Runtime]System.Action`1<class Game.ComponentBody> V_0,
             class [System.Runtime]System.Action`1<class Game.ComponentBody> V_1,
             class [System.Runtime]System.Action`1<class Game.ComponentBody> V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Runtime]System.Action`1<class Game.ComponentBody> Game.ComponentBody::CollidedWithBody
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  stloc.1
    IL_0009:  ldloc.1
    IL_000a:  ldarg.1
    IL_000b:  call       class [System.Runtime]System.Delegate [System.Runtime]System.Delegate::Remove(class [System.Runtime]System.Delegate,
                                                                                                       class [System.Runtime]System.Delegate)
    IL_0010:  castclass  class [System.Runtime]System.Action`1<class Game.ComponentBody>
    IL_0015:  stloc.2
    IL_0016:  ldarg.0
    IL_0017:  ldflda     class [System.Runtime]System.Action`1<class Game.ComponentBody> Game.ComponentBody::CollidedWithBody
    IL_001c:  ldloc.2
    IL_001d:  ldloc.1
    IL_001e:  call       !!0 [System.Threading]System.Threading.Interlocked::CompareExchange<class [System.Runtime]System.Action`1<class Game.ComponentBody>>(!!0&,
                                                                                                                                                              !!0,
                                                                                                                                                              !!0)
    IL_0023:  stloc.0
    IL_0024:  ldloc.0
    IL_0025:  ldloc.1
    IL_0026:  bne.un.s   IL_0007

    IL_0028:  ret
  } // end of method ComponentBody::remove_CollidedWithBody

  .method public hidebysig specialname instance valuetype [Engine]Engine.Vector3 
          get_BoxSize() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentBody::'<BoxSize>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentBody::get_BoxSize

  .method private hidebysig specialname instance void 
          set_BoxSize(valuetype [Engine]Engine.Vector3 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Vector3 Game.ComponentBody::'<BoxSize>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentBody::set_BoxSize

  .method public hidebysig specialname instance float32 
          get_Mass() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentBody::'<Mass>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentBody::get_Mass

  .method private hidebysig specialname instance void 
          set_Mass(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ComponentBody::'<Mass>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentBody::set_Mass

  .method public hidebysig specialname instance float32 
          get_Density() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentBody::'<Density>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentBody::get_Density

  .method public hidebysig specialname instance void 
          set_Density(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ComponentBody::'<Density>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentBody::set_Density

  .method public hidebysig specialname instance valuetype [Engine]Engine.Vector2 
          get_AirDrag() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector2 Game.ComponentBody::'<AirDrag>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentBody::get_AirDrag

  .method private hidebysig specialname instance void 
          set_AirDrag(valuetype [Engine]Engine.Vector2 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Vector2 Game.ComponentBody::'<AirDrag>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentBody::set_AirDrag

  .method public hidebysig specialname instance valuetype [Engine]Engine.Vector2 
          get_WaterDrag() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector2 Game.ComponentBody::'<WaterDrag>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentBody::get_WaterDrag

  .method private hidebysig specialname instance void 
          set_WaterDrag(valuetype [Engine]Engine.Vector2 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Vector2 Game.ComponentBody::'<WaterDrag>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentBody::set_WaterDrag

  .method public hidebysig specialname instance float32 
          get_WaterSwayAngle() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentBody::'<WaterSwayAngle>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentBody::get_WaterSwayAngle

  .method private hidebysig specialname instance void 
          set_WaterSwayAngle(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ComponentBody::'<WaterSwayAngle>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentBody::set_WaterSwayAngle

  .method public hidebysig specialname instance float32 
          get_WaterTurnSpeed() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentBody::'<WaterTurnSpeed>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentBody::get_WaterTurnSpeed

  .method private hidebysig specialname instance void 
          set_WaterTurnSpeed(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ComponentBody::'<WaterTurnSpeed>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentBody::set_WaterTurnSpeed

  .method public hidebysig specialname instance float32 
          get_ImmersionDepth() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentBody::'<ImmersionDepth>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentBody::get_ImmersionDepth

  .method private hidebysig specialname instance void 
          set_ImmersionDepth(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ComponentBody::'<ImmersionDepth>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentBody::set_ImmersionDepth

  .method public hidebysig specialname instance float32 
          get_ImmersionFactor() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentBody::'<ImmersionFactor>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentBody::get_ImmersionFactor

  .method private hidebysig specialname instance void 
          set_ImmersionFactor(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ComponentBody::'<ImmersionFactor>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentBody::set_ImmersionFactor

  .method public hidebysig specialname instance class Game.FluidBlock 
          get_ImmersionFluidBlock() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.FluidBlock Game.ComponentBody::'<ImmersionFluidBlock>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentBody::get_ImmersionFluidBlock

  .method private hidebysig specialname instance void 
          set_ImmersionFluidBlock(class Game.FluidBlock 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.FluidBlock Game.ComponentBody::'<ImmersionFluidBlock>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentBody::set_ImmersionFluidBlock

  .method public hidebysig specialname instance valuetype [System.Runtime]System.Nullable`1<int32> 
          get_StandingOnValue() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [System.Runtime]System.Nullable`1<int32> Game.ComponentBody::'<StandingOnValue>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentBody::get_StandingOnValue

  .method private hidebysig specialname instance void 
          set_StandingOnValue(valuetype [System.Runtime]System.Nullable`1<int32> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [System.Runtime]System.Nullable`1<int32> Game.ComponentBody::'<StandingOnValue>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentBody::set_StandingOnValue

  .method public hidebysig specialname instance class Game.ComponentBody 
          get_StandingOnBody() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentBody Game.ComponentBody::'<StandingOnBody>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentBody::get_StandingOnBody

  .method private hidebysig specialname instance void 
          set_StandingOnBody(class Game.ComponentBody 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.ComponentBody Game.ComponentBody::'<StandingOnBody>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentBody::set_StandingOnBody

  .method public hidebysig specialname instance valuetype [Engine]Engine.Vector3 
          get_StandingOnVelocity() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentBody::'<StandingOnVelocity>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentBody::get_StandingOnVelocity

  .method private hidebysig specialname instance void 
          set_StandingOnVelocity(valuetype [Engine]Engine.Vector3 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Vector3 Game.ComponentBody::'<StandingOnVelocity>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentBody::set_StandingOnVelocity

  .method public hidebysig specialname instance valuetype [Engine]Engine.Vector3 
          get_Velocity() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_0006:  ret
  } // end of method ComponentBody::get_Velocity

  .method public hidebysig specialname instance void 
          set_Velocity(valuetype [Engine]Engine.Vector3 'value') cil managed
  {
    // 代码大小       45 (0x2d)
    .maxstack  8
    IL_0000:  ldarga.s   'value'
    IL_0002:  call       instance float32 [Engine]Engine.Vector3::LengthSquared()
    IL_0007:  ldc.r4     625.
    IL_000c:  ble.un.s   IL_0025

    IL_000e:  ldarg.0
    IL_000f:  ldc.r4     25.
    IL_0014:  ldarg.1
    IL_0015:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_001a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_001f:  stfld      valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_0024:  ret

    IL_0025:  ldarg.0
    IL_0026:  ldarg.1
    IL_0027:  stfld      valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_002c:  ret
  } // end of method ComponentBody::set_Velocity

  .method public hidebysig specialname instance bool 
          get_IsSneaking() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.ComponentBody::m_isSneaking
    IL_0006:  ret
  } // end of method ComponentBody::get_IsSneaking

  .method public hidebysig specialname instance void 
          set_IsSneaking(bool 'value') cil managed
  {
    // 代码大小       27 (0x1b)
    .maxstack  2
    .locals init (valuetype [System.Runtime]System.Nullable`1<int32> V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance valuetype [System.Runtime]System.Nullable`1<int32> Game.ComponentBody::get_StandingOnValue()
    IL_0006:  stloc.0
    IL_0007:  ldloca.s   V_0
    IL_0009:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_000e:  brtrue.s   IL_0013

    IL_0010:  ldc.i4.0
    IL_0011:  starg.s    'value'
    IL_0013:  ldarg.0
    IL_0014:  ldarg.1
    IL_0015:  stfld      bool Game.ComponentBody::m_isSneaking
    IL_001a:  ret
  } // end of method ComponentBody::set_IsSneaking

  .method public hidebysig specialname instance bool 
          get_IsGravityEnabled() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.ComponentBody::'<IsGravityEnabled>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentBody::get_IsGravityEnabled

  .method public hidebysig specialname instance void 
          set_IsGravityEnabled(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.ComponentBody::'<IsGravityEnabled>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentBody::set_IsGravityEnabled

  .method public hidebysig specialname instance bool 
          get_IsGroundDragEnabled() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.ComponentBody::'<IsGroundDragEnabled>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentBody::get_IsGroundDragEnabled

  .method public hidebysig specialname instance void 
          set_IsGroundDragEnabled(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.ComponentBody::'<IsGroundDragEnabled>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentBody::set_IsGroundDragEnabled

  .method public hidebysig specialname instance bool 
          get_IsWaterDragEnabled() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.ComponentBody::'<IsWaterDragEnabled>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentBody::get_IsWaterDragEnabled

  .method public hidebysig specialname instance void 
          set_IsWaterDragEnabled(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.ComponentBody::'<IsWaterDragEnabled>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentBody::set_IsWaterDragEnabled

  .method public hidebysig specialname instance bool 
          get_IsSmoothRiseEnabled() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.ComponentBody::'<IsSmoothRiseEnabled>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentBody::get_IsSmoothRiseEnabled

  .method public hidebysig specialname instance void 
          set_IsSmoothRiseEnabled(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.ComponentBody::'<IsSmoothRiseEnabled>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentBody::set_IsSmoothRiseEnabled

  .method public hidebysig specialname instance float32 
          get_MaxSmoothRiseHeight() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentBody::'<MaxSmoothRiseHeight>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentBody::get_MaxSmoothRiseHeight

  .method private hidebysig specialname instance void 
          set_MaxSmoothRiseHeight(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ComponentBody::'<MaxSmoothRiseHeight>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentBody::set_MaxSmoothRiseHeight

  .method public hidebysig specialname instance valuetype [Engine]Engine.Vector3 
          get_CollisionVelocityChange() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentBody::'<CollisionVelocityChange>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentBody::get_CollisionVelocityChange

  .method private hidebysig specialname instance void 
          set_CollisionVelocityChange(valuetype [Engine]Engine.Vector3 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Vector3 Game.ComponentBody::'<CollisionVelocityChange>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentBody::set_CollisionVelocityChange

  .method public hidebysig specialname instance valuetype [Engine]Engine.BoundingBox 
          get_BoundingBox() cil managed
  {
    // 代码大小       101 (0x65)
    .maxstack  6
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             valuetype [Engine]Engine.Vector3 V_1)
    IL_0000:  ldarg.0
    IL_0001:  call       instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_BoxSize()
    IL_0006:  stloc.0
    IL_0007:  ldarg.0
    IL_0008:  call       instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_000d:  stloc.1
    IL_000e:  ldloc.1
    IL_000f:  ldloc.0
    IL_0010:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0015:  ldc.r4     2.
    IL_001a:  div
    IL_001b:  ldc.r4     0.0
    IL_0020:  ldloc.0
    IL_0021:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0026:  ldc.r4     2.
    IL_002b:  div
    IL_002c:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0031:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0036:  ldloc.1
    IL_0037:  ldloc.0
    IL_0038:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_003d:  ldc.r4     2.
    IL_0042:  div
    IL_0043:  ldloc.0
    IL_0044:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0049:  ldloc.0
    IL_004a:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_004f:  ldc.r4     2.
    IL_0054:  div
    IL_0055:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_005a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_005f:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_0064:  ret
  } // end of method ComponentBody::get_BoundingBox

  .method public hidebysig instance void 
          ApplyImpulse(valuetype [Engine]Engine.Vector3 impulse) cil managed
  {
    // 代码大小       80 (0x50)
    .maxstack  3
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> V_0,
             valuetype [Engine]Engine.Vector3 V_1,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentBody::m_totalImpulse
    IL_0006:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_000b:  brfalse.s  IL_0043

    IL_000d:  ldarg.0
    IL_000e:  ldarg.0
    IL_000f:  ldfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentBody::m_totalImpulse
    IL_0014:  stloc.0
    IL_0015:  ldarg.1
    IL_0016:  stloc.1
    IL_0017:  ldloca.s   V_0
    IL_0019:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_001e:  brtrue.s   IL_002b

    IL_0020:  ldloca.s   V_2
    IL_0022:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>
    IL_0028:  ldloc.2
    IL_0029:  br.s       IL_003d

    IL_002b:  ldloca.s   V_0
    IL_002d:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::GetValueOrDefault()
    IL_0032:  ldloc.1
    IL_0033:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0038:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_003d:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentBody::m_totalImpulse
    IL_0042:  ret

    IL_0043:  ldarg.0
    IL_0044:  ldarg.1
    IL_0045:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_004a:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentBody::m_totalImpulse
    IL_004f:  ret
  } // end of method ComponentBody::ApplyImpulse

  .method public hidebysig specialname instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.ComponentBody> 
          get_ChildBodies() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentBody> Game.ComponentBody::m_childBodies
    IL_0006:  newobj     instance void valuetype [Engine]Engine.ReadOnlyList`1<class Game.ComponentBody>::.ctor(class [System.Collections]System.Collections.Generic.List`1<!0>)
    IL_000b:  ret
  } // end of method ComponentBody::get_ChildBodies

  .method public hidebysig specialname instance class Game.ComponentBody 
          get_ParentBody() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentBody Game.ComponentBody::m_parentBody
    IL_0006:  ret
  } // end of method ComponentBody::get_ParentBody

  .method public hidebysig specialname instance void 
          set_ParentBody(class Game.ComponentBody 'value') cil managed
  {
    // 代码大小       68 (0x44)
    .maxstack  2
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class Game.ComponentBody Game.ComponentBody::m_parentBody
    IL_0007:  beq.s      IL_0043

    IL_0009:  ldarg.0
    IL_000a:  ldfld      class Game.ComponentBody Game.ComponentBody::m_parentBody
    IL_000f:  brfalse.s  IL_0023

    IL_0011:  ldarg.0
    IL_0012:  ldfld      class Game.ComponentBody Game.ComponentBody::m_parentBody
    IL_0017:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentBody> Game.ComponentBody::m_childBodies
    IL_001c:  ldarg.0
    IL_001d:  callvirt   instance bool class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentBody>::Remove(!0)
    IL_0022:  pop
    IL_0023:  ldarg.0
    IL_0024:  ldarg.1
    IL_0025:  stfld      class Game.ComponentBody Game.ComponentBody::m_parentBody
    IL_002a:  ldarg.0
    IL_002b:  ldfld      class Game.ComponentBody Game.ComponentBody::m_parentBody
    IL_0030:  brfalse.s  IL_0043

    IL_0032:  ldarg.0
    IL_0033:  ldfld      class Game.ComponentBody Game.ComponentBody::m_parentBody
    IL_0038:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentBody> Game.ComponentBody::m_childBodies
    IL_003d:  ldarg.0
    IL_003e:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentBody>::Add(!0)
    IL_0043:  ret
  } // end of method ComponentBody::set_ParentBody

  .method public hidebysig specialname instance valuetype [Engine]Engine.Vector3 
          get_ParentBodyPositionOffset() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentBody::'<ParentBodyPositionOffset>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentBody::get_ParentBodyPositionOffset

  .method public hidebysig specialname instance void 
          set_ParentBodyPositionOffset(valuetype [Engine]Engine.Vector3 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Vector3 Game.ComponentBody::'<ParentBodyPositionOffset>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentBody::set_ParentBodyPositionOffset

  .method public hidebysig specialname instance valuetype [Engine]Engine.Quaternion 
          get_ParentBodyRotationOffset() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Quaternion Game.ComponentBody::'<ParentBodyRotationOffset>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentBody::get_ParentBodyRotationOffset

  .method public hidebysig specialname instance void 
          set_ParentBodyRotationOffset(valuetype [Engine]Engine.Quaternion 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Quaternion Game.ComponentBody::'<ParentBodyRotationOffset>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentBody::set_ParentBodyRotationOffset

  .method public hidebysig instance bool 
          IsChildOfBody(class Game.ComponentBody componentBody) cil managed
  {
    // 代码大小       34 (0x22)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.ComponentBody Game.ComponentBody::get_ParentBody()
    IL_0006:  ldarg.1
    IL_0007:  beq.s      IL_0020

    IL_0009:  ldarg.0
    IL_000a:  call       instance class Game.ComponentBody Game.ComponentBody::get_ParentBody()
    IL_000f:  brfalse.s  IL_001e

    IL_0011:  ldarg.0
    IL_0012:  call       instance class Game.ComponentBody Game.ComponentBody::get_ParentBody()
    IL_0017:  ldarg.1
    IL_0018:  callvirt   instance bool Game.ComponentBody::IsChildOfBody(class Game.ComponentBody)
    IL_001d:  ret

    IL_001e:  ldc.i4.0
    IL_001f:  ret

    IL_0020:  ldc.i4.1
    IL_0021:  ret
  } // end of method ComponentBody::IsChildOfBody

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       401 (0x191)
    .maxstack  5
    .locals init (valuetype Game.EntityReference V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  call       instance void Game.ComponentFrame::Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary,
                                                                 class [EntitySystem]GameEntitySystem.IdToEntityMap)
    IL_0008:  ldarg.0
    IL_0009:  ldarg.0
    IL_000a:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_000f:  ldc.i4.1
    IL_0010:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_0015:  stfld      class Game.SubsystemTime Game.ComponentBody::m_subsystemTime
    IL_001a:  ldarg.0
    IL_001b:  ldarg.0
    IL_001c:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0021:  ldc.i4.1
    IL_0022:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_0027:  stfld      class Game.SubsystemTerrain Game.ComponentBody::m_subsystemTerrain
    IL_002c:  ldarg.0
    IL_002d:  ldarg.0
    IL_002e:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0033:  ldc.i4.1
    IL_0034:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemBodies>(bool)
    IL_0039:  stfld      class Game.SubsystemBodies Game.ComponentBody::m_subsystemBodies
    IL_003e:  ldarg.0
    IL_003f:  ldarg.0
    IL_0040:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0045:  ldc.i4.1
    IL_0046:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemMovingBlocks>(bool)
    IL_004b:  stfld      class Game.SubsystemMovingBlocks Game.ComponentBody::m_subsystemMovingBlocks
    IL_0050:  ldarg.0
    IL_0051:  ldarg.0
    IL_0052:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0057:  ldc.i4.1
    IL_0058:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemAudio>(bool)
    IL_005d:  stfld      class Game.SubsystemAudio Game.ComponentBody::m_subsystemAudio
    IL_0062:  ldarg.0
    IL_0063:  ldarg.0
    IL_0064:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0069:  ldc.i4.1
    IL_006a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemParticles>(bool)
    IL_006f:  stfld      class Game.SubsystemParticles Game.ComponentBody::m_subsystemParticles
    IL_0074:  ldarg.0
    IL_0075:  ldarg.0
    IL_0076:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_007b:  ldc.i4.1
    IL_007c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemBlockBehaviors>(bool)
    IL_0081:  stfld      class Game.SubsystemBlockBehaviors Game.ComponentBody::m_subsystemBlockBehaviors
    IL_0086:  ldarg.0
    IL_0087:  ldarg.0
    IL_0088:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_008d:  ldc.i4.1
    IL_008e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemFluidBlockBehavior>(bool)
    IL_0093:  stfld      class Game.SubsystemFluidBlockBehavior Game.ComponentBody::m_subsystemFluidBlockBehavior
    IL_0098:  ldarg.0
    IL_0099:  ldarg.1
    IL_009a:  ldstr      "BoxSize"
    IL_009f:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<valuetype [Engine]Engine.Vector3>(string)
    IL_00a4:  call       instance void Game.ComponentBody::set_BoxSize(valuetype [Engine]Engine.Vector3)
    IL_00a9:  ldarg.0
    IL_00aa:  ldarg.1
    IL_00ab:  ldstr      "Mass"
    IL_00b0:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_00b5:  call       instance void Game.ComponentBody::set_Mass(float32)
    IL_00ba:  ldarg.0
    IL_00bb:  ldarg.1
    IL_00bc:  ldstr      "Density"
    IL_00c1:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_00c6:  call       instance void Game.ComponentBody::set_Density(float32)
    IL_00cb:  ldarg.0
    IL_00cc:  ldarg.1
    IL_00cd:  ldstr      "AirDrag"
    IL_00d2:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<valuetype [Engine]Engine.Vector2>(string)
    IL_00d7:  call       instance void Game.ComponentBody::set_AirDrag(valuetype [Engine]Engine.Vector2)
    IL_00dc:  ldarg.0
    IL_00dd:  ldarg.1
    IL_00de:  ldstr      "WaterDrag"
    IL_00e3:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<valuetype [Engine]Engine.Vector2>(string)
    IL_00e8:  call       instance void Game.ComponentBody::set_WaterDrag(valuetype [Engine]Engine.Vector2)
    IL_00ed:  ldarg.0
    IL_00ee:  ldarg.1
    IL_00ef:  ldstr      "WaterSwayAngle"
    IL_00f4:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_00f9:  call       instance void Game.ComponentBody::set_WaterSwayAngle(float32)
    IL_00fe:  ldarg.0
    IL_00ff:  ldarg.1
    IL_0100:  ldstr      "WaterTurnSpeed"
    IL_0105:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_010a:  call       instance void Game.ComponentBody::set_WaterTurnSpeed(float32)
    IL_010f:  ldarg.0
    IL_0110:  ldarg.1
    IL_0111:  ldstr      "Velocity"
    IL_0116:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<valuetype [Engine]Engine.Vector3>(string)
    IL_011b:  call       instance void Game.ComponentBody::set_Velocity(valuetype [Engine]Engine.Vector3)
    IL_0120:  ldarg.0
    IL_0121:  ldarg.1
    IL_0122:  ldstr      "MaxSmoothRiseHeight"
    IL_0127:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_012c:  call       instance void Game.ComponentBody::set_MaxSmoothRiseHeight(float32)
    IL_0131:  ldarg.0
    IL_0132:  ldarg.1
    IL_0133:  ldstr      "ParentBody"
    IL_0138:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<valuetype Game.EntityReference>(string)
    IL_013d:  stloc.0
    IL_013e:  ldloca.s   V_0
    IL_0140:  ldarg.0
    IL_0141:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0146:  ldarg.2
    IL_0147:  ldc.i4.0
    IL_0148:  call       instance !!0 Game.EntityReference::GetComponent<class Game.ComponentBody>(class [EntitySystem]GameEntitySystem.Entity,
                                                                                                   class [EntitySystem]GameEntitySystem.IdToEntityMap,
                                                                                                   bool)
    IL_014d:  call       instance void Game.ComponentBody::set_ParentBody(class Game.ComponentBody)
    IL_0152:  ldarg.0
    IL_0153:  ldarg.1
    IL_0154:  ldstr      "ParentBodyPositionOffset"
    IL_0159:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<valuetype [Engine]Engine.Vector3>(string)
    IL_015e:  call       instance void Game.ComponentBody::set_ParentBodyPositionOffset(valuetype [Engine]Engine.Vector3)
    IL_0163:  ldarg.0
    IL_0164:  ldarg.1
    IL_0165:  ldstr      "ParentBodyRotationOffset"
    IL_016a:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<valuetype [Engine]Engine.Quaternion>(string)
    IL_016f:  call       instance void Game.ComponentBody::set_ParentBodyRotationOffset(valuetype [Engine]Engine.Quaternion)
    IL_0174:  ldarg.0
    IL_0175:  ldc.i4.1
    IL_0176:  call       instance void Game.ComponentBody::set_IsSmoothRiseEnabled(bool)
    IL_017b:  ldarg.0
    IL_017c:  ldc.i4.1
    IL_017d:  call       instance void Game.ComponentBody::set_IsGravityEnabled(bool)
    IL_0182:  ldarg.0
    IL_0183:  ldc.i4.1
    IL_0184:  call       instance void Game.ComponentBody::set_IsGroundDragEnabled(bool)
    IL_0189:  ldarg.0
    IL_018a:  ldc.i4.1
    IL_018b:  call       instance void Game.ComponentBody::set_IsWaterDragEnabled(bool)
    IL_0190:  ret
  } // end of method ComponentBody::Load

  .method family hidebysig virtual instance void 
          Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.EntityToIdMap entityToIdMap) cil managed
  {
    // 代码大小       112 (0x70)
    .maxstack  3
    .locals init (valuetype Game.EntityReference V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  call       instance void Game.ComponentFrame::Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary,
                                                                 class [EntitySystem]GameEntitySystem.EntityToIdMap)
    IL_0008:  ldarg.0
    IL_0009:  call       instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_Velocity()
    IL_000e:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_0013:  call       bool [Engine]Engine.Vector3::op_Inequality(valuetype [Engine]Engine.Vector3,
                                                                    valuetype [Engine]Engine.Vector3)
    IL_0018:  brfalse.s  IL_002b

    IL_001a:  ldarg.1
    IL_001b:  ldstr      "Velocity"
    IL_0020:  ldarg.0
    IL_0021:  call       instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_Velocity()
    IL_0026:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<valuetype [Engine]Engine.Vector3>(string,
                                                                                                                                    !!0)
    IL_002b:  ldarg.0
    IL_002c:  call       instance class Game.ComponentBody Game.ComponentBody::get_ParentBody()
    IL_0031:  ldarg.2
    IL_0032:  call       valuetype Game.EntityReference Game.EntityReference::FromId(class [EntitySystem]GameEntitySystem.Component,
                                                                                     class [EntitySystem]GameEntitySystem.EntityToIdMap)
    IL_0037:  stloc.0
    IL_0038:  ldloca.s   V_0
    IL_003a:  call       instance bool Game.EntityReference::IsNullOrEmpty()
    IL_003f:  brtrue.s   IL_006f

    IL_0041:  ldarg.1
    IL_0042:  ldstr      "ParentBody"
    IL_0047:  ldloc.0
    IL_0048:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<valuetype Game.EntityReference>(string,
                                                                                                                                  !!0)
    IL_004d:  ldarg.1
    IL_004e:  ldstr      "ParentBodyPositionOffset"
    IL_0053:  ldarg.0
    IL_0054:  call       instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_ParentBodyPositionOffset()
    IL_0059:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<valuetype [Engine]Engine.Vector3>(string,
                                                                                                                                    !!0)
    IL_005e:  ldarg.1
    IL_005f:  ldstr      "ParentBodyRotationOffset"
    IL_0064:  ldarg.0
    IL_0065:  call       instance valuetype [Engine]Engine.Quaternion Game.ComponentBody::get_ParentBodyRotationOffset()
    IL_006a:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<valuetype [Engine]Engine.Quaternion>(string,
                                                                                                                                       !!0)
    IL_006f:  ret
  } // end of method ComponentBody::Save

  .method family hidebysig virtual instance void 
          OnEntityRemoved() cil managed
  {
    // 代码大小       48 (0x30)
    .maxstack  2
    .locals init (class Game.ComponentBody[] V_0,
             int32 V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldnull
    IL_0002:  call       instance void Game.ComponentBody::set_ParentBody(class Game.ComponentBody)
    IL_0007:  ldarg.0
    IL_0008:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.ComponentBody> Game.ComponentBody::get_ChildBodies()
    IL_000d:  box        valuetype [Engine]Engine.ReadOnlyList`1<class Game.ComponentBody>
    IL_0012:  call       !!0[] [System.Linq]System.Linq.Enumerable::ToArray<class Game.ComponentBody>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_0017:  stloc.0
    IL_0018:  ldc.i4.0
    IL_0019:  stloc.1
    IL_001a:  br.s       IL_0029

    IL_001c:  ldloc.0
    IL_001d:  ldloc.1
    IL_001e:  ldelem.ref
    IL_001f:  ldnull
    IL_0020:  callvirt   instance void Game.ComponentBody::set_ParentBody(class Game.ComponentBody)
    IL_0025:  ldloc.1
    IL_0026:  ldc.i4.1
    IL_0027:  add
    IL_0028:  stloc.1
    IL_0029:  ldloc.1
    IL_002a:  ldloc.0
    IL_002b:  ldlen
    IL_002c:  conv.i4
    IL_002d:  blt.s      IL_001c

    IL_002f:  ret
  } // end of method ComponentBody::OnEntityRemoved

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       24 (0x18)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentBody Game.ComponentBody::m_parentBody
    IL_0006:  brtrue.s   IL_000a

    IL_0008:  ldc.i4.1
    IL_0009:  ret

    IL_000a:  ldarg.0
    IL_000b:  ldfld      class Game.ComponentBody Game.ComponentBody::m_parentBody
    IL_0010:  callvirt   instance int32 Game.ComponentBody::get_UpdateOrder()
    IL_0015:  ldc.i4.1
    IL_0016:  add
    IL_0017:  ret
  } // end of method ComponentBody::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       1927 (0x787)
    .maxstack  7
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             class Game.TerrainChunk V_1,
             float32 V_2,
             float32 V_3,
             valuetype [Engine]Engine.Vector3 V_4,
             float32 V_5,
             class Game.ComponentHealth V_6,
             float32 V_7,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> V_8,
             valuetype [Engine]Engine.Vector3 V_9,
             float32 V_10,
             float32 V_11,
             float32 V_12,
             valuetype [System.Runtime]System.Nullable`1<int32> V_13,
             float32 V_14,
             valuetype [Engine]Engine.Vector2 V_15,
             valuetype [Engine]Engine.Vector3 V_16,
             float32 V_17,
             float32 V_18,
             float32 V_19,
             valuetype [Engine]Engine.Vector3 V_20)
    IL_0000:  ldarg.0
    IL_0001:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_0006:  call       instance void Game.ComponentBody::set_CollisionVelocityChange(valuetype [Engine]Engine.Vector3)
    IL_000b:  ldarg.0
    IL_000c:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentBody::m_totalImpulse
    IL_0011:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_0016:  brfalse.s  IL_0040

    IL_0018:  ldarg.0
    IL_0019:  ldarg.0
    IL_001a:  call       instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_Velocity()
    IL_001f:  ldarg.0
    IL_0020:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentBody::m_totalImpulse
    IL_0025:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_002a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_002f:  call       instance void Game.ComponentBody::set_Velocity(valuetype [Engine]Engine.Vector3)
    IL_0034:  ldarg.0
    IL_0035:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentBody::m_totalImpulse
    IL_003a:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>
    IL_0040:  ldarg.0
    IL_0041:  ldfld      class Game.ComponentBody Game.ComponentBody::m_parentBody
    IL_0046:  brtrue.s   IL_005a

    IL_0048:  ldarg.0
    IL_0049:  ldflda     valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_004e:  call       instance float32 [Engine]Engine.Vector3::LengthSquared()
    IL_0053:  ldc.r4     9.9999994e-011
    IL_0058:  ble.un.s   IL_0067

    IL_005a:  ldarg.0
    IL_005b:  ldc.r4     0.0
    IL_0060:  stfld      float32 Game.ComponentBody::m_stoppedTime
    IL_0065:  br.s       IL_00a2

    IL_0067:  ldarg.0
    IL_0068:  ldarg.0
    IL_0069:  ldfld      float32 Game.ComponentBody::m_stoppedTime
    IL_006e:  ldarg.1
    IL_006f:  add
    IL_0070:  stfld      float32 Game.ComponentBody::m_stoppedTime
    IL_0075:  ldarg.0
    IL_0076:  ldfld      float32 Game.ComponentBody::m_stoppedTime
    IL_007b:  ldc.r4     0.5
    IL_0080:  ble.un.s   IL_00a2

    IL_0082:  ldarg.0
    IL_0083:  ldfld      class Game.SubsystemTime Game.ComponentBody::m_subsystemTime
    IL_0088:  ldc.r8     0.25
    IL_0091:  ldc.r8     0.0
    IL_009a:  callvirt   instance bool Game.SubsystemTime::PeriodicRealTimeEvent(float64,
                                                                                 float64)
    IL_009f:  brtrue.s   IL_00a2

    IL_00a1:  ret

    IL_00a2:  ldarg.0
    IL_00a3:  call       instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_00a8:  stloc.0
    IL_00a9:  ldarg.0
    IL_00aa:  ldfld      class Game.SubsystemTerrain Game.ComponentBody::m_subsystemTerrain
    IL_00af:  ldloc.0
    IL_00b0:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_00b5:  conv.i4
    IL_00b6:  ldloc.0
    IL_00b7:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_00bc:  conv.i4
    IL_00bd:  callvirt   instance class Game.TerrainChunk Game.SubsystemTerrain::CellToChunk(int32,
                                                                                             int32)
    IL_00c2:  stloc.1
    IL_00c3:  ldloc.1
    IL_00c4:  brfalse.s  IL_00cf

    IL_00c6:  ldloc.1
    IL_00c7:  ldfld      valuetype Game.TerrainChunkState Game.TerrainChunk::State
    IL_00cc:  ldc.i4.4
    IL_00cd:  bgt.s      IL_00db

    IL_00cf:  ldarg.0
    IL_00d0:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_00d5:  call       instance void Game.ComponentBody::set_Velocity(valuetype [Engine]Engine.Vector3)
    IL_00da:  ret

    IL_00db:  ldarg.0
    IL_00dc:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox> Game.ComponentBody::m_bodiesCollisionBoxes
    IL_00e1:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>::Clear()
    IL_00e6:  ldarg.0
    IL_00e7:  ldloc.0
    IL_00e8:  ldarg.0
    IL_00e9:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox> Game.ComponentBody::m_bodiesCollisionBoxes
    IL_00ee:  call       instance void Game.ComponentBody::FindBodiesCollisionBoxes(valuetype [Engine]Engine.Vector3,
                                                                                    class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>)
    IL_00f3:  ldarg.0
    IL_00f4:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox> Game.ComponentBody::m_movingBlocksCollisionBoxes
    IL_00f9:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>::Clear()
    IL_00fe:  ldarg.0
    IL_00ff:  ldloc.0
    IL_0100:  ldarg.0
    IL_0101:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox> Game.ComponentBody::m_movingBlocksCollisionBoxes
    IL_0106:  call       instance void Game.ComponentBody::FindMovingBlocksCollisionBoxes(valuetype [Engine]Engine.Vector3,
                                                                                          class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>)
    IL_010b:  ldarg.0
    IL_010c:  call       instance bool Game.ComponentBody::MoveToFreeSpace()
    IL_0111:  brtrue.s   IL_014a

    IL_0113:  ldarg.0
    IL_0114:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0119:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentHealth>()
    IL_011e:  stloc.s    V_6
    IL_0120:  ldloc.s    V_6
    IL_0122:  brfalse.s  IL_0138

    IL_0124:  ldloc.s    V_6
    IL_0126:  ldc.r4     1.
    IL_012b:  ldnull
    IL_012c:  ldc.i4.1
    IL_012d:  ldstr      "Crushed"
    IL_0132:  callvirt   instance void Game.ComponentHealth::Injure(float32,
                                                                    class Game.ComponentCreature,
                                                                    bool,
                                                                    string)
    IL_0137:  ret

    IL_0138:  ldarg.0
    IL_0139:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_013e:  ldarg.0
    IL_013f:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0144:  callvirt   instance void [EntitySystem]GameEntitySystem.Project::RemoveEntity(class [EntitySystem]GameEntitySystem.Entity)
    IL_0149:  ret

    IL_014a:  ldarg.0
    IL_014b:  call       instance bool Game.ComponentBody::get_IsGravityEnabled()
    IL_0150:  brfalse    IL_01dc

    IL_0155:  ldarg.0
    IL_0156:  ldflda     valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_015b:  ldflda     float32 [Engine]Engine.Vector3::Y
    IL_0160:  dup
    IL_0161:  ldind.r4
    IL_0162:  ldc.r4     10.
    IL_0167:  ldarg.1
    IL_0168:  mul
    IL_0169:  sub
    IL_016a:  stind.r4
    IL_016b:  ldarg.0
    IL_016c:  call       instance float32 Game.ComponentBody::get_ImmersionFactor()
    IL_0171:  ldc.r4     0.0
    IL_0176:  ble.un.s   IL_01dc

    IL_0178:  ldarg.0
    IL_0179:  call       instance float32 Game.ComponentBody::get_ImmersionFactor()
    IL_017e:  ldc.r4     1.
    IL_0183:  ldc.r4     2.9999999e-002
    IL_0188:  ldc.r8     2.
    IL_0191:  ldarg.0
    IL_0192:  ldfld      class Game.SubsystemTime Game.ComponentBody::m_subsystemTime
    IL_0197:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_019c:  mul
    IL_019d:  ldc.r8     6.2831854820251465
    IL_01a6:  call       float64 [Engine]Engine.MathUtils::Remainder(float64,
                                                                     float64)
    IL_01ab:  conv.r4
    IL_01ac:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_01b1:  mul
    IL_01b2:  add
    IL_01b3:  mul
    IL_01b4:  stloc.s    V_7
    IL_01b6:  ldarg.0
    IL_01b7:  ldflda     valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_01bc:  ldflda     float32 [Engine]Engine.Vector3::Y
    IL_01c1:  dup
    IL_01c2:  ldind.r4
    IL_01c3:  ldc.r4     10.
    IL_01c8:  ldc.r4     1.
    IL_01cd:  ldarg.0
    IL_01ce:  call       instance float32 Game.ComponentBody::get_Density()
    IL_01d3:  div
    IL_01d4:  ldloc.s    V_7
    IL_01d6:  mul
    IL_01d7:  mul
    IL_01d8:  ldarg.1
    IL_01d9:  mul
    IL_01da:  add
    IL_01db:  stind.r4
    IL_01dc:  ldarg.0
    IL_01dd:  call       instance valuetype [Engine]Engine.Vector2 Game.ComponentBody::get_AirDrag()
    IL_01e2:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_01e7:  ldarg.1
    IL_01e8:  mul
    IL_01e9:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_01ee:  stloc.2
    IL_01ef:  ldarg.0
    IL_01f0:  call       instance valuetype [Engine]Engine.Vector2 Game.ComponentBody::get_AirDrag()
    IL_01f5:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_01fa:  ldarg.1
    IL_01fb:  mul
    IL_01fc:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0201:  stloc.3
    IL_0202:  ldarg.0
    IL_0203:  ldflda     valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_0208:  ldflda     float32 [Engine]Engine.Vector3::X
    IL_020d:  dup
    IL_020e:  ldind.r4
    IL_020f:  ldc.r4     1.
    IL_0214:  ldloc.2
    IL_0215:  sub
    IL_0216:  mul
    IL_0217:  stind.r4
    IL_0218:  ldarg.0
    IL_0219:  ldflda     valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_021e:  ldflda     float32 [Engine]Engine.Vector3::Y
    IL_0223:  dup
    IL_0224:  ldind.r4
    IL_0225:  ldc.r4     1.
    IL_022a:  ldloc.3
    IL_022b:  sub
    IL_022c:  mul
    IL_022d:  stind.r4
    IL_022e:  ldarg.0
    IL_022f:  ldflda     valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_0234:  ldflda     float32 [Engine]Engine.Vector3::Z
    IL_0239:  dup
    IL_023a:  ldind.r4
    IL_023b:  ldc.r4     1.
    IL_0240:  ldloc.2
    IL_0241:  sub
    IL_0242:  mul
    IL_0243:  stind.r4
    IL_0244:  ldarg.0
    IL_0245:  call       instance bool Game.ComponentBody::get_IsWaterDragEnabled()
    IL_024a:  brfalse    IL_04c1

    IL_024f:  ldarg.0
    IL_0250:  call       instance float32 Game.ComponentBody::get_ImmersionFactor()
    IL_0255:  ldc.r4     0.0
    IL_025a:  ble.un     IL_04c1

    IL_025f:  ldarg.0
    IL_0260:  call       instance class Game.FluidBlock Game.ComponentBody::get_ImmersionFluidBlock()
    IL_0265:  brfalse    IL_04c1

    IL_026a:  ldarg.0
    IL_026b:  ldfld      class Game.SubsystemFluidBlockBehavior Game.ComponentBody::m_subsystemFluidBlockBehavior
    IL_0270:  ldloc.0
    IL_0271:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0276:  conv.i4
    IL_0277:  ldloc.0
    IL_0278:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_027d:  conv.i4
    IL_027e:  ldloc.0
    IL_027f:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0284:  conv.i4
    IL_0285:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.SubsystemFluidBlockBehavior::CalculateFlowSpeed(int32,
                                                                                                                                                                     int32,
                                                                                                                                                                     int32)
    IL_028a:  stloc.s    V_8
    IL_028c:  ldloca.s   V_8
    IL_028e:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_0293:  brtrue.s   IL_029c

    IL_0295:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_029a:  br.s       IL_02be

    IL_029c:  ldloca.s   V_8
    IL_029e:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_02a3:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_02a8:  ldc.r4     0.0
    IL_02ad:  ldloca.s   V_8
    IL_02af:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_02b4:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_02b9:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_02be:  stloc.s    V_9
    IL_02c0:  ldc.r4     1.
    IL_02c5:  stloc.s    V_10
    IL_02c7:  ldarg.0
    IL_02c8:  call       instance class Game.FluidBlock Game.ComponentBody::get_ImmersionFluidBlock()
    IL_02cd:  ldfld      float32 Game.Block::FrictionFactor
    IL_02d2:  ldc.r4     1.
    IL_02d7:  beq.s      IL_0325

    IL_02d9:  ldc.r8     6.
    IL_02e2:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
    IL_02e7:  mul
    IL_02e8:  ldarg.0
    IL_02e9:  callvirt   instance int32 [System.Runtime]System.Object::GetHashCode()
    IL_02ee:  ldc.i4     0x3e8
    IL_02f3:  rem
    IL_02f4:  conv.r8
    IL_02f5:  add
    IL_02f6:  ldc.r8     1000.
    IL_02ff:  call       float64 [Engine]Engine.MathUtils::Remainder(float64,
                                                                     float64)
    IL_0304:  conv.r4
    IL_0305:  call       float32 Game.SimplexNoise::Noise(float32)
    IL_030a:  ldc.r4     0.5
    IL_030f:  bgt.s      IL_0318

    IL_0311:  ldc.r4     1.
    IL_0316:  br.s       IL_0323

    IL_0318:  ldarg.0
    IL_0319:  call       instance class Game.FluidBlock Game.ComponentBody::get_ImmersionFluidBlock()
    IL_031e:  ldfld      float32 Game.Block::FrictionFactor
    IL_0323:  stloc.s    V_10
    IL_0325:  ldarg.0
    IL_0326:  call       instance valuetype [Engine]Engine.Vector2 Game.ComponentBody::get_WaterDrag()
    IL_032b:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0330:  ldloc.s    V_10
    IL_0332:  mul
    IL_0333:  ldarg.0
    IL_0334:  call       instance float32 Game.ComponentBody::get_ImmersionFactor()
    IL_0339:  mul
    IL_033a:  ldarg.1
    IL_033b:  mul
    IL_033c:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0341:  stloc.s    V_11
    IL_0343:  ldarg.0
    IL_0344:  call       instance valuetype [Engine]Engine.Vector2 Game.ComponentBody::get_WaterDrag()
    IL_0349:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_034e:  ldloc.s    V_10
    IL_0350:  mul
    IL_0351:  ldarg.1
    IL_0352:  mul
    IL_0353:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0358:  stloc.s    V_12
    IL_035a:  ldarg.0
    IL_035b:  ldflda     valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_0360:  ldarg.0
    IL_0361:  ldflda     valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_0366:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_036b:  ldloc.s    V_9
    IL_036d:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0372:  ldloc.s    V_11
    IL_0374:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0379:  stfld      float32 [Engine]Engine.Vector3::X
    IL_037e:  ldarg.0
    IL_037f:  ldflda     valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_0384:  ldarg.0
    IL_0385:  ldflda     valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_038a:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_038f:  ldloc.s    V_9
    IL_0391:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0396:  ldloc.s    V_12
    IL_0398:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_039d:  stfld      float32 [Engine]Engine.Vector3::Y
    IL_03a2:  ldarg.0
    IL_03a3:  ldflda     valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_03a8:  ldarg.0
    IL_03a9:  ldflda     valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_03ae:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_03b3:  ldloc.s    V_9
    IL_03b5:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_03ba:  ldloc.s    V_11
    IL_03bc:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_03c1:  stfld      float32 [Engine]Engine.Vector3::Z
    IL_03c6:  ldarg.0
    IL_03c7:  ldfld      class Game.ComponentBody Game.ComponentBody::m_parentBody
    IL_03cc:  brtrue     IL_04c1

    IL_03d1:  ldloca.s   V_8
    IL_03d3:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_03d8:  brfalse    IL_04c1

    IL_03dd:  ldarg.0
    IL_03de:  call       instance valuetype [System.Runtime]System.Nullable`1<int32> Game.ComponentBody::get_StandingOnValue()
    IL_03e3:  stloc.s    V_13
    IL_03e5:  ldloca.s   V_13
    IL_03e7:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_03ec:  brtrue     IL_04c1

    IL_03f1:  ldarg.0
    IL_03f2:  call       instance float32 Game.ComponentBody::get_WaterTurnSpeed()
    IL_03f7:  ldc.r4     0.0
    IL_03fc:  ble.un.s   IL_0473

    IL_03fe:  ldc.r4     1.
    IL_0403:  ldc.r4     0.0
    IL_0408:  ldarg.0
    IL_0409:  ldflda     valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_040e:  call       instance float32 [Engine]Engine.Vector3::Length()
    IL_0413:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0418:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_041d:  stloc.s    V_14
    IL_041f:  ldloca.s   V_8
    IL_0421:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_0426:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Normalize(valuetype [Engine]Engine.Vector2)
    IL_042b:  ldloc.s    V_14
    IL_042d:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0432:  stloc.s    V_15
    IL_0434:  ldarg.0
    IL_0435:  ldarg.0
    IL_0436:  call       instance valuetype [Engine]Engine.Quaternion Game.ComponentFrame::get_Rotation()
    IL_043b:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_0440:  ldarg.0
    IL_0441:  call       instance float32 Game.ComponentBody::get_WaterTurnSpeed()
    IL_0446:  ldc.r4     -1.
    IL_044b:  ldloc.s    V_15
    IL_044d:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0452:  mul
    IL_0453:  ldc.r4     0.70999998
    IL_0458:  ldloc.s    V_15
    IL_045a:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_045f:  mul
    IL_0460:  add
    IL_0461:  mul
    IL_0462:  ldarg.1
    IL_0463:  mul
    IL_0464:  call       valuetype [Engine]Engine.Quaternion [Engine]Engine.Quaternion::CreateFromAxisAngle(valuetype [Engine]Engine.Vector3,
                                                                                                            float32)
    IL_0469:  call       valuetype [Engine]Engine.Quaternion [Engine]Engine.Quaternion::op_Multiply(valuetype [Engine]Engine.Quaternion,
                                                                                                    valuetype [Engine]Engine.Quaternion)
    IL_046e:  call       instance void Game.ComponentFrame::set_Rotation(valuetype [Engine]Engine.Quaternion)
    IL_0473:  ldarg.0
    IL_0474:  call       instance float32 Game.ComponentBody::get_WaterSwayAngle()
    IL_0479:  ldc.r4     0.0
    IL_047e:  ble.un.s   IL_04c1

    IL_0480:  ldarg.0
    IL_0481:  ldarg.0
    IL_0482:  call       instance valuetype [Engine]Engine.Quaternion Game.ComponentFrame::get_Rotation()
    IL_0487:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitX
    IL_048c:  ldarg.0
    IL_048d:  call       instance float32 Game.ComponentBody::get_WaterSwayAngle()
    IL_0492:  ldc.r4     200.
    IL_0497:  ldarg.0
    IL_0498:  call       instance float32 Game.ComponentBody::get_Mass()
    IL_049d:  div
    IL_049e:  conv.r8
    IL_049f:  ldarg.0
    IL_04a0:  ldfld      class Game.SubsystemTime Game.ComponentBody::m_subsystemTime
    IL_04a5:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_04aa:  mul
    IL_04ab:  call       float64 [Engine]Engine.MathUtils::Sin(float64)
    IL_04b0:  conv.r4
    IL_04b1:  mul
    IL_04b2:  call       valuetype [Engine]Engine.Quaternion [Engine]Engine.Quaternion::CreateFromAxisAngle(valuetype [Engine]Engine.Vector3,
                                                                                                            float32)
    IL_04b7:  call       valuetype [Engine]Engine.Quaternion [Engine]Engine.Quaternion::op_Multiply(valuetype [Engine]Engine.Quaternion,
                                                                                                    valuetype [Engine]Engine.Quaternion)
    IL_04bc:  call       instance void Game.ComponentFrame::set_Rotation(valuetype [Engine]Engine.Quaternion)
    IL_04c1:  ldarg.0
    IL_04c2:  ldfld      class Game.ComponentBody Game.ComponentBody::m_parentBody
    IL_04c7:  brfalse.s  IL_0530

    IL_04c9:  ldarg.0
    IL_04ca:  call       instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_ParentBodyPositionOffset()
    IL_04cf:  ldarg.0
    IL_04d0:  ldfld      class Game.ComponentBody Game.ComponentBody::m_parentBody
    IL_04d5:  callvirt   instance valuetype [Engine]Engine.Quaternion Game.ComponentFrame::get_Rotation()
    IL_04da:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3,
                                                                                            valuetype [Engine]Engine.Quaternion)
    IL_04df:  ldarg.0
    IL_04e0:  ldfld      class Game.ComponentBody Game.ComponentBody::m_parentBody
    IL_04e5:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_04ea:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_04ef:  ldloc.0
    IL_04f0:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_04f5:  stloc.s    V_16
    IL_04f7:  ldarg.0
    IL_04f8:  ldarg.1
    IL_04f9:  ldc.r4     0.0
    IL_04fe:  bgt.s      IL_0507

    IL_0500:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_0505:  br.s       IL_050f

    IL_0507:  ldloc.s    V_16
    IL_0509:  ldarg.1
    IL_050a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Division(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_050f:  stfld      valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_0514:  ldarg.0
    IL_0515:  ldarg.0
    IL_0516:  call       instance valuetype [Engine]Engine.Quaternion Game.ComponentBody::get_ParentBodyRotationOffset()
    IL_051b:  ldarg.0
    IL_051c:  ldfld      class Game.ComponentBody Game.ComponentBody::m_parentBody
    IL_0521:  callvirt   instance valuetype [Engine]Engine.Quaternion Game.ComponentFrame::get_Rotation()
    IL_0526:  call       valuetype [Engine]Engine.Quaternion [Engine]Engine.Quaternion::op_Multiply(valuetype [Engine]Engine.Quaternion,
                                                                                                    valuetype [Engine]Engine.Quaternion)
    IL_052b:  call       instance void Game.ComponentFrame::set_Rotation(valuetype [Engine]Engine.Quaternion)
    IL_0530:  ldarg.0
    IL_0531:  ldloca.s   V_13
    IL_0533:  initobj    valuetype [System.Runtime]System.Nullable`1<int32>
    IL_0539:  ldloc.s    V_13
    IL_053b:  call       instance void Game.ComponentBody::set_StandingOnValue(valuetype [System.Runtime]System.Nullable`1<int32>)
    IL_0540:  ldarg.0
    IL_0541:  ldnull
    IL_0542:  call       instance void Game.ComponentBody::set_StandingOnBody(class Game.ComponentBody)
    IL_0547:  ldarg.0
    IL_0548:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_054d:  call       instance void Game.ComponentBody::set_StandingOnVelocity(valuetype [Engine]Engine.Vector3)
    IL_0552:  ldarg.0
    IL_0553:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_0558:  stloc.s    V_4
    IL_055a:  ldarg.0
    IL_055b:  ldflda     valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_0560:  call       instance float32 [Engine]Engine.Vector3::Length()
    IL_0565:  stloc.s    V_5
    IL_0567:  ldloc.s    V_5
    IL_0569:  ldc.r4     0.0
    IL_056e:  ble.un.s   IL_05c9

    IL_0570:  ldc.r4     0.47499999
    IL_0575:  ldarg.0
    IL_0576:  call       instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_BoxSize()
    IL_057b:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0580:  ldarg.0
    IL_0581:  call       instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_BoxSize()
    IL_0586:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_058b:  ldarg.0
    IL_058c:  call       instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_BoxSize()
    IL_0591:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0596:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32,
                                                               float32)
    IL_059b:  mul
    IL_059c:  ldloc.s    V_5
    IL_059e:  div
    IL_059f:  stloc.s    V_17
    IL_05a1:  ldarg.1
    IL_05a2:  stloc.s    V_18
    IL_05a4:  br.s       IL_05c0

    IL_05a6:  ldloc.s    V_18
    IL_05a8:  ldloc.s    V_17
    IL_05aa:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_05af:  stloc.s    V_19
    IL_05b1:  ldarg.0
    IL_05b2:  ldloc.s    V_19
    IL_05b4:  call       instance void Game.ComponentBody::MoveWithCollision(float32)
    IL_05b9:  ldloc.s    V_18
    IL_05bb:  ldloc.s    V_19
    IL_05bd:  sub
    IL_05be:  stloc.s    V_18
    IL_05c0:  ldloc.s    V_18
    IL_05c2:  ldc.r4     0.0
    IL_05c7:  bgt.s      IL_05a6

    IL_05c9:  ldarg.0
    IL_05ca:  ldarg.0
    IL_05cb:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_05d0:  ldloc.s    V_4
    IL_05d2:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_05d7:  call       instance void Game.ComponentBody::set_CollisionVelocityChange(valuetype [Engine]Engine.Vector3)
    IL_05dc:  ldarg.0
    IL_05dd:  call       instance bool Game.ComponentBody::get_IsGroundDragEnabled()
    IL_05e2:  brfalse.s  IL_0613

    IL_05e4:  ldarg.0
    IL_05e5:  call       instance valuetype [System.Runtime]System.Nullable`1<int32> Game.ComponentBody::get_StandingOnValue()
    IL_05ea:  stloc.s    V_13
    IL_05ec:  ldloca.s   V_13
    IL_05ee:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_05f3:  brfalse.s  IL_0613

    IL_05f5:  ldarg.0
    IL_05f6:  ldarg.0
    IL_05f7:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_05fc:  ldarg.0
    IL_05fd:  call       instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_StandingOnVelocity()
    IL_0602:  ldc.r4     6.
    IL_0607:  ldarg.1
    IL_0608:  mul
    IL_0609:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Lerp(valuetype [Engine]Engine.Vector3,
                                                                                       valuetype [Engine]Engine.Vector3,
                                                                                       float32)
    IL_060e:  stfld      valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_0613:  ldarg.0
    IL_0614:  call       instance valuetype [System.Runtime]System.Nullable`1<int32> Game.ComponentBody::get_StandingOnValue()
    IL_0619:  stloc.s    V_13
    IL_061b:  ldloca.s   V_13
    IL_061d:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0622:  brtrue.s   IL_062b

    IL_0624:  ldarg.0
    IL_0625:  ldc.i4.0
    IL_0626:  call       instance void Game.ComponentBody::set_IsSneaking(bool)
    IL_062b:  ldarg.0
    IL_062c:  call       instance void Game.ComponentBody::UpdateImmersionData()
    IL_0631:  ldarg.0
    IL_0632:  call       instance class Game.FluidBlock Game.ComponentBody::get_ImmersionFluidBlock()
    IL_0637:  isinst     Game.WaterBlock
    IL_063c:  brfalse    IL_06e7

    IL_0641:  ldarg.0
    IL_0642:  call       instance float32 Game.ComponentBody::get_ImmersionDepth()
    IL_0647:  ldc.r4     0.30000001
    IL_064c:  ble.un     IL_06e7

    IL_0651:  ldarg.0
    IL_0652:  ldfld      bool Game.ComponentBody::m_fluidEffectsPlayed
    IL_0657:  brtrue     IL_06e7

    IL_065c:  ldarg.0
    IL_065d:  ldc.i4.1
    IL_065e:  stfld      bool Game.ComponentBody::m_fluidEffectsPlayed
    IL_0663:  ldarg.0
    IL_0664:  ldfld      class Game.SubsystemAudio Game.ComponentBody::m_subsystemAudio
    IL_0669:  ldstr      "Audio/WaterFallIn"
    IL_066e:  ldarg.0
    IL_066f:  ldfld      class Game.Random Game.ComponentBody::m_random
    IL_0674:  ldc.r4     0.75
    IL_0679:  ldc.r4     1.
    IL_067e:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0683:  ldarg.0
    IL_0684:  ldfld      class Game.Random Game.ComponentBody::m_random
    IL_0689:  ldc.r4     -0.30000001
    IL_068e:  ldc.r4     0.0
    IL_0693:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0698:  ldloc.0
    IL_0699:  ldc.r4     4.
    IL_069e:  ldc.i4.1
    IL_069f:  callvirt   instance void Game.SubsystemAudio::PlayRandomSound(string,
                                                                            float32,
                                                                            float32,
                                                                            valuetype [Engine]Engine.Vector3,
                                                                            float32,
                                                                            bool)
    IL_06a4:  ldarg.0
    IL_06a5:  ldfld      class Game.SubsystemParticles Game.ComponentBody::m_subsystemParticles
    IL_06aa:  ldarg.0
    IL_06ab:  ldfld      class Game.SubsystemTerrain Game.ComponentBody::m_subsystemTerrain
    IL_06b0:  ldloc.0
    IL_06b1:  ldarg.0
    IL_06b2:  call       instance valuetype [Engine]Engine.BoundingBox Game.ComponentBody::get_BoundingBox()
    IL_06b7:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_06bc:  ldarg.0
    IL_06bd:  call       instance valuetype [Engine]Engine.BoundingBox Game.ComponentBody::get_BoundingBox()
    IL_06c2:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_06c7:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_06cc:  stloc.s    V_20
    IL_06ce:  ldloca.s   V_20
    IL_06d0:  call       instance float32 [Engine]Engine.Vector3::Length()
    IL_06d5:  ldc.r4     0.80000001
    IL_06da:  cgt
    IL_06dc:  newobj     instance void Game.WaterSplashParticleSystem::.ctor(class Game.SubsystemTerrain,
                                                                             valuetype [Engine]Engine.Vector3,
                                                                             bool)
    IL_06e1:  callvirt   instance void Game.SubsystemParticles::AddParticleSystem(class Game.ParticleSystemBase)
    IL_06e6:  ret

    IL_06e7:  ldarg.0
    IL_06e8:  call       instance class Game.FluidBlock Game.ComponentBody::get_ImmersionFluidBlock()
    IL_06ed:  isinst     Game.MagmaBlock
    IL_06f2:  brfalse    IL_0777

    IL_06f7:  ldarg.0
    IL_06f8:  call       instance float32 Game.ComponentBody::get_ImmersionDepth()
    IL_06fd:  ldc.r4     0.0
    IL_0702:  ble.un.s   IL_0777

    IL_0704:  ldarg.0
    IL_0705:  ldfld      bool Game.ComponentBody::m_fluidEffectsPlayed
    IL_070a:  brtrue.s   IL_0777

    IL_070c:  ldarg.0
    IL_070d:  ldc.i4.1
    IL_070e:  stfld      bool Game.ComponentBody::m_fluidEffectsPlayed
    IL_0713:  ldarg.0
    IL_0714:  ldfld      class Game.SubsystemAudio Game.ComponentBody::m_subsystemAudio
    IL_0719:  ldstr      "Audio/SizzleLong"
    IL_071e:  ldc.r4     1.
    IL_0723:  ldc.r4     0.0
    IL_0728:  ldloc.0
    IL_0729:  ldc.r4     4.
    IL_072e:  ldc.i4.1
    IL_072f:  callvirt   instance void Game.SubsystemAudio::PlaySound(string,
                                                                      float32,
                                                                      float32,
                                                                      valuetype [Engine]Engine.Vector3,
                                                                      float32,
                                                                      bool)
    IL_0734:  ldarg.0
    IL_0735:  ldfld      class Game.SubsystemParticles Game.ComponentBody::m_subsystemParticles
    IL_073a:  ldarg.0
    IL_073b:  ldfld      class Game.SubsystemTerrain Game.ComponentBody::m_subsystemTerrain
    IL_0740:  ldloc.0
    IL_0741:  ldarg.0
    IL_0742:  call       instance valuetype [Engine]Engine.BoundingBox Game.ComponentBody::get_BoundingBox()
    IL_0747:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_074c:  ldarg.0
    IL_074d:  call       instance valuetype [Engine]Engine.BoundingBox Game.ComponentBody::get_BoundingBox()
    IL_0752:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_0757:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_075c:  stloc.s    V_20
    IL_075e:  ldloca.s   V_20
    IL_0760:  call       instance float32 [Engine]Engine.Vector3::Length()
    IL_0765:  ldc.r4     0.80000001
    IL_076a:  cgt
    IL_076c:  newobj     instance void Game.MagmaSplashParticleSystem::.ctor(class Game.SubsystemTerrain,
                                                                             valuetype [Engine]Engine.Vector3,
                                                                             bool)
    IL_0771:  callvirt   instance void Game.SubsystemParticles::AddParticleSystem(class Game.ParticleSystemBase)
    IL_0776:  ret

    IL_0777:  ldarg.0
    IL_0778:  call       instance class Game.FluidBlock Game.ComponentBody::get_ImmersionFluidBlock()
    IL_077d:  brtrue.s   IL_0786

    IL_077f:  ldarg.0
    IL_0780:  ldc.i4.0
    IL_0781:  stfld      bool Game.ComponentBody::m_fluidEffectsPlayed
    IL_0786:  ret
  } // end of method ComponentBody::Update

  .method private hidebysig instance void 
          UpdateImmersionData() cil managed
  {
    // 代码大小       204 (0xcc)
    .maxstack  5
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             class Game.FluidBlock V_4,
             valuetype [System.Runtime]System.Nullable`1<float32> V_5,
             int32 V_6)
    IL_0000:  ldarg.0
    IL_0001:  call       instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_000d:  conv.i4
    IL_000e:  stloc.1
    IL_000f:  ldloc.0
    IL_0010:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0015:  ldc.r4     9.9999998e-003
    IL_001a:  add
    IL_001b:  conv.i4
    IL_001c:  stloc.2
    IL_001d:  ldloc.0
    IL_001e:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0023:  conv.i4
    IL_0024:  stloc.3
    IL_0025:  ldarg.0
    IL_0026:  ldfld      class Game.SubsystemFluidBlockBehavior Game.ComponentBody::m_subsystemFluidBlockBehavior
    IL_002b:  ldloc.1
    IL_002c:  ldloc.2
    IL_002d:  ldloc.3
    IL_002e:  ldloca.s   V_4
    IL_0030:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<float32> Game.SubsystemFluidBlockBehavior::GetSurfaceHeight(int32,
                                                                                                                                          int32,
                                                                                                                                          int32,
                                                                                                                                          class Game.FluidBlock&)
    IL_0035:  stloc.s    V_5
    IL_0037:  ldloca.s   V_5
    IL_0039:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float32>::get_HasValue()
    IL_003e:  brfalse.s  IL_00ae

    IL_0040:  ldarg.0
    IL_0041:  ldfld      class Game.SubsystemTerrain Game.ComponentBody::m_subsystemTerrain
    IL_0046:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_004b:  ldloc.1
    IL_004c:  ldloc.2
    IL_004d:  ldloc.3
    IL_004e:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_0053:  stloc.s    V_6
    IL_0055:  ldarg.0
    IL_0056:  ldloca.s   V_5
    IL_0058:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_005d:  ldloc.0
    IL_005e:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0063:  sub
    IL_0064:  ldc.r4     0.0
    IL_0069:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_006e:  call       instance void Game.ComponentBody::set_ImmersionDepth(float32)
    IL_0073:  ldarg.0
    IL_0074:  ldarg.0
    IL_0075:  call       instance float32 Game.ComponentBody::get_ImmersionDepth()
    IL_007a:  ldarg.0
    IL_007b:  call       instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_BoxSize()
    IL_0080:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0085:  div
    IL_0086:  ldc.r4     0.69999999
    IL_008b:  call       float32 [Engine]Engine.MathUtils::Pow(float32,
                                                               float32)
    IL_0090:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0095:  call       instance void Game.ComponentBody::set_ImmersionFactor(float32)
    IL_009a:  ldarg.0
    IL_009b:  call       class Game.FluidBlock[] Game.BlocksManager::get_FluidBlocks()
    IL_00a0:  ldloc.s    V_6
    IL_00a2:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_00a7:  ldelem.ref
    IL_00a8:  call       instance void Game.ComponentBody::set_ImmersionFluidBlock(class Game.FluidBlock)
    IL_00ad:  ret

    IL_00ae:  ldarg.0
    IL_00af:  ldc.r4     0.0
    IL_00b4:  call       instance void Game.ComponentBody::set_ImmersionDepth(float32)
    IL_00b9:  ldarg.0
    IL_00ba:  ldc.r4     0.0
    IL_00bf:  call       instance void Game.ComponentBody::set_ImmersionFactor(float32)
    IL_00c4:  ldarg.0
    IL_00c5:  ldnull
    IL_00c6:  call       instance void Game.ComponentBody::set_ImmersionFluidBlock(class Game.FluidBlock)
    IL_00cb:  ret
  } // end of method ComponentBody::UpdateImmersionData

  .method private hidebysig instance bool 
          MoveToFreeSpace() cil managed
  {
    // 代码大小       1357 (0x54d)
    .maxstack  7
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             valuetype [Engine]Engine.Vector3 V_1,
             int32 V_2,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> V_3,
             valuetype [Engine]Engine.Vector3 V_4,
             valuetype [Engine]Engine.BoundingBox V_5,
             valuetype Game.ComponentBody/CollisionBox V_6,
             valuetype Game.ComponentBody/CollisionBox V_7,
             valuetype Game.ComponentBody/CollisionBox V_8,
             float32 V_9,
             float32 V_10,
             float32 V_11,
             float32 V_12,
             float32 V_13,
             float32 V_14,
             class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector3> V_15,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype [Engine]Engine.Vector3> V_16,
             valuetype [Engine]Engine.Vector3 V_17)
    IL_0000:  ldarg.0
    IL_0001:  call       instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_BoxSize()
    IL_0006:  stloc.0
    IL_0007:  ldarg.0
    IL_0008:  call       instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_000d:  stloc.1
    IL_000e:  ldc.i4.0
    IL_000f:  stloc.2
    IL_0010:  br         IL_053e

    IL_0015:  ldloca.s   V_3
    IL_0017:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>
    IL_001d:  ldloc.1
    IL_001e:  ldsfld     valuetype [Engine]Engine.Vector3[] Game.ComponentBody::m_freeSpaceOffsets
    IL_0023:  ldloc.2
    IL_0024:  ldelem     [Engine]Engine.Vector3
    IL_0029:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_002e:  stloc.s    V_4
    IL_0030:  ldloc.s    V_4
    IL_0032:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0037:  conv.i4
    IL_0038:  ldloc.1
    IL_0039:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_003e:  conv.i4
    IL_003f:  bne.un     IL_053a

    IL_0044:  ldloc.s    V_4
    IL_0046:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_004b:  conv.i4
    IL_004c:  ldloc.1
    IL_004d:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0052:  conv.i4
    IL_0053:  bne.un     IL_053a

    IL_0058:  ldloc.s    V_4
    IL_005a:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_005f:  conv.i4
    IL_0060:  ldloc.1
    IL_0061:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0066:  conv.i4
    IL_0067:  bne.un     IL_053a

    IL_006c:  ldloca.s   V_5
    IL_006e:  ldloc.s    V_4
    IL_0070:  ldloc.0
    IL_0071:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0076:  ldc.r4     2.
    IL_007b:  div
    IL_007c:  ldc.r4     0.0
    IL_0081:  ldloc.0
    IL_0082:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0087:  ldc.r4     2.
    IL_008c:  div
    IL_008d:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0092:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0097:  ldloc.s    V_4
    IL_0099:  ldloc.0
    IL_009a:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_009f:  ldc.r4     2.
    IL_00a4:  div
    IL_00a5:  ldloc.0
    IL_00a6:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_00ab:  ldloc.0
    IL_00ac:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_00b1:  ldc.r4     2.
    IL_00b6:  div
    IL_00b7:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00bc:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00c1:  call       instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_00c6:  ldloca.s   V_5
    IL_00c8:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_00cd:  dup
    IL_00ce:  ldobj      [Engine]Engine.Vector3
    IL_00d3:  ldc.r4     9.9999998e-003
    IL_00d8:  ldarg.0
    IL_00d9:  call       instance float32 Game.ComponentBody::get_MaxSmoothRiseHeight()
    IL_00de:  ldc.r4     9.9999998e-003
    IL_00e3:  add
    IL_00e4:  ldc.r4     9.9999998e-003
    IL_00e9:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00ee:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00f3:  stobj      [Engine]Engine.Vector3
    IL_00f8:  ldloca.s   V_5
    IL_00fa:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_00ff:  dup
    IL_0100:  ldobj      [Engine]Engine.Vector3
    IL_0105:  ldc.r4     9.9999998e-003
    IL_010a:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32)
    IL_010f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0114:  stobj      [Engine]Engine.Vector3
    IL_0119:  ldarg.0
    IL_011a:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox> Game.ComponentBody::m_collisionBoxes
    IL_011f:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>::Clear()
    IL_0124:  ldarg.0
    IL_0125:  ldloc.s    V_5
    IL_0127:  ldarg.0
    IL_0128:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox> Game.ComponentBody::m_collisionBoxes
    IL_012d:  call       instance void Game.ComponentBody::FindTerrainCollisionBoxes(valuetype [Engine]Engine.BoundingBox,
                                                                                     class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>)
    IL_0132:  ldarg.0
    IL_0133:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox> Game.ComponentBody::m_collisionBoxes
    IL_0138:  ldarg.0
    IL_0139:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox> Game.ComponentBody::m_movingBlocksCollisionBoxes
    IL_013e:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>::AddRange(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!0>)
    IL_0143:  ldarg.0
    IL_0144:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox> Game.ComponentBody::m_collisionBoxes
    IL_0149:  ldarg.0
    IL_014a:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox> Game.ComponentBody::m_bodiesCollisionBoxes
    IL_014f:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>::AddRange(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!0>)
    IL_0154:  ldarg.0
    IL_0155:  ldloc.s    V_5
    IL_0157:  ldarg.0
    IL_0158:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox> Game.ComponentBody::m_collisionBoxes
    IL_015d:  call       instance bool Game.ComponentBody::IsColliding(valuetype [Engine]Engine.BoundingBox,
                                                                       class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>)
    IL_0162:  brfalse    IL_0519

    IL_0167:  ldarg.0
    IL_0168:  ldc.r4     0.0
    IL_016d:  stfld      float32 Game.ComponentBody::m_stoppedTime
    IL_0172:  ldarg.0
    IL_0173:  ldloc.s    V_5
    IL_0175:  ldc.i4.0
    IL_0176:  ldarg.0
    IL_0177:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox> Game.ComponentBody::m_collisionBoxes
    IL_017c:  ldloca.s   V_6
    IL_017e:  call       instance float32 Game.ComponentBody::CalculatePushBack(valuetype [Engine]Engine.BoundingBox,
                                                                                int32,
                                                                                class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>,
                                                                                valuetype Game.ComponentBody/CollisionBox&)
    IL_0183:  stloc.s    V_9
    IL_0185:  ldarg.0
    IL_0186:  ldloc.s    V_5
    IL_0188:  ldc.i4.1
    IL_0189:  ldarg.0
    IL_018a:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox> Game.ComponentBody::m_collisionBoxes
    IL_018f:  ldloca.s   V_7
    IL_0191:  call       instance float32 Game.ComponentBody::CalculatePushBack(valuetype [Engine]Engine.BoundingBox,
                                                                                int32,
                                                                                class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>,
                                                                                valuetype Game.ComponentBody/CollisionBox&)
    IL_0196:  stloc.s    V_10
    IL_0198:  ldarg.0
    IL_0199:  ldloc.s    V_5
    IL_019b:  ldc.i4.2
    IL_019c:  ldarg.0
    IL_019d:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox> Game.ComponentBody::m_collisionBoxes
    IL_01a2:  ldloca.s   V_8
    IL_01a4:  call       instance float32 Game.ComponentBody::CalculatePushBack(valuetype [Engine]Engine.BoundingBox,
                                                                                int32,
                                                                                class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>,
                                                                                valuetype Game.ComponentBody/CollisionBox&)
    IL_01a9:  stloc.s    V_11
    IL_01ab:  ldloc.s    V_9
    IL_01ad:  ldloc.s    V_9
    IL_01af:  mul
    IL_01b0:  stloc.s    V_12
    IL_01b2:  ldloc.s    V_10
    IL_01b4:  ldloc.s    V_10
    IL_01b6:  mul
    IL_01b7:  stloc.s    V_13
    IL_01b9:  ldloc.s    V_11
    IL_01bb:  ldloc.s    V_11
    IL_01bd:  mul
    IL_01be:  stloc.s    V_14
    IL_01c0:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector3>::.ctor()
    IL_01c5:  stloc.s    V_15
    IL_01c7:  ldloc.s    V_12
    IL_01c9:  ldloc.s    V_13
    IL_01cb:  bgt.un     IL_0284

    IL_01d0:  ldloc.s    V_12
    IL_01d2:  ldloc.s    V_14
    IL_01d4:  bgt.un     IL_0284

    IL_01d9:  ldloc.s    V_15
    IL_01db:  ldloc.s    V_4
    IL_01dd:  ldloc.s    V_9
    IL_01df:  ldc.r4     0.0
    IL_01e4:  ldc.r4     0.0
    IL_01e9:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_01ee:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01f3:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector3>::Add(!0)
    IL_01f8:  ldloc.s    V_13
    IL_01fa:  ldloc.s    V_14
    IL_01fc:  bgt.un.s   IL_0241

    IL_01fe:  ldloc.s    V_15
    IL_0200:  ldloc.s    V_4
    IL_0202:  ldc.r4     0.0
    IL_0207:  ldloc.s    V_10
    IL_0209:  ldc.r4     0.0
    IL_020e:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0213:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0218:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector3>::Add(!0)
    IL_021d:  ldloc.s    V_15
    IL_021f:  ldloc.s    V_4
    IL_0221:  ldc.r4     0.0
    IL_0226:  ldc.r4     0.0
    IL_022b:  ldloc.s    V_11
    IL_022d:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0232:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0237:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector3>::Add(!0)
    IL_023c:  br         IL_03e4

    IL_0241:  ldloc.s    V_15
    IL_0243:  ldloc.s    V_4
    IL_0245:  ldc.r4     0.0
    IL_024a:  ldc.r4     0.0
    IL_024f:  ldloc.s    V_11
    IL_0251:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0256:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_025b:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector3>::Add(!0)
    IL_0260:  ldloc.s    V_15
    IL_0262:  ldloc.s    V_4
    IL_0264:  ldc.r4     0.0
    IL_0269:  ldloc.s    V_10
    IL_026b:  ldc.r4     0.0
    IL_0270:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0275:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_027a:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector3>::Add(!0)
    IL_027f:  br         IL_03e4

    IL_0284:  ldloc.s    V_13
    IL_0286:  ldloc.s    V_12
    IL_0288:  bgt.un     IL_0341

    IL_028d:  ldloc.s    V_13
    IL_028f:  ldloc.s    V_14
    IL_0291:  bgt.un     IL_0341

    IL_0296:  ldloc.s    V_15
    IL_0298:  ldloc.s    V_4
    IL_029a:  ldc.r4     0.0
    IL_029f:  ldloc.s    V_10
    IL_02a1:  ldc.r4     0.0
    IL_02a6:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_02ab:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_02b0:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector3>::Add(!0)
    IL_02b5:  ldloc.s    V_12
    IL_02b7:  ldloc.s    V_14
    IL_02b9:  bgt.un.s   IL_02fe

    IL_02bb:  ldloc.s    V_15
    IL_02bd:  ldloc.s    V_4
    IL_02bf:  ldloc.s    V_9
    IL_02c1:  ldc.r4     0.0
    IL_02c6:  ldc.r4     0.0
    IL_02cb:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_02d0:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_02d5:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector3>::Add(!0)
    IL_02da:  ldloc.s    V_15
    IL_02dc:  ldloc.s    V_4
    IL_02de:  ldc.r4     0.0
    IL_02e3:  ldc.r4     0.0
    IL_02e8:  ldloc.s    V_11
    IL_02ea:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_02ef:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_02f4:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector3>::Add(!0)
    IL_02f9:  br         IL_03e4

    IL_02fe:  ldloc.s    V_15
    IL_0300:  ldloc.s    V_4
    IL_0302:  ldc.r4     0.0
    IL_0307:  ldc.r4     0.0
    IL_030c:  ldloc.s    V_11
    IL_030e:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0313:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0318:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector3>::Add(!0)
    IL_031d:  ldloc.s    V_15
    IL_031f:  ldloc.s    V_4
    IL_0321:  ldloc.s    V_9
    IL_0323:  ldc.r4     0.0
    IL_0328:  ldc.r4     0.0
    IL_032d:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0332:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0337:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector3>::Add(!0)
    IL_033c:  br         IL_03e4

    IL_0341:  ldloc.s    V_15
    IL_0343:  ldloc.s    V_4
    IL_0345:  ldc.r4     0.0
    IL_034a:  ldc.r4     0.0
    IL_034f:  ldloc.s    V_11
    IL_0351:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0356:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_035b:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector3>::Add(!0)
    IL_0360:  ldloc.s    V_12
    IL_0362:  ldloc.s    V_13
    IL_0364:  bgt.un.s   IL_03a6

    IL_0366:  ldloc.s    V_15
    IL_0368:  ldloc.s    V_4
    IL_036a:  ldloc.s    V_9
    IL_036c:  ldc.r4     0.0
    IL_0371:  ldc.r4     0.0
    IL_0376:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_037b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0380:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector3>::Add(!0)
    IL_0385:  ldloc.s    V_15
    IL_0387:  ldloc.s    V_4
    IL_0389:  ldc.r4     0.0
    IL_038e:  ldloc.s    V_10
    IL_0390:  ldc.r4     0.0
    IL_0395:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_039a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_039f:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector3>::Add(!0)
    IL_03a4:  br.s       IL_03e4

    IL_03a6:  ldloc.s    V_15
    IL_03a8:  ldloc.s    V_4
    IL_03aa:  ldc.r4     0.0
    IL_03af:  ldloc.s    V_10
    IL_03b1:  ldc.r4     0.0
    IL_03b6:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_03bb:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_03c0:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector3>::Add(!0)
    IL_03c5:  ldloc.s    V_15
    IL_03c7:  ldloc.s    V_4
    IL_03c9:  ldloc.s    V_9
    IL_03cb:  ldc.r4     0.0
    IL_03d0:  ldc.r4     0.0
    IL_03d5:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_03da:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_03df:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector3>::Add(!0)
    IL_03e4:  ldloc.s    V_15
    IL_03e6:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector3>::GetEnumerator()
    IL_03eb:  stloc.s    V_16
    .try
    {
      IL_03ed:  br         IL_04fd

      IL_03f2:  ldloca.s   V_16
      IL_03f4:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype [Engine]Engine.Vector3>::get_Current()
      IL_03f9:  stloc.s    V_17
      IL_03fb:  ldloc.s    V_17
      IL_03fd:  ldloc.0
      IL_03fe:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_0403:  ldc.r4     2.
      IL_0408:  div
      IL_0409:  ldc.r4     0.0
      IL_040e:  ldloc.0
      IL_040f:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_0414:  ldc.r4     2.
      IL_0419:  div
      IL_041a:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                       float32,
                                                                       float32)
      IL_041f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                   valuetype [Engine]Engine.Vector3)
      IL_0424:  ldloc.s    V_17
      IL_0426:  ldloc.0
      IL_0427:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_042c:  ldc.r4     2.
      IL_0431:  div
      IL_0432:  ldloc.0
      IL_0433:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_0438:  ldloc.0
      IL_0439:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_043e:  ldc.r4     2.
      IL_0443:  div
      IL_0444:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                       float32,
                                                                       float32)
      IL_0449:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_044e:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                           valuetype [Engine]Engine.Vector3)
      IL_0453:  stloc.s    V_5
      IL_0455:  ldloca.s   V_5
      IL_0457:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
      IL_045c:  dup
      IL_045d:  ldobj      [Engine]Engine.Vector3
      IL_0462:  ldc.r4     2.e-002
      IL_0467:  ldarg.0
      IL_0468:  call       instance float32 Game.ComponentBody::get_MaxSmoothRiseHeight()
      IL_046d:  ldc.r4     2.e-002
      IL_0472:  add
      IL_0473:  ldc.r4     2.e-002
      IL_0478:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                       float32,
                                                                       float32)
      IL_047d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0482:  stobj      [Engine]Engine.Vector3
      IL_0487:  ldloca.s   V_5
      IL_0489:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
      IL_048e:  dup
      IL_048f:  ldobj      [Engine]Engine.Vector3
      IL_0494:  ldc.r4     2.e-002
      IL_0499:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32)
      IL_049e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                   valuetype [Engine]Engine.Vector3)
      IL_04a3:  stobj      [Engine]Engine.Vector3
      IL_04a8:  ldarg.0
      IL_04a9:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox> Game.ComponentBody::m_collisionBoxes
      IL_04ae:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>::Clear()
      IL_04b3:  ldarg.0
      IL_04b4:  ldloc.s    V_5
      IL_04b6:  ldarg.0
      IL_04b7:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox> Game.ComponentBody::m_collisionBoxes
      IL_04bc:  call       instance void Game.ComponentBody::FindTerrainCollisionBoxes(valuetype [Engine]Engine.BoundingBox,
                                                                                       class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>)
      IL_04c1:  ldarg.0
      IL_04c2:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox> Game.ComponentBody::m_collisionBoxes
      IL_04c7:  ldarg.0
      IL_04c8:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox> Game.ComponentBody::m_movingBlocksCollisionBoxes
      IL_04cd:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>::AddRange(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!0>)
      IL_04d2:  ldarg.0
      IL_04d3:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox> Game.ComponentBody::m_collisionBoxes
      IL_04d8:  ldarg.0
      IL_04d9:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox> Game.ComponentBody::m_bodiesCollisionBoxes
      IL_04de:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>::AddRange(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!0>)
      IL_04e3:  ldarg.0
      IL_04e4:  ldloc.s    V_5
      IL_04e6:  ldarg.0
      IL_04e7:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox> Game.ComponentBody::m_collisionBoxes
      IL_04ec:  call       instance bool Game.ComponentBody::IsColliding(valuetype [Engine]Engine.BoundingBox,
                                                                         class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>)
      IL_04f1:  brtrue.s   IL_04fd

      IL_04f3:  ldloc.s    V_17
      IL_04f5:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
      IL_04fa:  stloc.3
      IL_04fb:  leave.s    IL_0522

      IL_04fd:  ldloca.s   V_16
      IL_04ff:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype [Engine]Engine.Vector3>::MoveNext()
      IL_0504:  brtrue     IL_03f2

      IL_0509:  leave.s    IL_0522

    }  // end .try
    finally
    {
      IL_050b:  ldloca.s   V_16
      IL_050d:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype [Engine]Engine.Vector3>
      IL_0513:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0518:  endfinally
    }  // end handler
    IL_0519:  ldloca.s   V_3
    IL_051b:  ldloc.s    V_4
    IL_051d:  call       instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_0522:  ldloca.s   V_3
    IL_0524:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_0529:  brfalse.s  IL_053a

    IL_052b:  ldarg.0
    IL_052c:  ldloca.s   V_3
    IL_052e:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_0533:  call       instance void Game.ComponentFrame::set_Position(valuetype [Engine]Engine.Vector3)
    IL_0538:  ldc.i4.1
    IL_0539:  ret

    IL_053a:  ldloc.2
    IL_053b:  ldc.i4.1
    IL_053c:  add
    IL_053d:  stloc.2
    IL_053e:  ldloc.2
    IL_053f:  ldsfld     valuetype [Engine]Engine.Vector3[] Game.ComponentBody::m_freeSpaceOffsets
    IL_0544:  ldlen
    IL_0545:  conv.i4
    IL_0546:  blt        IL_0015

    IL_054b:  ldc.i4.0
    IL_054c:  ret
  } // end of method ComponentBody::MoveToFreeSpace

  .method private hidebysig instance void 
          MoveWithCollision(float32 dt) cil managed
  {
    // 代码大小       114 (0x72)
    .maxstack  6
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             valuetype [Engine]Engine.Vector3 V_1,
             bool V_2)
    IL_0000:  ldarg.0
    IL_0001:  call       instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0006:  stloc.0
    IL_0007:  ldarg.0
    IL_0008:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_000d:  ldarg.1
    IL_000e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0013:  stloc.1
    IL_0014:  ldarg.0
    IL_0015:  call       instance bool Game.ComponentBody::get_IsSmoothRiseEnabled()
    IL_001a:  brfalse.s  IL_0029

    IL_001c:  ldarg.0
    IL_001d:  call       instance float32 Game.ComponentBody::get_MaxSmoothRiseHeight()
    IL_0022:  ldc.r4     0.0
    IL_0027:  bgt.s      IL_002c

    IL_0029:  ldc.i4.0
    IL_002a:  br.s       IL_0036

    IL_002c:  ldarg.0
    IL_002d:  ldloca.s   V_1
    IL_002f:  ldloc.0
    IL_0030:  ldarg.1
    IL_0031:  call       instance bool Game.ComponentBody::HandleSmoothRise(valuetype [Engine]Engine.Vector3&,
                                                                            valuetype [Engine]Engine.Vector3,
                                                                            float32)
    IL_0036:  stloc.2
    IL_0037:  ldarg.0
    IL_0038:  ldc.i4.1
    IL_0039:  ldloc.1
    IL_003a:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_003f:  ldloca.s   V_0
    IL_0041:  ldloc.2
    IL_0042:  ldarg.1
    IL_0043:  call       instance void Game.ComponentBody::HandleAxisCollision(int32,
                                                                               float32,
                                                                               valuetype [Engine]Engine.Vector3&,
                                                                               bool,
                                                                               float32)
    IL_0048:  ldarg.0
    IL_0049:  ldc.i4.0
    IL_004a:  ldloc.1
    IL_004b:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0050:  ldloca.s   V_0
    IL_0052:  ldloc.2
    IL_0053:  ldarg.1
    IL_0054:  call       instance void Game.ComponentBody::HandleAxisCollision(int32,
                                                                               float32,
                                                                               valuetype [Engine]Engine.Vector3&,
                                                                               bool,
                                                                               float32)
    IL_0059:  ldarg.0
    IL_005a:  ldc.i4.2
    IL_005b:  ldloc.1
    IL_005c:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0061:  ldloca.s   V_0
    IL_0063:  ldloc.2
    IL_0064:  ldarg.1
    IL_0065:  call       instance void Game.ComponentBody::HandleAxisCollision(int32,
                                                                               float32,
                                                                               valuetype [Engine]Engine.Vector3&,
                                                                               bool,
                                                                               float32)
    IL_006a:  ldarg.0
    IL_006b:  ldloc.0
    IL_006c:  call       instance void Game.ComponentFrame::set_Position(valuetype [Engine]Engine.Vector3)
    IL_0071:  ret
  } // end of method ComponentBody::MoveWithCollision

  .method private hidebysig instance bool 
          HandleSmoothRise(valuetype [Engine]Engine.Vector3& move,
                           valuetype [Engine]Engine.Vector3 position,
                           float32 dt) cil managed
  {
    // 代码大小       391 (0x187)
    .maxstack  7
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             valuetype [Engine]Engine.BoundingBox V_1,
             valuetype Game.ComponentBody/CollisionBox V_2,
             float32 V_3,
             float32 V_4)
    IL_0000:  ldarg.0
    IL_0001:  call       instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_BoxSize()
    IL_0006:  stloc.0
    IL_0007:  ldloca.s   V_1
    IL_0009:  ldarg.2
    IL_000a:  ldloc.0
    IL_000b:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0010:  ldc.r4     2.
    IL_0015:  div
    IL_0016:  ldc.r4     0.0
    IL_001b:  ldloc.0
    IL_001c:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0021:  ldc.r4     2.
    IL_0026:  div
    IL_0027:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_002c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0031:  ldarg.2
    IL_0032:  ldloc.0
    IL_0033:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0038:  ldc.r4     2.
    IL_003d:  div
    IL_003e:  ldloc.0
    IL_003f:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0044:  ldloc.0
    IL_0045:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_004a:  ldc.r4     2.
    IL_004f:  div
    IL_0050:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0055:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_005a:  call       instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_005f:  ldloca.s   V_1
    IL_0061:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_0066:  dup
    IL_0067:  ldobj      [Engine]Engine.Vector3
    IL_006c:  ldc.r4     3.9999999e-002
    IL_0071:  ldc.r4     0.0
    IL_0076:  ldc.r4     3.9999999e-002
    IL_007b:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0080:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0085:  stobj      [Engine]Engine.Vector3
    IL_008a:  ldloca.s   V_1
    IL_008c:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_0091:  dup
    IL_0092:  ldobj      [Engine]Engine.Vector3
    IL_0097:  ldc.r4     3.9999999e-002
    IL_009c:  ldc.r4     0.0
    IL_00a1:  ldc.r4     3.9999999e-002
    IL_00a6:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00ab:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_00b0:  stobj      [Engine]Engine.Vector3
    IL_00b5:  ldarg.0
    IL_00b6:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox> Game.ComponentBody::m_collisionBoxes
    IL_00bb:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>::Clear()
    IL_00c0:  ldarg.0
    IL_00c1:  ldloc.1
    IL_00c2:  ldarg.0
    IL_00c3:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox> Game.ComponentBody::m_collisionBoxes
    IL_00c8:  call       instance void Game.ComponentBody::FindTerrainCollisionBoxes(valuetype [Engine]Engine.BoundingBox,
                                                                                     class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>)
    IL_00cd:  ldarg.0
    IL_00ce:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox> Game.ComponentBody::m_collisionBoxes
    IL_00d3:  ldarg.0
    IL_00d4:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox> Game.ComponentBody::m_movingBlocksCollisionBoxes
    IL_00d9:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>::AddRange(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!0>)
    IL_00de:  ldarg.0
    IL_00df:  ldloc.1
    IL_00e0:  ldc.i4.1
    IL_00e1:  ldarg.0
    IL_00e2:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox> Game.ComponentBody::m_collisionBoxes
    IL_00e7:  ldloca.s   V_2
    IL_00e9:  call       instance float32 Game.ComponentBody::CalculatePushBack(valuetype [Engine]Engine.BoundingBox,
                                                                                int32,
                                                                                class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>,
                                                                                valuetype Game.ComponentBody/CollisionBox&)
    IL_00ee:  ldc.r4     0.0
    IL_00f3:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_00f8:  stloc.3
    IL_00f9:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_00fe:  ldloc.2
    IL_00ff:  ldfld      int32 Game.ComponentBody/CollisionBox::BlockValue
    IL_0104:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0109:  ldelem.ref
    IL_010a:  ldfld      bool Game.Block::NoSmoothRise
    IL_010f:  brtrue.s   IL_0185

    IL_0111:  ldloc.3
    IL_0112:  ldc.r4     3.9999999e-002
    IL_0117:  ble.un.s   IL_0185

    IL_0119:  ldc.r4     4.5
    IL_011e:  ldarg.3
    IL_011f:  mul
    IL_0120:  ldloc.3
    IL_0121:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_0126:  stloc.s    V_4
    IL_0128:  ldarg.1
    IL_0129:  ldarg.1
    IL_012a:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_012f:  ldloc.s    V_4
    IL_0131:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_0136:  stfld      float32 [Engine]Engine.Vector3::Y
    IL_013b:  ldarg.0
    IL_013c:  ldflda     valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_0141:  ldarg.0
    IL_0142:  ldflda     valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_0147:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_014c:  ldc.r4     0.0
    IL_0151:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_0156:  stfld      float32 [Engine]Engine.Vector3::Y
    IL_015b:  ldarg.0
    IL_015c:  ldloc.2
    IL_015d:  ldfld      int32 Game.ComponentBody/CollisionBox::BlockValue
    IL_0162:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_0167:  call       instance void Game.ComponentBody::set_StandingOnValue(valuetype [System.Runtime]System.Nullable`1<int32>)
    IL_016c:  ldarg.0
    IL_016d:  ldloc.2
    IL_016e:  ldfld      class Game.ComponentBody Game.ComponentBody/CollisionBox::ComponentBody
    IL_0173:  call       instance void Game.ComponentBody::set_StandingOnBody(class Game.ComponentBody)
    IL_0178:  ldarg.0
    IL_0179:  ldc.r4     0.0
    IL_017e:  stfld      float32 Game.ComponentBody::m_stoppedTime
    IL_0183:  ldc.i4.1
    IL_0184:  ret

    IL_0185:  ldc.i4.0
    IL_0186:  ret
  } // end of method ComponentBody::HandleSmoothRise

  .method private hidebysig instance void 
          HandleAxisCollision(int32 axis,
                              float32 move,
                              valuetype [Engine]Engine.Vector3& position,
                              bool isSmoothRising,
                              float32 dt) cil managed
  {
    // 代码大小       1311 (0x51f)
    .maxstack  7
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             valuetype [Engine]Engine.Vector3 V_1,
             valuetype [Engine]Engine.BoundingBox V_2,
             float32 V_3,
             valuetype Game.ComponentBody/CollisionBox V_4,
             valuetype [Engine]Engine.BoundingBox V_5,
             valuetype Game.ComponentBody/CollisionBox V_6,
             float32 V_7,
             valuetype [Engine]Engine.BoundingBox V_8,
             int32 V_9,
             class Game.SubsystemBlockBehavior[] V_10,
             int32 V_11,
             valuetype [Engine]Engine.Vector3 V_12,
             valuetype Game.CellFace V_13,
             class Game.ComponentBody V_14)
    IL_0000:  ldarg.0
    IL_0001:  call       instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_BoxSize()
    IL_0006:  stloc.0
    IL_0007:  ldarg.0
    IL_0008:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox> Game.ComponentBody::m_collisionBoxes
    IL_000d:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>::Clear()
    IL_0012:  ldarg.0
    IL_0013:  call       instance bool Game.ComponentBody::get_IsSneaking()
    IL_0018:  brfalse.s  IL_004d

    IL_001a:  ldarg.1
    IL_001b:  ldc.i4.1
    IL_001c:  beq.s      IL_004d

    IL_001e:  ldarg.0
    IL_001f:  ldarg.3
    IL_0020:  ldobj      [Engine]Engine.Vector3
    IL_0025:  ldloc.0
    IL_0026:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_002b:  ldc.r4     7.9999998e-002
    IL_0030:  sub
    IL_0031:  ldloc.0
    IL_0032:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0037:  ldc.r4     7.9999998e-002
    IL_003c:  sub
    IL_003d:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0042:  ldarg.0
    IL_0043:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox> Game.ComponentBody::m_collisionBoxes
    IL_0048:  call       instance void Game.ComponentBody::FindSneakCollisionBoxes(valuetype [Engine]Engine.Vector3,
                                                                                   valuetype [Engine]Engine.Vector2,
                                                                                   class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>)
    IL_004d:  ldarg.1
    IL_004e:  brtrue.s   IL_0073

    IL_0050:  ldarg.3
    IL_0051:  ldflda     float32 [Engine]Engine.Vector3::X
    IL_0056:  dup
    IL_0057:  ldind.r4
    IL_0058:  ldarg.2
    IL_0059:  add
    IL_005a:  stind.r4
    IL_005b:  ldloca.s   V_1
    IL_005d:  ldc.r4     0.0
    IL_0062:  ldc.r4     3.9999999e-002
    IL_0067:  ldc.r4     3.9999999e-002
    IL_006c:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0071:  br.s       IL_00bb

    IL_0073:  ldarg.1
    IL_0074:  ldc.i4.1
    IL_0075:  bne.un.s   IL_009a

    IL_0077:  ldarg.3
    IL_0078:  ldflda     float32 [Engine]Engine.Vector3::Y
    IL_007d:  dup
    IL_007e:  ldind.r4
    IL_007f:  ldarg.2
    IL_0080:  add
    IL_0081:  stind.r4
    IL_0082:  ldloca.s   V_1
    IL_0084:  ldc.r4     3.9999999e-002
    IL_0089:  ldc.r4     0.0
    IL_008e:  ldc.r4     3.9999999e-002
    IL_0093:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0098:  br.s       IL_00bb

    IL_009a:  ldarg.3
    IL_009b:  ldflda     float32 [Engine]Engine.Vector3::Z
    IL_00a0:  dup
    IL_00a1:  ldind.r4
    IL_00a2:  ldarg.2
    IL_00a3:  add
    IL_00a4:  stind.r4
    IL_00a5:  ldloca.s   V_1
    IL_00a7:  ldc.r4     3.9999999e-002
    IL_00ac:  ldc.r4     3.9999999e-002
    IL_00b1:  ldc.r4     0.0
    IL_00b6:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00bb:  ldloca.s   V_2
    IL_00bd:  ldarg.3
    IL_00be:  ldobj      [Engine]Engine.Vector3
    IL_00c3:  ldloc.0
    IL_00c4:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_00c9:  ldc.r4     2.
    IL_00ce:  div
    IL_00cf:  ldc.r4     0.0
    IL_00d4:  ldloc.0
    IL_00d5:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_00da:  ldc.r4     2.
    IL_00df:  div
    IL_00e0:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00e5:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_00ea:  ldloc.1
    IL_00eb:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00f0:  ldarg.3
    IL_00f1:  ldobj      [Engine]Engine.Vector3
    IL_00f6:  ldloc.0
    IL_00f7:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_00fc:  ldc.r4     2.
    IL_0101:  div
    IL_0102:  ldloc.0
    IL_0103:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0108:  ldloc.0
    IL_0109:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_010e:  ldc.r4     2.
    IL_0113:  div
    IL_0114:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0119:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_011e:  ldloc.1
    IL_011f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0124:  call       instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_0129:  ldarg.0
    IL_012a:  ldloc.2
    IL_012b:  ldarg.0
    IL_012c:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox> Game.ComponentBody::m_collisionBoxes
    IL_0131:  call       instance void Game.ComponentBody::FindTerrainCollisionBoxes(valuetype [Engine]Engine.BoundingBox,
                                                                                     class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>)
    IL_0136:  ldarg.0
    IL_0137:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox> Game.ComponentBody::m_collisionBoxes
    IL_013c:  ldarg.0
    IL_013d:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox> Game.ComponentBody::m_movingBlocksCollisionBoxes
    IL_0142:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>::AddRange(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!0>)
    IL_0147:  ldarg.1
    IL_0148:  ldc.i4.1
    IL_0149:  ceq
    IL_014b:  ldc.i4.0
    IL_014c:  ceq
    IL_014e:  ldarg.s    isSmoothRising
    IL_0150:  or
    IL_0151:  brfalse.s  IL_0181

    IL_0153:  ldloc.2
    IL_0154:  stloc.s    V_8
    IL_0156:  ldloca.s   V_8
    IL_0158:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_015d:  ldflda     float32 [Engine]Engine.Vector3::Y
    IL_0162:  dup
    IL_0163:  ldind.r4
    IL_0164:  ldarg.0
    IL_0165:  call       instance float32 Game.ComponentBody::get_MaxSmoothRiseHeight()
    IL_016a:  add
    IL_016b:  stind.r4
    IL_016c:  ldarg.0
    IL_016d:  ldloc.2
    IL_016e:  ldloc.s    V_8
    IL_0170:  ldarg.1
    IL_0171:  ldarg.0
    IL_0172:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox> Game.ComponentBody::m_collisionBoxes
    IL_0177:  ldloca.s   V_4
    IL_0179:  call       instance float32 Game.ComponentBody::CalculateSmoothRisePushBack(valuetype [Engine]Engine.BoundingBox,
                                                                                          valuetype [Engine]Engine.BoundingBox,
                                                                                          int32,
                                                                                          class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>,
                                                                                          valuetype Game.ComponentBody/CollisionBox&)
    IL_017e:  stloc.3
    IL_017f:  br.s       IL_0192

    IL_0181:  ldarg.0
    IL_0182:  ldloc.2
    IL_0183:  ldarg.1
    IL_0184:  ldarg.0
    IL_0185:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox> Game.ComponentBody::m_collisionBoxes
    IL_018a:  ldloca.s   V_4
    IL_018c:  call       instance float32 Game.ComponentBody::CalculatePushBack(valuetype [Engine]Engine.BoundingBox,
                                                                                int32,
                                                                                class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>,
                                                                                valuetype Game.ComponentBody/CollisionBox&)
    IL_0191:  stloc.3
    IL_0192:  ldloca.s   V_5
    IL_0194:  ldarg.3
    IL_0195:  ldobj      [Engine]Engine.Vector3
    IL_019a:  ldloc.0
    IL_019b:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_01a0:  ldc.r4     2.
    IL_01a5:  div
    IL_01a6:  ldc.r4     0.0
    IL_01ab:  ldloc.0
    IL_01ac:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_01b1:  ldc.r4     2.
    IL_01b6:  div
    IL_01b7:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_01bc:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_01c1:  ldloc.1
    IL_01c2:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01c7:  ldarg.3
    IL_01c8:  ldobj      [Engine]Engine.Vector3
    IL_01cd:  ldloc.0
    IL_01ce:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_01d3:  ldc.r4     2.
    IL_01d8:  div
    IL_01d9:  ldloc.0
    IL_01da:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_01df:  ldloc.0
    IL_01e0:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_01e5:  ldc.r4     2.
    IL_01ea:  div
    IL_01eb:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_01f0:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01f5:  ldloc.1
    IL_01f6:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_01fb:  call       instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_0200:  ldarg.0
    IL_0201:  ldloc.s    V_5
    IL_0203:  ldarg.1
    IL_0204:  ldarg.0
    IL_0205:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox> Game.ComponentBody::m_bodiesCollisionBoxes
    IL_020a:  ldloca.s   V_6
    IL_020c:  call       instance float32 Game.ComponentBody::CalculatePushBack(valuetype [Engine]Engine.BoundingBox,
                                                                                int32,
                                                                                class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>,
                                                                                valuetype Game.ComponentBody/CollisionBox&)
    IL_0211:  stloc.s    V_7
    IL_0213:  ldloc.3
    IL_0214:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_0219:  ldloc.s    V_7
    IL_021b:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_0220:  ble.un     IL_0388

    IL_0225:  ldloc.3
    IL_0226:  ldc.r4     0.0
    IL_022b:  beq        IL_051e

    IL_0230:  ldloc.s    V_4
    IL_0232:  ldfld      int32 Game.ComponentBody/CollisionBox::BlockValue
    IL_0237:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_023c:  stloc.s    V_9
    IL_023e:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0243:  ldloc.s    V_9
    IL_0245:  ldelem.ref
    IL_0246:  ldfld      bool Game.Block::HasCollisionBehavior
    IL_024b:  brfalse    IL_02e1

    IL_0250:  ldarg.0
    IL_0251:  ldfld      class Game.SubsystemBlockBehaviors Game.ComponentBody::m_subsystemBlockBehaviors
    IL_0256:  ldloc.s    V_9
    IL_0258:  callvirt   instance class Game.SubsystemBlockBehavior[] Game.SubsystemBlockBehaviors::GetBlockBehaviors(int32)
    IL_025d:  stloc.s    V_10
    IL_025f:  ldc.i4.0
    IL_0260:  stloc.s    V_11
    IL_0262:  br.s       IL_02d9

    IL_0264:  ldloc.s    V_4
    IL_0266:  ldfld      valuetype [Engine]Engine.BoundingBox Game.ComponentBody/CollisionBox::Box
    IL_026b:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_0270:  ldloc.s    V_4
    IL_0272:  ldfld      valuetype [Engine]Engine.BoundingBox Game.ComponentBody/CollisionBox::Box
    IL_0277:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_027c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0281:  ldc.r4     2.
    IL_0286:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Division(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_028b:  stloc.s    V_12
    IL_028d:  ldloc.s    V_12
    IL_028f:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0294:  conv.i4
    IL_0295:  ldloc.s    V_12
    IL_0297:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_029c:  conv.i4
    IL_029d:  ldloc.s    V_12
    IL_029f:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_02a4:  conv.i4
    IL_02a5:  ldarg.1
    IL_02a6:  ldarg.0
    IL_02a7:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_02ac:  ldarg.1
    IL_02ad:  call       float32 Game.ComponentBody::GetVectorComponent(valuetype [Engine]Engine.Vector3,
                                                                        int32)
    IL_02b2:  neg
    IL_02b3:  call       valuetype Game.CellFace Game.CellFace::FromAxisAndDirection(int32,
                                                                                     int32,
                                                                                     int32,
                                                                                     int32,
                                                                                     float32)
    IL_02b8:  stloc.s    V_13
    IL_02ba:  ldloc.s    V_10
    IL_02bc:  ldloc.s    V_11
    IL_02be:  ldelem.ref
    IL_02bf:  ldloc.s    V_13
    IL_02c1:  ldarg.0
    IL_02c2:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_02c7:  ldarg.1
    IL_02c8:  call       float32 Game.ComponentBody::GetVectorComponent(valuetype [Engine]Engine.Vector3,
                                                                        int32)
    IL_02cd:  ldarg.0
    IL_02ce:  callvirt   instance void Game.SubsystemBlockBehavior::OnCollide(valuetype Game.CellFace,
                                                                              float32,
                                                                              class Game.ComponentBody)
    IL_02d3:  ldloc.s    V_11
    IL_02d5:  ldc.i4.1
    IL_02d6:  add
    IL_02d7:  stloc.s    V_11
    IL_02d9:  ldloc.s    V_11
    IL_02db:  ldloc.s    V_10
    IL_02dd:  ldlen
    IL_02de:  conv.i4
    IL_02df:  blt.s      IL_0264

    IL_02e1:  ldarg.1
    IL_02e2:  brtrue.s   IL_0307

    IL_02e4:  ldarg.3
    IL_02e5:  ldflda     float32 [Engine]Engine.Vector3::X
    IL_02ea:  dup
    IL_02eb:  ldind.r4
    IL_02ec:  ldloc.3
    IL_02ed:  add
    IL_02ee:  stind.r4
    IL_02ef:  ldarg.0
    IL_02f0:  ldflda     valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_02f5:  ldloc.s    V_4
    IL_02f7:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentBody/CollisionBox::BlockVelocity
    IL_02fc:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0301:  stfld      float32 [Engine]Engine.Vector3::X
    IL_0306:  ret

    IL_0307:  ldarg.1
    IL_0308:  ldc.i4.1
    IL_0309:  bne.un.s   IL_0365

    IL_030b:  ldarg.3
    IL_030c:  ldflda     float32 [Engine]Engine.Vector3::Y
    IL_0311:  dup
    IL_0312:  ldind.r4
    IL_0313:  ldloc.3
    IL_0314:  add
    IL_0315:  stind.r4
    IL_0316:  ldarg.0
    IL_0317:  ldflda     valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_031c:  ldloc.s    V_4
    IL_031e:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentBody/CollisionBox::BlockVelocity
    IL_0323:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0328:  stfld      float32 [Engine]Engine.Vector3::Y
    IL_032d:  ldarg.2
    IL_032e:  ldc.r4     0.0
    IL_0333:  bge.un     IL_051e

    IL_0338:  ldarg.0
    IL_0339:  ldloc.s    V_4
    IL_033b:  ldfld      int32 Game.ComponentBody/CollisionBox::BlockValue
    IL_0340:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_0345:  call       instance void Game.ComponentBody::set_StandingOnValue(valuetype [System.Runtime]System.Nullable`1<int32>)
    IL_034a:  ldarg.0
    IL_034b:  ldloc.s    V_4
    IL_034d:  ldfld      class Game.ComponentBody Game.ComponentBody/CollisionBox::ComponentBody
    IL_0352:  call       instance void Game.ComponentBody::set_StandingOnBody(class Game.ComponentBody)
    IL_0357:  ldarg.0
    IL_0358:  ldloc.s    V_4
    IL_035a:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentBody/CollisionBox::BlockVelocity
    IL_035f:  call       instance void Game.ComponentBody::set_StandingOnVelocity(valuetype [Engine]Engine.Vector3)
    IL_0364:  ret

    IL_0365:  ldarg.3
    IL_0366:  ldflda     float32 [Engine]Engine.Vector3::Z
    IL_036b:  dup
    IL_036c:  ldind.r4
    IL_036d:  ldloc.3
    IL_036e:  add
    IL_036f:  stind.r4
    IL_0370:  ldarg.0
    IL_0371:  ldflda     valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_0376:  ldloc.s    V_4
    IL_0378:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentBody/CollisionBox::BlockVelocity
    IL_037d:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0382:  stfld      float32 [Engine]Engine.Vector3::Z
    IL_0387:  ret

    IL_0388:  ldloc.s    V_7
    IL_038a:  ldc.r4     0.0
    IL_038f:  beq        IL_051e

    IL_0394:  ldloc.s    V_6
    IL_0396:  ldfld      class Game.ComponentBody Game.ComponentBody/CollisionBox::ComponentBody
    IL_039b:  stloc.s    V_14
    IL_039d:  ldarg.1
    IL_039e:  brtrue.s   IL_03f6

    IL_03a0:  ldarg.0
    IL_03a1:  ldflda     valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_03a6:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_03ab:  ldloc.s    V_14
    IL_03ad:  ldflda     valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_03b2:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_03b7:  ldarg.0
    IL_03b8:  call       instance float32 Game.ComponentBody::get_Mass()
    IL_03bd:  ldloc.s    V_14
    IL_03bf:  callvirt   instance float32 Game.ComponentBody::get_Mass()
    IL_03c4:  ldc.r4     0.5
    IL_03c9:  ldarg.0
    IL_03ca:  ldflda     valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_03cf:  ldflda     float32 [Engine]Engine.Vector3::X
    IL_03d4:  ldloc.s    V_14
    IL_03d6:  ldflda     valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_03db:  ldflda     float32 [Engine]Engine.Vector3::X
    IL_03e0:  call       void Game.ComponentBody::InelasticCollision(float32,
                                                                     float32,
                                                                     float32,
                                                                     float32,
                                                                     float32,
                                                                     float32&,
                                                                     float32&)
    IL_03e5:  ldarg.3
    IL_03e6:  ldflda     float32 [Engine]Engine.Vector3::X
    IL_03eb:  dup
    IL_03ec:  ldind.r4
    IL_03ed:  ldloc.s    V_7
    IL_03ef:  add
    IL_03f0:  stind.r4
    IL_03f1:  br         IL_04f3

    IL_03f6:  ldarg.1
    IL_03f7:  ldc.i4.1
    IL_03f8:  bne.un     IL_04a2

    IL_03fd:  ldarg.0
    IL_03fe:  ldflda     valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_0403:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0408:  ldloc.s    V_14
    IL_040a:  ldflda     valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_040f:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0414:  ldarg.0
    IL_0415:  call       instance float32 Game.ComponentBody::get_Mass()
    IL_041a:  ldloc.s    V_14
    IL_041c:  callvirt   instance float32 Game.ComponentBody::get_Mass()
    IL_0421:  ldc.r4     0.5
    IL_0426:  ldarg.0
    IL_0427:  ldflda     valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_042c:  ldflda     float32 [Engine]Engine.Vector3::Y
    IL_0431:  ldloc.s    V_14
    IL_0433:  ldflda     valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_0438:  ldflda     float32 [Engine]Engine.Vector3::Y
    IL_043d:  call       void Game.ComponentBody::InelasticCollision(float32,
                                                                     float32,
                                                                     float32,
                                                                     float32,
                                                                     float32,
                                                                     float32&,
                                                                     float32&)
    IL_0442:  ldarg.3
    IL_0443:  ldflda     float32 [Engine]Engine.Vector3::Y
    IL_0448:  dup
    IL_0449:  ldind.r4
    IL_044a:  ldloc.s    V_7
    IL_044c:  add
    IL_044d:  stind.r4
    IL_044e:  ldarg.2
    IL_044f:  ldc.r4     0.0
    IL_0454:  bge.un     IL_04f3

    IL_0459:  ldarg.0
    IL_045a:  ldloc.s    V_6
    IL_045c:  ldfld      int32 Game.ComponentBody/CollisionBox::BlockValue
    IL_0461:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_0466:  call       instance void Game.ComponentBody::set_StandingOnValue(valuetype [System.Runtime]System.Nullable`1<int32>)
    IL_046b:  ldarg.0
    IL_046c:  ldloc.s    V_6
    IL_046e:  ldfld      class Game.ComponentBody Game.ComponentBody/CollisionBox::ComponentBody
    IL_0473:  call       instance void Game.ComponentBody::set_StandingOnBody(class Game.ComponentBody)
    IL_0478:  ldarg.0
    IL_0479:  ldloc.s    V_14
    IL_047b:  ldflda     valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_0480:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0485:  ldc.r4     0.0
    IL_048a:  ldloc.s    V_14
    IL_048c:  ldflda     valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_0491:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0496:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_049b:  call       instance void Game.ComponentBody::set_StandingOnVelocity(valuetype [Engine]Engine.Vector3)
    IL_04a0:  br.s       IL_04f3

    IL_04a2:  ldarg.0
    IL_04a3:  ldflda     valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_04a8:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_04ad:  ldloc.s    V_14
    IL_04af:  ldflda     valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_04b4:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_04b9:  ldarg.0
    IL_04ba:  call       instance float32 Game.ComponentBody::get_Mass()
    IL_04bf:  ldloc.s    V_14
    IL_04c1:  callvirt   instance float32 Game.ComponentBody::get_Mass()
    IL_04c6:  ldc.r4     0.5
    IL_04cb:  ldarg.0
    IL_04cc:  ldflda     valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_04d1:  ldflda     float32 [Engine]Engine.Vector3::Z
    IL_04d6:  ldloc.s    V_14
    IL_04d8:  ldflda     valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_04dd:  ldflda     float32 [Engine]Engine.Vector3::Z
    IL_04e2:  call       void Game.ComponentBody::InelasticCollision(float32,
                                                                     float32,
                                                                     float32,
                                                                     float32,
                                                                     float32,
                                                                     float32&,
                                                                     float32&)
    IL_04e7:  ldarg.3
    IL_04e8:  ldflda     float32 [Engine]Engine.Vector3::Z
    IL_04ed:  dup
    IL_04ee:  ldind.r4
    IL_04ef:  ldloc.s    V_7
    IL_04f1:  add
    IL_04f2:  stind.r4
    IL_04f3:  ldarg.0
    IL_04f4:  ldfld      class [System.Runtime]System.Action`1<class Game.ComponentBody> Game.ComponentBody::CollidedWithBody
    IL_04f9:  brfalse.s  IL_0508

    IL_04fb:  ldarg.0
    IL_04fc:  ldfld      class [System.Runtime]System.Action`1<class Game.ComponentBody> Game.ComponentBody::CollidedWithBody
    IL_0501:  ldloc.s    V_14
    IL_0503:  callvirt   instance void class [System.Runtime]System.Action`1<class Game.ComponentBody>::Invoke(!0)
    IL_0508:  ldloc.s    V_14
    IL_050a:  ldfld      class [System.Runtime]System.Action`1<class Game.ComponentBody> Game.ComponentBody::CollidedWithBody
    IL_050f:  brfalse.s  IL_051e

    IL_0511:  ldloc.s    V_14
    IL_0513:  ldfld      class [System.Runtime]System.Action`1<class Game.ComponentBody> Game.ComponentBody::CollidedWithBody
    IL_0518:  ldarg.0
    IL_0519:  callvirt   instance void class [System.Runtime]System.Action`1<class Game.ComponentBody>::Invoke(!0)
    IL_051e:  ret
  } // end of method ComponentBody::HandleAxisCollision

  .method private hidebysig instance void 
          FindBodiesCollisionBoxes(valuetype [Engine]Engine.Vector3 position,
                                   class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox> result) cil managed
  {
    // 代码大小       145 (0x91)
    .maxstack  4
    .locals init (int32 V_0,
             class Game.ComponentBody V_1,
             valuetype Game.ComponentBody/CollisionBox V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> Game.ComponentBody::m_componentBodies
    IL_0006:  callvirt   instance void class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>::Clear()
    IL_000b:  ldarg.0
    IL_000c:  ldfld      class Game.SubsystemBodies Game.ComponentBody::m_subsystemBodies
    IL_0011:  ldarg.1
    IL_0012:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0017:  ldarg.1
    IL_0018:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_001d:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0022:  ldc.r4     4.
    IL_0027:  ldarg.0
    IL_0028:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> Game.ComponentBody::m_componentBodies
    IL_002d:  callvirt   instance void Game.SubsystemBodies::FindBodiesAroundPoint(valuetype [Engine]Engine.Vector2,
                                                                                   float32,
                                                                                   class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>)
    IL_0032:  ldc.i4.0
    IL_0033:  stloc.0
    IL_0034:  br.s       IL_0082

    IL_0036:  ldarg.0
    IL_0037:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> Game.ComponentBody::m_componentBodies
    IL_003c:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>::get_Array()
    IL_0041:  ldloc.0
    IL_0042:  ldelem.ref
    IL_0043:  stloc.1
    IL_0044:  ldloc.1
    IL_0045:  ldarg.0
    IL_0046:  beq.s      IL_007e

    IL_0048:  ldloc.1
    IL_0049:  ldarg.0
    IL_004a:  ldfld      class Game.ComponentBody Game.ComponentBody::m_parentBody
    IL_004f:  beq.s      IL_007e

    IL_0051:  ldloc.1
    IL_0052:  ldfld      class Game.ComponentBody Game.ComponentBody::m_parentBody
    IL_0057:  ldarg.0
    IL_0058:  beq.s      IL_007e

    IL_005a:  ldarg.2
    IL_005b:  ldloca.s   V_2
    IL_005d:  initobj    Game.ComponentBody/CollisionBox
    IL_0063:  ldloca.s   V_2
    IL_0065:  ldloc.1
    IL_0066:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.ComponentBody::get_BoundingBox()
    IL_006b:  stfld      valuetype [Engine]Engine.BoundingBox Game.ComponentBody/CollisionBox::Box
    IL_0070:  ldloca.s   V_2
    IL_0072:  ldloc.1
    IL_0073:  stfld      class Game.ComponentBody Game.ComponentBody/CollisionBox::ComponentBody
    IL_0078:  ldloc.2
    IL_0079:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>::Add(!0)
    IL_007e:  ldloc.0
    IL_007f:  ldc.i4.1
    IL_0080:  add
    IL_0081:  stloc.0
    IL_0082:  ldloc.0
    IL_0083:  ldarg.0
    IL_0084:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> Game.ComponentBody::m_componentBodies
    IL_0089:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>::get_Count()
    IL_008e:  blt.s      IL_0036

    IL_0090:  ret
  } // end of method ComponentBody::FindBodiesCollisionBoxes

  .method private hidebysig instance void 
          FindMovingBlocksCollisionBoxes(valuetype [Engine]Engine.Vector3 position,
                                         class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox> result) cil managed
  {
    // 代码大小       488 (0x1e8)
    .maxstack  7
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             valuetype [Engine]Engine.BoundingBox V_1,
             int32 V_2,
             class Game.IMovingBlockSet V_3,
             int32 V_4,
             valuetype Game.MovingBlock V_5,
             int32 V_6,
             class Game.Block V_7,
             valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.MovingBlock> V_8,
             valuetype [Engine]Engine.BoundingBox[] V_9,
             valuetype [Engine]Engine.Vector3 V_10,
             int32 V_11,
             valuetype Game.ComponentBody/CollisionBox V_12)
    IL_0000:  ldarg.0
    IL_0001:  call       instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_BoxSize()
    IL_0006:  stloc.0
    IL_0007:  ldloca.s   V_1
    IL_0009:  ldarg.1
    IL_000a:  ldloc.0
    IL_000b:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0010:  ldc.r4     2.
    IL_0015:  div
    IL_0016:  ldc.r4     0.0
    IL_001b:  ldloc.0
    IL_001c:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0021:  ldc.r4     2.
    IL_0026:  div
    IL_0027:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_002c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0031:  ldarg.1
    IL_0032:  ldloc.0
    IL_0033:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0038:  ldc.r4     2.
    IL_003d:  div
    IL_003e:  ldloc.0
    IL_003f:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0044:  ldloc.0
    IL_0045:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_004a:  ldc.r4     2.
    IL_004f:  div
    IL_0050:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0055:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_005a:  call       instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_005f:  ldloca.s   V_1
    IL_0061:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_0066:  dup
    IL_0067:  ldobj      [Engine]Engine.Vector3
    IL_006c:  ldc.r4     1.
    IL_0071:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32)
    IL_0076:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_007b:  stobj      [Engine]Engine.Vector3
    IL_0080:  ldloca.s   V_1
    IL_0082:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_0087:  dup
    IL_0088:  ldobj      [Engine]Engine.Vector3
    IL_008d:  ldc.r4     1.
    IL_0092:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32)
    IL_0097:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_009c:  stobj      [Engine]Engine.Vector3
    IL_00a1:  ldarg.0
    IL_00a2:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.IMovingBlockSet> Game.ComponentBody::m_movingBlockSets
    IL_00a7:  callvirt   instance void class [Engine]Engine.DynamicArray`1<class Game.IMovingBlockSet>::Clear()
    IL_00ac:  ldarg.0
    IL_00ad:  ldfld      class Game.SubsystemMovingBlocks Game.ComponentBody::m_subsystemMovingBlocks
    IL_00b2:  ldloc.1
    IL_00b3:  ldc.i4.0
    IL_00b4:  ldarg.0
    IL_00b5:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.IMovingBlockSet> Game.ComponentBody::m_movingBlockSets
    IL_00ba:  callvirt   instance void Game.SubsystemMovingBlocks::FindMovingBlocks(valuetype [Engine]Engine.BoundingBox,
                                                                                    bool,
                                                                                    class [Engine]Engine.DynamicArray`1<class Game.IMovingBlockSet>)
    IL_00bf:  ldc.i4.0
    IL_00c0:  stloc.2
    IL_00c1:  br         IL_01d6

    IL_00c6:  ldarg.0
    IL_00c7:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.IMovingBlockSet> Game.ComponentBody::m_movingBlockSets
    IL_00cc:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<class Game.IMovingBlockSet>::get_Array()
    IL_00d1:  ldloc.2
    IL_00d2:  ldelem.ref
    IL_00d3:  stloc.3
    IL_00d4:  ldc.i4.0
    IL_00d5:  stloc.s    V_4
    IL_00d7:  br         IL_01bc

    IL_00dc:  ldloc.3
    IL_00dd:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.MovingBlock> Game.IMovingBlockSet::get_Blocks()
    IL_00e2:  stloc.s    V_8
    IL_00e4:  ldloca.s   V_8
    IL_00e6:  ldloc.s    V_4
    IL_00e8:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.MovingBlock>::get_Item(int32)
    IL_00ed:  stloc.s    V_5
    IL_00ef:  ldloc.s    V_5
    IL_00f1:  ldfld      int32 Game.MovingBlock::Value
    IL_00f6:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_00fb:  stloc.s    V_6
    IL_00fd:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0102:  ldloc.s    V_6
    IL_0104:  ldelem.ref
    IL_0105:  stloc.s    V_7
    IL_0107:  ldloc.s    V_7
    IL_0109:  ldfld      bool Game.Block::IsCollidable
    IL_010e:  brfalse    IL_01b6

    IL_0113:  ldloc.s    V_7
    IL_0115:  ldarg.0
    IL_0116:  ldfld      class Game.SubsystemTerrain Game.ComponentBody::m_subsystemTerrain
    IL_011b:  ldloc.s    V_5
    IL_011d:  ldfld      int32 Game.MovingBlock::Value
    IL_0122:  callvirt   instance valuetype [Engine]Engine.BoundingBox[] Game.Block::GetCustomCollisionBoxes(class Game.SubsystemTerrain,
                                                                                                             int32)
    IL_0127:  stloc.s    V_9
    IL_0129:  ldloc.s    V_5
    IL_012b:  ldfld      valuetype [Engine]Engine.Point3 Game.MovingBlock::Offset
    IL_0130:  newobj     instance void [Engine]Engine.Vector3::.ctor(valuetype [Engine]Engine.Point3)
    IL_0135:  ldloc.3
    IL_0136:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.IMovingBlockSet::get_Position()
    IL_013b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0140:  stloc.s    V_10
    IL_0142:  ldc.i4.0
    IL_0143:  stloc.s    V_11
    IL_0145:  br.s       IL_01ae

    IL_0147:  ldarg.2
    IL_0148:  ldloca.s   V_12
    IL_014a:  initobj    Game.ComponentBody/CollisionBox
    IL_0150:  ldloca.s   V_12
    IL_0152:  ldloc.s    V_10
    IL_0154:  ldloc.s    V_9
    IL_0156:  ldloc.s    V_11
    IL_0158:  ldelema    [Engine]Engine.BoundingBox
    IL_015d:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_0162:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0167:  ldloc.s    V_10
    IL_0169:  ldloc.s    V_9
    IL_016b:  ldloc.s    V_11
    IL_016d:  ldelema    [Engine]Engine.BoundingBox
    IL_0172:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_0177:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_017c:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_0181:  stfld      valuetype [Engine]Engine.BoundingBox Game.ComponentBody/CollisionBox::Box
    IL_0186:  ldloca.s   V_12
    IL_0188:  ldloc.s    V_5
    IL_018a:  ldfld      int32 Game.MovingBlock::Value
    IL_018f:  stfld      int32 Game.ComponentBody/CollisionBox::BlockValue
    IL_0194:  ldloca.s   V_12
    IL_0196:  ldloc.3
    IL_0197:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.IMovingBlockSet::get_CurrentVelocity()
    IL_019c:  stfld      valuetype [Engine]Engine.Vector3 Game.ComponentBody/CollisionBox::BlockVelocity
    IL_01a1:  ldloc.s    V_12
    IL_01a3:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>::Add(!0)
    IL_01a8:  ldloc.s    V_11
    IL_01aa:  ldc.i4.1
    IL_01ab:  add
    IL_01ac:  stloc.s    V_11
    IL_01ae:  ldloc.s    V_11
    IL_01b0:  ldloc.s    V_9
    IL_01b2:  ldlen
    IL_01b3:  conv.i4
    IL_01b4:  blt.s      IL_0147

    IL_01b6:  ldloc.s    V_4
    IL_01b8:  ldc.i4.1
    IL_01b9:  add
    IL_01ba:  stloc.s    V_4
    IL_01bc:  ldloc.s    V_4
    IL_01be:  ldloc.3
    IL_01bf:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.MovingBlock> Game.IMovingBlockSet::get_Blocks()
    IL_01c4:  stloc.s    V_8
    IL_01c6:  ldloca.s   V_8
    IL_01c8:  call       instance int32 valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.MovingBlock>::get_Count()
    IL_01cd:  blt        IL_00dc

    IL_01d2:  ldloc.2
    IL_01d3:  ldc.i4.1
    IL_01d4:  add
    IL_01d5:  stloc.2
    IL_01d6:  ldloc.2
    IL_01d7:  ldarg.0
    IL_01d8:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.IMovingBlockSet> Game.ComponentBody::m_movingBlockSets
    IL_01dd:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<class Game.IMovingBlockSet>::get_Count()
    IL_01e2:  blt        IL_00c6

    IL_01e7:  ret
  } // end of method ComponentBody::FindMovingBlocksCollisionBoxes

  .method private hidebysig instance void 
          FindTerrainCollisionBoxes(valuetype [Engine]Engine.BoundingBox 'box',
                                    class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox> result) cil managed
  {
    // 代码大小       534 (0x216)
    .maxstack  6
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7,
             int32 V_8,
             int32 V_9,
             int32 V_10,
             class Game.Block V_11,
             valuetype [Engine]Engine.BoundingBox[] V_12,
             valuetype [Engine]Engine.Vector3 V_13,
             int32 V_14,
             valuetype Game.ComponentBody/CollisionBox V_15)
    IL_0000:  ldarg.1
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_0006:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_000b:  conv.i4
    IL_000c:  ldarg.0
    IL_000d:  ldfld      class Game.SubsystemTerrain Game.ComponentBody::m_subsystemTerrain
    IL_0012:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0017:  callvirt   instance valuetype [Engine]Engine.Point2 Game.TerrainData::get_Origin()
    IL_001c:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0021:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_0026:  ldarg.1
    IL_0027:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_002c:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0031:  conv.i4
    IL_0032:  ldc.i4.0
    IL_0033:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_0038:  stloc.0
    IL_0039:  ldarg.1
    IL_003a:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_003f:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0044:  conv.i4
    IL_0045:  ldarg.0
    IL_0046:  ldfld      class Game.SubsystemTerrain Game.ComponentBody::m_subsystemTerrain
    IL_004b:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0050:  callvirt   instance valuetype [Engine]Engine.Point2 Game.TerrainData::get_Origin()
    IL_0055:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_005a:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_005f:  stloc.1
    IL_0060:  ldarg.1
    IL_0061:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_0066:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_006b:  conv.i4
    IL_006c:  ldarg.0
    IL_006d:  ldfld      class Game.SubsystemTerrain Game.ComponentBody::m_subsystemTerrain
    IL_0072:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0077:  callvirt   instance valuetype [Engine]Engine.Point2 Game.TerrainData::get_Origin()
    IL_007c:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0081:  ldarg.0
    IL_0082:  ldfld      class Game.SubsystemTerrain Game.ComponentBody::m_subsystemTerrain
    IL_0087:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_008c:  callvirt   instance int32 Game.TerrainData::get_SizeX()
    IL_0091:  add
    IL_0092:  ldc.i4.1
    IL_0093:  sub
    IL_0094:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_0099:  stloc.2
    IL_009a:  ldarg.1
    IL_009b:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_00a0:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_00a5:  conv.i4
    IL_00a6:  ldarg.0
    IL_00a7:  ldfld      class Game.SubsystemTerrain Game.ComponentBody::m_subsystemTerrain
    IL_00ac:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_00b1:  callvirt   instance int32 Game.TerrainData::get_SizeY()
    IL_00b6:  ldc.i4.1
    IL_00b7:  sub
    IL_00b8:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_00bd:  stloc.3
    IL_00be:  ldarg.1
    IL_00bf:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_00c4:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_00c9:  conv.i4
    IL_00ca:  ldarg.0
    IL_00cb:  ldfld      class Game.SubsystemTerrain Game.ComponentBody::m_subsystemTerrain
    IL_00d0:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_00d5:  callvirt   instance valuetype [Engine]Engine.Point2 Game.TerrainData::get_Origin()
    IL_00da:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_00df:  ldarg.0
    IL_00e0:  ldfld      class Game.SubsystemTerrain Game.ComponentBody::m_subsystemTerrain
    IL_00e5:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_00ea:  callvirt   instance int32 Game.TerrainData::get_SizeZ()
    IL_00ef:  add
    IL_00f0:  ldc.i4.1
    IL_00f1:  sub
    IL_00f2:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_00f7:  stloc.s    V_4
    IL_00f9:  stloc.s    V_5
    IL_00fb:  br         IL_020d

    IL_0100:  ldloc.1
    IL_0101:  stloc.s    V_6
    IL_0103:  br         IL_01fe

    IL_0108:  ldarg.0
    IL_0109:  ldfld      class Game.SubsystemTerrain Game.ComponentBody::m_subsystemTerrain
    IL_010e:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0113:  ldloc.s    V_5
    IL_0115:  ldloc.0
    IL_0116:  ldloc.s    V_6
    IL_0118:  callvirt   instance int32 Game.TerrainData::CalculateCellIndex(int32,
                                                                             int32,
                                                                             int32)
    IL_011d:  stloc.s    V_7
    IL_011f:  ldloc.0
    IL_0120:  stloc.s    V_8
    IL_0122:  br         IL_01f0

    IL_0127:  ldarg.0
    IL_0128:  ldfld      class Game.SubsystemTerrain Game.ComponentBody::m_subsystemTerrain
    IL_012d:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0132:  ldloc.s    V_7
    IL_0134:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32)
    IL_0139:  stloc.s    V_9
    IL_013b:  ldloc.s    V_9
    IL_013d:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0142:  stloc.s    V_10
    IL_0144:  ldloc.s    V_10
    IL_0146:  brfalse    IL_01e4

    IL_014b:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0150:  ldloc.s    V_10
    IL_0152:  ldelem.ref
    IL_0153:  stloc.s    V_11
    IL_0155:  ldloc.s    V_11
    IL_0157:  ldfld      bool Game.Block::IsCollidable
    IL_015c:  brfalse    IL_01e4

    IL_0161:  ldloc.s    V_11
    IL_0163:  ldarg.0
    IL_0164:  ldfld      class Game.SubsystemTerrain Game.ComponentBody::m_subsystemTerrain
    IL_0169:  ldloc.s    V_9
    IL_016b:  callvirt   instance valuetype [Engine]Engine.BoundingBox[] Game.Block::GetCustomCollisionBoxes(class Game.SubsystemTerrain,
                                                                                                             int32)
    IL_0170:  stloc.s    V_12
    IL_0172:  ldloca.s   V_13
    IL_0174:  ldloc.s    V_5
    IL_0176:  conv.r4
    IL_0177:  ldloc.s    V_8
    IL_0179:  conv.r4
    IL_017a:  ldloc.s    V_6
    IL_017c:  conv.r4
    IL_017d:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0182:  ldc.i4.0
    IL_0183:  stloc.s    V_14
    IL_0185:  br.s       IL_01dc

    IL_0187:  ldarg.2
    IL_0188:  ldloca.s   V_15
    IL_018a:  initobj    Game.ComponentBody/CollisionBox
    IL_0190:  ldloca.s   V_15
    IL_0192:  ldloc.s    V_13
    IL_0194:  ldloc.s    V_12
    IL_0196:  ldloc.s    V_14
    IL_0198:  ldelema    [Engine]Engine.BoundingBox
    IL_019d:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_01a2:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01a7:  ldloc.s    V_13
    IL_01a9:  ldloc.s    V_12
    IL_01ab:  ldloc.s    V_14
    IL_01ad:  ldelema    [Engine]Engine.BoundingBox
    IL_01b2:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_01b7:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01bc:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_01c1:  stfld      valuetype [Engine]Engine.BoundingBox Game.ComponentBody/CollisionBox::Box
    IL_01c6:  ldloca.s   V_15
    IL_01c8:  ldloc.s    V_9
    IL_01ca:  stfld      int32 Game.ComponentBody/CollisionBox::BlockValue
    IL_01cf:  ldloc.s    V_15
    IL_01d1:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>::Add(!0)
    IL_01d6:  ldloc.s    V_14
    IL_01d8:  ldc.i4.1
    IL_01d9:  add
    IL_01da:  stloc.s    V_14
    IL_01dc:  ldloc.s    V_14
    IL_01de:  ldloc.s    V_12
    IL_01e0:  ldlen
    IL_01e1:  conv.i4
    IL_01e2:  blt.s      IL_0187

    IL_01e4:  ldloc.s    V_8
    IL_01e6:  ldc.i4.1
    IL_01e7:  add
    IL_01e8:  stloc.s    V_8
    IL_01ea:  ldloc.s    V_7
    IL_01ec:  ldc.i4.1
    IL_01ed:  add
    IL_01ee:  stloc.s    V_7
    IL_01f0:  ldloc.s    V_8
    IL_01f2:  ldloc.3
    IL_01f3:  ble        IL_0127

    IL_01f8:  ldloc.s    V_6
    IL_01fa:  ldc.i4.1
    IL_01fb:  add
    IL_01fc:  stloc.s    V_6
    IL_01fe:  ldloc.s    V_6
    IL_0200:  ldloc.s    V_4
    IL_0202:  ble        IL_0108

    IL_0207:  ldloc.s    V_5
    IL_0209:  ldc.i4.1
    IL_020a:  add
    IL_020b:  stloc.s    V_5
    IL_020d:  ldloc.s    V_5
    IL_020f:  ldloc.2
    IL_0210:  ble        IL_0100

    IL_0215:  ret
  } // end of method ComponentBody::FindTerrainCollisionBoxes

  .method private hidebysig instance void 
          FindSneakCollisionBoxes(valuetype [Engine]Engine.Vector3 position,
                                  valuetype [Engine]Engine.Vector2 overhang,
                                  class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox> result) cil managed
  {
    // 代码大小       1680 (0x690)
    .maxstack  7
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             bool V_3,
             bool V_4,
             bool V_5,
             bool V_6,
             valuetype Game.ComponentBody/CollisionBox V_7,
             bool V_8,
             bool V_9,
             bool V_10,
             bool V_11,
             bool V_12,
             bool V_13,
             bool V_14,
             bool V_15,
             bool V_16)
    IL_0000:  ldarg.1
    IL_0001:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0006:  conv.i4
    IL_0007:  stloc.0
    IL_0008:  ldarg.1
    IL_0009:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_000e:  conv.i4
    IL_000f:  stloc.1
    IL_0010:  ldarg.1
    IL_0011:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0016:  conv.i4
    IL_0017:  stloc.2
    IL_0018:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_001d:  ldarg.0
    IL_001e:  ldfld      class Game.SubsystemTerrain Game.ComponentBody::m_subsystemTerrain
    IL_0023:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0028:  ldloc.0
    IL_0029:  ldloc.1
    IL_002a:  ldc.i4.1
    IL_002b:  sub
    IL_002c:  ldloc.2
    IL_002d:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                          int32,
                                                                          int32)
    IL_0032:  ldelem.ref
    IL_0033:  ldfld      bool Game.Block::IsCollidable
    IL_0038:  brtrue     IL_068f

    IL_003d:  ldarg.1
    IL_003e:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0043:  ldloc.0
    IL_0044:  conv.r4
    IL_0045:  ldc.r4     0.5
    IL_004a:  add
    IL_004b:  clt
    IL_004d:  ldarg.1
    IL_004e:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0053:  ldloc.2
    IL_0054:  conv.r4
    IL_0055:  ldc.r4     0.5
    IL_005a:  add
    IL_005b:  clt
    IL_005d:  stloc.3
    IL_005e:  brfalse    IL_037b

    IL_0063:  ldloc.3
    IL_0064:  brfalse    IL_01f2

    IL_0069:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_006e:  ldarg.0
    IL_006f:  ldfld      class Game.SubsystemTerrain Game.ComponentBody::m_subsystemTerrain
    IL_0074:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0079:  ldloc.0
    IL_007a:  ldloc.1
    IL_007b:  ldc.i4.1
    IL_007c:  sub
    IL_007d:  ldloc.2
    IL_007e:  ldc.i4.1
    IL_007f:  sub
    IL_0080:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                          int32,
                                                                          int32)
    IL_0085:  ldelem.ref
    IL_0086:  ldfld      bool Game.Block::IsCollidable
    IL_008b:  stloc.s    V_4
    IL_008d:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0092:  ldarg.0
    IL_0093:  ldfld      class Game.SubsystemTerrain Game.ComponentBody::m_subsystemTerrain
    IL_0098:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_009d:  ldloc.0
    IL_009e:  ldc.i4.1
    IL_009f:  sub
    IL_00a0:  ldloc.1
    IL_00a1:  ldc.i4.1
    IL_00a2:  sub
    IL_00a3:  ldloc.2
    IL_00a4:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                          int32,
                                                                          int32)
    IL_00a9:  ldelem.ref
    IL_00aa:  ldfld      bool Game.Block::IsCollidable
    IL_00af:  stloc.s    V_5
    IL_00b1:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_00b6:  ldarg.0
    IL_00b7:  ldfld      class Game.SubsystemTerrain Game.ComponentBody::m_subsystemTerrain
    IL_00bc:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_00c1:  ldloc.0
    IL_00c2:  ldc.i4.1
    IL_00c3:  sub
    IL_00c4:  ldloc.1
    IL_00c5:  ldc.i4.1
    IL_00c6:  sub
    IL_00c7:  ldloc.2
    IL_00c8:  ldc.i4.1
    IL_00c9:  sub
    IL_00ca:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                          int32,
                                                                          int32)
    IL_00cf:  ldelem.ref
    IL_00d0:  ldfld      bool Game.Block::IsCollidable
    IL_00d5:  stloc.s    V_6
    IL_00d7:  ldloc.s    V_4
    IL_00d9:  brfalse.s  IL_00df

    IL_00db:  ldloc.s    V_5
    IL_00dd:  brfalse.s  IL_00f0

    IL_00df:  ldloc.s    V_4
    IL_00e1:  brtrue.s   IL_00ea

    IL_00e3:  ldloc.s    V_5
    IL_00e5:  ldc.i4.0
    IL_00e6:  ceq
    IL_00e8:  br.s       IL_00eb

    IL_00ea:  ldc.i4.0
    IL_00eb:  ldloc.s    V_6
    IL_00ed:  and
    IL_00ee:  brfalse.s  IL_0137

    IL_00f0:  ldarg.3
    IL_00f1:  ldloca.s   V_7
    IL_00f3:  initobj    Game.ComponentBody/CollisionBox
    IL_00f9:  ldloca.s   V_7
    IL_00fb:  ldloc.0
    IL_00fc:  conv.r4
    IL_00fd:  ldloc.1
    IL_00fe:  conv.r4
    IL_00ff:  ldloc.2
    IL_0100:  conv.r4
    IL_0101:  ldarg.2
    IL_0102:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0107:  add
    IL_0108:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_010d:  ldloc.0
    IL_010e:  ldc.i4.1
    IL_010f:  add
    IL_0110:  conv.r4
    IL_0111:  ldloc.1
    IL_0112:  ldc.i4.1
    IL_0113:  add
    IL_0114:  conv.r4
    IL_0115:  ldloc.2
    IL_0116:  ldc.i4.1
    IL_0117:  add
    IL_0118:  conv.r4
    IL_0119:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_011e:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_0123:  stfld      valuetype [Engine]Engine.BoundingBox Game.ComponentBody/CollisionBox::Box
    IL_0128:  ldloca.s   V_7
    IL_012a:  ldc.i4.0
    IL_012b:  stfld      int32 Game.ComponentBody/CollisionBox::BlockValue
    IL_0130:  ldloc.s    V_7
    IL_0132:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>::Add(!0)
    IL_0137:  ldloc.s    V_4
    IL_0139:  ldc.i4.0
    IL_013a:  ceq
    IL_013c:  ldloc.s    V_5
    IL_013e:  and
    IL_013f:  brtrue.s   IL_0152

    IL_0141:  ldloc.s    V_4
    IL_0143:  brtrue.s   IL_014c

    IL_0145:  ldloc.s    V_5
    IL_0147:  ldc.i4.0
    IL_0148:  ceq
    IL_014a:  br.s       IL_014d

    IL_014c:  ldc.i4.0
    IL_014d:  ldloc.s    V_6
    IL_014f:  and
    IL_0150:  brfalse.s  IL_0199

    IL_0152:  ldarg.3
    IL_0153:  ldloca.s   V_7
    IL_0155:  initobj    Game.ComponentBody/CollisionBox
    IL_015b:  ldloca.s   V_7
    IL_015d:  ldloc.0
    IL_015e:  conv.r4
    IL_015f:  ldarg.2
    IL_0160:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0165:  add
    IL_0166:  ldloc.1
    IL_0167:  conv.r4
    IL_0168:  ldloc.2
    IL_0169:  conv.r4
    IL_016a:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_016f:  ldloc.0
    IL_0170:  ldc.i4.1
    IL_0171:  add
    IL_0172:  conv.r4
    IL_0173:  ldloc.1
    IL_0174:  ldc.i4.1
    IL_0175:  add
    IL_0176:  conv.r4
    IL_0177:  ldloc.2
    IL_0178:  ldc.i4.1
    IL_0179:  add
    IL_017a:  conv.r4
    IL_017b:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0180:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_0185:  stfld      valuetype [Engine]Engine.BoundingBox Game.ComponentBody/CollisionBox::Box
    IL_018a:  ldloca.s   V_7
    IL_018c:  ldc.i4.0
    IL_018d:  stfld      int32 Game.ComponentBody/CollisionBox::BlockValue
    IL_0192:  ldloc.s    V_7
    IL_0194:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>::Add(!0)
    IL_0199:  ldloc.s    V_4
    IL_019b:  ldloc.s    V_5
    IL_019d:  and
    IL_019e:  brfalse    IL_068f

    IL_01a3:  ldarg.3
    IL_01a4:  ldloca.s   V_7
    IL_01a6:  initobj    Game.ComponentBody/CollisionBox
    IL_01ac:  ldloca.s   V_7
    IL_01ae:  ldloc.0
    IL_01af:  conv.r4
    IL_01b0:  ldarg.2
    IL_01b1:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_01b6:  add
    IL_01b7:  ldloc.1
    IL_01b8:  conv.r4
    IL_01b9:  ldloc.2
    IL_01ba:  conv.r4
    IL_01bb:  ldarg.2
    IL_01bc:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_01c1:  add
    IL_01c2:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_01c7:  ldloc.0
    IL_01c8:  ldc.i4.1
    IL_01c9:  add
    IL_01ca:  conv.r4
    IL_01cb:  ldloc.1
    IL_01cc:  ldc.i4.1
    IL_01cd:  add
    IL_01ce:  conv.r4
    IL_01cf:  ldloc.2
    IL_01d0:  ldc.i4.1
    IL_01d1:  add
    IL_01d2:  conv.r4
    IL_01d3:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_01d8:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_01dd:  stfld      valuetype [Engine]Engine.BoundingBox Game.ComponentBody/CollisionBox::Box
    IL_01e2:  ldloca.s   V_7
    IL_01e4:  ldc.i4.0
    IL_01e5:  stfld      int32 Game.ComponentBody/CollisionBox::BlockValue
    IL_01ea:  ldloc.s    V_7
    IL_01ec:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>::Add(!0)
    IL_01f1:  ret

    IL_01f2:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_01f7:  ldarg.0
    IL_01f8:  ldfld      class Game.SubsystemTerrain Game.ComponentBody::m_subsystemTerrain
    IL_01fd:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0202:  ldloc.0
    IL_0203:  ldloc.1
    IL_0204:  ldc.i4.1
    IL_0205:  sub
    IL_0206:  ldloc.2
    IL_0207:  ldc.i4.1
    IL_0208:  add
    IL_0209:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                          int32,
                                                                          int32)
    IL_020e:  ldelem.ref
    IL_020f:  ldfld      bool Game.Block::IsCollidable
    IL_0214:  stloc.s    V_8
    IL_0216:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_021b:  ldarg.0
    IL_021c:  ldfld      class Game.SubsystemTerrain Game.ComponentBody::m_subsystemTerrain
    IL_0221:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0226:  ldloc.0
    IL_0227:  ldc.i4.1
    IL_0228:  sub
    IL_0229:  ldloc.1
    IL_022a:  ldc.i4.1
    IL_022b:  sub
    IL_022c:  ldloc.2
    IL_022d:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                          int32,
                                                                          int32)
    IL_0232:  ldelem.ref
    IL_0233:  ldfld      bool Game.Block::IsCollidable
    IL_0238:  stloc.s    V_9
    IL_023a:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_023f:  ldarg.0
    IL_0240:  ldfld      class Game.SubsystemTerrain Game.ComponentBody::m_subsystemTerrain
    IL_0245:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_024a:  ldloc.0
    IL_024b:  ldc.i4.1
    IL_024c:  sub
    IL_024d:  ldloc.1
    IL_024e:  ldc.i4.1
    IL_024f:  sub
    IL_0250:  ldloc.2
    IL_0251:  ldc.i4.1
    IL_0252:  add
    IL_0253:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                          int32,
                                                                          int32)
    IL_0258:  ldelem.ref
    IL_0259:  ldfld      bool Game.Block::IsCollidable
    IL_025e:  stloc.s    V_10
    IL_0260:  ldloc.s    V_8
    IL_0262:  brfalse.s  IL_0268

    IL_0264:  ldloc.s    V_9
    IL_0266:  brfalse.s  IL_0279

    IL_0268:  ldloc.s    V_8
    IL_026a:  brtrue.s   IL_0273

    IL_026c:  ldloc.s    V_9
    IL_026e:  ldc.i4.0
    IL_026f:  ceq
    IL_0271:  br.s       IL_0274

    IL_0273:  ldc.i4.0
    IL_0274:  ldloc.s    V_10
    IL_0276:  and
    IL_0277:  brfalse.s  IL_02c0

    IL_0279:  ldarg.3
    IL_027a:  ldloca.s   V_7
    IL_027c:  initobj    Game.ComponentBody/CollisionBox
    IL_0282:  ldloca.s   V_7
    IL_0284:  ldloc.0
    IL_0285:  conv.r4
    IL_0286:  ldloc.1
    IL_0287:  conv.r4
    IL_0288:  ldloc.2
    IL_0289:  conv.r4
    IL_028a:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_028f:  ldloc.0
    IL_0290:  ldc.i4.1
    IL_0291:  add
    IL_0292:  conv.r4
    IL_0293:  ldloc.1
    IL_0294:  ldc.i4.1
    IL_0295:  add
    IL_0296:  conv.r4
    IL_0297:  ldloc.2
    IL_0298:  ldc.i4.1
    IL_0299:  add
    IL_029a:  conv.r4
    IL_029b:  ldarg.2
    IL_029c:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_02a1:  sub
    IL_02a2:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_02a7:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_02ac:  stfld      valuetype [Engine]Engine.BoundingBox Game.ComponentBody/CollisionBox::Box
    IL_02b1:  ldloca.s   V_7
    IL_02b3:  ldc.i4.0
    IL_02b4:  stfld      int32 Game.ComponentBody/CollisionBox::BlockValue
    IL_02b9:  ldloc.s    V_7
    IL_02bb:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>::Add(!0)
    IL_02c0:  ldloc.s    V_8
    IL_02c2:  ldc.i4.0
    IL_02c3:  ceq
    IL_02c5:  ldloc.s    V_9
    IL_02c7:  and
    IL_02c8:  brtrue.s   IL_02db

    IL_02ca:  ldloc.s    V_8
    IL_02cc:  brtrue.s   IL_02d5

    IL_02ce:  ldloc.s    V_9
    IL_02d0:  ldc.i4.0
    IL_02d1:  ceq
    IL_02d3:  br.s       IL_02d6

    IL_02d5:  ldc.i4.0
    IL_02d6:  ldloc.s    V_10
    IL_02d8:  and
    IL_02d9:  brfalse.s  IL_0322

    IL_02db:  ldarg.3
    IL_02dc:  ldloca.s   V_7
    IL_02de:  initobj    Game.ComponentBody/CollisionBox
    IL_02e4:  ldloca.s   V_7
    IL_02e6:  ldloc.0
    IL_02e7:  conv.r4
    IL_02e8:  ldarg.2
    IL_02e9:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_02ee:  add
    IL_02ef:  ldloc.1
    IL_02f0:  conv.r4
    IL_02f1:  ldloc.2
    IL_02f2:  conv.r4
    IL_02f3:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_02f8:  ldloc.0
    IL_02f9:  ldc.i4.1
    IL_02fa:  add
    IL_02fb:  conv.r4
    IL_02fc:  ldloc.1
    IL_02fd:  ldc.i4.1
    IL_02fe:  add
    IL_02ff:  conv.r4
    IL_0300:  ldloc.2
    IL_0301:  ldc.i4.1
    IL_0302:  add
    IL_0303:  conv.r4
    IL_0304:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0309:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_030e:  stfld      valuetype [Engine]Engine.BoundingBox Game.ComponentBody/CollisionBox::Box
    IL_0313:  ldloca.s   V_7
    IL_0315:  ldc.i4.0
    IL_0316:  stfld      int32 Game.ComponentBody/CollisionBox::BlockValue
    IL_031b:  ldloc.s    V_7
    IL_031d:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>::Add(!0)
    IL_0322:  ldloc.s    V_8
    IL_0324:  ldloc.s    V_9
    IL_0326:  and
    IL_0327:  brfalse    IL_068f

    IL_032c:  ldarg.3
    IL_032d:  ldloca.s   V_7
    IL_032f:  initobj    Game.ComponentBody/CollisionBox
    IL_0335:  ldloca.s   V_7
    IL_0337:  ldloc.0
    IL_0338:  conv.r4
    IL_0339:  ldarg.2
    IL_033a:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_033f:  add
    IL_0340:  ldloc.1
    IL_0341:  conv.r4
    IL_0342:  ldloc.2
    IL_0343:  conv.r4
    IL_0344:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0349:  ldloc.0
    IL_034a:  ldc.i4.1
    IL_034b:  add
    IL_034c:  conv.r4
    IL_034d:  ldloc.1
    IL_034e:  ldc.i4.1
    IL_034f:  add
    IL_0350:  conv.r4
    IL_0351:  ldloc.2
    IL_0352:  ldc.i4.1
    IL_0353:  add
    IL_0354:  conv.r4
    IL_0355:  ldarg.2
    IL_0356:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_035b:  sub
    IL_035c:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0361:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_0366:  stfld      valuetype [Engine]Engine.BoundingBox Game.ComponentBody/CollisionBox::Box
    IL_036b:  ldloca.s   V_7
    IL_036d:  ldc.i4.0
    IL_036e:  stfld      int32 Game.ComponentBody/CollisionBox::BlockValue
    IL_0373:  ldloc.s    V_7
    IL_0375:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>::Add(!0)
    IL_037a:  ret

    IL_037b:  ldloc.3
    IL_037c:  brfalse    IL_050a

    IL_0381:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0386:  ldarg.0
    IL_0387:  ldfld      class Game.SubsystemTerrain Game.ComponentBody::m_subsystemTerrain
    IL_038c:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0391:  ldloc.0
    IL_0392:  ldloc.1
    IL_0393:  ldc.i4.1
    IL_0394:  sub
    IL_0395:  ldloc.2
    IL_0396:  ldc.i4.1
    IL_0397:  sub
    IL_0398:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                          int32,
                                                                          int32)
    IL_039d:  ldelem.ref
    IL_039e:  ldfld      bool Game.Block::IsCollidable
    IL_03a3:  stloc.s    V_11
    IL_03a5:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_03aa:  ldarg.0
    IL_03ab:  ldfld      class Game.SubsystemTerrain Game.ComponentBody::m_subsystemTerrain
    IL_03b0:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_03b5:  ldloc.0
    IL_03b6:  ldc.i4.1
    IL_03b7:  add
    IL_03b8:  ldloc.1
    IL_03b9:  ldc.i4.1
    IL_03ba:  sub
    IL_03bb:  ldloc.2
    IL_03bc:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                          int32,
                                                                          int32)
    IL_03c1:  ldelem.ref
    IL_03c2:  ldfld      bool Game.Block::IsCollidable
    IL_03c7:  stloc.s    V_12
    IL_03c9:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_03ce:  ldarg.0
    IL_03cf:  ldfld      class Game.SubsystemTerrain Game.ComponentBody::m_subsystemTerrain
    IL_03d4:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_03d9:  ldloc.0
    IL_03da:  ldc.i4.1
    IL_03db:  add
    IL_03dc:  ldloc.1
    IL_03dd:  ldc.i4.1
    IL_03de:  sub
    IL_03df:  ldloc.2
    IL_03e0:  ldc.i4.1
    IL_03e1:  sub
    IL_03e2:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                          int32,
                                                                          int32)
    IL_03e7:  ldelem.ref
    IL_03e8:  ldfld      bool Game.Block::IsCollidable
    IL_03ed:  stloc.s    V_13
    IL_03ef:  ldloc.s    V_11
    IL_03f1:  brfalse.s  IL_03f7

    IL_03f3:  ldloc.s    V_12
    IL_03f5:  brfalse.s  IL_0408

    IL_03f7:  ldloc.s    V_11
    IL_03f9:  brtrue.s   IL_0402

    IL_03fb:  ldloc.s    V_12
    IL_03fd:  ldc.i4.0
    IL_03fe:  ceq
    IL_0400:  br.s       IL_0403

    IL_0402:  ldc.i4.0
    IL_0403:  ldloc.s    V_13
    IL_0405:  and
    IL_0406:  brfalse.s  IL_044f

    IL_0408:  ldarg.3
    IL_0409:  ldloca.s   V_7
    IL_040b:  initobj    Game.ComponentBody/CollisionBox
    IL_0411:  ldloca.s   V_7
    IL_0413:  ldloc.0
    IL_0414:  conv.r4
    IL_0415:  ldloc.1
    IL_0416:  conv.r4
    IL_0417:  ldloc.2
    IL_0418:  conv.r4
    IL_0419:  ldarg.2
    IL_041a:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_041f:  add
    IL_0420:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0425:  ldloc.0
    IL_0426:  ldc.i4.1
    IL_0427:  add
    IL_0428:  conv.r4
    IL_0429:  ldloc.1
    IL_042a:  ldc.i4.1
    IL_042b:  add
    IL_042c:  conv.r4
    IL_042d:  ldloc.2
    IL_042e:  ldc.i4.1
    IL_042f:  add
    IL_0430:  conv.r4
    IL_0431:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0436:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_043b:  stfld      valuetype [Engine]Engine.BoundingBox Game.ComponentBody/CollisionBox::Box
    IL_0440:  ldloca.s   V_7
    IL_0442:  ldc.i4.0
    IL_0443:  stfld      int32 Game.ComponentBody/CollisionBox::BlockValue
    IL_0448:  ldloc.s    V_7
    IL_044a:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>::Add(!0)
    IL_044f:  ldloc.s    V_11
    IL_0451:  ldc.i4.0
    IL_0452:  ceq
    IL_0454:  ldloc.s    V_12
    IL_0456:  and
    IL_0457:  brtrue.s   IL_046a

    IL_0459:  ldloc.s    V_11
    IL_045b:  brtrue.s   IL_0464

    IL_045d:  ldloc.s    V_12
    IL_045f:  ldc.i4.0
    IL_0460:  ceq
    IL_0462:  br.s       IL_0465

    IL_0464:  ldc.i4.0
    IL_0465:  ldloc.s    V_13
    IL_0467:  and
    IL_0468:  brfalse.s  IL_04b1

    IL_046a:  ldarg.3
    IL_046b:  ldloca.s   V_7
    IL_046d:  initobj    Game.ComponentBody/CollisionBox
    IL_0473:  ldloca.s   V_7
    IL_0475:  ldloc.0
    IL_0476:  conv.r4
    IL_0477:  ldloc.1
    IL_0478:  conv.r4
    IL_0479:  ldloc.2
    IL_047a:  conv.r4
    IL_047b:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0480:  ldloc.0
    IL_0481:  ldc.i4.1
    IL_0482:  add
    IL_0483:  conv.r4
    IL_0484:  ldarg.2
    IL_0485:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_048a:  sub
    IL_048b:  ldloc.1
    IL_048c:  ldc.i4.1
    IL_048d:  add
    IL_048e:  conv.r4
    IL_048f:  ldloc.2
    IL_0490:  ldc.i4.1
    IL_0491:  add
    IL_0492:  conv.r4
    IL_0493:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0498:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_049d:  stfld      valuetype [Engine]Engine.BoundingBox Game.ComponentBody/CollisionBox::Box
    IL_04a2:  ldloca.s   V_7
    IL_04a4:  ldc.i4.0
    IL_04a5:  stfld      int32 Game.ComponentBody/CollisionBox::BlockValue
    IL_04aa:  ldloc.s    V_7
    IL_04ac:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>::Add(!0)
    IL_04b1:  ldloc.s    V_11
    IL_04b3:  ldloc.s    V_12
    IL_04b5:  and
    IL_04b6:  brfalse    IL_068f

    IL_04bb:  ldarg.3
    IL_04bc:  ldloca.s   V_7
    IL_04be:  initobj    Game.ComponentBody/CollisionBox
    IL_04c4:  ldloca.s   V_7
    IL_04c6:  ldloc.0
    IL_04c7:  conv.r4
    IL_04c8:  ldloc.1
    IL_04c9:  conv.r4
    IL_04ca:  ldloc.2
    IL_04cb:  conv.r4
    IL_04cc:  ldarg.2
    IL_04cd:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_04d2:  add
    IL_04d3:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_04d8:  ldloc.0
    IL_04d9:  ldc.i4.1
    IL_04da:  add
    IL_04db:  conv.r4
    IL_04dc:  ldarg.2
    IL_04dd:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_04e2:  sub
    IL_04e3:  ldloc.1
    IL_04e4:  ldc.i4.1
    IL_04e5:  add
    IL_04e6:  conv.r4
    IL_04e7:  ldloc.2
    IL_04e8:  ldc.i4.1
    IL_04e9:  add
    IL_04ea:  conv.r4
    IL_04eb:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_04f0:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_04f5:  stfld      valuetype [Engine]Engine.BoundingBox Game.ComponentBody/CollisionBox::Box
    IL_04fa:  ldloca.s   V_7
    IL_04fc:  ldc.i4.0
    IL_04fd:  stfld      int32 Game.ComponentBody/CollisionBox::BlockValue
    IL_0502:  ldloc.s    V_7
    IL_0504:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>::Add(!0)
    IL_0509:  ret

    IL_050a:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_050f:  ldarg.0
    IL_0510:  ldfld      class Game.SubsystemTerrain Game.ComponentBody::m_subsystemTerrain
    IL_0515:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_051a:  ldloc.0
    IL_051b:  ldloc.1
    IL_051c:  ldc.i4.1
    IL_051d:  sub
    IL_051e:  ldloc.2
    IL_051f:  ldc.i4.1
    IL_0520:  add
    IL_0521:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                          int32,
                                                                          int32)
    IL_0526:  ldelem.ref
    IL_0527:  ldfld      bool Game.Block::IsCollidable
    IL_052c:  stloc.s    V_14
    IL_052e:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0533:  ldarg.0
    IL_0534:  ldfld      class Game.SubsystemTerrain Game.ComponentBody::m_subsystemTerrain
    IL_0539:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_053e:  ldloc.0
    IL_053f:  ldc.i4.1
    IL_0540:  add
    IL_0541:  ldloc.1
    IL_0542:  ldc.i4.1
    IL_0543:  sub
    IL_0544:  ldloc.2
    IL_0545:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                          int32,
                                                                          int32)
    IL_054a:  ldelem.ref
    IL_054b:  ldfld      bool Game.Block::IsCollidable
    IL_0550:  stloc.s    V_15
    IL_0552:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0557:  ldarg.0
    IL_0558:  ldfld      class Game.SubsystemTerrain Game.ComponentBody::m_subsystemTerrain
    IL_055d:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0562:  ldloc.0
    IL_0563:  ldc.i4.1
    IL_0564:  add
    IL_0565:  ldloc.1
    IL_0566:  ldc.i4.1
    IL_0567:  sub
    IL_0568:  ldloc.2
    IL_0569:  ldc.i4.1
    IL_056a:  add
    IL_056b:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                          int32,
                                                                          int32)
    IL_0570:  ldelem.ref
    IL_0571:  ldfld      bool Game.Block::IsCollidable
    IL_0576:  stloc.s    V_16
    IL_0578:  ldloc.s    V_14
    IL_057a:  brfalse.s  IL_0580

    IL_057c:  ldloc.s    V_15
    IL_057e:  brfalse.s  IL_0591

    IL_0580:  ldloc.s    V_14
    IL_0582:  brtrue.s   IL_058b

    IL_0584:  ldloc.s    V_15
    IL_0586:  ldc.i4.0
    IL_0587:  ceq
    IL_0589:  br.s       IL_058c

    IL_058b:  ldc.i4.0
    IL_058c:  ldloc.s    V_16
    IL_058e:  and
    IL_058f:  brfalse.s  IL_05d8

    IL_0591:  ldarg.3
    IL_0592:  ldloca.s   V_7
    IL_0594:  initobj    Game.ComponentBody/CollisionBox
    IL_059a:  ldloca.s   V_7
    IL_059c:  ldloc.0
    IL_059d:  conv.r4
    IL_059e:  ldloc.1
    IL_059f:  conv.r4
    IL_05a0:  ldloc.2
    IL_05a1:  conv.r4
    IL_05a2:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_05a7:  ldloc.0
    IL_05a8:  ldc.i4.1
    IL_05a9:  add
    IL_05aa:  conv.r4
    IL_05ab:  ldloc.1
    IL_05ac:  ldc.i4.1
    IL_05ad:  add
    IL_05ae:  conv.r4
    IL_05af:  ldloc.2
    IL_05b0:  ldc.i4.1
    IL_05b1:  add
    IL_05b2:  conv.r4
    IL_05b3:  ldarg.2
    IL_05b4:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_05b9:  sub
    IL_05ba:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_05bf:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_05c4:  stfld      valuetype [Engine]Engine.BoundingBox Game.ComponentBody/CollisionBox::Box
    IL_05c9:  ldloca.s   V_7
    IL_05cb:  ldc.i4.0
    IL_05cc:  stfld      int32 Game.ComponentBody/CollisionBox::BlockValue
    IL_05d1:  ldloc.s    V_7
    IL_05d3:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>::Add(!0)
    IL_05d8:  ldloc.s    V_14
    IL_05da:  ldc.i4.0
    IL_05db:  ceq
    IL_05dd:  ldloc.s    V_15
    IL_05df:  and
    IL_05e0:  brtrue.s   IL_05f3

    IL_05e2:  ldloc.s    V_14
    IL_05e4:  brtrue.s   IL_05ed

    IL_05e6:  ldloc.s    V_15
    IL_05e8:  ldc.i4.0
    IL_05e9:  ceq
    IL_05eb:  br.s       IL_05ee

    IL_05ed:  ldc.i4.0
    IL_05ee:  ldloc.s    V_16
    IL_05f0:  and
    IL_05f1:  brfalse.s  IL_063a

    IL_05f3:  ldarg.3
    IL_05f4:  ldloca.s   V_7
    IL_05f6:  initobj    Game.ComponentBody/CollisionBox
    IL_05fc:  ldloca.s   V_7
    IL_05fe:  ldloc.0
    IL_05ff:  conv.r4
    IL_0600:  ldloc.1
    IL_0601:  conv.r4
    IL_0602:  ldloc.2
    IL_0603:  conv.r4
    IL_0604:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0609:  ldloc.0
    IL_060a:  ldc.i4.1
    IL_060b:  add
    IL_060c:  conv.r4
    IL_060d:  ldarg.2
    IL_060e:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0613:  sub
    IL_0614:  ldloc.1
    IL_0615:  ldc.i4.1
    IL_0616:  add
    IL_0617:  conv.r4
    IL_0618:  ldloc.2
    IL_0619:  ldc.i4.1
    IL_061a:  add
    IL_061b:  conv.r4
    IL_061c:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0621:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_0626:  stfld      valuetype [Engine]Engine.BoundingBox Game.ComponentBody/CollisionBox::Box
    IL_062b:  ldloca.s   V_7
    IL_062d:  ldc.i4.0
    IL_062e:  stfld      int32 Game.ComponentBody/CollisionBox::BlockValue
    IL_0633:  ldloc.s    V_7
    IL_0635:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>::Add(!0)
    IL_063a:  ldloc.s    V_14
    IL_063c:  ldloc.s    V_15
    IL_063e:  and
    IL_063f:  brfalse.s  IL_068f

    IL_0641:  ldarg.3
    IL_0642:  ldloca.s   V_7
    IL_0644:  initobj    Game.ComponentBody/CollisionBox
    IL_064a:  ldloca.s   V_7
    IL_064c:  ldloc.0
    IL_064d:  conv.r4
    IL_064e:  ldloc.1
    IL_064f:  conv.r4
    IL_0650:  ldloc.2
    IL_0651:  conv.r4
    IL_0652:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0657:  ldloc.0
    IL_0658:  ldc.i4.1
    IL_0659:  add
    IL_065a:  conv.r4
    IL_065b:  ldarg.2
    IL_065c:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0661:  sub
    IL_0662:  ldloc.1
    IL_0663:  ldc.i4.1
    IL_0664:  add
    IL_0665:  conv.r4
    IL_0666:  ldloc.2
    IL_0667:  ldc.i4.1
    IL_0668:  add
    IL_0669:  conv.r4
    IL_066a:  ldarg.2
    IL_066b:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0670:  sub
    IL_0671:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0676:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_067b:  stfld      valuetype [Engine]Engine.BoundingBox Game.ComponentBody/CollisionBox::Box
    IL_0680:  ldloca.s   V_7
    IL_0682:  ldc.i4.0
    IL_0683:  stfld      int32 Game.ComponentBody/CollisionBox::BlockValue
    IL_0688:  ldloc.s    V_7
    IL_068a:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>::Add(!0)
    IL_068f:  ret
  } // end of method ComponentBody::FindSneakCollisionBoxes

  .method private hidebysig instance bool 
          IsColliding(valuetype [Engine]Engine.BoundingBox 'box',
                      class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox> collisionBoxes) cil managed
  {
    // 代码大小       47 (0x2f)
    .maxstack  3
    .locals init (int32 V_0)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  br.s       IL_0024

    IL_0004:  ldarga.s   'box'
    IL_0006:  ldarg.2
    IL_0007:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>::get_Array()
    IL_000c:  ldloc.0
    IL_000d:  ldelema    Game.ComponentBody/CollisionBox
    IL_0012:  ldfld      valuetype [Engine]Engine.BoundingBox Game.ComponentBody/CollisionBox::Box
    IL_0017:  call       instance bool [Engine]Engine.BoundingBox::Intersection(valuetype [Engine]Engine.BoundingBox)
    IL_001c:  brfalse.s  IL_0020

    IL_001e:  ldc.i4.1
    IL_001f:  ret

    IL_0020:  ldloc.0
    IL_0021:  ldc.i4.1
    IL_0022:  add
    IL_0023:  stloc.0
    IL_0024:  ldloc.0
    IL_0025:  ldarg.2
    IL_0026:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>::get_Count()
    IL_002b:  blt.s      IL_0004

    IL_002d:  ldc.i4.0
    IL_002e:  ret
  } // end of method ComponentBody::IsColliding

  .method private hidebysig instance float32 
          CalculatePushBack(valuetype [Engine]Engine.BoundingBox 'box',
                            int32 axis,
                            class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox> collisionBoxes,
                            [out] valuetype Game.ComponentBody/CollisionBox& pushingCollisionBox) cil managed
  {
    // 代码大小       94 (0x5e)
    .maxstack  3
    .locals init (float32 V_0,
             int32 V_1,
             float32 V_2)
    IL_0000:  ldarg.s    pushingCollisionBox
    IL_0002:  initobj    Game.ComponentBody/CollisionBox
    IL_0008:  ldc.r4     0.0
    IL_000d:  stloc.0
    IL_000e:  ldc.i4.0
    IL_000f:  stloc.1
    IL_0010:  br.s       IL_0053

    IL_0012:  ldarga.s   'box'
    IL_0014:  ldarg.3
    IL_0015:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>::get_Array()
    IL_001a:  ldloc.1
    IL_001b:  ldelema    Game.ComponentBody/CollisionBox
    IL_0020:  ldflda     valuetype [Engine]Engine.BoundingBox Game.ComponentBody/CollisionBox::Box
    IL_0025:  ldarg.2
    IL_0026:  call       float32 Game.ComponentBody::CalculateBoxBoxOverlap(valuetype [Engine]Engine.BoundingBox&,
                                                                            valuetype [Engine]Engine.BoundingBox&,
                                                                            int32)
    IL_002b:  stloc.2
    IL_002c:  ldloc.2
    IL_002d:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_0032:  ldloc.0
    IL_0033:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_0038:  ble.un.s   IL_004f

    IL_003a:  ldloc.2
    IL_003b:  stloc.0
    IL_003c:  ldarg.s    pushingCollisionBox
    IL_003e:  ldarg.3
    IL_003f:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>::get_Array()
    IL_0044:  ldloc.1
    IL_0045:  ldelem     Game.ComponentBody/CollisionBox
    IL_004a:  stobj      Game.ComponentBody/CollisionBox
    IL_004f:  ldloc.1
    IL_0050:  ldc.i4.1
    IL_0051:  add
    IL_0052:  stloc.1
    IL_0053:  ldloc.1
    IL_0054:  ldarg.3
    IL_0055:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>::get_Count()
    IL_005a:  blt.s      IL_0012

    IL_005c:  ldloc.0
    IL_005d:  ret
  } // end of method ComponentBody::CalculatePushBack

  .method private hidebysig instance float32 
          CalculateSmoothRisePushBack(valuetype [Engine]Engine.BoundingBox normalBox,
                                      valuetype [Engine]Engine.BoundingBox smoothRiseBox,
                                      int32 axis,
                                      class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox> collisionBoxes,
                                      [out] valuetype Game.ComponentBody/CollisionBox& pushingCollisionBox) cil managed
  {
    // 代码大小       168 (0xa8)
    .maxstack  3
    .locals init (float32 V_0,
             int32 V_1,
             float32 V_2)
    IL_0000:  ldarg.s    pushingCollisionBox
    IL_0002:  initobj    Game.ComponentBody/CollisionBox
    IL_0008:  ldc.r4     0.0
    IL_000d:  stloc.0
    IL_000e:  ldc.i4.0
    IL_000f:  stloc.1
    IL_0010:  br         IL_0099

    IL_0015:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_001a:  ldarg.s    collisionBoxes
    IL_001c:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>::get_Array()
    IL_0021:  ldloc.1
    IL_0022:  ldelema    Game.ComponentBody/CollisionBox
    IL_0027:  ldfld      int32 Game.ComponentBody/CollisionBox::BlockValue
    IL_002c:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0031:  ldelem.ref
    IL_0032:  ldfld      bool Game.Block::NoSmoothRise
    IL_0037:  brfalse.s  IL_0056

    IL_0039:  ldarga.s   normalBox
    IL_003b:  ldarg.s    collisionBoxes
    IL_003d:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>::get_Array()
    IL_0042:  ldloc.1
    IL_0043:  ldelema    Game.ComponentBody/CollisionBox
    IL_0048:  ldflda     valuetype [Engine]Engine.BoundingBox Game.ComponentBody/CollisionBox::Box
    IL_004d:  ldarg.3
    IL_004e:  call       float32 Game.ComponentBody::CalculateBoxBoxOverlap(valuetype [Engine]Engine.BoundingBox&,
                                                                            valuetype [Engine]Engine.BoundingBox&,
                                                                            int32)
    IL_0053:  stloc.2
    IL_0054:  br.s       IL_0071

    IL_0056:  ldarga.s   smoothRiseBox
    IL_0058:  ldarg.s    collisionBoxes
    IL_005a:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>::get_Array()
    IL_005f:  ldloc.1
    IL_0060:  ldelema    Game.ComponentBody/CollisionBox
    IL_0065:  ldflda     valuetype [Engine]Engine.BoundingBox Game.ComponentBody/CollisionBox::Box
    IL_006a:  ldarg.3
    IL_006b:  call       float32 Game.ComponentBody::CalculateBoxBoxOverlap(valuetype [Engine]Engine.BoundingBox&,
                                                                            valuetype [Engine]Engine.BoundingBox&,
                                                                            int32)
    IL_0070:  stloc.2
    IL_0071:  ldloc.2
    IL_0072:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_0077:  ldloc.0
    IL_0078:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_007d:  ble.un.s   IL_0095

    IL_007f:  ldloc.2
    IL_0080:  stloc.0
    IL_0081:  ldarg.s    pushingCollisionBox
    IL_0083:  ldarg.s    collisionBoxes
    IL_0085:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>::get_Array()
    IL_008a:  ldloc.1
    IL_008b:  ldelem     Game.ComponentBody/CollisionBox
    IL_0090:  stobj      Game.ComponentBody/CollisionBox
    IL_0095:  ldloc.1
    IL_0096:  ldc.i4.1
    IL_0097:  add
    IL_0098:  stloc.1
    IL_0099:  ldloc.1
    IL_009a:  ldarg.s    collisionBoxes
    IL_009c:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>::get_Count()
    IL_00a1:  blt        IL_0015

    IL_00a6:  ldloc.0
    IL_00a7:  ret
  } // end of method ComponentBody::CalculateSmoothRisePushBack

  .method private hidebysig static float32 
          CalculateBoxBoxOverlap(valuetype [Engine]Engine.BoundingBox& b1,
                                 valuetype [Engine]Engine.BoundingBox& b2,
                                 int32 axis) cil managed
  {
    // 代码大小       569 (0x239)
    .maxstack  3
    .locals init (float32 V_0,
             float32 V_1,
             float32 V_2,
             float32 V_3,
             float32 V_4,
             float32 V_5,
             float32 V_6,
             float32 V_7,
             float32 V_8,
             float32 V_9,
             float32 V_10,
             float32 V_11,
             float32 V_12,
             float32 V_13,
             float32 V_14)
    IL_0000:  ldarg.0
    IL_0001:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_0006:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_000b:  ldarg.1
    IL_000c:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_0011:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0016:  ble.s      IL_0090

    IL_0018:  ldarg.0
    IL_0019:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_001e:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0023:  ldarg.1
    IL_0024:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_0029:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_002e:  bge.s      IL_0090

    IL_0030:  ldarg.0
    IL_0031:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_0036:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_003b:  ldarg.1
    IL_003c:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_0041:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0046:  ble.s      IL_0090

    IL_0048:  ldarg.0
    IL_0049:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_004e:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0053:  ldarg.1
    IL_0054:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_0059:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_005e:  bge.s      IL_0090

    IL_0060:  ldarg.0
    IL_0061:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_0066:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_006b:  ldarg.1
    IL_006c:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_0071:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0076:  ble.s      IL_0090

    IL_0078:  ldarg.0
    IL_0079:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_007e:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0083:  ldarg.1
    IL_0084:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_0089:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_008e:  blt.un.s   IL_0096

    IL_0090:  ldc.r4     0.0
    IL_0095:  ret

    IL_0096:  ldarg.2
    IL_0097:  brfalse.s  IL_00a5

    IL_0099:  ldarg.2
    IL_009a:  ldc.i4.1
    IL_009b:  beq        IL_0125

    IL_00a0:  br         IL_01af

    IL_00a5:  ldarg.0
    IL_00a6:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_00ab:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_00b0:  ldarg.0
    IL_00b1:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_00b6:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_00bb:  add
    IL_00bc:  stloc.0
    IL_00bd:  ldarg.1
    IL_00be:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_00c3:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_00c8:  ldarg.1
    IL_00c9:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_00ce:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_00d3:  add
    IL_00d4:  stloc.1
    IL_00d5:  ldarg.0
    IL_00d6:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_00db:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_00e0:  ldarg.0
    IL_00e1:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_00e6:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_00eb:  sub
    IL_00ec:  ldarg.1
    IL_00ed:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_00f2:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_00f7:  ldarg.1
    IL_00f8:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_00fd:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0102:  sub
    IL_0103:  stloc.2
    IL_0104:  ldloc.1
    IL_0105:  ldloc.0
    IL_0106:  sub
    IL_0107:  stloc.3
    IL_0108:  ldloc.2
    IL_0109:  add
    IL_010a:  stloc.s    V_4
    IL_010c:  ldc.r4     0.5
    IL_0111:  ldloc.3
    IL_0112:  ldc.r4     0.0
    IL_0117:  bgt.s      IL_011f

    IL_0119:  ldloc.3
    IL_011a:  ldloc.s    V_4
    IL_011c:  add
    IL_011d:  br.s       IL_0123

    IL_011f:  ldloc.3
    IL_0120:  ldloc.s    V_4
    IL_0122:  sub
    IL_0123:  mul
    IL_0124:  ret

    IL_0125:  ldarg.0
    IL_0126:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_012b:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0130:  ldarg.0
    IL_0131:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_0136:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_013b:  add
    IL_013c:  stloc.s    V_5
    IL_013e:  ldarg.1
    IL_013f:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_0144:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0149:  ldarg.1
    IL_014a:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_014f:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0154:  add
    IL_0155:  stloc.s    V_6
    IL_0157:  ldarg.0
    IL_0158:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_015d:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0162:  ldarg.0
    IL_0163:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_0168:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_016d:  sub
    IL_016e:  ldarg.1
    IL_016f:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_0174:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0179:  ldarg.1
    IL_017a:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_017f:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0184:  sub
    IL_0185:  stloc.s    V_7
    IL_0187:  ldloc.s    V_6
    IL_0189:  ldloc.s    V_5
    IL_018b:  sub
    IL_018c:  stloc.s    V_8
    IL_018e:  ldloc.s    V_7
    IL_0190:  add
    IL_0191:  stloc.s    V_9
    IL_0193:  ldc.r4     0.5
    IL_0198:  ldloc.s    V_8
    IL_019a:  ldc.r4     0.0
    IL_019f:  bgt.s      IL_01a8

    IL_01a1:  ldloc.s    V_8
    IL_01a3:  ldloc.s    V_9
    IL_01a5:  add
    IL_01a6:  br.s       IL_01ad

    IL_01a8:  ldloc.s    V_8
    IL_01aa:  ldloc.s    V_9
    IL_01ac:  sub
    IL_01ad:  mul
    IL_01ae:  ret

    IL_01af:  ldarg.0
    IL_01b0:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_01b5:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_01ba:  ldarg.0
    IL_01bb:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_01c0:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_01c5:  add
    IL_01c6:  stloc.s    V_10
    IL_01c8:  ldarg.1
    IL_01c9:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_01ce:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_01d3:  ldarg.1
    IL_01d4:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_01d9:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_01de:  add
    IL_01df:  stloc.s    V_11
    IL_01e1:  ldarg.0
    IL_01e2:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_01e7:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_01ec:  ldarg.0
    IL_01ed:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_01f2:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_01f7:  sub
    IL_01f8:  ldarg.1
    IL_01f9:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_01fe:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0203:  ldarg.1
    IL_0204:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_0209:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_020e:  sub
    IL_020f:  stloc.s    V_12
    IL_0211:  ldloc.s    V_11
    IL_0213:  ldloc.s    V_10
    IL_0215:  sub
    IL_0216:  stloc.s    V_13
    IL_0218:  ldloc.s    V_12
    IL_021a:  add
    IL_021b:  stloc.s    V_14
    IL_021d:  ldc.r4     0.5
    IL_0222:  ldloc.s    V_13
    IL_0224:  ldc.r4     0.0
    IL_0229:  bgt.s      IL_0232

    IL_022b:  ldloc.s    V_13
    IL_022d:  ldloc.s    V_14
    IL_022f:  add
    IL_0230:  br.s       IL_0237

    IL_0232:  ldloc.s    V_13
    IL_0234:  ldloc.s    V_14
    IL_0236:  sub
    IL_0237:  mul
    IL_0238:  ret
  } // end of method ComponentBody::CalculateBoxBoxOverlap

  .method private hidebysig static float32 
          GetVectorComponent(valuetype [Engine]Engine.Vector3 v,
                             int32 axis) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  brtrue.s   IL_000a

    IL_0003:  ldarg.0
    IL_0004:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0009:  ret

    IL_000a:  ldarg.1
    IL_000b:  ldc.i4.1
    IL_000c:  bne.un.s   IL_0015

    IL_000e:  ldarg.0
    IL_000f:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0014:  ret

    IL_0015:  ldarg.0
    IL_0016:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_001b:  ret
  } // end of method ComponentBody::GetVectorComponent

  .method private hidebysig static void  InelasticCollision(float32 v1,
                                                            float32 v2,
                                                            float32 m1,
                                                            float32 m2,
                                                            float32 cr,
                                                            [out] float32& result1,
                                                            [out] float32& result2) cil managed
  {
    // 代码大小       53 (0x35)
    .maxstack  4
    .locals init (float32 V_0)
    IL_0000:  ldc.r4     1.
    IL_0005:  ldarg.2
    IL_0006:  ldarg.3
    IL_0007:  add
    IL_0008:  div
    IL_0009:  stloc.0
    IL_000a:  ldarg.s    result1
    IL_000c:  ldarg.s    cr
    IL_000e:  ldarg.3
    IL_000f:  mul
    IL_0010:  ldarg.1
    IL_0011:  ldarg.0
    IL_0012:  sub
    IL_0013:  mul
    IL_0014:  ldarg.2
    IL_0015:  ldarg.0
    IL_0016:  mul
    IL_0017:  add
    IL_0018:  ldarg.3
    IL_0019:  ldarg.1
    IL_001a:  mul
    IL_001b:  add
    IL_001c:  ldloc.0
    IL_001d:  mul
    IL_001e:  stind.r4
    IL_001f:  ldarg.s    result2
    IL_0021:  ldarg.s    cr
    IL_0023:  ldarg.2
    IL_0024:  mul
    IL_0025:  ldarg.0
    IL_0026:  ldarg.1
    IL_0027:  sub
    IL_0028:  mul
    IL_0029:  ldarg.2
    IL_002a:  ldarg.0
    IL_002b:  mul
    IL_002c:  add
    IL_002d:  ldarg.3
    IL_002e:  ldarg.1
    IL_002f:  mul
    IL_0030:  add
    IL_0031:  ldloc.0
    IL_0032:  mul
    IL_0033:  stind.r4
    IL_0034:  ret
  } // end of method ComponentBody::InelasticCollision

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       84 (0x54)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.Random::.ctor()
    IL_0006:  stfld      class Game.Random Game.ComponentBody::m_random
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>::.ctor()
    IL_0011:  stfld      class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox> Game.ComponentBody::m_collisionBoxes
    IL_0016:  ldarg.0
    IL_0017:  newobj     instance void class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>::.ctor()
    IL_001c:  stfld      class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> Game.ComponentBody::m_componentBodies
    IL_0021:  ldarg.0
    IL_0022:  newobj     instance void class [Engine]Engine.DynamicArray`1<class Game.IMovingBlockSet>::.ctor()
    IL_0027:  stfld      class [Engine]Engine.DynamicArray`1<class Game.IMovingBlockSet> Game.ComponentBody::m_movingBlockSets
    IL_002c:  ldarg.0
    IL_002d:  newobj     instance void class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>::.ctor()
    IL_0032:  stfld      class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox> Game.ComponentBody::m_bodiesCollisionBoxes
    IL_0037:  ldarg.0
    IL_0038:  newobj     instance void class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>::.ctor()
    IL_003d:  stfld      class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox> Game.ComponentBody::m_movingBlocksCollisionBoxes
    IL_0042:  ldarg.0
    IL_0043:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentBody>::.ctor()
    IL_0048:  stfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentBody> Game.ComponentBody::m_childBodies
    IL_004d:  ldarg.0
    IL_004e:  call       instance void Game.ComponentFrame::.ctor()
    IL_0053:  ret
  } // end of method ComponentBody::.ctor

  .event class [System.Runtime]System.Action`1<class Game.ComponentBody> CollidedWithBody
  {
    .addon instance void Game.ComponentBody::add_CollidedWithBody(class [System.Runtime]System.Action`1<class Game.ComponentBody>)
    .removeon instance void Game.ComponentBody::remove_CollidedWithBody(class [System.Runtime]System.Action`1<class Game.ComponentBody>)
  } // end of event ComponentBody::CollidedWithBody
  .property instance valuetype [Engine]Engine.Vector3
          BoxSize()
  {
    .get instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_BoxSize()
    .set instance void Game.ComponentBody::set_BoxSize(valuetype [Engine]Engine.Vector3)
  } // end of property ComponentBody::BoxSize
  .property instance float32 Mass()
  {
    .get instance float32 Game.ComponentBody::get_Mass()
    .set instance void Game.ComponentBody::set_Mass(float32)
  } // end of property ComponentBody::Mass
  .property instance float32 Density()
  {
    .get instance float32 Game.ComponentBody::get_Density()
    .set instance void Game.ComponentBody::set_Density(float32)
  } // end of property ComponentBody::Density
  .property instance valuetype [Engine]Engine.Vector2
          AirDrag()
  {
    .get instance valuetype [Engine]Engine.Vector2 Game.ComponentBody::get_AirDrag()
    .set instance void Game.ComponentBody::set_AirDrag(valuetype [Engine]Engine.Vector2)
  } // end of property ComponentBody::AirDrag
  .property instance valuetype [Engine]Engine.Vector2
          WaterDrag()
  {
    .get instance valuetype [Engine]Engine.Vector2 Game.ComponentBody::get_WaterDrag()
    .set instance void Game.ComponentBody::set_WaterDrag(valuetype [Engine]Engine.Vector2)
  } // end of property ComponentBody::WaterDrag
  .property instance float32 WaterSwayAngle()
  {
    .get instance float32 Game.ComponentBody::get_WaterSwayAngle()
    .set instance void Game.ComponentBody::set_WaterSwayAngle(float32)
  } // end of property ComponentBody::WaterSwayAngle
  .property instance float32 WaterTurnSpeed()
  {
    .get instance float32 Game.ComponentBody::get_WaterTurnSpeed()
    .set instance void Game.ComponentBody::set_WaterTurnSpeed(float32)
  } // end of property ComponentBody::WaterTurnSpeed
  .property instance float32 ImmersionDepth()
  {
    .get instance float32 Game.ComponentBody::get_ImmersionDepth()
    .set instance void Game.ComponentBody::set_ImmersionDepth(float32)
  } // end of property ComponentBody::ImmersionDepth
  .property instance float32 ImmersionFactor()
  {
    .get instance float32 Game.ComponentBody::get_ImmersionFactor()
    .set instance void Game.ComponentBody::set_ImmersionFactor(float32)
  } // end of property ComponentBody::ImmersionFactor
  .property instance class Game.FluidBlock
          ImmersionFluidBlock()
  {
    .get instance class Game.FluidBlock Game.ComponentBody::get_ImmersionFluidBlock()
    .set instance void Game.ComponentBody::set_ImmersionFluidBlock(class Game.FluidBlock)
  } // end of property ComponentBody::ImmersionFluidBlock
  .property instance valuetype [System.Runtime]System.Nullable`1<int32>
          StandingOnValue()
  {
    .get instance valuetype [System.Runtime]System.Nullable`1<int32> Game.ComponentBody::get_StandingOnValue()
    .set instance void Game.ComponentBody::set_StandingOnValue(valuetype [System.Runtime]System.Nullable`1<int32>)
  } // end of property ComponentBody::StandingOnValue
  .property instance class Game.ComponentBody
          StandingOnBody()
  {
    .get instance class Game.ComponentBody Game.ComponentBody::get_StandingOnBody()
    .set instance void Game.ComponentBody::set_StandingOnBody(class Game.ComponentBody)
  } // end of property ComponentBody::StandingOnBody
  .property instance valuetype [Engine]Engine.Vector3
          StandingOnVelocity()
  {
    .get instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_StandingOnVelocity()
    .set instance void Game.ComponentBody::set_StandingOnVelocity(valuetype [Engine]Engine.Vector3)
  } // end of property ComponentBody::StandingOnVelocity
  .property instance valuetype [Engine]Engine.Vector3
          Velocity()
  {
    .get instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_Velocity()
    .set instance void Game.ComponentBody::set_Velocity(valuetype [Engine]Engine.Vector3)
  } // end of property ComponentBody::Velocity
  .property instance bool IsSneaking()
  {
    .get instance bool Game.ComponentBody::get_IsSneaking()
    .set instance void Game.ComponentBody::set_IsSneaking(bool)
  } // end of property ComponentBody::IsSneaking
  .property instance bool IsGravityEnabled()
  {
    .get instance bool Game.ComponentBody::get_IsGravityEnabled()
    .set instance void Game.ComponentBody::set_IsGravityEnabled(bool)
  } // end of property ComponentBody::IsGravityEnabled
  .property instance bool IsGroundDragEnabled()
  {
    .get instance bool Game.ComponentBody::get_IsGroundDragEnabled()
    .set instance void Game.ComponentBody::set_IsGroundDragEnabled(bool)
  } // end of property ComponentBody::IsGroundDragEnabled
  .property instance bool IsWaterDragEnabled()
  {
    .get instance bool Game.ComponentBody::get_IsWaterDragEnabled()
    .set instance void Game.ComponentBody::set_IsWaterDragEnabled(bool)
  } // end of property ComponentBody::IsWaterDragEnabled
  .property instance bool IsSmoothRiseEnabled()
  {
    .get instance bool Game.ComponentBody::get_IsSmoothRiseEnabled()
    .set instance void Game.ComponentBody::set_IsSmoothRiseEnabled(bool)
  } // end of property ComponentBody::IsSmoothRiseEnabled
  .property instance float32 MaxSmoothRiseHeight()
  {
    .get instance float32 Game.ComponentBody::get_MaxSmoothRiseHeight()
    .set instance void Game.ComponentBody::set_MaxSmoothRiseHeight(float32)
  } // end of property ComponentBody::MaxSmoothRiseHeight
  .property instance valuetype [Engine]Engine.Vector3
          CollisionVelocityChange()
  {
    .get instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_CollisionVelocityChange()
    .set instance void Game.ComponentBody::set_CollisionVelocityChange(valuetype [Engine]Engine.Vector3)
  } // end of property ComponentBody::CollisionVelocityChange
  .property instance valuetype [Engine]Engine.BoundingBox
          BoundingBox()
  {
    .get instance valuetype [Engine]Engine.BoundingBox Game.ComponentBody::get_BoundingBox()
  } // end of property ComponentBody::BoundingBox
  .property instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.ComponentBody>
          ChildBodies()
  {
    .get instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.ComponentBody> Game.ComponentBody::get_ChildBodies()
  } // end of property ComponentBody::ChildBodies
  .property instance class Game.ComponentBody
          ParentBody()
  {
    .get instance class Game.ComponentBody Game.ComponentBody::get_ParentBody()
    .set instance void Game.ComponentBody::set_ParentBody(class Game.ComponentBody)
  } // end of property ComponentBody::ParentBody
  .property instance valuetype [Engine]Engine.Vector3
          ParentBodyPositionOffset()
  {
    .get instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_ParentBodyPositionOffset()
    .set instance void Game.ComponentBody::set_ParentBodyPositionOffset(valuetype [Engine]Engine.Vector3)
  } // end of property ComponentBody::ParentBodyPositionOffset
  .property instance valuetype [Engine]Engine.Quaternion
          ParentBodyRotationOffset()
  {
    .get instance valuetype [Engine]Engine.Quaternion Game.ComponentBody::get_ParentBodyRotationOffset()
    .set instance void Game.ComponentBody::set_ParentBodyRotationOffset(valuetype [Engine]Engine.Quaternion)
  } // end of property ComponentBody::ParentBodyRotationOffset
  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.ComponentBody::get_UpdateOrder()
  } // end of property ComponentBody::UpdateOrder
} // end of class Game.ComponentBody