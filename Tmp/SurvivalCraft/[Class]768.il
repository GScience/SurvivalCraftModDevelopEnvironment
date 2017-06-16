.class public auto ansi beforefieldinit Game.TerrainChunkGeometry
       extends Game.TerrainGeometrySubsets
{
  .field public class [Engine]Engine.Graphics.VertexBuffer VertexBuffer
  .field public class [Engine]Engine.Graphics.IndexBuffer IndexBuffer
  .field public int64 GeometryHash
  .field public valuetype [Engine]Engine.BoundingBox GeometryBoundingBox
  .field public class Game.TerrainGeometrySubset[] AllSubsets
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // ´úÂë´óÐ¡       285 (0x11d)
    .maxstack  5
    .locals init (class Game.TerrainGeometrySubset V_0,
             class Game.TerrainGeometrySubset V_1,
             class Game.TerrainGeometrySubset V_2,
             class Game.TerrainGeometrySubset V_3,
             class Game.TerrainGeometrySubset V_4,
             class Game.TerrainGeometrySubset V_5,
             class Game.TerrainGeometrySubset V_6,
             int32 V_7)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.TerrainGeometrySubsets::.ctor()
    IL_0006:  newobj     instance void Game.TerrainGeometrySubset::.ctor()
    IL_000b:  stloc.0
    IL_000c:  newobj     instance void Game.TerrainGeometrySubset::.ctor()
    IL_0011:  stloc.1
    IL_0012:  newobj     instance void Game.TerrainGeometrySubset::.ctor()
    IL_0017:  stloc.2
    IL_0018:  newobj     instance void Game.TerrainGeometrySubset::.ctor()
    IL_001d:  stloc.3
    IL_001e:  newobj     instance void Game.TerrainGeometrySubset::.ctor()
    IL_0023:  stloc.s    V_4
    IL_0025:  newobj     instance void Game.TerrainGeometrySubset::.ctor()
    IL_002a:  stloc.s    V_5
    IL_002c:  newobj     instance void Game.TerrainGeometrySubset::.ctor()
    IL_0031:  stloc.s    V_6
    IL_0033:  ldarg.0
    IL_0034:  ldloc.s    V_4
    IL_0036:  stfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetOpaque
    IL_003b:  ldarg.0
    IL_003c:  ldloc.s    V_5
    IL_003e:  stfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetAlphaTest
    IL_0043:  ldarg.0
    IL_0044:  ldloc.s    V_6
    IL_0046:  stfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetTransparent
    IL_004b:  ldarg.0
    IL_004c:  ldc.i4.6
    IL_004d:  newarr     Game.TerrainGeometrySubset
    IL_0052:  dup
    IL_0053:  ldc.i4.0
    IL_0054:  ldloc.0
    IL_0055:  stelem.ref
    IL_0056:  dup
    IL_0057:  ldc.i4.1
    IL_0058:  ldloc.1
    IL_0059:  stelem.ref
    IL_005a:  dup
    IL_005b:  ldc.i4.2
    IL_005c:  ldloc.2
    IL_005d:  stelem.ref
    IL_005e:  dup
    IL_005f:  ldc.i4.3
    IL_0060:  ldloc.3
    IL_0061:  stelem.ref
    IL_0062:  dup
    IL_0063:  ldc.i4.4
    IL_0064:  ldloc.s    V_4
    IL_0066:  stelem.ref
    IL_0067:  dup
    IL_0068:  ldc.i4.5
    IL_0069:  ldloc.s    V_4
    IL_006b:  stelem.ref
    IL_006c:  stfld      class Game.TerrainGeometrySubset[] Game.TerrainGeometrySubsets::OpaqueSubsetsByFace
    IL_0071:  ldarg.0
    IL_0072:  ldc.i4.6
    IL_0073:  newarr     Game.TerrainGeometrySubset
    IL_0078:  dup
    IL_0079:  ldc.i4.0
    IL_007a:  ldloc.s    V_5
    IL_007c:  stelem.ref
    IL_007d:  dup
    IL_007e:  ldc.i4.1
    IL_007f:  ldloc.s    V_5
    IL_0081:  stelem.ref
    IL_0082:  dup
    IL_0083:  ldc.i4.2
    IL_0084:  ldloc.s    V_5
    IL_0086:  stelem.ref
    IL_0087:  dup
    IL_0088:  ldc.i4.3
    IL_0089:  ldloc.s    V_5
    IL_008b:  stelem.ref
    IL_008c:  dup
    IL_008d:  ldc.i4.4
    IL_008e:  ldloc.s    V_5
    IL_0090:  stelem.ref
    IL_0091:  dup
    IL_0092:  ldc.i4.5
    IL_0093:  ldloc.s    V_5
    IL_0095:  stelem.ref
    IL_0096:  stfld      class Game.TerrainGeometrySubset[] Game.TerrainGeometrySubsets::AlphaTestSubsetsByFace
    IL_009b:  ldarg.0
    IL_009c:  ldc.i4.6
    IL_009d:  newarr     Game.TerrainGeometrySubset
    IL_00a2:  dup
    IL_00a3:  ldc.i4.0
    IL_00a4:  ldloc.s    V_6
    IL_00a6:  stelem.ref
    IL_00a7:  dup
    IL_00a8:  ldc.i4.1
    IL_00a9:  ldloc.s    V_6
    IL_00ab:  stelem.ref
    IL_00ac:  dup
    IL_00ad:  ldc.i4.2
    IL_00ae:  ldloc.s    V_6
    IL_00b0:  stelem.ref
    IL_00b1:  dup
    IL_00b2:  ldc.i4.3
    IL_00b3:  ldloc.s    V_6
    IL_00b5:  stelem.ref
    IL_00b6:  dup
    IL_00b7:  ldc.i4.4
    IL_00b8:  ldloc.s    V_6
    IL_00ba:  stelem.ref
    IL_00bb:  dup
    IL_00bc:  ldc.i4.5
    IL_00bd:  ldloc.s    V_6
    IL_00bf:  stelem.ref
    IL_00c0:  stfld      class Game.TerrainGeometrySubset[] Game.TerrainGeometrySubsets::TransparentSubsetsByFace
    IL_00c5:  ldarg.0
    IL_00c6:  ldc.i4.7
    IL_00c7:  newarr     Game.TerrainGeometrySubset
    IL_00cc:  dup
    IL_00cd:  ldc.i4.0
    IL_00ce:  ldloc.0
    IL_00cf:  stelem.ref
    IL_00d0:  dup
    IL_00d1:  ldc.i4.1
    IL_00d2:  ldloc.1
    IL_00d3:  stelem.ref
    IL_00d4:  dup
    IL_00d5:  ldc.i4.2
    IL_00d6:  ldloc.2
    IL_00d7:  stelem.ref
    IL_00d8:  dup
    IL_00d9:  ldc.i4.3
    IL_00da:  ldloc.3
    IL_00db:  stelem.ref
    IL_00dc:  dup
    IL_00dd:  ldc.i4.4
    IL_00de:  ldloc.s    V_4
    IL_00e0:  stelem.ref
    IL_00e1:  dup
    IL_00e2:  ldc.i4.5
    IL_00e3:  ldloc.s    V_5
    IL_00e5:  stelem.ref
    IL_00e6:  dup
    IL_00e7:  ldc.i4.6
    IL_00e8:  ldloc.s    V_6
    IL_00ea:  stelem.ref
    IL_00eb:  stfld      class Game.TerrainGeometrySubset[] Game.TerrainChunkGeometry::AllSubsets
    IL_00f0:  ldc.i4.0
    IL_00f1:  stloc.s    V_7
    IL_00f3:  br.s       IL_0110

    IL_00f5:  ldarg.0
    IL_00f6:  ldfld      class Game.TerrainGeometrySubset[] Game.TerrainChunkGeometry::AllSubsets
    IL_00fb:  ldloc.s    V_7
    IL_00fd:  ldelem.ref
    IL_00fe:  ldc.i4.1
    IL_00ff:  ldloc.s    V_7
    IL_0101:  ldc.i4.s   31
    IL_0103:  and
    IL_0104:  shl
    IL_0105:  stfld      int32 Game.TerrainGeometrySubset::SubsetMask
    IL_010a:  ldloc.s    V_7
    IL_010c:  ldc.i4.1
    IL_010d:  add
    IL_010e:  stloc.s    V_7
    IL_0110:  ldloc.s    V_7
    IL_0112:  ldarg.0
    IL_0113:  ldfld      class Game.TerrainGeometrySubset[] Game.TerrainChunkGeometry::AllSubsets
    IL_0118:  ldlen
    IL_0119:  conv.i4
    IL_011a:  blt.s      IL_00f5

    IL_011c:  ret
  } // end of method TerrainChunkGeometry::.ctor

} // end of class Game.TerrainChunkGeometry