.class public auto ansi beforefieldinit Game.OneLedBlock
       extends Game.MountedElectricElementBlock
{
  .class auto ansi sealed nested private beforefieldinit '<GetProceduralCraftingRecipes>d__5'
         extends [System.Runtime]System.Object
         implements class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.CraftingRecipe>,
                    [System.Runtime]System.Collections.IEnumerable,
                    class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.CraftingRecipe>,
                    [System.Runtime]System.Collections.IEnumerator,
                    [System.Runtime]System.IDisposable
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field private int32 '<>1__state'
    .field private class Game.CraftingRecipe '<>2__current'
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
      IL_0008:  stfld      int32 Game.OneLedBlock/'<GetProceduralCraftingRecipes>d__5'::'<>1__state'
      IL_000d:  ldarg.0
      IL_000e:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0013:  stfld      int32 Game.OneLedBlock/'<GetProceduralCraftingRecipes>d__5'::'<>l__initialThreadId'
      IL_0018:  ret
    } // end of method '<GetProceduralCraftingRecipes>d__5'::.ctor

    .method private hidebysig newslot virtual final 
            instance void  System.IDisposable.Dispose() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.IDisposable::Dispose
      // 代码大小       1 (0x1)
      .maxstack  8
      IL_0000:  ret
    } // end of method '<GetProceduralCraftingRecipes>d__5'::System.IDisposable.Dispose

    .method private hidebysig newslot virtual final 
            instance bool  MoveNext() cil managed
    {
      .override [System.Runtime]System.Collections.IEnumerator::MoveNext
      // 代码大小       195 (0xc3)
      .maxstack  5
      .locals init (int32 V_0,
               class Game.CraftingRecipe V_1)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.OneLedBlock/'<GetProceduralCraftingRecipes>d__5'::'<>1__state'
      IL_0006:  stloc.0
      IL_0007:  ldloc.0
      IL_0008:  brfalse.s  IL_0013

      IL_000a:  ldloc.0
      IL_000b:  ldc.i4.1
      IL_000c:  beq        IL_00ba

      IL_0011:  ldc.i4.0
      IL_0012:  ret

      IL_0013:  ldarg.0
      IL_0014:  ldc.i4.m1
      IL_0015:  stfld      int32 Game.OneLedBlock/'<GetProceduralCraftingRecipes>d__5'::'<>1__state'
      IL_001a:  newobj     instance void Game.CraftingRecipe::.ctor()
      IL_001f:  dup
      IL_0020:  ldc.i4.4
      IL_0021:  stfld      int32 Game.CraftingRecipe::ResultCount
      IL_0026:  dup
      IL_0027:  ldc.i4     0xfd
      IL_002c:  ldc.i4.0
      IL_002d:  ldc.i4.0
      IL_002e:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                              int32,
                                                              int32)
      IL_0033:  stfld      int32 Game.CraftingRecipe::ResultValue
      IL_0038:  dup
      IL_0039:  ldc.r4     0.0
      IL_003e:  stfld      float32 Game.CraftingRecipe::RequiredHeatLevel
      IL_0043:  dup
      IL_0044:  ldstr      "Make colored 1-LEDs from copper, glass and paint"
      IL_0049:  stfld      string Game.CraftingRecipe::Description
      IL_004e:  stloc.1
      IL_004f:  ldloc.1
      IL_0050:  ldfld      string[] Game.CraftingRecipe::Ingredients
      IL_0055:  ldc.i4.0
      IL_0056:  ldstr      "glass"
      IL_005b:  stelem.ref
      IL_005c:  ldloc.1
      IL_005d:  ldfld      string[] Game.CraftingRecipe::Ingredients
      IL_0062:  ldc.i4.1
      IL_0063:  ldstr      "glass"
      IL_0068:  stelem.ref
      IL_0069:  ldloc.1
      IL_006a:  ldfld      string[] Game.CraftingRecipe::Ingredients
      IL_006f:  ldc.i4.2
      IL_0070:  ldstr      "glass"
      IL_0075:  stelem.ref
      IL_0076:  ldloc.1
      IL_0077:  ldfld      string[] Game.CraftingRecipe::Ingredients
      IL_007c:  ldc.i4.4
      IL_007d:  ldstr      "wire"
      IL_0082:  stelem.ref
      IL_0083:  ldloc.1
      IL_0084:  ldfld      string[] Game.CraftingRecipe::Ingredients
      IL_0089:  ldc.i4.6
      IL_008a:  ldstr      "copperingot"
      IL_008f:  stelem.ref
      IL_0090:  ldloc.1
      IL_0091:  ldfld      string[] Game.CraftingRecipe::Ingredients
      IL_0096:  ldc.i4.7
      IL_0097:  ldstr      "copperingot"
      IL_009c:  stelem.ref
      IL_009d:  ldloc.1
      IL_009e:  ldfld      string[] Game.CraftingRecipe::Ingredients
      IL_00a3:  ldc.i4.8
      IL_00a4:  ldstr      "copperingot"
      IL_00a9:  stelem.ref
      IL_00aa:  ldarg.0
      IL_00ab:  ldloc.1
      IL_00ac:  stfld      class Game.CraftingRecipe Game.OneLedBlock/'<GetProceduralCraftingRecipes>d__5'::'<>2__current'
      IL_00b1:  ldarg.0
      IL_00b2:  ldc.i4.1
      IL_00b3:  stfld      int32 Game.OneLedBlock/'<GetProceduralCraftingRecipes>d__5'::'<>1__state'
      IL_00b8:  ldc.i4.1
      IL_00b9:  ret

      IL_00ba:  ldarg.0
      IL_00bb:  ldc.i4.m1
      IL_00bc:  stfld      int32 Game.OneLedBlock/'<GetProceduralCraftingRecipes>d__5'::'<>1__state'
      IL_00c1:  ldc.i4.0
      IL_00c2:  ret
    } // end of method '<GetProceduralCraftingRecipes>d__5'::MoveNext

    .method private hidebysig newslot specialname virtual final 
            instance class Game.CraftingRecipe 
            'System.Collections.Generic.IEnumerator<Game.CraftingRecipe>.get_Current'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.CraftingRecipe>::get_Current()
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.CraftingRecipe Game.OneLedBlock/'<GetProceduralCraftingRecipes>d__5'::'<>2__current'
      IL_0006:  ret
    } // end of method '<GetProceduralCraftingRecipes>d__5'::'System.Collections.Generic.IEnumerator<Game.CraftingRecipe>.get_Current'

    .method private hidebysig newslot virtual final 
            instance void  System.Collections.IEnumerator.Reset() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerator::Reset
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  newobj     instance void [System.Runtime]System.NotSupportedException::.ctor()
      IL_0005:  throw
    } // end of method '<GetProceduralCraftingRecipes>d__5'::System.Collections.IEnumerator.Reset

    .method private hidebysig newslot specialname virtual final 
            instance object  System.Collections.IEnumerator.get_Current() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerator::get_Current
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.CraftingRecipe Game.OneLedBlock/'<GetProceduralCraftingRecipes>d__5'::'<>2__current'
      IL_0006:  ret
    } // end of method '<GetProceduralCraftingRecipes>d__5'::System.Collections.IEnumerator.get_Current

    .method private hidebysig newslot virtual final 
            instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.CraftingRecipe> 
            'System.Collections.Generic.IEnumerable<Game.CraftingRecipe>.GetEnumerator'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.CraftingRecipe>::GetEnumerator()
      // 代码大小       43 (0x2b)
      .maxstack  2
      .locals init (class Game.OneLedBlock/'<GetProceduralCraftingRecipes>d__5' V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.OneLedBlock/'<GetProceduralCraftingRecipes>d__5'::'<>1__state'
      IL_0006:  ldc.i4.s   -2
      IL_0008:  bne.un.s   IL_0022

      IL_000a:  ldarg.0
      IL_000b:  ldfld      int32 Game.OneLedBlock/'<GetProceduralCraftingRecipes>d__5'::'<>l__initialThreadId'
      IL_0010:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0015:  bne.un.s   IL_0022

      IL_0017:  ldarg.0
      IL_0018:  ldc.i4.0
      IL_0019:  stfld      int32 Game.OneLedBlock/'<GetProceduralCraftingRecipes>d__5'::'<>1__state'
      IL_001e:  ldarg.0
      IL_001f:  stloc.0
      IL_0020:  br.s       IL_0029

      IL_0022:  ldc.i4.0
      IL_0023:  newobj     instance void Game.OneLedBlock/'<GetProceduralCraftingRecipes>d__5'::.ctor(int32)
      IL_0028:  stloc.0
      IL_0029:  ldloc.0
      IL_002a:  ret
    } // end of method '<GetProceduralCraftingRecipes>d__5'::'System.Collections.Generic.IEnumerable<Game.CraftingRecipe>.GetEnumerator'

    .method private hidebysig newslot virtual final 
            instance class [System.Runtime]System.Collections.IEnumerator 
            System.Collections.IEnumerable.GetEnumerator() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerable::GetEnumerator
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.CraftingRecipe> Game.OneLedBlock/'<GetProceduralCraftingRecipes>d__5'::'System.Collections.Generic.IEnumerable<Game.CraftingRecipe>.GetEnumerator'()
      IL_0006:  ret
    } // end of method '<GetProceduralCraftingRecipes>d__5'::System.Collections.IEnumerable.GetEnumerator

    .property instance class Game.CraftingRecipe
            'System.Collections.Generic.IEnumerator<Game.CraftingRecipe>.Current'()
    {
      .get instance class Game.CraftingRecipe Game.OneLedBlock/'<GetProceduralCraftingRecipes>d__5'::'System.Collections.Generic.IEnumerator<Game.CraftingRecipe>.get_Current'()
    } // end of property '<GetProceduralCraftingRecipes>d__5'::'System.Collections.Generic.IEnumerator<Game.CraftingRecipe>.Current'
    .property instance object System.Collections.IEnumerator.Current()
    {
      .get instance object Game.OneLedBlock/'<GetProceduralCraftingRecipes>d__5'::System.Collections.IEnumerator.get_Current()
    } // end of property '<GetProceduralCraftingRecipes>d__5'::System.Collections.IEnumerator.Current
  } // end of class '<GetProceduralCraftingRecipes>d__5'

  .field public static literal int32 Index = int32(0x000000FD)
  .field private class Game.BlockMesh m_standaloneBlockMesh
  .field private class Game.BlockMesh[] m_blockMeshesByFace
  .field private valuetype [Engine]Engine.BoundingBox[][] m_collisionBoxesByFace
  .method public hidebysig virtual instance void 
          Initialize() cil managed
  {
    // 代码大小       383 (0x17f)
    .maxstack  8
    .locals init (class [Engine]Engine.Graphics.ModelMesh V_0,
             valuetype [Engine]Engine.Matrix V_1,
             valuetype [Engine]Engine.Matrix V_2,
             int32 V_3,
             valuetype [Engine]Engine.Matrix V_4,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> V_5)
    IL_0000:  ldstr      "Models/Leds"
    IL_0005:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Model>(string)
    IL_000a:  ldstr      "OneLed"
    IL_000f:  ldc.i4.1
    IL_0010:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0015:  stloc.0
    IL_0016:  ldloc.0
    IL_0017:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_001c:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_0021:  stloc.1
    IL_0022:  ldc.i4.0
    IL_0023:  stloc.3
    IL_0024:  br         IL_0127

    IL_0029:  ldloc.3
    IL_002a:  ldc.i4.4
    IL_002b:  bge.s      IL_0085

    IL_002d:  ldc.r4     1.5707964
    IL_0032:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_0037:  ldc.r4     0.0
    IL_003c:  ldc.r4     0.0
    IL_0041:  ldc.r4     -0.5
    IL_0046:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_004b:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0050:  ldloc.3
    IL_0051:  conv.r4
    IL_0052:  ldc.r4     3.1415927
    IL_0057:  mul
    IL_0058:  ldc.r4     2.
    IL_005d:  div
    IL_005e:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_0063:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0068:  ldc.r4     0.5
    IL_006d:  ldc.r4     0.5
    IL_0072:  ldc.r4     0.5
    IL_0077:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_007c:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0081:  stloc.s    V_4
    IL_0083:  br.s       IL_00c6

    IL_0085:  ldloc.3
    IL_0086:  ldc.i4.4
    IL_0087:  bne.un.s   IL_00a1

    IL_0089:  ldc.r4     0.5
    IL_008e:  ldc.r4     0.0
    IL_0093:  ldc.r4     0.5
    IL_0098:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_009d:  stloc.s    V_4
    IL_009f:  br.s       IL_00c6

    IL_00a1:  ldc.r4     3.1415927
    IL_00a6:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_00ab:  ldc.r4     0.5
    IL_00b0:  ldc.r4     1.
    IL_00b5:  ldc.r4     0.5
    IL_00ba:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_00bf:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00c4:  stloc.s    V_4
    IL_00c6:  ldarg.0
    IL_00c7:  ldfld      class Game.BlockMesh[] Game.OneLedBlock::m_blockMeshesByFace
    IL_00cc:  ldloc.3
    IL_00cd:  newobj     instance void Game.BlockMesh::.ctor()
    IL_00d2:  stelem.ref
    IL_00d3:  ldarg.0
    IL_00d4:  ldfld      class Game.BlockMesh[] Game.OneLedBlock::m_blockMeshesByFace
    IL_00d9:  ldloc.3
    IL_00da:  ldelem.ref
    IL_00db:  ldloc.0
    IL_00dc:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_00e1:  stloc.s    V_5
    IL_00e3:  ldloca.s   V_5
    IL_00e5:  ldc.i4.0
    IL_00e6:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_00eb:  ldloc.1
    IL_00ec:  ldloc.s    V_4
    IL_00ee:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00f3:  ldc.i4.0
    IL_00f4:  ldc.i4.0
    IL_00f5:  ldc.i4.0
    IL_00f6:  ldc.i4.0
    IL_00f7:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_00fc:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_0101:  ldarg.0
    IL_0102:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.OneLedBlock::m_collisionBoxesByFace
    IL_0107:  ldloc.3
    IL_0108:  ldc.i4.1
    IL_0109:  newarr     [Engine]Engine.BoundingBox
    IL_010e:  dup
    IL_010f:  ldc.i4.0
    IL_0110:  ldarg.0
    IL_0111:  ldfld      class Game.BlockMesh[] Game.OneLedBlock::m_blockMeshesByFace
    IL_0116:  ldloc.3
    IL_0117:  ldelem.ref
    IL_0118:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.BlockMesh::CalculateBoundingBox()
    IL_011d:  stelem     [Engine]Engine.BoundingBox
    IL_0122:  stelem.ref
    IL_0123:  ldloc.3
    IL_0124:  ldc.i4.1
    IL_0125:  add
    IL_0126:  stloc.3
    IL_0127:  ldloc.3
    IL_0128:  ldc.i4.6
    IL_0129:  blt        IL_0029

    IL_012e:  ldc.r4     -1.5707964
    IL_0133:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_0138:  ldc.r4     1.5707964
    IL_013d:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationZ(float32)
    IL_0142:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0147:  stloc.2
    IL_0148:  ldarg.0
    IL_0149:  newobj     instance void Game.BlockMesh::.ctor()
    IL_014e:  stfld      class Game.BlockMesh Game.OneLedBlock::m_standaloneBlockMesh
    IL_0153:  ldarg.0
    IL_0154:  ldfld      class Game.BlockMesh Game.OneLedBlock::m_standaloneBlockMesh
    IL_0159:  ldloc.0
    IL_015a:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_015f:  stloc.s    V_5
    IL_0161:  ldloca.s   V_5
    IL_0163:  ldc.i4.0
    IL_0164:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_0169:  ldloc.1
    IL_016a:  ldloc.2
    IL_016b:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0170:  ldc.i4.0
    IL_0171:  ldc.i4.0
    IL_0172:  ldc.i4.0
    IL_0173:  ldc.i4.0
    IL_0174:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0179:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_017e:  ret
  } // end of method OneLedBlock::Initialize

  .method public hidebysig virtual instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.CraftingRecipe> 
          GetProceduralCraftingRecipes() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.IteratorStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 33 47 61 6D 65 2E 4F 6E 65 4C 65 64 42 6C   // ..3Game.OneLedBl
                                                                                                                                                      6F 63 6B 2B 3C 47 65 74 50 72 6F 63 65 64 75 72   // ock+<GetProcedur
                                                                                                                                                      61 6C 43 72 61 66 74 69 6E 67 52 65 63 69 70 65   // alCraftingRecipe
                                                                                                                                                      73 3E 64 5F 5F 35 00 00 )                         // s>d__5..
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldc.i4.s   -2
    IL_0002:  newobj     instance void Game.OneLedBlock/'<GetProceduralCraftingRecipes>d__5'::.ctor(int32)
    IL_0007:  ret
  } // end of method OneLedBlock::GetProceduralCraftingRecipes

  .method public hidebysig virtual instance bool 
          IsFaceTransparent(int32 face,
                            int32 'value') cil managed
  {
    // 代码大小       25 (0x19)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  call       int32 Game.OneLedBlock::GetMountingFace(int32)
    IL_000b:  stloc.0
    IL_000c:  ldarg.1
    IL_000d:  ldloc.0
    IL_000e:  call       int32 Game.CellFace::OppositeFace(int32)
    IL_0013:  ceq
    IL_0015:  ldc.i4.0
    IL_0016:  ceq
    IL_0018:  ret
  } // end of method OneLedBlock::IsFaceTransparent

  .method public hidebysig virtual instance int32 
          GetFace(int32 'value') cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  call       int32 Game.OneLedBlock::GetMountingFace(int32)
    IL_000b:  ret
  } // end of method OneLedBlock::GetFace

  .method public hidebysig virtual instance valuetype Game.BlockPlacementData 
          GetPlacementValue(class Game.SubsystemTerrain subsystemTerrain,
                            class Game.ComponentMiner componentMiner,
                            int32 'value',
                            valuetype Game.TerrainRaycastResult raycastResult) cil managed
  {
    // 代码大小       64 (0x40)
    .maxstack  2
    .locals init (int32 V_0,
             int32 V_1,
             valuetype Game.BlockPlacementData V_2)
    IL_0000:  ldarg.3
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  ldarg.s    raycastResult
    IL_0008:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_000d:  ldfld      int32 Game.CellFace::Face
    IL_0012:  call       int32 Game.OneLedBlock::SetMountingFace(int32,
                                                                 int32)
    IL_0017:  stloc.0
    IL_0018:  ldarg.3
    IL_0019:  ldloc.0
    IL_001a:  call       int32 Game.Terrain::ReplaceData(int32,
                                                         int32)
    IL_001f:  stloc.1
    IL_0020:  ldloca.s   V_2
    IL_0022:  initobj    Game.BlockPlacementData
    IL_0028:  ldloca.s   V_2
    IL_002a:  ldloc.1
    IL_002b:  stfld      int32 Game.BlockPlacementData::Value
    IL_0030:  ldloca.s   V_2
    IL_0032:  ldarg.s    raycastResult
    IL_0034:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0039:  stfld      valuetype Game.CellFace Game.BlockPlacementData::CellFace
    IL_003e:  ldloc.2
    IL_003f:  ret
  } // end of method OneLedBlock::GetPlacementValue

  .method public hidebysig virtual instance void 
          GetDropValues(class Game.SubsystemTerrain subsystemTerrain,
                        int32 oldValue,
                        int32 newValue,
                        int32 toolLevel,
                        class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue> dropValues,
                        [out] bool& showDebris) cil managed
  {
    // 代码大小       48 (0x30)
    .maxstack  5
    .locals init (valuetype Game.BlockDropValue V_0)
    IL_0000:  ldarg.s    dropValues
    IL_0002:  ldloca.s   V_0
    IL_0004:  initobj    Game.BlockDropValue
    IL_000a:  ldloca.s   V_0
    IL_000c:  ldc.i4     0xfd
    IL_0011:  ldc.i4.0
    IL_0012:  ldc.i4.0
    IL_0013:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_0018:  stfld      int32 Game.BlockDropValue::Value
    IL_001d:  ldloca.s   V_0
    IL_001f:  ldc.i4.1
    IL_0020:  stfld      int32 Game.BlockDropValue::Count
    IL_0025:  ldloc.0
    IL_0026:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue>::Add(!0)
    IL_002b:  ldarg.s    showDebris
    IL_002d:  ldc.i4.1
    IL_002e:  stind.i1
    IL_002f:  ret
  } // end of method OneLedBlock::GetDropValues

  .method public hidebysig virtual instance valuetype [Engine]Engine.BoundingBox[] 
          GetCustomCollisionBoxes(class Game.SubsystemTerrain terrain,
                                  int32 'value') cil managed
  {
    // 代码大小       34 (0x22)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  call       int32 Game.OneLedBlock::GetMountingFace(int32)
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  ldarg.0
    IL_000e:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.OneLedBlock::m_collisionBoxesByFace
    IL_0013:  ldlen
    IL_0014:  conv.i4
    IL_0015:  blt.s      IL_0019

    IL_0017:  ldnull
    IL_0018:  ret

    IL_0019:  ldarg.0
    IL_001a:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.OneLedBlock::m_collisionBoxesByFace
    IL_001f:  ldloc.0
    IL_0020:  ldelem.ref
    IL_0021:  ret
  } // end of method OneLedBlock::GetCustomCollisionBoxes

  .method public hidebysig virtual instance void 
          GenerateTerrainVertices(class Game.BlockGeometryGenerator generator,
                                  class Game.TerrainGeometrySubsets geometry,
                                  int32 'value',
                                  int32 x,
                                  int32 y,
                                  int32 z) cil managed
  {
    // 代码大小       95 (0x5f)
    .maxstack  9
    .locals init (int32 V_0,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> V_1)
    IL_0000:  ldarg.3
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  call       int32 Game.OneLedBlock::GetMountingFace(int32)
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  ldarg.0
    IL_000e:  ldfld      class Game.BlockMesh[] Game.OneLedBlock::m_blockMeshesByFace
    IL_0013:  ldlen
    IL_0014:  conv.i4
    IL_0015:  bge.s      IL_005e

    IL_0017:  ldarg.1
    IL_0018:  ldarg.0
    IL_0019:  ldarg.s    x
    IL_001b:  ldarg.s    y
    IL_001d:  ldarg.s    z
    IL_001f:  ldarg.0
    IL_0020:  ldfld      class Game.BlockMesh[] Game.OneLedBlock::m_blockMeshesByFace
    IL_0025:  ldloc.0
    IL_0026:  ldelem.ref
    IL_0027:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_002c:  ldloca.s   V_1
    IL_002e:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_0034:  ldloc.1
    IL_0035:  ldarg.2
    IL_0036:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetOpaque
    IL_003b:  callvirt   instance void Game.BlockGeometryGenerator::GenerateMeshVertices(class Game.Block,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         class Game.BlockMesh,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>,
                                                                                         class Game.TerrainGeometrySubset)
    IL_0040:  ldarg.1
    IL_0041:  ldarg.3
    IL_0042:  ldarg.s    x
    IL_0044:  ldarg.s    y
    IL_0046:  ldarg.s    z
    IL_0048:  ldloc.0
    IL_0049:  ldc.r4     1.
    IL_004e:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_0053:  ldarg.2
    IL_0054:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetOpaque
    IL_0059:  callvirt   instance void Game.BlockGeometryGenerator::GenerateWireVertices(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         valuetype [Engine]Engine.Vector2,
                                                                                         class Game.TerrainGeometrySubset)
    IL_005e:  ret
  } // end of method OneLedBlock::GenerateTerrainVertices

  .method public hidebysig virtual instance void 
          DrawBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D primitivesRenderer,
                    int32 'value',
                    valuetype [Engine]Engine.Color color,
                    float32 size,
                    valuetype [Engine]Engine.Matrix& matrix,
                    class Game.DrawBlockEnvironmentData environmentData) cil managed
  {
    // 代码大小       26 (0x1a)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class Game.BlockMesh Game.OneLedBlock::m_standaloneBlockMesh
    IL_0007:  ldarg.3
    IL_0008:  ldc.r4     2.
    IL_000d:  ldarg.s    size
    IL_000f:  mul
    IL_0010:  ldarg.s    matrix
    IL_0012:  ldarg.s    environmentData
    IL_0014:  call       void Game.BlocksManager::DrawMeshBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                                class Game.BlockMesh,
                                                                valuetype [Engine]Engine.Color,
                                                                float32,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                class Game.DrawBlockEnvironmentData)
    IL_0019:  ret
  } // end of method OneLedBlock::DrawBlock

  .method public hidebysig virtual instance class Game.ElectricElement 
          CreateElectricElement(class Game.SubsystemElectricity subsystemElectricity,
                                int32 'value',
                                int32 x,
                                int32 y,
                                int32 z) cil managed
  {
    // 代码大小       24 (0x18)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.3
    IL_0002:  ldarg.s    y
    IL_0004:  ldarg.s    z
    IL_0006:  ldarg.0
    IL_0007:  ldarg.2
    IL_0008:  callvirt   instance int32 Game.MountedElectricElementBlock::GetFace(int32)
    IL_000d:  newobj     instance void Game.CellFace::.ctor(int32,
                                                            int32,
                                                            int32,
                                                            int32)
    IL_0012:  newobj     instance void Game.OneLedElectricElement::.ctor(class Game.SubsystemElectricity,
                                                                         valuetype Game.CellFace)
    IL_0017:  ret
  } // end of method OneLedBlock::CreateElectricElement

  .method public hidebysig virtual instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType> 
          GetConnectorType(class Game.SubsystemTerrain terrain,
                           int32 'value',
                           int32 face,
                           int32 connectorFace,
                           int32 x,
                           int32 y,
                           int32 z) cil managed
  {
    // 代码大小       48 (0x30)
    .maxstack  3
    .locals init (int32 V_0,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection> V_1,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType> V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.2
    IL_0002:  callvirt   instance int32 Game.MountedElectricElementBlock::GetFace(int32)
    IL_0007:  stloc.0
    IL_0008:  ldarg.3
    IL_0009:  ldloc.0
    IL_000a:  bne.un.s   IL_0026

    IL_000c:  ldloc.0
    IL_000d:  ldc.i4.0
    IL_000e:  ldarg.s    connectorFace
    IL_0010:  call       valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection> Game.SubsystemElectricity::GetConnectorDirection(int32,
                                                                                                                                                                 int32,
                                                                                                                                                                 int32)
    IL_0015:  stloc.1
    IL_0016:  ldloca.s   V_1
    IL_0018:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_HasValue()
    IL_001d:  brfalse.s  IL_0026

    IL_001f:  ldc.i4.0
    IL_0020:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType>::.ctor(!0)
    IL_0025:  ret

    IL_0026:  ldloca.s   V_2
    IL_0028:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType>
    IL_002e:  ldloc.2
    IL_002f:  ret
  } // end of method OneLedBlock::GetConnectorType

  .method public hidebysig static int32  GetMountingFace(int32 data) cil managed
  {
    // 代码大小       4 (0x4)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.7
    IL_0002:  and
    IL_0003:  ret
  } // end of method OneLedBlock::GetMountingFace

  .method public hidebysig static int32  SetMountingFace(int32 data,
                                                         int32 face) cil managed
  {
    // 代码大小       9 (0x9)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.s   -8
    IL_0003:  and
    IL_0004:  ldarg.1
    IL_0005:  ldc.i4.7
    IL_0006:  and
    IL_0007:  or
    IL_0008:  ret
  } // end of method OneLedBlock::SetMountingFace

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       31 (0x1f)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.6
    IL_0002:  newarr     Game.BlockMesh
    IL_0007:  stfld      class Game.BlockMesh[] Game.OneLedBlock::m_blockMeshesByFace
    IL_000c:  ldarg.0
    IL_000d:  ldc.i4.6
    IL_000e:  newarr     valuetype [Engine]Engine.BoundingBox[]
    IL_0013:  stfld      valuetype [Engine]Engine.BoundingBox[][] Game.OneLedBlock::m_collisionBoxesByFace
    IL_0018:  ldarg.0
    IL_0019:  call       instance void Game.MountedElectricElementBlock::.ctor()
    IL_001e:  ret
  } // end of method OneLedBlock::.ctor

} // end of class Game.OneLedBlock