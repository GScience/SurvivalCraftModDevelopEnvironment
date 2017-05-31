.class public auto ansi beforefieldinit Game.TerrainSerializer14
       extends [System.Runtime]System.Object
       implements [System.Runtime]System.IDisposable
{
  .field public static literal int32 MaxChunks = int32(0x00010000)
  .field public static literal string ChunksFileName = "Chunks.dat"
  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private uint8[] m_buffer
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,int32> m_chunkOffsets
  .field private class [System.IO]System.IO.Stream m_stream
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.SubsystemTerrain subsystemTerrain,
                               string directoryName) cil managed
  {
    // 代码大小       175 (0xaf)
    .maxstack  4
    .locals init (string V_0,
             class [System.IO]System.IO.Stream V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5)
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4     0x10000
    IL_0006:  newarr     [System.Runtime]System.Byte
    IL_000b:  stfld      uint8[] Game.TerrainSerializer14::m_buffer
    IL_0010:  ldarg.0
    IL_0011:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,int32>::.ctor()
    IL_0016:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,int32> Game.TerrainSerializer14::m_chunkOffsets
    IL_001b:  ldarg.0
    IL_001c:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0021:  ldarg.0
    IL_0022:  ldarg.1
    IL_0023:  stfld      class Game.SubsystemTerrain Game.TerrainSerializer14::m_subsystemTerrain
    IL_0028:  ldc.i4.2
    IL_0029:  newarr     [System.Runtime]System.String
    IL_002e:  dup
    IL_002f:  ldc.i4.0
    IL_0030:  ldarg.2
    IL_0031:  stelem.ref
    IL_0032:  dup
    IL_0033:  ldc.i4.1
    IL_0034:  ldstr      "Chunks.dat"
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
      IL_0057:  ldc.i4.0
      IL_0058:  call       void Game.TerrainSerializer14::WriteTOCEntry(class [System.IO]System.IO.Stream,
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
    IL_007d:  stfld      class [System.IO]System.IO.Stream Game.TerrainSerializer14::m_stream
    IL_0082:  ldarg.0
    IL_0083:  ldfld      class [System.IO]System.IO.Stream Game.TerrainSerializer14::m_stream
    IL_0088:  ldloca.s   V_3
    IL_008a:  ldloca.s   V_4
    IL_008c:  ldloca.s   V_5
    IL_008e:  call       void Game.TerrainSerializer14::ReadTOCEntry(class [System.IO]System.IO.Stream,
                                                                     int32&,
                                                                     int32&,
                                                                     int32&)
    IL_0093:  ldloc.s    V_5
    IL_0095:  brfalse.s  IL_00ae

    IL_0097:  ldarg.0
    IL_0098:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,int32> Game.TerrainSerializer14::m_chunkOffsets
    IL_009d:  ldloc.3
    IL_009e:  ldloc.s    V_4
    IL_00a0:  newobj     instance void [Engine]Engine.Point2::.ctor(int32,
                                                                    int32)
    IL_00a5:  ldloc.s    V_5
    IL_00a7:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,int32>::set_Item(!0,
                                                                                                                                                          !1)
    IL_00ac:  br.s       IL_0082

    IL_00ae:  ret
  } // end of method TerrainSerializer14::.ctor

  .method public hidebysig instance bool 
          LoadChunk(class Game.TerrainChunk chunk) cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance bool Game.TerrainSerializer14::LoadChunkBlocks(class Game.TerrainChunk)
    IL_0007:  ret
  } // end of method TerrainSerializer14::LoadChunk

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
    IL_0014:  call       instance void Game.TerrainSerializer14::SaveChunkBlocks(class Game.TerrainChunk)
    IL_0019:  ldarg.1
    IL_001a:  ldc.i4.0
    IL_001b:  stfld      int32 Game.TerrainChunk::ModificationCounter
    IL_0020:  ret
  } // end of method TerrainSerializer14::SaveChunk

  .method public hidebysig newslot virtual final 
          instance void  Dispose() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldflda     class [System.IO]System.IO.Stream Game.TerrainSerializer14::m_stream
    IL_0006:  call       void [Engine]Engine.Utilities::Dispose<class [System.IO]System.IO.Stream>(!!0&)
    IL_000b:  ret
  } // end of method TerrainSerializer14::Dispose

  .method public hidebysig static void  ReadChunkHeader(class [System.IO]System.IO.Stream 'stream') cil managed
  {
    // 代码大小       50 (0x32)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       int32 Game.TerrainSerializer14::ReadInt(class [System.IO]System.IO.Stream)
    IL_0006:  ldarg.0
    IL_0007:  call       int32 Game.TerrainSerializer14::ReadInt(class [System.IO]System.IO.Stream)
    IL_000c:  stloc.0
    IL_000d:  ldarg.0
    IL_000e:  call       int32 Game.TerrainSerializer14::ReadInt(class [System.IO]System.IO.Stream)
    IL_0013:  pop
    IL_0014:  ldarg.0
    IL_0015:  call       int32 Game.TerrainSerializer14::ReadInt(class [System.IO]System.IO.Stream)
    IL_001a:  pop
    IL_001b:  ldc.i4     0xdeadbeef
    IL_0020:  bne.un.s   IL_0026

    IL_0022:  ldloc.0
    IL_0023:  ldc.i4.m1
    IL_0024:  beq.s      IL_0031

    IL_0026:  ldstr      "Invalid chunk header."
    IL_002b:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0030:  throw

    IL_0031:  ret
  } // end of method TerrainSerializer14::ReadChunkHeader

  .method public hidebysig static void  WriteChunkHeader(class [System.IO]System.IO.Stream 'stream',
                                                         int32 cx,
                                                         int32 cz) cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4     0xdeadbeef
    IL_0006:  call       void Game.TerrainSerializer14::WriteInt(class [System.IO]System.IO.Stream,
                                                                 int32)
    IL_000b:  ldarg.0
    IL_000c:  ldc.i4.m1
    IL_000d:  call       void Game.TerrainSerializer14::WriteInt(class [System.IO]System.IO.Stream,
                                                                 int32)
    IL_0012:  ldarg.0
    IL_0013:  ldarg.1
    IL_0014:  call       void Game.TerrainSerializer14::WriteInt(class [System.IO]System.IO.Stream,
                                                                 int32)
    IL_0019:  ldarg.0
    IL_001a:  ldarg.2
    IL_001b:  call       void Game.TerrainSerializer14::WriteInt(class [System.IO]System.IO.Stream,
                                                                 int32)
    IL_0020:  ret
  } // end of method TerrainSerializer14::WriteChunkHeader

  .method public hidebysig static void  ReadTOCEntry(class [System.IO]System.IO.Stream 'stream',
                                                     [out] int32& cx,
                                                     [out] int32& cz,
                                                     [out] int32& offset) cil managed
  {
    // 代码大小       25 (0x19)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  call       int32 Game.TerrainSerializer14::ReadInt(class [System.IO]System.IO.Stream)
    IL_0007:  stind.i4
    IL_0008:  ldarg.2
    IL_0009:  ldarg.0
    IL_000a:  call       int32 Game.TerrainSerializer14::ReadInt(class [System.IO]System.IO.Stream)
    IL_000f:  stind.i4
    IL_0010:  ldarg.3
    IL_0011:  ldarg.0
    IL_0012:  call       int32 Game.TerrainSerializer14::ReadInt(class [System.IO]System.IO.Stream)
    IL_0017:  stind.i4
    IL_0018:  ret
  } // end of method TerrainSerializer14::ReadTOCEntry

  .method public hidebysig static void  WriteTOCEntry(class [System.IO]System.IO.Stream 'stream',
                                                      int32 cx,
                                                      int32 cz,
                                                      int32 offset) cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       void Game.TerrainSerializer14::WriteInt(class [System.IO]System.IO.Stream,
                                                                 int32)
    IL_0007:  ldarg.0
    IL_0008:  ldarg.2
    IL_0009:  call       void Game.TerrainSerializer14::WriteInt(class [System.IO]System.IO.Stream,
                                                                 int32)
    IL_000e:  ldarg.0
    IL_000f:  ldarg.3
    IL_0010:  call       void Game.TerrainSerializer14::WriteInt(class [System.IO]System.IO.Stream,
                                                                 int32)
    IL_0015:  ret
  } // end of method TerrainSerializer14::WriteTOCEntry

  .method private hidebysig instance bool 
          LoadChunkBlocks(class Game.TerrainChunk chunk) cil managed
  {
    // 代码大小       527 (0x20f)
    .maxstack  5
    .locals init (bool V_0,
             class Game.TerrainData V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7,
             int32 V_8,
             int32 V_9,
             int32 V_10,
             int32 V_11,
             int32 V_12,
             int32 V_13,
             class [System.Runtime]System.Exception V_14)
    IL_0000:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_0005:  pop
    IL_0006:  ldc.i4.0
    IL_0007:  stloc.0
    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.SubsystemTerrain Game.TerrainSerializer14::m_subsystemTerrain
    IL_000e:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0013:  stloc.1
    IL_0014:  ldarg.1
    IL_0015:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_001a:  ldfld      int32 [Engine]Engine.Point2::X
    IL_001f:  ldc.i4.s   16
    IL_0021:  div
    IL_0022:  stloc.2
    IL_0023:  ldarg.1
    IL_0024:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_0029:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_002e:  ldc.i4.s   16
    IL_0030:  div
    IL_0031:  stloc.3
    .try
    {
      IL_0032:  ldarg.0
      IL_0033:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,int32> Game.TerrainSerializer14::m_chunkOffsets
      IL_0038:  ldloc.2
      IL_0039:  ldloc.3
      IL_003a:  newobj     instance void [Engine]Engine.Point2::.ctor(int32,
                                                                      int32)
      IL_003f:  ldloca.s   V_4
      IL_0041:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,int32>::TryGetValue(!0,
                                                                                                                                                               !1&)
      IL_0046:  brfalse    IL_01d3

      IL_004b:  ldarg.0
      IL_004c:  ldfld      class [System.IO]System.IO.Stream Game.TerrainSerializer14::m_stream
      IL_0051:  ldloc.s    V_4
      IL_0053:  conv.i8
      IL_0054:  ldc.i4.0
      IL_0055:  callvirt   instance int64 [System.IO]System.IO.Stream::Seek(int64,
                                                                            valuetype [System.IO]System.IO.SeekOrigin)
      IL_005a:  pop
      IL_005b:  ldarg.0
      IL_005c:  ldfld      class [System.IO]System.IO.Stream Game.TerrainSerializer14::m_stream
      IL_0061:  call       void Game.TerrainSerializer14::ReadChunkHeader(class [System.IO]System.IO.Stream)
      IL_0066:  ldc.i4.0
      IL_0067:  stloc.s    V_5
      IL_0069:  ldarg.0
      IL_006a:  ldfld      class [System.IO]System.IO.Stream Game.TerrainSerializer14::m_stream
      IL_006f:  ldarg.0
      IL_0070:  ldfld      uint8[] Game.TerrainSerializer14::m_buffer
      IL_0075:  ldc.i4.0
      IL_0076:  ldc.i4     0x10000
      IL_007b:  callvirt   instance int32 [System.IO]System.IO.Stream::Read(uint8[],
                                                                            int32,
                                                                            int32)
      IL_0080:  pop
      IL_0081:  ldc.i4.0
      IL_0082:  stloc.s    V_6
      IL_0084:  br         IL_010d

      IL_0089:  ldc.i4.0
      IL_008a:  stloc.s    V_7
      IL_008c:  br.s       IL_0101

      IL_008e:  ldloc.1
      IL_008f:  ldarg.1
      IL_0090:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
      IL_0095:  ldfld      int32 [Engine]Engine.Point2::X
      IL_009a:  ldloc.s    V_6
      IL_009c:  add
      IL_009d:  ldc.i4.0
      IL_009e:  ldarg.1
      IL_009f:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
      IL_00a4:  ldfld      int32 [Engine]Engine.Point2::Y
      IL_00a9:  ldloc.s    V_7
      IL_00ab:  add
      IL_00ac:  callvirt   instance int32 Game.TerrainData::CalculateCellIndex(int32,
                                                                               int32,
                                                                               int32)
      IL_00b1:  stloc.s    V_8
      IL_00b3:  ldc.i4.0
      IL_00b4:  stloc.s    V_9
      IL_00b6:  br.s       IL_00f2

      IL_00b8:  ldarg.0
      IL_00b9:  ldfld      uint8[] Game.TerrainSerializer14::m_buffer
      IL_00be:  ldloc.s    V_5
      IL_00c0:  dup
      IL_00c1:  ldc.i4.1
      IL_00c2:  add
      IL_00c3:  stloc.s    V_5
      IL_00c5:  ldelem.u1
      IL_00c6:  stloc.s    V_10
      IL_00c8:  ldloc.s    V_10
      IL_00ca:  ldarg.0
      IL_00cb:  ldfld      uint8[] Game.TerrainSerializer14::m_buffer
      IL_00d0:  ldloc.s    V_5
      IL_00d2:  dup
      IL_00d3:  ldc.i4.1
      IL_00d4:  add
      IL_00d5:  stloc.s    V_5
      IL_00d7:  ldelem.u1
      IL_00d8:  ldc.i4.8
      IL_00d9:  shl
      IL_00da:  or
      IL_00db:  stloc.s    V_10
      IL_00dd:  ldloc.1
      IL_00de:  ldloc.s    V_8
      IL_00e0:  dup
      IL_00e1:  ldc.i4.1
      IL_00e2:  add
      IL_00e3:  stloc.s    V_8
      IL_00e5:  ldloc.s    V_10
      IL_00e7:  callvirt   instance void Game.TerrainData::SetCellValueFast(int32,
                                                                            int32)
      IL_00ec:  ldloc.s    V_9
      IL_00ee:  ldc.i4.1
      IL_00ef:  add
      IL_00f0:  stloc.s    V_9
      IL_00f2:  ldloc.s    V_9
      IL_00f4:  ldc.i4     0x80
      IL_00f9:  blt.s      IL_00b8

      IL_00fb:  ldloc.s    V_7
      IL_00fd:  ldc.i4.1
      IL_00fe:  add
      IL_00ff:  stloc.s    V_7
      IL_0101:  ldloc.s    V_7
      IL_0103:  ldc.i4.s   16
      IL_0105:  blt.s      IL_008e

      IL_0107:  ldloc.s    V_6
      IL_0109:  ldc.i4.1
      IL_010a:  add
      IL_010b:  stloc.s    V_6
      IL_010d:  ldloc.s    V_6
      IL_010f:  ldc.i4.s   16
      IL_0111:  blt        IL_0089

      IL_0116:  ldc.i4.0
      IL_0117:  stloc.s    V_5
      IL_0119:  ldarg.0
      IL_011a:  ldfld      class [System.IO]System.IO.Stream Game.TerrainSerializer14::m_stream
      IL_011f:  ldarg.0
      IL_0120:  ldfld      uint8[] Game.TerrainSerializer14::m_buffer
      IL_0125:  ldc.i4.0
      IL_0126:  ldc.i4     0x400
      IL_012b:  callvirt   instance int32 [System.IO]System.IO.Stream::Read(uint8[],
                                                                            int32,
                                                                            int32)
      IL_0130:  pop
      IL_0131:  ldc.i4.0
      IL_0132:  stloc.s    V_11
      IL_0134:  br         IL_01c8

      IL_0139:  ldc.i4.0
      IL_013a:  stloc.s    V_12
      IL_013c:  br.s       IL_01b9

      IL_013e:  ldarg.0
      IL_013f:  ldfld      uint8[] Game.TerrainSerializer14::m_buffer
      IL_0144:  ldloc.s    V_5
      IL_0146:  dup
      IL_0147:  ldc.i4.1
      IL_0148:  add
      IL_0149:  stloc.s    V_5
      IL_014b:  ldelem.u1
      IL_014c:  stloc.s    V_13
      IL_014e:  ldloc.s    V_13
      IL_0150:  ldarg.0
      IL_0151:  ldfld      uint8[] Game.TerrainSerializer14::m_buffer
      IL_0156:  ldloc.s    V_5
      IL_0158:  dup
      IL_0159:  ldc.i4.1
      IL_015a:  add
      IL_015b:  stloc.s    V_5
      IL_015d:  ldelem.u1
      IL_015e:  ldc.i4.8
      IL_015f:  shl
      IL_0160:  or
      IL_0161:  stloc.s    V_13
      IL_0163:  ldloc.s    V_13
      IL_0165:  ldarg.0
      IL_0166:  ldfld      uint8[] Game.TerrainSerializer14::m_buffer
      IL_016b:  ldloc.s    V_5
      IL_016d:  dup
      IL_016e:  ldc.i4.1
      IL_016f:  add
      IL_0170:  stloc.s    V_5
      IL_0172:  ldelem.u1
      IL_0173:  ldc.i4.s   16
      IL_0175:  shl
      IL_0176:  or
      IL_0177:  stloc.s    V_13
      IL_0179:  ldloc.s    V_13
      IL_017b:  ldarg.0
      IL_017c:  ldfld      uint8[] Game.TerrainSerializer14::m_buffer
      IL_0181:  ldloc.s    V_5
      IL_0183:  dup
      IL_0184:  ldc.i4.1
      IL_0185:  add
      IL_0186:  stloc.s    V_5
      IL_0188:  ldelem.u1
      IL_0189:  ldc.i4.s   24
      IL_018b:  shl
      IL_018c:  or
      IL_018d:  stloc.s    V_13
      IL_018f:  ldloc.1
      IL_0190:  ldloc.s    V_11
      IL_0192:  ldarg.1
      IL_0193:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
      IL_0198:  ldfld      int32 [Engine]Engine.Point2::X
      IL_019d:  add
      IL_019e:  ldloc.s    V_12
      IL_01a0:  ldarg.1
      IL_01a1:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
      IL_01a6:  ldfld      int32 [Engine]Engine.Point2::Y
      IL_01ab:  add
      IL_01ac:  ldloc.s    V_13
      IL_01ae:  callvirt   instance void Game.TerrainData::SetShaftValueFast(int32,
                                                                             int32,
                                                                             int32)
      IL_01b3:  ldloc.s    V_12
      IL_01b5:  ldc.i4.1
      IL_01b6:  add
      IL_01b7:  stloc.s    V_12
      IL_01b9:  ldloc.s    V_12
      IL_01bb:  ldc.i4.s   16
      IL_01bd:  blt        IL_013e

      IL_01c2:  ldloc.s    V_11
      IL_01c4:  ldc.i4.1
      IL_01c5:  add
      IL_01c6:  stloc.s    V_11
      IL_01c8:  ldloc.s    V_11
      IL_01ca:  ldc.i4.s   16
      IL_01cc:  blt        IL_0139

      IL_01d1:  ldc.i4.1
      IL_01d2:  stloc.0
      IL_01d3:  leave.s    IL_0207

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_01d5:  stloc.s    V_14
      IL_01d7:  ldstr      "Error loading data for chunk ({0},{1})."
      IL_01dc:  ldc.i4.2
      IL_01dd:  newarr     [System.Runtime]System.Object
      IL_01e2:  dup
      IL_01e3:  ldc.i4.0
      IL_01e4:  ldloc.2
      IL_01e5:  box        [System.Runtime]System.Int32
      IL_01ea:  stelem.ref
      IL_01eb:  dup
      IL_01ec:  ldc.i4.1
      IL_01ed:  ldloc.3
      IL_01ee:  box        [System.Runtime]System.Int32
      IL_01f3:  stelem.ref
      IL_01f4:  call       string [System.Runtime]System.String::Format(string,
                                                                        object[])
      IL_01f9:  ldloc.s    V_14
      IL_01fb:  call       string Game.ExceptionManager::MakeFullErrorMessage(string,
                                                                              class [System.Runtime]System.Exception)
      IL_0200:  call       void [Engine]Engine.Log::Error(string)
      IL_0205:  leave.s    IL_0207

    }  // end handler
    IL_0207:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_020c:  pop
    IL_020d:  ldloc.0
    IL_020e:  ret
  } // end of method TerrainSerializer14::LoadChunkBlocks

  .method private hidebysig instance void 
          SaveChunkBlocks(class Game.TerrainChunk chunk) cil managed
  {
    // 代码大小       656 (0x290)
    .maxstack  5
    .locals init (class Game.TerrainData V_0,
             int32 V_1,
             int32 V_2,
             bool V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7,
             int32 V_8,
             int32 V_9,
             int32 V_10,
             int32 V_11,
             int32 V_12,
             int32 V_13,
             int32 V_14,
             class [System.Runtime]System.Exception V_15)
    IL_0000:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_0005:  pop
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class Game.SubsystemTerrain Game.TerrainSerializer14::m_subsystemTerrain
    IL_000c:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0011:  stloc.0
    IL_0012:  ldarg.1
    IL_0013:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_0018:  ldfld      int32 [Engine]Engine.Point2::X
    IL_001d:  ldc.i4.s   16
    IL_001f:  div
    IL_0020:  stloc.1
    IL_0021:  ldarg.1
    IL_0022:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_0027:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_002c:  ldc.i4.s   16
    IL_002e:  div
    IL_002f:  stloc.2
    .try
    {
      IL_0030:  ldc.i4.0
      IL_0031:  stloc.3
      IL_0032:  ldarg.0
      IL_0033:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,int32> Game.TerrainSerializer14::m_chunkOffsets
      IL_0038:  ldloc.1
      IL_0039:  ldloc.2
      IL_003a:  newobj     instance void [Engine]Engine.Point2::.ctor(int32,
                                                                      int32)
      IL_003f:  ldloca.s   V_4
      IL_0041:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,int32>::TryGetValue(!0,
                                                                                                                                                               !1&)
      IL_0046:  brfalse.s  IL_005a

      IL_0048:  ldarg.0
      IL_0049:  ldfld      class [System.IO]System.IO.Stream Game.TerrainSerializer14::m_stream
      IL_004e:  ldloc.s    V_4
      IL_0050:  conv.i8
      IL_0051:  ldc.i4.0
      IL_0052:  callvirt   instance int64 [System.IO]System.IO.Stream::Seek(int64,
                                                                            valuetype [System.IO]System.IO.SeekOrigin)
      IL_0057:  pop
      IL_0058:  br.s       IL_007a

      IL_005a:  ldc.i4.1
      IL_005b:  stloc.3
      IL_005c:  ldarg.0
      IL_005d:  ldfld      class [System.IO]System.IO.Stream Game.TerrainSerializer14::m_stream
      IL_0062:  callvirt   instance int64 [System.IO]System.IO.Stream::get_Length()
      IL_0067:  conv.i4
      IL_0068:  stloc.s    V_4
      IL_006a:  ldarg.0
      IL_006b:  ldfld      class [System.IO]System.IO.Stream Game.TerrainSerializer14::m_stream
      IL_0070:  ldloc.s    V_4
      IL_0072:  conv.i8
      IL_0073:  ldc.i4.0
      IL_0074:  callvirt   instance int64 [System.IO]System.IO.Stream::Seek(int64,
                                                                            valuetype [System.IO]System.IO.SeekOrigin)
      IL_0079:  pop
      IL_007a:  ldarg.0
      IL_007b:  ldfld      class [System.IO]System.IO.Stream Game.TerrainSerializer14::m_stream
      IL_0080:  ldloc.1
      IL_0081:  ldloc.2
      IL_0082:  call       void Game.TerrainSerializer14::WriteChunkHeader(class [System.IO]System.IO.Stream,
                                                                           int32,
                                                                           int32)
      IL_0087:  ldc.i4.0
      IL_0088:  stloc.s    V_5
      IL_008a:  ldc.i4.0
      IL_008b:  stloc.s    V_6
      IL_008d:  br         IL_0115

      IL_0092:  ldc.i4.0
      IL_0093:  stloc.s    V_7
      IL_0095:  br.s       IL_0109

      IL_0097:  ldloc.0
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
      IL_00bf:  br.s       IL_00fa

      IL_00c1:  ldloc.0
      IL_00c2:  ldloc.s    V_8
      IL_00c4:  dup
      IL_00c5:  ldc.i4.1
      IL_00c6:  add
      IL_00c7:  stloc.s    V_8
      IL_00c9:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32)
      IL_00ce:  stloc.s    V_10
      IL_00d0:  ldarg.0
      IL_00d1:  ldfld      uint8[] Game.TerrainSerializer14::m_buffer
      IL_00d6:  ldloc.s    V_5
      IL_00d8:  dup
      IL_00d9:  ldc.i4.1
      IL_00da:  add
      IL_00db:  stloc.s    V_5
      IL_00dd:  ldloc.s    V_10
      IL_00df:  conv.u1
      IL_00e0:  stelem.i1
      IL_00e1:  ldarg.0
      IL_00e2:  ldfld      uint8[] Game.TerrainSerializer14::m_buffer
      IL_00e7:  ldloc.s    V_5
      IL_00e9:  dup
      IL_00ea:  ldc.i4.1
      IL_00eb:  add
      IL_00ec:  stloc.s    V_5
      IL_00ee:  ldloc.s    V_10
      IL_00f0:  ldc.i4.8
      IL_00f1:  shr
      IL_00f2:  conv.u1
      IL_00f3:  stelem.i1
      IL_00f4:  ldloc.s    V_9
      IL_00f6:  ldc.i4.1
      IL_00f7:  add
      IL_00f8:  stloc.s    V_9
      IL_00fa:  ldloc.s    V_9
      IL_00fc:  ldc.i4     0x80
      IL_0101:  blt.s      IL_00c1

      IL_0103:  ldloc.s    V_7
      IL_0105:  ldc.i4.1
      IL_0106:  add
      IL_0107:  stloc.s    V_7
      IL_0109:  ldloc.s    V_7
      IL_010b:  ldc.i4.s   16
      IL_010d:  blt.s      IL_0097

      IL_010f:  ldloc.s    V_6
      IL_0111:  ldc.i4.1
      IL_0112:  add
      IL_0113:  stloc.s    V_6
      IL_0115:  ldloc.s    V_6
      IL_0117:  ldc.i4.s   16
      IL_0119:  blt        IL_0092

      IL_011e:  ldarg.0
      IL_011f:  ldfld      class [System.IO]System.IO.Stream Game.TerrainSerializer14::m_stream
      IL_0124:  ldarg.0
      IL_0125:  ldfld      uint8[] Game.TerrainSerializer14::m_buffer
      IL_012a:  ldc.i4.0
      IL_012b:  ldc.i4     0x10000
      IL_0130:  callvirt   instance void [System.IO]System.IO.Stream::Write(uint8[],
                                                                            int32,
                                                                            int32)
      IL_0135:  ldc.i4.0
      IL_0136:  stloc.s    V_5
      IL_0138:  ldc.i4.0
      IL_0139:  stloc.s    V_11
      IL_013b:  br         IL_01c7

      IL_0140:  ldc.i4.0
      IL_0141:  stloc.s    V_12
      IL_0143:  br.s       IL_01bb

      IL_0145:  ldloc.0
      IL_0146:  ldloc.s    V_11
      IL_0148:  ldarg.1
      IL_0149:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
      IL_014e:  ldfld      int32 [Engine]Engine.Point2::X
      IL_0153:  add
      IL_0154:  ldloc.s    V_12
      IL_0156:  ldarg.1
      IL_0157:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
      IL_015c:  ldfld      int32 [Engine]Engine.Point2::Y
      IL_0161:  add
      IL_0162:  callvirt   instance int32 Game.TerrainData::GetShaftValueFast(int32,
                                                                              int32)
      IL_0167:  stloc.s    V_13
      IL_0169:  ldarg.0
      IL_016a:  ldfld      uint8[] Game.TerrainSerializer14::m_buffer
      IL_016f:  ldloc.s    V_5
      IL_0171:  dup
      IL_0172:  ldc.i4.1
      IL_0173:  add
      IL_0174:  stloc.s    V_5
      IL_0176:  ldloc.s    V_13
      IL_0178:  conv.u1
      IL_0179:  stelem.i1
      IL_017a:  ldarg.0
      IL_017b:  ldfld      uint8[] Game.TerrainSerializer14::m_buffer
      IL_0180:  ldloc.s    V_5
      IL_0182:  dup
      IL_0183:  ldc.i4.1
      IL_0184:  add
      IL_0185:  stloc.s    V_5
      IL_0187:  ldloc.s    V_13
      IL_0189:  ldc.i4.8
      IL_018a:  shr
      IL_018b:  conv.u1
      IL_018c:  stelem.i1
      IL_018d:  ldarg.0
      IL_018e:  ldfld      uint8[] Game.TerrainSerializer14::m_buffer
      IL_0193:  ldloc.s    V_5
      IL_0195:  dup
      IL_0196:  ldc.i4.1
      IL_0197:  add
      IL_0198:  stloc.s    V_5
      IL_019a:  ldloc.s    V_13
      IL_019c:  ldc.i4.s   16
      IL_019e:  shr
      IL_019f:  conv.u1
      IL_01a0:  stelem.i1
      IL_01a1:  ldarg.0
      IL_01a2:  ldfld      uint8[] Game.TerrainSerializer14::m_buffer
      IL_01a7:  ldloc.s    V_5
      IL_01a9:  dup
      IL_01aa:  ldc.i4.1
      IL_01ab:  add
      IL_01ac:  stloc.s    V_5
      IL_01ae:  ldloc.s    V_13
      IL_01b0:  ldc.i4.s   24
      IL_01b2:  shr
      IL_01b3:  conv.u1
      IL_01b4:  stelem.i1
      IL_01b5:  ldloc.s    V_12
      IL_01b7:  ldc.i4.1
      IL_01b8:  add
      IL_01b9:  stloc.s    V_12
      IL_01bb:  ldloc.s    V_12
      IL_01bd:  ldc.i4.s   16
      IL_01bf:  blt.s      IL_0145

      IL_01c1:  ldloc.s    V_11
      IL_01c3:  ldc.i4.1
      IL_01c4:  add
      IL_01c5:  stloc.s    V_11
      IL_01c7:  ldloc.s    V_11
      IL_01c9:  ldc.i4.s   16
      IL_01cb:  blt        IL_0140

      IL_01d0:  ldarg.0
      IL_01d1:  ldfld      class [System.IO]System.IO.Stream Game.TerrainSerializer14::m_stream
      IL_01d6:  ldarg.0
      IL_01d7:  ldfld      uint8[] Game.TerrainSerializer14::m_buffer
      IL_01dc:  ldc.i4.0
      IL_01dd:  ldc.i4     0x400
      IL_01e2:  callvirt   instance void [System.IO]System.IO.Stream::Write(uint8[],
                                                                            int32,
                                                                            int32)
      IL_01e7:  ldloc.3
      IL_01e8:  brfalse.s  IL_0255

      IL_01ea:  ldarg.0
      IL_01eb:  ldfld      class [System.IO]System.IO.Stream Game.TerrainSerializer14::m_stream
      IL_01f0:  callvirt   instance void [System.IO]System.IO.Stream::Flush()
      IL_01f5:  ldarg.0
      IL_01f6:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,int32> Game.TerrainSerializer14::m_chunkOffsets
      IL_01fb:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,int32>::get_Count()
      IL_0200:  ldc.i4     0x10000
      IL_0205:  rem
      IL_0206:  ldc.i4.3
      IL_0207:  mul
      IL_0208:  ldc.i4.4
      IL_0209:  mul
      IL_020a:  stloc.s    V_14
      IL_020c:  ldarg.0
      IL_020d:  ldfld      class [System.IO]System.IO.Stream Game.TerrainSerializer14::m_stream
      IL_0212:  ldloc.s    V_14
      IL_0214:  conv.i8
      IL_0215:  ldc.i4.0
      IL_0216:  callvirt   instance int64 [System.IO]System.IO.Stream::Seek(int64,
                                                                            valuetype [System.IO]System.IO.SeekOrigin)
      IL_021b:  pop
      IL_021c:  ldarg.0
      IL_021d:  ldfld      class [System.IO]System.IO.Stream Game.TerrainSerializer14::m_stream
      IL_0222:  ldloc.1
      IL_0223:  call       void Game.TerrainSerializer14::WriteInt(class [System.IO]System.IO.Stream,
                                                                   int32)
      IL_0228:  ldarg.0
      IL_0229:  ldfld      class [System.IO]System.IO.Stream Game.TerrainSerializer14::m_stream
      IL_022e:  ldloc.2
      IL_022f:  call       void Game.TerrainSerializer14::WriteInt(class [System.IO]System.IO.Stream,
                                                                   int32)
      IL_0234:  ldarg.0
      IL_0235:  ldfld      class [System.IO]System.IO.Stream Game.TerrainSerializer14::m_stream
      IL_023a:  ldloc.s    V_4
      IL_023c:  call       void Game.TerrainSerializer14::WriteInt(class [System.IO]System.IO.Stream,
                                                                   int32)
      IL_0241:  ldarg.0
      IL_0242:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,int32> Game.TerrainSerializer14::m_chunkOffsets
      IL_0247:  ldloc.1
      IL_0248:  ldloc.2
      IL_0249:  newobj     instance void [Engine]Engine.Point2::.ctor(int32,
                                                                      int32)
      IL_024e:  ldloc.s    V_4
      IL_0250:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,int32>::set_Item(!0,
                                                                                                                                                            !1)
      IL_0255:  leave.s    IL_0289

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_0257:  stloc.s    V_15
      IL_0259:  ldstr      "Error writing data for chunk ({0},{1})."
      IL_025e:  ldc.i4.2
      IL_025f:  newarr     [System.Runtime]System.Object
      IL_0264:  dup
      IL_0265:  ldc.i4.0
      IL_0266:  ldloc.1
      IL_0267:  box        [System.Runtime]System.Int32
      IL_026c:  stelem.ref
      IL_026d:  dup
      IL_026e:  ldc.i4.1
      IL_026f:  ldloc.2
      IL_0270:  box        [System.Runtime]System.Int32
      IL_0275:  stelem.ref
      IL_0276:  call       string [System.Runtime]System.String::Format(string,
                                                                        object[])
      IL_027b:  ldloc.s    V_15
      IL_027d:  call       string Game.ExceptionManager::MakeFullErrorMessage(string,
                                                                              class [System.Runtime]System.Exception)
      IL_0282:  call       void [Engine]Engine.Log::Error(string)
      IL_0287:  leave.s    IL_0289

    }  // end handler
    IL_0289:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_028e:  pop
    IL_028f:  ret
  } // end of method TerrainSerializer14::SaveChunkBlocks

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
  } // end of method TerrainSerializer14::ReadInt

  .method private hidebysig static void  WriteInt(class [System.IO]System.IO.Stream 'stream',
                                                  int32 'value') cil managed
  {
    // 代码大小       65 (0x41)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldc.i4     0xff
    IL_0007:  and
    IL_0008:  conv.u1
    IL_0009:  callvirt   instance void [System.IO]System.IO.Stream::WriteByte(uint8)
    IL_000e:  ldarg.0
    IL_000f:  ldarg.1
    IL_0010:  ldc.i4.8
    IL_0011:  shr
    IL_0012:  ldc.i4     0xff
    IL_0017:  and
    IL_0018:  conv.u1
    IL_0019:  callvirt   instance void [System.IO]System.IO.Stream::WriteByte(uint8)
    IL_001e:  ldarg.0
    IL_001f:  ldarg.1
    IL_0020:  ldc.i4.s   16
    IL_0022:  shr
    IL_0023:  ldc.i4     0xff
    IL_0028:  and
    IL_0029:  conv.u1
    IL_002a:  callvirt   instance void [System.IO]System.IO.Stream::WriteByte(uint8)
    IL_002f:  ldarg.0
    IL_0030:  ldarg.1
    IL_0031:  ldc.i4.s   24
    IL_0033:  shr
    IL_0034:  ldc.i4     0xff
    IL_0039:  and
    IL_003a:  conv.u1
    IL_003b:  callvirt   instance void [System.IO]System.IO.Stream::WriteByte(uint8)
    IL_0040:  ret
  } // end of method TerrainSerializer14::WriteInt

} // end of class Game.TerrainSerializer14