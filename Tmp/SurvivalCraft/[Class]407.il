.class public auto ansi beforefieldinit Game.AnalogToDigitalConverterBlock
       extends Game.RotateableMountedElectricElementBlock
{
  .field public static literal int32 Index = int32(0x000000B5)
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldstr      "Models/Gates"
    IL_0006:  ldstr      "AnalogToDigitalConverter"
    IL_000b:  ldc.r4     0.375
    IL_0010:  call       instance void Game.RotateableMountedElectricElementBlock::.ctor(string,
                                                                                         string,
                                                                                         float32)
    IL_0015:  ret
  } // end of method AnalogToDigitalConverterBlock::.ctor

  .method public hidebysig virtual instance class Game.ElectricElement 
          CreateElectricElement(class Game.SubsystemElectricity subsystemElectricity,
                                int32 'value',
                                int32 x,
                                int32 y,
                                int32 z) cil managed
  {
    // 代码大小       24 (0x18)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.3
    IL_0002:  ldarg.s    y
    IL_0004:  ldarg.s    z
    IL_0006:  ldarg.0
    IL_0007:  ldarg.2
    IL_0008:  callvirt   instance int32 Game.MountedElectricElementBlock::GetFace(int32)
    IL_000d:  newobj     instance void Game.CellFace::.ctor(int32,
                                                            int32,
                                                            int32,
                                                            int32)
    IL_0012:  newobj     instance void Game.AnalogToDigitalConverterElectricElement::.ctor(class Game.SubsystemElectricity,
                                                                                           valuetype Game.CellFace)
    IL_0017:  ret
  } // end of method AnalogToDigitalConverterBlock::CreateElectricElement

  .method public hidebysig virtual instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType> 
          GetConnectorType(class Game.SubsystemTerrain terrain,
                           int32 'value',
                           int32 face,
                           int32 connectorFace,
                           int32 x,
                           int32 y,
                           int32 z) cil managed
  {
    // 代码大小       196 (0xc4)
    .maxstack  3
    .locals init (int32 V_0,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection> V_1,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection> V_2,
             valuetype Game.ElectricConnectorDirection V_3,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType> V_4)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  stloc.0
    IL_0007:  ldarg.0
    IL_0008:  ldarg.2
    IL_0009:  callvirt   instance int32 Game.MountedElectricElementBlock::GetFace(int32)
    IL_000e:  ldarg.3
    IL_000f:  bne.un     IL_00b9

    IL_0014:  ldarg.0
    IL_0015:  ldarg.2
    IL_0016:  callvirt   instance int32 Game.MountedElectricElementBlock::GetFace(int32)
    IL_001b:  ldloc.0
    IL_001c:  call       int32 Game.RotateableMountedElectricElementBlock::GetRotation(int32)
    IL_0021:  ldarg.s    connectorFace
    IL_0023:  call       valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection> Game.SubsystemElectricity::GetConnectorDirection(int32,
                                                                                                                                                                 int32,
                                                                                                                                                                 int32)
    IL_0028:  stloc.1
    IL_0029:  ldloc.1
    IL_002a:  stloc.2
    IL_002b:  ldc.i4.4
    IL_002c:  stloc.3
    IL_002d:  ldloca.s   V_2
    IL_002f:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::GetValueOrDefault()
    IL_0034:  ldloc.3
    IL_0035:  beq.s      IL_003a

    IL_0037:  ldc.i4.0
    IL_0038:  br.s       IL_0041

    IL_003a:  ldloca.s   V_2
    IL_003c:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_HasValue()
    IL_0041:  brfalse.s  IL_004a

    IL_0043:  ldc.i4.0
    IL_0044:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType>::.ctor(!0)
    IL_0049:  ret

    IL_004a:  ldloc.1
    IL_004b:  stloc.2
    IL_004c:  ldc.i4.2
    IL_004d:  stloc.3
    IL_004e:  ldloca.s   V_2
    IL_0050:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::GetValueOrDefault()
    IL_0055:  ldloc.3
    IL_0056:  beq.s      IL_005b

    IL_0058:  ldc.i4.0
    IL_0059:  br.s       IL_0062

    IL_005b:  ldloca.s   V_2
    IL_005d:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_HasValue()
    IL_0062:  brtrue.s   IL_00b2

    IL_0064:  ldloc.1
    IL_0065:  stloc.2
    IL_0066:  ldc.i4.0
    IL_0067:  stloc.3
    IL_0068:  ldloca.s   V_2
    IL_006a:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::GetValueOrDefault()
    IL_006f:  ldloc.3
    IL_0070:  beq.s      IL_0075

    IL_0072:  ldc.i4.0
    IL_0073:  br.s       IL_007c

    IL_0075:  ldloca.s   V_2
    IL_0077:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_HasValue()
    IL_007c:  brtrue.s   IL_00b2

    IL_007e:  ldloc.1
    IL_007f:  stloc.2
    IL_0080:  ldc.i4.3
    IL_0081:  stloc.3
    IL_0082:  ldloca.s   V_2
    IL_0084:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::GetValueOrDefault()
    IL_0089:  ldloc.3
    IL_008a:  beq.s      IL_008f

    IL_008c:  ldc.i4.0
    IL_008d:  br.s       IL_0096

    IL_008f:  ldloca.s   V_2
    IL_0091:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_HasValue()
    IL_0096:  brtrue.s   IL_00b2

    IL_0098:  ldloc.1
    IL_0099:  stloc.2
    IL_009a:  ldc.i4.1
    IL_009b:  stloc.3
    IL_009c:  ldloca.s   V_2
    IL_009e:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::GetValueOrDefault()
    IL_00a3:  ldloc.3
    IL_00a4:  beq.s      IL_00a9

    IL_00a6:  ldc.i4.0
    IL_00a7:  br.s       IL_00b0

    IL_00a9:  ldloca.s   V_2
    IL_00ab:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_HasValue()
    IL_00b0:  brfalse.s  IL_00b9

    IL_00b2:  ldc.i4.1
    IL_00b3:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType>::.ctor(!0)
    IL_00b8:  ret

    IL_00b9:  ldloca.s   V_4
    IL_00bb:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType>
    IL_00c1:  ldloc.s    V_4
    IL_00c3:  ret
  } // end of method AnalogToDigitalConverterBlock::GetConnectorType

} // end of class Game.AnalogToDigitalConverterBlock