.class public auto ansi beforefieldinit Game.VersionConverter120To121
       extends Game.VersionConverter
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.VersionConverter120To121/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> '<>9__4_0'
    .field public static class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> '<>9__4_1'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.VersionConverter120To121/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.VersionConverter120To121/'<>c' Game.VersionConverter120To121/'<>c'::'<>9'
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
      // 代码大小       57 (0x39)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldstr      "Name"
      IL_0006:  ldsfld     string [System.Runtime]System.String::Empty
      IL_000b:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<string>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                              string,
                                                                                              !!0)
      IL_0010:  ldstr      "Body"
      IL_0015:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_001a:  brtrue.s   IL_0037

      IL_001c:  ldarg.1
      IL_001d:  ldstr      "Name"
      IL_0022:  ldsfld     string [System.Runtime]System.String::Empty
      IL_0027:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<string>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                              string,
                                                                                              !!0)
      IL_002c:  ldstr      "Frame"
      IL_0031:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_0036:  ret

      IL_0037:  ldc.i4.1
      IL_0038:  ret
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
      IL_0010:  ldstr      "LocalMatrix"
      IL_0015:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_001a:  ret
    } // end of method '<>c'::'<ConvertProjectXml>b__4_1'

  } // end of class '<>c'

  .method public hidebysig specialname virtual 
          instance string  get_SourceVersion() cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldstr      "1.20"
    IL_0005:  ret
  } // end of method VersionConverter120To121::get_SourceVersion

  .method public hidebysig specialname virtual 
          instance string  get_TargetVersion() cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldstr      "1.21"
    IL_0005:  ret
  } // end of method VersionConverter120To121::get_TargetVersion

  .method public hidebysig virtual instance void 
          ConvertProjectXml(class [System.Xml.XDocument]System.Xml.Linq.XElement projectNode) cil managed
  {
    // 代码大小       453 (0x1c5)
    .maxstack  5
    .locals init (class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> V_0,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> V_1,
             class [System.Xml.XDocument]System.Xml.Linq.XElement V_2,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> V_3,
             valuetype [Engine]Engine.Matrix V_4,
             valuetype [Engine]Engine.Vector3 V_5,
             valuetype [Engine]Engine.Vector3 V_6,
             valuetype [Engine]Engine.Quaternion V_7,
             class [System.Xml.XDocument]System.Xml.Linq.XElement V_8,
             class [System.Xml.XDocument]System.Xml.Linq.XElement V_9)
    IL_0000:  ldarg.1
    IL_0001:  ldstr      "Version"
    IL_0006:  ldarg.0
    IL_0007:  callvirt   instance string Game.VersionConverter::get_TargetVersion()
    IL_000c:  call       void [EntitySystem]XmlUtilities.XmlUtils::SetAttributeValue(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                     string,
                                                                                     object)
    IL_0011:  ldarg.1
    IL_0012:  ldstr      "Entities"
    IL_0017:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
    IL_001c:  callvirt   instance class [System.Xml.XDocument]System.Xml.Linq.XElement [System.Xml.XDocument]System.Xml.Linq.XContainer::Element(class [System.Xml.XDocument]System.Xml.Linq.XName)
    IL_0021:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Elements()
    IL_0026:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::GetEnumerator()
    IL_002b:  stloc.0
    .try
    {
      IL_002c:  br         IL_01ad

      IL_0031:  ldloc.0
      IL_0032:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::get_Current()
      IL_0037:  ldstr      "Values"
      IL_003c:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
      IL_0041:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Elements(class [System.Xml.XDocument]System.Xml.Linq.XName)
      IL_0046:  ldsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter120To121/'<>c'::'<>9__4_0'
      IL_004b:  dup
      IL_004c:  brtrue.s   IL_0065

      IL_004e:  pop
      IL_004f:  ldsfld     class Game.VersionConverter120To121/'<>c' Game.VersionConverter120To121/'<>c'::'<>9'
      IL_0054:  ldftn      instance bool Game.VersionConverter120To121/'<>c'::'<ConvertProjectXml>b__4_0'(class [System.Xml.XDocument]System.Xml.Linq.XElement)
      IL_005a:  newobj     instance void class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool>::.ctor(object,
                                                                                                                                               native int)
      IL_005f:  dup
      IL_0060:  stsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter120To121/'<>c'::'<>9__4_0'
      IL_0065:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<class [System.Xml.XDocument]System.Xml.Linq.XElement>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                                class [System.Runtime]System.Func`2<!!0,bool>)
      IL_006a:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::GetEnumerator()
      IL_006f:  stloc.1
      .try
      {
        IL_0070:  br         IL_0196

        IL_0075:  ldloc.1
        IL_0076:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::get_Current()
        IL_007b:  stloc.2
        IL_007c:  ldloc.2
        IL_007d:  ldstr      "Value"
        IL_0082:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
        IL_0087:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Elements(class [System.Xml.XDocument]System.Xml.Linq.XName)
        IL_008c:  ldsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter120To121/'<>c'::'<>9__4_1'
        IL_0091:  dup
        IL_0092:  brtrue.s   IL_00ab

        IL_0094:  pop
        IL_0095:  ldsfld     class Game.VersionConverter120To121/'<>c' Game.VersionConverter120To121/'<>c'::'<>9'
        IL_009a:  ldftn      instance bool Game.VersionConverter120To121/'<>c'::'<ConvertProjectXml>b__4_1'(class [System.Xml.XDocument]System.Xml.Linq.XElement)
        IL_00a0:  newobj     instance void class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool>::.ctor(object,
                                                                                                                                                 native int)
        IL_00a5:  dup
        IL_00a6:  stsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter120To121/'<>c'::'<>9__4_1'
        IL_00ab:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<class [System.Xml.XDocument]System.Xml.Linq.XElement>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                                  class [System.Runtime]System.Func`2<!!0,bool>)
        IL_00b0:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::GetEnumerator()
        IL_00b5:  stloc.3
        .try
        {
          IL_00b6:  br         IL_017f

          IL_00bb:  ldloc.3
          IL_00bc:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::get_Current()
          IL_00c1:  dup
          IL_00c2:  ldstr      "Value"
          IL_00c7:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<valuetype [Engine]Engine.Matrix>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                                                           string)
          IL_00cc:  stloc.s    V_4
          IL_00ce:  ldloca.s   V_4
          IL_00d0:  ldloca.s   V_5
          IL_00d2:  ldloca.s   V_7
          IL_00d4:  ldloca.s   V_6
          IL_00d6:  call       instance bool [Engine]Engine.Matrix::Decompose(valuetype [Engine]Engine.Vector3&,
                                                                              valuetype [Engine]Engine.Quaternion&,
                                                                              valuetype [Engine]Engine.Vector3&)
          IL_00db:  pop
          IL_00dc:  ldstr      "Value"
          IL_00e1:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
          IL_00e6:  newobj     instance void [System.Xml.XDocument]System.Xml.Linq.XElement::.ctor(class [System.Xml.XDocument]System.Xml.Linq.XName)
          IL_00eb:  stloc.s    V_8
          IL_00ed:  ldstr      "Value"
          IL_00f2:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
          IL_00f7:  newobj     instance void [System.Xml.XDocument]System.Xml.Linq.XElement::.ctor(class [System.Xml.XDocument]System.Xml.Linq.XName)
          IL_00fc:  stloc.s    V_9
          IL_00fe:  ldloc.s    V_8
          IL_0100:  ldstr      "Name"
          IL_0105:  ldstr      "Position"
          IL_010a:  call       void [EntitySystem]XmlUtilities.XmlUtils::SetAttributeValue(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                           string,
                                                                                           object)
          IL_010f:  ldloc.s    V_8
          IL_0111:  ldstr      "Type"
          IL_0116:  ldstr      "Microsoft.Xna.Framework.Vector3"
          IL_011b:  call       void [EntitySystem]XmlUtilities.XmlUtils::SetAttributeValue(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                           string,
                                                                                           object)
          IL_0120:  ldloc.s    V_8
          IL_0122:  ldstr      "Value"
          IL_0127:  ldloc.s    V_6
          IL_0129:  box        [Engine]Engine.Vector3
          IL_012e:  call       void [EntitySystem]XmlUtilities.XmlUtils::SetAttributeValue(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                           string,
                                                                                           object)
          IL_0133:  ldloc.s    V_9
          IL_0135:  ldstr      "Name"
          IL_013a:  ldstr      "Rotation"
          IL_013f:  call       void [EntitySystem]XmlUtilities.XmlUtils::SetAttributeValue(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                           string,
                                                                                           object)
          IL_0144:  ldloc.s    V_9
          IL_0146:  ldstr      "Type"
          IL_014b:  ldstr      "Microsoft.Xna.Framework.Quaternion"
          IL_0150:  call       void [EntitySystem]XmlUtilities.XmlUtils::SetAttributeValue(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                           string,
                                                                                           object)
          IL_0155:  ldloc.s    V_9
          IL_0157:  ldstr      "Value"
          IL_015c:  ldloc.s    V_7
          IL_015e:  box        [Engine]Engine.Quaternion
          IL_0163:  call       void [EntitySystem]XmlUtilities.XmlUtils::SetAttributeValue(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                           string,
                                                                                           object)
          IL_0168:  ldloc.2
          IL_0169:  ldloc.s    V_8
          IL_016b:  callvirt   instance void [System.Xml.XDocument]System.Xml.Linq.XContainer::Add(object)
          IL_0170:  ldloc.2
          IL_0171:  ldloc.s    V_9
          IL_0173:  callvirt   instance void [System.Xml.XDocument]System.Xml.Linq.XContainer::Add(object)
          IL_0178:  callvirt   instance void [System.Xml.XDocument]System.Xml.Linq.XNode::Remove()
          IL_017d:  leave.s    IL_0196

          IL_017f:  ldloc.3
          IL_0180:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
          IL_0185:  brtrue     IL_00bb

          IL_018a:  leave.s    IL_0196

        }  // end .try
        finally
        {
          IL_018c:  ldloc.3
          IL_018d:  brfalse.s  IL_0195

          IL_018f:  ldloc.3
          IL_0190:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
          IL_0195:  endfinally
        }  // end handler
        IL_0196:  ldloc.1
        IL_0197:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
        IL_019c:  brtrue     IL_0075

        IL_01a1:  leave.s    IL_01ad

      }  // end .try
      finally
      {
        IL_01a3:  ldloc.1
        IL_01a4:  brfalse.s  IL_01ac

        IL_01a6:  ldloc.1
        IL_01a7:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_01ac:  endfinally
      }  // end handler
      IL_01ad:  ldloc.0
      IL_01ae:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_01b3:  brtrue     IL_0031

      IL_01b8:  leave.s    IL_01c4

    }  // end .try
    finally
    {
      IL_01ba:  ldloc.0
      IL_01bb:  brfalse.s  IL_01c3

      IL_01bd:  ldloc.0
      IL_01be:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_01c3:  endfinally
    }  // end handler
    IL_01c4:  ret
  } // end of method VersionConverter120To121::ConvertProjectXml

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
  } // end of method VersionConverter120To121::ConvertWorld

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.VersionConverter::.ctor()
    IL_0006:  ret
  } // end of method VersionConverter120To121::.ctor

  .property instance string SourceVersion()
  {
    .get instance string Game.VersionConverter120To121::get_SourceVersion()
  } // end of property VersionConverter120To121::SourceVersion
  .property instance string TargetVersion()
  {
    .get instance string Game.VersionConverter120To121::get_TargetVersion()
  } // end of property VersionConverter120To121::TargetVersion
} // end of class Game.VersionConverter120To121