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
    // 代码大小       354 (0x162)
    .maxstack  5
    .locals init (bool V_0,
             class Game.SignData V_1,
             valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> V_2,
             string V_3,
             valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.ComponentPlayer> V_4,
             valuetype [Engine]Engine.ReadOnlyList`1<class Game.ComponentPlayer> V_5)
    IL_0000:  ldarg.0
    IL_0001:  call       instance int32 Game.ElectricElement::CalculateHighInputsCount()
    IL_0006:  ldc.i4.0
    IL_0007:  cgt
    IL_0009:  stloc.0
    IL_000a:  ldloc.0
    IL_000b:  brfalse    IL_0156

    IL_0010:  ldarg.0
    IL_0011:  ldfld      bool Game.SignElectricElement::m_isMessageAllowed
    IL_0016:  brfalse    IL_0156

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
    IL_004d:  ble.un     IL_0156

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
    IL_0080:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemSignBlockBehavior>(bool)
    IL_0085:  ldarg.0
    IL_0086:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> Game.ElectricElement::get_CellFaces()
    IL_008b:  stloc.2
    IL_008c:  ldloca.s   V_2
    IL_008e:  ldc.i4.0
    IL_008f:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace>::get_Item(int32)
    IL_0094:  ldfld      int32 Game.CellFace::X
    IL_0099:  ldarg.0
    IL_009a:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> Game.ElectricElement::get_CellFaces()
    IL_009f:  stloc.2
    IL_00a0:  ldloca.s   V_2
    IL_00a2:  ldc.i4.0
    IL_00a3:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace>::get_Item(int32)
    IL_00a8:  ldfld      int32 Game.CellFace::Y
    IL_00ad:  ldarg.0
    IL_00ae:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> Game.ElectricElement::get_CellFaces()
    IL_00b3:  stloc.2
    IL_00b4:  ldloca.s   V_2
    IL_00b6:  ldc.i4.0
    IL_00b7:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace>::get_Item(int32)
    IL_00bc:  ldfld      int32 Game.CellFace::Z
    IL_00c1:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_00c6:  callvirt   instance class Game.SignData Game.SubsystemSignBlockBehavior::GetSignData(valuetype [Engine]Engine.Point3)
    IL_00cb:  stloc.1
    IL_00cc:  ldloc.1
    IL_00cd:  brfalse    IL_0156

    IL_00d2:  ldstr      "\n"
    IL_00d7:  ldloc.1
    IL_00d8:  ldfld      string[] Game.SignData::Lines
    IL_00dd:  call       string [System.Runtime]System.String::Join(string,
                                                                    string[])
    IL_00e2:  stloc.3
    IL_00e3:  ldloc.3
    IL_00e4:  ldc.i4.1
    IL_00e5:  newarr     [System.Runtime]System.Char
    IL_00ea:  dup
    IL_00eb:  ldc.i4.0
    IL_00ec:  ldc.i4.s   10
    IL_00ee:  stelem.i2
    IL_00ef:  callvirt   instance string [System.Runtime]System.String::Trim(char[])
    IL_00f4:  stloc.3
    IL_00f5:  ldloc.3
    IL_00f6:  ldstr      "\\\n"
    IL_00fb:  ldstr      ""
    IL_0100:  callvirt   instance string [System.Runtime]System.String::Replace(string,
                                                                                string)
    IL_0105:  stloc.3
    IL_0106:  ldarg.0
    IL_0107:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_010c:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0111:  ldc.i4.1
    IL_0112:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemPlayers>(bool)
    IL_0117:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.ComponentPlayer> Game.SubsystemPlayers::get_ComponentPlayers()
    IL_011c:  stloc.s    V_5
    IL_011e:  ldloca.s   V_5
    IL_0120:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<class Game.ComponentPlayer>::GetEnumerator()
    IL_0125:  stloc.s    V_4
    .try
    {
      IL_0127:  br.s       IL_013d

      IL_0129:  ldloca.s   V_4
      IL_012b:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.ComponentPlayer>::get_Current()
      IL_0130:  callvirt   instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
      IL_0135:  ldloc.3
      IL_0136:  ldc.i4.1
      IL_0137:  ldc.i4.1
      IL_0138:  callvirt   instance void Game.ComponentGui::DisplaySmallMessage(string,
                                                                                bool,
                                                                                bool)
      IL_013d:  ldloca.s   V_4
      IL_013f:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.ComponentPlayer>::MoveNext()
      IL_0144:  brtrue.s   IL_0129

      IL_0146:  leave.s    IL_0156

    }  // end .try
    finally
    {
      IL_0148:  ldloca.s   V_4
      IL_014a:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.ComponentPlayer>
      IL_0150:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0155:  endfinally
    }  // end handler
    IL_0156:  ldloc.0
    IL_0157:  brtrue.s   IL_0160

    IL_0159:  ldarg.0
    IL_015a:  ldc.i4.1
    IL_015b:  stfld      bool Game.SignElectricElement::m_isMessageAllowed
    IL_0160:  ldc.i4.0
    IL_0161:  ret
  } // end of method SignElectricElement::Simulate

} // end of class Game.SignElectricElement