.class public auto ansi beforefieldinit Game.MultistateFurnitureElectricElement
       extends Game.FurnitureElectricElement
{
  .field private bool m_isActionAllowed
  .field private valuetype [System.Runtime]System.Nullable`1<float64> m_lastActionTime
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.SubsystemElectricity subsystemElectricity,
                               valuetype [Engine]Engine.Point3 point) cil managed
  {
    // 代码大小       9 (0x9)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  call       instance void Game.FurnitureElectricElement::.ctor(class Game.SubsystemElectricity,
                                                                            valuetype [Engine]Engine.Point3)
    IL_0008:  ret
  } // end of method MultistateFurnitureElectricElement::.ctor

  .method public hidebysig virtual instance bool 
          Simulate() cil managed
  {
    // 代码大小       262 (0x106)
    .maxstack  5
    .locals init (valuetype [System.Runtime]System.Nullable`1<float64> V_0,
             float64 V_1,
             float64 V_2,
             valuetype [System.Runtime]System.Nullable`1<float64> V_3,
             valuetype [System.Runtime]System.Nullable`1<float64> V_4,
             valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> V_5)
    IL_0000:  ldarg.0
    IL_0001:  call       instance int32 Game.ElectricElement::CalculateHighInputsCount()
    IL_0006:  ldc.i4.0
    IL_0007:  ble        IL_00fd

    IL_000c:  ldarg.0
    IL_000d:  ldfld      bool Game.MultistateFurnitureElectricElement::m_isActionAllowed
    IL_0012:  brfalse    IL_0104

    IL_0017:  ldarg.0
    IL_0018:  ldflda     valuetype [System.Runtime]System.Nullable`1<float64> Game.MultistateFurnitureElectricElement::m_lastActionTime
    IL_001d:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float64>::get_HasValue()
    IL_0022:  brfalse.s  IL_0083

    IL_0024:  ldarg.0
    IL_0025:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_002a:  callvirt   instance class Game.SubsystemTime Game.SubsystemElectricity::get_SubsystemTime()
    IL_002f:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0034:  stloc.2
    IL_0035:  ldarg.0
    IL_0036:  ldfld      valuetype [System.Runtime]System.Nullable`1<float64> Game.MultistateFurnitureElectricElement::m_lastActionTime
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
    IL_007e:  brfalse    IL_0104

    IL_0083:  ldarg.0
    IL_0084:  ldc.i4.0
    IL_0085:  stfld      bool Game.MultistateFurnitureElectricElement::m_isActionAllowed
    IL_008a:  ldarg.0
    IL_008b:  ldarg.0
    IL_008c:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_0091:  callvirt   instance class Game.SubsystemTime Game.SubsystemElectricity::get_SubsystemTime()
    IL_0096:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_009b:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float64>::.ctor(!0)
    IL_00a0:  stfld      valuetype [System.Runtime]System.Nullable`1<float64> Game.MultistateFurnitureElectricElement::m_lastActionTime
    IL_00a5:  ldarg.0
    IL_00a6:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_00ab:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_00b0:  ldc.i4.1
    IL_00b1:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemFurnitureBlockBehavior>(bool)
    IL_00b6:  ldarg.0
    IL_00b7:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> Game.ElectricElement::get_CellFaces()
    IL_00bc:  stloc.s    V_5
    IL_00be:  ldloca.s   V_5
    IL_00c0:  ldc.i4.0
    IL_00c1:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace>::get_Item(int32)
    IL_00c6:  ldfld      int32 Game.CellFace::X
    IL_00cb:  ldarg.0
    IL_00cc:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> Game.ElectricElement::get_CellFaces()
    IL_00d1:  stloc.s    V_5
    IL_00d3:  ldloca.s   V_5
    IL_00d5:  ldc.i4.0
    IL_00d6:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace>::get_Item(int32)
    IL_00db:  ldfld      int32 Game.CellFace::Y
    IL_00e0:  ldarg.0
    IL_00e1:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> Game.ElectricElement::get_CellFaces()
    IL_00e6:  stloc.s    V_5
    IL_00e8:  ldloca.s   V_5
    IL_00ea:  ldc.i4.0
    IL_00eb:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace>::get_Item(int32)
    IL_00f0:  ldfld      int32 Game.CellFace::Z
    IL_00f5:  ldc.i4.0
    IL_00f6:  callvirt   instance void Game.SubsystemFurnitureBlockBehavior::SwitchToNextState(int32,
                                                                                               int32,
                                                                                               int32,
                                                                                               bool)
    IL_00fb:  br.s       IL_0104

    IL_00fd:  ldarg.0
    IL_00fe:  ldc.i4.1
    IL_00ff:  stfld      bool Game.MultistateFurnitureElectricElement::m_isActionAllowed
    IL_0104:  ldc.i4.0
    IL_0105:  ret
  } // end of method MultistateFurnitureElectricElement::Simulate

} // end of class Game.MultistateFurnitureElectricElement