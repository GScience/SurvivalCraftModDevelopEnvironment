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
  .field public static literal float32 MaxSpeed = float32(25.)
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
    IL_0006:  newobj     instance void valuetype [Engine]Engine.ReadOnlyList`1<class Game.ComponentBody>::.ctor(class [System.Runtime]System.Collections.Generic.IList`1<!0>)
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
    // 代码大小       1947 (0x79b)
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
    IL_0065:  br.s       IL_009c

    IL_0067:  ldarg.0
    IL_0068:  ldarg.0
    IL_0069:  ldfld      float32 Game.ComponentBody::m_stoppedTime
    IL_006e:  ldarg.1
    IL_006f:  add
    IL_0070:  stfld      float32 Game.ComponentBody::m_stoppedTime
    IL_0075:  ldarg.0
    IL_0076:  ldfld      float32 Game.ComponentBody::m_stoppedTime
    IL_007b:  ldc.r4     0.5
    IL_0080:  ble.un.s   IL_009c

    IL_0082:  ldc.r8     0.25
    IL_008b:  ldc.r8     0.0
    IL_0094:  call       bool [Engine]Engine.Time::PeriodicEvent(float64,
                                                                 float64)
    IL_0099:  brtrue.s   IL_009c

    IL_009b:  ret

    IL_009c:  ldarg.0
    IL_009d:  call       instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_00a2:  stloc.0
    IL_00a3:  ldarg.0
    IL_00a4:  ldfld      class Game.SubsystemTerrain Game.ComponentBody::m_subsystemTerrain
    IL_00a9:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_00ae:  ldloc.0
    IL_00af:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_00b4:  call       int32 Game.Terrain::ToCell(float32)
    IL_00b9:  ldloc.0
    IL_00ba:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_00bf:  call       int32 Game.Terrain::ToCell(float32)
    IL_00c4:  callvirt   instance class Game.TerrainChunk Game.Terrain::GetChunkAtCell(int32,
                                                                                       int32)
    IL_00c9:  stloc.1
    IL_00ca:  ldloc.1
    IL_00cb:  brfalse.s  IL_00d6

    IL_00cd:  ldloc.1
    IL_00ce:  ldfld      valuetype Game.TerrainChunkState Game.TerrainChunk::State
    IL_00d3:  ldc.i4.4
    IL_00d4:  bgt.s      IL_00e2

    IL_00d6:  ldarg.0
    IL_00d7:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_00dc:  call       instance void Game.ComponentBody::set_Velocity(valuetype [Engine]Engine.Vector3)
    IL_00e1:  ret

    IL_00e2:  ldarg.0
    IL_00e3:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox> Game.ComponentBody::m_bodiesCollisionBoxes
    IL_00e8:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>::Clear()
    IL_00ed:  ldarg.0
    IL_00ee:  ldloc.0
    IL_00ef:  ldarg.0
    IL_00f0:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox> Game.ComponentBody::m_bodiesCollisionBoxes
    IL_00f5:  call       instance void Game.ComponentBody::FindBodiesCollisionBoxes(valuetype [Engine]Engine.Vector3,
                                                                                    class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>)
    IL_00fa:  ldarg.0
    IL_00fb:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox> Game.ComponentBody::m_movingBlocksCollisionBoxes
    IL_0100:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>::Clear()
    IL_0105:  ldarg.0
    IL_0106:  ldloc.0
    IL_0107:  ldarg.0
    IL_0108:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox> Game.ComponentBody::m_movingBlocksCollisionBoxes
    IL_010d:  call       instance void Game.ComponentBody::FindMovingBlocksCollisionBoxes(valuetype [Engine]Engine.Vector3,
                                                                                          class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>)
    IL_0112:  ldarg.0
    IL_0113:  call       instance bool Game.ComponentBody::MoveToFreeSpace()
    IL_0118:  brtrue.s   IL_0152

    IL_011a:  ldarg.0
    IL_011b:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0120:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentHealth>()
    IL_0125:  stloc.s    V_6
    IL_0127:  ldloc.s    V_6
    IL_0129:  brfalse.s  IL_013f

    IL_012b:  ldloc.s    V_6
    IL_012d:  ldc.r4     1.
    IL_0132:  ldnull
    IL_0133:  ldc.i4.1
    IL_0134:  ldstr      "Crushed"
    IL_0139:  callvirt   instance void Game.ComponentHealth::Injure(float32,
                                                                    class Game.ComponentCreature,
                                                                    bool,
                                                                    string)
    IL_013e:  ret

    IL_013f:  ldarg.0
    IL_0140:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0145:  ldarg.0
    IL_0146:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_014b:  ldc.i4.1
    IL_014c:  callvirt   instance void [EntitySystem]GameEntitySystem.Project::RemoveEntity(class [EntitySystem]GameEntitySystem.Entity,
                                                                                            bool)
    IL_0151:  ret

    IL_0152:  ldarg.0
    IL_0153:  call       instance bool Game.ComponentBody::get_IsGravityEnabled()
    IL_0158:  brfalse    IL_01e4

    IL_015d:  ldarg.0
    IL_015e:  ldflda     valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_0163:  ldflda     float32 [Engine]Engine.Vector3::Y
    IL_0168:  dup
    IL_0169:  ldind.r4
    IL_016a:  ldc.r4     10.
    IL_016f:  ldarg.1
    IL_0170:  mul
    IL_0171:  sub
    IL_0172:  stind.r4
    IL_0173:  ldarg.0
    IL_0174:  call       instance float32 Game.ComponentBody::get_ImmersionFactor()
    IL_0179:  ldc.r4     0.0
    IL_017e:  ble.un.s   IL_01e4

    IL_0180:  ldarg.0
    IL_0181:  call       instance float32 Game.ComponentBody::get_ImmersionFactor()
    IL_0186:  ldc.r4     1.
    IL_018b:  ldc.r4     2.9999999e-002
    IL_0190:  ldc.r8     2.
    IL_0199:  ldarg.0
    IL_019a:  ldfld      class Game.SubsystemTime Game.ComponentBody::m_subsystemTime
    IL_019f:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_01a4:  mul
    IL_01a5:  ldc.r8     6.2831854820251465
    IL_01ae:  call       float64 [Engine]Engine.MathUtils::Remainder(float64,
                                                                     float64)
    IL_01b3:  conv.r4
    IL_01b4:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_01b9:  mul
    IL_01ba:  add
    IL_01bb:  mul
    IL_01bc:  stloc.s    V_7
    IL_01be:  ldarg.0
    IL_01bf:  ldflda     valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_01c4:  ldflda     float32 [Engine]Engine.Vector3::Y
    IL_01c9:  dup
    IL_01ca:  ldind.r4
    IL_01cb:  ldc.r4     10.
    IL_01d0:  ldc.r4     1.
    IL_01d5:  ldarg.0
    IL_01d6:  call       instance float32 Game.ComponentBody::get_Density()
    IL_01db:  div
    IL_01dc:  ldloc.s    V_7
    IL_01de:  mul
    IL_01df:  mul
    IL_01e0:  ldarg.1
    IL_01e1:  mul
    IL_01e2:  add
    IL_01e3:  stind.r4
    IL_01e4:  ldarg.0
    IL_01e5:  call       instance valuetype [Engine]Engine.Vector2 Game.ComponentBody::get_AirDrag()
    IL_01ea:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_01ef:  ldarg.1
    IL_01f0:  mul
    IL_01f1:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_01f6:  stloc.2
    IL_01f7:  ldarg.0
    IL_01f8:  call       instance valuetype [Engine]Engine.Vector2 Game.ComponentBody::get_AirDrag()
    IL_01fd:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0202:  ldarg.1
    IL_0203:  mul
    IL_0204:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0209:  stloc.3
    IL_020a:  ldarg.0
    IL_020b:  ldflda     valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_0210:  ldflda     float32 [Engine]Engine.Vector3::X
    IL_0215:  dup
    IL_0216:  ldind.r4
    IL_0217:  ldc.r4     1.
    IL_021c:  ldloc.2
    IL_021d:  sub
    IL_021e:  mul
    IL_021f:  stind.r4
    IL_0220:  ldarg.0
    IL_0221:  ldflda     valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_0226:  ldflda     float32 [Engine]Engine.Vector3::Y
    IL_022b:  dup
    IL_022c:  ldind.r4
    IL_022d:  ldc.r4     1.
    IL_0232:  ldloc.3
    IL_0233:  sub
    IL_0234:  mul
    IL_0235:  stind.r4
    IL_0236:  ldarg.0
    IL_0237:  ldflda     valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_023c:  ldflda     float32 [Engine]Engine.Vector3::Z
    IL_0241:  dup
    IL_0242:  ldind.r4
    IL_0243:  ldc.r4     1.
    IL_0248:  ldloc.2
    IL_0249:  sub
    IL_024a:  mul
    IL_024b:  stind.r4
    IL_024c:  ldarg.0
    IL_024d:  call       instance bool Game.ComponentBody::get_IsWaterDragEnabled()
    IL_0252:  brfalse    IL_04d5

    IL_0257:  ldarg.0
    IL_0258:  call       instance float32 Game.ComponentBody::get_ImmersionFactor()
    IL_025d:  ldc.r4     0.0
    IL_0262:  ble.un     IL_04d5

    IL_0267:  ldarg.0
    IL_0268:  call       instance class Game.FluidBlock Game.ComponentBody::get_ImmersionFluidBlock()
    IL_026d:  brfalse    IL_04d5

    IL_0272:  ldarg.0
    IL_0273:  ldfld      class Game.SubsystemFluidBlockBehavior Game.ComponentBody::m_subsystemFluidBlockBehavior
    IL_0278:  ldloc.0
    IL_0279:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_027e:  call       int32 Game.Terrain::ToCell(float32)
    IL_0283:  ldloc.0
    IL_0284:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0289:  call       int32 Game.Terrain::ToCell(float32)
    IL_028e:  ldloc.0
    IL_028f:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0294:  call       int32 Game.Terrain::ToCell(float32)
    IL_0299:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.SubsystemFluidBlockBehavior::CalculateFlowSpeed(int32,
                                                                                                                                                                     int32,
                                                                                                                                                                     int32)
    IL_029e:  stloc.s    V_8
    IL_02a0:  ldloca.s   V_8
    IL_02a2:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_02a7:  brtrue.s   IL_02b0

    IL_02a9:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_02ae:  br.s       IL_02d2

    IL_02b0:  ldloca.s   V_8
    IL_02b2:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_02b7:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_02bc:  ldc.r4     0.0
    IL_02c1:  ldloca.s   V_8
    IL_02c3:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_02c8:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_02cd:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_02d2:  stloc.s    V_9
    IL_02d4:  ldc.r4     1.
    IL_02d9:  stloc.s    V_10
    IL_02db:  ldarg.0
    IL_02dc:  call       instance class Game.FluidBlock Game.ComponentBody::get_ImmersionFluidBlock()
    IL_02e1:  ldfld      float32 Game.Block::FrictionFactor
    IL_02e6:  ldc.r4     1.
    IL_02eb:  beq.s      IL_0339

    IL_02ed:  ldc.r8     6.
    IL_02f6:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
    IL_02fb:  mul
    IL_02fc:  ldarg.0
    IL_02fd:  callvirt   instance int32 [System.Runtime]System.Object::GetHashCode()
    IL_0302:  ldc.i4     0x3e8
    IL_0307:  rem
    IL_0308:  conv.r8
    IL_0309:  add
    IL_030a:  ldc.r8     1000.
    IL_0313:  call       float64 [Engine]Engine.MathUtils::Remainder(float64,
                                                                     float64)
    IL_0318:  conv.r4
    IL_0319:  call       float32 Game.SimplexNoise::Noise(float32)
    IL_031e:  ldc.r4     0.5
    IL_0323:  bgt.s      IL_032c

    IL_0325:  ldc.r4     1.
    IL_032a:  br.s       IL_0337

    IL_032c:  ldarg.0
    IL_032d:  call       instance class Game.FluidBlock Game.ComponentBody::get_ImmersionFluidBlock()
    IL_0332:  ldfld      float32 Game.Block::FrictionFactor
    IL_0337:  stloc.s    V_10
    IL_0339:  ldarg.0
    IL_033a:  call       instance valuetype [Engine]Engine.Vector2 Game.ComponentBody::get_WaterDrag()
    IL_033f:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0344:  ldloc.s    V_10
    IL_0346:  mul
    IL_0347:  ldarg.0
    IL_0348:  call       instance float32 Game.ComponentBody::get_ImmersionFactor()
    IL_034d:  mul
    IL_034e:  ldarg.1
    IL_034f:  mul
    IL_0350:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0355:  stloc.s    V_11
    IL_0357:  ldarg.0
    IL_0358:  call       instance valuetype [Engine]Engine.Vector2 Game.ComponentBody::get_WaterDrag()
    IL_035d:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0362:  ldloc.s    V_10
    IL_0364:  mul
    IL_0365:  ldarg.1
    IL_0366:  mul
    IL_0367:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_036c:  stloc.s    V_12
    IL_036e:  ldarg.0
    IL_036f:  ldflda     valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_0374:  ldarg.0
    IL_0375:  ldflda     valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_037a:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_037f:  ldloc.s    V_9
    IL_0381:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0386:  ldloc.s    V_11
    IL_0388:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_038d:  stfld      float32 [Engine]Engine.Vector3::X
    IL_0392:  ldarg.0
    IL_0393:  ldflda     valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_0398:  ldarg.0
    IL_0399:  ldflda     valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_039e:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_03a3:  ldloc.s    V_9
    IL_03a5:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_03aa:  ldloc.s    V_12
    IL_03ac:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_03b1:  stfld      float32 [Engine]Engine.Vector3::Y
    IL_03b6:  ldarg.0
    IL_03b7:  ldflda     valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_03bc:  ldarg.0
    IL_03bd:  ldflda     valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_03c2:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_03c7:  ldloc.s    V_9
    IL_03c9:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_03ce:  ldloc.s    V_11
    IL_03d0:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_03d5:  stfld      float32 [Engine]Engine.Vector3::Z
    IL_03da:  ldarg.0
    IL_03db:  ldfld      class Game.ComponentBody Game.ComponentBody::m_parentBody
    IL_03e0:  brtrue     IL_04d5

    IL_03e5:  ldloca.s   V_8
    IL_03e7:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_03ec:  brfalse    IL_04d5

    IL_03f1:  ldarg.0
    IL_03f2:  call       instance valuetype [System.Runtime]System.Nullable`1<int32> Game.ComponentBody::get_StandingOnValue()
    IL_03f7:  stloc.s    V_13
    IL_03f9:  ldloca.s   V_13
    IL_03fb:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0400:  brtrue     IL_04d5

    IL_0405:  ldarg.0
    IL_0406:  call       instance float32 Game.ComponentBody::get_WaterTurnSpeed()
    IL_040b:  ldc.r4     0.0
    IL_0410:  ble.un.s   IL_0487

    IL_0412:  ldc.r4     1.
    IL_0417:  ldc.r4     0.0
    IL_041c:  ldarg.0
    IL_041d:  ldflda     valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_0422:  call       instance float32 [Engine]Engine.Vector3::Length()
    IL_0427:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_042c:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0431:  stloc.s    V_14
    IL_0433:  ldloca.s   V_8
    IL_0435:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_043a:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Normalize(valuetype [Engine]Engine.Vector2)
    IL_043f:  ldloc.s    V_14
    IL_0441:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0446:  stloc.s    V_15
    IL_0448:  ldarg.0
    IL_0449:  ldarg.0
    IL_044a:  call       instance valuetype [Engine]Engine.Quaternion Game.ComponentFrame::get_Rotation()
    IL_044f:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_0454:  ldarg.0
    IL_0455:  call       instance float32 Game.ComponentBody::get_WaterTurnSpeed()
    IL_045a:  ldc.r4     -1.
    IL_045f:  ldloc.s    V_15
    IL_0461:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0466:  mul
    IL_0467:  ldc.r4     0.70999998
    IL_046c:  ldloc.s    V_15
    IL_046e:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0473:  mul
    IL_0474:  add
    IL_0475:  mul
    IL_0476:  ldarg.1
    IL_0477:  mul
    IL_0478:  call       valuetype [Engine]Engine.Quaternion [Engine]Engine.Quaternion::CreateFromAxisAngle(valuetype [Engine]Engine.Vector3,
                                                                                                            float32)
    IL_047d:  call       valuetype [Engine]Engine.Quaternion [Engine]Engine.Quaternion::op_Multiply(valuetype [Engine]Engine.Quaternion,
                                                                                                    valuetype [Engine]Engine.Quaternion)
    IL_0482:  call       instance void Game.ComponentFrame::set_Rotation(valuetype [Engine]Engine.Quaternion)
    IL_0487:  ldarg.0
    IL_0488:  call       instance float32 Game.ComponentBody::get_WaterSwayAngle()
    IL_048d:  ldc.r4     0.0
    IL_0492:  ble.un.s   IL_04d5

    IL_0494:  ldarg.0
    IL_0495:  ldarg.0
    IL_0496:  call       instance valuetype [Engine]Engine.Quaternion Game.ComponentFrame::get_Rotation()
    IL_049b:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitX
    IL_04a0:  ldarg.0
    IL_04a1:  call       instance float32 Game.ComponentBody::get_WaterSwayAngle()
    IL_04a6:  ldc.r4     200.
    IL_04ab:  ldarg.0
    IL_04ac:  call       instance float32 Game.ComponentBody::get_Mass()
    IL_04b1:  div
    IL_04b2:  conv.r8
    IL_04b3:  ldarg.0
    IL_04b4:  ldfld      class Game.SubsystemTime Game.ComponentBody::m_subsystemTime
    IL_04b9:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_04be:  mul
    IL_04bf:  call       float64 [Engine]Engine.MathUtils::Sin(float64)
    IL_04c4:  conv.r4
    IL_04c5:  mul
    IL_04c6:  call       valuetype [Engine]Engine.Quaternion [Engine]Engine.Quaternion::CreateFromAxisAngle(valuetype [Engine]Engine.Vector3,
                                                                                                            float32)
    IL_04cb:  call       valuetype [Engine]Engine.Quaternion [Engine]Engine.Quaternion::op_Multiply(valuetype [Engine]Engine.Quaternion,
                                                                                                    valuetype [Engine]Engine.Quaternion)
    IL_04d0:  call       instance void Game.ComponentFrame::set_Rotation(valuetype [Engine]Engine.Quaternion)
    IL_04d5:  ldarg.0
    IL_04d6:  ldfld      class Game.ComponentBody Game.ComponentBody::m_parentBody
    IL_04db:  brfalse.s  IL_0544

    IL_04dd:  ldarg.0
    IL_04de:  call       instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_ParentBodyPositionOffset()
    IL_04e3:  ldarg.0
    IL_04e4:  ldfld      class Game.ComponentBody Game.ComponentBody::m_parentBody
    IL_04e9:  callvirt   instance valuetype [Engine]Engine.Quaternion Game.ComponentFrame::get_Rotation()
    IL_04ee:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3,
                                                                                            valuetype [Engine]Engine.Quaternion)
    IL_04f3:  ldarg.0
    IL_04f4:  ldfld      class Game.ComponentBody Game.ComponentBody::m_parentBody
    IL_04f9:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_04fe:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0503:  ldloc.0
    IL_0504:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0509:  stloc.s    V_16
    IL_050b:  ldarg.0
    IL_050c:  ldarg.1
    IL_050d:  ldc.r4     0.0
    IL_0512:  bgt.s      IL_051b

    IL_0514:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_0519:  br.s       IL_0523

    IL_051b:  ldloc.s    V_16
    IL_051d:  ldarg.1
    IL_051e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Division(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0523:  stfld      valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_0528:  ldarg.0
    IL_0529:  ldarg.0
    IL_052a:  call       instance valuetype [Engine]Engine.Quaternion Game.ComponentBody::get_ParentBodyRotationOffset()
    IL_052f:  ldarg.0
    IL_0530:  ldfld      class Game.ComponentBody Game.ComponentBody::m_parentBody
    IL_0535:  callvirt   instance valuetype [Engine]Engine.Quaternion Game.ComponentFrame::get_Rotation()
    IL_053a:  call       valuetype [Engine]Engine.Quaternion [Engine]Engine.Quaternion::op_Multiply(valuetype [Engine]Engine.Quaternion,
                                                                                                    valuetype [Engine]Engine.Quaternion)
    IL_053f:  call       instance void Game.ComponentFrame::set_Rotation(valuetype [Engine]Engine.Quaternion)
    IL_0544:  ldarg.0
    IL_0545:  ldloca.s   V_13
    IL_0547:  initobj    valuetype [System.Runtime]System.Nullable`1<int32>
    IL_054d:  ldloc.s    V_13
    IL_054f:  call       instance void Game.ComponentBody::set_StandingOnValue(valuetype [System.Runtime]System.Nullable`1<int32>)
    IL_0554:  ldarg.0
    IL_0555:  ldnull
    IL_0556:  call       instance void Game.ComponentBody::set_StandingOnBody(class Game.ComponentBody)
    IL_055b:  ldarg.0
    IL_055c:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_0561:  call       instance void Game.ComponentBody::set_StandingOnVelocity(valuetype [Engine]Engine.Vector3)
    IL_0566:  ldarg.0
    IL_0567:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_056c:  stloc.s    V_4
    IL_056e:  ldarg.0
    IL_056f:  ldflda     valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_0574:  call       instance float32 [Engine]Engine.Vector3::Length()
    IL_0579:  stloc.s    V_5
    IL_057b:  ldloc.s    V_5
    IL_057d:  ldc.r4     0.0
    IL_0582:  ble.un.s   IL_05dd

    IL_0584:  ldc.r4     0.47499999
    IL_0589:  ldarg.0
    IL_058a:  call       instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_BoxSize()
    IL_058f:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0594:  ldarg.0
    IL_0595:  call       instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_BoxSize()
    IL_059a:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_059f:  ldarg.0
    IL_05a0:  call       instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_BoxSize()
    IL_05a5:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_05aa:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32,
                                                               float32)
    IL_05af:  mul
    IL_05b0:  ldloc.s    V_5
    IL_05b2:  div
    IL_05b3:  stloc.s    V_17
    IL_05b5:  ldarg.1
    IL_05b6:  stloc.s    V_18
    IL_05b8:  br.s       IL_05d4

    IL_05ba:  ldloc.s    V_18
    IL_05bc:  ldloc.s    V_17
    IL_05be:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_05c3:  stloc.s    V_19
    IL_05c5:  ldarg.0
    IL_05c6:  ldloc.s    V_19
    IL_05c8:  call       instance void Game.ComponentBody::MoveWithCollision(float32)
    IL_05cd:  ldloc.s    V_18
    IL_05cf:  ldloc.s    V_19
    IL_05d1:  sub
    IL_05d2:  stloc.s    V_18
    IL_05d4:  ldloc.s    V_18
    IL_05d6:  ldc.r4     0.0
    IL_05db:  bgt.s      IL_05ba

    IL_05dd:  ldarg.0
    IL_05de:  ldarg.0
    IL_05df:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_05e4:  ldloc.s    V_4
    IL_05e6:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_05eb:  call       instance void Game.ComponentBody::set_CollisionVelocityChange(valuetype [Engine]Engine.Vector3)
    IL_05f0:  ldarg.0
    IL_05f1:  call       instance bool Game.ComponentBody::get_IsGroundDragEnabled()
    IL_05f6:  brfalse.s  IL_0627

    IL_05f8:  ldarg.0
    IL_05f9:  call       instance valuetype [System.Runtime]System.Nullable`1<int32> Game.ComponentBody::get_StandingOnValue()
    IL_05fe:  stloc.s    V_13
    IL_0600:  ldloca.s   V_13
    IL_0602:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0607:  brfalse.s  IL_0627

    IL_0609:  ldarg.0
    IL_060a:  ldarg.0
    IL_060b:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_0610:  ldarg.0
    IL_0611:  call       instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_StandingOnVelocity()
    IL_0616:  ldc.r4     6.
    IL_061b:  ldarg.1
    IL_061c:  mul
    IL_061d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Lerp(valuetype [Engine]Engine.Vector3,
                                                                                       valuetype [Engine]Engine.Vector3,
                                                                                       float32)
    IL_0622:  stfld      valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_0627:  ldarg.0
    IL_0628:  call       instance valuetype [System.Runtime]System.Nullable`1<int32> Game.ComponentBody::get_StandingOnValue()
    IL_062d:  stloc.s    V_13
    IL_062f:  ldloca.s   V_13
    IL_0631:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0636:  brtrue.s   IL_063f

    IL_0638:  ldarg.0
    IL_0639:  ldc.i4.0
    IL_063a:  call       instance void Game.ComponentBody::set_IsSneaking(bool)
    IL_063f:  ldarg.0
    IL_0640:  call       instance void Game.ComponentBody::UpdateImmersionData()
    IL_0645:  ldarg.0
    IL_0646:  call       instance class Game.FluidBlock Game.ComponentBody::get_ImmersionFluidBlock()
    IL_064b:  isinst     Game.WaterBlock
    IL_0650:  brfalse    IL_06fb

    IL_0655:  ldarg.0
    IL_0656:  call       instance float32 Game.ComponentBody::get_ImmersionDepth()
    IL_065b:  ldc.r4     0.30000001
    IL_0660:  ble.un     IL_06fb

    IL_0665:  ldarg.0
    IL_0666:  ldfld      bool Game.ComponentBody::m_fluidEffectsPlayed
    IL_066b:  brtrue     IL_06fb

    IL_0670:  ldarg.0
    IL_0671:  ldc.i4.1
    IL_0672:  stfld      bool Game.ComponentBody::m_fluidEffectsPlayed
    IL_0677:  ldarg.0
    IL_0678:  ldfld      class Game.SubsystemAudio Game.ComponentBody::m_subsystemAudio
    IL_067d:  ldstr      "Audio/WaterFallIn"
    IL_0682:  ldarg.0
    IL_0683:  ldfld      class Game.Random Game.ComponentBody::m_random
    IL_0688:  ldc.r4     0.75
    IL_068d:  ldc.r4     1.
    IL_0692:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0697:  ldarg.0
    IL_0698:  ldfld      class Game.Random Game.ComponentBody::m_random
    IL_069d:  ldc.r4     -0.30000001
    IL_06a2:  ldc.r4     0.0
    IL_06a7:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_06ac:  ldloc.0
    IL_06ad:  ldc.r4     4.
    IL_06b2:  ldc.i4.1
    IL_06b3:  callvirt   instance void Game.SubsystemAudio::PlayRandomSound(string,
                                                                            float32,
                                                                            float32,
                                                                            valuetype [Engine]Engine.Vector3,
                                                                            float32,
                                                                            bool)
    IL_06b8:  ldarg.0
    IL_06b9:  ldfld      class Game.SubsystemParticles Game.ComponentBody::m_subsystemParticles
    IL_06be:  ldarg.0
    IL_06bf:  ldfld      class Game.SubsystemTerrain Game.ComponentBody::m_subsystemTerrain
    IL_06c4:  ldloc.0
    IL_06c5:  ldarg.0
    IL_06c6:  call       instance valuetype [Engine]Engine.BoundingBox Game.ComponentBody::get_BoundingBox()
    IL_06cb:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_06d0:  ldarg.0
    IL_06d1:  call       instance valuetype [Engine]Engine.BoundingBox Game.ComponentBody::get_BoundingBox()
    IL_06d6:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_06db:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_06e0:  stloc.s    V_20
    IL_06e2:  ldloca.s   V_20
    IL_06e4:  call       instance float32 [Engine]Engine.Vector3::Length()
    IL_06e9:  ldc.r4     0.80000001
    IL_06ee:  cgt
    IL_06f0:  newobj     instance void Game.WaterSplashParticleSystem::.ctor(class Game.SubsystemTerrain,
                                                                             valuetype [Engine]Engine.Vector3,
                                                                             bool)
    IL_06f5:  callvirt   instance void Game.SubsystemParticles::AddParticleSystem(class Game.ParticleSystemBase)
    IL_06fa:  ret

    IL_06fb:  ldarg.0
    IL_06fc:  call       instance class Game.FluidBlock Game.ComponentBody::get_ImmersionFluidBlock()
    IL_0701:  isinst     Game.MagmaBlock
    IL_0706:  brfalse    IL_078b

    IL_070b:  ldarg.0
    IL_070c:  call       instance float32 Game.ComponentBody::get_ImmersionDepth()
    IL_0711:  ldc.r4     0.0
    IL_0716:  ble.un.s   IL_078b

    IL_0718:  ldarg.0
    IL_0719:  ldfld      bool Game.ComponentBody::m_fluidEffectsPlayed
    IL_071e:  brtrue.s   IL_078b

    IL_0720:  ldarg.0
    IL_0721:  ldc.i4.1
    IL_0722:  stfld      bool Game.ComponentBody::m_fluidEffectsPlayed
    IL_0727:  ldarg.0
    IL_0728:  ldfld      class Game.SubsystemAudio Game.ComponentBody::m_subsystemAudio
    IL_072d:  ldstr      "Audio/SizzleLong"
    IL_0732:  ldc.r4     1.
    IL_0737:  ldc.r4     0.0
    IL_073c:  ldloc.0
    IL_073d:  ldc.r4     4.
    IL_0742:  ldc.i4.1
    IL_0743:  callvirt   instance void Game.SubsystemAudio::PlaySound(string,
                                                                      float32,
                                                                      float32,
                                                                      valuetype [Engine]Engine.Vector3,
                                                                      float32,
                                                                      bool)
    IL_0748:  ldarg.0
    IL_0749:  ldfld      class Game.SubsystemParticles Game.ComponentBody::m_subsystemParticles
    IL_074e:  ldarg.0
    IL_074f:  ldfld      class Game.SubsystemTerrain Game.ComponentBody::m_subsystemTerrain
    IL_0754:  ldloc.0
    IL_0755:  ldarg.0
    IL_0756:  call       instance valuetype [Engine]Engine.BoundingBox Game.ComponentBody::get_BoundingBox()
    IL_075b:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_0760:  ldarg.0
    IL_0761:  call       instance valuetype [Engine]Engine.BoundingBox Game.ComponentBody::get_BoundingBox()
    IL_0766:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_076b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0770:  stloc.s    V_20
    IL_0772:  ldloca.s   V_20
    IL_0774:  call       instance float32 [Engine]Engine.Vector3::Length()
    IL_0779:  ldc.r4     0.80000001
    IL_077e:  cgt
    IL_0780:  newobj     instance void Game.MagmaSplashParticleSystem::.ctor(class Game.SubsystemTerrain,
                                                                             valuetype [Engine]Engine.Vector3,
                                                                             bool)
    IL_0785:  callvirt   instance void Game.SubsystemParticles::AddParticleSystem(class Game.ParticleSystemBase)
    IL_078a:  ret

    IL_078b:  ldarg.0
    IL_078c:  call       instance class Game.FluidBlock Game.ComponentBody::get_ImmersionFluidBlock()
    IL_0791:  brtrue.s   IL_079a

    IL_0793:  ldarg.0
    IL_0794:  ldc.i4.0
    IL_0795:  stfld      bool Game.ComponentBody::m_fluidEffectsPlayed
    IL_079a:  ret
  } // end of method ComponentBody::Update

  .method private hidebysig instance void 
          UpdateImmersionData() cil managed
  {
    // 代码大小       216 (0xd8)
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
    IL_000d:  call       int32 Game.Terrain::ToCell(float32)
    IL_0012:  stloc.1
    IL_0013:  ldloc.0
    IL_0014:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0019:  ldc.r4     9.9999998e-003
    IL_001e:  add
    IL_001f:  call       int32 Game.Terrain::ToCell(float32)
    IL_0024:  stloc.2
    IL_0025:  ldloc.0
    IL_0026:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_002b:  call       int32 Game.Terrain::ToCell(float32)
    IL_0030:  stloc.3
    IL_0031:  ldarg.0
    IL_0032:  ldfld      class Game.SubsystemFluidBlockBehavior Game.ComponentBody::m_subsystemFluidBlockBehavior
    IL_0037:  ldloc.1
    IL_0038:  ldloc.2
    IL_0039:  ldloc.3
    IL_003a:  ldloca.s   V_4
    IL_003c:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<float32> Game.SubsystemFluidBlockBehavior::GetSurfaceHeight(int32,
                                                                                                                                          int32,
                                                                                                                                          int32,
                                                                                                                                          class Game.FluidBlock&)
    IL_0041:  stloc.s    V_5
    IL_0043:  ldloca.s   V_5
    IL_0045:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float32>::get_HasValue()
    IL_004a:  brfalse.s  IL_00ba

    IL_004c:  ldarg.0
    IL_004d:  ldfld      class Game.SubsystemTerrain Game.ComponentBody::m_subsystemTerrain
    IL_0052:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0057:  ldloc.1
    IL_0058:  ldloc.2
    IL_0059:  ldloc.3
    IL_005a:  callvirt   instance int32 Game.Terrain::GetCellValue(int32,
                                                                   int32,
                                                                   int32)
    IL_005f:  stloc.s    V_6
    IL_0061:  ldarg.0
    IL_0062:  ldloca.s   V_5
    IL_0064:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_0069:  ldloc.0
    IL_006a:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_006f:  sub
    IL_0070:  ldc.r4     0.0
    IL_0075:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_007a:  call       instance void Game.ComponentBody::set_ImmersionDepth(float32)
    IL_007f:  ldarg.0
    IL_0080:  ldarg.0
    IL_0081:  call       instance float32 Game.ComponentBody::get_ImmersionDepth()
    IL_0086:  ldarg.0
    IL_0087:  call       instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_BoxSize()
    IL_008c:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0091:  div
    IL_0092:  ldc.r4     0.69999999
    IL_0097:  call       float32 [Engine]Engine.MathUtils::Pow(float32,
                                                               float32)
    IL_009c:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_00a1:  call       instance void Game.ComponentBody::set_ImmersionFactor(float32)
    IL_00a6:  ldarg.0
    IL_00a7:  call       class Game.FluidBlock[] Game.BlocksManager::get_FluidBlocks()
    IL_00ac:  ldloc.s    V_6
    IL_00ae:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_00b3:  ldelem.ref
    IL_00b4:  call       instance void Game.ComponentBody::set_ImmersionFluidBlock(class Game.FluidBlock)
    IL_00b9:  ret

    IL_00ba:  ldarg.0
    IL_00bb:  ldc.r4     0.0
    IL_00c0:  call       instance void Game.ComponentBody::set_ImmersionDepth(float32)
    IL_00c5:  ldarg.0
    IL_00c6:  ldc.r4     0.0
    IL_00cb:  call       instance void Game.ComponentBody::set_ImmersionFactor(float32)
    IL_00d0:  ldarg.0
    IL_00d1:  ldnull
    IL_00d2:  call       instance void Game.ComponentBody::set_ImmersionFluidBlock(class Game.FluidBlock)
    IL_00d7:  ret
  } // end of method ComponentBody::UpdateImmersionData

  .method private hidebysig instance bool 
          MoveToFreeSpace() cil managed
  {
    // 代码大小       1320 (0x528)
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
    IL_0010:  br         IL_0519

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
    IL_0032:  call       valuetype [Engine]Engine.Point3 Game.Terrain::ToCell(valuetype [Engine]Engine.Vector3)
    IL_0037:  ldloc.1
    IL_0038:  call       valuetype [Engine]Engine.Point3 Game.Terrain::ToCell(valuetype [Engine]Engine.Vector3)
    IL_003d:  call       bool [Engine]Engine.Point3::op_Inequality(valuetype [Engine]Engine.Point3,
                                                                   valuetype [Engine]Engine.Point3)
    IL_0042:  brtrue     IL_0515

    IL_0047:  ldloca.s   V_5
    IL_0049:  ldloc.s    V_4
    IL_004b:  ldloc.0
    IL_004c:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0051:  ldc.r4     2.
    IL_0056:  div
    IL_0057:  ldc.r4     0.0
    IL_005c:  ldloc.0
    IL_005d:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0062:  ldc.r4     2.
    IL_0067:  div
    IL_0068:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_006d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0072:  ldloc.s    V_4
    IL_0074:  ldloc.0
    IL_0075:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_007a:  ldc.r4     2.
    IL_007f:  div
    IL_0080:  ldloc.0
    IL_0081:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0086:  ldloc.0
    IL_0087:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_008c:  ldc.r4     2.
    IL_0091:  div
    IL_0092:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0097:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_009c:  call       instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_00a1:  ldloca.s   V_5
    IL_00a3:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_00a8:  dup
    IL_00a9:  ldobj      [Engine]Engine.Vector3
    IL_00ae:  ldc.r4     9.9999998e-003
    IL_00b3:  ldarg.0
    IL_00b4:  call       instance float32 Game.ComponentBody::get_MaxSmoothRiseHeight()
    IL_00b9:  ldc.r4     9.9999998e-003
    IL_00be:  add
    IL_00bf:  ldc.r4     9.9999998e-003
    IL_00c4:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00c9:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00ce:  stobj      [Engine]Engine.Vector3
    IL_00d3:  ldloca.s   V_5
    IL_00d5:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_00da:  dup
    IL_00db:  ldobj      [Engine]Engine.Vector3
    IL_00e0:  ldc.r4     9.9999998e-003
    IL_00e5:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32)
    IL_00ea:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_00ef:  stobj      [Engine]Engine.Vector3
    IL_00f4:  ldarg.0
    IL_00f5:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox> Game.ComponentBody::m_collisionBoxes
    IL_00fa:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>::Clear()
    IL_00ff:  ldarg.0
    IL_0100:  ldloc.s    V_5
    IL_0102:  ldarg.0
    IL_0103:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox> Game.ComponentBody::m_collisionBoxes
    IL_0108:  call       instance void Game.ComponentBody::FindTerrainCollisionBoxes(valuetype [Engine]Engine.BoundingBox,
                                                                                     class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>)
    IL_010d:  ldarg.0
    IL_010e:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox> Game.ComponentBody::m_collisionBoxes
    IL_0113:  ldarg.0
    IL_0114:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox> Game.ComponentBody::m_movingBlocksCollisionBoxes
    IL_0119:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>::AddRange(class [Engine]Engine.DynamicArray`1<!0>)
    IL_011e:  ldarg.0
    IL_011f:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox> Game.ComponentBody::m_collisionBoxes
    IL_0124:  ldarg.0
    IL_0125:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox> Game.ComponentBody::m_bodiesCollisionBoxes
    IL_012a:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>::AddRange(class [Engine]Engine.DynamicArray`1<!0>)
    IL_012f:  ldarg.0
    IL_0130:  ldloc.s    V_5
    IL_0132:  ldarg.0
    IL_0133:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox> Game.ComponentBody::m_collisionBoxes
    IL_0138:  call       instance bool Game.ComponentBody::IsColliding(valuetype [Engine]Engine.BoundingBox,
                                                                       class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>)
    IL_013d:  brfalse    IL_04f4

    IL_0142:  ldarg.0
    IL_0143:  ldc.r4     0.0
    IL_0148:  stfld      float32 Game.ComponentBody::m_stoppedTime
    IL_014d:  ldarg.0
    IL_014e:  ldloc.s    V_5
    IL_0150:  ldc.i4.0
    IL_0151:  ldarg.0
    IL_0152:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox> Game.ComponentBody::m_collisionBoxes
    IL_0157:  ldloca.s   V_6
    IL_0159:  call       instance float32 Game.ComponentBody::CalculatePushBack(valuetype [Engine]Engine.BoundingBox,
                                                                                int32,
                                                                                class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>,
                                                                                valuetype Game.ComponentBody/CollisionBox&)
    IL_015e:  stloc.s    V_9
    IL_0160:  ldarg.0
    IL_0161:  ldloc.s    V_5
    IL_0163:  ldc.i4.1
    IL_0164:  ldarg.0
    IL_0165:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox> Game.ComponentBody::m_collisionBoxes
    IL_016a:  ldloca.s   V_7
    IL_016c:  call       instance float32 Game.ComponentBody::CalculatePushBack(valuetype [Engine]Engine.BoundingBox,
                                                                                int32,
                                                                                class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>,
                                                                                valuetype Game.ComponentBody/CollisionBox&)
    IL_0171:  stloc.s    V_10
    IL_0173:  ldarg.0
    IL_0174:  ldloc.s    V_5
    IL_0176:  ldc.i4.2
    IL_0177:  ldarg.0
    IL_0178:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox> Game.ComponentBody::m_collisionBoxes
    IL_017d:  ldloca.s   V_8
    IL_017f:  call       instance float32 Game.ComponentBody::CalculatePushBack(valuetype [Engine]Engine.BoundingBox,
                                                                                int32,
                                                                                class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>,
                                                                                valuetype Game.ComponentBody/CollisionBox&)
    IL_0184:  stloc.s    V_11
    IL_0186:  ldloc.s    V_9
    IL_0188:  ldloc.s    V_9
    IL_018a:  mul
    IL_018b:  stloc.s    V_12
    IL_018d:  ldloc.s    V_10
    IL_018f:  ldloc.s    V_10
    IL_0191:  mul
    IL_0192:  stloc.s    V_13
    IL_0194:  ldloc.s    V_11
    IL_0196:  ldloc.s    V_11
    IL_0198:  mul
    IL_0199:  stloc.s    V_14
    IL_019b:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector3>::.ctor()
    IL_01a0:  stloc.s    V_15
    IL_01a2:  ldloc.s    V_12
    IL_01a4:  ldloc.s    V_13
    IL_01a6:  bgt.un     IL_025f

    IL_01ab:  ldloc.s    V_12
    IL_01ad:  ldloc.s    V_14
    IL_01af:  bgt.un     IL_025f

    IL_01b4:  ldloc.s    V_15
    IL_01b6:  ldloc.s    V_4
    IL_01b8:  ldloc.s    V_9
    IL_01ba:  ldc.r4     0.0
    IL_01bf:  ldc.r4     0.0
    IL_01c4:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_01c9:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01ce:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector3>::Add(!0)
    IL_01d3:  ldloc.s    V_13
    IL_01d5:  ldloc.s    V_14
    IL_01d7:  bgt.un.s   IL_021c

    IL_01d9:  ldloc.s    V_15
    IL_01db:  ldloc.s    V_4
    IL_01dd:  ldc.r4     0.0
    IL_01e2:  ldloc.s    V_10
    IL_01e4:  ldc.r4     0.0
    IL_01e9:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_01ee:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01f3:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector3>::Add(!0)
    IL_01f8:  ldloc.s    V_15
    IL_01fa:  ldloc.s    V_4
    IL_01fc:  ldc.r4     0.0
    IL_0201:  ldc.r4     0.0
    IL_0206:  ldloc.s    V_11
    IL_0208:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_020d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0212:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector3>::Add(!0)
    IL_0217:  br         IL_03bf

    IL_021c:  ldloc.s    V_15
    IL_021e:  ldloc.s    V_4
    IL_0220:  ldc.r4     0.0
    IL_0225:  ldc.r4     0.0
    IL_022a:  ldloc.s    V_11
    IL_022c:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0231:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0236:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector3>::Add(!0)
    IL_023b:  ldloc.s    V_15
    IL_023d:  ldloc.s    V_4
    IL_023f:  ldc.r4     0.0
    IL_0244:  ldloc.s    V_10
    IL_0246:  ldc.r4     0.0
    IL_024b:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0250:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0255:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector3>::Add(!0)
    IL_025a:  br         IL_03bf

    IL_025f:  ldloc.s    V_13
    IL_0261:  ldloc.s    V_12
    IL_0263:  bgt.un     IL_031c

    IL_0268:  ldloc.s    V_13
    IL_026a:  ldloc.s    V_14
    IL_026c:  bgt.un     IL_031c

    IL_0271:  ldloc.s    V_15
    IL_0273:  ldloc.s    V_4
    IL_0275:  ldc.r4     0.0
    IL_027a:  ldloc.s    V_10
    IL_027c:  ldc.r4     0.0
    IL_0281:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0286:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_028b:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector3>::Add(!0)
    IL_0290:  ldloc.s    V_12
    IL_0292:  ldloc.s    V_14
    IL_0294:  bgt.un.s   IL_02d9

    IL_0296:  ldloc.s    V_15
    IL_0298:  ldloc.s    V_4
    IL_029a:  ldloc.s    V_9
    IL_029c:  ldc.r4     0.0
    IL_02a1:  ldc.r4     0.0
    IL_02a6:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_02ab:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_02b0:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector3>::Add(!0)
    IL_02b5:  ldloc.s    V_15
    IL_02b7:  ldloc.s    V_4
    IL_02b9:  ldc.r4     0.0
    IL_02be:  ldc.r4     0.0
    IL_02c3:  ldloc.s    V_11
    IL_02c5:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_02ca:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_02cf:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector3>::Add(!0)
    IL_02d4:  br         IL_03bf

    IL_02d9:  ldloc.s    V_15
    IL_02db:  ldloc.s    V_4
    IL_02dd:  ldc.r4     0.0
    IL_02e2:  ldc.r4     0.0
    IL_02e7:  ldloc.s    V_11
    IL_02e9:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_02ee:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_02f3:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector3>::Add(!0)
    IL_02f8:  ldloc.s    V_15
    IL_02fa:  ldloc.s    V_4
    IL_02fc:  ldloc.s    V_9
    IL_02fe:  ldc.r4     0.0
    IL_0303:  ldc.r4     0.0
    IL_0308:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_030d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0312:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector3>::Add(!0)
    IL_0317:  br         IL_03bf

    IL_031c:  ldloc.s    V_15
    IL_031e:  ldloc.s    V_4
    IL_0320:  ldc.r4     0.0
    IL_0325:  ldc.r4     0.0
    IL_032a:  ldloc.s    V_11
    IL_032c:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0331:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0336:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector3>::Add(!0)
    IL_033b:  ldloc.s    V_12
    IL_033d:  ldloc.s    V_13
    IL_033f:  bgt.un.s   IL_0381

    IL_0341:  ldloc.s    V_15
    IL_0343:  ldloc.s    V_4
    IL_0345:  ldloc.s    V_9
    IL_0347:  ldc.r4     0.0
    IL_034c:  ldc.r4     0.0
    IL_0351:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0356:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_035b:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector3>::Add(!0)
    IL_0360:  ldloc.s    V_15
    IL_0362:  ldloc.s    V_4
    IL_0364:  ldc.r4     0.0
    IL_0369:  ldloc.s    V_10
    IL_036b:  ldc.r4     0.0
    IL_0370:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0375:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_037a:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector3>::Add(!0)
    IL_037f:  br.s       IL_03bf

    IL_0381:  ldloc.s    V_15
    IL_0383:  ldloc.s    V_4
    IL_0385:  ldc.r4     0.0
    IL_038a:  ldloc.s    V_10
    IL_038c:  ldc.r4     0.0
    IL_0391:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0396:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_039b:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector3>::Add(!0)
    IL_03a0:  ldloc.s    V_15
    IL_03a2:  ldloc.s    V_4
    IL_03a4:  ldloc.s    V_9
    IL_03a6:  ldc.r4     0.0
    IL_03ab:  ldc.r4     0.0
    IL_03b0:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_03b5:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_03ba:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector3>::Add(!0)
    IL_03bf:  ldloc.s    V_15
    IL_03c1:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector3>::GetEnumerator()
    IL_03c6:  stloc.s    V_16
    .try
    {
      IL_03c8:  br         IL_04d8

      IL_03cd:  ldloca.s   V_16
      IL_03cf:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype [Engine]Engine.Vector3>::get_Current()
      IL_03d4:  stloc.s    V_17
      IL_03d6:  ldloc.s    V_17
      IL_03d8:  ldloc.0
      IL_03d9:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_03de:  ldc.r4     2.
      IL_03e3:  div
      IL_03e4:  ldc.r4     0.0
      IL_03e9:  ldloc.0
      IL_03ea:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_03ef:  ldc.r4     2.
      IL_03f4:  div
      IL_03f5:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                       float32,
                                                                       float32)
      IL_03fa:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                   valuetype [Engine]Engine.Vector3)
      IL_03ff:  ldloc.s    V_17
      IL_0401:  ldloc.0
      IL_0402:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_0407:  ldc.r4     2.
      IL_040c:  div
      IL_040d:  ldloc.0
      IL_040e:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_0413:  ldloc.0
      IL_0414:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_0419:  ldc.r4     2.
      IL_041e:  div
      IL_041f:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                       float32,
                                                                       float32)
      IL_0424:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0429:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                           valuetype [Engine]Engine.Vector3)
      IL_042e:  stloc.s    V_5
      IL_0430:  ldloca.s   V_5
      IL_0432:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
      IL_0437:  dup
      IL_0438:  ldobj      [Engine]Engine.Vector3
      IL_043d:  ldc.r4     2.e-002
      IL_0442:  ldarg.0
      IL_0443:  call       instance float32 Game.ComponentBody::get_MaxSmoothRiseHeight()
      IL_0448:  ldc.r4     2.e-002
      IL_044d:  add
      IL_044e:  ldc.r4     2.e-002
      IL_0453:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                       float32,
                                                                       float32)
      IL_0458:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_045d:  stobj      [Engine]Engine.Vector3
      IL_0462:  ldloca.s   V_5
      IL_0464:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
      IL_0469:  dup
      IL_046a:  ldobj      [Engine]Engine.Vector3
      IL_046f:  ldc.r4     2.e-002
      IL_0474:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32)
      IL_0479:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                   valuetype [Engine]Engine.Vector3)
      IL_047e:  stobj      [Engine]Engine.Vector3
      IL_0483:  ldarg.0
      IL_0484:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox> Game.ComponentBody::m_collisionBoxes
      IL_0489:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>::Clear()
      IL_048e:  ldarg.0
      IL_048f:  ldloc.s    V_5
      IL_0491:  ldarg.0
      IL_0492:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox> Game.ComponentBody::m_collisionBoxes
      IL_0497:  call       instance void Game.ComponentBody::FindTerrainCollisionBoxes(valuetype [Engine]Engine.BoundingBox,
                                                                                       class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>)
      IL_049c:  ldarg.0
      IL_049d:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox> Game.ComponentBody::m_collisionBoxes
      IL_04a2:  ldarg.0
      IL_04a3:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox> Game.ComponentBody::m_movingBlocksCollisionBoxes
      IL_04a8:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>::AddRange(class [Engine]Engine.DynamicArray`1<!0>)
      IL_04ad:  ldarg.0
      IL_04ae:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox> Game.ComponentBody::m_collisionBoxes
      IL_04b3:  ldarg.0
      IL_04b4:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox> Game.ComponentBody::m_bodiesCollisionBoxes
      IL_04b9:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>::AddRange(class [Engine]Engine.DynamicArray`1<!0>)
      IL_04be:  ldarg.0
      IL_04bf:  ldloc.s    V_5
      IL_04c1:  ldarg.0
      IL_04c2:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox> Game.ComponentBody::m_collisionBoxes
      IL_04c7:  call       instance bool Game.ComponentBody::IsColliding(valuetype [Engine]Engine.BoundingBox,
                                                                         class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>)
      IL_04cc:  brtrue.s   IL_04d8

      IL_04ce:  ldloc.s    V_17
      IL_04d0:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
      IL_04d5:  stloc.3
      IL_04d6:  leave.s    IL_04fd

      IL_04d8:  ldloca.s   V_16
      IL_04da:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype [Engine]Engine.Vector3>::MoveNext()
      IL_04df:  brtrue     IL_03cd

      IL_04e4:  leave.s    IL_04fd

    }  // end .try
    finally
    {
      IL_04e6:  ldloca.s   V_16
      IL_04e8:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype [Engine]Engine.Vector3>
      IL_04ee:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_04f3:  endfinally
    }  // end handler
    IL_04f4:  ldloca.s   V_3
    IL_04f6:  ldloc.s    V_4
    IL_04f8:  call       instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_04fd:  ldloca.s   V_3
    IL_04ff:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_0504:  brfalse.s  IL_0515

    IL_0506:  ldarg.0
    IL_0507:  ldloca.s   V_3
    IL_0509:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_050e:  call       instance void Game.ComponentFrame::set_Position(valuetype [Engine]Engine.Vector3)
    IL_0513:  ldc.i4.1
    IL_0514:  ret

    IL_0515:  ldloc.2
    IL_0516:  ldc.i4.1
    IL_0517:  add
    IL_0518:  stloc.2
    IL_0519:  ldloc.2
    IL_051a:  ldsfld     valuetype [Engine]Engine.Vector3[] Game.ComponentBody::m_freeSpaceOffsets
    IL_051f:  ldlen
    IL_0520:  conv.i4
    IL_0521:  blt        IL_0015

    IL_0526:  ldc.i4.0
    IL_0527:  ret
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
    IL_00d9:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>::AddRange(class [Engine]Engine.DynamicArray`1<!0>)
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
    IL_0104:  call       int32 Game.Terrain::ExtractContents(int32)
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
    // 代码大小       1329 (0x531)
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
    IL_0142:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>::AddRange(class [Engine]Engine.DynamicArray`1<!0>)
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
    IL_0220:  ble.un     IL_039a

    IL_0225:  ldloc.3
    IL_0226:  ldc.r4     0.0
    IL_022b:  beq        IL_0530

    IL_0230:  ldloc.s    V_4
    IL_0232:  ldfld      int32 Game.ComponentBody/CollisionBox::BlockValue
    IL_0237:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_023c:  stloc.s    V_9
    IL_023e:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0243:  ldloc.s    V_9
    IL_0245:  ldelem.ref
    IL_0246:  ldfld      bool Game.Block::HasCollisionBehavior
    IL_024b:  brfalse    IL_02f3

    IL_0250:  ldarg.0
    IL_0251:  ldfld      class Game.SubsystemBlockBehaviors Game.ComponentBody::m_subsystemBlockBehaviors
    IL_0256:  ldloc.s    V_9
    IL_0258:  callvirt   instance class Game.SubsystemBlockBehavior[] Game.SubsystemBlockBehaviors::GetBlockBehaviors(int32)
    IL_025d:  stloc.s    V_10
    IL_025f:  ldc.i4.0
    IL_0260:  stloc.s    V_11
    IL_0262:  br         IL_02e8

    IL_0267:  ldloc.s    V_4
    IL_0269:  ldfld      valuetype [Engine]Engine.BoundingBox Game.ComponentBody/CollisionBox::Box
    IL_026e:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_0273:  ldloc.s    V_4
    IL_0275:  ldfld      valuetype [Engine]Engine.BoundingBox Game.ComponentBody/CollisionBox::Box
    IL_027a:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_027f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0284:  ldc.r4     2.
    IL_0289:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Division(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_028e:  stloc.s    V_12
    IL_0290:  ldloc.s    V_12
    IL_0292:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0297:  call       int32 Game.Terrain::ToCell(float32)
    IL_029c:  ldloc.s    V_12
    IL_029e:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_02a3:  call       int32 Game.Terrain::ToCell(float32)
    IL_02a8:  ldloc.s    V_12
    IL_02aa:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_02af:  call       int32 Game.Terrain::ToCell(float32)
    IL_02b4:  ldarg.1
    IL_02b5:  ldarg.0
    IL_02b6:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_02bb:  ldarg.1
    IL_02bc:  call       float32 Game.ComponentBody::GetVectorComponent(valuetype [Engine]Engine.Vector3,
                                                                        int32)
    IL_02c1:  neg
    IL_02c2:  call       valuetype Game.CellFace Game.CellFace::FromAxisAndDirection(int32,
                                                                                     int32,
                                                                                     int32,
                                                                                     int32,
                                                                                     float32)
    IL_02c7:  stloc.s    V_13
    IL_02c9:  ldloc.s    V_10
    IL_02cb:  ldloc.s    V_11
    IL_02cd:  ldelem.ref
    IL_02ce:  ldloc.s    V_13
    IL_02d0:  ldarg.0
    IL_02d1:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_02d6:  ldarg.1
    IL_02d7:  call       float32 Game.ComponentBody::GetVectorComponent(valuetype [Engine]Engine.Vector3,
                                                                        int32)
    IL_02dc:  ldarg.0
    IL_02dd:  callvirt   instance void Game.SubsystemBlockBehavior::OnCollide(valuetype Game.CellFace,
                                                                              float32,
                                                                              class Game.ComponentBody)
    IL_02e2:  ldloc.s    V_11
    IL_02e4:  ldc.i4.1
    IL_02e5:  add
    IL_02e6:  stloc.s    V_11
    IL_02e8:  ldloc.s    V_11
    IL_02ea:  ldloc.s    V_10
    IL_02ec:  ldlen
    IL_02ed:  conv.i4
    IL_02ee:  blt        IL_0267

    IL_02f3:  ldarg.1
    IL_02f4:  brtrue.s   IL_0319

    IL_02f6:  ldarg.3
    IL_02f7:  ldflda     float32 [Engine]Engine.Vector3::X
    IL_02fc:  dup
    IL_02fd:  ldind.r4
    IL_02fe:  ldloc.3
    IL_02ff:  add
    IL_0300:  stind.r4
    IL_0301:  ldarg.0
    IL_0302:  ldflda     valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_0307:  ldloc.s    V_4
    IL_0309:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentBody/CollisionBox::BlockVelocity
    IL_030e:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0313:  stfld      float32 [Engine]Engine.Vector3::X
    IL_0318:  ret

    IL_0319:  ldarg.1
    IL_031a:  ldc.i4.1
    IL_031b:  bne.un.s   IL_0377

    IL_031d:  ldarg.3
    IL_031e:  ldflda     float32 [Engine]Engine.Vector3::Y
    IL_0323:  dup
    IL_0324:  ldind.r4
    IL_0325:  ldloc.3
    IL_0326:  add
    IL_0327:  stind.r4
    IL_0328:  ldarg.0
    IL_0329:  ldflda     valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_032e:  ldloc.s    V_4
    IL_0330:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentBody/CollisionBox::BlockVelocity
    IL_0335:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_033a:  stfld      float32 [Engine]Engine.Vector3::Y
    IL_033f:  ldarg.2
    IL_0340:  ldc.r4     0.0
    IL_0345:  bge.un     IL_0530

    IL_034a:  ldarg.0
    IL_034b:  ldloc.s    V_4
    IL_034d:  ldfld      int32 Game.ComponentBody/CollisionBox::BlockValue
    IL_0352:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_0357:  call       instance void Game.ComponentBody::set_StandingOnValue(valuetype [System.Runtime]System.Nullable`1<int32>)
    IL_035c:  ldarg.0
    IL_035d:  ldloc.s    V_4
    IL_035f:  ldfld      class Game.ComponentBody Game.ComponentBody/CollisionBox::ComponentBody
    IL_0364:  call       instance void Game.ComponentBody::set_StandingOnBody(class Game.ComponentBody)
    IL_0369:  ldarg.0
    IL_036a:  ldloc.s    V_4
    IL_036c:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentBody/CollisionBox::BlockVelocity
    IL_0371:  call       instance void Game.ComponentBody::set_StandingOnVelocity(valuetype [Engine]Engine.Vector3)
    IL_0376:  ret

    IL_0377:  ldarg.3
    IL_0378:  ldflda     float32 [Engine]Engine.Vector3::Z
    IL_037d:  dup
    IL_037e:  ldind.r4
    IL_037f:  ldloc.3
    IL_0380:  add
    IL_0381:  stind.r4
    IL_0382:  ldarg.0
    IL_0383:  ldflda     valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_0388:  ldloc.s    V_4
    IL_038a:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentBody/CollisionBox::BlockVelocity
    IL_038f:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0394:  stfld      float32 [Engine]Engine.Vector3::Z
    IL_0399:  ret

    IL_039a:  ldloc.s    V_7
    IL_039c:  ldc.r4     0.0
    IL_03a1:  beq        IL_0530

    IL_03a6:  ldloc.s    V_6
    IL_03a8:  ldfld      class Game.ComponentBody Game.ComponentBody/CollisionBox::ComponentBody
    IL_03ad:  stloc.s    V_14
    IL_03af:  ldarg.1
    IL_03b0:  brtrue.s   IL_0408

    IL_03b2:  ldarg.0
    IL_03b3:  ldflda     valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_03b8:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_03bd:  ldloc.s    V_14
    IL_03bf:  ldflda     valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_03c4:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_03c9:  ldarg.0
    IL_03ca:  call       instance float32 Game.ComponentBody::get_Mass()
    IL_03cf:  ldloc.s    V_14
    IL_03d1:  callvirt   instance float32 Game.ComponentBody::get_Mass()
    IL_03d6:  ldc.r4     0.5
    IL_03db:  ldarg.0
    IL_03dc:  ldflda     valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_03e1:  ldflda     float32 [Engine]Engine.Vector3::X
    IL_03e6:  ldloc.s    V_14
    IL_03e8:  ldflda     valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_03ed:  ldflda     float32 [Engine]Engine.Vector3::X
    IL_03f2:  call       void Game.ComponentBody::InelasticCollision(float32,
                                                                     float32,
                                                                     float32,
                                                                     float32,
                                                                     float32,
                                                                     float32&,
                                                                     float32&)
    IL_03f7:  ldarg.3
    IL_03f8:  ldflda     float32 [Engine]Engine.Vector3::X
    IL_03fd:  dup
    IL_03fe:  ldind.r4
    IL_03ff:  ldloc.s    V_7
    IL_0401:  add
    IL_0402:  stind.r4
    IL_0403:  br         IL_0505

    IL_0408:  ldarg.1
    IL_0409:  ldc.i4.1
    IL_040a:  bne.un     IL_04b4

    IL_040f:  ldarg.0
    IL_0410:  ldflda     valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_0415:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_041a:  ldloc.s    V_14
    IL_041c:  ldflda     valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_0421:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0426:  ldarg.0
    IL_0427:  call       instance float32 Game.ComponentBody::get_Mass()
    IL_042c:  ldloc.s    V_14
    IL_042e:  callvirt   instance float32 Game.ComponentBody::get_Mass()
    IL_0433:  ldc.r4     0.5
    IL_0438:  ldarg.0
    IL_0439:  ldflda     valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_043e:  ldflda     float32 [Engine]Engine.Vector3::Y
    IL_0443:  ldloc.s    V_14
    IL_0445:  ldflda     valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_044a:  ldflda     float32 [Engine]Engine.Vector3::Y
    IL_044f:  call       void Game.ComponentBody::InelasticCollision(float32,
                                                                     float32,
                                                                     float32,
                                                                     float32,
                                                                     float32,
                                                                     float32&,
                                                                     float32&)
    IL_0454:  ldarg.3
    IL_0455:  ldflda     float32 [Engine]Engine.Vector3::Y
    IL_045a:  dup
    IL_045b:  ldind.r4
    IL_045c:  ldloc.s    V_7
    IL_045e:  add
    IL_045f:  stind.r4
    IL_0460:  ldarg.2
    IL_0461:  ldc.r4     0.0
    IL_0466:  bge.un     IL_0505

    IL_046b:  ldarg.0
    IL_046c:  ldloc.s    V_6
    IL_046e:  ldfld      int32 Game.ComponentBody/CollisionBox::BlockValue
    IL_0473:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_0478:  call       instance void Game.ComponentBody::set_StandingOnValue(valuetype [System.Runtime]System.Nullable`1<int32>)
    IL_047d:  ldarg.0
    IL_047e:  ldloc.s    V_6
    IL_0480:  ldfld      class Game.ComponentBody Game.ComponentBody/CollisionBox::ComponentBody
    IL_0485:  call       instance void Game.ComponentBody::set_StandingOnBody(class Game.ComponentBody)
    IL_048a:  ldarg.0
    IL_048b:  ldloc.s    V_14
    IL_048d:  ldflda     valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_0492:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0497:  ldc.r4     0.0
    IL_049c:  ldloc.s    V_14
    IL_049e:  ldflda     valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_04a3:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_04a8:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_04ad:  call       instance void Game.ComponentBody::set_StandingOnVelocity(valuetype [Engine]Engine.Vector3)
    IL_04b2:  br.s       IL_0505

    IL_04b4:  ldarg.0
    IL_04b5:  ldflda     valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_04ba:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_04bf:  ldloc.s    V_14
    IL_04c1:  ldflda     valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_04c6:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_04cb:  ldarg.0
    IL_04cc:  call       instance float32 Game.ComponentBody::get_Mass()
    IL_04d1:  ldloc.s    V_14
    IL_04d3:  callvirt   instance float32 Game.ComponentBody::get_Mass()
    IL_04d8:  ldc.r4     0.5
    IL_04dd:  ldarg.0
    IL_04de:  ldflda     valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_04e3:  ldflda     float32 [Engine]Engine.Vector3::Z
    IL_04e8:  ldloc.s    V_14
    IL_04ea:  ldflda     valuetype [Engine]Engine.Vector3 Game.ComponentBody::m_velocity
    IL_04ef:  ldflda     float32 [Engine]Engine.Vector3::Z
    IL_04f4:  call       void Game.ComponentBody::InelasticCollision(float32,
                                                                     float32,
                                                                     float32,
                                                                     float32,
                                                                     float32,
                                                                     float32&,
                                                                     float32&)
    IL_04f9:  ldarg.3
    IL_04fa:  ldflda     float32 [Engine]Engine.Vector3::Z
    IL_04ff:  dup
    IL_0500:  ldind.r4
    IL_0501:  ldloc.s    V_7
    IL_0503:  add
    IL_0504:  stind.r4
    IL_0505:  ldarg.0
    IL_0506:  ldfld      class [System.Runtime]System.Action`1<class Game.ComponentBody> Game.ComponentBody::CollidedWithBody
    IL_050b:  brfalse.s  IL_051a

    IL_050d:  ldarg.0
    IL_050e:  ldfld      class [System.Runtime]System.Action`1<class Game.ComponentBody> Game.ComponentBody::CollidedWithBody
    IL_0513:  ldloc.s    V_14
    IL_0515:  callvirt   instance void class [System.Runtime]System.Action`1<class Game.ComponentBody>::Invoke(!0)
    IL_051a:  ldloc.s    V_14
    IL_051c:  ldfld      class [System.Runtime]System.Action`1<class Game.ComponentBody> Game.ComponentBody::CollidedWithBody
    IL_0521:  brfalse.s  IL_0530

    IL_0523:  ldloc.s    V_14
    IL_0525:  ldfld      class [System.Runtime]System.Action`1<class Game.ComponentBody> Game.ComponentBody::CollidedWithBody
    IL_052a:  ldarg.0
    IL_052b:  callvirt   instance void class [System.Runtime]System.Action`1<class Game.ComponentBody>::Invoke(!0)
    IL_0530:  ret
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
    IL_00f6:  call       int32 Game.Terrain::ExtractContents(int32)
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
    // 代码大小       399 (0x18f)
    .maxstack  6
    .locals init (valuetype [Engine]Engine.Point3 V_0,
             valuetype [Engine]Engine.Point3 V_1,
             int32 V_2,
             int32 V_3,
             class Game.TerrainChunk V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7,
             int32 V_8,
             class Game.Block V_9,
             valuetype [Engine]Engine.BoundingBox[] V_10,
             valuetype [Engine]Engine.Vector3 V_11,
             int32 V_12,
             valuetype Game.ComponentBody/CollisionBox V_13)
    IL_0000:  ldarg.1
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_0006:  call       valuetype [Engine]Engine.Point3 Game.Terrain::ToCell(valuetype [Engine]Engine.Vector3)
    IL_000b:  stloc.0
    IL_000c:  ldarg.1
    IL_000d:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_0012:  call       valuetype [Engine]Engine.Point3 Game.Terrain::ToCell(valuetype [Engine]Engine.Vector3)
    IL_0017:  stloc.1
    IL_0018:  ldloca.s   V_0
    IL_001a:  ldloc.0
    IL_001b:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0020:  ldc.i4.0
    IL_0021:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_0026:  stfld      int32 [Engine]Engine.Point3::Y
    IL_002b:  ldloca.s   V_1
    IL_002d:  ldloc.1
    IL_002e:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0033:  ldc.i4.s   127
    IL_0035:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_003a:  stfld      int32 [Engine]Engine.Point3::Y
    IL_003f:  ldloc.0
    IL_0040:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0045:  ldloc.1
    IL_0046:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_004b:  ble.s      IL_004e

    IL_004d:  ret

    IL_004e:  ldloc.0
    IL_004f:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0054:  stloc.2
    IL_0055:  br         IL_0182

    IL_005a:  ldloc.0
    IL_005b:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0060:  stloc.3
    IL_0061:  br         IL_0172

    IL_0066:  ldarg.0
    IL_0067:  ldfld      class Game.SubsystemTerrain Game.ComponentBody::m_subsystemTerrain
    IL_006c:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0071:  ldloc.2
    IL_0072:  ldloc.3
    IL_0073:  callvirt   instance class Game.TerrainChunk Game.Terrain::GetChunkAtCell(int32,
                                                                                       int32)
    IL_0078:  stloc.s    V_4
    IL_007a:  ldloc.s    V_4
    IL_007c:  brfalse    IL_016e

    IL_0081:  ldloc.2
    IL_0082:  ldc.i4.s   15
    IL_0084:  and
    IL_0085:  ldloc.0
    IL_0086:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_008b:  ldloc.3
    IL_008c:  ldc.i4.s   15
    IL_008e:  and
    IL_008f:  call       int32 Game.TerrainChunk::CalculateCellIndex(int32,
                                                                     int32,
                                                                     int32)
    IL_0094:  stloc.s    V_5
    IL_0096:  ldloc.0
    IL_0097:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_009c:  stloc.s    V_6
    IL_009e:  br         IL_0161

    IL_00a3:  ldloc.s    V_4
    IL_00a5:  ldloc.s    V_5
    IL_00a7:  callvirt   instance int32 Game.TerrainChunk::GetCellValueFast(int32)
    IL_00ac:  stloc.s    V_7
    IL_00ae:  ldloc.s    V_7
    IL_00b0:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_00b5:  stloc.s    V_8
    IL_00b7:  ldloc.s    V_8
    IL_00b9:  brfalse    IL_0155

    IL_00be:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_00c3:  ldloc.s    V_8
    IL_00c5:  ldelem.ref
    IL_00c6:  stloc.s    V_9
    IL_00c8:  ldloc.s    V_9
    IL_00ca:  ldfld      bool Game.Block::IsCollidable
    IL_00cf:  brfalse    IL_0155

    IL_00d4:  ldloc.s    V_9
    IL_00d6:  ldarg.0
    IL_00d7:  ldfld      class Game.SubsystemTerrain Game.ComponentBody::m_subsystemTerrain
    IL_00dc:  ldloc.s    V_7
    IL_00de:  callvirt   instance valuetype [Engine]Engine.BoundingBox[] Game.Block::GetCustomCollisionBoxes(class Game.SubsystemTerrain,
                                                                                                             int32)
    IL_00e3:  stloc.s    V_10
    IL_00e5:  ldloca.s   V_11
    IL_00e7:  ldloc.2
    IL_00e8:  conv.r4
    IL_00e9:  ldloc.s    V_6
    IL_00eb:  conv.r4
    IL_00ec:  ldloc.3
    IL_00ed:  conv.r4
    IL_00ee:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00f3:  ldc.i4.0
    IL_00f4:  stloc.s    V_12
    IL_00f6:  br.s       IL_014d

    IL_00f8:  ldarg.2
    IL_00f9:  ldloca.s   V_13
    IL_00fb:  initobj    Game.ComponentBody/CollisionBox
    IL_0101:  ldloca.s   V_13
    IL_0103:  ldloc.s    V_11
    IL_0105:  ldloc.s    V_10
    IL_0107:  ldloc.s    V_12
    IL_0109:  ldelema    [Engine]Engine.BoundingBox
    IL_010e:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_0113:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0118:  ldloc.s    V_11
    IL_011a:  ldloc.s    V_10
    IL_011c:  ldloc.s    V_12
    IL_011e:  ldelema    [Engine]Engine.BoundingBox
    IL_0123:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_0128:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_012d:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_0132:  stfld      valuetype [Engine]Engine.BoundingBox Game.ComponentBody/CollisionBox::Box
    IL_0137:  ldloca.s   V_13
    IL_0139:  ldloc.s    V_7
    IL_013b:  stfld      int32 Game.ComponentBody/CollisionBox::BlockValue
    IL_0140:  ldloc.s    V_13
    IL_0142:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>::Add(!0)
    IL_0147:  ldloc.s    V_12
    IL_0149:  ldc.i4.1
    IL_014a:  add
    IL_014b:  stloc.s    V_12
    IL_014d:  ldloc.s    V_12
    IL_014f:  ldloc.s    V_10
    IL_0151:  ldlen
    IL_0152:  conv.i4
    IL_0153:  blt.s      IL_00f8

    IL_0155:  ldloc.s    V_6
    IL_0157:  ldc.i4.1
    IL_0158:  add
    IL_0159:  stloc.s    V_6
    IL_015b:  ldloc.s    V_5
    IL_015d:  ldc.i4.1
    IL_015e:  add
    IL_015f:  stloc.s    V_5
    IL_0161:  ldloc.s    V_6
    IL_0163:  ldloc.1
    IL_0164:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0169:  ble        IL_00a3

    IL_016e:  ldloc.3
    IL_016f:  ldc.i4.1
    IL_0170:  add
    IL_0171:  stloc.3
    IL_0172:  ldloc.3
    IL_0173:  ldloc.1
    IL_0174:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0179:  ble        IL_0066

    IL_017e:  ldloc.2
    IL_017f:  ldc.i4.1
    IL_0180:  add
    IL_0181:  stloc.2
    IL_0182:  ldloc.2
    IL_0183:  ldloc.1
    IL_0184:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0189:  ble        IL_005a

    IL_018e:  ret
  } // end of method ComponentBody::FindTerrainCollisionBoxes

  .method private hidebysig instance void 
          FindSneakCollisionBoxes(valuetype [Engine]Engine.Vector3 position,
                                  valuetype [Engine]Engine.Vector2 overhang,
                                  class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox> result) cil managed
  {
    // 代码大小       1692 (0x69c)
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
    IL_0006:  call       int32 Game.Terrain::ToCell(float32)
    IL_000b:  stloc.0
    IL_000c:  ldarg.1
    IL_000d:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0012:  call       int32 Game.Terrain::ToCell(float32)
    IL_0017:  stloc.1
    IL_0018:  ldarg.1
    IL_0019:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_001e:  call       int32 Game.Terrain::ToCell(float32)
    IL_0023:  stloc.2
    IL_0024:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0029:  ldarg.0
    IL_002a:  ldfld      class Game.SubsystemTerrain Game.ComponentBody::m_subsystemTerrain
    IL_002f:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0034:  ldloc.0
    IL_0035:  ldloc.1
    IL_0036:  ldc.i4.1
    IL_0037:  sub
    IL_0038:  ldloc.2
    IL_0039:  callvirt   instance int32 Game.Terrain::GetCellContents(int32,
                                                                      int32,
                                                                      int32)
    IL_003e:  ldelem.ref
    IL_003f:  ldfld      bool Game.Block::IsCollidable
    IL_0044:  brtrue     IL_069b

    IL_0049:  ldarg.1
    IL_004a:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_004f:  ldloc.0
    IL_0050:  conv.r4
    IL_0051:  ldc.r4     0.5
    IL_0056:  add
    IL_0057:  clt
    IL_0059:  ldarg.1
    IL_005a:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_005f:  ldloc.2
    IL_0060:  conv.r4
    IL_0061:  ldc.r4     0.5
    IL_0066:  add
    IL_0067:  clt
    IL_0069:  stloc.3
    IL_006a:  brfalse    IL_0387

    IL_006f:  ldloc.3
    IL_0070:  brfalse    IL_01fe

    IL_0075:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_007a:  ldarg.0
    IL_007b:  ldfld      class Game.SubsystemTerrain Game.ComponentBody::m_subsystemTerrain
    IL_0080:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0085:  ldloc.0
    IL_0086:  ldloc.1
    IL_0087:  ldc.i4.1
    IL_0088:  sub
    IL_0089:  ldloc.2
    IL_008a:  ldc.i4.1
    IL_008b:  sub
    IL_008c:  callvirt   instance int32 Game.Terrain::GetCellContents(int32,
                                                                      int32,
                                                                      int32)
    IL_0091:  ldelem.ref
    IL_0092:  ldfld      bool Game.Block::IsCollidable
    IL_0097:  stloc.s    V_4
    IL_0099:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_009e:  ldarg.0
    IL_009f:  ldfld      class Game.SubsystemTerrain Game.ComponentBody::m_subsystemTerrain
    IL_00a4:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_00a9:  ldloc.0
    IL_00aa:  ldc.i4.1
    IL_00ab:  sub
    IL_00ac:  ldloc.1
    IL_00ad:  ldc.i4.1
    IL_00ae:  sub
    IL_00af:  ldloc.2
    IL_00b0:  callvirt   instance int32 Game.Terrain::GetCellContents(int32,
                                                                      int32,
                                                                      int32)
    IL_00b5:  ldelem.ref
    IL_00b6:  ldfld      bool Game.Block::IsCollidable
    IL_00bb:  stloc.s    V_5
    IL_00bd:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_00c2:  ldarg.0
    IL_00c3:  ldfld      class Game.SubsystemTerrain Game.ComponentBody::m_subsystemTerrain
    IL_00c8:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_00cd:  ldloc.0
    IL_00ce:  ldc.i4.1
    IL_00cf:  sub
    IL_00d0:  ldloc.1
    IL_00d1:  ldc.i4.1
    IL_00d2:  sub
    IL_00d3:  ldloc.2
    IL_00d4:  ldc.i4.1
    IL_00d5:  sub
    IL_00d6:  callvirt   instance int32 Game.Terrain::GetCellContents(int32,
                                                                      int32,
                                                                      int32)
    IL_00db:  ldelem.ref
    IL_00dc:  ldfld      bool Game.Block::IsCollidable
    IL_00e1:  stloc.s    V_6
    IL_00e3:  ldloc.s    V_4
    IL_00e5:  brfalse.s  IL_00eb

    IL_00e7:  ldloc.s    V_5
    IL_00e9:  brfalse.s  IL_00fc

    IL_00eb:  ldloc.s    V_4
    IL_00ed:  brtrue.s   IL_00f6

    IL_00ef:  ldloc.s    V_5
    IL_00f1:  ldc.i4.0
    IL_00f2:  ceq
    IL_00f4:  br.s       IL_00f7

    IL_00f6:  ldc.i4.0
    IL_00f7:  ldloc.s    V_6
    IL_00f9:  and
    IL_00fa:  brfalse.s  IL_0143

    IL_00fc:  ldarg.3
    IL_00fd:  ldloca.s   V_7
    IL_00ff:  initobj    Game.ComponentBody/CollisionBox
    IL_0105:  ldloca.s   V_7
    IL_0107:  ldloc.0
    IL_0108:  conv.r4
    IL_0109:  ldloc.1
    IL_010a:  conv.r4
    IL_010b:  ldloc.2
    IL_010c:  conv.r4
    IL_010d:  ldarg.2
    IL_010e:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0113:  add
    IL_0114:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0119:  ldloc.0
    IL_011a:  ldc.i4.1
    IL_011b:  add
    IL_011c:  conv.r4
    IL_011d:  ldloc.1
    IL_011e:  ldc.i4.1
    IL_011f:  add
    IL_0120:  conv.r4
    IL_0121:  ldloc.2
    IL_0122:  ldc.i4.1
    IL_0123:  add
    IL_0124:  conv.r4
    IL_0125:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_012a:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_012f:  stfld      valuetype [Engine]Engine.BoundingBox Game.ComponentBody/CollisionBox::Box
    IL_0134:  ldloca.s   V_7
    IL_0136:  ldc.i4.0
    IL_0137:  stfld      int32 Game.ComponentBody/CollisionBox::BlockValue
    IL_013c:  ldloc.s    V_7
    IL_013e:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>::Add(!0)
    IL_0143:  ldloc.s    V_4
    IL_0145:  ldc.i4.0
    IL_0146:  ceq
    IL_0148:  ldloc.s    V_5
    IL_014a:  and
    IL_014b:  brtrue.s   IL_015e

    IL_014d:  ldloc.s    V_4
    IL_014f:  brtrue.s   IL_0158

    IL_0151:  ldloc.s    V_5
    IL_0153:  ldc.i4.0
    IL_0154:  ceq
    IL_0156:  br.s       IL_0159

    IL_0158:  ldc.i4.0
    IL_0159:  ldloc.s    V_6
    IL_015b:  and
    IL_015c:  brfalse.s  IL_01a5

    IL_015e:  ldarg.3
    IL_015f:  ldloca.s   V_7
    IL_0161:  initobj    Game.ComponentBody/CollisionBox
    IL_0167:  ldloca.s   V_7
    IL_0169:  ldloc.0
    IL_016a:  conv.r4
    IL_016b:  ldarg.2
    IL_016c:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0171:  add
    IL_0172:  ldloc.1
    IL_0173:  conv.r4
    IL_0174:  ldloc.2
    IL_0175:  conv.r4
    IL_0176:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_017b:  ldloc.0
    IL_017c:  ldc.i4.1
    IL_017d:  add
    IL_017e:  conv.r4
    IL_017f:  ldloc.1
    IL_0180:  ldc.i4.1
    IL_0181:  add
    IL_0182:  conv.r4
    IL_0183:  ldloc.2
    IL_0184:  ldc.i4.1
    IL_0185:  add
    IL_0186:  conv.r4
    IL_0187:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_018c:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_0191:  stfld      valuetype [Engine]Engine.BoundingBox Game.ComponentBody/CollisionBox::Box
    IL_0196:  ldloca.s   V_7
    IL_0198:  ldc.i4.0
    IL_0199:  stfld      int32 Game.ComponentBody/CollisionBox::BlockValue
    IL_019e:  ldloc.s    V_7
    IL_01a0:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>::Add(!0)
    IL_01a5:  ldloc.s    V_4
    IL_01a7:  ldloc.s    V_5
    IL_01a9:  and
    IL_01aa:  brfalse    IL_069b

    IL_01af:  ldarg.3
    IL_01b0:  ldloca.s   V_7
    IL_01b2:  initobj    Game.ComponentBody/CollisionBox
    IL_01b8:  ldloca.s   V_7
    IL_01ba:  ldloc.0
    IL_01bb:  conv.r4
    IL_01bc:  ldarg.2
    IL_01bd:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_01c2:  add
    IL_01c3:  ldloc.1
    IL_01c4:  conv.r4
    IL_01c5:  ldloc.2
    IL_01c6:  conv.r4
    IL_01c7:  ldarg.2
    IL_01c8:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_01cd:  add
    IL_01ce:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_01d3:  ldloc.0
    IL_01d4:  ldc.i4.1
    IL_01d5:  add
    IL_01d6:  conv.r4
    IL_01d7:  ldloc.1
    IL_01d8:  ldc.i4.1
    IL_01d9:  add
    IL_01da:  conv.r4
    IL_01db:  ldloc.2
    IL_01dc:  ldc.i4.1
    IL_01dd:  add
    IL_01de:  conv.r4
    IL_01df:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_01e4:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_01e9:  stfld      valuetype [Engine]Engine.BoundingBox Game.ComponentBody/CollisionBox::Box
    IL_01ee:  ldloca.s   V_7
    IL_01f0:  ldc.i4.0
    IL_01f1:  stfld      int32 Game.ComponentBody/CollisionBox::BlockValue
    IL_01f6:  ldloc.s    V_7
    IL_01f8:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>::Add(!0)
    IL_01fd:  ret

    IL_01fe:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0203:  ldarg.0
    IL_0204:  ldfld      class Game.SubsystemTerrain Game.ComponentBody::m_subsystemTerrain
    IL_0209:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_020e:  ldloc.0
    IL_020f:  ldloc.1
    IL_0210:  ldc.i4.1
    IL_0211:  sub
    IL_0212:  ldloc.2
    IL_0213:  ldc.i4.1
    IL_0214:  add
    IL_0215:  callvirt   instance int32 Game.Terrain::GetCellContents(int32,
                                                                      int32,
                                                                      int32)
    IL_021a:  ldelem.ref
    IL_021b:  ldfld      bool Game.Block::IsCollidable
    IL_0220:  stloc.s    V_8
    IL_0222:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0227:  ldarg.0
    IL_0228:  ldfld      class Game.SubsystemTerrain Game.ComponentBody::m_subsystemTerrain
    IL_022d:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0232:  ldloc.0
    IL_0233:  ldc.i4.1
    IL_0234:  sub
    IL_0235:  ldloc.1
    IL_0236:  ldc.i4.1
    IL_0237:  sub
    IL_0238:  ldloc.2
    IL_0239:  callvirt   instance int32 Game.Terrain::GetCellContents(int32,
                                                                      int32,
                                                                      int32)
    IL_023e:  ldelem.ref
    IL_023f:  ldfld      bool Game.Block::IsCollidable
    IL_0244:  stloc.s    V_9
    IL_0246:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_024b:  ldarg.0
    IL_024c:  ldfld      class Game.SubsystemTerrain Game.ComponentBody::m_subsystemTerrain
    IL_0251:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0256:  ldloc.0
    IL_0257:  ldc.i4.1
    IL_0258:  sub
    IL_0259:  ldloc.1
    IL_025a:  ldc.i4.1
    IL_025b:  sub
    IL_025c:  ldloc.2
    IL_025d:  ldc.i4.1
    IL_025e:  add
    IL_025f:  callvirt   instance int32 Game.Terrain::GetCellContents(int32,
                                                                      int32,
                                                                      int32)
    IL_0264:  ldelem.ref
    IL_0265:  ldfld      bool Game.Block::IsCollidable
    IL_026a:  stloc.s    V_10
    IL_026c:  ldloc.s    V_8
    IL_026e:  brfalse.s  IL_0274

    IL_0270:  ldloc.s    V_9
    IL_0272:  brfalse.s  IL_0285

    IL_0274:  ldloc.s    V_8
    IL_0276:  brtrue.s   IL_027f

    IL_0278:  ldloc.s    V_9
    IL_027a:  ldc.i4.0
    IL_027b:  ceq
    IL_027d:  br.s       IL_0280

    IL_027f:  ldc.i4.0
    IL_0280:  ldloc.s    V_10
    IL_0282:  and
    IL_0283:  brfalse.s  IL_02cc

    IL_0285:  ldarg.3
    IL_0286:  ldloca.s   V_7
    IL_0288:  initobj    Game.ComponentBody/CollisionBox
    IL_028e:  ldloca.s   V_7
    IL_0290:  ldloc.0
    IL_0291:  conv.r4
    IL_0292:  ldloc.1
    IL_0293:  conv.r4
    IL_0294:  ldloc.2
    IL_0295:  conv.r4
    IL_0296:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_029b:  ldloc.0
    IL_029c:  ldc.i4.1
    IL_029d:  add
    IL_029e:  conv.r4
    IL_029f:  ldloc.1
    IL_02a0:  ldc.i4.1
    IL_02a1:  add
    IL_02a2:  conv.r4
    IL_02a3:  ldloc.2
    IL_02a4:  ldc.i4.1
    IL_02a5:  add
    IL_02a6:  conv.r4
    IL_02a7:  ldarg.2
    IL_02a8:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_02ad:  sub
    IL_02ae:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_02b3:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_02b8:  stfld      valuetype [Engine]Engine.BoundingBox Game.ComponentBody/CollisionBox::Box
    IL_02bd:  ldloca.s   V_7
    IL_02bf:  ldc.i4.0
    IL_02c0:  stfld      int32 Game.ComponentBody/CollisionBox::BlockValue
    IL_02c5:  ldloc.s    V_7
    IL_02c7:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>::Add(!0)
    IL_02cc:  ldloc.s    V_8
    IL_02ce:  ldc.i4.0
    IL_02cf:  ceq
    IL_02d1:  ldloc.s    V_9
    IL_02d3:  and
    IL_02d4:  brtrue.s   IL_02e7

    IL_02d6:  ldloc.s    V_8
    IL_02d8:  brtrue.s   IL_02e1

    IL_02da:  ldloc.s    V_9
    IL_02dc:  ldc.i4.0
    IL_02dd:  ceq
    IL_02df:  br.s       IL_02e2

    IL_02e1:  ldc.i4.0
    IL_02e2:  ldloc.s    V_10
    IL_02e4:  and
    IL_02e5:  brfalse.s  IL_032e

    IL_02e7:  ldarg.3
    IL_02e8:  ldloca.s   V_7
    IL_02ea:  initobj    Game.ComponentBody/CollisionBox
    IL_02f0:  ldloca.s   V_7
    IL_02f2:  ldloc.0
    IL_02f3:  conv.r4
    IL_02f4:  ldarg.2
    IL_02f5:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_02fa:  add
    IL_02fb:  ldloc.1
    IL_02fc:  conv.r4
    IL_02fd:  ldloc.2
    IL_02fe:  conv.r4
    IL_02ff:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0304:  ldloc.0
    IL_0305:  ldc.i4.1
    IL_0306:  add
    IL_0307:  conv.r4
    IL_0308:  ldloc.1
    IL_0309:  ldc.i4.1
    IL_030a:  add
    IL_030b:  conv.r4
    IL_030c:  ldloc.2
    IL_030d:  ldc.i4.1
    IL_030e:  add
    IL_030f:  conv.r4
    IL_0310:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0315:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_031a:  stfld      valuetype [Engine]Engine.BoundingBox Game.ComponentBody/CollisionBox::Box
    IL_031f:  ldloca.s   V_7
    IL_0321:  ldc.i4.0
    IL_0322:  stfld      int32 Game.ComponentBody/CollisionBox::BlockValue
    IL_0327:  ldloc.s    V_7
    IL_0329:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>::Add(!0)
    IL_032e:  ldloc.s    V_8
    IL_0330:  ldloc.s    V_9
    IL_0332:  and
    IL_0333:  brfalse    IL_069b

    IL_0338:  ldarg.3
    IL_0339:  ldloca.s   V_7
    IL_033b:  initobj    Game.ComponentBody/CollisionBox
    IL_0341:  ldloca.s   V_7
    IL_0343:  ldloc.0
    IL_0344:  conv.r4
    IL_0345:  ldarg.2
    IL_0346:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_034b:  add
    IL_034c:  ldloc.1
    IL_034d:  conv.r4
    IL_034e:  ldloc.2
    IL_034f:  conv.r4
    IL_0350:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0355:  ldloc.0
    IL_0356:  ldc.i4.1
    IL_0357:  add
    IL_0358:  conv.r4
    IL_0359:  ldloc.1
    IL_035a:  ldc.i4.1
    IL_035b:  add
    IL_035c:  conv.r4
    IL_035d:  ldloc.2
    IL_035e:  ldc.i4.1
    IL_035f:  add
    IL_0360:  conv.r4
    IL_0361:  ldarg.2
    IL_0362:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0367:  sub
    IL_0368:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_036d:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_0372:  stfld      valuetype [Engine]Engine.BoundingBox Game.ComponentBody/CollisionBox::Box
    IL_0377:  ldloca.s   V_7
    IL_0379:  ldc.i4.0
    IL_037a:  stfld      int32 Game.ComponentBody/CollisionBox::BlockValue
    IL_037f:  ldloc.s    V_7
    IL_0381:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>::Add(!0)
    IL_0386:  ret

    IL_0387:  ldloc.3
    IL_0388:  brfalse    IL_0516

    IL_038d:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0392:  ldarg.0
    IL_0393:  ldfld      class Game.SubsystemTerrain Game.ComponentBody::m_subsystemTerrain
    IL_0398:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_039d:  ldloc.0
    IL_039e:  ldloc.1
    IL_039f:  ldc.i4.1
    IL_03a0:  sub
    IL_03a1:  ldloc.2
    IL_03a2:  ldc.i4.1
    IL_03a3:  sub
    IL_03a4:  callvirt   instance int32 Game.Terrain::GetCellContents(int32,
                                                                      int32,
                                                                      int32)
    IL_03a9:  ldelem.ref
    IL_03aa:  ldfld      bool Game.Block::IsCollidable
    IL_03af:  stloc.s    V_11
    IL_03b1:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_03b6:  ldarg.0
    IL_03b7:  ldfld      class Game.SubsystemTerrain Game.ComponentBody::m_subsystemTerrain
    IL_03bc:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_03c1:  ldloc.0
    IL_03c2:  ldc.i4.1
    IL_03c3:  add
    IL_03c4:  ldloc.1
    IL_03c5:  ldc.i4.1
    IL_03c6:  sub
    IL_03c7:  ldloc.2
    IL_03c8:  callvirt   instance int32 Game.Terrain::GetCellContents(int32,
                                                                      int32,
                                                                      int32)
    IL_03cd:  ldelem.ref
    IL_03ce:  ldfld      bool Game.Block::IsCollidable
    IL_03d3:  stloc.s    V_12
    IL_03d5:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_03da:  ldarg.0
    IL_03db:  ldfld      class Game.SubsystemTerrain Game.ComponentBody::m_subsystemTerrain
    IL_03e0:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_03e5:  ldloc.0
    IL_03e6:  ldc.i4.1
    IL_03e7:  add
    IL_03e8:  ldloc.1
    IL_03e9:  ldc.i4.1
    IL_03ea:  sub
    IL_03eb:  ldloc.2
    IL_03ec:  ldc.i4.1
    IL_03ed:  sub
    IL_03ee:  callvirt   instance int32 Game.Terrain::GetCellContents(int32,
                                                                      int32,
                                                                      int32)
    IL_03f3:  ldelem.ref
    IL_03f4:  ldfld      bool Game.Block::IsCollidable
    IL_03f9:  stloc.s    V_13
    IL_03fb:  ldloc.s    V_11
    IL_03fd:  brfalse.s  IL_0403

    IL_03ff:  ldloc.s    V_12
    IL_0401:  brfalse.s  IL_0414

    IL_0403:  ldloc.s    V_11
    IL_0405:  brtrue.s   IL_040e

    IL_0407:  ldloc.s    V_12
    IL_0409:  ldc.i4.0
    IL_040a:  ceq
    IL_040c:  br.s       IL_040f

    IL_040e:  ldc.i4.0
    IL_040f:  ldloc.s    V_13
    IL_0411:  and
    IL_0412:  brfalse.s  IL_045b

    IL_0414:  ldarg.3
    IL_0415:  ldloca.s   V_7
    IL_0417:  initobj    Game.ComponentBody/CollisionBox
    IL_041d:  ldloca.s   V_7
    IL_041f:  ldloc.0
    IL_0420:  conv.r4
    IL_0421:  ldloc.1
    IL_0422:  conv.r4
    IL_0423:  ldloc.2
    IL_0424:  conv.r4
    IL_0425:  ldarg.2
    IL_0426:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_042b:  add
    IL_042c:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0431:  ldloc.0
    IL_0432:  ldc.i4.1
    IL_0433:  add
    IL_0434:  conv.r4
    IL_0435:  ldloc.1
    IL_0436:  ldc.i4.1
    IL_0437:  add
    IL_0438:  conv.r4
    IL_0439:  ldloc.2
    IL_043a:  ldc.i4.1
    IL_043b:  add
    IL_043c:  conv.r4
    IL_043d:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0442:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_0447:  stfld      valuetype [Engine]Engine.BoundingBox Game.ComponentBody/CollisionBox::Box
    IL_044c:  ldloca.s   V_7
    IL_044e:  ldc.i4.0
    IL_044f:  stfld      int32 Game.ComponentBody/CollisionBox::BlockValue
    IL_0454:  ldloc.s    V_7
    IL_0456:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>::Add(!0)
    IL_045b:  ldloc.s    V_11
    IL_045d:  ldc.i4.0
    IL_045e:  ceq
    IL_0460:  ldloc.s    V_12
    IL_0462:  and
    IL_0463:  brtrue.s   IL_0476

    IL_0465:  ldloc.s    V_11
    IL_0467:  brtrue.s   IL_0470

    IL_0469:  ldloc.s    V_12
    IL_046b:  ldc.i4.0
    IL_046c:  ceq
    IL_046e:  br.s       IL_0471

    IL_0470:  ldc.i4.0
    IL_0471:  ldloc.s    V_13
    IL_0473:  and
    IL_0474:  brfalse.s  IL_04bd

    IL_0476:  ldarg.3
    IL_0477:  ldloca.s   V_7
    IL_0479:  initobj    Game.ComponentBody/CollisionBox
    IL_047f:  ldloca.s   V_7
    IL_0481:  ldloc.0
    IL_0482:  conv.r4
    IL_0483:  ldloc.1
    IL_0484:  conv.r4
    IL_0485:  ldloc.2
    IL_0486:  conv.r4
    IL_0487:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_048c:  ldloc.0
    IL_048d:  ldc.i4.1
    IL_048e:  add
    IL_048f:  conv.r4
    IL_0490:  ldarg.2
    IL_0491:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0496:  sub
    IL_0497:  ldloc.1
    IL_0498:  ldc.i4.1
    IL_0499:  add
    IL_049a:  conv.r4
    IL_049b:  ldloc.2
    IL_049c:  ldc.i4.1
    IL_049d:  add
    IL_049e:  conv.r4
    IL_049f:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_04a4:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_04a9:  stfld      valuetype [Engine]Engine.BoundingBox Game.ComponentBody/CollisionBox::Box
    IL_04ae:  ldloca.s   V_7
    IL_04b0:  ldc.i4.0
    IL_04b1:  stfld      int32 Game.ComponentBody/CollisionBox::BlockValue
    IL_04b6:  ldloc.s    V_7
    IL_04b8:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>::Add(!0)
    IL_04bd:  ldloc.s    V_11
    IL_04bf:  ldloc.s    V_12
    IL_04c1:  and
    IL_04c2:  brfalse    IL_069b

    IL_04c7:  ldarg.3
    IL_04c8:  ldloca.s   V_7
    IL_04ca:  initobj    Game.ComponentBody/CollisionBox
    IL_04d0:  ldloca.s   V_7
    IL_04d2:  ldloc.0
    IL_04d3:  conv.r4
    IL_04d4:  ldloc.1
    IL_04d5:  conv.r4
    IL_04d6:  ldloc.2
    IL_04d7:  conv.r4
    IL_04d8:  ldarg.2
    IL_04d9:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_04de:  add
    IL_04df:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_04e4:  ldloc.0
    IL_04e5:  ldc.i4.1
    IL_04e6:  add
    IL_04e7:  conv.r4
    IL_04e8:  ldarg.2
    IL_04e9:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_04ee:  sub
    IL_04ef:  ldloc.1
    IL_04f0:  ldc.i4.1
    IL_04f1:  add
    IL_04f2:  conv.r4
    IL_04f3:  ldloc.2
    IL_04f4:  ldc.i4.1
    IL_04f5:  add
    IL_04f6:  conv.r4
    IL_04f7:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_04fc:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_0501:  stfld      valuetype [Engine]Engine.BoundingBox Game.ComponentBody/CollisionBox::Box
    IL_0506:  ldloca.s   V_7
    IL_0508:  ldc.i4.0
    IL_0509:  stfld      int32 Game.ComponentBody/CollisionBox::BlockValue
    IL_050e:  ldloc.s    V_7
    IL_0510:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>::Add(!0)
    IL_0515:  ret

    IL_0516:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_051b:  ldarg.0
    IL_051c:  ldfld      class Game.SubsystemTerrain Game.ComponentBody::m_subsystemTerrain
    IL_0521:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0526:  ldloc.0
    IL_0527:  ldloc.1
    IL_0528:  ldc.i4.1
    IL_0529:  sub
    IL_052a:  ldloc.2
    IL_052b:  ldc.i4.1
    IL_052c:  add
    IL_052d:  callvirt   instance int32 Game.Terrain::GetCellContents(int32,
                                                                      int32,
                                                                      int32)
    IL_0532:  ldelem.ref
    IL_0533:  ldfld      bool Game.Block::IsCollidable
    IL_0538:  stloc.s    V_14
    IL_053a:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_053f:  ldarg.0
    IL_0540:  ldfld      class Game.SubsystemTerrain Game.ComponentBody::m_subsystemTerrain
    IL_0545:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_054a:  ldloc.0
    IL_054b:  ldc.i4.1
    IL_054c:  add
    IL_054d:  ldloc.1
    IL_054e:  ldc.i4.1
    IL_054f:  sub
    IL_0550:  ldloc.2
    IL_0551:  callvirt   instance int32 Game.Terrain::GetCellContents(int32,
                                                                      int32,
                                                                      int32)
    IL_0556:  ldelem.ref
    IL_0557:  ldfld      bool Game.Block::IsCollidable
    IL_055c:  stloc.s    V_15
    IL_055e:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0563:  ldarg.0
    IL_0564:  ldfld      class Game.SubsystemTerrain Game.ComponentBody::m_subsystemTerrain
    IL_0569:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_056e:  ldloc.0
    IL_056f:  ldc.i4.1
    IL_0570:  add
    IL_0571:  ldloc.1
    IL_0572:  ldc.i4.1
    IL_0573:  sub
    IL_0574:  ldloc.2
    IL_0575:  ldc.i4.1
    IL_0576:  add
    IL_0577:  callvirt   instance int32 Game.Terrain::GetCellContents(int32,
                                                                      int32,
                                                                      int32)
    IL_057c:  ldelem.ref
    IL_057d:  ldfld      bool Game.Block::IsCollidable
    IL_0582:  stloc.s    V_16
    IL_0584:  ldloc.s    V_14
    IL_0586:  brfalse.s  IL_058c

    IL_0588:  ldloc.s    V_15
    IL_058a:  brfalse.s  IL_059d

    IL_058c:  ldloc.s    V_14
    IL_058e:  brtrue.s   IL_0597

    IL_0590:  ldloc.s    V_15
    IL_0592:  ldc.i4.0
    IL_0593:  ceq
    IL_0595:  br.s       IL_0598

    IL_0597:  ldc.i4.0
    IL_0598:  ldloc.s    V_16
    IL_059a:  and
    IL_059b:  brfalse.s  IL_05e4

    IL_059d:  ldarg.3
    IL_059e:  ldloca.s   V_7
    IL_05a0:  initobj    Game.ComponentBody/CollisionBox
    IL_05a6:  ldloca.s   V_7
    IL_05a8:  ldloc.0
    IL_05a9:  conv.r4
    IL_05aa:  ldloc.1
    IL_05ab:  conv.r4
    IL_05ac:  ldloc.2
    IL_05ad:  conv.r4
    IL_05ae:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_05b3:  ldloc.0
    IL_05b4:  ldc.i4.1
    IL_05b5:  add
    IL_05b6:  conv.r4
    IL_05b7:  ldloc.1
    IL_05b8:  ldc.i4.1
    IL_05b9:  add
    IL_05ba:  conv.r4
    IL_05bb:  ldloc.2
    IL_05bc:  ldc.i4.1
    IL_05bd:  add
    IL_05be:  conv.r4
    IL_05bf:  ldarg.2
    IL_05c0:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_05c5:  sub
    IL_05c6:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_05cb:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_05d0:  stfld      valuetype [Engine]Engine.BoundingBox Game.ComponentBody/CollisionBox::Box
    IL_05d5:  ldloca.s   V_7
    IL_05d7:  ldc.i4.0
    IL_05d8:  stfld      int32 Game.ComponentBody/CollisionBox::BlockValue
    IL_05dd:  ldloc.s    V_7
    IL_05df:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>::Add(!0)
    IL_05e4:  ldloc.s    V_14
    IL_05e6:  ldc.i4.0
    IL_05e7:  ceq
    IL_05e9:  ldloc.s    V_15
    IL_05eb:  and
    IL_05ec:  brtrue.s   IL_05ff

    IL_05ee:  ldloc.s    V_14
    IL_05f0:  brtrue.s   IL_05f9

    IL_05f2:  ldloc.s    V_15
    IL_05f4:  ldc.i4.0
    IL_05f5:  ceq
    IL_05f7:  br.s       IL_05fa

    IL_05f9:  ldc.i4.0
    IL_05fa:  ldloc.s    V_16
    IL_05fc:  and
    IL_05fd:  brfalse.s  IL_0646

    IL_05ff:  ldarg.3
    IL_0600:  ldloca.s   V_7
    IL_0602:  initobj    Game.ComponentBody/CollisionBox
    IL_0608:  ldloca.s   V_7
    IL_060a:  ldloc.0
    IL_060b:  conv.r4
    IL_060c:  ldloc.1
    IL_060d:  conv.r4
    IL_060e:  ldloc.2
    IL_060f:  conv.r4
    IL_0610:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0615:  ldloc.0
    IL_0616:  ldc.i4.1
    IL_0617:  add
    IL_0618:  conv.r4
    IL_0619:  ldarg.2
    IL_061a:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_061f:  sub
    IL_0620:  ldloc.1
    IL_0621:  ldc.i4.1
    IL_0622:  add
    IL_0623:  conv.r4
    IL_0624:  ldloc.2
    IL_0625:  ldc.i4.1
    IL_0626:  add
    IL_0627:  conv.r4
    IL_0628:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_062d:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_0632:  stfld      valuetype [Engine]Engine.BoundingBox Game.ComponentBody/CollisionBox::Box
    IL_0637:  ldloca.s   V_7
    IL_0639:  ldc.i4.0
    IL_063a:  stfld      int32 Game.ComponentBody/CollisionBox::BlockValue
    IL_063f:  ldloc.s    V_7
    IL_0641:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>::Add(!0)
    IL_0646:  ldloc.s    V_14
    IL_0648:  ldloc.s    V_15
    IL_064a:  and
    IL_064b:  brfalse.s  IL_069b

    IL_064d:  ldarg.3
    IL_064e:  ldloca.s   V_7
    IL_0650:  initobj    Game.ComponentBody/CollisionBox
    IL_0656:  ldloca.s   V_7
    IL_0658:  ldloc.0
    IL_0659:  conv.r4
    IL_065a:  ldloc.1
    IL_065b:  conv.r4
    IL_065c:  ldloc.2
    IL_065d:  conv.r4
    IL_065e:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0663:  ldloc.0
    IL_0664:  ldc.i4.1
    IL_0665:  add
    IL_0666:  conv.r4
    IL_0667:  ldarg.2
    IL_0668:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_066d:  sub
    IL_066e:  ldloc.1
    IL_066f:  ldc.i4.1
    IL_0670:  add
    IL_0671:  conv.r4
    IL_0672:  ldloc.2
    IL_0673:  ldc.i4.1
    IL_0674:  add
    IL_0675:  conv.r4
    IL_0676:  ldarg.2
    IL_0677:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_067c:  sub
    IL_067d:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0682:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_0687:  stfld      valuetype [Engine]Engine.BoundingBox Game.ComponentBody/CollisionBox::Box
    IL_068c:  ldloca.s   V_7
    IL_068e:  ldc.i4.0
    IL_068f:  stfld      int32 Game.ComponentBody/CollisionBox::BlockValue
    IL_0694:  ldloc.s    V_7
    IL_0696:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.ComponentBody/CollisionBox>::Add(!0)
    IL_069b:  ret
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
    IL_002c:  call       int32 Game.Terrain::ExtractContents(int32)
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