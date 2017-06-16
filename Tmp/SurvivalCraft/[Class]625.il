.class public auto ansi beforefieldinit Game.TppCamera
       extends Game.Camera
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.TppCamera/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`3<int32,float32,bool> '<>9__3_0'
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
            '<UpdateViewParameters>b__3_0'(int32 'value',
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
    } // end of method '<>c'::'<UpdateViewParameters>b__3_0'

  } // end of class '<>c'

  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private valuetype [Engine]Engine.Vector3 m_cameraPosition
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.SubsystemCamera subsystemCamera) cil managed
  {
    // 代码大小       26 (0x1a)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void Game.Camera::.ctor(class Game.SubsystemCamera)
    IL_0007:  ldarg.0
    IL_0008:  ldarg.1
    IL_0009:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_000e:  ldc.i4.1
    IL_000f:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_0014:  stfld      class Game.SubsystemTerrain Game.TppCamera::m_subsystemTerrain
    IL_0019:  ret
  } // end of method TppCamera::.ctor

  .method public hidebysig virtual instance void 
          UpdateViewParameters(class Game.SubsystemDrawing subsystemDrawing,
                               class Game.SubsystemAudio subsystemAudio,
                               float32 dt) cil managed
  {
    // 代码大小       734 (0x2de)
    .maxstack  7
    .locals init (valuetype [Engine]Engine.Matrix V_0,
             class Game.ComponentCreature V_1,
             valuetype [Engine]Engine.Vector3 V_2,
             valuetype [Engine]Engine.Vector3 V_3,
             valuetype [Engine]Engine.Vector3 V_4,
             valuetype [System.Runtime]System.Nullable`1<float32> V_5,
             valuetype [Engine]Engine.Vector3 V_6,
             valuetype [Engine]Engine.Vector3 V_7,
             valuetype [Engine]Engine.Vector3 V_8,
             valuetype [Engine]Engine.Vector3 V_9,
             float32 V_10,
             int32 V_11,
             int32 V_12,
             valuetype [Engine]Engine.Vector3 V_13,
             valuetype [Engine]Engine.Vector3 V_14,
             valuetype [Engine]Engine.Vector3 V_15,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> V_16)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.SubsystemCamera Game.Camera::get_SubsystemCamera()
    IL_0006:  callvirt   instance class Game.ComponentBody Game.SubsystemCamera::get_Target()
    IL_000b:  brfalse    IL_02dd

    IL_0010:  ldarg.0
    IL_0011:  call       instance class Game.SubsystemCamera Game.Camera::get_SubsystemCamera()
    IL_0016:  callvirt   instance class Game.ComponentBody Game.SubsystemCamera::get_Target()
    IL_001b:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0020:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreature>()
    IL_0025:  stloc.1
    IL_0026:  ldloc.1
    IL_0027:  brfalse.s  IL_003c

    IL_0029:  ldloc.1
    IL_002a:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_002f:  callvirt   instance valuetype [Engine]Engine.Quaternion Game.ComponentCreatureModel::get_EyeRotation()
    IL_0034:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateFromQuaternion(valuetype [Engine]Engine.Quaternion)
    IL_0039:  stloc.0
    IL_003a:  br.s       IL_004d

    IL_003c:  ldarg.0
    IL_003d:  call       instance class Game.SubsystemCamera Game.Camera::get_SubsystemCamera()
    IL_0042:  callvirt   instance class Game.ComponentBody Game.SubsystemCamera::get_Target()
    IL_0047:  callvirt   instance valuetype [Engine]Engine.Matrix Game.ComponentFrame::get_Matrix()
    IL_004c:  stloc.0
    IL_004d:  ldloca.s   V_0
    IL_004f:  ldarg.0
    IL_0050:  call       instance class Game.SubsystemCamera Game.Camera::get_SubsystemCamera()
    IL_0055:  callvirt   instance class Game.ComponentBody Game.SubsystemCamera::get_Target()
    IL_005a:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_005f:  ldc.r4     0.5
    IL_0064:  ldarg.0
    IL_0065:  call       instance class Game.SubsystemCamera Game.Camera::get_SubsystemCamera()
    IL_006a:  callvirt   instance class Game.ComponentBody Game.SubsystemCamera::get_Target()
    IL_006f:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_BoxSize()
    IL_0074:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0079:  mul
    IL_007a:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_007f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0084:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0089:  call       instance void [Engine]Engine.Matrix::set_Translation(valuetype [Engine]Engine.Vector3)
    IL_008e:  ldc.r4     -2.25
    IL_0093:  ldloca.s   V_0
    IL_0095:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Forward()
    IL_009a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_009f:  ldc.r4     1.75
    IL_00a4:  ldloca.s   V_0
    IL_00a6:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Up()
    IL_00ab:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00b0:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00b5:  stloc.2
    IL_00b6:  ldloca.s   V_0
    IL_00b8:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Translation()
    IL_00bd:  ldloc.2
    IL_00be:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00c3:  stloc.3
    IL_00c4:  ldloc.3
    IL_00c5:  ldarg.0
    IL_00c6:  ldfld      valuetype [Engine]Engine.Vector3 Game.TppCamera::m_cameraPosition
    IL_00cb:  call       float32 [Engine]Engine.Vector3::Distance(valuetype [Engine]Engine.Vector3,
                                                                  valuetype [Engine]Engine.Vector3)
    IL_00d0:  ldc.r4     10.
    IL_00d5:  bge.un.s   IL_010a

    IL_00d7:  ldloc.3
    IL_00d8:  ldarg.0
    IL_00d9:  ldfld      valuetype [Engine]Engine.Vector3 Game.TppCamera::m_cameraPosition
    IL_00de:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_00e3:  stloc.s    V_9
    IL_00e5:  ldc.r4     3.
    IL_00ea:  ldarg.3
    IL_00eb:  mul
    IL_00ec:  stloc.s    V_10
    IL_00ee:  ldarg.0
    IL_00ef:  ldarg.0
    IL_00f0:  ldfld      valuetype [Engine]Engine.Vector3 Game.TppCamera::m_cameraPosition
    IL_00f5:  ldloc.s    V_10
    IL_00f7:  ldloc.s    V_9
    IL_00f9:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00fe:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0103:  stfld      valuetype [Engine]Engine.Vector3 Game.TppCamera::m_cameraPosition
    IL_0108:  br.s       IL_0111

    IL_010a:  ldarg.0
    IL_010b:  ldloc.3
    IL_010c:  stfld      valuetype [Engine]Engine.Vector3 Game.TppCamera::m_cameraPosition
    IL_0111:  ldarg.0
    IL_0112:  ldfld      valuetype [Engine]Engine.Vector3 Game.TppCamera::m_cameraPosition
    IL_0117:  ldloca.s   V_0
    IL_0119:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Translation()
    IL_011e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0123:  stloc.s    V_4
    IL_0125:  ldloca.s   V_5
    IL_0127:  initobj    valuetype [System.Runtime]System.Nullable`1<float32>
    IL_012d:  ldloc.s    V_4
    IL_012f:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_0134:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Cross(valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3)
    IL_0139:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_013e:  stloc.s    V_6
    IL_0140:  ldloc.s    V_4
    IL_0142:  ldloc.s    V_6
    IL_0144:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Cross(valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3)
    IL_0149:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_014e:  stloc.s    V_7
    IL_0150:  ldc.i4.0
    IL_0151:  stloc.s    V_11
    IL_0153:  br         IL_023b

    IL_0158:  ldc.i4.0
    IL_0159:  stloc.s    V_12
    IL_015b:  br         IL_022d

    IL_0160:  ldc.r4     0.5
    IL_0165:  ldloc.s    V_6
    IL_0167:  ldloc.s    V_11
    IL_0169:  conv.r4
    IL_016a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_016f:  ldloc.s    V_7
    IL_0171:  ldloc.s    V_12
    IL_0173:  conv.r4
    IL_0174:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0179:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_017e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0183:  stloc.s    V_13
    IL_0185:  ldloca.s   V_0
    IL_0187:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Translation()
    IL_018c:  ldloc.s    V_13
    IL_018e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0193:  stloc.s    V_14
    IL_0195:  ldloc.s    V_14
    IL_0197:  ldloc.s    V_4
    IL_0199:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_019e:  ldloc.s    V_4
    IL_01a0:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_01a5:  ldc.r4     0.5
    IL_01aa:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_01af:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01b4:  stloc.s    V_15
    IL_01b6:  ldarg.0
    IL_01b7:  ldfld      class Game.SubsystemTerrain Game.TppCamera::m_subsystemTerrain
    IL_01bc:  ldloc.s    V_14
    IL_01be:  ldloc.s    V_15
    IL_01c0:  ldc.i4.0
    IL_01c1:  ldc.i4.1
    IL_01c2:  ldsfld     class [System.Runtime]System.Func`3<int32,float32,bool> Game.TppCamera/'<>c'::'<>9__3_0'
    IL_01c7:  dup
    IL_01c8:  brtrue.s   IL_01e1

    IL_01ca:  pop
    IL_01cb:  ldsfld     class Game.TppCamera/'<>c' Game.TppCamera/'<>c'::'<>9'
    IL_01d0:  ldftn      instance bool Game.TppCamera/'<>c'::'<UpdateViewParameters>b__3_0'(int32,
                                                                                            float32)
    IL_01d6:  newobj     instance void class [System.Runtime]System.Func`3<int32,float32,bool>::.ctor(object,
                                                                                                      native int)
    IL_01db:  dup
    IL_01dc:  stsfld     class [System.Runtime]System.Func`3<int32,float32,bool> Game.TppCamera/'<>c'::'<>9__3_0'
    IL_01e1:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> Game.SubsystemTerrain::Raycast(valuetype [Engine]Engine.Vector3,
                                                                                                                                                  valuetype [Engine]Engine.Vector3,
                                                                                                                                                  bool,
                                                                                                                                                  bool,
                                                                                                                                                  class [System.Runtime]System.Func`3<int32,float32,bool>)
    IL_01e6:  stloc.s    V_16
    IL_01e8:  ldloca.s   V_16
    IL_01ea:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_HasValue()
    IL_01ef:  brfalse.s  IL_0227

    IL_01f1:  ldloca.s   V_5
    IL_01f3:  ldloca.s   V_5
    IL_01f5:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float32>::get_HasValue()
    IL_01fa:  brtrue.s   IL_020a

    IL_01fc:  ldloca.s   V_16
    IL_01fe:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_0203:  ldfld      float32 Game.TerrainRaycastResult::Distance
    IL_0208:  br.s       IL_0222

    IL_020a:  ldloca.s   V_5
    IL_020c:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_0211:  ldloca.s   V_16
    IL_0213:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_0218:  ldfld      float32 Game.TerrainRaycastResult::Distance
    IL_021d:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_0222:  call       instance void valuetype [System.Runtime]System.Nullable`1<float32>::.ctor(!0)
    IL_0227:  ldloc.s    V_12
    IL_0229:  ldc.i4.1
    IL_022a:  add
    IL_022b:  stloc.s    V_12
    IL_022d:  ldloc.s    V_12
    IL_022f:  ldc.i4.0
    IL_0230:  ble        IL_0160

    IL_0235:  ldloc.s    V_11
    IL_0237:  ldc.i4.1
    IL_0238:  add
    IL_0239:  stloc.s    V_11
    IL_023b:  ldloc.s    V_11
    IL_023d:  ldc.i4.0
    IL_023e:  ble        IL_0158

    IL_0243:  ldloca.s   V_5
    IL_0245:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float32>::get_HasValue()
    IL_024a:  brfalse.s  IL_027f

    IL_024c:  ldloca.s   V_0
    IL_024e:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Translation()
    IL_0253:  ldloc.s    V_4
    IL_0255:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_025a:  ldloca.s   V_5
    IL_025c:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_0261:  ldc.r4     0.5
    IL_0266:  sub
    IL_0267:  ldc.r4     0.2
    IL_026c:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_0271:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0276:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_027b:  stloc.s    V_8
    IL_027d:  br.s       IL_028f

    IL_027f:  ldloca.s   V_0
    IL_0281:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Translation()
    IL_0286:  ldloc.s    V_4
    IL_0288:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_028d:  stloc.s    V_8
    IL_028f:  ldarg.1
    IL_0290:  ldloc.s    V_8
    IL_0292:  callvirt   instance void Game.SubsystemDrawing::set_ViewPosition(valuetype [Engine]Engine.Vector3)
    IL_0297:  ldarg.1
    IL_0298:  ldloca.s   V_0
    IL_029a:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Translation()
    IL_029f:  ldarg.1
    IL_02a0:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
    IL_02a5:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_02aa:  callvirt   instance void Game.SubsystemDrawing::set_ViewDirection(valuetype [Engine]Engine.Vector3)
    IL_02af:  ldarg.1
    IL_02b0:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_02b5:  callvirt   instance void Game.SubsystemDrawing::set_ViewUp(valuetype [Engine]Engine.Vector3)
    IL_02ba:  ldarg.2
    IL_02bb:  ldloca.s   V_0
    IL_02bd:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Translation()
    IL_02c2:  callvirt   instance void Game.SubsystemAudio::set_ListenerPosition(valuetype [Engine]Engine.Vector3)
    IL_02c7:  ldarg.2
    IL_02c8:  ldarg.1
    IL_02c9:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewDirection()
    IL_02ce:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_02d3:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Cross(valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3)
    IL_02d8:  callvirt   instance void Game.SubsystemAudio::set_ListenerRight(valuetype [Engine]Engine.Vector3)
    IL_02dd:  ret
  } // end of method TppCamera::UpdateViewParameters

} // end of class Game.TppCamera