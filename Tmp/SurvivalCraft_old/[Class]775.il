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
  .field public static literal int32 ChunkBytesCount = int32(0x00020410)
  .field public static literal string ChunksFileName = "Chunks32.dat"
  .field private class Game.TerrainData m_terrainData
  .field private uint8[] m_buffer
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,int64> m_chunkOffsets
  .field private class [System.IO]System.IO.Stream m_stream
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.TerrainData terrainData,
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
    IL_0023:  stfld      class Game.TerrainData Game.TerrainSerializer129::m_terrainData
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
    // 代码大小       456 (0x1c8)
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
    IL_000d:  ldc.i4.s   16
    IL_000f:  div
    IL_0010:  stloc.1
    IL_0011:  ldarg.1
    IL_0012:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_0017:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_001c:  ldc.i4.s   16
    IL_001e:  div
    IL_001f:  stloc.2
    .try
    {
      IL_0020:  ldarg.0
      IL_0021:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,int64> Game.TerrainSerializer129::m_chunkOffsets
      IL_0026:  ldloc.1
      IL_0027:  ldloc.2
      IL_0028:  newobj     instance void [Engine]Engine.Point2::.ctor(int32,
                                                                      int32)
      IL_002d:  ldloca.s   V_3
      IL_002f:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,int64>::TryGetValue(!0,
                                                                                                                                                               !1&)
      IL_0034:  brfalse    IL_0192

      IL_0039:  call       float64 [Engine]Engine.Time::get_RealTime()
      IL_003e:  pop
      IL_003f:  ldarg.0
      IL_0040:  ldfld      class [System.IO]System.IO.Stream Game.TerrainSerializer129::m_stream
      IL_0045:  ldloc.3
      IL_0046:  ldc.i4.0
      IL_0047:  callvirt   instance int64 [System.IO]System.IO.Stream::Seek(int64,
                                                                            valuetype [System.IO]System.IO.SeekOrigin)
      IL_004c:  pop
      IL_004d:  ldarg.0
      IL_004e:  ldfld      class [System.IO]System.IO.Stream Game.TerrainSerializer129::m_stream
      IL_0053:  call       void Game.TerrainSerializer129::ReadChunkHeader(class [System.IO]System.IO.Stream)
      IL_0058:  ldarg.0
      IL_0059:  ldfld      class [System.IO]System.IO.Stream Game.TerrainSerializer129::m_stream
      IL_005e:  ldarg.0
      IL_005f:  ldfld      uint8[] Game.TerrainSerializer129::m_buffer
      IL_0064:  ldc.i4.0
      IL_0065:  ldc.i4     0x20000
      IL_006a:  callvirt   instance int32 [System.IO]System.IO.Stream::Read(uint8[],
                                                                            int32,
                                                                            int32)
      IL_006f:  pop
      .try
      {
        IL_0070:  ldarg.0
        IL_0071:  ldfld      uint8[] Game.TerrainSerializer129::m_buffer
        IL_0076:  ldc.i4.0
        IL_0077:  ldelema    [System.Runtime]System.Byte
        IL_007c:  stloc.s    V_4
        IL_007e:  ldloc.s    V_4
        IL_0080:  conv.i
        IL_0081:  stloc.s    V_5
        IL_0083:  ldc.i4.0
        IL_0084:  stloc.s    V_6
        IL_0086:  br.s       IL_00f9

        IL_0088:  ldc.i4.0
        IL_0089:  stloc.s    V_7
        IL_008b:  br.s       IL_00ed

        IL_008d:  ldarg.0
        IL_008e:  ldfld      class Game.TerrainData Game.TerrainSerializer129::m_terrainData
        IL_0093:  ldarg.1
        IL_0094:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
        IL_0099:  ldfld      int32 [Engine]Engine.Point2::X
        IL_009e:  ldloc.s    V_6
        IL_00a0:  add
        IL_00a1:  ldc.i4.0
        IL_00a2:  ldarg.1
        IL_00a3:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
        IL_00a8:  ldfld      int32 [Engine]Engine.Point2::Y
        IL_00ad:  ldloc.s    V_7
        IL_00af:  add
        IL_00b0:  callvirt   instance int32 Game.TerrainData::CalculateCellIndex(int32,
                                                                                 int32,
                                                                                 int32)
        IL_00b5:  stloc.s    V_8
        IL_00b7:  ldc.i4.0
        IL_00b8:  stloc.s    V_9
        IL_00ba:  br.s       IL_00de

        IL_00bc:  ldarg.0
        IL_00bd:  ldfld      class Game.TerrainData Game.TerrainSerializer129::m_terrainData
        IL_00c2:  ldloc.s    V_8
        IL_00c4:  ldloc.s    V_5
        IL_00c6:  ldind.i4
        IL_00c7:  callvirt   instance void Game.TerrainData::SetCellValueFast(int32,
                                                                              int32)
        IL_00cc:  ldloc.s    V_9
        IL_00ce:  ldc.i4.1
        IL_00cf:  add
        IL_00d0:  stloc.s    V_9
        IL_00d2:  ldloc.s    V_8
        IL_00d4:  ldc.i4.1
        IL_00d5:  add
        IL_00d6:  stloc.s    V_8
        IL_00d8:  ldloc.s    V_5
        IL_00da:  ldc.i4.4
        IL_00db:  add
        IL_00dc:  stloc.s    V_5
        IL_00de:  ldloc.s    V_9
        IL_00e0:  ldc.i4     0x80
        IL_00e5:  blt.s      IL_00bc

        IL_00e7:  ldloc.s    V_7
        IL_00e9:  ldc.i4.1
        IL_00ea:  add
        IL_00eb:  stloc.s    V_7
        IL_00ed:  ldloc.s    V_7
        IL_00ef:  ldc.i4.s   16
        IL_00f1:  blt.s      IL_008d

        IL_00f3:  ldloc.s    V_6
        IL_00f5:  ldc.i4.1
        IL_00f6:  add
        IL_00f7:  stloc.s    V_6
        IL_00f9:  ldloc.s    V_6
        IL_00fb:  ldc.i4.s   16
        IL_00fd:  blt.s      IL_0088

        IL_00ff:  leave.s    IL_0106

      }  // end .try
      finally
      {
        IL_0101:  ldc.i4.0
        IL_0102:  conv.u
        IL_0103:  stloc.s    V_4
        IL_0105:  endfinally
      }  // end handler
      IL_0106:  ldarg.0
      IL_0107:  ldfld      class [System.IO]System.IO.Stream Game.TerrainSerializer129::m_stream
      IL_010c:  ldarg.0
      IL_010d:  ldfld      uint8[] Game.TerrainSerializer129::m_buffer
      IL_0112:  ldc.i4.0
      IL_0113:  ldc.i4     0x400
      IL_0118:  callvirt   instance int32 [System.IO]System.IO.Stream::Read(uint8[],
                                                                            int32,
                                                                            int32)
      IL_011d:  pop
      .try
      {
        IL_011e:  ldarg.0
        IL_011f:  ldfld      uint8[] Game.TerrainSerializer129::m_buffer
        IL_0124:  ldc.i4.0
        IL_0125:  ldelema    [System.Runtime]System.Byte
        IL_012a:  stloc.s    V_10
        IL_012c:  ldloc.s    V_10
        IL_012e:  conv.i
        IL_012f:  stloc.s    V_11
        IL_0131:  ldc.i4.0
        IL_0132:  stloc.s    V_12
        IL_0134:  br.s       IL_017d

        IL_0136:  ldc.i4.0
        IL_0137:  stloc.s    V_13
        IL_0139:  br.s       IL_0171

        IL_013b:  ldarg.0
        IL_013c:  ldfld      class Game.TerrainData Game.TerrainSerializer129::m_terrainData
        IL_0141:  ldloc.s    V_12
        IL_0143:  ldarg.1
        IL_0144:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
        IL_0149:  ldfld      int32 [Engine]Engine.Point2::X
        IL_014e:  add
        IL_014f:  ldloc.s    V_13
        IL_0151:  ldarg.1
        IL_0152:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
        IL_0157:  ldfld      int32 [Engine]Engine.Point2::Y
        IL_015c:  add
        IL_015d:  ldloc.s    V_11
        IL_015f:  ldind.i4
        IL_0160:  callvirt   instance void Game.TerrainData::SetShaftValueFast(int32,
                                                                               int32,
                                                                               int32)
        IL_0165:  ldloc.s    V_11
        IL_0167:  ldc.i4.4
        IL_0168:  add
        IL_0169:  stloc.s    V_11
        IL_016b:  ldloc.s    V_13
        IL_016d:  ldc.i4.1
        IL_016e:  add
        IL_016f:  stloc.s    V_13
        IL_0171:  ldloc.s    V_13
        IL_0173:  ldc.i4.s   16
        IL_0175:  blt.s      IL_013b

        IL_0177:  ldloc.s    V_12
        IL_0179:  ldc.i4.1
        IL_017a:  add
        IL_017b:  stloc.s    V_12
        IL_017d:  ldloc.s    V_12
        IL_017f:  ldc.i4.s   16
        IL_0181:  blt.s      IL_0136

        IL_0183:  leave.s    IL_018a

      }  // end .try
      finally
      {
        IL_0185:  ldc.i4.0
        IL_0186:  conv.u
        IL_0187:  stloc.s    V_10
        IL_0189:  endfinally
      }  // end handler
      IL_018a:  ldc.i4.1
      IL_018b:  stloc.0
      IL_018c:  call       float64 [Engine]Engine.Time::get_RealTime()
      IL_0191:  pop
      IL_0192:  leave.s    IL_01c6

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_0194:  stloc.s    V_14
      IL_0196:  ldstr      "Error loading data for chunk ({0},{1})."
      IL_019b:  ldc.i4.2
      IL_019c:  newarr     [System.Runtime]System.Object
      IL_01a1:  dup
      IL_01a2:  ldc.i4.0
      IL_01a3:  ldloc.1
      IL_01a4:  box        [System.Runtime]System.Int32
      IL_01a9:  stelem.ref
      IL_01aa:  dup
      IL_01ab:  ldc.i4.1
      IL_01ac:  ldloc.2
      IL_01ad:  box        [System.Runtime]System.Int32
      IL_01b2:  stelem.ref
      IL_01b3:  call       string [System.Runtime]System.String::Format(string,
                                                                        object[])
      IL_01b8:  ldloc.s    V_14
      IL_01ba:  call       string Game.ExceptionManager::MakeFullErrorMessage(string,
                                                                              class [System.Runtime]System.Exception)
      IL_01bf:  call       void [Engine]Engine.Log::Error(string)
      IL_01c4:  leave.s    IL_01c6

    }  // end handler
    IL_01c6:  ldloc.0
    IL_01c7:  ret
  } // end of method TerrainSerializer129::LoadChunkBlocks

  .method private hidebysig instance void 
          SaveChunkBlocks(class Game.TerrainChunk chunk) cil managed
  {
    // 代码大小       609 (0x261)
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
    IL_0011:  ldc.i4.s   16
    IL_0013:  div
    IL_0014:  stloc.0
    IL_0015:  ldarg.1
    IL_0016:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_001b:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0020:  ldc.i4.s   16
    IL_0022:  div
    IL_0023:  stloc.1
    .try
    {
      IL_0024:  ldc.i4.0
      IL_0025:  stloc.2
      IL_0026:  ldarg.0
      IL_0027:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,int64> Game.TerrainSerializer129::m_chunkOffsets
      IL_002c:  ldloc.0
      IL_002d:  ldloc.1
      IL_002e:  newobj     instance void [Engine]Engine.Point2::.ctor(int32,
                                                                      int32)
      IL_0033:  ldloca.s   V_3
      IL_0035:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,int64>::TryGetValue(!0,
                                                                                                                                                               !1&)
      IL_003a:  brfalse.s  IL_004c

      IL_003c:  ldarg.0
      IL_003d:  ldfld      class [System.IO]System.IO.Stream Game.TerrainSerializer129::m_stream
      IL_0042:  ldloc.3
      IL_0043:  ldc.i4.0
      IL_0044:  callvirt   instance int64 [System.IO]System.IO.Stream::Seek(int64,
                                                                            valuetype [System.IO]System.IO.SeekOrigin)
      IL_0049:  pop
      IL_004a:  br.s       IL_0068

      IL_004c:  ldc.i4.1
      IL_004d:  stloc.2
      IL_004e:  ldarg.0
      IL_004f:  ldfld      class [System.IO]System.IO.Stream Game.TerrainSerializer129::m_stream
      IL_0054:  callvirt   instance int64 [System.IO]System.IO.Stream::get_Length()
      IL_0059:  stloc.3
      IL_005a:  ldarg.0
      IL_005b:  ldfld      class [System.IO]System.IO.Stream Game.TerrainSerializer129::m_stream
      IL_0060:  ldloc.3
      IL_0061:  ldc.i4.0
      IL_0062:  callvirt   instance int64 [System.IO]System.IO.Stream::Seek(int64,
                                                                            valuetype [System.IO]System.IO.SeekOrigin)
      IL_0067:  pop
      IL_0068:  ldarg.0
      IL_0069:  ldfld      class [System.IO]System.IO.Stream Game.TerrainSerializer129::m_stream
      IL_006e:  ldloc.0
      IL_006f:  ldloc.1
      IL_0070:  call       void Game.TerrainSerializer129::WriteChunkHeader(class [System.IO]System.IO.Stream,
                                                                            int32,
                                                                            int32)
      .try
      {
        IL_0075:  ldarg.0
        IL_0076:  ldfld      uint8[] Game.TerrainSerializer129::m_buffer
        IL_007b:  ldc.i4.0
        IL_007c:  ldelema    [System.Runtime]System.Byte
        IL_0081:  stloc.s    V_4
        IL_0083:  ldloc.s    V_4
        IL_0085:  conv.i
        IL_0086:  stloc.s    V_5
        IL_0088:  ldc.i4.0
        IL_0089:  stloc.s    V_6
        IL_008b:  br.s       IL_00fe

        IL_008d:  ldc.i4.0
        IL_008e:  stloc.s    V_7
        IL_0090:  br.s       IL_00f2

        IL_0092:  ldarg.0
        IL_0093:  ldfld      class Game.TerrainData Game.TerrainSerializer129::m_terrainData
        IL_0098:  ldarg.1
        IL_0099:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
        IL_009e:  ldfld      int32 [Engine]Engine.Point2::X
        IL_00a3:  ldloc.s    V_6
        IL_00a5:  add
        IL_00a6:  ldc.i4.0
        IL_00a7:  ldarg.1
        IL_00a8:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
        IL_00ad:  ldfld      int32 [Engine]Engine.Point2::Y
        IL_00b2:  ldloc.s    V_7
        IL_00b4:  add
        IL_00b5:  callvirt   instance int32 Game.TerrainData::CalculateCellIndex(int32,
                                                                                 int32,
                                                                                 int32)
        IL_00ba:  stloc.s    V_8
        IL_00bc:  ldc.i4.0
        IL_00bd:  stloc.s    V_9
        IL_00bf:  br.s       IL_00e3

        IL_00c1:  ldloc.s    V_5
        IL_00c3:  ldarg.0
        IL_00c4:  ldfld      class Game.TerrainData Game.TerrainSerializer129::m_terrainData
        IL_00c9:  ldloc.s    V_8
        IL_00cb:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32)
        IL_00d0:  stind.i4
        IL_00d1:  ldloc.s    V_9
        IL_00d3:  ldc.i4.1
        IL_00d4:  add
        IL_00d5:  stloc.s    V_9
        IL_00d7:  ldloc.s    V_8
        IL_00d9:  ldc.i4.1
        IL_00da:  add
        IL_00db:  stloc.s    V_8
        IL_00dd:  ldloc.s    V_5
        IL_00df:  ldc.i4.4
        IL_00e0:  add
        IL_00e1:  stloc.s    V_5
        IL_00e3:  ldloc.s    V_9
        IL_00e5:  ldc.i4     0x80
        IL_00ea:  blt.s      IL_00c1

        IL_00ec:  ldloc.s    V_7
        IL_00ee:  ldc.i4.1
        IL_00ef:  add
        IL_00f0:  stloc.s    V_7
        IL_00f2:  ldloc.s    V_7
        IL_00f4:  ldc.i4.s   16
        IL_00f6:  blt.s      IL_0092

        IL_00f8:  ldloc.s    V_6
        IL_00fa:  ldc.i4.1
        IL_00fb:  add
        IL_00fc:  stloc.s    V_6
        IL_00fe:  ldloc.s    V_6
        IL_0100:  ldc.i4.s   16
        IL_0102:  blt.s      IL_008d

        IL_0104:  leave.s    IL_010b

      }  // end .try
      finally
      {
        IL_0106:  ldc.i4.0
        IL_0107:  conv.u
        IL_0108:  stloc.s    V_4
        IL_010a:  endfinally
      }  // end handler
      IL_010b:  ldarg.0
      IL_010c:  ldfld      class [System.IO]System.IO.Stream Game.TerrainSerializer129::m_stream
      IL_0111:  ldarg.0
      IL_0112:  ldfld      uint8[] Game.TerrainSerializer129::m_buffer
      IL_0117:  ldc.i4.0
      IL_0118:  ldc.i4     0x20000
      IL_011d:  callvirt   instance void [System.IO]System.IO.Stream::Write(uint8[],
                                                                            int32,
                                                                            int32)
      .try
      {
        IL_0122:  ldarg.0
        IL_0123:  ldfld      uint8[] Game.TerrainSerializer129::m_buffer
        IL_0128:  ldc.i4.0
        IL_0129:  ldelema    [System.Runtime]System.Byte
        IL_012e:  stloc.s    V_10
        IL_0130:  ldloc.s    V_10
        IL_0132:  conv.i
        IL_0133:  stloc.s    V_11
        IL_0135:  ldc.i4.0
        IL_0136:  stloc.s    V_12
        IL_0138:  br.s       IL_0181

        IL_013a:  ldc.i4.0
        IL_013b:  stloc.s    V_13
        IL_013d:  br.s       IL_0175

        IL_013f:  ldloc.s    V_11
        IL_0141:  ldarg.0
        IL_0142:  ldfld      class Game.TerrainData Game.TerrainSerializer129::m_terrainData
        IL_0147:  ldloc.s    V_12
        IL_0149:  ldarg.1
        IL_014a:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
        IL_014f:  ldfld      int32 [Engine]Engine.Point2::X
        IL_0154:  add
        IL_0155:  ldloc.s    V_13
        IL_0157:  ldarg.1
        IL_0158:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
        IL_015d:  ldfld      int32 [Engine]Engine.Point2::Y
        IL_0162:  add
        IL_0163:  callvirt   instance int32 Game.TerrainData::GetShaftValueFast(int32,
                                                                                int32)
        IL_0168:  stind.i4
        IL_0169:  ldloc.s    V_11
        IL_016b:  ldc.i4.4
        IL_016c:  add
        IL_016d:  stloc.s    V_11
        IL_016f:  ldloc.s    V_13
        IL_0171:  ldc.i4.1
        IL_0172:  add
        IL_0173:  stloc.s    V_13
        IL_0175:  ldloc.s    V_13
        IL_0177:  ldc.i4.s   16
        IL_0179:  blt.s      IL_013f

        IL_017b:  ldloc.s    V_12
        IL_017d:  ldc.i4.1
        IL_017e:  add
        IL_017f:  stloc.s    V_12
        IL_0181:  ldloc.s    V_12
        IL_0183:  ldc.i4.s   16
        IL_0185:  blt.s      IL_013a

        IL_0187:  leave.s    IL_018e

      }  // end .try
      finally
      {
        IL_0189:  ldc.i4.0
        IL_018a:  conv.u
        IL_018b:  stloc.s    V_10
        IL_018d:  endfinally
      }  // end handler
      IL_018e:  ldarg.0
      IL_018f:  ldfld      class [System.IO]System.IO.Stream Game.TerrainSerializer129::m_stream
      IL_0194:  ldarg.0
      IL_0195:  ldfld      uint8[] Game.TerrainSerializer129::m_buffer
      IL_019a:  ldc.i4.0
      IL_019b:  ldc.i4     0x400
      IL_01a0:  callvirt   instance void [System.IO]System.IO.Stream::Write(uint8[],
                                                                            int32,
                                                                            int32)
      IL_01a5:  ldloc.2
      IL_01a6:  brfalse.s  IL_021b

      IL_01a8:  ldarg.0
      IL_01a9:  ldfld      class [System.IO]System.IO.Stream Game.TerrainSerializer129::m_stream
      IL_01ae:  callvirt   instance void [System.IO]System.IO.Stream::Flush()
      IL_01b3:  ldarg.0
      IL_01b4:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,int64> Game.TerrainSerializer129::m_chunkOffsets
      IL_01b9:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,int64>::get_Count()
      IL_01be:  ldc.i4     0x10000
      IL_01c3:  rem
      IL_01c4:  ldc.i4.3
      IL_01c5:  mul
      IL_01c6:  ldc.i4.4
      IL_01c7:  mul
      IL_01c8:  stloc.s    V_14
      IL_01ca:  ldarg.0
      IL_01cb:  ldfld      class [System.IO]System.IO.Stream Game.TerrainSerializer129::m_stream
      IL_01d0:  ldloc.s    V_14
      IL_01d2:  conv.i8
      IL_01d3:  ldc.i4.0
      IL_01d4:  callvirt   instance int64 [System.IO]System.IO.Stream::Seek(int64,
                                                                            valuetype [System.IO]System.IO.SeekOrigin)
      IL_01d9:  pop
      IL_01da:  ldarg.0
      IL_01db:  ldfld      class [System.IO]System.IO.Stream Game.TerrainSerializer129::m_stream
      IL_01e0:  ldloc.0
      IL_01e1:  call       void Game.TerrainSerializer129::WriteInt(class [System.IO]System.IO.Stream,
                                                                    int32)
      IL_01e6:  ldarg.0
      IL_01e7:  ldfld      class [System.IO]System.IO.Stream Game.TerrainSerializer129::m_stream
      IL_01ec:  ldloc.1
      IL_01ed:  call       void Game.TerrainSerializer129::WriteInt(class [System.IO]System.IO.Stream,
                                                                    int32)
      IL_01f2:  ldarg.0
      IL_01f3:  ldfld      class [System.IO]System.IO.Stream Game.TerrainSerializer129::m_stream
      IL_01f8:  ldarg.0
      IL_01f9:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,int64> Game.TerrainSerializer129::m_chunkOffsets
      IL_01fe:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,int64>::get_Count()
      IL_0203:  call       void Game.TerrainSerializer129::WriteInt(class [System.IO]System.IO.Stream,
                                                                    int32)
      IL_0208:  ldarg.0
      IL_0209:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,int64> Game.TerrainSerializer129::m_chunkOffsets
      IL_020e:  ldloc.0
      IL_020f:  ldloc.1
      IL_0210:  newobj     instance void [Engine]Engine.Point2::.ctor(int32,
                                                                      int32)
      IL_0215:  ldloc.3
      IL_0216:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,int64>::set_Item(!0,
                                                                                                                                                            !1)
      IL_021b:  ldarg.0
      IL_021c:  ldfld      class [System.IO]System.IO.Stream Game.TerrainSerializer129::m_stream
      IL_0221:  callvirt   instance void [System.IO]System.IO.Stream::Flush()
      IL_0226:  leave.s    IL_025a

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_0228:  stloc.s    V_15
      IL_022a:  ldstr      "Error writing data for chunk ({0},{1})."
      IL_022f:  ldc.i4.2
      IL_0230:  newarr     [System.Runtime]System.Object
      IL_0235:  dup
      IL_0236:  ldc.i4.0
      IL_0237:  ldloc.0
      IL_0238:  box        [System.Runtime]System.Int32
      IL_023d:  stelem.ref
      IL_023e:  dup
      IL_023f:  ldc.i4.1
      IL_0240:  ldloc.1
      IL_0241:  box        [System.Runtime]System.Int32
      IL_0246:  stelem.ref
      IL_0247:  call       string [System.Runtime]System.String::Format(string,
                                                                        object[])
      IL_024c:  ldloc.s    V_15
      IL_024e:  call       string Game.ExceptionManager::MakeFullErrorMessage(string,
                                                                              class [System.Runtime]System.Exception)
      IL_0253:  call       void [Engine]Engine.Log::Error(string)
      IL_0258:  leave.s    IL_025a

    }  // end handler
    IL_025a:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_025f:  pop
    IL_0260:  ret
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