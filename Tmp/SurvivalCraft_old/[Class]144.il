.class public abstract auto ansi beforefieldinit Game.PaintedCubeBlock
       extends Game.CubeBlock
       implements Game.IPaintableBlock
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
    .field public class Game.PaintedCubeBlock '<>4__this'
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
      IL_0008:  stfld      int32 Game.PaintedCubeBlock/'<GetCreativeValues>d__5'::'<>1__state'
      IL_000d:  ldarg.0
      IL_000e:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0013:  stfld      int32 Game.PaintedCubeBlock/'<GetCreativeValues>d__5'::'<>l__initialThreadId'
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
      // 代码大小       181 (0xb5)
      .maxstack  5
      .locals init (int32 V_0,
               valuetype [System.Runtime]System.Nullable`1<int32> V_1,
               int32 V_2)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.PaintedCubeBlock/'<GetCreativeValues>d__5'::'<>1__state'
      IL_0006:  stloc.0
      IL_0007:  ldloc.0
      IL_0008:  switch     ( 
                            IL_001b,
                            IL_0051,
                            IL_0092)
      IL_0019:  ldc.i4.0
      IL_001a:  ret

      IL_001b:  ldarg.0
      IL_001c:  ldc.i4.m1
      IL_001d:  stfld      int32 Game.PaintedCubeBlock/'<GetCreativeValues>d__5'::'<>1__state'
      IL_0022:  ldarg.0
      IL_0023:  ldarg.0
      IL_0024:  ldfld      class Game.PaintedCubeBlock Game.PaintedCubeBlock/'<GetCreativeValues>d__5'::'<>4__this'
      IL_0029:  ldfld      int32 Game.Block::BlockIndex
      IL_002e:  ldc.i4.0
      IL_002f:  ldc.i4.0
      IL_0030:  ldloca.s   V_1
      IL_0032:  initobj    valuetype [System.Runtime]System.Nullable`1<int32>
      IL_0038:  ldloc.1
      IL_0039:  call       int32 Game.PaintedCubeBlock::SetColor(int32,
                                                                 valuetype [System.Runtime]System.Nullable`1<int32>)
      IL_003e:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                              int32,
                                                              int32)
      IL_0043:  stfld      int32 Game.PaintedCubeBlock/'<GetCreativeValues>d__5'::'<>2__current'
      IL_0048:  ldarg.0
      IL_0049:  ldc.i4.1
      IL_004a:  stfld      int32 Game.PaintedCubeBlock/'<GetCreativeValues>d__5'::'<>1__state'
      IL_004f:  ldc.i4.1
      IL_0050:  ret

      IL_0051:  ldarg.0
      IL_0052:  ldc.i4.m1
      IL_0053:  stfld      int32 Game.PaintedCubeBlock/'<GetCreativeValues>d__5'::'<>1__state'
      IL_0058:  ldarg.0
      IL_0059:  ldc.i4.0
      IL_005a:  stfld      int32 Game.PaintedCubeBlock/'<GetCreativeValues>d__5'::'<i>5__1'
      IL_005f:  br.s       IL_00a9

      IL_0061:  ldarg.0
      IL_0062:  ldarg.0
      IL_0063:  ldfld      class Game.PaintedCubeBlock Game.PaintedCubeBlock/'<GetCreativeValues>d__5'::'<>4__this'
      IL_0068:  ldfld      int32 Game.Block::BlockIndex
      IL_006d:  ldc.i4.0
      IL_006e:  ldc.i4.0
      IL_006f:  ldarg.0
      IL_0070:  ldfld      int32 Game.PaintedCubeBlock/'<GetCreativeValues>d__5'::'<i>5__1'
      IL_0075:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
      IL_007a:  call       int32 Game.PaintedCubeBlock::SetColor(int32,
                                                                 valuetype [System.Runtime]System.Nullable`1<int32>)
      IL_007f:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                              int32,
                                                              int32)
      IL_0084:  stfld      int32 Game.PaintedCubeBlock/'<GetCreativeValues>d__5'::'<>2__current'
      IL_0089:  ldarg.0
      IL_008a:  ldc.i4.2
      IL_008b:  stfld      int32 Game.PaintedCubeBlock/'<GetCreativeValues>d__5'::'<>1__state'
      IL_0090:  ldc.i4.1
      IL_0091:  ret

      IL_0092:  ldarg.0
      IL_0093:  ldc.i4.m1
      IL_0094:  stfld      int32 Game.PaintedCubeBlock/'<GetCreativeValues>d__5'::'<>1__state'
      IL_0099:  ldarg.0
      IL_009a:  ldfld      int32 Game.PaintedCubeBlock/'<GetCreativeValues>d__5'::'<i>5__1'
      IL_009f:  ldc.i4.1
      IL_00a0:  add
      IL_00a1:  stloc.2
      IL_00a2:  ldarg.0
      IL_00a3:  ldloc.2
      IL_00a4:  stfld      int32 Game.PaintedCubeBlock/'<GetCreativeValues>d__5'::'<i>5__1'
      IL_00a9:  ldarg.0
      IL_00aa:  ldfld      int32 Game.PaintedCubeBlock/'<GetCreativeValues>d__5'::'<i>5__1'
      IL_00af:  ldc.i4.s   16
      IL_00b1:  blt.s      IL_0061

      IL_00b3:  ldc.i4.0
      IL_00b4:  ret
    } // end of method '<GetCreativeValues>d__5'::MoveNext

    .method private hidebysig newslot specialname virtual final 
            instance int32  'System.Collections.Generic.IEnumerator<System.Int32>.get_Current'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32>::get_Current()
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.PaintedCubeBlock/'<GetCreativeValues>d__5'::'<>2__current'
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
      IL_0001:  ldfld      int32 Game.PaintedCubeBlock/'<GetCreativeValues>d__5'::'<>2__current'
      IL_0006:  box        [System.Runtime]System.Int32
      IL_000b:  ret
    } // end of method '<GetCreativeValues>d__5'::System.Collections.IEnumerator.get_Current

    .method private hidebysig newslot virtual final 
            instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32> 
            'System.Collections.Generic.IEnumerable<System.Int32>.GetEnumerator'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32>::GetEnumerator()
      // 代码大小       55 (0x37)
      .maxstack  2
      .locals init (class Game.PaintedCubeBlock/'<GetCreativeValues>d__5' V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.PaintedCubeBlock/'<GetCreativeValues>d__5'::'<>1__state'
      IL_0006:  ldc.i4.s   -2
      IL_0008:  bne.un.s   IL_0022

      IL_000a:  ldarg.0
      IL_000b:  ldfld      int32 Game.PaintedCubeBlock/'<GetCreativeValues>d__5'::'<>l__initialThreadId'
      IL_0010:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0015:  bne.un.s   IL_0022

      IL_0017:  ldarg.0
      IL_0018:  ldc.i4.0
      IL_0019:  stfld      int32 Game.PaintedCubeBlock/'<GetCreativeValues>d__5'::'<>1__state'
      IL_001e:  ldarg.0
      IL_001f:  stloc.0
      IL_0020:  br.s       IL_0035

      IL_0022:  ldc.i4.0
      IL_0023:  newobj     instance void Game.PaintedCubeBlock/'<GetCreativeValues>d__5'::.ctor(int32)
      IL_0028:  stloc.0
      IL_0029:  ldloc.0
      IL_002a:  ldarg.0
      IL_002b:  ldfld      class Game.PaintedCubeBlock Game.PaintedCubeBlock/'<GetCreativeValues>d__5'::'<>4__this'
      IL_0030:  stfld      class Game.PaintedCubeBlock Game.PaintedCubeBlock/'<GetCreativeValues>d__5'::'<>4__this'
      IL_0035:  ldloc.0
      IL_0036:  ret
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
      IL_0001:  call       instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32> Game.PaintedCubeBlock/'<GetCreativeValues>d__5'::'System.Collections.Generic.IEnumerable<System.Int32>.GetEnumerator'()
      IL_0006:  ret
    } // end of method '<GetCreativeValues>d__5'::System.Collections.IEnumerable.GetEnumerator

    .property instance int32 'System.Collections.Generic.IEnumerator<System.Int32>.Current'()
    {
      .get instance int32 Game.PaintedCubeBlock/'<GetCreativeValues>d__5'::'System.Collections.Generic.IEnumerator<System.Int32>.get_Current'()
    } // end of property '<GetCreativeValues>d__5'::'System.Collections.Generic.IEnumerator<System.Int32>.Current'
    .property instance object System.Collections.IEnumerator.Current()
    {
      .get instance object Game.PaintedCubeBlock/'<GetCreativeValues>d__5'::System.Collections.IEnumerator.get_Current()
    } // end of property '<GetCreativeValues>d__5'::System.Collections.IEnumerator.Current
  } // end of class '<GetCreativeValues>d__5'

  .field private int32 m_coloredTextureSlot
  .method family hidebysig specialname rtspecialname 
          instance void  .ctor(int32 coloredTextureSlot) cil managed
  {
    // 代码大小       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.CubeBlock::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  stfld      int32 Game.PaintedCubeBlock::m_coloredTextureSlot
    IL_000d:  ret
  } // end of method PaintedCubeBlock::.ctor

  .method public hidebysig virtual instance int32 
          GetFaceTextureSlot(int32 face,
                             int32 'value') cil managed
  {
    // 代码大小       27 (0x1b)
    .maxstack  8
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  call       bool Game.PaintedCubeBlock::IsColored(int32)
    IL_000b:  brtrue.s   IL_0014

    IL_000d:  ldarg.0
    IL_000e:  ldfld      int32 Game.Block::DefaultTextureSlot
    IL_0013:  ret

    IL_0014:  ldarg.0
    IL_0015:  ldfld      int32 Game.PaintedCubeBlock::m_coloredTextureSlot
    IL_001a:  ret
  } // end of method PaintedCubeBlock::GetFaceTextureSlot

  .method public hidebysig virtual instance void 
          GenerateTerrainVertices(class Game.BlockGeometryGenerator generator,
                                  class Game.TerrainGeometrySubsets geometry,
                                  int32 'value',
                                  int32 x,
                                  int32 y,
                                  int32 z) cil managed
  {
    // 代码大小       42 (0x2a)
    .maxstack  8
    .locals init (int32 V_0,
             valuetype [Engine]Engine.Color V_1)
    IL_0000:  ldarg.3
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  stloc.0
    IL_0007:  ldarg.1
    IL_0008:  ldloc.0
    IL_0009:  call       valuetype [System.Runtime]System.Nullable`1<int32> Game.PaintedCubeBlock::GetColor(int32)
    IL_000e:  call       valuetype [Engine]Engine.Color Game.SubsystemPalette::GetColor(class Game.BlockGeometryGenerator,
                                                                                        valuetype [System.Runtime]System.Nullable`1<int32>)
    IL_0013:  stloc.1
    IL_0014:  ldarg.1
    IL_0015:  ldarg.0
    IL_0016:  ldarg.3
    IL_0017:  ldarg.s    x
    IL_0019:  ldarg.s    y
    IL_001b:  ldarg.s    z
    IL_001d:  ldloc.1
    IL_001e:  ldarg.2
    IL_001f:  ldfld      class Game.TerrainGeometrySubset[] Game.TerrainGeometrySubsets::OpaqueSubsetsByFace
    IL_0024:  callvirt   instance void Game.BlockGeometryGenerator::GenerateCubeVertices(class Game.Block,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         class Game.TerrainGeometrySubset[])
    IL_0029:  ret
  } // end of method PaintedCubeBlock::GenerateTerrainVertices

  .method public hidebysig virtual instance void 
          DrawBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D primitivesRenderer,
                    int32 'value',
                    valuetype [Engine]Engine.Color color,
                    float32 size,
                    valuetype [Engine]Engine.Matrix& matrix,
                    class Game.DrawBlockEnvironmentData environmentData) cil managed
  {
    // 代码大小       49 (0x31)
    .maxstack  7
    .locals init (int32 V_0)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  stloc.0
    IL_0007:  ldarg.3
    IL_0008:  ldarg.s    environmentData
    IL_000a:  ldloc.0
    IL_000b:  call       valuetype [System.Runtime]System.Nullable`1<int32> Game.PaintedCubeBlock::GetColor(int32)
    IL_0010:  call       valuetype [Engine]Engine.Color Game.SubsystemPalette::GetColor(class Game.DrawBlockEnvironmentData,
                                                                                        valuetype [System.Runtime]System.Nullable`1<int32>)
    IL_0015:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color)
    IL_001a:  starg.s    color
    IL_001c:  ldarg.1
    IL_001d:  ldarg.2
    IL_001e:  ldarg.s    size
    IL_0020:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32)
    IL_0025:  ldarg.s    matrix
    IL_0027:  ldarg.3
    IL_0028:  ldarg.3
    IL_0029:  ldarg.s    environmentData
    IL_002b:  call       void Game.BlocksManager::DrawCubeBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                                int32,
                                                                valuetype [Engine]Engine.Vector3,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                valuetype [Engine]Engine.Color,
                                                                valuetype [Engine]Engine.Color,
                                                                class Game.DrawBlockEnvironmentData)
    IL_0030:  ret
  } // end of method PaintedCubeBlock::DrawBlock

  .method public hidebysig virtual instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32> 
          GetCreativeValues() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.IteratorStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 2D 47 61 6D 65 2E 50 61 69 6E 74 65 64 43   // ..-Game.PaintedC
                                                                                                                                                      75 62 65 42 6C 6F 63 6B 2B 3C 47 65 74 43 72 65   // ubeBlock+<GetCre
                                                                                                                                                      61 74 69 76 65 56 61 6C 75 65 73 3E 64 5F 5F 35   // ativeValues>d__5
                                                                                                                                                      00 00 ) 
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  ldc.i4.s   -2
    IL_0002:  newobj     instance void Game.PaintedCubeBlock/'<GetCreativeValues>d__5'::.ctor(int32)
    IL_0007:  dup
    IL_0008:  ldarg.0
    IL_0009:  stfld      class Game.PaintedCubeBlock Game.PaintedCubeBlock/'<GetCreativeValues>d__5'::'<>4__this'
    IL_000e:  ret
  } // end of method PaintedCubeBlock::GetCreativeValues

  .method public hidebysig virtual instance void 
          GetDropValues(class Game.SubsystemTerrain subsystemTerrain,
                        int32 oldValue,
                        int32 newValue,
                        int32 toolLevel,
                        class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue> dropValues,
                        [out] bool& showDebris) cil managed
  {
    // 代码大小       104 (0x68)
    .maxstack  7
    .locals init (int32 V_0,
             valuetype [System.Runtime]System.Nullable`1<int32> V_1,
             valuetype Game.BlockDropValue V_2)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  call       valuetype [System.Runtime]System.Nullable`1<int32> Game.PaintedCubeBlock::GetColor(int32)
    IL_000d:  stloc.1
    IL_000e:  ldloca.s   V_1
    IL_0010:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0015:  brfalse.s  IL_0058

    IL_0017:  ldarg.s    showDebris
    IL_0019:  ldc.i4.1
    IL_001a:  stind.i1
    IL_001b:  ldarg.s    toolLevel
    IL_001d:  ldarg.0
    IL_001e:  ldfld      int32 Game.Block::RequiredToolLevel
    IL_0023:  blt.s      IL_0067

    IL_0025:  ldarg.s    dropValues
    IL_0027:  ldloca.s   V_2
    IL_0029:  initobj    Game.BlockDropValue
    IL_002f:  ldloca.s   V_2
    IL_0031:  ldarg.0
    IL_0032:  ldfld      int32 Game.Block::DefaultDropContent
    IL_0037:  ldc.i4.0
    IL_0038:  ldloc.0
    IL_0039:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_003e:  stfld      int32 Game.BlockDropValue::Value
    IL_0043:  ldloca.s   V_2
    IL_0045:  ldarg.0
    IL_0046:  ldfld      float32 Game.Block::DefaultDropCount
    IL_004b:  conv.i4
    IL_004c:  stfld      int32 Game.BlockDropValue::Count
    IL_0051:  ldloc.2
    IL_0052:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue>::Add(!0)
    IL_0057:  ret

    IL_0058:  ldarg.0
    IL_0059:  ldarg.1
    IL_005a:  ldarg.2
    IL_005b:  ldarg.3
    IL_005c:  ldarg.s    toolLevel
    IL_005e:  ldarg.s    dropValues
    IL_0060:  ldarg.s    showDebris
    IL_0062:  call       instance void Game.Block::GetDropValues(class Game.SubsystemTerrain,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue>,
                                                                 bool&)
    IL_0067:  ret
  } // end of method PaintedCubeBlock::GetDropValues

  .method public hidebysig virtual instance class Game.BlockDebrisParticleSystem 
          CreateDebrisParticleSystem(class Game.SubsystemTerrain subsystemTerrain,
                                     valuetype [Engine]Engine.Vector3 position,
                                     int32 'value',
                                     float32 strength) cil managed
  {
    // 代码大小       45 (0x2d)
    .maxstack  8
    .locals init (int32 V_0,
             valuetype [Engine]Engine.Color V_1)
    IL_0000:  ldarg.3
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  stloc.0
    IL_0007:  ldarg.1
    IL_0008:  ldloc.0
    IL_0009:  call       valuetype [System.Runtime]System.Nullable`1<int32> Game.PaintedCubeBlock::GetColor(int32)
    IL_000e:  call       valuetype [Engine]Engine.Color Game.SubsystemPalette::GetColor(class Game.SubsystemTerrain,
                                                                                        valuetype [System.Runtime]System.Nullable`1<int32>)
    IL_0013:  stloc.1
    IL_0014:  ldarg.1
    IL_0015:  ldarg.2
    IL_0016:  ldarg.s    strength
    IL_0018:  ldarg.0
    IL_0019:  ldfld      float32 Game.Block::DestructionDebrisScale
    IL_001e:  ldloc.1
    IL_001f:  ldarg.0
    IL_0020:  ldc.i4.0
    IL_0021:  ldarg.3
    IL_0022:  callvirt   instance int32 Game.Block::GetFaceTextureSlot(int32,
                                                                       int32)
    IL_0027:  newobj     instance void Game.BlockDebrisParticleSystem::.ctor(class Game.SubsystemTerrain,
                                                                             valuetype [Engine]Engine.Vector3,
                                                                             float32,
                                                                             float32,
                                                                             valuetype [Engine]Engine.Color,
                                                                             int32)
    IL_002c:  ret
  } // end of method PaintedCubeBlock::CreateDebrisParticleSystem

  .method public hidebysig virtual instance string 
          GetDisplayName(class Game.SubsystemTerrain subsystemTerrain,
                         int32 'value') cil managed
  {
    // 代码大小       26 (0x1a)
    .maxstack  3
    .locals init (int32 V_0)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  stloc.0
    IL_0007:  ldarg.1
    IL_0008:  ldloc.0
    IL_0009:  call       valuetype [System.Runtime]System.Nullable`1<int32> Game.PaintedCubeBlock::GetColor(int32)
    IL_000e:  ldarg.0
    IL_000f:  ldfld      string Game.Block::DefaultDisplayName
    IL_0014:  call       string Game.SubsystemPalette::GetName(class Game.SubsystemTerrain,
                                                               valuetype [System.Runtime]System.Nullable`1<int32>,
                                                               string)
    IL_0019:  ret
  } // end of method PaintedCubeBlock::GetDisplayName

  .method public hidebysig virtual instance string 
          GetCategory(int32 'value') cil managed
  {
    // 代码大小       35 (0x23)
    .maxstack  2
    .locals init (valuetype [System.Runtime]System.Nullable`1<int32> V_0)
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  call       valuetype [System.Runtime]System.Nullable`1<int32> Game.PaintedCubeBlock::GetColor(int32)
    IL_000b:  stloc.0
    IL_000c:  ldloca.s   V_0
    IL_000e:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0013:  brtrue.s   IL_001d

    IL_0015:  ldarg.0
    IL_0016:  ldarg.1
    IL_0017:  call       instance string Game.Block::GetCategory(int32)
    IL_001c:  ret

    IL_001d:  ldstr      "Painted"
    IL_0022:  ret
  } // end of method PaintedCubeBlock::GetCategory

  .method public hidebysig newslot virtual final 
          instance valuetype [System.Runtime]System.Nullable`1<int32> 
          GetPaintColor(int32 'value') cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  call       valuetype [System.Runtime]System.Nullable`1<int32> Game.PaintedCubeBlock::GetColor(int32)
    IL_000b:  ret
  } // end of method PaintedCubeBlock::GetPaintColor

  .method public hidebysig newslot virtual final 
          instance int32  Paint(class Game.SubsystemTerrain terrain,
                                int32 'value',
                                valuetype [System.Runtime]System.Nullable`1<int32> color) cil managed
  {
    // 代码大小       21 (0x15)
    .maxstack  3
    .locals init (int32 V_0)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  stloc.0
    IL_0007:  ldarg.2
    IL_0008:  ldloc.0
    IL_0009:  ldarg.3
    IL_000a:  call       int32 Game.PaintedCubeBlock::SetColor(int32,
                                                               valuetype [System.Runtime]System.Nullable`1<int32>)
    IL_000f:  call       int32 Game.Terrain::ReplaceData(int32,
                                                         int32)
    IL_0014:  ret
  } // end of method PaintedCubeBlock::Paint

  .method public hidebysig static bool  IsColored(int32 data) cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  and
    IL_0003:  ldc.i4.0
    IL_0004:  cgt.un
    IL_0006:  ret
  } // end of method PaintedCubeBlock::IsColored

  .method public hidebysig static valuetype [System.Runtime]System.Nullable`1<int32> 
          GetColor(int32 data) cil managed
  {
    // 代码大小       27 (0x1b)
    .maxstack  2
    .locals init (valuetype [System.Runtime]System.Nullable`1<int32> V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  and
    IL_0003:  brfalse.s  IL_0011

    IL_0005:  ldarg.0
    IL_0006:  ldc.i4.1
    IL_0007:  shr
    IL_0008:  ldc.i4.s   15
    IL_000a:  and
    IL_000b:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_0010:  ret

    IL_0011:  ldloca.s   V_0
    IL_0013:  initobj    valuetype [System.Runtime]System.Nullable`1<int32>
    IL_0019:  ldloc.0
    IL_001a:  ret
  } // end of method PaintedCubeBlock::GetColor

  .method public hidebysig static int32  SetColor(int32 data,
                                                  valuetype [System.Runtime]System.Nullable`1<int32> color) cil managed
  {
    // 代码大小       31 (0x1f)
    .maxstack  8
    IL_0000:  ldarga.s   color
    IL_0002:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0007:  brfalse.s  IL_001a

    IL_0009:  ldarg.0
    IL_000a:  ldc.i4.s   -32
    IL_000c:  and
    IL_000d:  ldc.i4.1
    IL_000e:  or
    IL_000f:  ldarga.s   color
    IL_0011:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
    IL_0016:  ldc.i4.1
    IL_0017:  shl
    IL_0018:  or
    IL_0019:  ret

    IL_001a:  ldarg.0
    IL_001b:  ldc.i4.s   -32
    IL_001d:  and
    IL_001e:  ret
  } // end of method PaintedCubeBlock::SetColor

} // end of class Game.PaintedCubeBlock