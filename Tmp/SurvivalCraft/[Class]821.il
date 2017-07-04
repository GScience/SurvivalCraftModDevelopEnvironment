.class public auto ansi beforefieldinit Game.TppCamera
       extends Game.BasePerspectiveCamera
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.TppCamera/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`3<int32,float32,bool> '<>9__7_0'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.TppCamera/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.TppCamera/'<>c' Game.TppCamera/'<>c'::'<>9'
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
            '<Update>b__7_0'(int32 'value',
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
    } // end of method '<>c'::'<Update>b__7_0'

  } // end of class '<>c'

  .field private valuetype [Engine]Engine.Vector3 m_position
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.View view) cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void Game.BasePerspectiveCamera::.ctor(class Game.View)
    IL_0007:  ret
  } // end of method TppCamera::.ctor

  .method public hidebysig specialname virtual 
          instance bool  get_UsesMovementControls() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method TppCamera::get_UsesMovementControls

  .method public hidebysig specialname virtual 
          instance bool  get_IsEntityControlEnabled() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.1
    IL_0001:  ret
  } // end of method TppCamera::get_IsEntityControlEnabled

  .method public hidebysig virtual instance void 
          Activate(class Game.Camera previousCamera) cil managed
  {
    // 代码大小       37 (0x25)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewPosition()
    IL_0007:  stfld      valuetype [Engine]Engine.Vector3 Game.TppCamera::m_position
    IL_000c:  ldarg.0
    IL_000d:  ldarg.0
    IL_000e:  ldfld      valuetype [Engine]Engine.Vector3 Game.TppCamera::m_position
    IL_0013:  ldarg.1
    IL_0014:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewDirection()
    IL_0019:  ldarg.1
    IL_001a:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewUp()
    IL_001f:  call       instance void Game.BasePerspectiveCamera::SetupPerspectiveCamera(valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3)
    IL_0024:  ret
  } // end of method TppCamera::Activate

  .method public hidebysig virtual instance void 
          Update(float32 dt) cil managed
  {
    // 代码大小       660 (0x294)
    .maxstack  7
    .locals init (valuetype [Engine]Engine.Matrix V_0,
             valuetype [Engine]Engine.Vector3 V_1,
             valuetype [Engine]Engine.Vector3 V_2,
             valuetype [Engine]Engine.Vector3 V_3,
             valuetype [System.Runtime]System.Nullable`1<float32> V_4,
             valuetype [Engine]Engine.Vector3 V_5,
             valuetype [Engine]Engine.Vector3 V_6,
             valuetype [Engine]Engine.Vector3 V_7,
             valuetype [Engine]Engine.Vector3 V_8,
             float32 V_9,
             int32 V_10,
             int32 V_11,
             valuetype [Engine]Engine.Vector3 V_12,
             valuetype [Engine]Engine.Vector3 V_13,
             valuetype [Engine]Engine.Vector3 V_14,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> V_15)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.View Game.Camera::get_View()
    IL_0006:  callvirt   instance class Game.ComponentCreature Game.View::get_Target()
    IL_000b:  brtrue.s   IL_000e

    IL_000d:  ret

    IL_000e:  ldarg.0
    IL_000f:  call       instance class Game.View Game.Camera::get_View()
    IL_0014:  callvirt   instance class Game.ComponentCreature Game.View::get_Target()
    IL_0019:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_001e:  callvirt   instance valuetype [Engine]Engine.Quaternion Game.ComponentCreatureModel::get_EyeRotation()
    IL_0023:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateFromQuaternion(valuetype [Engine]Engine.Quaternion)
    IL_0028:  stloc.0
    IL_0029:  ldloca.s   V_0
    IL_002b:  ldarg.0
    IL_002c:  call       instance class Game.View Game.Camera::get_View()
    IL_0031:  callvirt   instance class Game.ComponentCreature Game.View::get_Target()
    IL_0036:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_003b:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0040:  ldc.r4     0.5
    IL_0045:  ldarg.0
    IL_0046:  call       instance class Game.View Game.Camera::get_View()
    IL_004b:  callvirt   instance class Game.ComponentCreature Game.View::get_Target()
    IL_0050:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0055:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_BoxSize()
    IL_005a:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_005f:  mul
    IL_0060:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_0065:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_006a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_006f:  call       instance void [Engine]Engine.Matrix::set_Translation(valuetype [Engine]Engine.Vector3)
    IL_0074:  ldc.r4     -2.25
    IL_0079:  ldloca.s   V_0
    IL_007b:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Forward()
    IL_0080:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0085:  ldc.r4     1.75
    IL_008a:  ldloca.s   V_0
    IL_008c:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Up()
    IL_0091:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0096:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_009b:  stloc.1
    IL_009c:  ldloca.s   V_0
    IL_009e:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Translation()
    IL_00a3:  ldloc.1
    IL_00a4:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00a9:  stloc.2
    IL_00aa:  ldloc.2
    IL_00ab:  ldarg.0
    IL_00ac:  ldfld      valuetype [Engine]Engine.Vector3 Game.TppCamera::m_position
    IL_00b1:  call       float32 [Engine]Engine.Vector3::Distance(valuetype [Engine]Engine.Vector3,
                                                                  valuetype [Engine]Engine.Vector3)
    IL_00b6:  ldc.r4     10.
    IL_00bb:  bge.un.s   IL_00f0

    IL_00bd:  ldloc.2
    IL_00be:  ldarg.0
    IL_00bf:  ldfld      valuetype [Engine]Engine.Vector3 Game.TppCamera::m_position
    IL_00c4:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_00c9:  stloc.s    V_8
    IL_00cb:  ldc.r4     3.
    IL_00d0:  ldarg.1
    IL_00d1:  mul
    IL_00d2:  stloc.s    V_9
    IL_00d4:  ldarg.0
    IL_00d5:  ldarg.0
    IL_00d6:  ldfld      valuetype [Engine]Engine.Vector3 Game.TppCamera::m_position
    IL_00db:  ldloc.s    V_9
    IL_00dd:  ldloc.s    V_8
    IL_00df:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00e4:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00e9:  stfld      valuetype [Engine]Engine.Vector3 Game.TppCamera::m_position
    IL_00ee:  br.s       IL_00f7

    IL_00f0:  ldarg.0
    IL_00f1:  ldloc.2
    IL_00f2:  stfld      valuetype [Engine]Engine.Vector3 Game.TppCamera::m_position
    IL_00f7:  ldarg.0
    IL_00f8:  ldfld      valuetype [Engine]Engine.Vector3 Game.TppCamera::m_position
    IL_00fd:  ldloca.s   V_0
    IL_00ff:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Translation()
    IL_0104:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0109:  stloc.3
    IL_010a:  ldloca.s   V_4
    IL_010c:  initobj    valuetype [System.Runtime]System.Nullable`1<float32>
    IL_0112:  ldloc.3
    IL_0113:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_0118:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Cross(valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3)
    IL_011d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0122:  stloc.s    V_5
    IL_0124:  ldloc.3
    IL_0125:  ldloc.s    V_5
    IL_0127:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Cross(valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3)
    IL_012c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0131:  stloc.s    V_6
    IL_0133:  ldc.i4.0
    IL_0134:  stloc.s    V_10
    IL_0136:  br         IL_0226

    IL_013b:  ldc.i4.0
    IL_013c:  stloc.s    V_11
    IL_013e:  br         IL_0218

    IL_0143:  ldc.r4     0.5
    IL_0148:  ldloc.s    V_5
    IL_014a:  ldloc.s    V_10
    IL_014c:  conv.r4
    IL_014d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0152:  ldloc.s    V_6
    IL_0154:  ldloc.s    V_11
    IL_0156:  conv.r4
    IL_0157:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_015c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0161:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0166:  stloc.s    V_12
    IL_0168:  ldloca.s   V_0
    IL_016a:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Translation()
    IL_016f:  ldloc.s    V_12
    IL_0171:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0176:  stloc.s    V_13
    IL_0178:  ldloc.s    V_13
    IL_017a:  ldloc.3
    IL_017b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0180:  ldloc.3
    IL_0181:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0186:  ldc.r4     0.5
    IL_018b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0190:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0195:  stloc.s    V_14
    IL_0197:  ldarg.0
    IL_0198:  call       instance class Game.View Game.Camera::get_View()
    IL_019d:  callvirt   instance class Game.SubsystemViews Game.View::get_SubsystemViews()
    IL_01a2:  callvirt   instance class Game.SubsystemTerrain Game.SubsystemViews::get_SubsystemTerrain()
    IL_01a7:  ldloc.s    V_13
    IL_01a9:  ldloc.s    V_14
    IL_01ab:  ldc.i4.0
    IL_01ac:  ldc.i4.1
    IL_01ad:  ldsfld     class [System.Runtime]System.Func`3<int32,float32,bool> Game.TppCamera/'<>c'::'<>9__7_0'
    IL_01b2:  dup
    IL_01b3:  brtrue.s   IL_01cc

    IL_01b5:  pop
    IL_01b6:  ldsfld     class Game.TppCamera/'<>c' Game.TppCamera/'<>c'::'<>9'
    IL_01bb:  ldftn      instance bool Game.TppCamera/'<>c'::'<Update>b__7_0'(int32,
                                                                              float32)
    IL_01c1:  newobj     instance void class [System.Runtime]System.Func`3<int32,float32,bool>::.ctor(object,
                                                                                                      native int)
    IL_01c6:  dup
    IL_01c7:  stsfld     class [System.Runtime]System.Func`3<int32,float32,bool> Game.TppCamera/'<>c'::'<>9__7_0'
    IL_01cc:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> Game.SubsystemTerrain::Raycast(valuetype [Engine]Engine.Vector3,
                                                                                                                                                  valuetype [Engine]Engine.Vector3,
                                                                                                                                                  bool,
                                                                                                                                                  bool,
                                                                                                                                                  class [System.Runtime]System.Func`3<int32,float32,bool>)
    IL_01d1:  stloc.s    V_15
    IL_01d3:  ldloca.s   V_15
    IL_01d5:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_HasValue()
    IL_01da:  brfalse.s  IL_0212

    IL_01dc:  ldloca.s   V_4
    IL_01de:  ldloca.s   V_4
    IL_01e0:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float32>::get_HasValue()
    IL_01e5:  brtrue.s   IL_01f5

    IL_01e7:  ldloca.s   V_15
    IL_01e9:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_01ee:  ldfld      float32 Game.TerrainRaycastResult::Distance
    IL_01f3:  br.s       IL_020d

    IL_01f5:  ldloca.s   V_4
    IL_01f7:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_01fc:  ldloca.s   V_15
    IL_01fe:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_0203:  ldfld      float32 Game.TerrainRaycastResult::Distance
    IL_0208:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_020d:  call       instance void valuetype [System.Runtime]System.Nullable`1<float32>::.ctor(!0)
    IL_0212:  ldloc.s    V_11
    IL_0214:  ldc.i4.1
    IL_0215:  add
    IL_0216:  stloc.s    V_11
    IL_0218:  ldloc.s    V_11
    IL_021a:  ldc.i4.0
    IL_021b:  ble        IL_0143

    IL_0220:  ldloc.s    V_10
    IL_0222:  ldc.i4.1
    IL_0223:  add
    IL_0224:  stloc.s    V_10
    IL_0226:  ldloc.s    V_10
    IL_0228:  ldc.i4.0
    IL_0229:  ble        IL_013b

    IL_022e:  ldloca.s   V_4
    IL_0230:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float32>::get_HasValue()
    IL_0235:  brfalse.s  IL_0269

    IL_0237:  ldloca.s   V_0
    IL_0239:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Translation()
    IL_023e:  ldloc.3
    IL_023f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0244:  ldloca.s   V_4
    IL_0246:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_024b:  ldc.r4     0.5
    IL_0250:  sub
    IL_0251:  ldc.r4     0.2
    IL_0256:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_025b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0260:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0265:  stloc.s    V_7
    IL_0267:  br.s       IL_0278

    IL_0269:  ldloca.s   V_0
    IL_026b:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Translation()
    IL_0270:  ldloc.3
    IL_0271:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0276:  stloc.s    V_7
    IL_0278:  ldarg.0
    IL_0279:  ldloc.s    V_7
    IL_027b:  ldloca.s   V_0
    IL_027d:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Translation()
    IL_0282:  ldloc.s    V_7
    IL_0284:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0289:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_028e:  call       instance void Game.BasePerspectiveCamera::SetupPerspectiveCamera(valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3)
    IL_0293:  ret
  } // end of method TppCamera::Update

  .property instance bool UsesMovementControls()
  {
    .get instance bool Game.TppCamera::get_UsesMovementControls()
  } // end of property TppCamera::UsesMovementControls
  .property instance bool IsEntityControlEnabled()
  {
    .get instance bool Game.TppCamera::get_IsEntityControlEnabled()
  } // end of property TppCamera::IsEntityControlEnabled
} // end of class Game.TppCamera