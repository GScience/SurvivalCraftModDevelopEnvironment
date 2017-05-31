.class public auto ansi beforefieldinit Game.ClothingBlock
       extends Game.Block
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.ClothingBlock/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`2<class Game.ClothingData,int32> '<>9__12_0'
    .field public static class [System.Runtime]System.Func`2<string,bool> '<>9__13_0'
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
            '<GetCreativeValues>b__12_0'(class Game.ClothingData cd) cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldfld      int32 Game.ClothingData::DisplayIndex
      IL_0006:  ret
    } // end of method '<>c'::'<GetCreativeValues>b__12_0'

    .method assembly hidebysig instance bool 
            '<GetAdHocCraftingRecipe>b__13_0'(string i) cil managed
    {
      // 代码大小       10 (0xa)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
      IL_0006:  ldc.i4.0
      IL_0007:  ceq
      IL_0009:  ret
    } // end of method '<>c'::'<GetAdHocCraftingRecipe>b__13_0'

  } // end of class '<>c'

  .class auto ansi sealed nested private beforefieldinit '<GetCreativeValues>d__12'
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
      IL_0008:  stfld      int32 Game.ClothingBlock/'<GetCreativeValues>d__12'::'<>1__state'
      IL_000d:  ldarg.0
      IL_000e:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0013:  stfld      int32 Game.ClothingBlock/'<GetCreativeValues>d__12'::'<>l__initialThreadId'
      IL_0018:  ret
    } // end of method '<GetCreativeValues>d__12'::.ctor

    .method private hidebysig newslot virtual final 
            instance void  System.IDisposable.Dispose() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.IDisposable::Dispose
      // 代码大小       27 (0x1b)
      .maxstack  2
      .locals init (int32 V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.ClothingBlock/'<GetCreativeValues>d__12'::'<>1__state'
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
        IL_0014:  call       instance void Game.ClothingBlock/'<GetCreativeValues>d__12'::'<>m__Finally1'()
        IL_0019:  endfinally
      }  // end handler
      IL_001a:  ret
    } // end of method '<GetCreativeValues>d__12'::System.IDisposable.Dispose

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
        IL_0001:  ldfld      int32 Game.ClothingBlock/'<GetCreativeValues>d__12'::'<>1__state'
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
        IL_001a:  stfld      int32 Game.ClothingBlock/'<GetCreativeValues>d__12'::'<>1__state'
        IL_001f:  ldsfld     class Game.ClothingData[] Game.ClothingBlock::m_clothingData
        IL_0024:  ldsfld     class [System.Runtime]System.Func`2<class Game.ClothingData,int32> Game.ClothingBlock/'<>c'::'<>9__12_0'
        IL_0029:  dup
        IL_002a:  brtrue.s   IL_0043

        IL_002c:  pop
        IL_002d:  ldsfld     class Game.ClothingBlock/'<>c' Game.ClothingBlock/'<>c'::'<>9'
        IL_0032:  ldftn      instance int32 Game.ClothingBlock/'<>c'::'<GetCreativeValues>b__12_0'(class Game.ClothingData)
        IL_0038:  newobj     instance void class [System.Runtime]System.Func`2<class Game.ClothingData,int32>::.ctor(object,
                                                                                                                     native int)
        IL_003d:  dup
        IL_003e:  stsfld     class [System.Runtime]System.Func`2<class Game.ClothingData,int32> Game.ClothingBlock/'<>c'::'<>9__12_0'
        IL_0043:  call       class [System.Linq]System.Linq.IOrderedEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::OrderBy<class Game.ClothingData,int32>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                  class [System.Runtime]System.Func`2<!!0,!!1>)
        IL_0048:  stloc.2
        IL_0049:  ldarg.0
        IL_004a:  ldloc.2
        IL_004b:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.ClothingData>::GetEnumerator()
        IL_0050:  stfld      class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.ClothingData> Game.ClothingBlock/'<GetCreativeValues>d__12'::'<>7__wrap1'
        IL_0055:  ldarg.0
        IL_0056:  ldc.i4.s   -3
        IL_0058:  stfld      int32 Game.ClothingBlock/'<GetCreativeValues>d__12'::'<>1__state'
        IL_005d:  br         IL_00fd

        IL_0062:  ldarg.0
        IL_0063:  ldarg.0
        IL_0064:  ldfld      class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.ClothingData> Game.ClothingBlock/'<GetCreativeValues>d__12'::'<>7__wrap1'
        IL_0069:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.ClothingData>::get_Current()
        IL_006e:  stfld      class Game.ClothingData Game.ClothingBlock/'<GetCreativeValues>d__12'::'<clothingData>5__1'
        IL_0073:  ldarg.0
        IL_0074:  ldarg.0
        IL_0075:  ldfld      class Game.ClothingData Game.ClothingBlock/'<GetCreativeValues>d__12'::'<clothingData>5__1'
        IL_007a:  ldfld      bool Game.ClothingData::CanByDyed
        IL_007f:  brtrue.s   IL_0084

        IL_0081:  ldc.i4.1
        IL_0082:  br.s       IL_0086

        IL_0084:  ldc.i4.s   16
        IL_0086:  stfld      int32 Game.ClothingBlock/'<GetCreativeValues>d__12'::'<colorsCount>5__3'
        IL_008b:  ldarg.0
        IL_008c:  ldc.i4.0
        IL_008d:  stfld      int32 Game.ClothingBlock/'<GetCreativeValues>d__12'::'<color>5__2'
        IL_0092:  br.s       IL_00e8

        IL_0094:  ldc.i4.0
        IL_0095:  ldarg.0
        IL_0096:  ldfld      class Game.ClothingData Game.ClothingBlock/'<GetCreativeValues>d__12'::'<clothingData>5__1'
        IL_009b:  ldfld      int32 Game.ClothingData::Index
        IL_00a0:  call       int32 Game.ClothingBlock::SetClothingIndex(int32,
                                                                        int32)
        IL_00a5:  ldarg.0
        IL_00a6:  ldfld      int32 Game.ClothingBlock/'<GetCreativeValues>d__12'::'<color>5__2'
        IL_00ab:  call       int32 Game.ClothingBlock::SetClothingColor(int32,
                                                                        int32)
        IL_00b0:  stloc.3
        IL_00b1:  ldarg.0
        IL_00b2:  ldc.i4     0xcb
        IL_00b7:  ldc.i4.0
        IL_00b8:  ldloc.3
        IL_00b9:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                    int32,
                                                                    int32)
        IL_00be:  stfld      int32 Game.ClothingBlock/'<GetCreativeValues>d__12'::'<>2__current'
        IL_00c3:  ldarg.0
        IL_00c4:  ldc.i4.1
        IL_00c5:  stfld      int32 Game.ClothingBlock/'<GetCreativeValues>d__12'::'<>1__state'
        IL_00ca:  ldc.i4.1
        IL_00cb:  stloc.0
        IL_00cc:  leave.s    IL_0125

        IL_00ce:  ldarg.0
        IL_00cf:  ldc.i4.s   -3
        IL_00d1:  stfld      int32 Game.ClothingBlock/'<GetCreativeValues>d__12'::'<>1__state'
        IL_00d6:  ldarg.0
        IL_00d7:  ldfld      int32 Game.ClothingBlock/'<GetCreativeValues>d__12'::'<color>5__2'
        IL_00dc:  ldc.i4.1
        IL_00dd:  add
        IL_00de:  stloc.s    V_4
        IL_00e0:  ldarg.0
        IL_00e1:  ldloc.s    V_4
        IL_00e3:  stfld      int32 Game.ClothingBlock/'<GetCreativeValues>d__12'::'<color>5__2'
        IL_00e8:  ldarg.0
        IL_00e9:  ldfld      int32 Game.ClothingBlock/'<GetCreativeValues>d__12'::'<color>5__2'
        IL_00ee:  ldarg.0
        IL_00ef:  ldfld      int32 Game.ClothingBlock/'<GetCreativeValues>d__12'::'<colorsCount>5__3'
        IL_00f4:  blt.s      IL_0094

        IL_00f6:  ldarg.0
        IL_00f7:  ldnull
        IL_00f8:  stfld      class Game.ClothingData Game.ClothingBlock/'<GetCreativeValues>d__12'::'<clothingData>5__1'
        IL_00fd:  ldarg.0
        IL_00fe:  ldfld      class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.ClothingData> Game.ClothingBlock/'<GetCreativeValues>d__12'::'<>7__wrap1'
        IL_0103:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
        IL_0108:  brtrue     IL_0062

        IL_010d:  ldarg.0
        IL_010e:  call       instance void Game.ClothingBlock/'<GetCreativeValues>d__12'::'<>m__Finally1'()
        IL_0113:  ldarg.0
        IL_0114:  ldnull
        IL_0115:  stfld      class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.ClothingData> Game.ClothingBlock/'<GetCreativeValues>d__12'::'<>7__wrap1'
        IL_011a:  ldc.i4.0
        IL_011b:  stloc.0
        IL_011c:  leave.s    IL_0125

      }  // end .try
      fault
      {
        IL_011e:  ldarg.0
        IL_011f:  call       instance void Game.ClothingBlock/'<GetCreativeValues>d__12'::System.IDisposable.Dispose()
        IL_0124:  endfinally
      }  // end handler
      IL_0125:  ldloc.0
      IL_0126:  ret
    } // end of method '<GetCreativeValues>d__12'::MoveNext

    .method private hidebysig instance void 
            '<>m__Finally1'() cil managed
    {
      // 代码大小       27 (0x1b)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldc.i4.m1
      IL_0002:  stfld      int32 Game.ClothingBlock/'<GetCreativeValues>d__12'::'<>1__state'
      IL_0007:  ldarg.0
      IL_0008:  ldfld      class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.ClothingData> Game.ClothingBlock/'<GetCreativeValues>d__12'::'<>7__wrap1'
      IL_000d:  brfalse.s  IL_001a

      IL_000f:  ldarg.0
      IL_0010:  ldfld      class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.ClothingData> Game.ClothingBlock/'<GetCreativeValues>d__12'::'<>7__wrap1'
      IL_0015:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_001a:  ret
    } // end of method '<GetCreativeValues>d__12'::'<>m__Finally1'

    .method private hidebysig newslot specialname virtual final 
            instance int32  'System.Collections.Generic.IEnumerator<System.Int32>.get_Current'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32>::get_Current()
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.ClothingBlock/'<GetCreativeValues>d__12'::'<>2__current'
      IL_0006:  ret
    } // end of method '<GetCreativeValues>d__12'::'System.Collections.Generic.IEnumerator<System.Int32>.get_Current'

    .method private hidebysig newslot virtual final 
            instance void  System.Collections.IEnumerator.Reset() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerator::Reset
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  newobj     instance void [System.Runtime]System.NotSupportedException::.ctor()
      IL_0005:  throw
    } // end of method '<GetCreativeValues>d__12'::System.Collections.IEnumerator.Reset

    .method private hidebysig newslot specialname virtual final 
            instance object  System.Collections.IEnumerator.get_Current() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerator::get_Current
      // 代码大小       12 (0xc)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.ClothingBlock/'<GetCreativeValues>d__12'::'<>2__current'
      IL_0006:  box        [System.Runtime]System.Int32
      IL_000b:  ret
    } // end of method '<GetCreativeValues>d__12'::System.Collections.IEnumerator.get_Current

    .method private hidebysig newslot virtual final 
            instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32> 
            'System.Collections.Generic.IEnumerable<System.Int32>.GetEnumerator'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32>::GetEnumerator()
      // 代码大小       43 (0x2b)
      .maxstack  2
      .locals init (class Game.ClothingBlock/'<GetCreativeValues>d__12' V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.ClothingBlock/'<GetCreativeValues>d__12'::'<>1__state'
      IL_0006:  ldc.i4.s   -2
      IL_0008:  bne.un.s   IL_0022

      IL_000a:  ldarg.0
      IL_000b:  ldfld      int32 Game.ClothingBlock/'<GetCreativeValues>d__12'::'<>l__initialThreadId'
      IL_0010:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0015:  bne.un.s   IL_0022

      IL_0017:  ldarg.0
      IL_0018:  ldc.i4.0
      IL_0019:  stfld      int32 Game.ClothingBlock/'<GetCreativeValues>d__12'::'<>1__state'
      IL_001e:  ldarg.0
      IL_001f:  stloc.0
      IL_0020:  br.s       IL_0029

      IL_0022:  ldc.i4.0
      IL_0023:  newobj     instance void Game.ClothingBlock/'<GetCreativeValues>d__12'::.ctor(int32)
      IL_0028:  stloc.0
      IL_0029:  ldloc.0
      IL_002a:  ret
    } // end of method '<GetCreativeValues>d__12'::'System.Collections.Generic.IEnumerable<System.Int32>.GetEnumerator'

    .method private hidebysig newslot virtual final 
            instance class [System.Runtime]System.Collections.IEnumerator 
            System.Collections.IEnumerable.GetEnumerator() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerable::GetEnumerator
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32> Game.ClothingBlock/'<GetCreativeValues>d__12'::'System.Collections.Generic.IEnumerable<System.Int32>.GetEnumerator'()
      IL_0006:  ret
    } // end of method '<GetCreativeValues>d__12'::System.Collections.IEnumerable.GetEnumerator

    .property instance int32 'System.Collections.Generic.IEnumerator<System.Int32>.Current'()
    {
      .get instance int32 Game.ClothingBlock/'<GetCreativeValues>d__12'::'System.Collections.Generic.IEnumerator<System.Int32>.get_Current'()
    } // end of property '<GetCreativeValues>d__12'::'System.Collections.Generic.IEnumerator<System.Int32>.Current'
    .property instance object System.Collections.IEnumerator.Current()
    {
      .get instance object Game.ClothingBlock/'<GetCreativeValues>d__12'::System.Collections.IEnumerator.get_Current()
    } // end of property '<GetCreativeValues>d__12'::System.Collections.IEnumerator.Current
  } // end of class '<GetCreativeValues>d__12'

  .field public static literal int32 Index = int32(0x000000CB)
  .field public static initonly valuetype [Engine]Engine.Color[] ClothingColors
  .field private static class Game.ClothingData[] m_clothingData
  .field private class Game.BlockMesh m_innerMesh
  .field private class Game.BlockMesh m_outerMesh
  .field private static valuetype [Engine]Engine.Matrix[] m_slotTransforms
  .method public hidebysig virtual instance void 
          Initialize() cil managed
  {
    // 代码大小       1261 (0x4ed)
    .maxstack  8
    .locals init (int32 V_0,
             class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class Game.ClothingData> V_1,
             valuetype [Engine]Engine.Matrix[] V_2,
             int32 V_3,
             int32 V_4,
             valuetype [Engine]Engine.Matrix[] V_5,
             int32 V_6,
             int32 V_7,
             int32 V_8,
             valuetype [Engine]Engine.Vector3 V_9,
             valuetype [Engine]Engine.Vector3 V_10,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> V_11,
             class [System.Xml.XDocument]System.Xml.Linq.XElement V_12,
             class Game.ClothingData V_13,
             int32 V_14,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelBone> V_15,
             valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelMesh> V_16,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMesh> V_17,
             class [Engine]Engine.Graphics.ModelMesh V_18,
             valuetype [Engine]Engine.Matrix V_19,
             valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelMeshPart> V_20,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> V_21,
             class [Engine]Engine.Graphics.ModelMeshPart V_22,
             valuetype [Engine]Engine.Color V_23,
             class [Engine]Engine.Graphics.ModelMesh V_24,
             valuetype [Engine]Engine.Matrix V_25,
             class [Engine]Engine.Graphics.ModelMeshPart V_26,
             valuetype [Engine]Engine.Color V_27)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.s    V_8
    IL_0003:  br.s       IL_0053

    IL_0005:  ldloca.s   V_9
    IL_0007:  ldsfld     valuetype [Engine]Engine.Color[] Game.PaintBucketBlock::PaintColors
    IL_000c:  ldloc.s    V_8
    IL_000e:  ldelem     [Engine]Engine.Color
    IL_0013:  call       instance void [Engine]Engine.Vector3::.ctor(valuetype [Engine]Engine.Color)
    IL_0018:  ldloc.s    V_9
    IL_001a:  call       valuetype [Engine]Engine.Vector3 Game.HsvUtils::RgbToHsv(valuetype [Engine]Engine.Vector3)
    IL_001f:  stloc.s    V_10
    IL_0021:  ldloca.s   V_10
    IL_0023:  ldflda     float32 [Engine]Engine.Vector3::Y
    IL_0028:  dup
    IL_0029:  ldind.r4
    IL_002a:  ldc.r4     0.85000002
    IL_002f:  mul
    IL_0030:  stind.r4
    IL_0031:  ldloc.s    V_10
    IL_0033:  call       valuetype [Engine]Engine.Vector3 Game.HsvUtils::HsvToRgb(valuetype [Engine]Engine.Vector3)
    IL_0038:  stloc.s    V_9
    IL_003a:  ldsfld     valuetype [Engine]Engine.Color[] Game.ClothingBlock::ClothingColors
    IL_003f:  ldloc.s    V_8
    IL_0041:  ldloc.s    V_9
    IL_0043:  newobj     instance void [Engine]Engine.Color::.ctor(valuetype [Engine]Engine.Vector3)
    IL_0048:  stelem     [Engine]Engine.Color
    IL_004d:  ldloc.s    V_8
    IL_004f:  ldc.i4.1
    IL_0050:  add
    IL_0051:  stloc.s    V_8
    IL_0053:  ldloc.s    V_8
    IL_0055:  ldc.i4.s   16
    IL_0057:  blt.s      IL_0005

    IL_0059:  ldc.i4.0
    IL_005a:  stloc.0
    IL_005b:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class Game.ClothingData>::.ctor()
    IL_0060:  stloc.1
    IL_0061:  ldstr      "Clothes"
    IL_0066:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_006b:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Elements()
    IL_0070:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::GetEnumerator()
    IL_0075:  stloc.s    V_11
    .try
    {
      IL_0077:  br         IL_01b9

      IL_007c:  ldloc.s    V_11
      IL_007e:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::get_Current()
      IL_0083:  stloc.s    V_12
      IL_0085:  newobj     instance void Game.ClothingData::.ctor()
      IL_008a:  dup
      IL_008b:  ldloc.s    V_12
      IL_008d:  ldstr      "Index"
      IL_0092:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<int32>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                             string)
      IL_0097:  stfld      int32 Game.ClothingData::Index
      IL_009c:  dup
      IL_009d:  ldloc.0
      IL_009e:  dup
      IL_009f:  ldc.i4.1
      IL_00a0:  add
      IL_00a1:  stloc.0
      IL_00a2:  stfld      int32 Game.ClothingData::DisplayIndex
      IL_00a7:  dup
      IL_00a8:  ldloc.s    V_12
      IL_00aa:  ldstr      "DisplayName"
      IL_00af:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<string>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                              string)
      IL_00b4:  stfld      string Game.ClothingData::DisplayName
      IL_00b9:  dup
      IL_00ba:  ldloc.s    V_12
      IL_00bc:  ldstr      "Slot"
      IL_00c1:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<valuetype Game.ClothingSlot>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                                                   string)
      IL_00c6:  stfld      valuetype Game.ClothingSlot Game.ClothingData::Slot
      IL_00cb:  dup
      IL_00cc:  ldloc.s    V_12
      IL_00ce:  ldstr      "ArmorProtection"
      IL_00d3:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<float32>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                               string)
      IL_00d8:  stfld      float32 Game.ClothingData::ArmorProtection
      IL_00dd:  dup
      IL_00de:  ldloc.s    V_12
      IL_00e0:  ldstr      "Sturdiness"
      IL_00e5:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<float32>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                               string)
      IL_00ea:  stfld      float32 Game.ClothingData::Sturdiness
      IL_00ef:  dup
      IL_00f0:  ldloc.s    V_12
      IL_00f2:  ldstr      "Insulation"
      IL_00f7:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<float32>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                               string)
      IL_00fc:  stfld      float32 Game.ClothingData::Insulation
      IL_0101:  dup
      IL_0102:  ldloc.s    V_12
      IL_0104:  ldstr      "MovementSpeedFactor"
      IL_0109:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<float32>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                               string)
      IL_010e:  stfld      float32 Game.ClothingData::MovementSpeedFactor
      IL_0113:  dup
      IL_0114:  ldloc.s    V_12
      IL_0116:  ldstr      "SteedMovementSpeedFactor"
      IL_011b:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<float32>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                               string)
      IL_0120:  stfld      float32 Game.ClothingData::SteedMovementSpeedFactor
      IL_0125:  dup
      IL_0126:  ldloc.s    V_12
      IL_0128:  ldstr      "DensityModifier"
      IL_012d:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<float32>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                               string)
      IL_0132:  stfld      float32 Game.ClothingData::DensityModifier
      IL_0137:  dup
      IL_0138:  ldloc.s    V_12
      IL_013a:  ldstr      "IsOuter"
      IL_013f:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<bool>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                            string)
      IL_0144:  stfld      bool Game.ClothingData::IsOuter
      IL_0149:  dup
      IL_014a:  ldloc.s    V_12
      IL_014c:  ldstr      "CanByDyed"
      IL_0151:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<bool>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                            string)
      IL_0156:  stfld      bool Game.ClothingData::CanByDyed
      IL_015b:  dup
      IL_015c:  ldloc.s    V_12
      IL_015e:  ldstr      "Layer"
      IL_0163:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<int32>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                             string)
      IL_0168:  stfld      int32 Game.ClothingData::Layer
      IL_016d:  dup
      IL_016e:  ldloc.s    V_12
      IL_0170:  ldstr      "TextureName"
      IL_0175:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<string>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                              string)
      IL_017a:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Texture2D>(string)
      IL_017f:  stfld      class [Engine]Engine.Graphics.Texture2D Game.ClothingData::Texture
      IL_0184:  dup
      IL_0185:  ldloc.s    V_12
      IL_0187:  ldstr      "ImpactSoundsFolder"
      IL_018c:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<string>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                              string)
      IL_0191:  stfld      string Game.ClothingData::ImpactSoundsFolder
      IL_0196:  dup
      IL_0197:  ldloc.s    V_12
      IL_0199:  ldstr      "Description"
      IL_019e:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<string>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                              string)
      IL_01a3:  stfld      string Game.ClothingData::Description
      IL_01a8:  stloc.s    V_13
      IL_01aa:  ldloc.1
      IL_01ab:  ldloc.s    V_13
      IL_01ad:  ldfld      int32 Game.ClothingData::Index
      IL_01b2:  ldloc.s    V_13
      IL_01b4:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class Game.ClothingData>::Add(!0,
                                                                                                                                               !1)
      IL_01b9:  ldloc.s    V_11
      IL_01bb:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_01c0:  brtrue     IL_007c

      IL_01c5:  leave.s    IL_01d3

    }  // end .try
    finally
    {
      IL_01c7:  ldloc.s    V_11
      IL_01c9:  brfalse.s  IL_01d2

      IL_01cb:  ldloc.s    V_11
      IL_01cd:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_01d2:  endfinally
    }  // end handler
    IL_01d3:  ldloc.1
    IL_01d4:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class Game.ClothingData>::get_Count()
    IL_01d9:  newarr     Game.ClothingData
    IL_01de:  stsfld     class Game.ClothingData[] Game.ClothingBlock::m_clothingData
    IL_01e3:  ldc.i4.0
    IL_01e4:  stloc.s    V_14
    IL_01e6:  br.s       IL_01fe

    IL_01e8:  ldsfld     class Game.ClothingData[] Game.ClothingBlock::m_clothingData
    IL_01ed:  ldloc.s    V_14
    IL_01ef:  ldloc.1
    IL_01f0:  ldloc.s    V_14
    IL_01f2:  callvirt   instance !1 class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class Game.ClothingData>::get_Item(!0)
    IL_01f7:  stelem.ref
    IL_01f8:  ldloc.s    V_14
    IL_01fa:  ldc.i4.1
    IL_01fb:  add
    IL_01fc:  stloc.s    V_14
    IL_01fe:  ldloc.s    V_14
    IL_0200:  ldloc.1
    IL_0201:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class Game.ClothingData>::get_Count()
    IL_0206:  blt.s      IL_01e8

    IL_0208:  ldstr      "Models/Human"
    IL_020d:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Model>(string)
    IL_0212:  dup
    IL_0213:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelBone> [Engine]Engine.Graphics.Model::get_Bones()
    IL_0218:  stloc.s    V_15
    IL_021a:  ldloca.s   V_15
    IL_021c:  call       instance int32 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelBone>::get_Count()
    IL_0221:  newarr     [Engine]Engine.Matrix
    IL_0226:  stloc.2
    IL_0227:  dup
    IL_0228:  ldloc.2
    IL_0229:  callvirt   instance void [Engine]Engine.Graphics.Model::CopyAbsoluteBoneTransformsTo(valuetype [Engine]Engine.Matrix[])
    IL_022e:  dup
    IL_022f:  ldstr      "Hand1"
    IL_0234:  ldc.i4.1
    IL_0235:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.Model::FindBone(string,
                                                                                                                  bool)
    IL_023a:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_023f:  stloc.3
    IL_0240:  dup
    IL_0241:  ldstr      "Hand2"
    IL_0246:  ldc.i4.1
    IL_0247:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.Model::FindBone(string,
                                                                                                                  bool)
    IL_024c:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_0251:  stloc.s    V_4
    IL_0253:  ldloc.2
    IL_0254:  ldloc.3
    IL_0255:  ldc.r4     0.1
    IL_025a:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_025f:  ldloc.2
    IL_0260:  ldloc.3
    IL_0261:  ldelem     [Engine]Engine.Matrix
    IL_0266:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_026b:  stelem     [Engine]Engine.Matrix
    IL_0270:  ldloc.2
    IL_0271:  ldloc.s    V_4
    IL_0273:  ldc.r4     -0.1
    IL_0278:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_027d:  ldloc.2
    IL_027e:  ldloc.s    V_4
    IL_0280:  ldelem     [Engine]Engine.Matrix
    IL_0285:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_028a:  stelem     [Engine]Engine.Matrix
    IL_028f:  ldarg.0
    IL_0290:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0295:  stfld      class Game.BlockMesh Game.ClothingBlock::m_innerMesh
    IL_029a:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMesh> [Engine]Engine.Graphics.Model::get_Meshes()
    IL_029f:  stloc.s    V_17
    IL_02a1:  ldloca.s   V_17
    IL_02a3:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMesh>::GetEnumerator()
    IL_02a8:  stloc.s    V_16
    .try
    {
      IL_02aa:  br         IL_034c

      IL_02af:  ldloca.s   V_16
      IL_02b1:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelMesh>::get_Current()
      IL_02b6:  stloc.s    V_18
      IL_02b8:  ldloc.2
      IL_02b9:  ldloc.s    V_18
      IL_02bb:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
      IL_02c0:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
      IL_02c5:  ldelem     [Engine]Engine.Matrix
      IL_02ca:  stloc.s    V_19
      IL_02cc:  ldloc.s    V_18
      IL_02ce:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
      IL_02d3:  stloc.s    V_21
      IL_02d5:  ldloca.s   V_21
      IL_02d7:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::GetEnumerator()
      IL_02dc:  stloc.s    V_20
      .try
      {
        IL_02de:  br.s       IL_0333

        IL_02e0:  ldloca.s   V_20
        IL_02e2:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelMeshPart>::get_Current()
        IL_02e7:  stloc.s    V_22
        IL_02e9:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
        IL_02ee:  ldc.r4     0.80000001
        IL_02f3:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                              float32)
        IL_02f8:  stloc.s    V_23
        IL_02fa:  ldloca.s   V_23
        IL_02fc:  ldc.i4     0xff
        IL_0301:  call       instance void [Engine]Engine.Color::set_A(uint8)
        IL_0306:  ldarg.0
        IL_0307:  ldfld      class Game.BlockMesh Game.ClothingBlock::m_innerMesh
        IL_030c:  ldloc.s    V_22
        IL_030e:  ldloc.s    V_19
        IL_0310:  ldc.i4.0
        IL_0311:  ldc.i4.0
        IL_0312:  ldc.i4.0
        IL_0313:  ldc.i4.0
        IL_0314:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
        IL_0319:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                               valuetype [Engine]Engine.Matrix,
                                                                               bool,
                                                                               bool,
                                                                               bool,
                                                                               bool,
                                                                               valuetype [Engine]Engine.Color)
        IL_031e:  ldarg.0
        IL_031f:  ldfld      class Game.BlockMesh Game.ClothingBlock::m_innerMesh
        IL_0324:  ldloc.s    V_22
        IL_0326:  ldloc.s    V_19
        IL_0328:  ldc.i4.0
        IL_0329:  ldc.i4.1
        IL_032a:  ldc.i4.0
        IL_032b:  ldc.i4.1
        IL_032c:  ldloc.s    V_23
        IL_032e:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                               valuetype [Engine]Engine.Matrix,
                                                                               bool,
                                                                               bool,
                                                                               bool,
                                                                               bool,
                                                                               valuetype [Engine]Engine.Color)
        IL_0333:  ldloca.s   V_20
        IL_0335:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelMeshPart>::MoveNext()
        IL_033a:  brtrue.s   IL_02e0

        IL_033c:  leave.s    IL_034c

      }  // end .try
      finally
      {
        IL_033e:  ldloca.s   V_20
        IL_0340:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelMeshPart>
        IL_0346:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_034b:  endfinally
      }  // end handler
      IL_034c:  ldloca.s   V_16
      IL_034e:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelMesh>::MoveNext()
      IL_0353:  brtrue     IL_02af

      IL_0358:  leave.s    IL_0368

    }  // end .try
    finally
    {
      IL_035a:  ldloca.s   V_16
      IL_035c:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelMesh>
      IL_0362:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0367:  endfinally
    }  // end handler
    IL_0368:  ldstr      "Models/OuterClothing"
    IL_036d:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Model>(string)
    IL_0372:  dup
    IL_0373:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelBone> [Engine]Engine.Graphics.Model::get_Bones()
    IL_0378:  stloc.s    V_15
    IL_037a:  ldloca.s   V_15
    IL_037c:  call       instance int32 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelBone>::get_Count()
    IL_0381:  newarr     [Engine]Engine.Matrix
    IL_0386:  stloc.s    V_5
    IL_0388:  dup
    IL_0389:  ldloc.s    V_5
    IL_038b:  callvirt   instance void [Engine]Engine.Graphics.Model::CopyAbsoluteBoneTransformsTo(valuetype [Engine]Engine.Matrix[])
    IL_0390:  dup
    IL_0391:  ldstr      "Leg1"
    IL_0396:  ldc.i4.1
    IL_0397:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.Model::FindBone(string,
                                                                                                                  bool)
    IL_039c:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_03a1:  stloc.s    V_6
    IL_03a3:  dup
    IL_03a4:  ldstr      "Leg2"
    IL_03a9:  ldc.i4.1
    IL_03aa:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.Model::FindBone(string,
                                                                                                                  bool)
    IL_03af:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_03b4:  stloc.s    V_7
    IL_03b6:  ldloc.s    V_5
    IL_03b8:  ldloc.s    V_6
    IL_03ba:  ldc.r4     -2.e-002
    IL_03bf:  ldc.r4     0.0
    IL_03c4:  ldc.r4     0.0
    IL_03c9:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_03ce:  ldloc.s    V_5
    IL_03d0:  ldloc.s    V_6
    IL_03d2:  ldelem     [Engine]Engine.Matrix
    IL_03d7:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_03dc:  stelem     [Engine]Engine.Matrix
    IL_03e1:  ldloc.s    V_5
    IL_03e3:  ldloc.s    V_7
    IL_03e5:  ldc.r4     2.e-002
    IL_03ea:  ldc.r4     0.0
    IL_03ef:  ldc.r4     0.0
    IL_03f4:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_03f9:  ldloc.s    V_5
    IL_03fb:  ldloc.s    V_7
    IL_03fd:  ldelem     [Engine]Engine.Matrix
    IL_0402:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0407:  stelem     [Engine]Engine.Matrix
    IL_040c:  ldarg.0
    IL_040d:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0412:  stfld      class Game.BlockMesh Game.ClothingBlock::m_outerMesh
    IL_0417:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMesh> [Engine]Engine.Graphics.Model::get_Meshes()
    IL_041c:  stloc.s    V_17
    IL_041e:  ldloca.s   V_17
    IL_0420:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMesh>::GetEnumerator()
    IL_0425:  stloc.s    V_16
    .try
    {
      IL_0427:  br         IL_04ca

      IL_042c:  ldloca.s   V_16
      IL_042e:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelMesh>::get_Current()
      IL_0433:  stloc.s    V_24
      IL_0435:  ldloc.s    V_5
      IL_0437:  ldloc.s    V_24
      IL_0439:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
      IL_043e:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
      IL_0443:  ldelem     [Engine]Engine.Matrix
      IL_0448:  stloc.s    V_25
      IL_044a:  ldloc.s    V_24
      IL_044c:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
      IL_0451:  stloc.s    V_21
      IL_0453:  ldloca.s   V_21
      IL_0455:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::GetEnumerator()
      IL_045a:  stloc.s    V_20
      .try
      {
        IL_045c:  br.s       IL_04b1

        IL_045e:  ldloca.s   V_20
        IL_0460:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelMeshPart>::get_Current()
        IL_0465:  stloc.s    V_26
        IL_0467:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
        IL_046c:  ldc.r4     0.80000001
        IL_0471:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                              float32)
        IL_0476:  stloc.s    V_27
        IL_0478:  ldloca.s   V_27
        IL_047a:  ldc.i4     0xff
        IL_047f:  call       instance void [Engine]Engine.Color::set_A(uint8)
        IL_0484:  ldarg.0
        IL_0485:  ldfld      class Game.BlockMesh Game.ClothingBlock::m_outerMesh
        IL_048a:  ldloc.s    V_26
        IL_048c:  ldloc.s    V_25
        IL_048e:  ldc.i4.0
        IL_048f:  ldc.i4.0
        IL_0490:  ldc.i4.0
        IL_0491:  ldc.i4.0
        IL_0492:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
        IL_0497:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                               valuetype [Engine]Engine.Matrix,
                                                                               bool,
                                                                               bool,
                                                                               bool,
                                                                               bool,
                                                                               valuetype [Engine]Engine.Color)
        IL_049c:  ldarg.0
        IL_049d:  ldfld      class Game.BlockMesh Game.ClothingBlock::m_outerMesh
        IL_04a2:  ldloc.s    V_26
        IL_04a4:  ldloc.s    V_25
        IL_04a6:  ldc.i4.0
        IL_04a7:  ldc.i4.1
        IL_04a8:  ldc.i4.0
        IL_04a9:  ldc.i4.1
        IL_04aa:  ldloc.s    V_27
        IL_04ac:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                               valuetype [Engine]Engine.Matrix,
                                                                               bool,
                                                                               bool,
                                                                               bool,
                                                                               bool,
                                                                               valuetype [Engine]Engine.Color)
        IL_04b1:  ldloca.s   V_20
        IL_04b3:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelMeshPart>::MoveNext()
        IL_04b8:  brtrue.s   IL_045e

        IL_04ba:  leave.s    IL_04ca

      }  // end .try
      finally
      {
        IL_04bc:  ldloca.s   V_20
        IL_04be:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelMeshPart>
        IL_04c4:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_04c9:  endfinally
      }  // end handler
      IL_04ca:  ldloca.s   V_16
      IL_04cc:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelMesh>::MoveNext()
      IL_04d1:  brtrue     IL_042c

      IL_04d6:  leave.s    IL_04e6

    }  // end .try
    finally
    {
      IL_04d8:  ldloca.s   V_16
      IL_04da:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelMesh>
      IL_04e0:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_04e5:  endfinally
    }  // end handler
    IL_04e6:  ldarg.0
    IL_04e7:  call       instance void Game.Block::Initialize()
    IL_04ec:  ret
  } // end of method ClothingBlock::Initialize

  .method public hidebysig virtual instance string 
          GetDisplayName(class Game.SubsystemTerrain subsystemTerrain,
                         int32 'value') cil managed
  {
    // 代码大小       53 (0x35)
    .maxstack  3
    .locals init (class Game.ClothingData V_0,
             int32 V_1)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  dup
    IL_0007:  call       class Game.ClothingData Game.ClothingBlock::GetClothingData(int32)
    IL_000c:  stloc.0
    IL_000d:  call       int32 Game.ClothingBlock::GetClothingColor(int32)
    IL_0012:  stloc.1
    IL_0013:  ldloc.1
    IL_0014:  brfalse.s  IL_002e

    IL_0016:  ldsfld     string[] Game.PaintBucketBlock::ColorDisplayNames
    IL_001b:  ldloc.1
    IL_001c:  ldelem.ref
    IL_001d:  ldstr      " dyed "
    IL_0022:  ldloc.0
    IL_0023:  ldfld      string Game.ClothingData::DisplayName
    IL_0028:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string,
                                                                      string)
    IL_002d:  ret

    IL_002e:  ldloc.0
    IL_002f:  ldfld      string Game.ClothingData::DisplayName
    IL_0034:  ret
  } // end of method ClothingBlock::GetDisplayName

  .method public hidebysig virtual instance string 
          GetDescription(int32 'value') cil managed
  {
    // 代码大小       17 (0x11)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
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
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
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
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
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
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
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
    IL_0018:  call       int32 Game.TerrainData::ReplaceData(int32,
                                                             int32)
    IL_001d:  ret
  } // end of method ClothingBlock::SetDamage

  .method public hidebysig virtual instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32> 
          GetCreativeValues() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.IteratorStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 2B 47 61 6D 65 2E 43 6C 6F 74 68 69 6E 67   // ..+Game.Clothing
                                                                                                                                                      42 6C 6F 63 6B 2B 3C 47 65 74 43 72 65 61 74 69   // Block+<GetCreati
                                                                                                                                                      76 65 56 61 6C 75 65 73 3E 64 5F 5F 31 32 00 00 ) // veValues>d__12..
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldc.i4.s   -2
    IL_0002:  newobj     instance void Game.ClothingBlock/'<GetCreativeValues>d__12'::.ctor(int32)
    IL_0007:  ret
  } // end of method ClothingBlock::GetCreativeValues

  .method public hidebysig virtual instance class Game.CraftingRecipe 
          GetAdHocCraftingRecipe(class Game.SubsystemTerrain terrain,
                                 string[] ingredients,
                                 float32 heatLevel) cil managed
  {
    // 代码大小       881 (0x371)
    .maxstack  7
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
    IL_000b:  ldsfld     class [System.Runtime]System.Func`2<string,bool> Game.ClothingBlock/'<>c'::'<>9__13_0'
    IL_0010:  dup
    IL_0011:  brtrue.s   IL_002a

    IL_0013:  pop
    IL_0014:  ldsfld     class Game.ClothingBlock/'<>c' Game.ClothingBlock/'<>c'::'<>9'
    IL_0019:  ldftn      instance bool Game.ClothingBlock/'<>c'::'<GetAdHocCraftingRecipe>b__13_0'(string)
    IL_001f:  newobj     instance void class [System.Runtime]System.Func`2<string,bool>::.ctor(object,
                                                                                               native int)
    IL_0024:  dup
    IL_0025:  stsfld     class [System.Runtime]System.Func`2<string,bool> Game.ClothingBlock/'<>c'::'<>9__13_0'
    IL_002a:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<string>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                class [System.Runtime]System.Func`2<!!0,bool>)
    IL_002f:  call       class [System.Collections]System.Collections.Generic.List`1<!!0> [System.Linq]System.Linq.Enumerable::ToList<string>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_0034:  stloc.0
    IL_0035:  ldloc.0
    IL_0036:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<string>::get_Count()
    IL_003b:  ldc.i4.2
    IL_003c:  bne.un     IL_036f

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
      IL_0096:  call       int32 Game.TerrainData::MakeBlockValue(int32,
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
      IL_00d0:  call       int32 Game.TerrainData::MakeBlockValue(int32,
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
      IL_010a:  call       int32 Game.TerrainData::MakeBlockValue(int32,
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
    IL_012d:  brfalse    IL_026c

    IL_0132:  ldloc.3
    IL_0133:  brfalse    IL_026c

    IL_0138:  ldloc.3
    IL_0139:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_013e:  dup
    IL_013f:  call       int32 Game.ClothingBlock::GetClothingColor(int32)
    IL_0144:  stloc.s    V_7
    IL_0146:  dup
    IL_0147:  call       int32 Game.ClothingBlock::GetClothingIndex(int32)
    IL_014c:  stloc.s    V_8
    IL_014e:  call       class Game.ClothingData Game.ClothingBlock::GetClothingData(int32)
    IL_0153:  ldfld      bool Game.ClothingData::CanByDyed
    IL_0158:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_015d:  ldc.i4     0xcb
    IL_0162:  ldelem.ref
    IL_0163:  ldloc.3
    IL_0164:  callvirt   instance int32 Game.Block::GetDamage(int32)
    IL_0169:  stloc.s    V_9
    IL_016b:  ldloc.1
    IL_016c:  call       int32 Game.TerrainData::ExtractData(int32)
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
    IL_01b8:  beq        IL_026c

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
    IL_01e5:  call       int32 Game.TerrainData::MakeBlockValue(int32,
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
    IL_0208:  call       int32 Game.TerrainData::MakeBlockValue(int32,
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
    IL_0244:  ldsfld     string[] Game.PaintBucketBlock::ColorDisplayNames
    IL_0249:  ldloc.s    V_10
    IL_024b:  ldelem.ref
    IL_024c:  stelem.ref
    IL_024d:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0252:  stfld      string Game.CraftingRecipe::Description
    IL_0257:  ldloc.s    V_15
    IL_0259:  ldarg.2
    IL_025a:  callvirt   instance object [System.Runtime]System.Array::Clone()
    IL_025f:  castclass  string[]
    IL_0264:  stfld      string[] Game.CraftingRecipe::Ingredients
    IL_0269:  ldloc.s    V_15
    IL_026b:  ret

    IL_026c:  ldloc.2
    IL_026d:  brfalse    IL_036f

    IL_0272:  ldloc.3
    IL_0273:  brfalse    IL_036f

    IL_0278:  ldloc.3
    IL_0279:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_027e:  dup
    IL_027f:  call       int32 Game.ClothingBlock::GetClothingColor(int32)
    IL_0284:  stloc.s    V_16
    IL_0286:  dup
    IL_0287:  call       int32 Game.ClothingBlock::GetClothingIndex(int32)
    IL_028c:  stloc.s    V_17
    IL_028e:  call       class Game.ClothingData Game.ClothingBlock::GetClothingData(int32)
    IL_0293:  ldfld      bool Game.ClothingData::CanByDyed
    IL_0298:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_029d:  ldc.i4     0xcb
    IL_02a2:  ldelem.ref
    IL_02a3:  ldloc.3
    IL_02a4:  callvirt   instance int32 Game.Block::GetDamage(int32)
    IL_02a9:  stloc.s    V_18
    IL_02ab:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_02b0:  ldc.i4     0x80
    IL_02b5:  ldelem.ref
    IL_02b6:  ldloc.2
    IL_02b7:  callvirt   instance int32 Game.Block::GetDamage(int32)
    IL_02bc:  stloc.s    V_19
    IL_02be:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_02c3:  ldc.i4     0x80
    IL_02c8:  ldelem.ref
    IL_02c9:  stloc.s    V_20
    IL_02cb:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_02d0:  ldc.i4     0xcb
    IL_02d5:  ldelem.ref
    IL_02d6:  stloc.s    V_21
    IL_02d8:  brtrue.s   IL_02dc

    IL_02da:  ldnull
    IL_02db:  ret

    IL_02dc:  ldloc.s    V_16
    IL_02de:  brfalse    IL_036f

    IL_02e3:  newobj     instance void Game.CraftingRecipe::.ctor()
    IL_02e8:  dup
    IL_02e9:  ldc.i4.1
    IL_02ea:  stfld      int32 Game.CraftingRecipe::ResultCount
    IL_02ef:  dup
    IL_02f0:  ldloc.s    V_21
    IL_02f2:  ldc.i4     0xcb
    IL_02f7:  ldc.i4.0
    IL_02f8:  ldc.i4.0
    IL_02f9:  ldc.i4.0
    IL_02fa:  call       int32 Game.ClothingBlock::SetClothingColor(int32,
                                                                    int32)
    IL_02ff:  ldloc.s    V_17
    IL_0301:  call       int32 Game.ClothingBlock::SetClothingIndex(int32,
                                                                    int32)
    IL_0306:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_030b:  ldloc.s    V_18
    IL_030d:  callvirt   instance int32 Game.Block::SetDamage(int32,
                                                              int32)
    IL_0312:  stfld      int32 Game.CraftingRecipe::ResultValue
    IL_0317:  dup
    IL_0318:  ldc.i4.1
    IL_0319:  stfld      int32 Game.CraftingRecipe::RemainsCount
    IL_031e:  dup
    IL_031f:  ldc.i4     0x80
    IL_0324:  ldc.i4.0
    IL_0325:  ldc.i4.0
    IL_0326:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_032b:  ldloc.s    V_19
    IL_032d:  ldloc.s    V_20
    IL_032f:  ldfld      int32 Game.Block::Durability
    IL_0334:  ldc.i4.4
    IL_0335:  div
    IL_0336:  ldc.i4.1
    IL_0337:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_033c:  add
    IL_033d:  call       int32 Game.BlocksManager::DamageItem(int32,
                                                              int32)
    IL_0342:  stfld      int32 Game.CraftingRecipe::RemainsValue
    IL_0347:  dup
    IL_0348:  ldc.r4     1.
    IL_034d:  stfld      float32 Game.CraftingRecipe::RequiredHeatLevel
    IL_0352:  dup
    IL_0353:  ldstr      "Undye clothing"
    IL_0358:  stfld      string Game.CraftingRecipe::Description
    IL_035d:  dup
    IL_035e:  ldarg.2
    IL_035f:  callvirt   instance object [System.Runtime]System.Array::Clone()
    IL_0364:  castclass  string[]
    IL_0369:  stfld      string[] Game.CraftingRecipe::Ingredients
    IL_036e:  ret

    IL_036f:  ldnull
    IL_0370:  ret
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
                    float32 size,
                    valuetype [Engine]Engine.Matrix& matrix,
                    class Game.DrawBlockEnvironmentData environmentData) cil managed
  {
    // 代码大小       145 (0x91)
    .maxstack  7
    .locals init (int32 V_0,
             class Game.ClothingData V_1,
             valuetype [Engine]Engine.Matrix V_2)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  dup
    IL_0007:  call       int32 Game.ClothingBlock::GetClothingColor(int32)
    IL_000c:  stloc.0
    IL_000d:  call       class Game.ClothingData Game.ClothingBlock::GetClothingData(int32)
    IL_0012:  stloc.1
    IL_0013:  ldsfld     valuetype [Engine]Engine.Matrix[] Game.ClothingBlock::m_slotTransforms
    IL_0018:  ldloc.1
    IL_0019:  ldfld      valuetype Game.ClothingSlot Game.ClothingData::Slot
    IL_001e:  ldelem     [Engine]Engine.Matrix
    IL_0023:  ldarg.3
    IL_0024:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateScale(float32)
    IL_0029:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_002e:  ldarg.s    matrix
    IL_0030:  ldobj      [Engine]Engine.Matrix
    IL_0035:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_003a:  stloc.2
    IL_003b:  ldloc.1
    IL_003c:  ldfld      bool Game.ClothingData::IsOuter
    IL_0041:  brfalse.s  IL_006a

    IL_0043:  ldarg.1
    IL_0044:  ldarg.0
    IL_0045:  ldfld      class Game.BlockMesh Game.ClothingBlock::m_outerMesh
    IL_004a:  ldloc.1
    IL_004b:  ldfld      class [Engine]Engine.Graphics.Texture2D Game.ClothingData::Texture
    IL_0050:  ldsfld     valuetype [Engine]Engine.Color[] Game.ClothingBlock::ClothingColors
    IL_0055:  ldloc.0
    IL_0056:  ldelem     [Engine]Engine.Color
    IL_005b:  ldc.r4     1.
    IL_0060:  ldloca.s   V_2
    IL_0062:  ldarg.s    environmentData
    IL_0064:  call       void Game.BlocksManager::DrawMeshBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                                class Game.BlockMesh,
                                                                class [Engine]Engine.Graphics.Texture2D,
                                                                valuetype [Engine]Engine.Color,
                                                                float32,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                class Game.DrawBlockEnvironmentData)
    IL_0069:  ret

    IL_006a:  ldarg.1
    IL_006b:  ldarg.0
    IL_006c:  ldfld      class Game.BlockMesh Game.ClothingBlock::m_innerMesh
    IL_0071:  ldloc.1
    IL_0072:  ldfld      class [Engine]Engine.Graphics.Texture2D Game.ClothingData::Texture
    IL_0077:  ldsfld     valuetype [Engine]Engine.Color[] Game.ClothingBlock::ClothingColors
    IL_007c:  ldloc.0
    IL_007d:  ldelem     [Engine]Engine.Color
    IL_0082:  ldc.r4     1.
    IL_0087:  ldloca.s   V_2
    IL_0089:  ldarg.s    environmentData
    IL_008b:  call       void Game.BlocksManager::DrawMeshBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                                class Game.BlockMesh,
                                                                class [Engine]Engine.Graphics.Texture2D,
                                                                valuetype [Engine]Engine.Color,
                                                                float32,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                class Game.DrawBlockEnvironmentData)
    IL_0090:  ret
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
    // 代码大小       192 (0xc0)
    .maxstack  6
    IL_0000:  ldc.i4.s   16
    IL_0002:  newarr     [Engine]Engine.Color
    IL_0007:  stsfld     valuetype [Engine]Engine.Color[] Game.ClothingBlock::ClothingColors
    IL_000c:  ldc.i4.4
    IL_000d:  newarr     [Engine]Engine.Matrix
    IL_0012:  dup
    IL_0013:  ldc.i4.0
    IL_0014:  ldc.r4     0.0
    IL_0019:  ldc.r4     -1.5
    IL_001e:  ldc.r4     0.0
    IL_0023:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0028:  ldc.r4     2.7
    IL_002d:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateScale(float32)
    IL_0032:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0037:  stelem     [Engine]Engine.Matrix
    IL_003c:  dup
    IL_003d:  ldc.i4.1
    IL_003e:  ldc.r4     0.0
    IL_0043:  ldc.r4     -1.1
    IL_0048:  ldc.r4     0.0
    IL_004d:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0052:  ldc.r4     2.7
    IL_0057:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateScale(float32)
    IL_005c:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0061:  stelem     [Engine]Engine.Matrix
    IL_0066:  dup
    IL_0067:  ldc.i4.2
    IL_0068:  ldc.r4     0.0
    IL_006d:  ldc.r4     -0.5
    IL_0072:  ldc.r4     0.0
    IL_0077:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_007c:  ldc.r4     2.7
    IL_0081:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateScale(float32)
    IL_0086:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_008b:  stelem     [Engine]Engine.Matrix
    IL_0090:  dup
    IL_0091:  ldc.i4.3
    IL_0092:  ldc.r4     0.0
    IL_0097:  ldc.r4     -0.1
    IL_009c:  ldc.r4     0.0
    IL_00a1:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_00a6:  ldc.r4     2.7
    IL_00ab:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateScale(float32)
    IL_00b0:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00b5:  stelem     [Engine]Engine.Matrix
    IL_00ba:  stsfld     valuetype [Engine]Engine.Matrix[] Game.ClothingBlock::m_slotTransforms
    IL_00bf:  ret
  } // end of method ClothingBlock::.cctor

} // end of class Game.ClothingBlock