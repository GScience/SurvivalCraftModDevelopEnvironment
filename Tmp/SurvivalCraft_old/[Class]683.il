.class public auto ansi beforefieldinit Game.ElectricConnectionPath
       extends [System.Runtime]System.Object
{
  .field public initonly int32 NeighborOffsetX
  .field public initonly int32 NeighborOffsetY
  .field public initonly int32 NeighborOffsetZ
  .field public initonly int32 NeighborFace
  .field public initonly int32 ConnectorFace
  .field public initonly int32 NeighborConnectorFace
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(int32 neighborOffsetX,
                               int32 neighborOffsetY,
                               int32 neighborOffsetZ,
                               int32 neighborFace,
                               int32 connectorFace,
                               int32 neighborConnectorFace) cil managed
  {
    // ´úÂë´óÐ¡       52 (0x34)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  stfld      int32 Game.ElectricConnectionPath::NeighborOffsetX
    IL_000d:  ldarg.0
    IL_000e:  ldarg.2
    IL_000f:  stfld      int32 Game.ElectricConnectionPath::NeighborOffsetY
    IL_0014:  ldarg.0
    IL_0015:  ldarg.3
    IL_0016:  stfld      int32 Game.ElectricConnectionPath::NeighborOffsetZ
    IL_001b:  ldarg.0
    IL_001c:  ldarg.s    neighborFace
    IL_001e:  stfld      int32 Game.ElectricConnectionPath::NeighborFace
    IL_0023:  ldarg.0
    IL_0024:  ldarg.s    connectorFace
    IL_0026:  stfld      int32 Game.ElectricConnectionPath::ConnectorFace
    IL_002b:  ldarg.0
    IL_002c:  ldarg.s    neighborConnectorFace
    IL_002e:  stfld      int32 Game.ElectricConnectionPath::NeighborConnectorFace
    IL_0033:  ret
  } // end of method ElectricConnectionPath::.ctor

} // end of class Game.ElectricConnectionPath