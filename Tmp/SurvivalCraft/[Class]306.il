.class public auto ansi beforefieldinit Game.ClothingBlock
       extends Game.Block
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.ClothingBlock/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`2<class Game.ClothingData,int32> '<>9__11_0'
    .field public static class [System.Runtime]System.Func`2<string,bool> '<>9__12_0'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.ClothingBlock/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.ClothingBlock/'<>c' Game.ClothingBlock/'<>c'::'<>9'
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

    .method assembly hidebysig instance int32 
            '<GetCreativeValues>b__11_0'(class Game.ClothingData cd) cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldfld      int32 Game.ClothingData::DisplayIndex
      IL_0006:  ret
    } // end of method '<>c'::'<GetCreativeValues>b__11_0'

    .method assembly hidebysig instance bool 
            '<GetAdHocCraftingRecipe>b__12_0'(string i) cil managed
    {
      // 代码大小       10 (0xa)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
      IL_0006:  ldc.i4.0
      IL_0007:  ceq
      IL_0009:  ret
    } // end of method '<>c'::'<GetAdHocCraftingRecipe>b__12_0'

  } // end of class '<>c'

  .class auto ansi sealed nested private beforefieldinit '<GetCreativeValues>d__11'
         extends [System.Runtime]System.Object
         implements class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32>,
                    [System.Runtime]System.Collections.IEnumerable,
                    class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32>,
                    [System.Runtime]System.Collections.IEnumerator,
                    [System.Runtime]System.IDisposable
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field private int32 '<>1__state'
    .field private int32 '<>2__current'
    .field private int32 '<>l__initialThreadId'
    .field private class Game.ClothingData '<clothingData>5__1'
    .field private int32 '<color>5__2'
    .field private int32 '<colorsCount>5__3'
    .field private class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.ClothingData> '<>7__wrap1'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor(int32 '<>1__state') cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      // 代码大小       25 (0x19)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ldarg.0
      IL_0007:  ldarg.1
      IL_0008:  stfld      int32 Game.ClothingBlock/'<GetCreativeValues>d__11'::'<>1__state'
      IL_000d:  ldarg.0
      IL_000e:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0013:  stfld      int32 Game.ClothingBlock/'<GetCreativeValues>d__11'::'<>l__initialThreadId'
      IL_0018:  ret
    } // end of method '<GetCreativeValues>d__11'::.ctor

    .method private hidebysig newslot virtual final 
            instance void  System.IDisposable.Dispose() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.IDisposable::Dispose
      // 代码大小       27 (0x1b)
      .maxstack  2
      .locals init (int32 V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.ClothingBlock/'<GetCreativeValues>d__11'::'<>1__state'
      IL_0006:  stloc.0
      IL_0007:  ldloc.0
      IL_0008:  ldc.i4.s   -3
      IL_000a:  beq.s      IL_0010

      IL_000c:  ldloc.0
      IL_000d:  ldc.i4.1
      IL_000e:  bne.un.s   IL_001a

      IL_0010:  nop
      .try
      {
        IL_0011:  leave.s    IL_001a

      }  // end .try
      finally
      {
        IL_0013:  ldarg.0
        IL_0014:  call       instance void Game.ClothingBlock/'<GetCreativeValues>d__11'::'<>m__Finally1'()
        IL_0019:  endfinally
      }  // end handler
      IL_001a:  ret
    } // end of method '<GetCreativeValues>d__11'::System.IDisposable.Dispose

    .method private hidebysig newslot virtual final 
            instance bool  MoveNext() cil managed
    {
      .override [System.Runtime]System.Collections.IEnumerator::MoveNext
      // 代码大小       295 (0x127)
      .maxstack  4
      .locals init (bool V_0,
               int32 V_1,
               class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.ClothingData> V_2,
               int32 V_3,
               int32 V_4)
      .try
      {
        IL_0000:  ldarg.0
        IL_0001:  ldfld      int32 Game.ClothingBlock/'<GetCreativeValues>d__11'::'<>1__state'
        IL_0006:  stloc.1
        IL_0007:  ldloc.1
        IL_0008:  brfalse.s  IL_0018

        IL_000a:  ldloc.1
        IL_000b:  ldc.i4.1
        IL_000c:  beq        IL_00ce

        IL_0011:  ldc.i4.0
        IL_0012:  stloc.0
        IL_0013:  leave      IL_0125

        IL_0018:  ldarg.0
        IL_0019:  ldc.i4.m1
        IL_001a:  stfld      int32 Game.ClothingBlock/'<GetCreativeValues>d__11'::'<>1__state'
        IL_001f:  ldsfld     class Game.ClothingData[] Game.ClothingBlock::m_clothingData
        IL_0024:  ldsfld     class [System.Runtime]System.Func`2<class Game.ClothingData,int32> Game.ClothingBlock/'<>c'::'<>9__11_0'
        IL_0029:  dup
        IL_002a:  brtrue.s   IL_0043

        IL_002c:  pop
        IL_002d:  ldsfld     class Game.ClothingBlock/'<>c' Game.ClothingBlock/'<>c'::'<>9'
        IL_0032:  ldftn      instance int32 Game.ClothingBlock/'<>c'::'<GetCreativeValues>b__11_0'(class Game.ClothingData)
        IL_0038:  newobj     instance void class [System.Runtime]System.Func`2<class Game.ClothingData,int32>::.ctor(object,
                                                                                                                     native int)
        IL_003d:  dup
        IL_003e:  stsfld     class [System.Runtime]System.Func`2<class Game.ClothingData,int32> Game.ClothingBlock/'<>c'::'<>9__11_0'
        IL_0043:  call       class [System.Linq]System.Linq.IOrderedEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::OrderBy<class Game.ClothingData,int32>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                  class [System.Runtime]System.Func`2<!!0,!!1>)
        IL_0048:  stloc.2
        IL_0049:  ldarg.0
        IL_004a:  ldloc.2
        IL_004b:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.ClothingData>::GetEnumerator()
        IL_0050:  stfld      class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.ClothingData> Game.ClothingBlock/'<GetCreativeValues>d__11'::'<>7__wrap1'
        IL_0055:  ldarg.0
        IL_0056:  ldc.i4.s   -3
        IL_0058:  stfld      int32 Game.ClothingBlock/'<GetCreativeValues>d__11'::'<>1__state'
        IL_005d:  br         IL_00fd

        IL_0062:  ldarg.0
        IL_0063:  ldarg.0
        IL_0064:  ldfld      class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.ClothingData> Game.ClothingBlock/'<GetCreativeValues>d__11'::'<>7__wrap1'
        IL_0069:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.ClothingData>::get_Current()
        IL_006e:  stfld      class Game.ClothingData Game.ClothingBlock/'<GetCreativeValues>d__11'::'<clothingData>5__1'
        IL_0073:  ldarg.0
        IL_0074:  ldarg.0
        IL_0075:  ldfld      class Game.ClothingData Game.ClothingBlock/'<GetCreativeValues>d__11'::'<clothingData>5__1'
        IL_007a:  ldfld      bool Game.ClothingData::CanBeDyed
        IL_007f:  brtrue.s   IL_0084

        IL_0081:  ldc.i4.1
        IL_0082:  br.s       IL_0086

        IL_0084:  ldc.i4.s   16
        IL_0086:  stfld      int32 Game.ClothingBlock/'<GetCreativeValues>d__11'::'<colorsCount>5__3'
        IL_008b:  ldarg.0
        IL_008c:  ldc.i4.0
        IL_008d:  stfld      int32 Game.ClothingBlock/'<GetCreativeValues>d__11'::'<color>5__2'
        IL_0092:  br.s       IL_00e8

        IL_0094:  ldc.i4.0
        IL_0095:  ldarg.0
        IL_0096:  ldfld      class Game.ClothingData Game.ClothingBlock/'<GetCreativeValues>d__11'::'<clothingData>5__1'
        IL_009b:  ldfld      int32 Game.ClothingData::Index
        IL_00a0:  call       int32 Game.ClothingBlock::SetClothingIndex(int32,
                                                                        int32)
        IL_00a5:  ldarg.0
        IL_00a6:  ldfld      int32 Game.ClothingBlock/'<GetCreativeValues>d__11'::'<color>5__2'
        IL_00ab:  call       int32 Game.ClothingBlock::SetClothingColor(int32,
                                                                        int32)
        IL_00b0:  stloc.3
        IL_00b1:  ldarg.0
        IL_00b2:  ldc.i4     0xcb
        IL_00b7:  ldc.i4.0
        IL_00b8:  ldloc.3
        IL_00b9:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
        IL_00be:  stfld      int32 Game.ClothingBlock/'<GetCreativeValues>d__11'::'<>2__current'
        IL_00c3:  ldarg.0
        IL_00c4:  ldc.i4.1
        IL_00c5:  stfld      int32 Game.ClothingBlock/'<GetCreativeValues>d__11'::'<>1__state'
        IL_00ca:  ldc.i4.1
        IL_00cb:  stloc.0
        IL_00cc:  leave.s    IL_0125

        IL_00ce:  ldarg.0
        IL_00cf:  ldc.i4.s   -3
        IL_00d1:  stfld      int32 Game.ClothingBlock/'<GetCreativeValues>d__11'::'<>1__state'
        IL_00d6:  ldarg.0
        IL_00d7:  ldfld      int32 Game.ClothingBlock/'<GetCreativeValues>d__11'::'<color>5__2'
        IL_00dc:  ldc.i4.1
        IL_00dd:  add
        IL_00de:  stloc.s    V_4
        IL_00e0:  ldarg.0
        IL_00e1:  ldloc.s    V_4
        IL_00e3:  stfld      int32 Game.ClothingBlock/'<GetCreativeValues>d__11'::'<color>5__2'
        IL_00e8:  ldarg.0
        IL_00e9:  ldfld      int32 Game.ClothingBlock/'<GetCreativeValues>d__11'::'<color>5__2'
        IL_00ee:  ldarg.0
        IL_00ef:  ldfld      int32 Game.ClothingBlock/'<GetCreativeValues>d__11'::'<colorsCount>5__3'
        IL_00f4:  blt.s      IL_0094

        IL_00f6:  ldarg.0
        IL_00f7:  ldnull
        IL_00f8:  stfld      class Game.ClothingData Game.ClothingBlock/'<GetCreativeValues>d__11'::'<clothingData>5__1'
        IL_00fd:  ldarg.0
        IL_00fe:  ldfld      class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.ClothingData> Game.ClothingBlock/'<GetCreativeValues>d__11'::'<>7__wrap1'
        IL_0103:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
        IL_0108:  brtrue     IL_0062

        IL_010d:  ldarg.0
        IL_010e:  call       instance void Game.ClothingBlock/'<GetCreativeValues>d__11'::'<>m__Finally1'()
        IL_0113:  ldarg.0
        IL_0114:  ldnull
        IL_0115:  stfld      class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.ClothingData> Game.ClothingBlock/'<GetCreativeValues>d__11'::'<>7__wrap1'
        IL_011a:  ldc.i4.0
        IL_011b:  stloc.0
        IL_011c:  leave.s    IL_0125

      }  // end .try
      fault
      {
        IL_011e:  ldarg.0
        IL_011f:  call       instance void Game.ClothingBlock/'<GetCreativeValues>d__11'::System.IDisposable.Dispose()
        IL_0124:  endfinally
      }  // end handler
      IL_0125:  ldloc.0
      IL_0126:  ret
    } // end of method '<GetCreativeValues>d__11'::MoveNext

    .method private hidebysig instance void 
            '<>m__Finally1'() cil managed
    {
      // 代码大小       27 (0x1b)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldc.i4.m1
      IL_0002:  stfld      int32 Game.ClothingBlock/'<GetCreativeValues>d__11'::'<>1__state'
      IL_0007:  ldarg.0
      IL_0008:  ldfld      class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.ClothingData> Game.ClothingBlock/'<GetCreativeValues>d__11'::'<>7__wrap1'
      IL_000d:  brfalse.s  IL_001a

      IL_000f:  ldarg.0
      IL_0010:  ldfld      class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.ClothingData> Game.ClothingBlock/'<GetCreativeValues>d__11'::'<>7__wrap1'
      IL_0015:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_001a:  ret
    } // end of method '<GetCreativeValues>d__11'::'<>m__Finally1'

    .method private hidebysig newslot specialname virtual final 
            instance int32  'System.Collections.Generic.IEnumerator<System.Int32>.get_Current'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32>::get_Current()
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.ClothingBlock/'<GetCreativeValues>d__11'::'<>2__current'
      IL_0006:  ret
    } // end of method '<GetCreativeValues>d__11'::'System.Collections.Generic.IEnumerator<System.Int32>.get_Current'

    .method private hidebysig newslot virtual final 
            instance void  System.Collections.IEnumerator.Reset() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerator::Reset
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  newobj     instance void [System.Runtime]System.NotSupportedException::.ctor()
      IL_0005:  throw
    } // end of method '<GetCreativeValues>d__11'::System.Collections.IEnumerator.Reset

    .method private hidebysig newslot specialname virtual final 
            instance object  System.Collections.IEnumerator.get_Current() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerator::get_Current
      // 代码大小       12 (0xc)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.ClothingBlock/'<GetCreativeValues>d__11'::'<>2__current'
      IL_0006:  box        [System.Runtime]System.Int32
      IL_000b:  ret
    } // end of method '<GetCreativeValues>d__11'::System.Collections.IEnumerator.get_Current

    .method private hidebysig newslot virtual final 
            instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32> 
            'System.Collections.Generic.IEnumerable<System.Int32>.GetEnumerator'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32>::GetEnumerator()
      // 代码大小       43 (0x2b)
      .maxstack  2
      .locals init (class Game.ClothingBlock/'<GetCreativeValues>d__11' V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.ClothingBlock/'<GetCreativeValues>d__11'::'<>1__state'
      IL_0006:  ldc.i4.s   -2
      IL_0008:  bne.un.s   IL_0022

      IL_000a:  ldarg.0
      IL_000b:  ldfld      int32 Game.ClothingBlock/'<GetCreativeValues>d__11'::'<>l__initialThreadId'
      IL_0010:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0015:  bne.un.s   IL_0022

      IL_0017:  ldarg.0
      IL_0018:  ldc.i4.0
      IL_0019:  stfld      int32 Game.ClothingBlock/'<GetCreativeValues>d__11'::'<>1__state'
      IL_001e:  ldarg.0
      IL_001f:  stloc.0
      IL_0020:  br.s       IL_0029

      IL_0022:  ldc.i4.0
      IL_0023:  newobj     instance void Game.ClothingBlock/'<GetCreativeValues>d__11'::.ctor(int32)
      IL_0028:  stloc.0
      IL_0029:  ldloc.0
      IL_002a:  ret
    } // end of method '<GetCreativeValues>d__11'::'System.Collections.Generic.IEnumerable<System.Int32>.GetEnumerator'

    .method private hidebysig newslot virtual final 
            instance class [System.Runtime]System.Collections.IEnumerator 
            System.Collections.IEnumerable.GetEnumerator() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerable::GetEnumerator
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32> Game.ClothingBlock/'<GetCreativeValues>d__11'::'System.Collections.Generic.IEnumerable<System.Int32>.GetEnumerator'()
      IL_0006:  ret
    } // end of method '<GetCreativeValues>d__11'::System.Collections.IEnumerable.GetEnumerator

    .property instance int32 'System.Collections.Generic.IEnumerator<System.Int32>.Current'()
    {
      .get instance int32 Game.ClothingBlock/'<GetCreativeValues>d__11'::'System.Collections.Generic.IEnumerator<System.Int32>.get_Current'()
    } // end of property '<GetCreativeValues>d__11'::'System.Collections.Generic.IEnumerator<System.Int32>.Current'
    .property instance object System.Collections.IEnumerator.Current()
    {
      .get instance object Game.ClothingBlock/'<GetCreativeValues>d__11'::System.Collections.IEnumerator.get_Current()
    } // end of property '<GetCreativeValues>d__11'::System.Collections.IEnumerator.Current
  } // end of class '<GetCreativeValues>d__11'

  .field public static literal int32 Index = int32(0x000000CB)
  .field private static class Game.ClothingData[] m_clothingData
  .field private class Game.BlockMesh m_innerMesh
  .field private class Game.BlockMesh m_outerMesh
  .field private static valuetype [Engine]Engine.Matrix[] m_slotTransforms
  .method public hidebysig virtual instance void 
          Initialize() cil managed
  {
    // 代码大小       1182 (0x49e)
    .maxstack  8
    .locals init (int32 V_0,
             class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class Game.ClothingData> V_1,
             valuetype [Engine]Engine.Matrix[] V_2,
             int32 V_3,
             int32 V_4,
             valuetype [Engine]Engine.Matrix[] V_5,
             int32 V_6,
             int32 V_7,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> V_8,
             class [System.Xml.XDocument]System.Xml.Linq.XElement V_9,
             class Game.ClothingData V_10,
             int32 V_11,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelBone> V_12,
             valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelMesh> V_13,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMesh> V_14,
             class [Engine]Engine.Graphics.ModelMesh V_15,
             valuetype [Engine]Engine.Matrix V_16,
             valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelMeshPart> V_17,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> V_18,
             class [Engine]Engine.Graphics.ModelMeshPart V_19,
             valuetype [Engine]Engine.Color V_20,
             class [Engine]Engine.Graphics.ModelMesh V_21,
             valuetype [Engine]Engine.Matrix V_22,
             class [Engine]Engine.Graphics.ModelMeshPart V_23,
             valuetype [Engine]Engine.Color V_24)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class Game.ClothingData>::.ctor()
    IL_0007:  stloc.1
    IL_0008:  ldstr      "Clothes"
    IL_000d:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_0012:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Elements()
    IL_0017:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::GetEnumerator()
    IL_001c:  stloc.s    V_8
    .try
    {
      IL_001e:  br         IL_0172

      IL_0023:  ldloc.s    V_8
      IL_0025:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::get_Current()
      IL_002a:  stloc.s    V_9
      IL_002c:  newobj     instance void Game.ClothingData::.ctor()
      IL_0031:  dup
      IL_0032:  ldloc.s    V_9
      IL_0034:  ldstr      "Index"
      IL_0039:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<int32>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                             string)
      IL_003e:  stfld      int32 Game.ClothingData::Index
      IL_0043:  dup
      IL_0044:  ldloc.0
      IL_0045:  dup
      IL_0046:  ldc.i4.1
      IL_0047:  add
      IL_0048:  stloc.0
      IL_0049:  stfld      int32 Game.ClothingData::DisplayIndex
      IL_004e:  dup
      IL_004f:  ldloc.s    V_9
      IL_0051:  ldstr      "DisplayName"
      IL_0056:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<string>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                              string)
      IL_005b:  stfld      string Game.ClothingData::DisplayName
      IL_0060:  dup
      IL_0061:  ldloc.s    V_9
      IL_0063:  ldstr      "Slot"
      IL_0068:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<valuetype Game.ClothingSlot>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                                                   string)
      IL_006d:  stfld      valuetype Game.ClothingSlot Game.ClothingData::Slot
      IL_0072:  dup
      IL_0073:  ldloc.s    V_9
      IL_0075:  ldstr      "ArmorProtection"
      IL_007a:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<float32>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                               string)
      IL_007f:  stfld      float32 Game.ClothingData::ArmorProtection
      IL_0084:  dup
      IL_0085:  ldloc.s    V_9
      IL_0087:  ldstr      "Sturdiness"
      IL_008c:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<float32>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                               string)
      IL_0091:  stfld      float32 Game.ClothingData::Sturdiness
      IL_0096:  dup
      IL_0097:  ldloc.s    V_9
      IL_0099:  ldstr      "Insulation"
      IL_009e:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<float32>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                               string)
      IL_00a3:  stfld      float32 Game.ClothingData::Insulation
      IL_00a8:  dup
      IL_00a9:  ldloc.s    V_9
      IL_00ab:  ldstr      "MovementSpeedFactor"
      IL_00b0:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<float32>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                               string)
      IL_00b5:  stfld      float32 Game.ClothingData::MovementSpeedFactor
      IL_00ba:  dup
      IL_00bb:  ldloc.s    V_9
      IL_00bd:  ldstr      "SteedMovementSpeedFactor"
      IL_00c2:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<float32>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                               string)
      IL_00c7:  stfld      float32 Game.ClothingData::SteedMovementSpeedFactor
      IL_00cc:  dup
      IL_00cd:  ldloc.s    V_9
      IL_00cf:  ldstr      "DensityModifier"
      IL_00d4:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<float32>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                               string)
      IL_00d9:  stfld      float32 Game.ClothingData::DensityModifier
      IL_00de:  dup
      IL_00df:  ldloc.s    V_9
      IL_00e1:  ldstr      "IsOuter"
      IL_00e6:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<bool>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                            string)
      IL_00eb:  stfld      bool Game.ClothingData::IsOuter
      IL_00f0:  dup
      IL_00f1:  ldloc.s    V_9
      IL_00f3:  ldstr      "CanBeDyed"
      IL_00f8:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<bool>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                            string)
      IL_00fd:  stfld      bool Game.ClothingData::CanBeDyed
      IL_0102:  dup
      IL_0103:  ldloc.s    V_9
      IL_0105:  ldstr      "Layer"
      IL_010a:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<int32>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                             string)
      IL_010f:  stfld      int32 Game.ClothingData::Layer
      IL_0114:  dup
      IL_0115:  ldloc.s    V_9
      IL_0117:  ldstr      "PlayerLevelRequired"
      IL_011c:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<int32>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                             string)
      IL_0121:  stfld      int32 Game.ClothingData::PlayerLevelRequired
      IL_0126:  dup
      IL_0127:  ldloc.s    V_9
      IL_0129:  ldstr      "TextureName"
      IL_012e:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<string>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                              string)
      IL_0133:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Texture2D>(string)
      IL_0138:  stfld      class [Engine]Engine.Graphics.Texture2D Game.ClothingData::Texture
      IL_013d:  dup
      IL_013e:  ldloc.s    V_9
      IL_0140:  ldstr      "ImpactSoundsFolder"
      IL_0145:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<string>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                              string)
      IL_014a:  stfld      string Game.ClothingData::ImpactSoundsFolder
      IL_014f:  dup
      IL_0150:  ldloc.s    V_9
      IL_0152:  ldstr      "Description"
      IL_0157:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<string>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                              string)
      IL_015c:  stfld      string Game.ClothingData::Description
      IL_0161:  stloc.s    V_10
      IL_0163:  ldloc.1
      IL_0164:  ldloc.s    V_10
      IL_0166:  ldfld      int32 Game.ClothingData::Index
      IL_016b:  ldloc.s    V_10
      IL_016d:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class Game.ClothingData>::Add(!0,
                                                                                                                                               !1)
      IL_0172:  ldloc.s    V_8
      IL_0174:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_0179:  brtrue     IL_0023

      IL_017e:  leave.s    IL_018c

    }  // end .try
    finally
    {
      IL_0180:  ldloc.s    V_8
      IL_0182:  brfalse.s  IL_018b

      IL_0184:  ldloc.s    V_8
      IL_0186:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_018b:  endfinally
    }  // end handler
    IL_018c:  ldloc.1
    IL_018d:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class Game.ClothingData>::get_Count()
    IL_0192:  newarr     Game.ClothingData
    IL_0197:  stsfld     class Game.ClothingData[] Game.ClothingBlock::m_clothingData
    IL_019c:  ldc.i4.0
    IL_019d:  stloc.s    V_11
    IL_019f:  br.s       IL_01b7

    IL_01a1:  ldsfld     class Game.ClothingData[] Game.ClothingBlock::m_clothingData
    IL_01a6:  ldloc.s    V_11
    IL_01a8:  ldloc.1
    IL_01a9:  ldloc.s    V_11
    IL_01ab:  callvirt   instance !1 class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class Game.ClothingData>::get_Item(!0)
    IL_01b0:  stelem.ref
    IL_01b1:  ldloc.s    V_11
    IL_01b3:  ldc.i4.1
    IL_01b4:  add
    IL_01b5:  stloc.s    V_11
    IL_01b7:  ldloc.s    V_11
    IL_01b9:  ldloc.1
    IL_01ba:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class Game.ClothingData>::get_Count()
    IL_01bf:  blt.s      IL_01a1

    IL_01c1:  ldc.i4.0
    IL_01c2:  call       class [Engine]Engine.Graphics.Model Game.CharacterSkinsManager::GetPlayerModel(valuetype Game.PlayerClass)
    IL_01c7:  dup
    IL_01c8:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelBone> [Engine]Engine.Graphics.Model::get_Bones()
    IL_01cd:  stloc.s    V_12
    IL_01cf:  ldloca.s   V_12
    IL_01d1:  call       instance int32 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelBone>::get_Count()
    IL_01d6:  newarr     [Engine]Engine.Matrix
    IL_01db:  stloc.2
    IL_01dc:  dup
    IL_01dd:  ldloc.2
    IL_01de:  callvirt   instance void [Engine]Engine.Graphics.Model::CopyAbsoluteBoneTransformsTo(valuetype [Engine]Engine.Matrix[])
    IL_01e3:  dup
    IL_01e4:  ldstr      "Hand1"
    IL_01e9:  ldc.i4.1
    IL_01ea:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.Model::FindBone(string,
                                                                                                                  bool)
    IL_01ef:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_01f4:  stloc.3
    IL_01f5:  dup
    IL_01f6:  ldstr      "Hand2"
    IL_01fb:  ldc.i4.1
    IL_01fc:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.Model::FindBone(string,
                                                                                                                  bool)
    IL_0201:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_0206:  stloc.s    V_4
    IL_0208:  ldloc.2
    IL_0209:  ldloc.3
    IL_020a:  ldc.r4     0.1
    IL_020f:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_0214:  ldloc.2
    IL_0215:  ldloc.3
    IL_0216:  ldelem     [Engine]Engine.Matrix
    IL_021b:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0220:  stelem     [Engine]Engine.Matrix
    IL_0225:  ldloc.2
    IL_0226:  ldloc.s    V_4
    IL_0228:  ldc.r4     -0.1
    IL_022d:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_0232:  ldloc.2
    IL_0233:  ldloc.s    V_4
    IL_0235:  ldelem     [Engine]Engine.Matrix
    IL_023a:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_023f:  stelem     [Engine]Engine.Matrix
    IL_0244:  ldarg.0
    IL_0245:  newobj     instance void Game.BlockMesh::.ctor()
    IL_024a:  stfld      class Game.BlockMesh Game.ClothingBlock::m_innerMesh
    IL_024f:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMesh> [Engine]Engine.Graphics.Model::get_Meshes()
    IL_0254:  stloc.s    V_14
    IL_0256:  ldloca.s   V_14
    IL_0258:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMesh>::GetEnumerator()
    IL_025d:  stloc.s    V_13
    .try
    {
      IL_025f:  br         IL_0301

      IL_0264:  ldloca.s   V_13
      IL_0266:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelMesh>::get_Current()
      IL_026b:  stloc.s    V_15
      IL_026d:  ldloc.2
      IL_026e:  ldloc.s    V_15
      IL_0270:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
      IL_0275:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
      IL_027a:  ldelem     [Engine]Engine.Matrix
      IL_027f:  stloc.s    V_16
      IL_0281:  ldloc.s    V_15
      IL_0283:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
      IL_0288:  stloc.s    V_18
      IL_028a:  ldloca.s   V_18
      IL_028c:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::GetEnumerator()
      IL_0291:  stloc.s    V_17
      .try
      {
        IL_0293:  br.s       IL_02e8

        IL_0295:  ldloca.s   V_17
        IL_0297:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelMeshPart>::get_Current()
        IL_029c:  stloc.s    V_19
        IL_029e:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
        IL_02a3:  ldc.r4     0.80000001
        IL_02a8:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                              float32)
        IL_02ad:  stloc.s    V_20
        IL_02af:  ldloca.s   V_20
        IL_02b1:  ldc.i4     0xff
        IL_02b6:  call       instance void [Engine]Engine.Color::set_A(uint8)
        IL_02bb:  ldarg.0
        IL_02bc:  ldfld      class Game.BlockMesh Game.ClothingBlock::m_innerMesh
        IL_02c1:  ldloc.s    V_19
        IL_02c3:  ldloc.s    V_16
        IL_02c5:  ldc.i4.0
        IL_02c6:  ldc.i4.0
        IL_02c7:  ldc.i4.0
        IL_02c8:  ldc.i4.0
        IL_02c9:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
        IL_02ce:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                               valuetype [Engine]Engine.Matrix,
                                                                               bool,
                                                                               bool,
                                                                               bool,
                                                                               bool,
                                                                               valuetype [Engine]Engine.Color)
        IL_02d3:  ldarg.0
        IL_02d4:  ldfld      class Game.BlockMesh Game.ClothingBlock::m_innerMesh
        IL_02d9:  ldloc.s    V_19
        IL_02db:  ldloc.s    V_16
        IL_02dd:  ldc.i4.0
        IL_02de:  ldc.i4.1
        IL_02df:  ldc.i4.0
        IL_02e0:  ldc.i4.1
        IL_02e1:  ldloc.s    V_20
        IL_02e3:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                               valuetype [Engine]Engine.Matrix,
                                                                               bool,
                                                                               bool,
                                                                               bool,
                                                                               bool,
                                                                               valuetype [Engine]Engine.Color)
        IL_02e8:  ldloca.s   V_17
        IL_02ea:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelMeshPart>::MoveNext()
        IL_02ef:  brtrue.s   IL_0295

        IL_02f1:  leave.s    IL_0301

      }  // end .try
      finally
      {
        IL_02f3:  ldloca.s   V_17
        IL_02f5:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelMeshPart>
        IL_02fb:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_0300:  endfinally
      }  // end handler
      IL_0301:  ldloca.s   V_13
      IL_0303:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelMesh>::MoveNext()
      IL_0308:  brtrue     IL_0264

      IL_030d:  leave.s    IL_031d

    }  // end .try
    finally
    {
      IL_030f:  ldloca.s   V_13
      IL_0311:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelMesh>
      IL_0317:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_031c:  endfinally
    }  // end handler
    IL_031d:  ldc.i4.0
    IL_031e:  call       class [Engine]Engine.Graphics.Model Game.CharacterSkinsManager::GetOuterClothingModel(valuetype Game.PlayerClass)
    IL_0323:  dup
    IL_0324:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelBone> [Engine]Engine.Graphics.Model::get_Bones()
    IL_0329:  stloc.s    V_12
    IL_032b:  ldloca.s   V_12
    IL_032d:  call       instance int32 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelBone>::get_Count()
    IL_0332:  newarr     [Engine]Engine.Matrix
    IL_0337:  stloc.s    V_5
    IL_0339:  dup
    IL_033a:  ldloc.s    V_5
    IL_033c:  callvirt   instance void [Engine]Engine.Graphics.Model::CopyAbsoluteBoneTransformsTo(valuetype [Engine]Engine.Matrix[])
    IL_0341:  dup
    IL_0342:  ldstr      "Leg1"
    IL_0347:  ldc.i4.1
    IL_0348:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.Model::FindBone(string,
                                                                                                                  bool)
    IL_034d:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_0352:  stloc.s    V_6
    IL_0354:  dup
    IL_0355:  ldstr      "Leg2"
    IL_035a:  ldc.i4.1
    IL_035b:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.Model::FindBone(string,
                                                                                                                  bool)
    IL_0360:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_0365:  stloc.s    V_7
    IL_0367:  ldloc.s    V_5
    IL_0369:  ldloc.s    V_6
    IL_036b:  ldc.r4     -2.e-002
    IL_0370:  ldc.r4     0.0
    IL_0375:  ldc.r4     0.0
    IL_037a:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_037f:  ldloc.s    V_5
    IL_0381:  ldloc.s    V_6
    IL_0383:  ldelem     [Engine]Engine.Matrix
    IL_0388:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_038d:  stelem     [Engine]Engine.Matrix
    IL_0392:  ldloc.s    V_5
    IL_0394:  ldloc.s    V_7
    IL_0396:  ldc.r4     2.e-002
    IL_039b:  ldc.r4     0.0
    IL_03a0:  ldc.r4     0.0
    IL_03a5:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_03aa:  ldloc.s    V_5
    IL_03ac:  ldloc.s    V_7
    IL_03ae:  ldelem     [Engine]Engine.Matrix
    IL_03b3:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_03b8:  stelem     [Engine]Engine.Matrix
    IL_03bd:  ldarg.0
    IL_03be:  newobj     instance void Game.BlockMesh::.ctor()
    IL_03c3:  stfld      class Game.BlockMesh Game.ClothingBlock::m_outerMesh
    IL_03c8:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMesh> [Engine]Engine.Graphics.Model::get_Meshes()
    IL_03cd:  stloc.s    V_14
    IL_03cf:  ldloca.s   V_14
    IL_03d1:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMesh>::GetEnumerator()
    IL_03d6:  stloc.s    V_13
    .try
    {
      IL_03d8:  br         IL_047b

      IL_03dd:  ldloca.s   V_13
      IL_03df:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelMesh>::get_Current()
      IL_03e4:  stloc.s    V_21
      IL_03e6:  ldloc.s    V_5
      IL_03e8:  ldloc.s    V_21
      IL_03ea:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
      IL_03ef:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
      IL_03f4:  ldelem     [Engine]Engine.Matrix
      IL_03f9:  stloc.s    V_22
      IL_03fb:  ldloc.s    V_21
      IL_03fd:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
      IL_0402:  stloc.s    V_18
      IL_0404:  ldloca.s   V_18
      IL_0406:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::GetEnumerator()
      IL_040b:  stloc.s    V_17
      .try
      {
        IL_040d:  br.s       IL_0462

        IL_040f:  ldloca.s   V_17
        IL_0411:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelMeshPart>::get_Current()
        IL_0416:  stloc.s    V_23
        IL_0418:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
        IL_041d:  ldc.r4     0.80000001
        IL_0422:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                              float32)
        IL_0427:  stloc.s    V_24
        IL_0429:  ldloca.s   V_24
        IL_042b:  ldc.i4     0xff
        IL_0430:  call       instance void [Engine]Engine.Color::set_A(uint8)
        IL_0435:  ldarg.0
        IL_0436:  ldfld      class Game.BlockMesh Game.ClothingBlock::m_outerMesh
        IL_043b:  ldloc.s    V_23
        IL_043d:  ldloc.s    V_22
        IL_043f:  ldc.i4.0
        IL_0440:  ldc.i4.0
        IL_0441:  ldc.i4.0
        IL_0442:  ldc.i4.0
        IL_0443:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
        IL_0448:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                               valuetype [Engine]Engine.Matrix,
                                                                               bool,
                                                                               bool,
                                                                               bool,
                                                                               bool,
                                                                               valuetype [Engine]Engine.Color)
        IL_044d:  ldarg.0
        IL_044e:  ldfld      class Game.BlockMesh Game.ClothingBlock::m_outerMesh
        IL_0453:  ldloc.s    V_23
        IL_0455:  ldloc.s    V_22
        IL_0457:  ldc.i4.0
        IL_0458:  ldc.i4.1
        IL_0459:  ldc.i4.0
        IL_045a:  ldc.i4.1
        IL_045b:  ldloc.s    V_24
        IL_045d:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                               valuetype [Engine]Engine.Matrix,
                                                                               bool,
                                                                               bool,
                                                                               bool,
                                                                               bool,
                                                                               valuetype [Engine]Engine.Color)
        IL_0462:  ldloca.s   V_17
        IL_0464:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelMeshPart>::MoveNext()
        IL_0469:  brtrue.s   IL_040f

        IL_046b:  leave.s    IL_047b

      }  // end .try
      finally
      {
        IL_046d:  ldloca.s   V_17
        IL_046f:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelMeshPart>
        IL_0475:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_047a:  endfinally
      }  // end handler
      IL_047b:  ldloca.s   V_13
      IL_047d:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelMesh>::MoveNext()
      IL_0482:  brtrue     IL_03dd

      IL_0487:  leave.s    IL_0497

    }  // end .try
    finally
    {
      IL_0489:  ldloca.s   V_13
      IL_048b:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelMesh>
      IL_0491:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0496:  endfinally
    }  // end handler
    IL_0497:  ldarg.0
    IL_0498:  call       instance void Game.Block::Initialize()
    IL_049d:  ret
  } // end of method ClothingBlock::Initialize

  .method public hidebysig virtual instance string 
          GetDisplayName(class Game.SubsystemTerrain subsystemTerrain,
                         int32 'value') cil managed
  {
    // 代码大小       58 (0x3a)
    .maxstack  4
    .locals init (class Game.ClothingData V_0,
             int32 V_1)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  dup
    IL_0007:  call       class Game.ClothingData Game.ClothingBlock::GetClothingData(int32)
    IL_000c:  stloc.0
    IL_000d:  call       int32 Game.ClothingBlock::GetClothingColor(int32)
    IL_0012:  stloc.1
    IL_0013:  ldloc.1
    IL_0014:  brfalse.s  IL_0033

    IL_0016:  ldarg.1
    IL_0017:  ldloc.1
    IL_0018:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_001d:  ldstr      "dyed "
    IL_0022:  ldloc.0
    IL_0023:  ldfld      string Game.ClothingData::DisplayName
    IL_0028:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_002d:  call       string Game.SubsystemPalette::GetName(class Game.SubsystemTerrain,
                                                               valuetype [System.Runtime]System.Nullable`1<int32>,
                                                               string)
    IL_0032:  ret

    IL_0033:  ldloc.0
    IL_0034:  ldfld      string Game.ClothingData::DisplayName
    IL_0039:  ret
  } // end of method ClothingBlock::GetDisplayName

  .method public hidebysig virtual instance string 
          GetDescription(int32 'value') cil managed
  {
    // 代码大小       17 (0x11)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  call       class Game.ClothingData Game.ClothingBlock::GetClothingData(int32)
    IL_000b:  ldfld      string Game.ClothingData::Description
    IL_0010:  ret
  } // end of method ClothingBlock::GetDescription

  .method public hidebysig virtual instance string 
          GetCategory(int32 'value') cil managed
  {
    // 代码大小       27 (0x1b)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  call       int32 Game.ClothingBlock::GetClothingColor(int32)
    IL_000b:  brtrue.s   IL_0015

    IL_000d:  ldarg.0
    IL_000e:  ldarg.1
    IL_000f:  call       instance string Game.Block::GetCategory(int32)
    IL_0014:  ret

    IL_0015:  ldstr      "Dyed"
    IL_001a:  ret
  } // end of method ClothingBlock::GetCategory

  .method public hidebysig virtual instance int32 
          GetDamage(int32 'value') cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  ldc.i4.8
    IL_0007:  shr
    IL_0008:  ldc.i4.s   15
    IL_000a:  and
    IL_000b:  ret
  } // end of method ClothingBlock::GetDamage

  .method public hidebysig virtual instance int32 
          SetDamage(int32 'value',
                    int32 damage) cil managed
  {
    // 代码大小       30 (0x1e)
    .maxstack  3
    .locals init (int32 V_0)
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  ldc.i4     0xfffff0ff
    IL_000d:  and
    IL_000e:  ldarg.2
    IL_000f:  ldc.i4.s   15
    IL_0011:  and
    IL_0012:  ldc.i4.8
    IL_0013:  shl
    IL_0014:  or
    IL_0015:  stloc.0
    IL_0016:  ldarg.1
    IL_0017:  ldloc.0
    IL_0018:  call       int32 Game.Terrain::ReplaceData(int32,
                                                         int32)
    IL_001d:  ret
  } // end of method ClothingBlock::SetDamage

  .method public hidebysig virtual instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32> 
          GetCreativeValues() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.IteratorStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 2B 47 61 6D 65 2E 43 6C 6F 74 68 69 6E 67   // ..+Game.Clothing
                                                                                                                                                      42 6C 6F 63 6B 2B 3C 47 65 74 43 72 65 61 74 69   // Block+<GetCreati
                                                                                                                                                      76 65 56 61 6C 75 65 73 3E 64 5F 5F 31 31 00 00 ) // veValues>d__11..
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldc.i4.s   -2
    IL_0002:  newobj     instance void Game.ClothingBlock/'<GetCreativeValues>d__11'::.ctor(int32)
    IL_0007:  ret
  } // end of method ClothingBlock::GetCreativeValues

  .method public hidebysig virtual instance class Game.CraftingRecipe 
          GetAdHocCraftingRecipe(class Game.SubsystemTerrain terrain,
                                 string[] ingredients,
                                 float32 heatLevel) cil managed
  {
    // 代码大小       887 (0x377)
    .maxstack  8
    .locals init (class [System.Collections]System.Collections.Generic.List`1<string> V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<string> V_4,
             string V_5,
             valuetype [System.Runtime]System.Nullable`1<int32> V_6,
             int32 V_7,
             int32 V_8,
             int32 V_9,
             int32 V_10,
             int32 V_11,
             class Game.Block V_12,
             class Game.Block V_13,
             int32 V_14,
             class Game.CraftingRecipe V_15,
             int32 V_16,
             int32 V_17,
             int32 V_18,
             int32 V_19,
             class Game.Block V_20,
             class Game.Block V_21)
    IL_0000:  ldarg.3
    IL_0001:  ldc.r4     1.
    IL_0006:  bge.un.s   IL_000a

    IL_0008:  ldnull
    IL_0009:  ret

    IL_000a:  ldarg.2
    IL_000b:  ldsfld     class [System.Runtime]System.Func`2<string,bool> Game.ClothingBlock/'<>c'::'<>9__12_0'
    IL_0010:  dup
    IL_0011:  brtrue.s   IL_002a

    IL_0013:  pop
    IL_0014:  ldsfld     class Game.ClothingBlock/'<>c' Game.ClothingBlock/'<>c'::'<>9'
    IL_0019:  ldftn      instance bool Game.ClothingBlock/'<>c'::'<GetAdHocCraftingRecipe>b__12_0'(string)
    IL_001f:  newobj     instance void class [System.Runtime]System.Func`2<string,bool>::.ctor(object,
                                                                                               native int)
    IL_0024:  dup
    IL_0025:  stsfld     class [System.Runtime]System.Func`2<string,bool> Game.ClothingBlock/'<>c'::'<>9__12_0'
    IL_002a:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<string>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                class [System.Runtime]System.Func`2<!!0,bool>)
    IL_002f:  call       class [System.Collections]System.Collections.Generic.List`1<!!0> [System.Linq]System.Linq.Enumerable::ToList<string>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_0034:  stloc.0
    IL_0035:  ldloc.0
    IL_0036:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<string>::get_Count()
    IL_003b:  ldc.i4.2
    IL_003c:  bne.un     IL_0375

    IL_0041:  ldc.i4.0
    IL_0042:  stloc.1
    IL_0043:  ldc.i4.0
    IL_0044:  stloc.2
    IL_0045:  ldc.i4.0
    IL_0046:  stloc.3
    IL_0047:  ldloc.0
    IL_0048:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<string>::GetEnumerator()
    IL_004d:  stloc.s    V_4
    .try
    {
      IL_004f:  br         IL_0110

      IL_0054:  ldloca.s   V_4
      IL_0056:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<string>::get_Current()
      IL_005b:  ldloca.s   V_5
      IL_005d:  ldloca.s   V_6
      IL_005f:  call       void Game.CraftingRecipesManager::DecodeIngredient(string,
                                                                              string&,
                                                                              valuetype [System.Runtime]System.Nullable`1<int32>&)
      IL_0064:  ldloc.s    V_5
      IL_0066:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
      IL_006b:  ldc.i4     0xcb
      IL_0070:  ldelem.ref
      IL_0071:  ldfld      string Game.Block::CraftingId
      IL_0076:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_007b:  brfalse.s  IL_009e

      IL_007d:  ldc.i4     0xcb
      IL_0082:  ldc.i4.0
      IL_0083:  ldloca.s   V_6
      IL_0085:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
      IL_008a:  brtrue.s   IL_008f

      IL_008c:  ldc.i4.0
      IL_008d:  br.s       IL_0096

      IL_008f:  ldloca.s   V_6
      IL_0091:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
      IL_0096:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                              int32,
                                                              int32)
      IL_009b:  stloc.3
      IL_009c:  br.s       IL_0110

      IL_009e:  ldloc.s    V_5
      IL_00a0:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
      IL_00a5:  ldc.i4     0x81
      IL_00aa:  ldelem.ref
      IL_00ab:  ldfld      string Game.Block::CraftingId
      IL_00b0:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_00b5:  brfalse.s  IL_00d8

      IL_00b7:  ldc.i4     0x81
      IL_00bc:  ldc.i4.0
      IL_00bd:  ldloca.s   V_6
      IL_00bf:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
      IL_00c4:  brtrue.s   IL_00c9

      IL_00c6:  ldc.i4.0
      IL_00c7:  br.s       IL_00d0

      IL_00c9:  ldloca.s   V_6
      IL_00cb:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
      IL_00d0:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                              int32,
                                                              int32)
      IL_00d5:  stloc.1
      IL_00d6:  br.s       IL_0110

      IL_00d8:  ldloc.s    V_5
      IL_00da:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
      IL_00df:  ldc.i4     0x80
      IL_00e4:  ldelem.ref
      IL_00e5:  ldfld      string Game.Block::CraftingId
      IL_00ea:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_00ef:  brfalse.s  IL_0110

      IL_00f1:  ldc.i4     0x80
      IL_00f6:  ldc.i4.0
      IL_00f7:  ldloca.s   V_6
      IL_00f9:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
      IL_00fe:  brtrue.s   IL_0103

      IL_0100:  ldc.i4.0
      IL_0101:  br.s       IL_010a

      IL_0103:  ldloca.s   V_6
      IL_0105:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
      IL_010a:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                              int32,
                                                              int32)
      IL_010f:  stloc.2
      IL_0110:  ldloca.s   V_4
      IL_0112:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<string>::MoveNext()
      IL_0117:  brtrue     IL_0054

      IL_011c:  leave.s    IL_012c

    }  // end .try
    finally
    {
      IL_011e:  ldloca.s   V_4
      IL_0120:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<string>
      IL_0126:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_012b:  endfinally
    }  // end handler
    IL_012c:  ldloc.1
    IL_012d:  brfalse    IL_0272

    IL_0132:  ldloc.3
    IL_0133:  brfalse    IL_0272

    IL_0138:  ldloc.3
    IL_0139:  call       int32 Game.Terrain::ExtractData(int32)
    IL_013e:  dup
    IL_013f:  call       int32 Game.ClothingBlock::GetClothingColor(int32)
    IL_0144:  stloc.s    V_7
    IL_0146:  dup
    IL_0147:  call       int32 Game.ClothingBlock::GetClothingIndex(int32)
    IL_014c:  stloc.s    V_8
    IL_014e:  call       class Game.ClothingData Game.ClothingBlock::GetClothingData(int32)
    IL_0153:  ldfld      bool Game.ClothingData::CanBeDyed
    IL_0158:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_015d:  ldc.i4     0xcb
    IL_0162:  ldelem.ref
    IL_0163:  ldloc.3
    IL_0164:  callvirt   instance int32 Game.Block::GetDamage(int32)
    IL_0169:  stloc.s    V_9
    IL_016b:  ldloc.1
    IL_016c:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0171:  call       int32 Game.PaintBucketBlock::GetColor(int32)
    IL_0176:  stloc.s    V_10
    IL_0178:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_017d:  ldc.i4     0x81
    IL_0182:  ldelem.ref
    IL_0183:  ldloc.1
    IL_0184:  callvirt   instance int32 Game.Block::GetDamage(int32)
    IL_0189:  stloc.s    V_11
    IL_018b:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0190:  ldc.i4     0x81
    IL_0195:  ldelem.ref
    IL_0196:  stloc.s    V_12
    IL_0198:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_019d:  ldc.i4     0xcb
    IL_01a2:  ldelem.ref
    IL_01a3:  stloc.s    V_13
    IL_01a5:  brtrue.s   IL_01a9

    IL_01a7:  ldnull
    IL_01a8:  ret

    IL_01a9:  ldloc.s    V_7
    IL_01ab:  ldloc.s    V_10
    IL_01ad:  call       int32 Game.PaintBucketBlock::CombineColors(int32,
                                                                    int32)
    IL_01b2:  stloc.s    V_14
    IL_01b4:  ldloc.s    V_14
    IL_01b6:  ldloc.s    V_7
    IL_01b8:  beq        IL_0272

    IL_01bd:  newobj     instance void Game.CraftingRecipe::.ctor()
    IL_01c2:  stloc.s    V_15
    IL_01c4:  ldloc.s    V_15
    IL_01c6:  ldc.i4.1
    IL_01c7:  stfld      int32 Game.CraftingRecipe::ResultCount
    IL_01cc:  ldloc.s    V_15
    IL_01ce:  ldloc.s    V_13
    IL_01d0:  ldc.i4     0xcb
    IL_01d5:  ldc.i4.0
    IL_01d6:  ldc.i4.0
    IL_01d7:  ldloc.s    V_14
    IL_01d9:  call       int32 Game.ClothingBlock::SetClothingColor(int32,
                                                                    int32)
    IL_01de:  ldloc.s    V_8
    IL_01e0:  call       int32 Game.ClothingBlock::SetClothingIndex(int32,
                                                                    int32)
    IL_01e5:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_01ea:  ldloc.s    V_9
    IL_01ec:  callvirt   instance int32 Game.Block::SetDamage(int32,
                                                              int32)
    IL_01f1:  stfld      int32 Game.CraftingRecipe::ResultValue
    IL_01f6:  ldloc.s    V_15
    IL_01f8:  ldc.i4.1
    IL_01f9:  stfld      int32 Game.CraftingRecipe::RemainsCount
    IL_01fe:  ldloc.s    V_15
    IL_0200:  ldc.i4     0x81
    IL_0205:  ldc.i4.0
    IL_0206:  ldloc.s    V_10
    IL_0208:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_020d:  ldloc.s    V_11
    IL_020f:  ldloc.s    V_12
    IL_0211:  ldfld      int32 Game.Block::Durability
    IL_0216:  ldc.i4.4
    IL_0217:  div
    IL_0218:  ldc.i4.1
    IL_0219:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_021e:  add
    IL_021f:  call       int32 Game.BlocksManager::DamageItem(int32,
                                                              int32)
    IL_0224:  stfld      int32 Game.CraftingRecipe::RemainsValue
    IL_0229:  ldloc.s    V_15
    IL_022b:  ldc.r4     1.
    IL_0230:  stfld      float32 Game.CraftingRecipe::RequiredHeatLevel
    IL_0235:  ldloc.s    V_15
    IL_0237:  ldstr      "Dye clothing {0}"
    IL_023c:  ldc.i4.1
    IL_023d:  newarr     [System.Runtime]System.Object
    IL_0242:  dup
    IL_0243:  ldc.i4.0
    IL_0244:  ldarg.1
    IL_0245:  ldloc.s    V_10
    IL_0247:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_024c:  ldnull
    IL_024d:  call       string Game.SubsystemPalette::GetName(class Game.SubsystemTerrain,
                                                               valuetype [System.Runtime]System.Nullable`1<int32>,
                                                               string)
    IL_0252:  stelem.ref
    IL_0253:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0258:  stfld      string Game.CraftingRecipe::Description
    IL_025d:  ldloc.s    V_15
    IL_025f:  ldarg.2
    IL_0260:  callvirt   instance object [System.Runtime]System.Array::Clone()
    IL_0265:  castclass  string[]
    IL_026a:  stfld      string[] Game.CraftingRecipe::Ingredients
    IL_026f:  ldloc.s    V_15
    IL_0271:  ret

    IL_0272:  ldloc.2
    IL_0273:  brfalse    IL_0375

    IL_0278:  ldloc.3
    IL_0279:  brfalse    IL_0375

    IL_027e:  ldloc.3
    IL_027f:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0284:  dup
    IL_0285:  call       int32 Game.ClothingBlock::GetClothingColor(int32)
    IL_028a:  stloc.s    V_16
    IL_028c:  dup
    IL_028d:  call       int32 Game.ClothingBlock::GetClothingIndex(int32)
    IL_0292:  stloc.s    V_17
    IL_0294:  call       class Game.ClothingData Game.ClothingBlock::GetClothingData(int32)
    IL_0299:  ldfld      bool Game.ClothingData::CanBeDyed
    IL_029e:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_02a3:  ldc.i4     0xcb
    IL_02a8:  ldelem.ref
    IL_02a9:  ldloc.3
    IL_02aa:  callvirt   instance int32 Game.Block::GetDamage(int32)
    IL_02af:  stloc.s    V_18
    IL_02b1:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_02b6:  ldc.i4     0x80
    IL_02bb:  ldelem.ref
    IL_02bc:  ldloc.2
    IL_02bd:  callvirt   instance int32 Game.Block::GetDamage(int32)
    IL_02c2:  stloc.s    V_19
    IL_02c4:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_02c9:  ldc.i4     0x80
    IL_02ce:  ldelem.ref
    IL_02cf:  stloc.s    V_20
    IL_02d1:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_02d6:  ldc.i4     0xcb
    IL_02db:  ldelem.ref
    IL_02dc:  stloc.s    V_21
    IL_02de:  brtrue.s   IL_02e2

    IL_02e0:  ldnull
    IL_02e1:  ret

    IL_02e2:  ldloc.s    V_16
    IL_02e4:  brfalse    IL_0375

    IL_02e9:  newobj     instance void Game.CraftingRecipe::.ctor()
    IL_02ee:  dup
    IL_02ef:  ldc.i4.1
    IL_02f0:  stfld      int32 Game.CraftingRecipe::ResultCount
    IL_02f5:  dup
    IL_02f6:  ldloc.s    V_21
    IL_02f8:  ldc.i4     0xcb
    IL_02fd:  ldc.i4.0
    IL_02fe:  ldc.i4.0
    IL_02ff:  ldc.i4.0
    IL_0300:  call       int32 Game.ClothingBlock::SetClothingColor(int32,
                                                                    int32)
    IL_0305:  ldloc.s    V_17
    IL_0307:  call       int32 Game.ClothingBlock::SetClothingIndex(int32,
                                                                    int32)
    IL_030c:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_0311:  ldloc.s    V_18
    IL_0313:  callvirt   instance int32 Game.Block::SetDamage(int32,
                                                              int32)
    IL_0318:  stfld      int32 Game.CraftingRecipe::ResultValue
    IL_031d:  dup
    IL_031e:  ldc.i4.1
    IL_031f:  stfld      int32 Game.CraftingRecipe::RemainsCount
    IL_0324:  dup
    IL_0325:  ldc.i4     0x80
    IL_032a:  ldc.i4.0
    IL_032b:  ldc.i4.0
    IL_032c:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_0331:  ldloc.s    V_19
    IL_0333:  ldloc.s    V_20
    IL_0335:  ldfld      int32 Game.Block::Durability
    IL_033a:  ldc.i4.4
    IL_033b:  div
    IL_033c:  ldc.i4.1
    IL_033d:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_0342:  add
    IL_0343:  call       int32 Game.BlocksManager::DamageItem(int32,
                                                              int32)
    IL_0348:  stfld      int32 Game.CraftingRecipe::RemainsValue
    IL_034d:  dup
    IL_034e:  ldc.r4     1.
    IL_0353:  stfld      float32 Game.CraftingRecipe::RequiredHeatLevel
    IL_0358:  dup
    IL_0359:  ldstr      "Undye clothing"
    IL_035e:  stfld      string Game.CraftingRecipe::Description
    IL_0363:  dup
    IL_0364:  ldarg.2
    IL_0365:  callvirt   instance object [System.Runtime]System.Array::Clone()
    IL_036a:  castclass  string[]
    IL_036f:  stfld      string[] Game.CraftingRecipe::Ingredients
    IL_0374:  ret

    IL_0375:  ldnull
    IL_0376:  ret
  } // end of method ClothingBlock::GetAdHocCraftingRecipe

  .method public hidebysig static int32  GetClothingIndex(int32 data) cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4     0xff
    IL_0006:  and
    IL_0007:  ret
  } // end of method ClothingBlock::GetClothingIndex

  .method public hidebysig static int32  SetClothingIndex(int32 data,
                                                          int32 clothingIndex) cil managed
  {
    // 代码大小       16 (0x10)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4     0xffffff00
    IL_0006:  and
    IL_0007:  ldarg.1
    IL_0008:  ldc.i4     0xff
    IL_000d:  and
    IL_000e:  or
    IL_000f:  ret
  } // end of method ClothingBlock::SetClothingIndex

  .method public hidebysig static class Game.ClothingData 
          GetClothingData(int32 data) cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldsfld     class Game.ClothingData[] Game.ClothingBlock::m_clothingData
    IL_0005:  ldarg.0
    IL_0006:  call       int32 Game.ClothingBlock::GetClothingIndex(int32)
    IL_000b:  ldelem.ref
    IL_000c:  ret
  } // end of method ClothingBlock::GetClothingData

  .method public hidebysig static int32  GetClothingColor(int32 data) cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.s   12
    IL_0003:  shr
    IL_0004:  ldc.i4.s   15
    IL_0006:  and
    IL_0007:  ret
  } // end of method ClothingBlock::GetClothingColor

  .method public hidebysig static int32  SetClothingColor(int32 data,
                                                          int32 color) cil managed
  {
    // 代码大小       16 (0x10)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4     0xffff0fff
    IL_0006:  and
    IL_0007:  ldarg.1
    IL_0008:  ldc.i4.s   15
    IL_000a:  and
    IL_000b:  ldc.i4.s   12
    IL_000d:  shl
    IL_000e:  or
    IL_000f:  ret
  } // end of method ClothingBlock::SetClothingColor

  .method public hidebysig virtual instance void 
          GenerateTerrainVertices(class Game.BlockGeometryGenerator generator,
                                  class Game.TerrainGeometrySubsets geometry,
                                  int32 'value',
                                  int32 x,
                                  int32 y,
                                  int32 z) cil managed
  {
    // 代码大小       1 (0x1)
    .maxstack  8
    IL_0000:  ret
  } // end of method ClothingBlock::GenerateTerrainVertices

  .method public hidebysig virtual instance void 
          DrawBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D primitivesRenderer,
                    int32 'value',
                    valuetype [Engine]Engine.Color color,
                    float32 size,
                    valuetype [Engine]Engine.Matrix& matrix,
                    class Game.DrawBlockEnvironmentData environmentData) cil managed
  {
    // 代码大小       162 (0xa2)
    .maxstack  7
    .locals init (int32 V_0,
             class Game.ClothingData V_1,
             valuetype [Engine]Engine.Matrix V_2)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  dup
    IL_0007:  call       int32 Game.ClothingBlock::GetClothingColor(int32)
    IL_000c:  stloc.0
    IL_000d:  call       class Game.ClothingData Game.ClothingBlock::GetClothingData(int32)
    IL_0012:  stloc.1
    IL_0013:  ldsfld     valuetype [Engine]Engine.Matrix[] Game.ClothingBlock::m_slotTransforms
    IL_0018:  ldloc.1
    IL_0019:  ldfld      valuetype Game.ClothingSlot Game.ClothingData::Slot
    IL_001e:  ldelem     [Engine]Engine.Matrix
    IL_0023:  ldarg.s    size
    IL_0025:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateScale(float32)
    IL_002a:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_002f:  ldarg.s    matrix
    IL_0031:  ldobj      [Engine]Engine.Matrix
    IL_0036:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_003b:  stloc.2
    IL_003c:  ldloc.1
    IL_003d:  ldfld      bool Game.ClothingData::IsOuter
    IL_0042:  brfalse.s  IL_0073

    IL_0044:  ldarg.1
    IL_0045:  ldarg.0
    IL_0046:  ldfld      class Game.BlockMesh Game.ClothingBlock::m_outerMesh
    IL_004b:  ldloc.1
    IL_004c:  ldfld      class [Engine]Engine.Graphics.Texture2D Game.ClothingData::Texture
    IL_0051:  ldarg.3
    IL_0052:  ldarg.s    environmentData
    IL_0054:  ldloc.0
    IL_0055:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_005a:  call       valuetype [Engine]Engine.Color Game.SubsystemPalette::GetFabricColor(class Game.DrawBlockEnvironmentData,
                                                                                              valuetype [System.Runtime]System.Nullable`1<int32>)
    IL_005f:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color)
    IL_0064:  ldc.r4     1.
    IL_0069:  ldloca.s   V_2
    IL_006b:  ldarg.s    environmentData
    IL_006d:  call       void Game.BlocksManager::DrawMeshBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                                class Game.BlockMesh,
                                                                class [Engine]Engine.Graphics.Texture2D,
                                                                valuetype [Engine]Engine.Color,
                                                                float32,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                class Game.DrawBlockEnvironmentData)
    IL_0072:  ret

    IL_0073:  ldarg.1
    IL_0074:  ldarg.0
    IL_0075:  ldfld      class Game.BlockMesh Game.ClothingBlock::m_innerMesh
    IL_007a:  ldloc.1
    IL_007b:  ldfld      class [Engine]Engine.Graphics.Texture2D Game.ClothingData::Texture
    IL_0080:  ldarg.3
    IL_0081:  ldarg.s    environmentData
    IL_0083:  ldloc.0
    IL_0084:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_0089:  call       valuetype [Engine]Engine.Color Game.SubsystemPalette::GetFabricColor(class Game.DrawBlockEnvironmentData,
                                                                                              valuetype [System.Runtime]System.Nullable`1<int32>)
    IL_008e:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color)
    IL_0093:  ldc.r4     1.
    IL_0098:  ldloca.s   V_2
    IL_009a:  ldarg.s    environmentData
    IL_009c:  call       void Game.BlocksManager::DrawMeshBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                                class Game.BlockMesh,
                                                                class [Engine]Engine.Graphics.Texture2D,
                                                                valuetype [Engine]Engine.Color,
                                                                float32,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                class Game.DrawBlockEnvironmentData)
    IL_00a1:  ret
  } // end of method ClothingBlock::DrawBlock

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.Block::.ctor()
    IL_0006:  ret
  } // end of method ClothingBlock::.ctor

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       180 (0xb4)
    .maxstack  6
    IL_0000:  ldc.i4.4
    IL_0001:  newarr     [Engine]Engine.Matrix
    IL_0006:  dup
    IL_0007:  ldc.i4.0
    IL_0008:  ldc.r4     0.0
    IL_000d:  ldc.r4     -1.5
    IL_0012:  ldc.r4     0.0
    IL_0017:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_001c:  ldc.r4     2.7
    IL_0021:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateScale(float32)
    IL_0026:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_002b:  stelem     [Engine]Engine.Matrix
    IL_0030:  dup
    IL_0031:  ldc.i4.1
    IL_0032:  ldc.r4     0.0
    IL_0037:  ldc.r4     -1.1
    IL_003c:  ldc.r4     0.0
    IL_0041:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0046:  ldc.r4     2.7
    IL_004b:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateScale(float32)
    IL_0050:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0055:  stelem     [Engine]Engine.Matrix
    IL_005a:  dup
    IL_005b:  ldc.i4.2
    IL_005c:  ldc.r4     0.0
    IL_0061:  ldc.r4     -0.5
    IL_0066:  ldc.r4     0.0
    IL_006b:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0070:  ldc.r4     2.7
    IL_0075:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateScale(float32)
    IL_007a:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_007f:  stelem     [Engine]Engine.Matrix
    IL_0084:  dup
    IL_0085:  ldc.i4.3
    IL_0086:  ldc.r4     0.0
    IL_008b:  ldc.r4     -0.1
    IL_0090:  ldc.r4     0.0
    IL_0095:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_009a:  ldc.r4     2.7
    IL_009f:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateScale(float32)
    IL_00a4:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00a9:  stelem     [Engine]Engine.Matrix
    IL_00ae:  stsfld     valuetype [Engine]Engine.Matrix[] Game.ClothingBlock::m_slotTransforms
    IL_00b3:  ret
  } // end of method ClothingBlock::.cctor

} // end of class Game.ClothingBlock