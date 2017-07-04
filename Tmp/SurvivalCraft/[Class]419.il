.class public auto ansi beforefieldinit Game.MulticoloredLedBlock
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
      IL_0008:  stfld      int32 Game.MulticoloredLedBlock/'<GetProceduralCraftingRecipes>d__5'::'<>1__state'
      IL_000d:  ldarg.0
      IL_000e:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0013:  stfld      int32 Game.MulticoloredLedBlock/'<GetProceduralCraftingRecipes>d__5'::'<>l__initialThreadId'
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
      // 代码大小       169 (0xa9)
      .maxstack  5
      .locals init (int32 V_0,
               class Game.CraftingRecipe V_1)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.MulticoloredLedBlock/'<GetProceduralCraftingRecipes>d__5'::'<>1__state'
      IL_0006:  stloc.0
      IL_0007:  ldloc.0
      IL_0008:  brfalse.s  IL_0013

      IL_000a:  ldloc.0
      IL_000b:  ldc.i4.1
      IL_000c:  beq        IL_00a0

      IL_0011:  ldc.i4.0
      IL_0012:  ret

      IL_0013:  ldarg.0
      IL_0014:  ldc.i4.m1
      IL_0015:  stfld      int32 Game.MulticoloredLedBlock/'<GetProceduralCraftingRecipes>d__5'::'<>1__state'
      IL_001a:  newobj     instance void Game.CraftingRecipe::.ctor()
      IL_001f:  dup
      IL_0020:  ldc.i4.4
      IL_0021:  stfld      int32 Game.CraftingRecipe::ResultCount
      IL_0026:  dup
      IL_0027:  ldc.i4     0xfe
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
      IL_0044:  ldstr      "Make multicolored LEDs from copper, glass and wire"
      IL_0049:  stfld      string Game.CraftingRecipe::Description
      IL_004e:  stloc.1
      IL_004f:  ldloc.1
      IL_0050:  ldfld      string[] Game.CraftingRecipe::Ingredients
      IL_0055:  ldc.i4.1
      IL_0056:  ldstr      "glass"
      IL_005b:  stelem.ref
      IL_005c:  ldloc.1
      IL_005d:  ldfld      string[] Game.CraftingRecipe::Ingredients
      IL_0062:  ldc.i4.4
      IL_0063:  ldstr      "wire"
      IL_0068:  stelem.ref
      IL_0069:  ldloc.1
      IL_006a:  ldfld      string[] Game.CraftingRecipe::Ingredients
      IL_006f:  ldc.i4.6
      IL_0070:  ldstr      "copperingot"
      IL_0075:  stelem.ref
      IL_0076:  ldloc.1
      IL_0077:  ldfld      string[] Game.CraftingRecipe::Ingredients
      IL_007c:  ldc.i4.7
      IL_007d:  ldstr      "copperingot"
      IL_0082:  stelem.ref
      IL_0083:  ldloc.1
      IL_0084:  ldfld      string[] Game.CraftingRecipe::Ingredients
      IL_0089:  ldc.i4.8
      IL_008a:  ldstr      "copperingot"
      IL_008f:  stelem.ref
      IL_0090:  ldarg.0
      IL_0091:  ldloc.1
      IL_0092:  stfld      class Game.CraftingRecipe Game.MulticoloredLedBlock/'<GetProceduralCraftingRecipes>d__5'::'<>2__current'
      IL_0097:  ldarg.0
      IL_0098:  ldc.i4.1
      IL_0099:  stfld      int32 Game.MulticoloredLedBlock/'<GetProceduralCraftingRecipes>d__5'::'<>1__state'
      IL_009e:  ldc.i4.1
      IL_009f:  ret

      IL_00a0:  ldarg.0
      IL_00a1:  ldc.i4.m1
      IL_00a2:  stfld      int32 Game.MulticoloredLedBlock/'<GetProceduralCraftingRecipes>d__5'::'<>1__state'
      IL_00a7:  ldc.i4.0
      IL_00a8:  ret
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
      IL_0001:  ldfld      class Game.CraftingRecipe Game.MulticoloredLedBlock/'<GetProceduralCraftingRecipes>d__5'::'<>2__current'
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
      IL_0001:  ldfld      class Game.CraftingRecipe Game.MulticoloredLedBlock/'<GetProceduralCraftingRecipes>d__5'::'<>2__current'
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
      .locals init (class Game.MulticoloredLedBlock/'<GetProceduralCraftingRecipes>d__5' V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.MulticoloredLedBlock/'<GetProceduralCraftingRecipes>d__5'::'<>1__state'
      IL_0006:  ldc.i4.s   -2
      IL_0008:  bne.un.s   IL_0022

      IL_000a:  ldarg.0
      IL_000b:  ldfld      int32 Game.MulticoloredLedBlock/'<GetProceduralCraftingRecipes>d__5'::'<>l__initialThreadId'
      IL_0010:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0015:  bne.un.s   IL_0022

      IL_0017:  ldarg.0
      IL_0018:  ldc.i4.0
      IL_0019:  stfld      int32 Game.MulticoloredLedBlock/'<GetProceduralCraftingRecipes>d__5'::'<>1__state'
      IL_001e:  ldarg.0
      IL_001f:  stloc.0
      IL_0020:  br.s       IL_0029

      IL_0022:  ldc.i4.0
      IL_0023:  newobj     instance void Game.MulticoloredLedBlock/'<GetProceduralCraftingRecipes>d__5'::.ctor(int32)
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
      IL_0001:  call       instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.CraftingRecipe> Game.MulticoloredLedBlock/'<GetProceduralCraftingRecipes>d__5'::'System.Collections.Generic.IEnumerable<Game.CraftingRecipe>.GetEnumerator'()
      IL_0006:  ret
    } // end of method '<GetProceduralCraftingRecipes>d__5'::System.Collections.IEnumerable.GetEnumerator

    .property instance class Game.CraftingRecipe
            'System.Collections.Generic.IEnumerator<Game.CraftingRecipe>.Current'()
    {
      .get instance class Game.CraftingRecipe Game.MulticoloredLedBlock/'<GetProceduralCraftingRecipes>d__5'::'System.Collections.Generic.IEnumerator<Game.CraftingRecipe>.get_Current'()
    } // end of property '<GetProceduralCraftingRecipes>d__5'::'System.Collections.Generic.IEnumerator<Game.CraftingRecipe>.Current'
    .property instance object System.Collections.IEnumerator.Current()
    {
      .get instance object Game.MulticoloredLedBlock/'<GetProceduralCraftingRecipes>d__5'::System.Collections.IEnumerator.get_Current()
    } // end of property '<GetProceduralCraftingRecipes>d__5'::System.Collections.IEnumerator.Current
  } // end of class '<GetProceduralCraftingRecipes>d__5'

  .class auto ansi sealed nested private beforefieldinit '<GetCreativeValues>d__7'
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
      IL_0008:  stfld      int32 Game.MulticoloredLedBlock/'<GetCreativeValues>d__7'::'<>1__state'
      IL_000d:  ldarg.0
      IL_000e:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0013:  stfld      int32 Game.MulticoloredLedBlock/'<GetCreativeValues>d__7'::'<>l__initialThreadId'
      IL_0018:  ret
    } // end of method '<GetCreativeValues>d__7'::.ctor

    .method private hidebysig newslot virtual final 
            instance void  System.IDisposable.Dispose() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.IDisposable::Dispose
      // 代码大小       1 (0x1)
      .maxstack  8
      IL_0000:  ret
    } // end of method '<GetCreativeValues>d__7'::System.IDisposable.Dispose

    .method private hidebysig newslot virtual final 
            instance bool  MoveNext() cil managed
    {
      .override [System.Runtime]System.Collections.IEnumerator::MoveNext
      // 代码大小       59 (0x3b)
      .maxstack  4
      .locals init (int32 V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.MulticoloredLedBlock/'<GetCreativeValues>d__7'::'<>1__state'
      IL_0006:  stloc.0
      IL_0007:  ldloc.0
      IL_0008:  brfalse.s  IL_0010

      IL_000a:  ldloc.0
      IL_000b:  ldc.i4.1
      IL_000c:  beq.s      IL_0032

      IL_000e:  ldc.i4.0
      IL_000f:  ret

      IL_0010:  ldarg.0
      IL_0011:  ldc.i4.m1
      IL_0012:  stfld      int32 Game.MulticoloredLedBlock/'<GetCreativeValues>d__7'::'<>1__state'
      IL_0017:  ldarg.0
      IL_0018:  ldc.i4     0xfe
      IL_001d:  ldc.i4.0
      IL_001e:  ldc.i4.0
      IL_001f:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                              int32,
                                                              int32)
      IL_0024:  stfld      int32 Game.MulticoloredLedBlock/'<GetCreativeValues>d__7'::'<>2__current'
      IL_0029:  ldarg.0
      IL_002a:  ldc.i4.1
      IL_002b:  stfld      int32 Game.MulticoloredLedBlock/'<GetCreativeValues>d__7'::'<>1__state'
      IL_0030:  ldc.i4.1
      IL_0031:  ret

      IL_0032:  ldarg.0
      IL_0033:  ldc.i4.m1
      IL_0034:  stfld      int32 Game.MulticoloredLedBlock/'<GetCreativeValues>d__7'::'<>1__state'
      IL_0039:  ldc.i4.0
      IL_003a:  ret
    } // end of method '<GetCreativeValues>d__7'::MoveNext

    .method private hidebysig newslot specialname virtual final 
            instance int32  'System.Collections.Generic.IEnumerator<System.Int32>.get_Current'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32>::get_Current()
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.MulticoloredLedBlock/'<GetCreativeValues>d__7'::'<>2__current'
      IL_0006:  ret
    } // end of method '<GetCreativeValues>d__7'::'System.Collections.Generic.IEnumerator<System.Int32>.get_Current'

    .method private hidebysig newslot virtual final 
            instance void  System.Collections.IEnumerator.Reset() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerator::Reset
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  newobj     instance void [System.Runtime]System.NotSupportedException::.ctor()
      IL_0005:  throw
    } // end of method '<GetCreativeValues>d__7'::System.Collections.IEnumerator.Reset

    .method private hidebysig newslot specialname virtual final 
            instance object  System.Collections.IEnumerator.get_Current() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerator::get_Current
      // 代码大小       12 (0xc)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.MulticoloredLedBlock/'<GetCreativeValues>d__7'::'<>2__current'
      IL_0006:  box        [System.Runtime]System.Int32
      IL_000b:  ret
    } // end of method '<GetCreativeValues>d__7'::System.Collections.IEnumerator.get_Current

    .method private hidebysig newslot virtual final 
            instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32> 
            'System.Collections.Generic.IEnumerable<System.Int32>.GetEnumerator'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32>::GetEnumerator()
      // 代码大小       43 (0x2b)
      .maxstack  2
      .locals init (class Game.MulticoloredLedBlock/'<GetCreativeValues>d__7' V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.MulticoloredLedBlock/'<GetCreativeValues>d__7'::'<>1__state'
      IL_0006:  ldc.i4.s   -2
      IL_0008:  bne.un.s   IL_0022

      IL_000a:  ldarg.0
      IL_000b:  ldfld      int32 Game.MulticoloredLedBlock/'<GetCreativeValues>d__7'::'<>l__initialThreadId'
      IL_0010:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0015:  bne.un.s   IL_0022

      IL_0017:  ldarg.0
      IL_0018:  ldc.i4.0
      IL_0019:  stfld      int32 Game.MulticoloredLedBlock/'<GetCreativeValues>d__7'::'<>1__state'
      IL_001e:  ldarg.0
      IL_001f:  stloc.0
      IL_0020:  br.s       IL_0029

      IL_0022:  ldc.i4.0
      IL_0023:  newobj     instance void Game.MulticoloredLedBlock/'<GetCreativeValues>d__7'::.ctor(int32)
      IL_0028:  stloc.0
      IL_0029:  ldloc.0
      IL_002a:  ret
    } // end of method '<GetCreativeValues>d__7'::'System.Collections.Generic.IEnumerable<System.Int32>.GetEnumerator'

    .method private hidebysig newslot virtual final 
            instance class [System.Runtime]System.Collections.IEnumerator 
            System.Collections.IEnumerable.GetEnumerator() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerable::GetEnumerator
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32> Game.MulticoloredLedBlock/'<GetCreativeValues>d__7'::'System.Collections.Generic.IEnumerable<System.Int32>.GetEnumerator'()
      IL_0006:  ret
    } // end of method '<GetCreativeValues>d__7'::System.Collections.IEnumerable.GetEnumerator

    .property instance int32 'System.Collections.Generic.IEnumerator<System.Int32>.Current'()
    {
      .get instance int32 Game.MulticoloredLedBlock/'<GetCreativeValues>d__7'::'System.Collections.Generic.IEnumerator<System.Int32>.get_Current'()
    } // end of property '<GetCreativeValues>d__7'::'System.Collections.Generic.IEnumerator<System.Int32>.Current'
    .property instance object System.Collections.IEnumerator.Current()
    {
      .get instance object Game.MulticoloredLedBlock/'<GetCreativeValues>d__7'::System.Collections.IEnumerator.get_Current()
    } // end of property '<GetCreativeValues>d__7'::System.Collections.IEnumerator.Current
  } // end of class '<GetCreativeValues>d__7'

  .field public static literal int32 Index = int32(0x000000FE)
  .field private class Game.BlockMesh m_standaloneBlockMesh
  .field private class Game.BlockMesh[] m_blockMeshesByData
  .field private valuetype [Engine]Engine.BoundingBox[][] m_collisionBoxesByData
  .method public hidebysig virtual instance void 
          Initialize() cil managed
  {
    // 代码大小       534 (0x216)
    .maxstack  10
    .locals init (class [Engine]Engine.Graphics.ModelMesh V_0,
             class [Engine]Engine.Graphics.ModelMesh V_1,
             valuetype [Engine]Engine.Matrix V_2,
             valuetype [Engine]Engine.Matrix V_3,
             valuetype [Engine]Engine.Matrix V_4,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> V_5,
             int32 V_6,
             int32 V_7,
             valuetype [Engine]Engine.Matrix V_8)
    IL_0000:  ldstr      "Models/Leds"
    IL_0005:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Model>(string)
    IL_000a:  dup
    IL_000b:  ldstr      "Led"
    IL_0010:  ldc.i4.1
    IL_0011:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0016:  stloc.0
    IL_0017:  ldstr      "LedBulb"
    IL_001c:  ldc.i4.1
    IL_001d:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0022:  stloc.1
    IL_0023:  ldloc.0
    IL_0024:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_0029:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_002e:  stloc.2
    IL_002f:  ldloc.1
    IL_0030:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_0035:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_003a:  stloc.3
    IL_003b:  ldc.r4     -1.5707964
    IL_0040:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_0045:  ldc.r4     1.5707964
    IL_004a:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationZ(float32)
    IL_004f:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0054:  stloc.s    V_4
    IL_0056:  ldarg.0
    IL_0057:  newobj     instance void Game.BlockMesh::.ctor()
    IL_005c:  stfld      class Game.BlockMesh Game.MulticoloredLedBlock::m_standaloneBlockMesh
    IL_0061:  ldarg.0
    IL_0062:  ldfld      class Game.BlockMesh Game.MulticoloredLedBlock::m_standaloneBlockMesh
    IL_0067:  ldloc.0
    IL_0068:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_006d:  stloc.s    V_5
    IL_006f:  ldloca.s   V_5
    IL_0071:  ldc.i4.0
    IL_0072:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_0077:  ldloc.2
    IL_0078:  ldloc.s    V_4
    IL_007a:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_007f:  ldc.i4.0
    IL_0080:  ldc.i4.0
    IL_0081:  ldc.i4.0
    IL_0082:  ldc.i4.0
    IL_0083:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0088:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_008d:  ldarg.0
    IL_008e:  ldfld      class Game.BlockMesh Game.MulticoloredLedBlock::m_standaloneBlockMesh
    IL_0093:  ldloc.1
    IL_0094:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_0099:  stloc.s    V_5
    IL_009b:  ldloca.s   V_5
    IL_009d:  ldc.i4.0
    IL_009e:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_00a3:  ldloc.3
    IL_00a4:  ldloc.s    V_4
    IL_00a6:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00ab:  ldc.i4.0
    IL_00ac:  ldc.i4.0
    IL_00ad:  ldc.i4.0
    IL_00ae:  ldc.i4.0
    IL_00af:  ldc.i4.s   48
    IL_00b1:  ldc.i4.s   48
    IL_00b3:  ldc.i4.s   48
    IL_00b5:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_00ba:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_00bf:  ldc.i4.0
    IL_00c0:  stloc.s    V_6
    IL_00c2:  br         IL_020d

    IL_00c7:  ldc.i4.0
    IL_00c8:  ldloc.s    V_6
    IL_00ca:  call       int32 Game.MulticoloredLedBlock::SetMountingFace(int32,
                                                                          int32)
    IL_00cf:  stloc.s    V_7
    IL_00d1:  ldloc.s    V_6
    IL_00d3:  ldc.i4.4
    IL_00d4:  bge.s      IL_012f

    IL_00d6:  ldc.r4     1.5707964
    IL_00db:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_00e0:  ldc.r4     0.0
    IL_00e5:  ldc.r4     0.0
    IL_00ea:  ldc.r4     -0.5
    IL_00ef:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_00f4:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00f9:  ldloc.s    V_6
    IL_00fb:  conv.r4
    IL_00fc:  ldc.r4     3.1415927
    IL_0101:  mul
    IL_0102:  ldc.r4     2.
    IL_0107:  div
    IL_0108:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_010d:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0112:  ldc.r4     0.5
    IL_0117:  ldc.r4     0.5
    IL_011c:  ldc.r4     0.5
    IL_0121:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0126:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_012b:  stloc.s    V_8
    IL_012d:  br.s       IL_0171

    IL_012f:  ldloc.s    V_6
    IL_0131:  ldc.i4.4
    IL_0132:  bne.un.s   IL_014c

    IL_0134:  ldc.r4     0.5
    IL_0139:  ldc.r4     0.0
    IL_013e:  ldc.r4     0.5
    IL_0143:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0148:  stloc.s    V_8
    IL_014a:  br.s       IL_0171

    IL_014c:  ldc.r4     3.1415927
    IL_0151:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_0156:  ldc.r4     0.5
    IL_015b:  ldc.r4     1.
    IL_0160:  ldc.r4     0.5
    IL_0165:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_016a:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_016f:  stloc.s    V_8
    IL_0171:  ldarg.0
    IL_0172:  ldfld      class Game.BlockMesh[] Game.MulticoloredLedBlock::m_blockMeshesByData
    IL_0177:  ldloc.s    V_7
    IL_0179:  newobj     instance void Game.BlockMesh::.ctor()
    IL_017e:  stelem.ref
    IL_017f:  ldarg.0
    IL_0180:  ldfld      class Game.BlockMesh[] Game.MulticoloredLedBlock::m_blockMeshesByData
    IL_0185:  ldloc.s    V_7
    IL_0187:  ldelem.ref
    IL_0188:  ldloc.0
    IL_0189:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_018e:  stloc.s    V_5
    IL_0190:  ldloca.s   V_5
    IL_0192:  ldc.i4.0
    IL_0193:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_0198:  ldloc.2
    IL_0199:  ldloc.s    V_8
    IL_019b:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_01a0:  ldc.i4.0
    IL_01a1:  ldc.i4.0
    IL_01a2:  ldc.i4.0
    IL_01a3:  ldc.i4.0
    IL_01a4:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_01a9:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_01ae:  ldarg.0
    IL_01af:  ldfld      class Game.BlockMesh[] Game.MulticoloredLedBlock::m_blockMeshesByData
    IL_01b4:  ldloc.s    V_7
    IL_01b6:  ldelem.ref
    IL_01b7:  ldloc.1
    IL_01b8:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_01bd:  stloc.s    V_5
    IL_01bf:  ldloca.s   V_5
    IL_01c1:  ldc.i4.0
    IL_01c2:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_01c7:  ldloc.3
    IL_01c8:  ldloc.s    V_8
    IL_01ca:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_01cf:  ldc.i4.0
    IL_01d0:  ldc.i4.0
    IL_01d1:  ldc.i4.0
    IL_01d2:  ldc.i4.0
    IL_01d3:  ldc.i4.s   48
    IL_01d5:  ldc.i4.s   48
    IL_01d7:  ldc.i4.s   48
    IL_01d9:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_01de:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_01e3:  ldarg.0
    IL_01e4:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.MulticoloredLedBlock::m_collisionBoxesByData
    IL_01e9:  ldloc.s    V_7
    IL_01eb:  ldc.i4.1
    IL_01ec:  newarr     [Engine]Engine.BoundingBox
    IL_01f1:  dup
    IL_01f2:  ldc.i4.0
    IL_01f3:  ldarg.0
    IL_01f4:  ldfld      class Game.BlockMesh[] Game.MulticoloredLedBlock::m_blockMeshesByData
    IL_01f9:  ldloc.s    V_7
    IL_01fb:  ldelem.ref
    IL_01fc:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.BlockMesh::CalculateBoundingBox()
    IL_0201:  stelem     [Engine]Engine.BoundingBox
    IL_0206:  stelem.ref
    IL_0207:  ldloc.s    V_6
    IL_0209:  ldc.i4.1
    IL_020a:  add
    IL_020b:  stloc.s    V_6
    IL_020d:  ldloc.s    V_6
    IL_020f:  ldc.i4.6
    IL_0210:  blt        IL_00c7

    IL_0215:  ret
  } // end of method MulticoloredLedBlock::Initialize

  .method public hidebysig virtual instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.CraftingRecipe> 
          GetProceduralCraftingRecipes() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.IteratorStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 3C 47 61 6D 65 2E 4D 75 6C 74 69 63 6F 6C   // ..<Game.Multicol
                                                                                                                                                      6F 72 65 64 4C 65 64 42 6C 6F 63 6B 2B 3C 47 65   // oredLedBlock+<Ge
                                                                                                                                                      74 50 72 6F 63 65 64 75 72 61 6C 43 72 61 66 74   // tProceduralCraft
                                                                                                                                                      69 6E 67 52 65 63 69 70 65 73 3E 64 5F 5F 35 00   // ingRecipes>d__5.
                                                                                                                                                      00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldc.i4.s   -2
    IL_0002:  newobj     instance void Game.MulticoloredLedBlock/'<GetProceduralCraftingRecipes>d__5'::.ctor(int32)
    IL_0007:  ret
  } // end of method MulticoloredLedBlock::GetProceduralCraftingRecipes

  .method public hidebysig virtual instance int32 
          GetFace(int32 'value') cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  call       int32 Game.MulticoloredLedBlock::GetMountingFace(int32)
    IL_000b:  ret
  } // end of method MulticoloredLedBlock::GetFace

  .method public hidebysig virtual instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32> 
          GetCreativeValues() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.IteratorStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 31 47 61 6D 65 2E 4D 75 6C 74 69 63 6F 6C   // ..1Game.Multicol
                                                                                                                                                      6F 72 65 64 4C 65 64 42 6C 6F 63 6B 2B 3C 47 65   // oredLedBlock+<Ge
                                                                                                                                                      74 43 72 65 61 74 69 76 65 56 61 6C 75 65 73 3E   // tCreativeValues>
                                                                                                                                                      64 5F 5F 37 00 00 )                               // d__7..
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldc.i4.s   -2
    IL_0002:  newobj     instance void Game.MulticoloredLedBlock/'<GetCreativeValues>d__7'::.ctor(int32)
    IL_0007:  ret
  } // end of method MulticoloredLedBlock::GetCreativeValues

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
    IL_0012:  call       int32 Game.MulticoloredLedBlock::SetMountingFace(int32,
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
  } // end of method MulticoloredLedBlock::GetPlacementValue

  .method public hidebysig virtual instance valuetype [Engine]Engine.BoundingBox[] 
          GetCustomCollisionBoxes(class Game.SubsystemTerrain terrain,
                                  int32 'value') cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  ldarg.0
    IL_0009:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.MulticoloredLedBlock::m_collisionBoxesByData
    IL_000e:  ldlen
    IL_000f:  conv.i4
    IL_0010:  blt.s      IL_0014

    IL_0012:  ldnull
    IL_0013:  ret

    IL_0014:  ldarg.0
    IL_0015:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.MulticoloredLedBlock::m_collisionBoxesByData
    IL_001a:  ldloc.0
    IL_001b:  ldelem.ref
    IL_001c:  ret
  } // end of method MulticoloredLedBlock::GetCustomCollisionBoxes

  .method public hidebysig virtual instance void 
          GenerateTerrainVertices(class Game.BlockGeometryGenerator generator,
                                  class Game.TerrainGeometrySubsets geometry,
                                  int32 'value',
                                  int32 x,
                                  int32 y,
                                  int32 z) cil managed
  {
    // 代码大小       96 (0x60)
    .maxstack  9
    .locals init (int32 V_0,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> V_1)
    IL_0000:  ldarg.3
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.BlockMesh[] Game.MulticoloredLedBlock::m_blockMeshesByData
    IL_000e:  ldlen
    IL_000f:  conv.i4
    IL_0010:  bge.s      IL_005f

    IL_0012:  ldarg.1
    IL_0013:  ldarg.0
    IL_0014:  ldarg.s    x
    IL_0016:  ldarg.s    y
    IL_0018:  ldarg.s    z
    IL_001a:  ldarg.0
    IL_001b:  ldfld      class Game.BlockMesh[] Game.MulticoloredLedBlock::m_blockMeshesByData
    IL_0020:  ldloc.0
    IL_0021:  ldelem.ref
    IL_0022:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0027:  ldloca.s   V_1
    IL_0029:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_002f:  ldloc.1
    IL_0030:  ldarg.2
    IL_0031:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetOpaque
    IL_0036:  callvirt   instance void Game.BlockGeometryGenerator::GenerateMeshVertices(class Game.Block,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         class Game.BlockMesh,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>,
                                                                                         class Game.TerrainGeometrySubset)
    IL_003b:  ldarg.1
    IL_003c:  ldarg.3
    IL_003d:  ldarg.s    x
    IL_003f:  ldarg.s    y
    IL_0041:  ldarg.s    z
    IL_0043:  ldarg.0
    IL_0044:  ldarg.3
    IL_0045:  callvirt   instance int32 Game.MountedElectricElementBlock::GetFace(int32)
    IL_004a:  ldc.r4     0.25
    IL_004f:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_0054:  ldarg.2
    IL_0055:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetOpaque
    IL_005a:  callvirt   instance void Game.BlockGeometryGenerator::GenerateWireVertices(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         valuetype [Engine]Engine.Vector2,
                                                                                         class Game.TerrainGeometrySubset)
    IL_005f:  ret
  } // end of method MulticoloredLedBlock::GenerateTerrainVertices

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
    IL_0002:  ldfld      class Game.BlockMesh Game.MulticoloredLedBlock::m_standaloneBlockMesh
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
  } // end of method MulticoloredLedBlock::DrawBlock

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
    IL_0012:  newobj     instance void Game.MulticoloredLedElectricElement::.ctor(class Game.SubsystemElectricity,
                                                                                  valuetype Game.CellFace)
    IL_0017:  ret
  } // end of method MulticoloredLedBlock::CreateElectricElement

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
  } // end of method MulticoloredLedBlock::GetConnectorType

  .method public hidebysig static int32  GetMountingFace(int32 data) cil managed
  {
    // 代码大小       4 (0x4)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.7
    IL_0002:  and
    IL_0003:  ret
  } // end of method MulticoloredLedBlock::GetMountingFace

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
  } // end of method MulticoloredLedBlock::SetMountingFace

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       31 (0x1f)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.6
    IL_0002:  newarr     Game.BlockMesh
    IL_0007:  stfld      class Game.BlockMesh[] Game.MulticoloredLedBlock::m_blockMeshesByData
    IL_000c:  ldarg.0
    IL_000d:  ldc.i4.6
    IL_000e:  newarr     valuetype [Engine]Engine.BoundingBox[]
    IL_0013:  stfld      valuetype [Engine]Engine.BoundingBox[][] Game.MulticoloredLedBlock::m_collisionBoxesByData
    IL_0018:  ldarg.0
    IL_0019:  call       instance void Game.MountedElectricElementBlock::.ctor()
    IL_001e:  ret
  } // end of method MulticoloredLedBlock::.ctor

} // end of class Game.MulticoloredLedBlock