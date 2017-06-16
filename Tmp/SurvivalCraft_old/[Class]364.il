.class public auto ansi beforefieldinit Game.NotGateBlock
       extends Game.RotateableMountedElectricElementBlock
{
  .field public static literal int32 Index = int32(0x0000008C)
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldstr      "Models/Gates"
    IL_0006:  ldstr      "NotGate"
    IL_000b:  ldc.r4     0.375
    IL_0010:  call       instance void Game.RotateableMountedElectricElementBlock::.ctor(string,
                                                                                         string,
                                                                                         float32)
    IL_0015:  ret
  } // end of method NotGateBlock::.ctor

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
    IL_0012:  newobj     instance void Game.NotGateElectricElement::.ctor(class Game.SubsystemElectricity,
                                                                          valuetype Game.CellFace)
    IL_0017:  ret
  } // end of method NotGateBlock::CreateElectricElement

  .method public hidebysig virtual instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType> 
          GetConnectorType(class Game.SubsystemTerrain terrain,
                           int32 'value',
                           int32 face,
                           int32 connectorFace,
                           int32 x,
                           int32 y,
                           int32 z) cil managed
  {
    // 代码大小       141 (0x8d)
    .maxstack  3
    .locals init (int32 V_0,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection> V_1,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection> V_2,
             valuetype Game.ElectricConnectorDirection V_3,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType> V_4)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  stloc.0
    IL_0007:  ldarg.0
    IL_0008:  ldarg.2
    IL_0009:  callvirt   instance int32 Game.MountedElectricElementBlock::GetFace(int32)
    IL_000e:  ldarg.3
    IL_000f:  bne.un.s   IL_0082

    IL_0011:  ldarg.0
    IL_0012:  ldarg.2
    IL_0013:  callvirt   instance int32 Game.MountedElectricElementBlock::GetFace(int32)
    IL_0018:  ldloc.0
    IL_0019:  call       int32 Game.RotateableMountedElectricElementBlock::GetRotation(int32)
    IL_001e:  ldarg.s    connectorFace
    IL_0020:  call       valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection> Game.SubsystemElectricity::GetConnectorDirection(int32,
                                                                                                                                                                 int32,
                                                                                                                                                                 int32)
    IL_0025:  stloc.1
    IL_0026:  ldloc.1
    IL_0027:  stloc.2
    IL_0028:  ldc.i4.2
    IL_0029:  stloc.3
    IL_002a:  ldloca.s   V_2
    IL_002c:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::GetValueOrDefault()
    IL_0031:  ldloc.3
    IL_0032:  beq.s      IL_0037

    IL_0034:  ldc.i4.0
    IL_0035:  br.s       IL_003e

    IL_0037:  ldloca.s   V_2
    IL_0039:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_HasValue()
    IL_003e:  brfalse.s  IL_0047

    IL_0040:  ldc.i4.0
    IL_0041:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType>::.ctor(!0)
    IL_0046:  ret

    IL_0047:  ldloc.1
    IL_0048:  stloc.2
    IL_0049:  ldc.i4.0
    IL_004a:  stloc.3
    IL_004b:  ldloca.s   V_2
    IL_004d:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::GetValueOrDefault()
    IL_0052:  ldloc.3
    IL_0053:  beq.s      IL_0058

    IL_0055:  ldc.i4.0
    IL_0056:  br.s       IL_005f

    IL_0058:  ldloca.s   V_2
    IL_005a:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_HasValue()
    IL_005f:  brtrue.s   IL_007b

    IL_0061:  ldloc.1
    IL_0062:  stloc.2
    IL_0063:  ldc.i4.4
    IL_0064:  stloc.3
    IL_0065:  ldloca.s   V_2
    IL_0067:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::GetValueOrDefault()
    IL_006c:  ldloc.3
    IL_006d:  beq.s      IL_0072

    IL_006f:  ldc.i4.0
    IL_0070:  br.s       IL_0079

    IL_0072:  ldloca.s   V_2
    IL_0074:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_HasValue()
    IL_0079:  brfalse.s  IL_0082

    IL_007b:  ldc.i4.1
    IL_007c:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType>::.ctor(!0)
    IL_0081:  ret

    IL_0082:  ldloca.s   V_4
    IL_0084:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType>
    IL_008a:  ldloc.s    V_4
    IL_008c:  ret
  } // end of method NotGateBlock::GetConnectorType

} // end of class Game.NotGateBlock