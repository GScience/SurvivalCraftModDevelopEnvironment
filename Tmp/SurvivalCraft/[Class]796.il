.class public auto ansi beforefieldinit Game.TerrainCrackGeometry
       extends Game.TerrainGeometrySubsets
{
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // ´úÂë´óÐ¡       142 (0x8e)
    .maxstack  5
    .locals init (class Game.TerrainGeometrySubset V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.TerrainGeometrySubsets::.ctor()
    IL_0006:  newobj     instance void Game.TerrainGeometrySubset::.ctor()
    IL_000b:  stloc.0
    IL_000c:  ldarg.0
    IL_000d:  ldloc.0
    IL_000e:  stfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetOpaque
    IL_0013:  ldarg.0
    IL_0014:  ldloc.0
    IL_0015:  stfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetAlphaTest
    IL_001a:  ldarg.0
    IL_001b:  ldloc.0
    IL_001c:  stfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetTransparent
    IL_0021:  ldarg.0
    IL_0022:  ldc.i4.6
    IL_0023:  newarr     Game.TerrainGeometrySubset
    IL_0028:  dup
    IL_0029:  ldc.i4.0
    IL_002a:  ldloc.0
    IL_002b:  stelem.ref
    IL_002c:  dup
    IL_002d:  ldc.i4.1
    IL_002e:  ldloc.0
    IL_002f:  stelem.ref
    IL_0030:  dup
    IL_0031:  ldc.i4.2
    IL_0032:  ldloc.0
    IL_0033:  stelem.ref
    IL_0034:  dup
    IL_0035:  ldc.i4.3
    IL_0036:  ldloc.0
    IL_0037:  stelem.ref
    IL_0038:  dup
    IL_0039:  ldc.i4.4
    IL_003a:  ldloc.0
    IL_003b:  stelem.ref
    IL_003c:  dup
    IL_003d:  ldc.i4.5
    IL_003e:  ldloc.0
    IL_003f:  stelem.ref
    IL_0040:  stfld      class Game.TerrainGeometrySubset[] Game.TerrainGeometrySubsets::OpaqueSubsetsByFace
    IL_0045:  ldarg.0
    IL_0046:  ldc.i4.6
    IL_0047:  newarr     Game.TerrainGeometrySubset
    IL_004c:  dup
    IL_004d:  ldc.i4.0
    IL_004e:  ldloc.0
    IL_004f:  stelem.ref
    IL_0050:  dup
    IL_0051:  ldc.i4.1
    IL_0052:  ldloc.0
    IL_0053:  stelem.ref
    IL_0054:  dup
    IL_0055:  ldc.i4.2
    IL_0056:  ldloc.0
    IL_0057:  stelem.ref
    IL_0058:  dup
    IL_0059:  ldc.i4.3
    IL_005a:  ldloc.0
    IL_005b:  stelem.ref
    IL_005c:  dup
    IL_005d:  ldc.i4.4
    IL_005e:  ldloc.0
    IL_005f:  stelem.ref
    IL_0060:  dup
    IL_0061:  ldc.i4.5
    IL_0062:  ldloc.0
    IL_0063:  stelem.ref
    IL_0064:  stfld      class Game.TerrainGeometrySubset[] Game.TerrainGeometrySubsets::AlphaTestSubsetsByFace
    IL_0069:  ldarg.0
    IL_006a:  ldc.i4.6
    IL_006b:  newarr     Game.TerrainGeometrySubset
    IL_0070:  dup
    IL_0071:  ldc.i4.0
    IL_0072:  ldloc.0
    IL_0073:  stelem.ref
    IL_0074:  dup
    IL_0075:  ldc.i4.1
    IL_0076:  ldloc.0
    IL_0077:  stelem.ref
    IL_0078:  dup
    IL_0079:  ldc.i4.2
    IL_007a:  ldloc.0
    IL_007b:  stelem.ref
    IL_007c:  dup
    IL_007d:  ldc.i4.3
    IL_007e:  ldloc.0
    IL_007f:  stelem.ref
    IL_0080:  dup
    IL_0081:  ldc.i4.4
    IL_0082:  ldloc.0
    IL_0083:  stelem.ref
    IL_0084:  dup
    IL_0085:  ldc.i4.5
    IL_0086:  ldloc.0
    IL_0087:  stelem.ref
    IL_0088:  stfld      class Game.TerrainGeometrySubset[] Game.TerrainGeometrySubsets::TransparentSubsetsByFace
    IL_008d:  ret
  } // end of method TerrainCrackGeometry::.ctor

} // end of class Game.TerrainCrackGeometry