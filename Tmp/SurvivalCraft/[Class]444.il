.class public abstract auto ansi sealed beforefieldinit Game.CraftingRecipesManager
       extends [System.Runtime]System.Object
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.CraftingRecipesManager/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XAttribute,bool> '<>9__3_0'
    .field public static class [System.Runtime]System.Func`2<string,bool> '<>9__3_2'
    .field public static class [System.Runtime]System.Func`2<string,bool> '<>9__3_3'
    .field public static class [System.Runtime]System.Comparison`1<class Game.CraftingRecipe> '<>9__3_1'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.CraftingRecipesManager/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.CraftingRecipesManager/'<>c' Game.CraftingRecipesManager/'<>c'::'<>9'
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
            '<Initialize>b__3_0'(class [System.Xml.XDocument]System.Xml.Linq.XAttribute a) cil managed
    {
      // 代码大小       44 (0x2c)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  callvirt   instance class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XAttribute::get_Name()
      IL_0006:  callvirt   instance string [System.Xml.XDocument]System.Xml.Linq.XName::get_LocalName()
      IL_000b:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
      IL_0010:  ldc.i4.1
      IL_0011:  bne.un.s   IL_002a

      IL_0013:  ldarg.1
      IL_0014:  callvirt   instance class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XAttribute::get_Name()
      IL_0019:  callvirt   instance string [System.Xml.XDocument]System.Xml.Linq.XName::get_LocalName()
      IL_001e:  ldc.i4.0
      IL_001f:  callvirt   instance char [System.Runtime]System.String::get_Chars(int32)
      IL_0024:  call       bool [System.Runtime]System.Char::IsLower(char)
      IL_0029:  ret

      IL_002a:  ldc.i4.0
      IL_002b:  ret
    } // end of method '<>c'::'<Initialize>b__3_0'

    .method assembly hidebysig instance int32 
            '<Initialize>b__3_1'(class Game.CraftingRecipe r1,
                                 class Game.CraftingRecipe r2) cil managed
    {
      // 代码大小       99 (0x63)
      .maxstack  3
      .locals init (int32 V_0,
               int32 V_1)
      IL_0000:  ldarg.1
      IL_0001:  ldfld      string[] Game.CraftingRecipe::Ingredients
      IL_0006:  ldsfld     class [System.Runtime]System.Func`2<string,bool> Game.CraftingRecipesManager/'<>c'::'<>9__3_2'
      IL_000b:  dup
      IL_000c:  brtrue.s   IL_0025

      IL_000e:  pop
      IL_000f:  ldsfld     class Game.CraftingRecipesManager/'<>c' Game.CraftingRecipesManager/'<>c'::'<>9'
      IL_0014:  ldftn      instance bool Game.CraftingRecipesManager/'<>c'::'<Initialize>b__3_2'(string)
      IL_001a:  newobj     instance void class [System.Runtime]System.Func`2<string,bool>::.ctor(object,
                                                                                                 native int)
      IL_001f:  dup
      IL_0020:  stsfld     class [System.Runtime]System.Func`2<string,bool> Game.CraftingRecipesManager/'<>c'::'<>9__3_2'
      IL_0025:  call       int32 [System.Linq]System.Linq.Enumerable::Count<string>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                    class [System.Runtime]System.Func`2<!!0,bool>)
      IL_002a:  stloc.0
      IL_002b:  ldarg.2
      IL_002c:  ldfld      string[] Game.CraftingRecipe::Ingredients
      IL_0031:  ldsfld     class [System.Runtime]System.Func`2<string,bool> Game.CraftingRecipesManager/'<>c'::'<>9__3_3'
      IL_0036:  dup
      IL_0037:  brtrue.s   IL_0050

      IL_0039:  pop
      IL_003a:  ldsfld     class Game.CraftingRecipesManager/'<>c' Game.CraftingRecipesManager/'<>c'::'<>9'
      IL_003f:  ldftn      instance bool Game.CraftingRecipesManager/'<>c'::'<Initialize>b__3_3'(string)
      IL_0045:  newobj     instance void class [System.Runtime]System.Func`2<string,bool>::.ctor(object,
                                                                                                 native int)
      IL_004a:  dup
      IL_004b:  stsfld     class [System.Runtime]System.Func`2<string,bool> Game.CraftingRecipesManager/'<>c'::'<>9__3_3'
      IL_0050:  call       int32 [System.Linq]System.Linq.Enumerable::Count<string>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                    class [System.Runtime]System.Func`2<!!0,bool>)
      IL_0055:  stloc.1
      IL_0056:  call       class [System.Collections]System.Collections.Generic.Comparer`1<!0> class [System.Collections]System.Collections.Generic.Comparer`1<int32>::get_Default()
      IL_005b:  ldloc.1
      IL_005c:  ldloc.0
      IL_005d:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.Comparer`1<int32>::Compare(!0,
                                                                                                                          !0)
      IL_0062:  ret
    } // end of method '<>c'::'<Initialize>b__3_1'

    .method assembly hidebysig instance bool 
            '<Initialize>b__3_2'(string s) cil managed
    {
      // 代码大小       10 (0xa)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
      IL_0006:  ldc.i4.0
      IL_0007:  ceq
      IL_0009:  ret
    } // end of method '<>c'::'<Initialize>b__3_2'

    .method assembly hidebysig instance bool 
            '<Initialize>b__3_3'(string s) cil managed
    {
      // 代码大小       10 (0xa)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
      IL_0006:  ldc.i4.0
      IL_0007:  ceq
      IL_0009:  ret
    } // end of method '<>c'::'<Initialize>b__3_3'

  } // end of class '<>c'

  .field private static class [System.Collections]System.Collections.Generic.List`1<class Game.CraftingRecipe> m_recipes
  .method public hidebysig specialname static 
          valuetype [Engine]Engine.ReadOnlyList`1<class Game.CraftingRecipe> 
          get_Recipes() cil managed
  {
    // 代码大小       11 (0xb)
    .maxstack  8
    IL_0000:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.CraftingRecipe> Game.CraftingRecipesManager::m_recipes
    IL_0005:  newobj     instance void valuetype [Engine]Engine.ReadOnlyList`1<class Game.CraftingRecipe>::.ctor(class [System.Runtime]System.Collections.Generic.IList`1<!0>)
    IL_000a:  ret
  } // end of method CraftingRecipesManager::get_Recipes

  .method public hidebysig static void  Initialize() cil managed
  {
    // 代码大小       882 (0x372)
    .maxstack  5
    .locals init (class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> V_0,
             class [System.Xml.XDocument]System.Xml.Linq.XElement V_1,
             class Game.CraftingRecipe V_2,
             string V_3,
             string V_4,
             class [System.Collections]System.Collections.Generic.Dictionary`2<char,string> V_5,
             string[] V_6,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XAttribute> V_7,
             class [System.Xml.XDocument]System.Xml.Linq.XAttribute V_8,
             string V_9,
             valuetype [System.Runtime]System.Nullable`1<int32> V_10,
             int32 V_11,
             int32 V_12,
             int32 V_13,
             string V_14,
             int32 V_15,
             char V_16,
             string V_17,
             class Game.Block[] V_18,
             int32 V_19,
             class Game.Block V_20)
    IL_0000:  ldstr      "CraftingRecipes"
    IL_0005:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_000a:  ldstr      "Recipe"
    IL_000f:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
    IL_0014:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Descendants(class [System.Xml.XDocument]System.Xml.Linq.XName)
    IL_0019:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::GetEnumerator()
    IL_001e:  stloc.0
    .try
    {
      IL_001f:  br         IL_02ff

      IL_0024:  ldloc.0
      IL_0025:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::get_Current()
      IL_002a:  stloc.1
      IL_002b:  newobj     instance void Game.CraftingRecipe::.ctor()
      IL_0030:  stloc.2
      IL_0031:  ldloc.1
      IL_0032:  ldstr      "Result"
      IL_0037:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<string>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                              string)
      IL_003c:  stloc.3
      IL_003d:  ldloc.2
      IL_003e:  ldloc.3
      IL_003f:  call       int32 Game.CraftingRecipesManager::DecodeResult(string)
      IL_0044:  stfld      int32 Game.CraftingRecipe::ResultValue
      IL_0049:  ldloc.2
      IL_004a:  ldloc.1
      IL_004b:  ldstr      "ResultCount"
      IL_0050:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<int32>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                             string)
      IL_0055:  stfld      int32 Game.CraftingRecipe::ResultCount
      IL_005a:  ldloc.1
      IL_005b:  ldstr      "Remains"
      IL_0060:  ldsfld     string [System.Runtime]System.String::Empty
      IL_0065:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<string>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                              string,
                                                                                              !!0)
      IL_006a:  stloc.s    V_4
      IL_006c:  ldloc.s    V_4
      IL_006e:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
      IL_0073:  brtrue.s   IL_0093

      IL_0075:  ldloc.2
      IL_0076:  ldloc.s    V_4
      IL_0078:  call       int32 Game.CraftingRecipesManager::DecodeResult(string)
      IL_007d:  stfld      int32 Game.CraftingRecipe::RemainsValue
      IL_0082:  ldloc.2
      IL_0083:  ldloc.1
      IL_0084:  ldstr      "RemainsCount"
      IL_0089:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<int32>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                             string)
      IL_008e:  stfld      int32 Game.CraftingRecipe::RemainsCount
      IL_0093:  ldloc.2
      IL_0094:  ldloc.1
      IL_0095:  ldstr      "RequiredHeatLevel"
      IL_009a:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<float32>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                               string)
      IL_009f:  stfld      float32 Game.CraftingRecipe::RequiredHeatLevel
      IL_00a4:  ldloc.2
      IL_00a5:  ldloc.1
      IL_00a6:  ldstr      "Description"
      IL_00ab:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<string>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                              string)
      IL_00b0:  stfld      string Game.CraftingRecipe::Description
      IL_00b5:  ldloc.2
      IL_00b6:  ldfld      int32 Game.CraftingRecipe::ResultCount
      IL_00bb:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
      IL_00c0:  ldloc.2
      IL_00c1:  ldfld      int32 Game.CraftingRecipe::ResultValue
      IL_00c6:  call       int32 Game.Terrain::ExtractContents(int32)
      IL_00cb:  ldelem.ref
      IL_00cc:  ldfld      int32 Game.Block::MaxStacking
      IL_00d1:  ble.s      IL_00ed

      IL_00d3:  ldstr      "In recipe for \"{0}\" ResultCount is larger than max"
      + " stacking of result block."
      IL_00d8:  ldc.i4.1
      IL_00d9:  newarr     [System.Runtime]System.Object
      IL_00de:  dup
      IL_00df:  ldc.i4.0
      IL_00e0:  ldloc.3
      IL_00e1:  stelem.ref
      IL_00e2:  call       string [System.Runtime]System.String::Format(string,
                                                                        object[])
      IL_00e7:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
      IL_00ec:  throw

      IL_00ed:  ldloc.2
      IL_00ee:  ldfld      int32 Game.CraftingRecipe::RemainsValue
      IL_00f3:  brfalse.s  IL_012e

      IL_00f5:  ldloc.2
      IL_00f6:  ldfld      int32 Game.CraftingRecipe::RemainsCount
      IL_00fb:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
      IL_0100:  ldloc.2
      IL_0101:  ldfld      int32 Game.CraftingRecipe::RemainsValue
      IL_0106:  call       int32 Game.Terrain::ExtractContents(int32)
      IL_010b:  ldelem.ref
      IL_010c:  ldfld      int32 Game.Block::MaxStacking
      IL_0111:  ble.s      IL_012e

      IL_0113:  ldstr      "In Recipe for \"{0}\" RemainsCount is larger than ma"
      + "x stacking of remains block."
      IL_0118:  ldc.i4.1
      IL_0119:  newarr     [System.Runtime]System.Object
      IL_011e:  dup
      IL_011f:  ldc.i4.0
      IL_0120:  ldloc.s    V_4
      IL_0122:  stelem.ref
      IL_0123:  call       string [System.Runtime]System.String::Format(string,
                                                                        object[])
      IL_0128:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
      IL_012d:  throw

      IL_012e:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<char,string>::.ctor()
      IL_0133:  stloc.s    V_5
      IL_0135:  ldloc.1
      IL_0136:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XAttribute> [System.Xml.XDocument]System.Xml.Linq.XElement::Attributes()
      IL_013b:  ldsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XAttribute,bool> Game.CraftingRecipesManager/'<>c'::'<>9__3_0'
      IL_0140:  dup
      IL_0141:  brtrue.s   IL_015a

      IL_0143:  pop
      IL_0144:  ldsfld     class Game.CraftingRecipesManager/'<>c' Game.CraftingRecipesManager/'<>c'::'<>9'
      IL_0149:  ldftn      instance bool Game.CraftingRecipesManager/'<>c'::'<Initialize>b__3_0'(class [System.Xml.XDocument]System.Xml.Linq.XAttribute)
      IL_014f:  newobj     instance void class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XAttribute,bool>::.ctor(object,
                                                                                                                                                 native int)
      IL_0154:  dup
      IL_0155:  stsfld     class [System.Runtime]System.Func`2<class [System.Xml.XDocument]System.Xml.Linq.XAttribute,bool> Game.CraftingRecipesManager/'<>c'::'<>9__3_0'
      IL_015a:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<class [System.Xml.XDocument]System.Xml.Linq.XAttribute>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                                  class [System.Runtime]System.Func`2<!!0,bool>)
      IL_015f:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XAttribute>::GetEnumerator()
      IL_0164:  stloc.s    V_7
      .try
      {
        IL_0166:  br         IL_020f

        IL_016b:  ldloc.s    V_7
        IL_016d:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XAttribute>::get_Current()
        IL_0172:  stloc.s    V_8
        IL_0174:  ldloc.s    V_8
        IL_0176:  callvirt   instance string [System.Xml.XDocument]System.Xml.Linq.XAttribute::get_Value()
        IL_017b:  ldloca.s   V_9
        IL_017d:  ldloca.s   V_10
        IL_017f:  call       void Game.CraftingRecipesManager::DecodeIngredient(string,
                                                                                string&,
                                                                                valuetype [System.Runtime]System.Nullable`1<int32>&)
        IL_0184:  ldloc.s    V_9
        IL_0186:  call       class Game.Block[] Game.BlocksManager::FindBlocksByCraftingId(string)
        IL_018b:  ldlen
        IL_018c:  brtrue.s   IL_01ae

        IL_018e:  ldstr      "Block with craftingId \"{0}\" not found."
        IL_0193:  ldc.i4.1
        IL_0194:  newarr     [System.Runtime]System.Object
        IL_0199:  dup
        IL_019a:  ldc.i4.0
        IL_019b:  ldloc.s    V_8
        IL_019d:  callvirt   instance string [System.Xml.XDocument]System.Xml.Linq.XAttribute::get_Value()
        IL_01a2:  stelem.ref
        IL_01a3:  call       string [System.Runtime]System.String::Format(string,
                                                                          object[])
        IL_01a8:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
        IL_01ad:  throw

        IL_01ae:  ldloca.s   V_10
        IL_01b0:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
        IL_01b5:  brfalse.s  IL_01ef

        IL_01b7:  ldloca.s   V_10
        IL_01b9:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
        IL_01be:  ldc.i4.0
        IL_01bf:  blt.s      IL_01cf

        IL_01c1:  ldloca.s   V_10
        IL_01c3:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
        IL_01c8:  ldc.i4     0x3ffff
        IL_01cd:  ble.s      IL_01ef

        IL_01cf:  ldstr      "Data in recipe ingredient \"{0}\" must be between 0 "
        + "and 0x3FFFF."
        IL_01d4:  ldc.i4.1
        IL_01d5:  newarr     [System.Runtime]System.Object
        IL_01da:  dup
        IL_01db:  ldc.i4.0
        IL_01dc:  ldloc.s    V_8
        IL_01de:  callvirt   instance string [System.Xml.XDocument]System.Xml.Linq.XAttribute::get_Value()
        IL_01e3:  stelem.ref
        IL_01e4:  call       string [System.Runtime]System.String::Format(string,
                                                                          object[])
        IL_01e9:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
        IL_01ee:  throw

        IL_01ef:  ldloc.s    V_5
        IL_01f1:  ldloc.s    V_8
        IL_01f3:  callvirt   instance class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XAttribute::get_Name()
        IL_01f8:  callvirt   instance string [System.Xml.XDocument]System.Xml.Linq.XName::get_LocalName()
        IL_01fd:  ldc.i4.0
        IL_01fe:  callvirt   instance char [System.Runtime]System.String::get_Chars(int32)
        IL_0203:  ldloc.s    V_8
        IL_0205:  callvirt   instance string [System.Xml.XDocument]System.Xml.Linq.XAttribute::get_Value()
        IL_020a:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<char,string>::Add(!0,
                                                                                                                               !1)
        IL_020f:  ldloc.s    V_7
        IL_0211:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
        IL_0216:  brtrue     IL_016b

        IL_021b:  leave.s    IL_0229

      }  // end .try
      finally
      {
        IL_021d:  ldloc.s    V_7
        IL_021f:  brfalse.s  IL_0228

        IL_0221:  ldloc.s    V_7
        IL_0223:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_0228:  endfinally
      }  // end handler
      IL_0229:  ldloc.1
      IL_022a:  callvirt   instance string [System.Xml.XDocument]System.Xml.Linq.XElement::get_Value()
      IL_022f:  callvirt   instance string [System.Runtime]System.String::Trim()
      IL_0234:  ldc.i4.1
      IL_0235:  newarr     [System.Runtime]System.Char
      IL_023a:  dup
      IL_023b:  ldc.i4.0
      IL_023c:  ldc.i4.s   10
      IL_023e:  stelem.i2
      IL_023f:  callvirt   instance string[] [System.Runtime]System.String::Split(char[])
      IL_0244:  stloc.s    V_6
      IL_0246:  ldc.i4.0
      IL_0247:  stloc.s    V_11
      IL_0249:  br         IL_02e9

      IL_024e:  ldloc.s    V_6
      IL_0250:  ldloc.s    V_11
      IL_0252:  ldelem.ref
      IL_0253:  ldc.i4.s   34
      IL_0255:  callvirt   instance int32 [System.Runtime]System.String::IndexOf(char)
      IL_025a:  stloc.s    V_12
      IL_025c:  ldloc.s    V_6
      IL_025e:  ldloc.s    V_11
      IL_0260:  ldelem.ref
      IL_0261:  ldc.i4.s   34
      IL_0263:  callvirt   instance int32 [System.Runtime]System.String::LastIndexOf(char)
      IL_0268:  stloc.s    V_13
      IL_026a:  ldloc.s    V_12
      IL_026c:  ldc.i4.0
      IL_026d:  blt.s      IL_02d8

      IL_026f:  ldloc.s    V_13
      IL_0271:  ldc.i4.0
      IL_0272:  blt.s      IL_02d8

      IL_0274:  ldloc.s    V_13
      IL_0276:  ldloc.s    V_12
      IL_0278:  ble.s      IL_02d8

      IL_027a:  ldloc.s    V_6
      IL_027c:  ldloc.s    V_11
      IL_027e:  ldelem.ref
      IL_027f:  ldloc.s    V_12
      IL_0281:  ldc.i4.1
      IL_0282:  add
      IL_0283:  ldloc.s    V_13
      IL_0285:  ldloc.s    V_12
      IL_0287:  sub
      IL_0288:  ldc.i4.1
      IL_0289:  sub
      IL_028a:  callvirt   instance string [System.Runtime]System.String::Substring(int32,
                                                                                    int32)
      IL_028f:  stloc.s    V_14
      IL_0291:  ldc.i4.0
      IL_0292:  stloc.s    V_15
      IL_0294:  br.s       IL_02cb

      IL_0296:  ldloc.s    V_14
      IL_0298:  ldloc.s    V_15
      IL_029a:  callvirt   instance char [System.Runtime]System.String::get_Chars(int32)
      IL_029f:  stloc.s    V_16
      IL_02a1:  ldloc.s    V_16
      IL_02a3:  call       bool [System.Runtime]System.Char::IsLower(char)
      IL_02a8:  brfalse.s  IL_02c5

      IL_02aa:  ldloc.s    V_5
      IL_02ac:  ldloc.s    V_16
      IL_02ae:  callvirt   instance !1 class [System.Collections]System.Collections.Generic.Dictionary`2<char,string>::get_Item(!0)
      IL_02b3:  stloc.s    V_17
      IL_02b5:  ldloc.2
      IL_02b6:  ldfld      string[] Game.CraftingRecipe::Ingredients
      IL_02bb:  ldloc.s    V_15
      IL_02bd:  ldloc.s    V_11
      IL_02bf:  ldc.i4.3
      IL_02c0:  mul
      IL_02c1:  add
      IL_02c2:  ldloc.s    V_17
      IL_02c4:  stelem.ref
      IL_02c5:  ldloc.s    V_15
      IL_02c7:  ldc.i4.1
      IL_02c8:  add
      IL_02c9:  stloc.s    V_15
      IL_02cb:  ldloc.s    V_15
      IL_02cd:  ldloc.s    V_14
      IL_02cf:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
      IL_02d4:  blt.s      IL_0296

      IL_02d6:  br.s       IL_02e3

      IL_02d8:  ldstr      "Invalid recipe line."
      IL_02dd:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
      IL_02e2:  throw

      IL_02e3:  ldloc.s    V_11
      IL_02e5:  ldc.i4.1
      IL_02e6:  add
      IL_02e7:  stloc.s    V_11
      IL_02e9:  ldloc.s    V_11
      IL_02eb:  ldloc.s    V_6
      IL_02ed:  ldlen
      IL_02ee:  conv.i4
      IL_02ef:  blt        IL_024e

      IL_02f4:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.CraftingRecipe> Game.CraftingRecipesManager::m_recipes
      IL_02f9:  ldloc.2
      IL_02fa:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.CraftingRecipe>::Add(!0)
      IL_02ff:  ldloc.0
      IL_0300:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_0305:  brtrue     IL_0024

      IL_030a:  leave.s    IL_0316

    }  // end .try
    finally
    {
      IL_030c:  ldloc.0
      IL_030d:  brfalse.s  IL_0315

      IL_030f:  ldloc.0
      IL_0310:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0315:  endfinally
    }  // end handler
    IL_0316:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_031b:  stloc.s    V_18
    IL_031d:  ldc.i4.0
    IL_031e:  stloc.s    V_19
    IL_0320:  br.s       IL_0340

    IL_0322:  ldloc.s    V_18
    IL_0324:  ldloc.s    V_19
    IL_0326:  ldelem.ref
    IL_0327:  stloc.s    V_20
    IL_0329:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.CraftingRecipe> Game.CraftingRecipesManager::m_recipes
    IL_032e:  ldloc.s    V_20
    IL_0330:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.CraftingRecipe> Game.Block::GetProceduralCraftingRecipes()
    IL_0335:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.CraftingRecipe>::AddRange(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!0>)
    IL_033a:  ldloc.s    V_19
    IL_033c:  ldc.i4.1
    IL_033d:  add
    IL_033e:  stloc.s    V_19
    IL_0340:  ldloc.s    V_19
    IL_0342:  ldloc.s    V_18
    IL_0344:  ldlen
    IL_0345:  conv.i4
    IL_0346:  blt.s      IL_0322

    IL_0348:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.CraftingRecipe> Game.CraftingRecipesManager::m_recipes
    IL_034d:  ldsfld     class [System.Runtime]System.Comparison`1<class Game.CraftingRecipe> Game.CraftingRecipesManager/'<>c'::'<>9__3_1'
    IL_0352:  dup
    IL_0353:  brtrue.s   IL_036c

    IL_0355:  pop
    IL_0356:  ldsfld     class Game.CraftingRecipesManager/'<>c' Game.CraftingRecipesManager/'<>c'::'<>9'
    IL_035b:  ldftn      instance int32 Game.CraftingRecipesManager/'<>c'::'<Initialize>b__3_1'(class Game.CraftingRecipe,
                                                                                                class Game.CraftingRecipe)
    IL_0361:  newobj     instance void class [System.Runtime]System.Comparison`1<class Game.CraftingRecipe>::.ctor(object,
                                                                                                                   native int)
    IL_0366:  dup
    IL_0367:  stsfld     class [System.Runtime]System.Comparison`1<class Game.CraftingRecipe> Game.CraftingRecipesManager/'<>c'::'<>9__3_1'
    IL_036c:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.CraftingRecipe>::Sort(class [System.Runtime]System.Comparison`1<!0>)
    IL_0371:  ret
  } // end of method CraftingRecipesManager::Initialize

  .method public hidebysig static class Game.CraftingRecipe 
          FindMatchingRecipe(class Game.SubsystemTerrain terrain,
                             string[] ingredients,
                             float32 heatLevel) cil managed
  {
    // 代码大小       147 (0x93)
    .maxstack  4
    .locals init (class Game.Block[] V_0,
             int32 V_1,
             class Game.CraftingRecipe V_2,
             valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.CraftingRecipe> V_3,
             valuetype [Engine]Engine.ReadOnlyList`1<class Game.CraftingRecipe> V_4,
             class Game.CraftingRecipe V_5,
             class Game.CraftingRecipe V_6)
    IL_0000:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0005:  stloc.0
    IL_0006:  ldc.i4.0
    IL_0007:  stloc.1
    IL_0008:  br.s       IL_0036

    IL_000a:  ldloc.0
    IL_000b:  ldloc.1
    IL_000c:  ldelem.ref
    IL_000d:  ldarg.0
    IL_000e:  ldarg.1
    IL_000f:  ldarg.2
    IL_0010:  callvirt   instance class Game.CraftingRecipe Game.Block::GetAdHocCraftingRecipe(class Game.SubsystemTerrain,
                                                                                               string[],
                                                                                               float32)
    IL_0015:  stloc.2
    IL_0016:  ldloc.2
    IL_0017:  brfalse.s  IL_0032

    IL_0019:  ldarg.2
    IL_001a:  ldloc.2
    IL_001b:  ldfld      float32 Game.CraftingRecipe::RequiredHeatLevel
    IL_0020:  blt.un.s   IL_0032

    IL_0022:  ldloc.2
    IL_0023:  ldfld      string[] Game.CraftingRecipe::Ingredients
    IL_0028:  ldarg.1
    IL_0029:  call       bool Game.CraftingRecipesManager::MatchRecipe(string[],
                                                                       string[])
    IL_002e:  brfalse.s  IL_0032

    IL_0030:  ldloc.2
    IL_0031:  ret

    IL_0032:  ldloc.1
    IL_0033:  ldc.i4.1
    IL_0034:  add
    IL_0035:  stloc.1
    IL_0036:  ldloc.1
    IL_0037:  ldloc.0
    IL_0038:  ldlen
    IL_0039:  conv.i4
    IL_003a:  blt.s      IL_000a

    IL_003c:  call       valuetype [Engine]Engine.ReadOnlyList`1<class Game.CraftingRecipe> Game.CraftingRecipesManager::get_Recipes()
    IL_0041:  stloc.s    V_4
    IL_0043:  ldloca.s   V_4
    IL_0045:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<class Game.CraftingRecipe>::GetEnumerator()
    IL_004a:  stloc.3
    .try
    {
      IL_004b:  br.s       IL_0075

      IL_004d:  ldloca.s   V_3
      IL_004f:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.CraftingRecipe>::get_Current()
      IL_0054:  stloc.s    V_5
      IL_0056:  ldarg.2
      IL_0057:  ldloc.s    V_5
      IL_0059:  ldfld      float32 Game.CraftingRecipe::RequiredHeatLevel
      IL_005e:  blt.un.s   IL_0075

      IL_0060:  ldloc.s    V_5
      IL_0062:  ldfld      string[] Game.CraftingRecipe::Ingredients
      IL_0067:  ldarg.1
      IL_0068:  call       bool Game.CraftingRecipesManager::MatchRecipe(string[],
                                                                         string[])
      IL_006d:  brfalse.s  IL_0075

      IL_006f:  ldloc.s    V_5
      IL_0071:  stloc.s    V_6
      IL_0073:  leave.s    IL_0090

      IL_0075:  ldloca.s   V_3
      IL_0077:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.CraftingRecipe>::MoveNext()
      IL_007c:  brtrue.s   IL_004d

      IL_007e:  leave.s    IL_008e

    }  // end .try
    finally
    {
      IL_0080:  ldloca.s   V_3
      IL_0082:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.CraftingRecipe>
      IL_0088:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_008d:  endfinally
    }  // end handler
    IL_008e:  ldnull
    IL_008f:  ret

    IL_0090:  ldloc.s    V_6
    IL_0092:  ret
  } // end of method CraftingRecipesManager::FindMatchingRecipe

  .method public hidebysig static int32  DecodeResult(string result) cil managed
  {
    // 代码大小       63 (0x3f)
    .maxstack  5
    .locals init (string[] V_0,
             int32 V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  newarr     [System.Runtime]System.Char
    IL_0007:  dup
    IL_0008:  ldc.i4.0
    IL_0009:  ldc.i4.s   58
    IL_000b:  stelem.i2
    IL_000c:  callvirt   instance string[] [System.Runtime]System.String::Split(char[])
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldelem.ref
    IL_0015:  ldc.i4.1
    IL_0016:  call       class Game.Block Game.BlocksManager::FindBlockByTypeName(string,
                                                                                  bool)
    IL_001b:  ldloc.0
    IL_001c:  ldlen
    IL_001d:  conv.i4
    IL_001e:  ldc.i4.2
    IL_001f:  bge.s      IL_0024

    IL_0021:  ldc.i4.0
    IL_0022:  br.s       IL_0031

    IL_0024:  ldloc.0
    IL_0025:  ldc.i4.1
    IL_0026:  ldelem.ref
    IL_0027:  call       class [System.Globalization]System.Globalization.CultureInfo [System.Globalization]System.Globalization.CultureInfo::get_InvariantCulture()
    IL_002c:  call       int32 [System.Runtime]System.Int32::Parse(string,
                                                                   class [System.Runtime]System.IFormatProvider)
    IL_0031:  stloc.1
    IL_0032:  ldfld      int32 Game.Block::BlockIndex
    IL_0037:  ldc.i4.0
    IL_0038:  ldloc.1
    IL_0039:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_003e:  ret
  } // end of method CraftingRecipesManager::DecodeResult

  .method public hidebysig static void  DecodeIngredient(string ingredient,
                                                         [out] string& craftingId,
                                                         [out] valuetype [System.Runtime]System.Nullable`1<int32>& data) cil managed
  {
    // 代码大小       65 (0x41)
    .maxstack  5
    .locals init (string[] V_0,
             valuetype [System.Runtime]System.Nullable`1<int32> V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  newarr     [System.Runtime]System.Char
    IL_0007:  dup
    IL_0008:  ldc.i4.0
    IL_0009:  ldc.i4.s   58
    IL_000b:  stelem.i2
    IL_000c:  callvirt   instance string[] [System.Runtime]System.String::Split(char[])
    IL_0011:  stloc.0
    IL_0012:  ldarg.1
    IL_0013:  ldloc.0
    IL_0014:  ldc.i4.0
    IL_0015:  ldelem.ref
    IL_0016:  stind.ref
    IL_0017:  ldarg.2
    IL_0018:  ldloc.0
    IL_0019:  ldlen
    IL_001a:  conv.i4
    IL_001b:  ldc.i4.2
    IL_001c:  bge.s      IL_0029

    IL_001e:  ldloca.s   V_1
    IL_0020:  initobj    valuetype [System.Runtime]System.Nullable`1<int32>
    IL_0026:  ldloc.1
    IL_0027:  br.s       IL_003b

    IL_0029:  ldloc.0
    IL_002a:  ldc.i4.1
    IL_002b:  ldelem.ref
    IL_002c:  call       class [System.Globalization]System.Globalization.CultureInfo [System.Globalization]System.Globalization.CultureInfo::get_InvariantCulture()
    IL_0031:  call       int32 [System.Runtime]System.Int32::Parse(string,
                                                                   class [System.Runtime]System.IFormatProvider)
    IL_0036:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_003b:  stobj      valuetype [System.Runtime]System.Nullable`1<int32>
    IL_0040:  ret
  } // end of method CraftingRecipesManager::DecodeIngredient

  .method private hidebysig static bool  MatchRecipe(string[] requiredIngredients,
                                                     string[] actualIngredients) cil managed
  {
    // 代码大小       116 (0x74)
    .maxstack  5
    .locals init (string[] V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             bool V_4,
             bool V_5,
             int32 V_6)
    IL_0000:  ldc.i4.s   9
    IL_0002:  newarr     [System.Runtime]System.String
    IL_0007:  stloc.0
    IL_0008:  ldc.i4.0
    IL_0009:  stloc.1
    IL_000a:  br.s       IL_006e

    IL_000c:  ldc.i4.s   -3
    IL_000e:  stloc.2
    IL_000f:  br.s       IL_0066

    IL_0011:  ldc.i4.s   -3
    IL_0013:  stloc.3
    IL_0014:  br.s       IL_005e

    IL_0016:  ldloc.1
    IL_0017:  brfalse.s  IL_001c

    IL_0019:  ldc.i4.1
    IL_001a:  br.s       IL_001d

    IL_001c:  ldc.i4.0
    IL_001d:  stloc.s    V_4
    IL_001f:  ldloc.0
    IL_0020:  ldarg.0
    IL_0021:  ldloc.3
    IL_0022:  ldloc.2
    IL_0023:  ldloc.s    V_4
    IL_0025:  call       bool Game.CraftingRecipesManager::TransformRecipe(string[],
                                                                           string[],
                                                                           int32,
                                                                           int32,
                                                                           bool)
    IL_002a:  brfalse.s  IL_005a

    IL_002c:  ldc.i4.1
    IL_002d:  stloc.s    V_5
    IL_002f:  ldc.i4.0
    IL_0030:  stloc.s    V_6
    IL_0032:  br.s       IL_004e

    IL_0034:  ldloc.0
    IL_0035:  ldloc.s    V_6
    IL_0037:  ldelem.ref
    IL_0038:  ldarg.1
    IL_0039:  ldloc.s    V_6
    IL_003b:  ldelem.ref
    IL_003c:  call       bool Game.CraftingRecipesManager::CompareIngredients(string,
                                                                              string)
    IL_0041:  brtrue.s   IL_0048

    IL_0043:  ldc.i4.0
    IL_0044:  stloc.s    V_5
    IL_0046:  br.s       IL_0054

    IL_0048:  ldloc.s    V_6
    IL_004a:  ldc.i4.1
    IL_004b:  add
    IL_004c:  stloc.s    V_6
    IL_004e:  ldloc.s    V_6
    IL_0050:  ldc.i4.s   9
    IL_0052:  blt.s      IL_0034

    IL_0054:  ldloc.s    V_5
    IL_0056:  brfalse.s  IL_005a

    IL_0058:  ldc.i4.1
    IL_0059:  ret

    IL_005a:  ldloc.3
    IL_005b:  ldc.i4.1
    IL_005c:  add
    IL_005d:  stloc.3
    IL_005e:  ldloc.3
    IL_005f:  ldc.i4.3
    IL_0060:  ble.s      IL_0016

    IL_0062:  ldloc.2
    IL_0063:  ldc.i4.1
    IL_0064:  add
    IL_0065:  stloc.2
    IL_0066:  ldloc.2
    IL_0067:  ldc.i4.3
    IL_0068:  ble.s      IL_0011

    IL_006a:  ldloc.1
    IL_006b:  ldc.i4.1
    IL_006c:  add
    IL_006d:  stloc.1
    IL_006e:  ldloc.1
    IL_006f:  ldc.i4.2
    IL_0070:  blt.s      IL_000c

    IL_0072:  ldc.i4.0
    IL_0073:  ret
  } // end of method CraftingRecipesManager::MatchRecipe

  .method private hidebysig static bool  TransformRecipe(string[] transformedIngredients,
                                                         string[] ingredients,
                                                         int32 shiftX,
                                                         int32 shiftY,
                                                         bool flip) cil managed
  {
    // 代码大小       113 (0x71)
    .maxstack  4
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             string V_5)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  br.s       IL_000c

    IL_0004:  ldarg.0
    IL_0005:  ldloc.0
    IL_0006:  ldnull
    IL_0007:  stelem.ref
    IL_0008:  ldloc.0
    IL_0009:  ldc.i4.1
    IL_000a:  add
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  ldc.i4.s   9
    IL_000f:  blt.s      IL_0004

    IL_0011:  ldc.i4.0
    IL_0012:  stloc.1
    IL_0013:  br.s       IL_006b

    IL_0015:  ldc.i4.0
    IL_0016:  stloc.2
    IL_0017:  br.s       IL_0063

    IL_0019:  ldarg.s    flip
    IL_001b:  brtrue.s   IL_0020

    IL_001d:  ldloc.2
    IL_001e:  br.s       IL_0025

    IL_0020:  ldc.i4.3
    IL_0021:  ldloc.2
    IL_0022:  sub
    IL_0023:  ldc.i4.1
    IL_0024:  sub
    IL_0025:  ldarg.2
    IL_0026:  add
    IL_0027:  stloc.3
    IL_0028:  ldloc.1
    IL_0029:  ldarg.3
    IL_002a:  add
    IL_002b:  stloc.s    V_4
    IL_002d:  ldarg.1
    IL_002e:  ldloc.2
    IL_002f:  ldloc.1
    IL_0030:  ldc.i4.3
    IL_0031:  mul
    IL_0032:  add
    IL_0033:  ldelem.ref
    IL_0034:  stloc.s    V_5
    IL_0036:  ldloc.3
    IL_0037:  ldc.i4.0
    IL_0038:  blt.s      IL_0054

    IL_003a:  ldloc.s    V_4
    IL_003c:  ldc.i4.0
    IL_003d:  blt.s      IL_0054

    IL_003f:  ldloc.3
    IL_0040:  ldc.i4.3
    IL_0041:  bge.s      IL_0054

    IL_0043:  ldloc.s    V_4
    IL_0045:  ldc.i4.3
    IL_0046:  bge.s      IL_0054

    IL_0048:  ldarg.0
    IL_0049:  ldloc.3
    IL_004a:  ldloc.s    V_4
    IL_004c:  ldc.i4.3
    IL_004d:  mul
    IL_004e:  add
    IL_004f:  ldloc.s    V_5
    IL_0051:  stelem.ref
    IL_0052:  br.s       IL_005f

    IL_0054:  ldloc.s    V_5
    IL_0056:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_005b:  brtrue.s   IL_005f

    IL_005d:  ldc.i4.0
    IL_005e:  ret

    IL_005f:  ldloc.2
    IL_0060:  ldc.i4.1
    IL_0061:  add
    IL_0062:  stloc.2
    IL_0063:  ldloc.2
    IL_0064:  ldc.i4.3
    IL_0065:  blt.s      IL_0019

    IL_0067:  ldloc.1
    IL_0068:  ldc.i4.1
    IL_0069:  add
    IL_006a:  stloc.1
    IL_006b:  ldloc.1
    IL_006c:  ldc.i4.3
    IL_006d:  blt.s      IL_0015

    IL_006f:  ldc.i4.1
    IL_0070:  ret
  } // end of method CraftingRecipesManager::TransformRecipe

  .method private hidebysig static bool  CompareIngredients(string requiredIngredient,
                                                            string actualIngredient) cil managed
  {
    // 代码大小       95 (0x5f)
    .maxstack  3
    .locals init (string V_0,
             string V_1,
             valuetype [System.Runtime]System.Nullable`1<int32> V_2,
             valuetype [System.Runtime]System.Nullable`1<int32> V_3)
    IL_0000:  ldarg.0
    IL_0001:  brtrue.s   IL_0008

    IL_0003:  ldarg.1
    IL_0004:  ldnull
    IL_0005:  ceq
    IL_0007:  ret

    IL_0008:  ldarg.1
    IL_0009:  brtrue.s   IL_0010

    IL_000b:  ldarg.0
    IL_000c:  ldnull
    IL_000d:  ceq
    IL_000f:  ret

    IL_0010:  ldarg.0
    IL_0011:  ldloca.s   V_0
    IL_0013:  ldloca.s   V_2
    IL_0015:  call       void Game.CraftingRecipesManager::DecodeIngredient(string,
                                                                            string&,
                                                                            valuetype [System.Runtime]System.Nullable`1<int32>&)
    IL_001a:  ldarg.1
    IL_001b:  ldloca.s   V_1
    IL_001d:  ldloca.s   V_3
    IL_001f:  call       void Game.CraftingRecipesManager::DecodeIngredient(string,
                                                                            string&,
                                                                            valuetype [System.Runtime]System.Nullable`1<int32>&)
    IL_0024:  ldloca.s   V_3
    IL_0026:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_002b:  brtrue.s   IL_0038

    IL_002d:  ldstr      "Actual ingredient data not specified."
    IL_0032:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0037:  throw

    IL_0038:  ldloc.0
    IL_0039:  ldloc.1
    IL_003a:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                         string)
    IL_003f:  brfalse.s  IL_005d

    IL_0041:  ldloca.s   V_2
    IL_0043:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0048:  brtrue.s   IL_004c

    IL_004a:  ldc.i4.1
    IL_004b:  ret

    IL_004c:  ldloca.s   V_2
    IL_004e:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
    IL_0053:  ldloca.s   V_3
    IL_0055:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
    IL_005a:  ceq
    IL_005c:  ret

    IL_005d:  ldc.i4.0
    IL_005e:  ret
  } // end of method CraftingRecipesManager::CompareIngredients

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       11 (0xb)
    .maxstack  8
    IL_0000:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.CraftingRecipe>::.ctor()
    IL_0005:  stsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.CraftingRecipe> Game.CraftingRecipesManager::m_recipes
    IL_000a:  ret
  } // end of method CraftingRecipesManager::.cctor

  .property valuetype [Engine]Engine.ReadOnlyList`1<class Game.CraftingRecipe>
          Recipes()
  {
    .get valuetype [Engine]Engine.ReadOnlyList`1<class Game.CraftingRecipe> Game.CraftingRecipesManager::get_Recipes()
  } // end of property CraftingRecipesManager::Recipes
} // end of class Game.CraftingRecipesManager