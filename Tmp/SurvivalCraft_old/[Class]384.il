.class public auto ansi beforefieldinit Game.BulletBlock
       extends Game.FlatBlock
{
  .class auto ansi sealed nested public BulletType
         extends [System.Runtime]System.Enum
  {
    .field public specialname rtspecialname int32 value__
    .field public static literal valuetype Game.BulletBlock/BulletType MusketBall = int32(0x00000000)
    .field public static literal valuetype Game.BulletBlock/BulletType Buckshot = int32(0x00000001)
    .field public static literal valuetype Game.BulletBlock/BulletType BuckshotBall = int32(0x00000002)
  } // end of class BulletType

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
    .field private class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32> '<>7__wrap1'
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
      IL_0008:  stfld      int32 Game.BulletBlock/'<GetCreativeValues>d__11'::'<>1__state'
      IL_000d:  ldarg.0
      IL_000e:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0013:  stfld      int32 Game.BulletBlock/'<GetCreativeValues>d__11'::'<>l__initialThreadId'
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
      IL_0001:  ldfld      int32 Game.BulletBlock/'<GetCreativeValues>d__11'::'<>1__state'
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
        IL_0014:  call       instance void Game.BulletBlock/'<GetCreativeValues>d__11'::'<>m__Finally1'()
        IL_0019:  endfinally
      }  // end handler
      IL_001a:  ret
    } // end of method '<GetCreativeValues>d__11'::System.IDisposable.Dispose

    .method private hidebysig newslot virtual final 
            instance bool  MoveNext() cil managed
    {
      .override [System.Runtime]System.Collections.IEnumerator::MoveNext
      // 代码大小       158 (0x9e)
      .maxstack  5
      .locals init (bool V_0,
               int32 V_1,
               int32 V_2)
      .try
      {
        IL_0000:  ldarg.0
        IL_0001:  ldfld      int32 Game.BulletBlock/'<GetCreativeValues>d__11'::'<>1__state'
        IL_0006:  stloc.1
        IL_0007:  ldloc.1
        IL_0008:  brfalse.s  IL_0015

        IL_000a:  ldloc.1
        IL_000b:  ldc.i4.1
        IL_000c:  beq.s      IL_006f

        IL_000e:  ldc.i4.0
        IL_000f:  stloc.0
        IL_0010:  leave      IL_009c

        IL_0015:  ldarg.0
        IL_0016:  ldc.i4.m1
        IL_0017:  stfld      int32 Game.BulletBlock/'<GetCreativeValues>d__11'::'<>1__state'
        IL_001c:  ldarg.0
        IL_001d:  ldtoken    Game.BulletBlock/BulletType
        IL_0022:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
        IL_0027:  call       class [System.Runtime]System.Collections.Generic.IList`1<int32> Game.EnumUtils::GetEnumValues(class [System.Runtime]System.Type)
        IL_002c:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32>::GetEnumerator()
        IL_0031:  stfld      class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32> Game.BulletBlock/'<GetCreativeValues>d__11'::'<>7__wrap1'
        IL_0036:  ldarg.0
        IL_0037:  ldc.i4.s   -3
        IL_0039:  stfld      int32 Game.BulletBlock/'<GetCreativeValues>d__11'::'<>1__state'
        IL_003e:  br.s       IL_0077

        IL_0040:  ldarg.0
        IL_0041:  ldfld      class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32> Game.BulletBlock/'<GetCreativeValues>d__11'::'<>7__wrap1'
        IL_0046:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32>::get_Current()
        IL_004b:  stloc.2
        IL_004c:  ldarg.0
        IL_004d:  ldc.i4     0xd6
        IL_0052:  ldc.i4.0
        IL_0053:  ldc.i4.0
        IL_0054:  ldloc.2
        IL_0055:  call       int32 Game.BulletBlock::SetBulletType(int32,
                                                                   valuetype Game.BulletBlock/BulletType)
        IL_005a:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
        IL_005f:  stfld      int32 Game.BulletBlock/'<GetCreativeValues>d__11'::'<>2__current'
        IL_0064:  ldarg.0
        IL_0065:  ldc.i4.1
        IL_0066:  stfld      int32 Game.BulletBlock/'<GetCreativeValues>d__11'::'<>1__state'
        IL_006b:  ldc.i4.1
        IL_006c:  stloc.0
        IL_006d:  leave.s    IL_009c

        IL_006f:  ldarg.0
        IL_0070:  ldc.i4.s   -3
        IL_0072:  stfld      int32 Game.BulletBlock/'<GetCreativeValues>d__11'::'<>1__state'
        IL_0077:  ldarg.0
        IL_0078:  ldfld      class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32> Game.BulletBlock/'<GetCreativeValues>d__11'::'<>7__wrap1'
        IL_007d:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
        IL_0082:  brtrue.s   IL_0040

        IL_0084:  ldarg.0
        IL_0085:  call       instance void Game.BulletBlock/'<GetCreativeValues>d__11'::'<>m__Finally1'()
        IL_008a:  ldarg.0
        IL_008b:  ldnull
        IL_008c:  stfld      class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32> Game.BulletBlock/'<GetCreativeValues>d__11'::'<>7__wrap1'
        IL_0091:  ldc.i4.0
        IL_0092:  stloc.0
        IL_0093:  leave.s    IL_009c

      }  // end .try
      fault
      {
        IL_0095:  ldarg.0
        IL_0096:  call       instance void Game.BulletBlock/'<GetCreativeValues>d__11'::System.IDisposable.Dispose()
        IL_009b:  endfinally
      }  // end handler
      IL_009c:  ldloc.0
      IL_009d:  ret
    } // end of method '<GetCreativeValues>d__11'::MoveNext

    .method private hidebysig instance void 
            '<>m__Finally1'() cil managed
    {
      // 代码大小       27 (0x1b)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldc.i4.m1
      IL_0002:  stfld      int32 Game.BulletBlock/'<GetCreativeValues>d__11'::'<>1__state'
      IL_0007:  ldarg.0
      IL_0008:  ldfld      class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32> Game.BulletBlock/'<GetCreativeValues>d__11'::'<>7__wrap1'
      IL_000d:  brfalse.s  IL_001a

      IL_000f:  ldarg.0
      IL_0010:  ldfld      class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32> Game.BulletBlock/'<GetCreativeValues>d__11'::'<>7__wrap1'
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
      IL_0001:  ldfld      int32 Game.BulletBlock/'<GetCreativeValues>d__11'::'<>2__current'
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
      IL_0001:  ldfld      int32 Game.BulletBlock/'<GetCreativeValues>d__11'::'<>2__current'
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
      .locals init (class Game.BulletBlock/'<GetCreativeValues>d__11' V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.BulletBlock/'<GetCreativeValues>d__11'::'<>1__state'
      IL_0006:  ldc.i4.s   -2
      IL_0008:  bne.un.s   IL_0022

      IL_000a:  ldarg.0
      IL_000b:  ldfld      int32 Game.BulletBlock/'<GetCreativeValues>d__11'::'<>l__initialThreadId'
      IL_0010:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0015:  bne.un.s   IL_0022

      IL_0017:  ldarg.0
      IL_0018:  ldc.i4.0
      IL_0019:  stfld      int32 Game.BulletBlock/'<GetCreativeValues>d__11'::'<>1__state'
      IL_001e:  ldarg.0
      IL_001f:  stloc.0
      IL_0020:  br.s       IL_0029

      IL_0022:  ldc.i4.0
      IL_0023:  newobj     instance void Game.BulletBlock/'<GetCreativeValues>d__11'::.ctor(int32)
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
      IL_0001:  call       instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32> Game.BulletBlock/'<GetCreativeValues>d__11'::'System.Collections.Generic.IEnumerable<System.Int32>.GetEnumerator'()
      IL_0006:  ret
    } // end of method '<GetCreativeValues>d__11'::System.Collections.IEnumerable.GetEnumerator

    .property instance int32 'System.Collections.Generic.IEnumerator<System.Int32>.Current'()
    {
      .get instance int32 Game.BulletBlock/'<GetCreativeValues>d__11'::'System.Collections.Generic.IEnumerator<System.Int32>.get_Current'()
    } // end of property '<GetCreativeValues>d__11'::'System.Collections.Generic.IEnumerator<System.Int32>.Current'
    .property instance object System.Collections.IEnumerator.Current()
    {
      .get instance object Game.BulletBlock/'<GetCreativeValues>d__11'::System.Collections.IEnumerator.get_Current()
    } // end of property '<GetCreativeValues>d__11'::System.Collections.IEnumerator.Current
  } // end of class '<GetCreativeValues>d__11'

  .field public static literal int32 Index = int32(0x000000D6)
  .field private static string[] m_displayNames
  .field private static float32[] m_sizes
  .field private static int32[] m_textureSlots
  .field private static float32[] m_weaponPowers
  .field private static float32[] m_explosionPressures
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
  } // end of method BulletBlock::GenerateTerrainVertices

  .method public hidebysig virtual instance void 
          DrawBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D primitivesRenderer,
                    int32 'value',
                    valuetype [Engine]Engine.Color color,
                    float32 size,
                    valuetype [Engine]Engine.Matrix& matrix,
                    class Game.DrawBlockEnvironmentData environmentData) cil managed
  {
    // 代码大小       57 (0x39)
    .maxstack  8
    .locals init (int32 V_0,
             float32 V_1)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  call       valuetype Game.BulletBlock/BulletType Game.BulletBlock::GetBulletType(int32)
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  ldc.i4.0
    IL_000e:  blt.s      IL_001a

    IL_0010:  ldloc.0
    IL_0011:  ldsfld     float32[] Game.BulletBlock::m_sizes
    IL_0016:  ldlen
    IL_0017:  conv.i4
    IL_0018:  blt.s      IL_001e

    IL_001a:  ldarg.s    size
    IL_001c:  br.s       IL_0028

    IL_001e:  ldarg.s    size
    IL_0020:  ldsfld     float32[] Game.BulletBlock::m_sizes
    IL_0025:  ldloc.0
    IL_0026:  ldelem.r4
    IL_0027:  mul
    IL_0028:  stloc.1
    IL_0029:  ldarg.1
    IL_002a:  ldarg.2
    IL_002b:  ldloc.1
    IL_002c:  ldarg.s    matrix
    IL_002e:  ldnull
    IL_002f:  ldarg.3
    IL_0030:  ldc.i4.0
    IL_0031:  ldarg.s    environmentData
    IL_0033:  call       void Game.BlocksManager::DrawFlatBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                                int32,
                                                                float32,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                class [Engine]Engine.Graphics.Texture2D,
                                                                valuetype [Engine]Engine.Color,
                                                                bool,
                                                                class Game.DrawBlockEnvironmentData)
    IL_0038:  ret
  } // end of method BulletBlock::DrawBlock

  .method public hidebysig virtual instance float32 
          GetProjectilePower(int32 'value') cil managed
  {
    // 代码大小       40 (0x28)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  call       valuetype Game.BulletBlock/BulletType Game.BulletBlock::GetBulletType(int32)
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  ldc.i4.0
    IL_000e:  blt.s      IL_001a

    IL_0010:  ldloc.0
    IL_0011:  ldsfld     float32[] Game.BulletBlock::m_weaponPowers
    IL_0016:  ldlen
    IL_0017:  conv.i4
    IL_0018:  blt.s      IL_0020

    IL_001a:  ldc.r4     0.0
    IL_001f:  ret

    IL_0020:  ldsfld     float32[] Game.BulletBlock::m_weaponPowers
    IL_0025:  ldloc.0
    IL_0026:  ldelem.r4
    IL_0027:  ret
  } // end of method BulletBlock::GetProjectilePower

  .method public hidebysig virtual instance float32 
          GetExplosionPressure(int32 'value') cil managed
  {
    // 代码大小       40 (0x28)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  call       valuetype Game.BulletBlock/BulletType Game.BulletBlock::GetBulletType(int32)
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  ldc.i4.0
    IL_000e:  blt.s      IL_001a

    IL_0010:  ldloc.0
    IL_0011:  ldsfld     float32[] Game.BulletBlock::m_explosionPressures
    IL_0016:  ldlen
    IL_0017:  conv.i4
    IL_0018:  blt.s      IL_0020

    IL_001a:  ldc.r4     0.0
    IL_001f:  ret

    IL_0020:  ldsfld     float32[] Game.BulletBlock::m_explosionPressures
    IL_0025:  ldloc.0
    IL_0026:  ldelem.r4
    IL_0027:  ret
  } // end of method BulletBlock::GetExplosionPressure

  .method public hidebysig virtual instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32> 
          GetCreativeValues() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.IteratorStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 29 47 61 6D 65 2E 42 75 6C 6C 65 74 42 6C   // ..)Game.BulletBl
                                                                                                                                                      6F 63 6B 2B 3C 47 65 74 43 72 65 61 74 69 76 65   // ock+<GetCreative
                                                                                                                                                      56 61 6C 75 65 73 3E 64 5F 5F 31 31 00 00 )       // Values>d__11..
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldc.i4.s   -2
    IL_0002:  newobj     instance void Game.BulletBlock/'<GetCreativeValues>d__11'::.ctor(int32)
    IL_0007:  ret
  } // end of method BulletBlock::GetCreativeValues

  .method public hidebysig virtual instance string 
          GetDisplayName(class Game.SubsystemTerrain subsystemTerrain,
                         int32 'value') cil managed
  {
    // 代码大小       40 (0x28)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  call       valuetype Game.BulletBlock/BulletType Game.BulletBlock::GetBulletType(int32)
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  ldc.i4.0
    IL_000e:  blt.s      IL_001a

    IL_0010:  ldloc.0
    IL_0011:  ldsfld     string[] Game.BulletBlock::m_displayNames
    IL_0016:  ldlen
    IL_0017:  conv.i4
    IL_0018:  blt.s      IL_0020

    IL_001a:  ldsfld     string [System.Runtime]System.String::Empty
    IL_001f:  ret

    IL_0020:  ldsfld     string[] Game.BulletBlock::m_displayNames
    IL_0025:  ldloc.0
    IL_0026:  ldelem.ref
    IL_0027:  ret
  } // end of method BulletBlock::GetDisplayName

  .method public hidebysig virtual instance int32 
          GetFaceTextureSlot(int32 face,
                             int32 'value') cil managed
  {
    // 代码大小       40 (0x28)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  call       valuetype Game.BulletBlock/BulletType Game.BulletBlock::GetBulletType(int32)
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  ldc.i4.0
    IL_000e:  blt.s      IL_001a

    IL_0010:  ldloc.0
    IL_0011:  ldsfld     int32[] Game.BulletBlock::m_textureSlots
    IL_0016:  ldlen
    IL_0017:  conv.i4
    IL_0018:  blt.s      IL_0020

    IL_001a:  ldc.i4     0xe5
    IL_001f:  ret

    IL_0020:  ldsfld     int32[] Game.BulletBlock::m_textureSlots
    IL_0025:  ldloc.0
    IL_0026:  ldelem.i4
    IL_0027:  ret
  } // end of method BulletBlock::GetFaceTextureSlot

  .method public hidebysig static valuetype Game.BulletBlock/BulletType 
          GetBulletType(int32 data) cil managed
  {
    // 代码大小       5 (0x5)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.s   15
    IL_0003:  and
    IL_0004:  ret
  } // end of method BulletBlock::GetBulletType

  .method public hidebysig static int32  SetBulletType(int32 data,
                                                       valuetype Game.BulletBlock/BulletType bulletType) cil managed
  {
    // 代码大小       10 (0xa)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.s   -16
    IL_0003:  and
    IL_0004:  ldarg.1
    IL_0005:  ldc.i4.s   15
    IL_0007:  and
    IL_0008:  or
    IL_0009:  ret
  } // end of method BulletBlock::SetBulletType

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.FlatBlock::.ctor()
    IL_0006:  ret
  } // end of method BulletBlock::.ctor

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       118 (0x76)
    .maxstack  4
    IL_0000:  ldc.i4.3
    IL_0001:  newarr     [System.Runtime]System.String
    IL_0006:  dup
    IL_0007:  ldc.i4.0
    IL_0008:  ldstr      "Musket Ball"
    IL_000d:  stelem.ref
    IL_000e:  dup
    IL_000f:  ldc.i4.1
    IL_0010:  ldstr      "Buckshot"
    IL_0015:  stelem.ref
    IL_0016:  dup
    IL_0017:  ldc.i4.2
    IL_0018:  ldstr      "Buckshot Ball"
    IL_001d:  stelem.ref
    IL_001e:  stsfld     string[] Game.BulletBlock::m_displayNames
    IL_0023:  ldc.i4.3
    IL_0024:  newarr     [System.Runtime]System.Single
    IL_0029:  dup
    IL_002a:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=12' '<PrivateImplementationDetails>'::'747BE4B07D10B08688C7254902CD971A14B1C16C'
    IL_002f:  call       void [System.Runtime]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [System.Runtime]System.Array,
                                                                                                              valuetype [System.Runtime]System.RuntimeFieldHandle)
    IL_0034:  stsfld     float32[] Game.BulletBlock::m_sizes
    IL_0039:  ldc.i4.3
    IL_003a:  newarr     [System.Runtime]System.Int32
    IL_003f:  dup
    IL_0040:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=12' '<PrivateImplementationDetails>'::'1B589634B3E30AF11AFCFAE4DC5FFB7DC6AA0832'
    IL_0045:  call       void [System.Runtime]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [System.Runtime]System.Array,
                                                                                                              valuetype [System.Runtime]System.RuntimeFieldHandle)
    IL_004a:  stsfld     int32[] Game.BulletBlock::m_textureSlots
    IL_004f:  ldc.i4.3
    IL_0050:  newarr     [System.Runtime]System.Single
    IL_0055:  dup
    IL_0056:  ldc.i4.0
    IL_0057:  ldc.r4     70.
    IL_005c:  stelem.r4
    IL_005d:  dup
    IL_005e:  ldc.i4.2
    IL_005f:  ldc.r4     3.5999999
    IL_0064:  stelem.r4
    IL_0065:  stsfld     float32[] Game.BulletBlock::m_weaponPowers
    IL_006a:  ldc.i4.3
    IL_006b:  newarr     [System.Runtime]System.Single
    IL_0070:  stsfld     float32[] Game.BulletBlock::m_explosionPressures
    IL_0075:  ret
  } // end of method BulletBlock::.cctor

} // end of class Game.BulletBlock