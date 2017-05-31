.class public auto ansi beforefieldinit Game.TerrainGeometrySubset
       extends [System.Runtime]System.Object
{
  .field public class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Vertices
  .field public class [Engine]Engine.DynamicArray`1<uint16> Indices
  .field public int32 SubsetMask
  .field public int32 VertexOffset
  .field public int32 VerticesCount
  .field public int32 IndexOffset
  .field public int32 IndicesCount
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::.ctor()
    IL_0006:  stfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.TerrainGeometrySubset::Vertices
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void class [Engine]Engine.DynamicArray`1<uint16>::.ctor()
    IL_0011:  stfld      class [Engine]Engine.DynamicArray`1<uint16> Game.TerrainGeometrySubset::Indices
    IL_0016:  ldarg.0
    IL_0017:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_001c:  ret
  } // end of method TerrainGeometrySubset::.ctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> vertices,
                               class [Engine]Engine.DynamicArray`1<uint16> indices) cil managed
  {
    // 代码大小       43 (0x2b)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::.ctor()
    IL_0006:  stfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.TerrainGeometrySubset::Vertices
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void class [Engine]Engine.DynamicArray`1<uint16>::.ctor()
    IL_0011:  stfld      class [Engine]Engine.DynamicArray`1<uint16> Game.TerrainGeometrySubset::Indices
    IL_0016:  ldarg.0
    IL_0017:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_001c:  ldarg.0
    IL_001d:  ldarg.1
    IL_001e:  stfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.TerrainGeometrySubset::Vertices
    IL_0023:  ldarg.0
    IL_0024:  ldarg.2
    IL_0025:  stfld      class [Engine]Engine.DynamicArray`1<uint16> Game.TerrainGeometrySubset::Indices
    IL_002a:  ret
  } // end of method TerrainGeometrySubset::.ctor

} // end of class Game.TerrainGeometrySubset