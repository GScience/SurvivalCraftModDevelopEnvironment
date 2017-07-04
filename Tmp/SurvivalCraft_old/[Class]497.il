.class public auto ansi beforefieldinit Game.VersionConverter113To114
       extends Game.VersionConverter
{
  .method public hidebysig specialname virtual 
          instance string  get_SourceVersion() cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldstr      "1.13"
    IL_0005:  ret
  } // end of method VersionConverter113To114::get_SourceVersion

  .method public hidebysig specialname virtual 
          instance string  get_TargetVersion() cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldstr      "1.14"
    IL_0005:  ret
  } // end of method VersionConverter113To114::get_TargetVersion

  .method public hidebysig virtual instance void 
          ConvertProjectXml(class [System.Xml.XDocument]System.Xml.Linq.XElement projectNode) cil managed
  {
    // 代码大小       25 (0x19)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldstr      "Version"
    IL_0006:  ldarg.0
    IL_0007:  callvirt   instance string Game.VersionConverter::get_TargetVersion()
    IL_000c:  call       void [EntitySystem]XmlUtilities.XmlUtils::SetAttributeValue(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                     string,
                                                                                     object)
    IL_0011:  ldarg.0
    IL_0012:  ldarg.1
    IL_0013:  call       instance void Game.VersionConverter113To114::ProcessNode(class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_0018:  ret
  } // end of method VersionConverter113To114::ConvertProjectXml

  .method public hidebysig virtual instance void 
          ConvertWorld(string directoryName) cil managed
  {
    // 代码大小       90 (0x5a)
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
    IL_0035:  ldarg.0
    IL_0036:  ldloc.1
    IL_0037:  callvirt   instance void Game.VersionConverter::ConvertProjectXml(class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_003c:  ldloc.0
    IL_003d:  ldc.i4.2
    IL_003e:  call       class [System.IO]System.IO.Stream [Engine]Engine.Storage::OpenFile(string,
                                                                                            valuetype [Engine]Engine.OpenFileMode)
    IL_0043:  stloc.3
    .try
    {
      IL_0044:  ldloc.1
      IL_0045:  ldloc.3
      IL_0046:  ldnull
      IL_0047:  ldc.i4.1
      IL_0048:  call       void [EntitySystem]XmlUtilities.XmlUtils::SaveXmlToStream(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                     class [System.IO]System.IO.Stream,
                                                                                     class [System.Text.Encoding]System.Text.Encoding,
                                                                                     bool)
      IL_004d:  leave.s    IL_0059

    }  // end .try
    finally
    {
      IL_004f:  ldloc.3
      IL_0050:  brfalse.s  IL_0058

      IL_0052:  ldloc.3
      IL_0053:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0058:  endfinally
    }  // end handler
    IL_0059:  ret
  } // end of method VersionConverter113To114::ConvertWorld

  .method private hidebysig instance void 
          ProcessNode(class [System.Xml.XDocument]System.Xml.Linq.XElement node) cil managed
  {
    // 代码大小       97 (0x61)
    .maxstack  2
    .locals init (class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XAttribute> V_0,
             class [System.Xml.XDocument]System.Xml.Linq.XAttribute V_1,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> V_2,
             class [System.Xml.XDocument]System.Xml.Linq.XElement V_3)
    IL_0000:  ldarg.1
    IL_0001:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XAttribute> [System.Xml.XDocument]System.Xml.Linq.XElement::Attributes()
    IL_0006:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XAttribute>::GetEnumerator()
    IL_000b:  stloc.0
    .try
    {
      IL_000c:  br.s       IL_001c

      IL_000e:  ldloc.0
      IL_000f:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XAttribute>::get_Current()
      IL_0014:  stloc.1
      IL_0015:  ldarg.0
      IL_0016:  ldloc.1
      IL_0017:  call       instance void Game.VersionConverter113To114::ProcessAttribute(class [System.Xml.XDocument]System.Xml.Linq.XAttribute)
      IL_001c:  ldloc.0
      IL_001d:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_0022:  brtrue.s   IL_000e

      IL_0024:  leave.s    IL_0030

    }  // end .try
    finally
    {
      IL_0026:  ldloc.0
      IL_0027:  brfalse.s  IL_002f

      IL_0029:  ldloc.0
      IL_002a:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_002f:  endfinally
    }  // end handler
    IL_0030:  ldarg.1
    IL_0031:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Elements()
    IL_0036:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::GetEnumerator()
    IL_003b:  stloc.2
    .try
    {
      IL_003c:  br.s       IL_004c

      IL_003e:  ldloc.2
      IL_003f:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::get_Current()
      IL_0044:  stloc.3
      IL_0045:  ldarg.0
      IL_0046:  ldloc.3
      IL_0047:  call       instance void Game.VersionConverter113To114::ProcessNode(class [System.Xml.XDocument]System.Xml.Linq.XElement)
      IL_004c:  ldloc.2
      IL_004d:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_0052:  brtrue.s   IL_003e

      IL_0054:  leave.s    IL_0060

    }  // end .try
    finally
    {
      IL_0056:  ldloc.2
      IL_0057:  brfalse.s  IL_005f

      IL_0059:  ldloc.2
      IL_005a:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_005f:  endfinally
    }  // end handler
    IL_0060:  ret
  } // end of method VersionConverter113To114::ProcessNode

  .method private hidebysig instance void 
          ProcessAttribute(class [System.Xml.XDocument]System.Xml.Linq.XAttribute attribute) cil managed
  {
    // 代码大小       53 (0x35)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  callvirt   instance class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XAttribute::get_Name()
    IL_0006:  ldstr      "Value"
    IL_000b:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
    IL_0010:  call       bool [System.Xml.XDocument]System.Xml.Linq.XName::op_Equality(class [System.Xml.XDocument]System.Xml.Linq.XName,
                                                                                       class [System.Xml.XDocument]System.Xml.Linq.XName)
    IL_0015:  brfalse.s  IL_0034

    IL_0017:  ldarg.1
    IL_0018:  callvirt   instance string [System.Xml.XDocument]System.Xml.Linq.XAttribute::get_Value()
    IL_001d:  ldstr      "Dangerous"
    IL_0022:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                         string)
    IL_0027:  brfalse.s  IL_0034

    IL_0029:  ldarg.1
    IL_002a:  ldstr      "Normal"
    IL_002f:  callvirt   instance void [System.Xml.XDocument]System.Xml.Linq.XAttribute::set_Value(string)
    IL_0034:  ret
  } // end of method VersionConverter113To114::ProcessAttribute

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.VersionConverter::.ctor()
    IL_0006:  ret
  } // end of method VersionConverter113To114::.ctor

  .property instance string SourceVersion()
  {
    .get instance string Game.VersionConverter113To114::get_SourceVersion()
  } // end of property VersionConverter113To114::SourceVersion
  .property instance string TargetVersion()
  {
    .get instance string Game.VersionConverter113To114::get_TargetVersion()
  } // end of property VersionConverter113To114::TargetVersion
} // end of class Game.VersionConverter113To114