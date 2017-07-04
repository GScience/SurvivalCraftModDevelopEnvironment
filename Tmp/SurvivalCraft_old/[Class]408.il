.class public auto ansi beforefieldinit Game.SoundGeneratorBlock
       extends Game.RotateableMountedElectricElementBlock
{
  .field public static literal int32 Index = int32(0x000000B7)
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldstr      "Models/Gates"
    IL_0006:  ldstr      "SoundGenerator"
    IL_000b:  ldc.r4     0.5
    IL_0010:  call       instance void Game.RotateableMountedElectricElementBlock::.ctor(string,
                                                                                         string,
                                                                                         float32)
    IL_0015:  ret
  } // end of method SoundGeneratorBlock::.ctor

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
    IL_0012:  newobj     instance void Game.SoundGeneratorElectricElement::.ctor(class Game.SubsystemElectricity,
                                                                                 valuetype Game.CellFace)
    IL_0017:  ret
  } // end of method SoundGeneratorBlock::CreateElectricElement

  .method public hidebysig virtual instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType> 
          GetConnectorType(class Game.SubsystemTerrain terrain,
                           int32 'value',
                           int32 face,
                           int32 connectorFace,
                           int32 x,
                           int32 y,
                           int32 z) cil managed
  {
    // 代码大小       189 (0xbd)
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
    IL_000f:  bne.un     IL_00b2

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
    IL_002b:  ldc.i4.2
    IL_002c:  stloc.3
    IL_002d:  ldloca.s   V_2
    IL_002f:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::GetValueOrDefault()
    IL_0034:  ldloc.3
    IL_0035:  beq.s      IL_003a

    IL_0037:  ldc.i4.0
    IL_0038:  br.s       IL_0041

    IL_003a:  ldloca.s   V_2
    IL_003c:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_HasValue()
    IL_0041:  brtrue.s   IL_00ab

    IL_0043:  ldloc.1
    IL_0044:  stloc.2
    IL_0045:  ldc.i4.0
    IL_0046:  stloc.3
    IL_0047:  ldloca.s   V_2
    IL_0049:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::GetValueOrDefault()
    IL_004e:  ldloc.3
    IL_004f:  beq.s      IL_0054

    IL_0051:  ldc.i4.0
    IL_0052:  br.s       IL_005b

    IL_0054:  ldloca.s   V_2
    IL_0056:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_HasValue()
    IL_005b:  brtrue.s   IL_00ab

    IL_005d:  ldloc.1
    IL_005e:  stloc.2
    IL_005f:  ldc.i4.3
    IL_0060:  stloc.3
    IL_0061:  ldloca.s   V_2
    IL_0063:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::GetValueOrDefault()
    IL_0068:  ldloc.3
    IL_0069:  beq.s      IL_006e

    IL_006b:  ldc.i4.0
    IL_006c:  br.s       IL_0075

    IL_006e:  ldloca.s   V_2
    IL_0070:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_HasValue()
    IL_0075:  brtrue.s   IL_00ab

    IL_0077:  ldloc.1
    IL_0078:  stloc.2
    IL_0079:  ldc.i4.1
    IL_007a:  stloc.3
    IL_007b:  ldloca.s   V_2
    IL_007d:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::GetValueOrDefault()
    IL_0082:  ldloc.3
    IL_0083:  beq.s      IL_0088

    IL_0085:  ldc.i4.0
    IL_0086:  br.s       IL_008f

    IL_0088:  ldloca.s   V_2
    IL_008a:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_HasValue()
    IL_008f:  brtrue.s   IL_00ab

    IL_0091:  ldloc.1
    IL_0092:  stloc.2
    IL_0093:  ldc.i4.4
    IL_0094:  stloc.3
    IL_0095:  ldloca.s   V_2
    IL_0097:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::GetValueOrDefault()
    IL_009c:  ldloc.3
    IL_009d:  beq.s      IL_00a2

    IL_009f:  ldc.i4.0
    IL_00a0:  br.s       IL_00a9

    IL_00a2:  ldloca.s   V_2
    IL_00a4:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_HasValue()
    IL_00a9:  brfalse.s  IL_00b2

    IL_00ab:  ldc.i4.0
    IL_00ac:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType>::.ctor(!0)
    IL_00b1:  ret

    IL_00b2:  ldloca.s   V_4
    IL_00b4:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType>
    IL_00ba:  ldloc.s    V_4
    IL_00bc:  ret
  } // end of method SoundGeneratorBlock::GetConnectorType

} // end of class Game.SoundGeneratorBlock