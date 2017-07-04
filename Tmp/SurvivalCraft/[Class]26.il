.class public auto ansi beforefieldinit Game.ComponentPilot
       extends [EntitySystem]GameEntitySystem.Component
       implements Game.IUpdateable
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.ComponentPilot/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`3<int32,float32,bool> '<>9__54_0'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.ComponentPilot/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.ComponentPilot/'<>c' Game.ComponentPilot/'<>c'::'<>9'
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
            '<Update>b__54_0'(int32 'value',
                              float32 distance) cil managed
    {
      // 代码大小       18 (0x12)
      .maxstack  8
      IL_0000:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
      IL_0005:  ldarg.1
      IL_0006:  call       int32 Game.Terrain::ExtractContents(int32)
      IL_000b:  ldelem.ref
      IL_000c:  ldfld      bool Game.Block::IsCollidable
      IL_0011:  ret
    } // end of method '<>c'::'<Update>b__54_0'

  } // end of class '<>c'

  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.SubsystemBodies m_subsystemBodies
  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.ComponentCreature m_componentCreature
  .field private class Game.Random m_random
  .field private valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> m_walkOrder
  .field private valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> m_flyOrder
  .field private valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> m_swimOrder
  .field private valuetype [Engine]Engine.Vector2 m_turnOrder
  .field private float32 m_jumpOrder
  .field private float64 m_nextUpdateTime
  .field private float64 m_lastStuckCheckTime
  .field private int32 m_stuckCount
  .field private valuetype [System.Runtime]System.Nullable`1<float64> m_aboveBelowTime
  .field private valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> m_lastStuckCheckPosition
  .field private class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> m_nearbyBodies
  .field private float64 m_nextBodiesUpdateTime
  .field public static bool DrawPilotDestination
  .field private valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> '<Destination>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<Speed>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<Range>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private bool '<IgnoreHeightDifference>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private bool '<RaycastDestination>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private bool '<TakeRisks>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class Game.ComponentBody '<DoNotAvoidBody>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private bool '<IsStuck>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig instance void 
          SetDestination(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> destination,
                         float32 speed,
                         float32 range,
                         bool ignoreHeightDifference,
                         bool raycastDestination,
                         bool takeRisks,
                         class Game.ComponentBody doNotAvoidBody) cil managed
  {
    // 代码大小       204 (0xcc)
    .maxstack  2
    .locals init (bool V_0,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> V_1,
             valuetype [Engine]Engine.Vector3 V_2)
    IL_0000:  ldc.i4.1
    IL_0001:  stloc.0
    IL_0002:  ldarg.0
    IL_0003:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPilot::get_Destination()
    IL_0008:  stloc.1
    IL_0009:  ldloca.s   V_1
    IL_000b:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_0010:  brfalse.s  IL_0074

    IL_0012:  ldarga.s   destination
    IL_0014:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_0019:  brfalse.s  IL_0074

    IL_001b:  ldarg.0
    IL_001c:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPilot::get_Destination()
    IL_0021:  stloc.1
    IL_0022:  ldloca.s   V_1
    IL_0024:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_0029:  ldarg.0
    IL_002a:  ldfld      class Game.ComponentCreature Game.ComponentPilot::m_componentCreature
    IL_002f:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0034:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0039:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_003e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0043:  stloc.2
    IL_0044:  ldarga.s   destination
    IL_0046:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_004b:  ldarg.0
    IL_004c:  ldfld      class Game.ComponentCreature Game.ComponentPilot::m_componentCreature
    IL_0051:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0056:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_005b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0060:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0065:  ldloc.2
    IL_0066:  call       float32 [Engine]Engine.Vector3::Dot(valuetype [Engine]Engine.Vector3,
                                                             valuetype [Engine]Engine.Vector3)
    IL_006b:  ldc.r4     0.5
    IL_0070:  ble.un.s   IL_0074

    IL_0072:  ldc.i4.0
    IL_0073:  stloc.0
    IL_0074:  ldloc.0
    IL_0075:  brfalse.s  IL_0096

    IL_0077:  ldarg.0
    IL_0078:  ldc.i4.0
    IL_0079:  call       instance void Game.ComponentPilot::set_IsStuck(bool)
    IL_007e:  ldarg.0
    IL_007f:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPilot::m_lastStuckCheckPosition
    IL_0084:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>
    IL_008a:  ldarg.0
    IL_008b:  ldflda     valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentPilot::m_aboveBelowTime
    IL_0090:  initobj    valuetype [System.Runtime]System.Nullable`1<float64>
    IL_0096:  ldarg.0
    IL_0097:  ldarg.1
    IL_0098:  call       instance void Game.ComponentPilot::set_Destination(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>)
    IL_009d:  ldarg.0
    IL_009e:  ldarg.2
    IL_009f:  call       instance void Game.ComponentPilot::set_Speed(float32)
    IL_00a4:  ldarg.0
    IL_00a5:  ldarg.3
    IL_00a6:  call       instance void Game.ComponentPilot::set_Range(float32)
    IL_00ab:  ldarg.0
    IL_00ac:  ldarg.s    ignoreHeightDifference
    IL_00ae:  call       instance void Game.ComponentPilot::set_IgnoreHeightDifference(bool)
    IL_00b3:  ldarg.0
    IL_00b4:  ldarg.s    raycastDestination
    IL_00b6:  call       instance void Game.ComponentPilot::set_RaycastDestination(bool)
    IL_00bb:  ldarg.0
    IL_00bc:  ldarg.s    takeRisks
    IL_00be:  call       instance void Game.ComponentPilot::set_TakeRisks(bool)
    IL_00c3:  ldarg.0
    IL_00c4:  ldarg.s    doNotAvoidBody
    IL_00c6:  call       instance void Game.ComponentPilot::set_DoNotAvoidBody(class Game.ComponentBody)
    IL_00cb:  ret
  } // end of method ComponentPilot::SetDestination

  .method public hidebysig instance void 
          Stop() cil managed
  {
    // 代码大小       30 (0x1e)
    .maxstack  8
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldloca.s   V_0
    IL_0003:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>
    IL_0009:  ldloc.0
    IL_000a:  ldc.r4     0.0
    IL_000f:  ldc.r4     0.0
    IL_0014:  ldc.i4.0
    IL_0015:  ldc.i4.0
    IL_0016:  ldc.i4.0
    IL_0017:  ldnull
    IL_0018:  call       instance void Game.ComponentPilot::SetDestination(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>,
                                                                           float32,
                                                                           float32,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           class Game.ComponentBody)
    IL_001d:  ret
  } // end of method ComponentPilot::Stop

  .method public hidebysig specialname instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> 
          get_Destination() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPilot::'<Destination>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentPilot::get_Destination

  .method private hidebysig specialname instance void 
          set_Destination(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPilot::'<Destination>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentPilot::set_Destination

  .method public hidebysig specialname instance float32 
          get_Speed() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentPilot::'<Speed>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentPilot::get_Speed

  .method private hidebysig specialname instance void 
          set_Speed(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ComponentPilot::'<Speed>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentPilot::set_Speed

  .method public hidebysig specialname instance float32 
          get_Range() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentPilot::'<Range>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentPilot::get_Range

  .method private hidebysig specialname instance void 
          set_Range(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ComponentPilot::'<Range>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentPilot::set_Range

  .method public hidebysig specialname instance bool 
          get_IgnoreHeightDifference() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.ComponentPilot::'<IgnoreHeightDifference>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentPilot::get_IgnoreHeightDifference

  .method private hidebysig specialname instance void 
          set_IgnoreHeightDifference(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.ComponentPilot::'<IgnoreHeightDifference>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentPilot::set_IgnoreHeightDifference

  .method public hidebysig specialname instance bool 
          get_RaycastDestination() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.ComponentPilot::'<RaycastDestination>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentPilot::get_RaycastDestination

  .method private hidebysig specialname instance void 
          set_RaycastDestination(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.ComponentPilot::'<RaycastDestination>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentPilot::set_RaycastDestination

  .method public hidebysig specialname instance bool 
          get_TakeRisks() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.ComponentPilot::'<TakeRisks>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentPilot::get_TakeRisks

  .method private hidebysig specialname instance void 
          set_TakeRisks(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.ComponentPilot::'<TakeRisks>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentPilot::set_TakeRisks

  .method public hidebysig specialname instance class Game.ComponentBody 
          get_DoNotAvoidBody() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentBody Game.ComponentPilot::'<DoNotAvoidBody>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentPilot::get_DoNotAvoidBody

  .method private hidebysig specialname instance void 
          set_DoNotAvoidBody(class Game.ComponentBody 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.ComponentBody Game.ComponentPilot::'<DoNotAvoidBody>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentPilot::set_DoNotAvoidBody

  .method public hidebysig specialname instance bool 
          get_IsStuck() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.ComponentPilot::'<IsStuck>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentPilot::get_IsStuck

  .method private hidebysig specialname instance void 
          set_IsStuck(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.ComponentPilot::'<IsStuck>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentPilot::set_IsStuck

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method ComponentPilot::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       2213 (0x8a5)
    .maxstack  7
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> V_0,
             valuetype [Engine]Engine.Vector3 V_1,
             valuetype [Engine]Engine.Vector3 V_2,
             valuetype [Engine]Engine.Vector3 V_3,
             valuetype [Engine]Engine.Vector3 V_4,
             float32 V_5,
             valuetype [Engine]Engine.Vector2 V_6,
             float32 V_7,
             float32 V_8,
             float32 V_9,
             bool V_10,
             valuetype [Engine]Engine.Matrix V_11,
             valuetype [Engine]Engine.Vector3 V_12,
             valuetype [System.Runtime]System.Nullable`1<int32> V_13,
             float32 V_14,
             valuetype [Engine]Engine.Vector3 V_15,
             valuetype [Engine]Engine.Vector3 V_16,
             valuetype [Engine]Engine.Vector3 V_17,
             float32 V_18,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> V_19)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTime Game.ComponentPilot::m_subsystemTime
    IL_0006:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_000b:  ldarg.0
    IL_000c:  ldfld      float64 Game.ComponentPilot::m_nextUpdateTime
    IL_0011:  blt.un     IL_07cc

    IL_0016:  ldarg.0
    IL_0017:  ldarg.0
    IL_0018:  ldfld      class Game.SubsystemTime Game.ComponentPilot::m_subsystemTime
    IL_001d:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0022:  ldarg.0
    IL_0023:  ldfld      class Game.Random Game.ComponentPilot::m_random
    IL_0028:  ldc.r4     9.0000004e-002
    IL_002d:  ldc.r4     0.11
    IL_0032:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0037:  conv.r8
    IL_0038:  add
    IL_0039:  stfld      float64 Game.ComponentPilot::m_nextUpdateTime
    IL_003e:  ldarg.0
    IL_003f:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.ComponentPilot::m_walkOrder
    IL_0044:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>
    IL_004a:  ldarg.0
    IL_004b:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPilot::m_flyOrder
    IL_0050:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>
    IL_0056:  ldarg.0
    IL_0057:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPilot::m_swimOrder
    IL_005c:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>
    IL_0062:  ldarg.0
    IL_0063:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_0068:  stfld      valuetype [Engine]Engine.Vector2 Game.ComponentPilot::m_turnOrder
    IL_006d:  ldarg.0
    IL_006e:  ldc.r4     0.0
    IL_0073:  stfld      float32 Game.ComponentPilot::m_jumpOrder
    IL_0078:  ldarg.0
    IL_0079:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPilot::get_Destination()
    IL_007e:  stloc.0
    IL_007f:  ldloca.s   V_0
    IL_0081:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_0086:  brfalse    IL_072e

    IL_008b:  ldarg.0
    IL_008c:  ldfld      class Game.ComponentCreature Game.ComponentPilot::m_componentCreature
    IL_0091:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0096:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_009b:  stloc.1
    IL_009c:  ldarg.0
    IL_009d:  ldfld      class Game.ComponentCreature Game.ComponentPilot::m_componentCreature
    IL_00a2:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_00a7:  callvirt   instance valuetype [Engine]Engine.Matrix Game.ComponentFrame::get_Matrix()
    IL_00ac:  stloc.s    V_11
    IL_00ae:  ldloca.s   V_11
    IL_00b0:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Forward()
    IL_00b5:  stloc.2
    IL_00b6:  ldarg.0
    IL_00b7:  ldloc.1
    IL_00b8:  ldarg.0
    IL_00b9:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPilot::get_Destination()
    IL_00be:  stloc.0
    IL_00bf:  ldloca.s   V_0
    IL_00c1:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_00c6:  call       instance valuetype [Engine]Engine.Vector3 Game.ComponentPilot::AvoidNearestBody(valuetype [Engine]Engine.Vector3,
                                                                                                         valuetype [Engine]Engine.Vector3)
    IL_00cb:  stloc.3
    IL_00cc:  ldloc.3
    IL_00cd:  ldloc.1
    IL_00ce:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_00d3:  stloc.s    V_4
    IL_00d5:  ldloca.s   V_4
    IL_00d7:  call       instance float32 [Engine]Engine.Vector3::LengthSquared()
    IL_00dc:  stloc.s    V_5
    IL_00de:  ldloc.3
    IL_00df:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_00e4:  ldloc.3
    IL_00e5:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_00ea:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00ef:  ldloc.1
    IL_00f0:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_00f5:  ldloc.1
    IL_00f6:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_00fb:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0100:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_0105:  stloc.s    V_6
    IL_0107:  ldloca.s   V_6
    IL_0109:  call       instance float32 [Engine]Engine.Vector2::LengthSquared()
    IL_010e:  stloc.s    V_7
    IL_0110:  ldloca.s   V_2
    IL_0112:  call       instance valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector3::get_XZ()
    IL_0117:  ldloca.s   V_4
    IL_0119:  call       instance valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector3::get_XZ()
    IL_011e:  call       float32 [Engine]Engine.Vector2::Angle(valuetype [Engine]Engine.Vector2,
                                                               valuetype [Engine]Engine.Vector2)
    IL_0123:  stloc.s    V_8
    IL_0125:  ldarg.0
    IL_0126:  ldfld      class Game.ComponentCreature Game.ComponentPilot::m_componentCreature
    IL_012b:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0130:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_CollisionVelocityChange()
    IL_0135:  ldc.r4     1.
    IL_013a:  ldc.r4     0.0
    IL_013f:  ldc.r4     1.
    IL_0144:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0149:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_014e:  stloc.s    V_12
    IL_0150:  ldloca.s   V_12
    IL_0152:  call       instance float32 [Engine]Engine.Vector3::LengthSquared()
    IL_0157:  ldc.r4     0.0
    IL_015c:  cgt
    IL_015e:  brfalse.s  IL_017b

    IL_0160:  ldarg.0
    IL_0161:  ldfld      class Game.ComponentCreature Game.ComponentPilot::m_componentCreature
    IL_0166:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_016b:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<int32> Game.ComponentBody::get_StandingOnValue()
    IL_0170:  stloc.s    V_13
    IL_0172:  ldloca.s   V_13
    IL_0174:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0179:  brtrue.s   IL_0182

    IL_017b:  ldc.r4     0.40000001
    IL_0180:  br.s       IL_0187

    IL_0182:  ldc.r4     0.15000001
    IL_0187:  stloc.s    V_9
    IL_0189:  ldarg.0
    IL_018a:  ldfld      class Game.SubsystemTime Game.ComponentPilot::m_subsystemTime
    IL_018f:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0194:  ldarg.0
    IL_0195:  ldfld      float64 Game.ComponentPilot::m_lastStuckCheckTime
    IL_019a:  ldloc.s    V_9
    IL_019c:  conv.r8
    IL_019d:  add
    IL_019e:  bge.s      IL_01b0

    IL_01a0:  ldarg.0
    IL_01a1:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPilot::m_lastStuckCheckPosition
    IL_01a6:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_01ab:  brtrue     IL_023a

    IL_01b0:  ldarg.0
    IL_01b1:  ldarg.0
    IL_01b2:  ldfld      class Game.SubsystemTime Game.ComponentPilot::m_subsystemTime
    IL_01b7:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_01bc:  stfld      float64 Game.ComponentPilot::m_lastStuckCheckTime
    IL_01c1:  ldloc.s    V_8
    IL_01c3:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_01c8:  ldc.r4     20.
    IL_01cd:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_01d2:  bgt.s      IL_0205

    IL_01d4:  ldarg.0
    IL_01d5:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPilot::m_lastStuckCheckPosition
    IL_01da:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_01df:  brfalse.s  IL_0205

    IL_01e1:  ldloc.1
    IL_01e2:  ldarg.0
    IL_01e3:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPilot::m_lastStuckCheckPosition
    IL_01e8:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_01ed:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_01f2:  ldloc.s    V_4
    IL_01f4:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_01f9:  call       float32 [Engine]Engine.Vector3::Dot(valuetype [Engine]Engine.Vector3,
                                                             valuetype [Engine]Engine.Vector3)
    IL_01fe:  ldc.r4     0.2
    IL_0203:  ble.un.s   IL_021a

    IL_0205:  ldarg.0
    IL_0206:  ldloc.1
    IL_0207:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_020c:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPilot::m_lastStuckCheckPosition
    IL_0211:  ldarg.0
    IL_0212:  ldc.i4.0
    IL_0213:  stfld      int32 Game.ComponentPilot::m_stuckCount
    IL_0218:  br.s       IL_0228

    IL_021a:  ldarg.0
    IL_021b:  ldarg.0
    IL_021c:  ldfld      int32 Game.ComponentPilot::m_stuckCount
    IL_0221:  ldc.i4.1
    IL_0222:  add
    IL_0223:  stfld      int32 Game.ComponentPilot::m_stuckCount
    IL_0228:  ldarg.0
    IL_0229:  ldarg.0
    IL_022a:  ldfld      int32 Game.ComponentPilot::m_stuckCount
    IL_022f:  ldc.i4.4
    IL_0230:  clt
    IL_0232:  ldc.i4.0
    IL_0233:  ceq
    IL_0235:  call       instance void Game.ComponentPilot::set_IsStuck(bool)
    IL_023a:  ldarg.0
    IL_023b:  ldfld      class Game.ComponentCreature Game.ComponentPilot::m_componentCreature
    IL_0240:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_0245:  callvirt   instance float32 Game.ComponentLocomotion::get_FlySpeed()
    IL_024a:  ldc.r4     0.0
    IL_024f:  ble.un     IL_0362

    IL_0254:  ldloc.s    V_5
    IL_0256:  ldc.r4     9.
    IL_025b:  bgt.s      IL_02b1

    IL_025d:  ldloc.s    V_4
    IL_025f:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0264:  ldc.r4     0.5
    IL_0269:  bgt.s      IL_02b1

    IL_026b:  ldloc.s    V_4
    IL_026d:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0272:  ldc.r4     -1.5
    IL_0277:  blt.s      IL_02b1

    IL_0279:  ldarg.0
    IL_027a:  ldfld      class Game.ComponentCreature Game.ComponentPilot::m_componentCreature
    IL_027f:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0284:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<int32> Game.ComponentBody::get_StandingOnValue()
    IL_0289:  stloc.s    V_13
    IL_028b:  ldloca.s   V_13
    IL_028d:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0292:  brtrue     IL_0362

    IL_0297:  ldarg.0
    IL_0298:  ldfld      class Game.ComponentCreature Game.ComponentPilot::m_componentCreature
    IL_029d:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_02a2:  callvirt   instance float32 Game.ComponentBody::get_ImmersionFactor()
    IL_02a7:  ldc.r4     0.0
    IL_02ac:  bne.un     IL_0362

    IL_02b1:  ldarg.0
    IL_02b2:  ldfld      class Game.ComponentCreature Game.ComponentPilot::m_componentCreature
    IL_02b7:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_02bc:  callvirt   instance float32 Game.ComponentBody::get_ImmersionFactor()
    IL_02c1:  ldc.r4     1.
    IL_02c6:  bge.un     IL_0362

    IL_02cb:  ldc.r4     7.9999998e-002
    IL_02d0:  ldloca.s   V_6
    IL_02d2:  call       instance float32 [Engine]Engine.Vector2::LengthSquared()
    IL_02d7:  mul
    IL_02d8:  ldc.r4     12.
    IL_02dd:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_02e2:  stloc.s    V_14
    IL_02e4:  ldloc.3
    IL_02e5:  ldc.r4     0.0
    IL_02ea:  ldloc.s    V_14
    IL_02ec:  ldc.r4     0.0
    IL_02f1:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_02f6:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_02fb:  stloc.s    V_15
    IL_02fd:  ldarg.0
    IL_02fe:  call       instance float32 Game.ComponentPilot::get_Speed()
    IL_0303:  ldloc.s    V_15
    IL_0305:  ldloc.1
    IL_0306:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_030b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0310:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0315:  stloc.s    V_16
    IL_0317:  ldloca.s   V_16
    IL_0319:  ldloc.s    V_16
    IL_031b:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0320:  ldc.r4     -0.5
    IL_0325:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_032a:  stfld      float32 [Engine]Engine.Vector3::Y
    IL_032f:  ldarg.0
    IL_0330:  ldloc.s    V_16
    IL_0332:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_0337:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPilot::m_flyOrder
    IL_033c:  ldarg.0
    IL_033d:  ldloc.s    V_8
    IL_033f:  ldc.r4     -1.
    IL_0344:  ldc.r4     1.
    IL_0349:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_034e:  ldc.r4     0.0
    IL_0353:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0358:  stfld      valuetype [Engine]Engine.Vector2 Game.ComponentPilot::m_turnOrder
    IL_035d:  br         IL_065b

    IL_0362:  ldarg.0
    IL_0363:  ldfld      class Game.ComponentCreature Game.ComponentPilot::m_componentCreature
    IL_0368:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_036d:  callvirt   instance float32 Game.ComponentLocomotion::get_SwimSpeed()
    IL_0372:  ldc.r4     0.0
    IL_0377:  ble.un     IL_03fc

    IL_037c:  ldarg.0
    IL_037d:  ldfld      class Game.ComponentCreature Game.ComponentPilot::m_componentCreature
    IL_0382:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0387:  callvirt   instance float32 Game.ComponentBody::get_ImmersionFactor()
    IL_038c:  ldc.r4     0.5
    IL_0391:  ble.un.s   IL_03fc

    IL_0393:  ldarg.0
    IL_0394:  call       instance float32 Game.ComponentPilot::get_Speed()
    IL_0399:  ldloc.3
    IL_039a:  ldloc.1
    IL_039b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_03a0:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_03a5:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_03aa:  stloc.s    V_17
    IL_03ac:  ldloca.s   V_17
    IL_03ae:  ldloc.s    V_17
    IL_03b0:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_03b5:  ldc.r4     -0.5
    IL_03ba:  ldc.r4     0.5
    IL_03bf:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_03c4:  stfld      float32 [Engine]Engine.Vector3::Y
    IL_03c9:  ldarg.0
    IL_03ca:  ldloc.s    V_17
    IL_03cc:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_03d1:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPilot::m_swimOrder
    IL_03d6:  ldarg.0
    IL_03d7:  ldloc.s    V_8
    IL_03d9:  ldc.r4     -1.
    IL_03de:  ldc.r4     1.
    IL_03e3:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_03e8:  ldc.r4     0.0
    IL_03ed:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_03f2:  stfld      valuetype [Engine]Engine.Vector2 Game.ComponentPilot::m_turnOrder
    IL_03f7:  br         IL_065b

    IL_03fc:  ldarg.0
    IL_03fd:  ldfld      class Game.ComponentCreature Game.ComponentPilot::m_componentCreature
    IL_0402:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_0407:  callvirt   instance float32 Game.ComponentLocomotion::get_WalkSpeed()
    IL_040c:  ldc.r4     0.0
    IL_0411:  ble.un     IL_065b

    IL_0416:  ldarg.0
    IL_0417:  ldloc.1
    IL_0418:  ldloc.s    V_4
    IL_041a:  call       instance bool Game.ComponentPilot::IsTerrainSafeToGo(valuetype [Engine]Engine.Vector3,
                                                                              valuetype [Engine]Engine.Vector3)
    IL_041f:  brfalse    IL_0542

    IL_0424:  ldarg.0
    IL_0425:  ldloc.s    V_8
    IL_0427:  ldc.r4     -1.
    IL_042c:  ldc.r4     1.
    IL_0431:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_0436:  ldc.r4     0.0
    IL_043b:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0440:  stfld      valuetype [Engine]Engine.Vector2 Game.ComponentPilot::m_turnOrder
    IL_0445:  ldloc.s    V_7
    IL_0447:  ldc.r4     1.
    IL_044c:  ble.un     IL_04ed

    IL_0451:  ldarg.0
    IL_0452:  ldc.r4     0.0
    IL_0457:  ldarg.0
    IL_0458:  call       instance float32 Game.ComponentPilot::get_Speed()
    IL_045d:  ldc.r4     0.0
    IL_0462:  ldloc.s    V_8
    IL_0464:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_0469:  ldc.r4     0.33000001
    IL_046e:  sub
    IL_046f:  ldc.r4     0.66000003
    IL_0474:  div
    IL_0475:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_047a:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_047f:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0484:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_0489:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.ComponentPilot::m_walkOrder
    IL_048e:  ldarg.0
    IL_048f:  call       instance float32 Game.ComponentPilot::get_Speed()
    IL_0494:  ldc.r4     1.
    IL_0499:  blt.un     IL_0549

    IL_049e:  ldarg.0
    IL_049f:  ldfld      class Game.ComponentCreature Game.ComponentPilot::m_componentCreature
    IL_04a4:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_04a9:  callvirt   instance float32 Game.ComponentLocomotion::get_InAirWalkFactor()
    IL_04ae:  ldc.r4     1.
    IL_04b3:  blt.un     IL_0549

    IL_04b8:  ldloc.s    V_5
    IL_04ba:  ldc.r4     1.
    IL_04bf:  ble.un     IL_0549

    IL_04c4:  ldarg.0
    IL_04c5:  ldfld      class Game.Random Game.ComponentPilot::m_random
    IL_04ca:  ldc.r4     0.0
    IL_04cf:  ldc.r4     1.
    IL_04d4:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_04d9:  ldc.r4     5.0000001e-002
    IL_04de:  bge.un.s   IL_0549

    IL_04e0:  ldarg.0
    IL_04e1:  ldc.r4     1.
    IL_04e6:  stfld      float32 Game.ComponentPilot::m_jumpOrder
    IL_04eb:  br.s       IL_0549

    IL_04ed:  ldarg.0
    IL_04ee:  call       instance float32 Game.ComponentPilot::get_Speed()
    IL_04f3:  ldc.r4     1.
    IL_04f8:  ldloc.s    V_7
    IL_04fa:  call       float32 [Engine]Engine.MathUtils::Sqrt(float32)
    IL_04ff:  mul
    IL_0500:  ldc.r4     1.
    IL_0505:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_050a:  mul
    IL_050b:  stloc.s    V_18
    IL_050d:  ldarg.0
    IL_050e:  ldc.r4     0.0
    IL_0513:  ldloc.s    V_18
    IL_0515:  ldc.r4     0.0
    IL_051a:  ldc.r4     2.
    IL_051f:  ldloc.s    V_8
    IL_0521:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_0526:  mul
    IL_0527:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_052c:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0531:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0536:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_053b:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.ComponentPilot::m_walkOrder
    IL_0540:  br.s       IL_0549

    IL_0542:  ldarg.0
    IL_0543:  ldc.i4.1
    IL_0544:  call       instance void Game.ComponentPilot::set_IsStuck(bool)
    IL_0549:  ldloc.s    V_7
    IL_054b:  ldc.r4     1.
    IL_0550:  bge.un.s   IL_0573

    IL_0552:  ldloc.s    V_4
    IL_0554:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0559:  ldc.r4     -0.1
    IL_055e:  bge.un.s   IL_0573

    IL_0560:  ldarg.0
    IL_0561:  ldfld      class Game.ComponentCreature Game.ComponentPilot::m_componentCreature
    IL_0566:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_056b:  ldc.i4.0
    IL_056c:  callvirt   instance void Game.ComponentBody::set_IsSmoothRiseEnabled(bool)
    IL_0571:  br.s       IL_0584

    IL_0573:  ldarg.0
    IL_0574:  ldfld      class Game.ComponentCreature Game.ComponentPilot::m_componentCreature
    IL_0579:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_057e:  ldc.i4.1
    IL_057f:  callvirt   instance void Game.ComponentBody::set_IsSmoothRiseEnabled(bool)
    IL_0584:  ldloc.s    V_7
    IL_0586:  ldc.r4     1.
    IL_058b:  bge.un     IL_064f

    IL_0590:  ldloc.s    V_4
    IL_0592:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0597:  ldc.r4     -0.5
    IL_059c:  blt.s      IL_05af

    IL_059e:  ldloc.s    V_4
    IL_05a0:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_05a5:  ldc.r4     1.
    IL_05aa:  ble.un     IL_064f

    IL_05af:  ldloc.s    V_4
    IL_05b1:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_05b6:  ldc.r4     0.0
    IL_05bb:  ble.un.s   IL_05e4

    IL_05bd:  ldarg.0
    IL_05be:  ldfld      class Game.Random Game.ComponentPilot::m_random
    IL_05c3:  ldc.r4     0.0
    IL_05c8:  ldc.r4     1.
    IL_05cd:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_05d2:  ldc.r4     5.0000001e-002
    IL_05d7:  bge.un.s   IL_05e4

    IL_05d9:  ldarg.0
    IL_05da:  ldc.r4     1.
    IL_05df:  stfld      float32 Game.ComponentPilot::m_jumpOrder
    IL_05e4:  ldarg.0
    IL_05e5:  ldflda     valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentPilot::m_aboveBelowTime
    IL_05ea:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float64>::get_HasValue()
    IL_05ef:  brtrue.s   IL_0609

    IL_05f1:  ldarg.0
    IL_05f2:  ldarg.0
    IL_05f3:  ldfld      class Game.SubsystemTime Game.ComponentPilot::m_subsystemTime
    IL_05f8:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_05fd:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float64>::.ctor(!0)
    IL_0602:  stfld      valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentPilot::m_aboveBelowTime
    IL_0607:  br.s       IL_065b

    IL_0609:  ldarg.0
    IL_060a:  ldfld      class Game.SubsystemTime Game.ComponentPilot::m_subsystemTime
    IL_060f:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0614:  ldarg.0
    IL_0615:  ldflda     valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentPilot::m_aboveBelowTime
    IL_061a:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float64>::get_Value()
    IL_061f:  sub
    IL_0620:  ldc.r8     2.
    IL_0629:  ble.un.s   IL_065b

    IL_062b:  ldarg.0
    IL_062c:  ldfld      class Game.ComponentCreature Game.ComponentPilot::m_componentCreature
    IL_0631:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0636:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<int32> Game.ComponentBody::get_StandingOnValue()
    IL_063b:  stloc.s    V_13
    IL_063d:  ldloca.s   V_13
    IL_063f:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0644:  brfalse.s  IL_065b

    IL_0646:  ldarg.0
    IL_0647:  ldc.i4.1
    IL_0648:  call       instance void Game.ComponentPilot::set_IsStuck(bool)
    IL_064d:  br.s       IL_065b

    IL_064f:  ldarg.0
    IL_0650:  ldflda     valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentPilot::m_aboveBelowTime
    IL_0655:  initobj    valuetype [System.Runtime]System.Nullable`1<float64>
    IL_065b:  ldc.i4.0
    IL_065c:  stloc.s    V_10
    IL_065e:  ldarg.0
    IL_065f:  call       instance bool Game.ComponentPilot::get_IgnoreHeightDifference()
    IL_0664:  brfalse.s  IL_067e

    IL_0666:  ldloc.s    V_7
    IL_0668:  ldarg.0
    IL_0669:  call       instance float32 Game.ComponentPilot::get_Range()
    IL_066e:  ldarg.0
    IL_066f:  call       instance float32 Game.ComponentPilot::get_Range()
    IL_0674:  mul
    IL_0675:  cgt.un
    IL_0677:  ldc.i4.0
    IL_0678:  ceq
    IL_067a:  stloc.s    V_10
    IL_067c:  br.s       IL_0694

    IL_067e:  ldloc.s    V_5
    IL_0680:  ldarg.0
    IL_0681:  call       instance float32 Game.ComponentPilot::get_Range()
    IL_0686:  ldarg.0
    IL_0687:  call       instance float32 Game.ComponentPilot::get_Range()
    IL_068c:  mul
    IL_068d:  cgt.un
    IL_068f:  ldc.i4.0
    IL_0690:  ceq
    IL_0692:  stloc.s    V_10
    IL_0694:  ldloc.s    V_10
    IL_0696:  brfalse    IL_072e

    IL_069b:  ldarg.0
    IL_069c:  call       instance bool Game.ComponentPilot::get_RaycastDestination()
    IL_06a1:  brfalse.s  IL_071f

    IL_06a3:  ldarg.0
    IL_06a4:  ldfld      class Game.SubsystemTerrain Game.ComponentPilot::m_subsystemTerrain
    IL_06a9:  ldloc.1
    IL_06aa:  ldc.r4     0.0
    IL_06af:  ldc.r4     0.5
    IL_06b4:  ldc.r4     0.0
    IL_06b9:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_06be:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_06c3:  ldloc.3
    IL_06c4:  ldc.r4     0.0
    IL_06c9:  ldc.r4     0.5
    IL_06ce:  ldc.r4     0.0
    IL_06d3:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_06d8:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_06dd:  ldc.i4.0
    IL_06de:  ldc.i4.1
    IL_06df:  ldsfld     class [System.Runtime]System.Func`3<int32,float32,bool> Game.ComponentPilot/'<>c'::'<>9__54_0'
    IL_06e4:  dup
    IL_06e5:  brtrue.s   IL_06fe

    IL_06e7:  pop
    IL_06e8:  ldsfld     class Game.ComponentPilot/'<>c' Game.ComponentPilot/'<>c'::'<>9'
    IL_06ed:  ldftn      instance bool Game.ComponentPilot/'<>c'::'<Update>b__54_0'(int32,
                                                                                    float32)
    IL_06f3:  newobj     instance void class [System.Runtime]System.Func`3<int32,float32,bool>::.ctor(object,
                                                                                                      native int)
    IL_06f8:  dup
    IL_06f9:  stsfld     class [System.Runtime]System.Func`3<int32,float32,bool> Game.ComponentPilot/'<>c'::'<>9__54_0'
    IL_06fe:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> Game.SubsystemTerrain::Raycast(valuetype [Engine]Engine.Vector3,
                                                                                                                                                  valuetype [Engine]Engine.Vector3,
                                                                                                                                                  bool,
                                                                                                                                                  bool,
                                                                                                                                                  class [System.Runtime]System.Func`3<int32,float32,bool>)
    IL_0703:  stloc.s    V_19
    IL_0705:  ldloca.s   V_19
    IL_0707:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_HasValue()
    IL_070c:  brtrue.s   IL_072e

    IL_070e:  ldarg.0
    IL_070f:  ldloca.s   V_0
    IL_0711:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>
    IL_0717:  ldloc.0
    IL_0718:  call       instance void Game.ComponentPilot::set_Destination(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>)
    IL_071d:  br.s       IL_072e

    IL_071f:  ldarg.0
    IL_0720:  ldloca.s   V_0
    IL_0722:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>
    IL_0728:  ldloc.0
    IL_0729:  call       instance void Game.ComponentPilot::set_Destination(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>)
    IL_072e:  ldarg.0
    IL_072f:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPilot::get_Destination()
    IL_0734:  stloc.0
    IL_0735:  ldloca.s   V_0
    IL_0737:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_073c:  brtrue     IL_07cc

    IL_0741:  ldarg.0
    IL_0742:  ldfld      class Game.ComponentCreature Game.ComponentPilot::m_componentCreature
    IL_0747:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_074c:  callvirt   instance float32 Game.ComponentLocomotion::get_FlySpeed()
    IL_0751:  ldc.r4     0.0
    IL_0756:  ble.un.s   IL_07cc

    IL_0758:  ldarg.0
    IL_0759:  ldfld      class Game.ComponentCreature Game.ComponentPilot::m_componentCreature
    IL_075e:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0763:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<int32> Game.ComponentBody::get_StandingOnValue()
    IL_0768:  stloc.s    V_13
    IL_076a:  ldloca.s   V_13
    IL_076c:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0771:  brtrue.s   IL_07cc

    IL_0773:  ldarg.0
    IL_0774:  ldfld      class Game.ComponentCreature Game.ComponentPilot::m_componentCreature
    IL_0779:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_077e:  callvirt   instance float32 Game.ComponentBody::get_ImmersionFactor()
    IL_0783:  ldc.r4     0.0
    IL_0788:  bne.un.s   IL_07cc

    IL_078a:  ldarg.0
    IL_078b:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_0790:  stfld      valuetype [Engine]Engine.Vector2 Game.ComponentPilot::m_turnOrder
    IL_0795:  ldarg.0
    IL_0796:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.ComponentPilot::m_walkOrder
    IL_079b:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>
    IL_07a1:  ldarg.0
    IL_07a2:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPilot::m_swimOrder
    IL_07a7:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>
    IL_07ad:  ldarg.0
    IL_07ae:  ldc.r4     0.0
    IL_07b3:  ldc.r4     -0.5
    IL_07b8:  ldc.r4     0.0
    IL_07bd:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_07c2:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_07c7:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPilot::m_flyOrder
    IL_07cc:  ldarg.0
    IL_07cd:  ldfld      class Game.ComponentCreature Game.ComponentPilot::m_componentCreature
    IL_07d2:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_07d7:  ldarg.0
    IL_07d8:  ldfld      class Game.ComponentCreature Game.ComponentPilot::m_componentCreature
    IL_07dd:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_07e2:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.ComponentLocomotion::get_WalkOrder()
    IL_07e7:  ldarg.0
    IL_07e8:  ldfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.ComponentPilot::m_walkOrder
    IL_07ed:  call       valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.ComponentPilot::CombineNullables(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>,
                                                                                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>)
    IL_07f2:  callvirt   instance void Game.ComponentLocomotion::set_WalkOrder(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>)
    IL_07f7:  ldarg.0
    IL_07f8:  ldfld      class Game.ComponentCreature Game.ComponentPilot::m_componentCreature
    IL_07fd:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_0802:  ldarg.0
    IL_0803:  ldfld      class Game.ComponentCreature Game.ComponentPilot::m_componentCreature
    IL_0808:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_080d:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentLocomotion::get_SwimOrder()
    IL_0812:  ldarg.0
    IL_0813:  ldfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPilot::m_swimOrder
    IL_0818:  call       valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPilot::CombineNullables(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>,
                                                                                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>)
    IL_081d:  callvirt   instance void Game.ComponentLocomotion::set_SwimOrder(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>)
    IL_0822:  ldarg.0
    IL_0823:  ldfld      class Game.ComponentCreature Game.ComponentPilot::m_componentCreature
    IL_0828:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_082d:  dup
    IL_082e:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.ComponentLocomotion::get_TurnOrder()
    IL_0833:  ldarg.0
    IL_0834:  ldfld      valuetype [Engine]Engine.Vector2 Game.ComponentPilot::m_turnOrder
    IL_0839:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_083e:  callvirt   instance void Game.ComponentLocomotion::set_TurnOrder(valuetype [Engine]Engine.Vector2)
    IL_0843:  ldarg.0
    IL_0844:  ldfld      class Game.ComponentCreature Game.ComponentPilot::m_componentCreature
    IL_0849:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_084e:  ldarg.0
    IL_084f:  ldfld      class Game.ComponentCreature Game.ComponentPilot::m_componentCreature
    IL_0854:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_0859:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentLocomotion::get_FlyOrder()
    IL_085e:  ldarg.0
    IL_085f:  ldfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPilot::m_flyOrder
    IL_0864:  call       valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPilot::CombineNullables(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>,
                                                                                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>)
    IL_0869:  callvirt   instance void Game.ComponentLocomotion::set_FlyOrder(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>)
    IL_086e:  ldarg.0
    IL_086f:  ldfld      class Game.ComponentCreature Game.ComponentPilot::m_componentCreature
    IL_0874:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_0879:  ldarg.0
    IL_087a:  ldfld      float32 Game.ComponentPilot::m_jumpOrder
    IL_087f:  ldarg.0
    IL_0880:  ldfld      class Game.ComponentCreature Game.ComponentPilot::m_componentCreature
    IL_0885:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_088a:  callvirt   instance float32 Game.ComponentLocomotion::get_JumpOrder()
    IL_088f:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_0894:  callvirt   instance void Game.ComponentLocomotion::set_JumpOrder(float32)
    IL_0899:  ldarg.0
    IL_089a:  ldc.r4     0.0
    IL_089f:  stfld      float32 Game.ComponentPilot::m_jumpOrder
    IL_08a4:  ret
  } // end of method ComponentPilot::Update

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       73 (0x49)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_000d:  stfld      class Game.SubsystemTime Game.ComponentPilot::m_subsystemTime
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemBodies>(bool)
    IL_001f:  stfld      class Game.SubsystemBodies Game.ComponentPilot::m_subsystemBodies
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_0031:  stfld      class Game.SubsystemTerrain Game.ComponentPilot::m_subsystemTerrain
    IL_0036:  ldarg.0
    IL_0037:  ldarg.0
    IL_0038:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_003d:  ldc.i4.1
    IL_003e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreature>(bool)
    IL_0043:  stfld      class Game.ComponentCreature Game.ComponentPilot::m_componentCreature
    IL_0048:  ret
  } // end of method ComponentPilot::Load

  .method private hidebysig instance bool 
          IsTerrainSafeToGo(valuetype [Engine]Engine.Vector3 position,
                            valuetype [Engine]Engine.Vector3 direction) cil managed
  {
    // 代码大小       544 (0x220)
    .maxstack  5
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             valuetype [Engine]Engine.Vector3 V_1,
             bool V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7,
             class Game.Block V_8,
             int32 V_9,
             int32 V_10,
             class Game.Block V_11)
    IL_0000:  ldarg.1
    IL_0001:  ldc.r4     0.0
    IL_0006:  ldc.r4     0.1
    IL_000b:  ldc.r4     0.0
    IL_0010:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0015:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_001a:  ldarga.s   direction
    IL_001c:  call       instance float32 [Engine]Engine.Vector3::LengthSquared()
    IL_0021:  ldc.r4     1.2
    IL_0026:  blt.s      IL_004f

    IL_0028:  ldc.r4     1.2
    IL_002d:  ldarg.2
    IL_002e:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0033:  ldc.r4     0.0
    IL_0038:  ldarg.2
    IL_0039:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_003e:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0043:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0048:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_004d:  br.s       IL_0065

    IL_004f:  ldarg.2
    IL_0050:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0055:  ldc.r4     0.0
    IL_005a:  ldarg.2
    IL_005b:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0060:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0065:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_006a:  stloc.0
    IL_006b:  ldc.i4.m1
    IL_006c:  stloc.s    V_4
    IL_006e:  br         IL_011e

    IL_0073:  ldc.i4.m1
    IL_0074:  stloc.s    V_5
    IL_0076:  br         IL_0110

    IL_007b:  ldarg.2
    IL_007c:  ldloc.s    V_4
    IL_007e:  conv.r4
    IL_007f:  ldc.r4     0.0
    IL_0084:  ldloc.s    V_5
    IL_0086:  conv.r4
    IL_0087:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_008c:  call       float32 [Engine]Engine.Vector3::Dot(valuetype [Engine]Engine.Vector3,
                                                             valuetype [Engine]Engine.Vector3)
    IL_0091:  ldc.r4     0.0
    IL_0096:  ble.un.s   IL_010a

    IL_0098:  ldc.i4.0
    IL_0099:  stloc.s    V_6
    IL_009b:  br.s       IL_0104

    IL_009d:  ldarg.0
    IL_009e:  ldfld      class Game.SubsystemTerrain Game.ComponentPilot::m_subsystemTerrain
    IL_00a3:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_00a8:  ldloc.0
    IL_00a9:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_00ae:  call       int32 Game.Terrain::ToCell(float32)
    IL_00b3:  ldloc.s    V_4
    IL_00b5:  add
    IL_00b6:  ldloc.0
    IL_00b7:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_00bc:  call       int32 Game.Terrain::ToCell(float32)
    IL_00c1:  ldloc.s    V_6
    IL_00c3:  add
    IL_00c4:  ldloc.0
    IL_00c5:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_00ca:  call       int32 Game.Terrain::ToCell(float32)
    IL_00cf:  ldloc.s    V_5
    IL_00d1:  add
    IL_00d2:  callvirt   instance int32 Game.Terrain::GetCellValue(int32,
                                                                   int32,
                                                                   int32)
    IL_00d7:  stloc.s    V_7
    IL_00d9:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_00de:  ldloc.s    V_7
    IL_00e0:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_00e5:  ldelem.ref
    IL_00e6:  stloc.s    V_8
    IL_00e8:  ldloc.s    V_8
    IL_00ea:  ldloc.s    V_7
    IL_00ec:  callvirt   instance bool Game.Block::ShouldAvoid(int32)
    IL_00f1:  brfalse.s  IL_00f5

    IL_00f3:  ldc.i4.0
    IL_00f4:  ret

    IL_00f5:  ldloc.s    V_8
    IL_00f7:  ldfld      bool Game.Block::IsCollidable
    IL_00fc:  brtrue.s   IL_010a

    IL_00fe:  ldloc.s    V_6
    IL_0100:  ldc.i4.1
    IL_0101:  sub
    IL_0102:  stloc.s    V_6
    IL_0104:  ldloc.s    V_6
    IL_0106:  ldc.i4.s   -2
    IL_0108:  bge.s      IL_009d

    IL_010a:  ldloc.s    V_5
    IL_010c:  ldc.i4.1
    IL_010d:  add
    IL_010e:  stloc.s    V_5
    IL_0110:  ldloc.s    V_5
    IL_0112:  ldc.i4.1
    IL_0113:  ble        IL_007b

    IL_0118:  ldloc.s    V_4
    IL_011a:  ldc.i4.1
    IL_011b:  add
    IL_011c:  stloc.s    V_4
    IL_011e:  ldloc.s    V_4
    IL_0120:  ldc.i4.1
    IL_0121:  ble        IL_0073

    IL_0126:  ldarg.1
    IL_0127:  ldc.r4     0.0
    IL_012c:  ldc.r4     0.1
    IL_0131:  ldc.r4     0.0
    IL_0136:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_013b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0140:  ldarga.s   direction
    IL_0142:  call       instance float32 [Engine]Engine.Vector3::LengthSquared()
    IL_0147:  ldc.r4     1.
    IL_014c:  blt.s      IL_0175

    IL_014e:  ldc.r4     1.
    IL_0153:  ldarg.2
    IL_0154:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0159:  ldc.r4     0.0
    IL_015e:  ldarg.2
    IL_015f:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0164:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0169:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_016e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0173:  br.s       IL_018b

    IL_0175:  ldarg.2
    IL_0176:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_017b:  ldc.r4     0.0
    IL_0180:  ldarg.2
    IL_0181:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0186:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_018b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0190:  stloc.1
    IL_0191:  ldc.i4.1
    IL_0192:  stloc.2
    IL_0193:  ldarg.0
    IL_0194:  call       instance bool Game.ComponentPilot::get_TakeRisks()
    IL_0199:  brtrue.s   IL_019e

    IL_019b:  ldc.i4.5
    IL_019c:  br.s       IL_019f

    IL_019e:  ldc.i4.7
    IL_019f:  stloc.3
    IL_01a0:  ldc.i4.0
    IL_01a1:  stloc.s    V_9
    IL_01a3:  br.s       IL_0213

    IL_01a5:  ldarg.0
    IL_01a6:  ldfld      class Game.SubsystemTerrain Game.ComponentPilot::m_subsystemTerrain
    IL_01ab:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_01b0:  ldloc.1
    IL_01b1:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_01b6:  call       int32 Game.Terrain::ToCell(float32)
    IL_01bb:  ldloc.1
    IL_01bc:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_01c1:  call       int32 Game.Terrain::ToCell(float32)
    IL_01c6:  ldloc.s    V_9
    IL_01c8:  add
    IL_01c9:  ldloc.1
    IL_01ca:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_01cf:  call       int32 Game.Terrain::ToCell(float32)
    IL_01d4:  callvirt   instance int32 Game.Terrain::GetCellValue(int32,
                                                                   int32,
                                                                   int32)
    IL_01d9:  stloc.s    V_10
    IL_01db:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_01e0:  ldloc.s    V_10
    IL_01e2:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_01e7:  ldelem.ref
    IL_01e8:  stloc.s    V_11
    IL_01ea:  ldloc.s    V_11
    IL_01ec:  ldfld      bool Game.Block::IsCollidable
    IL_01f1:  brtrue.s   IL_01fe

    IL_01f3:  ldloc.s    V_11
    IL_01f5:  ldfld      int32 Game.Block::BlockIndex
    IL_01fa:  ldc.i4.s   18
    IL_01fc:  bne.un.s   IL_020d

    IL_01fe:  ldloc.s    V_11
    IL_0200:  ldloc.s    V_10
    IL_0202:  callvirt   instance bool Game.Block::ShouldAvoid(int32)
    IL_0207:  brtrue.s   IL_020d

    IL_0209:  ldc.i4.0
    IL_020a:  stloc.2
    IL_020b:  br.s       IL_0219

    IL_020d:  ldloc.s    V_9
    IL_020f:  ldc.i4.1
    IL_0210:  sub
    IL_0211:  stloc.s    V_9
    IL_0213:  ldloc.s    V_9
    IL_0215:  ldloc.3
    IL_0216:  neg
    IL_0217:  bge.s      IL_01a5

    IL_0219:  ldloc.2
    IL_021a:  brfalse.s  IL_021e

    IL_021c:  ldc.i4.0
    IL_021d:  ret

    IL_021e:  ldc.i4.1
    IL_021f:  ret
  } // end of method ComponentPilot::IsTerrainSafeToGo

  .method private hidebysig instance class Game.ComponentBody 
          FindNearestBodyInFront(valuetype [Engine]Engine.Vector3 position,
                                 valuetype [Engine]Engine.Vector2 direction) cil managed
  {
    // 代码大小       308 (0x134)
    .maxstack  4
    .locals init (class Game.ComponentBody V_0,
             float32 V_1,
             valuetype [Engine]Engine.Vector3 V_2,
             valuetype [Engine]Engine.DynamicArray`1/Enumerator<class Game.ComponentBody> V_3,
             class Game.ComponentBody V_4,
             float32 V_5)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTime Game.ComponentPilot::m_subsystemTime
    IL_0006:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_000b:  ldarg.0
    IL_000c:  ldfld      float64 Game.ComponentPilot::m_nextBodiesUpdateTime
    IL_0011:  blt.un.s   IL_0067

    IL_0013:  ldarg.0
    IL_0014:  ldarg.0
    IL_0015:  ldfld      class Game.SubsystemTime Game.ComponentPilot::m_subsystemTime
    IL_001a:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_001f:  ldc.r8     0.5
    IL_0028:  add
    IL_0029:  stfld      float64 Game.ComponentPilot::m_nextBodiesUpdateTime
    IL_002e:  ldarg.0
    IL_002f:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> Game.ComponentPilot::m_nearbyBodies
    IL_0034:  callvirt   instance void class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>::Clear()
    IL_0039:  ldarg.0
    IL_003a:  ldfld      class Game.SubsystemBodies Game.ComponentPilot::m_subsystemBodies
    IL_003f:  ldarg.0
    IL_0040:  ldfld      class Game.ComponentCreature Game.ComponentPilot::m_componentCreature
    IL_0045:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_004a:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_004f:  stloc.2
    IL_0050:  ldloca.s   V_2
    IL_0052:  call       instance valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector3::get_XZ()
    IL_0057:  ldc.r4     4.
    IL_005c:  ldarg.0
    IL_005d:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> Game.ComponentPilot::m_nearbyBodies
    IL_0062:  callvirt   instance void Game.SubsystemBodies::FindBodiesAroundPoint(valuetype [Engine]Engine.Vector2,
                                                                                   float32,
                                                                                   class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>)
    IL_0067:  ldnull
    IL_0068:  stloc.0
    IL_0069:  ldc.r4     3.4028235e+038
    IL_006e:  stloc.1
    IL_006f:  ldarg.0
    IL_0070:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> Game.ComponentPilot::m_nearbyBodies
    IL_0075:  callvirt   instance valuetype [Engine]Engine.DynamicArray`1/Enumerator<!0> class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>::GetEnumerator()
    IL_007a:  stloc.3
    .try
    {
      IL_007b:  br         IL_0116

      IL_0080:  ldloca.s   V_3
      IL_0082:  call       instance !0 valuetype [Engine]Engine.DynamicArray`1/Enumerator<class Game.ComponentBody>::get_Current()
      IL_0087:  stloc.s    V_4
      IL_0089:  ldloc.s    V_4
      IL_008b:  ldarg.0
      IL_008c:  ldfld      class Game.ComponentCreature Game.ComponentPilot::m_componentCreature
      IL_0091:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
      IL_0096:  beq.s      IL_0116

      IL_0098:  ldloc.s    V_4
      IL_009a:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
      IL_009f:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_00a4:  ldarg.0
      IL_00a5:  ldfld      class Game.ComponentCreature Game.ComponentPilot::m_componentCreature
      IL_00aa:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
      IL_00af:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
      IL_00b4:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_00b9:  sub
      IL_00ba:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
      IL_00bf:  ldc.r4     1.1
      IL_00c4:  bgt.s      IL_0116

      IL_00c6:  ldloc.s    V_4
      IL_00c8:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
      IL_00cd:  stloc.2
      IL_00ce:  ldloca.s   V_2
      IL_00d0:  call       instance valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector3::get_XZ()
      IL_00d5:  ldarga.s   position
      IL_00d7:  call       instance valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector3::get_XZ()
      IL_00dc:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                   valuetype [Engine]Engine.Vector2)
      IL_00e1:  ldarg.2
      IL_00e2:  call       float32 [Engine]Engine.Vector2::Dot(valuetype [Engine]Engine.Vector2,
                                                               valuetype [Engine]Engine.Vector2)
      IL_00e7:  ldc.r4     0.0
      IL_00ec:  ble.un.s   IL_0116

      IL_00ee:  ldloc.s    V_4
      IL_00f0:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
      IL_00f5:  stloc.2
      IL_00f6:  ldloca.s   V_2
      IL_00f8:  call       instance valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector3::get_XZ()
      IL_00fd:  ldarga.s   position
      IL_00ff:  call       instance valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector3::get_XZ()
      IL_0104:  call       float32 [Engine]Engine.Vector2::DistanceSquared(valuetype [Engine]Engine.Vector2,
                                                                           valuetype [Engine]Engine.Vector2)
      IL_0109:  stloc.s    V_5
      IL_010b:  ldloc.s    V_5
      IL_010d:  ldloc.1
      IL_010e:  bge.un.s   IL_0116

      IL_0110:  ldloc.s    V_5
      IL_0112:  stloc.1
      IL_0113:  ldloc.s    V_4
      IL_0115:  stloc.0
      IL_0116:  ldloca.s   V_3
      IL_0118:  call       instance bool valuetype [Engine]Engine.DynamicArray`1/Enumerator<class Game.ComponentBody>::MoveNext()
      IL_011d:  brtrue     IL_0080

      IL_0122:  leave.s    IL_0132

    }  // end .try
    finally
    {
      IL_0124:  ldloca.s   V_3
      IL_0126:  constrained. valuetype [Engine]Engine.DynamicArray`1/Enumerator<class Game.ComponentBody>
      IL_012c:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0131:  endfinally
    }  // end handler
    IL_0132:  ldloc.0
    IL_0133:  ret
  } // end of method ComponentPilot::FindNearestBodyInFront

  .method private hidebysig instance valuetype [Engine]Engine.Vector3 
          AvoidNearestBody(valuetype [Engine]Engine.Vector3 position,
                           valuetype [Engine]Engine.Vector3 destination) cil managed
  {
    // 代码大小       276 (0x114)
    .maxstack  5
    .locals init (valuetype [Engine]Engine.Vector2 V_0,
             class Game.ComponentBody V_1,
             float32 V_2,
             valuetype [Engine]Engine.Vector2 V_3,
             valuetype [Engine]Engine.Vector2 V_4,
             valuetype [Engine]Engine.Vector3 V_5,
             float32 V_6,
             valuetype [Engine]Engine.Vector2 V_7)
    IL_0000:  ldarga.s   destination
    IL_0002:  call       instance valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector3::get_XZ()
    IL_0007:  ldarga.s   position
    IL_0009:  call       instance valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector3::get_XZ()
    IL_000e:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_0013:  stloc.0
    IL_0014:  ldarg.0
    IL_0015:  ldarg.1
    IL_0016:  ldloc.0
    IL_0017:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Normalize(valuetype [Engine]Engine.Vector2)
    IL_001c:  call       instance class Game.ComponentBody Game.ComponentPilot::FindNearestBodyInFront(valuetype [Engine]Engine.Vector3,
                                                                                                       valuetype [Engine]Engine.Vector2)
    IL_0021:  stloc.1
    IL_0022:  ldloc.1
    IL_0023:  brfalse    IL_0112

    IL_0028:  ldloc.1
    IL_0029:  ldarg.0
    IL_002a:  call       instance class Game.ComponentBody Game.ComponentPilot::get_DoNotAvoidBody()
    IL_002f:  beq        IL_0112

    IL_0034:  ldc.r4     0.72000003
    IL_0039:  ldloc.1
    IL_003a:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_BoxSize()
    IL_003f:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0044:  ldarg.0
    IL_0045:  ldfld      class Game.ComponentCreature Game.ComponentPilot::m_componentCreature
    IL_004a:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_004f:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_BoxSize()
    IL_0054:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0059:  add
    IL_005a:  mul
    IL_005b:  ldc.r4     0.5
    IL_0060:  add
    IL_0061:  stloc.2
    IL_0062:  ldloc.1
    IL_0063:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0068:  stloc.s    V_5
    IL_006a:  ldloca.s   V_5
    IL_006c:  call       instance valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector3::get_XZ()
    IL_0071:  stloc.3
    IL_0072:  ldarga.s   position
    IL_0074:  call       instance valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector3::get_XZ()
    IL_0079:  ldarga.s   destination
    IL_007b:  call       instance valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector3::get_XZ()
    IL_0080:  newobj     instance void Game.Segment2::.ctor(valuetype [Engine]Engine.Vector2,
                                                            valuetype [Engine]Engine.Vector2)
    IL_0085:  ldloc.3
    IL_0086:  call       valuetype [Engine]Engine.Vector2 Game.Segment2::NearestPoint(valuetype Game.Segment2,
                                                                                      valuetype [Engine]Engine.Vector2)
    IL_008b:  ldloc.3
    IL_008c:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_0091:  stloc.s    V_4
    IL_0093:  ldloca.s   V_4
    IL_0095:  call       instance float32 [Engine]Engine.Vector2::LengthSquared()
    IL_009a:  ldloc.2
    IL_009b:  ldloc.2
    IL_009c:  mul
    IL_009d:  bge.un.s   IL_0112

    IL_009f:  ldloca.s   V_0
    IL_00a1:  call       instance float32 [Engine]Engine.Vector2::Length()
    IL_00a6:  stloc.s    V_6
    IL_00a8:  ldloc.3
    IL_00a9:  ldloc.s    V_4
    IL_00ab:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Normalize(valuetype [Engine]Engine.Vector2)
    IL_00b0:  ldloc.2
    IL_00b1:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_00b6:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_00bb:  ldarga.s   position
    IL_00bd:  call       instance valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector3::get_XZ()
    IL_00c2:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_00c7:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Normalize(valuetype [Engine]Engine.Vector2)
    IL_00cc:  stloc.s    V_7
    IL_00ce:  ldloc.0
    IL_00cf:  ldloc.s    V_6
    IL_00d1:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Division(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_00d6:  ldloc.s    V_7
    IL_00d8:  call       float32 [Engine]Engine.Vector2::Dot(valuetype [Engine]Engine.Vector2,
                                                             valuetype [Engine]Engine.Vector2)
    IL_00dd:  ldc.r4     0.5
    IL_00e2:  ble.un.s   IL_0112

    IL_00e4:  ldarg.1
    IL_00e5:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_00ea:  ldloc.s    V_7
    IL_00ec:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_00f1:  ldloc.s    V_6
    IL_00f3:  mul
    IL_00f4:  add
    IL_00f5:  ldarg.2
    IL_00f6:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_00fb:  ldarg.1
    IL_00fc:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0101:  ldloc.s    V_7
    IL_0103:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0108:  ldloc.s    V_6
    IL_010a:  mul
    IL_010b:  add
    IL_010c:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0111:  ret

    IL_0112:  ldarg.2
    IL_0113:  ret
  } // end of method ComponentPilot::AvoidNearestBody

  .method private hidebysig static valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> 
          CombineNullables(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> v1,
                           valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> v2) cil managed
  {
    // 代码大小       47 (0x2f)
    .maxstack  8
    IL_0000:  ldarga.s   v1
    IL_0002:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_0007:  brtrue.s   IL_000b

    IL_0009:  ldarg.1
    IL_000a:  ret

    IL_000b:  ldarga.s   v2
    IL_000d:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_0012:  brtrue.s   IL_0016

    IL_0014:  ldarg.0
    IL_0015:  ret

    IL_0016:  ldarga.s   v1
    IL_0018:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_001d:  ldarga.s   v2
    IL_001f:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_0024:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0029:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_002e:  ret
  } // end of method ComponentPilot::CombineNullables

  .method private hidebysig static valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> 
          CombineNullables(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> v1,
                           valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> v2) cil managed
  {
    // 代码大小       47 (0x2f)
    .maxstack  8
    IL_0000:  ldarga.s   v1
    IL_0002:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_0007:  brtrue.s   IL_000b

    IL_0009:  ldarg.1
    IL_000a:  ret

    IL_000b:  ldarga.s   v2
    IL_000d:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_0012:  brtrue.s   IL_0016

    IL_0014:  ldarg.0
    IL_0015:  ret

    IL_0016:  ldarga.s   v1
    IL_0018:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_001d:  ldarga.s   v2
    IL_001f:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_0024:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0029:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_002e:  ret
  } // end of method ComponentPilot::CombineNullables

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.Random::.ctor()
    IL_0006:  stfld      class Game.Random Game.ComponentPilot::m_random
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>::.ctor()
    IL_0011:  stfld      class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> Game.ComponentPilot::m_nearbyBodies
    IL_0016:  ldarg.0
    IL_0017:  call       instance void [EntitySystem]GameEntitySystem.Component::.ctor()
    IL_001c:  ret
  } // end of method ComponentPilot::.ctor

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       1 (0x1)
    .maxstack  8
    IL_0000:  ret
  } // end of method ComponentPilot::.cctor

  .property instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>
          Destination()
  {
    .get instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPilot::get_Destination()
    .set instance void Game.ComponentPilot::set_Destination(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>)
  } // end of property ComponentPilot::Destination
  .property instance float32 Speed()
  {
    .get instance float32 Game.ComponentPilot::get_Speed()
    .set instance void Game.ComponentPilot::set_Speed(float32)
  } // end of property ComponentPilot::Speed
  .property instance float32 Range()
  {
    .get instance float32 Game.ComponentPilot::get_Range()
    .set instance void Game.ComponentPilot::set_Range(float32)
  } // end of property ComponentPilot::Range
  .property instance bool IgnoreHeightDifference()
  {
    .get instance bool Game.ComponentPilot::get_IgnoreHeightDifference()
    .set instance void Game.ComponentPilot::set_IgnoreHeightDifference(bool)
  } // end of property ComponentPilot::IgnoreHeightDifference
  .property instance bool RaycastDestination()
  {
    .get instance bool Game.ComponentPilot::get_RaycastDestination()
    .set instance void Game.ComponentPilot::set_RaycastDestination(bool)
  } // end of property ComponentPilot::RaycastDestination
  .property instance bool TakeRisks()
  {
    .get instance bool Game.ComponentPilot::get_TakeRisks()
    .set instance void Game.ComponentPilot::set_TakeRisks(bool)
  } // end of property ComponentPilot::TakeRisks
  .property instance class Game.ComponentBody
          DoNotAvoidBody()
  {
    .get instance class Game.ComponentBody Game.ComponentPilot::get_DoNotAvoidBody()
    .set instance void Game.ComponentPilot::set_DoNotAvoidBody(class Game.ComponentBody)
  } // end of property ComponentPilot::DoNotAvoidBody
  .property instance bool IsStuck()
  {
    .get instance bool Game.ComponentPilot::get_IsStuck()
    .set instance void Game.ComponentPilot::set_IsStuck(bool)
  } // end of property ComponentPilot::IsStuck
  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.ComponentPilot::get_UpdateOrder()
  } // end of property ComponentPilot::UpdateOrder
} // end of class Game.ComponentPilot