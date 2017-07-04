.class public auto ansi beforefieldinit Game.VersionConverter20To21
       extends Game.VersionConverter
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.VersionConverter20To21/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> '<>9__4_0'
    .field public static class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> '<>9__4_1'
    .field public static class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> '<>9__4_2'
    .field public static class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> '<>9__4_3'
    .field public static class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> '<>9__4_4'
    .field public static class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> '<>9__4_5'
    .field public static class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> '<>9__4_6'
    .field public static class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> '<>9__4_7'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.VersionConverter20To21/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.VersionConverter20To21/'<>c' Game.VersionConverter20To21/'<>c'::'<>9'
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
      IL_0010:  ldstr      "GameInfo"
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
      IL_0010:  ldstr      "TerrainGenerationMode"
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
      IL_0010:  ldstr      "CharacterSkinName"
      IL_0015:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_001a:  ret
    } // end of method '<>c'::'<ConvertProjectXml>b__4_2'

    .method assembly hidebysig instance bool 
            '<ConvertProjectXml>b__4_3'(class [System.Xml.XDocument]System.Xml.Linq.XElement e) cil managed
    {
      // 代码大小       27 (0x1b)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldstr      "Name"
      IL_0006:  ldsfld     string [System.Runtime]System.String::Empty
      IL_000b:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<string>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                              string,
                                                                                              !!0)
      IL_0010:  ldstr      "Player"
      IL_0015:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_001a:  ret
    } // end of method '<>c'::'<ConvertProjectXml>b__4_3'

    .method assembly hidebysig instance bool 
            '<ConvertProjectXml>b__4_4'(class [System.Xml.XDocument]System.Xml.Linq.XElement e) cil managed
    {
      // 代码大小       27 (0x1b)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldstr      "Name"
      IL_0006:  ldsfld     string [System.Runtime]System.String::Empty
      IL_000b:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<string>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                              string,
                                                                                              !!0)
      IL_0010:  ldstr      "PlayerStats"
      IL_0015:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_001a:  ret
    } // end of method '<>c'::'<ConvertProjectXml>b__4_4'

    .method assembly hidebysig instance bool 
            '<ConvertProjectXml>b__4_5'(class [System.Xml.XDocument]System.Xml.Linq.XElement e) cil managed
    {
      // 代码大小       27 (0x1b)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldstr      "Name"
      IL_0006:  ldsfld     string [System.Runtime]System.String::Empty
      IL_000b:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<string>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                              string,
                                                                                              !!0)
      IL_0010:  ldstr      "PlayerStats"
      IL_0015:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_001a:  ret
    } // end of method '<>c'::'<ConvertProjectXml>b__4_5'

    .method assembly hidebysig instance bool 
            '<ConvertProjectXml>b__4_6'(class [System.Xml.XDocument]System.Xml.Linq.XElement e) cil managed
    {
      // 代码大小       27 (0x1b)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldstr      "Name"
      IL_0006:  ldsfld     string [System.Runtime]System.String::Empty
      IL_000b:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<string>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                              string,
                                                                                              !!0)
      IL_0010:  ldstr      "Player"
      IL_0015:  callvirt   instance bool [System.Runtime]System.String::StartsWith(string)
      IL_001a:  ret
    } // end of method '<>c'::'<ConvertProjectXml>b__4_6'

    .method assembly hidebysig instance bool 
            '<ConvertProjectXml>b__4_7'(class [System.Xml.XDocument]System.Xml.Linq.XElement e) cil managed
    {
      // 代码大小       27 (0x1b)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldstr      "Name"
      IL_0006:  ldsfld     string [System.Runtime]System.String::Empty
      IL_000b:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<string>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                              string,
                                                                                              !!0)
      IL_0010:  ldstr      "SpawnPool"
      IL_0015:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_001a:  ret
    } // end of method '<>c'::'<ConvertProjectXml>b__4_7'

  } // end of class '<>c'

  .method public hidebysig specialname virtual 
          instance string  get_SourceVersion() cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldstr      "2.0"
    IL_0005:  ret
  } // end of method VersionConverter20To21::get_SourceVersion

  .method public hidebysig specialname virtual 
          instance string  get_TargetVersion() cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldstr      "2.1"
    IL_0005:  ret
  } // end of method VersionConverter20To21::get_TargetVersion

  .method public hidebysig virtual instance void 
          ConvertProjectXml(class [System.Xml.XDocument]System.Xml.Linq.XElement projectNode) cil managed
  {
    // 代码大小       1329 (0x531)
    .maxstack  7
    .locals init (string V_0,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> V_1,
             class [System.Xml.XDocument]System.Xml.Linq.XElement V_2,
             class [System.Xml.XDocument]System.Xml.Linq.XElement V_3,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> V_4,
             class [System.Xml.XDocument]System.Xml.Linq.XElement V_5,
             class [System.Xml.XDocument]System.Xml.Linq.XElement V_6,
             class [System.Xml.XDocument]System.Xml.Linq.XElement V_7,
             class [System.Xml.XDocument]System.Xml.Linq.XElement V_8,
             class [System.Xml.XDocument]System.Xml.Linq.XElement[] V_9,
             int32 V_10,
             class [System.Xml.XDocument]System.Xml.Linq.XElement V_11,
             class [System.Xml.XDocument]System.Xml.Linq.XElement V_12,
             class [System.Xml.XDocument]System.Xml.Linq.XElement V_13,
             class [System.Xml.XDocument]System.Xml.Linq.XElement V_14,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class [System.Xml.XDocument]System.Xml.Linq.XElement> V_15)
    IL_0000:  ldarg.1
    IL_0001:  ldstr      "Version"
    IL_0006:  ldarg.0
    IL_0007:  callvirt   instance string Game.VersionConverter::get_TargetVersion()
    IL_000c:  call       void [EntitySystem]XmlUtilities.XmlUtils::SetAttributeValue(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                     string,
                                                                                     object)
    IL_0011:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0016:  stloc.0
    IL_0017:  ldarg.1
    IL_0018:  ldstr      "Subsystems"
    IL_001d:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
    IL_0022:  callvirt   instance class [System.Xml.XDocument]System.Xml.Linq.XElement [System.Xml.XDocument]System.Xml.Linq.XContainer::Element(class [System.Xml.XDocument]System.Xml.Linq.XName)
    IL_0027:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Elements()
    IL_002c:  ldsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter20To21/'<>c'::'<>9__4_0'
    IL_0031:  dup
    IL_0032:  brtrue.s   IL_004b

    IL_0034:  pop
    IL_0035:  ldsfld     class Game.VersionConverter20To21/'<>c' Game.VersionConverter20To21/'<>c'::'<>9'
    IL_003a:  ldftn      instance bool Game.VersionConverter20To21/'<>c'::'<ConvertProjectXml>b__4_0'(class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_0040:  newobj     instance void class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool>::.ctor(object,
                                                                                                                                             native int)
    IL_0045:  dup
    IL_0046:  stsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter20To21/'<>c'::'<>9__4_0'
    IL_004b:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<class [System.Xml.XDocument]System.Xml.Linq.XElement>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                              class [System.Runtime]System.Func`2<!!0,bool>)
    IL_0050:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::GetEnumerator()
    IL_0055:  stloc.1
    .try
    {
      IL_0056:  br         IL_013b

      IL_005b:  ldloc.1
      IL_005c:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::get_Current()
      IL_0061:  stloc.2
      IL_0062:  ldloc.2
      IL_0063:  ldstr      "Value"
      IL_0068:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
      IL_006d:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Elements(class [System.Xml.XDocument]System.Xml.Linq.XName)
      IL_0072:  ldsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter20To21/'<>c'::'<>9__4_1'
      IL_0077:  dup
      IL_0078:  brtrue.s   IL_0091

      IL_007a:  pop
      IL_007b:  ldsfld     class Game.VersionConverter20To21/'<>c' Game.VersionConverter20To21/'<>c'::'<>9'
      IL_0080:  ldftn      instance bool Game.VersionConverter20To21/'<>c'::'<ConvertProjectXml>b__4_1'(class [System.Xml.XDocument]System.Xml.Linq.XElement)
      IL_0086:  newobj     instance void class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool>::.ctor(object,
                                                                                                                                               native int)
      IL_008b:  dup
      IL_008c:  stsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter20To21/'<>c'::'<>9__4_1'
      IL_0091:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<class [System.Xml.XDocument]System.Xml.Linq.XElement>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                                class [System.Runtime]System.Func`2<!!0,bool>)
      IL_0096:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::GetEnumerator()
      IL_009b:  stloc.s    V_4
      .try
      {
        IL_009d:  br.s       IL_00d6

        IL_009f:  ldloc.s    V_4
        IL_00a1:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::get_Current()
        IL_00a6:  stloc.s    V_5
        IL_00a8:  ldloc.s    V_5
        IL_00aa:  ldstr      "Value"
        IL_00af:  ldstr      ""
        IL_00b4:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<string>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                                string,
                                                                                                !!0)
        IL_00b9:  ldstr      "Normal"
        IL_00be:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                             string)
        IL_00c3:  brfalse.s  IL_00d6

        IL_00c5:  ldloc.s    V_5
        IL_00c7:  ldstr      "Value"
        IL_00cc:  ldstr      "Continent"
        IL_00d1:  call       void [EntitySystem]XmlUtilities.XmlUtils::SetAttributeValue(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                         string,
                                                                                         object)
        IL_00d6:  ldloc.s    V_4
        IL_00d8:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
        IL_00dd:  brtrue.s   IL_009f

        IL_00df:  leave.s    IL_00ed

      }  // end .try
      finally
      {
        IL_00e1:  ldloc.s    V_4
        IL_00e3:  brfalse.s  IL_00ec

        IL_00e5:  ldloc.s    V_4
        IL_00e7:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_00ec:  endfinally
      }  // end handler
      IL_00ed:  ldloc.2
      IL_00ee:  ldstr      "Value"
      IL_00f3:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
      IL_00f8:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Elements(class [System.Xml.XDocument]System.Xml.Linq.XName)
      IL_00fd:  ldsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter20To21/'<>c'::'<>9__4_2'
      IL_0102:  dup
      IL_0103:  brtrue.s   IL_011c

      IL_0105:  pop
      IL_0106:  ldsfld     class Game.VersionConverter20To21/'<>c' Game.VersionConverter20To21/'<>c'::'<>9'
      IL_010b:  ldftn      instance bool Game.VersionConverter20To21/'<>c'::'<ConvertProjectXml>b__4_2'(class [System.Xml.XDocument]System.Xml.Linq.XElement)
      IL_0111:  newobj     instance void class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool>::.ctor(object,
                                                                                                                                               native int)
      IL_0116:  dup
      IL_0117:  stsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter20To21/'<>c'::'<>9__4_2'
      IL_011c:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<class [System.Xml.XDocument]System.Xml.Linq.XElement>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                                class [System.Runtime]System.Func`2<!!0,bool>)
      IL_0121:  call       !!0 [System.Linq]System.Linq.Enumerable::FirstOrDefault<class [System.Xml.XDocument]System.Xml.Linq.XElement>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
      IL_0126:  stloc.3
      IL_0127:  ldloc.3
      IL_0128:  brfalse.s  IL_013b

      IL_012a:  ldloc.3
      IL_012b:  ldstr      "Value"
      IL_0130:  ldsfld     string [System.Runtime]System.String::Empty
      IL_0135:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<string>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                              string,
                                                                                              !!0)
      IL_013a:  stloc.0
      IL_013b:  ldloc.1
      IL_013c:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_0141:  brtrue     IL_005b

      IL_0146:  leave.s    IL_0152

    }  // end .try
    finally
    {
      IL_0148:  ldloc.1
      IL_0149:  brfalse.s  IL_0151

      IL_014b:  ldloc.1
      IL_014c:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0151:  endfinally
    }  // end handler
    IL_0152:  ldloc.0
    IL_0153:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_0158:  brfalse.s  IL_0160

    IL_015a:  ldstr      "$Male1"
    IL_015f:  stloc.0
    IL_0160:  ldarg.1
    IL_0161:  ldstr      "Subsystems"
    IL_0166:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
    IL_016b:  callvirt   instance class [System.Xml.XDocument]System.Xml.Linq.XElement [System.Xml.XDocument]System.Xml.Linq.XContainer::Element(class [System.Xml.XDocument]System.Xml.Linq.XName)
    IL_0170:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Elements()
    IL_0175:  ldsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter20To21/'<>c'::'<>9__4_3'
    IL_017a:  dup
    IL_017b:  brtrue.s   IL_0194

    IL_017d:  pop
    IL_017e:  ldsfld     class Game.VersionConverter20To21/'<>c' Game.VersionConverter20To21/'<>c'::'<>9'
    IL_0183:  ldftn      instance bool Game.VersionConverter20To21/'<>c'::'<ConvertProjectXml>b__4_3'(class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_0189:  newobj     instance void class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool>::.ctor(object,
                                                                                                                                             native int)
    IL_018e:  dup
    IL_018f:  stsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter20To21/'<>c'::'<>9__4_3'
    IL_0194:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<class [System.Xml.XDocument]System.Xml.Linq.XElement>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                              class [System.Runtime]System.Func`2<!!0,bool>)
    IL_0199:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::GetEnumerator()
    IL_019e:  stloc.1
    .try
    {
      IL_019f:  br         IL_0313

      IL_01a4:  ldloc.1
      IL_01a5:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::get_Current()
      IL_01aa:  stloc.s    V_6
      IL_01ac:  ldloc.s    V_6
      IL_01ae:  ldstr      "Name"
      IL_01b3:  ldstr      "Players"
      IL_01b8:  call       void [EntitySystem]XmlUtilities.XmlUtils::SetAttributeValue(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                       string,
                                                                                       object)
      IL_01bd:  ldstr      "Values"
      IL_01c2:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
      IL_01c7:  newobj     instance void [System.Xml.XDocument]System.Xml.Linq.XElement::.ctor(class [System.Xml.XDocument]System.Xml.Linq.XName)
      IL_01cc:  stloc.s    V_7
      IL_01ce:  ldloc.s    V_7
      IL_01d0:  ldstr      "Name"
      IL_01d5:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
      IL_01da:  ldstr      "Players"
      IL_01df:  callvirt   instance void [System.Xml.XDocument]System.Xml.Linq.XElement::SetAttributeValue(class [System.Xml.XDocument]System.Xml.Linq.XName,
                                                                                                           object)
      IL_01e4:  ldstr      "Values"
      IL_01e9:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
      IL_01ee:  newobj     instance void [System.Xml.XDocument]System.Xml.Linq.XElement::.ctor(class [System.Xml.XDocument]System.Xml.Linq.XName)
      IL_01f3:  stloc.s    V_8
      IL_01f5:  ldloc.s    V_8
      IL_01f7:  ldstr      "Name"
      IL_01fc:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
      IL_0201:  ldstr      "1"
      IL_0206:  callvirt   instance void [System.Xml.XDocument]System.Xml.Linq.XElement::SetAttributeValue(class [System.Xml.XDocument]System.Xml.Linq.XName,
                                                                                                           object)
      IL_020b:  ldloc.s    V_7
      IL_020d:  ldloc.s    V_8
      IL_020f:  callvirt   instance void [System.Xml.XDocument]System.Xml.Linq.XContainer::Add(object)
      IL_0214:  ldloc.s    V_6
      IL_0216:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Elements()
      IL_021b:  call       !!0[] [System.Linq]System.Linq.Enumerable::ToArray<class [System.Xml.XDocument]System.Xml.Linq.XElement>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
      IL_0220:  stloc.s    V_9
      IL_0222:  ldc.i4.0
      IL_0223:  stloc.s    V_10
      IL_0225:  br.s       IL_0244

      IL_0227:  ldloc.s    V_9
      IL_0229:  ldloc.s    V_10
      IL_022b:  ldelem.ref
      IL_022c:  stloc.s    V_11
      IL_022e:  ldloc.s    V_11
      IL_0230:  callvirt   instance void [System.Xml.XDocument]System.Xml.Linq.XNode::Remove()
      IL_0235:  ldloc.s    V_8
      IL_0237:  ldloc.s    V_11
      IL_0239:  callvirt   instance void [System.Xml.XDocument]System.Xml.Linq.XContainer::Add(object)
      IL_023e:  ldloc.s    V_10
      IL_0240:  ldc.i4.1
      IL_0241:  add
      IL_0242:  stloc.s    V_10
      IL_0244:  ldloc.s    V_10
      IL_0246:  ldloc.s    V_9
      IL_0248:  ldlen
      IL_0249:  conv.i4
      IL_024a:  blt.s      IL_0227

      IL_024c:  ldloc.s    V_8
      IL_024e:  ldstr      "Value"
      IL_0253:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
      IL_0258:  ldc.i4.3
      IL_0259:  newarr     [System.Runtime]System.Object
      IL_025e:  dup
      IL_025f:  ldc.i4.0
      IL_0260:  ldstr      "Name"
      IL_0265:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
      IL_026a:  ldstr      "CharacterSkinName"
      IL_026f:  newobj     instance void [System.Xml.XDocument]System.Xml.Linq.XAttribute::.ctor(class [System.Xml.XDocument]System.Xml.Linq.XName,
                                                                                                 object)
      IL_0274:  stelem.ref
      IL_0275:  dup
      IL_0276:  ldc.i4.1
      IL_0277:  ldstr      "Type"
      IL_027c:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
      IL_0281:  ldstr      "string"
      IL_0286:  newobj     instance void [System.Xml.XDocument]System.Xml.Linq.XAttribute::.ctor(class [System.Xml.XDocument]System.Xml.Linq.XName,
                                                                                                 object)
      IL_028b:  stelem.ref
      IL_028c:  dup
      IL_028d:  ldc.i4.2
      IL_028e:  ldstr      "Value"
      IL_0293:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
      IL_0298:  ldloc.0
      IL_0299:  newobj     instance void [System.Xml.XDocument]System.Xml.Linq.XAttribute::.ctor(class [System.Xml.XDocument]System.Xml.Linq.XName,
                                                                                                 object)
      IL_029e:  stelem.ref
      IL_029f:  newobj     instance void [System.Xml.XDocument]System.Xml.Linq.XElement::.ctor(class [System.Xml.XDocument]System.Xml.Linq.XName,
                                                                                               object[])
      IL_02a4:  callvirt   instance void [System.Xml.XDocument]System.Xml.Linq.XContainer::Add(object)
      IL_02a9:  ldloc.s    V_6
      IL_02ab:  ldloc.s    V_7
      IL_02ad:  callvirt   instance void [System.Xml.XDocument]System.Xml.Linq.XContainer::Add(object)
      IL_02b2:  ldloc.s    V_6
      IL_02b4:  ldstr      "Value"
      IL_02b9:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
      IL_02be:  ldc.i4.3
      IL_02bf:  newarr     [System.Runtime]System.Object
      IL_02c4:  dup
      IL_02c5:  ldc.i4.0
      IL_02c6:  ldstr      "Name"
      IL_02cb:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
      IL_02d0:  ldstr      "NextPlayerIndex"
      IL_02d5:  newobj     instance void [System.Xml.XDocument]System.Xml.Linq.XAttribute::.ctor(class [System.Xml.XDocument]System.Xml.Linq.XName,
                                                                                                 object)
      IL_02da:  stelem.ref
      IL_02db:  dup
      IL_02dc:  ldc.i4.1
      IL_02dd:  ldstr      "Type"
      IL_02e2:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
      IL_02e7:  ldstr      "int"
      IL_02ec:  newobj     instance void [System.Xml.XDocument]System.Xml.Linq.XAttribute::.ctor(class [System.Xml.XDocument]System.Xml.Linq.XName,
                                                                                                 object)
      IL_02f1:  stelem.ref
      IL_02f2:  dup
      IL_02f3:  ldc.i4.2
      IL_02f4:  ldstr      "Value"
      IL_02f9:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
      IL_02fe:  ldstr      "2"
      IL_0303:  newobj     instance void [System.Xml.XDocument]System.Xml.Linq.XAttribute::.ctor(class [System.Xml.XDocument]System.Xml.Linq.XName,
                                                                                                 object)
      IL_0308:  stelem.ref
      IL_0309:  newobj     instance void [System.Xml.XDocument]System.Xml.Linq.XElement::.ctor(class [System.Xml.XDocument]System.Xml.Linq.XName,
                                                                                               object[])
      IL_030e:  callvirt   instance void [System.Xml.XDocument]System.Xml.Linq.XContainer::Add(object)
      IL_0313:  ldloc.1
      IL_0314:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_0319:  brtrue     IL_01a4

      IL_031e:  leave.s    IL_032a

    }  // end .try
    finally
    {
      IL_0320:  ldloc.1
      IL_0321:  brfalse.s  IL_0329

      IL_0323:  ldloc.1
      IL_0324:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0329:  endfinally
    }  // end handler
    IL_032a:  ldarg.1
    IL_032b:  ldstr      "Subsystems"
    IL_0330:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
    IL_0335:  callvirt   instance class [System.Xml.XDocument]System.Xml.Linq.XElement [System.Xml.XDocument]System.Xml.Linq.XContainer::Element(class [System.Xml.XDocument]System.Xml.Linq.XName)
    IL_033a:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Elements()
    IL_033f:  ldsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter20To21/'<>c'::'<>9__4_4'
    IL_0344:  dup
    IL_0345:  brtrue.s   IL_035e

    IL_0347:  pop
    IL_0348:  ldsfld     class Game.VersionConverter20To21/'<>c' Game.VersionConverter20To21/'<>c'::'<>9'
    IL_034d:  ldftn      instance bool Game.VersionConverter20To21/'<>c'::'<ConvertProjectXml>b__4_4'(class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_0353:  newobj     instance void class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool>::.ctor(object,
                                                                                                                                             native int)
    IL_0358:  dup
    IL_0359:  stsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter20To21/'<>c'::'<>9__4_4'
    IL_035e:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<class [System.Xml.XDocument]System.Xml.Linq.XElement>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                              class [System.Runtime]System.Func`2<!!0,bool>)
    IL_0363:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::GetEnumerator()
    IL_0368:  stloc.1
    .try
    {
      IL_0369:  br         IL_0402

      IL_036e:  ldloc.1
      IL_036f:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::get_Current()
      IL_0374:  stloc.s    V_12
      IL_0376:  ldloc.s    V_12
      IL_0378:  ldstr      "Values"
      IL_037d:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
      IL_0382:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Elements(class [System.Xml.XDocument]System.Xml.Linq.XName)
      IL_0387:  ldsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter20To21/'<>c'::'<>9__4_5'
      IL_038c:  dup
      IL_038d:  brtrue.s   IL_03a6

      IL_038f:  pop
      IL_0390:  ldsfld     class Game.VersionConverter20To21/'<>c' Game.VersionConverter20To21/'<>c'::'<>9'
      IL_0395:  ldftn      instance bool Game.VersionConverter20To21/'<>c'::'<ConvertProjectXml>b__4_5'(class [System.Xml.XDocument]System.Xml.Linq.XElement)
      IL_039b:  newobj     instance void class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool>::.ctor(object,
                                                                                                                                               native int)
      IL_03a0:  dup
      IL_03a1:  stsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter20To21/'<>c'::'<>9__4_5'
      IL_03a6:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<class [System.Xml.XDocument]System.Xml.Linq.XElement>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                                class [System.Runtime]System.Func`2<!!0,bool>)
      IL_03ab:  call       !!0 [System.Linq]System.Linq.Enumerable::FirstOrDefault<class [System.Xml.XDocument]System.Xml.Linq.XElement>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
      IL_03b0:  stloc.s    V_13
      IL_03b2:  ldloc.s    V_13
      IL_03b4:  brfalse.s  IL_0402

      IL_03b6:  ldstr      "Values"
      IL_03bb:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
      IL_03c0:  newobj     instance void [System.Xml.XDocument]System.Xml.Linq.XElement::.ctor(class [System.Xml.XDocument]System.Xml.Linq.XName)
      IL_03c5:  stloc.s    V_14
      IL_03c7:  ldloc.s    V_14
      IL_03c9:  ldstr      "Name"
      IL_03ce:  ldstr      "Stats"
      IL_03d3:  call       void [EntitySystem]XmlUtilities.XmlUtils::SetAttributeValue(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                       string,
                                                                                       object)
      IL_03d8:  ldloc.s    V_12
      IL_03da:  ldloc.s    V_14
      IL_03dc:  callvirt   instance void [System.Xml.XDocument]System.Xml.Linq.XContainer::Add(object)
      IL_03e1:  ldloc.s    V_13
      IL_03e3:  ldstr      "Name"
      IL_03e8:  ldstr      "1"
      IL_03ed:  call       void [EntitySystem]XmlUtilities.XmlUtils::SetAttributeValue(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                       string,
                                                                                       object)
      IL_03f2:  ldloc.s    V_13
      IL_03f4:  callvirt   instance void [System.Xml.XDocument]System.Xml.Linq.XNode::Remove()
      IL_03f9:  ldloc.s    V_14
      IL_03fb:  ldloc.s    V_13
      IL_03fd:  callvirt   instance void [System.Xml.XDocument]System.Xml.Linq.XContainer::Add(object)
      IL_0402:  ldloc.1
      IL_0403:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_0408:  brtrue     IL_036e

      IL_040d:  leave.s    IL_0419

    }  // end .try
    finally
    {
      IL_040f:  ldloc.1
      IL_0410:  brfalse.s  IL_0418

      IL_0412:  ldloc.1
      IL_0413:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0418:  endfinally
    }  // end handler
    IL_0419:  ldarg.1
    IL_041a:  ldstr      "Entities"
    IL_041f:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
    IL_0424:  callvirt   instance class [System.Xml.XDocument]System.Xml.Linq.XElement [System.Xml.XDocument]System.Xml.Linq.XContainer::Element(class [System.Xml.XDocument]System.Xml.Linq.XName)
    IL_0429:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Elements()
    IL_042e:  ldsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter20To21/'<>c'::'<>9__4_6'
    IL_0433:  dup
    IL_0434:  brtrue.s   IL_044d

    IL_0436:  pop
    IL_0437:  ldsfld     class Game.VersionConverter20To21/'<>c' Game.VersionConverter20To21/'<>c'::'<>9'
    IL_043c:  ldftn      instance bool Game.VersionConverter20To21/'<>c'::'<ConvertProjectXml>b__4_6'(class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_0442:  newobj     instance void class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool>::.ctor(object,
                                                                                                                                             native int)
    IL_0447:  dup
    IL_0448:  stsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter20To21/'<>c'::'<>9__4_6'
    IL_044d:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<class [System.Xml.XDocument]System.Xml.Linq.XElement>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                              class [System.Runtime]System.Func`2<!!0,bool>)
    IL_0452:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::GetEnumerator()
    IL_0457:  stloc.1
    .try
    {
      IL_0458:  br.s       IL_047f

      IL_045a:  ldloc.1
      IL_045b:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::get_Current()
      IL_0460:  dup
      IL_0461:  ldstr      "Guid"
      IL_0466:  ldstr      "bef1b918-6418-41c9-a598-95e8ffd39ab3"
      IL_046b:  call       void [EntitySystem]XmlUtilities.XmlUtils::SetAttributeValue(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                       string,
                                                                                       object)
      IL_0470:  ldstr      "Name"
      IL_0475:  ldstr      "MalePlayer"
      IL_047a:  call       void [EntitySystem]XmlUtilities.XmlUtils::SetAttributeValue(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                       string,
                                                                                       object)
      IL_047f:  ldloc.1
      IL_0480:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_0485:  brtrue.s   IL_045a

      IL_0487:  leave.s    IL_0493

    }  // end .try
    finally
    {
      IL_0489:  ldloc.1
      IL_048a:  brfalse.s  IL_0492

      IL_048c:  ldloc.1
      IL_048d:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0492:  endfinally
    }  // end handler
    IL_0493:  ldarg.1
    IL_0494:  ldstr      "Entities"
    IL_0499:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
    IL_049e:  callvirt   instance class [System.Xml.XDocument]System.Xml.Linq.XElement [System.Xml.XDocument]System.Xml.Linq.XContainer::Element(class [System.Xml.XDocument]System.Xml.Linq.XName)
    IL_04a3:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Elements()
    IL_04a8:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::GetEnumerator()
    IL_04ad:  stloc.1
    .try
    {
      IL_04ae:  br.s       IL_051c

      IL_04b0:  ldloc.1
      IL_04b1:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::get_Current()
      IL_04b6:  ldstr      "Value"
      IL_04bb:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
      IL_04c0:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Descendants(class [System.Xml.XDocument]System.Xml.Linq.XName)
      IL_04c5:  ldsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter20To21/'<>c'::'<>9__4_7'
      IL_04ca:  dup
      IL_04cb:  brtrue.s   IL_04e4

      IL_04cd:  pop
      IL_04ce:  ldsfld     class Game.VersionConverter20To21/'<>c' Game.VersionConverter20To21/'<>c'::'<>9'
      IL_04d3:  ldftn      instance bool Game.VersionConverter20To21/'<>c'::'<ConvertProjectXml>b__4_7'(class [System.Xml.XDocument]System.Xml.Linq.XElement)
      IL_04d9:  newobj     instance void class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool>::.ctor(object,
                                                                                                                                               native int)
      IL_04de:  dup
      IL_04df:  stsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter20To21/'<>c'::'<>9__4_7'
      IL_04e4:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<class [System.Xml.XDocument]System.Xml.Linq.XElement>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                                class [System.Runtime]System.Func`2<!!0,bool>)
      IL_04e9:  call       class [System.Collections]System.Collections.Generic.List`1<!!0> [System.Linq]System.Linq.Enumerable::ToList<class [System.Xml.XDocument]System.Xml.Linq.XElement>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
      IL_04ee:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::GetEnumerator()
      IL_04f3:  stloc.s    V_15
      .try
      {
        IL_04f5:  br.s       IL_0503

        IL_04f7:  ldloca.s   V_15
        IL_04f9:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class [System.Xml.XDocument]System.Xml.Linq.XElement>::get_Current()
        IL_04fe:  callvirt   instance void [System.Xml.XDocument]System.Xml.Linq.XNode::Remove()
        IL_0503:  ldloca.s   V_15
        IL_0505:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class [System.Xml.XDocument]System.Xml.Linq.XElement>::MoveNext()
        IL_050a:  brtrue.s   IL_04f7

        IL_050c:  leave.s    IL_051c

      }  // end .try
      finally
      {
        IL_050e:  ldloca.s   V_15
        IL_0510:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class [System.Xml.XDocument]System.Xml.Linq.XElement>
        IL_0516:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_051b:  endfinally
      }  // end handler
      IL_051c:  ldloc.1
      IL_051d:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_0522:  brtrue.s   IL_04b0

      IL_0524:  leave.s    IL_0530

    }  // end .try
    finally
    {
      IL_0526:  ldloc.1
      IL_0527:  brfalse.s  IL_052f

      IL_0529:  ldloc.1
      IL_052a:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_052f:  endfinally
    }  // end handler
    IL_0530:  ret
  } // end of method VersionConverter20To21::ConvertProjectXml

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
  } // end of method VersionConverter20To21::ConvertWorld

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.VersionConverter::.ctor()
    IL_0006:  ret
  } // end of method VersionConverter20To21::.ctor

  .property instance string SourceVersion()
  {
    .get instance string Game.VersionConverter20To21::get_SourceVersion()
  } // end of property VersionConverter20To21::SourceVersion
  .property instance string TargetVersion()
  {
    .get instance string Game.VersionConverter20To21::get_TargetVersion()
  } // end of property VersionConverter20To21::TargetVersion
} // end of class Game.VersionConverter20To21