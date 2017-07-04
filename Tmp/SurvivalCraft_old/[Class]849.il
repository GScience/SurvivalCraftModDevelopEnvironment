.class public auto ansi Game.ZipArchive
       extends [System.Runtime]System.Object
       implements [System.Runtime]System.IDisposable
{
  .class auto ansi sealed nested public Compression
         extends [System.Runtime]System.Enum
  {
    .field public specialname rtspecialname uint16 value__
    .field public static literal valuetype Game.ZipArchive/Compression Store = uint16(0x0000)
    .field public static literal valuetype Game.ZipArchive/Compression Deflate = uint16(0x0008)
  } // end of class Compression

  .field public bool ForceDeflating
  .field public bool KeepStreamOpen
  .field private class [System.Collections]System.Collections.Generic.List`1<class Game.ZipArchiveEntry> Files
  .field private class [System.IO]System.IO.Stream ZipFileStream
  .field private string Comment
  .field private uint8[] CentralDirImage
  .field private uint16 ExistingFiles
  .field private bool ReadOnly
  .field private static uint32[] CrcTable
  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       77 (0x4d)
    .maxstack  3
    .locals init (int32 V_0,
             uint32 V_1,
             int32 V_2)
    IL_0000:  ldc.i4     0x100
    IL_0005:  newarr     [System.Runtime]System.UInt32
    IL_000a:  stsfld     uint32[] Game.ZipArchive::CrcTable
    IL_000f:  ldc.i4.0
    IL_0010:  stloc.0
    IL_0011:  br.s       IL_0042

    IL_0013:  ldloc.0
    IL_0014:  stloc.1
    IL_0015:  ldc.i4.0
    IL_0016:  stloc.2
    IL_0017:  br.s       IL_0032

    IL_0019:  ldloc.1
    IL_001a:  ldc.i4.1
    IL_001b:  and
    IL_001c:  brfalse.s  IL_002a

    IL_001e:  ldc.i4     0xedb88320
    IL_0023:  ldloc.1
    IL_0024:  ldc.i4.1
    IL_0025:  shr.un
    IL_0026:  xor
    IL_0027:  stloc.1
    IL_0028:  br.s       IL_002e

    IL_002a:  ldloc.1
    IL_002b:  ldc.i4.1
    IL_002c:  shr.un
    IL_002d:  stloc.1
    IL_002e:  ldloc.2
    IL_002f:  ldc.i4.1
    IL_0030:  add
    IL_0031:  stloc.2
    IL_0032:  ldloc.2
    IL_0033:  ldc.i4.8
    IL_0034:  blt.s      IL_0019

    IL_0036:  ldsfld     uint32[] Game.ZipArchive::CrcTable
    IL_003b:  ldloc.0
    IL_003c:  ldloc.1
    IL_003d:  stelem.i4
    IL_003e:  ldloc.0
    IL_003f:  ldc.i4.1
    IL_0040:  add
    IL_0041:  stloc.0
    IL_0042:  ldloc.0
    IL_0043:  ldsfld     uint32[] Game.ZipArchive::CrcTable
    IL_0048:  ldlen
    IL_0049:  conv.i4
    IL_004a:  blt.s      IL_0013

    IL_004c:  ret
  } // end of method ZipArchive::.cctor

  .method private hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.ZipArchiveEntry>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ZipArchiveEntry> Game.ZipArchive::Files
    IL_000b:  ldarg.0
    IL_000c:  ldstr      ""
    IL_0011:  stfld      string Game.ZipArchive::Comment
    IL_0016:  ldarg.0
    IL_0017:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_001c:  ret
  } // end of method ZipArchive::.ctor

  .method public hidebysig static class Game.ZipArchive 
          Create(class [System.IO]System.IO.Stream 'stream',
                 [opt] bool keepStreamOpen) cil managed
  {
    .param [2] = bool(false)
    // 代码大小       38 (0x26)
    .maxstack  8
    IL_0000:  newobj     instance void Game.ZipArchive::.ctor()
    IL_0005:  dup
    IL_0006:  ldsfld     string [System.Runtime]System.String::Empty
    IL_000b:  stfld      string Game.ZipArchive::Comment
    IL_0010:  dup
    IL_0011:  ldarg.0
    IL_0012:  stfld      class [System.IO]System.IO.Stream Game.ZipArchive::ZipFileStream
    IL_0017:  dup
    IL_0018:  ldc.i4.0
    IL_0019:  stfld      bool Game.ZipArchive::ReadOnly
    IL_001e:  dup
    IL_001f:  ldarg.1
    IL_0020:  stfld      bool Game.ZipArchive::KeepStreamOpen
    IL_0025:  ret
  } // end of method ZipArchive::Create

  .method public hidebysig static class Game.ZipArchive 
          Open(class [System.IO]System.IO.Stream 'stream',
               [opt] bool keepStreamOpen) cil managed
  {
    .param [2] = bool(false)
    // 代码大小       43 (0x2b)
    .maxstack  2
    .locals init (class Game.ZipArchive V_0)
    IL_0000:  newobj     instance void Game.ZipArchive::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.0
    IL_0008:  stfld      class [System.IO]System.IO.Stream Game.ZipArchive::ZipFileStream
    IL_000d:  ldloc.0
    IL_000e:  ldc.i4.1
    IL_000f:  stfld      bool Game.ZipArchive::ReadOnly
    IL_0014:  ldloc.0
    IL_0015:  ldarg.1
    IL_0016:  stfld      bool Game.ZipArchive::KeepStreamOpen
    IL_001b:  ldloc.0
    IL_001c:  callvirt   instance bool Game.ZipArchive::ReadFileInfo()
    IL_0021:  brfalse.s  IL_0025

    IL_0023:  ldloc.0
    IL_0024:  ret

    IL_0025:  newobj     instance void [System.IO]System.IO.InvalidDataException::.ctor()
    IL_002a:  throw
  } // end of method ZipArchive::Open

  .method public hidebysig instance void 
          AddStream(string filenameInZip,
                    class [System.IO]System.IO.Stream source) cil managed
  {
    // 代码大小       145 (0x91)
    .maxstack  3
    .locals init (class Game.ZipArchiveEntry V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.ZipArchive::ReadOnly
    IL_0006:  brfalse.s  IL_0013

    IL_0008:  ldstr      "Writing is not allowed"
    IL_000d:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0012:  throw

    IL_0013:  newobj     instance void Game.ZipArchiveEntry::.ctor()
    IL_0018:  stloc.0
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.8
    IL_001b:  stfld      valuetype Game.ZipArchive/Compression Game.ZipArchiveEntry::Method
    IL_0020:  ldloc.0
    IL_0021:  ldarg.0
    IL_0022:  ldarg.1
    IL_0023:  call       instance string Game.ZipArchive::NormalizedFilename(string)
    IL_0028:  stfld      string Game.ZipArchiveEntry::FilenameInZip
    IL_002d:  ldloc.0
    IL_002e:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0033:  stfld      string Game.ZipArchiveEntry::Comment
    IL_0038:  ldloc.0
    IL_0039:  ldc.i4.0
    IL_003a:  stfld      uint32 Game.ZipArchiveEntry::Crc32
    IL_003f:  ldloc.0
    IL_0040:  ldarg.0
    IL_0041:  ldfld      class [System.IO]System.IO.Stream Game.ZipArchive::ZipFileStream
    IL_0046:  callvirt   instance int64 [System.IO]System.IO.Stream::get_Position()
    IL_004b:  conv.u4
    IL_004c:  stfld      uint32 Game.ZipArchiveEntry::HeaderOffset
    IL_0051:  ldloc.0
    IL_0052:  call       valuetype [System.Runtime]System.DateTime [System.Runtime]System.DateTime::get_Now()
    IL_0057:  stfld      valuetype [System.Runtime]System.DateTime Game.ZipArchiveEntry::ModifyTime
    IL_005c:  ldarg.0
    IL_005d:  ldloc.0
    IL_005e:  call       instance void Game.ZipArchive::WriteLocalHeader(class Game.ZipArchiveEntry)
    IL_0063:  ldloc.0
    IL_0064:  ldarg.0
    IL_0065:  ldfld      class [System.IO]System.IO.Stream Game.ZipArchive::ZipFileStream
    IL_006a:  callvirt   instance int64 [System.IO]System.IO.Stream::get_Position()
    IL_006f:  conv.u4
    IL_0070:  stfld      uint32 Game.ZipArchiveEntry::FileOffset
    IL_0075:  ldarg.0
    IL_0076:  ldloc.0
    IL_0077:  ldarg.2
    IL_0078:  call       instance void Game.ZipArchive::Store(class Game.ZipArchiveEntry,
                                                              class [System.IO]System.IO.Stream)
    IL_007d:  ldarg.0
    IL_007e:  ldloc.0
    IL_007f:  call       instance void Game.ZipArchive::UpdateCrcAndSizes(class Game.ZipArchiveEntry)
    IL_0084:  ldarg.0
    IL_0085:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ZipArchiveEntry> Game.ZipArchive::Files
    IL_008a:  ldloc.0
    IL_008b:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.ZipArchiveEntry>::Add(!0)
    IL_0090:  ret
  } // end of method ZipArchive::AddStream

  .method private hidebysig instance void 
          Close() cil managed
  {
    // 代码大小       210 (0xd2)
    .maxstack  4
    .locals init (uint32 V_0,
             uint32 V_1,
             int32 V_2,
             int64 V_3)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.ZipArchive::ReadOnly
    IL_0006:  brtrue     IL_00a4

    IL_000b:  ldarg.0
    IL_000c:  ldfld      class [System.IO]System.IO.Stream Game.ZipArchive::ZipFileStream
    IL_0011:  callvirt   instance int64 [System.IO]System.IO.Stream::get_Position()
    IL_0016:  conv.u4
    IL_0017:  stloc.0
    IL_0018:  ldc.i4.0
    IL_0019:  stloc.1
    IL_001a:  ldarg.0
    IL_001b:  ldfld      uint8[] Game.ZipArchive::CentralDirImage
    IL_0020:  brfalse.s  IL_003c

    IL_0022:  ldarg.0
    IL_0023:  ldfld      class [System.IO]System.IO.Stream Game.ZipArchive::ZipFileStream
    IL_0028:  ldarg.0
    IL_0029:  ldfld      uint8[] Game.ZipArchive::CentralDirImage
    IL_002e:  ldc.i4.0
    IL_002f:  ldarg.0
    IL_0030:  ldfld      uint8[] Game.ZipArchive::CentralDirImage
    IL_0035:  ldlen
    IL_0036:  conv.i4
    IL_0037:  callvirt   instance void [System.IO]System.IO.Stream::Write(uint8[],
                                                                          int32,
                                                                          int32)
    IL_003c:  ldc.i4.0
    IL_003d:  stloc.2
    IL_003e:  br.s       IL_0073

    IL_0040:  ldarg.0
    IL_0041:  ldfld      class [System.IO]System.IO.Stream Game.ZipArchive::ZipFileStream
    IL_0046:  callvirt   instance int64 [System.IO]System.IO.Stream::get_Position()
    IL_004b:  stloc.3
    IL_004c:  ldarg.0
    IL_004d:  ldarg.0
    IL_004e:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ZipArchiveEntry> Game.ZipArchive::Files
    IL_0053:  ldloc.2
    IL_0054:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.ZipArchiveEntry>::get_Item(int32)
    IL_0059:  call       instance void Game.ZipArchive::WriteCentralDirRecord(class Game.ZipArchiveEntry)
    IL_005e:  ldloc.1
    IL_005f:  ldarg.0
    IL_0060:  ldfld      class [System.IO]System.IO.Stream Game.ZipArchive::ZipFileStream
    IL_0065:  callvirt   instance int64 [System.IO]System.IO.Stream::get_Position()
    IL_006a:  ldloc.3
    IL_006b:  sub
    IL_006c:  conv.u4
    IL_006d:  add
    IL_006e:  stloc.1
    IL_006f:  ldloc.2
    IL_0070:  ldc.i4.1
    IL_0071:  add
    IL_0072:  stloc.2
    IL_0073:  ldloc.2
    IL_0074:  ldarg.0
    IL_0075:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ZipArchiveEntry> Game.ZipArchive::Files
    IL_007a:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.ZipArchiveEntry>::get_Count()
    IL_007f:  blt.s      IL_0040

    IL_0081:  ldarg.0
    IL_0082:  ldfld      uint8[] Game.ZipArchive::CentralDirImage
    IL_0087:  brfalse.s  IL_009c

    IL_0089:  ldarg.0
    IL_008a:  ldloc.1
    IL_008b:  ldarg.0
    IL_008c:  ldfld      uint8[] Game.ZipArchive::CentralDirImage
    IL_0091:  ldlen
    IL_0092:  conv.i4
    IL_0093:  add
    IL_0094:  ldloc.0
    IL_0095:  call       instance void Game.ZipArchive::WriteEndRecord(uint32,
                                                                       uint32)
    IL_009a:  br.s       IL_00a4

    IL_009c:  ldarg.0
    IL_009d:  ldloc.1
    IL_009e:  ldloc.0
    IL_009f:  call       instance void Game.ZipArchive::WriteEndRecord(uint32,
                                                                       uint32)
    IL_00a4:  ldarg.0
    IL_00a5:  ldfld      class [System.IO]System.IO.Stream Game.ZipArchive::ZipFileStream
    IL_00aa:  brfalse.s  IL_00ca

    IL_00ac:  ldarg.0
    IL_00ad:  ldfld      bool Game.ZipArchive::KeepStreamOpen
    IL_00b2:  brtrue.s   IL_00ca

    IL_00b4:  ldarg.0
    IL_00b5:  ldfld      class [System.IO]System.IO.Stream Game.ZipArchive::ZipFileStream
    IL_00ba:  callvirt   instance void [System.IO]System.IO.Stream::Flush()
    IL_00bf:  ldarg.0
    IL_00c0:  ldfld      class [System.IO]System.IO.Stream Game.ZipArchive::ZipFileStream
    IL_00c5:  callvirt   instance void [System.IO]System.IO.Stream::Dispose()
    IL_00ca:  ldarg.0
    IL_00cb:  ldnull
    IL_00cc:  stfld      class [System.IO]System.IO.Stream Game.ZipArchive::ZipFileStream
    IL_00d1:  ret
  } // end of method ZipArchive::Close

  .method public hidebysig instance class [System.Collections]System.Collections.Generic.List`1<class Game.ZipArchiveEntry> 
          ReadCentralDir() cil managed
  {
    // 代码大小       421 (0x1a5)
    .maxstack  6
    .locals init (class [System.Collections]System.Collections.Generic.List`1<class Game.ZipArchiveEntry> V_0,
             int32 V_1,
             uint16 V_2,
             uint32 V_3,
             uint32 V_4,
             uint32 V_5,
             uint32 V_6,
             uint16 V_7,
             uint16 V_8,
             uint16 V_9,
             uint32 V_10,
             uint32 V_11,
             class [System.Text.Encoding]System.Text.Encoding V_12,
             class Game.ZipArchiveEntry V_13)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      uint8[] Game.ZipArchive::CentralDirImage
    IL_0006:  brtrue.s   IL_0013

    IL_0008:  ldstr      "Central directory currently does not exist"
    IL_000d:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0012:  throw

    IL_0013:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.ZipArchiveEntry>::.ctor()
    IL_0018:  stloc.0
    IL_0019:  ldc.i4.0
    IL_001a:  stloc.1
    IL_001b:  br         IL_0195

    IL_0020:  ldarg.0
    IL_0021:  ldfld      uint8[] Game.ZipArchive::CentralDirImage
    IL_0026:  ldloc.1
    IL_0027:  call       uint32 [System.Runtime.Extensions]System.BitConverter::ToUInt32(uint8[],
                                                                                         int32)
    IL_002c:  ldc.i4     0x2014b50
    IL_0031:  bne.un     IL_01a3

    IL_0036:  ldarg.0
    IL_0037:  ldfld      uint8[] Game.ZipArchive::CentralDirImage
    IL_003c:  ldloc.1
    IL_003d:  ldc.i4.s   10
    IL_003f:  add
    IL_0040:  call       uint16 [System.Runtime.Extensions]System.BitConverter::ToUInt16(uint8[],
                                                                                         int32)
    IL_0045:  stloc.2
    IL_0046:  ldarg.0
    IL_0047:  ldfld      uint8[] Game.ZipArchive::CentralDirImage
    IL_004c:  ldloc.1
    IL_004d:  ldc.i4.s   12
    IL_004f:  add
    IL_0050:  call       uint32 [System.Runtime.Extensions]System.BitConverter::ToUInt32(uint8[],
                                                                                         int32)
    IL_0055:  stloc.3
    IL_0056:  ldarg.0
    IL_0057:  ldfld      uint8[] Game.ZipArchive::CentralDirImage
    IL_005c:  ldloc.1
    IL_005d:  ldc.i4.s   16
    IL_005f:  add
    IL_0060:  call       uint32 [System.Runtime.Extensions]System.BitConverter::ToUInt32(uint8[],
                                                                                         int32)
    IL_0065:  stloc.s    V_4
    IL_0067:  ldarg.0
    IL_0068:  ldfld      uint8[] Game.ZipArchive::CentralDirImage
    IL_006d:  ldloc.1
    IL_006e:  ldc.i4.s   20
    IL_0070:  add
    IL_0071:  call       uint32 [System.Runtime.Extensions]System.BitConverter::ToUInt32(uint8[],
                                                                                         int32)
    IL_0076:  stloc.s    V_5
    IL_0078:  ldarg.0
    IL_0079:  ldfld      uint8[] Game.ZipArchive::CentralDirImage
    IL_007e:  ldloc.1
    IL_007f:  ldc.i4.s   24
    IL_0081:  add
    IL_0082:  call       uint32 [System.Runtime.Extensions]System.BitConverter::ToUInt32(uint8[],
                                                                                         int32)
    IL_0087:  stloc.s    V_6
    IL_0089:  ldarg.0
    IL_008a:  ldfld      uint8[] Game.ZipArchive::CentralDirImage
    IL_008f:  ldloc.1
    IL_0090:  ldc.i4.s   28
    IL_0092:  add
    IL_0093:  call       uint16 [System.Runtime.Extensions]System.BitConverter::ToUInt16(uint8[],
                                                                                         int32)
    IL_0098:  stloc.s    V_7
    IL_009a:  ldarg.0
    IL_009b:  ldfld      uint8[] Game.ZipArchive::CentralDirImage
    IL_00a0:  ldloc.1
    IL_00a1:  ldc.i4.s   30
    IL_00a3:  add
    IL_00a4:  call       uint16 [System.Runtime.Extensions]System.BitConverter::ToUInt16(uint8[],
                                                                                         int32)
    IL_00a9:  stloc.s    V_8
    IL_00ab:  ldarg.0
    IL_00ac:  ldfld      uint8[] Game.ZipArchive::CentralDirImage
    IL_00b1:  ldloc.1
    IL_00b2:  ldc.i4.s   32
    IL_00b4:  add
    IL_00b5:  call       uint16 [System.Runtime.Extensions]System.BitConverter::ToUInt16(uint8[],
                                                                                         int32)
    IL_00ba:  stloc.s    V_9
    IL_00bc:  ldarg.0
    IL_00bd:  ldfld      uint8[] Game.ZipArchive::CentralDirImage
    IL_00c2:  ldloc.1
    IL_00c3:  ldc.i4.s   42
    IL_00c5:  add
    IL_00c6:  call       uint32 [System.Runtime.Extensions]System.BitConverter::ToUInt32(uint8[],
                                                                                         int32)
    IL_00cb:  stloc.s    V_10
    IL_00cd:  ldc.i4.s   46
    IL_00cf:  ldloc.s    V_7
    IL_00d1:  add
    IL_00d2:  ldloc.s    V_8
    IL_00d4:  add
    IL_00d5:  ldloc.s    V_9
    IL_00d7:  add
    IL_00d8:  stloc.s    V_11
    IL_00da:  call       class [System.Text.Encoding]System.Text.Encoding [System.Text.Encoding]System.Text.Encoding::get_UTF8()
    IL_00df:  stloc.s    V_12
    IL_00e1:  newobj     instance void Game.ZipArchiveEntry::.ctor()
    IL_00e6:  stloc.s    V_13
    IL_00e8:  ldloc.s    V_13
    IL_00ea:  ldloc.2
    IL_00eb:  stfld      valuetype Game.ZipArchive/Compression Game.ZipArchiveEntry::Method
    IL_00f0:  ldloc.s    V_13
    IL_00f2:  ldarg.0
    IL_00f3:  ldloc.s    V_12
    IL_00f5:  ldarg.0
    IL_00f6:  ldfld      uint8[] Game.ZipArchive::CentralDirImage
    IL_00fb:  ldloc.1
    IL_00fc:  ldc.i4.s   46
    IL_00fe:  add
    IL_00ff:  ldloc.s    V_7
    IL_0101:  callvirt   instance string [System.Text.Encoding]System.Text.Encoding::GetString(uint8[],
                                                                                               int32,
                                                                                               int32)
    IL_0106:  call       instance string Game.ZipArchive::NormalizedFilename(string)
    IL_010b:  stfld      string Game.ZipArchiveEntry::FilenameInZip
    IL_0110:  ldloc.s    V_13
    IL_0112:  ldarg.0
    IL_0113:  ldloc.s    V_10
    IL_0115:  call       instance uint32 Game.ZipArchive::GetFileOffset(uint32)
    IL_011a:  stfld      uint32 Game.ZipArchiveEntry::FileOffset
    IL_011f:  ldloc.s    V_13
    IL_0121:  ldloc.s    V_6
    IL_0123:  stfld      uint32 Game.ZipArchiveEntry::FileSize
    IL_0128:  ldloc.s    V_13
    IL_012a:  ldloc.s    V_5
    IL_012c:  stfld      uint32 Game.ZipArchiveEntry::CompressedSize
    IL_0131:  ldloc.s    V_13
    IL_0133:  ldloc.s    V_10
    IL_0135:  stfld      uint32 Game.ZipArchiveEntry::HeaderOffset
    IL_013a:  ldloc.s    V_13
    IL_013c:  ldloc.s    V_11
    IL_013e:  stfld      uint32 Game.ZipArchiveEntry::HeaderSize
    IL_0143:  ldloc.s    V_13
    IL_0145:  ldloc.s    V_4
    IL_0147:  stfld      uint32 Game.ZipArchiveEntry::Crc32
    IL_014c:  ldloc.s    V_13
    IL_014e:  ldarg.0
    IL_014f:  ldloc.3
    IL_0150:  call       instance valuetype [System.Runtime]System.DateTime Game.ZipArchive::DosTimeToDateTime(uint32)
    IL_0155:  stfld      valuetype [System.Runtime]System.DateTime Game.ZipArchiveEntry::ModifyTime
    IL_015a:  ldloc.s    V_9
    IL_015c:  ldc.i4.0
    IL_015d:  ble.s      IL_017f

    IL_015f:  ldloc.s    V_13
    IL_0161:  ldloc.s    V_12
    IL_0163:  ldarg.0
    IL_0164:  ldfld      uint8[] Game.ZipArchive::CentralDirImage
    IL_0169:  ldloc.1
    IL_016a:  ldc.i4.s   46
    IL_016c:  add
    IL_016d:  ldloc.s    V_7
    IL_016f:  add
    IL_0170:  ldloc.s    V_8
    IL_0172:  add
    IL_0173:  ldloc.s    V_9
    IL_0175:  callvirt   instance string [System.Text.Encoding]System.Text.Encoding::GetString(uint8[],
                                                                                               int32,
                                                                                               int32)
    IL_017a:  stfld      string Game.ZipArchiveEntry::Comment
    IL_017f:  ldloc.0
    IL_0180:  ldloc.s    V_13
    IL_0182:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.ZipArchiveEntry>::Add(!0)
    IL_0187:  ldloc.1
    IL_0188:  ldc.i4.s   46
    IL_018a:  ldloc.s    V_7
    IL_018c:  add
    IL_018d:  ldloc.s    V_8
    IL_018f:  add
    IL_0190:  ldloc.s    V_9
    IL_0192:  add
    IL_0193:  add
    IL_0194:  stloc.1
    IL_0195:  ldloc.1
    IL_0196:  ldarg.0
    IL_0197:  ldfld      uint8[] Game.ZipArchive::CentralDirImage
    IL_019c:  ldlen
    IL_019d:  conv.i4
    IL_019e:  blt        IL_0020

    IL_01a3:  ldloc.0
    IL_01a4:  ret
  } // end of method ZipArchive::ReadCentralDir

  .method public hidebysig instance void 
          ExtractFile(class Game.ZipArchiveEntry zfe,
                      class [System.IO]System.IO.Stream 'stream') cil managed
  {
    // 代码大小       242 (0xf2)
    .maxstack  5
    .locals init (uint8[] V_0,
             class [System.IO]System.IO.Stream V_1,
             uint8[] V_2,
             uint32 V_3,
             int32 V_4)
    IL_0000:  ldarg.2
    IL_0001:  callvirt   instance bool [System.IO]System.IO.Stream::get_CanWrite()
    IL_0006:  brtrue.s   IL_0013

    IL_0008:  ldstr      "Stream cannot be written"
    IL_000d:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0012:  throw

    IL_0013:  ldc.i4.4
    IL_0014:  newarr     [System.Runtime]System.Byte
    IL_0019:  stloc.0
    IL_001a:  ldarg.0
    IL_001b:  ldfld      class [System.IO]System.IO.Stream Game.ZipArchive::ZipFileStream
    IL_0020:  ldarg.1
    IL_0021:  ldfld      uint32 Game.ZipArchiveEntry::HeaderOffset
    IL_0026:  conv.u8
    IL_0027:  ldc.i4.0
    IL_0028:  callvirt   instance int64 [System.IO]System.IO.Stream::Seek(int64,
                                                                          valuetype [System.IO]System.IO.SeekOrigin)
    IL_002d:  pop
    IL_002e:  ldarg.0
    IL_002f:  ldfld      class [System.IO]System.IO.Stream Game.ZipArchive::ZipFileStream
    IL_0034:  ldloc.0
    IL_0035:  ldc.i4.0
    IL_0036:  ldc.i4.4
    IL_0037:  callvirt   instance int32 [System.IO]System.IO.Stream::Read(uint8[],
                                                                          int32,
                                                                          int32)
    IL_003c:  pop
    IL_003d:  ldloc.0
    IL_003e:  ldc.i4.0
    IL_003f:  call       uint32 [System.Runtime.Extensions]System.BitConverter::ToUInt32(uint8[],
                                                                                         int32)
    IL_0044:  ldc.i4     0x4034b50
    IL_0049:  beq.s      IL_0056

    IL_004b:  ldstr      "Unsupported zip archive."
    IL_0050:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0055:  throw

    IL_0056:  ldarg.1
    IL_0057:  ldfld      valuetype Game.ZipArchive/Compression Game.ZipArchiveEntry::Method
    IL_005c:  brtrue.s   IL_0067

    IL_005e:  ldarg.0
    IL_005f:  ldfld      class [System.IO]System.IO.Stream Game.ZipArchive::ZipFileStream
    IL_0064:  stloc.1
    IL_0065:  br.s       IL_008b

    IL_0067:  ldarg.1
    IL_0068:  ldfld      valuetype Game.ZipArchive/Compression Game.ZipArchiveEntry::Method
    IL_006d:  ldc.i4.8
    IL_006e:  bne.un.s   IL_0080

    IL_0070:  ldarg.0
    IL_0071:  ldfld      class [System.IO]System.IO.Stream Game.ZipArchive::ZipFileStream
    IL_0076:  ldc.i4.0
    IL_0077:  ldc.i4.1
    IL_0078:  newobj     instance void [System.IO.Compression]System.IO.Compression.DeflateStream::.ctor(class [System.IO]System.IO.Stream,
                                                                                                         valuetype [System.IO.Compression]System.IO.Compression.CompressionMode,
                                                                                                         bool)
    IL_007d:  stloc.1
    IL_007e:  br.s       IL_008b

    IL_0080:  ldstr      "Unsupported zip archive."
    IL_0085:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_008a:  throw

    IL_008b:  ldc.i4     0x4000
    IL_0090:  newarr     [System.Runtime]System.Byte
    IL_0095:  stloc.2
    IL_0096:  ldarg.0
    IL_0097:  ldfld      class [System.IO]System.IO.Stream Game.ZipArchive::ZipFileStream
    IL_009c:  ldarg.1
    IL_009d:  ldfld      uint32 Game.ZipArchiveEntry::FileOffset
    IL_00a2:  conv.u8
    IL_00a3:  ldc.i4.0
    IL_00a4:  callvirt   instance int64 [System.IO]System.IO.Stream::Seek(int64,
                                                                          valuetype [System.IO]System.IO.SeekOrigin)
    IL_00a9:  pop
    IL_00aa:  ldarg.1
    IL_00ab:  ldfld      uint32 Game.ZipArchiveEntry::FileSize
    IL_00b0:  stloc.3
    IL_00b1:  br.s       IL_00d8

    IL_00b3:  ldloc.1
    IL_00b4:  ldloc.2
    IL_00b5:  ldc.i4.0
    IL_00b6:  ldloc.3
    IL_00b7:  conv.u8
    IL_00b8:  ldloc.2
    IL_00b9:  ldlen
    IL_00ba:  conv.i4
    IL_00bb:  conv.i8
    IL_00bc:  call       int64 [System.Runtime.Extensions]System.Math::Min(int64,
                                                                           int64)
    IL_00c1:  conv.i4
    IL_00c2:  callvirt   instance int32 [System.IO]System.IO.Stream::Read(uint8[],
                                                                          int32,
                                                                          int32)
    IL_00c7:  stloc.s    V_4
    IL_00c9:  ldarg.2
    IL_00ca:  ldloc.2
    IL_00cb:  ldc.i4.0
    IL_00cc:  ldloc.s    V_4
    IL_00ce:  callvirt   instance void [System.IO]System.IO.Stream::Write(uint8[],
                                                                          int32,
                                                                          int32)
    IL_00d3:  ldloc.3
    IL_00d4:  ldloc.s    V_4
    IL_00d6:  sub
    IL_00d7:  stloc.3
    IL_00d8:  ldloc.3
    IL_00d9:  ldc.i4.0
    IL_00da:  bgt.un.s   IL_00b3

    IL_00dc:  ldarg.2
    IL_00dd:  callvirt   instance void [System.IO]System.IO.Stream::Flush()
    IL_00e2:  ldarg.1
    IL_00e3:  ldfld      valuetype Game.ZipArchive/Compression Game.ZipArchiveEntry::Method
    IL_00e8:  ldc.i4.8
    IL_00e9:  bne.un.s   IL_00f1

    IL_00eb:  ldloc.1
    IL_00ec:  callvirt   instance void [System.IO]System.IO.Stream::Dispose()
    IL_00f1:  ret
  } // end of method ZipArchive::ExtractFile

  .method private hidebysig instance uint32 
          GetFileOffset(uint32 _headerOffset) cil managed
  {
    // 代码大小       83 (0x53)
    .maxstack  4
    .locals init (uint8[] V_0,
             uint16 V_1,
             uint16 V_2)
    IL_0000:  ldc.i4.2
    IL_0001:  newarr     [System.Runtime]System.Byte
    IL_0006:  stloc.0
    IL_0007:  ldarg.0
    IL_0008:  ldfld      class [System.IO]System.IO.Stream Game.ZipArchive::ZipFileStream
    IL_000d:  ldarg.1
    IL_000e:  ldc.i4.s   26
    IL_0010:  add
    IL_0011:  conv.u8
    IL_0012:  ldc.i4.0
    IL_0013:  callvirt   instance int64 [System.IO]System.IO.Stream::Seek(int64,
                                                                          valuetype [System.IO]System.IO.SeekOrigin)
    IL_0018:  pop
    IL_0019:  ldarg.0
    IL_001a:  ldfld      class [System.IO]System.IO.Stream Game.ZipArchive::ZipFileStream
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.0
    IL_0021:  ldc.i4.2
    IL_0022:  callvirt   instance int32 [System.IO]System.IO.Stream::Read(uint8[],
                                                                          int32,
                                                                          int32)
    IL_0027:  pop
    IL_0028:  ldloc.0
    IL_0029:  ldc.i4.0
    IL_002a:  call       uint16 [System.Runtime.Extensions]System.BitConverter::ToUInt16(uint8[],
                                                                                         int32)
    IL_002f:  stloc.1
    IL_0030:  ldarg.0
    IL_0031:  ldfld      class [System.IO]System.IO.Stream Game.ZipArchive::ZipFileStream
    IL_0036:  ldloc.0
    IL_0037:  ldc.i4.0
    IL_0038:  ldc.i4.2
    IL_0039:  callvirt   instance int32 [System.IO]System.IO.Stream::Read(uint8[],
                                                                          int32,
                                                                          int32)
    IL_003e:  pop
    IL_003f:  ldloc.0
    IL_0040:  ldc.i4.0
    IL_0041:  call       uint16 [System.Runtime.Extensions]System.BitConverter::ToUInt16(uint8[],
                                                                                         int32)
    IL_0046:  stloc.2
    IL_0047:  ldc.i4.s   30
    IL_0049:  ldloc.1
    IL_004a:  add
    IL_004b:  ldloc.2
    IL_004c:  add
    IL_004d:  conv.i8
    IL_004e:  ldarg.1
    IL_004f:  conv.u8
    IL_0050:  add
    IL_0051:  conv.u4
    IL_0052:  ret
  } // end of method ZipArchive::GetFileOffset

  .method private hidebysig instance void 
          WriteLocalHeader(class Game.ZipArchiveEntry _zfe) cil managed
  {
    // 代码大小       247 (0xf7)
    .maxstack  4
    .locals init (int64 V_0,
             uint8[] V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.IO]System.IO.Stream Game.ZipArchive::ZipFileStream
    IL_0006:  callvirt   instance int64 [System.IO]System.IO.Stream::get_Position()
    IL_000b:  stloc.0
    IL_000c:  call       class [System.Text.Encoding]System.Text.Encoding [System.Text.Encoding]System.Text.Encoding::get_UTF8()
    IL_0011:  ldarg.1
    IL_0012:  ldfld      string Game.ZipArchiveEntry::FilenameInZip
    IL_0017:  callvirt   instance uint8[] [System.Text.Encoding]System.Text.Encoding::GetBytes(string)
    IL_001c:  stloc.1
    IL_001d:  ldarg.0
    IL_001e:  ldfld      class [System.IO]System.IO.Stream Game.ZipArchive::ZipFileStream
    IL_0023:  ldc.i4.6
    IL_0024:  newarr     [System.Runtime]System.Byte
    IL_0029:  dup
    IL_002a:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=6' '<PrivateImplementationDetails>'::F016ABBA763E33BD56971284BC3E61911410DBCF
    IL_002f:  call       void [System.Runtime]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [System.Runtime]System.Array,
                                                                                                              valuetype [System.Runtime]System.RuntimeFieldHandle)
    IL_0034:  ldc.i4.0
    IL_0035:  ldc.i4.6
    IL_0036:  callvirt   instance void [System.IO]System.IO.Stream::Write(uint8[],
                                                                          int32,
                                                                          int32)
    IL_003b:  ldarg.0
    IL_003c:  ldfld      class [System.IO]System.IO.Stream Game.ZipArchive::ZipFileStream
    IL_0041:  ldarg.1
    IL_0042:  ldfld      bool Game.ZipArchiveEntry::EncodeUTF8
    IL_0047:  brtrue.s   IL_004c

    IL_0049:  ldc.i4.0
    IL_004a:  br.s       IL_0051

    IL_004c:  ldc.i4     0x800
    IL_0051:  conv.u2
    IL_0052:  call       uint8[] [System.Runtime.Extensions]System.BitConverter::GetBytes(uint16)
    IL_0057:  ldc.i4.0
    IL_0058:  ldc.i4.2
    IL_0059:  callvirt   instance void [System.IO]System.IO.Stream::Write(uint8[],
                                                                          int32,
                                                                          int32)
    IL_005e:  ldarg.0
    IL_005f:  ldfld      class [System.IO]System.IO.Stream Game.ZipArchive::ZipFileStream
    IL_0064:  ldarg.1
    IL_0065:  ldfld      valuetype Game.ZipArchive/Compression Game.ZipArchiveEntry::Method
    IL_006a:  call       uint8[] [System.Runtime.Extensions]System.BitConverter::GetBytes(uint16)
    IL_006f:  ldc.i4.0
    IL_0070:  ldc.i4.2
    IL_0071:  callvirt   instance void [System.IO]System.IO.Stream::Write(uint8[],
                                                                          int32,
                                                                          int32)
    IL_0076:  ldarg.0
    IL_0077:  ldfld      class [System.IO]System.IO.Stream Game.ZipArchive::ZipFileStream
    IL_007c:  ldarg.0
    IL_007d:  ldarg.1
    IL_007e:  ldfld      valuetype [System.Runtime]System.DateTime Game.ZipArchiveEntry::ModifyTime
    IL_0083:  call       instance uint32 Game.ZipArchive::DateTimeToDosTime(valuetype [System.Runtime]System.DateTime)
    IL_0088:  call       uint8[] [System.Runtime.Extensions]System.BitConverter::GetBytes(uint32)
    IL_008d:  ldc.i4.0
    IL_008e:  ldc.i4.4
    IL_008f:  callvirt   instance void [System.IO]System.IO.Stream::Write(uint8[],
                                                                          int32,
                                                                          int32)
    IL_0094:  ldarg.0
    IL_0095:  ldfld      class [System.IO]System.IO.Stream Game.ZipArchive::ZipFileStream
    IL_009a:  ldc.i4.s   12
    IL_009c:  newarr     [System.Runtime]System.Byte
    IL_00a1:  ldc.i4.0
    IL_00a2:  ldc.i4.s   12
    IL_00a4:  callvirt   instance void [System.IO]System.IO.Stream::Write(uint8[],
                                                                          int32,
                                                                          int32)
    IL_00a9:  ldarg.0
    IL_00aa:  ldfld      class [System.IO]System.IO.Stream Game.ZipArchive::ZipFileStream
    IL_00af:  ldloc.1
    IL_00b0:  ldlen
    IL_00b1:  conv.i4
    IL_00b2:  conv.u2
    IL_00b3:  call       uint8[] [System.Runtime.Extensions]System.BitConverter::GetBytes(uint16)
    IL_00b8:  ldc.i4.0
    IL_00b9:  ldc.i4.2
    IL_00ba:  callvirt   instance void [System.IO]System.IO.Stream::Write(uint8[],
                                                                          int32,
                                                                          int32)
    IL_00bf:  ldarg.0
    IL_00c0:  ldfld      class [System.IO]System.IO.Stream Game.ZipArchive::ZipFileStream
    IL_00c5:  ldc.i4.0
    IL_00c6:  call       uint8[] [System.Runtime.Extensions]System.BitConverter::GetBytes(uint16)
    IL_00cb:  ldc.i4.0
    IL_00cc:  ldc.i4.2
    IL_00cd:  callvirt   instance void [System.IO]System.IO.Stream::Write(uint8[],
                                                                          int32,
                                                                          int32)
    IL_00d2:  ldarg.0
    IL_00d3:  ldfld      class [System.IO]System.IO.Stream Game.ZipArchive::ZipFileStream
    IL_00d8:  ldloc.1
    IL_00d9:  ldc.i4.0
    IL_00da:  ldloc.1
    IL_00db:  ldlen
    IL_00dc:  conv.i4
    IL_00dd:  callvirt   instance void [System.IO]System.IO.Stream::Write(uint8[],
                                                                          int32,
                                                                          int32)
    IL_00e2:  ldarg.1
    IL_00e3:  ldarg.0
    IL_00e4:  ldfld      class [System.IO]System.IO.Stream Game.ZipArchive::ZipFileStream
    IL_00e9:  callvirt   instance int64 [System.IO]System.IO.Stream::get_Position()
    IL_00ee:  ldloc.0
    IL_00ef:  sub
    IL_00f0:  conv.u4
    IL_00f1:  stfld      uint32 Game.ZipArchiveEntry::HeaderSize
    IL_00f6:  ret
  } // end of method ZipArchive::WriteLocalHeader

  .method private hidebysig instance void 
          WriteCentralDirRecord(class Game.ZipArchiveEntry _zfe) cil managed
  {
    // 代码大小       421 (0x1a5)
    .maxstack  4
    .locals init (uint8[] V_0,
             uint8[] V_1)
    IL_0000:  call       class [System.Text.Encoding]System.Text.Encoding [System.Text.Encoding]System.Text.Encoding::get_UTF8()
    IL_0005:  dup
    IL_0006:  ldarg.1
    IL_0007:  ldfld      string Game.ZipArchiveEntry::FilenameInZip
    IL_000c:  callvirt   instance uint8[] [System.Text.Encoding]System.Text.Encoding::GetBytes(string)
    IL_0011:  stloc.0
    IL_0012:  ldarg.1
    IL_0013:  ldfld      string Game.ZipArchiveEntry::Comment
    IL_0018:  callvirt   instance uint8[] [System.Text.Encoding]System.Text.Encoding::GetBytes(string)
    IL_001d:  stloc.1
    IL_001e:  ldarg.0
    IL_001f:  ldfld      class [System.IO]System.IO.Stream Game.ZipArchive::ZipFileStream
    IL_0024:  ldc.i4.8
    IL_0025:  newarr     [System.Runtime]System.Byte
    IL_002a:  dup
    IL_002b:  ldtoken    field int64 '<PrivateImplementationDetails>'::D583C75FD06863D084AD345218B53FDD826FC46D
    IL_0030:  call       void [System.Runtime]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [System.Runtime]System.Array,
                                                                                                              valuetype [System.Runtime]System.RuntimeFieldHandle)
    IL_0035:  ldc.i4.0
    IL_0036:  ldc.i4.8
    IL_0037:  callvirt   instance void [System.IO]System.IO.Stream::Write(uint8[],
                                                                          int32,
                                                                          int32)
    IL_003c:  ldarg.0
    IL_003d:  ldfld      class [System.IO]System.IO.Stream Game.ZipArchive::ZipFileStream
    IL_0042:  ldarg.1
    IL_0043:  ldfld      bool Game.ZipArchiveEntry::EncodeUTF8
    IL_0048:  brtrue.s   IL_004d

    IL_004a:  ldc.i4.0
    IL_004b:  br.s       IL_0052

    IL_004d:  ldc.i4     0x800
    IL_0052:  conv.u2
    IL_0053:  call       uint8[] [System.Runtime.Extensions]System.BitConverter::GetBytes(uint16)
    IL_0058:  ldc.i4.0
    IL_0059:  ldc.i4.2
    IL_005a:  callvirt   instance void [System.IO]System.IO.Stream::Write(uint8[],
                                                                          int32,
                                                                          int32)
    IL_005f:  ldarg.0
    IL_0060:  ldfld      class [System.IO]System.IO.Stream Game.ZipArchive::ZipFileStream
    IL_0065:  ldarg.1
    IL_0066:  ldfld      valuetype Game.ZipArchive/Compression Game.ZipArchiveEntry::Method
    IL_006b:  call       uint8[] [System.Runtime.Extensions]System.BitConverter::GetBytes(uint16)
    IL_0070:  ldc.i4.0
    IL_0071:  ldc.i4.2
    IL_0072:  callvirt   instance void [System.IO]System.IO.Stream::Write(uint8[],
                                                                          int32,
                                                                          int32)
    IL_0077:  ldarg.0
    IL_0078:  ldfld      class [System.IO]System.IO.Stream Game.ZipArchive::ZipFileStream
    IL_007d:  ldarg.0
    IL_007e:  ldarg.1
    IL_007f:  ldfld      valuetype [System.Runtime]System.DateTime Game.ZipArchiveEntry::ModifyTime
    IL_0084:  call       instance uint32 Game.ZipArchive::DateTimeToDosTime(valuetype [System.Runtime]System.DateTime)
    IL_0089:  call       uint8[] [System.Runtime.Extensions]System.BitConverter::GetBytes(uint32)
    IL_008e:  ldc.i4.0
    IL_008f:  ldc.i4.4
    IL_0090:  callvirt   instance void [System.IO]System.IO.Stream::Write(uint8[],
                                                                          int32,
                                                                          int32)
    IL_0095:  ldarg.0
    IL_0096:  ldfld      class [System.IO]System.IO.Stream Game.ZipArchive::ZipFileStream
    IL_009b:  ldarg.1
    IL_009c:  ldfld      uint32 Game.ZipArchiveEntry::Crc32
    IL_00a1:  call       uint8[] [System.Runtime.Extensions]System.BitConverter::GetBytes(uint32)
    IL_00a6:  ldc.i4.0
    IL_00a7:  ldc.i4.4
    IL_00a8:  callvirt   instance void [System.IO]System.IO.Stream::Write(uint8[],
                                                                          int32,
                                                                          int32)
    IL_00ad:  ldarg.0
    IL_00ae:  ldfld      class [System.IO]System.IO.Stream Game.ZipArchive::ZipFileStream
    IL_00b3:  ldarg.1
    IL_00b4:  ldfld      uint32 Game.ZipArchiveEntry::CompressedSize
    IL_00b9:  call       uint8[] [System.Runtime.Extensions]System.BitConverter::GetBytes(uint32)
    IL_00be:  ldc.i4.0
    IL_00bf:  ldc.i4.4
    IL_00c0:  callvirt   instance void [System.IO]System.IO.Stream::Write(uint8[],
                                                                          int32,
                                                                          int32)
    IL_00c5:  ldarg.0
    IL_00c6:  ldfld      class [System.IO]System.IO.Stream Game.ZipArchive::ZipFileStream
    IL_00cb:  ldarg.1
    IL_00cc:  ldfld      uint32 Game.ZipArchiveEntry::FileSize
    IL_00d1:  call       uint8[] [System.Runtime.Extensions]System.BitConverter::GetBytes(uint32)
    IL_00d6:  ldc.i4.0
    IL_00d7:  ldc.i4.4
    IL_00d8:  callvirt   instance void [System.IO]System.IO.Stream::Write(uint8[],
                                                                          int32,
                                                                          int32)
    IL_00dd:  ldarg.0
    IL_00de:  ldfld      class [System.IO]System.IO.Stream Game.ZipArchive::ZipFileStream
    IL_00e3:  ldloc.0
    IL_00e4:  ldlen
    IL_00e5:  conv.i4
    IL_00e6:  conv.u2
    IL_00e7:  call       uint8[] [System.Runtime.Extensions]System.BitConverter::GetBytes(uint16)
    IL_00ec:  ldc.i4.0
    IL_00ed:  ldc.i4.2
    IL_00ee:  callvirt   instance void [System.IO]System.IO.Stream::Write(uint8[],
                                                                          int32,
                                                                          int32)
    IL_00f3:  ldarg.0
    IL_00f4:  ldfld      class [System.IO]System.IO.Stream Game.ZipArchive::ZipFileStream
    IL_00f9:  ldc.i4.0
    IL_00fa:  call       uint8[] [System.Runtime.Extensions]System.BitConverter::GetBytes(uint16)
    IL_00ff:  ldc.i4.0
    IL_0100:  ldc.i4.2
    IL_0101:  callvirt   instance void [System.IO]System.IO.Stream::Write(uint8[],
                                                                          int32,
                                                                          int32)
    IL_0106:  ldarg.0
    IL_0107:  ldfld      class [System.IO]System.IO.Stream Game.ZipArchive::ZipFileStream
    IL_010c:  ldloc.1
    IL_010d:  ldlen
    IL_010e:  conv.i4
    IL_010f:  conv.u2
    IL_0110:  call       uint8[] [System.Runtime.Extensions]System.BitConverter::GetBytes(uint16)
    IL_0115:  ldc.i4.0
    IL_0116:  ldc.i4.2
    IL_0117:  callvirt   instance void [System.IO]System.IO.Stream::Write(uint8[],
                                                                          int32,
                                                                          int32)
    IL_011c:  ldarg.0
    IL_011d:  ldfld      class [System.IO]System.IO.Stream Game.ZipArchive::ZipFileStream
    IL_0122:  ldc.i4.0
    IL_0123:  call       uint8[] [System.Runtime.Extensions]System.BitConverter::GetBytes(uint16)
    IL_0128:  ldc.i4.0
    IL_0129:  ldc.i4.2
    IL_012a:  callvirt   instance void [System.IO]System.IO.Stream::Write(uint8[],
                                                                          int32,
                                                                          int32)
    IL_012f:  ldarg.0
    IL_0130:  ldfld      class [System.IO]System.IO.Stream Game.ZipArchive::ZipFileStream
    IL_0135:  ldc.i4.0
    IL_0136:  call       uint8[] [System.Runtime.Extensions]System.BitConverter::GetBytes(uint16)
    IL_013b:  ldc.i4.0
    IL_013c:  ldc.i4.2
    IL_013d:  callvirt   instance void [System.IO]System.IO.Stream::Write(uint8[],
                                                                          int32,
                                                                          int32)
    IL_0142:  ldarg.0
    IL_0143:  ldfld      class [System.IO]System.IO.Stream Game.ZipArchive::ZipFileStream
    IL_0148:  ldc.i4.0
    IL_0149:  call       uint8[] [System.Runtime.Extensions]System.BitConverter::GetBytes(uint16)
    IL_014e:  ldc.i4.0
    IL_014f:  ldc.i4.2
    IL_0150:  callvirt   instance void [System.IO]System.IO.Stream::Write(uint8[],
                                                                          int32,
                                                                          int32)
    IL_0155:  ldarg.0
    IL_0156:  ldfld      class [System.IO]System.IO.Stream Game.ZipArchive::ZipFileStream
    IL_015b:  ldc.i4     0x8100
    IL_0160:  call       uint8[] [System.Runtime.Extensions]System.BitConverter::GetBytes(uint16)
    IL_0165:  ldc.i4.0
    IL_0166:  ldc.i4.2
    IL_0167:  callvirt   instance void [System.IO]System.IO.Stream::Write(uint8[],
                                                                          int32,
                                                                          int32)
    IL_016c:  ldarg.0
    IL_016d:  ldfld      class [System.IO]System.IO.Stream Game.ZipArchive::ZipFileStream
    IL_0172:  ldarg.1
    IL_0173:  ldfld      uint32 Game.ZipArchiveEntry::HeaderOffset
    IL_0178:  call       uint8[] [System.Runtime.Extensions]System.BitConverter::GetBytes(uint32)
    IL_017d:  ldc.i4.0
    IL_017e:  ldc.i4.4
    IL_017f:  callvirt   instance void [System.IO]System.IO.Stream::Write(uint8[],
                                                                          int32,
                                                                          int32)
    IL_0184:  ldarg.0
    IL_0185:  ldfld      class [System.IO]System.IO.Stream Game.ZipArchive::ZipFileStream
    IL_018a:  ldloc.0
    IL_018b:  ldc.i4.0
    IL_018c:  ldloc.0
    IL_018d:  ldlen
    IL_018e:  conv.i4
    IL_018f:  callvirt   instance void [System.IO]System.IO.Stream::Write(uint8[],
                                                                          int32,
                                                                          int32)
    IL_0194:  ldarg.0
    IL_0195:  ldfld      class [System.IO]System.IO.Stream Game.ZipArchive::ZipFileStream
    IL_019a:  ldloc.1
    IL_019b:  ldc.i4.0
    IL_019c:  ldloc.1
    IL_019d:  ldlen
    IL_019e:  conv.i4
    IL_019f:  callvirt   instance void [System.IO]System.IO.Stream::Write(uint8[],
                                                                          int32,
                                                                          int32)
    IL_01a4:  ret
  } // end of method ZipArchive::WriteCentralDirRecord

  .method private hidebysig instance void 
          WriteEndRecord(uint32 _size,
                         uint32 _offset) cil managed
  {
    // 代码大小       198 (0xc6)
    .maxstack  4
    .locals init (uint8[] V_0)
    IL_0000:  call       class [System.Text.Encoding]System.Text.Encoding [System.Text.Encoding]System.Text.Encoding::get_UTF8()
    IL_0005:  ldarg.0
    IL_0006:  ldfld      string Game.ZipArchive::Comment
    IL_000b:  callvirt   instance uint8[] [System.Text.Encoding]System.Text.Encoding::GetBytes(string)
    IL_0010:  stloc.0
    IL_0011:  ldarg.0
    IL_0012:  ldfld      class [System.IO]System.IO.Stream Game.ZipArchive::ZipFileStream
    IL_0017:  ldc.i4.8
    IL_0018:  newarr     [System.Runtime]System.Byte
    IL_001d:  dup
    IL_001e:  ldtoken    field int64 '<PrivateImplementationDetails>'::'690CEFE15B853F35A429B884DC3402A022918213'
    IL_0023:  call       void [System.Runtime]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [System.Runtime]System.Array,
                                                                                                              valuetype [System.Runtime]System.RuntimeFieldHandle)
    IL_0028:  ldc.i4.0
    IL_0029:  ldc.i4.8
    IL_002a:  callvirt   instance void [System.IO]System.IO.Stream::Write(uint8[],
                                                                          int32,
                                                                          int32)
    IL_002f:  ldarg.0
    IL_0030:  ldfld      class [System.IO]System.IO.Stream Game.ZipArchive::ZipFileStream
    IL_0035:  ldarg.0
    IL_0036:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ZipArchiveEntry> Game.ZipArchive::Files
    IL_003b:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.ZipArchiveEntry>::get_Count()
    IL_0040:  conv.u2
    IL_0041:  ldarg.0
    IL_0042:  ldfld      uint16 Game.ZipArchive::ExistingFiles
    IL_0047:  add
    IL_0048:  call       uint8[] [System.Runtime.Extensions]System.BitConverter::GetBytes(int32)
    IL_004d:  ldc.i4.0
    IL_004e:  ldc.i4.2
    IL_004f:  callvirt   instance void [System.IO]System.IO.Stream::Write(uint8[],
                                                                          int32,
                                                                          int32)
    IL_0054:  ldarg.0
    IL_0055:  ldfld      class [System.IO]System.IO.Stream Game.ZipArchive::ZipFileStream
    IL_005a:  ldarg.0
    IL_005b:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ZipArchiveEntry> Game.ZipArchive::Files
    IL_0060:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.ZipArchiveEntry>::get_Count()
    IL_0065:  conv.u2
    IL_0066:  ldarg.0
    IL_0067:  ldfld      uint16 Game.ZipArchive::ExistingFiles
    IL_006c:  add
    IL_006d:  call       uint8[] [System.Runtime.Extensions]System.BitConverter::GetBytes(int32)
    IL_0072:  ldc.i4.0
    IL_0073:  ldc.i4.2
    IL_0074:  callvirt   instance void [System.IO]System.IO.Stream::Write(uint8[],
                                                                          int32,
                                                                          int32)
    IL_0079:  ldarg.0
    IL_007a:  ldfld      class [System.IO]System.IO.Stream Game.ZipArchive::ZipFileStream
    IL_007f:  ldarg.1
    IL_0080:  call       uint8[] [System.Runtime.Extensions]System.BitConverter::GetBytes(uint32)
    IL_0085:  ldc.i4.0
    IL_0086:  ldc.i4.4
    IL_0087:  callvirt   instance void [System.IO]System.IO.Stream::Write(uint8[],
                                                                          int32,
                                                                          int32)
    IL_008c:  ldarg.0
    IL_008d:  ldfld      class [System.IO]System.IO.Stream Game.ZipArchive::ZipFileStream
    IL_0092:  ldarg.2
    IL_0093:  call       uint8[] [System.Runtime.Extensions]System.BitConverter::GetBytes(uint32)
    IL_0098:  ldc.i4.0
    IL_0099:  ldc.i4.4
    IL_009a:  callvirt   instance void [System.IO]System.IO.Stream::Write(uint8[],
                                                                          int32,
                                                                          int32)
    IL_009f:  ldarg.0
    IL_00a0:  ldfld      class [System.IO]System.IO.Stream Game.ZipArchive::ZipFileStream
    IL_00a5:  ldloc.0
    IL_00a6:  ldlen
    IL_00a7:  conv.i4
    IL_00a8:  conv.u2
    IL_00a9:  call       uint8[] [System.Runtime.Extensions]System.BitConverter::GetBytes(uint16)
    IL_00ae:  ldc.i4.0
    IL_00af:  ldc.i4.2
    IL_00b0:  callvirt   instance void [System.IO]System.IO.Stream::Write(uint8[],
                                                                          int32,
                                                                          int32)
    IL_00b5:  ldarg.0
    IL_00b6:  ldfld      class [System.IO]System.IO.Stream Game.ZipArchive::ZipFileStream
    IL_00bb:  ldloc.0
    IL_00bc:  ldc.i4.0
    IL_00bd:  ldloc.0
    IL_00be:  ldlen
    IL_00bf:  conv.i4
    IL_00c0:  callvirt   instance void [System.IO]System.IO.Stream::Write(uint8[],
                                                                          int32,
                                                                          int32)
    IL_00c5:  ret
  } // end of method ZipArchive::WriteEndRecord

  .method private hidebysig instance void 
          Store(class Game.ZipArchiveEntry _zfe,
                class [System.IO]System.IO.Stream _source) cil managed
  {
    // 代码大小       315 (0x13b)
    .maxstack  5
    .locals init (uint8[] V_0,
             int32 V_1,
             uint32 V_2,
             class [System.IO]System.IO.Stream V_3,
             int64 V_4,
             int64 V_5,
             uint32 V_6)
    IL_0000:  ldc.i4     0x4000
    IL_0005:  newarr     [System.Runtime]System.Byte
    IL_000a:  stloc.0
    IL_000b:  ldc.i4.0
    IL_000c:  stloc.2
    IL_000d:  ldarg.0
    IL_000e:  ldfld      class [System.IO]System.IO.Stream Game.ZipArchive::ZipFileStream
    IL_0013:  callvirt   instance int64 [System.IO]System.IO.Stream::get_Position()
    IL_0018:  stloc.s    V_4
    IL_001a:  ldarg.2
    IL_001b:  callvirt   instance int64 [System.IO]System.IO.Stream::get_Position()
    IL_0020:  stloc.s    V_5
    IL_0022:  ldarg.1
    IL_0023:  ldfld      valuetype Game.ZipArchive/Compression Game.ZipArchiveEntry::Method
    IL_0028:  brtrue.s   IL_0033

    IL_002a:  ldarg.0
    IL_002b:  ldfld      class [System.IO]System.IO.Stream Game.ZipArchive::ZipFileStream
    IL_0030:  stloc.3
    IL_0031:  br.s       IL_0041

    IL_0033:  ldarg.0
    IL_0034:  ldfld      class [System.IO]System.IO.Stream Game.ZipArchive::ZipFileStream
    IL_0039:  ldc.i4.1
    IL_003a:  ldc.i4.1
    IL_003b:  newobj     instance void [System.IO.Compression]System.IO.Compression.DeflateStream::.ctor(class [System.IO]System.IO.Stream,
                                                                                                         valuetype [System.IO.Compression]System.IO.Compression.CompressionMode,
                                                                                                         bool)
    IL_0040:  stloc.3
    IL_0041:  ldarg.1
    IL_0042:  ldc.i4.m1
    IL_0043:  stfld      uint32 Game.ZipArchiveEntry::Crc32
    IL_0048:  ldarg.2
    IL_0049:  ldloc.0
    IL_004a:  ldc.i4.0
    IL_004b:  ldloc.0
    IL_004c:  ldlen
    IL_004d:  conv.i4
    IL_004e:  callvirt   instance int32 [System.IO]System.IO.Stream::Read(uint8[],
                                                                          int32,
                                                                          int32)
    IL_0053:  stloc.1
    IL_0054:  ldloc.2
    IL_0055:  ldloc.1
    IL_0056:  add
    IL_0057:  stloc.2
    IL_0058:  ldloc.1
    IL_0059:  ldc.i4.0
    IL_005a:  ble.s      IL_009d

    IL_005c:  ldloc.3
    IL_005d:  ldloc.0
    IL_005e:  ldc.i4.0
    IL_005f:  ldloc.1
    IL_0060:  callvirt   instance void [System.IO]System.IO.Stream::Write(uint8[],
                                                                          int32,
                                                                          int32)
    IL_0065:  ldc.i4.0
    IL_0066:  stloc.s    V_6
    IL_0068:  br.s       IL_0096

    IL_006a:  ldarg.1
    IL_006b:  ldsfld     uint32[] Game.ZipArchive::CrcTable
    IL_0070:  ldarg.1
    IL_0071:  ldfld      uint32 Game.ZipArchiveEntry::Crc32
    IL_0076:  ldloc.0
    IL_0077:  ldloc.s    V_6
    IL_0079:  ldelem.u1
    IL_007a:  xor
    IL_007b:  ldc.i4     0xff
    IL_0080:  and
    IL_0081:  ldelem.u4
    IL_0082:  ldarg.1
    IL_0083:  ldfld      uint32 Game.ZipArchiveEntry::Crc32
    IL_0088:  ldc.i4.8
    IL_0089:  shr.un
    IL_008a:  xor
    IL_008b:  stfld      uint32 Game.ZipArchiveEntry::Crc32
    IL_0090:  ldloc.s    V_6
    IL_0092:  ldc.i4.1
    IL_0093:  add
    IL_0094:  stloc.s    V_6
    IL_0096:  ldloc.s    V_6
    IL_0098:  conv.u8
    IL_0099:  ldloc.1
    IL_009a:  conv.i8
    IL_009b:  blt.s      IL_006a

    IL_009d:  ldloc.1
    IL_009e:  ldloc.0
    IL_009f:  ldlen
    IL_00a0:  conv.i4
    IL_00a1:  beq.s      IL_0048

    IL_00a3:  ldloc.3
    IL_00a4:  callvirt   instance void [System.IO]System.IO.Stream::Flush()
    IL_00a9:  ldarg.1
    IL_00aa:  ldfld      valuetype Game.ZipArchive/Compression Game.ZipArchiveEntry::Method
    IL_00af:  ldc.i4.8
    IL_00b0:  bne.un.s   IL_00b8

    IL_00b2:  ldloc.3
    IL_00b3:  callvirt   instance void [System.IO]System.IO.Stream::Dispose()
    IL_00b8:  ldarg.1
    IL_00b9:  dup
    IL_00ba:  ldfld      uint32 Game.ZipArchiveEntry::Crc32
    IL_00bf:  ldc.i4.m1
    IL_00c0:  xor
    IL_00c1:  stfld      uint32 Game.ZipArchiveEntry::Crc32
    IL_00c6:  ldarg.1
    IL_00c7:  ldloc.2
    IL_00c8:  stfld      uint32 Game.ZipArchiveEntry::FileSize
    IL_00cd:  ldarg.1
    IL_00ce:  ldarg.0
    IL_00cf:  ldfld      class [System.IO]System.IO.Stream Game.ZipArchive::ZipFileStream
    IL_00d4:  callvirt   instance int64 [System.IO]System.IO.Stream::get_Position()
    IL_00d9:  ldloc.s    V_4
    IL_00db:  sub
    IL_00dc:  conv.u4
    IL_00dd:  stfld      uint32 Game.ZipArchiveEntry::CompressedSize
    IL_00e2:  ldarg.1
    IL_00e3:  ldfld      valuetype Game.ZipArchive/Compression Game.ZipArchiveEntry::Method
    IL_00e8:  ldc.i4.8
    IL_00e9:  bne.un.s   IL_013a

    IL_00eb:  ldarg.0
    IL_00ec:  ldfld      bool Game.ZipArchive::ForceDeflating
    IL_00f1:  brtrue.s   IL_013a

    IL_00f3:  ldarg.2
    IL_00f4:  callvirt   instance bool [System.IO]System.IO.Stream::get_CanSeek()
    IL_00f9:  brfalse.s  IL_013a

    IL_00fb:  ldarg.1
    IL_00fc:  ldfld      uint32 Game.ZipArchiveEntry::CompressedSize
    IL_0101:  ldarg.1
    IL_0102:  ldfld      uint32 Game.ZipArchiveEntry::FileSize
    IL_0107:  ble.un.s   IL_013a

    IL_0109:  ldarg.1
    IL_010a:  ldc.i4.0
    IL_010b:  stfld      valuetype Game.ZipArchive/Compression Game.ZipArchiveEntry::Method
    IL_0110:  ldarg.0
    IL_0111:  ldfld      class [System.IO]System.IO.Stream Game.ZipArchive::ZipFileStream
    IL_0116:  ldloc.s    V_4
    IL_0118:  callvirt   instance void [System.IO]System.IO.Stream::set_Position(int64)
    IL_011d:  ldarg.0
    IL_011e:  ldfld      class [System.IO]System.IO.Stream Game.ZipArchive::ZipFileStream
    IL_0123:  ldloc.s    V_4
    IL_0125:  callvirt   instance void [System.IO]System.IO.Stream::SetLength(int64)
    IL_012a:  ldarg.2
    IL_012b:  ldloc.s    V_5
    IL_012d:  callvirt   instance void [System.IO]System.IO.Stream::set_Position(int64)
    IL_0132:  ldarg.0
    IL_0133:  ldarg.1
    IL_0134:  ldarg.2
    IL_0135:  call       instance void Game.ZipArchive::Store(class Game.ZipArchiveEntry,
                                                              class [System.IO]System.IO.Stream)
    IL_013a:  ret
  } // end of method ZipArchive::Store

  .method private hidebysig instance uint32 
          DateTimeToDosTime(valuetype [System.Runtime]System.DateTime _dt) cil managed
  {
    // 代码大小       70 (0x46)
    .maxstack  3
    IL_0000:  ldarga.s   _dt
    IL_0002:  call       instance int32 [System.Runtime]System.DateTime::get_Second()
    IL_0007:  ldc.i4.2
    IL_0008:  div
    IL_0009:  ldarga.s   _dt
    IL_000b:  call       instance int32 [System.Runtime]System.DateTime::get_Minute()
    IL_0010:  ldc.i4.5
    IL_0011:  shl
    IL_0012:  or
    IL_0013:  ldarga.s   _dt
    IL_0015:  call       instance int32 [System.Runtime]System.DateTime::get_Hour()
    IL_001a:  ldc.i4.s   11
    IL_001c:  shl
    IL_001d:  or
    IL_001e:  ldarga.s   _dt
    IL_0020:  call       instance int32 [System.Runtime]System.DateTime::get_Day()
    IL_0025:  ldc.i4.s   16
    IL_0027:  shl
    IL_0028:  or
    IL_0029:  ldarga.s   _dt
    IL_002b:  call       instance int32 [System.Runtime]System.DateTime::get_Month()
    IL_0030:  ldc.i4.s   21
    IL_0032:  shl
    IL_0033:  or
    IL_0034:  ldarga.s   _dt
    IL_0036:  call       instance int32 [System.Runtime]System.DateTime::get_Year()
    IL_003b:  ldc.i4     0x7bc
    IL_0040:  sub
    IL_0041:  ldc.i4.s   25
    IL_0043:  shl
    IL_0044:  or
    IL_0045:  ret
  } // end of method ZipArchive::DateTimeToDosTime

  .method private hidebysig instance valuetype [System.Runtime]System.DateTime 
          DosTimeToDateTime(uint32 _dt) cil managed
  {
    // 代码大小       49 (0x31)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldc.i4.s   25
    IL_0003:  shr.un
    IL_0004:  ldc.i4     0x7bc
    IL_0009:  add
    IL_000a:  ldarg.1
    IL_000b:  ldc.i4.s   21
    IL_000d:  shr.un
    IL_000e:  ldc.i4.s   15
    IL_0010:  and
    IL_0011:  ldarg.1
    IL_0012:  ldc.i4.s   16
    IL_0014:  shr.un
    IL_0015:  ldc.i4.s   31
    IL_0017:  and
    IL_0018:  ldarg.1
    IL_0019:  ldc.i4.s   11
    IL_001b:  shr.un
    IL_001c:  ldc.i4.s   31
    IL_001e:  and
    IL_001f:  ldarg.1
    IL_0020:  ldc.i4.5
    IL_0021:  shr.un
    IL_0022:  ldc.i4.s   63
    IL_0024:  and
    IL_0025:  ldarg.1
    IL_0026:  ldc.i4.s   31
    IL_0028:  and
    IL_0029:  ldc.i4.2
    IL_002a:  mul
    IL_002b:  newobj     instance void [System.Runtime]System.DateTime::.ctor(int32,
                                                                              int32,
                                                                              int32,
                                                                              int32,
                                                                              int32,
                                                                              int32)
    IL_0030:  ret
  } // end of method ZipArchive::DosTimeToDateTime

  .method private hidebysig instance void 
          UpdateCrcAndSizes(class Game.ZipArchiveEntry _zfe) cil managed
  {
    // 代码大小       162 (0xa2)
    .maxstack  4
    .locals init (int64 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.IO]System.IO.Stream Game.ZipArchive::ZipFileStream
    IL_0006:  callvirt   instance int64 [System.IO]System.IO.Stream::get_Position()
    IL_000b:  stloc.0
    IL_000c:  ldarg.0
    IL_000d:  ldfld      class [System.IO]System.IO.Stream Game.ZipArchive::ZipFileStream
    IL_0012:  ldarg.1
    IL_0013:  ldfld      uint32 Game.ZipArchiveEntry::HeaderOffset
    IL_0018:  ldc.i4.8
    IL_0019:  add
    IL_001a:  conv.u8
    IL_001b:  callvirt   instance void [System.IO]System.IO.Stream::set_Position(int64)
    IL_0020:  ldarg.0
    IL_0021:  ldfld      class [System.IO]System.IO.Stream Game.ZipArchive::ZipFileStream
    IL_0026:  ldarg.1
    IL_0027:  ldfld      valuetype Game.ZipArchive/Compression Game.ZipArchiveEntry::Method
    IL_002c:  call       uint8[] [System.Runtime.Extensions]System.BitConverter::GetBytes(uint16)
    IL_0031:  ldc.i4.0
    IL_0032:  ldc.i4.2
    IL_0033:  callvirt   instance void [System.IO]System.IO.Stream::Write(uint8[],
                                                                          int32,
                                                                          int32)
    IL_0038:  ldarg.0
    IL_0039:  ldfld      class [System.IO]System.IO.Stream Game.ZipArchive::ZipFileStream
    IL_003e:  ldarg.1
    IL_003f:  ldfld      uint32 Game.ZipArchiveEntry::HeaderOffset
    IL_0044:  ldc.i4.s   14
    IL_0046:  add
    IL_0047:  conv.u8
    IL_0048:  callvirt   instance void [System.IO]System.IO.Stream::set_Position(int64)
    IL_004d:  ldarg.0
    IL_004e:  ldfld      class [System.IO]System.IO.Stream Game.ZipArchive::ZipFileStream
    IL_0053:  ldarg.1
    IL_0054:  ldfld      uint32 Game.ZipArchiveEntry::Crc32
    IL_0059:  call       uint8[] [System.Runtime.Extensions]System.BitConverter::GetBytes(uint32)
    IL_005e:  ldc.i4.0
    IL_005f:  ldc.i4.4
    IL_0060:  callvirt   instance void [System.IO]System.IO.Stream::Write(uint8[],
                                                                          int32,
                                                                          int32)
    IL_0065:  ldarg.0
    IL_0066:  ldfld      class [System.IO]System.IO.Stream Game.ZipArchive::ZipFileStream
    IL_006b:  ldarg.1
    IL_006c:  ldfld      uint32 Game.ZipArchiveEntry::CompressedSize
    IL_0071:  call       uint8[] [System.Runtime.Extensions]System.BitConverter::GetBytes(uint32)
    IL_0076:  ldc.i4.0
    IL_0077:  ldc.i4.4
    IL_0078:  callvirt   instance void [System.IO]System.IO.Stream::Write(uint8[],
                                                                          int32,
                                                                          int32)
    IL_007d:  ldarg.0
    IL_007e:  ldfld      class [System.IO]System.IO.Stream Game.ZipArchive::ZipFileStream
    IL_0083:  ldarg.1
    IL_0084:  ldfld      uint32 Game.ZipArchiveEntry::FileSize
    IL_0089:  call       uint8[] [System.Runtime.Extensions]System.BitConverter::GetBytes(uint32)
    IL_008e:  ldc.i4.0
    IL_008f:  ldc.i4.4
    IL_0090:  callvirt   instance void [System.IO]System.IO.Stream::Write(uint8[],
                                                                          int32,
                                                                          int32)
    IL_0095:  ldarg.0
    IL_0096:  ldfld      class [System.IO]System.IO.Stream Game.ZipArchive::ZipFileStream
    IL_009b:  ldloc.0
    IL_009c:  callvirt   instance void [System.IO]System.IO.Stream::set_Position(int64)
    IL_00a1:  ret
  } // end of method ZipArchive::UpdateCrcAndSizes

  .method private hidebysig instance string 
          NormalizedFilename(string _filename) cil managed
  {
    // 代码大小       53 (0x35)
    .maxstack  5
    .locals init (string V_0,
             int32 V_1)
    IL_0000:  ldarg.1
    IL_0001:  ldc.i4.s   92
    IL_0003:  ldc.i4.s   47
    IL_0005:  callvirt   instance string [System.Runtime]System.String::Replace(char,
                                                                                char)
    IL_000a:  stloc.0
    IL_000b:  ldloc.0
    IL_000c:  ldc.i4.s   58
    IL_000e:  callvirt   instance int32 [System.Runtime]System.String::IndexOf(char)
    IL_0013:  stloc.1
    IL_0014:  ldloc.1
    IL_0015:  ldc.i4.0
    IL_0016:  blt.s      IL_0023

    IL_0018:  ldloc.0
    IL_0019:  ldc.i4.0
    IL_001a:  ldloc.1
    IL_001b:  ldc.i4.1
    IL_001c:  add
    IL_001d:  callvirt   instance string [System.Runtime]System.String::Remove(int32,
                                                                               int32)
    IL_0022:  stloc.0
    IL_0023:  ldloc.0
    IL_0024:  ldc.i4.1
    IL_0025:  newarr     [System.Runtime]System.Char
    IL_002a:  dup
    IL_002b:  ldc.i4.0
    IL_002c:  ldc.i4.s   47
    IL_002e:  stelem.i2
    IL_002f:  callvirt   instance string [System.Runtime]System.String::Trim(char[])
    IL_0034:  ret
  } // end of method ZipArchive::NormalizedFilename

  .method private hidebysig instance bool 
          ReadFileInfo() cil managed
  {
    // 代码大小       258 (0x102)
    .maxstack  4
    .locals init (class [System.IO]System.IO.BinaryReader V_0,
             uint16 V_1,
             int32 V_2,
             uint32 V_3,
             uint16 V_4,
             bool V_5)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.IO]System.IO.Stream Game.ZipArchive::ZipFileStream
    IL_0006:  callvirt   instance int64 [System.IO]System.IO.Stream::get_Length()
    IL_000b:  ldc.i4.s   22
    IL_000d:  conv.i8
    IL_000e:  bge.s      IL_0012

    IL_0010:  ldc.i4.0
    IL_0011:  ret

    IL_0012:  nop
    .try
    {
      IL_0013:  ldarg.0
      IL_0014:  ldfld      class [System.IO]System.IO.Stream Game.ZipArchive::ZipFileStream
      IL_0019:  ldc.i4.s   -17
      IL_001b:  conv.i8
      IL_001c:  ldc.i4.2
      IL_001d:  callvirt   instance int64 [System.IO]System.IO.Stream::Seek(int64,
                                                                            valuetype [System.IO]System.IO.SeekOrigin)
      IL_0022:  pop
      IL_0023:  ldarg.0
      IL_0024:  ldfld      class [System.IO]System.IO.Stream Game.ZipArchive::ZipFileStream
      IL_0029:  newobj     instance void [System.IO]System.IO.BinaryReader::.ctor(class [System.IO]System.IO.Stream)
      IL_002e:  stloc.0
      IL_002f:  ldarg.0
      IL_0030:  ldfld      class [System.IO]System.IO.Stream Game.ZipArchive::ZipFileStream
      IL_0035:  ldc.i4.s   -5
      IL_0037:  conv.i8
      IL_0038:  ldc.i4.1
      IL_0039:  callvirt   instance int64 [System.IO]System.IO.Stream::Seek(int64,
                                                                            valuetype [System.IO]System.IO.SeekOrigin)
      IL_003e:  pop
      IL_003f:  ldloc.0
      IL_0040:  callvirt   instance uint32 [System.IO]System.IO.BinaryReader::ReadUInt32()
      IL_0045:  ldc.i4     0x6054b50
      IL_004a:  bne.un     IL_00e6

      IL_004f:  ldarg.0
      IL_0050:  ldfld      class [System.IO]System.IO.Stream Game.ZipArchive::ZipFileStream
      IL_0055:  ldc.i4.6
      IL_0056:  conv.i8
      IL_0057:  ldc.i4.1
      IL_0058:  callvirt   instance int64 [System.IO]System.IO.Stream::Seek(int64,
                                                                            valuetype [System.IO]System.IO.SeekOrigin)
      IL_005d:  pop
      IL_005e:  ldloc.0
      IL_005f:  callvirt   instance uint16 [System.IO]System.IO.BinaryReader::ReadUInt16()
      IL_0064:  stloc.1
      IL_0065:  ldloc.0
      IL_0066:  callvirt   instance int32 [System.IO]System.IO.BinaryReader::ReadInt32()
      IL_006b:  stloc.2
      IL_006c:  ldloc.0
      IL_006d:  callvirt   instance uint32 [System.IO]System.IO.BinaryReader::ReadUInt32()
      IL_0072:  stloc.3
      IL_0073:  ldloc.0
      IL_0074:  callvirt   instance uint16 [System.IO]System.IO.BinaryReader::ReadUInt16()
      IL_0079:  stloc.s    V_4
      IL_007b:  ldarg.0
      IL_007c:  ldfld      class [System.IO]System.IO.Stream Game.ZipArchive::ZipFileStream
      IL_0081:  callvirt   instance int64 [System.IO]System.IO.Stream::get_Position()
      IL_0086:  ldloc.s    V_4
      IL_0088:  conv.u8
      IL_0089:  add
      IL_008a:  ldarg.0
      IL_008b:  ldfld      class [System.IO]System.IO.Stream Game.ZipArchive::ZipFileStream
      IL_0090:  callvirt   instance int64 [System.IO]System.IO.Stream::get_Length()
      IL_0095:  beq.s      IL_009c

      IL_0097:  ldc.i4.0
      IL_0098:  stloc.s    V_5
      IL_009a:  leave.s    IL_00ff

      IL_009c:  ldarg.0
      IL_009d:  ldloc.1
      IL_009e:  stfld      uint16 Game.ZipArchive::ExistingFiles
      IL_00a3:  ldarg.0
      IL_00a4:  ldloc.2
      IL_00a5:  newarr     [System.Runtime]System.Byte
      IL_00aa:  stfld      uint8[] Game.ZipArchive::CentralDirImage
      IL_00af:  ldarg.0
      IL_00b0:  ldfld      class [System.IO]System.IO.Stream Game.ZipArchive::ZipFileStream
      IL_00b5:  ldloc.3
      IL_00b6:  conv.u8
      IL_00b7:  ldc.i4.0
      IL_00b8:  callvirt   instance int64 [System.IO]System.IO.Stream::Seek(int64,
                                                                            valuetype [System.IO]System.IO.SeekOrigin)
      IL_00bd:  pop
      IL_00be:  ldarg.0
      IL_00bf:  ldfld      class [System.IO]System.IO.Stream Game.ZipArchive::ZipFileStream
      IL_00c4:  ldarg.0
      IL_00c5:  ldfld      uint8[] Game.ZipArchive::CentralDirImage
      IL_00ca:  ldc.i4.0
      IL_00cb:  ldloc.2
      IL_00cc:  callvirt   instance int32 [System.IO]System.IO.Stream::Read(uint8[],
                                                                            int32,
                                                                            int32)
      IL_00d1:  pop
      IL_00d2:  ldarg.0
      IL_00d3:  ldfld      class [System.IO]System.IO.Stream Game.ZipArchive::ZipFileStream
      IL_00d8:  ldloc.3
      IL_00d9:  conv.u8
      IL_00da:  ldc.i4.0
      IL_00db:  callvirt   instance int64 [System.IO]System.IO.Stream::Seek(int64,
                                                                            valuetype [System.IO]System.IO.SeekOrigin)
      IL_00e0:  pop
      IL_00e1:  ldc.i4.1
      IL_00e2:  stloc.s    V_5
      IL_00e4:  leave.s    IL_00ff

      IL_00e6:  ldarg.0
      IL_00e7:  ldfld      class [System.IO]System.IO.Stream Game.ZipArchive::ZipFileStream
      IL_00ec:  callvirt   instance int64 [System.IO]System.IO.Stream::get_Position()
      IL_00f1:  ldc.i4.0
      IL_00f2:  conv.i8
      IL_00f3:  bgt        IL_002f

      IL_00f8:  leave.s    IL_00fd

    }  // end .try
    catch [System.Runtime]System.Object 
    {
      IL_00fa:  pop
      IL_00fb:  leave.s    IL_00fd

    }  // end handler
    IL_00fd:  ldc.i4.0
    IL_00fe:  ret

    IL_00ff:  ldloc.s    V_5
    IL_0101:  ret
  } // end of method ZipArchive::ReadFileInfo

  .method public hidebysig newslot virtual final 
          instance void  Dispose() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.ZipArchive::Close()
    IL_0006:  ret
  } // end of method ZipArchive::Dispose

} // end of class Game.ZipArchive