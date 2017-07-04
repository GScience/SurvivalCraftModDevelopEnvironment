.class public auto ansi beforefieldinit Game.CarpetBlock
       extends Game.CubeBlock
{
  .class auto ansi sealed nested private beforefieldinit '<GetCreativeValues>d__5'
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
    .field private int32 '<i>5__1'
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
      IL_0008:  stfld      int32 Game.CarpetBlock/'<GetCreativeValues>d__5'::'<>1__state'
      IL_000d:  ldarg.0
      IL_000e:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0013:  stfld      int32 Game.CarpetBlock/'<GetCreativeValues>d__5'::'<>l__initialThreadId'
      IL_0018:  ret
    } // end of method '<GetCreativeValues>d__5'::.ctor

    .method private hidebysig newslot virtual final 
            instance void  System.IDisposable.Dispose() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.IDisposable::Dispose
      // 代码大小       1 (0x1)
      .maxstack  8
      IL_0000:  ret
    } // end of method '<GetCreativeValues>d__5'::System.IDisposable.Dispose

    .method private hidebysig newslot virtual final 
            instance bool  MoveNext() cil managed
    {
      .override [System.Runtime]System.Collections.IEnumerator::MoveNext
      // 代码大小       99 (0x63)
      .maxstack  4
      .locals init (int32 V_0,
               int32 V_1)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.CarpetBlock/'<GetCreativeValues>d__5'::'<>1__state'
      IL_0006:  stloc.0
      IL_0007:  ldloc.0
      IL_0008:  brfalse.s  IL_0010

      IL_000a:  ldloc.0
      IL_000b:  ldc.i4.1
      IL_000c:  beq.s      IL_0040

      IL_000e:  ldc.i4.0
      IL_000f:  ret

      IL_0010:  ldarg.0
      IL_0011:  ldc.i4.m1
      IL_0012:  stfld      int32 Game.CarpetBlock/'<GetCreativeValues>d__5'::'<>1__state'
      IL_0017:  ldarg.0
      IL_0018:  ldc.i4.0
      IL_0019:  stfld      int32 Game.CarpetBlock/'<GetCreativeValues>d__5'::'<i>5__1'
      IL_001e:  br.s       IL_0057

      IL_0020:  ldarg.0
      IL_0021:  ldc.i4     0xd0
      IL_0026:  ldc.i4.0
      IL_0027:  ldarg.0
      IL_0028:  ldfld      int32 Game.CarpetBlock/'<GetCreativeValues>d__5'::'<i>5__1'
      IL_002d:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                              int32,
                                                              int32)
      IL_0032:  stfld      int32 Game.CarpetBlock/'<GetCreativeValues>d__5'::'<>2__current'
      IL_0037:  ldarg.0
      IL_0038:  ldc.i4.1
      IL_0039:  stfld      int32 Game.CarpetBlock/'<GetCreativeValues>d__5'::'<>1__state'
      IL_003e:  ldc.i4.1
      IL_003f:  ret

      IL_0040:  ldarg.0
      IL_0041:  ldc.i4.m1
      IL_0042:  stfld      int32 Game.CarpetBlock/'<GetCreativeValues>d__5'::'<>1__state'
      IL_0047:  ldarg.0
      IL_0048:  ldfld      int32 Game.CarpetBlock/'<GetCreativeValues>d__5'::'<i>5__1'
      IL_004d:  ldc.i4.1
      IL_004e:  add
      IL_004f:  stloc.1
      IL_0050:  ldarg.0
      IL_0051:  ldloc.1
      IL_0052:  stfld      int32 Game.CarpetBlock/'<GetCreativeValues>d__5'::'<i>5__1'
      IL_0057:  ldarg.0
      IL_0058:  ldfld      int32 Game.CarpetBlock/'<GetCreativeValues>d__5'::'<i>5__1'
      IL_005d:  ldc.i4.s   16
      IL_005f:  blt.s      IL_0020

      IL_0061:  ldc.i4.0
      IL_0062:  ret
    } // end of method '<GetCreativeValues>d__5'::MoveNext

    .method private hidebysig newslot specialname virtual final 
            instance int32  'System.Collections.Generic.IEnumerator<System.Int32>.get_Current'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32>::get_Current()
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.CarpetBlock/'<GetCreativeValues>d__5'::'<>2__current'
      IL_0006:  ret
    } // end of method '<GetCreativeValues>d__5'::'System.Collections.Generic.IEnumerator<System.Int32>.get_Current'

    .method private hidebysig newslot virtual final 
            instance void  System.Collections.IEnumerator.Reset() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerator::Reset
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  newobj     instance void [System.Runtime]System.NotSupportedException::.ctor()
      IL_0005:  throw
    } // end of method '<GetCreativeValues>d__5'::System.Collections.IEnumerator.Reset

    .method private hidebysig newslot specialname virtual final 
            instance object  System.Collections.IEnumerator.get_Current() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerator::get_Current
      // 代码大小       12 (0xc)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.CarpetBlock/'<GetCreativeValues>d__5'::'<>2__current'
      IL_0006:  box        [System.Runtime]System.Int32
      IL_000b:  ret
    } // end of method '<GetCreativeValues>d__5'::System.Collections.IEnumerator.get_Current

    .method private hidebysig newslot virtual final 
            instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32> 
            'System.Collections.Generic.IEnumerable<System.Int32>.GetEnumerator'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32>::GetEnumerator()
      // 代码大小       43 (0x2b)
      .maxstack  2
      .locals init (class Game.CarpetBlock/'<GetCreativeValues>d__5' V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.CarpetBlock/'<GetCreativeValues>d__5'::'<>1__state'
      IL_0006:  ldc.i4.s   -2
      IL_0008:  bne.un.s   IL_0022

      IL_000a:  ldarg.0
      IL_000b:  ldfld      int32 Game.CarpetBlock/'<GetCreativeValues>d__5'::'<>l__initialThreadId'
      IL_0010:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0015:  bne.un.s   IL_0022

      IL_0017:  ldarg.0
      IL_0018:  ldc.i4.0
      IL_0019:  stfld      int32 Game.CarpetBlock/'<GetCreativeValues>d__5'::'<>1__state'
      IL_001e:  ldarg.0
      IL_001f:  stloc.0
      IL_0020:  br.s       IL_0029

      IL_0022:  ldc.i4.0
      IL_0023:  newobj     instance void Game.CarpetBlock/'<GetCreativeValues>d__5'::.ctor(int32)
      IL_0028:  stloc.0
      IL_0029:  ldloc.0
      IL_002a:  ret
    } // end of method '<GetCreativeValues>d__5'::'System.Collections.Generic.IEnumerable<System.Int32>.GetEnumerator'

    .method private hidebysig newslot virtual final 
            instance class [System.Runtime]System.Collections.IEnumerator 
            System.Collections.IEnumerable.GetEnumerator() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerable::GetEnumerator
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32> Game.CarpetBlock/'<GetCreativeValues>d__5'::'System.Collections.Generic.IEnumerable<System.Int32>.GetEnumerator'()
      IL_0006:  ret
    } // end of method '<GetCreativeValues>d__5'::System.Collections.IEnumerable.GetEnumerator

    .property instance int32 'System.Collections.Generic.IEnumerator<System.Int32>.Current'()
    {
      .get instance int32 Game.CarpetBlock/'<GetCreativeValues>d__5'::'System.Collections.Generic.IEnumerator<System.Int32>.get_Current'()
    } // end of property '<GetCreativeValues>d__5'::'System.Collections.Generic.IEnumerator<System.Int32>.Current'
    .property instance object System.Collections.IEnumerator.Current()
    {
      .get instance object Game.CarpetBlock/'<GetCreativeValues>d__5'::System.Collections.IEnumerator.get_Current()
    } // end of property '<GetCreativeValues>d__5'::System.Collections.IEnumerator.Current
  } // end of class '<GetCreativeValues>d__5'

  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.CarpetBlock/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`2<string,bool> '<>9__8_0'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.CarpetBlock/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.CarpetBlock/'<>c' Game.CarpetBlock/'<>c'::'<>9'
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
            '<GetAdHocCraftingRecipe>b__8_0'(string i) cil managed
    {
      // 代码大小       10 (0xa)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
      IL_0006:  ldc.i4.0
      IL_0007:  ceq
      IL_0009:  ret
    } // end of method '<>c'::'<GetAdHocCraftingRecipe>b__8_0'

  } // end of class '<>c'

  .field public static literal int32 Index = int32(0x000000D0)
  .field private valuetype [Engine]Engine.BoundingBox[] m_collisionBoxes
  .method public hidebysig virtual instance bool 
          IsFaceTransparent(int32 face,
                            int32 'value') cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldc.i4.5
    IL_0002:  ceq
    IL_0004:  ldc.i4.0
    IL_0005:  ceq
    IL_0007:  ret
  } // end of method CarpetBlock::IsFaceTransparent

  .method public hidebysig virtual instance void 
          GenerateTerrainVertices(class Game.BlockGeometryGenerator generator,
                                  class Game.TerrainGeometrySubsets geometry,
                                  int32 'value',
                                  int32 x,
                                  int32 y,
                                  int32 z) cil managed
  {
    // 代码大小       71 (0x47)
    .maxstack  16
    .locals init (int32 V_0,
             valuetype [Engine]Engine.Color V_1)
    IL_0000:  ldarg.3
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  stloc.0
    IL_0007:  ldarg.1
    IL_0008:  ldloc.0
    IL_0009:  call       int32 Game.CarpetBlock::GetColor(int32)
    IL_000e:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_0013:  call       valuetype [Engine]Engine.Color Game.SubsystemPalette::GetFabricColor(class Game.BlockGeometryGenerator,
                                                                                              valuetype [System.Runtime]System.Nullable`1<int32>)
    IL_0018:  stloc.1
    IL_0019:  ldarg.1
    IL_001a:  ldarg.0
    IL_001b:  ldarg.3
    IL_001c:  ldarg.s    x
    IL_001e:  ldarg.s    y
    IL_0020:  ldarg.s    z
    IL_0022:  ldc.r4     6.25e-002
    IL_0027:  ldc.r4     6.25e-002
    IL_002c:  ldc.r4     6.25e-002
    IL_0031:  ldc.r4     6.25e-002
    IL_0036:  ldloc.1
    IL_0037:  ldloc.1
    IL_0038:  ldloc.1
    IL_0039:  ldloc.1
    IL_003a:  ldloc.1
    IL_003b:  ldarg.2
    IL_003c:  ldfld      class Game.TerrainGeometrySubset[] Game.TerrainGeometrySubsets::OpaqueSubsetsByFace
    IL_0041:  callvirt   instance void Game.BlockGeometryGenerator::GenerateCubeVertices(class Game.Block,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         float32,
                                                                                         float32,
                                                                                         float32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         class Game.TerrainGeometrySubset[])
    IL_0046:  ret
  } // end of method CarpetBlock::GenerateTerrainVertices

  .method public hidebysig virtual instance void 
          DrawBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D primitivesRenderer,
                    int32 'value',
                    valuetype [Engine]Engine.Color color,
                    float32 size,
                    valuetype [Engine]Engine.Matrix& matrix,
                    class Game.DrawBlockEnvironmentData environmentData) cil managed
  {
    // 代码大小       64 (0x40)
    .maxstack  7
    .locals init (int32 V_0)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  stloc.0
    IL_0007:  ldarg.3
    IL_0008:  ldarg.s    environmentData
    IL_000a:  ldloc.0
    IL_000b:  call       int32 Game.CarpetBlock::GetColor(int32)
    IL_0010:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_0015:  call       valuetype [Engine]Engine.Color Game.SubsystemPalette::GetFabricColor(class Game.DrawBlockEnvironmentData,
                                                                                              valuetype [System.Runtime]System.Nullable`1<int32>)
    IL_001a:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color)
    IL_001f:  starg.s    color
    IL_0021:  ldarg.1
    IL_0022:  ldarg.2
    IL_0023:  ldarg.s    size
    IL_0025:  ldc.r4     6.25e-002
    IL_002a:  ldarg.s    size
    IL_002c:  mul
    IL_002d:  ldarg.s    size
    IL_002f:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0034:  ldarg.s    matrix
    IL_0036:  ldarg.3
    IL_0037:  ldarg.3
    IL_0038:  ldarg.s    environmentData
    IL_003a:  call       void Game.BlocksManager::DrawCubeBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                                int32,
                                                                valuetype [Engine]Engine.Vector3,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                valuetype [Engine]Engine.Color,
                                                                valuetype [Engine]Engine.Color,
                                                                class Game.DrawBlockEnvironmentData)
    IL_003f:  ret
  } // end of method CarpetBlock::DrawBlock

  .method public hidebysig virtual instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32> 
          GetCreativeValues() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.IteratorStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 28 47 61 6D 65 2E 43 61 72 70 65 74 42 6C   // ..(Game.CarpetBl
                                                                                                                                                      6F 63 6B 2B 3C 47 65 74 43 72 65 61 74 69 76 65   // ock+<GetCreative
                                                                                                                                                      56 61 6C 75 65 73 3E 64 5F 5F 35 00 00 )          // Values>d__5..
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldc.i4.s   -2
    IL_0002:  newobj     instance void Game.CarpetBlock/'<GetCreativeValues>d__5'::.ctor(int32)
    IL_0007:  ret
  } // end of method CarpetBlock::GetCreativeValues

  .method public hidebysig virtual instance void 
          GetDropValues(class Game.SubsystemTerrain subsystemTerrain,
                        int32 oldValue,
                        int32 newValue,
                        int32 toolLevel,
                        class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue> dropValues,
                        [out] bool& showDebris) cil managed
  {
    // 代码大小       65 (0x41)
    .maxstack  5
    .locals init (int32 V_0,
             valuetype Game.BlockDropValue V_1)
    IL_0000:  ldarg.s    showDebris
    IL_0002:  ldc.i4.1
    IL_0003:  stind.i1
    IL_0004:  ldarg.s    toolLevel
    IL_0006:  ldarg.0
    IL_0007:  ldfld      int32 Game.Block::RequiredToolLevel
    IL_000c:  blt.s      IL_0040

    IL_000e:  ldarg.2
    IL_000f:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0014:  stloc.0
    IL_0015:  ldarg.s    dropValues
    IL_0017:  ldloca.s   V_1
    IL_0019:  initobj    Game.BlockDropValue
    IL_001f:  ldloca.s   V_1
    IL_0021:  ldc.i4     0xd0
    IL_0026:  ldc.i4.0
    IL_0027:  ldloc.0
    IL_0028:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_002d:  stfld      int32 Game.BlockDropValue::Value
    IL_0032:  ldloca.s   V_1
    IL_0034:  ldc.i4.1
    IL_0035:  stfld      int32 Game.BlockDropValue::Count
    IL_003a:  ldloc.1
    IL_003b:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue>::Add(!0)
    IL_0040:  ret
  } // end of method CarpetBlock::GetDropValues

  .method public hidebysig virtual instance class Game.BlockDebrisParticleSystem 
          CreateDebrisParticleSystem(class Game.SubsystemTerrain subsystemTerrain,
                                     valuetype [Engine]Engine.Vector3 position,
                                     int32 'value',
                                     float32 strength) cil managed
  {
    // 代码大小       48 (0x30)
    .maxstack  6
    .locals init (int32 V_0,
             valuetype [Engine]Engine.Color V_1)
    IL_0000:  ldarg.3
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  stloc.0
    IL_0007:  ldarg.1
    IL_0008:  ldloc.0
    IL_0009:  call       int32 Game.CarpetBlock::GetColor(int32)
    IL_000e:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_0013:  call       valuetype [Engine]Engine.Color Game.SubsystemPalette::GetFabricColor(class Game.SubsystemTerrain,
                                                                                              valuetype [System.Runtime]System.Nullable`1<int32>)
    IL_0018:  stloc.1
    IL_0019:  ldarg.1
    IL_001a:  ldarg.2
    IL_001b:  ldarg.s    strength
    IL_001d:  ldarg.0
    IL_001e:  ldfld      float32 Game.Block::DestructionDebrisScale
    IL_0023:  ldloc.1
    IL_0024:  ldarg.0
    IL_0025:  ldfld      int32 Game.Block::DefaultTextureSlot
    IL_002a:  newobj     instance void Game.BlockDebrisParticleSystem::.ctor(class Game.SubsystemTerrain,
                                                                             valuetype [Engine]Engine.Vector3,
                                                                             float32,
                                                                             float32,
                                                                             valuetype [Engine]Engine.Color,
                                                                             int32)
    IL_002f:  ret
  } // end of method CarpetBlock::CreateDebrisParticleSystem

  .method public hidebysig virtual instance class Game.CraftingRecipe 
          GetAdHocCraftingRecipe(class Game.SubsystemTerrain subsystemTerrain,
                                 string[] ingredients,
                                 float32 heatLevel) cil managed
  {
    // 代码大小       716 (0x2cc)
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
             class Game.Block V_10,
             int32 V_11,
             class Game.CraftingRecipe V_12,
             int32 V_13,
             class Game.Block V_14)
    IL_0000:  ldarg.3
    IL_0001:  ldc.r4     1.
    IL_0006:  bge.un.s   IL_000a

    IL_0008:  ldnull
    IL_0009:  ret

    IL_000a:  ldarg.2
    IL_000b:  ldsfld     class [System.Runtime]System.Func`2<string,bool> Game.CarpetBlock/'<>c'::'<>9__8_0'
    IL_0010:  dup
    IL_0011:  brtrue.s   IL_002a

    IL_0013:  pop
    IL_0014:  ldsfld     class Game.CarpetBlock/'<>c' Game.CarpetBlock/'<>c'::'<>9'
    IL_0019:  ldftn      instance bool Game.CarpetBlock/'<>c'::'<GetAdHocCraftingRecipe>b__8_0'(string)
    IL_001f:  newobj     instance void class [System.Runtime]System.Func`2<string,bool>::.ctor(object,
                                                                                               native int)
    IL_0024:  dup
    IL_0025:  stsfld     class [System.Runtime]System.Func`2<string,bool> Game.CarpetBlock/'<>c'::'<>9__8_0'
    IL_002a:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<string>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                class [System.Runtime]System.Func`2<!!0,bool>)
    IL_002f:  call       class [System.Collections]System.Collections.Generic.List`1<!!0> [System.Linq]System.Linq.Enumerable::ToList<string>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_0034:  stloc.0
    IL_0035:  ldloc.0
    IL_0036:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<string>::get_Count()
    IL_003b:  ldc.i4.2
    IL_003c:  bne.un     IL_02ca

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
      IL_006b:  ldc.i4     0xd0
      IL_0070:  ldelem.ref
      IL_0071:  ldfld      string Game.Block::CraftingId
      IL_0076:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_007b:  brfalse.s  IL_009e

      IL_007d:  ldc.i4     0xd0
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
    IL_012d:  brfalse    IL_0220

    IL_0132:  ldloc.3
    IL_0133:  brfalse    IL_0220

    IL_0138:  ldloc.3
    IL_0139:  call       int32 Game.Terrain::ExtractData(int32)
    IL_013e:  stloc.s    V_7
    IL_0140:  ldloc.1
    IL_0141:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0146:  call       int32 Game.PaintBucketBlock::GetColor(int32)
    IL_014b:  stloc.s    V_8
    IL_014d:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0152:  ldc.i4     0x81
    IL_0157:  ldelem.ref
    IL_0158:  ldloc.1
    IL_0159:  callvirt   instance int32 Game.Block::GetDamage(int32)
    IL_015e:  stloc.s    V_9
    IL_0160:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0165:  ldc.i4     0x81
    IL_016a:  ldelem.ref
    IL_016b:  stloc.s    V_10
    IL_016d:  ldloc.s    V_7
    IL_016f:  ldloc.s    V_8
    IL_0171:  call       int32 Game.PaintBucketBlock::CombineColors(int32,
                                                                    int32)
    IL_0176:  stloc.s    V_11
    IL_0178:  ldloc.s    V_11
    IL_017a:  ldloc.s    V_7
    IL_017c:  beq        IL_0220

    IL_0181:  newobj     instance void Game.CraftingRecipe::.ctor()
    IL_0186:  stloc.s    V_12
    IL_0188:  ldloc.s    V_12
    IL_018a:  ldc.i4.1
    IL_018b:  stfld      int32 Game.CraftingRecipe::ResultCount
    IL_0190:  ldloc.s    V_12
    IL_0192:  ldc.i4     0xd0
    IL_0197:  ldc.i4.0
    IL_0198:  ldloc.s    V_11
    IL_019a:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_019f:  stfld      int32 Game.CraftingRecipe::ResultValue
    IL_01a4:  ldloc.s    V_12
    IL_01a6:  ldc.i4.1
    IL_01a7:  stfld      int32 Game.CraftingRecipe::RemainsCount
    IL_01ac:  ldloc.s    V_12
    IL_01ae:  ldc.i4     0x81
    IL_01b3:  ldc.i4.0
    IL_01b4:  ldloc.s    V_8
    IL_01b6:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_01bb:  ldloc.s    V_9
    IL_01bd:  ldloc.s    V_10
    IL_01bf:  ldfld      int32 Game.Block::Durability
    IL_01c4:  ldc.i4.4
    IL_01c5:  div
    IL_01c6:  ldc.i4.1
    IL_01c7:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_01cc:  add
    IL_01cd:  call       int32 Game.BlocksManager::DamageItem(int32,
                                                              int32)
    IL_01d2:  stfld      int32 Game.CraftingRecipe::RemainsValue
    IL_01d7:  ldloc.s    V_12
    IL_01d9:  ldc.r4     1.
    IL_01de:  stfld      float32 Game.CraftingRecipe::RequiredHeatLevel
    IL_01e3:  ldloc.s    V_12
    IL_01e5:  ldstr      "Dye carpet {0}"
    IL_01ea:  ldc.i4.1
    IL_01eb:  newarr     [System.Runtime]System.Object
    IL_01f0:  dup
    IL_01f1:  ldc.i4.0
    IL_01f2:  ldarg.1
    IL_01f3:  ldloc.s    V_8
    IL_01f5:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_01fa:  ldnull
    IL_01fb:  call       string Game.SubsystemPalette::GetName(class Game.SubsystemTerrain,
                                                               valuetype [System.Runtime]System.Nullable`1<int32>,
                                                               string)
    IL_0200:  stelem.ref
    IL_0201:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0206:  stfld      string Game.CraftingRecipe::Description
    IL_020b:  ldloc.s    V_12
    IL_020d:  ldarg.2
    IL_020e:  callvirt   instance object [System.Runtime]System.Array::Clone()
    IL_0213:  castclass  string[]
    IL_0218:  stfld      string[] Game.CraftingRecipe::Ingredients
    IL_021d:  ldloc.s    V_12
    IL_021f:  ret

    IL_0220:  ldloc.2
    IL_0221:  brfalse    IL_02ca

    IL_0226:  ldloc.3
    IL_0227:  brfalse    IL_02ca

    IL_022c:  ldloc.3
    IL_022d:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0232:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0237:  ldc.i4     0x80
    IL_023c:  ldelem.ref
    IL_023d:  ldloc.2
    IL_023e:  callvirt   instance int32 Game.Block::GetDamage(int32)
    IL_0243:  stloc.s    V_13
    IL_0245:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_024a:  ldc.i4     0x80
    IL_024f:  ldelem.ref
    IL_0250:  stloc.s    V_14
    IL_0252:  brfalse.s  IL_02ca

    IL_0254:  newobj     instance void Game.CraftingRecipe::.ctor()
    IL_0259:  dup
    IL_025a:  ldc.i4.1
    IL_025b:  stfld      int32 Game.CraftingRecipe::ResultCount
    IL_0260:  dup
    IL_0261:  ldc.i4     0xd0
    IL_0266:  ldc.i4.0
    IL_0267:  ldc.i4.0
    IL_0268:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_026d:  stfld      int32 Game.CraftingRecipe::ResultValue
    IL_0272:  dup
    IL_0273:  ldc.i4.1
    IL_0274:  stfld      int32 Game.CraftingRecipe::RemainsCount
    IL_0279:  dup
    IL_027a:  ldc.i4     0x80
    IL_027f:  ldc.i4.0
    IL_0280:  ldc.i4.0
    IL_0281:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_0286:  ldloc.s    V_13
    IL_0288:  ldloc.s    V_14
    IL_028a:  ldfld      int32 Game.Block::Durability
    IL_028f:  ldc.i4.4
    IL_0290:  div
    IL_0291:  ldc.i4.1
    IL_0292:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_0297:  add
    IL_0298:  call       int32 Game.BlocksManager::DamageItem(int32,
                                                              int32)
    IL_029d:  stfld      int32 Game.CraftingRecipe::RemainsValue
    IL_02a2:  dup
    IL_02a3:  ldc.r4     1.
    IL_02a8:  stfld      float32 Game.CraftingRecipe::RequiredHeatLevel
    IL_02ad:  dup
    IL_02ae:  ldstr      "Undye carpet"
    IL_02b3:  stfld      string Game.CraftingRecipe::Description
    IL_02b8:  dup
    IL_02b9:  ldarg.2
    IL_02ba:  callvirt   instance object [System.Runtime]System.Array::Clone()
    IL_02bf:  castclass  string[]
    IL_02c4:  stfld      string[] Game.CraftingRecipe::Ingredients
    IL_02c9:  ret

    IL_02ca:  ldnull
    IL_02cb:  ret
  } // end of method CarpetBlock::GetAdHocCraftingRecipe

  .method public hidebysig virtual instance valuetype [Engine]Engine.BoundingBox[] 
          GetCustomCollisionBoxes(class Game.SubsystemTerrain terrain,
                                  int32 'value') cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.BoundingBox[] Game.CarpetBlock::m_collisionBoxes
    IL_0006:  ret
  } // end of method CarpetBlock::GetCustomCollisionBoxes

  .method public hidebysig virtual instance string 
          GetDisplayName(class Game.SubsystemTerrain subsystemTerrain,
                         int32 'value') cil managed
  {
    // 代码大小       25 (0x19)
    .maxstack  3
    .locals init (int32 V_0)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  stloc.0
    IL_0007:  ldarg.1
    IL_0008:  ldloc.0
    IL_0009:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_000e:  ldstr      "Carpet"
    IL_0013:  call       string Game.SubsystemPalette::GetName(class Game.SubsystemTerrain,
                                                               valuetype [System.Runtime]System.Nullable`1<int32>,
                                                               string)
    IL_0018:  ret
  } // end of method CarpetBlock::GetDisplayName

  .method public hidebysig static int32  GetColor(int32 data) cil managed
  {
    // 代码大小       5 (0x5)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.s   15
    IL_0003:  and
    IL_0004:  ret
  } // end of method CarpetBlock::GetColor

  .method public hidebysig static int32  SetColor(int32 data,
                                                  int32 color) cil managed
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
  } // end of method CarpetBlock::SetColor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       71 (0x47)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  newarr     [Engine]Engine.BoundingBox
    IL_0007:  dup
    IL_0008:  ldc.i4.0
    IL_0009:  ldc.r4     0.0
    IL_000e:  ldc.r4     0.0
    IL_0013:  ldc.r4     0.0
    IL_0018:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_001d:  ldc.r4     1.
    IL_0022:  ldc.r4     6.25e-002
    IL_0027:  ldc.r4     1.
    IL_002c:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0031:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_0036:  stelem     [Engine]Engine.BoundingBox
    IL_003b:  stfld      valuetype [Engine]Engine.BoundingBox[] Game.CarpetBlock::m_collisionBoxes
    IL_0040:  ldarg.0
    IL_0041:  call       instance void Game.CubeBlock::.ctor()
    IL_0046:  ret
  } // end of method CarpetBlock::.ctor

} // end of class Game.CarpetBlock