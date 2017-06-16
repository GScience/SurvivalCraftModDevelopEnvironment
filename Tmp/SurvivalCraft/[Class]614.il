.class public auto ansi beforefieldinit Game.DeathCamera
       extends Game.Camera
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.DeathCamera/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`3<int32,float32,bool> '<>9__4_0'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.DeathCamera/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.DeathCamera/'<>c' Game.DeathCamera/'<>c'::'<>9'
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
            '<FindBestCameraPosition>b__4_0'(int32 v,
                                             float32 d) cil managed
    {
      // 代码大小       21 (0x15)
      .maxstack  8
      IL_0000:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
      IL_0005:  ldarg.1
      IL_0006:  call       int32 Game.TerrainData::ExtractContents(int32)
      IL_000b:  ldelem.ref
      IL_000c:  ldfld      bool Game.Block::IsTransparent
      IL_0011:  ldc.i4.0
      IL_0012:  ceq
      IL_0014:  ret
    } // end of method '<>c'::'<FindBestCameraPosition>b__4_0'

  } // end of class '<>c'

  .field private valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> m_cameraPosition
  .field private class Game.ComponentBody m_target
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.SubsystemCamera subsystemCamera) cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void Game.Camera::.ctor(class Game.SubsystemCamera)
    IL_0007:  ret
  } // end of method DeathCamera::.ctor

  .method public hidebysig virtual instance void 
          UpdateViewParameters(class Game.SubsystemDrawing subsystemDrawing,
                               class Game.SubsystemAudio subsystemAudio,
                               float32 dt) cil managed
  {
    // 代码大小       350 (0x15e)
    .maxstack  5
    .locals init (class Game.ComponentBody V_0,
             valuetype [Engine]Engine.Vector3 V_1,
             valuetype [Engine]Engine.Vector3 V_2)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.SubsystemCamera Game.Camera::get_SubsystemCamera()
    IL_0006:  callvirt   instance class Game.ComponentBody Game.SubsystemCamera::get_Target()
    IL_000b:  ldarg.0
    IL_000c:  ldfld      class Game.ComponentBody Game.DeathCamera::m_target
    IL_0011:  beq.s      IL_0070

    IL_0013:  ldarg.0
    IL_0014:  call       instance class Game.SubsystemCamera Game.Camera::get_SubsystemCamera()
    IL_0019:  callvirt   instance class Game.ComponentBody Game.SubsystemCamera::get_Target()
    IL_001e:  stloc.0
    IL_001f:  ldloc.0
    IL_0020:  brfalse.s  IL_005f

    IL_0022:  ldloc.0
    IL_0023:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.ComponentBody::get_BoundingBox()
    IL_0028:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_002d:  ldloc.0
    IL_002e:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.ComponentBody::get_BoundingBox()
    IL_0033:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_0038:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_003d:  ldc.r4     2.
    IL_0042:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Division(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0047:  stloc.1
    IL_0048:  ldarg.0
    IL_0049:  ldarg.0
    IL_004a:  ldloc.1
    IL_004b:  ldc.r4     5.
    IL_0050:  call       instance valuetype [Engine]Engine.Vector3 Game.DeathCamera::FindBestCameraPosition(valuetype [Engine]Engine.Vector3,
                                                                                                            float32)
    IL_0055:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_005a:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.DeathCamera::m_cameraPosition
    IL_005f:  ldarg.0
    IL_0060:  ldarg.0
    IL_0061:  call       instance class Game.SubsystemCamera Game.Camera::get_SubsystemCamera()
    IL_0066:  callvirt   instance class Game.ComponentBody Game.SubsystemCamera::get_Target()
    IL_006b:  stfld      class Game.ComponentBody Game.DeathCamera::m_target
    IL_0070:  ldarg.0
    IL_0071:  ldfld      class Game.ComponentBody Game.DeathCamera::m_target
    IL_0076:  brfalse    IL_015d

    IL_007b:  ldarg.0
    IL_007c:  ldfld      class Game.ComponentBody Game.DeathCamera::m_target
    IL_0081:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.ComponentBody::get_BoundingBox()
    IL_0086:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_008b:  ldarg.0
    IL_008c:  ldfld      class Game.ComponentBody Game.DeathCamera::m_target
    IL_0091:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.ComponentBody::get_BoundingBox()
    IL_0096:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_009b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00a0:  ldc.r4     2.
    IL_00a5:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Division(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_00aa:  stloc.2
    IL_00ab:  ldarg.0
    IL_00ac:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.DeathCamera::m_cameraPosition
    IL_00b1:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_00b6:  brfalse.s  IL_0119

    IL_00b8:  ldarg.0
    IL_00b9:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.DeathCamera::m_cameraPosition
    IL_00be:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_00c3:  ldarg.1
    IL_00c4:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
    IL_00c9:  call       float32 [Engine]Engine.Vector3::Distance(valuetype [Engine]Engine.Vector3,
                                                                  valuetype [Engine]Engine.Vector3)
    IL_00ce:  ldc.r4     20.
    IL_00d3:  ble.un.s   IL_00e6

    IL_00d5:  ldarg.1
    IL_00d6:  ldarg.0
    IL_00d7:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.DeathCamera::m_cameraPosition
    IL_00dc:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_00e1:  callvirt   instance void Game.SubsystemDrawing::set_ViewPosition(valuetype [Engine]Engine.Vector3)
    IL_00e6:  ldarg.1
    IL_00e7:  dup
    IL_00e8:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
    IL_00ed:  ldc.r4     1.5
    IL_00f2:  ldarg.3
    IL_00f3:  mul
    IL_00f4:  ldarg.0
    IL_00f5:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.DeathCamera::m_cameraPosition
    IL_00fa:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_00ff:  ldarg.1
    IL_0100:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
    IL_0105:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_010a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_010f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0114:  callvirt   instance void Game.SubsystemDrawing::set_ViewPosition(valuetype [Engine]Engine.Vector3)
    IL_0119:  ldarg.1
    IL_011a:  ldloc.2
    IL_011b:  ldarg.1
    IL_011c:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
    IL_0121:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0126:  callvirt   instance void Game.SubsystemDrawing::set_ViewDirection(valuetype [Engine]Engine.Vector3)
    IL_012b:  ldarg.1
    IL_012c:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_0131:  callvirt   instance void Game.SubsystemDrawing::set_ViewUp(valuetype [Engine]Engine.Vector3)
    IL_0136:  ldarg.2
    IL_0137:  ldarg.0
    IL_0138:  ldfld      class Game.ComponentBody Game.DeathCamera::m_target
    IL_013d:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0142:  callvirt   instance void Game.SubsystemAudio::set_ListenerPosition(valuetype [Engine]Engine.Vector3)
    IL_0147:  ldarg.2
    IL_0148:  ldarg.1
    IL_0149:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewDirection()
    IL_014e:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_0153:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Cross(valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3)
    IL_0158:  callvirt   instance void Game.SubsystemAudio::set_ListenerRight(valuetype [Engine]Engine.Vector3)
    IL_015d:  ret
  } // end of method DeathCamera::UpdateViewParameters

  .method private hidebysig instance valuetype [Engine]Engine.Vector3 
          FindBestCameraPosition(valuetype [Engine]Engine.Vector3 targetPosition,
                                 float32 distance) cil managed
  {
    // 代码大小       317 (0x13d)
    .maxstack  7
    .locals init (class Game.SubsystemTerrain V_0,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> V_1,
             int32 V_2,
             float32 V_3,
             valuetype [Engine]Engine.Vector3 V_4,
             valuetype [Engine]Engine.Vector3 V_5,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> V_6,
             valuetype [Engine]Engine.Vector3 V_7,
             valuetype Game.CellFace V_8)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.SubsystemCamera Game.Camera::get_SubsystemCamera()
    IL_0006:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_000b:  ldc.i4.1
    IL_000c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_0011:  stloc.0
    IL_0012:  ldloca.s   V_1
    IL_0014:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>
    IL_001a:  ldc.i4.0
    IL_001b:  stloc.2
    IL_001c:  br         IL_0122

    IL_0021:  ldc.r4     1.
    IL_0026:  ldc.r4     6.2831855
    IL_002b:  ldloc.2
    IL_002c:  conv.r4
    IL_002d:  mul
    IL_002e:  ldc.r4     36.
    IL_0033:  div
    IL_0034:  add
    IL_0035:  stloc.3
    IL_0036:  ldloc.3
    IL_0037:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_003c:  ldc.r4     1.
    IL_0041:  ldloc.3
    IL_0042:  call       float32 [Engine]Engine.MathUtils::Cos(float32)
    IL_0047:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_004c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0051:  stloc.s    V_4
    IL_0053:  ldarg.1
    IL_0054:  ldloc.s    V_4
    IL_0056:  ldarg.2
    IL_0057:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_005c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0061:  stloc.s    V_5
    IL_0063:  ldloc.0
    IL_0064:  ldarg.1
    IL_0065:  ldloc.s    V_5
    IL_0067:  ldc.i4.0
    IL_0068:  ldc.i4.1
    IL_0069:  ldsfld     class [System.Runtime]System.Func`3<int32,float32,bool> Game.DeathCamera/'<>c'::'<>9__4_0'
    IL_006e:  dup
    IL_006f:  brtrue.s   IL_0088

    IL_0071:  pop
    IL_0072:  ldsfld     class Game.DeathCamera/'<>c' Game.DeathCamera/'<>c'::'<>9'
    IL_0077:  ldftn      instance bool Game.DeathCamera/'<>c'::'<FindBestCameraPosition>b__4_0'(int32,
                                                                                                float32)
    IL_007d:  newobj     instance void class [System.Runtime]System.Func`3<int32,float32,bool>::.ctor(object,
                                                                                                      native int)
    IL_0082:  dup
    IL_0083:  stsfld     class [System.Runtime]System.Func`3<int32,float32,bool> Game.DeathCamera/'<>c'::'<>9__4_0'
    IL_0088:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> Game.SubsystemTerrain::Raycast(valuetype [Engine]Engine.Vector3,
                                                                                                                                                  valuetype [Engine]Engine.Vector3,
                                                                                                                                                  bool,
                                                                                                                                                  bool,
                                                                                                                                                  class [System.Runtime]System.Func`3<int32,float32,bool>)
    IL_008d:  stloc.s    V_6
    IL_008f:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_0094:  stloc.s    V_7
    IL_0096:  ldloca.s   V_6
    IL_0098:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_HasValue()
    IL_009d:  brfalse.s  IL_00f1

    IL_009f:  ldloca.s   V_6
    IL_00a1:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_00a6:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_00ab:  stloc.s    V_8
    IL_00ad:  ldloc.s    V_8
    IL_00af:  ldfld      int32 Game.CellFace::X
    IL_00b4:  conv.r4
    IL_00b5:  ldc.r4     0.5
    IL_00ba:  add
    IL_00bb:  ldloc.s    V_8
    IL_00bd:  ldfld      int32 Game.CellFace::Y
    IL_00c2:  conv.r4
    IL_00c3:  ldc.r4     0.5
    IL_00c8:  add
    IL_00c9:  ldloc.s    V_8
    IL_00cb:  ldfld      int32 Game.CellFace::Z
    IL_00d0:  conv.r4
    IL_00d1:  ldc.r4     0.5
    IL_00d6:  add
    IL_00d7:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00dc:  ldc.r4     1.
    IL_00e1:  ldloc.s    V_4
    IL_00e3:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00e8:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_00ed:  stloc.s    V_7
    IL_00ef:  br.s       IL_00f5

    IL_00f1:  ldloc.s    V_5
    IL_00f3:  stloc.s    V_7
    IL_00f5:  ldloca.s   V_1
    IL_00f7:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_00fc:  brfalse.s  IL_0115

    IL_00fe:  ldloc.s    V_7
    IL_0100:  ldarg.1
    IL_0101:  call       float32 [Engine]Engine.Vector3::Distance(valuetype [Engine]Engine.Vector3,
                                                                  valuetype [Engine]Engine.Vector3)
    IL_0106:  ldloca.s   V_1
    IL_0108:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_010d:  ldarg.1
    IL_010e:  call       float32 [Engine]Engine.Vector3::Distance(valuetype [Engine]Engine.Vector3,
                                                                  valuetype [Engine]Engine.Vector3)
    IL_0113:  ble.un.s   IL_011e

    IL_0115:  ldloca.s   V_1
    IL_0117:  ldloc.s    V_7
    IL_0119:  call       instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_011e:  ldloc.2
    IL_011f:  ldc.i4.1
    IL_0120:  add
    IL_0121:  stloc.2
    IL_0122:  ldloc.2
    IL_0123:  ldc.i4.s   36
    IL_0125:  blt        IL_0021

    IL_012a:  ldloca.s   V_1
    IL_012c:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_0131:  brfalse.s  IL_013b

    IL_0133:  ldloca.s   V_1
    IL_0135:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_013a:  ret

    IL_013b:  ldarg.1
    IL_013c:  ret
  } // end of method DeathCamera::FindBestCameraPosition

} // end of class Game.DeathCamera