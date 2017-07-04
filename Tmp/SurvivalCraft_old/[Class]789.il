.class public auto ansi beforefieldinit Game.Terrain
       extends [System.Runtime]System.Object
{
  .class auto ansi nested private beforefieldinit ChunksStorage
         extends [System.Runtime]System.Object
  {
    .field private static literal int32 Shift = int32(0x00000008)
    .field private static literal int32 Capacity = int32(0x00010000)
    .field private static literal int32 CapacityMinusOne = int32(0x0000FFFF)
    .field private class Game.TerrainChunk[] m_array
    .method public hidebysig instance class Game.TerrainChunk 
            Get(int32 x,
                int32 y) cil managed
    {
      // 代码大小       68 (0x44)
      .maxstack  3
      .locals init (int32 V_0,
               class Game.TerrainChunk V_1)
      IL_0000:  ldarg.1
      IL_0001:  ldarg.2
      IL_0002:  ldc.i4.8
      IL_0003:  shl
      IL_0004:  add
      IL_0005:  ldc.i4     0xffff
      IL_000a:  and
      IL_000b:  stloc.0
      IL_000c:  ldarg.0
      IL_000d:  ldfld      class Game.TerrainChunk[] Game.Terrain/ChunksStorage::m_array
      IL_0012:  ldloc.0
      IL_0013:  ldelem.ref
      IL_0014:  stloc.1
      IL_0015:  ldloc.1
      IL_0016:  brtrue.s   IL_001a

      IL_0018:  ldnull
      IL_0019:  ret

      IL_001a:  ldloc.1
      IL_001b:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Coords
      IL_0020:  ldfld      int32 [Engine]Engine.Point2::X
      IL_0025:  ldarg.1
      IL_0026:  bne.un.s   IL_0038

      IL_0028:  ldloc.1
      IL_0029:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Coords
      IL_002e:  ldfld      int32 [Engine]Engine.Point2::Y
      IL_0033:  ldarg.2
      IL_0034:  bne.un.s   IL_0038

      IL_0036:  ldloc.1
      IL_0037:  ret

      IL_0038:  ldloc.0
      IL_0039:  ldc.i4.1
      IL_003a:  add
      IL_003b:  ldc.i4     0xffff
      IL_0040:  and
      IL_0041:  stloc.0
      IL_0042:  br.s       IL_000c
    } // end of method ChunksStorage::Get

    .method public hidebysig instance void 
            Add(int32 x,
                int32 y,
                class Game.TerrainChunk chunk) cil managed
    {
      // 代码大小       44 (0x2c)
      .maxstack  3
      .locals init (int32 V_0)
      IL_0000:  ldarg.1
      IL_0001:  ldarg.2
      IL_0002:  ldc.i4.8
      IL_0003:  shl
      IL_0004:  add
      IL_0005:  ldc.i4     0xffff
      IL_000a:  and
      IL_000b:  stloc.0
      IL_000c:  ldarg.0
      IL_000d:  ldfld      class Game.TerrainChunk[] Game.Terrain/ChunksStorage::m_array
      IL_0012:  ldloc.0
      IL_0013:  ldelem.ref
      IL_0014:  brtrue.s   IL_0020

      IL_0016:  ldarg.0
      IL_0017:  ldfld      class Game.TerrainChunk[] Game.Terrain/ChunksStorage::m_array
      IL_001c:  ldloc.0
      IL_001d:  ldarg.3
      IL_001e:  stelem.ref
      IL_001f:  ret

      IL_0020:  ldloc.0
      IL_0021:  ldc.i4.1
      IL_0022:  add
      IL_0023:  ldc.i4     0xffff
      IL_0028:  and
      IL_0029:  stloc.0
      IL_002a:  br.s       IL_000c
    } // end of method ChunksStorage::Add

    .method public hidebysig instance void 
            Remove(int32 x,
                   int32 y) cil managed
    {
      // 代码大小       75 (0x4b)
      .maxstack  3
      .locals init (int32 V_0,
               class Game.TerrainChunk V_1)
      IL_0000:  ldarg.1
      IL_0001:  ldarg.2
      IL_0002:  ldc.i4.8
      IL_0003:  shl
      IL_0004:  add
      IL_0005:  ldc.i4     0xffff
      IL_000a:  and
      IL_000b:  stloc.0
      IL_000c:  ldarg.0
      IL_000d:  ldfld      class Game.TerrainChunk[] Game.Terrain/ChunksStorage::m_array
      IL_0012:  ldloc.0
      IL_0013:  ldelem.ref
      IL_0014:  stloc.1
      IL_0015:  ldloc.1
      IL_0016:  brtrue.s   IL_0019

      IL_0018:  ret

      IL_0019:  ldloc.1
      IL_001a:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Coords
      IL_001f:  ldfld      int32 [Engine]Engine.Point2::X
      IL_0024:  ldarg.1
      IL_0025:  bne.un.s   IL_003f

      IL_0027:  ldloc.1
      IL_0028:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Coords
      IL_002d:  ldfld      int32 [Engine]Engine.Point2::Y
      IL_0032:  ldarg.2
      IL_0033:  bne.un.s   IL_003f

      IL_0035:  ldarg.0
      IL_0036:  ldfld      class Game.TerrainChunk[] Game.Terrain/ChunksStorage::m_array
      IL_003b:  ldloc.0
      IL_003c:  ldnull
      IL_003d:  stelem.ref
      IL_003e:  ret

      IL_003f:  ldloc.0
      IL_0040:  ldc.i4.1
      IL_0041:  add
      IL_0042:  ldc.i4     0xffff
      IL_0047:  and
      IL_0048:  stloc.0
      IL_0049:  br.s       IL_000c
    } // end of method ChunksStorage::Remove

    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       23 (0x17)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldc.i4     0x10000
      IL_0006:  newarr     Game.TerrainChunk
      IL_000b:  stfld      class Game.TerrainChunk[] Game.Terrain/ChunksStorage::m_array
      IL_0010:  ldarg.0
      IL_0011:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0016:  ret
    } // end of method ChunksStorage::.ctor

  } // end of class ChunksStorage

  .field private static literal int32 ContentsMask = int32(0x000003FF)
  .field private static literal int32 LightMask = int32(0x00003C00)
  .field private static literal int32 LightShift = int32(0x0000000A)
  .field private static literal int32 DataMask = int32(0xFFFFC000)
  .field private static literal int32 DataShift = int32(0x0000000E)
  .field private static literal int32 TopHeightMask = int32(0x000000FF)
  .field private static literal int32 TopHeightShift = int32(0x00000000)
  .field private static literal int32 TemperatureMask = int32(0x00000F00)
  .field private static literal int32 TemperatureShift = int32(0x00000008)
  .field private static literal int32 HumidityMask = int32(0x0000F000)
  .field private static literal int32 HumidityShift = int32(0x0000000C)
  .field private static literal int32 BottomHeightMask = int32(0x00FF0000)
  .field private static literal int32 BottomHeightShift = int32(0x00000010)
  .field private class Game.Terrain/ChunksStorage m_allChunks
  .field private class [System.Collections]System.Collections.Generic.HashSet`1<class Game.TerrainChunk> m_allocatedChunks
  .field private class Game.TerrainChunk[] m_allocatedChunksArray
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  newobj     instance void Game.Terrain/ChunksStorage::.ctor()
    IL_000c:  stfld      class Game.Terrain/ChunksStorage Game.Terrain::m_allChunks
    IL_0011:  ldarg.0
    IL_0012:  newobj     instance void class [System.Collections]System.Collections.Generic.HashSet`1<class Game.TerrainChunk>::.ctor()
    IL_0017:  stfld      class [System.Collections]System.Collections.Generic.HashSet`1<class Game.TerrainChunk> Game.Terrain::m_allocatedChunks
    IL_001c:  ret
  } // end of method Terrain::.ctor

  .method public hidebysig specialname instance class Game.TerrainChunk[] 
          get_AllocatedChunks() cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.TerrainChunk[] Game.Terrain::m_allocatedChunksArray
    IL_0006:  brtrue.s   IL_0019

    IL_0008:  ldarg.0
    IL_0009:  ldarg.0
    IL_000a:  ldfld      class [System.Collections]System.Collections.Generic.HashSet`1<class Game.TerrainChunk> Game.Terrain::m_allocatedChunks
    IL_000f:  call       !!0[] [System.Linq]System.Linq.Enumerable::ToArray<class Game.TerrainChunk>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_0014:  stfld      class Game.TerrainChunk[] Game.Terrain::m_allocatedChunksArray
    IL_0019:  ldarg.0
    IL_001a:  ldfld      class Game.TerrainChunk[] Game.Terrain::m_allocatedChunksArray
    IL_001f:  ret
  } // end of method Terrain::get_AllocatedChunks

  .method public hidebysig instance class Game.TerrainChunk 
          GetNextChunk(int32 chunkX,
                       int32 chunkZ) cil managed
  {
    // 代码大小       135 (0x87)
    .maxstack  3
    .locals init (class Game.TerrainChunk V_0,
             class Game.TerrainChunk[] V_1,
             int32 V_2,
             int32 V_3)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  call       instance class Game.TerrainChunk Game.Terrain::GetChunkAtCoords(int32,
                                                                                         int32)
    IL_0008:  stloc.0
    IL_0009:  ldloc.0
    IL_000a:  brfalse.s  IL_000e

    IL_000c:  ldloc.0
    IL_000d:  ret

    IL_000e:  ldarg.0
    IL_000f:  call       instance class Game.TerrainChunk[] Game.Terrain::get_AllocatedChunks()
    IL_0014:  stloc.1
    IL_0015:  ldc.i4.0
    IL_0016:  stloc.2
    IL_0017:  br.s       IL_0051

    IL_0019:  ldloc.1
    IL_001a:  ldloc.2
    IL_001b:  ldelem.ref
    IL_001c:  ldfld      valuetype [Engine]Engine.Point2 Game.TerrainChunk::Coords
    IL_0021:  ldarg.1
    IL_0022:  ldarg.2
    IL_0023:  newobj     instance void [Engine]Engine.Point2::.ctor(int32,
                                                                    int32)
    IL_0028:  call       int32 Game.Terrain::ComparePoints(valuetype [Engine]Engine.Point2,
                                                           valuetype [Engine]Engine.Point2)
    IL_002d:  ldc.i4.0
    IL_002e:  blt.s      IL_004d

    IL_0030:  ldloc.0
    IL_0031:  brfalse.s  IL_0049

    IL_0033:  ldloc.1
    IL_0034:  ldloc.2
    IL_0035:  ldelem.ref
    IL_0036:  ldfld      valuetype [Engine]Engine.Point2 Game.TerrainChunk::Coords
    IL_003b:  ldloc.0
    IL_003c:  ldfld      valuetype [Engine]Engine.Point2 Game.TerrainChunk::Coords
    IL_0041:  call       int32 Game.Terrain::ComparePoints(valuetype [Engine]Engine.Point2,
                                                           valuetype [Engine]Engine.Point2)
    IL_0046:  ldc.i4.0
    IL_0047:  bge.s      IL_004d

    IL_0049:  ldloc.1
    IL_004a:  ldloc.2
    IL_004b:  ldelem.ref
    IL_004c:  stloc.0
    IL_004d:  ldloc.2
    IL_004e:  ldc.i4.1
    IL_004f:  add
    IL_0050:  stloc.2
    IL_0051:  ldloc.2
    IL_0052:  ldloc.1
    IL_0053:  ldlen
    IL_0054:  conv.i4
    IL_0055:  blt.s      IL_0019

    IL_0057:  ldloc.0
    IL_0058:  brtrue.s   IL_0085

    IL_005a:  ldc.i4.0
    IL_005b:  stloc.3
    IL_005c:  br.s       IL_007f

    IL_005e:  ldloc.0
    IL_005f:  brfalse.s  IL_0077

    IL_0061:  ldloc.1
    IL_0062:  ldloc.3
    IL_0063:  ldelem.ref
    IL_0064:  ldfld      valuetype [Engine]Engine.Point2 Game.TerrainChunk::Coords
    IL_0069:  ldloc.0
    IL_006a:  ldfld      valuetype [Engine]Engine.Point2 Game.TerrainChunk::Coords
    IL_006f:  call       int32 Game.Terrain::ComparePoints(valuetype [Engine]Engine.Point2,
                                                           valuetype [Engine]Engine.Point2)
    IL_0074:  ldc.i4.0
    IL_0075:  bge.s      IL_007b

    IL_0077:  ldloc.1
    IL_0078:  ldloc.3
    IL_0079:  ldelem.ref
    IL_007a:  stloc.0
    IL_007b:  ldloc.3
    IL_007c:  ldc.i4.1
    IL_007d:  add
    IL_007e:  stloc.3
    IL_007f:  ldloc.3
    IL_0080:  ldloc.1
    IL_0081:  ldlen
    IL_0082:  conv.i4
    IL_0083:  blt.s      IL_005e

    IL_0085:  ldloc.0
    IL_0086:  ret
  } // end of method Terrain::GetNextChunk

  .method public hidebysig instance class Game.TerrainChunk 
          GetChunkAtCoords(int32 chunkX,
                           int32 chunkZ) cil managed
  {
    // 代码大小       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.Terrain/ChunksStorage Game.Terrain::m_allChunks
    IL_0006:  ldarg.1
    IL_0007:  ldarg.2
    IL_0008:  callvirt   instance class Game.TerrainChunk Game.Terrain/ChunksStorage::Get(int32,
                                                                                          int32)
    IL_000d:  ret
  } // end of method Terrain::GetChunkAtCoords

  .method public hidebysig instance class Game.TerrainChunk 
          GetChunkAtCell(int32 x,
                         int32 z) cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldc.i4.4
    IL_0003:  shr
    IL_0004:  ldarg.2
    IL_0005:  ldc.i4.4
    IL_0006:  shr
    IL_0007:  call       instance class Game.TerrainChunk Game.Terrain::GetChunkAtCoords(int32,
                                                                                         int32)
    IL_000c:  ret
  } // end of method Terrain::GetChunkAtCell

  .method public hidebysig instance class Game.TerrainChunk 
          AllocateChunk(int32 chunkX,
                        int32 chunkZ) cil managed
  {
    // 代码大小       66 (0x42)
    .maxstack  4
    .locals init (class Game.TerrainChunk V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  call       instance class Game.TerrainChunk Game.Terrain::GetChunkAtCoords(int32,
                                                                                         int32)
    IL_0008:  brfalse.s  IL_0015

    IL_000a:  ldstr      "Chunk already allocated."
    IL_000f:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0014:  throw

    IL_0015:  ldarg.0
    IL_0016:  ldarg.1
    IL_0017:  ldarg.2
    IL_0018:  newobj     instance void Game.TerrainChunk::.ctor(class Game.Terrain,
                                                                int32,
                                                                int32)
    IL_001d:  stloc.0
    IL_001e:  ldarg.0
    IL_001f:  ldfld      class [System.Collections]System.Collections.Generic.HashSet`1<class Game.TerrainChunk> Game.Terrain::m_allocatedChunks
    IL_0024:  ldloc.0
    IL_0025:  callvirt   instance bool class [System.Collections]System.Collections.Generic.HashSet`1<class Game.TerrainChunk>::Add(!0)
    IL_002a:  pop
    IL_002b:  ldarg.0
    IL_002c:  ldfld      class Game.Terrain/ChunksStorage Game.Terrain::m_allChunks
    IL_0031:  ldarg.1
    IL_0032:  ldarg.2
    IL_0033:  ldloc.0
    IL_0034:  callvirt   instance void Game.Terrain/ChunksStorage::Add(int32,
                                                                       int32,
                                                                       class Game.TerrainChunk)
    IL_0039:  ldarg.0
    IL_003a:  ldnull
    IL_003b:  stfld      class Game.TerrainChunk[] Game.Terrain::m_allocatedChunksArray
    IL_0040:  ldloc.0
    IL_0041:  ret
  } // end of method Terrain::AllocateChunk

  .method public hidebysig instance void 
          FreeChunk(class Game.TerrainChunk chunk) cil managed
  {
    // 代码大小       66 (0x42)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.HashSet`1<class Game.TerrainChunk> Game.Terrain::m_allocatedChunks
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance bool class [System.Collections]System.Collections.Generic.HashSet`1<class Game.TerrainChunk>::Remove(!0)
    IL_000c:  brtrue.s   IL_0019

    IL_000e:  ldstr      "Chunk not allocated."
    IL_0013:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0018:  throw

    IL_0019:  ldarg.0
    IL_001a:  ldfld      class Game.Terrain/ChunksStorage Game.Terrain::m_allChunks
    IL_001f:  ldarg.1
    IL_0020:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Coords
    IL_0025:  ldfld      int32 [Engine]Engine.Point2::X
    IL_002a:  ldarg.1
    IL_002b:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Coords
    IL_0030:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0035:  callvirt   instance void Game.Terrain/ChunksStorage::Remove(int32,
                                                                          int32)
    IL_003a:  ldarg.0
    IL_003b:  ldnull
    IL_003c:  stfld      class Game.TerrainChunk[] Game.Terrain::m_allocatedChunksArray
    IL_0041:  ret
  } // end of method Terrain::FreeChunk

  .method public hidebysig static int32  ComparePoints(valuetype [Engine]Engine.Point2 c1,
                                                       valuetype [Engine]Engine.Point2 c2) cil managed
  {
    // 代码大小       42 (0x2a)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0006:  ldarg.1
    IL_0007:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_000c:  bne.un.s   IL_001c

    IL_000e:  ldarg.0
    IL_000f:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0014:  ldarg.1
    IL_0015:  ldfld      int32 [Engine]Engine.Point2::X
    IL_001a:  sub
    IL_001b:  ret

    IL_001c:  ldarg.0
    IL_001d:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0022:  ldarg.1
    IL_0023:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0028:  sub
    IL_0029:  ret
  } // end of method Terrain::ComparePoints

  .method public hidebysig static valuetype [Engine]Engine.Point2 
          ToChunk(valuetype [Engine]Engine.Vector2 p) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0006:  call       int32 Game.Terrain::ToCell(float32)
    IL_000b:  ldarg.0
    IL_000c:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0011:  call       int32 Game.Terrain::ToCell(float32)
    IL_0016:  call       valuetype [Engine]Engine.Point2 Game.Terrain::ToChunk(int32,
                                                                               int32)
    IL_001b:  ret
  } // end of method Terrain::ToChunk

  .method public hidebysig static valuetype [Engine]Engine.Point2 
          ToChunk(int32 x,
                  int32 z) cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.4
    IL_0002:  shr
    IL_0003:  ldarg.1
    IL_0004:  ldc.i4.4
    IL_0005:  shr
    IL_0006:  newobj     instance void [Engine]Engine.Point2::.ctor(int32,
                                                                    int32)
    IL_000b:  ret
  } // end of method Terrain::ToChunk

  .method public hidebysig static int32  ToCell(float32 x) cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_0006:  conv.i4
    IL_0007:  ret
  } // end of method Terrain::ToCell

  .method public hidebysig static valuetype [Engine]Engine.Point2 
          ToCell(float32 x,
                 float32 y) cil managed
  {
    // 代码大小       20 (0x14)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_0006:  conv.i4
    IL_0007:  ldarg.1
    IL_0008:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_000d:  conv.i4
    IL_000e:  newobj     instance void [Engine]Engine.Point2::.ctor(int32,
                                                                    int32)
    IL_0013:  ret
  } // end of method Terrain::ToCell

  .method public hidebysig static valuetype [Engine]Engine.Point2 
          ToCell(valuetype [Engine]Engine.Vector2 p) cil managed
  {
    // 代码大小       30 (0x1e)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0006:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_000b:  conv.i4
    IL_000c:  ldarg.0
    IL_000d:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0012:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_0017:  conv.i4
    IL_0018:  newobj     instance void [Engine]Engine.Point2::.ctor(int32,
                                                                    int32)
    IL_001d:  ret
  } // end of method Terrain::ToCell

  .method public hidebysig static valuetype [Engine]Engine.Point3 
          ToCell(float32 x,
                 float32 y,
                 float32 z) cil managed
  {
    // 代码大小       27 (0x1b)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_0006:  conv.i4
    IL_0007:  ldarg.1
    IL_0008:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_000d:  conv.i4
    IL_000e:  ldarg.2
    IL_000f:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_0014:  conv.i4
    IL_0015:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_001a:  ret
  } // end of method Terrain::ToCell

  .method public hidebysig static valuetype [Engine]Engine.Point3 
          ToCell(valuetype [Engine]Engine.Vector3 p) cil managed
  {
    // 代码大小       42 (0x2a)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0006:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_000b:  conv.i4
    IL_000c:  ldarg.0
    IL_000d:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0012:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_0017:  conv.i4
    IL_0018:  ldarg.0
    IL_0019:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_001e:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_0023:  conv.i4
    IL_0024:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0029:  ret
  } // end of method Terrain::ToCell

  .method public hidebysig instance bool 
          IsCellValid(int32 x,
                      int32 y,
                      int32 z) cil managed
  {
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.2
    IL_0001:  ldc.i4.0
    IL_0002:  blt.s      IL_000d

    IL_0004:  ldarg.2
    IL_0005:  ldc.i4     0x80
    IL_000a:  clt
    IL_000c:  ret

    IL_000d:  ldc.i4.0
    IL_000e:  ret
  } // end of method Terrain::IsCellValid

  .method public hidebysig instance int32 
          GetCellValue(int32 x,
                       int32 y,
                       int32 z) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  ldarg.3
    IL_0004:  call       instance bool Game.Terrain::IsCellValid(int32,
                                                                 int32,
                                                                 int32)
    IL_0009:  brtrue.s   IL_000d

    IL_000b:  ldc.i4.0
    IL_000c:  ret

    IL_000d:  ldarg.0
    IL_000e:  ldarg.1
    IL_000f:  ldarg.2
    IL_0010:  ldarg.3
    IL_0011:  call       instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_0016:  ret
  } // end of method Terrain::GetCellValue

  .method public hidebysig instance int32 
          GetCellContents(int32 x,
                          int32 y,
                          int32 z) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  ldarg.3
    IL_0004:  call       instance bool Game.Terrain::IsCellValid(int32,
                                                                 int32,
                                                                 int32)
    IL_0009:  brtrue.s   IL_000d

    IL_000b:  ldc.i4.0
    IL_000c:  ret

    IL_000d:  ldarg.0
    IL_000e:  ldarg.1
    IL_000f:  ldarg.2
    IL_0010:  ldarg.3
    IL_0011:  call       instance int32 Game.Terrain::GetCellContentsFast(int32,
                                                                          int32,
                                                                          int32)
    IL_0016:  ret
  } // end of method Terrain::GetCellContents

  .method public hidebysig instance int32 
          GetCellLight(int32 x,
                       int32 y,
                       int32 z) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  ldarg.3
    IL_0004:  call       instance bool Game.Terrain::IsCellValid(int32,
                                                                 int32,
                                                                 int32)
    IL_0009:  brtrue.s   IL_000d

    IL_000b:  ldc.i4.0
    IL_000c:  ret

    IL_000d:  ldarg.0
    IL_000e:  ldarg.1
    IL_000f:  ldarg.2
    IL_0010:  ldarg.3
    IL_0011:  call       instance int32 Game.Terrain::GetCellLightFast(int32,
                                                                       int32,
                                                                       int32)
    IL_0016:  ret
  } // end of method Terrain::GetCellLight

  .method public hidebysig instance int32 
          GetCellValueFast(int32 x,
                           int32 y,
                           int32 z) cil managed
  {
    // 代码大小       30 (0x1e)
    .maxstack  5
    .locals init (class Game.TerrainChunk V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.3
    IL_0003:  call       instance class Game.TerrainChunk Game.Terrain::GetChunkAtCell(int32,
                                                                                       int32)
    IL_0008:  stloc.0
    IL_0009:  ldloc.0
    IL_000a:  brfalse.s  IL_001c

    IL_000c:  ldloc.0
    IL_000d:  ldarg.1
    IL_000e:  ldc.i4.s   15
    IL_0010:  and
    IL_0011:  ldarg.2
    IL_0012:  ldarg.3
    IL_0013:  ldc.i4.s   15
    IL_0015:  and
    IL_0016:  callvirt   instance int32 Game.TerrainChunk::GetCellValueFast(int32,
                                                                            int32,
                                                                            int32)
    IL_001b:  ret

    IL_001c:  ldc.i4.0
    IL_001d:  ret
  } // end of method Terrain::GetCellValueFast

  .method public hidebysig instance int32 
          GetCellValueFastChunkExists(int32 x,
                                      int32 y,
                                      int32 z) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.3
    IL_0003:  call       instance class Game.TerrainChunk Game.Terrain::GetChunkAtCell(int32,
                                                                                       int32)
    IL_0008:  ldarg.1
    IL_0009:  ldc.i4.s   15
    IL_000b:  and
    IL_000c:  ldarg.2
    IL_000d:  ldarg.3
    IL_000e:  ldc.i4.s   15
    IL_0010:  and
    IL_0011:  callvirt   instance int32 Game.TerrainChunk::GetCellValueFast(int32,
                                                                            int32,
                                                                            int32)
    IL_0016:  ret
  } // end of method Terrain::GetCellValueFastChunkExists

  .method public hidebysig instance int32 
          GetCellContentsFast(int32 x,
                              int32 y,
                              int32 z) cil managed
  {
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  ldarg.3
    IL_0004:  call       instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_0009:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_000e:  ret
  } // end of method Terrain::GetCellContentsFast

  .method public hidebysig instance int32 
          GetCellLightFast(int32 x,
                           int32 y,
                           int32 z) cil managed
  {
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  ldarg.3
    IL_0004:  call       instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_0009:  call       int32 Game.Terrain::ExtractLight(int32)
    IL_000e:  ret
  } // end of method Terrain::GetCellLightFast

  .method public hidebysig instance void 
          SetCellValueFast(int32 x,
                           int32 y,
                           int32 z,
                           int32 'value') cil managed
  {
    // 代码大小       30 (0x1e)
    .maxstack  5
    .locals init (class Game.TerrainChunk V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.3
    IL_0003:  call       instance class Game.TerrainChunk Game.Terrain::GetChunkAtCell(int32,
                                                                                       int32)
    IL_0008:  stloc.0
    IL_0009:  ldloc.0
    IL_000a:  brfalse.s  IL_001d

    IL_000c:  ldloc.0
    IL_000d:  ldarg.1
    IL_000e:  ldc.i4.s   15
    IL_0010:  and
    IL_0011:  ldarg.2
    IL_0012:  ldarg.3
    IL_0013:  ldc.i4.s   15
    IL_0015:  and
    IL_0016:  ldarg.s    'value'
    IL_0018:  callvirt   instance void Game.TerrainChunk::SetCellValueFast(int32,
                                                                           int32,
                                                                           int32,
                                                                           int32)
    IL_001d:  ret
  } // end of method Terrain::SetCellValueFast

  .method public hidebysig instance int32 
          CalculateTopmostCellHeight(int32 x,
                                     int32 z) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  4
    .locals init (class Game.TerrainChunk V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  call       instance class Game.TerrainChunk Game.Terrain::GetChunkAtCell(int32,
                                                                                       int32)
    IL_0008:  stloc.0
    IL_0009:  ldloc.0
    IL_000a:  brtrue.s   IL_000e

    IL_000c:  ldc.i4.0
    IL_000d:  ret

    IL_000e:  ldloc.0
    IL_000f:  ldarg.1
    IL_0010:  ldc.i4.s   15
    IL_0012:  and
    IL_0013:  ldarg.2
    IL_0014:  ldc.i4.s   15
    IL_0016:  and
    IL_0017:  callvirt   instance int32 Game.TerrainChunk::CalculateTopmostCellHeight(int32,
                                                                                      int32)
    IL_001c:  ret
  } // end of method Terrain::CalculateTopmostCellHeight

  .method public hidebysig instance int32 
          GetShaftValue(int32 x,
                        int32 z) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  4
    .locals init (class Game.TerrainChunk V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  call       instance class Game.TerrainChunk Game.Terrain::GetChunkAtCell(int32,
                                                                                       int32)
    IL_0008:  stloc.0
    IL_0009:  ldloc.0
    IL_000a:  brfalse.s  IL_001b

    IL_000c:  ldloc.0
    IL_000d:  ldarg.1
    IL_000e:  ldc.i4.s   15
    IL_0010:  and
    IL_0011:  ldarg.2
    IL_0012:  ldc.i4.s   15
    IL_0014:  and
    IL_0015:  callvirt   instance int32 Game.TerrainChunk::GetShaftValueFast(int32,
                                                                             int32)
    IL_001a:  ret

    IL_001b:  ldc.i4.0
    IL_001c:  ret
  } // end of method Terrain::GetShaftValue

  .method public hidebysig instance void 
          SetShaftValue(int32 x,
                        int32 z,
                        int32 'value') cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  4
    .locals init (class Game.TerrainChunk V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  call       instance class Game.TerrainChunk Game.Terrain::GetChunkAtCell(int32,
                                                                                       int32)
    IL_0008:  stloc.0
    IL_0009:  ldloc.0
    IL_000a:  brfalse.s  IL_001b

    IL_000c:  ldloc.0
    IL_000d:  ldarg.1
    IL_000e:  ldc.i4.s   15
    IL_0010:  and
    IL_0011:  ldarg.2
    IL_0012:  ldc.i4.s   15
    IL_0014:  and
    IL_0015:  ldarg.3
    IL_0016:  callvirt   instance void Game.TerrainChunk::SetShaftValueFast(int32,
                                                                            int32,
                                                                            int32)
    IL_001b:  ret
  } // end of method Terrain::SetShaftValue

  .method public hidebysig instance int32 
          GetTemperature(int32 x,
                         int32 z) cil managed
  {
    // 代码大小       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  call       instance int32 Game.Terrain::GetShaftValue(int32,
                                                                    int32)
    IL_0008:  call       int32 Game.Terrain::ExtractTemperature(int32)
    IL_000d:  ret
  } // end of method Terrain::GetTemperature

  .method public hidebysig instance void 
          SetTemperature(int32 x,
                         int32 z,
                         int32 temperature) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  ldarg.0
    IL_0004:  ldarg.1
    IL_0005:  ldarg.2
    IL_0006:  call       instance int32 Game.Terrain::GetShaftValue(int32,
                                                                    int32)
    IL_000b:  ldarg.3
    IL_000c:  call       int32 Game.Terrain::ReplaceTemperature(int32,
                                                                int32)
    IL_0011:  call       instance void Game.Terrain::SetShaftValue(int32,
                                                                   int32,
                                                                   int32)
    IL_0016:  ret
  } // end of method Terrain::SetTemperature

  .method public hidebysig instance int32 
          GetHumidity(int32 x,
                      int32 z) cil managed
  {
    // 代码大小       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  call       instance int32 Game.Terrain::GetShaftValue(int32,
                                                                    int32)
    IL_0008:  call       int32 Game.Terrain::ExtractHumidity(int32)
    IL_000d:  ret
  } // end of method Terrain::GetHumidity

  .method public hidebysig instance void 
          SetHumidity(int32 x,
                      int32 z,
                      int32 humidity) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  ldarg.0
    IL_0004:  ldarg.1
    IL_0005:  ldarg.2
    IL_0006:  call       instance int32 Game.Terrain::GetShaftValue(int32,
                                                                    int32)
    IL_000b:  ldarg.3
    IL_000c:  call       int32 Game.Terrain::ReplaceHumidity(int32,
                                                             int32)
    IL_0011:  call       instance void Game.Terrain::SetShaftValue(int32,
                                                                   int32,
                                                                   int32)
    IL_0016:  ret
  } // end of method Terrain::SetHumidity

  .method public hidebysig instance int32 
          GetTopHeight(int32 x,
                       int32 z) cil managed
  {
    // 代码大小       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  call       instance int32 Game.Terrain::GetShaftValue(int32,
                                                                    int32)
    IL_0008:  call       int32 Game.Terrain::ExtractTopHeight(int32)
    IL_000d:  ret
  } // end of method Terrain::GetTopHeight

  .method public hidebysig instance void 
          SetTopHeight(int32 x,
                       int32 z,
                       int32 topHeight) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  ldarg.0
    IL_0004:  ldarg.1
    IL_0005:  ldarg.2
    IL_0006:  call       instance int32 Game.Terrain::GetShaftValue(int32,
                                                                    int32)
    IL_000b:  ldarg.3
    IL_000c:  call       int32 Game.Terrain::ReplaceTopHeight(int32,
                                                              int32)
    IL_0011:  call       instance void Game.Terrain::SetShaftValue(int32,
                                                                   int32,
                                                                   int32)
    IL_0016:  ret
  } // end of method Terrain::SetTopHeight

  .method public hidebysig instance int32 
          GetBottomHeight(int32 x,
                          int32 z) cil managed
  {
    // 代码大小       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  call       instance int32 Game.Terrain::GetShaftValue(int32,
                                                                    int32)
    IL_0008:  call       int32 Game.Terrain::ExtractBottomHeight(int32)
    IL_000d:  ret
  } // end of method Terrain::GetBottomHeight

  .method public hidebysig instance void 
          SetBottomHeight(int32 x,
                          int32 z,
                          int32 bottomHeight) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  ldarg.0
    IL_0004:  ldarg.1
    IL_0005:  ldarg.2
    IL_0006:  call       instance int32 Game.Terrain::GetShaftValue(int32,
                                                                    int32)
    IL_000b:  ldarg.3
    IL_000c:  call       int32 Game.Terrain::ReplaceBottomHeight(int32,
                                                                 int32)
    IL_0011:  call       instance void Game.Terrain::SetShaftValue(int32,
                                                                   int32,
                                                                   int32)
    IL_0016:  ret
  } // end of method Terrain::SetBottomHeight

  .method public hidebysig static int32  MakeBlockValue(int32 contents) cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4     0x3ff
    IL_0006:  and
    IL_0007:  ret
  } // end of method Terrain::MakeBlockValue

  .method public hidebysig static int32  MakeBlockValue(int32 contents,
                                                        int32 light,
                                                        int32 data) cil managed
  {
    // 代码大小       30 (0x1e)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4     0x3ff
    IL_0006:  and
    IL_0007:  ldarg.1
    IL_0008:  ldc.i4.s   10
    IL_000a:  shl
    IL_000b:  ldc.i4     0x3c00
    IL_0010:  and
    IL_0011:  or
    IL_0012:  ldarg.2
    IL_0013:  ldc.i4.s   14
    IL_0015:  shl
    IL_0016:  ldc.i4     0xffffc000
    IL_001b:  and
    IL_001c:  or
    IL_001d:  ret
  } // end of method Terrain::MakeBlockValue

  .method public hidebysig static int32  ExtractContents(int32 'value') cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4     0x3ff
    IL_0006:  and
    IL_0007:  ret
  } // end of method Terrain::ExtractContents

  .method public hidebysig static int32  ExtractLight(int32 'value') cil managed
  {
    // 代码大小       11 (0xb)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4     0x3c00
    IL_0006:  and
    IL_0007:  ldc.i4.s   10
    IL_0009:  shr
    IL_000a:  ret
  } // end of method Terrain::ExtractLight

  .method public hidebysig static int32  ExtractData(int32 'value') cil managed
  {
    // 代码大小       11 (0xb)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4     0xffffc000
    IL_0006:  and
    IL_0007:  ldc.i4.s   14
    IL_0009:  shr
    IL_000a:  ret
  } // end of method Terrain::ExtractData

  .method public hidebysig static int32  ExtractTopHeight(int32 'value') cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4     0xff
    IL_0006:  and
    IL_0007:  ret
  } // end of method Terrain::ExtractTopHeight

  .method public hidebysig static int32  ExtractBottomHeight(int32 'value') cil managed
  {
    // 代码大小       11 (0xb)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4     0xff0000
    IL_0006:  and
    IL_0007:  ldc.i4.s   16
    IL_0009:  shr
    IL_000a:  ret
  } // end of method Terrain::ExtractBottomHeight

  .method public hidebysig static int32  ExtractHumidity(int32 'value') cil managed
  {
    // 代码大小       11 (0xb)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4     0xf000
    IL_0006:  and
    IL_0007:  ldc.i4.s   12
    IL_0009:  shr
    IL_000a:  ret
  } // end of method Terrain::ExtractHumidity

  .method public hidebysig static int32  ExtractTemperature(int32 'value') cil managed
  {
    // 代码大小       10 (0xa)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4     0xf00
    IL_0006:  and
    IL_0007:  ldc.i4.8
    IL_0008:  shr
    IL_0009:  ret
  } // end of method Terrain::ExtractTemperature

  .method public hidebysig static int32  ReplaceContents(int32 'value',
                                                         int32 contents) cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  xor
    IL_0004:  ldc.i4     0x3ff
    IL_0009:  and
    IL_000a:  xor
    IL_000b:  ret
  } // end of method Terrain::ReplaceContents

  .method public hidebysig static int32  ReplaceLight(int32 'value',
                                                      int32 light) cil managed
  {
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  ldc.i4.s   10
    IL_0005:  shl
    IL_0006:  xor
    IL_0007:  ldc.i4     0x3c00
    IL_000c:  and
    IL_000d:  xor
    IL_000e:  ret
  } // end of method Terrain::ReplaceLight

  .method public hidebysig static int32  ReplaceData(int32 'value',
                                                     int32 data) cil managed
  {
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  ldc.i4.s   14
    IL_0005:  shl
    IL_0006:  xor
    IL_0007:  ldc.i4     0xffffc000
    IL_000c:  and
    IL_000d:  xor
    IL_000e:  ret
  } // end of method Terrain::ReplaceData

  .method public hidebysig static int32  ReplaceTopHeight(int32 'value',
                                                          int32 topHeight) cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  xor
    IL_0004:  ldc.i4     0xff
    IL_0009:  and
    IL_000a:  xor
    IL_000b:  ret
  } // end of method Terrain::ReplaceTopHeight

  .method public hidebysig static int32  ReplaceBottomHeight(int32 'value',
                                                             int32 bottomHeight) cil managed
  {
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  ldc.i4.s   16
    IL_0005:  shl
    IL_0006:  xor
    IL_0007:  ldc.i4     0xff0000
    IL_000c:  and
    IL_000d:  xor
    IL_000e:  ret
  } // end of method Terrain::ReplaceBottomHeight

  .method public hidebysig static int32  ReplaceHumidity(int32 'value',
                                                         int32 humidity) cil managed
  {
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  ldc.i4.s   12
    IL_0005:  shl
    IL_0006:  xor
    IL_0007:  ldc.i4     0xf000
    IL_000c:  and
    IL_000d:  xor
    IL_000e:  ret
  } // end of method Terrain::ReplaceHumidity

  .method public hidebysig static int32  ReplaceTemperature(int32 'value',
                                                            int32 temperature) cil managed
  {
    // 代码大小       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  ldc.i4.8
    IL_0004:  shl
    IL_0005:  xor
    IL_0006:  ldc.i4     0xf00
    IL_000b:  and
    IL_000c:  xor
    IL_000d:  ret
  } // end of method Terrain::ReplaceTemperature

  .property instance class Game.TerrainChunk[]
          AllocatedChunks()
  {
    .get instance class Game.TerrainChunk[] Game.Terrain::get_AllocatedChunks()
  } // end of property Terrain::AllocatedChunks
} // end of class Game.Terrain