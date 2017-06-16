.class public auto ansi beforefieldinit Game.FurnitureGeometry
       extends [System.Runtime]System.Object
{
  .field public class Game.BlockMesh[] SubsetOpaqueByFace
  .field public class Game.BlockMesh[] SubsetAlphaTestByFace
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // ´úÂë´óÐ¡       31 (0x1f)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.6
    IL_0002:  newarr     Game.BlockMesh
    IL_0007:  stfld      class Game.BlockMesh[] Game.FurnitureGeometry::SubsetOpaqueByFace
    IL_000c:  ldarg.0
    IL_000d:  ldc.i4.6
    IL_000e:  newarr     Game.BlockMesh
    IL_0013:  stfld      class Game.BlockMesh[] Game.FurnitureGeometry::SubsetAlphaTestByFace
    IL_0018:  ldarg.0
    IL_0019:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_001e:  ret
  } // end of method FurnitureGeometry::.ctor

} // end of class Game.FurnitureGeometry