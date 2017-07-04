.class public auto ansi beforefieldinit Game.TerrainSerializer129
       extends [System.Runtime]System.Object
       implements [System.Runtime]System.IDisposable
{
  .field public static literal int32 MaxChunks = int32(0x00010000)
  .field public static literal int32 TocEntryBytesCount = int32(0x0000000C)
  .field public static literal int32 TocBytesCount = int32(0x000C000C)
  .field public static literal int32 ChunkSizeX = int32(0x00000010)
  .field public static literal int32 ChunkSizeY = int32(0x00000080)
  .field public static literal int32 ChunkSizeZ = int32(0x00000010)
  .field public static literal int32 ChunkBitsX = int32(0x00000004)
  .field public static literal int32 ChunkBitsZ = int32(0x00000004)
  .field public static literal int32 ChunkBytesCount = int32(0x00020410)
  .field public static literal string ChunksFileName = "Chunks32.dat"
  .field private class Game.Terrain m_terrain
  .field private uint8[] m_buffer
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,int64> m_chunkOffsets
  .field private class [System.IO]System.IO.Stream m_stream
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.Terrain terrain,
                               string directoryName) cil managed
  {
    // 代码大小       191 (0xbf)
    .maxstack  5
    .locals init (string V_0,
             class [System.IO]System.IO.Stream V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5)
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4     0x20000
    IL_0006:  newarr     [System.Runtime]System.Byte
    IL_000b:  stfld      uint8[] Game.TerrainSerializer129::m_buffer
    IL_0010:  ldarg.0
    IL_0011:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,int64>::.ctor()
    IL_0016:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,int64> Game.TerrainSerializer129::m_chunkOffsets
    IL_001b:  ldarg.0
    IL_001c:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0021:  ldarg.0
    IL_0022:  ldarg.1
    IL_0023:  stfld      class Game.Terrain Game.TerrainSerializer129::m_terrain
    IL_0028:  ldc.i4.2
    IL_0029:  newarr     [System.Runtime]System.String
    IL_002e:  dup
    IL_002f:  ldc.i4.0
    IL_0030:  ldarg.2
    IL_0031:  stelem.ref
    IL_0032:  dup
    IL_0033:  ldc.i4.1
    IL_0034:  ldstr      "Chunks32.dat"
    IL_0039:  stelem.ref
    IL_003a:  call       string [Engine]Engine.Storage::CombinePaths(string[])
    IL_003f:  stloc.0
    IL_0040:  ldloc.0
    IL_0041:  call       bool [Engine]Engine.Storage::FileExists(string)
    IL_0046:  brtrue.s   IL_0075

    IL_0048:  ldloc.0
    IL_0049:  ldc.i4.2
    IL_004a:  call       class [System.IO]System.IO.Stream [Engine]Engine.Storage::OpenFile(string,
                                                                                            valuetype [Engine]Engine.OpenFileMode)
    IL_004f:  stloc.1
    .try
    {
      IL_0050:  ldc.i4.0
      IL_0051:  stloc.2
      IL_0052:  br.s       IL_0061

      IL_0054:  ldloc.1
      IL_0055:  ldc.i4.0
      IL_0056:  ldc.i4.0
      IL_0057:  ldc.i4.m1
      IL_0058:  call       void Game.TerrainSerializer129::WriteTOCEntry(class [System.IO]System.IO.Stream,
                                                                         int32,
                                                                         int32,
                                                                         int32)
      IL_005d:  ldloc.2
      IL_005e:  ldc.i4.1
      IL_005f:  add
      IL_0060:  stloc.2
      IL_0061:  ldloc.2
      IL_0062:  ldc.i4     0x10001
      IL_0067:  blt.s      IL_0054

      IL_0069:  leave.s    IL_0075

    }  // end .try
    finally
    {
      IL_006b:  ldloc.1
      IL_006c:  brfalse.s  IL_0074

      IL_006e:  ldloc.1
      IL_006f:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0074:  endfinally
    }  // end handler
    IL_0075:  ldarg.0
    IL_0076:  ldloc.0
    IL_0077:  ldc.i4.1
    IL_0078:  call       class [System.IO]System.IO.Stream [Engine]Engine.Storage::OpenFile(string,
                                                                                            valuetype [Engine]Engine.OpenFileMode)
    IL_007d:  stfld      class [System.IO]System.IO.Stream Game.TerrainSerializer129::m_stream
    IL_0082:  ldarg.0
    IL_0083:  ldfld      class [System.IO]System.IO.Stream Game.TerrainSerializer129::m_stream
    IL_0088:  ldloca.s   V_3
    IL_008a:  ldloca.s   V_4
    IL_008c:  ldloca.s   V_5
    IL_008e:  call       void Game.TerrainSerializer129::ReadTOCEntry(class [System.IO]System.IO.Stream,
                                                                      int32&,
                                                                      int32&,
                                                                      int32&)
    IL_0093:  ldloc.s    V_5
    IL_0095:  ldc.i4.0
    IL_0096:  blt.s      IL_00be

    IL_0098:  ldarg.0
    IL_0099:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,int64> Game.TerrainSerializer129::m_chunkOffsets
    IL_009e:  ldloc.3
    IL_009f:  ldloc.s    V_4
    IL_00a1:  newobj     instance void [Engine]Engine.Point2::.ctor(int32,
                                                                    int32)
    IL_00a6:  ldc.i4     0xc000c
    IL_00ab:  conv.i8
    IL_00ac:  ldc.i4     0x20410
    IL_00b1:  conv.i8
    IL_00b2:  ldloc.s    V_5
    IL_00b4:  conv.i8
    IL_00b5:  mul
    IL_00b6:  add
    IL_00b7:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,int64>::set_Item(!0,
                                                                                                                                                          !1)
    IL_00bc:  br.s       IL_0082

    IL_00be:  ret
  } // end of method TerrainSerializer129::.ctor

  .method public hidebysig instance bool 
          LoadChunk(class Game.TerrainChunk chunk) cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance bool Game.TerrainSerializer129::LoadChunkBlocks(class Game.TerrainChunk)
    IL_0007:  ret
  } // end of method TerrainSerializer129::LoadChunk

  .method public hidebysig instance void 
          SaveChunk(class Game.TerrainChunk chunk) cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldfld      valuetype Game.TerrainChunkState Game.TerrainChunk::State
    IL_0006:  ldc.i4.4
    IL_0007:  ble.s      IL_0020

    IL_0009:  ldarg.1
    IL_000a:  ldfld      int32 Game.TerrainChunk::ModificationCounter
    IL_000f:  ldc.i4.0
    IL_0010:  ble.s      IL_0020

    IL_0012:  ldarg.0
    IL_0013:  ldarg.1
    IL_0014:  call       instance void Game.TerrainSerializer129::SaveChunkBlocks(class Game.TerrainChunk)
    IL_0019:  ldarg.1
    IL_001a:  ldc.i4.0
    IL_001b:  stfld      int32 Game.TerrainChunk::ModificationCounter
    IL_0020:  ret
  } // end of method TerrainSerializer129::SaveChunk

  .method public hidebysig newslot virtual final 
          instance void  Dispose() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldflda     class [System.IO]System.IO.Stream Game.TerrainSerializer129::m_stream
    IL_0006:  call       void [Engine]Engine.Utilities::Dispose<class [System.IO]System.IO.Stream>(!!0&)
    IL_000b:  ret
  } // end of method TerrainSerializer129::Dispose

  .method public hidebysig static void  ReadChunkHeader(class [System.IO]System.IO.Stream 'stream') cil managed
  {
    // 代码大小       51 (0x33)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       int32 Game.TerrainSerializer129::ReadInt(class [System.IO]System.IO.Stream)
    IL_0006:  ldarg.0
    IL_0007:  call       int32 Game.TerrainSerializer129::ReadInt(class [System.IO]System.IO.Stream)
    IL_000c:  stloc.0
    IL_000d:  ldarg.0
    IL_000e:  call       int32 Game.TerrainSerializer129::ReadInt(class [System.IO]System.IO.Stream)
    IL_0013:  pop
    IL_0014:  ldarg.0
    IL_0015:  call       int32 Game.TerrainSerializer129::ReadInt(class [System.IO]System.IO.Stream)
    IL_001a:  pop
    IL_001b:  ldc.i4     0xdeadbeef
    IL_0020:  bne.un.s   IL_0027

    IL_0022:  ldloc.0
    IL_0023:  ldc.i4.s   -2
    IL_0025:  beq.s      IL_0032

    IL_0027:  ldstr      "Invalid chunk header."
    IL_002c:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0031:  throw

    IL_0032:  ret
  } // end of method TerrainSerializer129::ReadChunkHeader

  .method public hidebysig static void  WriteChunkHeader(class [System.IO]System.IO.Stream 'stream',
                                                         int32 cx,
                                                         int32 cz) cil managed
  {
    // 代码大小       34 (0x22)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4     0xdeadbeef
    IL_0006:  call       void Game.TerrainSerializer129::WriteInt(class [System.IO]System.IO.Stream,
                                                                  int32)
    IL_000b:  ldarg.0
    IL_000c:  ldc.i4.s   -2
    IL_000e:  call       void Game.TerrainSerializer129::WriteInt(class [System.IO]System.IO.Stream,
                                                                  int32)
    IL_0013:  ldarg.0
    IL_0014:  ldarg.1
    IL_0015:  call       void Game.TerrainSerializer129::WriteInt(class [System.IO]System.IO.Stream,
                                                                  int32)
    IL_001a:  ldarg.0
    IL_001b:  ldarg.2
    IL_001c:  call       void Game.TerrainSerializer129::WriteInt(class [System.IO]System.IO.Stream,
                                                                  int32)
    IL_0021:  ret
  } // end of method TerrainSerializer129::WriteChunkHeader

  .method public hidebysig static void  ReadTOCEntry(class [System.IO]System.IO.Stream 'stream',
                                                     [out] int32& cx,
                                                     [out] int32& cz,
                                                     [out] int32& index) cil managed
  {
    // 代码大小       25 (0x19)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  call       int32 Game.TerrainSerializer129::ReadInt(class [System.IO]System.IO.Stream)
    IL_0007:  stind.i4
    IL_0008:  ldarg.2
    IL_0009:  ldarg.0
    IL_000a:  call       int32 Game.TerrainSerializer129::ReadInt(class [System.IO]System.IO.Stream)
    IL_000f:  stind.i4
    IL_0010:  ldarg.3
    IL_0011:  ldarg.0
    IL_0012:  call       int32 Game.TerrainSerializer129::ReadInt(class [System.IO]System.IO.Stream)
    IL_0017:  stind.i4
    IL_0018:  ret
  } // end of method TerrainSerializer129::ReadTOCEntry

  .method public hidebysig static void  WriteTOCEntry(class [System.IO]System.IO.Stream 'stream',
                                                      int32 cx,
                                                      int32 cz,
                                                      int32 index) cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       void Game.TerrainSerializer129::WriteInt(class [System.IO]System.IO.Stream,
                                                                  int32)
    IL_0007:  ldarg.0
    IL_0008:  ldarg.2
    IL_0009:  call       void Game.TerrainSerializer129::WriteInt(class [System.IO]System.IO.Stream,
                                                                  int32)
    IL_000e:  ldarg.0
    IL_000f:  ldarg.3
    IL_0010:  call       void Game.TerrainSerializer129::WriteInt(class [System.IO]System.IO.Stream,
                                                                  int32)
    IL_0015:  ret
  } // end of method TerrainSerializer129::WriteTOCEntry

  .method private hidebysig instance bool 
          LoadChunkBlocks(class Game.TerrainChunk chunk) cil managed
  {
    // 代码大小       419 (0x1a3)
    .maxstack  5
    .locals init (bool V_0,
             int32 V_1,
             int32 V_2,
             int64 V_3,
             uint8& pinned V_4,
             int32* V_5,
             int32 V_6,
             int32 V_7,
             int32 V_8,
             int32 V_9,
             uint8& pinned V_10,
             int32* V_11,
             int32 V_12,
             int32 V_13,
             class [System.Runtime]System.Exception V_14)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  ldarg.1
    IL_0003:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_0008:  ldfld      int32 [Engine]Engine.Point2::X
    IL_000d:  ldc.i4.4
    IL_000e:  shr
    IL_000f:  stloc.1
    IL_0010:  ldarg.1
    IL_0011:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_0016:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_001b:  ldc.i4.4
    IL_001c:  shr
    IL_001d:  stloc.2
    .try
    {
      IL_001e:  ldarg.0
      IL_001f:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,int64> Game.TerrainSerializer129::m_chunkOffsets
      IL_0024:  ldloc.1
      IL_0025:  ldloc.2
      IL_0026:  newobj     instance void [Engine]Engine.Point2::.ctor(int32,
                                                                      int32)
      IL_002b:  ldloca.s   V_3
      IL_002d:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,int64>::TryGetValue(!0,
                                                                                                                                                               !1&)
      IL_0032:  brfalse    IL_016d

      IL_0037:  call       float64 [Engine]Engine.Time::get_RealTime()
      IL_003c:  pop
      IL_003d:  ldarg.0
      IL_003e:  ldfld      class [System.IO]System.IO.Stream Game.TerrainSerializer129::m_stream
      IL_0043:  ldloc.3
      IL_0044:  ldc.i4.0
      IL_0045:  callvirt   instance int64 [System.IO]System.IO.Stream::Seek(int64,
                                                                            valuetype [System.IO]System.IO.SeekOrigin)
      IL_004a:  pop
      IL_004b:  ldarg.0
      IL_004c:  ldfld      class [System.IO]System.IO.Stream Game.TerrainSerializer129::m_stream
      IL_0051:  call       void Game.TerrainSerializer129::ReadChunkHeader(class [System.IO]System.IO.Stream)
      IL_0056:  ldarg.0
      IL_0057:  ldfld      class [System.IO]System.IO.Stream Game.TerrainSerializer129::m_stream
      IL_005c:  ldarg.0
      IL_005d:  ldfld      uint8[] Game.TerrainSerializer129::m_buffer
      IL_0062:  ldc.i4.0
      IL_0063:  ldc.i4     0x20000
      IL_0068:  callvirt   instance int32 [System.IO]System.IO.Stream::Read(uint8[],
                                                                            int32,
                                                                            int32)
      IL_006d:  pop
      .try
      {
        IL_006e:  ldarg.0
        IL_006f:  ldfld      uint8[] Game.TerrainSerializer129::m_buffer
        IL_0074:  ldc.i4.0
        IL_0075:  ldelema    [System.Runtime]System.Byte
        IL_007a:  stloc.s    V_4
        IL_007c:  ldloc.s    V_4
        IL_007e:  conv.i
        IL_007f:  stloc.s    V_5
        IL_0081:  ldc.i4.0
        IL_0082:  stloc.s    V_6
        IL_0084:  br.s       IL_00d4

        IL_0086:  ldc.i4.0
        IL_0087:  stloc.s    V_7
        IL_0089:  br.s       IL_00c8

        IL_008b:  ldloc.s    V_6
        IL_008d:  ldc.i4.0
        IL_008e:  ldloc.s    V_7
        IL_0090:  call       int32 Game.TerrainChunk::CalculateCellIndex(int32,
                                                                         int32,
                                                                         int32)
        IL_0095:  stloc.s    V_8
        IL_0097:  ldc.i4.0
        IL_0098:  stloc.s    V_9
        IL_009a:  br.s       IL_00b9

        IL_009c:  ldarg.1
        IL_009d:  ldloc.s    V_8
        IL_009f:  ldloc.s    V_5
        IL_00a1:  ldind.i4
        IL_00a2:  callvirt   instance void Game.TerrainChunk::SetCellValueFast(int32,
                                                                               int32)
        IL_00a7:  ldloc.s    V_9
        IL_00a9:  ldc.i4.1
        IL_00aa:  add
        IL_00ab:  stloc.s    V_9
        IL_00ad:  ldloc.s    V_8
        IL_00af:  ldc.i4.1
        IL_00b0:  add
        IL_00b1:  stloc.s    V_8
        IL_00b3:  ldloc.s    V_5
        IL_00b5:  ldc.i4.4
        IL_00b6:  add
        IL_00b7:  stloc.s    V_5
        IL_00b9:  ldloc.s    V_9
        IL_00bb:  ldc.i4     0x80
        IL_00c0:  blt.s      IL_009c

        IL_00c2:  ldloc.s    V_7
        IL_00c4:  ldc.i4.1
        IL_00c5:  add
        IL_00c6:  stloc.s    V_7
        IL_00c8:  ldloc.s    V_7
        IL_00ca:  ldc.i4.s   16
        IL_00cc:  blt.s      IL_008b

        IL_00ce:  ldloc.s    V_6
        IL_00d0:  ldc.i4.1
        IL_00d1:  add
        IL_00d2:  stloc.s    V_6
        IL_00d4:  ldloc.s    V_6
        IL_00d6:  ldc.i4.s   16
        IL_00d8:  blt.s      IL_0086

        IL_00da:  leave.s    IL_00e1

      }  // end .try
      finally
      {
        IL_00dc:  ldc.i4.0
        IL_00dd:  conv.u
        IL_00de:  stloc.s    V_4
        IL_00e0:  endfinally
      }  // end handler
      IL_00e1:  ldarg.0
      IL_00e2:  ldfld      class [System.IO]System.IO.Stream Game.TerrainSerializer129::m_stream
      IL_00e7:  ldarg.0
      IL_00e8:  ldfld      uint8[] Game.TerrainSerializer129::m_buffer
      IL_00ed:  ldc.i4.0
      IL_00ee:  ldc.i4     0x400
      IL_00f3:  callvirt   instance int32 [System.IO]System.IO.Stream::Read(uint8[],
                                                                            int32,
                                                                            int32)
      IL_00f8:  pop
      .try
      {
        IL_00f9:  ldarg.0
        IL_00fa:  ldfld      uint8[] Game.TerrainSerializer129::m_buffer
        IL_00ff:  ldc.i4.0
        IL_0100:  ldelema    [System.Runtime]System.Byte
        IL_0105:  stloc.s    V_10
        IL_0107:  ldloc.s    V_10
        IL_0109:  conv.i
        IL_010a:  stloc.s    V_11
        IL_010c:  ldc.i4.0
        IL_010d:  stloc.s    V_12
        IL_010f:  br.s       IL_0158

        IL_0111:  ldc.i4.0
        IL_0112:  stloc.s    V_13
        IL_0114:  br.s       IL_014c

        IL_0116:  ldarg.0
        IL_0117:  ldfld      class Game.Terrain Game.TerrainSerializer129::m_terrain
        IL_011c:  ldloc.s    V_12
        IL_011e:  ldarg.1
        IL_011f:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
        IL_0124:  ldfld      int32 [Engine]Engine.Point2::X
        IL_0129:  add
        IL_012a:  ldloc.s    V_13
        IL_012c:  ldarg.1
        IL_012d:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
        IL_0132:  ldfld      int32 [Engine]Engine.Point2::Y
        IL_0137:  add
        IL_0138:  ldloc.s    V_11
        IL_013a:  ldind.i4
        IL_013b:  callvirt   instance void Game.Terrain::SetShaftValue(int32,
                                                                       int32,
                                                                       int32)
        IL_0140:  ldloc.s    V_11
        IL_0142:  ldc.i4.4
        IL_0143:  add
        IL_0144:  stloc.s    V_11
        IL_0146:  ldloc.s    V_13
        IL_0148:  ldc.i4.1
        IL_0149:  add
        IL_014a:  stloc.s    V_13
        IL_014c:  ldloc.s    V_13
        IL_014e:  ldc.i4.s   16
        IL_0150:  blt.s      IL_0116

        IL_0152:  ldloc.s    V_12
        IL_0154:  ldc.i4.1
        IL_0155:  add
        IL_0156:  stloc.s    V_12
        IL_0158:  ldloc.s    V_12
        IL_015a:  ldc.i4.s   16
        IL_015c:  blt.s      IL_0111

        IL_015e:  leave.s    IL_0165

      }  // end .try
      finally
      {
        IL_0160:  ldc.i4.0
        IL_0161:  conv.u
        IL_0162:  stloc.s    V_10
        IL_0164:  endfinally
      }  // end handler
      IL_0165:  ldc.i4.1
      IL_0166:  stloc.0
      IL_0167:  call       float64 [Engine]Engine.Time::get_RealTime()
      IL_016c:  pop
      IL_016d:  leave.s    IL_01a1

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_016f:  stloc.s    V_14
      IL_0171:  ldstr      "Error loading data for chunk ({0},{1})."
      IL_0176:  ldc.i4.2
      IL_0177:  newarr     [System.Runtime]System.Object
      IL_017c:  dup
      IL_017d:  ldc.i4.0
      IL_017e:  ldloc.1
      IL_017f:  box        [System.Runtime]System.Int32
      IL_0184:  stelem.ref
      IL_0185:  dup
      IL_0186:  ldc.i4.1
      IL_0187:  ldloc.2
      IL_0188:  box        [System.Runtime]System.Int32
      IL_018d:  stelem.ref
      IL_018e:  call       string [System.Runtime]System.String::Format(string,
                                                                        object[])
      IL_0193:  ldloc.s    V_14
      IL_0195:  call       string Game.ExceptionManager::MakeFullErrorMessage(string,
                                                                              class [System.Runtime]System.Exception)
      IL_019a:  call       void [Engine]Engine.Log::Error(string)
      IL_019f:  leave.s    IL_01a1

    }  // end handler
    IL_01a1:  ldloc.0
    IL_01a2:  ret
  } // end of method TerrainSerializer129::LoadChunkBlocks

  .method private hidebysig instance void 
          SaveChunkBlocks(class Game.TerrainChunk chunk) cil managed
  {
    // 代码大小       572 (0x23c)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1,
             bool V_2,
             int64 V_3,
             uint8& pinned V_4,
             int32* V_5,
             int32 V_6,
             int32 V_7,
             int32 V_8,
             int32 V_9,
             uint8& pinned V_10,
             int32* V_11,
             int32 V_12,
             int32 V_13,
             int32 V_14,
             class [System.Runtime]System.Exception V_15)
    IL_0000:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_0005:  pop
    IL_0006:  ldarg.1
    IL_0007:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_000c:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0011:  ldc.i4.4
    IL_0012:  shr
    IL_0013:  stloc.0
    IL_0014:  ldarg.1
    IL_0015:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_001a:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_001f:  ldc.i4.4
    IL_0020:  shr
    IL_0021:  stloc.1
    .try
    {
      IL_0022:  ldc.i4.0
      IL_0023:  stloc.2
      IL_0024:  ldarg.0
      IL_0025:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,int64> Game.TerrainSerializer129::m_chunkOffsets
      IL_002a:  ldloc.0
      IL_002b:  ldloc.1
      IL_002c:  newobj     instance void [Engine]Engine.Point2::.ctor(int32,
                                                                      int32)
      IL_0031:  ldloca.s   V_3
      IL_0033:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,int64>::TryGetValue(!0,
                                                                                                                                                               !1&)
      IL_0038:  brfalse.s  IL_004a

      IL_003a:  ldarg.0
      IL_003b:  ldfld      class [System.IO]System.IO.Stream Game.TerrainSerializer129::m_stream
      IL_0040:  ldloc.3
      IL_0041:  ldc.i4.0
      IL_0042:  callvirt   instance int64 [System.IO]System.IO.Stream::Seek(int64,
                                                                            valuetype [System.IO]System.IO.SeekOrigin)
      IL_0047:  pop
      IL_0048:  br.s       IL_0066

      IL_004a:  ldc.i4.1
      IL_004b:  stloc.2
      IL_004c:  ldarg.0
      IL_004d:  ldfld      class [System.IO]System.IO.Stream Game.TerrainSerializer129::m_stream
      IL_0052:  callvirt   instance int64 [System.IO]System.IO.Stream::get_Length()
      IL_0057:  stloc.3
      IL_0058:  ldarg.0
      IL_0059:  ldfld      class [System.IO]System.IO.Stream Game.TerrainSerializer129::m_stream
      IL_005e:  ldloc.3
      IL_005f:  ldc.i4.0
      IL_0060:  callvirt   instance int64 [System.IO]System.IO.Stream::Seek(int64,
                                                                            valuetype [System.IO]System.IO.SeekOrigin)
      IL_0065:  pop
      IL_0066:  ldarg.0
      IL_0067:  ldfld      class [System.IO]System.IO.Stream Game.TerrainSerializer129::m_stream
      IL_006c:  ldloc.0
      IL_006d:  ldloc.1
      IL_006e:  call       void Game.TerrainSerializer129::WriteChunkHeader(class [System.IO]System.IO.Stream,
                                                                            int32,
                                                                            int32)
      .try
      {
        IL_0073:  ldarg.0
        IL_0074:  ldfld      uint8[] Game.TerrainSerializer129::m_buffer
        IL_0079:  ldc.i4.0
        IL_007a:  ldelema    [System.Runtime]System.Byte
        IL_007f:  stloc.s    V_4
        IL_0081:  ldloc.s    V_4
        IL_0083:  conv.i
        IL_0084:  stloc.s    V_5
        IL_0086:  ldc.i4.0
        IL_0087:  stloc.s    V_6
        IL_0089:  br.s       IL_00d9

        IL_008b:  ldc.i4.0
        IL_008c:  stloc.s    V_7
        IL_008e:  br.s       IL_00cd

        IL_0090:  ldloc.s    V_6
        IL_0092:  ldc.i4.0
        IL_0093:  ldloc.s    V_7
        IL_0095:  call       int32 Game.TerrainChunk::CalculateCellIndex(int32,
                                                                         int32,
                                                                         int32)
        IL_009a:  stloc.s    V_8
        IL_009c:  ldc.i4.0
        IL_009d:  stloc.s    V_9
        IL_009f:  br.s       IL_00be

        IL_00a1:  ldloc.s    V_5
        IL_00a3:  ldarg.1
        IL_00a4:  ldloc.s    V_8
        IL_00a6:  callvirt   instance int32 Game.TerrainChunk::GetCellValueFast(int32)
        IL_00ab:  stind.i4
        IL_00ac:  ldloc.s    V_9
        IL_00ae:  ldc.i4.1
        IL_00af:  add
        IL_00b0:  stloc.s    V_9
        IL_00b2:  ldloc.s    V_8
        IL_00b4:  ldc.i4.1
        IL_00b5:  add
        IL_00b6:  stloc.s    V_8
        IL_00b8:  ldloc.s    V_5
        IL_00ba:  ldc.i4.4
        IL_00bb:  add
        IL_00bc:  stloc.s    V_5
        IL_00be:  ldloc.s    V_9
        IL_00c0:  ldc.i4     0x80
        IL_00c5:  blt.s      IL_00a1

        IL_00c7:  ldloc.s    V_7
        IL_00c9:  ldc.i4.1
        IL_00ca:  add
        IL_00cb:  stloc.s    V_7
        IL_00cd:  ldloc.s    V_7
        IL_00cf:  ldc.i4.s   16
        IL_00d1:  blt.s      IL_0090

        IL_00d3:  ldloc.s    V_6
        IL_00d5:  ldc.i4.1
        IL_00d6:  add
        IL_00d7:  stloc.s    V_6
        IL_00d9:  ldloc.s    V_6
        IL_00db:  ldc.i4.s   16
        IL_00dd:  blt.s      IL_008b

        IL_00df:  leave.s    IL_00e6

      }  // end .try
      finally
      {
        IL_00e1:  ldc.i4.0
        IL_00e2:  conv.u
        IL_00e3:  stloc.s    V_4
        IL_00e5:  endfinally
      }  // end handler
      IL_00e6:  ldarg.0
      IL_00e7:  ldfld      class [System.IO]System.IO.Stream Game.TerrainSerializer129::m_stream
      IL_00ec:  ldarg.0
      IL_00ed:  ldfld      uint8[] Game.TerrainSerializer129::m_buffer
      IL_00f2:  ldc.i4.0
      IL_00f3:  ldc.i4     0x20000
      IL_00f8:  callvirt   instance void [System.IO]System.IO.Stream::Write(uint8[],
                                                                            int32,
                                                                            int32)
      .try
      {
        IL_00fd:  ldarg.0
        IL_00fe:  ldfld      uint8[] Game.TerrainSerializer129::m_buffer
        IL_0103:  ldc.i4.0
        IL_0104:  ldelema    [System.Runtime]System.Byte
        IL_0109:  stloc.s    V_10
        IL_010b:  ldloc.s    V_10
        IL_010d:  conv.i
        IL_010e:  stloc.s    V_11
        IL_0110:  ldc.i4.0
        IL_0111:  stloc.s    V_12
        IL_0113:  br.s       IL_015c

        IL_0115:  ldc.i4.0
        IL_0116:  stloc.s    V_13
        IL_0118:  br.s       IL_0150

        IL_011a:  ldloc.s    V_11
        IL_011c:  ldarg.0
        IL_011d:  ldfld      class Game.Terrain Game.TerrainSerializer129::m_terrain
        IL_0122:  ldloc.s    V_12
        IL_0124:  ldarg.1
        IL_0125:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
        IL_012a:  ldfld      int32 [Engine]Engine.Point2::X
        IL_012f:  add
        IL_0130:  ldloc.s    V_13
        IL_0132:  ldarg.1
        IL_0133:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
        IL_0138:  ldfld      int32 [Engine]Engine.Point2::Y
        IL_013d:  add
        IL_013e:  callvirt   instance int32 Game.Terrain::GetShaftValue(int32,
                                                                        int32)
        IL_0143:  stind.i4
        IL_0144:  ldloc.s    V_11
        IL_0146:  ldc.i4.4
        IL_0147:  add
        IL_0148:  stloc.s    V_11
        IL_014a:  ldloc.s    V_13
        IL_014c:  ldc.i4.1
        IL_014d:  add
        IL_014e:  stloc.s    V_13
        IL_0150:  ldloc.s    V_13
        IL_0152:  ldc.i4.s   16
        IL_0154:  blt.s      IL_011a

        IL_0156:  ldloc.s    V_12
        IL_0158:  ldc.i4.1
        IL_0159:  add
        IL_015a:  stloc.s    V_12
        IL_015c:  ldloc.s    V_12
        IL_015e:  ldc.i4.s   16
        IL_0160:  blt.s      IL_0115

        IL_0162:  leave.s    IL_0169

      }  // end .try
      finally
      {
        IL_0164:  ldc.i4.0
        IL_0165:  conv.u
        IL_0166:  stloc.s    V_10
        IL_0168:  endfinally
      }  // end handler
      IL_0169:  ldarg.0
      IL_016a:  ldfld      class [System.IO]System.IO.Stream Game.TerrainSerializer129::m_stream
      IL_016f:  ldarg.0
      IL_0170:  ldfld      uint8[] Game.TerrainSerializer129::m_buffer
      IL_0175:  ldc.i4.0
      IL_0176:  ldc.i4     0x400
      IL_017b:  callvirt   instance void [System.IO]System.IO.Stream::Write(uint8[],
                                                                            int32,
                                                                            int32)
      IL_0180:  ldloc.2
      IL_0181:  brfalse.s  IL_01f6

      IL_0183:  ldarg.0
      IL_0184:  ldfld      class [System.IO]System.IO.Stream Game.TerrainSerializer129::m_stream
      IL_0189:  callvirt   instance void [System.IO]System.IO.Stream::Flush()
      IL_018e:  ldarg.0
      IL_018f:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,int64> Game.TerrainSerializer129::m_chunkOffsets
      IL_0194:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,int64>::get_Count()
      IL_0199:  ldc.i4     0x10000
      IL_019e:  rem
      IL_019f:  ldc.i4.3
      IL_01a0:  mul
      IL_01a1:  ldc.i4.4
      IL_01a2:  mul
      IL_01a3:  stloc.s    V_14
      IL_01a5:  ldarg.0
      IL_01a6:  ldfld      class [System.IO]System.IO.Stream Game.TerrainSerializer129::m_stream
      IL_01ab:  ldloc.s    V_14
      IL_01ad:  conv.i8
      IL_01ae:  ldc.i4.0
      IL_01af:  callvirt   instance int64 [System.IO]System.IO.Stream::Seek(int64,
                                                                            valuetype [System.IO]System.IO.SeekOrigin)
      IL_01b4:  pop
      IL_01b5:  ldarg.0
      IL_01b6:  ldfld      class [System.IO]System.IO.Stream Game.TerrainSerializer129::m_stream
      IL_01bb:  ldloc.0
      IL_01bc:  call       void Game.TerrainSerializer129::WriteInt(class [System.IO]System.IO.Stream,
                                                                    int32)
      IL_01c1:  ldarg.0
      IL_01c2:  ldfld      class [System.IO]System.IO.Stream Game.TerrainSerializer129::m_stream
      IL_01c7:  ldloc.1
      IL_01c8:  call       void Game.TerrainSerializer129::WriteInt(class [System.IO]System.IO.Stream,
                                                                    int32)
      IL_01cd:  ldarg.0
      IL_01ce:  ldfld      class [System.IO]System.IO.Stream Game.TerrainSerializer129::m_stream
      IL_01d3:  ldarg.0
      IL_01d4:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,int64> Game.TerrainSerializer129::m_chunkOffsets
      IL_01d9:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,int64>::get_Count()
      IL_01de:  call       void Game.TerrainSerializer129::WriteInt(class [System.IO]System.IO.Stream,
                                                                    int32)
      IL_01e3:  ldarg.0
      IL_01e4:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,int64> Game.TerrainSerializer129::m_chunkOffsets
      IL_01e9:  ldloc.0
      IL_01ea:  ldloc.1
      IL_01eb:  newobj     instance void [Engine]Engine.Point2::.ctor(int32,
                                                                      int32)
      IL_01f0:  ldloc.3
      IL_01f1:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,int64>::set_Item(!0,
                                                                                                                                                            !1)
      IL_01f6:  ldarg.0
      IL_01f7:  ldfld      class [System.IO]System.IO.Stream Game.TerrainSerializer129::m_stream
      IL_01fc:  callvirt   instance void [System.IO]System.IO.Stream::Flush()
      IL_0201:  leave.s    IL_0235

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_0203:  stloc.s    V_15
      IL_0205:  ldstr      "Error writing data for chunk ({0},{1})."
      IL_020a:  ldc.i4.2
      IL_020b:  newarr     [System.Runtime]System.Object
      IL_0210:  dup
      IL_0211:  ldc.i4.0
      IL_0212:  ldloc.0
      IL_0213:  box        [System.Runtime]System.Int32
      IL_0218:  stelem.ref
      IL_0219:  dup
      IL_021a:  ldc.i4.1
      IL_021b:  ldloc.1
      IL_021c:  box        [System.Runtime]System.Int32
      IL_0221:  stelem.ref
      IL_0222:  call       string [System.Runtime]System.String::Format(string,
                                                                        object[])
      IL_0227:  ldloc.s    V_15
      IL_0229:  call       string Game.ExceptionManager::MakeFullErrorMessage(string,
                                                                              class [System.Runtime]System.Exception)
      IL_022e:  call       void [Engine]Engine.Log::Error(string)
      IL_0233:  leave.s    IL_0235

    }  // end handler
    IL_0235:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_023a:  pop
    IL_023b:  ret
  } // end of method TerrainSerializer129::SaveChunkBlocks

  .method private hidebysig static int32 
          ReadInt(class [System.IO]System.IO.Stream 'stream') cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  callvirt   instance int32 [System.IO]System.IO.Stream::ReadByte()
    IL_0006:  ldarg.0
    IL_0007:  callvirt   instance int32 [System.IO]System.IO.Stream::ReadByte()
    IL_000c:  ldc.i4.8
    IL_000d:  shl
    IL_000e:  add
    IL_000f:  ldarg.0
    IL_0010:  callvirt   instance int32 [System.IO]System.IO.Stream::ReadByte()
    IL_0015:  ldc.i4.s   16
    IL_0017:  shl
    IL_0018:  add
    IL_0019:  ldarg.0
    IL_001a:  callvirt   instance int32 [System.IO]System.IO.Stream::ReadByte()
    IL_001f:  ldc.i4.s   24
    IL_0021:  shl
    IL_0022:  add
    IL_0023:  ret
  } // end of method TerrainSerializer129::ReadInt

  .method private hidebysig static void  WriteInt(class [System.IO]System.IO.Stream 'stream',
                                                  int32 'value') cil managed
  {
    // 代码大小       41 (0x29)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  conv.u1
    IL_0003:  callvirt   instance void [System.IO]System.IO.Stream::WriteByte(uint8)
    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  ldc.i4.8
    IL_000b:  shr
    IL_000c:  conv.u1
    IL_000d:  callvirt   instance void [System.IO]System.IO.Stream::WriteByte(uint8)
    IL_0012:  ldarg.0
    IL_0013:  ldarg.1
    IL_0014:  ldc.i4.s   16
    IL_0016:  shr
    IL_0017:  conv.u1
    IL_0018:  callvirt   instance void [System.IO]System.IO.Stream::WriteByte(uint8)
    IL_001d:  ldarg.0
    IL_001e:  ldarg.1
    IL_001f:  ldc.i4.s   24
    IL_0021:  shr
    IL_0022:  conv.u1
    IL_0023:  callvirt   instance void [System.IO]System.IO.Stream::WriteByte(uint8)
    IL_0028:  ret
  } // end of method TerrainSerializer129::WriteInt

} // end of class Game.TerrainSerializer129