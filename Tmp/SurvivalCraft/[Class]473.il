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
            '<ConvertWorld>b__4_0'(class [System.Xml.XDocument]System.Xml.Linq.XElement e) cil managed
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
      IL_0010:  ldstr      "LocalMatrix"
      IL_0015:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_001a:  ret
    } // end of method '<>c'::'<ConvertWorld>b__4_1'

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
          ConvertWorld(string directoryName) cil managed
  {
    // 代码大小       553 (0x229)
    .maxstack  5
    .locals init (string V_0,
             class [System.Xml.XDocument]System.Xml.Linq.XElement V_1,
             class [System.IO]System.IO.Stream V_2,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> V_3,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> V_4,
             class [System.Xml.XDocument]System.Xml.Linq.XElement V_5,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> V_6,
             valuetype [Engine]Engine.Matrix V_7,
             valuetype [Engine]Engine.Vector3 V_8,
             valuetype [Engine]Engine.Vector3 V_9,
             valuetype [Engine]Engine.Quaternion V_10,
             class [System.Xml.XDocument]System.Xml.Linq.XElement V_11,
             class [System.Xml.XDocument]System.Xml.Linq.XElement V_12,
             class [System.IO]System.IO.Stream V_13)
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
    IL_0047:  ldstr      "Entities"
    IL_004c:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
    IL_0051:  callvirt   instance class [System.Xml.XDocument]System.Xml.Linq.XElement [System.Xml.XDocument]System.Xml.Linq.XContainer::Element(class [System.Xml.XDocument]System.Xml.Linq.XName)
    IL_0056:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Elements()
    IL_005b:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::GetEnumerator()
    IL_0060:  stloc.3
    .try
    {
      IL_0061:  br         IL_01f0

      IL_0066:  ldloc.3
      IL_0067:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::get_Current()
      IL_006c:  ldstr      "Values"
      IL_0071:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
      IL_0076:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Elements(class [System.Xml.XDocument]System.Xml.Linq.XName)
      IL_007b:  ldsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter120To121/'<>c'::'<>9__4_0'
      IL_0080:  dup
      IL_0081:  brtrue.s   IL_009a

      IL_0083:  pop
      IL_0084:  ldsfld     class Game.VersionConverter120To121/'<>c' Game.VersionConverter120To121/'<>c'::'<>9'
      IL_0089:  ldftn      instance bool Game.VersionConverter120To121/'<>c'::'<ConvertWorld>b__4_0'(class [System.Xml.XDocument]System.Xml.Linq.XElement)
      IL_008f:  newobj     instance void class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool>::.ctor(object,
                                                                                                                                               native int)
      IL_0094:  dup
      IL_0095:  stsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter120To121/'<>c'::'<>9__4_0'
      IL_009a:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<class [System.Xml.XDocument]System.Xml.Linq.XElement>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                                class [System.Runtime]System.Func`2<!!0,bool>)
      IL_009f:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::GetEnumerator()
      IL_00a4:  stloc.s    V_4
      .try
      {
        IL_00a6:  br         IL_01d6

        IL_00ab:  ldloc.s    V_4
        IL_00ad:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::get_Current()
        IL_00b2:  stloc.s    V_5
        IL_00b4:  ldloc.s    V_5
        IL_00b6:  ldstr      "Value"
        IL_00bb:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
        IL_00c0:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Elements(class [System.Xml.XDocument]System.Xml.Linq.XName)
        IL_00c5:  ldsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter120To121/'<>c'::'<>9__4_1'
        IL_00ca:  dup
        IL_00cb:  brtrue.s   IL_00e4

        IL_00cd:  pop
        IL_00ce:  ldsfld     class Game.VersionConverter120To121/'<>c' Game.VersionConverter120To121/'<>c'::'<>9'
        IL_00d3:  ldftn      instance bool Game.VersionConverter120To121/'<>c'::'<ConvertWorld>b__4_1'(class [System.Xml.XDocument]System.Xml.Linq.XElement)
        IL_00d9:  newobj     instance void class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool>::.ctor(object,
                                                                                                                                                 native int)
        IL_00de:  dup
        IL_00df:  stsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter120To121/'<>c'::'<>9__4_1'
        IL_00e4:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<class [System.Xml.XDocument]System.Xml.Linq.XElement>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                                  class [System.Runtime]System.Func`2<!!0,bool>)
        IL_00e9:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::GetEnumerator()
        IL_00ee:  stloc.s    V_6
        .try
        {
          IL_00f0:  br         IL_01bc

          IL_00f5:  ldloc.s    V_6
          IL_00f7:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::get_Current()
          IL_00fc:  dup
          IL_00fd:  ldstr      "Value"
          IL_0102:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<valuetype [Engine]Engine.Matrix>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                                                           string)
          IL_0107:  stloc.s    V_7
          IL_0109:  ldloca.s   V_7
          IL_010b:  ldloca.s   V_8
          IL_010d:  ldloca.s   V_10
          IL_010f:  ldloca.s   V_9
          IL_0111:  call       instance bool [Engine]Engine.Matrix::Decompose(valuetype [Engine]Engine.Vector3&,
                                                                              valuetype [Engine]Engine.Quaternion&,
                                                                              valuetype [Engine]Engine.Vector3&)
          IL_0116:  pop
          IL_0117:  ldstr      "Value"
          IL_011c:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
          IL_0121:  newobj     instance void [System.Xml.XDocument]System.Xml.Linq.XElement::.ctor(class [System.Xml.XDocument]System.Xml.Linq.XName)
          IL_0126:  stloc.s    V_11
          IL_0128:  ldstr      "Value"
          IL_012d:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
          IL_0132:  newobj     instance void [System.Xml.XDocument]System.Xml.Linq.XElement::.ctor(class [System.Xml.XDocument]System.Xml.Linq.XName)
          IL_0137:  stloc.s    V_12
          IL_0139:  ldloc.s    V_11
          IL_013b:  ldstr      "Name"
          IL_0140:  ldstr      "Position"
          IL_0145:  call       void [EntitySystem]XmlUtilities.XmlUtils::SetAttributeValue(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                           string,
                                                                                           object)
          IL_014a:  ldloc.s    V_11
          IL_014c:  ldstr      "Type"
          IL_0151:  ldstr      "Microsoft.Xna.Framework.Vector3"
          IL_0156:  call       void [EntitySystem]XmlUtilities.XmlUtils::SetAttributeValue(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                           string,
                                                                                           object)
          IL_015b:  ldloc.s    V_11
          IL_015d:  ldstr      "Value"
          IL_0162:  ldloc.s    V_9
          IL_0164:  box        [Engine]Engine.Vector3
          IL_0169:  call       void [EntitySystem]XmlUtilities.XmlUtils::SetAttributeValue(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                           string,
                                                                                           object)
          IL_016e:  ldloc.s    V_12
          IL_0170:  ldstr      "Name"
          IL_0175:  ldstr      "Rotation"
          IL_017a:  call       void [EntitySystem]XmlUtilities.XmlUtils::SetAttributeValue(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                           string,
                                                                                           object)
          IL_017f:  ldloc.s    V_12
          IL_0181:  ldstr      "Type"
          IL_0186:  ldstr      "Microsoft.Xna.Framework.Quaternion"
          IL_018b:  call       void [EntitySystem]XmlUtilities.XmlUtils::SetAttributeValue(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                           string,
                                                                                           object)
          IL_0190:  ldloc.s    V_12
          IL_0192:  ldstr      "Value"
          IL_0197:  ldloc.s    V_10
          IL_0199:  box        [Engine]Engine.Quaternion
          IL_019e:  call       void [EntitySystem]XmlUtilities.XmlUtils::SetAttributeValue(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                           string,
                                                                                           object)
          IL_01a3:  ldloc.s    V_5
          IL_01a5:  ldloc.s    V_11
          IL_01a7:  callvirt   instance void [System.Xml.XDocument]System.Xml.Linq.XContainer::Add(object)
          IL_01ac:  ldloc.s    V_5
          IL_01ae:  ldloc.s    V_12
          IL_01b0:  callvirt   instance void [System.Xml.XDocument]System.Xml.Linq.XContainer::Add(object)
          IL_01b5:  callvirt   instance void [System.Xml.XDocument]System.Xml.Linq.XNode::Remove()
          IL_01ba:  leave.s    IL_01d6

          IL_01bc:  ldloc.s    V_6
          IL_01be:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
          IL_01c3:  brtrue     IL_00f5

          IL_01c8:  leave.s    IL_01d6

        }  // end .try
        finally
        {
          IL_01ca:  ldloc.s    V_6
          IL_01cc:  brfalse.s  IL_01d5

          IL_01ce:  ldloc.s    V_6
          IL_01d0:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
          IL_01d5:  endfinally
        }  // end handler
        IL_01d6:  ldloc.s    V_4
        IL_01d8:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
        IL_01dd:  brtrue     IL_00ab

        IL_01e2:  leave.s    IL_01f0

      }  // end .try
      finally
      {
        IL_01e4:  ldloc.s    V_4
        IL_01e6:  brfalse.s  IL_01ef

        IL_01e8:  ldloc.s    V_4
        IL_01ea:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_01ef:  endfinally
      }  // end handler
      IL_01f0:  ldloc.3
      IL_01f1:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_01f6:  brtrue     IL_0066

      IL_01fb:  leave.s    IL_0207

    }  // end .try
    finally
    {
      IL_01fd:  ldloc.3
      IL_01fe:  brfalse.s  IL_0206

      IL_0200:  ldloc.3
      IL_0201:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0206:  endfinally
    }  // end handler
    IL_0207:  ldloc.0
    IL_0208:  ldc.i4.2
    IL_0209:  call       class [System.IO]System.IO.Stream [Engine]Engine.Storage::OpenFile(string,
                                                                                            valuetype [Engine]Engine.OpenFileMode)
    IL_020e:  stloc.s    V_13
    .try
    {
      IL_0210:  ldloc.1
      IL_0211:  ldloc.s    V_13
      IL_0213:  ldnull
      IL_0214:  ldc.i4.1
      IL_0215:  call       void [EntitySystem]XmlUtilities.XmlUtils::SaveXmlToStream(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                     class [System.IO]System.IO.Stream,
                                                                                     class [System.Text.Encoding]System.Text.Encoding,
                                                                                     bool)
      IL_021a:  leave.s    IL_0228

    }  // end .try
    finally
    {
      IL_021c:  ldloc.s    V_13
      IL_021e:  brfalse.s  IL_0227

      IL_0220:  ldloc.s    V_13
      IL_0222:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0227:  endfinally
    }  // end handler
    IL_0228:  ret
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