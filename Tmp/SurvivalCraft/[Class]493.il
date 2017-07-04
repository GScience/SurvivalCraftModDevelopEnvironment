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
          ConvertProjectXml(class [System.Xml.XDocument]System.Xml.Linq.XElement projectNode) cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldstr      "Version"
    IL_0006:  ldarg.0
    IL_0007:  callvirt   instance string Game.VersionConverter::get_TargetVersion()
    IL_000c:  call       void [EntitySystem]XmlUtilities.XmlUtils::SetAttributeValue(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                     string,
                                                                                     object)
    IL_0011:  ret
  } // end of method VersionConverter10To14::ConvertProjectXml

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
      IL_0066:  br         IL_0190

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
        IL_00a0:  call       class [System.Globalization]System.Globalization.CultureInfo [System.Globalization]System.Globalization.CultureInfo::get_InvariantCulture()
        IL_00a5:  call       int32 [System.Runtime]System.Int32::Parse(string,
                                                                       class [System.Runtime]System.IFormatProvider)
        IL_00aa:  stloc.s    V_9
        IL_00ac:  ldc.i4.2
        IL_00ad:  ldelem.ref
        IL_00ae:  call       class [System.Globalization]System.Globalization.CultureInfo [System.Globalization]System.Globalization.CultureInfo::get_InvariantCulture()
        IL_00b3:  call       int32 [System.Runtime]System.Int32::Parse(string,
                                                                       class [System.Runtime]System.IFormatProvider)
        IL_00b8:  stloc.s    V_10
        IL_00ba:  ldc.i4.2
        IL_00bb:  newarr     [System.Runtime]System.String
        IL_00c0:  dup
        IL_00c1:  ldc.i4.0
        IL_00c2:  ldarg.1
        IL_00c3:  stelem.ref
        IL_00c4:  dup
        IL_00c5:  ldc.i4.1
        IL_00c6:  ldc.i4.2
        IL_00c7:  newarr     [System.Runtime]System.String
        IL_00cc:  dup
        IL_00cd:  ldc.i4.0
        IL_00ce:  ldstr      "Chunks"
        IL_00d3:  stelem.ref
        IL_00d4:  dup
        IL_00d5:  ldc.i4.1
        IL_00d6:  ldloc.s    V_8
        IL_00d8:  stelem.ref
        IL_00d9:  call       string [Engine]Engine.Storage::CombinePaths(string[])
        IL_00de:  stelem.ref
        IL_00df:  call       string [Engine]Engine.Storage::CombinePaths(string[])
        IL_00e4:  ldc.i4.0
        IL_00e5:  call       class [System.IO]System.IO.Stream [Engine]Engine.Storage::OpenFile(string,
                                                                                                valuetype [Engine]Engine.OpenFileMode)
        IL_00ea:  stloc.s    V_11
        .try
        {
          IL_00ec:  ldloc.s    V_11
          IL_00ee:  callvirt   instance int64 [System.IO]System.IO.Stream::get_Length()
          IL_00f3:  conv.ovf.i
          IL_00f4:  newarr     [System.Runtime]System.Byte
          IL_00f9:  stloc.s    V_12
          IL_00fb:  ldloc.s    V_11
          IL_00fd:  ldloc.s    V_12
          IL_00ff:  ldc.i4.0
          IL_0100:  ldloc.s    V_12
          IL_0102:  ldlen
          IL_0103:  conv.i4
          IL_0104:  callvirt   instance int32 [System.IO]System.IO.Stream::Read(uint8[],
                                                                                int32,
                                                                                int32)
          IL_0109:  pop
          IL_010a:  ldloc.3
          IL_010b:  callvirt   instance int64 [System.IO]System.IO.Stream::get_Length()
          IL_0110:  conv.i4
          IL_0111:  stloc.s    V_13
          IL_0113:  ldloc.3
          IL_0114:  ldloc.s    V_13
          IL_0116:  conv.i8
          IL_0117:  callvirt   instance void [System.IO]System.IO.Stream::set_Position(int64)
          IL_011c:  ldloc.3
          IL_011d:  ldloc.s    V_9
          IL_011f:  ldloc.s    V_10
          IL_0121:  call       void Game.TerrainSerializer14::WriteChunkHeader(class [System.IO]System.IO.Stream,
                                                                               int32,
                                                                               int32)
          IL_0126:  ldloc.3
          IL_0127:  ldloc.s    V_12
          IL_0129:  ldc.i4.0
          IL_012a:  ldloc.s    V_12
          IL_012c:  ldlen
          IL_012d:  conv.i4
          IL_012e:  callvirt   instance void [System.IO]System.IO.Stream::Write(uint8[],
                                                                                int32,
                                                                                int32)
          IL_0133:  ldloc.3
          IL_0134:  ldloc.s    V_4
          IL_0136:  ldc.i4.4
          IL_0137:  mul
          IL_0138:  ldc.i4.3
          IL_0139:  mul
          IL_013a:  conv.i8
          IL_013b:  callvirt   instance void [System.IO]System.IO.Stream::set_Position(int64)
          IL_0140:  ldloc.3
          IL_0141:  ldloc.s    V_9
          IL_0143:  ldloc.s    V_10
          IL_0145:  ldloc.s    V_13
          IL_0147:  call       void Game.TerrainSerializer14::WriteTOCEntry(class [System.IO]System.IO.Stream,
                                                                            int32,
                                                                            int32,
                                                                            int32)
          IL_014c:  ldloc.s    V_4
          IL_014e:  ldc.i4.1
          IL_014f:  add
          IL_0150:  stloc.s    V_4
          IL_0152:  leave.s    IL_0160

        }  // end .try
        finally
        {
          IL_0154:  ldloc.s    V_11
          IL_0156:  brfalse.s  IL_015f

          IL_0158:  ldloc.s    V_11
          IL_015a:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
          IL_015f:  endfinally
        }  // end handler
        IL_0160:  leave.s    IL_018a

      }  // end .try
      catch [System.Runtime]System.Exception 
      {
        IL_0162:  stloc.s    V_14
        IL_0164:  ldstr      "Error converting chunk file \"{0}\". Skipping chunk."
        + " Reason: {1}"
        IL_0169:  ldc.i4.2
        IL_016a:  newarr     [System.Runtime]System.Object
        IL_016f:  dup
        IL_0170:  ldc.i4.0
        IL_0171:  ldloc.s    V_8
        IL_0173:  stelem.ref
        IL_0174:  dup
        IL_0175:  ldc.i4.1
        IL_0176:  ldloc.s    V_14
        IL_0178:  callvirt   instance string [System.Runtime]System.Exception::get_Message()
        IL_017d:  stelem.ref
        IL_017e:  call       string [System.Runtime]System.String::Format(string,
                                                                          object[])
        IL_0183:  call       void [Engine]Engine.Log::Error(string)
        IL_0188:  leave.s    IL_018a

      }  // end handler
      IL_018a:  ldloc.s    V_7
      IL_018c:  ldc.i4.1
      IL_018d:  add
      IL_018e:  stloc.s    V_7
      IL_0190:  ldloc.s    V_7
      IL_0192:  ldloc.s    V_6
      IL_0194:  ldlen
      IL_0195:  conv.i4
      IL_0196:  blt        IL_006b

      IL_019b:  ldloc.3
      IL_019c:  callvirt   instance void [System.IO]System.IO.Stream::Flush()
      IL_01a1:  ldstr      "Converted {0} chunk(s)."
      IL_01a6:  ldc.i4.1
      IL_01a7:  newarr     [System.Runtime]System.Object
      IL_01ac:  dup
      IL_01ad:  ldc.i4.0
      IL_01ae:  ldloc.s    V_4
      IL_01b0:  box        [System.Runtime]System.Int32
      IL_01b5:  stelem.ref
      IL_01b6:  call       string [System.Runtime]System.String::Format(string,
                                                                        object[])
      IL_01bb:  call       void [Engine]Engine.Log::Information(string)
      IL_01c0:  leave.s    IL_01cc

    }  // end .try
    finally
    {
      IL_01c2:  ldloc.3
      IL_01c3:  brfalse.s  IL_01cb

      IL_01c5:  ldloc.3
      IL_01c6:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_01cb:  endfinally
    }  // end handler
    IL_01cc:  ldc.i4.2
    IL_01cd:  newarr     [System.Runtime]System.String
    IL_01d2:  dup
    IL_01d3:  ldc.i4.0
    IL_01d4:  ldarg.1
    IL_01d5:  stelem.ref
    IL_01d6:  dup
    IL_01d7:  ldc.i4.1
    IL_01d8:  ldstr      "Project.xml"
    IL_01dd:  stelem.ref
    IL_01de:  call       string [Engine]Engine.Storage::CombinePaths(string[])
    IL_01e3:  stloc.1
    IL_01e4:  ldloc.1
    IL_01e5:  ldc.i4.0
    IL_01e6:  call       class [System.IO]System.IO.Stream [Engine]Engine.Storage::OpenFile(string,
                                                                                            valuetype [Engine]Engine.OpenFileMode)
    IL_01eb:  stloc.s    V_15
    .try
    {
      IL_01ed:  ldloc.s    V_15
      IL_01ef:  ldnull
      IL_01f0:  ldc.i4.1
      IL_01f1:  call       class [System.Xml.XDocument]System.Xml.Linq.XElement [EntitySystem]XmlUtilities.XmlUtils::LoadXmlFromStream(class [System.IO]System.IO.Stream,
                                                                                                                                       class [System.Text.Encoding]System.Text.Encoding,
                                                                                                                                       bool)
      IL_01f6:  stloc.2
      IL_01f7:  leave.s    IL_0205

    }  // end .try
    finally
    {
      IL_01f9:  ldloc.s    V_15
      IL_01fb:  brfalse.s  IL_0204

      IL_01fd:  ldloc.s    V_15
      IL_01ff:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0204:  endfinally
    }  // end handler
    IL_0205:  ldarg.0
    IL_0206:  ldloc.2
    IL_0207:  callvirt   instance void Game.VersionConverter::ConvertProjectXml(class [System.Xml.XDocument]System.Xml.Linq.XElement)
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