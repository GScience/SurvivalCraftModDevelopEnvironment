.class public auto ansi beforefieldinit Game.SignElectricElement
       extends Game.ElectricElement
{
  .field private bool m_isMessageAllowed
  .field private valuetype [System.Runtime]System.Nullable`1<float64> m_lastMessageTime
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.SubsystemElectricity subsystemElectricity,
                               valuetype Game.CellFace cellFace) cil managed
  {
    // 代码大小       16 (0x10)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  stfld      bool Game.SignElectricElement::m_isMessageAllowed
    IL_0007:  ldarg.0
    IL_0008:  ldarg.1
    IL_0009:  ldarg.2
    IL_000a:  call       instance void Game.ElectricElement::.ctor(class Game.SubsystemElectricity,
                                                                   valuetype Game.CellFace)
    IL_000f:  ret
  } // end of method SignElectricElement::.ctor

  .method public hidebysig virtual instance bool 
          Simulate() cil managed
  {
    // 代码大小       304 (0x130)
    .maxstack  5
    .locals init (bool V_0,
             class Game.SubsystemGui V_1,
             class Game.SignData V_2,
             valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> V_3,
             string V_4)
    IL_0000:  ldarg.0
    IL_0001:  call       instance int32 Game.ElectricElement::CalculateHighInputsCount()
    IL_0006:  ldc.i4.0
    IL_0007:  cgt
    IL_0009:  stloc.0
    IL_000a:  ldloc.0
    IL_000b:  brfalse    IL_0124

    IL_0010:  ldarg.0
    IL_0011:  ldfld      bool Game.SignElectricElement::m_isMessageAllowed
    IL_0016:  brfalse    IL_0124

    IL_001b:  ldarg.0
    IL_001c:  ldflda     valuetype [System.Runtime]System.Nullable`1<float64> Game.SignElectricElement::m_lastMessageTime
    IL_0021:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float64>::get_HasValue()
    IL_0026:  brfalse.s  IL_0052

    IL_0028:  ldarg.0
    IL_0029:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_002e:  callvirt   instance class Game.SubsystemTime Game.SubsystemElectricity::get_SubsystemTime()
    IL_0033:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0038:  ldarg.0
    IL_0039:  ldflda     valuetype [System.Runtime]System.Nullable`1<float64> Game.SignElectricElement::m_lastMessageTime
    IL_003e:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float64>::get_Value()
    IL_0043:  sub
    IL_0044:  ldc.r8     0.5
    IL_004d:  ble.un     IL_0124

    IL_0052:  ldarg.0
    IL_0053:  ldc.i4.0
    IL_0054:  stfld      bool Game.SignElectricElement::m_isMessageAllowed
    IL_0059:  ldarg.0
    IL_005a:  ldarg.0
    IL_005b:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_0060:  callvirt   instance class Game.SubsystemTime Game.SubsystemElectricity::get_SubsystemTime()
    IL_0065:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_006a:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float64>::.ctor(!0)
    IL_006f:  stfld      valuetype [System.Runtime]System.Nullable`1<float64> Game.SignElectricElement::m_lastMessageTime
    IL_0074:  ldarg.0
    IL_0075:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_007a:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_007f:  ldc.i4.1
    IL_0080:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGui>(bool)
    IL_0085:  stloc.1
    IL_0086:  ldarg.0
    IL_0087:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_008c:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0091:  ldc.i4.1
    IL_0092:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemSignBlockBehavior>(bool)
    IL_0097:  ldarg.0
    IL_0098:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> Game.ElectricElement::get_CellFaces()
    IL_009d:  stloc.3
    IL_009e:  ldloca.s   V_3
    IL_00a0:  ldc.i4.0
    IL_00a1:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace>::get_Item(int32)
    IL_00a6:  ldfld      int32 Game.CellFace::X
    IL_00ab:  ldarg.0
    IL_00ac:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> Game.ElectricElement::get_CellFaces()
    IL_00b1:  stloc.3
    IL_00b2:  ldloca.s   V_3
    IL_00b4:  ldc.i4.0
    IL_00b5:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace>::get_Item(int32)
    IL_00ba:  ldfld      int32 Game.CellFace::Y
    IL_00bf:  ldarg.0
    IL_00c0:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> Game.ElectricElement::get_CellFaces()
    IL_00c5:  stloc.3
    IL_00c6:  ldloca.s   V_3
    IL_00c8:  ldc.i4.0
    IL_00c9:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace>::get_Item(int32)
    IL_00ce:  ldfld      int32 Game.CellFace::Z
    IL_00d3:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_00d8:  callvirt   instance class Game.SignData Game.SubsystemSignBlockBehavior::GetSignData(valuetype [Engine]Engine.Point3)
    IL_00dd:  stloc.2
    IL_00de:  ldloc.2
    IL_00df:  brfalse.s  IL_0124

    IL_00e1:  ldstr      "\n"
    IL_00e6:  ldloc.2
    IL_00e7:  ldfld      string[] Game.SignData::Lines
    IL_00ec:  call       string [System.Runtime]System.String::Join(string,
                                                                    string[])
    IL_00f1:  stloc.s    V_4
    IL_00f3:  ldloc.s    V_4
    IL_00f5:  ldc.i4.1
    IL_00f6:  newarr     [System.Runtime]System.Char
    IL_00fb:  dup
    IL_00fc:  ldc.i4.0
    IL_00fd:  ldc.i4.s   10
    IL_00ff:  stelem.i2
    IL_0100:  callvirt   instance string [System.Runtime]System.String::Trim(char[])
    IL_0105:  stloc.s    V_4
    IL_0107:  ldloc.s    V_4
    IL_0109:  ldstr      "\\\n"
    IL_010e:  ldstr      ""
    IL_0113:  callvirt   instance string [System.Runtime]System.String::Replace(string,
                                                                                string)
    IL_0118:  stloc.s    V_4
    IL_011a:  ldloc.1
    IL_011b:  ldloc.s    V_4
    IL_011d:  ldc.i4.1
    IL_011e:  ldc.i4.1
    IL_011f:  callvirt   instance void Game.SubsystemGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_0124:  ldloc.0
    IL_0125:  brtrue.s   IL_012e

    IL_0127:  ldarg.0
    IL_0128:  ldc.i4.1
    IL_0129:  stfld      bool Game.SignElectricElement::m_isMessageAllowed
    IL_012e:  ldc.i4.0
    IL_012f:  ret
  } // end of method SignElectricElement::Simulate

} // end of class Game.SignElectricElement