.class public auto ansi beforefieldinit Game.DispenserElectricElement
       extends Game.ElectricElement
{
  .field private bool m_isDispenseAllowed
  .field private valuetype [System.Runtime]System.Nullable`1<float64> m_lastDispenseTime
  .field private class Game.SubsystemBlockEntities m_subsystemBlockEntities
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.SubsystemElectricity subsystemElectricity,
                               valuetype [Engine]Engine.Point3 point) cil managed
  {
    // 代码大小       223 (0xdf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  stfld      bool Game.DispenserElectricElement::m_isDispenseAllowed
    IL_0007:  ldarg.0
    IL_0008:  ldarg.1
    IL_0009:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.CellFace>::.ctor()
    IL_000e:  dup
    IL_000f:  ldarg.2
    IL_0010:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0015:  ldarg.2
    IL_0016:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_001b:  ldarg.2
    IL_001c:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0021:  ldc.i4.0
    IL_0022:  newobj     instance void Game.CellFace::.ctor(int32,
                                                            int32,
                                                            int32,
                                                            int32)
    IL_0027:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.CellFace>::Add(!0)
    IL_002c:  dup
    IL_002d:  ldarg.2
    IL_002e:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0033:  ldarg.2
    IL_0034:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0039:  ldarg.2
    IL_003a:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_003f:  ldc.i4.1
    IL_0040:  newobj     instance void Game.CellFace::.ctor(int32,
                                                            int32,
                                                            int32,
                                                            int32)
    IL_0045:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.CellFace>::Add(!0)
    IL_004a:  dup
    IL_004b:  ldarg.2
    IL_004c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0051:  ldarg.2
    IL_0052:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0057:  ldarg.2
    IL_0058:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_005d:  ldc.i4.2
    IL_005e:  newobj     instance void Game.CellFace::.ctor(int32,
                                                            int32,
                                                            int32,
                                                            int32)
    IL_0063:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.CellFace>::Add(!0)
    IL_0068:  dup
    IL_0069:  ldarg.2
    IL_006a:  ldfld      int32 [Engine]Engine.Point3::X
    IL_006f:  ldarg.2
    IL_0070:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0075:  ldarg.2
    IL_0076:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_007b:  ldc.i4.3
    IL_007c:  newobj     instance void Game.CellFace::.ctor(int32,
                                                            int32,
                                                            int32,
                                                            int32)
    IL_0081:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.CellFace>::Add(!0)
    IL_0086:  dup
    IL_0087:  ldarg.2
    IL_0088:  ldfld      int32 [Engine]Engine.Point3::X
    IL_008d:  ldarg.2
    IL_008e:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0093:  ldarg.2
    IL_0094:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0099:  ldc.i4.4
    IL_009a:  newobj     instance void Game.CellFace::.ctor(int32,
                                                            int32,
                                                            int32,
                                                            int32)
    IL_009f:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.CellFace>::Add(!0)
    IL_00a4:  dup
    IL_00a5:  ldarg.2
    IL_00a6:  ldfld      int32 [Engine]Engine.Point3::X
    IL_00ab:  ldarg.2
    IL_00ac:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_00b1:  ldarg.2
    IL_00b2:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_00b7:  ldc.i4.5
    IL_00b8:  newobj     instance void Game.CellFace::.ctor(int32,
                                                            int32,
                                                            int32,
                                                            int32)
    IL_00bd:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.CellFace>::Add(!0)
    IL_00c2:  call       instance void Game.ElectricElement::.ctor(class Game.SubsystemElectricity,
                                                                   class [System.Runtime]System.Collections.Generic.IEnumerable`1<valuetype Game.CellFace>)
    IL_00c7:  ldarg.0
    IL_00c8:  ldarg.0
    IL_00c9:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_00ce:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_00d3:  ldc.i4.1
    IL_00d4:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemBlockEntities>(bool)
    IL_00d9:  stfld      class Game.SubsystemBlockEntities Game.DispenserElectricElement::m_subsystemBlockEntities
    IL_00de:  ret
  } // end of method DispenserElectricElement::.ctor

  .method public hidebysig virtual instance bool 
          Simulate() cil managed
  {
    // 代码大小       308 (0x134)
    .maxstack  5
    .locals init (valuetype [System.Runtime]System.Nullable`1<float64> V_0,
             float64 V_1,
             float64 V_2,
             valuetype [System.Runtime]System.Nullable`1<float64> V_3,
             valuetype [System.Runtime]System.Nullable`1<float64> V_4,
             class Game.ComponentBlockEntity V_5,
             valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> V_6,
             valuetype Game.CellFace V_7,
             class Game.ComponentDispenser V_8)
    IL_0000:  ldarg.0
    IL_0001:  call       instance int32 Game.ElectricElement::CalculateHighInputsCount()
    IL_0006:  ldc.i4.0
    IL_0007:  ble        IL_012b

    IL_000c:  ldarg.0
    IL_000d:  ldfld      bool Game.DispenserElectricElement::m_isDispenseAllowed
    IL_0012:  brfalse    IL_0132

    IL_0017:  ldarg.0
    IL_0018:  ldflda     valuetype [System.Runtime]System.Nullable`1<float64> Game.DispenserElectricElement::m_lastDispenseTime
    IL_001d:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float64>::get_HasValue()
    IL_0022:  brfalse.s  IL_0083

    IL_0024:  ldarg.0
    IL_0025:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_002a:  callvirt   instance class Game.SubsystemTime Game.SubsystemElectricity::get_SubsystemTime()
    IL_002f:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0034:  stloc.2
    IL_0035:  ldarg.0
    IL_0036:  ldfld      valuetype [System.Runtime]System.Nullable`1<float64> Game.DispenserElectricElement::m_lastDispenseTime
    IL_003b:  stloc.3
    IL_003c:  ldloca.s   V_3
    IL_003e:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float64>::get_HasValue()
    IL_0043:  brtrue.s   IL_0051

    IL_0045:  ldloca.s   V_4
    IL_0047:  initobj    valuetype [System.Runtime]System.Nullable`1<float64>
    IL_004d:  ldloc.s    V_4
    IL_004f:  br.s       IL_005f

    IL_0051:  ldloc.2
    IL_0052:  ldloca.s   V_3
    IL_0054:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float64>::GetValueOrDefault()
    IL_0059:  sub
    IL_005a:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float64>::.ctor(!0)
    IL_005f:  stloc.0
    IL_0060:  ldc.r8     0.10000000000000001
    IL_0069:  stloc.1
    IL_006a:  ldloca.s   V_0
    IL_006c:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float64>::GetValueOrDefault()
    IL_0071:  ldloc.1
    IL_0072:  bgt.s      IL_0077

    IL_0074:  ldc.i4.0
    IL_0075:  br.s       IL_007e

    IL_0077:  ldloca.s   V_0
    IL_0079:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float64>::get_HasValue()
    IL_007e:  brfalse    IL_0132

    IL_0083:  ldarg.0
    IL_0084:  ldc.i4.0
    IL_0085:  stfld      bool Game.DispenserElectricElement::m_isDispenseAllowed
    IL_008a:  ldarg.0
    IL_008b:  ldarg.0
    IL_008c:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_0091:  callvirt   instance class Game.SubsystemTime Game.SubsystemElectricity::get_SubsystemTime()
    IL_0096:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_009b:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float64>::.ctor(!0)
    IL_00a0:  stfld      valuetype [System.Runtime]System.Nullable`1<float64> Game.DispenserElectricElement::m_lastDispenseTime
    IL_00a5:  ldarg.0
    IL_00a6:  ldfld      class Game.SubsystemBlockEntities Game.DispenserElectricElement::m_subsystemBlockEntities
    IL_00ab:  ldarg.0
    IL_00ac:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> Game.ElectricElement::get_CellFaces()
    IL_00b1:  stloc.s    V_6
    IL_00b3:  ldloca.s   V_6
    IL_00b5:  ldc.i4.0
    IL_00b6:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace>::get_Item(int32)
    IL_00bb:  stloc.s    V_7
    IL_00bd:  ldloca.s   V_7
    IL_00bf:  call       instance valuetype [Engine]Engine.Point3 Game.CellFace::get_Point()
    IL_00c4:  ldfld      int32 [Engine]Engine.Point3::X
    IL_00c9:  ldarg.0
    IL_00ca:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> Game.ElectricElement::get_CellFaces()
    IL_00cf:  stloc.s    V_6
    IL_00d1:  ldloca.s   V_6
    IL_00d3:  ldc.i4.0
    IL_00d4:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace>::get_Item(int32)
    IL_00d9:  stloc.s    V_7
    IL_00db:  ldloca.s   V_7
    IL_00dd:  call       instance valuetype [Engine]Engine.Point3 Game.CellFace::get_Point()
    IL_00e2:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_00e7:  ldarg.0
    IL_00e8:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> Game.ElectricElement::get_CellFaces()
    IL_00ed:  stloc.s    V_6
    IL_00ef:  ldloca.s   V_6
    IL_00f1:  ldc.i4.0
    IL_00f2:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace>::get_Item(int32)
    IL_00f7:  stloc.s    V_7
    IL_00f9:  ldloca.s   V_7
    IL_00fb:  call       instance valuetype [Engine]Engine.Point3 Game.CellFace::get_Point()
    IL_0100:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0105:  callvirt   instance class Game.ComponentBlockEntity Game.SubsystemBlockEntities::GetBlockEntity(int32,
                                                                                                              int32,
                                                                                                              int32)
    IL_010a:  stloc.s    V_5
    IL_010c:  ldloc.s    V_5
    IL_010e:  brfalse.s  IL_0132

    IL_0110:  ldloc.s    V_5
    IL_0112:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0117:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentDispenser>()
    IL_011c:  stloc.s    V_8
    IL_011e:  ldloc.s    V_8
    IL_0120:  brfalse.s  IL_0132

    IL_0122:  ldloc.s    V_8
    IL_0124:  callvirt   instance void Game.ComponentDispenser::Dispense()
    IL_0129:  br.s       IL_0132

    IL_012b:  ldarg.0
    IL_012c:  ldc.i4.1
    IL_012d:  stfld      bool Game.DispenserElectricElement::m_isDispenseAllowed
    IL_0132:  ldc.i4.0
    IL_0133:  ret
  } // end of method DispenserElectricElement::Simulate

} // end of class Game.DispenserElectricElement