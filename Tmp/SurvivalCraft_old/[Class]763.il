.class public auto ansi beforefieldinit Game.TerrainBrush
       extends [System.Runtime]System.Object
{
  .class sequential ansi sealed nested public beforefieldinit Cell
         extends [System.Runtime]System.ValueType
  {
    .field public int8 X
    .field public int8 Y
    .field public int8 Z
    .field public int32 Value
  } // end of class Cell

  .class auto ansi nested public beforefieldinit Brush
         extends [System.Runtime]System.Object
  {
    .field private int32 m_value
    .field private class [System.Runtime]System.Func`2<valuetype [System.Runtime]System.Nullable`1<int32>,valuetype [System.Runtime]System.Nullable`1<int32>> m_handler1
    .field private class [System.Runtime]System.Func`2<valuetype [Engine]Engine.Point3,valuetype [System.Runtime]System.Nullable`1<int32>> m_handler2
    .method private hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method Brush::.ctor

    .method public hidebysig specialname static 
            class Game.TerrainBrush/Brush 
            op_Implicit(int32 'value') cil managed
    {
      // 代码大小       13 (0xd)
      .maxstack  8
      IL_0000:  newobj     instance void Game.TerrainBrush/Brush::.ctor()
      IL_0005:  dup
      IL_0006:  ldarg.0
      IL_0007:  stfld      int32 Game.TerrainBrush/Brush::m_value
      IL_000c:  ret
    } // end of method Brush::op_Implicit

    .method public hidebysig specialname static 
            class Game.TerrainBrush/Brush 
            op_Implicit(class [System.Runtime]System.Func`2<valuetype [System.Runtime]System.Nullable`1<int32>,valuetype [System.Runtime]System.Nullable`1<int32>> 'handler') cil managed
    {
      // 代码大小       13 (0xd)
      .maxstack  8
      IL_0000:  newobj     instance void Game.TerrainBrush/Brush::.ctor()
      IL_0005:  dup
      IL_0006:  ldarg.0
      IL_0007:  stfld      class [System.Runtime]System.Func`2<valuetype [System.Runtime]System.Nullable`1<int32>,valuetype [System.Runtime]System.Nullable`1<int32>> Game.TerrainBrush/Brush::m_handler1
      IL_000c:  ret
    } // end of method Brush::op_Implicit

    .method public hidebysig specialname static 
            class Game.TerrainBrush/Brush 
            op_Implicit(class [System.Runtime]System.Func`2<valuetype [Engine]Engine.Point3,valuetype [System.Runtime]System.Nullable`1<int32>> 'handler') cil managed
    {
      // 代码大小       13 (0xd)
      .maxstack  8
      IL_0000:  newobj     instance void Game.TerrainBrush/Brush::.ctor()
      IL_0005:  dup
      IL_0006:  ldarg.0
      IL_0007:  stfld      class [System.Runtime]System.Func`2<valuetype [Engine]Engine.Point3,valuetype [System.Runtime]System.Nullable`1<int32>> Game.TerrainBrush/Brush::m_handler2
      IL_000c:  ret
    } // end of method Brush::op_Implicit

    .method public hidebysig instance valuetype [System.Runtime]System.Nullable`1<int32> 
            Paint(class Game.TerrainBrush terrainBrush,
                  valuetype [Engine]Engine.Point3 p) cil managed
    {
      // 代码大小       77 (0x4d)
      .maxstack  5
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class [System.Runtime]System.Func`2<valuetype [System.Runtime]System.Nullable`1<int32>,valuetype [System.Runtime]System.Nullable`1<int32>> Game.TerrainBrush/Brush::m_handler1
      IL_0006:  brfalse.s  IL_002c

      IL_0008:  ldarg.0
      IL_0009:  ldfld      class [System.Runtime]System.Func`2<valuetype [System.Runtime]System.Nullable`1<int32>,valuetype [System.Runtime]System.Nullable`1<int32>> Game.TerrainBrush/Brush::m_handler1
      IL_000e:  ldarg.1
      IL_000f:  ldarg.2
      IL_0010:  ldfld      int32 [Engine]Engine.Point3::X
      IL_0015:  ldarg.2
      IL_0016:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_001b:  ldarg.2
      IL_001c:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_0021:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<int32> Game.TerrainBrush::GetValue(int32,
                                                                                                                   int32,
                                                                                                                   int32)
      IL_0026:  callvirt   instance !1 class [System.Runtime]System.Func`2<valuetype [System.Runtime]System.Nullable`1<int32>,valuetype [System.Runtime]System.Nullable`1<int32>>::Invoke(!0)
      IL_002b:  ret

      IL_002c:  ldarg.0
      IL_002d:  ldfld      class [System.Runtime]System.Func`2<valuetype [Engine]Engine.Point3,valuetype [System.Runtime]System.Nullable`1<int32>> Game.TerrainBrush/Brush::m_handler2
      IL_0032:  brfalse.s  IL_0041

      IL_0034:  ldarg.0
      IL_0035:  ldfld      class [System.Runtime]System.Func`2<valuetype [Engine]Engine.Point3,valuetype [System.Runtime]System.Nullable`1<int32>> Game.TerrainBrush/Brush::m_handler2
      IL_003a:  ldarg.2
      IL_003b:  callvirt   instance !1 class [System.Runtime]System.Func`2<valuetype [Engine]Engine.Point3,valuetype [System.Runtime]System.Nullable`1<int32>>::Invoke(!0)
      IL_0040:  ret

      IL_0041:  ldarg.0
      IL_0042:  ldfld      int32 Game.TerrainBrush/Brush::m_value
      IL_0047:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
      IL_004c:  ret
    } // end of method Brush::Paint

  } // end of class Brush

  .class auto ansi nested public beforefieldinit Counter
         extends [System.Runtime]System.Object
  {
    .field private int32 m_value
    .field private class [System.Runtime]System.Func`2<valuetype [System.Runtime]System.Nullable`1<int32>,int32> m_handler1
    .field private class [System.Runtime]System.Func`2<valuetype [Engine]Engine.Point3,int32> m_handler2
    .method private hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method Counter::.ctor

    .method public hidebysig specialname static 
            class Game.TerrainBrush/Counter 
            op_Implicit(int32 'value') cil managed
    {
      // 代码大小       13 (0xd)
      .maxstack  8
      IL_0000:  newobj     instance void Game.TerrainBrush/Counter::.ctor()
      IL_0005:  dup
      IL_0006:  ldarg.0
      IL_0007:  stfld      int32 Game.TerrainBrush/Counter::m_value
      IL_000c:  ret
    } // end of method Counter::op_Implicit

    .method public hidebysig specialname static 
            class Game.TerrainBrush/Counter 
            op_Implicit(class [System.Runtime]System.Func`2<valuetype [System.Runtime]System.Nullable`1<int32>,int32> 'handler') cil managed
    {
      // 代码大小       13 (0xd)
      .maxstack  8
      IL_0000:  newobj     instance void Game.TerrainBrush/Counter::.ctor()
      IL_0005:  dup
      IL_0006:  ldarg.0
      IL_0007:  stfld      class [System.Runtime]System.Func`2<valuetype [System.Runtime]System.Nullable`1<int32>,int32> Game.TerrainBrush/Counter::m_handler1
      IL_000c:  ret
    } // end of method Counter::op_Implicit

    .method public hidebysig specialname static 
            class Game.TerrainBrush/Counter 
            op_Implicit(class [System.Runtime]System.Func`2<valuetype [Engine]Engine.Point3,int32> 'handler') cil managed
    {
      // 代码大小       13 (0xd)
      .maxstack  8
      IL_0000:  newobj     instance void Game.TerrainBrush/Counter::.ctor()
      IL_0005:  dup
      IL_0006:  ldarg.0
      IL_0007:  stfld      class [System.Runtime]System.Func`2<valuetype [Engine]Engine.Point3,int32> Game.TerrainBrush/Counter::m_handler2
      IL_000c:  ret
    } // end of method Counter::op_Implicit

    .method public hidebysig instance int32 
            Count(class Game.TerrainBrush terrainBrush,
                  valuetype [Engine]Engine.Point3 p) cil managed
    {
      // 代码大小       89 (0x59)
      .maxstack  3
      .locals init (valuetype [System.Runtime]System.Nullable`1<int32> V_0,
               int32 V_1)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class [System.Runtime]System.Func`2<valuetype [System.Runtime]System.Nullable`1<int32>,int32> Game.TerrainBrush/Counter::m_handler1
      IL_0006:  brfalse.s  IL_001b

      IL_0008:  ldarg.0
      IL_0009:  ldfld      class [System.Runtime]System.Func`2<valuetype [System.Runtime]System.Nullable`1<int32>,int32> Game.TerrainBrush/Counter::m_handler1
      IL_000e:  ldarg.1
      IL_000f:  ldarg.2
      IL_0010:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<int32> Game.TerrainBrush::GetValue(valuetype [Engine]Engine.Point3)
      IL_0015:  callvirt   instance !1 class [System.Runtime]System.Func`2<valuetype [System.Runtime]System.Nullable`1<int32>,int32>::Invoke(!0)
      IL_001a:  ret

      IL_001b:  ldarg.0
      IL_001c:  ldfld      class [System.Runtime]System.Func`2<valuetype [Engine]Engine.Point3,int32> Game.TerrainBrush/Counter::m_handler2
      IL_0021:  brfalse.s  IL_0030

      IL_0023:  ldarg.0
      IL_0024:  ldfld      class [System.Runtime]System.Func`2<valuetype [Engine]Engine.Point3,int32> Game.TerrainBrush/Counter::m_handler2
      IL_0029:  ldarg.2
      IL_002a:  callvirt   instance !1 class [System.Runtime]System.Func`2<valuetype [Engine]Engine.Point3,int32>::Invoke(!0)
      IL_002f:  ret

      IL_0030:  ldarg.1
      IL_0031:  ldarg.2
      IL_0032:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<int32> Game.TerrainBrush::GetValue(valuetype [Engine]Engine.Point3)
      IL_0037:  stloc.0
      IL_0038:  ldarg.0
      IL_0039:  ldfld      int32 Game.TerrainBrush/Counter::m_value
      IL_003e:  stloc.1
      IL_003f:  ldloca.s   V_0
      IL_0041:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::GetValueOrDefault()
      IL_0046:  ldloc.1
      IL_0047:  beq.s      IL_004c

      IL_0049:  ldc.i4.0
      IL_004a:  br.s       IL_0053

      IL_004c:  ldloca.s   V_0
      IL_004e:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
      IL_0053:  brtrue.s   IL_0057

      IL_0055:  ldc.i4.0
      IL_0056:  ret

      IL_0057:  ldc.i4.1
      IL_0058:  ret
    } // end of method Counter::Count

  } // end of class Counter

  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<int32,valuetype Game.TerrainBrush/Cell> m_cellsDictionary
  .field private valuetype Game.TerrainBrush/Cell[] m_cells
  .method private hidebysig static int32 
          Key(int32 x,
              int32 y,
              int32 z) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4     0x80
    IL_0006:  add
    IL_0007:  ldarg.1
    IL_0008:  ldc.i4     0x80
    IL_000d:  add
    IL_000e:  ldc.i4.8
    IL_000f:  shl
    IL_0010:  add
    IL_0011:  ldarg.2
    IL_0012:  ldc.i4     0x80
    IL_0017:  add
    IL_0018:  ldc.i4.s   16
    IL_001a:  shl
    IL_001b:  add
    IL_001c:  ret
  } // end of method TerrainBrush::Key

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<int32,valuetype Game.TerrainBrush/Cell>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<int32,valuetype Game.TerrainBrush/Cell> Game.TerrainBrush::m_cellsDictionary
    IL_000b:  ldarg.0
    IL_000c:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0011:  ret
  } // end of method TerrainBrush::.ctor

  .method public hidebysig specialname instance valuetype Game.TerrainBrush/Cell[] 
          get_Cells() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype Game.TerrainBrush/Cell[] Game.TerrainBrush::m_cells
    IL_0006:  ret
  } // end of method TerrainBrush::get_Cells

  .method public hidebysig instance void 
          Compile() cil managed
  {
    // 代码大小       106 (0x6a)
    .maxstack  4
    .locals init (int32 V_0,
             valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<int32,valuetype Game.TerrainBrush/Cell> V_1,
             valuetype Game.TerrainBrush/Cell V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<int32,valuetype Game.TerrainBrush/Cell> Game.TerrainBrush::m_cellsDictionary
    IL_0007:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<int32,valuetype Game.TerrainBrush/Cell>::get_Values()
    IL_000c:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection<int32,valuetype Game.TerrainBrush/Cell>::get_Count()
    IL_0011:  newarr     Game.TerrainBrush/Cell
    IL_0016:  stfld      valuetype Game.TerrainBrush/Cell[] Game.TerrainBrush::m_cells
    IL_001b:  ldc.i4.0
    IL_001c:  stloc.0
    IL_001d:  ldarg.0
    IL_001e:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<int32,valuetype Game.TerrainBrush/Cell> Game.TerrainBrush::m_cellsDictionary
    IL_0023:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<int32,valuetype Game.TerrainBrush/Cell>::get_Values()
    IL_0028:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection<int32,valuetype Game.TerrainBrush/Cell>::GetEnumerator()
    IL_002d:  stloc.1
    .try
    {
      IL_002e:  br.s       IL_0049

      IL_0030:  ldloca.s   V_1
      IL_0032:  call       instance !1 valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<int32,valuetype Game.TerrainBrush/Cell>::get_Current()
      IL_0037:  stloc.2
      IL_0038:  ldarg.0
      IL_0039:  ldfld      valuetype Game.TerrainBrush/Cell[] Game.TerrainBrush::m_cells
      IL_003e:  ldloc.0
      IL_003f:  dup
      IL_0040:  ldc.i4.1
      IL_0041:  add
      IL_0042:  stloc.0
      IL_0043:  ldloc.2
      IL_0044:  stelem     Game.TerrainBrush/Cell
      IL_0049:  ldloca.s   V_1
      IL_004b:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<int32,valuetype Game.TerrainBrush/Cell>::MoveNext()
      IL_0050:  brtrue.s   IL_0030

      IL_0052:  leave.s    IL_0062

    }  // end .try
    finally
    {
      IL_0054:  ldloca.s   V_1
      IL_0056:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<int32,valuetype Game.TerrainBrush/Cell>
      IL_005c:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0061:  endfinally
    }  // end handler
    IL_0062:  ldarg.0
    IL_0063:  ldnull
    IL_0064:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<int32,valuetype Game.TerrainBrush/Cell> Game.TerrainBrush::m_cellsDictionary
    IL_0069:  ret
  } // end of method TerrainBrush::Compile

  .method public hidebysig instance int32 
          CountNonDiagonalNeighbors(int32 x,
                                    int32 y,
                                    int32 z,
                                    class Game.TerrainBrush/Counter counter) cil managed
  {
    // 代码大小       116 (0x74)
    .maxstack  7
    IL_0000:  ldc.i4.0
    IL_0001:  ldarg.s    counter
    IL_0003:  ldarg.0
    IL_0004:  ldarg.1
    IL_0005:  ldc.i4.1
    IL_0006:  sub
    IL_0007:  ldarg.2
    IL_0008:  ldarg.3
    IL_0009:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_000e:  callvirt   instance int32 Game.TerrainBrush/Counter::Count(class Game.TerrainBrush,
                                                                         valuetype [Engine]Engine.Point3)
    IL_0013:  add
    IL_0014:  ldarg.s    counter
    IL_0016:  ldarg.0
    IL_0017:  ldarg.1
    IL_0018:  ldc.i4.1
    IL_0019:  add
    IL_001a:  ldarg.2
    IL_001b:  ldarg.3
    IL_001c:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0021:  callvirt   instance int32 Game.TerrainBrush/Counter::Count(class Game.TerrainBrush,
                                                                         valuetype [Engine]Engine.Point3)
    IL_0026:  add
    IL_0027:  ldarg.s    counter
    IL_0029:  ldarg.0
    IL_002a:  ldarg.1
    IL_002b:  ldarg.2
    IL_002c:  ldc.i4.1
    IL_002d:  sub
    IL_002e:  ldarg.3
    IL_002f:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0034:  callvirt   instance int32 Game.TerrainBrush/Counter::Count(class Game.TerrainBrush,
                                                                         valuetype [Engine]Engine.Point3)
    IL_0039:  add
    IL_003a:  ldarg.s    counter
    IL_003c:  ldarg.0
    IL_003d:  ldarg.1
    IL_003e:  ldarg.2
    IL_003f:  ldc.i4.1
    IL_0040:  add
    IL_0041:  ldarg.3
    IL_0042:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0047:  callvirt   instance int32 Game.TerrainBrush/Counter::Count(class Game.TerrainBrush,
                                                                         valuetype [Engine]Engine.Point3)
    IL_004c:  add
    IL_004d:  ldarg.s    counter
    IL_004f:  ldarg.0
    IL_0050:  ldarg.1
    IL_0051:  ldarg.2
    IL_0052:  ldarg.3
    IL_0053:  ldc.i4.1
    IL_0054:  sub
    IL_0055:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_005a:  callvirt   instance int32 Game.TerrainBrush/Counter::Count(class Game.TerrainBrush,
                                                                         valuetype [Engine]Engine.Point3)
    IL_005f:  add
    IL_0060:  ldarg.s    counter
    IL_0062:  ldarg.0
    IL_0063:  ldarg.1
    IL_0064:  ldarg.2
    IL_0065:  ldarg.3
    IL_0066:  ldc.i4.1
    IL_0067:  add
    IL_0068:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_006d:  callvirt   instance int32 Game.TerrainBrush/Counter::Count(class Game.TerrainBrush,
                                                                         valuetype [Engine]Engine.Point3)
    IL_0072:  add
    IL_0073:  ret
  } // end of method TerrainBrush::CountNonDiagonalNeighbors

  .method public hidebysig instance int32 
          CountBox(int32 x,
                   int32 y,
                   int32 z,
                   int32 sizeX,
                   int32 sizeY,
                   int32 sizeZ,
                   class Game.TerrainBrush/Counter counter) cil managed
  {
    // 代码大小       68 (0x44)
    .maxstack  6
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  ldarg.1
    IL_0003:  stloc.1
    IL_0004:  br.s       IL_003b

    IL_0006:  ldarg.2
    IL_0007:  stloc.2
    IL_0008:  br.s       IL_0030

    IL_000a:  ldarg.3
    IL_000b:  stloc.3
    IL_000c:  br.s       IL_0025

    IL_000e:  ldloc.0
    IL_000f:  ldarg.s    counter
    IL_0011:  ldarg.0
    IL_0012:  ldloc.1
    IL_0013:  ldloc.2
    IL_0014:  ldloc.3
    IL_0015:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_001a:  callvirt   instance int32 Game.TerrainBrush/Counter::Count(class Game.TerrainBrush,
                                                                         valuetype [Engine]Engine.Point3)
    IL_001f:  add
    IL_0020:  stloc.0
    IL_0021:  ldloc.3
    IL_0022:  ldc.i4.1
    IL_0023:  add
    IL_0024:  stloc.3
    IL_0025:  ldloc.3
    IL_0026:  ldarg.3
    IL_0027:  ldarg.s    sizeZ
    IL_0029:  add
    IL_002a:  blt.s      IL_000e

    IL_002c:  ldloc.2
    IL_002d:  ldc.i4.1
    IL_002e:  add
    IL_002f:  stloc.2
    IL_0030:  ldloc.2
    IL_0031:  ldarg.2
    IL_0032:  ldarg.s    sizeY
    IL_0034:  add
    IL_0035:  blt.s      IL_000a

    IL_0037:  ldloc.1
    IL_0038:  ldc.i4.1
    IL_0039:  add
    IL_003a:  stloc.1
    IL_003b:  ldloc.1
    IL_003c:  ldarg.1
    IL_003d:  ldarg.s    sizeX
    IL_003f:  add
    IL_0040:  blt.s      IL_0006

    IL_0042:  ldloc.0
    IL_0043:  ret
  } // end of method TerrainBrush::CountBox

  .method public hidebysig instance void 
          Replace(int32 oldValue,
                  int32 newValue) cil managed
  {
    // 代码大小       107 (0x6b)
    .maxstack  3
    .locals init (class [System.Collections]System.Collections.Generic.Dictionary`2<int32,valuetype Game.TerrainBrush/Cell> V_0,
             valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<int32,valuetype Game.TerrainBrush/Cell> V_1,
             valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<int32,valuetype Game.TerrainBrush/Cell> V_2,
             valuetype Game.TerrainBrush/Cell V_3)
    IL_0000:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<int32,valuetype Game.TerrainBrush/Cell>::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<int32,valuetype Game.TerrainBrush/Cell> Game.TerrainBrush::m_cellsDictionary
    IL_000c:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<int32,valuetype Game.TerrainBrush/Cell>::GetEnumerator()
    IL_0011:  stloc.1
    .try
    {
      IL_0012:  br.s       IL_0043

      IL_0014:  ldloca.s   V_1
      IL_0016:  call       instance valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1> valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<int32,valuetype Game.TerrainBrush/Cell>::get_Current()
      IL_001b:  stloc.2
      IL_001c:  ldloca.s   V_2
      IL_001e:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<int32,valuetype Game.TerrainBrush/Cell>::get_Value()
      IL_0023:  stloc.3
      IL_0024:  ldloc.3
      IL_0025:  ldfld      int32 Game.TerrainBrush/Cell::Value
      IL_002a:  ldarg.1
      IL_002b:  bne.un.s   IL_0035

      IL_002d:  ldloca.s   V_3
      IL_002f:  ldarg.2
      IL_0030:  stfld      int32 Game.TerrainBrush/Cell::Value
      IL_0035:  ldloc.0
      IL_0036:  ldloca.s   V_2
      IL_0038:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<int32,valuetype Game.TerrainBrush/Cell>::get_Key()
      IL_003d:  ldloc.3
      IL_003e:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<int32,valuetype Game.TerrainBrush/Cell>::set_Item(!0,
                                                                                                                                                             !1)
      IL_0043:  ldloca.s   V_1
      IL_0045:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<int32,valuetype Game.TerrainBrush/Cell>::MoveNext()
      IL_004a:  brtrue.s   IL_0014

      IL_004c:  leave.s    IL_005c

    }  // end .try
    finally
    {
      IL_004e:  ldloca.s   V_1
      IL_0050:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<int32,valuetype Game.TerrainBrush/Cell>
      IL_0056:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_005b:  endfinally
    }  // end handler
    IL_005c:  ldarg.0
    IL_005d:  ldloc.0
    IL_005e:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<int32,valuetype Game.TerrainBrush/Cell> Game.TerrainBrush::m_cellsDictionary
    IL_0063:  ldarg.0
    IL_0064:  ldnull
    IL_0065:  stfld      valuetype Game.TerrainBrush/Cell[] Game.TerrainBrush::m_cells
    IL_006a:  ret
  } // end of method TerrainBrush::Replace

  .method public hidebysig instance void 
          CalculateBounds([out] valuetype [Engine]Engine.Point3& min,
                          [out] valuetype [Engine]Engine.Point3& max) cil managed
  {
    // 代码大小       294 (0x126)
    .maxstack  4
    .locals init (bool V_0,
             valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<int32,valuetype Game.TerrainBrush/Cell> V_1,
             valuetype Game.TerrainBrush/Cell V_2,
             int32 V_3)
    IL_0000:  ldarg.1
    IL_0001:  ldsfld     valuetype [Engine]Engine.Point3 [Engine]Engine.Point3::Zero
    IL_0006:  stobj      [Engine]Engine.Point3
    IL_000b:  ldarg.2
    IL_000c:  ldsfld     valuetype [Engine]Engine.Point3 [Engine]Engine.Point3::Zero
    IL_0011:  stobj      [Engine]Engine.Point3
    IL_0016:  ldc.i4.1
    IL_0017:  stloc.0
    IL_0018:  ldarg.0
    IL_0019:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<int32,valuetype Game.TerrainBrush/Cell> Game.TerrainBrush::m_cellsDictionary
    IL_001e:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<int32,valuetype Game.TerrainBrush/Cell>::get_Values()
    IL_0023:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection<int32,valuetype Game.TerrainBrush/Cell>::GetEnumerator()
    IL_0028:  stloc.1
    .try
    {
      IL_0029:  br         IL_0109

      IL_002e:  ldloca.s   V_1
      IL_0030:  call       instance !1 valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<int32,valuetype Game.TerrainBrush/Cell>::get_Current()
      IL_0035:  stloc.2
      IL_0036:  ldloc.0
      IL_0037:  brfalse.s  IL_007f

      IL_0039:  ldc.i4.0
      IL_003a:  stloc.0
      IL_003b:  ldarg.1
      IL_003c:  ldarg.2
      IL_003d:  ldloc.2
      IL_003e:  ldfld      int8 Game.TerrainBrush/Cell::X
      IL_0043:  dup
      IL_0044:  stloc.3
      IL_0045:  stfld      int32 [Engine]Engine.Point3::X
      IL_004a:  ldloc.3
      IL_004b:  stfld      int32 [Engine]Engine.Point3::X
      IL_0050:  ldarg.1
      IL_0051:  ldarg.2
      IL_0052:  ldloc.2
      IL_0053:  ldfld      int8 Game.TerrainBrush/Cell::Y
      IL_0058:  dup
      IL_0059:  stloc.3
      IL_005a:  stfld      int32 [Engine]Engine.Point3::Y
      IL_005f:  ldloc.3
      IL_0060:  stfld      int32 [Engine]Engine.Point3::Y
      IL_0065:  ldarg.1
      IL_0066:  ldarg.2
      IL_0067:  ldloc.2
      IL_0068:  ldfld      int8 Game.TerrainBrush/Cell::Z
      IL_006d:  dup
      IL_006e:  stloc.3
      IL_006f:  stfld      int32 [Engine]Engine.Point3::Z
      IL_0074:  ldloc.3
      IL_0075:  stfld      int32 [Engine]Engine.Point3::Z
      IL_007a:  br         IL_0109

      IL_007f:  ldarg.1
      IL_0080:  ldarg.1
      IL_0081:  ldfld      int32 [Engine]Engine.Point3::X
      IL_0086:  ldloc.2
      IL_0087:  ldfld      int8 Game.TerrainBrush/Cell::X
      IL_008c:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                               int32)
      IL_0091:  stfld      int32 [Engine]Engine.Point3::X
      IL_0096:  ldarg.1
      IL_0097:  ldarg.1
      IL_0098:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_009d:  ldloc.2
      IL_009e:  ldfld      int8 Game.TerrainBrush/Cell::Y
      IL_00a3:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                               int32)
      IL_00a8:  stfld      int32 [Engine]Engine.Point3::Y
      IL_00ad:  ldarg.1
      IL_00ae:  ldarg.1
      IL_00af:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_00b4:  ldloc.2
      IL_00b5:  ldfld      int8 Game.TerrainBrush/Cell::Z
      IL_00ba:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                               int32)
      IL_00bf:  stfld      int32 [Engine]Engine.Point3::Z
      IL_00c4:  ldarg.2
      IL_00c5:  ldarg.2
      IL_00c6:  ldfld      int32 [Engine]Engine.Point3::X
      IL_00cb:  ldloc.2
      IL_00cc:  ldfld      int8 Game.TerrainBrush/Cell::X
      IL_00d1:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                               int32)
      IL_00d6:  stfld      int32 [Engine]Engine.Point3::X
      IL_00db:  ldarg.2
      IL_00dc:  ldarg.2
      IL_00dd:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_00e2:  ldloc.2
      IL_00e3:  ldfld      int8 Game.TerrainBrush/Cell::Y
      IL_00e8:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                               int32)
      IL_00ed:  stfld      int32 [Engine]Engine.Point3::Y
      IL_00f2:  ldarg.2
      IL_00f3:  ldarg.2
      IL_00f4:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_00f9:  ldloc.2
      IL_00fa:  ldfld      int8 Game.TerrainBrush/Cell::Z
      IL_00ff:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                               int32)
      IL_0104:  stfld      int32 [Engine]Engine.Point3::Z
      IL_0109:  ldloca.s   V_1
      IL_010b:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<int32,valuetype Game.TerrainBrush/Cell>::MoveNext()
      IL_0110:  brtrue     IL_002e

      IL_0115:  leave.s    IL_0125

    }  // end .try
    finally
    {
      IL_0117:  ldloca.s   V_1
      IL_0119:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<int32,valuetype Game.TerrainBrush/Cell>
      IL_011f:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0124:  endfinally
    }  // end handler
    IL_0125:  ret
  } // end of method TerrainBrush::CalculateBounds

  .method public hidebysig instance valuetype [System.Runtime]System.Nullable`1<int32> 
          GetValue(valuetype [Engine]Engine.Point3 p) cil managed
  {
    // 代码大小       25 (0x19)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0007:  ldarg.1
    IL_0008:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_000d:  ldarg.1
    IL_000e:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0013:  call       instance valuetype [System.Runtime]System.Nullable`1<int32> Game.TerrainBrush::GetValue(int32,
                                                                                                                 int32,
                                                                                                                 int32)
    IL_0018:  ret
  } // end of method TerrainBrush::GetValue

  .method public hidebysig instance valuetype [System.Runtime]System.Nullable`1<int32> 
          GetValue(int32 x,
                   int32 y,
                   int32 z) cil managed
  {
    // 代码大小       47 (0x2f)
    .maxstack  3
    .locals init (int32 V_0,
             valuetype Game.TerrainBrush/Cell V_1,
             valuetype [System.Runtime]System.Nullable`1<int32> V_2)
    IL_0000:  ldarg.1
    IL_0001:  ldarg.2
    IL_0002:  ldarg.3
    IL_0003:  call       int32 Game.TerrainBrush::Key(int32,
                                                      int32,
                                                      int32)
    IL_0008:  stloc.0
    IL_0009:  ldarg.0
    IL_000a:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<int32,valuetype Game.TerrainBrush/Cell> Game.TerrainBrush::m_cellsDictionary
    IL_000f:  ldloc.0
    IL_0010:  ldloca.s   V_1
    IL_0012:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<int32,valuetype Game.TerrainBrush/Cell>::TryGetValue(!0,
                                                                                                                                                              !1&)
    IL_0017:  brfalse.s  IL_0025

    IL_0019:  ldloc.1
    IL_001a:  ldfld      int32 Game.TerrainBrush/Cell::Value
    IL_001f:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_0024:  ret

    IL_0025:  ldloca.s   V_2
    IL_0027:  initobj    valuetype [System.Runtime]System.Nullable`1<int32>
    IL_002d:  ldloc.2
    IL_002e:  ret
  } // end of method TerrainBrush::GetValue

  .method public hidebysig instance void 
          AddCell(int32 x,
                  int32 y,
                  int32 z,
                  class Game.TerrainBrush/Brush brush) cil managed
  {
    // 代码大小       105 (0x69)
    .maxstack  5
    .locals init (valuetype [System.Runtime]System.Nullable`1<int32> V_0,
             int32 V_1,
             valuetype Game.TerrainBrush/Cell V_2)
    IL_0000:  ldarg.s    brush
    IL_0002:  ldarg.0
    IL_0003:  ldarg.1
    IL_0004:  ldarg.2
    IL_0005:  ldarg.3
    IL_0006:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_000b:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<int32> Game.TerrainBrush/Brush::Paint(class Game.TerrainBrush,
                                                                                                                    valuetype [Engine]Engine.Point3)
    IL_0010:  stloc.0
    IL_0011:  ldloca.s   V_0
    IL_0013:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0018:  brfalse.s  IL_0068

    IL_001a:  ldarg.1
    IL_001b:  ldarg.2
    IL_001c:  ldarg.3
    IL_001d:  call       int32 Game.TerrainBrush::Key(int32,
                                                      int32,
                                                      int32)
    IL_0022:  stloc.1
    IL_0023:  ldarg.0
    IL_0024:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<int32,valuetype Game.TerrainBrush/Cell> Game.TerrainBrush::m_cellsDictionary
    IL_0029:  ldloc.1
    IL_002a:  ldloca.s   V_2
    IL_002c:  initobj    Game.TerrainBrush/Cell
    IL_0032:  ldloca.s   V_2
    IL_0034:  ldarg.1
    IL_0035:  conv.i1
    IL_0036:  stfld      int8 Game.TerrainBrush/Cell::X
    IL_003b:  ldloca.s   V_2
    IL_003d:  ldarg.2
    IL_003e:  conv.i1
    IL_003f:  stfld      int8 Game.TerrainBrush/Cell::Y
    IL_0044:  ldloca.s   V_2
    IL_0046:  ldarg.3
    IL_0047:  conv.i1
    IL_0048:  stfld      int8 Game.TerrainBrush/Cell::Z
    IL_004d:  ldloca.s   V_2
    IL_004f:  ldloca.s   V_0
    IL_0051:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
    IL_0056:  stfld      int32 Game.TerrainBrush/Cell::Value
    IL_005b:  ldloc.2
    IL_005c:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<int32,valuetype Game.TerrainBrush/Cell>::set_Item(!0,
                                                                                                                                                           !1)
    IL_0061:  ldarg.0
    IL_0062:  ldnull
    IL_0063:  stfld      valuetype Game.TerrainBrush/Cell[] Game.TerrainBrush::m_cells
    IL_0068:  ret
  } // end of method TerrainBrush::AddCell

  .method public hidebysig instance void 
          AddBox(int32 x,
                 int32 y,
                 int32 z,
                 int32 sizeX,
                 int32 sizeY,
                 int32 sizeZ,
                 class Game.TerrainBrush/Brush brush) cil managed
  {
    // 代码大小       57 (0x39)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2)
    IL_0000:  ldarg.1
    IL_0001:  stloc.0
    IL_0002:  br.s       IL_0031

    IL_0004:  ldarg.2
    IL_0005:  stloc.1
    IL_0006:  br.s       IL_0026

    IL_0008:  ldarg.3
    IL_0009:  stloc.2
    IL_000a:  br.s       IL_001b

    IL_000c:  ldarg.0
    IL_000d:  ldloc.0
    IL_000e:  ldloc.1
    IL_000f:  ldloc.2
    IL_0010:  ldarg.s    brush
    IL_0012:  call       instance void Game.TerrainBrush::AddCell(int32,
                                                                  int32,
                                                                  int32,
                                                                  class Game.TerrainBrush/Brush)
    IL_0017:  ldloc.2
    IL_0018:  ldc.i4.1
    IL_0019:  add
    IL_001a:  stloc.2
    IL_001b:  ldloc.2
    IL_001c:  ldarg.3
    IL_001d:  ldarg.s    sizeZ
    IL_001f:  add
    IL_0020:  blt.s      IL_000c

    IL_0022:  ldloc.1
    IL_0023:  ldc.i4.1
    IL_0024:  add
    IL_0025:  stloc.1
    IL_0026:  ldloc.1
    IL_0027:  ldarg.2
    IL_0028:  ldarg.s    sizeY
    IL_002a:  add
    IL_002b:  blt.s      IL_0008

    IL_002d:  ldloc.0
    IL_002e:  ldc.i4.1
    IL_002f:  add
    IL_0030:  stloc.0
    IL_0031:  ldloc.0
    IL_0032:  ldarg.1
    IL_0033:  ldarg.s    sizeX
    IL_0035:  add
    IL_0036:  blt.s      IL_0004

    IL_0038:  ret
  } // end of method TerrainBrush::AddBox

  .method public hidebysig instance void 
          AddRay(int32 x1,
                 int32 y1,
                 int32 z1,
                 int32 x2,
                 int32 y2,
                 int32 z2,
                 int32 sizeX,
                 int32 sizeY,
                 int32 sizeZ,
                 class Game.TerrainBrush/Brush brush) cil managed
  {
    // 代码大小       152 (0x98)
    .maxstack  8
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             valuetype [Engine]Engine.Vector3 V_1,
             valuetype [Engine]Engine.Vector3 V_2,
             int32 V_3,
             valuetype [Engine]Engine.Vector3 V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7,
             int32 V_8)
    IL_0000:  ldloca.s   V_0
    IL_0002:  ldarg.1
    IL_0003:  conv.r4
    IL_0004:  ldarg.2
    IL_0005:  conv.r4
    IL_0006:  ldarg.3
    IL_0007:  conv.r4
    IL_0008:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_000d:  ldloca.s   V_1
    IL_000f:  ldarg.s    x2
    IL_0011:  conv.r4
    IL_0012:  ldarg.s    y2
    IL_0014:  conv.r4
    IL_0015:  ldarg.s    z2
    IL_0017:  conv.r4
    IL_0018:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_001d:  ldc.r4     0.33000001
    IL_0022:  ldloc.1
    IL_0023:  ldloc.0
    IL_0024:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0029:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_002e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0033:  stloc.2
    IL_0034:  ldc.r4     3.
    IL_0039:  ldloc.0
    IL_003a:  ldloc.1
    IL_003b:  call       float32 [Engine]Engine.Vector3::Distance(valuetype [Engine]Engine.Vector3,
                                                                  valuetype [Engine]Engine.Vector3)
    IL_0040:  mul
    IL_0041:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_0046:  conv.i4
    IL_0047:  stloc.3
    IL_0048:  ldloc.0
    IL_0049:  stloc.s    V_4
    IL_004b:  ldc.i4.0
    IL_004c:  stloc.s    V_5
    IL_004e:  br.s       IL_0092

    IL_0050:  ldloc.s    V_4
    IL_0052:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0057:  conv.i4
    IL_0058:  stloc.s    V_6
    IL_005a:  ldloc.s    V_4
    IL_005c:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0061:  conv.i4
    IL_0062:  stloc.s    V_7
    IL_0064:  ldloc.s    V_4
    IL_0066:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_006b:  conv.i4
    IL_006c:  stloc.s    V_8
    IL_006e:  ldarg.0
    IL_006f:  ldloc.s    V_6
    IL_0071:  ldloc.s    V_7
    IL_0073:  ldloc.s    V_8
    IL_0075:  ldarg.s    sizeX
    IL_0077:  ldarg.s    sizeY
    IL_0079:  ldarg.s    sizeZ
    IL_007b:  ldarg.s    brush
    IL_007d:  call       instance void Game.TerrainBrush::AddBox(int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 class Game.TerrainBrush/Brush)
    IL_0082:  ldloc.s    V_4
    IL_0084:  ldloc.2
    IL_0085:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_008a:  stloc.s    V_4
    IL_008c:  ldloc.s    V_5
    IL_008e:  ldc.i4.1
    IL_008f:  add
    IL_0090:  stloc.s    V_5
    IL_0092:  ldloc.s    V_5
    IL_0094:  ldloc.3
    IL_0095:  blt.s      IL_0050

    IL_0097:  ret
  } // end of method TerrainBrush::AddRay

  .method public hidebysig instance void 
          PaintFastSelective(class Game.TerrainData terrainData,
                             int32 x,
                             int32 y,
                             int32 z,
                             int32 minX,
                             int32 maxX,
                             int32 minY,
                             int32 maxY,
                             int32 minZ,
                             int32 maxZ,
                             int32 onlyInValue) cil managed
  {
    // 代码大小       130 (0x82)
    .maxstack  5
    .locals init (valuetype Game.TerrainBrush/Cell[] V_0,
             int32 V_1,
             valuetype Game.TerrainBrush/Cell V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6)
    IL_0000:  ldarg.0
    IL_0001:  call       instance valuetype Game.TerrainBrush/Cell[] Game.TerrainBrush::get_Cells()
    IL_0006:  stloc.0
    IL_0007:  ldc.i4.0
    IL_0008:  stloc.1
    IL_0009:  br.s       IL_007b

    IL_000b:  ldloc.0
    IL_000c:  ldloc.1
    IL_000d:  ldelem     Game.TerrainBrush/Cell
    IL_0012:  stloc.2
    IL_0013:  ldloc.2
    IL_0014:  ldfld      int8 Game.TerrainBrush/Cell::X
    IL_0019:  ldarg.2
    IL_001a:  add
    IL_001b:  stloc.3
    IL_001c:  ldloc.2
    IL_001d:  ldfld      int8 Game.TerrainBrush/Cell::Y
    IL_0022:  ldarg.3
    IL_0023:  add
    IL_0024:  stloc.s    V_4
    IL_0026:  ldloc.2
    IL_0027:  ldfld      int8 Game.TerrainBrush/Cell::Z
    IL_002c:  ldarg.s    z
    IL_002e:  add
    IL_002f:  stloc.s    V_5
    IL_0031:  ldloc.3
    IL_0032:  ldarg.s    minX
    IL_0034:  blt.s      IL_0077

    IL_0036:  ldloc.3
    IL_0037:  ldarg.s    maxX
    IL_0039:  bge.s      IL_0077

    IL_003b:  ldloc.s    V_4
    IL_003d:  ldarg.s    minY
    IL_003f:  blt.s      IL_0077

    IL_0041:  ldloc.s    V_4
    IL_0043:  ldarg.s    maxY
    IL_0045:  bge.s      IL_0077

    IL_0047:  ldloc.s    V_5
    IL_0049:  ldarg.s    minZ
    IL_004b:  blt.s      IL_0077

    IL_004d:  ldloc.s    V_5
    IL_004f:  ldarg.s    maxZ
    IL_0051:  bge.s      IL_0077

    IL_0053:  ldarg.1
    IL_0054:  ldloc.3
    IL_0055:  ldloc.s    V_4
    IL_0057:  ldloc.s    V_5
    IL_0059:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32,
                                                                           int32,
                                                                           int32)
    IL_005e:  stloc.s    V_6
    IL_0060:  ldarg.s    onlyInValue
    IL_0062:  ldloc.s    V_6
    IL_0064:  bne.un.s   IL_0077

    IL_0066:  ldarg.1
    IL_0067:  ldloc.3
    IL_0068:  ldloc.s    V_4
    IL_006a:  ldloc.s    V_5
    IL_006c:  ldloc.2
    IL_006d:  ldfld      int32 Game.TerrainBrush/Cell::Value
    IL_0072:  callvirt   instance void Game.TerrainData::SetCellValueFast(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_0077:  ldloc.1
    IL_0078:  ldc.i4.1
    IL_0079:  add
    IL_007a:  stloc.1
    IL_007b:  ldloc.1
    IL_007c:  ldloc.0
    IL_007d:  ldlen
    IL_007e:  conv.i4
    IL_007f:  blt.s      IL_000b

    IL_0081:  ret
  } // end of method TerrainBrush::PaintFastSelective

  .method public hidebysig instance void 
          PaintFastAvoidWater(class Game.TerrainData terrainData,
                              int32 x,
                              int32 y,
                              int32 z,
                              int32 minX,
                              int32 maxX,
                              int32 minY,
                              int32 maxY,
                              int32 minZ,
                              int32 maxZ) cil managed
  {
    // 代码大小       229 (0xe5)
    .maxstack  5
    .locals init (valuetype Game.TerrainBrush/Cell[] V_0,
             int32 V_1,
             valuetype Game.TerrainBrush/Cell V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5)
    IL_0000:  ldarg.0
    IL_0001:  call       instance valuetype Game.TerrainBrush/Cell[] Game.TerrainBrush::get_Cells()
    IL_0006:  stloc.0
    IL_0007:  ldc.i4.0
    IL_0008:  stloc.1
    IL_0009:  br         IL_00db

    IL_000e:  ldloc.0
    IL_000f:  ldloc.1
    IL_0010:  ldelem     Game.TerrainBrush/Cell
    IL_0015:  stloc.2
    IL_0016:  ldloc.2
    IL_0017:  ldfld      int8 Game.TerrainBrush/Cell::X
    IL_001c:  ldarg.2
    IL_001d:  add
    IL_001e:  stloc.3
    IL_001f:  ldloc.2
    IL_0020:  ldfld      int8 Game.TerrainBrush/Cell::Y
    IL_0025:  ldarg.3
    IL_0026:  add
    IL_0027:  stloc.s    V_4
    IL_0029:  ldloc.2
    IL_002a:  ldfld      int8 Game.TerrainBrush/Cell::Z
    IL_002f:  ldarg.s    z
    IL_0031:  add
    IL_0032:  stloc.s    V_5
    IL_0034:  ldloc.3
    IL_0035:  ldarg.s    minX
    IL_0037:  blt        IL_00d7

    IL_003c:  ldloc.3
    IL_003d:  ldarg.s    maxX
    IL_003f:  bge        IL_00d7

    IL_0044:  ldloc.s    V_4
    IL_0046:  ldarg.s    minY
    IL_0048:  blt        IL_00d7

    IL_004d:  ldloc.s    V_4
    IL_004f:  ldarg.s    maxY
    IL_0051:  bge        IL_00d7

    IL_0056:  ldloc.s    V_5
    IL_0058:  ldarg.s    minZ
    IL_005a:  blt.s      IL_00d7

    IL_005c:  ldloc.s    V_5
    IL_005e:  ldarg.s    maxZ
    IL_0060:  bge.s      IL_00d7

    IL_0062:  ldarg.1
    IL_0063:  ldloc.3
    IL_0064:  ldloc.s    V_4
    IL_0066:  ldloc.s    V_5
    IL_0068:  callvirt   instance int32 Game.TerrainData::GetCellContentsFast(int32,
                                                                              int32,
                                                                              int32)
    IL_006d:  ldc.i4.s   18
    IL_006f:  beq.s      IL_00d7

    IL_0071:  ldarg.1
    IL_0072:  ldloc.3
    IL_0073:  ldc.i4.1
    IL_0074:  sub
    IL_0075:  ldloc.s    V_4
    IL_0077:  ldloc.s    V_5
    IL_0079:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                          int32,
                                                                          int32)
    IL_007e:  ldc.i4.s   18
    IL_0080:  beq.s      IL_00d7

    IL_0082:  ldarg.1
    IL_0083:  ldloc.3
    IL_0084:  ldc.i4.1
    IL_0085:  add
    IL_0086:  ldloc.s    V_4
    IL_0088:  ldloc.s    V_5
    IL_008a:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                          int32,
                                                                          int32)
    IL_008f:  ldc.i4.s   18
    IL_0091:  beq.s      IL_00d7

    IL_0093:  ldarg.1
    IL_0094:  ldloc.3
    IL_0095:  ldloc.s    V_4
    IL_0097:  ldloc.s    V_5
    IL_0099:  ldc.i4.1
    IL_009a:  sub
    IL_009b:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                          int32,
                                                                          int32)
    IL_00a0:  ldc.i4.s   18
    IL_00a2:  beq.s      IL_00d7

    IL_00a4:  ldarg.1
    IL_00a5:  ldloc.3
    IL_00a6:  ldloc.s    V_4
    IL_00a8:  ldloc.s    V_5
    IL_00aa:  ldc.i4.1
    IL_00ab:  add
    IL_00ac:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                          int32,
                                                                          int32)
    IL_00b1:  ldc.i4.s   18
    IL_00b3:  beq.s      IL_00d7

    IL_00b5:  ldarg.1
    IL_00b6:  ldloc.3
    IL_00b7:  ldloc.s    V_4
    IL_00b9:  ldc.i4.1
    IL_00ba:  add
    IL_00bb:  ldloc.s    V_5
    IL_00bd:  callvirt   instance int32 Game.TerrainData::GetCellContentsFast(int32,
                                                                              int32,
                                                                              int32)
    IL_00c2:  ldc.i4.s   18
    IL_00c4:  beq.s      IL_00d7

    IL_00c6:  ldarg.1
    IL_00c7:  ldloc.3
    IL_00c8:  ldloc.s    V_4
    IL_00ca:  ldloc.s    V_5
    IL_00cc:  ldloc.2
    IL_00cd:  ldfld      int32 Game.TerrainBrush/Cell::Value
    IL_00d2:  callvirt   instance void Game.TerrainData::SetCellValueFast(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_00d7:  ldloc.1
    IL_00d8:  ldc.i4.1
    IL_00d9:  add
    IL_00da:  stloc.1
    IL_00db:  ldloc.1
    IL_00dc:  ldloc.0
    IL_00dd:  ldlen
    IL_00de:  conv.i4
    IL_00df:  blt        IL_000e

    IL_00e4:  ret
  } // end of method TerrainBrush::PaintFastAvoidWater

  .method public hidebysig instance void 
          PaintFast(class Game.TerrainData terrainData,
                    int32 x,
                    int32 y,
                    int32 z,
                    int32 minX,
                    int32 maxX,
                    int32 minY,
                    int32 maxY,
                    int32 minZ,
                    int32 maxZ) cil managed
  {
    // 代码大小       111 (0x6f)
    .maxstack  5
    .locals init (valuetype Game.TerrainBrush/Cell[] V_0,
             int32 V_1,
             valuetype Game.TerrainBrush/Cell V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5)
    IL_0000:  ldarg.0
    IL_0001:  call       instance valuetype Game.TerrainBrush/Cell[] Game.TerrainBrush::get_Cells()
    IL_0006:  stloc.0
    IL_0007:  ldc.i4.0
    IL_0008:  stloc.1
    IL_0009:  br.s       IL_0068

    IL_000b:  ldloc.0
    IL_000c:  ldloc.1
    IL_000d:  ldelem     Game.TerrainBrush/Cell
    IL_0012:  stloc.2
    IL_0013:  ldloc.2
    IL_0014:  ldfld      int8 Game.TerrainBrush/Cell::X
    IL_0019:  ldarg.2
    IL_001a:  add
    IL_001b:  stloc.3
    IL_001c:  ldloc.2
    IL_001d:  ldfld      int8 Game.TerrainBrush/Cell::Y
    IL_0022:  ldarg.3
    IL_0023:  add
    IL_0024:  stloc.s    V_4
    IL_0026:  ldloc.2
    IL_0027:  ldfld      int8 Game.TerrainBrush/Cell::Z
    IL_002c:  ldarg.s    z
    IL_002e:  add
    IL_002f:  stloc.s    V_5
    IL_0031:  ldloc.3
    IL_0032:  ldarg.s    minX
    IL_0034:  blt.s      IL_0064

    IL_0036:  ldloc.3
    IL_0037:  ldarg.s    maxX
    IL_0039:  bge.s      IL_0064

    IL_003b:  ldloc.s    V_4
    IL_003d:  ldarg.s    minY
    IL_003f:  blt.s      IL_0064

    IL_0041:  ldloc.s    V_4
    IL_0043:  ldarg.s    maxY
    IL_0045:  bge.s      IL_0064

    IL_0047:  ldloc.s    V_5
    IL_0049:  ldarg.s    minZ
    IL_004b:  blt.s      IL_0064

    IL_004d:  ldloc.s    V_5
    IL_004f:  ldarg.s    maxZ
    IL_0051:  bge.s      IL_0064

    IL_0053:  ldarg.1
    IL_0054:  ldloc.3
    IL_0055:  ldloc.s    V_4
    IL_0057:  ldloc.s    V_5
    IL_0059:  ldloc.2
    IL_005a:  ldfld      int32 Game.TerrainBrush/Cell::Value
    IL_005f:  callvirt   instance void Game.TerrainData::SetCellValueFast(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_0064:  ldloc.1
    IL_0065:  ldc.i4.1
    IL_0066:  add
    IL_0067:  stloc.1
    IL_0068:  ldloc.1
    IL_0069:  ldloc.0
    IL_006a:  ldlen
    IL_006b:  conv.i4
    IL_006c:  blt.s      IL_000b

    IL_006e:  ret
  } // end of method TerrainBrush::PaintFast

  .method public hidebysig instance void 
          Paint(class Game.SubsystemTerrain terrain,
                int32 x,
                int32 y,
                int32 z) cil managed
  {
    // 代码大小       78 (0x4e)
    .maxstack  6
    .locals init (valuetype Game.TerrainBrush/Cell[] V_0,
             int32 V_1,
             valuetype Game.TerrainBrush/Cell V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5)
    IL_0000:  ldarg.0
    IL_0001:  call       instance valuetype Game.TerrainBrush/Cell[] Game.TerrainBrush::get_Cells()
    IL_0006:  stloc.0
    IL_0007:  ldc.i4.0
    IL_0008:  stloc.1
    IL_0009:  br.s       IL_0047

    IL_000b:  ldloc.0
    IL_000c:  ldloc.1
    IL_000d:  ldelem     Game.TerrainBrush/Cell
    IL_0012:  stloc.2
    IL_0013:  ldloc.2
    IL_0014:  ldfld      int8 Game.TerrainBrush/Cell::X
    IL_0019:  ldarg.2
    IL_001a:  add
    IL_001b:  stloc.3
    IL_001c:  ldloc.2
    IL_001d:  ldfld      int8 Game.TerrainBrush/Cell::Y
    IL_0022:  ldarg.3
    IL_0023:  add
    IL_0024:  stloc.s    V_4
    IL_0026:  ldloc.2
    IL_0027:  ldfld      int8 Game.TerrainBrush/Cell::Z
    IL_002c:  ldarg.s    z
    IL_002e:  add
    IL_002f:  stloc.s    V_5
    IL_0031:  ldarg.1
    IL_0032:  ldloc.3
    IL_0033:  ldloc.s    V_4
    IL_0035:  ldloc.s    V_5
    IL_0037:  ldloc.2
    IL_0038:  ldfld      int32 Game.TerrainBrush/Cell::Value
    IL_003d:  ldc.i4.1
    IL_003e:  callvirt   instance void Game.SubsystemTerrain::ChangeCell(int32,
                                                                         int32,
                                                                         int32,
                                                                         int32,
                                                                         bool)
    IL_0043:  ldloc.1
    IL_0044:  ldc.i4.1
    IL_0045:  add
    IL_0046:  stloc.1
    IL_0047:  ldloc.1
    IL_0048:  ldloc.0
    IL_0049:  ldlen
    IL_004a:  conv.i4
    IL_004b:  blt.s      IL_000b

    IL_004d:  ret
  } // end of method TerrainBrush::Paint

  .property instance valuetype Game.TerrainBrush/Cell[]
          Cells()
  {
    .get instance valuetype Game.TerrainBrush/Cell[] Game.TerrainBrush::get_Cells()
  } // end of property TerrainBrush::Cells
} // end of class Game.TerrainBrush