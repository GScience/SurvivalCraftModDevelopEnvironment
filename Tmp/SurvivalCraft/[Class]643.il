.class public auto ansi beforefieldinit Game.MotionDetectorElectricElement
       extends Game.MountedElectricElement
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.MotionDetectorElectricElement/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`3<int32,float32,bool> '<>9__13_0'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.MotionDetectorElectricElement/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.MotionDetectorElectricElement/'<>c' Game.MotionDetectorElectricElement/'<>c'::'<>9'
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
            '<CalculateMotionVoltage>b__13_0'(int32 'value',
                                              float32 d) cil managed
    {
      // 代码大小       67 (0x43)
      .maxstack  2
      .locals init (class Game.Block V_0)
      IL_0000:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
      IL_0005:  ldarg.1
      IL_0006:  call       int32 Game.TerrainData::ExtractContents(int32)
      IL_000b:  ldelem.ref
      IL_000c:  stloc.0
      IL_000d:  ldloc.0
      IL_000e:  ldfld      bool Game.Block::IsCollidable
      IL_0013:  brfalse.s  IL_0041

      IL_0015:  ldloc.0
      IL_0016:  ldfld      int32 Game.Block::BlockIndex
      IL_001b:  ldc.i4.s   15
      IL_001d:  beq.s      IL_0041

      IL_001f:  ldloc.0
      IL_0020:  ldfld      int32 Game.Block::BlockIndex
      IL_0025:  ldc.i4.s   60
      IL_0027:  beq.s      IL_0041

      IL_0029:  ldloc.0
      IL_002a:  ldfld      int32 Game.Block::BlockIndex
      IL_002f:  ldc.i4.s   44
      IL_0031:  beq.s      IL_0041

      IL_0033:  ldloc.0
      IL_0034:  ldfld      int32 Game.Block::BlockIndex
      IL_0039:  ldc.i4.s   18
      IL_003b:  ceq
      IL_003d:  ldc.i4.0
      IL_003e:  ceq
      IL_0040:  ret

      IL_0041:  ldc.i4.0
      IL_0042:  ret
    } // end of method '<>c'::'<CalculateMotionVoltage>b__13_0'

  } // end of class '<>c'

  .field private static literal float32 m_range = float32(8.)
  .field private static literal float32 m_speedThreshold = float32(0.25)
  .field private static literal float32 m_pollingPeriod = float32(0.5)
  .field private class Game.SubsystemBodies m_subsystemBodies
  .field private float32 m_voltage
  .field private valuetype [Engine]Engine.Vector3 m_center
  .field private valuetype [Engine]Engine.Vector3 m_direction
  .field private valuetype [Engine]Engine.Vector2 m_corner1
  .field private valuetype [Engine]Engine.Vector2 m_corner2
  .field private class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> m_bodies
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.SubsystemElectricity subsystemElectricity,
                               valuetype Game.CellFace cellFace) cil managed
  {
    // 代码大小       290 (0x122)
    .maxstack  4
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             valuetype [Engine]Engine.Vector3 V_1,
             valuetype [Engine]Engine.Vector3 V_2)
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>::.ctor()
    IL_0006:  stfld      class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> Game.MotionDetectorElectricElement::m_bodies
    IL_000b:  ldarg.0
    IL_000c:  ldarg.1
    IL_000d:  ldarg.2
    IL_000e:  call       instance void Game.MountedElectricElement::.ctor(class Game.SubsystemElectricity,
                                                                          valuetype Game.CellFace)
    IL_0013:  ldarg.0
    IL_0014:  ldarg.1
    IL_0015:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_001a:  ldc.i4.1
    IL_001b:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemBodies>(bool)
    IL_0020:  stfld      class Game.SubsystemBodies Game.MotionDetectorElectricElement::m_subsystemBodies
    IL_0025:  ldarg.0
    IL_0026:  ldarg.2
    IL_0027:  ldfld      int32 Game.CellFace::X
    IL_002c:  conv.r4
    IL_002d:  ldarg.2
    IL_002e:  ldfld      int32 Game.CellFace::Y
    IL_0033:  conv.r4
    IL_0034:  ldarg.2
    IL_0035:  ldfld      int32 Game.CellFace::Z
    IL_003a:  conv.r4
    IL_003b:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0040:  ldc.r4     0.5
    IL_0045:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32)
    IL_004a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_004f:  ldc.r4     0.25
    IL_0054:  ldarg.0
    IL_0055:  ldfld      valuetype [Engine]Engine.Vector3 Game.MotionDetectorElectricElement::m_direction
    IL_005a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_005f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0064:  stfld      valuetype [Engine]Engine.Vector3 Game.MotionDetectorElectricElement::m_center
    IL_0069:  ldarg.0
    IL_006a:  ldarg.2
    IL_006b:  ldfld      int32 Game.CellFace::Face
    IL_0070:  call       valuetype [Engine]Engine.Vector3 Game.CellFace::FaceToVector3(int32)
    IL_0075:  stfld      valuetype [Engine]Engine.Vector3 Game.MotionDetectorElectricElement::m_direction
    IL_007a:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::One
    IL_007f:  ldarg.0
    IL_0080:  ldflda     valuetype [Engine]Engine.Vector3 Game.MotionDetectorElectricElement::m_direction
    IL_0085:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_008a:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_008f:  ldarg.0
    IL_0090:  ldflda     valuetype [Engine]Engine.Vector3 Game.MotionDetectorElectricElement::m_direction
    IL_0095:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_009a:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_009f:  ldarg.0
    IL_00a0:  ldflda     valuetype [Engine]Engine.Vector3 Game.MotionDetectorElectricElement::m_direction
    IL_00a5:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_00aa:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_00af:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00b4:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_00b9:  stloc.0
    IL_00ba:  ldarg.0
    IL_00bb:  ldfld      valuetype [Engine]Engine.Vector3 Game.MotionDetectorElectricElement::m_center
    IL_00c0:  ldc.r4     8.
    IL_00c5:  ldloc.0
    IL_00c6:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00cb:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_00d0:  stloc.1
    IL_00d1:  ldarg.0
    IL_00d2:  ldfld      valuetype [Engine]Engine.Vector3 Game.MotionDetectorElectricElement::m_center
    IL_00d7:  ldc.r4     8.
    IL_00dc:  ldloc.0
    IL_00dd:  ldarg.0
    IL_00de:  ldfld      valuetype [Engine]Engine.Vector3 Game.MotionDetectorElectricElement::m_direction
    IL_00e3:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00e8:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00ed:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00f2:  stloc.2
    IL_00f3:  ldarg.0
    IL_00f4:  ldloc.1
    IL_00f5:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_00fa:  ldloc.1
    IL_00fb:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0100:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0105:  stfld      valuetype [Engine]Engine.Vector2 Game.MotionDetectorElectricElement::m_corner1
    IL_010a:  ldarg.0
    IL_010b:  ldloc.2
    IL_010c:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0111:  ldloc.2
    IL_0112:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0117:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_011c:  stfld      valuetype [Engine]Engine.Vector2 Game.MotionDetectorElectricElement::m_corner2
    IL_0121:  ret
  } // end of method MotionDetectorElectricElement::.ctor

  .method public hidebysig virtual instance float32 
          GetOutputVoltage(int32 face) cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.MotionDetectorElectricElement::m_voltage
    IL_0006:  ret
  } // end of method MotionDetectorElectricElement::GetOutputVoltage

  .method public hidebysig virtual instance bool 
          Simulate() cil managed
  {
    // 代码大小       166 (0xa6)
    .maxstack  7
    .locals init (float32 V_0,
             float32 V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.MotionDetectorElectricElement::m_voltage
    IL_0006:  stloc.0
    IL_0007:  ldarg.0
    IL_0008:  ldarg.0
    IL_0009:  call       instance float32 Game.MotionDetectorElectricElement::CalculateMotionVoltage()
    IL_000e:  stfld      float32 Game.MotionDetectorElectricElement::m_voltage
    IL_0013:  ldarg.0
    IL_0014:  ldfld      float32 Game.MotionDetectorElectricElement::m_voltage
    IL_0019:  ldc.r4     0.0
    IL_001e:  ble.un.s   IL_0053

    IL_0020:  ldloc.0
    IL_0021:  ldc.r4     0.0
    IL_0026:  bne.un.s   IL_0053

    IL_0028:  ldarg.0
    IL_0029:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_002e:  callvirt   instance class Game.SubsystemAudio Game.SubsystemElectricity::get_SubsystemAudio()
    IL_0033:  ldstr      "Audio/MotionDetectorClick"
    IL_0038:  ldc.r4     1.
    IL_003d:  ldc.r4     0.0
    IL_0042:  ldarg.0
    IL_0043:  ldfld      valuetype [Engine]Engine.Vector3 Game.MotionDetectorElectricElement::m_center
    IL_0048:  ldc.r4     1.
    IL_004d:  ldc.i4.1
    IL_004e:  callvirt   instance void Game.SubsystemAudio::PlaySound(string,
                                                                      float32,
                                                                      float32,
                                                                      valuetype [Engine]Engine.Vector3,
                                                                      float32,
                                                                      bool)
    IL_0053:  ldc.r4     0.5
    IL_0058:  ldc.r4     0.89999998
    IL_005d:  ldc.r4     2.0000001e-004
    IL_0062:  ldarg.0
    IL_0063:  callvirt   instance int32 [System.Runtime]System.Object::GetHashCode()
    IL_0068:  ldc.i4     0x3e8
    IL_006d:  rem
    IL_006e:  conv.r4
    IL_006f:  mul
    IL_0070:  add
    IL_0071:  mul
    IL_0072:  stloc.1
    IL_0073:  ldarg.0
    IL_0074:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_0079:  ldarg.0
    IL_007a:  ldarg.0
    IL_007b:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_0080:  callvirt   instance int32 Game.SubsystemElectricity::get_CircuitStep()
    IL_0085:  ldloc.1
    IL_0086:  ldc.r4     9.9999998e-003
    IL_008b:  div
    IL_008c:  conv.i4
    IL_008d:  ldc.i4.1
    IL_008e:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_0093:  add
    IL_0094:  callvirt   instance void Game.SubsystemElectricity::QueueElectricElementForSimulation(class Game.ElectricElement,
                                                                                                    int32)
    IL_0099:  ldarg.0
    IL_009a:  ldfld      float32 Game.MotionDetectorElectricElement::m_voltage
    IL_009f:  ldloc.0
    IL_00a0:  ceq
    IL_00a2:  ldc.i4.0
    IL_00a3:  ceq
    IL_00a5:  ret
  } // end of method MotionDetectorElectricElement::Simulate

  .method private hidebysig instance float32 
          CalculateMotionVoltage() cil managed
  {
    // 代码大小       382 (0x17e)
    .maxstack  7
    .locals init (float32 V_0,
             int32 V_1,
             class Game.ComponentBody V_2,
             valuetype [Engine]Engine.Vector3 V_3,
             valuetype [Engine]Engine.Vector3 V_4,
             float32 V_5,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> V_6)
    IL_0000:  ldc.r4     0.0
    IL_0005:  stloc.0
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> Game.MotionDetectorElectricElement::m_bodies
    IL_000c:  callvirt   instance void class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>::Clear()
    IL_0011:  ldarg.0
    IL_0012:  ldfld      class Game.SubsystemBodies Game.MotionDetectorElectricElement::m_subsystemBodies
    IL_0017:  ldarg.0
    IL_0018:  ldfld      valuetype [Engine]Engine.Vector2 Game.MotionDetectorElectricElement::m_corner1
    IL_001d:  ldarg.0
    IL_001e:  ldfld      valuetype [Engine]Engine.Vector2 Game.MotionDetectorElectricElement::m_corner2
    IL_0023:  ldarg.0
    IL_0024:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> Game.MotionDetectorElectricElement::m_bodies
    IL_0029:  callvirt   instance void Game.SubsystemBodies::FindBodiesInArea(valuetype [Engine]Engine.Vector2,
                                                                              valuetype [Engine]Engine.Vector2,
                                                                              class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>)
    IL_002e:  ldc.i4.0
    IL_002f:  stloc.1
    IL_0030:  br         IL_0143

    IL_0035:  ldarg.0
    IL_0036:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> Game.MotionDetectorElectricElement::m_bodies
    IL_003b:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>::get_Array()
    IL_0040:  ldloc.1
    IL_0041:  ldelem.ref
    IL_0042:  stloc.2
    IL_0043:  ldloc.2
    IL_0044:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_Velocity()
    IL_0049:  stloc.3
    IL_004a:  ldloca.s   V_3
    IL_004c:  call       instance float32 [Engine]Engine.Vector3::LengthSquared()
    IL_0051:  ldc.r4     6.25e-002
    IL_0056:  ble.un     IL_013f

    IL_005b:  ldloc.2
    IL_005c:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0061:  ldc.r4     0.0
    IL_0066:  ldc.r4     0.5
    IL_006b:  ldloc.2
    IL_006c:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_BoxSize()
    IL_0071:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0076:  mul
    IL_0077:  ldc.r4     0.0
    IL_007c:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0081:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0086:  stloc.s    V_4
    IL_0088:  ldloc.s    V_4
    IL_008a:  ldarg.0
    IL_008b:  ldfld      valuetype [Engine]Engine.Vector3 Game.MotionDetectorElectricElement::m_center
    IL_0090:  call       float32 [Engine]Engine.Vector3::DistanceSquared(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_0095:  stloc.s    V_5
    IL_0097:  ldloc.s    V_5
    IL_0099:  ldc.r4     64.
    IL_009e:  bge.un     IL_013f

    IL_00a3:  ldloc.s    V_4
    IL_00a5:  ldarg.0
    IL_00a6:  ldfld      valuetype [Engine]Engine.Vector3 Game.MotionDetectorElectricElement::m_center
    IL_00ab:  ldc.r4     0.75
    IL_00b0:  ldarg.0
    IL_00b1:  ldfld      valuetype [Engine]Engine.Vector3 Game.MotionDetectorElectricElement::m_direction
    IL_00b6:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00bb:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_00c0:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_00c5:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_00ca:  ldarg.0
    IL_00cb:  ldfld      valuetype [Engine]Engine.Vector3 Game.MotionDetectorElectricElement::m_direction
    IL_00d0:  call       float32 [Engine]Engine.Vector3::Dot(valuetype [Engine]Engine.Vector3,
                                                             valuetype [Engine]Engine.Vector3)
    IL_00d5:  ldc.r4     0.5
    IL_00da:  ble.un.s   IL_013f

    IL_00dc:  ldarg.0
    IL_00dd:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_00e2:  callvirt   instance class Game.SubsystemTerrain Game.SubsystemElectricity::get_SubsystemTerrain()
    IL_00e7:  ldarg.0
    IL_00e8:  ldfld      valuetype [Engine]Engine.Vector3 Game.MotionDetectorElectricElement::m_center
    IL_00ed:  ldloc.s    V_4
    IL_00ef:  ldc.i4.0
    IL_00f0:  ldc.i4.1
    IL_00f1:  ldsfld     class [System.Runtime]System.Func`3<int32,float32,bool> Game.MotionDetectorElectricElement/'<>c'::'<>9__13_0'
    IL_00f6:  dup
    IL_00f7:  brtrue.s   IL_0110

    IL_00f9:  pop
    IL_00fa:  ldsfld     class Game.MotionDetectorElectricElement/'<>c' Game.MotionDetectorElectricElement/'<>c'::'<>9'
    IL_00ff:  ldftn      instance bool Game.MotionDetectorElectricElement/'<>c'::'<CalculateMotionVoltage>b__13_0'(int32,
                                                                                                                   float32)
    IL_0105:  newobj     instance void class [System.Runtime]System.Func`3<int32,float32,bool>::.ctor(object,
                                                                                                      native int)
    IL_010a:  dup
    IL_010b:  stsfld     class [System.Runtime]System.Func`3<int32,float32,bool> Game.MotionDetectorElectricElement/'<>c'::'<>9__13_0'
    IL_0110:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> Game.SubsystemTerrain::Raycast(valuetype [Engine]Engine.Vector3,
                                                                                                                                                  valuetype [Engine]Engine.Vector3,
                                                                                                                                                  bool,
                                                                                                                                                  bool,
                                                                                                                                                  class [System.Runtime]System.Func`3<int32,float32,bool>)
    IL_0115:  stloc.s    V_6
    IL_0117:  ldloca.s   V_6
    IL_0119:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_HasValue()
    IL_011e:  brtrue.s   IL_013f

    IL_0120:  ldloc.0
    IL_0121:  ldc.r4     1.
    IL_0126:  ldloc.s    V_5
    IL_0128:  call       float32 [Engine]Engine.MathUtils::Sqrt(float32)
    IL_012d:  ldc.r4     8.
    IL_0132:  div
    IL_0133:  sub
    IL_0134:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0139:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_013e:  stloc.0
    IL_013f:  ldloc.1
    IL_0140:  ldc.i4.1
    IL_0141:  add
    IL_0142:  stloc.1
    IL_0143:  ldloc.1
    IL_0144:  ldarg.0
    IL_0145:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> Game.MotionDetectorElectricElement::m_bodies
    IL_014a:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>::get_Count()
    IL_014f:  blt        IL_0035

    IL_0154:  ldloc.0
    IL_0155:  ldc.r4     0.0
    IL_015a:  bgt.s      IL_0162

    IL_015c:  ldc.r4     0.0
    IL_0161:  ret

    IL_0162:  ldc.r4     0.50999999
    IL_0167:  ldc.r4     1.
    IL_016c:  ldloc.0
    IL_016d:  ldc.r4     1.1
    IL_0172:  mul
    IL_0173:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0178:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_017d:  ret
  } // end of method MotionDetectorElectricElement::CalculateMotionVoltage

} // end of class Game.MotionDetectorElectricElement