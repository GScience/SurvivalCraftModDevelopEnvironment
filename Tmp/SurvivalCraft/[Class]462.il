.class public auto ansi beforefieldinit Game.VersionConverter10To14
       extends Game.VersionConverter
{
  .method public hidebysig specialname virtual 
          instance string  get_SourceVersion() cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldstr      "1.0"
    IL_0005:  ret
  } // end of method VersionConverter10To14::get_SourceVersion

  .method public hidebysig specialname virtual 
          instance string  get_TargetVersion() cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldstr      "1.4"
    IL_0005:  ret
  } // end of method VersionConverter10To14::get_TargetVersion

  .method public hidebysig virtual instance void 
          ConvertWorld(string directoryName) cil managed
  {
    // 代码大小       662 (0x296)
    .maxstack  7
    .locals init (string[] V_0,
             string V_1,
             class [System.Xml.XDocument]System.Xml.Linq.XElement V_2,
             class [System.IO]System.IO.Stream V_3,
             int32 V_4,
             int32 V_5,
             string[] V_6,
             int32 V_7,
             string V_8,
             int32 V_9,
             int32 V_10,
             class [System.IO]System.IO.Stream V_11,
             uint8[] V_12,
             int32 V_13,
             class [System.Runtime]System.Exception V_14,
             class [System.IO]System.IO.Stream V_15,
             class [System.IO]System.IO.Stream V_16,
             string V_17)
    IL_0000:  ldc.i4.2
    IL_0001:  newarr     [System.Runtime]System.String
    IL_0006:  dup
    IL_0007:  ldc.i4.0
    IL_0008:  ldarg.1
    IL_0009:  stelem.ref
    IL_000a:  dup
    IL_000b:  ldc.i4.1
    IL_000c:  ldstr      "Chunks"
    IL_0011:  stelem.ref
    IL_0012:  call       string [Engine]Engine.Storage::CombinePaths(string[])
    IL_0017:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<string> [Engine]Engine.Storage::ListFileNames(string)
    IL_001c:  call       !!0[] [System.Linq]System.Linq.Enumerable::ToArray<string>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_0021:  stloc.0
    IL_0022:  ldc.i4.2
    IL_0023:  newarr     [System.Runtime]System.String
    IL_0028:  dup
    IL_0029:  ldc.i4.0
    IL_002a:  ldarg.1
    IL_002b:  stelem.ref
    IL_002c:  dup
    IL_002d:  ldc.i4.1
    IL_002e:  ldstr      "Chunks.dat"
    IL_0033:  stelem.ref
    IL_0034:  call       string [Engine]Engine.Storage::CombinePaths(string[])
    IL_0039:  ldc.i4.2
    IL_003a:  call       class [System.IO]System.IO.Stream [Engine]Engine.Storage::OpenFile(string,
                                                                                            valuetype [Engine]Engine.OpenFileMode)
    IL_003f:  stloc.3
    .try
    {
      IL_0040:  ldc.i4.0
      IL_0041:  stloc.s    V_5
      IL_0043:  br.s       IL_0054

      IL_0045:  ldloc.3
      IL_0046:  ldc.i4.0
      IL_0047:  ldc.i4.0
      IL_0048:  ldc.i4.0
      IL_0049:  call       void Game.TerrainSerializer14::WriteTOCEntry(class [System.IO]System.IO.Stream,
                                                                        int32,
                                                                        int32,
                                                                        int32)
      IL_004e:  ldloc.s    V_5
      IL_0050:  ldc.i4.1
      IL_0051:  add
      IL_0052:  stloc.s    V_5
      IL_0054:  ldloc.s    V_5
      IL_0056:  ldc.i4     0x10001
      IL_005b:  blt.s      IL_0045

      IL_005d:  ldc.i4.0
      IL_005e:  stloc.s    V_4
      IL_0060:  ldloc.0
      IL_0061:  stloc.s    V_6
      IL_0063:  ldc.i4.0
      IL_0064:  stloc.s    V_7
      IL_0066:  br         IL_0186

      IL_006b:  ldloc.s    V_6
      IL_006d:  ldloc.s    V_7
      IL_006f:  ldelem.ref
      IL_0070:  stloc.s    V_8
      .try
      {
        IL_0072:  ldloc.s    V_4
        IL_0074:  ldc.i4     0x10000
        IL_0079:  blt.s      IL_0086

        IL_007b:  ldstr      "Too many chunks."
        IL_0080:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
        IL_0085:  throw

        IL_0086:  ldloc.s    V_8
        IL_0088:  call       string [Engine]Engine.Storage::GetFileNameWithoutExtension(string)
        IL_008d:  ldc.i4.1
        IL_008e:  newarr     [System.Runtime]System.Char
        IL_0093:  dup
        IL_0094:  ldc.i4.0
        IL_0095:  ldc.i4.s   95
        IL_0097:  stelem.i2
        IL_0098:  callvirt   instance string[] [System.Runtime]System.String::Split(char[])
        IL_009d:  dup
        IL_009e:  ldc.i4.1
        IL_009f:  ldelem.ref
        IL_00a0:  call       int32 [System.Runtime]System.Int32::Parse(string)
        IL_00a5:  stloc.s    V_9
        IL_00a7:  ldc.i4.2
        IL_00a8:  ldelem.ref
        IL_00a9:  call       int32 [System.Runtime]System.Int32::Parse(string)
        IL_00ae:  stloc.s    V_10
        IL_00b0:  ldc.i4.2
        IL_00b1:  newarr     [System.Runtime]System.String
        IL_00b6:  dup
        IL_00b7:  ldc.i4.0
        IL_00b8:  ldarg.1
        IL_00b9:  stelem.ref
        IL_00ba:  dup
        IL_00bb:  ldc.i4.1
        IL_00bc:  ldc.i4.2
        IL_00bd:  newarr     [System.Runtime]System.String
        IL_00c2:  dup
        IL_00c3:  ldc.i4.0
        IL_00c4:  ldstr      "Chunks"
        IL_00c9:  stelem.ref
        IL_00ca:  dup
        IL_00cb:  ldc.i4.1
        IL_00cc:  ldloc.s    V_8
        IL_00ce:  stelem.ref
        IL_00cf:  call       string [Engine]Engine.Storage::CombinePaths(string[])
        IL_00d4:  stelem.ref
        IL_00d5:  call       string [Engine]Engine.Storage::CombinePaths(string[])
        IL_00da:  ldc.i4.0
        IL_00db:  call       class [System.IO]System.IO.Stream [Engine]Engine.Storage::OpenFile(string,
                                                                                                valuetype [Engine]Engine.OpenFileMode)
        IL_00e0:  stloc.s    V_11
        .try
        {
          IL_00e2:  ldloc.s    V_11
          IL_00e4:  callvirt   instance int64 [System.IO]System.IO.Stream::get_Length()
          IL_00e9:  conv.ovf.i
          IL_00ea:  newarr     [System.Runtime]System.Byte
          IL_00ef:  stloc.s    V_12
          IL_00f1:  ldloc.s    V_11
          IL_00f3:  ldloc.s    V_12
          IL_00f5:  ldc.i4.0
          IL_00f6:  ldloc.s    V_12
          IL_00f8:  ldlen
          IL_00f9:  conv.i4
          IL_00fa:  callvirt   instance int32 [System.IO]System.IO.Stream::Read(uint8[],
                                                                                int32,
                                                                                int32)
          IL_00ff:  pop
          IL_0100:  ldloc.3
          IL_0101:  callvirt   instance int64 [System.IO]System.IO.Stream::get_Length()
          IL_0106:  conv.i4
          IL_0107:  stloc.s    V_13
          IL_0109:  ldloc.3
          IL_010a:  ldloc.s    V_13
          IL_010c:  conv.i8
          IL_010d:  callvirt   instance void [System.IO]System.IO.Stream::set_Position(int64)
          IL_0112:  ldloc.3
          IL_0113:  ldloc.s    V_9
          IL_0115:  ldloc.s    V_10
          IL_0117:  call       void Game.TerrainSerializer14::WriteChunkHeader(class [System.IO]System.IO.Stream,
                                                                               int32,
                                                                               int32)
          IL_011c:  ldloc.3
          IL_011d:  ldloc.s    V_12
          IL_011f:  ldc.i4.0
          IL_0120:  ldloc.s    V_12
          IL_0122:  ldlen
          IL_0123:  conv.i4
          IL_0124:  callvirt   instance void [System.IO]System.IO.Stream::Write(uint8[],
                                                                                int32,
                                                                                int32)
          IL_0129:  ldloc.3
          IL_012a:  ldloc.s    V_4
          IL_012c:  ldc.i4.4
          IL_012d:  mul
          IL_012e:  ldc.i4.3
          IL_012f:  mul
          IL_0130:  conv.i8
          IL_0131:  callvirt   instance void [System.IO]System.IO.Stream::set_Position(int64)
          IL_0136:  ldloc.3
          IL_0137:  ldloc.s    V_9
          IL_0139:  ldloc.s    V_10
          IL_013b:  ldloc.s    V_13
          IL_013d:  call       void Game.TerrainSerializer14::WriteTOCEntry(class [System.IO]System.IO.Stream,
                                                                            int32,
                                                                            int32,
                                                                            int32)
          IL_0142:  ldloc.s    V_4
          IL_0144:  ldc.i4.1
          IL_0145:  add
          IL_0146:  stloc.s    V_4
          IL_0148:  leave.s    IL_0156

        }  // end .try
        finally
        {
          IL_014a:  ldloc.s    V_11
          IL_014c:  brfalse.s  IL_0155

          IL_014e:  ldloc.s    V_11
          IL_0150:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
          IL_0155:  endfinally
        }  // end handler
        IL_0156:  leave.s    IL_0180

      }  // end .try
      catch [System.Runtime]System.Exception 
      {
        IL_0158:  stloc.s    V_14
        IL_015a:  ldstr      "Error converting chunk file \"{0}\". Skipping chunk."
        + " Reason: {1}"
        IL_015f:  ldc.i4.2
        IL_0160:  newarr     [System.Runtime]System.Object
        IL_0165:  dup
        IL_0166:  ldc.i4.0
        IL_0167:  ldloc.s    V_8
        IL_0169:  stelem.ref
        IL_016a:  dup
        IL_016b:  ldc.i4.1
        IL_016c:  ldloc.s    V_14
        IL_016e:  callvirt   instance string [System.Runtime]System.Exception::get_Message()
        IL_0173:  stelem.ref
        IL_0174:  call       string [System.Runtime]System.String::Format(string,
                                                                          object[])
        IL_0179:  call       void [Engine]Engine.Log::Error(string)
        IL_017e:  leave.s    IL_0180

      }  // end handler
      IL_0180:  ldloc.s    V_7
      IL_0182:  ldc.i4.1
      IL_0183:  add
      IL_0184:  stloc.s    V_7
      IL_0186:  ldloc.s    V_7
      IL_0188:  ldloc.s    V_6
      IL_018a:  ldlen
      IL_018b:  conv.i4
      IL_018c:  blt        IL_006b

      IL_0191:  ldloc.3
      IL_0192:  callvirt   instance void [System.IO]System.IO.Stream::Flush()
      IL_0197:  ldstr      "Converted {0} chunk(s)."
      IL_019c:  ldc.i4.1
      IL_019d:  newarr     [System.Runtime]System.Object
      IL_01a2:  dup
      IL_01a3:  ldc.i4.0
      IL_01a4:  ldloc.s    V_4
      IL_01a6:  box        [System.Runtime]System.Int32
      IL_01ab:  stelem.ref
      IL_01ac:  call       string [System.Runtime]System.String::Format(string,
                                                                        object[])
      IL_01b1:  call       void [Engine]Engine.Log::Information(string)
      IL_01b6:  leave.s    IL_01c2

    }  // end .try
    finally
    {
      IL_01b8:  ldloc.3
      IL_01b9:  brfalse.s  IL_01c1

      IL_01bb:  ldloc.3
      IL_01bc:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_01c1:  endfinally
    }  // end handler
    IL_01c2:  ldc.i4.2
    IL_01c3:  newarr     [System.Runtime]System.String
    IL_01c8:  dup
    IL_01c9:  ldc.i4.0
    IL_01ca:  ldarg.1
    IL_01cb:  stelem.ref
    IL_01cc:  dup
    IL_01cd:  ldc.i4.1
    IL_01ce:  ldstr      "Project.xml"
    IL_01d3:  stelem.ref
    IL_01d4:  call       string [Engine]Engine.Storage::CombinePaths(string[])
    IL_01d9:  stloc.1
    IL_01da:  ldloc.1
    IL_01db:  ldc.i4.0
    IL_01dc:  call       class [System.IO]System.IO.Stream [Engine]Engine.Storage::OpenFile(string,
                                                                                            valuetype [Engine]Engine.OpenFileMode)
    IL_01e1:  stloc.s    V_15
    .try
    {
      IL_01e3:  ldloc.s    V_15
      IL_01e5:  ldnull
      IL_01e6:  ldc.i4.1
      IL_01e7:  call       class [System.Xml.XDocument]System.Xml.Linq.XElement [EntitySystem]XmlUtilities.XmlUtils::LoadXmlFromStream(class [System.IO]System.IO.Stream,
                                                                                                                                       class [System.Text.Encoding]System.Text.Encoding,
                                                                                                                                       bool)
      IL_01ec:  stloc.2
      IL_01ed:  leave.s    IL_01fb

    }  // end .try
    finally
    {
      IL_01ef:  ldloc.s    V_15
      IL_01f1:  brfalse.s  IL_01fa

      IL_01f3:  ldloc.s    V_15
      IL_01f5:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_01fa:  endfinally
    }  // end handler
    IL_01fb:  ldloc.2
    IL_01fc:  ldstr      "Version"
    IL_0201:  ldarg.0
    IL_0202:  callvirt   instance string Game.VersionConverter::get_TargetVersion()
    IL_0207:  call       void [EntitySystem]XmlUtilities.XmlUtils::SetAttributeValue(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                     string,
                                                                                     object)
    IL_020c:  ldloc.1
    IL_020d:  ldc.i4.2
    IL_020e:  call       class [System.IO]System.IO.Stream [Engine]Engine.Storage::OpenFile(string,
                                                                                            valuetype [Engine]Engine.OpenFileMode)
    IL_0213:  stloc.s    V_16
    .try
    {
      IL_0215:  ldloc.2
      IL_0216:  ldloc.s    V_16
      IL_0218:  ldnull
      IL_0219:  ldc.i4.1
      IL_021a:  call       void [EntitySystem]XmlUtilities.XmlUtils::SaveXmlToStream(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                     class [System.IO]System.IO.Stream,
                                                                                     class [System.Text.Encoding]System.Text.Encoding,
                                                                                     bool)
      IL_021f:  leave.s    IL_022d

    }  // end .try
    finally
    {
      IL_0221:  ldloc.s    V_16
      IL_0223:  brfalse.s  IL_022c

      IL_0225:  ldloc.s    V_16
      IL_0227:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_022c:  endfinally
    }  // end handler
    IL_022d:  ldloc.0
    IL_022e:  stloc.s    V_6
    IL_0230:  ldc.i4.0
    IL_0231:  stloc.s    V_7
    IL_0233:  br.s       IL_0271

    IL_0235:  ldloc.s    V_6
    IL_0237:  ldloc.s    V_7
    IL_0239:  ldelem.ref
    IL_023a:  stloc.s    V_17
    IL_023c:  ldc.i4.2
    IL_023d:  newarr     [System.Runtime]System.String
    IL_0242:  dup
    IL_0243:  ldc.i4.0
    IL_0244:  ldarg.1
    IL_0245:  stelem.ref
    IL_0246:  dup
    IL_0247:  ldc.i4.1
    IL_0248:  ldc.i4.2
    IL_0249:  newarr     [System.Runtime]System.String
    IL_024e:  dup
    IL_024f:  ldc.i4.0
    IL_0250:  ldstr      "Chunks"
    IL_0255:  stelem.ref
    IL_0256:  dup
    IL_0257:  ldc.i4.1
    IL_0258:  ldloc.s    V_17
    IL_025a:  stelem.ref
    IL_025b:  call       string [Engine]Engine.Storage::CombinePaths(string[])
    IL_0260:  stelem.ref
    IL_0261:  call       string [Engine]Engine.Storage::CombinePaths(string[])
    IL_0266:  call       void [Engine]Engine.Storage::DeleteFile(string)
    IL_026b:  ldloc.s    V_7
    IL_026d:  ldc.i4.1
    IL_026e:  add
    IL_026f:  stloc.s    V_7
    IL_0271:  ldloc.s    V_7
    IL_0273:  ldloc.s    V_6
    IL_0275:  ldlen
    IL_0276:  conv.i4
    IL_0277:  blt.s      IL_0235

    IL_0279:  ldc.i4.2
    IL_027a:  newarr     [System.Runtime]System.String
    IL_027f:  dup
    IL_0280:  ldc.i4.0
    IL_0281:  ldarg.1
    IL_0282:  stelem.ref
    IL_0283:  dup
    IL_0284:  ldc.i4.1
    IL_0285:  ldstr      "Chunks"
    IL_028a:  stelem.ref
    IL_028b:  call       string [Engine]Engine.Storage::CombinePaths(string[])
    IL_0290:  call       void [Engine]Engine.Storage::DeleteDirectory(string)
    IL_0295:  ret
  } // end of method VersionConverter10To14::ConvertWorld

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.VersionConverter::.ctor()
    IL_0006:  ret
  } // end of method VersionConverter10To14::.ctor

  .property instance string SourceVersion()
  {
    .get instance string Game.VersionConverter10To14::get_SourceVersion()
  } // end of property VersionConverter10To14::SourceVersion
  .property instance string TargetVersion()
  {
    .get instance string Game.VersionConverter10To14::get_TargetVersion()
  } // end of property VersionConverter10To14::TargetVersion
} // end of class Game.VersionConverter10To14