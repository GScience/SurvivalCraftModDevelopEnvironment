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
    // 代码大小       494 (0x1ee)
    .maxstack  5
    .locals init (bool V_0,
             class Game.Terrain V_1,
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
    IL_000e:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0013:  stloc.1
    IL_0014:  ldarg.1
    IL_0015:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_001a:  ldfld      int32 [Engine]Engine.Point2::X
    IL_001f:  ldc.i4.4
    IL_0020:  shr
    IL_0021:  stloc.2
    IL_0022:  ldarg.1
    IL_0023:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_0028:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_002d:  ldc.i4.4
    IL_002e:  shr
    IL_002f:  stloc.3
    .try
    {
      IL_0030:  ldarg.0
      IL_0031:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,int32> Game.TerrainSerializer14::m_chunkOffsets
      IL_0036:  ldloc.2
      IL_0037:  ldloc.3
      IL_0038:  newobj     instance void [Engine]Engine.Point2::.ctor(int32,
                                                                      int32)
      IL_003d:  ldloca.s   V_4
      IL_003f:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,int32>::TryGetValue(!0,
                                                                                                                                                               !1&)
      IL_0044:  brfalse    IL_01b2

      IL_0049:  ldarg.0
      IL_004a:  ldfld      class [System.IO]System.IO.Stream Game.TerrainSerializer14::m_stream
      IL_004f:  ldloc.s    V_4
      IL_0051:  conv.i8
      IL_0052:  ldc.i4.0
      IL_0053:  callvirt   instance int64 [System.IO]System.IO.Stream::Seek(int64,
                                                                            valuetype [System.IO]System.IO.SeekOrigin)
      IL_0058:  pop
      IL_0059:  ldarg.0
      IL_005a:  ldfld      class [System.IO]System.IO.Stream Game.TerrainSerializer14::m_stream
      IL_005f:  call       void Game.TerrainSerializer14::ReadChunkHeader(class [System.IO]System.IO.Stream)
      IL_0064:  ldc.i4.0
      IL_0065:  stloc.s    V_5
      IL_0067:  ldarg.0
      IL_0068:  ldfld      class [System.IO]System.IO.Stream Game.TerrainSerializer14::m_stream
      IL_006d:  ldarg.0
      IL_006e:  ldfld      uint8[] Game.TerrainSerializer14::m_buffer
      IL_0073:  ldc.i4.0
      IL_0074:  ldc.i4     0x10000
      IL_0079:  callvirt   instance int32 [System.IO]System.IO.Stream::Read(uint8[],
                                                                            int32,
                                                                            int32)
      IL_007e:  pop
      IL_007f:  ldc.i4.0
      IL_0080:  stloc.s    V_6
      IL_0082:  br.s       IL_00ef

      IL_0084:  ldc.i4.0
      IL_0085:  stloc.s    V_7
      IL_0087:  br.s       IL_00e3

      IL_0089:  ldloc.s    V_6
      IL_008b:  ldc.i4.0
      IL_008c:  ldloc.s    V_7
      IL_008e:  call       int32 Game.TerrainChunk::CalculateCellIndex(int32,
                                                                       int32,
                                                                       int32)
      IL_0093:  stloc.s    V_8
      IL_0095:  ldc.i4.0
      IL_0096:  stloc.s    V_9
      IL_0098:  br.s       IL_00d4

      IL_009a:  ldarg.0
      IL_009b:  ldfld      uint8[] Game.TerrainSerializer14::m_buffer
      IL_00a0:  ldloc.s    V_5
      IL_00a2:  dup
      IL_00a3:  ldc.i4.1
      IL_00a4:  add
      IL_00a5:  stloc.s    V_5
      IL_00a7:  ldelem.u1
      IL_00a8:  stloc.s    V_10
      IL_00aa:  ldloc.s    V_10
      IL_00ac:  ldarg.0
      IL_00ad:  ldfld      uint8[] Game.TerrainSerializer14::m_buffer
      IL_00b2:  ldloc.s    V_5
      IL_00b4:  dup
      IL_00b5:  ldc.i4.1
      IL_00b6:  add
      IL_00b7:  stloc.s    V_5
      IL_00b9:  ldelem.u1
      IL_00ba:  ldc.i4.8
      IL_00bb:  shl
      IL_00bc:  or
      IL_00bd:  stloc.s    V_10
      IL_00bf:  ldarg.1
      IL_00c0:  ldloc.s    V_8
      IL_00c2:  dup
      IL_00c3:  ldc.i4.1
      IL_00c4:  add
      IL_00c5:  stloc.s    V_8
      IL_00c7:  ldloc.s    V_10
      IL_00c9:  callvirt   instance void Game.TerrainChunk::SetCellValueFast(int32,
                                                                             int32)
      IL_00ce:  ldloc.s    V_9
      IL_00d0:  ldc.i4.1
      IL_00d1:  add
      IL_00d2:  stloc.s    V_9
      IL_00d4:  ldloc.s    V_9
      IL_00d6:  ldc.i4     0x80
      IL_00db:  blt.s      IL_009a

      IL_00dd:  ldloc.s    V_7
      IL_00df:  ldc.i4.1
      IL_00e0:  add
      IL_00e1:  stloc.s    V_7
      IL_00e3:  ldloc.s    V_7
      IL_00e5:  ldc.i4.s   16
      IL_00e7:  blt.s      IL_0089

      IL_00e9:  ldloc.s    V_6
      IL_00eb:  ldc.i4.1
      IL_00ec:  add
      IL_00ed:  stloc.s    V_6
      IL_00ef:  ldloc.s    V_6
      IL_00f1:  ldc.i4.s   16
      IL_00f3:  blt.s      IL_0084

      IL_00f5:  ldc.i4.0
      IL_00f6:  stloc.s    V_5
      IL_00f8:  ldarg.0
      IL_00f9:  ldfld      class [System.IO]System.IO.Stream Game.TerrainSerializer14::m_stream
      IL_00fe:  ldarg.0
      IL_00ff:  ldfld      uint8[] Game.TerrainSerializer14::m_buffer
      IL_0104:  ldc.i4.0
      IL_0105:  ldc.i4     0x400
      IL_010a:  callvirt   instance int32 [System.IO]System.IO.Stream::Read(uint8[],
                                                                            int32,
                                                                            int32)
      IL_010f:  pop
      IL_0110:  ldc.i4.0
      IL_0111:  stloc.s    V_11
      IL_0113:  br         IL_01a7

      IL_0118:  ldc.i4.0
      IL_0119:  stloc.s    V_12
      IL_011b:  br.s       IL_0198

      IL_011d:  ldarg.0
      IL_011e:  ldfld      uint8[] Game.TerrainSerializer14::m_buffer
      IL_0123:  ldloc.s    V_5
      IL_0125:  dup
      IL_0126:  ldc.i4.1
      IL_0127:  add
      IL_0128:  stloc.s    V_5
      IL_012a:  ldelem.u1
      IL_012b:  stloc.s    V_13
      IL_012d:  ldloc.s    V_13
      IL_012f:  ldarg.0
      IL_0130:  ldfld      uint8[] Game.TerrainSerializer14::m_buffer
      IL_0135:  ldloc.s    V_5
      IL_0137:  dup
      IL_0138:  ldc.i4.1
      IL_0139:  add
      IL_013a:  stloc.s    V_5
      IL_013c:  ldelem.u1
      IL_013d:  ldc.i4.8
      IL_013e:  shl
      IL_013f:  or
      IL_0140:  stloc.s    V_13
      IL_0142:  ldloc.s    V_13
      IL_0144:  ldarg.0
      IL_0145:  ldfld      uint8[] Game.TerrainSerializer14::m_buffer
      IL_014a:  ldloc.s    V_5
      IL_014c:  dup
      IL_014d:  ldc.i4.1
      IL_014e:  add
      IL_014f:  stloc.s    V_5
      IL_0151:  ldelem.u1
      IL_0152:  ldc.i4.s   16
      IL_0154:  shl
      IL_0155:  or
      IL_0156:  stloc.s    V_13
      IL_0158:  ldloc.s    V_13
      IL_015a:  ldarg.0
      IL_015b:  ldfld      uint8[] Game.TerrainSerializer14::m_buffer
      IL_0160:  ldloc.s    V_5
      IL_0162:  dup
      IL_0163:  ldc.i4.1
      IL_0164:  add
      IL_0165:  stloc.s    V_5
      IL_0167:  ldelem.u1
      IL_0168:  ldc.i4.s   24
      IL_016a:  shl
      IL_016b:  or
      IL_016c:  stloc.s    V_13
      IL_016e:  ldloc.1
      IL_016f:  ldloc.s    V_11
      IL_0171:  ldarg.1
      IL_0172:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
      IL_0177:  ldfld      int32 [Engine]Engine.Point2::X
      IL_017c:  add
      IL_017d:  ldloc.s    V_12
      IL_017f:  ldarg.1
      IL_0180:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
      IL_0185:  ldfld      int32 [Engine]Engine.Point2::Y
      IL_018a:  add
      IL_018b:  ldloc.s    V_13
      IL_018d:  callvirt   instance void Game.Terrain::SetShaftValue(int32,
                                                                     int32,
                                                                     int32)
      IL_0192:  ldloc.s    V_12
      IL_0194:  ldc.i4.1
      IL_0195:  add
      IL_0196:  stloc.s    V_12
      IL_0198:  ldloc.s    V_12
      IL_019a:  ldc.i4.s   16
      IL_019c:  blt        IL_011d

      IL_01a1:  ldloc.s    V_11
      IL_01a3:  ldc.i4.1
      IL_01a4:  add
      IL_01a5:  stloc.s    V_11
      IL_01a7:  ldloc.s    V_11
      IL_01a9:  ldc.i4.s   16
      IL_01ab:  blt        IL_0118

      IL_01b0:  ldc.i4.1
      IL_01b1:  stloc.0
      IL_01b2:  leave.s    IL_01e6

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_01b4:  stloc.s    V_14
      IL_01b6:  ldstr      "Error loading data for chunk ({0},{1})."
      IL_01bb:  ldc.i4.2
      IL_01bc:  newarr     [System.Runtime]System.Object
      IL_01c1:  dup
      IL_01c2:  ldc.i4.0
      IL_01c3:  ldloc.2
      IL_01c4:  box        [System.Runtime]System.Int32
      IL_01c9:  stelem.ref
      IL_01ca:  dup
      IL_01cb:  ldc.i4.1
      IL_01cc:  ldloc.3
      IL_01cd:  box        [System.Runtime]System.Int32
      IL_01d2:  stelem.ref
      IL_01d3:  call       string [System.Runtime]System.String::Format(string,
                                                                        object[])
      IL_01d8:  ldloc.s    V_14
      IL_01da:  call       string Game.ExceptionManager::MakeFullErrorMessage(string,
                                                                              class [System.Runtime]System.Exception)
      IL_01df:  call       void [Engine]Engine.Log::Error(string)
      IL_01e4:  leave.s    IL_01e6

    }  // end handler
    IL_01e6:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_01eb:  pop
    IL_01ec:  ldloc.0
    IL_01ed:  ret
  } // end of method TerrainSerializer14::LoadChunkBlocks

  .method private hidebysig instance void 
          SaveChunkBlocks(class Game.TerrainChunk chunk) cil managed
  {
    // 代码大小       623 (0x26f)
    .maxstack  5
    .locals init (class Game.Terrain V_0,
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
    IL_000c:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0011:  stloc.0
    IL_0012:  ldarg.1
    IL_0013:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_0018:  ldfld      int32 [Engine]Engine.Point2::X
    IL_001d:  ldc.i4.4
    IL_001e:  shr
    IL_001f:  stloc.1
    IL_0020:  ldarg.1
    IL_0021:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_0026:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_002b:  ldc.i4.4
    IL_002c:  shr
    IL_002d:  stloc.2
    .try
    {
      IL_002e:  ldc.i4.0
      IL_002f:  stloc.3
      IL_0030:  ldarg.0
      IL_0031:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,int32> Game.TerrainSerializer14::m_chunkOffsets
      IL_0036:  ldloc.1
      IL_0037:  ldloc.2
      IL_0038:  newobj     instance void [Engine]Engine.Point2::.ctor(int32,
                                                                      int32)
      IL_003d:  ldloca.s   V_4
      IL_003f:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,int32>::TryGetValue(!0,
                                                                                                                                                               !1&)
      IL_0044:  brfalse.s  IL_0058

      IL_0046:  ldarg.0
      IL_0047:  ldfld      class [System.IO]System.IO.Stream Game.TerrainSerializer14::m_stream
      IL_004c:  ldloc.s    V_4
      IL_004e:  conv.i8
      IL_004f:  ldc.i4.0
      IL_0050:  callvirt   instance int64 [System.IO]System.IO.Stream::Seek(int64,
                                                                            valuetype [System.IO]System.IO.SeekOrigin)
      IL_0055:  pop
      IL_0056:  br.s       IL_0078

      IL_0058:  ldc.i4.1
      IL_0059:  stloc.3
      IL_005a:  ldarg.0
      IL_005b:  ldfld      class [System.IO]System.IO.Stream Game.TerrainSerializer14::m_stream
      IL_0060:  callvirt   instance int64 [System.IO]System.IO.Stream::get_Length()
      IL_0065:  conv.i4
      IL_0066:  stloc.s    V_4
      IL_0068:  ldarg.0
      IL_0069:  ldfld      class [System.IO]System.IO.Stream Game.TerrainSerializer14::m_stream
      IL_006e:  ldloc.s    V_4
      IL_0070:  conv.i8
      IL_0071:  ldc.i4.0
      IL_0072:  callvirt   instance int64 [System.IO]System.IO.Stream::Seek(int64,
                                                                            valuetype [System.IO]System.IO.SeekOrigin)
      IL_0077:  pop
      IL_0078:  ldarg.0
      IL_0079:  ldfld      class [System.IO]System.IO.Stream Game.TerrainSerializer14::m_stream
      IL_007e:  ldloc.1
      IL_007f:  ldloc.2
      IL_0080:  call       void Game.TerrainSerializer14::WriteChunkHeader(class [System.IO]System.IO.Stream,
                                                                           int32,
                                                                           int32)
      IL_0085:  ldc.i4.0
      IL_0086:  stloc.s    V_5
      IL_0088:  ldc.i4.0
      IL_0089:  stloc.s    V_6
      IL_008b:  br.s       IL_00f7

      IL_008d:  ldc.i4.0
      IL_008e:  stloc.s    V_7
      IL_0090:  br.s       IL_00eb

      IL_0092:  ldloc.s    V_6
      IL_0094:  ldc.i4.0
      IL_0095:  ldloc.s    V_7
      IL_0097:  call       int32 Game.TerrainChunk::CalculateCellIndex(int32,
                                                                       int32,
                                                                       int32)
      IL_009c:  stloc.s    V_8
      IL_009e:  ldc.i4.0
      IL_009f:  stloc.s    V_9
      IL_00a1:  br.s       IL_00dc

      IL_00a3:  ldarg.1
      IL_00a4:  ldloc.s    V_8
      IL_00a6:  dup
      IL_00a7:  ldc.i4.1
      IL_00a8:  add
      IL_00a9:  stloc.s    V_8
      IL_00ab:  callvirt   instance int32 Game.TerrainChunk::GetCellValueFast(int32)
      IL_00b0:  stloc.s    V_10
      IL_00b2:  ldarg.0
      IL_00b3:  ldfld      uint8[] Game.TerrainSerializer14::m_buffer
      IL_00b8:  ldloc.s    V_5
      IL_00ba:  dup
      IL_00bb:  ldc.i4.1
      IL_00bc:  add
      IL_00bd:  stloc.s    V_5
      IL_00bf:  ldloc.s    V_10
      IL_00c1:  conv.u1
      IL_00c2:  stelem.i1
      IL_00c3:  ldarg.0
      IL_00c4:  ldfld      uint8[] Game.TerrainSerializer14::m_buffer
      IL_00c9:  ldloc.s    V_5
      IL_00cb:  dup
      IL_00cc:  ldc.i4.1
      IL_00cd:  add
      IL_00ce:  stloc.s    V_5
      IL_00d0:  ldloc.s    V_10
      IL_00d2:  ldc.i4.8
      IL_00d3:  shr
      IL_00d4:  conv.u1
      IL_00d5:  stelem.i1
      IL_00d6:  ldloc.s    V_9
      IL_00d8:  ldc.i4.1
      IL_00d9:  add
      IL_00da:  stloc.s    V_9
      IL_00dc:  ldloc.s    V_9
      IL_00de:  ldc.i4     0x80
      IL_00e3:  blt.s      IL_00a3

      IL_00e5:  ldloc.s    V_7
      IL_00e7:  ldc.i4.1
      IL_00e8:  add
      IL_00e9:  stloc.s    V_7
      IL_00eb:  ldloc.s    V_7
      IL_00ed:  ldc.i4.s   16
      IL_00ef:  blt.s      IL_0092

      IL_00f1:  ldloc.s    V_6
      IL_00f3:  ldc.i4.1
      IL_00f4:  add
      IL_00f5:  stloc.s    V_6
      IL_00f7:  ldloc.s    V_6
      IL_00f9:  ldc.i4.s   16
      IL_00fb:  blt.s      IL_008d

      IL_00fd:  ldarg.0
      IL_00fe:  ldfld      class [System.IO]System.IO.Stream Game.TerrainSerializer14::m_stream
      IL_0103:  ldarg.0
      IL_0104:  ldfld      uint8[] Game.TerrainSerializer14::m_buffer
      IL_0109:  ldc.i4.0
      IL_010a:  ldc.i4     0x10000
      IL_010f:  callvirt   instance void [System.IO]System.IO.Stream::Write(uint8[],
                                                                            int32,
                                                                            int32)
      IL_0114:  ldc.i4.0
      IL_0115:  stloc.s    V_5
      IL_0117:  ldc.i4.0
      IL_0118:  stloc.s    V_11
      IL_011a:  br         IL_01a6

      IL_011f:  ldc.i4.0
      IL_0120:  stloc.s    V_12
      IL_0122:  br.s       IL_019a

      IL_0124:  ldloc.0
      IL_0125:  ldloc.s    V_11
      IL_0127:  ldarg.1
      IL_0128:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
      IL_012d:  ldfld      int32 [Engine]Engine.Point2::X
      IL_0132:  add
      IL_0133:  ldloc.s    V_12
      IL_0135:  ldarg.1
      IL_0136:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
      IL_013b:  ldfld      int32 [Engine]Engine.Point2::Y
      IL_0140:  add
      IL_0141:  callvirt   instance int32 Game.Terrain::GetShaftValue(int32,
                                                                      int32)
      IL_0146:  stloc.s    V_13
      IL_0148:  ldarg.0
      IL_0149:  ldfld      uint8[] Game.TerrainSerializer14::m_buffer
      IL_014e:  ldloc.s    V_5
      IL_0150:  dup
      IL_0151:  ldc.i4.1
      IL_0152:  add
      IL_0153:  stloc.s    V_5
      IL_0155:  ldloc.s    V_13
      IL_0157:  conv.u1
      IL_0158:  stelem.i1
      IL_0159:  ldarg.0
      IL_015a:  ldfld      uint8[] Game.TerrainSerializer14::m_buffer
      IL_015f:  ldloc.s    V_5
      IL_0161:  dup
      IL_0162:  ldc.i4.1
      IL_0163:  add
      IL_0164:  stloc.s    V_5
      IL_0166:  ldloc.s    V_13
      IL_0168:  ldc.i4.8
      IL_0169:  shr
      IL_016a:  conv.u1
      IL_016b:  stelem.i1
      IL_016c:  ldarg.0
      IL_016d:  ldfld      uint8[] Game.TerrainSerializer14::m_buffer
      IL_0172:  ldloc.s    V_5
      IL_0174:  dup
      IL_0175:  ldc.i4.1
      IL_0176:  add
      IL_0177:  stloc.s    V_5
      IL_0179:  ldloc.s    V_13
      IL_017b:  ldc.i4.s   16
      IL_017d:  shr
      IL_017e:  conv.u1
      IL_017f:  stelem.i1
      IL_0180:  ldarg.0
      IL_0181:  ldfld      uint8[] Game.TerrainSerializer14::m_buffer
      IL_0186:  ldloc.s    V_5
      IL_0188:  dup
      IL_0189:  ldc.i4.1
      IL_018a:  add
      IL_018b:  stloc.s    V_5
      IL_018d:  ldloc.s    V_13
      IL_018f:  ldc.i4.s   24
      IL_0191:  shr
      IL_0192:  conv.u1
      IL_0193:  stelem.i1
      IL_0194:  ldloc.s    V_12
      IL_0196:  ldc.i4.1
      IL_0197:  add
      IL_0198:  stloc.s    V_12
      IL_019a:  ldloc.s    V_12
      IL_019c:  ldc.i4.s   16
      IL_019e:  blt.s      IL_0124

      IL_01a0:  ldloc.s    V_11
      IL_01a2:  ldc.i4.1
      IL_01a3:  add
      IL_01a4:  stloc.s    V_11
      IL_01a6:  ldloc.s    V_11
      IL_01a8:  ldc.i4.s   16
      IL_01aa:  blt        IL_011f

      IL_01af:  ldarg.0
      IL_01b0:  ldfld      class [System.IO]System.IO.Stream Game.TerrainSerializer14::m_stream
      IL_01b5:  ldarg.0
      IL_01b6:  ldfld      uint8[] Game.TerrainSerializer14::m_buffer
      IL_01bb:  ldc.i4.0
      IL_01bc:  ldc.i4     0x400
      IL_01c1:  callvirt   instance void [System.IO]System.IO.Stream::Write(uint8[],
                                                                            int32,
                                                                            int32)
      IL_01c6:  ldloc.3
      IL_01c7:  brfalse.s  IL_0234

      IL_01c9:  ldarg.0
      IL_01ca:  ldfld      class [System.IO]System.IO.Stream Game.TerrainSerializer14::m_stream
      IL_01cf:  callvirt   instance void [System.IO]System.IO.Stream::Flush()
      IL_01d4:  ldarg.0
      IL_01d5:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,int32> Game.TerrainSerializer14::m_chunkOffsets
      IL_01da:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,int32>::get_Count()
      IL_01df:  ldc.i4     0x10000
      IL_01e4:  rem
      IL_01e5:  ldc.i4.3
      IL_01e6:  mul
      IL_01e7:  ldc.i4.4
      IL_01e8:  mul
      IL_01e9:  stloc.s    V_14
      IL_01eb:  ldarg.0
      IL_01ec:  ldfld      class [System.IO]System.IO.Stream Game.TerrainSerializer14::m_stream
      IL_01f1:  ldloc.s    V_14
      IL_01f3:  conv.i8
      IL_01f4:  ldc.i4.0
      IL_01f5:  callvirt   instance int64 [System.IO]System.IO.Stream::Seek(int64,
                                                                            valuetype [System.IO]System.IO.SeekOrigin)
      IL_01fa:  pop
      IL_01fb:  ldarg.0
      IL_01fc:  ldfld      class [System.IO]System.IO.Stream Game.TerrainSerializer14::m_stream
      IL_0201:  ldloc.1
      IL_0202:  call       void Game.TerrainSerializer14::WriteInt(class [System.IO]System.IO.Stream,
                                                                   int32)
      IL_0207:  ldarg.0
      IL_0208:  ldfld      class [System.IO]System.IO.Stream Game.TerrainSerializer14::m_stream
      IL_020d:  ldloc.2
      IL_020e:  call       void Game.TerrainSerializer14::WriteInt(class [System.IO]System.IO.Stream,
                                                                   int32)
      IL_0213:  ldarg.0
      IL_0214:  ldfld      class [System.IO]System.IO.Stream Game.TerrainSerializer14::m_stream
      IL_0219:  ldloc.s    V_4
      IL_021b:  call       void Game.TerrainSerializer14::WriteInt(class [System.IO]System.IO.Stream,
                                                                   int32)
      IL_0220:  ldarg.0
      IL_0221:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,int32> Game.TerrainSerializer14::m_chunkOffsets
      IL_0226:  ldloc.1
      IL_0227:  ldloc.2
      IL_0228:  newobj     instance void [Engine]Engine.Point2::.ctor(int32,
                                                                      int32)
      IL_022d:  ldloc.s    V_4
      IL_022f:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,int32>::set_Item(!0,
                                                                                                                                                            !1)
      IL_0234:  leave.s    IL_0268

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_0236:  stloc.s    V_15
      IL_0238:  ldstr      "Error writing data for chunk ({0},{1})."
      IL_023d:  ldc.i4.2
      IL_023e:  newarr     [System.Runtime]System.Object
      IL_0243:  dup
      IL_0244:  ldc.i4.0
      IL_0245:  ldloc.1
      IL_0246:  box        [System.Runtime]System.Int32
      IL_024b:  stelem.ref
      IL_024c:  dup
      IL_024d:  ldc.i4.1
      IL_024e:  ldloc.2
      IL_024f:  box        [System.Runtime]System.Int32
      IL_0254:  stelem.ref
      IL_0255:  call       string [System.Runtime]System.String::Format(string,
                                                                        object[])
      IL_025a:  ldloc.s    V_15
      IL_025c:  call       string Game.ExceptionManager::MakeFullErrorMessage(string,
                                                                              class [System.Runtime]System.Exception)
      IL_0261:  call       void [Engine]Engine.Log::Error(string)
      IL_0266:  leave.s    IL_0268

    }  // end handler
    IL_0268:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_026d:  pop
    IL_026e:  ret
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