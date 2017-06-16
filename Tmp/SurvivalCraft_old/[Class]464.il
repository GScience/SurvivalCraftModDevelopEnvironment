.class public auto ansi beforefieldinit Game.VersionConverter111To112
       extends Game.VersionConverter
{
  .method public hidebysig specialname virtual 
          instance string  get_SourceVersion() cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldstr      "1.11"
    IL_0005:  ret
  } // end of method VersionConverter111To112::get_SourceVersion

  .method public hidebysig specialname virtual 
          instance string  get_TargetVersion() cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldstr      "1.12"
    IL_0005:  ret
  } // end of method VersionConverter111To112::get_TargetVersion

  .method public hidebysig virtual instance void 
          ConvertWorld(string directoryName) cil managed
  {
    // 代码大小       100 (0x64)
    .maxstack  4
    .locals init (string V_0,
             class [System.Xml.XDocument]System.Xml.Linq.XElement V_1,
             class [System.IO]System.IO.Stream V_2,
             class [System.IO]System.IO.Stream V_3)
    IL_0000:  ldc.i4.2
    IL_0001:  newarr     [System.Runtime]System.String
    IL_0006:  dup
    IL_0007:  ldc.i4.0
    IL_0008:  ldarg.1
    IL_0009:  stelem.ref
    IL_000a:  dup
    IL_000b:  ldc.i4.1
    IL_000c:  ldstr      "Project.xml"
    IL_0011:  stelem.ref
    IL_0012:  call       string [Engine]Engine.Storage::CombinePaths(string[])
    IL_0017:  stloc.0
    IL_0018:  ldloc.0
    IL_0019:  ldc.i4.0
    IL_001a:  call       class [System.IO]System.IO.Stream [Engine]Engine.Storage::OpenFile(string,
                                                                                            valuetype [Engine]Engine.OpenFileMode)
    IL_001f:  stloc.2
    .try
    {
      IL_0020:  ldloc.2
      IL_0021:  ldnull
      IL_0022:  ldc.i4.1
      IL_0023:  call       class [System.Xml.XDocument]System.Xml.Linq.XElement [EntitySystem]XmlUtilities.XmlUtils::LoadXmlFromStream(class [System.IO]System.IO.Stream,
                                                                                                                                       class [System.Text.Encoding]System.Text.Encoding,
                                                                                                                                       bool)
      IL_0028:  stloc.1
      IL_0029:  leave.s    IL_0035

    }  // end .try
    finally
    {
      IL_002b:  ldloc.2
      IL_002c:  brfalse.s  IL_0034

      IL_002e:  ldloc.2
      IL_002f:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0034:  endfinally
    }  // end handler
    IL_0035:  ldloc.1
    IL_0036:  ldstr      "Version"
    IL_003b:  ldarg.0
    IL_003c:  callvirt   instance string Game.VersionConverter::get_TargetVersion()
    IL_0041:  call       void [EntitySystem]XmlUtilities.XmlUtils::SetAttributeValue(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                     string,
                                                                                     object)
    IL_0046:  ldloc.0
    IL_0047:  ldc.i4.2
    IL_0048:  call       class [System.IO]System.IO.Stream [Engine]Engine.Storage::OpenFile(string,
                                                                                            valuetype [Engine]Engine.OpenFileMode)
    IL_004d:  stloc.3
    .try
    {
      IL_004e:  ldloc.1
      IL_004f:  ldloc.3
      IL_0050:  ldnull
      IL_0051:  ldc.i4.1
      IL_0052:  call       void [EntitySystem]XmlUtilities.XmlUtils::SaveXmlToStream(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                     class [System.IO]System.IO.Stream,
                                                                                     class [System.Text.Encoding]System.Text.Encoding,
                                                                                     bool)
      IL_0057:  leave.s    IL_0063

    }  // end .try
    finally
    {
      IL_0059:  ldloc.3
      IL_005a:  brfalse.s  IL_0062

      IL_005c:  ldloc.3
      IL_005d:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0062:  endfinally
    }  // end handler
    IL_0063:  ret
  } // end of method VersionConverter111To112::ConvertWorld

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.VersionConverter::.ctor()
    IL_0006:  ret
  } // end of method VersionConverter111To112::.ctor

  .property instance string SourceVersion()
  {
    .get instance string Game.VersionConverter111To112::get_SourceVersion()
  } // end of property VersionConverter111To112::SourceVersion
  .property instance string TargetVersion()
  {
    .get instance string Game.VersionConverter111To112::get_TargetVersion()
  } // end of property VersionConverter111To112::TargetVersion
} // end of class Game.VersionConverter111To112