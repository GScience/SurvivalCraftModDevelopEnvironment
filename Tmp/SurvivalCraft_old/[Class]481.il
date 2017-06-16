.class public auto ansi beforefieldinit Game.VersionConverter128To129
       extends Game.VersionConverter
{
  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass5_0'
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
    } // end of method '<>c__DisplayClass5_0'::.ctor

    .method assembly hidebysig instance bool 
            '<ConvertProject>b__11'(class [System.Xml.XDocument]System.Xml.Linq.XElement e) cil managed
    {
      // 代码大小       28 (0x1c)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      string[] Game.VersionConverter128To129/'<>c__DisplayClass5_0'::inventoryNames
      IL_0006:  ldarg.1
      IL_0007:  ldstr      "Name"
      IL_000c:  ldsfld     string [System.Runtime]System.String::Empty
      IL_0011:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<string>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                              string,
                                                                                              !!0)
      IL_0016:  call       bool [System.Linq]System.Linq.Enumerable::Contains<string>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                      !!0)
      IL_001b:  ret
    } // end of method '<>c__DisplayClass5_0'::'<ConvertProject>b__11'

  } // end of class '<>c__DisplayClass5_0'

  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.VersionConverter128To129/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> '<>9__5_0'
    .field public static class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> '<>9__5_1'
    .field public static class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> '<>9__5_2'
    .field public static class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> '<>9__5_3'
    .field public static class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> '<>9__5_4'
    .field public static class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> '<>9__5_5'
    .field public static class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> '<>9__5_6'
    .field public static class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> '<>9__5_7'
    .field public static class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> '<>9__5_8'
    .field public static class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> '<>9__5_9'
    .field public static class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> '<>9__5_10'
    .field public static class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> '<>9__5_12'
    .field public static class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> '<>9__5_13'
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
            '<ConvertProject>b__5_0'(class [System.Xml.XDocument]System.Xml.Linq.XElement e) cil managed
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
    } // end of method '<>c'::'<ConvertProject>b__5_0'

    .method assembly hidebysig instance bool 
            '<ConvertProject>b__5_1'(class [System.Xml.XDocument]System.Xml.Linq.XElement e) cil managed
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
    } // end of method '<>c'::'<ConvertProject>b__5_1'

    .method assembly hidebysig instance bool 
            '<ConvertProject>b__5_2'(class [System.Xml.XDocument]System.Xml.Linq.XElement e) cil managed
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
    } // end of method '<>c'::'<ConvertProject>b__5_2'

    .method assembly hidebysig instance bool 
            '<ConvertProject>b__5_3'(class [System.Xml.XDocument]System.Xml.Linq.XElement e) cil managed
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
    } // end of method '<>c'::'<ConvertProject>b__5_3'

    .method assembly hidebysig instance bool 
            '<ConvertProject>b__5_4'(class [System.Xml.XDocument]System.Xml.Linq.XElement e) cil managed
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
    } // end of method '<>c'::'<ConvertProject>b__5_4'

    .method assembly hidebysig instance bool 
            '<ConvertProject>b__5_5'(class [System.Xml.XDocument]System.Xml.Linq.XElement e) cil managed
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
    } // end of method '<>c'::'<ConvertProject>b__5_5'

    .method assembly hidebysig instance bool 
            '<ConvertProject>b__5_6'(class [System.Xml.XDocument]System.Xml.Linq.XElement e) cil managed
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
    } // end of method '<>c'::'<ConvertProject>b__5_6'

    .method assembly hidebysig instance bool 
            '<ConvertProject>b__5_7'(class [System.Xml.XDocument]System.Xml.Linq.XElement e) cil managed
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
    } // end of method '<>c'::'<ConvertProject>b__5_7'

    .method assembly hidebysig instance bool 
            '<ConvertProject>b__5_8'(class [System.Xml.XDocument]System.Xml.Linq.XElement e) cil managed
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
    } // end of method '<>c'::'<ConvertProject>b__5_8'

    .method assembly hidebysig instance bool 
            '<ConvertProject>b__5_9'(class [System.Xml.XDocument]System.Xml.Linq.XElement e) cil managed
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
    } // end of method '<>c'::'<ConvertProject>b__5_9'

    .method assembly hidebysig instance bool 
            '<ConvertProject>b__5_10'(class [System.Xml.XDocument]System.Xml.Linq.XElement e) cil managed
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
    } // end of method '<>c'::'<ConvertProject>b__5_10'

    .method assembly hidebysig instance bool 
            '<ConvertProject>b__5_12'(class [System.Xml.XDocument]System.Xml.Linq.XElement e) cil managed
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
    } // end of method '<>c'::'<ConvertProject>b__5_12'

    .method assembly hidebysig instance bool 
            '<ConvertProject>b__5_13'(class [System.Xml.XDocument]System.Xml.Linq.XElement e) cil managed
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
    } // end of method '<>c'::'<ConvertProject>b__5_13'

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
    // 代码大小       2142 (0x85e)
    .maxstack  5
    .locals init (class Game.VersionConverter128To129/'<>c__DisplayClass5_0' V_0,
             string V_1,
             class [System.Xml.XDocument]System.Xml.Linq.XElement V_2,
             class [System.IO]System.IO.Stream V_3,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> V_4,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> V_5,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> V_6,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> V_7,
             int32 V_8,
             int32 V_9,
             int32 V_10,
             class [System.Xml.XDocument]System.Xml.Linq.XElement V_11,
             string V_12,
             int32[] V_13,
             string V_14,
             int32 V_15,
             class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> V_16,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> V_17,
             int32 V_18,
             class [System.IO]System.IO.Stream V_19)
    IL_0000:  newobj     instance void Game.VersionConverter128To129/'<>c__DisplayClass5_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldc.i4.2
    IL_0007:  newarr     [System.Runtime]System.String
    IL_000c:  dup
    IL_000d:  ldc.i4.0
    IL_000e:  ldarg.1
    IL_000f:  stelem.ref
    IL_0010:  dup
    IL_0011:  ldc.i4.1
    IL_0012:  ldstr      "Project.xml"
    IL_0017:  stelem.ref
    IL_0018:  call       string [Engine]Engine.Storage::CombinePaths(string[])
    IL_001d:  stloc.1
    IL_001e:  ldloc.1
    IL_001f:  ldc.i4.0
    IL_0020:  call       class [System.IO]System.IO.Stream [Engine]Engine.Storage::OpenFile(string,
                                                                                            valuetype [Engine]Engine.OpenFileMode)
    IL_0025:  stloc.3
    .try
    {
      IL_0026:  ldloc.3
      IL_0027:  ldnull
      IL_0028:  ldc.i4.1
      IL_0029:  call       class [System.Xml.XDocument]System.Xml.Linq.XElement [EntitySystem]XmlUtilities.XmlUtils::LoadXmlFromStream(class [System.IO]System.IO.Stream,
                                                                                                                                       class [System.Text.Encoding]System.Text.Encoding,
                                                                                                                                       bool)
      IL_002e:  stloc.2
      IL_002f:  leave.s    IL_003b

    }  // end .try
    finally
    {
      IL_0031:  ldloc.3
      IL_0032:  brfalse.s  IL_003a

      IL_0034:  ldloc.3
      IL_0035:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_003a:  endfinally
    }  // end handler
    IL_003b:  ldloc.2
    IL_003c:  ldstr      "Version"
    IL_0041:  ldarg.0
    IL_0042:  callvirt   instance string Game.VersionConverter::get_TargetVersion()
    IL_0047:  call       void [EntitySystem]XmlUtilities.XmlUtils::SetAttributeValue(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                     string,
                                                                                     object)
    IL_004c:  ldloc.2
    IL_004d:  ldstr      "Subsystems"
    IL_0052:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
    IL_0057:  callvirt   instance class [System.Xml.XDocument]System.Xml.Linq.XElement [System.Xml.XDocument]System.Xml.Linq.XContainer::Element(class [System.Xml.XDocument]System.Xml.Linq.XName)
    IL_005c:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Elements()
    IL_0061:  ldsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter128To129/'<>c'::'<>9__5_0'
    IL_0066:  dup
    IL_0067:  brtrue.s   IL_0080

    IL_0069:  pop
    IL_006a:  ldsfld     class Game.VersionConverter128To129/'<>c' Game.VersionConverter128To129/'<>c'::'<>9'
    IL_006f:  ldftn      instance bool Game.VersionConverter128To129/'<>c'::'<ConvertProject>b__5_0'(class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_0075:  newobj     instance void class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool>::.ctor(object,
                                                                                                                                             native int)
    IL_007a:  dup
    IL_007b:  stsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter128To129/'<>c'::'<>9__5_0'
    IL_0080:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<class [System.Xml.XDocument]System.Xml.Linq.XElement>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                              class [System.Runtime]System.Func`2<!!0,bool>)
    IL_0085:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::GetEnumerator()
    IL_008a:  stloc.s    V_4
    .try
    {
      IL_008c:  br         IL_01b1

      IL_0091:  ldloc.s    V_4
      IL_0093:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::get_Current()
      IL_0098:  ldstr      "Values"
      IL_009d:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
      IL_00a2:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Elements(class [System.Xml.XDocument]System.Xml.Linq.XName)
      IL_00a7:  ldsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter128To129/'<>c'::'<>9__5_1'
      IL_00ac:  dup
      IL_00ad:  brtrue.s   IL_00c6

      IL_00af:  pop
      IL_00b0:  ldsfld     class Game.VersionConverter128To129/'<>c' Game.VersionConverter128To129/'<>c'::'<>9'
      IL_00b5:  ldftn      instance bool Game.VersionConverter128To129/'<>c'::'<ConvertProject>b__5_1'(class [System.Xml.XDocument]System.Xml.Linq.XElement)
      IL_00bb:  newobj     instance void class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool>::.ctor(object,
                                                                                                                                               native int)
      IL_00c0:  dup
      IL_00c1:  stsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter128To129/'<>c'::'<>9__5_1'
      IL_00c6:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<class [System.Xml.XDocument]System.Xml.Linq.XElement>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                                class [System.Runtime]System.Func`2<!!0,bool>)
      IL_00cb:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::GetEnumerator()
      IL_00d0:  stloc.s    V_5
      .try
      {
        IL_00d2:  br         IL_0197

        IL_00d7:  ldloc.s    V_5
        IL_00d9:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::get_Current()
        IL_00de:  ldstr      "Values"
        IL_00e3:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
        IL_00e8:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Elements(class [System.Xml.XDocument]System.Xml.Linq.XName)
        IL_00ed:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::GetEnumerator()
        IL_00f2:  stloc.s    V_6
        .try
        {
          IL_00f4:  br         IL_017d

          IL_00f9:  ldloc.s    V_6
          IL_00fb:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::get_Current()
          IL_0100:  ldstr      "Value"
          IL_0105:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
          IL_010a:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Elements(class [System.Xml.XDocument]System.Xml.Linq.XName)
          IL_010f:  ldsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter128To129/'<>c'::'<>9__5_2'
          IL_0114:  dup
          IL_0115:  brtrue.s   IL_012e

          IL_0117:  pop
          IL_0118:  ldsfld     class Game.VersionConverter128To129/'<>c' Game.VersionConverter128To129/'<>c'::'<>9'
          IL_011d:  ldftn      instance bool Game.VersionConverter128To129/'<>c'::'<ConvertProject>b__5_2'(class [System.Xml.XDocument]System.Xml.Linq.XElement)
          IL_0123:  newobj     instance void class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool>::.ctor(object,
                                                                                                                                                   native int)
          IL_0128:  dup
          IL_0129:  stsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter128To129/'<>c'::'<>9__5_2'
          IL_012e:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<class [System.Xml.XDocument]System.Xml.Linq.XElement>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                                    class [System.Runtime]System.Func`2<!!0,bool>)
          IL_0133:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::GetEnumerator()
          IL_0138:  stloc.s    V_7
          .try
          {
            IL_013a:  br.s       IL_0166

            IL_013c:  ldloc.s    V_7
            IL_013e:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::get_Current()
            IL_0143:  dup
            IL_0144:  ldstr      "Value"
            IL_0149:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<int32>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                                   string)
            IL_014e:  call       int32 Game.VersionConverter128To129::ConvertValue(int32)
            IL_0153:  stloc.s    V_8
            IL_0155:  ldstr      "Value"
            IL_015a:  ldloc.s    V_8
            IL_015c:  box        [System.Runtime]System.Int32
            IL_0161:  call       void [EntitySystem]XmlUtilities.XmlUtils::SetAttributeValue(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                             string,
                                                                                             object)
            IL_0166:  ldloc.s    V_7
            IL_0168:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
            IL_016d:  brtrue.s   IL_013c

            IL_016f:  leave.s    IL_017d

          }  // end .try
          finally
          {
            IL_0171:  ldloc.s    V_7
            IL_0173:  brfalse.s  IL_017c

            IL_0175:  ldloc.s    V_7
            IL_0177:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
            IL_017c:  endfinally
          }  // end handler
          IL_017d:  ldloc.s    V_6
          IL_017f:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
          IL_0184:  brtrue     IL_00f9

          IL_0189:  leave.s    IL_0197

        }  // end .try
        finally
        {
          IL_018b:  ldloc.s    V_6
          IL_018d:  brfalse.s  IL_0196

          IL_018f:  ldloc.s    V_6
          IL_0191:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
          IL_0196:  endfinally
        }  // end handler
        IL_0197:  ldloc.s    V_5
        IL_0199:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
        IL_019e:  brtrue     IL_00d7

        IL_01a3:  leave.s    IL_01b1

      }  // end .try
      finally
      {
        IL_01a5:  ldloc.s    V_5
        IL_01a7:  brfalse.s  IL_01b0

        IL_01a9:  ldloc.s    V_5
        IL_01ab:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_01b0:  endfinally
      }  // end handler
      IL_01b1:  ldloc.s    V_4
      IL_01b3:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_01b8:  brtrue     IL_0091

      IL_01bd:  leave.s    IL_01cb

    }  // end .try
    finally
    {
      IL_01bf:  ldloc.s    V_4
      IL_01c1:  brfalse.s  IL_01ca

      IL_01c3:  ldloc.s    V_4
      IL_01c5:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_01ca:  endfinally
    }  // end handler
    IL_01cb:  ldloc.2
    IL_01cc:  ldstr      "Subsystems"
    IL_01d1:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
    IL_01d6:  callvirt   instance class [System.Xml.XDocument]System.Xml.Linq.XElement [System.Xml.XDocument]System.Xml.Linq.XContainer::Element(class [System.Xml.XDocument]System.Xml.Linq.XName)
    IL_01db:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Elements()
    IL_01e0:  ldsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter128To129/'<>c'::'<>9__5_3'
    IL_01e5:  dup
    IL_01e6:  brtrue.s   IL_01ff

    IL_01e8:  pop
    IL_01e9:  ldsfld     class Game.VersionConverter128To129/'<>c' Game.VersionConverter128To129/'<>c'::'<>9'
    IL_01ee:  ldftn      instance bool Game.VersionConverter128To129/'<>c'::'<ConvertProject>b__5_3'(class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_01f4:  newobj     instance void class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool>::.ctor(object,
                                                                                                                                             native int)
    IL_01f9:  dup
    IL_01fa:  stsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter128To129/'<>c'::'<>9__5_3'
    IL_01ff:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<class [System.Xml.XDocument]System.Xml.Linq.XElement>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                              class [System.Runtime]System.Func`2<!!0,bool>)
    IL_0204:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::GetEnumerator()
    IL_0209:  stloc.s    V_4
    .try
    {
      IL_020b:  br         IL_0330

      IL_0210:  ldloc.s    V_4
      IL_0212:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::get_Current()
      IL_0217:  ldstr      "Values"
      IL_021c:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
      IL_0221:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Elements(class [System.Xml.XDocument]System.Xml.Linq.XName)
      IL_0226:  ldsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter128To129/'<>c'::'<>9__5_4'
      IL_022b:  dup
      IL_022c:  brtrue.s   IL_0245

      IL_022e:  pop
      IL_022f:  ldsfld     class Game.VersionConverter128To129/'<>c' Game.VersionConverter128To129/'<>c'::'<>9'
      IL_0234:  ldftn      instance bool Game.VersionConverter128To129/'<>c'::'<ConvertProject>b__5_4'(class [System.Xml.XDocument]System.Xml.Linq.XElement)
      IL_023a:  newobj     instance void class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool>::.ctor(object,
                                                                                                                                               native int)
      IL_023f:  dup
      IL_0240:  stsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter128To129/'<>c'::'<>9__5_4'
      IL_0245:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<class [System.Xml.XDocument]System.Xml.Linq.XElement>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                                class [System.Runtime]System.Func`2<!!0,bool>)
      IL_024a:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::GetEnumerator()
      IL_024f:  stloc.s    V_5
      .try
      {
        IL_0251:  br         IL_0316

        IL_0256:  ldloc.s    V_5
        IL_0258:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::get_Current()
        IL_025d:  ldstr      "Values"
        IL_0262:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
        IL_0267:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Elements(class [System.Xml.XDocument]System.Xml.Linq.XName)
        IL_026c:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::GetEnumerator()
        IL_0271:  stloc.s    V_6
        .try
        {
          IL_0273:  br         IL_02fc

          IL_0278:  ldloc.s    V_6
          IL_027a:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::get_Current()
          IL_027f:  ldstr      "Value"
          IL_0284:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
          IL_0289:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Elements(class [System.Xml.XDocument]System.Xml.Linq.XName)
          IL_028e:  ldsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter128To129/'<>c'::'<>9__5_5'
          IL_0293:  dup
          IL_0294:  brtrue.s   IL_02ad

          IL_0296:  pop
          IL_0297:  ldsfld     class Game.VersionConverter128To129/'<>c' Game.VersionConverter128To129/'<>c'::'<>9'
          IL_029c:  ldftn      instance bool Game.VersionConverter128To129/'<>c'::'<ConvertProject>b__5_5'(class [System.Xml.XDocument]System.Xml.Linq.XElement)
          IL_02a2:  newobj     instance void class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool>::.ctor(object,
                                                                                                                                                   native int)
          IL_02a7:  dup
          IL_02a8:  stsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter128To129/'<>c'::'<>9__5_5'
          IL_02ad:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<class [System.Xml.XDocument]System.Xml.Linq.XElement>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                                    class [System.Runtime]System.Func`2<!!0,bool>)
          IL_02b2:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::GetEnumerator()
          IL_02b7:  stloc.s    V_7
          .try
          {
            IL_02b9:  br.s       IL_02e5

            IL_02bb:  ldloc.s    V_7
            IL_02bd:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::get_Current()
            IL_02c2:  dup
            IL_02c3:  ldstr      "Value"
            IL_02c8:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<int32>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                                   string)
            IL_02cd:  call       int32 Game.VersionConverter128To129::ConvertValue(int32)
            IL_02d2:  stloc.s    V_9
            IL_02d4:  ldstr      "Value"
            IL_02d9:  ldloc.s    V_9
            IL_02db:  box        [System.Runtime]System.Int32
            IL_02e0:  call       void [EntitySystem]XmlUtilities.XmlUtils::SetAttributeValue(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                             string,
                                                                                             object)
            IL_02e5:  ldloc.s    V_7
            IL_02e7:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
            IL_02ec:  brtrue.s   IL_02bb

            IL_02ee:  leave.s    IL_02fc

          }  // end .try
          finally
          {
            IL_02f0:  ldloc.s    V_7
            IL_02f2:  brfalse.s  IL_02fb

            IL_02f4:  ldloc.s    V_7
            IL_02f6:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
            IL_02fb:  endfinally
          }  // end handler
          IL_02fc:  ldloc.s    V_6
          IL_02fe:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
          IL_0303:  brtrue     IL_0278

          IL_0308:  leave.s    IL_0316

        }  // end .try
        finally
        {
          IL_030a:  ldloc.s    V_6
          IL_030c:  brfalse.s  IL_0315

          IL_030e:  ldloc.s    V_6
          IL_0310:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
          IL_0315:  endfinally
        }  // end handler
        IL_0316:  ldloc.s    V_5
        IL_0318:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
        IL_031d:  brtrue     IL_0256

        IL_0322:  leave.s    IL_0330

      }  // end .try
      finally
      {
        IL_0324:  ldloc.s    V_5
        IL_0326:  brfalse.s  IL_032f

        IL_0328:  ldloc.s    V_5
        IL_032a:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_032f:  endfinally
      }  // end handler
      IL_0330:  ldloc.s    V_4
      IL_0332:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_0337:  brtrue     IL_0210

      IL_033c:  leave.s    IL_034a

    }  // end .try
    finally
    {
      IL_033e:  ldloc.s    V_4
      IL_0340:  brfalse.s  IL_0349

      IL_0342:  ldloc.s    V_4
      IL_0344:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0349:  endfinally
    }  // end handler
    IL_034a:  ldloc.2
    IL_034b:  ldstr      "Subsystems"
    IL_0350:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
    IL_0355:  callvirt   instance class [System.Xml.XDocument]System.Xml.Linq.XElement [System.Xml.XDocument]System.Xml.Linq.XContainer::Element(class [System.Xml.XDocument]System.Xml.Linq.XName)
    IL_035a:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Elements()
    IL_035f:  ldsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter128To129/'<>c'::'<>9__5_6'
    IL_0364:  dup
    IL_0365:  brtrue.s   IL_037e

    IL_0367:  pop
    IL_0368:  ldsfld     class Game.VersionConverter128To129/'<>c' Game.VersionConverter128To129/'<>c'::'<>9'
    IL_036d:  ldftn      instance bool Game.VersionConverter128To129/'<>c'::'<ConvertProject>b__5_6'(class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_0373:  newobj     instance void class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool>::.ctor(object,
                                                                                                                                             native int)
    IL_0378:  dup
    IL_0379:  stsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter128To129/'<>c'::'<>9__5_6'
    IL_037e:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<class [System.Xml.XDocument]System.Xml.Linq.XElement>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                              class [System.Runtime]System.Func`2<!!0,bool>)
    IL_0383:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::GetEnumerator()
    IL_0388:  stloc.s    V_4
    .try
    {
      IL_038a:  br         IL_04af

      IL_038f:  ldloc.s    V_4
      IL_0391:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::get_Current()
      IL_0396:  ldstr      "Values"
      IL_039b:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
      IL_03a0:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Elements(class [System.Xml.XDocument]System.Xml.Linq.XName)
      IL_03a5:  ldsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter128To129/'<>c'::'<>9__5_7'
      IL_03aa:  dup
      IL_03ab:  brtrue.s   IL_03c4

      IL_03ad:  pop
      IL_03ae:  ldsfld     class Game.VersionConverter128To129/'<>c' Game.VersionConverter128To129/'<>c'::'<>9'
      IL_03b3:  ldftn      instance bool Game.VersionConverter128To129/'<>c'::'<ConvertProject>b__5_7'(class [System.Xml.XDocument]System.Xml.Linq.XElement)
      IL_03b9:  newobj     instance void class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool>::.ctor(object,
                                                                                                                                               native int)
      IL_03be:  dup
      IL_03bf:  stsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter128To129/'<>c'::'<>9__5_7'
      IL_03c4:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<class [System.Xml.XDocument]System.Xml.Linq.XElement>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                                class [System.Runtime]System.Func`2<!!0,bool>)
      IL_03c9:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::GetEnumerator()
      IL_03ce:  stloc.s    V_5
      .try
      {
        IL_03d0:  br         IL_0495

        IL_03d5:  ldloc.s    V_5
        IL_03d7:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::get_Current()
        IL_03dc:  ldstr      "Values"
        IL_03e1:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
        IL_03e6:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Elements(class [System.Xml.XDocument]System.Xml.Linq.XName)
        IL_03eb:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::GetEnumerator()
        IL_03f0:  stloc.s    V_6
        .try
        {
          IL_03f2:  br         IL_047b

          IL_03f7:  ldloc.s    V_6
          IL_03f9:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::get_Current()
          IL_03fe:  ldstr      "Value"
          IL_0403:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
          IL_0408:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Elements(class [System.Xml.XDocument]System.Xml.Linq.XName)
          IL_040d:  ldsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter128To129/'<>c'::'<>9__5_8'
          IL_0412:  dup
          IL_0413:  brtrue.s   IL_042c

          IL_0415:  pop
          IL_0416:  ldsfld     class Game.VersionConverter128To129/'<>c' Game.VersionConverter128To129/'<>c'::'<>9'
          IL_041b:  ldftn      instance bool Game.VersionConverter128To129/'<>c'::'<ConvertProject>b__5_8'(class [System.Xml.XDocument]System.Xml.Linq.XElement)
          IL_0421:  newobj     instance void class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool>::.ctor(object,
                                                                                                                                                   native int)
          IL_0426:  dup
          IL_0427:  stsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter128To129/'<>c'::'<>9__5_8'
          IL_042c:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<class [System.Xml.XDocument]System.Xml.Linq.XElement>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                                    class [System.Runtime]System.Func`2<!!0,bool>)
          IL_0431:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::GetEnumerator()
          IL_0436:  stloc.s    V_7
          .try
          {
            IL_0438:  br.s       IL_0464

            IL_043a:  ldloc.s    V_7
            IL_043c:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::get_Current()
            IL_0441:  dup
            IL_0442:  ldstr      "Value"
            IL_0447:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<int32>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                                   string)
            IL_044c:  call       int32 Game.VersionConverter128To129::ConvertValue(int32)
            IL_0451:  stloc.s    V_10
            IL_0453:  ldstr      "Value"
            IL_0458:  ldloc.s    V_10
            IL_045a:  box        [System.Runtime]System.Int32
            IL_045f:  call       void [EntitySystem]XmlUtilities.XmlUtils::SetAttributeValue(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                             string,
                                                                                             object)
            IL_0464:  ldloc.s    V_7
            IL_0466:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
            IL_046b:  brtrue.s   IL_043a

            IL_046d:  leave.s    IL_047b

          }  // end .try
          finally
          {
            IL_046f:  ldloc.s    V_7
            IL_0471:  brfalse.s  IL_047a

            IL_0473:  ldloc.s    V_7
            IL_0475:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
            IL_047a:  endfinally
          }  // end handler
          IL_047b:  ldloc.s    V_6
          IL_047d:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
          IL_0482:  brtrue     IL_03f7

          IL_0487:  leave.s    IL_0495

        }  // end .try
        finally
        {
          IL_0489:  ldloc.s    V_6
          IL_048b:  brfalse.s  IL_0494

          IL_048d:  ldloc.s    V_6
          IL_048f:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
          IL_0494:  endfinally
        }  // end handler
        IL_0495:  ldloc.s    V_5
        IL_0497:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
        IL_049c:  brtrue     IL_03d5

        IL_04a1:  leave.s    IL_04af

      }  // end .try
      finally
      {
        IL_04a3:  ldloc.s    V_5
        IL_04a5:  brfalse.s  IL_04ae

        IL_04a7:  ldloc.s    V_5
        IL_04a9:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_04ae:  endfinally
      }  // end handler
      IL_04af:  ldloc.s    V_4
      IL_04b1:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_04b6:  brtrue     IL_038f

      IL_04bb:  leave.s    IL_04c9

    }  // end .try
    finally
    {
      IL_04bd:  ldloc.s    V_4
      IL_04bf:  brfalse.s  IL_04c8

      IL_04c1:  ldloc.s    V_4
      IL_04c3:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_04c8:  endfinally
    }  // end handler
    IL_04c9:  ldloc.2
    IL_04ca:  ldstr      "Entities"
    IL_04cf:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
    IL_04d4:  callvirt   instance class [System.Xml.XDocument]System.Xml.Linq.XElement [System.Xml.XDocument]System.Xml.Linq.XContainer::Element(class [System.Xml.XDocument]System.Xml.Linq.XName)
    IL_04d9:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Elements()
    IL_04de:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::GetEnumerator()
    IL_04e3:  stloc.s    V_4
    .try
    {
      IL_04e5:  br         IL_0633

      IL_04ea:  ldloc.s    V_4
      IL_04ec:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::get_Current()
      IL_04f1:  ldstr      "Values"
      IL_04f6:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
      IL_04fb:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Elements(class [System.Xml.XDocument]System.Xml.Linq.XName)
      IL_0500:  ldsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter128To129/'<>c'::'<>9__5_9'
      IL_0505:  dup
      IL_0506:  brtrue.s   IL_051f

      IL_0508:  pop
      IL_0509:  ldsfld     class Game.VersionConverter128To129/'<>c' Game.VersionConverter128To129/'<>c'::'<>9'
      IL_050e:  ldftn      instance bool Game.VersionConverter128To129/'<>c'::'<ConvertProject>b__5_9'(class [System.Xml.XDocument]System.Xml.Linq.XElement)
      IL_0514:  newobj     instance void class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool>::.ctor(object,
                                                                                                                                               native int)
      IL_0519:  dup
      IL_051a:  stsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter128To129/'<>c'::'<>9__5_9'
      IL_051f:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<class [System.Xml.XDocument]System.Xml.Linq.XElement>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                                class [System.Runtime]System.Func`2<!!0,bool>)
      IL_0524:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::GetEnumerator()
      IL_0529:  stloc.s    V_5
      .try
      {
        IL_052b:  br         IL_0619

        IL_0530:  ldloc.s    V_5
        IL_0532:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::get_Current()
        IL_0537:  ldstr      "Values"
        IL_053c:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
        IL_0541:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Elements(class [System.Xml.XDocument]System.Xml.Linq.XName)
        IL_0546:  ldsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter128To129/'<>c'::'<>9__5_10'
        IL_054b:  dup
        IL_054c:  brtrue.s   IL_0565

        IL_054e:  pop
        IL_054f:  ldsfld     class Game.VersionConverter128To129/'<>c' Game.VersionConverter128To129/'<>c'::'<>9'
        IL_0554:  ldftn      instance bool Game.VersionConverter128To129/'<>c'::'<ConvertProject>b__5_10'(class [System.Xml.XDocument]System.Xml.Linq.XElement)
        IL_055a:  newobj     instance void class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool>::.ctor(object,
                                                                                                                                                 native int)
        IL_055f:  dup
        IL_0560:  stsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter128To129/'<>c'::'<>9__5_10'
        IL_0565:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<class [System.Xml.XDocument]System.Xml.Linq.XElement>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                                  class [System.Runtime]System.Func`2<!!0,bool>)
        IL_056a:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::GetEnumerator()
        IL_056f:  stloc.s    V_6
        .try
        {
          IL_0571:  br         IL_05ff

          IL_0576:  ldloc.s    V_6
          IL_0578:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::get_Current()
          IL_057d:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Elements()
          IL_0582:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::GetEnumerator()
          IL_0587:  stloc.s    V_7
          .try
          {
            IL_0589:  br.s       IL_05e8

            IL_058b:  ldloc.s    V_7
            IL_058d:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::get_Current()
            IL_0592:  stloc.s    V_11
            IL_0594:  ldloc.s    V_11
            IL_0596:  ldstr      "Value"
            IL_059b:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<string>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                                    string)
            IL_05a0:  stloc.s    V_12
            IL_05a2:  ldc.i4.s   59
            IL_05a4:  ldloc.s    V_12
            IL_05a6:  call       !!0[] [Engine]Engine.Serialization.HumanReadableConverter::ValuesListFromString<int32>(char,
                                                                                                                        string)
            IL_05ab:  stloc.s    V_13
            IL_05ad:  ldc.i4.0
            IL_05ae:  stloc.s    V_15
            IL_05b0:  br.s       IL_05c7

            IL_05b2:  ldloc.s    V_13
            IL_05b4:  ldloc.s    V_15
            IL_05b6:  ldloc.s    V_13
            IL_05b8:  ldloc.s    V_15
            IL_05ba:  ldelem.i4
            IL_05bb:  call       int32 Game.VersionConverter128To129::ConvertValue(int32)
            IL_05c0:  stelem.i4
            IL_05c1:  ldloc.s    V_15
            IL_05c3:  ldc.i4.1
            IL_05c4:  add
            IL_05c5:  stloc.s    V_15
            IL_05c7:  ldloc.s    V_15
            IL_05c9:  ldloc.s    V_13
            IL_05cb:  ldlen
            IL_05cc:  conv.i4
            IL_05cd:  blt.s      IL_05b2

            IL_05cf:  ldc.i4.s   59
            IL_05d1:  ldloc.s    V_13
            IL_05d3:  call       string [Engine]Engine.Serialization.HumanReadableConverter::ValuesListToString<int32>(char,
                                                                                                                       !!0[])
            IL_05d8:  stloc.s    V_14
            IL_05da:  ldloc.s    V_11
            IL_05dc:  ldstr      "Value"
            IL_05e1:  ldloc.s    V_14
            IL_05e3:  call       void [EntitySystem]XmlUtilities.XmlUtils::SetAttributeValue(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                             string,
                                                                                             object)
            IL_05e8:  ldloc.s    V_7
            IL_05ea:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
            IL_05ef:  brtrue.s   IL_058b

            IL_05f1:  leave.s    IL_05ff

          }  // end .try
          finally
          {
            IL_05f3:  ldloc.s    V_7
            IL_05f5:  brfalse.s  IL_05fe

            IL_05f7:  ldloc.s    V_7
            IL_05f9:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
            IL_05fe:  endfinally
          }  // end handler
          IL_05ff:  ldloc.s    V_6
          IL_0601:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
          IL_0606:  brtrue     IL_0576

          IL_060b:  leave.s    IL_0619

        }  // end .try
        finally
        {
          IL_060d:  ldloc.s    V_6
          IL_060f:  brfalse.s  IL_0618

          IL_0611:  ldloc.s    V_6
          IL_0613:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
          IL_0618:  endfinally
        }  // end handler
        IL_0619:  ldloc.s    V_5
        IL_061b:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
        IL_0620:  brtrue     IL_0530

        IL_0625:  leave.s    IL_0633

      }  // end .try
      finally
      {
        IL_0627:  ldloc.s    V_5
        IL_0629:  brfalse.s  IL_0632

        IL_062b:  ldloc.s    V_5
        IL_062d:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_0632:  endfinally
      }  // end handler
      IL_0633:  ldloc.s    V_4
      IL_0635:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_063a:  brtrue     IL_04ea

      IL_063f:  leave.s    IL_064d

    }  // end .try
    finally
    {
      IL_0641:  ldloc.s    V_4
      IL_0643:  brfalse.s  IL_064c

      IL_0645:  ldloc.s    V_4
      IL_0647:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_064c:  endfinally
    }  // end handler
    IL_064d:  ldloc.0
    IL_064e:  ldc.i4.6
    IL_064f:  newarr     [System.Runtime]System.String
    IL_0654:  dup
    IL_0655:  ldc.i4.0
    IL_0656:  ldstr      "Inventory"
    IL_065b:  stelem.ref
    IL_065c:  dup
    IL_065d:  ldc.i4.1
    IL_065e:  ldstr      "CreativeInventory"
    IL_0663:  stelem.ref
    IL_0664:  dup
    IL_0665:  ldc.i4.2
    IL_0666:  ldstr      "CraftingTable"
    IL_066b:  stelem.ref
    IL_066c:  dup
    IL_066d:  ldc.i4.3
    IL_066e:  ldstr      "Chest"
    IL_0673:  stelem.ref
    IL_0674:  dup
    IL_0675:  ldc.i4.4
    IL_0676:  ldstr      "Furnace"
    IL_067b:  stelem.ref
    IL_067c:  dup
    IL_067d:  ldc.i4.5
    IL_067e:  ldstr      "Dispenser"
    IL_0683:  stelem.ref
    IL_0684:  stfld      string[] Game.VersionConverter128To129/'<>c__DisplayClass5_0'::inventoryNames
    IL_0689:  ldloc.2
    IL_068a:  ldstr      "Entities"
    IL_068f:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
    IL_0694:  callvirt   instance class [System.Xml.XDocument]System.Xml.Linq.XElement [System.Xml.XDocument]System.Xml.Linq.XContainer::Element(class [System.Xml.XDocument]System.Xml.Linq.XName)
    IL_0699:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Elements()
    IL_069e:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::GetEnumerator()
    IL_06a3:  stloc.s    V_4
    .try
    {
      IL_06a5:  br         IL_0822

      IL_06aa:  ldloc.s    V_4
      IL_06ac:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::get_Current()
      IL_06b1:  ldstr      "Values"
      IL_06b6:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
      IL_06bb:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Elements(class [System.Xml.XDocument]System.Xml.Linq.XName)
      IL_06c0:  ldloc.0
      IL_06c1:  ldfld      class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter128To129/'<>c__DisplayClass5_0'::'<>9__11'
      IL_06c6:  dup
      IL_06c7:  brtrue.s   IL_06e1

      IL_06c9:  pop
      IL_06ca:  ldloc.0
      IL_06cb:  ldloc.0
      IL_06cc:  ldftn      instance bool Game.VersionConverter128To129/'<>c__DisplayClass5_0'::'<ConvertProject>b__11'(class [System.Xml.XDocument]System.Xml.Linq.XElement)
      IL_06d2:  newobj     instance void class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool>::.ctor(object,
                                                                                                                                               native int)
      IL_06d7:  dup
      IL_06d8:  stloc.s    V_16
      IL_06da:  stfld      class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter128To129/'<>c__DisplayClass5_0'::'<>9__11'
      IL_06df:  ldloc.s    V_16
      IL_06e1:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<class [System.Xml.XDocument]System.Xml.Linq.XElement>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                                class [System.Runtime]System.Func`2<!!0,bool>)
      IL_06e6:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::GetEnumerator()
      IL_06eb:  stloc.s    V_5
      .try
      {
        IL_06ed:  br         IL_0808

        IL_06f2:  ldloc.s    V_5
        IL_06f4:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::get_Current()
        IL_06f9:  ldstr      "Values"
        IL_06fe:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
        IL_0703:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Elements(class [System.Xml.XDocument]System.Xml.Linq.XName)
        IL_0708:  ldsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter128To129/'<>c'::'<>9__5_12'
        IL_070d:  dup
        IL_070e:  brtrue.s   IL_0727

        IL_0710:  pop
        IL_0711:  ldsfld     class Game.VersionConverter128To129/'<>c' Game.VersionConverter128To129/'<>c'::'<>9'
        IL_0716:  ldftn      instance bool Game.VersionConverter128To129/'<>c'::'<ConvertProject>b__5_12'(class [System.Xml.XDocument]System.Xml.Linq.XElement)
        IL_071c:  newobj     instance void class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool>::.ctor(object,
                                                                                                                                                 native int)
        IL_0721:  dup
        IL_0722:  stsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter128To129/'<>c'::'<>9__5_12'
        IL_0727:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<class [System.Xml.XDocument]System.Xml.Linq.XElement>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                                  class [System.Runtime]System.Func`2<!!0,bool>)
        IL_072c:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::GetEnumerator()
        IL_0731:  stloc.s    V_6
        .try
        {
          IL_0733:  br         IL_07ee

          IL_0738:  ldloc.s    V_6
          IL_073a:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::get_Current()
          IL_073f:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Elements()
          IL_0744:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::GetEnumerator()
          IL_0749:  stloc.s    V_7
          .try
          {
            IL_074b:  br         IL_07d4

            IL_0750:  ldloc.s    V_7
            IL_0752:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::get_Current()
            IL_0757:  ldstr      "Value"
            IL_075c:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
            IL_0761:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Elements(class [System.Xml.XDocument]System.Xml.Linq.XName)
            IL_0766:  ldsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter128To129/'<>c'::'<>9__5_13'
            IL_076b:  dup
            IL_076c:  brtrue.s   IL_0785

            IL_076e:  pop
            IL_076f:  ldsfld     class Game.VersionConverter128To129/'<>c' Game.VersionConverter128To129/'<>c'::'<>9'
            IL_0774:  ldftn      instance bool Game.VersionConverter128To129/'<>c'::'<ConvertProject>b__5_13'(class [System.Xml.XDocument]System.Xml.Linq.XElement)
            IL_077a:  newobj     instance void class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool>::.ctor(object,
                                                                                                                                                     native int)
            IL_077f:  dup
            IL_0780:  stsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XElement,bool> Game.VersionConverter128To129/'<>c'::'<>9__5_13'
            IL_0785:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<class [System.Xml.XDocument]System.Xml.Linq.XElement>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                                      class [System.Runtime]System.Func`2<!!0,bool>)
            IL_078a:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::GetEnumerator()
            IL_078f:  stloc.s    V_17
            .try
            {
              IL_0791:  br.s       IL_07bd

              IL_0793:  ldloc.s    V_17
              IL_0795:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::get_Current()
              IL_079a:  dup
              IL_079b:  ldstr      "Value"
              IL_07a0:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<int32>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                                     string)
              IL_07a5:  call       int32 Game.VersionConverter128To129::ConvertValue(int32)
              IL_07aa:  stloc.s    V_18
              IL_07ac:  ldstr      "Value"
              IL_07b1:  ldloc.s    V_18
              IL_07b3:  box        [System.Runtime]System.Int32
              IL_07b8:  call       void [EntitySystem]XmlUtilities.XmlUtils::SetAttributeValue(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                               string,
                                                                                               object)
              IL_07bd:  ldloc.s    V_17
              IL_07bf:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
              IL_07c4:  brtrue.s   IL_0793

              IL_07c6:  leave.s    IL_07d4

            }  // end .try
            finally
            {
              IL_07c8:  ldloc.s    V_17
              IL_07ca:  brfalse.s  IL_07d3

              IL_07cc:  ldloc.s    V_17
              IL_07ce:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
              IL_07d3:  endfinally
            }  // end handler
            IL_07d4:  ldloc.s    V_7
            IL_07d6:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
            IL_07db:  brtrue     IL_0750

            IL_07e0:  leave.s    IL_07ee

          }  // end .try
          finally
          {
            IL_07e2:  ldloc.s    V_7
            IL_07e4:  brfalse.s  IL_07ed

            IL_07e6:  ldloc.s    V_7
            IL_07e8:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
            IL_07ed:  endfinally
          }  // end handler
          IL_07ee:  ldloc.s    V_6
          IL_07f0:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
          IL_07f5:  brtrue     IL_0738

          IL_07fa:  leave.s    IL_0808

        }  // end .try
        finally
        {
          IL_07fc:  ldloc.s    V_6
          IL_07fe:  brfalse.s  IL_0807

          IL_0800:  ldloc.s    V_6
          IL_0802:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
          IL_0807:  endfinally
        }  // end handler
        IL_0808:  ldloc.s    V_5
        IL_080a:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
        IL_080f:  brtrue     IL_06f2

        IL_0814:  leave.s    IL_0822

      }  // end .try
      finally
      {
        IL_0816:  ldloc.s    V_5
        IL_0818:  brfalse.s  IL_0821

        IL_081a:  ldloc.s    V_5
        IL_081c:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_0821:  endfinally
      }  // end handler
      IL_0822:  ldloc.s    V_4
      IL_0824:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_0829:  brtrue     IL_06aa

      IL_082e:  leave.s    IL_083c

    }  // end .try
    finally
    {
      IL_0830:  ldloc.s    V_4
      IL_0832:  brfalse.s  IL_083b

      IL_0834:  ldloc.s    V_4
      IL_0836:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_083b:  endfinally
    }  // end handler
    IL_083c:  ldloc.1
    IL_083d:  ldc.i4.2
    IL_083e:  call       class [System.IO]System.IO.Stream [Engine]Engine.Storage::OpenFile(string,
                                                                                            valuetype [Engine]Engine.OpenFileMode)
    IL_0843:  stloc.s    V_19
    .try
    {
      IL_0845:  ldloc.2
      IL_0846:  ldloc.s    V_19
      IL_0848:  ldnull
      IL_0849:  ldc.i4.1
      IL_084a:  call       void [EntitySystem]XmlUtilities.XmlUtils::SaveXmlToStream(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                     class [System.IO]System.IO.Stream,
                                                                                     class [System.Text.Encoding]System.Text.Encoding,
                                                                                     bool)
      IL_084f:  leave.s    IL_085d

    }  // end .try
    finally
    {
      IL_0851:  ldloc.s    V_19
      IL_0853:  brfalse.s  IL_085c

      IL_0855:  ldloc.s    V_19
      IL_0857:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_085c:  endfinally
    }  // end handler
    IL_085d:  ret
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