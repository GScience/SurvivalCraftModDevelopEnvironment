.class public auto ansi beforefieldinit Game.VersionConverter128To129
       extends Game.VersionConverter
{
  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass4_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public string[] inventoryNames
    .field public class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> '<>9__11'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass4_0'::.ctor

    .method assembly hidebysig instance bool 
            '<ConvertProjectXml>b__11'(class [System.Xml.XDocument]System.Xml.Linq.XElement e) cil managed
    {
      // 代码大小       28 (0x1c)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      string[] Game.VersionConverter128To129/'<>c__DisplayClass4_0'::inventoryNames
      IL_0006:  ldarg.1
      IL_0007:  ldstr      "Name"
      IL_000c:  ldsfld     string [System.Runtime]System.String::Empty
      IL_0011:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<string>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                              string,
                                                                                              !!0)
      IL_0016:  call       bool [System.Linq]System.Linq.Enumerable::Contains<string>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                      !!0)
      IL_001b:  ret
    } // end of method '<>c__DisplayClass4_0'::'<ConvertProjectXml>b__11'

  } // end of class '<>c__DisplayClass4_0'

  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.VersionConverter128To129/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> '<>9__4_0'
    .field public static class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> '<>9__4_1'
    .field public static class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> '<>9__4_2'
    .field public static class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> '<>9__4_3'
    .field public static class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> '<>9__4_4'
    .field public static class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> '<>9__4_5'
    .field public static class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> '<>9__4_6'
    .field public static class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> '<>9__4_7'
    .field public static class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> '<>9__4_8'
    .field public static class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> '<>9__4_9'
    .field public static class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> '<>9__4_10'
    .field public static class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> '<>9__4_12'
    .field public static class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> '<>9__4_13'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.VersionConverter128To129/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.VersionConverter128To129/'<>c' Game.VersionConverter128To129/'<>c'::'<>9'
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
      IL_0010:  ldstr      "Pickables"
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
      IL_0010:  ldstr      "Pickables"
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
      IL_0010:  ldstr      "Value"
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
      IL_0010:  ldstr      "Projectiles"
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
      IL_0010:  ldstr      "Projectiles"
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
      IL_0010:  ldstr      "Value"
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
      IL_0010:  ldstr      "CollapsingBlockBehavior"
      IL_0015:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
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
      IL_0010:  ldstr      "CollapsingBlocks"
      IL_0015:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_001a:  ret
    } // end of method '<>c'::'<ConvertProjectXml>b__4_7'

    .method assembly hidebysig instance bool 
            '<ConvertProjectXml>b__4_8'(class [System.Xml.XDocument]System.Xml.Linq.XElement e) cil managed
    {
      // 代码大小       27 (0x1b)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldstr      "Name"
      IL_0006:  ldsfld     string [System.Runtime]System.String::Empty
      IL_000b:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<string>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                              string,
                                                                                              !!0)
      IL_0010:  ldstr      "Value"
      IL_0015:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_001a:  ret
    } // end of method '<>c'::'<ConvertProjectXml>b__4_8'

    .method assembly hidebysig instance bool 
            '<ConvertProjectXml>b__4_9'(class [System.Xml.XDocument]System.Xml.Linq.XElement e) cil managed
    {
      // 代码大小       27 (0x1b)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldstr      "Name"
      IL_0006:  ldsfld     string [System.Runtime]System.String::Empty
      IL_000b:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<string>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                              string,
                                                                                              !!0)
      IL_0010:  ldstr      "Clothing"
      IL_0015:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_001a:  ret
    } // end of method '<>c'::'<ConvertProjectXml>b__4_9'

    .method assembly hidebysig instance bool 
            '<ConvertProjectXml>b__4_10'(class [System.Xml.XDocument]System.Xml.Linq.XElement e) cil managed
    {
      // 代码大小       27 (0x1b)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldstr      "Name"
      IL_0006:  ldsfld     string [System.Runtime]System.String::Empty
      IL_000b:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<string>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                              string,
                                                                                              !!0)
      IL_0010:  ldstr      "Clothes"
      IL_0015:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_001a:  ret
    } // end of method '<>c'::'<ConvertProjectXml>b__4_10'

    .method assembly hidebysig instance bool 
            '<ConvertProjectXml>b__4_12'(class [System.Xml.XDocument]System.Xml.Linq.XElement e) cil managed
    {
      // 代码大小       27 (0x1b)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldstr      "Name"
      IL_0006:  ldsfld     string [System.Runtime]System.String::Empty
      IL_000b:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<string>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                              string,
                                                                                              !!0)
      IL_0010:  ldstr      "Slots"
      IL_0015:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_001a:  ret
    } // end of method '<>c'::'<ConvertProjectXml>b__4_12'

    .method assembly hidebysig instance bool 
            '<ConvertProjectXml>b__4_13'(class [System.Xml.XDocument]System.Xml.Linq.XElement e) cil managed
    {
      // 代码大小       27 (0x1b)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldstr      "Name"
      IL_0006:  ldsfld     string [System.Runtime]System.String::Empty
      IL_000b:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<string>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                              string,
                                                                                              !!0)
      IL_0010:  ldstr      "Contents"
      IL_0015:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_001a:  ret
    } // end of method '<>c'::'<ConvertProjectXml>b__4_13'

  } // end of class '<>c'

  .method public hidebysig specialname virtual 
          instance string  get_SourceVersion() cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldstr      "1.28"
    IL_0005:  ret
  } // end of method VersionConverter128To129::get_SourceVersion

  .method public hidebysig specialname virtual 
          instance string  get_TargetVersion() cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldstr      "1.29"
    IL_0005:  ret
  } // end of method VersionConverter128To129::get_TargetVersion

  .method public hidebysig virtual instance void 
          ConvertProjectXml(class [System.Xml.XDocument]System.Xml.Linq.XElement projectNode) cil managed
  {
    // 代码大小       1981 (0x7bd)
    .maxstack  5
    .locals init (class Game.VersionConverter128To129/'<>c__DisplayClass4_0' V_0,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> V_1,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> V_2,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> V_3,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7,
             class [System.Xml.XDocument]System.Xml.Linq.XElement V_8,
             string V_9,
             int32[] V_10,
             string V_11,
             int32 V_12,
             class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> V_13,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> V_14,
             int32 V_15)
    IL_0000:  newobj     instance void Game.VersionConverter128To129/'<>c__DisplayClass4_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldarg.1
    IL_0007:  ldstr      "Version"
    IL_000c:  ldarg.0
    IL_000d:  callvirt   instance string Game.VersionConverter::get_TargetVersion()
    IL_0012:  call       void [EntitySystem]XmlUtilities.XmlUtils::SetAttributeValue(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                     string,
                                                                                     object)
    IL_0017:  ldarg.1
    IL_0018:  ldstr      "Subsystems"
    IL_001d:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
    IL_0022:  callvirt   instance class [System.Xml.XDocument]System.Xml.Linq.XElement [System.Xml.XDocument]System.Xml.Linq.XContainer::Element(class [System.Xml.XDocument]System.Xml.Linq.XName)
    IL_0027:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Elements()
    IL_002c:  ldsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter128To129/'<>c'::'<>9__4_0'
    IL_0031:  dup
    IL_0032:  brtrue.s   IL_004b

    IL_0034:  pop
    IL_0035:  ldsfld     class Game.VersionConverter128To129/'<>c' Game.VersionConverter128To129/'<>c'::'<>9'
    IL_003a:  ldftn      instance bool Game.VersionConverter128To129/'<>c'::'<ConvertProjectXml>b__4_0'(class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_0040:  newobj     instance void class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool>::.ctor(object,
                                                                                                                                             native int)
    IL_0045:  dup
    IL_0046:  stsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter128To129/'<>c'::'<>9__4_0'
    IL_004b:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<class [System.Xml.XDocument]System.Xml.Linq.XElement>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                              class [System.Runtime]System.Func`2<!!0,bool>)
    IL_0050:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::GetEnumerator()
    IL_0055:  stloc.1
    .try
    {
      IL_0056:  br         IL_0170

      IL_005b:  ldloc.1
      IL_005c:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::get_Current()
      IL_0061:  ldstr      "Values"
      IL_0066:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
      IL_006b:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Elements(class [System.Xml.XDocument]System.Xml.Linq.XName)
      IL_0070:  ldsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter128To129/'<>c'::'<>9__4_1'
      IL_0075:  dup
      IL_0076:  brtrue.s   IL_008f

      IL_0078:  pop
      IL_0079:  ldsfld     class Game.VersionConverter128To129/'<>c' Game.VersionConverter128To129/'<>c'::'<>9'
      IL_007e:  ldftn      instance bool Game.VersionConverter128To129/'<>c'::'<ConvertProjectXml>b__4_1'(class [System.Xml.XDocument]System.Xml.Linq.XElement)
      IL_0084:  newobj     instance void class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool>::.ctor(object,
                                                                                                                                               native int)
      IL_0089:  dup
      IL_008a:  stsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter128To129/'<>c'::'<>9__4_1'
      IL_008f:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<class [System.Xml.XDocument]System.Xml.Linq.XElement>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                                class [System.Runtime]System.Func`2<!!0,bool>)
      IL_0094:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::GetEnumerator()
      IL_0099:  stloc.2
      .try
      {
        IL_009a:  br         IL_0159

        IL_009f:  ldloc.2
        IL_00a0:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::get_Current()
        IL_00a5:  ldstr      "Values"
        IL_00aa:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
        IL_00af:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Elements(class [System.Xml.XDocument]System.Xml.Linq.XName)
        IL_00b4:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::GetEnumerator()
        IL_00b9:  stloc.3
        .try
        {
          IL_00ba:  br         IL_0142

          IL_00bf:  ldloc.3
          IL_00c0:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::get_Current()
          IL_00c5:  ldstr      "Value"
          IL_00ca:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
          IL_00cf:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Elements(class [System.Xml.XDocument]System.Xml.Linq.XName)
          IL_00d4:  ldsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter128To129/'<>c'::'<>9__4_2'
          IL_00d9:  dup
          IL_00da:  brtrue.s   IL_00f3

          IL_00dc:  pop
          IL_00dd:  ldsfld     class Game.VersionConverter128To129/'<>c' Game.VersionConverter128To129/'<>c'::'<>9'
          IL_00e2:  ldftn      instance bool Game.VersionConverter128To129/'<>c'::'<ConvertProjectXml>b__4_2'(class [System.Xml.XDocument]System.Xml.Linq.XElement)
          IL_00e8:  newobj     instance void class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool>::.ctor(object,
                                                                                                                                                   native int)
          IL_00ed:  dup
          IL_00ee:  stsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter128To129/'<>c'::'<>9__4_2'
          IL_00f3:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<class [System.Xml.XDocument]System.Xml.Linq.XElement>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                                    class [System.Runtime]System.Func`2<!!0,bool>)
          IL_00f8:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::GetEnumerator()
          IL_00fd:  stloc.s    V_4
          .try
          {
            IL_00ff:  br.s       IL_012b

            IL_0101:  ldloc.s    V_4
            IL_0103:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::get_Current()
            IL_0108:  dup
            IL_0109:  ldstr      "Value"
            IL_010e:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<int32>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                                   string)
            IL_0113:  call       int32 Game.VersionConverter128To129::ConvertValue(int32)
            IL_0118:  stloc.s    V_5
            IL_011a:  ldstr      "Value"
            IL_011f:  ldloc.s    V_5
            IL_0121:  box        [System.Runtime]System.Int32
            IL_0126:  call       void [EntitySystem]XmlUtilities.XmlUtils::SetAttributeValue(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                             string,
                                                                                             object)
            IL_012b:  ldloc.s    V_4
            IL_012d:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
            IL_0132:  brtrue.s   IL_0101

            IL_0134:  leave.s    IL_0142

          }  // end .try
          finally
          {
            IL_0136:  ldloc.s    V_4
            IL_0138:  brfalse.s  IL_0141

            IL_013a:  ldloc.s    V_4
            IL_013c:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
            IL_0141:  endfinally
          }  // end handler
          IL_0142:  ldloc.3
          IL_0143:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
          IL_0148:  brtrue     IL_00bf

          IL_014d:  leave.s    IL_0159

        }  // end .try
        finally
        {
          IL_014f:  ldloc.3
          IL_0150:  brfalse.s  IL_0158

          IL_0152:  ldloc.3
          IL_0153:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
          IL_0158:  endfinally
        }  // end handler
        IL_0159:  ldloc.2
        IL_015a:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
        IL_015f:  brtrue     IL_009f

        IL_0164:  leave.s    IL_0170

      }  // end .try
      finally
      {
        IL_0166:  ldloc.2
        IL_0167:  brfalse.s  IL_016f

        IL_0169:  ldloc.2
        IL_016a:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_016f:  endfinally
      }  // end handler
      IL_0170:  ldloc.1
      IL_0171:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_0176:  brtrue     IL_005b

      IL_017b:  leave.s    IL_0187

    }  // end .try
    finally
    {
      IL_017d:  ldloc.1
      IL_017e:  brfalse.s  IL_0186

      IL_0180:  ldloc.1
      IL_0181:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0186:  endfinally
    }  // end handler
    IL_0187:  ldarg.1
    IL_0188:  ldstr      "Subsystems"
    IL_018d:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
    IL_0192:  callvirt   instance class [System.Xml.XDocument]System.Xml.Linq.XElement [System.Xml.XDocument]System.Xml.Linq.XContainer::Element(class [System.Xml.XDocument]System.Xml.Linq.XName)
    IL_0197:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Elements()
    IL_019c:  ldsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter128To129/'<>c'::'<>9__4_3'
    IL_01a1:  dup
    IL_01a2:  brtrue.s   IL_01bb

    IL_01a4:  pop
    IL_01a5:  ldsfld     class Game.VersionConverter128To129/'<>c' Game.VersionConverter128To129/'<>c'::'<>9'
    IL_01aa:  ldftn      instance bool Game.VersionConverter128To129/'<>c'::'<ConvertProjectXml>b__4_3'(class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_01b0:  newobj     instance void class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool>::.ctor(object,
                                                                                                                                             native int)
    IL_01b5:  dup
    IL_01b6:  stsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter128To129/'<>c'::'<>9__4_3'
    IL_01bb:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<class [System.Xml.XDocument]System.Xml.Linq.XElement>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                              class [System.Runtime]System.Func`2<!!0,bool>)
    IL_01c0:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::GetEnumerator()
    IL_01c5:  stloc.1
    .try
    {
      IL_01c6:  br         IL_02e0

      IL_01cb:  ldloc.1
      IL_01cc:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::get_Current()
      IL_01d1:  ldstr      "Values"
      IL_01d6:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
      IL_01db:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Elements(class [System.Xml.XDocument]System.Xml.Linq.XName)
      IL_01e0:  ldsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter128To129/'<>c'::'<>9__4_4'
      IL_01e5:  dup
      IL_01e6:  brtrue.s   IL_01ff

      IL_01e8:  pop
      IL_01e9:  ldsfld     class Game.VersionConverter128To129/'<>c' Game.VersionConverter128To129/'<>c'::'<>9'
      IL_01ee:  ldftn      instance bool Game.VersionConverter128To129/'<>c'::'<ConvertProjectXml>b__4_4'(class [System.Xml.XDocument]System.Xml.Linq.XElement)
      IL_01f4:  newobj     instance void class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool>::.ctor(object,
                                                                                                                                               native int)
      IL_01f9:  dup
      IL_01fa:  stsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter128To129/'<>c'::'<>9__4_4'
      IL_01ff:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<class [System.Xml.XDocument]System.Xml.Linq.XElement>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                                class [System.Runtime]System.Func`2<!!0,bool>)
      IL_0204:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::GetEnumerator()
      IL_0209:  stloc.2
      .try
      {
        IL_020a:  br         IL_02c9

        IL_020f:  ldloc.2
        IL_0210:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::get_Current()
        IL_0215:  ldstr      "Values"
        IL_021a:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
        IL_021f:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Elements(class [System.Xml.XDocument]System.Xml.Linq.XName)
        IL_0224:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::GetEnumerator()
        IL_0229:  stloc.3
        .try
        {
          IL_022a:  br         IL_02b2

          IL_022f:  ldloc.3
          IL_0230:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::get_Current()
          IL_0235:  ldstr      "Value"
          IL_023a:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
          IL_023f:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Elements(class [System.Xml.XDocument]System.Xml.Linq.XName)
          IL_0244:  ldsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter128To129/'<>c'::'<>9__4_5'
          IL_0249:  dup
          IL_024a:  brtrue.s   IL_0263

          IL_024c:  pop
          IL_024d:  ldsfld     class Game.VersionConverter128To129/'<>c' Game.VersionConverter128To129/'<>c'::'<>9'
          IL_0252:  ldftn      instance bool Game.VersionConverter128To129/'<>c'::'<ConvertProjectXml>b__4_5'(class [System.Xml.XDocument]System.Xml.Linq.XElement)
          IL_0258:  newobj     instance void class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool>::.ctor(object,
                                                                                                                                                   native int)
          IL_025d:  dup
          IL_025e:  stsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter128To129/'<>c'::'<>9__4_5'
          IL_0263:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<class [System.Xml.XDocument]System.Xml.Linq.XElement>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                                    class [System.Runtime]System.Func`2<!!0,bool>)
          IL_0268:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::GetEnumerator()
          IL_026d:  stloc.s    V_4
          .try
          {
            IL_026f:  br.s       IL_029b

            IL_0271:  ldloc.s    V_4
            IL_0273:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::get_Current()
            IL_0278:  dup
            IL_0279:  ldstr      "Value"
            IL_027e:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<int32>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                                   string)
            IL_0283:  call       int32 Game.VersionConverter128To129::ConvertValue(int32)
            IL_0288:  stloc.s    V_6
            IL_028a:  ldstr      "Value"
            IL_028f:  ldloc.s    V_6
            IL_0291:  box        [System.Runtime]System.Int32
            IL_0296:  call       void [EntitySystem]XmlUtilities.XmlUtils::SetAttributeValue(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                             string,
                                                                                             object)
            IL_029b:  ldloc.s    V_4
            IL_029d:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
            IL_02a2:  brtrue.s   IL_0271

            IL_02a4:  leave.s    IL_02b2

          }  // end .try
          finally
          {
            IL_02a6:  ldloc.s    V_4
            IL_02a8:  brfalse.s  IL_02b1

            IL_02aa:  ldloc.s    V_4
            IL_02ac:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
            IL_02b1:  endfinally
          }  // end handler
          IL_02b2:  ldloc.3
          IL_02b3:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
          IL_02b8:  brtrue     IL_022f

          IL_02bd:  leave.s    IL_02c9

        }  // end .try
        finally
        {
          IL_02bf:  ldloc.3
          IL_02c0:  brfalse.s  IL_02c8

          IL_02c2:  ldloc.3
          IL_02c3:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
          IL_02c8:  endfinally
        }  // end handler
        IL_02c9:  ldloc.2
        IL_02ca:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
        IL_02cf:  brtrue     IL_020f

        IL_02d4:  leave.s    IL_02e0

      }  // end .try
      finally
      {
        IL_02d6:  ldloc.2
        IL_02d7:  brfalse.s  IL_02df

        IL_02d9:  ldloc.2
        IL_02da:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_02df:  endfinally
      }  // end handler
      IL_02e0:  ldloc.1
      IL_02e1:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_02e6:  brtrue     IL_01cb

      IL_02eb:  leave.s    IL_02f7

    }  // end .try
    finally
    {
      IL_02ed:  ldloc.1
      IL_02ee:  brfalse.s  IL_02f6

      IL_02f0:  ldloc.1
      IL_02f1:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_02f6:  endfinally
    }  // end handler
    IL_02f7:  ldarg.1
    IL_02f8:  ldstr      "Subsystems"
    IL_02fd:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
    IL_0302:  callvirt   instance class [System.Xml.XDocument]System.Xml.Linq.XElement [System.Xml.XDocument]System.Xml.Linq.XContainer::Element(class [System.Xml.XDocument]System.Xml.Linq.XName)
    IL_0307:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Elements()
    IL_030c:  ldsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter128To129/'<>c'::'<>9__4_6'
    IL_0311:  dup
    IL_0312:  brtrue.s   IL_032b

    IL_0314:  pop
    IL_0315:  ldsfld     class Game.VersionConverter128To129/'<>c' Game.VersionConverter128To129/'<>c'::'<>9'
    IL_031a:  ldftn      instance bool Game.VersionConverter128To129/'<>c'::'<ConvertProjectXml>b__4_6'(class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_0320:  newobj     instance void class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool>::.ctor(object,
                                                                                                                                             native int)
    IL_0325:  dup
    IL_0326:  stsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter128To129/'<>c'::'<>9__4_6'
    IL_032b:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<class [System.Xml.XDocument]System.Xml.Linq.XElement>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                              class [System.Runtime]System.Func`2<!!0,bool>)
    IL_0330:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::GetEnumerator()
    IL_0335:  stloc.1
    .try
    {
      IL_0336:  br         IL_0450

      IL_033b:  ldloc.1
      IL_033c:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::get_Current()
      IL_0341:  ldstr      "Values"
      IL_0346:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
      IL_034b:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Elements(class [System.Xml.XDocument]System.Xml.Linq.XName)
      IL_0350:  ldsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter128To129/'<>c'::'<>9__4_7'
      IL_0355:  dup
      IL_0356:  brtrue.s   IL_036f

      IL_0358:  pop
      IL_0359:  ldsfld     class Game.VersionConverter128To129/'<>c' Game.VersionConverter128To129/'<>c'::'<>9'
      IL_035e:  ldftn      instance bool Game.VersionConverter128To129/'<>c'::'<ConvertProjectXml>b__4_7'(class [System.Xml.XDocument]System.Xml.Linq.XElement)
      IL_0364:  newobj     instance void class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool>::.ctor(object,
                                                                                                                                               native int)
      IL_0369:  dup
      IL_036a:  stsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter128To129/'<>c'::'<>9__4_7'
      IL_036f:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<class [System.Xml.XDocument]System.Xml.Linq.XElement>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                                class [System.Runtime]System.Func`2<!!0,bool>)
      IL_0374:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::GetEnumerator()
      IL_0379:  stloc.2
      .try
      {
        IL_037a:  br         IL_0439

        IL_037f:  ldloc.2
        IL_0380:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::get_Current()
        IL_0385:  ldstr      "Values"
        IL_038a:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
        IL_038f:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Elements(class [System.Xml.XDocument]System.Xml.Linq.XName)
        IL_0394:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::GetEnumerator()
        IL_0399:  stloc.3
        .try
        {
          IL_039a:  br         IL_0422

          IL_039f:  ldloc.3
          IL_03a0:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::get_Current()
          IL_03a5:  ldstr      "Value"
          IL_03aa:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
          IL_03af:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Elements(class [System.Xml.XDocument]System.Xml.Linq.XName)
          IL_03b4:  ldsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter128To129/'<>c'::'<>9__4_8'
          IL_03b9:  dup
          IL_03ba:  brtrue.s   IL_03d3

          IL_03bc:  pop
          IL_03bd:  ldsfld     class Game.VersionConverter128To129/'<>c' Game.VersionConverter128To129/'<>c'::'<>9'
          IL_03c2:  ldftn      instance bool Game.VersionConverter128To129/'<>c'::'<ConvertProjectXml>b__4_8'(class [System.Xml.XDocument]System.Xml.Linq.XElement)
          IL_03c8:  newobj     instance void class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool>::.ctor(object,
                                                                                                                                                   native int)
          IL_03cd:  dup
          IL_03ce:  stsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter128To129/'<>c'::'<>9__4_8'
          IL_03d3:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<class [System.Xml.XDocument]System.Xml.Linq.XElement>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                                    class [System.Runtime]System.Func`2<!!0,bool>)
          IL_03d8:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::GetEnumerator()
          IL_03dd:  stloc.s    V_4
          .try
          {
            IL_03df:  br.s       IL_040b

            IL_03e1:  ldloc.s    V_4
            IL_03e3:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::get_Current()
            IL_03e8:  dup
            IL_03e9:  ldstr      "Value"
            IL_03ee:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<int32>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                                   string)
            IL_03f3:  call       int32 Game.VersionConverter128To129::ConvertValue(int32)
            IL_03f8:  stloc.s    V_7
            IL_03fa:  ldstr      "Value"
            IL_03ff:  ldloc.s    V_7
            IL_0401:  box        [System.Runtime]System.Int32
            IL_0406:  call       void [EntitySystem]XmlUtilities.XmlUtils::SetAttributeValue(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                             string,
                                                                                             object)
            IL_040b:  ldloc.s    V_4
            IL_040d:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
            IL_0412:  brtrue.s   IL_03e1

            IL_0414:  leave.s    IL_0422

          }  // end .try
          finally
          {
            IL_0416:  ldloc.s    V_4
            IL_0418:  brfalse.s  IL_0421

            IL_041a:  ldloc.s    V_4
            IL_041c:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
            IL_0421:  endfinally
          }  // end handler
          IL_0422:  ldloc.3
          IL_0423:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
          IL_0428:  brtrue     IL_039f

          IL_042d:  leave.s    IL_0439

        }  // end .try
        finally
        {
          IL_042f:  ldloc.3
          IL_0430:  brfalse.s  IL_0438

          IL_0432:  ldloc.3
          IL_0433:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
          IL_0438:  endfinally
        }  // end handler
        IL_0439:  ldloc.2
        IL_043a:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
        IL_043f:  brtrue     IL_037f

        IL_0444:  leave.s    IL_0450

      }  // end .try
      finally
      {
        IL_0446:  ldloc.2
        IL_0447:  brfalse.s  IL_044f

        IL_0449:  ldloc.2
        IL_044a:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_044f:  endfinally
      }  // end handler
      IL_0450:  ldloc.1
      IL_0451:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_0456:  brtrue     IL_033b

      IL_045b:  leave.s    IL_0467

    }  // end .try
    finally
    {
      IL_045d:  ldloc.1
      IL_045e:  brfalse.s  IL_0466

      IL_0460:  ldloc.1
      IL_0461:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0466:  endfinally
    }  // end handler
    IL_0467:  ldarg.1
    IL_0468:  ldstr      "Entities"
    IL_046d:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
    IL_0472:  callvirt   instance class [System.Xml.XDocument]System.Xml.Linq.XElement [System.Xml.XDocument]System.Xml.Linq.XContainer::Element(class [System.Xml.XDocument]System.Xml.Linq.XName)
    IL_0477:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Elements()
    IL_047c:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::GetEnumerator()
    IL_0481:  stloc.1
    .try
    {
      IL_0482:  br         IL_05c5

      IL_0487:  ldloc.1
      IL_0488:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::get_Current()
      IL_048d:  ldstr      "Values"
      IL_0492:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
      IL_0497:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Elements(class [System.Xml.XDocument]System.Xml.Linq.XName)
      IL_049c:  ldsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter128To129/'<>c'::'<>9__4_9'
      IL_04a1:  dup
      IL_04a2:  brtrue.s   IL_04bb

      IL_04a4:  pop
      IL_04a5:  ldsfld     class Game.VersionConverter128To129/'<>c' Game.VersionConverter128To129/'<>c'::'<>9'
      IL_04aa:  ldftn      instance bool Game.VersionConverter128To129/'<>c'::'<ConvertProjectXml>b__4_9'(class [System.Xml.XDocument]System.Xml.Linq.XElement)
      IL_04b0:  newobj     instance void class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool>::.ctor(object,
                                                                                                                                               native int)
      IL_04b5:  dup
      IL_04b6:  stsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter128To129/'<>c'::'<>9__4_9'
      IL_04bb:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<class [System.Xml.XDocument]System.Xml.Linq.XElement>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                                class [System.Runtime]System.Func`2<!!0,bool>)
      IL_04c0:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::GetEnumerator()
      IL_04c5:  stloc.2
      .try
      {
        IL_04c6:  br         IL_05ae

        IL_04cb:  ldloc.2
        IL_04cc:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::get_Current()
        IL_04d1:  ldstr      "Values"
        IL_04d6:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
        IL_04db:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Elements(class [System.Xml.XDocument]System.Xml.Linq.XName)
        IL_04e0:  ldsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter128To129/'<>c'::'<>9__4_10'
        IL_04e5:  dup
        IL_04e6:  brtrue.s   IL_04ff

        IL_04e8:  pop
        IL_04e9:  ldsfld     class Game.VersionConverter128To129/'<>c' Game.VersionConverter128To129/'<>c'::'<>9'
        IL_04ee:  ldftn      instance bool Game.VersionConverter128To129/'<>c'::'<ConvertProjectXml>b__4_10'(class [System.Xml.XDocument]System.Xml.Linq.XElement)
        IL_04f4:  newobj     instance void class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool>::.ctor(object,
                                                                                                                                                 native int)
        IL_04f9:  dup
        IL_04fa:  stsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter128To129/'<>c'::'<>9__4_10'
        IL_04ff:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<class [System.Xml.XDocument]System.Xml.Linq.XElement>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                                  class [System.Runtime]System.Func`2<!!0,bool>)
        IL_0504:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::GetEnumerator()
        IL_0509:  stloc.3
        .try
        {
          IL_050a:  br         IL_0597

          IL_050f:  ldloc.3
          IL_0510:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::get_Current()
          IL_0515:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Elements()
          IL_051a:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::GetEnumerator()
          IL_051f:  stloc.s    V_4
          .try
          {
            IL_0521:  br.s       IL_0580

            IL_0523:  ldloc.s    V_4
            IL_0525:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::get_Current()
            IL_052a:  stloc.s    V_8
            IL_052c:  ldloc.s    V_8
            IL_052e:  ldstr      "Value"
            IL_0533:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<string>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                                    string)
            IL_0538:  stloc.s    V_9
            IL_053a:  ldc.i4.s   59
            IL_053c:  ldloc.s    V_9
            IL_053e:  call       !!0[] [Engine]Engine.Serialization.HumanReadableConverter::ValuesListFromString<int32>(char,
                                                                                                                        string)
            IL_0543:  stloc.s    V_10
            IL_0545:  ldc.i4.0
            IL_0546:  stloc.s    V_12
            IL_0548:  br.s       IL_055f

            IL_054a:  ldloc.s    V_10
            IL_054c:  ldloc.s    V_12
            IL_054e:  ldloc.s    V_10
            IL_0550:  ldloc.s    V_12
            IL_0552:  ldelem.i4
            IL_0553:  call       int32 Game.VersionConverter128To129::ConvertValue(int32)
            IL_0558:  stelem.i4
            IL_0559:  ldloc.s    V_12
            IL_055b:  ldc.i4.1
            IL_055c:  add
            IL_055d:  stloc.s    V_12
            IL_055f:  ldloc.s    V_12
            IL_0561:  ldloc.s    V_10
            IL_0563:  ldlen
            IL_0564:  conv.i4
            IL_0565:  blt.s      IL_054a

            IL_0567:  ldc.i4.s   59
            IL_0569:  ldloc.s    V_10
            IL_056b:  call       string [Engine]Engine.Serialization.HumanReadableConverter::ValuesListToString<int32>(char,
                                                                                                                       !!0[])
            IL_0570:  stloc.s    V_11
            IL_0572:  ldloc.s    V_8
            IL_0574:  ldstr      "Value"
            IL_0579:  ldloc.s    V_11
            IL_057b:  call       void [EntitySystem]XmlUtilities.XmlUtils::SetAttributeValue(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                             string,
                                                                                             object)
            IL_0580:  ldloc.s    V_4
            IL_0582:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
            IL_0587:  brtrue.s   IL_0523

            IL_0589:  leave.s    IL_0597

          }  // end .try
          finally
          {
            IL_058b:  ldloc.s    V_4
            IL_058d:  brfalse.s  IL_0596

            IL_058f:  ldloc.s    V_4
            IL_0591:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
            IL_0596:  endfinally
          }  // end handler
          IL_0597:  ldloc.3
          IL_0598:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
          IL_059d:  brtrue     IL_050f

          IL_05a2:  leave.s    IL_05ae

        }  // end .try
        finally
        {
          IL_05a4:  ldloc.3
          IL_05a5:  brfalse.s  IL_05ad

          IL_05a7:  ldloc.3
          IL_05a8:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
          IL_05ad:  endfinally
        }  // end handler
        IL_05ae:  ldloc.2
        IL_05af:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
        IL_05b4:  brtrue     IL_04cb

        IL_05b9:  leave.s    IL_05c5

      }  // end .try
      finally
      {
        IL_05bb:  ldloc.2
        IL_05bc:  brfalse.s  IL_05c4

        IL_05be:  ldloc.2
        IL_05bf:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_05c4:  endfinally
      }  // end handler
      IL_05c5:  ldloc.1
      IL_05c6:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_05cb:  brtrue     IL_0487

      IL_05d0:  leave.s    IL_05dc

    }  // end .try
    finally
    {
      IL_05d2:  ldloc.1
      IL_05d3:  brfalse.s  IL_05db

      IL_05d5:  ldloc.1
      IL_05d6:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_05db:  endfinally
    }  // end handler
    IL_05dc:  ldloc.0
    IL_05dd:  ldc.i4.6
    IL_05de:  newarr     [System.Runtime]System.String
    IL_05e3:  dup
    IL_05e4:  ldc.i4.0
    IL_05e5:  ldstr      "Inventory"
    IL_05ea:  stelem.ref
    IL_05eb:  dup
    IL_05ec:  ldc.i4.1
    IL_05ed:  ldstr      "CreativeInventory"
    IL_05f2:  stelem.ref
    IL_05f3:  dup
    IL_05f4:  ldc.i4.2
    IL_05f5:  ldstr      "CraftingTable"
    IL_05fa:  stelem.ref
    IL_05fb:  dup
    IL_05fc:  ldc.i4.3
    IL_05fd:  ldstr      "Chest"
    IL_0602:  stelem.ref
    IL_0603:  dup
    IL_0604:  ldc.i4.4
    IL_0605:  ldstr      "Furnace"
    IL_060a:  stelem.ref
    IL_060b:  dup
    IL_060c:  ldc.i4.5
    IL_060d:  ldstr      "Dispenser"
    IL_0612:  stelem.ref
    IL_0613:  stfld      string[] Game.VersionConverter128To129/'<>c__DisplayClass4_0'::inventoryNames
    IL_0618:  ldarg.1
    IL_0619:  ldstr      "Entities"
    IL_061e:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
    IL_0623:  callvirt   instance class [System.Xml.XDocument]System.Xml.Linq.XElement [System.Xml.XDocument]System.Xml.Linq.XContainer::Element(class [System.Xml.XDocument]System.Xml.Linq.XName)
    IL_0628:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Elements()
    IL_062d:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::GetEnumerator()
    IL_0632:  stloc.1
    .try
    {
      IL_0633:  br         IL_07a5

      IL_0638:  ldloc.1
      IL_0639:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::get_Current()
      IL_063e:  ldstr      "Values"
      IL_0643:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
      IL_0648:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Elements(class [System.Xml.XDocument]System.Xml.Linq.XName)
      IL_064d:  ldloc.0
      IL_064e:  ldfld      class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter128To129/'<>c__DisplayClass4_0'::'<>9__11'
      IL_0653:  dup
      IL_0654:  brtrue.s   IL_066e

      IL_0656:  pop
      IL_0657:  ldloc.0
      IL_0658:  ldloc.0
      IL_0659:  ldftn      instance bool Game.VersionConverter128To129/'<>c__DisplayClass4_0'::'<ConvertProjectXml>b__11'(class [System.Xml.XDocument]System.Xml.Linq.XElement)
      IL_065f:  newobj     instance void class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool>::.ctor(object,
                                                                                                                                               native int)
      IL_0664:  dup
      IL_0665:  stloc.s    V_13
      IL_0667:  stfld      class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter128To129/'<>c__DisplayClass4_0'::'<>9__11'
      IL_066c:  ldloc.s    V_13
      IL_066e:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<class [System.Xml.XDocument]System.Xml.Linq.XElement>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                                class [System.Runtime]System.Func`2<!!0,bool>)
      IL_0673:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::GetEnumerator()
      IL_0678:  stloc.2
      .try
      {
        IL_0679:  br         IL_078e

        IL_067e:  ldloc.2
        IL_067f:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::get_Current()
        IL_0684:  ldstr      "Values"
        IL_0689:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
        IL_068e:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Elements(class [System.Xml.XDocument]System.Xml.Linq.XName)
        IL_0693:  ldsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter128To129/'<>c'::'<>9__4_12'
        IL_0698:  dup
        IL_0699:  brtrue.s   IL_06b2

        IL_069b:  pop
        IL_069c:  ldsfld     class Game.VersionConverter128To129/'<>c' Game.VersionConverter128To129/'<>c'::'<>9'
        IL_06a1:  ldftn      instance bool Game.VersionConverter128To129/'<>c'::'<ConvertProjectXml>b__4_12'(class [System.Xml.XDocument]System.Xml.Linq.XElement)
        IL_06a7:  newobj     instance void class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool>::.ctor(object,
                                                                                                                                                 native int)
        IL_06ac:  dup
        IL_06ad:  stsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter128To129/'<>c'::'<>9__4_12'
        IL_06b2:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<class [System.Xml.XDocument]System.Xml.Linq.XElement>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                                  class [System.Runtime]System.Func`2<!!0,bool>)
        IL_06b7:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::GetEnumerator()
        IL_06bc:  stloc.3
        .try
        {
          IL_06bd:  br         IL_0777

          IL_06c2:  ldloc.3
          IL_06c3:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::get_Current()
          IL_06c8:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Elements()
          IL_06cd:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::GetEnumerator()
          IL_06d2:  stloc.s    V_4
          .try
          {
            IL_06d4:  br         IL_075d

            IL_06d9:  ldloc.s    V_4
            IL_06db:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::get_Current()
            IL_06e0:  ldstr      "Value"
            IL_06e5:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
            IL_06ea:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Elements(class [System.Xml.XDocument]System.Xml.Linq.XName)
            IL_06ef:  ldsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter128To129/'<>c'::'<>9__4_13'
            IL_06f4:  dup
            IL_06f5:  brtrue.s   IL_070e

            IL_06f7:  pop
            IL_06f8:  ldsfld     class Game.VersionConverter128To129/'<>c' Game.VersionConverter128To129/'<>c'::'<>9'
            IL_06fd:  ldftn      instance bool Game.VersionConverter128To129/'<>c'::'<ConvertProjectXml>b__4_13'(class [System.Xml.XDocument]System.Xml.Linq.XElement)
            IL_0703:  newobj     instance void class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool>::.ctor(object,
                                                                                                                                                     native int)
            IL_0708:  dup
            IL_0709:  stsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter128To129/'<>c'::'<>9__4_13'
            IL_070e:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<class [System.Xml.XDocument]System.Xml.Linq.XElement>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                                      class [System.Runtime]System.Func`2<!!0,bool>)
            IL_0713:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::GetEnumerator()
            IL_0718:  stloc.s    V_14
            .try
            {
              IL_071a:  br.s       IL_0746

              IL_071c:  ldloc.s    V_14
              IL_071e:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::get_Current()
              IL_0723:  dup
              IL_0724:  ldstr      "Value"
              IL_0729:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<int32>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                                     string)
              IL_072e:  call       int32 Game.VersionConverter128To129::ConvertValue(int32)
              IL_0733:  stloc.s    V_15
              IL_0735:  ldstr      "Value"
              IL_073a:  ldloc.s    V_15
              IL_073c:  box        [System.Runtime]System.Int32
              IL_0741:  call       void [EntitySystem]XmlUtilities.XmlUtils::SetAttributeValue(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                               string,
                                                                                               object)
              IL_0746:  ldloc.s    V_14
              IL_0748:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
              IL_074d:  brtrue.s   IL_071c

              IL_074f:  leave.s    IL_075d

            }  // end .try
            finally
            {
              IL_0751:  ldloc.s    V_14
              IL_0753:  brfalse.s  IL_075c

              IL_0755:  ldloc.s    V_14
              IL_0757:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
              IL_075c:  endfinally
            }  // end handler
            IL_075d:  ldloc.s    V_4
            IL_075f:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
            IL_0764:  brtrue     IL_06d9

            IL_0769:  leave.s    IL_0777

          }  // end .try
          finally
          {
            IL_076b:  ldloc.s    V_4
            IL_076d:  brfalse.s  IL_0776

            IL_076f:  ldloc.s    V_4
            IL_0771:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
            IL_0776:  endfinally
          }  // end handler
          IL_0777:  ldloc.3
          IL_0778:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
          IL_077d:  brtrue     IL_06c2

          IL_0782:  leave.s    IL_078e

        }  // end .try
        finally
        {
          IL_0784:  ldloc.3
          IL_0785:  brfalse.s  IL_078d

          IL_0787:  ldloc.3
          IL_0788:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
          IL_078d:  endfinally
        }  // end handler
        IL_078e:  ldloc.2
        IL_078f:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
        IL_0794:  brtrue     IL_067e

        IL_0799:  leave.s    IL_07a5

      }  // end .try
      finally
      {
        IL_079b:  ldloc.2
        IL_079c:  brfalse.s  IL_07a4

        IL_079e:  ldloc.2
        IL_079f:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_07a4:  endfinally
      }  // end handler
      IL_07a5:  ldloc.1
      IL_07a6:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_07ab:  brtrue     IL_0638

      IL_07b0:  leave.s    IL_07bc

    }  // end .try
    finally
    {
      IL_07b2:  ldloc.1
      IL_07b3:  brfalse.s  IL_07bb

      IL_07b5:  ldloc.1
      IL_07b6:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_07bb:  endfinally
    }  // end handler
    IL_07bc:  ret
  } // end of method VersionConverter128To129::ConvertProjectXml

  .method public hidebysig virtual instance void 
          ConvertWorld(string directoryName) cil managed
  {
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void Game.VersionConverter128To129::ConvertProject(string)
    IL_0007:  ldarg.0
    IL_0008:  ldarg.1
    IL_0009:  call       instance void Game.VersionConverter128To129::ConvertChunks(string)
    IL_000e:  ret
  } // end of method VersionConverter128To129::ConvertWorld

  .method private hidebysig instance void 
          ConvertProject(string directoryName) cil managed
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
  } // end of method VersionConverter128To129::ConvertProject

  .method private hidebysig instance void 
          ConvertChunks(string directoryName) cil managed
  {
    // 代码大小       548 (0x224)
    .maxstack  4
    .locals init (string V_0,
             string V_1,
             class [System.IO]System.IO.Stream V_2,
             class [System.IO]System.IO.Stream V_3,
             uint8[] V_4,
             uint8[] V_5,
             int32 V_6,
             int32 V_7,
             int32 V_8,
             int32 V_9,
             int32 V_10,
             int32 V_11,
             int32 V_12,
             int32 V_13,
             int32 V_14,
             int32 V_15,
             int32 V_16,
             int32 V_17,
             int32 V_18)
    IL_0000:  ldc.i4.2
    IL_0001:  newarr     [System.Runtime]System.String
    IL_0006:  dup
    IL_0007:  ldc.i4.0
    IL_0008:  ldarg.1
    IL_0009:  stelem.ref
    IL_000a:  dup
    IL_000b:  ldc.i4.1
    IL_000c:  ldstr      "Chunks.dat"
    IL_0011:  stelem.ref
    IL_0012:  call       string [Engine]Engine.Storage::CombinePaths(string[])
    IL_0017:  stloc.0
    IL_0018:  ldc.i4.2
    IL_0019:  newarr     [System.Runtime]System.String
    IL_001e:  dup
    IL_001f:  ldc.i4.0
    IL_0020:  ldarg.1
    IL_0021:  stelem.ref
    IL_0022:  dup
    IL_0023:  ldc.i4.1
    IL_0024:  ldstr      "Chunks32.dat"
    IL_0029:  stelem.ref
    IL_002a:  call       string [Engine]Engine.Storage::CombinePaths(string[])
    IL_002f:  stloc.1
    IL_0030:  ldloc.0
    IL_0031:  ldc.i4.0
    IL_0032:  call       class [System.IO]System.IO.Stream [Engine]Engine.Storage::OpenFile(string,
                                                                                            valuetype [Engine]Engine.OpenFileMode)
    IL_0037:  stloc.2
    .try
    {
      IL_0038:  ldloc.1
      IL_0039:  ldc.i4.2
      IL_003a:  call       class [System.IO]System.IO.Stream [Engine]Engine.Storage::OpenFile(string,
                                                                                              valuetype [Engine]Engine.OpenFileMode)
      IL_003f:  stloc.3
      .try
      {
        IL_0040:  ldc.i4     0x10000
        IL_0045:  newarr     [System.Runtime]System.Byte
        IL_004a:  stloc.s    V_4
        IL_004c:  ldc.i4     0x20000
        IL_0051:  newarr     [System.Runtime]System.Byte
        IL_0056:  stloc.s    V_5
        IL_0058:  ldc.i4.0
        IL_0059:  stloc.s    V_6
        IL_005b:  br.s       IL_006c

        IL_005d:  ldloc.3
        IL_005e:  ldc.i4.0
        IL_005f:  ldc.i4.0
        IL_0060:  ldc.i4.m1
        IL_0061:  call       void Game.TerrainSerializer129::WriteTOCEntry(class [System.IO]System.IO.Stream,
                                                                           int32,
                                                                           int32,
                                                                           int32)
        IL_0066:  ldloc.s    V_6
        IL_0068:  ldc.i4.1
        IL_0069:  add
        IL_006a:  stloc.s    V_6
        IL_006c:  ldloc.s    V_6
        IL_006e:  ldc.i4     0x10001
        IL_0073:  blt.s      IL_005d

        IL_0075:  ldc.i4.0
        IL_0076:  stloc.s    V_7
        IL_0078:  ldloc.2
        IL_0079:  ldc.i4.s   12
        IL_007b:  ldloc.s    V_7
        IL_007d:  mul
        IL_007e:  conv.i8
        IL_007f:  callvirt   instance void [System.IO]System.IO.Stream::set_Position(int64)
        IL_0084:  ldloc.2
        IL_0085:  ldloca.s   V_8
        IL_0087:  ldloca.s   V_9
        IL_0089:  ldloca.s   V_10
        IL_008b:  call       void Game.TerrainSerializer14::ReadTOCEntry(class [System.IO]System.IO.Stream,
                                                                         int32&,
                                                                         int32&,
                                                                         int32&)
        IL_0090:  ldloc.s    V_10
        IL_0092:  brfalse    IL_0207

        IL_0097:  ldloc.3
        IL_0098:  ldc.i4.s   12
        IL_009a:  ldloc.s    V_7
        IL_009c:  mul
        IL_009d:  conv.i8
        IL_009e:  callvirt   instance void [System.IO]System.IO.Stream::set_Position(int64)
        IL_00a3:  ldloc.3
        IL_00a4:  ldloc.s    V_8
        IL_00a6:  ldloc.s    V_9
        IL_00a8:  ldloc.s    V_7
        IL_00aa:  call       void Game.TerrainSerializer129::WriteTOCEntry(class [System.IO]System.IO.Stream,
                                                                           int32,
                                                                           int32,
                                                                           int32)
        IL_00af:  ldloc.2
        IL_00b0:  ldloc.s    V_10
        IL_00b2:  conv.i8
        IL_00b3:  callvirt   instance void [System.IO]System.IO.Stream::set_Position(int64)
        IL_00b8:  ldloc.3
        IL_00b9:  ldloc.3
        IL_00ba:  callvirt   instance int64 [System.IO]System.IO.Stream::get_Length()
        IL_00bf:  callvirt   instance void [System.IO]System.IO.Stream::set_Position(int64)
        IL_00c4:  ldloc.2
        IL_00c5:  call       void Game.TerrainSerializer14::ReadChunkHeader(class [System.IO]System.IO.Stream)
        IL_00ca:  ldloc.3
        IL_00cb:  ldloc.s    V_8
        IL_00cd:  ldloc.s    V_9
        IL_00cf:  call       void Game.TerrainSerializer129::WriteChunkHeader(class [System.IO]System.IO.Stream,
                                                                              int32,
                                                                              int32)
        IL_00d4:  ldloc.2
        IL_00d5:  ldloc.s    V_4
        IL_00d7:  ldc.i4.0
        IL_00d8:  ldc.i4     0x10000
        IL_00dd:  callvirt   instance int32 [System.IO]System.IO.Stream::Read(uint8[],
                                                                              int32,
                                                                              int32)
        IL_00e2:  pop
        IL_00e3:  ldc.i4.0
        IL_00e4:  stloc.s    V_11
        IL_00e6:  ldc.i4.0
        IL_00e7:  stloc.s    V_12
        IL_00e9:  br         IL_01c8

        IL_00ee:  ldc.i4.0
        IL_00ef:  stloc.s    V_13
        IL_00f1:  br         IL_01b9

        IL_00f6:  ldc.i4.0
        IL_00f7:  stloc.s    V_14
        IL_00f9:  br         IL_01a7

        IL_00fe:  ldloc.s    V_4
        IL_0100:  ldc.i4.2
        IL_0101:  ldloc.s    V_11
        IL_0103:  mul
        IL_0104:  ldelem.u1
        IL_0105:  ldloc.s    V_4
        IL_0107:  ldc.i4.2
        IL_0108:  ldloc.s    V_11
        IL_010a:  mul
        IL_010b:  ldc.i4.1
        IL_010c:  add
        IL_010d:  ldelem.u1
        IL_010e:  ldc.i4.8
        IL_010f:  shl
        IL_0110:  or
        IL_0111:  stloc.s    V_15
        IL_0113:  ldloc.s    V_15
        IL_0115:  call       int32 Game.VersionConverter128To129::ConvertValue(int32)
        IL_011a:  stloc.s    V_16
        IL_011c:  ldloc.s    V_14
        IL_011e:  ldc.i4.s   127
        IL_0120:  bge.s      IL_0165

        IL_0122:  ldloc.s    V_15
        IL_0124:  ldc.i4     0xff
        IL_0129:  and
        IL_012a:  stloc.s    V_17
        IL_012c:  ldloc.s    V_17
        IL_012e:  ldc.i4.s   18
        IL_0130:  beq.s      IL_0138

        IL_0132:  ldloc.s    V_17
        IL_0134:  ldc.i4.s   92
        IL_0136:  bne.un.s   IL_0165

        IL_0138:  ldloc.s    V_4
        IL_013a:  ldc.i4.2
        IL_013b:  ldloc.s    V_11
        IL_013d:  mul
        IL_013e:  ldc.i4.2
        IL_013f:  add
        IL_0140:  ldelem.u1
        IL_0141:  ldloc.s    V_4
        IL_0143:  ldc.i4.2
        IL_0144:  ldloc.s    V_11
        IL_0146:  mul
        IL_0147:  ldc.i4.3
        IL_0148:  add
        IL_0149:  ldelem.u1
        IL_014a:  ldc.i4.8
        IL_014b:  shl
        IL_014c:  or
        IL_014d:  ldc.i4     0xff
        IL_0152:  and
        IL_0153:  stloc.s    V_18
        IL_0155:  ldloc.s    V_17
        IL_0157:  ldloc.s    V_18
        IL_0159:  beq.s      IL_0165

        IL_015b:  ldloc.s    V_16
        IL_015d:  ldc.i4     0x40000
        IL_0162:  or
        IL_0163:  stloc.s    V_16
        IL_0165:  ldloc.s    V_5
        IL_0167:  ldc.i4.4
        IL_0168:  ldloc.s    V_11
        IL_016a:  mul
        IL_016b:  ldloc.s    V_16
        IL_016d:  conv.u1
        IL_016e:  stelem.i1
        IL_016f:  ldloc.s    V_5
        IL_0171:  ldc.i4.4
        IL_0172:  ldloc.s    V_11
        IL_0174:  mul
        IL_0175:  ldc.i4.1
        IL_0176:  add
        IL_0177:  ldloc.s    V_16
        IL_0179:  ldc.i4.8
        IL_017a:  shr
        IL_017b:  conv.u1
        IL_017c:  stelem.i1
        IL_017d:  ldloc.s    V_5
        IL_017f:  ldc.i4.4
        IL_0180:  ldloc.s    V_11
        IL_0182:  mul
        IL_0183:  ldc.i4.2
        IL_0184:  add
        IL_0185:  ldloc.s    V_16
        IL_0187:  ldc.i4.s   16
        IL_0189:  shr
        IL_018a:  conv.u1
        IL_018b:  stelem.i1
        IL_018c:  ldloc.s    V_5
        IL_018e:  ldc.i4.4
        IL_018f:  ldloc.s    V_11
        IL_0191:  mul
        IL_0192:  ldc.i4.3
        IL_0193:  add
        IL_0194:  ldloc.s    V_16
        IL_0196:  ldc.i4.s   24
        IL_0198:  shr
        IL_0199:  conv.u1
        IL_019a:  stelem.i1
        IL_019b:  ldloc.s    V_11
        IL_019d:  ldc.i4.1
        IL_019e:  add
        IL_019f:  stloc.s    V_11
        IL_01a1:  ldloc.s    V_14
        IL_01a3:  ldc.i4.1
        IL_01a4:  add
        IL_01a5:  stloc.s    V_14
        IL_01a7:  ldloc.s    V_14
        IL_01a9:  ldc.i4     0x80
        IL_01ae:  blt        IL_00fe

        IL_01b3:  ldloc.s    V_13
        IL_01b5:  ldc.i4.1
        IL_01b6:  add
        IL_01b7:  stloc.s    V_13
        IL_01b9:  ldloc.s    V_13
        IL_01bb:  ldc.i4.s   16
        IL_01bd:  blt        IL_00f6

        IL_01c2:  ldloc.s    V_12
        IL_01c4:  ldc.i4.1
        IL_01c5:  add
        IL_01c6:  stloc.s    V_12
        IL_01c8:  ldloc.s    V_12
        IL_01ca:  ldc.i4.s   16
        IL_01cc:  blt        IL_00ee

        IL_01d1:  ldloc.3
        IL_01d2:  ldloc.s    V_5
        IL_01d4:  ldc.i4.0
        IL_01d5:  ldc.i4     0x20000
        IL_01da:  callvirt   instance void [System.IO]System.IO.Stream::Write(uint8[],
                                                                              int32,
                                                                              int32)
        IL_01df:  ldloc.2
        IL_01e0:  ldloc.s    V_4
        IL_01e2:  ldc.i4.0
        IL_01e3:  ldc.i4     0x400
        IL_01e8:  callvirt   instance int32 [System.IO]System.IO.Stream::Read(uint8[],
                                                                              int32,
                                                                              int32)
        IL_01ed:  pop
        IL_01ee:  ldloc.3
        IL_01ef:  ldloc.s    V_4
        IL_01f1:  ldc.i4.0
        IL_01f2:  ldc.i4     0x400
        IL_01f7:  callvirt   instance void [System.IO]System.IO.Stream::Write(uint8[],
                                                                              int32,
                                                                              int32)
        IL_01fc:  ldloc.s    V_7
        IL_01fe:  ldc.i4.1
        IL_01ff:  add
        IL_0200:  stloc.s    V_7
        IL_0202:  br         IL_0078

        IL_0207:  leave.s    IL_021d

      }  // end .try
      finally
      {
        IL_0209:  ldloc.3
        IL_020a:  brfalse.s  IL_0212

        IL_020c:  ldloc.3
        IL_020d:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_0212:  endfinally
      }  // end handler
    }  // end .try
    finally
    {
      IL_0213:  ldloc.2
      IL_0214:  brfalse.s  IL_021c

      IL_0216:  ldloc.2
      IL_0217:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_021c:  endfinally
    }  // end handler
    IL_021d:  ldloc.0
    IL_021e:  call       void [Engine]Engine.Storage::DeleteFile(string)
    IL_0223:  ret
  } // end of method VersionConverter128To129::ConvertChunks

  .method private hidebysig static int32 
          ConvertValue(int32 'value') cil managed
  {
    // 代码大小       43 (0x2b)
    .maxstack  3
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4     0xff
    IL_0006:  and
    IL_0007:  stloc.0
    IL_0008:  ldarg.0
    IL_0009:  ldc.i4.8
    IL_000a:  shr
    IL_000b:  ldc.i4.s   15
    IL_000d:  and
    IL_000e:  stloc.1
    IL_000f:  ldarg.0
    IL_0010:  ldc.i4.s   12
    IL_0012:  shr
    IL_0013:  stloc.2
    IL_0014:  ldloca.s   V_0
    IL_0016:  ldloca.s   V_1
    IL_0018:  ldloca.s   V_2
    IL_001a:  call       void Game.VersionConverter128To129::ConvertContentsLightData(int32&,
                                                                                      int32&,
                                                                                      int32&)
    IL_001f:  ldloc.0
    IL_0020:  ldloc.1
    IL_0021:  ldc.i4.s   10
    IL_0023:  shl
    IL_0024:  or
    IL_0025:  ldloc.2
    IL_0026:  ldc.i4.s   14
    IL_0028:  shl
    IL_0029:  or
    IL_002a:  ret
  } // end of method VersionConverter128To129::ConvertValue

  .method private hidebysig static void  ConvertContentsLightData(int32& contents,
                                                                  int32& light,
                                                                  int32& data) cil managed
  {
    // 代码大小       284 (0x11c)
    .maxstack  4
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7)
    IL_0000:  ldarg.0
    IL_0001:  ldind.i4
    IL_0002:  ldc.i4     0x85
    IL_0007:  blt.s      IL_0029

    IL_0009:  ldarg.0
    IL_000a:  ldind.i4
    IL_000b:  ldc.i4     0x88
    IL_0010:  bgt.s      IL_0029

    IL_0012:  ldarg.2
    IL_0013:  ldarg.2
    IL_0014:  ldind.i4
    IL_0015:  ldarg.0
    IL_0016:  ldind.i4
    IL_0017:  ldc.i4     0x85
    IL_001c:  sub
    IL_001d:  ldc.i4.4
    IL_001e:  shl
    IL_001f:  or
    IL_0020:  stind.i4
    IL_0021:  ldarg.0
    IL_0022:  ldc.i4     0x85
    IL_0027:  stind.i4
    IL_0028:  ret

    IL_0029:  ldarg.0
    IL_002a:  ldind.i4
    IL_002b:  ldc.i4     0x98
    IL_0030:  bne.un.s   IL_004c

    IL_0032:  ldarg.2
    IL_0033:  ldind.i4
    IL_0034:  ldc.i4.1
    IL_0035:  and
    IL_0036:  ldarg.2
    IL_0037:  ldind.i4
    IL_0038:  ldc.i4.1
    IL_0039:  shr
    IL_003a:  ldc.i4.7
    IL_003b:  and
    IL_003c:  stloc.0
    IL_003d:  brfalse.s  IL_0042

    IL_003f:  ldc.i4.5
    IL_0040:  br.s       IL_0043

    IL_0042:  ldc.i4.2
    IL_0043:  stloc.1
    IL_0044:  ldarg.2
    IL_0045:  ldloc.0
    IL_0046:  ldloc.1
    IL_0047:  ldc.i4.3
    IL_0048:  shl
    IL_0049:  or
    IL_004a:  stind.i4
    IL_004b:  ret

    IL_004c:  ldarg.0
    IL_004d:  ldind.i4
    IL_004e:  ldc.i4     0xb6
    IL_0053:  bne.un.s   IL_006f

    IL_0055:  ldarg.2
    IL_0056:  ldind.i4
    IL_0057:  ldc.i4.1
    IL_0058:  and
    IL_0059:  ldarg.2
    IL_005a:  ldind.i4
    IL_005b:  ldc.i4.1
    IL_005c:  shr
    IL_005d:  ldc.i4.7
    IL_005e:  and
    IL_005f:  stloc.2
    IL_0060:  brfalse.s  IL_0065

    IL_0062:  ldc.i4.0
    IL_0063:  br.s       IL_0066

    IL_0065:  ldc.i4.3
    IL_0066:  stloc.3
    IL_0067:  ldarg.2
    IL_0068:  ldloc.2
    IL_0069:  ldloc.3
    IL_006a:  ldc.i4.3
    IL_006b:  shl
    IL_006c:  or
    IL_006d:  stind.i4
    IL_006e:  ret

    IL_006f:  ldarg.0
    IL_0070:  ldind.i4
    IL_0071:  ldc.i4     0xb9
    IL_0076:  bne.un.s   IL_00a4

    IL_0078:  ldarg.2
    IL_0079:  ldind.i4
    IL_007a:  ldc.i4.3
    IL_007b:  and
    IL_007c:  ldarg.2
    IL_007d:  ldind.i4
    IL_007e:  ldc.i4.2
    IL_007f:  shr
    IL_0080:  ldc.i4.3
    IL_0081:  and
    IL_0082:  stloc.s    V_4
    IL_0084:  ldc.i4.0
    IL_0085:  stloc.s    V_5
    IL_0087:  dup
    IL_0088:  brtrue.s   IL_008d

    IL_008a:  ldc.i4.2
    IL_008b:  stloc.s    V_5
    IL_008d:  dup
    IL_008e:  ldc.i4.1
    IL_008f:  bne.un.s   IL_0094

    IL_0091:  ldc.i4.5
    IL_0092:  stloc.s    V_5
    IL_0094:  ldc.i4.2
    IL_0095:  bne.un.s   IL_009a

    IL_0097:  ldc.i4.3
    IL_0098:  stloc.s    V_5
    IL_009a:  ldarg.2
    IL_009b:  ldloc.s    V_4
    IL_009d:  ldloc.s    V_5
    IL_009f:  ldc.i4.3
    IL_00a0:  shl
    IL_00a1:  or
    IL_00a2:  stind.i4
    IL_00a3:  ret

    IL_00a4:  ldarg.0
    IL_00a5:  ldind.i4
    IL_00a6:  ldc.i4     0x8b
    IL_00ab:  bne.un.s   IL_00c8

    IL_00ad:  ldarg.2
    IL_00ae:  ldind.i4
    IL_00af:  ldc.i4.1
    IL_00b0:  and
    IL_00b1:  ldarg.2
    IL_00b2:  ldind.i4
    IL_00b3:  ldc.i4.1
    IL_00b4:  shr
    IL_00b5:  ldc.i4.7
    IL_00b6:  and
    IL_00b7:  stloc.s    V_6
    IL_00b9:  ldc.i4.s   15
    IL_00bb:  mul
    IL_00bc:  stloc.s    V_7
    IL_00be:  ldarg.2
    IL_00bf:  ldloc.s    V_6
    IL_00c1:  ldloc.s    V_7
    IL_00c3:  ldc.i4.3
    IL_00c4:  shl
    IL_00c5:  or
    IL_00c6:  stind.i4
    IL_00c7:  ret

    IL_00c8:  ldarg.0
    IL_00c9:  ldind.i4
    IL_00ca:  ldc.i4     0x80
    IL_00cf:  bne.un.s   IL_00dd

    IL_00d1:  ldarg.0
    IL_00d2:  ldc.i4.s   21
    IL_00d4:  stind.i4
    IL_00d5:  ldarg.2
    IL_00d6:  ldarg.2
    IL_00d7:  ldind.i4
    IL_00d8:  ldc.i4.1
    IL_00d9:  shl
    IL_00da:  ldc.i4.1
    IL_00db:  or
    IL_00dc:  stind.i4
    IL_00dd:  ldarg.0
    IL_00de:  ldind.i4
    IL_00df:  ldc.i4     0xa3
    IL_00e4:  bne.un.s   IL_00f1

    IL_00e6:  ldarg.0
    IL_00e7:  ldc.i4.3
    IL_00e8:  stind.i4
    IL_00e9:  ldarg.2
    IL_00ea:  ldarg.2
    IL_00eb:  ldind.i4
    IL_00ec:  ldc.i4.1
    IL_00ed:  shl
    IL_00ee:  ldc.i4.1
    IL_00ef:  or
    IL_00f0:  stind.i4
    IL_00f1:  ldarg.0
    IL_00f2:  ldind.i4
    IL_00f3:  ldc.i4     0xa4
    IL_00f8:  bne.un.s   IL_0106

    IL_00fa:  ldarg.0
    IL_00fb:  ldc.i4.s   73
    IL_00fd:  stind.i4
    IL_00fe:  ldarg.2
    IL_00ff:  ldarg.2
    IL_0100:  ldind.i4
    IL_0101:  ldc.i4.1
    IL_0102:  shl
    IL_0103:  ldc.i4.1
    IL_0104:  or
    IL_0105:  stind.i4
    IL_0106:  ldarg.0
    IL_0107:  ldind.i4
    IL_0108:  ldc.i4     0xa5
    IL_010d:  bne.un.s   IL_011b

    IL_010f:  ldarg.0
    IL_0110:  ldc.i4.s   67
    IL_0112:  stind.i4
    IL_0113:  ldarg.2
    IL_0114:  ldarg.2
    IL_0115:  ldind.i4
    IL_0116:  ldc.i4.1
    IL_0117:  shl
    IL_0118:  ldc.i4.1
    IL_0119:  or
    IL_011a:  stind.i4
    IL_011b:  ret
  } // end of method VersionConverter128To129::ConvertContentsLightData

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.VersionConverter::.ctor()
    IL_0006:  ret
  } // end of method VersionConverter128To129::.ctor

  .property instance string SourceVersion()
  {
    .get instance string Game.VersionConverter128To129::get_SourceVersion()
  } // end of property VersionConverter128To129::SourceVersion
  .property instance string TargetVersion()
  {
    .get instance string Game.VersionConverter128To129::get_TargetVersion()
  } // end of property VersionConverter128To129::TargetVersion
} // end of class Game.VersionConverter128To129