.class public auto ansi beforefieldinit Game.ComponentPilot
       extends [EntitySystem]GameEntitySystem.Component
       implements Game.IUpdateable
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.ComponentPilot/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`3<int32,float32,bool> '<>9__47_0'
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
            '<Update>b__47_0'(int32 'value',
                              float32 distance) cil managed
    {
      // 代码大小       18 (0x12)
      .maxstack  8
      IL_0000:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
      IL_0005:  ldarg.1
      IL_0006:  call       int32 Game.TerrainData::ExtractContents(int32)
      IL_000b:  ldelem.ref
      IL_000c:  ldfld      bool Game.Block::IsCollidable
      IL_0011:  ret
    } // end of method '<>c'::'<Update>b__47_0'

  } // end of class '<>c'

  .field private class Game.SubsystemTime m_subsystemTime
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
  .field private bool '<IsStuck>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig instance void 
          SetDestination(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> destination,
                         float32 speed,
                         float32 range,
                         bool ignoreHeightDifference,
                         bool raycastDestination,
                         bool takeRisks) cil managed
  {
    // 代码大小       196 (0xc4)
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
    IL_00c3:  ret
  } // end of method ComponentPilot::SetDestination

  .method public hidebysig instance void 
          Stop() cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  7
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
    IL_0017:  call       instance void Game.ComponentPilot::SetDestination(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>,
                                                                           float32,
                                                                           float32,
                                                                           bool,
                                                                           bool,
                                                                           bool)
    IL_001c:  ret
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
    // 代码大小       2248 (0x8c8)
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
    IL_0011:  blt.un     IL_07ef

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
    IL_0086:  brfalse    IL_0751

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
    IL_00b7:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPilot::get_Destination()
    IL_00bc:  stloc.0
    IL_00bd:  ldloca.s   V_0
    IL_00bf:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_00c4:  stloc.3
    IL_00c5:  ldloc.3
    IL_00c6:  ldloc.1
    IL_00c7:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_00cc:  stloc.s    V_4
    IL_00ce:  ldloca.s   V_4
    IL_00d0:  call       instance float32 [Engine]Engine.Vector3::LengthSquared()
    IL_00d5:  stloc.s    V_5
    IL_00d7:  ldloc.3
    IL_00d8:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_00dd:  ldloc.3
    IL_00de:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_00e3:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00e8:  ldloc.1
    IL_00e9:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_00ee:  ldloc.1
    IL_00ef:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_00f4:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00f9:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_00fe:  stloc.s    V_6
    IL_0100:  ldloca.s   V_6
    IL_0102:  call       instance float32 [Engine]Engine.Vector2::LengthSquared()
    IL_0107:  stloc.s    V_7
    IL_0109:  ldloc.2
    IL_010a:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_010f:  ldloc.2
    IL_0110:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0115:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_011a:  ldloc.s    V_4
    IL_011c:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0121:  ldloc.s    V_4
    IL_0123:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0128:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_012d:  call       float32 [Engine]Engine.Vector2::Angle(valuetype [Engine]Engine.Vector2,
                                                               valuetype [Engine]Engine.Vector2)
    IL_0132:  stloc.s    V_8
    IL_0134:  ldarg.0
    IL_0135:  ldfld      class Game.ComponentCreature Game.ComponentPilot::m_componentCreature
    IL_013a:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_013f:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_CollisionVelocityChange()
    IL_0144:  ldc.r4     1.
    IL_0149:  ldc.r4     0.0
    IL_014e:  ldc.r4     1.
    IL_0153:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0158:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_015d:  stloc.s    V_12
    IL_015f:  ldloca.s   V_12
    IL_0161:  call       instance float32 [Engine]Engine.Vector3::LengthSquared()
    IL_0166:  ldc.r4     0.0
    IL_016b:  cgt
    IL_016d:  brfalse.s  IL_018a

    IL_016f:  ldarg.0
    IL_0170:  ldfld      class Game.ComponentCreature Game.ComponentPilot::m_componentCreature
    IL_0175:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_017a:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<int32> Game.ComponentBody::get_StandingOnValue()
    IL_017f:  stloc.s    V_13
    IL_0181:  ldloca.s   V_13
    IL_0183:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0188:  brtrue.s   IL_0191

    IL_018a:  ldc.r4     0.40000001
    IL_018f:  br.s       IL_0196

    IL_0191:  ldc.r4     0.15000001
    IL_0196:  stloc.s    V_9
    IL_0198:  ldarg.0
    IL_0199:  ldfld      class Game.SubsystemTime Game.ComponentPilot::m_subsystemTime
    IL_019e:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_01a3:  ldarg.0
    IL_01a4:  ldfld      float64 Game.ComponentPilot::m_lastStuckCheckTime
    IL_01a9:  ldloc.s    V_9
    IL_01ab:  conv.r8
    IL_01ac:  add
    IL_01ad:  bge.s      IL_01bf

    IL_01af:  ldarg.0
    IL_01b0:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPilot::m_lastStuckCheckPosition
    IL_01b5:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_01ba:  brtrue     IL_0249

    IL_01bf:  ldarg.0
    IL_01c0:  ldarg.0
    IL_01c1:  ldfld      class Game.SubsystemTime Game.ComponentPilot::m_subsystemTime
    IL_01c6:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_01cb:  stfld      float64 Game.ComponentPilot::m_lastStuckCheckTime
    IL_01d0:  ldloc.s    V_8
    IL_01d2:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_01d7:  ldc.r4     20.
    IL_01dc:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_01e1:  bgt.s      IL_0214

    IL_01e3:  ldarg.0
    IL_01e4:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPilot::m_lastStuckCheckPosition
    IL_01e9:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_01ee:  brfalse.s  IL_0214

    IL_01f0:  ldloc.1
    IL_01f1:  ldarg.0
    IL_01f2:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPilot::m_lastStuckCheckPosition
    IL_01f7:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_01fc:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0201:  ldloc.s    V_4
    IL_0203:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0208:  call       float32 [Engine]Engine.Vector3::Dot(valuetype [Engine]Engine.Vector3,
                                                             valuetype [Engine]Engine.Vector3)
    IL_020d:  ldc.r4     0.2
    IL_0212:  ble.un.s   IL_0229

    IL_0214:  ldarg.0
    IL_0215:  ldloc.1
    IL_0216:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_021b:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPilot::m_lastStuckCheckPosition
    IL_0220:  ldarg.0
    IL_0221:  ldc.i4.0
    IL_0222:  stfld      int32 Game.ComponentPilot::m_stuckCount
    IL_0227:  br.s       IL_0237

    IL_0229:  ldarg.0
    IL_022a:  ldarg.0
    IL_022b:  ldfld      int32 Game.ComponentPilot::m_stuckCount
    IL_0230:  ldc.i4.1
    IL_0231:  add
    IL_0232:  stfld      int32 Game.ComponentPilot::m_stuckCount
    IL_0237:  ldarg.0
    IL_0238:  ldarg.0
    IL_0239:  ldfld      int32 Game.ComponentPilot::m_stuckCount
    IL_023e:  ldc.i4.4
    IL_023f:  clt
    IL_0241:  ldc.i4.0
    IL_0242:  ceq
    IL_0244:  call       instance void Game.ComponentPilot::set_IsStuck(bool)
    IL_0249:  ldarg.0
    IL_024a:  ldfld      class Game.ComponentCreature Game.ComponentPilot::m_componentCreature
    IL_024f:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_0254:  callvirt   instance float32 Game.ComponentLocomotion::get_FlySpeed()
    IL_0259:  ldc.r4     0.0
    IL_025e:  ble.un     IL_037b

    IL_0263:  ldloc.s    V_5
    IL_0265:  ldc.r4     9.
    IL_026a:  bgt.s      IL_02c0

    IL_026c:  ldloc.s    V_4
    IL_026e:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0273:  ldc.r4     0.5
    IL_0278:  bgt.s      IL_02c0

    IL_027a:  ldloc.s    V_4
    IL_027c:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0281:  ldc.r4     -1.5
    IL_0286:  blt.s      IL_02c0

    IL_0288:  ldarg.0
    IL_0289:  ldfld      class Game.ComponentCreature Game.ComponentPilot::m_componentCreature
    IL_028e:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0293:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<int32> Game.ComponentBody::get_StandingOnValue()
    IL_0298:  stloc.s    V_13
    IL_029a:  ldloca.s   V_13
    IL_029c:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_02a1:  brtrue     IL_037b

    IL_02a6:  ldarg.0
    IL_02a7:  ldfld      class Game.ComponentCreature Game.ComponentPilot::m_componentCreature
    IL_02ac:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_02b1:  callvirt   instance float32 Game.ComponentBody::get_ImmersionFactor()
    IL_02b6:  ldc.r4     0.0
    IL_02bb:  bne.un     IL_037b

    IL_02c0:  ldarg.0
    IL_02c1:  ldfld      class Game.ComponentCreature Game.ComponentPilot::m_componentCreature
    IL_02c6:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_02cb:  callvirt   instance float32 Game.ComponentBody::get_ImmersionFactor()
    IL_02d0:  ldc.r4     1.
    IL_02d5:  bge.un     IL_037b

    IL_02da:  ldc.r4     7.9999998e-002
    IL_02df:  ldloca.s   V_6
    IL_02e1:  call       instance float32 [Engine]Engine.Vector2::LengthSquared()
    IL_02e6:  mul
    IL_02e7:  ldc.r4     12.
    IL_02ec:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_02f1:  stloc.s    V_14
    IL_02f3:  ldloc.3
    IL_02f4:  ldc.r4     0.0
    IL_02f9:  ldloc.s    V_14
    IL_02fb:  ldc.r4     0.0
    IL_0300:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0305:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_030a:  stloc.s    V_15
    IL_030c:  ldarg.0
    IL_030d:  call       instance float32 Game.ComponentPilot::get_Speed()
    IL_0312:  ldc.r4     0.5
    IL_0317:  ldloc.s    V_15
    IL_0319:  ldloc.1
    IL_031a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_031f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0324:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0329:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_032e:  stloc.s    V_16
    IL_0330:  ldloca.s   V_16
    IL_0332:  ldloc.s    V_16
    IL_0334:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0339:  ldc.r4     -0.5
    IL_033e:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_0343:  stfld      float32 [Engine]Engine.Vector3::Y
    IL_0348:  ldarg.0
    IL_0349:  ldloc.s    V_16
    IL_034b:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_0350:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPilot::m_flyOrder
    IL_0355:  ldarg.0
    IL_0356:  ldloc.s    V_8
    IL_0358:  ldc.r4     -1.
    IL_035d:  ldc.r4     1.
    IL_0362:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_0367:  ldc.r4     0.0
    IL_036c:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0371:  stfld      valuetype [Engine]Engine.Vector2 Game.ComponentPilot::m_turnOrder
    IL_0376:  br         IL_067e

    IL_037b:  ldarg.0
    IL_037c:  ldfld      class Game.ComponentCreature Game.ComponentPilot::m_componentCreature
    IL_0381:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_0386:  callvirt   instance float32 Game.ComponentLocomotion::get_SwimSpeed()
    IL_038b:  ldc.r4     0.0
    IL_0390:  ble.un     IL_041f

    IL_0395:  ldarg.0
    IL_0396:  ldfld      class Game.ComponentCreature Game.ComponentPilot::m_componentCreature
    IL_039b:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_03a0:  callvirt   instance float32 Game.ComponentBody::get_ImmersionFactor()
    IL_03a5:  ldc.r4     0.5
    IL_03aa:  ble.un.s   IL_041f

    IL_03ac:  ldarg.0
    IL_03ad:  call       instance float32 Game.ComponentPilot::get_Speed()
    IL_03b2:  ldc.r4     0.5
    IL_03b7:  ldloc.3
    IL_03b8:  ldloc.1
    IL_03b9:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_03be:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_03c3:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_03c8:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_03cd:  stloc.s    V_17
    IL_03cf:  ldloca.s   V_17
    IL_03d1:  ldloc.s    V_17
    IL_03d3:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_03d8:  ldc.r4     -0.5
    IL_03dd:  ldc.r4     0.5
    IL_03e2:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_03e7:  stfld      float32 [Engine]Engine.Vector3::Y
    IL_03ec:  ldarg.0
    IL_03ed:  ldloc.s    V_17
    IL_03ef:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_03f4:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPilot::m_swimOrder
    IL_03f9:  ldarg.0
    IL_03fa:  ldloc.s    V_8
    IL_03fc:  ldc.r4     -1.
    IL_0401:  ldc.r4     1.
    IL_0406:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_040b:  ldc.r4     0.0
    IL_0410:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0415:  stfld      valuetype [Engine]Engine.Vector2 Game.ComponentPilot::m_turnOrder
    IL_041a:  br         IL_067e

    IL_041f:  ldarg.0
    IL_0420:  ldfld      class Game.ComponentCreature Game.ComponentPilot::m_componentCreature
    IL_0425:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_042a:  callvirt   instance float32 Game.ComponentLocomotion::get_WalkSpeed()
    IL_042f:  ldc.r4     0.0
    IL_0434:  ble.un     IL_067e

    IL_0439:  ldarg.0
    IL_043a:  ldloc.1
    IL_043b:  ldloc.s    V_4
    IL_043d:  call       instance bool Game.ComponentPilot::IsTerrainSafeToGo(valuetype [Engine]Engine.Vector3,
                                                                              valuetype [Engine]Engine.Vector3)
    IL_0442:  brfalse    IL_0565

    IL_0447:  ldarg.0
    IL_0448:  ldloc.s    V_8
    IL_044a:  ldc.r4     -1.
    IL_044f:  ldc.r4     1.
    IL_0454:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_0459:  ldc.r4     0.0
    IL_045e:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0463:  stfld      valuetype [Engine]Engine.Vector2 Game.ComponentPilot::m_turnOrder
    IL_0468:  ldloc.s    V_7
    IL_046a:  ldc.r4     1.
    IL_046f:  ble.un     IL_0510

    IL_0474:  ldarg.0
    IL_0475:  ldc.r4     0.0
    IL_047a:  ldarg.0
    IL_047b:  call       instance float32 Game.ComponentPilot::get_Speed()
    IL_0480:  ldc.r4     0.0
    IL_0485:  ldloc.s    V_8
    IL_0487:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_048c:  ldc.r4     0.33000001
    IL_0491:  sub
    IL_0492:  ldc.r4     0.66000003
    IL_0497:  div
    IL_0498:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_049d:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_04a2:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_04a7:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_04ac:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.ComponentPilot::m_walkOrder
    IL_04b1:  ldarg.0
    IL_04b2:  call       instance float32 Game.ComponentPilot::get_Speed()
    IL_04b7:  ldc.r4     1.
    IL_04bc:  blt.un     IL_056c

    IL_04c1:  ldarg.0
    IL_04c2:  ldfld      class Game.ComponentCreature Game.ComponentPilot::m_componentCreature
    IL_04c7:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_04cc:  callvirt   instance float32 Game.ComponentLocomotion::get_InAirWalkFactor()
    IL_04d1:  ldc.r4     1.
    IL_04d6:  blt.un     IL_056c

    IL_04db:  ldloc.s    V_5
    IL_04dd:  ldc.r4     1.
    IL_04e2:  ble.un     IL_056c

    IL_04e7:  ldarg.0
    IL_04e8:  ldfld      class Game.Random Game.ComponentPilot::m_random
    IL_04ed:  ldc.r4     0.0
    IL_04f2:  ldc.r4     1.
    IL_04f7:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_04fc:  ldc.r4     5.0000001e-002
    IL_0501:  bge.un.s   IL_056c

    IL_0503:  ldarg.0
    IL_0504:  ldc.r4     1.
    IL_0509:  stfld      float32 Game.ComponentPilot::m_jumpOrder
    IL_050e:  br.s       IL_056c

    IL_0510:  ldarg.0
    IL_0511:  call       instance float32 Game.ComponentPilot::get_Speed()
    IL_0516:  ldc.r4     1.
    IL_051b:  ldloc.s    V_7
    IL_051d:  call       float32 [Engine]Engine.MathUtils::Sqrt(float32)
    IL_0522:  mul
    IL_0523:  ldc.r4     1.
    IL_0528:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_052d:  mul
    IL_052e:  stloc.s    V_18
    IL_0530:  ldarg.0
    IL_0531:  ldc.r4     0.0
    IL_0536:  ldloc.s    V_18
    IL_0538:  ldc.r4     0.0
    IL_053d:  ldc.r4     2.
    IL_0542:  ldloc.s    V_8
    IL_0544:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_0549:  mul
    IL_054a:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_054f:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0554:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0559:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_055e:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.ComponentPilot::m_walkOrder
    IL_0563:  br.s       IL_056c

    IL_0565:  ldarg.0
    IL_0566:  ldc.i4.1
    IL_0567:  call       instance void Game.ComponentPilot::set_IsStuck(bool)
    IL_056c:  ldloc.s    V_7
    IL_056e:  ldc.r4     1.
    IL_0573:  bge.un.s   IL_0596

    IL_0575:  ldloc.s    V_4
    IL_0577:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_057c:  ldc.r4     -0.1
    IL_0581:  bge.un.s   IL_0596

    IL_0583:  ldarg.0
    IL_0584:  ldfld      class Game.ComponentCreature Game.ComponentPilot::m_componentCreature
    IL_0589:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_058e:  ldc.i4.0
    IL_058f:  callvirt   instance void Game.ComponentBody::set_IsSmoothRiseEnabled(bool)
    IL_0594:  br.s       IL_05a7

    IL_0596:  ldarg.0
    IL_0597:  ldfld      class Game.ComponentCreature Game.ComponentPilot::m_componentCreature
    IL_059c:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_05a1:  ldc.i4.1
    IL_05a2:  callvirt   instance void Game.ComponentBody::set_IsSmoothRiseEnabled(bool)
    IL_05a7:  ldloc.s    V_7
    IL_05a9:  ldc.r4     1.
    IL_05ae:  bge.un     IL_0672

    IL_05b3:  ldloc.s    V_4
    IL_05b5:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_05ba:  ldc.r4     -0.5
    IL_05bf:  blt.s      IL_05d2

    IL_05c1:  ldloc.s    V_4
    IL_05c3:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_05c8:  ldc.r4     1.
    IL_05cd:  ble.un     IL_0672

    IL_05d2:  ldloc.s    V_4
    IL_05d4:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_05d9:  ldc.r4     0.0
    IL_05de:  ble.un.s   IL_0607

    IL_05e0:  ldarg.0
    IL_05e1:  ldfld      class Game.Random Game.ComponentPilot::m_random
    IL_05e6:  ldc.r4     0.0
    IL_05eb:  ldc.r4     1.
    IL_05f0:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_05f5:  ldc.r4     5.0000001e-002
    IL_05fa:  bge.un.s   IL_0607

    IL_05fc:  ldarg.0
    IL_05fd:  ldc.r4     1.
    IL_0602:  stfld      float32 Game.ComponentPilot::m_jumpOrder
    IL_0607:  ldarg.0
    IL_0608:  ldflda     valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentPilot::m_aboveBelowTime
    IL_060d:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float64>::get_HasValue()
    IL_0612:  brtrue.s   IL_062c

    IL_0614:  ldarg.0
    IL_0615:  ldarg.0
    IL_0616:  ldfld      class Game.SubsystemTime Game.ComponentPilot::m_subsystemTime
    IL_061b:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0620:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float64>::.ctor(!0)
    IL_0625:  stfld      valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentPilot::m_aboveBelowTime
    IL_062a:  br.s       IL_067e

    IL_062c:  ldarg.0
    IL_062d:  ldfld      class Game.SubsystemTime Game.ComponentPilot::m_subsystemTime
    IL_0632:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0637:  ldarg.0
    IL_0638:  ldflda     valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentPilot::m_aboveBelowTime
    IL_063d:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float64>::get_Value()
    IL_0642:  sub
    IL_0643:  ldc.r8     2.
    IL_064c:  ble.un.s   IL_067e

    IL_064e:  ldarg.0
    IL_064f:  ldfld      class Game.ComponentCreature Game.ComponentPilot::m_componentCreature
    IL_0654:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0659:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<int32> Game.ComponentBody::get_StandingOnValue()
    IL_065e:  stloc.s    V_13
    IL_0660:  ldloca.s   V_13
    IL_0662:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0667:  brfalse.s  IL_067e

    IL_0669:  ldarg.0
    IL_066a:  ldc.i4.1
    IL_066b:  call       instance void Game.ComponentPilot::set_IsStuck(bool)
    IL_0670:  br.s       IL_067e

    IL_0672:  ldarg.0
    IL_0673:  ldflda     valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentPilot::m_aboveBelowTime
    IL_0678:  initobj    valuetype [System.Runtime]System.Nullable`1<float64>
    IL_067e:  ldc.i4.0
    IL_067f:  stloc.s    V_10
    IL_0681:  ldarg.0
    IL_0682:  call       instance bool Game.ComponentPilot::get_IgnoreHeightDifference()
    IL_0687:  brfalse.s  IL_06a1

    IL_0689:  ldloc.s    V_7
    IL_068b:  ldarg.0
    IL_068c:  call       instance float32 Game.ComponentPilot::get_Range()
    IL_0691:  ldarg.0
    IL_0692:  call       instance float32 Game.ComponentPilot::get_Range()
    IL_0697:  mul
    IL_0698:  cgt.un
    IL_069a:  ldc.i4.0
    IL_069b:  ceq
    IL_069d:  stloc.s    V_10
    IL_069f:  br.s       IL_06b7

    IL_06a1:  ldloc.s    V_5
    IL_06a3:  ldarg.0
    IL_06a4:  call       instance float32 Game.ComponentPilot::get_Range()
    IL_06a9:  ldarg.0
    IL_06aa:  call       instance float32 Game.ComponentPilot::get_Range()
    IL_06af:  mul
    IL_06b0:  cgt.un
    IL_06b2:  ldc.i4.0
    IL_06b3:  ceq
    IL_06b5:  stloc.s    V_10
    IL_06b7:  ldloc.s    V_10
    IL_06b9:  brfalse    IL_0751

    IL_06be:  ldarg.0
    IL_06bf:  call       instance bool Game.ComponentPilot::get_RaycastDestination()
    IL_06c4:  brfalse.s  IL_0742

    IL_06c6:  ldarg.0
    IL_06c7:  ldfld      class Game.SubsystemTerrain Game.ComponentPilot::m_subsystemTerrain
    IL_06cc:  ldloc.1
    IL_06cd:  ldc.r4     0.0
    IL_06d2:  ldc.r4     0.5
    IL_06d7:  ldc.r4     0.0
    IL_06dc:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_06e1:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_06e6:  ldloc.3
    IL_06e7:  ldc.r4     0.0
    IL_06ec:  ldc.r4     0.5
    IL_06f1:  ldc.r4     0.0
    IL_06f6:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_06fb:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0700:  ldc.i4.0
    IL_0701:  ldc.i4.1
    IL_0702:  ldsfld     class [System.Runtime]System.Func`3<int32,float32,bool> Game.ComponentPilot/'<>c'::'<>9__47_0'
    IL_0707:  dup
    IL_0708:  brtrue.s   IL_0721

    IL_070a:  pop
    IL_070b:  ldsfld     class Game.ComponentPilot/'<>c' Game.ComponentPilot/'<>c'::'<>9'
    IL_0710:  ldftn      instance bool Game.ComponentPilot/'<>c'::'<Update>b__47_0'(int32,
                                                                                    float32)
    IL_0716:  newobj     instance void class [System.Runtime]System.Func`3<int32,float32,bool>::.ctor(object,
                                                                                                      native int)
    IL_071b:  dup
    IL_071c:  stsfld     class [System.Runtime]System.Func`3<int32,float32,bool> Game.ComponentPilot/'<>c'::'<>9__47_0'
    IL_0721:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> Game.SubsystemTerrain::Raycast(valuetype [Engine]Engine.Vector3,
                                                                                                                                                  valuetype [Engine]Engine.Vector3,
                                                                                                                                                  bool,
                                                                                                                                                  bool,
                                                                                                                                                  class [System.Runtime]System.Func`3<int32,float32,bool>)
    IL_0726:  stloc.s    V_19
    IL_0728:  ldloca.s   V_19
    IL_072a:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_HasValue()
    IL_072f:  brtrue.s   IL_0751

    IL_0731:  ldarg.0
    IL_0732:  ldloca.s   V_0
    IL_0734:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>
    IL_073a:  ldloc.0
    IL_073b:  call       instance void Game.ComponentPilot::set_Destination(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>)
    IL_0740:  br.s       IL_0751

    IL_0742:  ldarg.0
    IL_0743:  ldloca.s   V_0
    IL_0745:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>
    IL_074b:  ldloc.0
    IL_074c:  call       instance void Game.ComponentPilot::set_Destination(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>)
    IL_0751:  ldarg.0
    IL_0752:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPilot::get_Destination()
    IL_0757:  stloc.0
    IL_0758:  ldloca.s   V_0
    IL_075a:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_075f:  brtrue     IL_07ef

    IL_0764:  ldarg.0
    IL_0765:  ldfld      class Game.ComponentCreature Game.ComponentPilot::m_componentCreature
    IL_076a:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_076f:  callvirt   instance float32 Game.ComponentLocomotion::get_FlySpeed()
    IL_0774:  ldc.r4     0.0
    IL_0779:  ble.un.s   IL_07ef

    IL_077b:  ldarg.0
    IL_077c:  ldfld      class Game.ComponentCreature Game.ComponentPilot::m_componentCreature
    IL_0781:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0786:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<int32> Game.ComponentBody::get_StandingOnValue()
    IL_078b:  stloc.s    V_13
    IL_078d:  ldloca.s   V_13
    IL_078f:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0794:  brtrue.s   IL_07ef

    IL_0796:  ldarg.0
    IL_0797:  ldfld      class Game.ComponentCreature Game.ComponentPilot::m_componentCreature
    IL_079c:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_07a1:  callvirt   instance float32 Game.ComponentBody::get_ImmersionFactor()
    IL_07a6:  ldc.r4     0.0
    IL_07ab:  bne.un.s   IL_07ef

    IL_07ad:  ldarg.0
    IL_07ae:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_07b3:  stfld      valuetype [Engine]Engine.Vector2 Game.ComponentPilot::m_turnOrder
    IL_07b8:  ldarg.0
    IL_07b9:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.ComponentPilot::m_walkOrder
    IL_07be:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>
    IL_07c4:  ldarg.0
    IL_07c5:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPilot::m_swimOrder
    IL_07ca:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>
    IL_07d0:  ldarg.0
    IL_07d1:  ldc.r4     0.0
    IL_07d6:  ldc.r4     -0.5
    IL_07db:  ldc.r4     0.0
    IL_07e0:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_07e5:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_07ea:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPilot::m_flyOrder
    IL_07ef:  ldarg.0
    IL_07f0:  ldfld      class Game.ComponentCreature Game.ComponentPilot::m_componentCreature
    IL_07f5:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_07fa:  ldarg.0
    IL_07fb:  ldfld      class Game.ComponentCreature Game.ComponentPilot::m_componentCreature
    IL_0800:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_0805:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.ComponentLocomotion::get_WalkOrder()
    IL_080a:  ldarg.0
    IL_080b:  ldfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.ComponentPilot::m_walkOrder
    IL_0810:  call       valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.ComponentPilot::CombineNullables(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>,
                                                                                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>)
    IL_0815:  callvirt   instance void Game.ComponentLocomotion::set_WalkOrder(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>)
    IL_081a:  ldarg.0
    IL_081b:  ldfld      class Game.ComponentCreature Game.ComponentPilot::m_componentCreature
    IL_0820:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_0825:  ldarg.0
    IL_0826:  ldfld      class Game.ComponentCreature Game.ComponentPilot::m_componentCreature
    IL_082b:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_0830:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentLocomotion::get_SwimOrder()
    IL_0835:  ldarg.0
    IL_0836:  ldfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPilot::m_swimOrder
    IL_083b:  call       valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPilot::CombineNullables(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>,
                                                                                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>)
    IL_0840:  callvirt   instance void Game.ComponentLocomotion::set_SwimOrder(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>)
    IL_0845:  ldarg.0
    IL_0846:  ldfld      class Game.ComponentCreature Game.ComponentPilot::m_componentCreature
    IL_084b:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_0850:  dup
    IL_0851:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.ComponentLocomotion::get_TurnOrder()
    IL_0856:  ldarg.0
    IL_0857:  ldfld      valuetype [Engine]Engine.Vector2 Game.ComponentPilot::m_turnOrder
    IL_085c:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0861:  callvirt   instance void Game.ComponentLocomotion::set_TurnOrder(valuetype [Engine]Engine.Vector2)
    IL_0866:  ldarg.0
    IL_0867:  ldfld      class Game.ComponentCreature Game.ComponentPilot::m_componentCreature
    IL_086c:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_0871:  ldarg.0
    IL_0872:  ldfld      class Game.ComponentCreature Game.ComponentPilot::m_componentCreature
    IL_0877:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_087c:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentLocomotion::get_FlyOrder()
    IL_0881:  ldarg.0
    IL_0882:  ldfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPilot::m_flyOrder
    IL_0887:  call       valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPilot::CombineNullables(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>,
                                                                                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>)
    IL_088c:  callvirt   instance void Game.ComponentLocomotion::set_FlyOrder(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>)
    IL_0891:  ldarg.0
    IL_0892:  ldfld      class Game.ComponentCreature Game.ComponentPilot::m_componentCreature
    IL_0897:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_089c:  ldarg.0
    IL_089d:  ldfld      float32 Game.ComponentPilot::m_jumpOrder
    IL_08a2:  ldarg.0
    IL_08a3:  ldfld      class Game.ComponentCreature Game.ComponentPilot::m_componentCreature
    IL_08a8:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_08ad:  callvirt   instance float32 Game.ComponentLocomotion::get_JumpOrder()
    IL_08b2:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_08b7:  callvirt   instance void Game.ComponentLocomotion::set_JumpOrder(float32)
    IL_08bc:  ldarg.0
    IL_08bd:  ldc.r4     0.0
    IL_08c2:  stfld      float32 Game.ComponentPilot::m_jumpOrder
    IL_08c7:  ret
  } // end of method ComponentPilot::Update

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       55 (0x37)
    .maxstack  8
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
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_001f:  stfld      class Game.SubsystemTerrain Game.ComponentPilot::m_subsystemTerrain
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreature>(bool)
    IL_0031:  stfld      class Game.ComponentCreature Game.ComponentPilot::m_componentCreature
    IL_0036:  ret
  } // end of method ComponentPilot::Load

  .method private hidebysig instance bool 
          IsTerrainSafeToGo(valuetype [Engine]Engine.Vector3 position,
                            valuetype [Engine]Engine.Vector3 direction) cil managed
  {
    // 代码大小       520 (0x208)
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
    IL_006e:  br         IL_0112

    IL_0073:  ldc.i4.m1
    IL_0074:  stloc.s    V_5
    IL_0076:  br         IL_0104

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
    IL_0096:  ble.un.s   IL_00fe

    IL_0098:  ldc.i4.0
    IL_0099:  stloc.s    V_6
    IL_009b:  br.s       IL_00f8

    IL_009d:  ldarg.0
    IL_009e:  ldfld      class Game.SubsystemTerrain Game.ComponentPilot::m_subsystemTerrain
    IL_00a3:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_00a8:  ldloc.0
    IL_00a9:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_00ae:  conv.i4
    IL_00af:  ldloc.s    V_4
    IL_00b1:  add
    IL_00b2:  ldloc.0
    IL_00b3:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_00b8:  conv.i4
    IL_00b9:  ldloc.s    V_6
    IL_00bb:  add
    IL_00bc:  ldloc.0
    IL_00bd:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_00c2:  conv.i4
    IL_00c3:  ldloc.s    V_5
    IL_00c5:  add
    IL_00c6:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_00cb:  stloc.s    V_7
    IL_00cd:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_00d2:  ldloc.s    V_7
    IL_00d4:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_00d9:  ldelem.ref
    IL_00da:  stloc.s    V_8
    IL_00dc:  ldloc.s    V_8
    IL_00de:  ldloc.s    V_7
    IL_00e0:  callvirt   instance bool Game.Block::ShouldAvoid(int32)
    IL_00e5:  brfalse.s  IL_00e9

    IL_00e7:  ldc.i4.0
    IL_00e8:  ret

    IL_00e9:  ldloc.s    V_8
    IL_00eb:  ldfld      bool Game.Block::IsCollidable
    IL_00f0:  brtrue.s   IL_00fe

    IL_00f2:  ldloc.s    V_6
    IL_00f4:  ldc.i4.1
    IL_00f5:  sub
    IL_00f6:  stloc.s    V_6
    IL_00f8:  ldloc.s    V_6
    IL_00fa:  ldc.i4.s   -2
    IL_00fc:  bge.s      IL_009d

    IL_00fe:  ldloc.s    V_5
    IL_0100:  ldc.i4.1
    IL_0101:  add
    IL_0102:  stloc.s    V_5
    IL_0104:  ldloc.s    V_5
    IL_0106:  ldc.i4.1
    IL_0107:  ble        IL_007b

    IL_010c:  ldloc.s    V_4
    IL_010e:  ldc.i4.1
    IL_010f:  add
    IL_0110:  stloc.s    V_4
    IL_0112:  ldloc.s    V_4
    IL_0114:  ldc.i4.1
    IL_0115:  ble        IL_0073

    IL_011a:  ldarg.1
    IL_011b:  ldc.r4     0.0
    IL_0120:  ldc.r4     0.1
    IL_0125:  ldc.r4     0.0
    IL_012a:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_012f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0134:  ldarga.s   direction
    IL_0136:  call       instance float32 [Engine]Engine.Vector3::LengthSquared()
    IL_013b:  ldc.r4     1.
    IL_0140:  blt.s      IL_0169

    IL_0142:  ldc.r4     1.
    IL_0147:  ldarg.2
    IL_0148:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_014d:  ldc.r4     0.0
    IL_0152:  ldarg.2
    IL_0153:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0158:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_015d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0162:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0167:  br.s       IL_017f

    IL_0169:  ldarg.2
    IL_016a:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_016f:  ldc.r4     0.0
    IL_0174:  ldarg.2
    IL_0175:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_017a:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_017f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0184:  stloc.1
    IL_0185:  ldc.i4.1
    IL_0186:  stloc.2
    IL_0187:  ldarg.0
    IL_0188:  call       instance bool Game.ComponentPilot::get_TakeRisks()
    IL_018d:  brtrue.s   IL_0192

    IL_018f:  ldc.i4.5
    IL_0190:  br.s       IL_0193

    IL_0192:  ldc.i4.7
    IL_0193:  stloc.3
    IL_0194:  ldc.i4.0
    IL_0195:  stloc.s    V_9
    IL_0197:  br.s       IL_01fb

    IL_0199:  ldarg.0
    IL_019a:  ldfld      class Game.SubsystemTerrain Game.ComponentPilot::m_subsystemTerrain
    IL_019f:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_01a4:  ldloc.1
    IL_01a5:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_01aa:  conv.i4
    IL_01ab:  ldloc.1
    IL_01ac:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_01b1:  conv.i4
    IL_01b2:  ldloc.s    V_9
    IL_01b4:  add
    IL_01b5:  ldloc.1
    IL_01b6:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_01bb:  conv.i4
    IL_01bc:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_01c1:  stloc.s    V_10
    IL_01c3:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_01c8:  ldloc.s    V_10
    IL_01ca:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_01cf:  ldelem.ref
    IL_01d0:  stloc.s    V_11
    IL_01d2:  ldloc.s    V_11
    IL_01d4:  ldfld      bool Game.Block::IsCollidable
    IL_01d9:  brtrue.s   IL_01e6

    IL_01db:  ldloc.s    V_11
    IL_01dd:  ldfld      int32 Game.Block::BlockIndex
    IL_01e2:  ldc.i4.s   18
    IL_01e4:  bne.un.s   IL_01f5

    IL_01e6:  ldloc.s    V_11
    IL_01e8:  ldloc.s    V_10
    IL_01ea:  callvirt   instance bool Game.Block::ShouldAvoid(int32)
    IL_01ef:  brtrue.s   IL_01f5

    IL_01f1:  ldc.i4.0
    IL_01f2:  stloc.2
    IL_01f3:  br.s       IL_0201

    IL_01f5:  ldloc.s    V_9
    IL_01f7:  ldc.i4.1
    IL_01f8:  sub
    IL_01f9:  stloc.s    V_9
    IL_01fb:  ldloc.s    V_9
    IL_01fd:  ldloc.3
    IL_01fe:  neg
    IL_01ff:  bge.s      IL_0199

    IL_0201:  ldloc.2
    IL_0202:  brfalse.s  IL_0206

    IL_0204:  ldc.i4.0
    IL_0205:  ret

    IL_0206:  ldc.i4.1
    IL_0207:  ret
  } // end of method ComponentPilot::IsTerrainSafeToGo

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
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.Random::.ctor()
    IL_0006:  stfld      class Game.Random Game.ComponentPilot::m_random
    IL_000b:  ldarg.0
    IL_000c:  call       instance void [EntitySystem]GameEntitySystem.Component::.ctor()
    IL_0011:  ret
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