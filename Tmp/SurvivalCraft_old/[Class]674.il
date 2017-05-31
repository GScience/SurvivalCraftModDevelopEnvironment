.class public auto ansi beforefieldinit Game.SoundGeneratorElectricElement
       extends Game.RotateableElectricElement
{
  .field private class Game.SubsystemNoise m_subsystemNoise
  .field private class Game.SubsystemParticles m_subsystemParticles
  .field private class Game.SoundParticleSystem m_particleSystem
  .field private class Game.Random m_random
  .field private int32 m_lastToneInput
  .field private float64 m_playAllowedTime
  .field private string[] m_tones
  .field private int32[] m_maxOctaves
  .field private string[] m_drums
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.SubsystemElectricity subsystemElectricity,
                               valuetype Game.CellFace cellFace) cil managed
  {
    // 代码大小       397 (0x18d)
    .maxstack  5
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             valuetype [Engine]Engine.Vector3 V_1)
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.Random::.ctor()
    IL_0006:  stfld      class Game.Random Game.SoundGeneratorElectricElement::m_random
    IL_000b:  ldarg.0
    IL_000c:  ldc.i4.s   16
    IL_000e:  newarr     [System.Runtime]System.String
    IL_0013:  dup
    IL_0014:  ldc.i4.0
    IL_0015:  ldstr      ""
    IL_001a:  stelem.ref
    IL_001b:  dup
    IL_001c:  ldc.i4.1
    IL_001d:  ldstr      "Bell"
    IL_0022:  stelem.ref
    IL_0023:  dup
    IL_0024:  ldc.i4.2
    IL_0025:  ldstr      "Organ"
    IL_002a:  stelem.ref
    IL_002b:  dup
    IL_002c:  ldc.i4.3
    IL_002d:  ldstr      "Ping"
    IL_0032:  stelem.ref
    IL_0033:  dup
    IL_0034:  ldc.i4.4
    IL_0035:  ldstr      "String"
    IL_003a:  stelem.ref
    IL_003b:  dup
    IL_003c:  ldc.i4.5
    IL_003d:  ldstr      "Trumpet"
    IL_0042:  stelem.ref
    IL_0043:  dup
    IL_0044:  ldc.i4.6
    IL_0045:  ldstr      "Voice"
    IL_004a:  stelem.ref
    IL_004b:  dup
    IL_004c:  ldc.i4.7
    IL_004d:  ldstr      "Piano"
    IL_0052:  stelem.ref
    IL_0053:  dup
    IL_0054:  ldc.i4.8
    IL_0055:  ldstr      "PianoLong"
    IL_005a:  stelem.ref
    IL_005b:  dup
    IL_005c:  ldc.i4.s   9
    IL_005e:  ldstr      "Drums"
    IL_0063:  stelem.ref
    IL_0064:  dup
    IL_0065:  ldc.i4.s   10
    IL_0067:  ldstr      ""
    IL_006c:  stelem.ref
    IL_006d:  dup
    IL_006e:  ldc.i4.s   11
    IL_0070:  ldstr      ""
    IL_0075:  stelem.ref
    IL_0076:  dup
    IL_0077:  ldc.i4.s   12
    IL_0079:  ldstr      ""
    IL_007e:  stelem.ref
    IL_007f:  dup
    IL_0080:  ldc.i4.s   13
    IL_0082:  ldstr      ""
    IL_0087:  stelem.ref
    IL_0088:  dup
    IL_0089:  ldc.i4.s   14
    IL_008b:  ldstr      ""
    IL_0090:  stelem.ref
    IL_0091:  dup
    IL_0092:  ldc.i4.s   15
    IL_0094:  ldstr      "Piano"
    IL_0099:  stelem.ref
    IL_009a:  stfld      string[] Game.SoundGeneratorElectricElement::m_tones
    IL_009f:  ldarg.0
    IL_00a0:  ldc.i4.s   16
    IL_00a2:  newarr     [System.Runtime]System.Int32
    IL_00a7:  dup
    IL_00a8:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=64' '<PrivateImplementationDetails>'::'651181FE48109E64392863B3A5B963D2C8210021'
    IL_00ad:  call       void [System.Runtime]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [System.Runtime]System.Array,
                                                                                                              valuetype [System.Runtime]System.RuntimeFieldHandle)
    IL_00b2:  stfld      int32[] Game.SoundGeneratorElectricElement::m_maxOctaves
    IL_00b7:  ldarg.0
    IL_00b8:  ldc.i4.s   10
    IL_00ba:  newarr     [System.Runtime]System.String
    IL_00bf:  dup
    IL_00c0:  ldc.i4.0
    IL_00c1:  ldstr      "Snare"
    IL_00c6:  stelem.ref
    IL_00c7:  dup
    IL_00c8:  ldc.i4.1
    IL_00c9:  ldstr      "BassDrum"
    IL_00ce:  stelem.ref
    IL_00cf:  dup
    IL_00d0:  ldc.i4.2
    IL_00d1:  ldstr      "ClosedHiHat"
    IL_00d6:  stelem.ref
    IL_00d7:  dup
    IL_00d8:  ldc.i4.3
    IL_00d9:  ldstr      "PedalHiHat"
    IL_00de:  stelem.ref
    IL_00df:  dup
    IL_00e0:  ldc.i4.4
    IL_00e1:  ldstr      "OpenHiHat"
    IL_00e6:  stelem.ref
    IL_00e7:  dup
    IL_00e8:  ldc.i4.5
    IL_00e9:  ldstr      "LowTom"
    IL_00ee:  stelem.ref
    IL_00ef:  dup
    IL_00f0:  ldc.i4.6
    IL_00f1:  ldstr      "HighTom"
    IL_00f6:  stelem.ref
    IL_00f7:  dup
    IL_00f8:  ldc.i4.7
    IL_00f9:  ldstr      "CrashCymbal"
    IL_00fe:  stelem.ref
    IL_00ff:  dup
    IL_0100:  ldc.i4.8
    IL_0101:  ldstr      "RideCymbal"
    IL_0106:  stelem.ref
    IL_0107:  dup
    IL_0108:  ldc.i4.s   9
    IL_010a:  ldstr      "HandClap"
    IL_010f:  stelem.ref
    IL_0110:  stfld      string[] Game.SoundGeneratorElectricElement::m_drums
    IL_0115:  ldarg.0
    IL_0116:  ldarg.1
    IL_0117:  ldarg.2
    IL_0118:  call       instance void Game.RotateableElectricElement::.ctor(class Game.SubsystemElectricity,
                                                                             valuetype Game.CellFace)
    IL_011d:  ldarg.0
    IL_011e:  ldarg.1
    IL_011f:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0124:  ldc.i4.1
    IL_0125:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemNoise>(bool)
    IL_012a:  stfld      class Game.SubsystemNoise Game.SoundGeneratorElectricElement::m_subsystemNoise
    IL_012f:  ldarg.0
    IL_0130:  ldarg.1
    IL_0131:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0136:  ldc.i4.1
    IL_0137:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemParticles>(bool)
    IL_013c:  stfld      class Game.SubsystemParticles Game.SoundGeneratorElectricElement::m_subsystemParticles
    IL_0141:  ldarg.2
    IL_0142:  ldfld      int32 Game.CellFace::Face
    IL_0147:  call       valuetype [Engine]Engine.Vector3 Game.CellFace::FaceToVector3(int32)
    IL_014c:  stloc.0
    IL_014d:  ldarga.s   cellFace
    IL_014f:  call       instance valuetype [Engine]Engine.Point3 Game.CellFace::get_Point()
    IL_0154:  newobj     instance void [Engine]Engine.Vector3::.ctor(valuetype [Engine]Engine.Point3)
    IL_0159:  ldc.r4     0.5
    IL_015e:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32)
    IL_0163:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0168:  ldc.r4     0.2
    IL_016d:  ldloc.0
    IL_016e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0173:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0178:  stloc.1
    IL_0179:  ldarg.0
    IL_017a:  ldarg.1
    IL_017b:  callvirt   instance class Game.SubsystemTerrain Game.SubsystemElectricity::get_SubsystemTerrain()
    IL_0180:  ldloc.1
    IL_0181:  ldloc.0
    IL_0182:  newobj     instance void Game.SoundParticleSystem::.ctor(class Game.SubsystemTerrain,
                                                                       valuetype [Engine]Engine.Vector3,
                                                                       valuetype [Engine]Engine.Vector3)
    IL_0187:  stfld      class Game.SoundParticleSystem Game.SoundGeneratorElectricElement::m_particleSystem
    IL_018c:  ret
  } // end of method SoundGeneratorElectricElement::.ctor

  .method public hidebysig virtual instance bool 
          Simulate() cil managed
  {
    // 代码大小       1006 (0x3ee)
    .maxstack  7
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection> V_5,
             class Game.ElectricConnection V_6,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection> V_7,
             valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> V_8,
             string V_9,
             float32 V_10,
             string V_11,
             float32 V_12,
             int32 V_13,
             int32 V_14,
             float32 V_15,
             valuetype Game.CellFace V_16,
             valuetype [Engine]Engine.Vector3 V_17,
             float32 V_18,
             float32 V_19,
             float32 V_20,
             float32 V_21,
             float32 V_22,
             valuetype [Engine]Engine.Vector3 V_23)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  ldc.i4.s   15
    IL_0004:  stloc.1
    IL_0005:  ldc.i4.2
    IL_0006:  stloc.2
    IL_0007:  ldc.i4.0
    IL_0008:  stloc.3
    IL_0009:  ldarg.0
    IL_000a:  call       instance int32 Game.RotateableElectricElement::get_Rotation()
    IL_000f:  stloc.s    V_4
    IL_0011:  ldarg.0
    IL_0012:  call       instance class [System.Collections]System.Collections.Generic.List`1<class Game.ElectricConnection> Game.ElectricElement::get_Connections()
    IL_0017:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.ElectricConnection>::GetEnumerator()
    IL_001c:  stloc.s    V_5
    .try
    {
      IL_001e:  br         IL_0130

      IL_0023:  ldloca.s   V_5
      IL_0025:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection>::get_Current()
      IL_002a:  stloc.s    V_6
      IL_002c:  ldloc.s    V_6
      IL_002e:  ldfld      valuetype Game.ElectricConnectorType Game.ElectricConnection::ConnectorType
      IL_0033:  ldc.i4.1
      IL_0034:  beq        IL_0130

      IL_0039:  ldloc.s    V_6
      IL_003b:  ldfld      valuetype Game.ElectricConnectorType Game.ElectricConnection::NeighborConnectorType
      IL_0040:  brfalse    IL_0130

      IL_0045:  ldarg.0
      IL_0046:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> Game.ElectricElement::get_CellFaces()
      IL_004b:  stloc.s    V_8
      IL_004d:  ldloca.s   V_8
      IL_004f:  ldc.i4.0
      IL_0050:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace>::get_Item(int32)
      IL_0055:  ldfld      int32 Game.CellFace::Face
      IL_005a:  ldloc.s    V_4
      IL_005c:  ldloc.s    V_6
      IL_005e:  ldfld      int32 Game.ElectricConnection::ConnectorFace
      IL_0063:  call       valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection> Game.SubsystemElectricity::GetConnectorDirection(int32,
                                                                                                                                                                   int32,
                                                                                                                                                                   int32)
      IL_0068:  stloc.s    V_7
      IL_006a:  ldloca.s   V_7
      IL_006c:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_HasValue()
      IL_0071:  brfalse    IL_0130

      IL_0076:  ldloca.s   V_7
      IL_0078:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_Value()
      IL_007d:  ldc.i4.4
      IL_007e:  beq.s      IL_008a

      IL_0080:  ldloca.s   V_7
      IL_0082:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_Value()
      IL_0087:  ldc.i4.2
      IL_0088:  bne.un.s   IL_00af

      IL_008a:  ldc.r4     15.
      IL_008f:  ldloc.s    V_6
      IL_0091:  ldfld      class Game.ElectricElement Game.ElectricConnection::NeighborElectricElement
      IL_0096:  ldloc.s    V_6
      IL_0098:  ldfld      int32 Game.ElectricConnection::NeighborConnectorFace
      IL_009d:  callvirt   instance float32 Game.ElectricElement::GetOutputVoltage(int32)
      IL_00a2:  mul
      IL_00a3:  call       float32 [Engine]Engine.MathUtils::Round(float32)
      IL_00a8:  conv.i4
      IL_00a9:  stloc.3
      IL_00aa:  br         IL_0130

      IL_00af:  ldloca.s   V_7
      IL_00b1:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_Value()
      IL_00b6:  ldc.i4.1
      IL_00b7:  bne.un.s   IL_00db

      IL_00b9:  ldc.r4     15.
      IL_00be:  ldloc.s    V_6
      IL_00c0:  ldfld      class Game.ElectricElement Game.ElectricConnection::NeighborElectricElement
      IL_00c5:  ldloc.s    V_6
      IL_00c7:  ldfld      int32 Game.ElectricConnection::NeighborConnectorFace
      IL_00cc:  callvirt   instance float32 Game.ElectricElement::GetOutputVoltage(int32)
      IL_00d1:  mul
      IL_00d2:  call       float32 [Engine]Engine.MathUtils::Round(float32)
      IL_00d7:  conv.i4
      IL_00d8:  stloc.0
      IL_00d9:  br.s       IL_0130

      IL_00db:  ldloca.s   V_7
      IL_00dd:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_Value()
      IL_00e2:  ldc.i4.3
      IL_00e3:  bne.un.s   IL_0107

      IL_00e5:  ldc.r4     15.
      IL_00ea:  ldloc.s    V_6
      IL_00ec:  ldfld      class Game.ElectricElement Game.ElectricConnection::NeighborElectricElement
      IL_00f1:  ldloc.s    V_6
      IL_00f3:  ldfld      int32 Game.ElectricConnection::NeighborConnectorFace
      IL_00f8:  callvirt   instance float32 Game.ElectricElement::GetOutputVoltage(int32)
      IL_00fd:  mul
      IL_00fe:  call       float32 [Engine]Engine.MathUtils::Round(float32)
      IL_0103:  conv.i4
      IL_0104:  stloc.2
      IL_0105:  br.s       IL_0130

      IL_0107:  ldloca.s   V_7
      IL_0109:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_Value()
      IL_010e:  brtrue.s   IL_0130

      IL_0110:  ldc.r4     15.
      IL_0115:  ldloc.s    V_6
      IL_0117:  ldfld      class Game.ElectricElement Game.ElectricConnection::NeighborElectricElement
      IL_011c:  ldloc.s    V_6
      IL_011e:  ldfld      int32 Game.ElectricConnection::NeighborConnectorFace
      IL_0123:  callvirt   instance float32 Game.ElectricElement::GetOutputVoltage(int32)
      IL_0128:  mul
      IL_0129:  call       float32 [Engine]Engine.MathUtils::Round(float32)
      IL_012e:  conv.i4
      IL_012f:  stloc.1
      IL_0130:  ldloca.s   V_5
      IL_0132:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection>::MoveNext()
      IL_0137:  brtrue     IL_0023

      IL_013c:  leave.s    IL_014c

    }  // end .try
    finally
    {
      IL_013e:  ldloca.s   V_5
      IL_0140:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection>
      IL_0146:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_014b:  endfinally
    }  // end handler
    IL_014c:  ldarg.0
    IL_014d:  ldfld      int32 Game.SoundGeneratorElectricElement::m_lastToneInput
    IL_0152:  brtrue     IL_03e5

    IL_0157:  ldloc.3
    IL_0158:  brfalse    IL_03e5

    IL_015d:  ldloc.0
    IL_015e:  ldc.i4.s   15
    IL_0160:  beq        IL_03e5

    IL_0165:  ldarg.0
    IL_0166:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_016b:  callvirt   instance class Game.SubsystemTime Game.SubsystemElectricity::get_SubsystemTime()
    IL_0170:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0175:  ldarg.0
    IL_0176:  ldfld      float64 Game.SoundGeneratorElectricElement::m_playAllowedTime
    IL_017b:  blt.un     IL_03e5

    IL_0180:  ldarg.0
    IL_0181:  ldarg.0
    IL_0182:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_0187:  callvirt   instance class Game.SubsystemTime Game.SubsystemElectricity::get_SubsystemTime()
    IL_018c:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0191:  ldc.r8     7.9999998211860657e-002
    IL_019a:  add
    IL_019b:  stfld      float64 Game.SoundGeneratorElectricElement::m_playAllowedTime
    IL_01a0:  ldarg.0
    IL_01a1:  ldfld      string[] Game.SoundGeneratorElectricElement::m_tones
    IL_01a6:  ldloc.3
    IL_01a7:  ldelem.ref
    IL_01a8:  stloc.s    V_9
    IL_01aa:  ldc.r4     0.0
    IL_01af:  stloc.s    V_10
    IL_01b1:  ldnull
    IL_01b2:  stloc.s    V_11
    IL_01b4:  ldloc.s    V_9
    IL_01b6:  ldstr      "Drums"
    IL_01bb:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                         string)
    IL_01c0:  brfalse.s  IL_0200

    IL_01c2:  ldc.r4     1.
    IL_01c7:  stloc.s    V_10
    IL_01c9:  ldloc.0
    IL_01ca:  ldc.i4.0
    IL_01cb:  blt        IL_0295

    IL_01d0:  ldloc.0
    IL_01d1:  ldarg.0
    IL_01d2:  ldfld      string[] Game.SoundGeneratorElectricElement::m_drums
    IL_01d7:  ldlen
    IL_01d8:  conv.i4
    IL_01d9:  bge        IL_0295

    IL_01de:  ldstr      "Audio/SoundGenerator/Drums{0}"
    IL_01e3:  ldc.i4.1
    IL_01e4:  newarr     [System.Runtime]System.Object
    IL_01e9:  dup
    IL_01ea:  ldc.i4.0
    IL_01eb:  ldarg.0
    IL_01ec:  ldfld      string[] Game.SoundGeneratorElectricElement::m_drums
    IL_01f1:  ldloc.0
    IL_01f2:  ldelem.ref
    IL_01f3:  stelem.ref
    IL_01f4:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_01f9:  stloc.s    V_11
    IL_01fb:  br         IL_0295

    IL_0200:  ldloc.s    V_9
    IL_0202:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_0207:  brtrue     IL_0295

    IL_020c:  ldc.r4     130.8125
    IL_0211:  ldc.r4     1.0594631
    IL_0216:  ldloc.0
    IL_0217:  ldc.i4.s   12
    IL_0219:  ldloc.2
    IL_021a:  mul
    IL_021b:  add
    IL_021c:  conv.r4
    IL_021d:  call       float32 [Engine]Engine.MathUtils::Pow(float32,
                                                               float32)
    IL_0222:  mul
    IL_0223:  stloc.s    V_12
    IL_0225:  ldc.i4.0
    IL_0226:  stloc.s    V_13
    IL_0228:  ldc.i4.4
    IL_0229:  stloc.s    V_14
    IL_022b:  br.s       IL_0268

    IL_022d:  ldloc.s    V_12
    IL_022f:  ldc.r4     523.25
    IL_0234:  ldc.r4     2.
    IL_0239:  ldloc.s    V_14
    IL_023b:  ldc.i4.5
    IL_023c:  sub
    IL_023d:  conv.r4
    IL_023e:  call       float32 [Engine]Engine.MathUtils::Pow(float32,
                                                               float32)
    IL_0243:  mul
    IL_0244:  div
    IL_0245:  stloc.s    V_15
    IL_0247:  ldloc.s    V_13
    IL_0249:  brfalse.s  IL_025a

    IL_024b:  ldloc.s    V_15
    IL_024d:  ldc.r4     0.5
    IL_0252:  blt.un.s   IL_0262

    IL_0254:  ldloc.s    V_15
    IL_0256:  ldloc.s    V_10
    IL_0258:  bge.un.s   IL_0262

    IL_025a:  ldloc.s    V_14
    IL_025c:  stloc.s    V_13
    IL_025e:  ldloc.s    V_15
    IL_0260:  stloc.s    V_10
    IL_0262:  ldloc.s    V_14
    IL_0264:  ldc.i4.1
    IL_0265:  add
    IL_0266:  stloc.s    V_14
    IL_0268:  ldloc.s    V_14
    IL_026a:  ldarg.0
    IL_026b:  ldfld      int32[] Game.SoundGeneratorElectricElement::m_maxOctaves
    IL_0270:  ldloc.3
    IL_0271:  ldelem.i4
    IL_0272:  ble.s      IL_022d

    IL_0274:  ldstr      "Audio/SoundGenerator/{0}C{1}"
    IL_0279:  ldc.i4.2
    IL_027a:  newarr     [System.Runtime]System.Object
    IL_027f:  dup
    IL_0280:  ldc.i4.0
    IL_0281:  ldloc.s    V_9
    IL_0283:  stelem.ref
    IL_0284:  dup
    IL_0285:  ldc.i4.1
    IL_0286:  ldloc.s    V_13
    IL_0288:  box        [System.Runtime]System.Int32
    IL_028d:  stelem.ref
    IL_028e:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0293:  stloc.s    V_11
    IL_0295:  ldloc.s    V_10
    IL_0297:  ldc.r4     0.0
    IL_029c:  beq        IL_03e5

    IL_02a1:  ldloc.s    V_11
    IL_02a3:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_02a8:  brtrue     IL_03e5

    IL_02ad:  ldarg.0
    IL_02ae:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> Game.ElectricElement::get_CellFaces()
    IL_02b3:  stloc.s    V_8
    IL_02b5:  ldloca.s   V_8
    IL_02b7:  ldc.i4.0
    IL_02b8:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace>::get_Item(int32)
    IL_02bd:  stloc.s    V_16
    IL_02bf:  ldloca.s   V_17
    IL_02c1:  ldloc.s    V_16
    IL_02c3:  ldfld      int32 Game.CellFace::X
    IL_02c8:  conv.r4
    IL_02c9:  ldloc.s    V_16
    IL_02cb:  ldfld      int32 Game.CellFace::Y
    IL_02d0:  conv.r4
    IL_02d1:  ldloc.s    V_16
    IL_02d3:  ldfld      int32 Game.CellFace::Z
    IL_02d8:  conv.r4
    IL_02d9:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_02de:  ldloc.1
    IL_02df:  conv.r4
    IL_02e0:  ldc.r4     15.
    IL_02e5:  div
    IL_02e6:  stloc.s    V_18
    IL_02e8:  ldloc.s    V_10
    IL_02ea:  call       float32 [Engine]Engine.MathUtils::Log(float32)
    IL_02ef:  ldc.r4     2.
    IL_02f4:  call       float32 [Engine]Engine.MathUtils::Log(float32)
    IL_02f9:  div
    IL_02fa:  ldc.r4     -1.
    IL_02ff:  ldc.r4     1.
    IL_0304:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_0309:  stloc.s    V_19
    IL_030b:  ldc.r4     0.5
    IL_0310:  ldc.r4     5.
    IL_0315:  ldloc.1
    IL_0316:  conv.r4
    IL_0317:  mul
    IL_0318:  ldc.r4     15.
    IL_031d:  div
    IL_031e:  add
    IL_031f:  stloc.s    V_20
    IL_0321:  ldarg.0
    IL_0322:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_0327:  callvirt   instance class Game.SubsystemAudio Game.SubsystemElectricity::get_SubsystemAudio()
    IL_032c:  ldloc.s    V_11
    IL_032e:  ldloc.s    V_18
    IL_0330:  ldloc.s    V_19
    IL_0332:  ldloc.s    V_17
    IL_0334:  ldloc.s    V_20
    IL_0336:  ldc.i4.1
    IL_0337:  callvirt   instance void Game.SubsystemAudio::PlaySound(string,
                                                                      float32,
                                                                      float32,
                                                                      valuetype [Engine]Engine.Vector3,
                                                                      float32,
                                                                      bool)
    IL_033c:  ldloc.1
    IL_033d:  ldc.i4.8
    IL_033e:  blt.s      IL_0347

    IL_0340:  ldc.r4     0.5
    IL_0345:  br.s       IL_034c

    IL_0347:  ldc.r4     0.25
    IL_034c:  stloc.s    V_21
    IL_034e:  ldc.r4     2.
    IL_0353:  ldc.r4     20.
    IL_0358:  ldloc.1
    IL_0359:  conv.r4
    IL_035a:  ldc.r4     15.
    IL_035f:  div
    IL_0360:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0365:  stloc.s    V_22
    IL_0367:  ldarg.0
    IL_0368:  ldfld      class Game.SubsystemNoise Game.SoundGeneratorElectricElement::m_subsystemNoise
    IL_036d:  ldloc.s    V_17
    IL_036f:  ldloc.s    V_21
    IL_0371:  ldloc.s    V_22
    IL_0373:  callvirt   instance void Game.SubsystemNoise::MakeNoise(valuetype [Engine]Engine.Vector3,
                                                                      float32,
                                                                      float32)
    IL_0378:  ldarg.0
    IL_0379:  ldfld      class Game.SoundParticleSystem Game.SoundGeneratorElectricElement::m_particleSystem
    IL_037e:  ldfld      class Game.SubsystemParticles Game.ParticleSystemBase::SubsystemParticles
    IL_0383:  brtrue.s   IL_0396

    IL_0385:  ldarg.0
    IL_0386:  ldfld      class Game.SubsystemParticles Game.SoundGeneratorElectricElement::m_subsystemParticles
    IL_038b:  ldarg.0
    IL_038c:  ldfld      class Game.SoundParticleSystem Game.SoundGeneratorElectricElement::m_particleSystem
    IL_0391:  callvirt   instance void Game.SubsystemParticles::AddParticleSystem(class Game.ParticleSystemBase)
    IL_0396:  ldloca.s   V_23
    IL_0398:  ldc.r4     22.5
    IL_039d:  ldloc.0
    IL_039e:  conv.r4
    IL_039f:  mul
    IL_03a0:  ldarg.0
    IL_03a1:  ldfld      class Game.Random Game.SoundGeneratorElectricElement::m_random
    IL_03a6:  ldc.r4     0.0
    IL_03ab:  ldc.r4     22.
    IL_03b0:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_03b5:  add
    IL_03b6:  ldc.r4     0.5
    IL_03bb:  ldloc.1
    IL_03bc:  conv.r4
    IL_03bd:  ldc.r4     30.
    IL_03c2:  div
    IL_03c3:  add
    IL_03c4:  ldc.r4     1.
    IL_03c9:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_03ce:  ldarg.0
    IL_03cf:  ldfld      class Game.SoundParticleSystem Game.SoundGeneratorElectricElement::m_particleSystem
    IL_03d4:  ldloc.s    V_23
    IL_03d6:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Color::HsvToRgb(valuetype [Engine]Engine.Vector3)
    IL_03db:  newobj     instance void [Engine]Engine.Color::.ctor(valuetype [Engine]Engine.Vector3)
    IL_03e0:  callvirt   instance void Game.SoundParticleSystem::AddNote(valuetype [Engine]Engine.Color)
    IL_03e5:  ldarg.0
    IL_03e6:  ldloc.3
    IL_03e7:  stfld      int32 Game.SoundGeneratorElectricElement::m_lastToneInput
    IL_03ec:  ldc.i4.0
    IL_03ed:  ret
  } // end of method SoundGeneratorElectricElement::Simulate

} // end of class Game.SoundGeneratorElectricElement