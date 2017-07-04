.class public auto ansi beforefieldinit Game.ComponentPlayer
       extends Game.ComponentCreature
       implements Game.IUpdateable
{
  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass71_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public int32 playerIndex
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass71_0'::.ctor

    .method assembly hidebysig instance bool 
            '<Load>b__0'(class Game.PlayerData d) cil managed
    {
      // 代码大小       15 (0xf)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  callvirt   instance int32 Game.PlayerData::get_PlayerIndex()
      IL_0006:  ldarg.0
      IL_0007:  ldfld      int32 Game.ComponentPlayer/'<>c__DisplayClass71_0'::playerIndex
      IL_000c:  ceq
      IL_000e:  ret
    } // end of method '<>c__DisplayClass71_0'::'<Load>b__0'

  } // end of class '<>c__DisplayClass71_0'

  .field private class Game.SubsystemGameInfo m_subsystemGameInfo
  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.SubsystemAudio m_subsystemAudio
  .field private class Game.SubsystemPickables m_subsystemPickables
  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private float64 m_lastActionTime
  .field private bool m_speedOrderBlocked
  .field private valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> m_aimDirection
  .field private bool m_isAimBlocked
  .field private bool m_isDigBlocked
  .field private class Game.PlayerData '<PlayerData>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class Game.ComponentGui '<ComponentGui>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class Game.ComponentInput '<ComponentInput>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class Game.ComponentScreenOverlays '<ComponentScreenOverlays>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class Game.ComponentMiner '<ComponentMiner>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class Game.ComponentRider '<ComponentRider>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class Game.ComponentSleep '<ComponentSleep>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class Game.ComponentVitalStats '<ComponentVitalStats>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class Game.ComponentSickness '<ComponentSickness>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class Game.ComponentFlu '<ComponentFlu>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class Game.ComponentLevel '<ComponentLevel>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class Game.ComponentClothing '<ComponentClothing>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class Game.ComponentOuterClothingModel '<ComponentOuterClothingModel>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> '<HighlightRaycastResult>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname instance class Game.PlayerData 
          get_PlayerData() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.PlayerData Game.ComponentPlayer::'<PlayerData>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentPlayer::get_PlayerData

  .method private hidebysig specialname instance void 
          set_PlayerData(class Game.PlayerData 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.PlayerData Game.ComponentPlayer::'<PlayerData>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentPlayer::set_PlayerData

  .method public hidebysig specialname instance class Game.View 
          get_View() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.PlayerData Game.ComponentPlayer::get_PlayerData()
    IL_0006:  callvirt   instance class Game.View Game.PlayerData::get_View()
    IL_000b:  ret
  } // end of method ComponentPlayer::get_View

  .method public hidebysig specialname instance class Game.ComponentGui 
          get_ComponentGui() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentGui Game.ComponentPlayer::'<ComponentGui>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentPlayer::get_ComponentGui

  .method private hidebysig specialname instance void 
          set_ComponentGui(class Game.ComponentGui 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.ComponentGui Game.ComponentPlayer::'<ComponentGui>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentPlayer::set_ComponentGui

  .method public hidebysig specialname instance class Game.ComponentInput 
          get_ComponentInput() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentInput Game.ComponentPlayer::'<ComponentInput>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentPlayer::get_ComponentInput

  .method private hidebysig specialname instance void 
          set_ComponentInput(class Game.ComponentInput 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.ComponentInput Game.ComponentPlayer::'<ComponentInput>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentPlayer::set_ComponentInput

  .method public hidebysig specialname instance class Game.ComponentScreenOverlays 
          get_ComponentScreenOverlays() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentScreenOverlays Game.ComponentPlayer::'<ComponentScreenOverlays>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentPlayer::get_ComponentScreenOverlays

  .method private hidebysig specialname instance void 
          set_ComponentScreenOverlays(class Game.ComponentScreenOverlays 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.ComponentScreenOverlays Game.ComponentPlayer::'<ComponentScreenOverlays>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentPlayer::set_ComponentScreenOverlays

  .method public hidebysig specialname instance class Game.ComponentMiner 
          get_ComponentMiner() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentMiner Game.ComponentPlayer::'<ComponentMiner>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentPlayer::get_ComponentMiner

  .method private hidebysig specialname instance void 
          set_ComponentMiner(class Game.ComponentMiner 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.ComponentMiner Game.ComponentPlayer::'<ComponentMiner>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentPlayer::set_ComponentMiner

  .method public hidebysig specialname instance class Game.ComponentRider 
          get_ComponentRider() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentRider Game.ComponentPlayer::'<ComponentRider>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentPlayer::get_ComponentRider

  .method private hidebysig specialname instance void 
          set_ComponentRider(class Game.ComponentRider 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.ComponentRider Game.ComponentPlayer::'<ComponentRider>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentPlayer::set_ComponentRider

  .method public hidebysig specialname instance class Game.ComponentSleep 
          get_ComponentSleep() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentSleep Game.ComponentPlayer::'<ComponentSleep>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentPlayer::get_ComponentSleep

  .method private hidebysig specialname instance void 
          set_ComponentSleep(class Game.ComponentSleep 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.ComponentSleep Game.ComponentPlayer::'<ComponentSleep>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentPlayer::set_ComponentSleep

  .method public hidebysig specialname instance class Game.ComponentVitalStats 
          get_ComponentVitalStats() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentVitalStats Game.ComponentPlayer::'<ComponentVitalStats>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentPlayer::get_ComponentVitalStats

  .method private hidebysig specialname instance void 
          set_ComponentVitalStats(class Game.ComponentVitalStats 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.ComponentVitalStats Game.ComponentPlayer::'<ComponentVitalStats>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentPlayer::set_ComponentVitalStats

  .method public hidebysig specialname instance class Game.ComponentSickness 
          get_ComponentSickness() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentSickness Game.ComponentPlayer::'<ComponentSickness>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentPlayer::get_ComponentSickness

  .method private hidebysig specialname instance void 
          set_ComponentSickness(class Game.ComponentSickness 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.ComponentSickness Game.ComponentPlayer::'<ComponentSickness>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentPlayer::set_ComponentSickness

  .method public hidebysig specialname instance class Game.ComponentFlu 
          get_ComponentFlu() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentFlu Game.ComponentPlayer::'<ComponentFlu>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentPlayer::get_ComponentFlu

  .method private hidebysig specialname instance void 
          set_ComponentFlu(class Game.ComponentFlu 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.ComponentFlu Game.ComponentPlayer::'<ComponentFlu>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentPlayer::set_ComponentFlu

  .method public hidebysig specialname instance class Game.ComponentLevel 
          get_ComponentLevel() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentLevel Game.ComponentPlayer::'<ComponentLevel>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentPlayer::get_ComponentLevel

  .method private hidebysig specialname instance void 
          set_ComponentLevel(class Game.ComponentLevel 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.ComponentLevel Game.ComponentPlayer::'<ComponentLevel>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentPlayer::set_ComponentLevel

  .method public hidebysig specialname instance class Game.ComponentClothing 
          get_ComponentClothing() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentClothing Game.ComponentPlayer::'<ComponentClothing>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentPlayer::get_ComponentClothing

  .method private hidebysig specialname instance void 
          set_ComponentClothing(class Game.ComponentClothing 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.ComponentClothing Game.ComponentPlayer::'<ComponentClothing>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentPlayer::set_ComponentClothing

  .method public hidebysig specialname instance class Game.ComponentOuterClothingModel 
          get_ComponentOuterClothingModel() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentOuterClothingModel Game.ComponentPlayer::'<ComponentOuterClothingModel>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentPlayer::get_ComponentOuterClothingModel

  .method private hidebysig specialname instance void 
          set_ComponentOuterClothingModel(class Game.ComponentOuterClothingModel 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.ComponentOuterClothingModel Game.ComponentPlayer::'<ComponentOuterClothingModel>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentPlayer::set_ComponentOuterClothingModel

  .method public hidebysig specialname instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> 
          get_HighlightRaycastResult() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> Game.ComponentPlayer::'<HighlightRaycastResult>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentPlayer::get_HighlightRaycastResult

  .method private hidebysig specialname instance void 
          set_HighlightRaycastResult(valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> Game.ComponentPlayer::'<HighlightRaycastResult>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentPlayer::set_HighlightRaycastResult

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method ComponentPlayer::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       3398 (0xd46)
    .maxstack  7
    .locals init (valuetype Game.PlayerInput V_0,
             class Game.ComponentSteedBehavior V_1,
             class Game.ComponentBoat V_2,
             class Game.ComponentMount V_3,
             int32 V_4,
             class Game.Block V_5,
             bool V_6,
             float32 V_7,
             valuetype [Engine]Engine.Vector3 V_8,
             valuetype [Engine]Engine.Vector3 V_9,
             valuetype [Engine]Engine.Vector3 V_10,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.BodyRaycastResult> V_11,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> V_12,
             valuetype [Engine]Engine.Vector2 V_13,
             valuetype [Engine]Engine.Vector3 V_14,
             valuetype [Engine]Engine.Point2 V_15,
             valuetype [Engine]Engine.Vector3 V_16,
             valuetype [Engine]Engine.Vector3 V_17,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> V_18,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.BodyRaycastResult> V_19,
             valuetype [Engine]Engine.Vector3 V_20,
             valuetype [Engine]Engine.Vector3 V_21,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> V_22,
             int32 V_23,
             int32 V_24,
             int32 V_25,
             valuetype [Engine]Engine.Vector3 V_26,
             valuetype [Engine]Engine.Vector3 V_27,
             valuetype [Engine]Engine.Matrix V_28,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> V_29,
             class Game.ComponentCreativeInventory V_30,
             valuetype [Engine]Engine.Vector3 V_31,
             valuetype [Engine]Engine.Vector3 V_32,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> V_33,
             int32 V_34,
             int32 V_35,
             class Game.Block V_36,
             int32 V_37,
             class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32> V_38,
             class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue> V_39,
             bool V_40,
             int32 V_41,
             int32 V_42,
             int32 V_43)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.ComponentInput Game.ComponentPlayer::get_ComponentInput()
    IL_0006:  callvirt   instance valuetype Game.PlayerInput Game.ComponentInput::get_PlayerInput()
    IL_000b:  stloc.0
    IL_000c:  ldarg.0
    IL_000d:  call       instance class Game.ComponentInput Game.ComponentPlayer::get_ComponentInput()
    IL_0012:  callvirt   instance bool Game.ComponentInput::get_IsControlledByTouch()
    IL_0017:  brfalse.s  IL_0032

    IL_0019:  ldarg.0
    IL_001a:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPlayer::m_aimDirection
    IL_001f:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_0024:  brfalse.s  IL_0032

    IL_0026:  ldloca.s   V_0
    IL_0028:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_002d:  stfld      valuetype [Engine]Engine.Vector2 Game.PlayerInput::Look
    IL_0032:  ldarg.0
    IL_0033:  call       instance class Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_0038:  callvirt   instance class Game.IInventory Game.ComponentMiner::get_Inventory()
    IL_003d:  brfalse.s  IL_009e

    IL_003f:  ldarg.0
    IL_0040:  call       instance class Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_0045:  callvirt   instance class Game.IInventory Game.ComponentMiner::get_Inventory()
    IL_004a:  ldarg.0
    IL_004b:  call       instance class Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_0050:  callvirt   instance class Game.IInventory Game.ComponentMiner::get_Inventory()
    IL_0055:  callvirt   instance int32 Game.IInventory::get_ActiveSlotIndex()
    IL_005a:  ldloc.0
    IL_005b:  ldfld      int32 Game.PlayerInput::ScrollInventory
    IL_0060:  add
    IL_0061:  ldc.i4.0
    IL_0062:  ldc.i4.5
    IL_0063:  call       int32 [Engine]Engine.MathUtils::Clamp(int32,
                                                               int32,
                                                               int32)
    IL_0068:  callvirt   instance void Game.IInventory::set_ActiveSlotIndex(int32)
    IL_006d:  ldloca.s   V_0
    IL_006f:  ldflda     valuetype [System.Runtime]System.Nullable`1<int32> Game.PlayerInput::SelectInventorySlot
    IL_0074:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0079:  brfalse.s  IL_009e

    IL_007b:  ldarg.0
    IL_007c:  call       instance class Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_0081:  callvirt   instance class Game.IInventory Game.ComponentMiner::get_Inventory()
    IL_0086:  ldloca.s   V_0
    IL_0088:  ldflda     valuetype [System.Runtime]System.Nullable`1<int32> Game.PlayerInput::SelectInventorySlot
    IL_008d:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
    IL_0092:  ldc.i4.0
    IL_0093:  ldc.i4.5
    IL_0094:  call       int32 [Engine]Engine.MathUtils::Clamp(int32,
                                                               int32,
                                                               int32)
    IL_0099:  callvirt   instance void Game.IInventory::set_ActiveSlotIndex(int32)
    IL_009e:  ldnull
    IL_009f:  stloc.1
    IL_00a0:  ldnull
    IL_00a1:  stloc.2
    IL_00a2:  ldarg.0
    IL_00a3:  call       instance class Game.ComponentRider Game.ComponentPlayer::get_ComponentRider()
    IL_00a8:  callvirt   instance class Game.ComponentMount Game.ComponentRider::get_Mount()
    IL_00ad:  stloc.3
    IL_00ae:  ldloc.3
    IL_00af:  brfalse.s  IL_00c9

    IL_00b1:  ldloc.3
    IL_00b2:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_00b7:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentSteedBehavior>()
    IL_00bc:  stloc.1
    IL_00bd:  ldloc.3
    IL_00be:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_00c3:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentBoat>()
    IL_00c8:  stloc.2
    IL_00c9:  ldloc.1
    IL_00ca:  brfalse    IL_025a

    IL_00cf:  ldloc.0
    IL_00d0:  ldfld      valuetype [Engine]Engine.Vector3 Game.PlayerInput::Move
    IL_00d5:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_00da:  ldc.r4     0.5
    IL_00df:  ble.un     IL_0164

    IL_00e4:  ldarg.0
    IL_00e5:  ldfld      bool Game.ComponentPlayer::m_speedOrderBlocked
    IL_00ea:  brtrue.s   IL_0164

    IL_00ec:  ldarg.0
    IL_00ed:  call       instance class Game.PlayerData Game.ComponentPlayer::get_PlayerData()
    IL_00f2:  callvirt   instance valuetype Game.PlayerClass Game.PlayerData::get_PlayerClass()
    IL_00f7:  brtrue.s   IL_0126

    IL_00f9:  ldarg.0
    IL_00fa:  ldfld      class Game.SubsystemAudio Game.ComponentPlayer::m_subsystemAudio
    IL_00ff:  ldstr      "Audio/Creatures/MaleYellFast"
    IL_0104:  ldc.r4     0.75
    IL_0109:  ldc.r4     0.0
    IL_010e:  ldarg.0
    IL_010f:  call       instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0114:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0119:  ldc.r4     2.
    IL_011e:  ldc.i4.0
    IL_011f:  callvirt   instance void Game.SubsystemAudio::PlayRandomSound(string,
                                                                            float32,
                                                                            float32,
                                                                            valuetype [Engine]Engine.Vector3,
                                                                            float32,
                                                                            bool)
    IL_0124:  br.s       IL_0151

    IL_0126:  ldarg.0
    IL_0127:  ldfld      class Game.SubsystemAudio Game.ComponentPlayer::m_subsystemAudio
    IL_012c:  ldstr      "Audio/Creatures/FemaleYellFast"
    IL_0131:  ldc.r4     0.75
    IL_0136:  ldc.r4     0.0
    IL_013b:  ldarg.0
    IL_013c:  call       instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0141:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0146:  ldc.r4     2.
    IL_014b:  ldc.i4.0
    IL_014c:  callvirt   instance void Game.SubsystemAudio::PlayRandomSound(string,
                                                                            float32,
                                                                            float32,
                                                                            valuetype [Engine]Engine.Vector3,
                                                                            float32,
                                                                            bool)
    IL_0151:  ldloc.1
    IL_0152:  ldc.i4.1
    IL_0153:  callvirt   instance void Game.ComponentSteedBehavior::set_SpeedOrder(int32)
    IL_0158:  ldarg.0
    IL_0159:  ldc.i4.1
    IL_015a:  stfld      bool Game.ComponentPlayer::m_speedOrderBlocked
    IL_015f:  br         IL_0211

    IL_0164:  ldloc.0
    IL_0165:  ldfld      valuetype [Engine]Engine.Vector3 Game.PlayerInput::Move
    IL_016a:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_016f:  ldc.r4     -0.5
    IL_0174:  bge.un.s   IL_01f3

    IL_0176:  ldarg.0
    IL_0177:  ldfld      bool Game.ComponentPlayer::m_speedOrderBlocked
    IL_017c:  brtrue.s   IL_01f3

    IL_017e:  ldarg.0
    IL_017f:  call       instance class Game.PlayerData Game.ComponentPlayer::get_PlayerData()
    IL_0184:  callvirt   instance valuetype Game.PlayerClass Game.PlayerData::get_PlayerClass()
    IL_0189:  brtrue.s   IL_01b8

    IL_018b:  ldarg.0
    IL_018c:  ldfld      class Game.SubsystemAudio Game.ComponentPlayer::m_subsystemAudio
    IL_0191:  ldstr      "Audio/Creatures/MaleYellSlow"
    IL_0196:  ldc.r4     0.75
    IL_019b:  ldc.r4     0.0
    IL_01a0:  ldarg.0
    IL_01a1:  call       instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_01a6:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_01ab:  ldc.r4     2.
    IL_01b0:  ldc.i4.0
    IL_01b1:  callvirt   instance void Game.SubsystemAudio::PlayRandomSound(string,
                                                                            float32,
                                                                            float32,
                                                                            valuetype [Engine]Engine.Vector3,
                                                                            float32,
                                                                            bool)
    IL_01b6:  br.s       IL_01e3

    IL_01b8:  ldarg.0
    IL_01b9:  ldfld      class Game.SubsystemAudio Game.ComponentPlayer::m_subsystemAudio
    IL_01be:  ldstr      "Audio/Creatures/FemaleYellSlow"
    IL_01c3:  ldc.r4     0.75
    IL_01c8:  ldc.r4     0.0
    IL_01cd:  ldarg.0
    IL_01ce:  call       instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_01d3:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_01d8:  ldc.r4     2.
    IL_01dd:  ldc.i4.0
    IL_01de:  callvirt   instance void Game.SubsystemAudio::PlayRandomSound(string,
                                                                            float32,
                                                                            float32,
                                                                            valuetype [Engine]Engine.Vector3,
                                                                            float32,
                                                                            bool)
    IL_01e3:  ldloc.1
    IL_01e4:  ldc.i4.m1
    IL_01e5:  callvirt   instance void Game.ComponentSteedBehavior::set_SpeedOrder(int32)
    IL_01ea:  ldarg.0
    IL_01eb:  ldc.i4.1
    IL_01ec:  stfld      bool Game.ComponentPlayer::m_speedOrderBlocked
    IL_01f1:  br.s       IL_0211

    IL_01f3:  ldloc.0
    IL_01f4:  ldfld      valuetype [Engine]Engine.Vector3 Game.PlayerInput::Move
    IL_01f9:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_01fe:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_0203:  ldc.r4     0.25
    IL_0208:  bgt.un.s   IL_0211

    IL_020a:  ldarg.0
    IL_020b:  ldc.i4.0
    IL_020c:  stfld      bool Game.ComponentPlayer::m_speedOrderBlocked
    IL_0211:  ldloc.1
    IL_0212:  ldloc.0
    IL_0213:  ldfld      valuetype [Engine]Engine.Vector3 Game.PlayerInput::Move
    IL_0218:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_021d:  callvirt   instance void Game.ComponentSteedBehavior::set_TurnOrder(float32)
    IL_0222:  ldloc.1
    IL_0223:  ldloc.0
    IL_0224:  ldfld      bool Game.PlayerInput::Jump
    IL_0229:  brtrue.s   IL_022e

    IL_022b:  ldc.i4.0
    IL_022c:  br.s       IL_022f

    IL_022e:  ldc.i4.1
    IL_022f:  conv.r4
    IL_0230:  callvirt   instance void Game.ComponentSteedBehavior::set_JumpOrder(float32)
    IL_0235:  ldarg.0
    IL_0236:  call       instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_023b:  ldloc.0
    IL_023c:  ldfld      valuetype [Engine]Engine.Vector2 Game.PlayerInput::Look
    IL_0241:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0246:  ldc.r4     0.0
    IL_024b:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0250:  callvirt   instance void Game.ComponentLocomotion::set_LookOrder(valuetype [Engine]Engine.Vector2)
    IL_0255:  br         IL_03e1

    IL_025a:  ldloc.2
    IL_025b:  brfalse    IL_030b

    IL_0260:  ldloc.2
    IL_0261:  ldloc.0
    IL_0262:  ldfld      valuetype [Engine]Engine.Vector3 Game.PlayerInput::Move
    IL_0267:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_026c:  callvirt   instance void Game.ComponentBoat::set_TurnOrder(float32)
    IL_0271:  ldloc.2
    IL_0272:  ldloc.0
    IL_0273:  ldfld      valuetype [Engine]Engine.Vector3 Game.PlayerInput::Move
    IL_0278:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_027d:  callvirt   instance void Game.ComponentBoat::set_MoveOrder(float32)
    IL_0282:  ldarg.0
    IL_0283:  call       instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_0288:  ldloc.0
    IL_0289:  ldfld      valuetype [Engine]Engine.Vector2 Game.PlayerInput::Look
    IL_028e:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0293:  ldc.r4     0.0
    IL_0298:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_029d:  callvirt   instance void Game.ComponentLocomotion::set_LookOrder(valuetype [Engine]Engine.Vector2)
    IL_02a2:  ldarg.0
    IL_02a3:  call       instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_02a8:  ldloc.0
    IL_02a9:  ldfld      valuetype [Engine]Engine.Vector3 Game.PlayerInput::Move
    IL_02ae:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_02b3:  ldc.r4     -0.2
    IL_02b8:  blt.s      IL_02ce

    IL_02ba:  ldloc.0
    IL_02bb:  ldfld      valuetype [Engine]Engine.Vector3 Game.PlayerInput::Move
    IL_02c0:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_02c5:  ldc.r4     0.2
    IL_02ca:  cgt
    IL_02cc:  br.s       IL_02cf

    IL_02ce:  ldc.i4.1
    IL_02cf:  callvirt   instance void Game.ComponentCreatureModel::set_RowLeftOrder(bool)
    IL_02d4:  ldarg.0
    IL_02d5:  call       instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_02da:  ldloc.0
    IL_02db:  ldfld      valuetype [Engine]Engine.Vector3 Game.PlayerInput::Move
    IL_02e0:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_02e5:  ldc.r4     0.2
    IL_02ea:  bgt.s      IL_0300

    IL_02ec:  ldloc.0
    IL_02ed:  ldfld      valuetype [Engine]Engine.Vector3 Game.PlayerInput::Move
    IL_02f2:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_02f7:  ldc.r4     0.2
    IL_02fc:  cgt
    IL_02fe:  br.s       IL_0301

    IL_0300:  ldc.i4.1
    IL_0301:  callvirt   instance void Game.ComponentCreatureModel::set_RowRightOrder(bool)
    IL_0306:  br         IL_03e1

    IL_030b:  ldarg.0
    IL_030c:  call       instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_0311:  ldarg.0
    IL_0312:  call       instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0317:  callvirt   instance bool Game.ComponentBody::get_IsSneaking()
    IL_031c:  brtrue.s   IL_033b

    IL_031e:  ldloc.0
    IL_031f:  ldfld      valuetype [Engine]Engine.Vector3 Game.PlayerInput::Move
    IL_0324:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0329:  ldloc.0
    IL_032a:  ldfld      valuetype [Engine]Engine.Vector3 Game.PlayerInput::Move
    IL_032f:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0334:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0339:  br.s       IL_0360

    IL_033b:  ldc.r4     0.66000003
    IL_0340:  ldloc.0
    IL_0341:  ldfld      valuetype [Engine]Engine.Vector3 Game.PlayerInput::SneakMove
    IL_0346:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_034b:  ldloc.0
    IL_034c:  ldfld      valuetype [Engine]Engine.Vector3 Game.PlayerInput::SneakMove
    IL_0351:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0356:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_035b:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0360:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_0365:  callvirt   instance void Game.ComponentLocomotion::set_WalkOrder(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>)
    IL_036a:  ldarg.0
    IL_036b:  call       instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_0370:  ldc.r4     0.0
    IL_0375:  ldloc.0
    IL_0376:  ldfld      valuetype [Engine]Engine.Vector3 Game.PlayerInput::Move
    IL_037b:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0380:  ldc.r4     0.0
    IL_0385:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_038a:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_038f:  callvirt   instance void Game.ComponentLocomotion::set_FlyOrder(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>)
    IL_0394:  ldarg.0
    IL_0395:  call       instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_039a:  ldloc.0
    IL_039b:  ldfld      valuetype [Engine]Engine.Vector2 Game.PlayerInput::Look
    IL_03a0:  ldc.r4     1.
    IL_03a5:  ldc.r4     0.0
    IL_03aa:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_03af:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_03b4:  callvirt   instance void Game.ComponentLocomotion::set_TurnOrder(valuetype [Engine]Engine.Vector2)
    IL_03b9:  ldarg.0
    IL_03ba:  call       instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_03bf:  ldloc.0
    IL_03c0:  ldfld      bool Game.PlayerInput::Jump
    IL_03c5:  brtrue.s   IL_03ca

    IL_03c7:  ldc.i4.0
    IL_03c8:  br.s       IL_03cb

    IL_03ca:  ldc.i4.1
    IL_03cb:  conv.r4
    IL_03cc:  ldarg.0
    IL_03cd:  call       instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_03d2:  callvirt   instance float32 Game.ComponentLocomotion::get_JumpOrder()
    IL_03d7:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_03dc:  callvirt   instance void Game.ComponentLocomotion::set_JumpOrder(float32)
    IL_03e1:  ldarg.0
    IL_03e2:  call       instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_03e7:  dup
    IL_03e8:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.ComponentLocomotion::get_LookOrder()
    IL_03ed:  ldloc.0
    IL_03ee:  ldfld      valuetype [Engine]Engine.Vector2 Game.PlayerInput::Look
    IL_03f3:  call       bool Game.SettingsManager::get_FlipVerticalAxis()
    IL_03f8:  brtrue.s   IL_040b

    IL_03fa:  ldc.r4     0.0
    IL_03ff:  ldc.r4     1.
    IL_0404:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0409:  br.s       IL_041a

    IL_040b:  ldc.r4     0.0
    IL_0410:  ldc.r4     -1.
    IL_0415:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_041a:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_041f:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0424:  callvirt   instance void Game.ComponentLocomotion::set_LookOrder(valuetype [Engine]Engine.Vector2)
    IL_0429:  ldarg.0
    IL_042a:  call       instance class Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_042f:  callvirt   instance int32 Game.ComponentMiner::get_ActiveBlockValue()
    IL_0434:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0439:  stloc.s    V_4
    IL_043b:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0440:  ldloc.s    V_4
    IL_0442:  ldelem.ref
    IL_0443:  stloc.s    V_5
    IL_0445:  ldc.i4.0
    IL_0446:  stloc.s    V_6
    IL_0448:  ldloca.s   V_0
    IL_044a:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Interact
    IL_044f:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_0454:  brfalse    IL_05aa

    IL_0459:  ldloc.s    V_6
    IL_045b:  brtrue     IL_05aa

    IL_0460:  ldarg.0
    IL_0461:  ldfld      class Game.SubsystemTime Game.ComponentPlayer::m_subsystemTime
    IL_0466:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_046b:  ldarg.0
    IL_046c:  ldfld      float64 Game.ComponentPlayer::m_lastActionTime
    IL_0471:  sub
    IL_0472:  ldc.r8     0.33000001311302185
    IL_047b:  ble.un     IL_05aa

    IL_0480:  ldarg.0
    IL_0481:  call       instance class Game.View Game.ComponentPlayer::get_View()
    IL_0486:  callvirt   instance class Game.Camera Game.View::get_ActiveCamera()
    IL_048b:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewPosition()
    IL_0490:  stloc.s    V_9
    IL_0492:  ldarg.0
    IL_0493:  call       instance class Game.View Game.ComponentPlayer::get_View()
    IL_0498:  callvirt   instance class Game.Camera Game.View::get_ActiveCamera()
    IL_049d:  ldloca.s   V_0
    IL_049f:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Interact
    IL_04a4:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_04a9:  ldc.r4     1.
    IL_04ae:  newobj     instance void [Engine]Engine.Vector3::.ctor(valuetype [Engine]Engine.Vector2,
                                                                     float32)
    IL_04b3:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
    IL_04b8:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::ScreenToWorld(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Matrix)
    IL_04bd:  ldloc.s    V_9
    IL_04bf:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_04c4:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_04c9:  stloc.s    V_10
    IL_04cb:  ldarg.0
    IL_04cc:  call       instance class Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_04d1:  ldloc.s    V_9
    IL_04d3:  ldloc.s    V_10
    IL_04d5:  callvirt   instance bool Game.ComponentMiner::Use(valuetype [Engine]Engine.Vector3,
                                                                valuetype [Engine]Engine.Vector3)
    IL_04da:  brtrue     IL_0590

    IL_04df:  ldarg.0
    IL_04e0:  call       instance class Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_04e5:  ldloc.s    V_9
    IL_04e7:  ldloc.s    V_10
    IL_04e9:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.BodyRaycastResult> Game.ComponentMiner::PickBody(valuetype [Engine]Engine.Vector3,
                                                                                                                                              valuetype [Engine]Engine.Vector3)
    IL_04ee:  stloc.s    V_11
    IL_04f0:  ldarg.0
    IL_04f1:  call       instance class Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_04f6:  ldloc.s    V_9
    IL_04f8:  ldloc.s    V_10
    IL_04fa:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> Game.ComponentMiner::PickTerrainForInteraction(valuetype [Engine]Engine.Vector3,
                                                                                                                                                                  valuetype [Engine]Engine.Vector3)
    IL_04ff:  stloc.s    V_12
    IL_0501:  ldloca.s   V_12
    IL_0503:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_HasValue()
    IL_0508:  brfalse    IL_05aa

    IL_050d:  ldloca.s   V_11
    IL_050f:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.BodyRaycastResult>::get_HasValue()
    IL_0514:  brfalse.s  IL_0530

    IL_0516:  ldloca.s   V_12
    IL_0518:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_051d:  ldfld      float32 Game.TerrainRaycastResult::Distance
    IL_0522:  ldloca.s   V_11
    IL_0524:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.BodyRaycastResult>::get_Value()
    IL_0529:  ldfld      float32 Game.BodyRaycastResult::Distance
    IL_052e:  bge.un.s   IL_05aa

    IL_0530:  ldarg.0
    IL_0531:  call       instance class Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_0536:  ldloca.s   V_12
    IL_0538:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_053d:  callvirt   instance bool Game.ComponentMiner::Interact(valuetype Game.TerrainRaycastResult)
    IL_0542:  brtrue.s   IL_0574

    IL_0544:  ldarg.0
    IL_0545:  call       instance class Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_054a:  ldloca.s   V_12
    IL_054c:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_0551:  callvirt   instance bool Game.ComponentMiner::Place(valuetype Game.TerrainRaycastResult)
    IL_0556:  brfalse.s  IL_05aa

    IL_0558:  ldarg.0
    IL_0559:  ldfld      class Game.SubsystemTerrain Game.ComponentPlayer::m_subsystemTerrain
    IL_055e:  callvirt   instance class Game.TerrainUpdater Game.SubsystemTerrain::get_TerrainUpdater()
    IL_0563:  callvirt   instance void Game.TerrainUpdater::RequestSynchronousUpdate()
    IL_0568:  ldc.i4.1
    IL_0569:  stloc.s    V_6
    IL_056b:  ldarg.0
    IL_056c:  ldc.i4.1
    IL_056d:  stfld      bool Game.ComponentPlayer::m_isAimBlocked
    IL_0572:  br.s       IL_05aa

    IL_0574:  ldarg.0
    IL_0575:  ldfld      class Game.SubsystemTerrain Game.ComponentPlayer::m_subsystemTerrain
    IL_057a:  callvirt   instance class Game.TerrainUpdater Game.SubsystemTerrain::get_TerrainUpdater()
    IL_057f:  callvirt   instance void Game.TerrainUpdater::RequestSynchronousUpdate()
    IL_0584:  ldc.i4.1
    IL_0585:  stloc.s    V_6
    IL_0587:  ldarg.0
    IL_0588:  ldc.i4.1
    IL_0589:  stfld      bool Game.ComponentPlayer::m_isAimBlocked
    IL_058e:  br.s       IL_05aa

    IL_0590:  ldarg.0
    IL_0591:  ldfld      class Game.SubsystemTerrain Game.ComponentPlayer::m_subsystemTerrain
    IL_0596:  callvirt   instance class Game.TerrainUpdater Game.SubsystemTerrain::get_TerrainUpdater()
    IL_059b:  callvirt   instance void Game.TerrainUpdater::RequestSynchronousUpdate()
    IL_05a0:  ldc.i4.1
    IL_05a1:  stloc.s    V_6
    IL_05a3:  ldarg.0
    IL_05a4:  ldc.i4.1
    IL_05a5:  stfld      bool Game.ComponentPlayer::m_isAimBlocked
    IL_05aa:  ldarg.0
    IL_05ab:  ldfld      class Game.SubsystemGameInfo Game.ComponentPlayer::m_subsystemGameInfo
    IL_05b0:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_05b5:  ldfld      valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_05ba:  brfalse.s  IL_05c3

    IL_05bc:  ldc.r4     1.4
    IL_05c1:  br.s       IL_05c8

    IL_05c3:  ldc.r4     0.1
    IL_05c8:  stloc.s    V_7
    IL_05ca:  ldarg.0
    IL_05cb:  call       instance class Game.View Game.ComponentPlayer::get_View()
    IL_05d0:  callvirt   instance class Game.Camera Game.View::get_ActiveCamera()
    IL_05d5:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewPosition()
    IL_05da:  stloc.s    V_8
    IL_05dc:  ldloca.s   V_0
    IL_05de:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Aim
    IL_05e3:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_05e8:  brfalse    IL_0788

    IL_05ed:  ldloc.s    V_5
    IL_05ef:  ldfld      bool Game.Block::IsAimable
    IL_05f4:  brfalse    IL_0788

    IL_05f9:  ldarg.0
    IL_05fa:  ldfld      class Game.SubsystemTime Game.ComponentPlayer::m_subsystemTime
    IL_05ff:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0604:  ldarg.0
    IL_0605:  ldfld      float64 Game.ComponentPlayer::m_lastActionTime
    IL_060a:  sub
    IL_060b:  ldloc.s    V_7
    IL_060d:  conv.r8
    IL_060e:  ble.un     IL_0788

    IL_0613:  ldarg.0
    IL_0614:  ldfld      bool Game.ComponentPlayer::m_isAimBlocked
    IL_0619:  brtrue     IL_07d3

    IL_061e:  ldloca.s   V_0
    IL_0620:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Aim
    IL_0625:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_062a:  stloc.s    V_13
    IL_062c:  ldarg.0
    IL_062d:  call       instance class Game.View Game.ComponentPlayer::get_View()
    IL_0632:  callvirt   instance class Game.Camera Game.View::get_ActiveCamera()
    IL_0637:  ldloc.s    V_13
    IL_0639:  ldc.r4     1.
    IL_063e:  newobj     instance void [Engine]Engine.Vector3::.ctor(valuetype [Engine]Engine.Vector2,
                                                                     float32)
    IL_0643:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
    IL_0648:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::ScreenToWorld(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Matrix)
    IL_064d:  stloc.s    V_14
    IL_064f:  call       valuetype [Engine]Engine.Point2 [Engine]Engine.Window::get_Size()
    IL_0654:  stloc.s    V_15
    IL_0656:  ldloca.s   V_0
    IL_0658:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Aim
    IL_065d:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_0662:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0667:  ldloc.s    V_15
    IL_0669:  ldfld      int32 [Engine]Engine.Point2::X
    IL_066e:  conv.r4
    IL_066f:  ldc.r4     0.1
    IL_0674:  mul
    IL_0675:  blt.un     IL_074c

    IL_067a:  ldloca.s   V_0
    IL_067c:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Aim
    IL_0681:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_0686:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_068b:  ldloc.s    V_15
    IL_068d:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0692:  conv.r4
    IL_0693:  ldc.r4     0.89999998
    IL_0698:  mul
    IL_0699:  bge.un     IL_074c

    IL_069e:  ldloca.s   V_0
    IL_06a0:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Aim
    IL_06a5:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_06aa:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_06af:  ldloc.s    V_15
    IL_06b1:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_06b6:  conv.r4
    IL_06b7:  ldc.r4     0.1
    IL_06bc:  mul
    IL_06bd:  blt.un     IL_074c

    IL_06c2:  ldloca.s   V_0
    IL_06c4:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Aim
    IL_06c9:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_06ce:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_06d3:  ldloc.s    V_15
    IL_06d5:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_06da:  conv.r4
    IL_06db:  ldc.r4     0.89999998
    IL_06e0:  mul
    IL_06e1:  bge.un.s   IL_074c

    IL_06e3:  ldarg.0
    IL_06e4:  ldloc.s    V_14
    IL_06e6:  ldloc.s    V_8
    IL_06e8:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_06ed:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_06f2:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_06f7:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPlayer::m_aimDirection
    IL_06fc:  ldarg.0
    IL_06fd:  call       instance class Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_0702:  ldloc.s    V_8
    IL_0704:  ldarg.0
    IL_0705:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPlayer::m_aimDirection
    IL_070a:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_070f:  ldc.i4.0
    IL_0710:  callvirt   instance bool Game.ComponentMiner::Aim(valuetype [Engine]Engine.Vector3,
                                                                valuetype [Engine]Engine.Vector3,
                                                                valuetype Game.AimState)
    IL_0715:  brfalse    IL_07d3

    IL_071a:  ldarg.0
    IL_071b:  call       instance class Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_0720:  ldloc.s    V_8
    IL_0722:  ldarg.0
    IL_0723:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPlayer::m_aimDirection
    IL_0728:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_072d:  ldc.i4.1
    IL_072e:  callvirt   instance bool Game.ComponentMiner::Aim(valuetype [Engine]Engine.Vector3,
                                                                valuetype [Engine]Engine.Vector3,
                                                                valuetype Game.AimState)
    IL_0733:  pop
    IL_0734:  ldarg.0
    IL_0735:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPlayer::m_aimDirection
    IL_073a:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>
    IL_0740:  ldarg.0
    IL_0741:  ldc.i4.1
    IL_0742:  stfld      bool Game.ComponentPlayer::m_isAimBlocked
    IL_0747:  br         IL_07d3

    IL_074c:  ldarg.0
    IL_074d:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPlayer::m_aimDirection
    IL_0752:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_0757:  brfalse.s  IL_07d3

    IL_0759:  ldarg.0
    IL_075a:  call       instance class Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_075f:  ldloc.s    V_8
    IL_0761:  ldarg.0
    IL_0762:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPlayer::m_aimDirection
    IL_0767:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_076c:  ldc.i4.1
    IL_076d:  callvirt   instance bool Game.ComponentMiner::Aim(valuetype [Engine]Engine.Vector3,
                                                                valuetype [Engine]Engine.Vector3,
                                                                valuetype Game.AimState)
    IL_0772:  pop
    IL_0773:  ldarg.0
    IL_0774:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPlayer::m_aimDirection
    IL_0779:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>
    IL_077f:  ldarg.0
    IL_0780:  ldc.i4.1
    IL_0781:  stfld      bool Game.ComponentPlayer::m_isAimBlocked
    IL_0786:  br.s       IL_07d3

    IL_0788:  ldarg.0
    IL_0789:  ldc.i4.0
    IL_078a:  stfld      bool Game.ComponentPlayer::m_isAimBlocked
    IL_078f:  ldarg.0
    IL_0790:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPlayer::m_aimDirection
    IL_0795:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_079a:  brfalse.s  IL_07d3

    IL_079c:  ldarg.0
    IL_079d:  call       instance class Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_07a2:  ldloc.s    V_8
    IL_07a4:  ldarg.0
    IL_07a5:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPlayer::m_aimDirection
    IL_07aa:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_07af:  ldc.i4.2
    IL_07b0:  callvirt   instance bool Game.ComponentMiner::Aim(valuetype [Engine]Engine.Vector3,
                                                                valuetype [Engine]Engine.Vector3,
                                                                valuetype Game.AimState)
    IL_07b5:  pop
    IL_07b6:  ldarg.0
    IL_07b7:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPlayer::m_aimDirection
    IL_07bc:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>
    IL_07c2:  ldarg.0
    IL_07c3:  ldarg.0
    IL_07c4:  ldfld      class Game.SubsystemTime Game.ComponentPlayer::m_subsystemTime
    IL_07c9:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_07ce:  stfld      float64 Game.ComponentPlayer::m_lastActionTime
    IL_07d3:  ldloc.s    V_6
    IL_07d5:  ldarg.0
    IL_07d6:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPlayer::m_aimDirection
    IL_07db:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_07e0:  or
    IL_07e1:  stloc.s    V_6
    IL_07e3:  ldloca.s   V_0
    IL_07e5:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Hit
    IL_07ea:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_07ef:  brfalse    IL_0908

    IL_07f4:  ldloc.s    V_6
    IL_07f6:  brtrue     IL_0908

    IL_07fb:  ldarg.0
    IL_07fc:  ldfld      class Game.SubsystemTime Game.ComponentPlayer::m_subsystemTime
    IL_0801:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0806:  ldarg.0
    IL_0807:  ldfld      float64 Game.ComponentPlayer::m_lastActionTime
    IL_080c:  sub
    IL_080d:  ldc.r8     0.33000001311302185
    IL_0816:  ble.un     IL_0908

    IL_081b:  ldarg.0
    IL_081c:  call       instance class Game.View Game.ComponentPlayer::get_View()
    IL_0821:  callvirt   instance class Game.Camera Game.View::get_ActiveCamera()
    IL_0826:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewPosition()
    IL_082b:  stloc.s    V_16
    IL_082d:  ldarg.0
    IL_082e:  call       instance class Game.View Game.ComponentPlayer::get_View()
    IL_0833:  callvirt   instance class Game.Camera Game.View::get_ActiveCamera()
    IL_0838:  ldloca.s   V_0
    IL_083a:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Hit
    IL_083f:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_0844:  ldc.r4     1.
    IL_0849:  newobj     instance void [Engine]Engine.Vector3::.ctor(valuetype [Engine]Engine.Vector2,
                                                                     float32)
    IL_084e:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
    IL_0853:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::ScreenToWorld(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Matrix)
    IL_0858:  ldloc.s    V_16
    IL_085a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_085f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0864:  stloc.s    V_17
    IL_0866:  ldarg.0
    IL_0867:  call       instance class Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_086c:  ldloc.s    V_16
    IL_086e:  ldloc.s    V_17
    IL_0870:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> Game.ComponentMiner::PickTerrainForInteraction(valuetype [Engine]Engine.Vector3,
                                                                                                                                                                  valuetype [Engine]Engine.Vector3)
    IL_0875:  stloc.s    V_18
    IL_0877:  ldarg.0
    IL_0878:  call       instance class Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_087d:  ldloc.s    V_16
    IL_087f:  ldloc.s    V_17
    IL_0881:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.BodyRaycastResult> Game.ComponentMiner::PickBody(valuetype [Engine]Engine.Vector3,
                                                                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0886:  stloc.s    V_19
    IL_0888:  ldloca.s   V_19
    IL_088a:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.BodyRaycastResult>::get_HasValue()
    IL_088f:  brfalse.s  IL_0908

    IL_0891:  ldloca.s   V_18
    IL_0893:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_HasValue()
    IL_0898:  brfalse.s  IL_08b4

    IL_089a:  ldloca.s   V_18
    IL_089c:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_08a1:  ldfld      float32 Game.TerrainRaycastResult::Distance
    IL_08a6:  ldloca.s   V_19
    IL_08a8:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.BodyRaycastResult>::get_Value()
    IL_08ad:  ldfld      float32 Game.BodyRaycastResult::Distance
    IL_08b2:  ble.un.s   IL_0908

    IL_08b4:  ldloc.s    V_16
    IL_08b6:  ldloc.s    V_17
    IL_08b8:  ldloca.s   V_19
    IL_08ba:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.BodyRaycastResult>::get_Value()
    IL_08bf:  ldfld      float32 Game.BodyRaycastResult::Distance
    IL_08c4:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_08c9:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_08ce:  ldarg.0
    IL_08cf:  call       instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_08d4:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentCreatureModel::get_EyePosition()
    IL_08d9:  call       float32 [Engine]Engine.Vector3::Distance(valuetype [Engine]Engine.Vector3,
                                                                  valuetype [Engine]Engine.Vector3)
    IL_08de:  ldc.r4     2.
    IL_08e3:  bgt.un.s   IL_0908

    IL_08e5:  ldarg.0
    IL_08e6:  call       instance class Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_08eb:  ldloca.s   V_19
    IL_08ed:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.BodyRaycastResult>::get_Value()
    IL_08f2:  ldfld      class Game.ComponentBody Game.BodyRaycastResult::ComponentBody
    IL_08f7:  ldloc.s    V_17
    IL_08f9:  callvirt   instance void Game.ComponentMiner::Hit(class Game.ComponentBody,
                                                                valuetype [Engine]Engine.Vector3)
    IL_08fe:  ldc.i4.1
    IL_08ff:  stloc.s    V_6
    IL_0901:  ldarg.0
    IL_0902:  ldc.i4.1
    IL_0903:  stfld      bool Game.ComponentPlayer::m_isDigBlocked
    IL_0908:  ldloca.s   V_0
    IL_090a:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Dig
    IL_090f:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_0914:  brfalse    IL_09e0

    IL_0919:  ldloc.s    V_6
    IL_091b:  brtrue     IL_09e0

    IL_0920:  ldarg.0
    IL_0921:  ldfld      bool Game.ComponentPlayer::m_isDigBlocked
    IL_0926:  brtrue     IL_09e0

    IL_092b:  ldarg.0
    IL_092c:  ldfld      class Game.SubsystemTime Game.ComponentPlayer::m_subsystemTime
    IL_0931:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0936:  ldarg.0
    IL_0937:  ldfld      float64 Game.ComponentPlayer::m_lastActionTime
    IL_093c:  sub
    IL_093d:  ldc.r8     0.33000001311302185
    IL_0946:  ble.un     IL_09e0

    IL_094b:  ldarg.0
    IL_094c:  call       instance class Game.View Game.ComponentPlayer::get_View()
    IL_0951:  callvirt   instance class Game.Camera Game.View::get_ActiveCamera()
    IL_0956:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewPosition()
    IL_095b:  stloc.s    V_20
    IL_095d:  ldarg.0
    IL_095e:  call       instance class Game.View Game.ComponentPlayer::get_View()
    IL_0963:  callvirt   instance class Game.Camera Game.View::get_ActiveCamera()
    IL_0968:  ldloca.s   V_0
    IL_096a:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Dig
    IL_096f:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_0974:  ldc.r4     1.
    IL_0979:  newobj     instance void [Engine]Engine.Vector3::.ctor(valuetype [Engine]Engine.Vector2,
                                                                     float32)
    IL_097e:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
    IL_0983:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::ScreenToWorld(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Matrix)
    IL_0988:  stloc.s    V_21
    IL_098a:  ldarg.0
    IL_098b:  call       instance class Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_0990:  ldloc.s    V_20
    IL_0992:  ldloc.s    V_21
    IL_0994:  ldloc.s    V_20
    IL_0996:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_099b:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> Game.ComponentMiner::PickTerrainForDigging(valuetype [Engine]Engine.Vector3,
                                                                                                                                                              valuetype [Engine]Engine.Vector3)
    IL_09a0:  stloc.s    V_22
    IL_09a2:  ldloca.s   V_22
    IL_09a4:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_HasValue()
    IL_09a9:  brfalse.s  IL_09e0

    IL_09ab:  ldarg.0
    IL_09ac:  call       instance class Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_09b1:  ldloca.s   V_22
    IL_09b3:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_09b8:  callvirt   instance bool Game.ComponentMiner::Dig(valuetype Game.TerrainRaycastResult)
    IL_09bd:  brfalse.s  IL_09e0

    IL_09bf:  ldarg.0
    IL_09c0:  ldarg.0
    IL_09c1:  ldfld      class Game.SubsystemTime Game.ComponentPlayer::m_subsystemTime
    IL_09c6:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_09cb:  stfld      float64 Game.ComponentPlayer::m_lastActionTime
    IL_09d0:  ldarg.0
    IL_09d1:  ldfld      class Game.SubsystemTerrain Game.ComponentPlayer::m_subsystemTerrain
    IL_09d6:  callvirt   instance class Game.TerrainUpdater Game.SubsystemTerrain::get_TerrainUpdater()
    IL_09db:  callvirt   instance void Game.TerrainUpdater::RequestSynchronousUpdate()
    IL_09e0:  ldloca.s   V_0
    IL_09e2:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Dig
    IL_09e7:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_09ec:  brtrue.s   IL_09f5

    IL_09ee:  ldarg.0
    IL_09ef:  ldc.i4.0
    IL_09f0:  stfld      bool Game.ComponentPlayer::m_isDigBlocked
    IL_09f5:  ldloc.0
    IL_09f6:  ldfld      bool Game.PlayerInput::Drop
    IL_09fb:  brfalse    IL_0af6

    IL_0a00:  ldarg.0
    IL_0a01:  call       instance class Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_0a06:  callvirt   instance class Game.IInventory Game.ComponentMiner::get_Inventory()
    IL_0a0b:  brfalse    IL_0af6

    IL_0a10:  ldarg.0
    IL_0a11:  call       instance class Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_0a16:  callvirt   instance class Game.IInventory Game.ComponentMiner::get_Inventory()
    IL_0a1b:  dup
    IL_0a1c:  dup
    IL_0a1d:  callvirt   instance int32 Game.IInventory::get_ActiveSlotIndex()
    IL_0a22:  callvirt   instance int32 Game.IInventory::GetSlotValue(int32)
    IL_0a27:  stloc.s    V_23
    IL_0a29:  dup
    IL_0a2a:  dup
    IL_0a2b:  callvirt   instance int32 Game.IInventory::get_ActiveSlotIndex()
    IL_0a30:  callvirt   instance int32 Game.IInventory::GetSlotCount(int32)
    IL_0a35:  stloc.s    V_24
    IL_0a37:  dup
    IL_0a38:  callvirt   instance int32 Game.IInventory::get_ActiveSlotIndex()
    IL_0a3d:  ldloc.s    V_24
    IL_0a3f:  callvirt   instance int32 Game.IInventory::RemoveSlotItems(int32,
                                                                         int32)
    IL_0a44:  stloc.s    V_25
    IL_0a46:  ldloc.s    V_23
    IL_0a48:  brfalse    IL_0af6

    IL_0a4d:  ldloc.s    V_25
    IL_0a4f:  brfalse    IL_0af6

    IL_0a54:  ldarg.0
    IL_0a55:  call       instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0a5a:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0a5f:  ldc.r4     0.0
    IL_0a64:  ldarg.0
    IL_0a65:  call       instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0a6a:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_BoxSize()
    IL_0a6f:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0a74:  ldc.r4     0.66000003
    IL_0a79:  mul
    IL_0a7a:  ldc.r4     0.0
    IL_0a7f:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0a84:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0a89:  ldc.r4     0.25
    IL_0a8e:  ldarg.0
    IL_0a8f:  call       instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0a94:  callvirt   instance valuetype [Engine]Engine.Matrix Game.ComponentFrame::get_Matrix()
    IL_0a99:  stloc.s    V_28
    IL_0a9b:  ldloca.s   V_28
    IL_0a9d:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Forward()
    IL_0aa2:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0aa7:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0aac:  stloc.s    V_26
    IL_0aae:  ldc.r4     8.
    IL_0ab3:  ldarg.0
    IL_0ab4:  call       instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_0ab9:  callvirt   instance valuetype [Engine]Engine.Quaternion Game.ComponentCreatureModel::get_EyeRotation()
    IL_0abe:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateFromQuaternion(valuetype [Engine]Engine.Quaternion)
    IL_0ac3:  stloc.s    V_28
    IL_0ac5:  ldloca.s   V_28
    IL_0ac7:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Forward()
    IL_0acc:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0ad1:  stloc.s    V_27
    IL_0ad3:  ldarg.0
    IL_0ad4:  ldfld      class Game.SubsystemPickables Game.ComponentPlayer::m_subsystemPickables
    IL_0ad9:  ldloc.s    V_23
    IL_0adb:  ldloc.s    V_25
    IL_0add:  ldloc.s    V_26
    IL_0adf:  ldloc.s    V_27
    IL_0ae1:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_0ae6:  ldloca.s   V_29
    IL_0ae8:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_0aee:  ldloc.s    V_29
    IL_0af0:  callvirt   instance class Game.Pickable Game.SubsystemPickables::AddPickable(int32,
                                                                                           int32,
                                                                                           valuetype [Engine]Engine.Vector3,
                                                                                           valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>,
                                                                                           valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_0af5:  pop
    IL_0af6:  ldloca.s   V_0
    IL_0af8:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::PickBlockType
    IL_0afd:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_0b02:  brfalse    IL_0d14

    IL_0b07:  ldloc.s    V_6
    IL_0b09:  brtrue     IL_0d14

    IL_0b0e:  ldarg.0
    IL_0b0f:  call       instance class Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_0b14:  callvirt   instance class Game.IInventory Game.ComponentMiner::get_Inventory()
    IL_0b19:  isinst     Game.ComponentCreativeInventory
    IL_0b1e:  stloc.s    V_30
    IL_0b20:  ldloc.s    V_30
    IL_0b22:  brfalse    IL_0d14

    IL_0b27:  ldarg.0
    IL_0b28:  call       instance class Game.View Game.ComponentPlayer::get_View()
    IL_0b2d:  callvirt   instance class Game.Camera Game.View::get_ActiveCamera()
    IL_0b32:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewPosition()
    IL_0b37:  stloc.s    V_31
    IL_0b39:  ldarg.0
    IL_0b3a:  call       instance class Game.View Game.ComponentPlayer::get_View()
    IL_0b3f:  callvirt   instance class Game.Camera Game.View::get_ActiveCamera()
    IL_0b44:  ldloca.s   V_0
    IL_0b46:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::PickBlockType
    IL_0b4b:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_0b50:  ldc.r4     1.
    IL_0b55:  newobj     instance void [Engine]Engine.Vector3::.ctor(valuetype [Engine]Engine.Vector2,
                                                                     float32)
    IL_0b5a:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
    IL_0b5f:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::ScreenToWorld(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Matrix)
    IL_0b64:  stloc.s    V_32
    IL_0b66:  ldarg.0
    IL_0b67:  call       instance class Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_0b6c:  ldloc.s    V_31
    IL_0b6e:  ldloc.s    V_32
    IL_0b70:  ldloc.s    V_31
    IL_0b72:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0b77:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> Game.ComponentMiner::PickTerrainForDigging(valuetype [Engine]Engine.Vector3,
                                                                                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0b7c:  stloc.s    V_33
    IL_0b7e:  ldloca.s   V_33
    IL_0b80:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_HasValue()
    IL_0b85:  brfalse    IL_0d14

    IL_0b8a:  ldloca.s   V_33
    IL_0b8c:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_0b91:  ldfld      int32 Game.TerrainRaycastResult::Value
    IL_0b96:  stloc.s    V_34
    IL_0b98:  ldloc.s    V_34
    IL_0b9a:  ldc.i4.0
    IL_0b9b:  call       int32 Game.Terrain::ReplaceLight(int32,
                                                          int32)
    IL_0ba0:  stloc.s    V_34
    IL_0ba2:  ldloc.s    V_34
    IL_0ba4:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0ba9:  stloc.s    V_35
    IL_0bab:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0bb0:  ldloc.s    V_35
    IL_0bb2:  ldelem.ref
    IL_0bb3:  stloc.s    V_36
    IL_0bb5:  ldc.i4.0
    IL_0bb6:  stloc.s    V_37
    IL_0bb8:  ldloc.s    V_36
    IL_0bba:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32> Game.Block::GetCreativeValues()
    IL_0bbf:  stloc.s    V_38
    IL_0bc1:  ldloc.s    V_36
    IL_0bc3:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32> Game.Block::GetCreativeValues()
    IL_0bc8:  ldloc.s    V_34
    IL_0bca:  call       bool [System.Linq]System.Linq.Enumerable::Contains<int32>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                   !!0)
    IL_0bcf:  brfalse.s  IL_0bd5

    IL_0bd1:  ldloc.s    V_34
    IL_0bd3:  stloc.s    V_37
    IL_0bd5:  ldloc.s    V_37
    IL_0bd7:  brtrue.s   IL_0c2b

    IL_0bd9:  ldloc.s    V_36
    IL_0bdb:  ldfld      bool Game.Block::IsNonDuplicable
    IL_0be0:  brtrue.s   IL_0c2b

    IL_0be2:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue>::.ctor()
    IL_0be7:  stloc.s    V_39
    IL_0be9:  ldloc.s    V_36
    IL_0beb:  ldarg.0
    IL_0bec:  ldfld      class Game.SubsystemTerrain Game.ComponentPlayer::m_subsystemTerrain
    IL_0bf1:  ldloc.s    V_34
    IL_0bf3:  ldc.i4.0
    IL_0bf4:  ldc.i4     0x7fffffff
    IL_0bf9:  ldloc.s    V_39
    IL_0bfb:  ldloca.s   V_40
    IL_0bfd:  callvirt   instance void Game.Block::GetDropValues(class Game.SubsystemTerrain,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue>,
                                                                 bool&)
    IL_0c02:  ldloc.s    V_39
    IL_0c04:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue>::get_Count()
    IL_0c09:  ldc.i4.0
    IL_0c0a:  ble.s      IL_0c2b

    IL_0c0c:  ldloc.s    V_39
    IL_0c0e:  ldc.i4.0
    IL_0c0f:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue>::get_Item(int32)
    IL_0c14:  ldfld      int32 Game.BlockDropValue::Count
    IL_0c19:  ldc.i4.0
    IL_0c1a:  ble.s      IL_0c2b

    IL_0c1c:  ldloc.s    V_39
    IL_0c1e:  ldc.i4.0
    IL_0c1f:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue>::get_Item(int32)
    IL_0c24:  ldfld      int32 Game.BlockDropValue::Value
    IL_0c29:  stloc.s    V_37
    IL_0c2b:  ldloc.s    V_37
    IL_0c2d:  brtrue.s   IL_0c38

    IL_0c2f:  ldloc.s    V_38
    IL_0c31:  call       !!0 [System.Linq]System.Linq.Enumerable::FirstOrDefault<int32>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_0c36:  stloc.s    V_37
    IL_0c38:  ldloc.s    V_37
    IL_0c3a:  brfalse    IL_0d14

    IL_0c3f:  ldc.i4.m1
    IL_0c40:  stloc.s    V_41
    IL_0c42:  ldc.i4.0
    IL_0c43:  stloc.s    V_42
    IL_0c45:  br.s       IL_0c6c

    IL_0c47:  ldloc.s    V_30
    IL_0c49:  ldloc.s    V_42
    IL_0c4b:  callvirt   instance int32 Game.ComponentCreativeInventory::GetSlotCount(int32)
    IL_0c50:  ldc.i4.0
    IL_0c51:  ble.s      IL_0c66

    IL_0c53:  ldloc.s    V_30
    IL_0c55:  ldloc.s    V_42
    IL_0c57:  callvirt   instance int32 Game.ComponentCreativeInventory::GetSlotValue(int32)
    IL_0c5c:  ldloc.s    V_37
    IL_0c5e:  bne.un.s   IL_0c66

    IL_0c60:  ldloc.s    V_42
    IL_0c62:  stloc.s    V_41
    IL_0c64:  br.s       IL_0c71

    IL_0c66:  ldloc.s    V_42
    IL_0c68:  ldc.i4.1
    IL_0c69:  add
    IL_0c6a:  stloc.s    V_42
    IL_0c6c:  ldloc.s    V_42
    IL_0c6e:  ldc.i4.6
    IL_0c6f:  blt.s      IL_0c47

    IL_0c71:  ldloc.s    V_41
    IL_0c73:  ldc.i4.0
    IL_0c74:  bge.s      IL_0ca2

    IL_0c76:  ldc.i4.0
    IL_0c77:  stloc.s    V_43
    IL_0c79:  br.s       IL_0c9d

    IL_0c7b:  ldloc.s    V_30
    IL_0c7d:  ldloc.s    V_43
    IL_0c7f:  callvirt   instance int32 Game.ComponentCreativeInventory::GetSlotCount(int32)
    IL_0c84:  brfalse.s  IL_0c91

    IL_0c86:  ldloc.s    V_30
    IL_0c88:  ldloc.s    V_43
    IL_0c8a:  callvirt   instance int32 Game.ComponentCreativeInventory::GetSlotValue(int32)
    IL_0c8f:  brtrue.s   IL_0c97

    IL_0c91:  ldloc.s    V_43
    IL_0c93:  stloc.s    V_41
    IL_0c95:  br.s       IL_0ca2

    IL_0c97:  ldloc.s    V_43
    IL_0c99:  ldc.i4.1
    IL_0c9a:  add
    IL_0c9b:  stloc.s    V_43
    IL_0c9d:  ldloc.s    V_43
    IL_0c9f:  ldc.i4.6
    IL_0ca0:  blt.s      IL_0c7b

    IL_0ca2:  ldloc.s    V_41
    IL_0ca4:  ldc.i4.0
    IL_0ca5:  bge.s      IL_0cb0

    IL_0ca7:  ldloc.s    V_30
    IL_0ca9:  callvirt   instance int32 Game.ComponentCreativeInventory::get_ActiveSlotIndex()
    IL_0cae:  stloc.s    V_41
    IL_0cb0:  ldloc.s    V_30
    IL_0cb2:  ldloc.s    V_41
    IL_0cb4:  ldc.i4     0x7fffffff
    IL_0cb9:  callvirt   instance int32 Game.ComponentCreativeInventory::RemoveSlotItems(int32,
                                                                                         int32)
    IL_0cbe:  pop
    IL_0cbf:  ldloc.s    V_30
    IL_0cc1:  ldloc.s    V_41
    IL_0cc3:  ldloc.s    V_37
    IL_0cc5:  ldc.i4.1
    IL_0cc6:  callvirt   instance void Game.ComponentCreativeInventory::AddSlotItems(int32,
                                                                                     int32,
                                                                                     int32)
    IL_0ccb:  ldloc.s    V_30
    IL_0ccd:  ldloc.s    V_41
    IL_0ccf:  callvirt   instance void Game.ComponentCreativeInventory::set_ActiveSlotIndex(int32)
    IL_0cd4:  ldarg.0
    IL_0cd5:  call       instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_0cda:  ldloc.s    V_36
    IL_0cdc:  ldarg.0
    IL_0cdd:  ldfld      class Game.SubsystemTerrain Game.ComponentPlayer::m_subsystemTerrain
    IL_0ce2:  ldloc.s    V_34
    IL_0ce4:  callvirt   instance string Game.Block::GetDisplayName(class Game.SubsystemTerrain,
                                                                    int32)
    IL_0ce9:  ldc.i4.0
    IL_0cea:  ldc.i4.0
    IL_0ceb:  callvirt   instance void Game.ComponentGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_0cf0:  ldarg.0
    IL_0cf1:  ldfld      class Game.SubsystemAudio Game.ComponentPlayer::m_subsystemAudio
    IL_0cf6:  ldstr      "Audio/UI/ButtonClick"
    IL_0cfb:  ldc.r4     1.
    IL_0d00:  ldc.r4     0.0
    IL_0d05:  ldc.r4     0.0
    IL_0d0a:  ldc.r4     0.0
    IL_0d0f:  callvirt   instance void Game.SubsystemAudio::PlaySound(string,
                                                                      float32,
                                                                      float32,
                                                                      float32,
                                                                      float32)
    IL_0d14:  ldarg.0
    IL_0d15:  ldarg.0
    IL_0d16:  call       instance class Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_0d1b:  ldarg.0
    IL_0d1c:  call       instance class Game.View Game.ComponentPlayer::get_View()
    IL_0d21:  callvirt   instance class Game.Camera Game.View::get_ActiveCamera()
    IL_0d26:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewPosition()
    IL_0d2b:  ldarg.0
    IL_0d2c:  call       instance class Game.View Game.ComponentPlayer::get_View()
    IL_0d31:  callvirt   instance class Game.Camera Game.View::get_ActiveCamera()
    IL_0d36:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewDirection()
    IL_0d3b:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> Game.ComponentMiner::PickTerrainForDigging(valuetype [Engine]Engine.Vector3,
                                                                                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0d40:  call       instance void Game.ComponentPlayer::set_HighlightRaycastResult(valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>)
    IL_0d45:  ret
  } // end of method ComponentPlayer::Update

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       383 (0x17f)
    .maxstack  4
    .locals init (class Game.ComponentPlayer/'<>c__DisplayClass71_0' V_0)
    IL_0000:  newobj     instance void Game.ComponentPlayer/'<>c__DisplayClass71_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  ldarg.2
    IL_0009:  call       instance void Game.ComponentCreature::Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary,
                                                                    class [EntitySystem]GameEntitySystem.IdToEntityMap)
    IL_000e:  ldarg.0
    IL_000f:  ldarg.0
    IL_0010:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0015:  ldc.i4.1
    IL_0016:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGameInfo>(bool)
    IL_001b:  stfld      class Game.SubsystemGameInfo Game.ComponentPlayer::m_subsystemGameInfo
    IL_0020:  ldarg.0
    IL_0021:  ldarg.0
    IL_0022:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0027:  ldc.i4.1
    IL_0028:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_002d:  stfld      class Game.SubsystemTime Game.ComponentPlayer::m_subsystemTime
    IL_0032:  ldarg.0
    IL_0033:  ldarg.0
    IL_0034:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0039:  ldc.i4.1
    IL_003a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemAudio>(bool)
    IL_003f:  stfld      class Game.SubsystemAudio Game.ComponentPlayer::m_subsystemAudio
    IL_0044:  ldarg.0
    IL_0045:  ldarg.0
    IL_0046:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_004b:  ldc.i4.1
    IL_004c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemPickables>(bool)
    IL_0051:  stfld      class Game.SubsystemPickables Game.ComponentPlayer::m_subsystemPickables
    IL_0056:  ldarg.0
    IL_0057:  ldarg.0
    IL_0058:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_005d:  ldc.i4.1
    IL_005e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_0063:  stfld      class Game.SubsystemTerrain Game.ComponentPlayer::m_subsystemTerrain
    IL_0068:  ldarg.0
    IL_0069:  ldarg.0
    IL_006a:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_006f:  ldc.i4.1
    IL_0070:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentGui>(bool)
    IL_0075:  call       instance void Game.ComponentPlayer::set_ComponentGui(class Game.ComponentGui)
    IL_007a:  ldarg.0
    IL_007b:  ldarg.0
    IL_007c:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0081:  ldc.i4.1
    IL_0082:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentInput>(bool)
    IL_0087:  call       instance void Game.ComponentPlayer::set_ComponentInput(class Game.ComponentInput)
    IL_008c:  ldarg.0
    IL_008d:  ldarg.0
    IL_008e:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0093:  ldc.i4.1
    IL_0094:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentScreenOverlays>(bool)
    IL_0099:  call       instance void Game.ComponentPlayer::set_ComponentScreenOverlays(class Game.ComponentScreenOverlays)
    IL_009e:  ldarg.0
    IL_009f:  ldarg.0
    IL_00a0:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_00a5:  ldc.i4.1
    IL_00a6:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentMiner>(bool)
    IL_00ab:  call       instance void Game.ComponentPlayer::set_ComponentMiner(class Game.ComponentMiner)
    IL_00b0:  ldarg.0
    IL_00b1:  ldarg.0
    IL_00b2:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_00b7:  ldc.i4.1
    IL_00b8:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentRider>(bool)
    IL_00bd:  call       instance void Game.ComponentPlayer::set_ComponentRider(class Game.ComponentRider)
    IL_00c2:  ldarg.0
    IL_00c3:  ldarg.0
    IL_00c4:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_00c9:  ldc.i4.1
    IL_00ca:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentSleep>(bool)
    IL_00cf:  call       instance void Game.ComponentPlayer::set_ComponentSleep(class Game.ComponentSleep)
    IL_00d4:  ldarg.0
    IL_00d5:  ldarg.0
    IL_00d6:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_00db:  ldc.i4.1
    IL_00dc:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentVitalStats>(bool)
    IL_00e1:  call       instance void Game.ComponentPlayer::set_ComponentVitalStats(class Game.ComponentVitalStats)
    IL_00e6:  ldarg.0
    IL_00e7:  ldarg.0
    IL_00e8:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_00ed:  ldc.i4.1
    IL_00ee:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentSickness>(bool)
    IL_00f3:  call       instance void Game.ComponentPlayer::set_ComponentSickness(class Game.ComponentSickness)
    IL_00f8:  ldarg.0
    IL_00f9:  ldarg.0
    IL_00fa:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_00ff:  ldc.i4.1
    IL_0100:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentFlu>(bool)
    IL_0105:  call       instance void Game.ComponentPlayer::set_ComponentFlu(class Game.ComponentFlu)
    IL_010a:  ldarg.0
    IL_010b:  ldarg.0
    IL_010c:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0111:  ldc.i4.1
    IL_0112:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentLevel>(bool)
    IL_0117:  call       instance void Game.ComponentPlayer::set_ComponentLevel(class Game.ComponentLevel)
    IL_011c:  ldarg.0
    IL_011d:  ldarg.0
    IL_011e:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0123:  ldc.i4.1
    IL_0124:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentClothing>(bool)
    IL_0129:  call       instance void Game.ComponentPlayer::set_ComponentClothing(class Game.ComponentClothing)
    IL_012e:  ldarg.0
    IL_012f:  ldarg.0
    IL_0130:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0135:  ldc.i4.1
    IL_0136:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentOuterClothingModel>(bool)
    IL_013b:  call       instance void Game.ComponentPlayer::set_ComponentOuterClothingModel(class Game.ComponentOuterClothingModel)
    IL_0140:  ldloc.0
    IL_0141:  ldarg.1
    IL_0142:  ldstr      "PlayerIndex"
    IL_0147:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<int32>(string)
    IL_014c:  stfld      int32 Game.ComponentPlayer/'<>c__DisplayClass71_0'::playerIndex
    IL_0151:  ldarg.0
    IL_0152:  ldarg.0
    IL_0153:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0158:  ldc.i4.1
    IL_0159:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemPlayers>(bool)
    IL_015e:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.PlayerData> Game.SubsystemPlayers::get_PlayersData()
    IL_0163:  box        valuetype [Engine]Engine.ReadOnlyList`1<class Game.PlayerData>
    IL_0168:  ldloc.0
    IL_0169:  ldftn      instance bool Game.ComponentPlayer/'<>c__DisplayClass71_0'::'<Load>b__0'(class Game.PlayerData)
    IL_016f:  newobj     instance void class [System.Runtime]System.Func`2<class Game.PlayerData,bool>::.ctor(object,
                                                                                                              native int)
    IL_0174:  call       !!0 [System.Linq]System.Linq.Enumerable::First<class Game.PlayerData>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                               class [System.Runtime]System.Func`2<!!0,bool>)
    IL_0179:  call       instance void Game.ComponentPlayer::set_PlayerData(class Game.PlayerData)
    IL_017e:  ret
  } // end of method ComponentPlayer::Load

  .method family hidebysig virtual instance void 
          Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.EntityToIdMap entityToIdMap) cil managed
  {
    // 代码大小       31 (0x1f)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  call       instance void Game.ComponentCreature::Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary,
                                                                    class [EntitySystem]GameEntitySystem.EntityToIdMap)
    IL_0008:  ldarg.1
    IL_0009:  ldstr      "PlayerIndex"
    IL_000e:  ldarg.0
    IL_000f:  call       instance class Game.PlayerData Game.ComponentPlayer::get_PlayerData()
    IL_0014:  callvirt   instance int32 Game.PlayerData::get_PlayerIndex()
    IL_0019:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<int32>(string,
                                                                                                         !!0)
    IL_001e:  ret
  } // end of method ComponentPlayer::Save

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.ComponentCreature::.ctor()
    IL_0006:  ret
  } // end of method ComponentPlayer::.ctor

  .property instance class Game.PlayerData
          PlayerData()
  {
    .get instance class Game.PlayerData Game.ComponentPlayer::get_PlayerData()
    .set instance void Game.ComponentPlayer::set_PlayerData(class Game.PlayerData)
  } // end of property ComponentPlayer::PlayerData
  .property instance class Game.View View()
  {
    .get instance class Game.View Game.ComponentPlayer::get_View()
  } // end of property ComponentPlayer::View
  .property instance class Game.ComponentGui
          ComponentGui()
  {
    .get instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    .set instance void Game.ComponentPlayer::set_ComponentGui(class Game.ComponentGui)
  } // end of property ComponentPlayer::ComponentGui
  .property instance class Game.ComponentInput
          ComponentInput()
  {
    .get instance class Game.ComponentInput Game.ComponentPlayer::get_ComponentInput()
    .set instance void Game.ComponentPlayer::set_ComponentInput(class Game.ComponentInput)
  } // end of property ComponentPlayer::ComponentInput
  .property instance class Game.ComponentScreenOverlays
          ComponentScreenOverlays()
  {
    .get instance class Game.ComponentScreenOverlays Game.ComponentPlayer::get_ComponentScreenOverlays()
    .set instance void Game.ComponentPlayer::set_ComponentScreenOverlays(class Game.ComponentScreenOverlays)
  } // end of property ComponentPlayer::ComponentScreenOverlays
  .property instance class Game.ComponentMiner
          ComponentMiner()
  {
    .get instance class Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    .set instance void Game.ComponentPlayer::set_ComponentMiner(class Game.ComponentMiner)
  } // end of property ComponentPlayer::ComponentMiner
  .property instance class Game.ComponentRider
          ComponentRider()
  {
    .get instance class Game.ComponentRider Game.ComponentPlayer::get_ComponentRider()
    .set instance void Game.ComponentPlayer::set_ComponentRider(class Game.ComponentRider)
  } // end of property ComponentPlayer::ComponentRider
  .property instance class Game.ComponentSleep
          ComponentSleep()
  {
    .get instance class Game.ComponentSleep Game.ComponentPlayer::get_ComponentSleep()
    .set instance void Game.ComponentPlayer::set_ComponentSleep(class Game.ComponentSleep)
  } // end of property ComponentPlayer::ComponentSleep
  .property instance class Game.ComponentVitalStats
          ComponentVitalStats()
  {
    .get instance class Game.ComponentVitalStats Game.ComponentPlayer::get_ComponentVitalStats()
    .set instance void Game.ComponentPlayer::set_ComponentVitalStats(class Game.ComponentVitalStats)
  } // end of property ComponentPlayer::ComponentVitalStats
  .property instance class Game.ComponentSickness
          ComponentSickness()
  {
    .get instance class Game.ComponentSickness Game.ComponentPlayer::get_ComponentSickness()
    .set instance void Game.ComponentPlayer::set_ComponentSickness(class Game.ComponentSickness)
  } // end of property ComponentPlayer::ComponentSickness
  .property instance class Game.ComponentFlu
          ComponentFlu()
  {
    .get instance class Game.ComponentFlu Game.ComponentPlayer::get_ComponentFlu()
    .set instance void Game.ComponentPlayer::set_ComponentFlu(class Game.ComponentFlu)
  } // end of property ComponentPlayer::ComponentFlu
  .property instance class Game.ComponentLevel
          ComponentLevel()
  {
    .get instance class Game.ComponentLevel Game.ComponentPlayer::get_ComponentLevel()
    .set instance void Game.ComponentPlayer::set_ComponentLevel(class Game.ComponentLevel)
  } // end of property ComponentPlayer::ComponentLevel
  .property instance class Game.ComponentClothing
          ComponentClothing()
  {
    .get instance class Game.ComponentClothing Game.ComponentPlayer::get_ComponentClothing()
    .set instance void Game.ComponentPlayer::set_ComponentClothing(class Game.ComponentClothing)
  } // end of property ComponentPlayer::ComponentClothing
  .property instance class Game.ComponentOuterClothingModel
          ComponentOuterClothingModel()
  {
    .get instance class Game.ComponentOuterClothingModel Game.ComponentPlayer::get_ComponentOuterClothingModel()
    .set instance void Game.ComponentPlayer::set_ComponentOuterClothingModel(class Game.ComponentOuterClothingModel)
  } // end of property ComponentPlayer::ComponentOuterClothingModel
  .property instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>
          HighlightRaycastResult()
  {
    .get instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> Game.ComponentPlayer::get_HighlightRaycastResult()
    .set instance void Game.ComponentPlayer::set_HighlightRaycastResult(valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>)
  } // end of property ComponentPlayer::HighlightRaycastResult
  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.ComponentPlayer::get_UpdateOrder()
  } // end of property ComponentPlayer::UpdateOrder
} // end of class Game.ComponentPlayer