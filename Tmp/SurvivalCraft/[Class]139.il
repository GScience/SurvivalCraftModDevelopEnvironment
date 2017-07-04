.class public abstract auto ansi beforefieldinit Game.Block
       extends [System.Runtime]System.Object
{
  .class auto ansi sealed nested private beforefieldinit '<GetCreativeValues>d__84'
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
    .field public class Game.Block '<>4__this'
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
      IL_0008:  stfld      int32 Game.Block/'<GetCreativeValues>d__84'::'<>1__state'
      IL_000d:  ldarg.0
      IL_000e:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0013:  stfld      int32 Game.Block/'<GetCreativeValues>d__84'::'<>l__initialThreadId'
      IL_0018:  ret
    } // end of method '<GetCreativeValues>d__84'::.ctor

    .method private hidebysig newslot virtual final 
            instance void  System.IDisposable.Dispose() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.IDisposable::Dispose
      // 代码大小       1 (0x1)
      .maxstack  8
      IL_0000:  ret
    } // end of method '<GetCreativeValues>d__84'::System.IDisposable.Dispose

    .method private hidebysig newslot virtual final 
            instance bool  MoveNext() cil managed
    {
      .override [System.Runtime]System.Collections.IEnumerator::MoveNext
      // 代码大小       94 (0x5e)
      .maxstack  3
      .locals init (int32 V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.Block/'<GetCreativeValues>d__84'::'<>1__state'
      IL_0006:  stloc.0
      IL_0007:  ldloc.0
      IL_0008:  brfalse.s  IL_0010

      IL_000a:  ldloc.0
      IL_000b:  ldc.i4.1
      IL_000c:  beq.s      IL_0055

      IL_000e:  ldc.i4.0
      IL_000f:  ret

      IL_0010:  ldarg.0
      IL_0011:  ldc.i4.m1
      IL_0012:  stfld      int32 Game.Block/'<GetCreativeValues>d__84'::'<>1__state'
      IL_0017:  ldarg.0
      IL_0018:  ldfld      class Game.Block Game.Block/'<GetCreativeValues>d__84'::'<>4__this'
      IL_001d:  ldfld      int32 Game.Block::DefaultCreativeData
      IL_0022:  ldc.i4.0
      IL_0023:  blt.s      IL_005c

      IL_0025:  ldarg.0
      IL_0026:  ldc.i4.0
      IL_0027:  ldarg.0
      IL_0028:  ldfld      class Game.Block Game.Block/'<GetCreativeValues>d__84'::'<>4__this'
      IL_002d:  ldfld      int32 Game.Block::DefaultCreativeData
      IL_0032:  call       int32 Game.Terrain::ReplaceData(int32,
                                                           int32)
      IL_0037:  ldarg.0
      IL_0038:  ldfld      class Game.Block Game.Block/'<GetCreativeValues>d__84'::'<>4__this'
      IL_003d:  ldfld      int32 Game.Block::BlockIndex
      IL_0042:  call       int32 Game.Terrain::ReplaceContents(int32,
                                                               int32)
      IL_0047:  stfld      int32 Game.Block/'<GetCreativeValues>d__84'::'<>2__current'
      IL_004c:  ldarg.0
      IL_004d:  ldc.i4.1
      IL_004e:  stfld      int32 Game.Block/'<GetCreativeValues>d__84'::'<>1__state'
      IL_0053:  ldc.i4.1
      IL_0054:  ret

      IL_0055:  ldarg.0
      IL_0056:  ldc.i4.m1
      IL_0057:  stfld      int32 Game.Block/'<GetCreativeValues>d__84'::'<>1__state'
      IL_005c:  ldc.i4.0
      IL_005d:  ret
    } // end of method '<GetCreativeValues>d__84'::MoveNext

    .method private hidebysig newslot specialname virtual final 
            instance int32  'System.Collections.Generic.IEnumerator<System.Int32>.get_Current'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32>::get_Current()
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.Block/'<GetCreativeValues>d__84'::'<>2__current'
      IL_0006:  ret
    } // end of method '<GetCreativeValues>d__84'::'System.Collections.Generic.IEnumerator<System.Int32>.get_Current'

    .method private hidebysig newslot virtual final 
            instance void  System.Collections.IEnumerator.Reset() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerator::Reset
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  newobj     instance void [System.Runtime]System.NotSupportedException::.ctor()
      IL_0005:  throw
    } // end of method '<GetCreativeValues>d__84'::System.Collections.IEnumerator.Reset

    .method private hidebysig newslot specialname virtual final 
            instance object  System.Collections.IEnumerator.get_Current() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerator::get_Current
      // 代码大小       12 (0xc)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.Block/'<GetCreativeValues>d__84'::'<>2__current'
      IL_0006:  box        [System.Runtime]System.Int32
      IL_000b:  ret
    } // end of method '<GetCreativeValues>d__84'::System.Collections.IEnumerator.get_Current

    .method private hidebysig newslot virtual final 
            instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32> 
            'System.Collections.Generic.IEnumerable<System.Int32>.GetEnumerator'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32>::GetEnumerator()
      // 代码大小       55 (0x37)
      .maxstack  2
      .locals init (class Game.Block/'<GetCreativeValues>d__84' V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.Block/'<GetCreativeValues>d__84'::'<>1__state'
      IL_0006:  ldc.i4.s   -2
      IL_0008:  bne.un.s   IL_0022

      IL_000a:  ldarg.0
      IL_000b:  ldfld      int32 Game.Block/'<GetCreativeValues>d__84'::'<>l__initialThreadId'
      IL_0010:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0015:  bne.un.s   IL_0022

      IL_0017:  ldarg.0
      IL_0018:  ldc.i4.0
      IL_0019:  stfld      int32 Game.Block/'<GetCreativeValues>d__84'::'<>1__state'
      IL_001e:  ldarg.0
      IL_001f:  stloc.0
      IL_0020:  br.s       IL_0035

      IL_0022:  ldc.i4.0
      IL_0023:  newobj     instance void Game.Block/'<GetCreativeValues>d__84'::.ctor(int32)
      IL_0028:  stloc.0
      IL_0029:  ldloc.0
      IL_002a:  ldarg.0
      IL_002b:  ldfld      class Game.Block Game.Block/'<GetCreativeValues>d__84'::'<>4__this'
      IL_0030:  stfld      class Game.Block Game.Block/'<GetCreativeValues>d__84'::'<>4__this'
      IL_0035:  ldloc.0
      IL_0036:  ret
    } // end of method '<GetCreativeValues>d__84'::'System.Collections.Generic.IEnumerable<System.Int32>.GetEnumerator'

    .method private hidebysig newslot virtual final 
            instance class [System.Runtime]System.Collections.IEnumerator 
            System.Collections.IEnumerable.GetEnumerator() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerable::GetEnumerator
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32> Game.Block/'<GetCreativeValues>d__84'::'System.Collections.Generic.IEnumerable<System.Int32>.GetEnumerator'()
      IL_0006:  ret
    } // end of method '<GetCreativeValues>d__84'::System.Collections.IEnumerable.GetEnumerator

    .property instance int32 'System.Collections.Generic.IEnumerator<System.Int32>.Current'()
    {
      .get instance int32 Game.Block/'<GetCreativeValues>d__84'::'System.Collections.Generic.IEnumerator<System.Int32>.get_Current'()
    } // end of property '<GetCreativeValues>d__84'::'System.Collections.Generic.IEnumerator<System.Int32>.Current'
    .property instance object System.Collections.IEnumerator.Current()
    {
      .get instance object Game.Block/'<GetCreativeValues>d__84'::System.Collections.IEnumerator.get_Current()
    } // end of property '<GetCreativeValues>d__84'::System.Collections.IEnumerator.Current
  } // end of class '<GetCreativeValues>d__84'

  .class auto ansi sealed nested private beforefieldinit '<GetProceduralCraftingRecipes>d__86'
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
      IL_0008:  stfld      int32 Game.Block/'<GetProceduralCraftingRecipes>d__86'::'<>1__state'
      IL_000d:  ldarg.0
      IL_000e:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0013:  stfld      int32 Game.Block/'<GetProceduralCraftingRecipes>d__86'::'<>l__initialThreadId'
      IL_0018:  ret
    } // end of method '<GetProceduralCraftingRecipes>d__86'::.ctor

    .method private hidebysig newslot virtual final 
            instance void  System.IDisposable.Dispose() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.IDisposable::Dispose
      // 代码大小       1 (0x1)
      .maxstack  8
      IL_0000:  ret
    } // end of method '<GetProceduralCraftingRecipes>d__86'::System.IDisposable.Dispose

    .method private hidebysig newslot virtual final 
            instance bool  MoveNext() cil managed
    {
      .override [System.Runtime]System.Collections.IEnumerator::MoveNext
      // 代码大小       21 (0x15)
      .maxstack  2
      .locals init (int32 V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.Block/'<GetProceduralCraftingRecipes>d__86'::'<>1__state'
      IL_0006:  stloc.0
      IL_0007:  ldloc.0
      IL_0008:  brfalse.s  IL_000c

      IL_000a:  ldc.i4.0
      IL_000b:  ret

      IL_000c:  ldarg.0
      IL_000d:  ldc.i4.m1
      IL_000e:  stfld      int32 Game.Block/'<GetProceduralCraftingRecipes>d__86'::'<>1__state'
      IL_0013:  ldc.i4.0
      IL_0014:  ret
    } // end of method '<GetProceduralCraftingRecipes>d__86'::MoveNext

    .method private hidebysig newslot specialname virtual final 
            instance class Game.CraftingRecipe 
            'System.Collections.Generic.IEnumerator<Game.CraftingRecipe>.get_Current'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.CraftingRecipe>::get_Current()
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.CraftingRecipe Game.Block/'<GetProceduralCraftingRecipes>d__86'::'<>2__current'
      IL_0006:  ret
    } // end of method '<GetProceduralCraftingRecipes>d__86'::'System.Collections.Generic.IEnumerator<Game.CraftingRecipe>.get_Current'

    .method private hidebysig newslot virtual final 
            instance void  System.Collections.IEnumerator.Reset() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerator::Reset
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  newobj     instance void [System.Runtime]System.NotSupportedException::.ctor()
      IL_0005:  throw
    } // end of method '<GetProceduralCraftingRecipes>d__86'::System.Collections.IEnumerator.Reset

    .method private hidebysig newslot specialname virtual final 
            instance object  System.Collections.IEnumerator.get_Current() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerator::get_Current
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.CraftingRecipe Game.Block/'<GetProceduralCraftingRecipes>d__86'::'<>2__current'
      IL_0006:  ret
    } // end of method '<GetProceduralCraftingRecipes>d__86'::System.Collections.IEnumerator.get_Current

    .method private hidebysig newslot virtual final 
            instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.CraftingRecipe> 
            'System.Collections.Generic.IEnumerable<Game.CraftingRecipe>.GetEnumerator'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.CraftingRecipe>::GetEnumerator()
      // 代码大小       43 (0x2b)
      .maxstack  2
      .locals init (class Game.Block/'<GetProceduralCraftingRecipes>d__86' V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.Block/'<GetProceduralCraftingRecipes>d__86'::'<>1__state'
      IL_0006:  ldc.i4.s   -2
      IL_0008:  bne.un.s   IL_0022

      IL_000a:  ldarg.0
      IL_000b:  ldfld      int32 Game.Block/'<GetProceduralCraftingRecipes>d__86'::'<>l__initialThreadId'
      IL_0010:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0015:  bne.un.s   IL_0022

      IL_0017:  ldarg.0
      IL_0018:  ldc.i4.0
      IL_0019:  stfld      int32 Game.Block/'<GetProceduralCraftingRecipes>d__86'::'<>1__state'
      IL_001e:  ldarg.0
      IL_001f:  stloc.0
      IL_0020:  br.s       IL_0029

      IL_0022:  ldc.i4.0
      IL_0023:  newobj     instance void Game.Block/'<GetProceduralCraftingRecipes>d__86'::.ctor(int32)
      IL_0028:  stloc.0
      IL_0029:  ldloc.0
      IL_002a:  ret
    } // end of method '<GetProceduralCraftingRecipes>d__86'::'System.Collections.Generic.IEnumerable<Game.CraftingRecipe>.GetEnumerator'

    .method private hidebysig newslot virtual final 
            instance class [System.Runtime]System.Collections.IEnumerator 
            System.Collections.IEnumerable.GetEnumerator() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerable::GetEnumerator
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.CraftingRecipe> Game.Block/'<GetProceduralCraftingRecipes>d__86'::'System.Collections.Generic.IEnumerable<Game.CraftingRecipe>.GetEnumerator'()
      IL_0006:  ret
    } // end of method '<GetProceduralCraftingRecipes>d__86'::System.Collections.IEnumerable.GetEnumerator

    .property instance class Game.CraftingRecipe
            'System.Collections.Generic.IEnumerator<Game.CraftingRecipe>.Current'()
    {
      .get instance class Game.CraftingRecipe Game.Block/'<GetProceduralCraftingRecipes>d__86'::'System.Collections.Generic.IEnumerator<Game.CraftingRecipe>.get_Current'()
    } // end of property '<GetProceduralCraftingRecipes>d__86'::'System.Collections.Generic.IEnumerator<Game.CraftingRecipe>.Current'
    .property instance object System.Collections.IEnumerator.Current()
    {
      .get instance object Game.Block/'<GetProceduralCraftingRecipes>d__86'::System.Collections.IEnumerator.get_Current()
    } // end of property '<GetProceduralCraftingRecipes>d__86'::System.Collections.IEnumerator.Current
  } // end of class '<GetProceduralCraftingRecipes>d__86'

  .field public int32 BlockIndex
  .field public string DefaultDisplayName
  .field public string DefaultDescription
  .field public string DefaultCategory
  .field public int32 DisplayOrder
  .field public valuetype [Engine]Engine.Vector3 DefaultIconBlockOffset
  .field public valuetype [Engine]Engine.Vector3 DefaultIconViewOffset
  .field public float32 DefaultIconViewScale
  .field public float32 FirstPersonScale
  .field public valuetype [Engine]Engine.Vector3 FirstPersonOffset
  .field public valuetype [Engine]Engine.Vector3 FirstPersonRotation
  .field public float32 InHandScale
  .field public valuetype [Engine]Engine.Vector3 InHandOffset
  .field public valuetype [Engine]Engine.Vector3 InHandRotation
  .field public string Behaviors
  .field public string CraftingId
  .field public int32 DefaultCreativeData
  .field public bool IsCollidable
  .field public bool IsPlaceable
  .field public bool IsDiggingTransparent
  .field public bool IsPlacementTransparent
  .field public bool DefaultIsInteractive
  .field public bool IsEditable
  .field public bool IsNonDuplicable
  .field public bool IsGatherable
  .field public bool HasCollisionBehavior
  .field public bool KillsWhenStuck
  .field public bool IsFluidBlocker
  .field public bool IsTransparent
  .field public int32 DefaultShadowStrength
  .field public int32 LightAttenuation
  .field public int32 EmittedLightAmount
  .field public float32 ObjectShadowStrength
  .field public int32 DefaultDropContent
  .field public float32 DefaultDropCount
  .field public float32 DefaultExperienceCount
  .field public int32 RequiredToolLevel
  .field public int32 MaxStacking
  .field public int32 MaxInHandStacking
  .field public float32 SleepSuitability
  .field public float32 FrictionFactor
  .field public float32 Density
  .field public bool NoAutoJump
  .field public bool NoSmoothRise
  .field public int32 DefaultTextureSlot
  .field public float32 DestructionDebrisScale
  .field public float32 FuelHeatLevel
  .field public float32 FuelFireDuration
  .field public string DefaultSoundMaterialName
  .field public float32 ShovelPower
  .field public float32 QuarryPower
  .field public float32 HackPower
  .field public float32 DefaultMeleePower
  .field public float32 DefaultMeleeHitProbability
  .field public float32 DefaultProjectilePower
  .field public int32 ToolLevel
  .field public int32 PlayerLevelRequired
  .field public int32 Durability
  .field public valuetype Game.BlockDigMethod DigMethod
  .field public float32 DigResilience
  .field public float32 ProjectileResilience
  .field public bool IsAimable
  .field public bool IsStickable
  .field public bool AlignToVelocity
  .field public float32 ProjectileSpeed
  .field public float32 ProjectileDamping
  .field public float32 ProjectileTipOffset
  .field public bool DisintegratesOnHit
  .field public float32 ProjectileStickProbability
  .field public float32 DefaultHeat
  .field public float32 FireDuration
  .field public float32 ExplosionResilience
  .field public float32 DefaultExplosionPressure
  .field public bool DefaultExplosionIncendiary
  .field public bool IsExplosionTransparent
  .field public float32 DefaultNutritionalValue
  .field public valuetype Game.FoodType FoodType
  .field public int32 DefaultRotPeriod
  .field public float32 DefaultSicknessProbability
  .field family class Game.Random Random
  .field private static valuetype [Engine]Engine.BoundingBox[] m_defaultCollisionBoxes
  .method public hidebysig newslot virtual 
          instance void  Initialize() cil managed
  {
    // 代码大小       102 (0x66)
    .maxstack  5
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Game.Block::Durability
    IL_0006:  ldc.i4.m1
    IL_0007:  blt.s      IL_0016

    IL_0009:  ldarg.0
    IL_000a:  ldfld      int32 Game.Block::Durability
    IL_000f:  ldc.i4     0xffff
    IL_0014:  ble.s      IL_0035

    IL_0016:  ldstr      "Block {0} has ToolDurability < -1 or > 65535."
    IL_001b:  ldc.i4.1
    IL_001c:  newarr     [System.Runtime]System.Object
    IL_0021:  dup
    IL_0022:  ldc.i4.0
    IL_0023:  ldarg.0
    IL_0024:  ldfld      string Game.Block::DefaultDisplayName
    IL_0029:  stelem.ref
    IL_002a:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_002f:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0034:  throw

    IL_0035:  ldarg.0
    IL_0036:  ldfld      int32 Game.Block::DefaultShadowStrength
    IL_003b:  ldc.i4.0
    IL_003c:  blt.s      IL_0065

    IL_003e:  ldarg.0
    IL_003f:  ldfld      bool Game.Block::IsTransparent
    IL_0044:  brtrue.s   IL_0065

    IL_0046:  ldstr      "Block {0} has DefaultShadowStrength >= 0 when IsTr"
    + "ansparent == false. DefaultShadowStrength must be -1 for non-transparen"
    + "t blocks."
    IL_004b:  ldc.i4.1
    IL_004c:  newarr     [System.Runtime]System.Object
    IL_0051:  dup
    IL_0052:  ldc.i4.0
    IL_0053:  ldarg.0
    IL_0054:  ldfld      string Game.Block::DefaultDisplayName
    IL_0059:  stelem.ref
    IL_005a:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_005f:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0064:  throw

    IL_0065:  ret
  } // end of method Block::Initialize

  .method public hidebysig newslot virtual 
          instance string  GetDisplayName(class Game.SubsystemTerrain subsystemTerrain,
                                          int32 'value') cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string Game.Block::DefaultDisplayName
    IL_0006:  ret
  } // end of method Block::GetDisplayName

  .method public hidebysig newslot virtual 
          instance string  GetDescription(int32 'value') cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string Game.Block::DefaultDescription
    IL_0006:  ret
  } // end of method Block::GetDescription

  .method public hidebysig newslot virtual 
          instance string  GetCategory(int32 'value') cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string Game.Block::DefaultCategory
    IL_0006:  ret
  } // end of method Block::GetCategory

  .method public hidebysig newslot virtual 
          instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32> 
          GetCreativeValues() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.IteratorStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 23 47 61 6D 65 2E 42 6C 6F 63 6B 2B 3C 47   // ..#Game.Block+<G
                                                                                                                                                      65 74 43 72 65 61 74 69 76 65 56 61 6C 75 65 73   // etCreativeValues
                                                                                                                                                      3E 64 5F 5F 38 34 00 00 )                         // >d__84..
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  ldc.i4.s   -2
    IL_0002:  newobj     instance void Game.Block/'<GetCreativeValues>d__84'::.ctor(int32)
    IL_0007:  dup
    IL_0008:  ldarg.0
    IL_0009:  stfld      class Game.Block Game.Block/'<GetCreativeValues>d__84'::'<>4__this'
    IL_000e:  ret
  } // end of method Block::GetCreativeValues

  .method public hidebysig newslot virtual 
          instance bool  IsInteractive(class Game.SubsystemTerrain subsystemTerrain,
                                       int32 'value') cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.Block::DefaultIsInteractive
    IL_0006:  ret
  } // end of method Block::IsInteractive

  .method public hidebysig newslot virtual 
          instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.CraftingRecipe> 
          GetProceduralCraftingRecipes() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.IteratorStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 2E 47 61 6D 65 2E 42 6C 6F 63 6B 2B 3C 47   // ...Game.Block+<G
                                                                                                                                                      65 74 50 72 6F 63 65 64 75 72 61 6C 43 72 61 66   // etProceduralCraf
                                                                                                                                                      74 69 6E 67 52 65 63 69 70 65 73 3E 64 5F 5F 38   // tingRecipes>d__8
                                                                                                                                                      36 00 00 )                                        // 6..
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldc.i4.s   -2
    IL_0002:  newobj     instance void Game.Block/'<GetProceduralCraftingRecipes>d__86'::.ctor(int32)
    IL_0007:  ret
  } // end of method Block::GetProceduralCraftingRecipes

  .method public hidebysig newslot virtual 
          instance class Game.CraftingRecipe 
          GetAdHocCraftingRecipe(class Game.SubsystemTerrain subsystemTerrain,
                                 string[] ingredients,
                                 float32 heatLevel) cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldnull
    IL_0001:  ret
  } // end of method Block::GetAdHocCraftingRecipe

  .method public hidebysig newslot virtual 
          instance bool  IsFaceTransparent(int32 face,
                                           int32 'value') cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.Block::IsTransparent
    IL_0006:  ret
  } // end of method Block::IsFaceTransparent

  .method public hidebysig newslot virtual 
          instance bool  ShouldGenerateFace(int32 face,
                                            int32 'value',
                                            int32 neighborValue) cil managed
  {
    // 代码大小       27 (0x1b)
    .maxstack  3
    .locals init (int32 V_0)
    IL_0000:  ldarg.3
    IL_0001:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0006:  stloc.0
    IL_0007:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_000c:  ldloc.0
    IL_000d:  ldelem.ref
    IL_000e:  ldarg.1
    IL_000f:  call       int32 Game.CellFace::OppositeFace(int32)
    IL_0014:  ldarg.3
    IL_0015:  callvirt   instance bool Game.Block::IsFaceTransparent(int32,
                                                                     int32)
    IL_001a:  ret
  } // end of method Block::ShouldGenerateFace

  .method public hidebysig newslot virtual 
          instance int32  GetShadowStrength(int32 'value') cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Game.Block::DefaultShadowStrength
    IL_0006:  ret
  } // end of method Block::GetShadowStrength

  .method public hidebysig newslot virtual 
          instance int32  GetFaceTextureSlot(int32 face,
                                             int32 'value') cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Game.Block::DefaultTextureSlot
    IL_0006:  ret
  } // end of method Block::GetFaceTextureSlot

  .method public hidebysig newslot virtual 
          instance string  GetSoundMaterialName(class Game.SubsystemTerrain subsystemTerrain,
                                                int32 'value') cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string Game.Block::DefaultSoundMaterialName
    IL_0006:  ret
  } // end of method Block::GetSoundMaterialName

  .method public hidebysig newslot abstract virtual 
          instance void  GenerateTerrainVertices(class Game.BlockGeometryGenerator generator,
                                                 class Game.TerrainGeometrySubsets geometry,
                                                 int32 'value',
                                                 int32 x,
                                                 int32 y,
                                                 int32 z) cil managed
  {
  } // end of method Block::GenerateTerrainVertices

  .method public hidebysig newslot abstract virtual 
          instance void  DrawBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D primitivesRenderer,
                                   int32 'value',
                                   valuetype [Engine]Engine.Color color,
                                   float32 size,
                                   valuetype [Engine]Engine.Matrix& matrix,
                                   class Game.DrawBlockEnvironmentData environmentData) cil managed
  {
  } // end of method Block::DrawBlock

  .method public hidebysig newslot virtual 
          instance valuetype Game.BlockPlacementData 
          GetPlacementValue(class Game.SubsystemTerrain subsystemTerrain,
                            class Game.ComponentMiner componentMiner,
                            int32 'value',
                            valuetype Game.TerrainRaycastResult raycastResult) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  2
    .locals init (valuetype Game.BlockPlacementData V_0)
    IL_0000:  ldloca.s   V_0
    IL_0002:  initobj    Game.BlockPlacementData
    IL_0008:  ldloca.s   V_0
    IL_000a:  ldarg.3
    IL_000b:  stfld      int32 Game.BlockPlacementData::Value
    IL_0010:  ldloca.s   V_0
    IL_0012:  ldarg.s    raycastResult
    IL_0014:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0019:  stfld      valuetype Game.CellFace Game.BlockPlacementData::CellFace
    IL_001e:  ldloc.0
    IL_001f:  ret
  } // end of method Block::GetPlacementValue

  .method public hidebysig newslot virtual 
          instance valuetype Game.BlockPlacementData 
          GetDigValue(class Game.SubsystemTerrain subsystemTerrain,
                      class Game.ComponentMiner componentMiner,
                      int32 'value',
                      int32 toolValue,
                      valuetype Game.TerrainRaycastResult raycastResult) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  2
    .locals init (valuetype Game.BlockPlacementData V_0)
    IL_0000:  ldloca.s   V_0
    IL_0002:  initobj    Game.BlockPlacementData
    IL_0008:  ldloca.s   V_0
    IL_000a:  ldc.i4.0
    IL_000b:  stfld      int32 Game.BlockPlacementData::Value
    IL_0010:  ldloca.s   V_0
    IL_0012:  ldarg.s    raycastResult
    IL_0014:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0019:  stfld      valuetype Game.CellFace Game.BlockPlacementData::CellFace
    IL_001e:  ldloc.0
    IL_001f:  ret
  } // end of method Block::GetDigValue

  .method public hidebysig newslot virtual 
          instance void  GetDropValues(class Game.SubsystemTerrain subsystemTerrain,
                                       int32 oldValue,
                                       int32 newValue,
                                       int32 toolLevel,
                                       class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue> dropValues,
                                       [out] bool& showDebris) cil managed
  {
    // 代码大小       217 (0xd9)
    .maxstack  3
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             valuetype Game.BlockDropValue V_3,
             int32 V_4)
    IL_0000:  ldarg.s    showDebris
    IL_0002:  ldarg.0
    IL_0003:  ldfld      float32 Game.Block::DestructionDebrisScale
    IL_0008:  ldc.r4     0.0
    IL_000d:  cgt
    IL_000f:  stind.i1
    IL_0010:  ldarg.s    toolLevel
    IL_0012:  ldarg.0
    IL_0013:  ldfld      int32 Game.Block::RequiredToolLevel
    IL_0018:  blt        IL_00d8

    IL_001d:  ldarg.0
    IL_001e:  ldfld      int32 Game.Block::DefaultDropContent
    IL_0023:  brfalse.s  IL_007d

    IL_0025:  ldarg.0
    IL_0026:  ldfld      float32 Game.Block::DefaultDropCount
    IL_002b:  conv.i4
    IL_002c:  stloc.1
    IL_002d:  ldarg.0
    IL_002e:  ldfld      class Game.Random Game.Block::Random
    IL_0033:  ldarg.0
    IL_0034:  ldfld      float32 Game.Block::DefaultDropCount
    IL_0039:  ldloc.1
    IL_003a:  conv.r4
    IL_003b:  sub
    IL_003c:  callvirt   instance bool Game.Random::Bool(float32)
    IL_0041:  brfalse.s  IL_0047

    IL_0043:  ldloc.1
    IL_0044:  ldc.i4.1
    IL_0045:  add
    IL_0046:  stloc.1
    IL_0047:  ldc.i4.0
    IL_0048:  stloc.2
    IL_0049:  br.s       IL_0079

    IL_004b:  ldarg.s    dropValues
    IL_004d:  ldloca.s   V_3
    IL_004f:  initobj    Game.BlockDropValue
    IL_0055:  ldloca.s   V_3
    IL_0057:  ldarg.0
    IL_0058:  ldfld      int32 Game.Block::DefaultDropContent
    IL_005d:  call       int32 Game.Terrain::MakeBlockValue(int32)
    IL_0062:  stfld      int32 Game.BlockDropValue::Value
    IL_0067:  ldloca.s   V_3
    IL_0069:  ldc.i4.1
    IL_006a:  stfld      int32 Game.BlockDropValue::Count
    IL_006f:  ldloc.3
    IL_0070:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue>::Add(!0)
    IL_0075:  ldloc.2
    IL_0076:  ldc.i4.1
    IL_0077:  add
    IL_0078:  stloc.2
    IL_0079:  ldloc.2
    IL_007a:  ldloc.1
    IL_007b:  blt.s      IL_004b

    IL_007d:  ldarg.0
    IL_007e:  ldfld      float32 Game.Block::DefaultExperienceCount
    IL_0083:  conv.i4
    IL_0084:  stloc.0
    IL_0085:  ldarg.0
    IL_0086:  ldfld      class Game.Random Game.Block::Random
    IL_008b:  ldarg.0
    IL_008c:  ldfld      float32 Game.Block::DefaultExperienceCount
    IL_0091:  ldloc.0
    IL_0092:  conv.r4
    IL_0093:  sub
    IL_0094:  callvirt   instance bool Game.Random::Bool(float32)
    IL_0099:  brfalse.s  IL_009f

    IL_009b:  ldloc.0
    IL_009c:  ldc.i4.1
    IL_009d:  add
    IL_009e:  stloc.0
    IL_009f:  ldc.i4.0
    IL_00a0:  stloc.s    V_4
    IL_00a2:  br.s       IL_00d3

    IL_00a4:  ldarg.s    dropValues
    IL_00a6:  ldloca.s   V_3
    IL_00a8:  initobj    Game.BlockDropValue
    IL_00ae:  ldloca.s   V_3
    IL_00b0:  ldc.i4     0xf8
    IL_00b5:  call       int32 Game.Terrain::MakeBlockValue(int32)
    IL_00ba:  stfld      int32 Game.BlockDropValue::Value
    IL_00bf:  ldloca.s   V_3
    IL_00c1:  ldc.i4.1
    IL_00c2:  stfld      int32 Game.BlockDropValue::Count
    IL_00c7:  ldloc.3
    IL_00c8:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue>::Add(!0)
    IL_00cd:  ldloc.s    V_4
    IL_00cf:  ldc.i4.1
    IL_00d0:  add
    IL_00d1:  stloc.s    V_4
    IL_00d3:  ldloc.s    V_4
    IL_00d5:  ldloc.0
    IL_00d6:  blt.s      IL_00a4

    IL_00d8:  ret
  } // end of method Block::GetDropValues

  .method public hidebysig newslot virtual 
          instance int32  GetDamage(int32 'value') cil managed
  {
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  ldc.i4.4
    IL_0007:  shr
    IL_0008:  ldc.i4     0xfff
    IL_000d:  and
    IL_000e:  ret
  } // end of method Block::GetDamage

  .method public hidebysig newslot virtual 
          instance int32  SetDamage(int32 'value',
                                    int32 damage) cil managed
  {
    // 代码大小       37 (0x25)
    .maxstack  4
    .locals init (int32 V_0)
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  ldc.i4.s   15
    IL_000a:  and
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  ldarg.2
    IL_000e:  ldc.i4.0
    IL_000f:  ldc.i4     0xfff
    IL_0014:  call       int32 [Engine]Engine.MathUtils::Clamp(int32,
                                                               int32,
                                                               int32)
    IL_0019:  ldc.i4.4
    IL_001a:  shl
    IL_001b:  or
    IL_001c:  stloc.0
    IL_001d:  ldarg.1
    IL_001e:  ldloc.0
    IL_001f:  call       int32 Game.Terrain::ReplaceData(int32,
                                                         int32)
    IL_0024:  ret
  } // end of method Block::SetDamage

  .method public hidebysig newslot virtual 
          instance int32  GetDamageDestructionValue(int32 'value') cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method Block::GetDamageDestructionValue

  .method public hidebysig newslot virtual 
          instance int32  GetRotPeriod(int32 'value') cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Game.Block::DefaultRotPeriod
    IL_0006:  ret
  } // end of method Block::GetRotPeriod

  .method public hidebysig newslot virtual 
          instance float32  GetSicknessProbability(int32 'value') cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.Block::DefaultSicknessProbability
    IL_0006:  ret
  } // end of method Block::GetSicknessProbability

  .method public hidebysig newslot virtual 
          instance float32  GetMeleePower(int32 'value') cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.Block::DefaultMeleePower
    IL_0006:  ret
  } // end of method Block::GetMeleePower

  .method public hidebysig newslot virtual 
          instance float32  GetMeleeHitProbability(int32 'value') cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.Block::DefaultMeleeHitProbability
    IL_0006:  ret
  } // end of method Block::GetMeleeHitProbability

  .method public hidebysig newslot virtual 
          instance float32  GetProjectilePower(int32 'value') cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.Block::DefaultProjectilePower
    IL_0006:  ret
  } // end of method Block::GetProjectilePower

  .method public hidebysig newslot virtual 
          instance float32  GetHeat(int32 'value') cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.Block::DefaultHeat
    IL_0006:  ret
  } // end of method Block::GetHeat

  .method public hidebysig newslot virtual 
          instance float32  GetExplosionPressure(int32 'value') cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.Block::DefaultExplosionPressure
    IL_0006:  ret
  } // end of method Block::GetExplosionPressure

  .method public hidebysig newslot virtual 
          instance bool  GetExplosionIncendiary(int32 'value') cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.Block::DefaultExplosionIncendiary
    IL_0006:  ret
  } // end of method Block::GetExplosionIncendiary

  .method public hidebysig newslot virtual 
          instance valuetype [Engine]Engine.Vector3 
          GetIconBlockOffset(int32 'value',
                             class Game.DrawBlockEnvironmentData environmentData) cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector3 Game.Block::DefaultIconBlockOffset
    IL_0006:  ret
  } // end of method Block::GetIconBlockOffset

  .method public hidebysig newslot virtual 
          instance valuetype [Engine]Engine.Vector3 
          GetIconViewOffset(int32 'value',
                            class Game.DrawBlockEnvironmentData environmentData) cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector3 Game.Block::DefaultIconViewOffset
    IL_0006:  ret
  } // end of method Block::GetIconViewOffset

  .method public hidebysig newslot virtual 
          instance float32  GetIconViewScale(int32 'value',
                                             class Game.DrawBlockEnvironmentData environmentData) cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.Block::DefaultIconViewScale
    IL_0006:  ret
  } // end of method Block::GetIconViewScale

  .method public hidebysig newslot virtual 
          instance class Game.BlockDebrisParticleSystem 
          CreateDebrisParticleSystem(class Game.SubsystemTerrain subsystemTerrain,
                                     valuetype [Engine]Engine.Vector3 position,
                                     int32 'value',
                                     float32 strength) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.2
    IL_0002:  ldarg.s    strength
    IL_0004:  ldarg.0
    IL_0005:  ldfld      float32 Game.Block::DestructionDebrisScale
    IL_000a:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_000f:  ldarg.0
    IL_0010:  ldc.i4.4
    IL_0011:  ldarg.3
    IL_0012:  callvirt   instance int32 Game.Block::GetFaceTextureSlot(int32,
                                                                       int32)
    IL_0017:  newobj     instance void Game.BlockDebrisParticleSystem::.ctor(class Game.SubsystemTerrain,
                                                                             valuetype [Engine]Engine.Vector3,
                                                                             float32,
                                                                             float32,
                                                                             valuetype [Engine]Engine.Color,
                                                                             int32)
    IL_001c:  ret
  } // end of method Block::CreateDebrisParticleSystem

  .method public hidebysig newslot virtual 
          instance valuetype [Engine]Engine.BoundingBox[] 
          GetCustomCollisionBoxes(class Game.SubsystemTerrain terrain,
                                  int32 'value') cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     valuetype [Engine]Engine.BoundingBox[] Game.Block::m_defaultCollisionBoxes
    IL_0005:  ret
  } // end of method Block::GetCustomCollisionBoxes

  .method public hidebysig newslot virtual 
          instance valuetype [Engine]Engine.BoundingBox[] 
          GetCustomInteractionBoxes(class Game.SubsystemTerrain terrain,
                                    int32 'value') cil managed
  {
    // 代码大小       9 (0x9)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  callvirt   instance valuetype [Engine]Engine.BoundingBox[] Game.Block::GetCustomCollisionBoxes(class Game.SubsystemTerrain,
                                                                                                             int32)
    IL_0008:  ret
  } // end of method Block::GetCustomInteractionBoxes

  .method public hidebysig newslot virtual 
          instance int32  GetEmittedLightAmount(int32 'value') cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Game.Block::EmittedLightAmount
    IL_0006:  ret
  } // end of method Block::GetEmittedLightAmount

  .method public hidebysig newslot virtual 
          instance float32  GetNutritionalValue(int32 'value') cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.Block::DefaultNutritionalValue
    IL_0006:  ret
  } // end of method Block::GetNutritionalValue

  .method public hidebysig newslot virtual 
          instance bool  ShouldAvoid(int32 'value') cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method Block::ShouldAvoid

  .method public hidebysig newslot virtual 
          instance bool  IsSwapAnimationNeeded(int32 oldValue,
                                               int32 newValue) cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.1
    IL_0001:  ret
  } // end of method Block::IsSwapAnimationNeeded

  .method public hidebysig newslot virtual 
          instance bool  IsHeatBlocker(int32 'value') cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.Block::IsCollidable
    IL_0006:  ret
  } // end of method Block::IsHeatBlocker

  .method family hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       382 (0x17e)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0006:  stfld      string Game.Block::DefaultDisplayName
    IL_000b:  ldarg.0
    IL_000c:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0011:  stfld      string Game.Block::DefaultDescription
    IL_0016:  ldarg.0
    IL_0017:  ldsfld     string [System.Runtime]System.String::Empty
    IL_001c:  stfld      string Game.Block::DefaultCategory
    IL_0021:  ldarg.0
    IL_0022:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_0027:  stfld      valuetype [Engine]Engine.Vector3 Game.Block::DefaultIconBlockOffset
    IL_002c:  ldarg.0
    IL_002d:  ldc.r4     1.
    IL_0032:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32)
    IL_0037:  stfld      valuetype [Engine]Engine.Vector3 Game.Block::DefaultIconViewOffset
    IL_003c:  ldarg.0
    IL_003d:  ldc.r4     1.
    IL_0042:  stfld      float32 Game.Block::DefaultIconViewScale
    IL_0047:  ldarg.0
    IL_0048:  ldc.r4     1.
    IL_004d:  stfld      float32 Game.Block::FirstPersonScale
    IL_0052:  ldarg.0
    IL_0053:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_0058:  stfld      valuetype [Engine]Engine.Vector3 Game.Block::FirstPersonOffset
    IL_005d:  ldarg.0
    IL_005e:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_0063:  stfld      valuetype [Engine]Engine.Vector3 Game.Block::FirstPersonRotation
    IL_0068:  ldarg.0
    IL_0069:  ldc.r4     1.
    IL_006e:  stfld      float32 Game.Block::InHandScale
    IL_0073:  ldarg.0
    IL_0074:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_0079:  stfld      valuetype [Engine]Engine.Vector3 Game.Block::InHandOffset
    IL_007e:  ldarg.0
    IL_007f:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_0084:  stfld      valuetype [Engine]Engine.Vector3 Game.Block::InHandRotation
    IL_0089:  ldarg.0
    IL_008a:  ldsfld     string [System.Runtime]System.String::Empty
    IL_008f:  stfld      string Game.Block::Behaviors
    IL_0094:  ldarg.0
    IL_0095:  ldsfld     string [System.Runtime]System.String::Empty
    IL_009a:  stfld      string Game.Block::CraftingId
    IL_009f:  ldarg.0
    IL_00a0:  ldc.i4.1
    IL_00a1:  stfld      bool Game.Block::IsCollidable
    IL_00a6:  ldarg.0
    IL_00a7:  ldc.i4.1
    IL_00a8:  stfld      bool Game.Block::IsPlaceable
    IL_00ad:  ldarg.0
    IL_00ae:  ldc.i4.1
    IL_00af:  stfld      bool Game.Block::IsFluidBlocker
    IL_00b4:  ldarg.0
    IL_00b5:  ldc.r4     1.
    IL_00ba:  stfld      float32 Game.Block::DefaultDropCount
    IL_00bf:  ldarg.0
    IL_00c0:  ldc.i4.s   40
    IL_00c2:  stfld      int32 Game.Block::MaxStacking
    IL_00c7:  ldarg.0
    IL_00c8:  ldc.i4.s   40
    IL_00ca:  stfld      int32 Game.Block::MaxInHandStacking
    IL_00cf:  ldarg.0
    IL_00d0:  ldc.r4     1.
    IL_00d5:  stfld      float32 Game.Block::FrictionFactor
    IL_00da:  ldarg.0
    IL_00db:  ldc.r4     4.
    IL_00e0:  stfld      float32 Game.Block::Density
    IL_00e5:  ldarg.0
    IL_00e6:  ldc.r4     1.
    IL_00eb:  stfld      float32 Game.Block::DestructionDebrisScale
    IL_00f0:  ldarg.0
    IL_00f1:  ldc.r4     1.
    IL_00f6:  stfld      float32 Game.Block::ShovelPower
    IL_00fb:  ldarg.0
    IL_00fc:  ldc.r4     1.
    IL_0101:  stfld      float32 Game.Block::QuarryPower
    IL_0106:  ldarg.0
    IL_0107:  ldc.r4     1.
    IL_010c:  stfld      float32 Game.Block::HackPower
    IL_0111:  ldarg.0
    IL_0112:  ldc.r4     1.
    IL_0117:  stfld      float32 Game.Block::DefaultMeleePower
    IL_011c:  ldarg.0
    IL_011d:  ldc.r4     0.66000003
    IL_0122:  stfld      float32 Game.Block::DefaultMeleeHitProbability
    IL_0127:  ldarg.0
    IL_0128:  ldc.r4     1.
    IL_012d:  stfld      float32 Game.Block::DefaultProjectilePower
    IL_0132:  ldarg.0
    IL_0133:  ldc.i4.1
    IL_0134:  stfld      int32 Game.Block::PlayerLevelRequired
    IL_0139:  ldarg.0
    IL_013a:  ldc.i4.m1
    IL_013b:  stfld      int32 Game.Block::Durability
    IL_0140:  ldarg.0
    IL_0141:  ldc.r4     1.
    IL_0146:  stfld      float32 Game.Block::DigResilience
    IL_014b:  ldarg.0
    IL_014c:  ldc.r4     1.
    IL_0151:  stfld      float32 Game.Block::ProjectileResilience
    IL_0156:  ldarg.0
    IL_0157:  ldc.r4     15.
    IL_015c:  stfld      float32 Game.Block::ProjectileSpeed
    IL_0161:  ldarg.0
    IL_0162:  ldc.r4     0.80000001
    IL_0167:  stfld      float32 Game.Block::ProjectileDamping
    IL_016c:  ldarg.0
    IL_016d:  newobj     instance void Game.Random::.ctor()
    IL_0172:  stfld      class Game.Random Game.Block::Random
    IL_0177:  ldarg.0
    IL_0178:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_017d:  ret
  } // end of method Block::.ctor

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       34 (0x22)
    .maxstack  8
    IL_0000:  ldc.i4.1
    IL_0001:  newarr     [Engine]Engine.BoundingBox
    IL_0006:  dup
    IL_0007:  ldc.i4.0
    IL_0008:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_000d:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::One
    IL_0012:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_0017:  stelem     [Engine]Engine.BoundingBox
    IL_001c:  stsfld     valuetype [Engine]Engine.BoundingBox[] Game.Block::m_defaultCollisionBoxes
    IL_0021:  ret
  } // end of method Block::.cctor

} // end of class Game.Block