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
            '<ConvertWorld>b__4_0'(class [System.Xml.XDocument]System.Xml.Linq.XElement e) cil managed
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
    } // end of method '<>c'::'<ConvertWorld>b__4_0'

    .method assembly hidebysig instance bool 
            '<ConvertWorld>b__4_1'(class [System.Xml.XDocument]System.Xml.Linq.XElement e) cil managed
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
    } // end of method '<>c'::'<ConvertWorld>b__4_1'

    .method assembly hidebysig instance bool 
            '<ConvertWorld>b__4_2'(class [System.Xml.XDocument]System.Xml.Linq.XElement e) cil managed
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
    } // end of method '<>c'::'<ConvertWorld>b__4_2'

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
          ConvertWorld(string directoryName) cil managed
  {
    // 代码大小       494 (0x1ee)
    .maxstack  4
    .locals init (string V_0,
             class [System.Xml.XDocument]System.Xml.Linq.XElement V_1,
             class [System.IO]System.IO.Stream V_2,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> V_3,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> V_4,
             class [System.Xml.XDocument]System.Xml.Linq.XElement V_5,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> V_6,
             class [System.IO]System.IO.Stream V_7)
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
    IL_0046:  ldloc.1
    IL_0047:  ldstr      "Subsystems"
    IL_004c:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
    IL_0051:  callvirt   instance class [System.Xml.XDocument]System.Xml.Linq.XElement [System.Xml.XDocument]System.Xml.Linq.XContainer::Element(class [System.Xml.XDocument]System.Xml.Linq.XName)
    IL_0056:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Elements()
    IL_005b:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::GetEnumerator()
    IL_0060:  stloc.3
    .try
    {
      IL_0061:  br         IL_01b5

      IL_0066:  ldloc.3
      IL_0067:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::get_Current()
      IL_006c:  ldstr      "Values"
      IL_0071:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
      IL_0076:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Elements(class [System.Xml.XDocument]System.Xml.Linq.XName)
      IL_007b:  ldsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter121To122/'<>c'::'<>9__4_0'
      IL_0080:  dup
      IL_0081:  brtrue.s   IL_009a

      IL_0083:  pop
      IL_0084:  ldsfld     class Game.VersionConverter121To122/'<>c' Game.VersionConverter121To122/'<>c'::'<>9'
      IL_0089:  ldftn      instance bool Game.VersionConverter121To122/'<>c'::'<ConvertWorld>b__4_0'(class [System.Xml.XDocument]System.Xml.Linq.XElement)
      IL_008f:  newobj     instance void class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool>::.ctor(object,
                                                                                                                                               native int)
      IL_0094:  dup
      IL_0095:  stsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter121To122/'<>c'::'<>9__4_0'
      IL_009a:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<class [System.Xml.XDocument]System.Xml.Linq.XElement>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                                class [System.Runtime]System.Func`2<!!0,bool>)
      IL_009f:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::GetEnumerator()
      IL_00a4:  stloc.s    V_4
      .try
      {
        IL_00a6:  br         IL_019b

        IL_00ab:  ldloc.s    V_4
        IL_00ad:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::get_Current()
        IL_00b2:  stloc.s    V_5
        IL_00b4:  ldloc.s    V_5
        IL_00b6:  ldstr      "Name"
        IL_00bb:  ldstr      "Spawn"
        IL_00c0:  call       void [EntitySystem]XmlUtilities.XmlUtils::SetAttributeValue(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                         string,
                                                                                         object)
        IL_00c5:  ldloc.s    V_5
        IL_00c7:  ldstr      "Value"
        IL_00cc:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
        IL_00d1:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Elements(class [System.Xml.XDocument]System.Xml.Linq.XName)
        IL_00d6:  ldsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter121To122/'<>c'::'<>9__4_1'
        IL_00db:  dup
        IL_00dc:  brtrue.s   IL_00f5

        IL_00de:  pop
        IL_00df:  ldsfld     class Game.VersionConverter121To122/'<>c' Game.VersionConverter121To122/'<>c'::'<>9'
        IL_00e4:  ldftn      instance bool Game.VersionConverter121To122/'<>c'::'<ConvertWorld>b__4_1'(class [System.Xml.XDocument]System.Xml.Linq.XElement)
        IL_00ea:  newobj     instance void class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool>::.ctor(object,
                                                                                                                                                 native int)
        IL_00ef:  dup
        IL_00f0:  stsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter121To122/'<>c'::'<>9__4_1'
        IL_00f5:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<class [System.Xml.XDocument]System.Xml.Linq.XElement>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                                  class [System.Runtime]System.Func`2<!!0,bool>)
        IL_00fa:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::GetEnumerator()
        IL_00ff:  stloc.s    V_6
        .try
        {
          IL_0101:  br.s       IL_0119

          IL_0103:  ldloc.s    V_6
          IL_0105:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::get_Current()
          IL_010a:  ldstr      "Name"
          IL_010f:  ldstr      "SpawnsData"
          IL_0114:  call       void [EntitySystem]XmlUtilities.XmlUtils::SetAttributeValue(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                           string,
                                                                                           object)
          IL_0119:  ldloc.s    V_6
          IL_011b:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
          IL_0120:  brtrue.s   IL_0103

          IL_0122:  leave.s    IL_0130

        }  // end .try
        finally
        {
          IL_0124:  ldloc.s    V_6
          IL_0126:  brfalse.s  IL_012f

          IL_0128:  ldloc.s    V_6
          IL_012a:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
          IL_012f:  endfinally
        }  // end handler
        IL_0130:  ldloc.s    V_5
        IL_0132:  ldstr      "Value"
        IL_0137:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
        IL_013c:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Elements(class [System.Xml.XDocument]System.Xml.Linq.XName)
        IL_0141:  ldsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter121To122/'<>c'::'<>9__4_2'
        IL_0146:  dup
        IL_0147:  brtrue.s   IL_0160

        IL_0149:  pop
        IL_014a:  ldsfld     class Game.VersionConverter121To122/'<>c' Game.VersionConverter121To122/'<>c'::'<>9'
        IL_014f:  ldftn      instance bool Game.VersionConverter121To122/'<>c'::'<ConvertWorld>b__4_2'(class [System.Xml.XDocument]System.Xml.Linq.XElement)
        IL_0155:  newobj     instance void class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool>::.ctor(object,
                                                                                                                                                 native int)
        IL_015a:  dup
        IL_015b:  stsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter121To122/'<>c'::'<>9__4_2'
        IL_0160:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<class [System.Xml.XDocument]System.Xml.Linq.XElement>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                                  class [System.Runtime]System.Func`2<!!0,bool>)
        IL_0165:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::GetEnumerator()
        IL_016a:  stloc.s    V_6
        .try
        {
          IL_016c:  br.s       IL_0184

          IL_016e:  ldloc.s    V_6
          IL_0170:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::get_Current()
          IL_0175:  ldstr      "Name"
          IL_017a:  ldstr      "IsSpawned"
          IL_017f:  call       void [EntitySystem]XmlUtilities.XmlUtils::SetAttributeValue(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                           string,
                                                                                           object)
          IL_0184:  ldloc.s    V_6
          IL_0186:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
          IL_018b:  brtrue.s   IL_016e

          IL_018d:  leave.s    IL_019b

        }  // end .try
        finally
        {
          IL_018f:  ldloc.s    V_6
          IL_0191:  brfalse.s  IL_019a

          IL_0193:  ldloc.s    V_6
          IL_0195:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
          IL_019a:  endfinally
        }  // end handler
        IL_019b:  ldloc.s    V_4
        IL_019d:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
        IL_01a2:  brtrue     IL_00ab

        IL_01a7:  leave.s    IL_01b5

      }  // end .try
      finally
      {
        IL_01a9:  ldloc.s    V_4
        IL_01ab:  brfalse.s  IL_01b4

        IL_01ad:  ldloc.s    V_4
        IL_01af:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_01b4:  endfinally
      }  // end handler
      IL_01b5:  ldloc.3
      IL_01b6:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_01bb:  brtrue     IL_0066

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
    IL_01cc:  ldloc.0
    IL_01cd:  ldc.i4.2
    IL_01ce:  call       class [System.IO]System.IO.Stream [Engine]Engine.Storage::OpenFile(string,
                                                                                            valuetype [Engine]Engine.OpenFileMode)
    IL_01d3:  stloc.s    V_7
    .try
    {
      IL_01d5:  ldloc.1
      IL_01d6:  ldloc.s    V_7
      IL_01d8:  ldnull
      IL_01d9:  ldc.i4.1
      IL_01da:  call       void [EntitySystem]XmlUtilities.XmlUtils::SaveXmlToStream(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                     class [System.IO]System.IO.Stream,
                                                                                     class [System.Text.Encoding]System.Text.Encoding,
                                                                                     bool)
      IL_01df:  leave.s    IL_01ed

    }  // end .try
    finally
    {
      IL_01e1:  ldloc.s    V_7
      IL_01e3:  brfalse.s  IL_01ec

      IL_01e5:  ldloc.s    V_7
      IL_01e7:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_01ec:  endfinally
    }  // end handler
    IL_01ed:  ret
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