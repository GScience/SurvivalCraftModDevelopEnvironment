.class public auto ansi beforefieldinit Game.VersionConverter121To122
       extends Game.VersionConverter
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.VersionConverter121To122/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> '<>9__4_0'
    .field public static class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> '<>9__4_1'
    .field public static class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> '<>9__4_2'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.VersionConverter121To122/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.VersionConverter121To122/'<>c' Game.VersionConverter121To122/'<>c'::'<>9'
      IL_000a:  ret
    } // end of method '<>c'::.cctor

    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c'::.ctor

    .method assembly hidebysig instance bool 
            '<ConvertProjectXml>b__4_0'(class [System.Xml.XDocument]System.Xml.Linq.XElement e) cil managed
    {
      // 代码大小       27 (0x1b)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldstr      "Name"
      IL_0006:  ldsfld     string [System.Runtime]System.String::Empty
      IL_000b:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<string>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                              string,
                                                                                              !!0)
      IL_0010:  ldstr      "CreatureSpawn"
      IL_0015:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_001a:  ret
    } // end of method '<>c'::'<ConvertProjectXml>b__4_0'

    .method assembly hidebysig instance bool 
            '<ConvertProjectXml>b__4_1'(class [System.Xml.XDocument]System.Xml.Linq.XElement e) cil managed
    {
      // 代码大小       27 (0x1b)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldstr      "Name"
      IL_0006:  ldsfld     string [System.Runtime]System.String::Empty
      IL_000b:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<string>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                              string,
                                                                                              !!0)
      IL_0010:  ldstr      "CreaturesData"
      IL_0015:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_001a:  ret
    } // end of method '<>c'::'<ConvertProjectXml>b__4_1'

    .method assembly hidebysig instance bool 
            '<ConvertProjectXml>b__4_2'(class [System.Xml.XDocument]System.Xml.Linq.XElement e) cil managed
    {
      // 代码大小       27 (0x1b)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldstr      "Name"
      IL_0006:  ldsfld     string [System.Runtime]System.String::Empty
      IL_000b:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<string>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                              string,
                                                                                              !!0)
      IL_0010:  ldstr      "CreaturesGenerated"
      IL_0015:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_001a:  ret
    } // end of method '<>c'::'<ConvertProjectXml>b__4_2'

  } // end of class '<>c'

  .method public hidebysig specialname virtual 
          instance string  get_SourceVersion() cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldstr      "1.21"
    IL_0005:  ret
  } // end of method VersionConverter121To122::get_SourceVersion

  .method public hidebysig specialname virtual 
          instance string  get_TargetVersion() cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldstr      "1.22"
    IL_0005:  ret
  } // end of method VersionConverter121To122::get_TargetVersion

  .method public hidebysig virtual instance void 
          ConvertProjectXml(class [System.Xml.XDocument]System.Xml.Linq.XElement projectNode) cil managed
  {
    // 代码大小       389 (0x185)
    .maxstack  3
    .locals init (class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> V_0,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> V_1,
             class [System.Xml.XDocument]System.Xml.Linq.XElement V_2,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> V_3)
    IL_0000:  ldarg.1
    IL_0001:  ldstr      "Version"
    IL_0006:  ldarg.0
    IL_0007:  callvirt   instance string Game.VersionConverter::get_TargetVersion()
    IL_000c:  call       void [EntitySystem]XmlUtilities.XmlUtils::SetAttributeValue(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                     string,
                                                                                     object)
    IL_0011:  ldarg.1
    IL_0012:  ldstr      "Subsystems"
    IL_0017:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
    IL_001c:  callvirt   instance class [System.Xml.XDocument]System.Xml.Linq.XElement [System.Xml.XDocument]System.Xml.Linq.XContainer::Element(class [System.Xml.XDocument]System.Xml.Linq.XName)
    IL_0021:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Elements()
    IL_0026:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::GetEnumerator()
    IL_002b:  stloc.0
    .try
    {
      IL_002c:  br         IL_016d

      IL_0031:  ldloc.0
      IL_0032:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::get_Current()
      IL_0037:  ldstr      "Values"
      IL_003c:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
      IL_0041:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Elements(class [System.Xml.XDocument]System.Xml.Linq.XName)
      IL_0046:  ldsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter121To122/'<>c'::'<>9__4_0'
      IL_004b:  dup
      IL_004c:  brtrue.s   IL_0065

      IL_004e:  pop
      IL_004f:  ldsfld     class Game.VersionConverter121To122/'<>c' Game.VersionConverter121To122/'<>c'::'<>9'
      IL_0054:  ldftn      instance bool Game.VersionConverter121To122/'<>c'::'<ConvertProjectXml>b__4_0'(class [System.Xml.XDocument]System.Xml.Linq.XElement)
      IL_005a:  newobj     instance void class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool>::.ctor(object,
                                                                                                                                               native int)
      IL_005f:  dup
      IL_0060:  stsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter121To122/'<>c'::'<>9__4_0'
      IL_0065:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<class [System.Xml.XDocument]System.Xml.Linq.XElement>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                                class [System.Runtime]System.Func`2<!!0,bool>)
      IL_006a:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::GetEnumerator()
      IL_006f:  stloc.1
      .try
      {
        IL_0070:  br         IL_0156

        IL_0075:  ldloc.1
        IL_0076:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::get_Current()
        IL_007b:  stloc.2
        IL_007c:  ldloc.2
        IL_007d:  ldstr      "Name"
        IL_0082:  ldstr      "Spawn"
        IL_0087:  call       void [EntitySystem]XmlUtilities.XmlUtils::SetAttributeValue(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                         string,
                                                                                         object)
        IL_008c:  ldloc.2
        IL_008d:  ldstr      "Value"
        IL_0092:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
        IL_0097:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Elements(class [System.Xml.XDocument]System.Xml.Linq.XName)
        IL_009c:  ldsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter121To122/'<>c'::'<>9__4_1'
        IL_00a1:  dup
        IL_00a2:  brtrue.s   IL_00bb

        IL_00a4:  pop
        IL_00a5:  ldsfld     class Game.VersionConverter121To122/'<>c' Game.VersionConverter121To122/'<>c'::'<>9'
        IL_00aa:  ldftn      instance bool Game.VersionConverter121To122/'<>c'::'<ConvertProjectXml>b__4_1'(class [System.Xml.XDocument]System.Xml.Linq.XElement)
        IL_00b0:  newobj     instance void class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool>::.ctor(object,
                                                                                                                                                 native int)
        IL_00b5:  dup
        IL_00b6:  stsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter121To122/'<>c'::'<>9__4_1'
        IL_00bb:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<class [System.Xml.XDocument]System.Xml.Linq.XElement>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                                  class [System.Runtime]System.Func`2<!!0,bool>)
        IL_00c0:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::GetEnumerator()
        IL_00c5:  stloc.3
        .try
        {
          IL_00c6:  br.s       IL_00dd

          IL_00c8:  ldloc.3
          IL_00c9:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::get_Current()
          IL_00ce:  ldstr      "Name"
          IL_00d3:  ldstr      "SpawnsData"
          IL_00d8:  call       void [EntitySystem]XmlUtilities.XmlUtils::SetAttributeValue(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                           string,
                                                                                           object)
          IL_00dd:  ldloc.3
          IL_00de:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
          IL_00e3:  brtrue.s   IL_00c8

          IL_00e5:  leave.s    IL_00f1

        }  // end .try
        finally
        {
          IL_00e7:  ldloc.3
          IL_00e8:  brfalse.s  IL_00f0

          IL_00ea:  ldloc.3
          IL_00eb:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
          IL_00f0:  endfinally
        }  // end handler
        IL_00f1:  ldloc.2
        IL_00f2:  ldstr      "Value"
        IL_00f7:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
        IL_00fc:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Elements(class [System.Xml.XDocument]System.Xml.Linq.XName)
        IL_0101:  ldsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter121To122/'<>c'::'<>9__4_2'
        IL_0106:  dup
        IL_0107:  brtrue.s   IL_0120

        IL_0109:  pop
        IL_010a:  ldsfld     class Game.VersionConverter121To122/'<>c' Game.VersionConverter121To122/'<>c'::'<>9'
        IL_010f:  ldftn      instance bool Game.VersionConverter121To122/'<>c'::'<ConvertProjectXml>b__4_2'(class [System.Xml.XDocument]System.Xml.Linq.XElement)
        IL_0115:  newobj     instance void class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool>::.ctor(object,
                                                                                                                                                 native int)
        IL_011a:  dup
        IL_011b:  stsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter121To122/'<>c'::'<>9__4_2'
        IL_0120:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<class [System.Xml.XDocument]System.Xml.Linq.XElement>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                                  class [System.Runtime]System.Func`2<!!0,bool>)
        IL_0125:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::GetEnumerator()
        IL_012a:  stloc.3
        .try
        {
          IL_012b:  br.s       IL_0142

          IL_012d:  ldloc.3
          IL_012e:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::get_Current()
          IL_0133:  ldstr      "Name"
          IL_0138:  ldstr      "IsSpawned"
          IL_013d:  call       void [EntitySystem]XmlUtilities.XmlUtils::SetAttributeValue(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                           string,
                                                                                           object)
          IL_0142:  ldloc.3
          IL_0143:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
          IL_0148:  brtrue.s   IL_012d

          IL_014a:  leave.s    IL_0156

        }  // end .try
        finally
        {
          IL_014c:  ldloc.3
          IL_014d:  brfalse.s  IL_0155

          IL_014f:  ldloc.3
          IL_0150:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
          IL_0155:  endfinally
        }  // end handler
        IL_0156:  ldloc.1
        IL_0157:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
        IL_015c:  brtrue     IL_0075

        IL_0161:  leave.s    IL_016d

      }  // end .try
      finally
      {
        IL_0163:  ldloc.1
        IL_0164:  brfalse.s  IL_016c

        IL_0166:  ldloc.1
        IL_0167:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_016c:  endfinally
      }  // end handler
      IL_016d:  ldloc.0
      IL_016e:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_0173:  brtrue     IL_0031

      IL_0178:  leave.s    IL_0184

    }  // end .try
    finally
    {
      IL_017a:  ldloc.0
      IL_017b:  brfalse.s  IL_0183

      IL_017d:  ldloc.0
      IL_017e:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0183:  endfinally
    }  // end handler
    IL_0184:  ret
  } // end of method VersionConverter121To122::ConvertProjectXml

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
  } // end of method VersionConverter121To122::ConvertWorld

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.VersionConverter::.ctor()
    IL_0006:  ret
  } // end of method VersionConverter121To122::.ctor

  .property instance string SourceVersion()
  {
    .get instance string Game.VersionConverter121To122::get_SourceVersion()
  } // end of property VersionConverter121To122::SourceVersion
  .property instance string TargetVersion()
  {
    .get instance string Game.VersionConverter121To122::get_TargetVersion()
  } // end of property VersionConverter121To122::TargetVersion
} // end of class Game.VersionConverter121To122