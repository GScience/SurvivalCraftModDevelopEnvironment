.class public auto ansi beforefieldinit Game.OrbitCamera
       extends Game.BasePerspectiveCamera
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.OrbitCamera/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`3<int32,float32,bool> '<>9__9_0'
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
            '<Update>b__9_0'(int32 'value',
                             float32 distance) cil managed
    {
      // 代码大小       21 (0x15)
      .maxstack  8
      IL_0000:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
      IL_0005:  ldarg.1
      IL_0006:  call       int32 Game.Terrain::ExtractContents(int32)
      IL_000b:  ldelem.ref
      IL_000c:  ldfld      bool Game.Block::IsTransparent
      IL_0011:  ldc.i4.0
      IL_0012:  ceq
      IL_0014:  ret
    } // end of method '<>c'::'<Update>b__9_0'

  } // end of class '<>c'

  .field private valuetype [Engine]Engine.Vector3 m_position
  .field private valuetype [Engine]Engine.Vector2 m_angles
  .field private float32 m_distance
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.View view) cil managed
  {
    // 代码大小       45 (0x2d)
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
    IL_0027:  call       instance void Game.BasePerspectiveCamera::.ctor(class Game.View)
    IL_002c:  ret
  } // end of method OrbitCamera::.ctor

  .method public hidebysig specialname virtual 
          instance bool  get_UsesMovementControls() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.1
    IL_0001:  ret
  } // end of method OrbitCamera::get_UsesMovementControls

  .method public hidebysig specialname virtual 
          instance bool  get_IsEntityControlEnabled() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.1
    IL_0001:  ret
  } // end of method OrbitCamera::get_IsEntityControlEnabled

  .method public hidebysig virtual instance void 
          Activate(class Game.Camera previousCamera) cil managed
  {
    // 代码大小       25 (0x19)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewPosition()
    IL_0007:  ldarg.1
    IL_0008:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewDirection()
    IL_000d:  ldarg.1
    IL_000e:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewUp()
    IL_0013:  call       instance void Game.BasePerspectiveCamera::SetupPerspectiveCamera(valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3)
    IL_0018:  ret
  } // end of method OrbitCamera::Activate

  .method public hidebysig virtual instance void 
          Update(float32 dt) cil managed
  {
    // 代码大小       810 (0x32a)
    .maxstack  7
    .locals init (class Game.ComponentPlayer V_0,
             valuetype [Engine]Engine.Vector3 V_1,
             valuetype [Engine]Engine.Vector2 V_2,
             valuetype [Engine]Engine.Vector3 V_3,
             valuetype [Engine]Engine.Vector3 V_4,
             valuetype [Engine]Engine.Vector3 V_5,
             valuetype [Engine]Engine.Vector3 V_6,
             valuetype [System.Runtime]System.Nullable`1<float32> V_7,
             valuetype [Engine]Engine.Vector3 V_8,
             valuetype [Engine]Engine.Vector3 V_9,
             valuetype [Engine]Engine.Vector3 V_10,
             valuetype [Engine]Engine.BoundingBox V_11,
             valuetype [Engine]Engine.Vector3 V_12,
             float32 V_13,
             int32 V_14,
             int32 V_15,
             valuetype [Engine]Engine.Vector3 V_16,
             valuetype [Engine]Engine.Vector3 V_17,
             valuetype [Engine]Engine.Vector3 V_18,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> V_19)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.View Game.Camera::get_View()
    IL_0006:  callvirt   instance class Game.PlayerData Game.View::get_PlayerData()
    IL_000b:  callvirt   instance class Game.ComponentPlayer Game.PlayerData::get_ComponentPlayer()
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  brfalse.s  IL_0021

    IL_0014:  ldarg.0
    IL_0015:  call       instance class Game.View Game.Camera::get_View()
    IL_001a:  callvirt   instance class Game.ComponentCreature Game.View::get_Target()
    IL_001f:  brtrue.s   IL_0022

    IL_0021:  ret

    IL_0022:  ldloc.0
    IL_0023:  callvirt   instance class Game.ComponentInput Game.ComponentPlayer::get_ComponentInput()
    IL_0028:  dup
    IL_0029:  callvirt   instance valuetype Game.PlayerInput Game.ComponentInput::get_PlayerInput()
    IL_002e:  ldfld      valuetype [Engine]Engine.Vector3 Game.PlayerInput::CameraSneakMove
    IL_0033:  stloc.1
    IL_0034:  callvirt   instance valuetype Game.PlayerInput Game.ComponentInput::get_PlayerInput()
    IL_0039:  ldfld      valuetype [Engine]Engine.Vector2 Game.PlayerInput::CameraLook
    IL_003e:  stloc.2
    IL_003f:  ldarg.0
    IL_0040:  ldflda     valuetype [Engine]Engine.Vector2 Game.OrbitCamera::m_angles
    IL_0045:  ldarg.0
    IL_0046:  ldflda     valuetype [Engine]Engine.Vector2 Game.OrbitCamera::m_angles
    IL_004b:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0050:  ldc.r4     4.
    IL_0055:  ldloc.2
    IL_0056:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_005b:  mul
    IL_005c:  ldarg.1
    IL_005d:  mul
    IL_005e:  add
    IL_005f:  ldc.r4     0.5
    IL_0064:  ldloc.1
    IL_0065:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_006a:  mul
    IL_006b:  ldarg.1
    IL_006c:  mul
    IL_006d:  add
    IL_006e:  call       float32 [Engine]Engine.MathUtils::NormalizeAngle(float32)
    IL_0073:  stfld      float32 [Engine]Engine.Vector2::X
    IL_0078:  ldarg.0
    IL_0079:  ldflda     valuetype [Engine]Engine.Vector2 Game.OrbitCamera::m_angles
    IL_007e:  ldarg.0
    IL_007f:  ldflda     valuetype [Engine]Engine.Vector2 Game.OrbitCamera::m_angles
    IL_0084:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0089:  ldc.r4     4.
    IL_008e:  ldloc.2
    IL_008f:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0094:  mul
    IL_0095:  ldarg.1
    IL_0096:  mul
    IL_0097:  add
    IL_0098:  call       float32 [Engine]Engine.MathUtils::NormalizeAngle(float32)
    IL_009d:  ldc.r4     -20.
    IL_00a2:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_00a7:  ldc.r4     70.
    IL_00ac:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_00b1:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_00b6:  stfld      float32 [Engine]Engine.Vector2::Y
    IL_00bb:  ldarg.0
    IL_00bc:  ldarg.0
    IL_00bd:  ldfld      float32 Game.OrbitCamera::m_distance
    IL_00c2:  ldc.r4     10.
    IL_00c7:  ldloc.1
    IL_00c8:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_00cd:  mul
    IL_00ce:  ldarg.1
    IL_00cf:  mul
    IL_00d0:  sub
    IL_00d1:  ldc.r4     2.
    IL_00d6:  ldc.r4     16.
    IL_00db:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_00e0:  stfld      float32 Game.OrbitCamera::m_distance
    IL_00e5:  ldarg.0
    IL_00e6:  ldfld      float32 Game.OrbitCamera::m_distance
    IL_00eb:  ldc.r4     0.0
    IL_00f0:  ldc.r4     0.0
    IL_00f5:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00fa:  ldarg.0
    IL_00fb:  ldflda     valuetype [Engine]Engine.Vector2 Game.OrbitCamera::m_angles
    IL_0100:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0105:  ldc.r4     0.0
    IL_010a:  ldarg.0
    IL_010b:  ldflda     valuetype [Engine]Engine.Vector2 Game.OrbitCamera::m_angles
    IL_0110:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0115:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateFromYawPitchRoll(float32,
                                                                                                       float32,
                                                                                                       float32)
    IL_011a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_011f:  stloc.3
    IL_0120:  ldarg.0
    IL_0121:  call       instance class Game.View Game.Camera::get_View()
    IL_0126:  callvirt   instance class Game.ComponentCreature Game.View::get_Target()
    IL_012b:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0130:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.ComponentBody::get_BoundingBox()
    IL_0135:  stloc.s    V_11
    IL_0137:  ldloca.s   V_11
    IL_0139:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Center()
    IL_013e:  stloc.s    V_4
    IL_0140:  ldloc.s    V_4
    IL_0142:  ldloc.3
    IL_0143:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0148:  stloc.s    V_5
    IL_014a:  ldloc.s    V_5
    IL_014c:  ldarg.0
    IL_014d:  ldfld      valuetype [Engine]Engine.Vector3 Game.OrbitCamera::m_position
    IL_0152:  call       float32 [Engine]Engine.Vector3::Distance(valuetype [Engine]Engine.Vector3,
                                                                  valuetype [Engine]Engine.Vector3)
    IL_0157:  ldc.r4     10.
    IL_015c:  bge.un.s   IL_0197

    IL_015e:  ldloc.s    V_5
    IL_0160:  ldarg.0
    IL_0161:  ldfld      valuetype [Engine]Engine.Vector3 Game.OrbitCamera::m_position
    IL_0166:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_016b:  stloc.s    V_12
    IL_016d:  ldc.r4     10.
    IL_0172:  ldarg.1
    IL_0173:  mul
    IL_0174:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0179:  stloc.s    V_13
    IL_017b:  ldarg.0
    IL_017c:  ldarg.0
    IL_017d:  ldfld      valuetype [Engine]Engine.Vector3 Game.OrbitCamera::m_position
    IL_0182:  ldloc.s    V_13
    IL_0184:  ldloc.s    V_12
    IL_0186:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_018b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0190:  stfld      valuetype [Engine]Engine.Vector3 Game.OrbitCamera::m_position
    IL_0195:  br.s       IL_019f

    IL_0197:  ldarg.0
    IL_0198:  ldloc.s    V_5
    IL_019a:  stfld      valuetype [Engine]Engine.Vector3 Game.OrbitCamera::m_position
    IL_019f:  ldarg.0
    IL_01a0:  ldfld      valuetype [Engine]Engine.Vector3 Game.OrbitCamera::m_position
    IL_01a5:  ldloc.s    V_4
    IL_01a7:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_01ac:  stloc.s    V_6
    IL_01ae:  ldloca.s   V_7
    IL_01b0:  initobj    valuetype [System.Runtime]System.Nullable`1<float32>
    IL_01b6:  ldloc.s    V_6
    IL_01b8:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_01bd:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Cross(valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3)
    IL_01c2:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_01c7:  stloc.s    V_8
    IL_01c9:  ldloc.s    V_6
    IL_01cb:  ldloc.s    V_8
    IL_01cd:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Cross(valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3)
    IL_01d2:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_01d7:  stloc.s    V_9
    IL_01d9:  ldc.i4.0
    IL_01da:  stloc.s    V_14
    IL_01dc:  br         IL_02c9

    IL_01e1:  ldc.i4.0
    IL_01e2:  stloc.s    V_15
    IL_01e4:  br         IL_02bb

    IL_01e9:  ldc.r4     0.5
    IL_01ee:  ldloc.s    V_8
    IL_01f0:  ldloc.s    V_14
    IL_01f2:  conv.r4
    IL_01f3:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_01f8:  ldloc.s    V_9
    IL_01fa:  ldloc.s    V_15
    IL_01fc:  conv.r4
    IL_01fd:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0202:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0207:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_020c:  stloc.s    V_16
    IL_020e:  ldloc.s    V_4
    IL_0210:  ldloc.s    V_16
    IL_0212:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0217:  stloc.s    V_17
    IL_0219:  ldloc.s    V_17
    IL_021b:  ldloc.s    V_6
    IL_021d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0222:  ldloc.s    V_6
    IL_0224:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0229:  ldc.r4     0.5
    IL_022e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0233:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0238:  stloc.s    V_18
    IL_023a:  ldarg.0
    IL_023b:  call       instance class Game.View Game.Camera::get_View()
    IL_0240:  callvirt   instance class Game.SubsystemViews Game.View::get_SubsystemViews()
    IL_0245:  callvirt   instance class Game.SubsystemTerrain Game.SubsystemViews::get_SubsystemTerrain()
    IL_024a:  ldloc.s    V_17
    IL_024c:  ldloc.s    V_18
    IL_024e:  ldc.i4.0
    IL_024f:  ldc.i4.1
    IL_0250:  ldsfld     class [System.Runtime]System.Func`3<int32,float32,bool> Game.OrbitCamera/'<>c'::'<>9__9_0'
    IL_0255:  dup
    IL_0256:  brtrue.s   IL_026f

    IL_0258:  pop
    IL_0259:  ldsfld     class Game.OrbitCamera/'<>c' Game.OrbitCamera/'<>c'::'<>9'
    IL_025e:  ldftn      instance bool Game.OrbitCamera/'<>c'::'<Update>b__9_0'(int32,
                                                                                float32)
    IL_0264:  newobj     instance void class [System.Runtime]System.Func`3<int32,float32,bool>::.ctor(object,
                                                                                                      native int)
    IL_0269:  dup
    IL_026a:  stsfld     class [System.Runtime]System.Func`3<int32,float32,bool> Game.OrbitCamera/'<>c'::'<>9__9_0'
    IL_026f:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> Game.SubsystemTerrain::Raycast(valuetype [Engine]Engine.Vector3,
                                                                                                                                                  valuetype [Engine]Engine.Vector3,
                                                                                                                                                  bool,
                                                                                                                                                  bool,
                                                                                                                                                  class [System.Runtime]System.Func`3<int32,float32,bool>)
    IL_0274:  stloc.s    V_19
    IL_0276:  ldloca.s   V_19
    IL_0278:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_HasValue()
    IL_027d:  brfalse.s  IL_02b5

    IL_027f:  ldloca.s   V_7
    IL_0281:  ldloca.s   V_7
    IL_0283:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float32>::get_HasValue()
    IL_0288:  brtrue.s   IL_0298

    IL_028a:  ldloca.s   V_19
    IL_028c:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_0291:  ldfld      float32 Game.TerrainRaycastResult::Distance
    IL_0296:  br.s       IL_02b0

    IL_0298:  ldloca.s   V_7
    IL_029a:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_029f:  ldloca.s   V_19
    IL_02a1:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_02a6:  ldfld      float32 Game.TerrainRaycastResult::Distance
    IL_02ab:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_02b0:  call       instance void valuetype [System.Runtime]System.Nullable`1<float32>::.ctor(!0)
    IL_02b5:  ldloc.s    V_15
    IL_02b7:  ldc.i4.1
    IL_02b8:  add
    IL_02b9:  stloc.s    V_15
    IL_02bb:  ldloc.s    V_15
    IL_02bd:  ldc.i4.0
    IL_02be:  ble        IL_01e9

    IL_02c3:  ldloc.s    V_14
    IL_02c5:  ldc.i4.1
    IL_02c6:  add
    IL_02c7:  stloc.s    V_14
    IL_02c9:  ldloc.s    V_14
    IL_02cb:  ldc.i4.0
    IL_02cc:  ble        IL_01e1

    IL_02d1:  ldloca.s   V_7
    IL_02d3:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float32>::get_HasValue()
    IL_02d8:  brfalse.s  IL_0308

    IL_02da:  ldloc.s    V_4
    IL_02dc:  ldloc.s    V_6
    IL_02de:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_02e3:  ldloca.s   V_7
    IL_02e5:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_02ea:  ldc.r4     0.5
    IL_02ef:  sub
    IL_02f0:  ldc.r4     0.2
    IL_02f5:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_02fa:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_02ff:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0304:  stloc.s    V_10
    IL_0306:  br.s       IL_0313

    IL_0308:  ldloc.s    V_4
    IL_030a:  ldloc.s    V_6
    IL_030c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0311:  stloc.s    V_10
    IL_0313:  ldarg.0
    IL_0314:  ldloc.s    V_10
    IL_0316:  ldloc.s    V_4
    IL_0318:  ldloc.s    V_10
    IL_031a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_031f:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_0324:  call       instance void Game.BasePerspectiveCamera::SetupPerspectiveCamera(valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3)
    IL_0329:  ret
  } // end of method OrbitCamera::Update

  .property instance bool UsesMovementControls()
  {
    .get instance bool Game.OrbitCamera::get_UsesMovementControls()
  } // end of property OrbitCamera::UsesMovementControls
  .property instance bool IsEntityControlEnabled()
  {
    .get instance bool Game.OrbitCamera::get_IsEntityControlEnabled()
  } // end of property OrbitCamera::IsEntityControlEnabled
} // end of class Game.OrbitCamera