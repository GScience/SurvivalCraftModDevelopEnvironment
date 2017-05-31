.class public auto ansi beforefieldinit Game.ElectricConnection
       extends [System.Runtime]System.Object
{
  .field public valuetype Game.CellFace CellFace
  .field public int32 ConnectorFace
  .field public valuetype Game.ElectricConnectorType ConnectorType
  .field public class Game.ElectricElement NeighborElectricElement
  .field public valuetype Game.CellFace NeighborCellFace
  .field public int32 NeighborConnectorFace
  .field public valuetype Game.ElectricConnectorType NeighborConnectorType
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // ´úÂë´óÐ¡       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0006:  ret
  } // end of method ElectricConnection::.ctor

} // end of class Game.ElectricConnection