.class public auto ansi beforefieldinit Game.CottonBlock
       extends Game.CrossBlock
{
  .class auto ansi sealed nested private beforefieldinit '<GetCreativeValues>d__2'
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
      IL_0008:  stfld      int32 Game.CottonBlock/'<GetCreativeValues>d__2'::'<>1__state'
      IL_000d:  ldarg.0
      IL_000e:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0013:  stfld      int32 Game.CottonBlock/'<GetCreativeValues>d__2'::'<>l__initialThreadId'
      IL_0018:  ret
    } // end of method '<GetCreativeValues>d__2'::.ctor

    .method private hidebysig newslot virtual final 
            instance void  System.IDisposable.Dispose() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.IDisposable::Dispose
      // 代码大小       1 (0x1)
      .maxstack  8
      IL_0000:  ret
    } // end of method '<GetCreativeValues>d__2'::System.IDisposable.Dispose

    .method private hidebysig newslot virtual final 
            instance bool  MoveNext() cil managed
    {
      .override [System.Runtime]System.Collections.IEnumerator::MoveNext
      // 代码大小       178 (0xb2)
      .maxstack  5
      .locals init (int32 V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.CottonBlock/'<GetCreativeValues>d__2'::'<>1__state'
      IL_0006:  stloc.0
      IL_0007:  ldloc.0
      IL_0008:  switch     ( 
                            IL_001f,
                            IL_004d,
                            IL_007b,
                            IL_00a9)
      IL_001d:  ldc.i4.0
      IL_001e:  ret

      IL_001f:  ldarg.0
      IL_0020:  ldc.i4.m1
      IL_0021:  stfld      int32 Game.CottonBlock/'<GetCreativeValues>d__2'::'<>1__state'
      IL_0026:  ldarg.0
      IL_0027:  ldc.i4     0xcc
      IL_002c:  ldc.i4.0
      IL_002d:  ldc.i4.0
      IL_002e:  ldc.i4.2
      IL_002f:  call       int32 Game.CottonBlock::SetSize(int32,
                                                           int32)
      IL_0034:  ldc.i4.1
      IL_0035:  call       int32 Game.CottonBlock::SetIsWild(int32,
                                                             bool)
      IL_003a:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                  int32,
                                                                  int32)
      IL_003f:  stfld      int32 Game.CottonBlock/'<GetCreativeValues>d__2'::'<>2__current'
      IL_0044:  ldarg.0
      IL_0045:  ldc.i4.1
      IL_0046:  stfld      int32 Game.CottonBlock/'<GetCreativeValues>d__2'::'<>1__state'
      IL_004b:  ldc.i4.1
      IL_004c:  ret

      IL_004d:  ldarg.0
      IL_004e:  ldc.i4.m1
      IL_004f:  stfld      int32 Game.CottonBlock/'<GetCreativeValues>d__2'::'<>1__state'
      IL_0054:  ldarg.0
      IL_0055:  ldc.i4     0xcc
      IL_005a:  ldc.i4.0
      IL_005b:  ldc.i4.0
      IL_005c:  ldc.i4.1
      IL_005d:  call       int32 Game.CottonBlock::SetSize(int32,
                                                           int32)
      IL_0062:  ldc.i4.0
      IL_0063:  call       int32 Game.CottonBlock::SetIsWild(int32,
                                                             bool)
      IL_0068:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                  int32,
                                                                  int32)
      IL_006d:  stfld      int32 Game.CottonBlock/'<GetCreativeValues>d__2'::'<>2__current'
      IL_0072:  ldarg.0
      IL_0073:  ldc.i4.2
      IL_0074:  stfld      int32 Game.CottonBlock/'<GetCreativeValues>d__2'::'<>1__state'
      IL_0079:  ldc.i4.1
      IL_007a:  ret

      IL_007b:  ldarg.0
      IL_007c:  ldc.i4.m1
      IL_007d:  stfld      int32 Game.CottonBlock/'<GetCreativeValues>d__2'::'<>1__state'
      IL_0082:  ldarg.0
      IL_0083:  ldc.i4     0xcc
      IL_0088:  ldc.i4.0
      IL_0089:  ldc.i4.0
      IL_008a:  ldc.i4.2
      IL_008b:  call       int32 Game.CottonBlock::SetSize(int32,
                                                           int32)
      IL_0090:  ldc.i4.0
      IL_0091:  call       int32 Game.CottonBlock::SetIsWild(int32,
                                                             bool)
      IL_0096:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                  int32,
                                                                  int32)
      IL_009b:  stfld      int32 Game.CottonBlock/'<GetCreativeValues>d__2'::'<>2__current'
      IL_00a0:  ldarg.0
      IL_00a1:  ldc.i4.3
      IL_00a2:  stfld      int32 Game.CottonBlock/'<GetCreativeValues>d__2'::'<>1__state'
      IL_00a7:  ldc.i4.1
      IL_00a8:  ret

      IL_00a9:  ldarg.0
      IL_00aa:  ldc.i4.m1
      IL_00ab:  stfld      int32 Game.CottonBlock/'<GetCreativeValues>d__2'::'<>1__state'
      IL_00b0:  ldc.i4.0
      IL_00b1:  ret
    } // end of method '<GetCreativeValues>d__2'::MoveNext

    .method private hidebysig newslot specialname virtual final 
            instance int32  'System.Collections.Generic.IEnumerator<System.Int32>.get_Current'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32>::get_Current()
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.CottonBlock/'<GetCreativeValues>d__2'::'<>2__current'
      IL_0006:  ret
    } // end of method '<GetCreativeValues>d__2'::'System.Collections.Generic.IEnumerator<System.Int32>.get_Current'

    .method private hidebysig newslot virtual final 
            instance void  System.Collections.IEnumerator.Reset() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerator::Reset
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  newobj     instance void [System.Runtime]System.NotSupportedException::.ctor()
      IL_0005:  throw
    } // end of method '<GetCreativeValues>d__2'::System.Collections.IEnumerator.Reset

    .method private hidebysig newslot specialname virtual final 
            instance object  System.Collections.IEnumerator.get_Current() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerator::get_Current
      // 代码大小       12 (0xc)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.CottonBlock/'<GetCreativeValues>d__2'::'<>2__current'
      IL_0006:  box        [System.Runtime]System.Int32
      IL_000b:  ret
    } // end of method '<GetCreativeValues>d__2'::System.Collections.IEnumerator.get_Current

    .method private hidebysig newslot virtual final 
            instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32> 
            'System.Collections.Generic.IEnumerable<System.Int32>.GetEnumerator'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32>::GetEnumerator()
      // 代码大小       43 (0x2b)
      .maxstack  2
      .locals init (class Game.CottonBlock/'<GetCreativeValues>d__2' V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.CottonBlock/'<GetCreativeValues>d__2'::'<>1__state'
      IL_0006:  ldc.i4.s   -2
      IL_0008:  bne.un.s   IL_0022

      IL_000a:  ldarg.0
      IL_000b:  ldfld      int32 Game.CottonBlock/'<GetCreativeValues>d__2'::'<>l__initialThreadId'
      IL_0010:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0015:  bne.un.s   IL_0022

      IL_0017:  ldarg.0
      IL_0018:  ldc.i4.0
      IL_0019:  stfld      int32 Game.CottonBlock/'<GetCreativeValues>d__2'::'<>1__state'
      IL_001e:  ldarg.0
      IL_001f:  stloc.0
      IL_0020:  br.s       IL_0029

      IL_0022:  ldc.i4.0
      IL_0023:  newobj     instance void Game.CottonBlock/'<GetCreativeValues>d__2'::.ctor(int32)
      IL_0028:  stloc.0
      IL_0029:  ldloc.0
      IL_002a:  ret
    } // end of method '<GetCreativeValues>d__2'::'System.Collections.Generic.IEnumerable<System.Int32>.GetEnumerator'

    .method private hidebysig newslot virtual final 
            instance class [System.Runtime]System.Collections.IEnumerator 
            System.Collections.IEnumerable.GetEnumerator() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerable::GetEnumerator
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32> Game.CottonBlock/'<GetCreativeValues>d__2'::'System.Collections.Generic.IEnumerable<System.Int32>.GetEnumerator'()
      IL_0006:  ret
    } // end of method '<GetCreativeValues>d__2'::System.Collections.IEnumerable.GetEnumerator

    .property instance int32 'System.Collections.Generic.IEnumerator<System.Int32>.Current'()
    {
      .get instance int32 Game.CottonBlock/'<GetCreativeValues>d__2'::'System.Collections.Generic.IEnumerator<System.Int32>.get_Current'()
    } // end of property '<GetCreativeValues>d__2'::'System.Collections.Generic.IEnumerator<System.Int32>.Current'
    .property instance object System.Collections.IEnumerator.Current()
    {
      .get instance object Game.CottonBlock/'<GetCreativeValues>d__2'::System.Collections.IEnumerator.get_Current()
    } // end of property '<GetCreativeValues>d__2'::System.Collections.IEnumerator.Current
  } // end of class '<GetCreativeValues>d__2'

  .field public static literal int32 Index = int32(0x000000CC)
  .field private class Game.Random m_random
  .method public hidebysig virtual instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32> 
          GetCreativeValues() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.IteratorStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 28 47 61 6D 65 2E 43 6F 74 74 6F 6E 42 6C   // ..(Game.CottonBl
                                                                                                                                                      6F 63 6B 2B 3C 47 65 74 43 72 65 61 74 69 76 65   // ock+<GetCreative
                                                                                                                                                      56 61 6C 75 65 73 3E 64 5F 5F 32 00 00 )          // Values>d__2..
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldc.i4.s   -2
    IL_0002:  newobj     instance void Game.CottonBlock/'<GetCreativeValues>d__2'::.ctor(int32)
    IL_0007:  ret
  } // end of method CottonBlock::GetCreativeValues

  .method public hidebysig virtual instance string 
          GetDisplayName(class Game.SubsystemTerrain subsystemTerrain,
                         int32 'value') cil managed
  {
    // 代码大小       25 (0x19)
    .maxstack  8
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  call       bool Game.CottonBlock::GetIsWild(int32)
    IL_000b:  brtrue.s   IL_0013

    IL_000d:  ldstr      "Cotton"
    IL_0012:  ret

    IL_0013:  ldstr      "Wild Cotton"
    IL_0018:  ret
  } // end of method CottonBlock::GetDisplayName

  .method public hidebysig virtual instance void 
          GetDropValues(class Game.SubsystemTerrain terrain,
                        int32 oldValue,
                        int32 newValue,
                        int32 toolLevel,
                        class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue> dropValues,
                        [out] bool& showDebris) cil managed
  {
    // 代码大小       156 (0x9c)
    .maxstack  5
    .locals init (int32 V_0,
             valuetype Game.BlockDropValue V_1,
             int32 V_2,
             int32 V_3)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  call       int32 Game.CottonBlock::GetSize(int32)
    IL_000d:  ldc.i4.2
    IL_000e:  bne.un     IL_0097

    IL_0013:  ldarg.s    dropValues
    IL_0015:  ldloca.s   V_1
    IL_0017:  initobj    Game.BlockDropValue
    IL_001d:  ldloca.s   V_1
    IL_001f:  ldc.i4     0xad
    IL_0024:  ldc.i4.0
    IL_0025:  ldc.i4.6
    IL_0026:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_002b:  stfld      int32 Game.BlockDropValue::Value
    IL_0030:  ldloca.s   V_1
    IL_0032:  ldarg.0
    IL_0033:  ldfld      class Game.Random Game.CottonBlock::m_random
    IL_0038:  ldc.i4.1
    IL_0039:  ldc.i4.2
    IL_003a:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_003f:  stfld      int32 Game.BlockDropValue::Count
    IL_0044:  ldloc.1
    IL_0045:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue>::Add(!0)
    IL_004a:  ldloc.0
    IL_004b:  call       bool Game.CottonBlock::GetIsWild(int32)
    IL_0050:  brtrue.s   IL_0097

    IL_0052:  ldarg.0
    IL_0053:  ldfld      class Game.Random Game.CottonBlock::m_random
    IL_0058:  ldc.i4.2
    IL_0059:  ldc.i4.4
    IL_005a:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_005f:  stloc.2
    IL_0060:  ldc.i4.0
    IL_0061:  stloc.3
    IL_0062:  br.s       IL_0093

    IL_0064:  ldarg.s    dropValues
    IL_0066:  ldloca.s   V_1
    IL_0068:  initobj    Game.BlockDropValue
    IL_006e:  ldloca.s   V_1
    IL_0070:  ldc.i4     0xcd
    IL_0075:  ldc.i4.0
    IL_0076:  ldc.i4.0
    IL_0077:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_007c:  stfld      int32 Game.BlockDropValue::Value
    IL_0081:  ldloca.s   V_1
    IL_0083:  ldc.i4.1
    IL_0084:  stfld      int32 Game.BlockDropValue::Count
    IL_0089:  ldloc.1
    IL_008a:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue>::Add(!0)
    IL_008f:  ldloc.3
    IL_0090:  ldc.i4.1
    IL_0091:  add
    IL_0092:  stloc.3
    IL_0093:  ldloc.3
    IL_0094:  ldloc.2
    IL_0095:  blt.s      IL_0064

    IL_0097:  ldarg.s    showDebris
    IL_0099:  ldc.i4.1
    IL_009a:  stind.i1
    IL_009b:  ret
  } // end of method CottonBlock::GetDropValues

  .method public hidebysig virtual instance int32 
          GetFaceTextureSlot(int32 face,
                             int32 'value') cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  call       int32 Game.CottonBlock::GetSize(int32)
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  brtrue.s   IL_0012

    IL_000f:  ldc.i4.s   11
    IL_0011:  ret

    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.1
    IL_0014:  bne.un.s   IL_0019

    IL_0016:  ldc.i4.s   29
    IL_0018:  ret

    IL_0019:  ldc.i4.s   30
    IL_001b:  ret
  } // end of method CottonBlock::GetFaceTextureSlot

  .method public hidebysig virtual instance void 
          DrawBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D primitivesRenderer,
                    int32 'value',
                    float32 size,
                    valuetype [Engine]Engine.Matrix& matrix,
                    class Game.DrawBlockEnvironmentData environmentData) cil managed
  {
    // 代码大小       70 (0x46)
    .maxstack  6
    .locals init (valuetype [Engine]Engine.Color V_0)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  call       bool Game.CottonBlock::GetIsWild(int32)
    IL_000b:  brfalse.s  IL_0034

    IL_000d:  ldsfld     class Game.BlockColorsMap Game.BlockColorsMap::GrassColorsMap
    IL_0012:  ldarg.s    environmentData
    IL_0014:  ldfld      int32 Game.DrawBlockEnvironmentData::Temperature
    IL_0019:  ldarg.s    environmentData
    IL_001b:  ldfld      int32 Game.DrawBlockEnvironmentData::Humidity
    IL_0020:  callvirt   instance valuetype [Engine]Engine.Color Game.BlockColorsMap::Lookup(int32,
                                                                                             int32)
    IL_0025:  stloc.0
    IL_0026:  ldarg.1
    IL_0027:  ldarg.2
    IL_0028:  ldarg.3
    IL_0029:  ldarg.s    matrix
    IL_002b:  ldloc.0
    IL_002c:  ldarg.s    environmentData
    IL_002e:  call       void Game.BlocksManager::DrawFlatBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                                int32,
                                                                float32,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                valuetype [Engine]Engine.Color,
                                                                class Game.DrawBlockEnvironmentData)
    IL_0033:  ret

    IL_0034:  ldarg.1
    IL_0035:  ldarg.2
    IL_0036:  ldarg.3
    IL_0037:  ldarg.s    matrix
    IL_0039:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_003e:  ldarg.s    environmentData
    IL_0040:  call       void Game.BlocksManager::DrawFlatBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                                int32,
                                                                float32,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                valuetype [Engine]Engine.Color,
                                                                class Game.DrawBlockEnvironmentData)
    IL_0045:  ret
  } // end of method CottonBlock::DrawBlock

  .method public hidebysig virtual instance void 
          GenerateTerrainVertices(class Game.BlockGeometryGenerator generator,
                                  class Game.TerrainGeometrySubsets geometry,
                                  int32 'value',
                                  int32 x,
                                  int32 y,
                                  int32 z) cil managed
  {
    // 代码大小       98 (0x62)
    .maxstack  10
    .locals init (valuetype [Engine]Engine.Color V_0)
    IL_0000:  ldarg.3
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  call       bool Game.CottonBlock::GetIsWild(int32)
    IL_000b:  brfalse.s  IL_0040

    IL_000d:  ldsfld     class Game.BlockColorsMap Game.BlockColorsMap::GrassColorsMap
    IL_0012:  ldarg.1
    IL_0013:  ldfld      class Game.TerrainData Game.BlockGeometryGenerator::TerrainData
    IL_0018:  ldarg.s    x
    IL_001a:  ldarg.s    z
    IL_001c:  callvirt   instance valuetype [Engine]Engine.Color Game.BlockColorsMap::Lookup(class Game.TerrainData,
                                                                                             int32,
                                                                                             int32)
    IL_0021:  stloc.0
    IL_0022:  ldarg.1
    IL_0023:  ldarg.0
    IL_0024:  ldarg.3
    IL_0025:  ldarg.s    x
    IL_0027:  ldarg.s    y
    IL_0029:  ldarg.s    z
    IL_002b:  ldloc.0
    IL_002c:  ldarg.0
    IL_002d:  ldc.i4.0
    IL_002e:  ldarg.3
    IL_002f:  callvirt   instance int32 Game.Block::GetFaceTextureSlot(int32,
                                                                       int32)
    IL_0034:  ldarg.2
    IL_0035:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetAlphaTest
    IL_003a:  callvirt   instance void Game.BlockGeometryGenerator::GenerateCrossfaceVertices(class Game.Block,
                                                                                              int32,
                                                                                              int32,
                                                                                              int32,
                                                                                              int32,
                                                                                              valuetype [Engine]Engine.Color,
                                                                                              int32,
                                                                                              class Game.TerrainGeometrySubset)
    IL_003f:  ret

    IL_0040:  ldarg.1
    IL_0041:  ldarg.0
    IL_0042:  ldarg.3
    IL_0043:  ldarg.s    x
    IL_0045:  ldarg.s    y
    IL_0047:  ldarg.s    z
    IL_0049:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_004e:  ldarg.0
    IL_004f:  ldc.i4.0
    IL_0050:  ldarg.3
    IL_0051:  callvirt   instance int32 Game.Block::GetFaceTextureSlot(int32,
                                                                       int32)
    IL_0056:  ldarg.2
    IL_0057:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetAlphaTest
    IL_005c:  callvirt   instance void Game.BlockGeometryGenerator::GenerateCrossfaceVertices(class Game.Block,
                                                                                              int32,
                                                                                              int32,
                                                                                              int32,
                                                                                              int32,
                                                                                              valuetype [Engine]Engine.Color,
                                                                                              int32,
                                                                                              class Game.TerrainGeometrySubset)
    IL_0061:  ret
  } // end of method CottonBlock::GenerateTerrainVertices

  .method public hidebysig virtual instance int32 
          GetShadowStrength(int32 'value') cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  3
    .locals init (int32 V_0)
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  call       int32 Game.CottonBlock::GetSize(int32)
    IL_000b:  stloc.0
    IL_000c:  ldc.i4.2
    IL_000d:  ldloc.0
    IL_000e:  ldc.i4.2
    IL_000f:  mul
    IL_0010:  add
    IL_0011:  ret
  } // end of method CottonBlock::GetShadowStrength

  .method public hidebysig virtual instance class Game.BlockDebrisParticleSystem 
          CreateDebrisParticleSystem(class Game.SubsystemTerrain terrain,
                                     valuetype [Engine]Engine.Vector3 position,
                                     int32 'value',
                                     float32 strength) cil managed
  {
    // 代码大小       98 (0x62)
    .maxstack  8
    .locals init (valuetype [Engine]Engine.Color V_0)
    IL_0000:  ldarg.3
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  call       bool Game.CottonBlock::GetIsWild(int32)
    IL_000b:  brfalse.s  IL_0045

    IL_000d:  ldsfld     class Game.BlockColorsMap Game.BlockColorsMap::GrassColorsMap
    IL_0012:  ldarg.1
    IL_0013:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0018:  ldarg.2
    IL_0019:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_001e:  conv.i4
    IL_001f:  ldarg.2
    IL_0020:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0025:  conv.i4
    IL_0026:  callvirt   instance valuetype [Engine]Engine.Color Game.BlockColorsMap::Lookup(class Game.TerrainData,
                                                                                             int32,
                                                                                             int32)
    IL_002b:  stloc.0
    IL_002c:  ldarg.1
    IL_002d:  ldarg.2
    IL_002e:  ldarg.s    strength
    IL_0030:  ldarg.0
    IL_0031:  ldfld      float32 Game.Block::DestructionDebrisScale
    IL_0036:  ldloc.0
    IL_0037:  ldarg.0
    IL_0038:  ldc.i4.4
    IL_0039:  ldarg.3
    IL_003a:  callvirt   instance int32 Game.Block::GetFaceTextureSlot(int32,
                                                                       int32)
    IL_003f:  newobj     instance void Game.BlockDebrisParticleSystem::.ctor(class Game.SubsystemTerrain,
                                                                             valuetype [Engine]Engine.Vector3,
                                                                             float32,
                                                                             float32,
                                                                             valuetype [Engine]Engine.Color,
                                                                             int32)
    IL_0044:  ret

    IL_0045:  ldarg.1
    IL_0046:  ldarg.2
    IL_0047:  ldarg.s    strength
    IL_0049:  ldarg.0
    IL_004a:  ldfld      float32 Game.Block::DestructionDebrisScale
    IL_004f:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0054:  ldarg.0
    IL_0055:  ldc.i4.4
    IL_0056:  ldarg.3
    IL_0057:  callvirt   instance int32 Game.Block::GetFaceTextureSlot(int32,
                                                                       int32)
    IL_005c:  newobj     instance void Game.BlockDebrisParticleSystem::.ctor(class Game.SubsystemTerrain,
                                                                             valuetype [Engine]Engine.Vector3,
                                                                             float32,
                                                                             float32,
                                                                             valuetype [Engine]Engine.Color,
                                                                             int32)
    IL_0061:  ret
  } // end of method CottonBlock::CreateDebrisParticleSystem

  .method public hidebysig static int32  GetSize(int32 data) cil managed
  {
    // 代码大小       4 (0x4)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.3
    IL_0002:  and
    IL_0003:  ret
  } // end of method CottonBlock::GetSize

  .method public hidebysig static int32  SetSize(int32 data,
                                                 int32 size) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldc.i4.0
    IL_0002:  ldc.i4.2
    IL_0003:  call       int32 [Engine]Engine.MathUtils::Clamp(int32,
                                                               int32,
                                                               int32)
    IL_0008:  starg.s    size
    IL_000a:  ldarg.0
    IL_000b:  ldc.i4.s   -4
    IL_000d:  and
    IL_000e:  ldarg.1
    IL_000f:  ldc.i4.3
    IL_0010:  and
    IL_0011:  or
    IL_0012:  ret
  } // end of method CottonBlock::SetSize

  .method public hidebysig static bool  GetIsWild(int32 data) cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.8
    IL_0002:  and
    IL_0003:  ldc.i4.0
    IL_0004:  cgt.un
    IL_0006:  ret
  } // end of method CottonBlock::GetIsWild

  .method public hidebysig static int32  SetIsWild(int32 data,
                                                   bool isWild) cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  brtrue.s   IL_0008

    IL_0003:  ldarg.0
    IL_0004:  ldc.i4.s   -9
    IL_0006:  and
    IL_0007:  ret

    IL_0008:  ldarg.0
    IL_0009:  ldc.i4.8
    IL_000a:  or
    IL_000b:  ret
  } // end of method CottonBlock::SetIsWild

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.Random::.ctor()
    IL_0006:  stfld      class Game.Random Game.CottonBlock::m_random
    IL_000b:  ldarg.0
    IL_000c:  call       instance void Game.CrossBlock::.ctor()
    IL_0011:  ret
  } // end of method CottonBlock::.ctor

} // end of class Game.CottonBlock