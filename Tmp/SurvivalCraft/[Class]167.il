.class public auto ansi beforefieldinit Game.SaplingBlock
       extends Game.CrossBlock
{
  .class auto ansi sealed nested private beforefieldinit '<GetCreativeValues>d__3'
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
      IL_0008:  stfld      int32 Game.SaplingBlock/'<GetCreativeValues>d__3'::'<>1__state'
      IL_000d:  ldarg.0
      IL_000e:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0013:  stfld      int32 Game.SaplingBlock/'<GetCreativeValues>d__3'::'<>l__initialThreadId'
      IL_0018:  ret
    } // end of method '<GetCreativeValues>d__3'::.ctor

    .method private hidebysig newslot virtual final 
            instance void  System.IDisposable.Dispose() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.IDisposable::Dispose
      // 代码大小       1 (0x1)
      .maxstack  8
      IL_0000:  ret
    } // end of method '<GetCreativeValues>d__3'::System.IDisposable.Dispose

    .method private hidebysig newslot virtual final 
            instance bool  MoveNext() cil managed
    {
      .override [System.Runtime]System.Collections.IEnumerator::MoveNext
      // 代码大小       168 (0xa8)
      .maxstack  4
      .locals init (int32 V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.SaplingBlock/'<GetCreativeValues>d__3'::'<>1__state'
      IL_0006:  stloc.0
      IL_0007:  ldloc.0
      IL_0008:  switch     ( 
                            IL_0023,
                            IL_0042,
                            IL_0061,
                            IL_0080,
                            IL_009f)
      IL_0021:  ldc.i4.0
      IL_0022:  ret

      IL_0023:  ldarg.0
      IL_0024:  ldc.i4.m1
      IL_0025:  stfld      int32 Game.SaplingBlock/'<GetCreativeValues>d__3'::'<>1__state'
      IL_002a:  ldarg.0
      IL_002b:  ldc.i4.s   119
      IL_002d:  ldc.i4.0
      IL_002e:  ldc.i4.0
      IL_002f:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                  int32,
                                                                  int32)
      IL_0034:  stfld      int32 Game.SaplingBlock/'<GetCreativeValues>d__3'::'<>2__current'
      IL_0039:  ldarg.0
      IL_003a:  ldc.i4.1
      IL_003b:  stfld      int32 Game.SaplingBlock/'<GetCreativeValues>d__3'::'<>1__state'
      IL_0040:  ldc.i4.1
      IL_0041:  ret

      IL_0042:  ldarg.0
      IL_0043:  ldc.i4.m1
      IL_0044:  stfld      int32 Game.SaplingBlock/'<GetCreativeValues>d__3'::'<>1__state'
      IL_0049:  ldarg.0
      IL_004a:  ldc.i4.s   119
      IL_004c:  ldc.i4.0
      IL_004d:  ldc.i4.1
      IL_004e:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                  int32,
                                                                  int32)
      IL_0053:  stfld      int32 Game.SaplingBlock/'<GetCreativeValues>d__3'::'<>2__current'
      IL_0058:  ldarg.0
      IL_0059:  ldc.i4.2
      IL_005a:  stfld      int32 Game.SaplingBlock/'<GetCreativeValues>d__3'::'<>1__state'
      IL_005f:  ldc.i4.1
      IL_0060:  ret

      IL_0061:  ldarg.0
      IL_0062:  ldc.i4.m1
      IL_0063:  stfld      int32 Game.SaplingBlock/'<GetCreativeValues>d__3'::'<>1__state'
      IL_0068:  ldarg.0
      IL_0069:  ldc.i4.s   119
      IL_006b:  ldc.i4.0
      IL_006c:  ldc.i4.2
      IL_006d:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                  int32,
                                                                  int32)
      IL_0072:  stfld      int32 Game.SaplingBlock/'<GetCreativeValues>d__3'::'<>2__current'
      IL_0077:  ldarg.0
      IL_0078:  ldc.i4.3
      IL_0079:  stfld      int32 Game.SaplingBlock/'<GetCreativeValues>d__3'::'<>1__state'
      IL_007e:  ldc.i4.1
      IL_007f:  ret

      IL_0080:  ldarg.0
      IL_0081:  ldc.i4.m1
      IL_0082:  stfld      int32 Game.SaplingBlock/'<GetCreativeValues>d__3'::'<>1__state'
      IL_0087:  ldarg.0
      IL_0088:  ldc.i4.s   119
      IL_008a:  ldc.i4.0
      IL_008b:  ldc.i4.3
      IL_008c:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                  int32,
                                                                  int32)
      IL_0091:  stfld      int32 Game.SaplingBlock/'<GetCreativeValues>d__3'::'<>2__current'
      IL_0096:  ldarg.0
      IL_0097:  ldc.i4.4
      IL_0098:  stfld      int32 Game.SaplingBlock/'<GetCreativeValues>d__3'::'<>1__state'
      IL_009d:  ldc.i4.1
      IL_009e:  ret

      IL_009f:  ldarg.0
      IL_00a0:  ldc.i4.m1
      IL_00a1:  stfld      int32 Game.SaplingBlock/'<GetCreativeValues>d__3'::'<>1__state'
      IL_00a6:  ldc.i4.0
      IL_00a7:  ret
    } // end of method '<GetCreativeValues>d__3'::MoveNext

    .method private hidebysig newslot specialname virtual final 
            instance int32  'System.Collections.Generic.IEnumerator<System.Int32>.get_Current'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32>::get_Current()
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.SaplingBlock/'<GetCreativeValues>d__3'::'<>2__current'
      IL_0006:  ret
    } // end of method '<GetCreativeValues>d__3'::'System.Collections.Generic.IEnumerator<System.Int32>.get_Current'

    .method private hidebysig newslot virtual final 
            instance void  System.Collections.IEnumerator.Reset() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerator::Reset
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  newobj     instance void [System.Runtime]System.NotSupportedException::.ctor()
      IL_0005:  throw
    } // end of method '<GetCreativeValues>d__3'::System.Collections.IEnumerator.Reset

    .method private hidebysig newslot specialname virtual final 
            instance object  System.Collections.IEnumerator.get_Current() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerator::get_Current
      // 代码大小       12 (0xc)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.SaplingBlock/'<GetCreativeValues>d__3'::'<>2__current'
      IL_0006:  box        [System.Runtime]System.Int32
      IL_000b:  ret
    } // end of method '<GetCreativeValues>d__3'::System.Collections.IEnumerator.get_Current

    .method private hidebysig newslot virtual final 
            instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32> 
            'System.Collections.Generic.IEnumerable<System.Int32>.GetEnumerator'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32>::GetEnumerator()
      // 代码大小       43 (0x2b)
      .maxstack  2
      .locals init (class Game.SaplingBlock/'<GetCreativeValues>d__3' V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.SaplingBlock/'<GetCreativeValues>d__3'::'<>1__state'
      IL_0006:  ldc.i4.s   -2
      IL_0008:  bne.un.s   IL_0022

      IL_000a:  ldarg.0
      IL_000b:  ldfld      int32 Game.SaplingBlock/'<GetCreativeValues>d__3'::'<>l__initialThreadId'
      IL_0010:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0015:  bne.un.s   IL_0022

      IL_0017:  ldarg.0
      IL_0018:  ldc.i4.0
      IL_0019:  stfld      int32 Game.SaplingBlock/'<GetCreativeValues>d__3'::'<>1__state'
      IL_001e:  ldarg.0
      IL_001f:  stloc.0
      IL_0020:  br.s       IL_0029

      IL_0022:  ldc.i4.0
      IL_0023:  newobj     instance void Game.SaplingBlock/'<GetCreativeValues>d__3'::.ctor(int32)
      IL_0028:  stloc.0
      IL_0029:  ldloc.0
      IL_002a:  ret
    } // end of method '<GetCreativeValues>d__3'::'System.Collections.Generic.IEnumerable<System.Int32>.GetEnumerator'

    .method private hidebysig newslot virtual final 
            instance class [System.Runtime]System.Collections.IEnumerator 
            System.Collections.IEnumerable.GetEnumerator() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerable::GetEnumerator
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32> Game.SaplingBlock/'<GetCreativeValues>d__3'::'System.Collections.Generic.IEnumerable<System.Int32>.GetEnumerator'()
      IL_0006:  ret
    } // end of method '<GetCreativeValues>d__3'::System.Collections.IEnumerable.GetEnumerator

    .property instance int32 'System.Collections.Generic.IEnumerator<System.Int32>.Current'()
    {
      .get instance int32 Game.SaplingBlock/'<GetCreativeValues>d__3'::'System.Collections.Generic.IEnumerator<System.Int32>.get_Current'()
    } // end of property '<GetCreativeValues>d__3'::'System.Collections.Generic.IEnumerator<System.Int32>.Current'
    .property instance object System.Collections.IEnumerator.Current()
    {
      .get instance object Game.SaplingBlock/'<GetCreativeValues>d__3'::System.Collections.IEnumerator.get_Current()
    } // end of property '<GetCreativeValues>d__3'::System.Collections.IEnumerator.Current
  } // end of class '<GetCreativeValues>d__3'

  .field public static literal int32 Index = int32(0x00000077)
  .method public hidebysig virtual instance string 
          GetDisplayName(class Game.SubsystemTerrain subsystemTerrain,
                         int32 'value') cil managed
  {
    // 代码大小       52 (0x34)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  brtrue.s   IL_0010

    IL_000a:  ldstr      "Oak Sapling"
    IL_000f:  ret

    IL_0010:  ldloc.0
    IL_0011:  ldc.i4.1
    IL_0012:  bne.un.s   IL_001a

    IL_0014:  ldstr      "Birch Sapling"
    IL_0019:  ret

    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  bne.un.s   IL_0024

    IL_001e:  ldstr      "Spruce Sapling"
    IL_0023:  ret

    IL_0024:  ldloc.0
    IL_0025:  ldc.i4.3
    IL_0026:  bne.un.s   IL_002e

    IL_0028:  ldstr      "Tall Spruce Sapling"
    IL_002d:  ret

    IL_002e:  ldstr      "Sapling"
    IL_0033:  ret
  } // end of method SaplingBlock::GetDisplayName

  .method public hidebysig virtual instance int32 
          GetFaceTextureSlot(int32 face,
                             int32 'value') cil managed
  {
    // 代码大小       37 (0x25)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  brtrue.s   IL_000d

    IL_000a:  ldc.i4.s   56
    IL_000c:  ret

    IL_000d:  ldloc.0
    IL_000e:  ldc.i4.1
    IL_000f:  bne.un.s   IL_0014

    IL_0011:  ldc.i4.s   72
    IL_0013:  ret

    IL_0014:  ldloc.0
    IL_0015:  ldc.i4.2
    IL_0016:  bne.un.s   IL_001b

    IL_0018:  ldc.i4.s   73
    IL_001a:  ret

    IL_001b:  ldloc.0
    IL_001c:  ldc.i4.3
    IL_001d:  bne.un.s   IL_0022

    IL_001f:  ldc.i4.s   73
    IL_0021:  ret

    IL_0022:  ldc.i4.s   56
    IL_0024:  ret
  } // end of method SaplingBlock::GetFaceTextureSlot

  .method public hidebysig virtual instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32> 
          GetCreativeValues() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.IteratorStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 29 47 61 6D 65 2E 53 61 70 6C 69 6E 67 42   // ..)Game.SaplingB
                                                                                                                                                      6C 6F 63 6B 2B 3C 47 65 74 43 72 65 61 74 69 76   // lock+<GetCreativ
                                                                                                                                                      65 56 61 6C 75 65 73 3E 64 5F 5F 33 00 00 )       // eValues>d__3..
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldc.i4.s   -2
    IL_0002:  newobj     instance void Game.SaplingBlock/'<GetCreativeValues>d__3'::.ctor(int32)
    IL_0007:  ret
  } // end of method SaplingBlock::GetCreativeValues

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.CrossBlock::.ctor()
    IL_0006:  ret
  } // end of method SaplingBlock::.ctor

} // end of class Game.SaplingBlock