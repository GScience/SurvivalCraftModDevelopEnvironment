.class public auto ansi beforefieldinit Game.OrbitCamera
       extends Game.Camera
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.OrbitCamera/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`3<int32,float32,bool> '<>9__5_0'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.OrbitCamera/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.OrbitCamera/'<>c' Game.OrbitCamera/'<>c'::'<>9'
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
            '<UpdateViewParameters>b__5_0'(int32 'value',
                                           float32 distance) cil managed
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
    } // end of method '<>c'::'<UpdateViewParameters>b__5_0'

  } // end of class '<>c'

  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private valuetype [Engine]Engine.Vector3 m_cameraPosition
  .field private valuetype [Engine]Engine.Vector2 m_angles
  .field private float32 m_distance
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.SubsystemCamera subsystemCamera) cil managed
  {
    // 代码大小       63 (0x3f)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.r4     0.0
    IL_0006:  ldc.r4     30.
    IL_000b:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_0010:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0015:  stfld      valuetype [Engine]Engine.Vector2 Game.OrbitCamera::m_angles
    IL_001a:  ldarg.0
    IL_001b:  ldc.r4     6.
    IL_0020:  stfld      float32 Game.OrbitCamera::m_distance
    IL_0025:  ldarg.0
    IL_0026:  ldarg.1
    IL_0027:  call       instance void Game.Camera::.ctor(class Game.SubsystemCamera)
    IL_002c:  ldarg.0
    IL_002d:  ldarg.1
    IL_002e:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0033:  ldc.i4.1
    IL_0034:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_0039:  stfld      class Game.SubsystemTerrain Game.OrbitCamera::m_subsystemTerrain
    IL_003e:  ret
  } // end of method OrbitCamera::.ctor

  .method public hidebysig virtual instance void 
          UpdateViewParameters(class Game.SubsystemDrawing subsystemDrawing,
                               class Game.SubsystemAudio subsystemAudio,
                               float32 dt) cil managed
  {
    // 代码大小       857 (0x359)
    .maxstack  7
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             valuetype [Engine]Engine.Vector2 V_1,
             valuetype [Engine]Engine.Vector3 V_2,
             valuetype [Engine]Engine.Vector3 V_3,
             valuetype [Engine]Engine.Vector3 V_4,
             valuetype [Engine]Engine.Vector3 V_5,
             valuetype [System.Runtime]System.Nullable`1<float32> V_6,
             valuetype [Engine]Engine.Vector3 V_7,
             valuetype [Engine]Engine.Vector3 V_8,
             valuetype [Engine]Engine.Vector3 V_9,
             valuetype [Engine]Engine.Vector3 V_10,
             float32 V_11,
             int32 V_12,
             int32 V_13,
             valuetype [Engine]Engine.Vector3 V_14,
             valuetype [Engine]Engine.Vector3 V_15,
             valuetype [Engine]Engine.Vector3 V_16,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> V_17)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.SubsystemCamera Game.Camera::get_SubsystemCamera()
    IL_0006:  callvirt   instance class Game.ComponentBody Game.SubsystemCamera::get_Target()
    IL_000b:  brfalse    IL_0358

    IL_0010:  ldarg.0
    IL_0011:  call       instance class Game.SubsystemCamera Game.Camera::get_SubsystemCamera()
    IL_0016:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_001b:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemInput>()
    IL_0020:  dup
    IL_0021:  callvirt   instance valuetype Game.PlayerInput Game.SubsystemInput::get_PlayerInput()
    IL_0026:  ldfld      valuetype [Engine]Engine.Vector3 Game.PlayerInput::SneakMove
    IL_002b:  stloc.0
    IL_002c:  callvirt   instance valuetype Game.PlayerInput Game.SubsystemInput::get_PlayerInput()
    IL_0031:  ldfld      valuetype [Engine]Engine.Vector2 Game.PlayerInput::Look
    IL_0036:  stloc.1
    IL_0037:  ldarg.0
    IL_0038:  ldflda     valuetype [Engine]Engine.Vector2 Game.OrbitCamera::m_angles
    IL_003d:  ldarg.0
    IL_003e:  ldflda     valuetype [Engine]Engine.Vector2 Game.OrbitCamera::m_angles
    IL_0043:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0048:  ldc.r4     4.
    IL_004d:  ldloc.1
    IL_004e:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0053:  mul
    IL_0054:  ldarg.3
    IL_0055:  mul
    IL_0056:  add
    IL_0057:  ldc.r4     0.5
    IL_005c:  ldloc.0
    IL_005d:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0062:  mul
    IL_0063:  ldarg.3
    IL_0064:  mul
    IL_0065:  add
    IL_0066:  call       float32 [Engine]Engine.MathUtils::NormalizeAngle(float32)
    IL_006b:  stfld      float32 [Engine]Engine.Vector2::X
    IL_0070:  ldarg.0
    IL_0071:  ldflda     valuetype [Engine]Engine.Vector2 Game.OrbitCamera::m_angles
    IL_0076:  ldarg.0
    IL_0077:  ldflda     valuetype [Engine]Engine.Vector2 Game.OrbitCamera::m_angles
    IL_007c:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0081:  ldc.r4     4.
    IL_0086:  ldloc.1
    IL_0087:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_008c:  mul
    IL_008d:  ldarg.3
    IL_008e:  mul
    IL_008f:  add
    IL_0090:  call       float32 [Engine]Engine.MathUtils::NormalizeAngle(float32)
    IL_0095:  ldc.r4     -20.
    IL_009a:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_009f:  ldc.r4     70.
    IL_00a4:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_00a9:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_00ae:  stfld      float32 [Engine]Engine.Vector2::Y
    IL_00b3:  ldarg.0
    IL_00b4:  ldarg.0
    IL_00b5:  ldfld      float32 Game.OrbitCamera::m_distance
    IL_00ba:  ldc.r4     10.
    IL_00bf:  ldloc.0
    IL_00c0:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_00c5:  mul
    IL_00c6:  ldarg.3
    IL_00c7:  mul
    IL_00c8:  sub
    IL_00c9:  ldc.r4     2.
    IL_00ce:  ldc.r4     16.
    IL_00d3:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_00d8:  stfld      float32 Game.OrbitCamera::m_distance
    IL_00dd:  ldarg.0
    IL_00de:  ldfld      float32 Game.OrbitCamera::m_distance
    IL_00e3:  ldc.r4     0.0
    IL_00e8:  ldc.r4     0.0
    IL_00ed:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00f2:  ldarg.0
    IL_00f3:  ldflda     valuetype [Engine]Engine.Vector2 Game.OrbitCamera::m_angles
    IL_00f8:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_00fd:  ldc.r4     0.0
    IL_0102:  ldarg.0
    IL_0103:  ldflda     valuetype [Engine]Engine.Vector2 Game.OrbitCamera::m_angles
    IL_0108:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_010d:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateFromYawPitchRoll(float32,
                                                                                                       float32,
                                                                                                       float32)
    IL_0112:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0117:  stloc.2
    IL_0118:  ldarg.0
    IL_0119:  call       instance class Game.SubsystemCamera Game.Camera::get_SubsystemCamera()
    IL_011e:  callvirt   instance class Game.ComponentBody Game.SubsystemCamera::get_Target()
    IL_0123:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.ComponentBody::get_BoundingBox()
    IL_0128:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_012d:  ldarg.0
    IL_012e:  call       instance class Game.SubsystemCamera Game.Camera::get_SubsystemCamera()
    IL_0133:  callvirt   instance class Game.ComponentBody Game.SubsystemCamera::get_Target()
    IL_0138:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.ComponentBody::get_BoundingBox()
    IL_013d:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_0142:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0147:  ldc.r4     2.
    IL_014c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Division(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0151:  stloc.3
    IL_0152:  ldloc.3
    IL_0153:  ldloc.2
    IL_0154:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0159:  stloc.s    V_4
    IL_015b:  ldloc.s    V_4
    IL_015d:  ldarg.0
    IL_015e:  ldfld      valuetype [Engine]Engine.Vector3 Game.OrbitCamera::m_cameraPosition
    IL_0163:  call       float32 [Engine]Engine.Vector3::Distance(valuetype [Engine]Engine.Vector3,
                                                                  valuetype [Engine]Engine.Vector3)
    IL_0168:  ldc.r4     10.
    IL_016d:  bge.un.s   IL_01a8

    IL_016f:  ldloc.s    V_4
    IL_0171:  ldarg.0
    IL_0172:  ldfld      valuetype [Engine]Engine.Vector3 Game.OrbitCamera::m_cameraPosition
    IL_0177:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_017c:  stloc.s    V_10
    IL_017e:  ldc.r4     10.
    IL_0183:  ldarg.3
    IL_0184:  mul
    IL_0185:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_018a:  stloc.s    V_11
    IL_018c:  ldarg.0
    IL_018d:  ldarg.0
    IL_018e:  ldfld      valuetype [Engine]Engine.Vector3 Game.OrbitCamera::m_cameraPosition
    IL_0193:  ldloc.s    V_11
    IL_0195:  ldloc.s    V_10
    IL_0197:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_019c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01a1:  stfld      valuetype [Engine]Engine.Vector3 Game.OrbitCamera::m_cameraPosition
    IL_01a6:  br.s       IL_01b0

    IL_01a8:  ldarg.0
    IL_01a9:  ldloc.s    V_4
    IL_01ab:  stfld      valuetype [Engine]Engine.Vector3 Game.OrbitCamera::m_cameraPosition
    IL_01b0:  ldarg.0
    IL_01b1:  ldfld      valuetype [Engine]Engine.Vector3 Game.OrbitCamera::m_cameraPosition
    IL_01b6:  ldloc.3
    IL_01b7:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_01bc:  stloc.s    V_5
    IL_01be:  ldloca.s   V_6
    IL_01c0:  initobj    valuetype [System.Runtime]System.Nullable`1<float32>
    IL_01c6:  ldloc.s    V_5
    IL_01c8:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_01cd:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Cross(valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3)
    IL_01d2:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_01d7:  stloc.s    V_7
    IL_01d9:  ldloc.s    V_5
    IL_01db:  ldloc.s    V_7
    IL_01dd:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Cross(valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3)
    IL_01e2:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_01e7:  stloc.s    V_8
    IL_01e9:  ldc.i4.0
    IL_01ea:  stloc.s    V_12
    IL_01ec:  br         IL_02ce

    IL_01f1:  ldc.i4.0
    IL_01f2:  stloc.s    V_13
    IL_01f4:  br         IL_02c0

    IL_01f9:  ldc.r4     0.5
    IL_01fe:  ldloc.s    V_7
    IL_0200:  ldloc.s    V_12
    IL_0202:  conv.r4
    IL_0203:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0208:  ldloc.s    V_8
    IL_020a:  ldloc.s    V_13
    IL_020c:  conv.r4
    IL_020d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0212:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0217:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_021c:  stloc.s    V_14
    IL_021e:  ldloc.3
    IL_021f:  ldloc.s    V_14
    IL_0221:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0226:  stloc.s    V_15
    IL_0228:  ldloc.s    V_15
    IL_022a:  ldloc.s    V_5
    IL_022c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0231:  ldloc.s    V_5
    IL_0233:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0238:  ldc.r4     0.5
    IL_023d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0242:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0247:  stloc.s    V_16
    IL_0249:  ldarg.0
    IL_024a:  ldfld      class Game.SubsystemTerrain Game.OrbitCamera::m_subsystemTerrain
    IL_024f:  ldloc.s    V_15
    IL_0251:  ldloc.s    V_16
    IL_0253:  ldc.i4.0
    IL_0254:  ldc.i4.1
    IL_0255:  ldsfld     class [System.Runtime]System.Func`3<int32,float32,bool> Game.OrbitCamera/'<>c'::'<>9__5_0'
    IL_025a:  dup
    IL_025b:  brtrue.s   IL_0274

    IL_025d:  pop
    IL_025e:  ldsfld     class Game.OrbitCamera/'<>c' Game.OrbitCamera/'<>c'::'<>9'
    IL_0263:  ldftn      instance bool Game.OrbitCamera/'<>c'::'<UpdateViewParameters>b__5_0'(int32,
                                                                                              float32)
    IL_0269:  newobj     instance void class [System.Runtime]System.Func`3<int32,float32,bool>::.ctor(object,
                                                                                                      native int)
    IL_026e:  dup
    IL_026f:  stsfld     class [System.Runtime]System.Func`3<int32,float32,bool> Game.OrbitCamera/'<>c'::'<>9__5_0'
    IL_0274:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> Game.SubsystemTerrain::Raycast(valuetype [Engine]Engine.Vector3,
                                                                                                                                                  valuetype [Engine]Engine.Vector3,
                                                                                                                                                  bool,
                                                                                                                                                  bool,
                                                                                                                                                  class [System.Runtime]System.Func`3<int32,float32,bool>)
    IL_0279:  stloc.s    V_17
    IL_027b:  ldloca.s   V_17
    IL_027d:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_HasValue()
    IL_0282:  brfalse.s  IL_02ba

    IL_0284:  ldloca.s   V_6
    IL_0286:  ldloca.s   V_6
    IL_0288:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float32>::get_HasValue()
    IL_028d:  brtrue.s   IL_029d

    IL_028f:  ldloca.s   V_17
    IL_0291:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_0296:  ldfld      float32 Game.TerrainRaycastResult::Distance
    IL_029b:  br.s       IL_02b5

    IL_029d:  ldloca.s   V_6
    IL_029f:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_02a4:  ldloca.s   V_17
    IL_02a6:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_02ab:  ldfld      float32 Game.TerrainRaycastResult::Distance
    IL_02b0:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_02b5:  call       instance void valuetype [System.Runtime]System.Nullable`1<float32>::.ctor(!0)
    IL_02ba:  ldloc.s    V_13
    IL_02bc:  ldc.i4.1
    IL_02bd:  add
    IL_02be:  stloc.s    V_13
    IL_02c0:  ldloc.s    V_13
    IL_02c2:  ldc.i4.0
    IL_02c3:  ble        IL_01f9

    IL_02c8:  ldloc.s    V_12
    IL_02ca:  ldc.i4.1
    IL_02cb:  add
    IL_02cc:  stloc.s    V_12
    IL_02ce:  ldloc.s    V_12
    IL_02d0:  ldc.i4.0
    IL_02d1:  ble        IL_01f1

    IL_02d6:  ldloca.s   V_6
    IL_02d8:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float32>::get_HasValue()
    IL_02dd:  brfalse.s  IL_030c

    IL_02df:  ldloc.3
    IL_02e0:  ldloc.s    V_5
    IL_02e2:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_02e7:  ldloca.s   V_6
    IL_02e9:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_02ee:  ldc.r4     0.5
    IL_02f3:  sub
    IL_02f4:  ldc.r4     0.2
    IL_02f9:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_02fe:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0303:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0308:  stloc.s    V_9
    IL_030a:  br.s       IL_0316

    IL_030c:  ldloc.3
    IL_030d:  ldloc.s    V_5
    IL_030f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0314:  stloc.s    V_9
    IL_0316:  ldarg.1
    IL_0317:  ldloc.s    V_9
    IL_0319:  callvirt   instance void Game.SubsystemDrawing::set_ViewPosition(valuetype [Engine]Engine.Vector3)
    IL_031e:  ldarg.1
    IL_031f:  ldloc.3
    IL_0320:  ldarg.1
    IL_0321:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
    IL_0326:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_032b:  callvirt   instance void Game.SubsystemDrawing::set_ViewDirection(valuetype [Engine]Engine.Vector3)
    IL_0330:  ldarg.1
    IL_0331:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_0336:  callvirt   instance void Game.SubsystemDrawing::set_ViewUp(valuetype [Engine]Engine.Vector3)
    IL_033b:  ldarg.2
    IL_033c:  ldloc.3
    IL_033d:  callvirt   instance void Game.SubsystemAudio::set_ListenerPosition(valuetype [Engine]Engine.Vector3)
    IL_0342:  ldarg.2
    IL_0343:  ldarg.1
    IL_0344:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewDirection()
    IL_0349:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_034e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Cross(valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3)
    IL_0353:  callvirt   instance void Game.SubsystemAudio::set_ListenerRight(valuetype [Engine]Engine.Vector3)
    IL_0358:  ret
  } // end of method OrbitCamera::UpdateViewParameters

} // end of class Game.OrbitCamera