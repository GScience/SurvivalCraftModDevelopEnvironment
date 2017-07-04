.class public auto ansi beforefieldinit Game.ComponentPlayer
       extends [Survivalcraft]Game.ComponentCreature
       implements [Survivalcraft]Game.IUpdateable
{
  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass10_0'
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
    } // end of method '<>c__DisplayClass10_0'::.ctor

    .method assembly hidebysig instance bool 
            '<Load>b__0'(class [Survivalcraft]Game.PlayerData d) cil managed
    {
      // 代码大小       15 (0xf)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  callvirt   instance int32 [Survivalcraft]Game.PlayerData::get_PlayerIndex()
      IL_0006:  ldarg.0
      IL_0007:  ldfld      int32 Game.ComponentPlayer/'<>c__DisplayClass10_0'::playerIndex
      IL_000c:  ceq
      IL_000e:  ret
    } // end of method '<>c__DisplayClass10_0'::'<Load>b__0'

  } // end of class '<>c__DisplayClass10_0'

  .field private valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> m_aimDirection
  .field private bool m_isAimBlocked
  .field private bool m_isDigBlocked
  .field private float64 m_lastActionTime
  .field private bool m_speedOrderBlocked
  .field private class [Survivalcraft]Game.SubsystemAudio m_subsystemAudio
  .field private class [Survivalcraft]Game.SubsystemGameInfo m_subsystemGameInfo
  .field private class [Survivalcraft]Game.SubsystemPickables m_subsystemPickables
  .field private class [Survivalcraft]Game.SubsystemTerrain m_subsystemTerrain
  .field private class [Survivalcraft]Game.SubsystemTime m_subsystemTime
  .field private class [Survivalcraft]Game.ComponentClothing '<ComponentClothing>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class [Survivalcraft]Game.ComponentFlu '<ComponentFlu>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class [Survivalcraft]Game.ComponentGui '<ComponentGui>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class [Survivalcraft]Game.ComponentInput '<ComponentInput>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class [Survivalcraft]Game.ComponentLevel '<ComponentLevel>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class [Survivalcraft]Game.ComponentMiner '<ComponentMiner>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class [Survivalcraft]Game.ComponentOuterClothingModel '<ComponentOuterClothingModel>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class [Survivalcraft]Game.ComponentRider '<ComponentRider>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class [Survivalcraft]Game.ComponentScreenOverlays '<ComponentScreenOverlays>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class [Survivalcraft]Game.ComponentSickness '<ComponentSickness>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class [Survivalcraft]Game.ComponentSleep '<ComponentSleep>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class [Survivalcraft]Game.ComponentVitalStats '<ComponentVitalStats>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [System.Runtime]System.Nullable`1<valuetype [Survivalcraft]Game.TerrainRaycastResult> '<HighlightRaycastResult>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class [Survivalcraft]Game.PlayerData '<PlayerData>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       383 (0x17f)
    .maxstack  4
    .locals init (class Game.ComponentPlayer/'<>c__DisplayClass10_0' V_0)
    IL_0000:  newobj     instance void Game.ComponentPlayer/'<>c__DisplayClass10_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  ldarg.2
    IL_0009:  call       instance void [Survivalcraft]Game.ComponentCreature::Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary,
                                                                                   class [EntitySystem]GameEntitySystem.IdToEntityMap)
    IL_000e:  ldarg.0
    IL_000f:  ldarg.0
    IL_0010:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0015:  ldc.i4.1
    IL_0016:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class [Survivalcraft]Game.SubsystemGameInfo>(bool)
    IL_001b:  stfld      class [Survivalcraft]Game.SubsystemGameInfo Game.ComponentPlayer::m_subsystemGameInfo
    IL_0020:  ldarg.0
    IL_0021:  ldarg.0
    IL_0022:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0027:  ldc.i4.1
    IL_0028:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class [Survivalcraft]Game.SubsystemTime>(bool)
    IL_002d:  stfld      class [Survivalcraft]Game.SubsystemTime Game.ComponentPlayer::m_subsystemTime
    IL_0032:  ldarg.0
    IL_0033:  ldarg.0
    IL_0034:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0039:  ldc.i4.1
    IL_003a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class [Survivalcraft]Game.SubsystemAudio>(bool)
    IL_003f:  stfld      class [Survivalcraft]Game.SubsystemAudio Game.ComponentPlayer::m_subsystemAudio
    IL_0044:  ldarg.0
    IL_0045:  ldarg.0
    IL_0046:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_004b:  ldc.i4.1
    IL_004c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class [Survivalcraft]Game.SubsystemPickables>(bool)
    IL_0051:  stfld      class [Survivalcraft]Game.SubsystemPickables Game.ComponentPlayer::m_subsystemPickables
    IL_0056:  ldarg.0
    IL_0057:  ldarg.0
    IL_0058:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_005d:  ldc.i4.1
    IL_005e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class [Survivalcraft]Game.SubsystemTerrain>(bool)
    IL_0063:  stfld      class [Survivalcraft]Game.SubsystemTerrain Game.ComponentPlayer::m_subsystemTerrain
    IL_0068:  ldarg.0
    IL_0069:  ldarg.0
    IL_006a:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_006f:  ldc.i4.1
    IL_0070:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class [Survivalcraft]Game.ComponentGui>(bool)
    IL_0075:  call       instance void Game.ComponentPlayer::set_ComponentGui(class [Survivalcraft]Game.ComponentGui)
    IL_007a:  ldarg.0
    IL_007b:  ldarg.0
    IL_007c:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0081:  ldc.i4.1
    IL_0082:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class [Survivalcraft]Game.ComponentInput>(bool)
    IL_0087:  call       instance void Game.ComponentPlayer::set_ComponentInput(class [Survivalcraft]Game.ComponentInput)
    IL_008c:  ldarg.0
    IL_008d:  ldarg.0
    IL_008e:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0093:  ldc.i4.1
    IL_0094:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class [Survivalcraft]Game.ComponentScreenOverlays>(bool)
    IL_0099:  call       instance void Game.ComponentPlayer::set_ComponentScreenOverlays(class [Survivalcraft]Game.ComponentScreenOverlays)
    IL_009e:  ldarg.0
    IL_009f:  ldarg.0
    IL_00a0:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_00a5:  ldc.i4.1
    IL_00a6:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class [Survivalcraft]Game.ComponentMiner>(bool)
    IL_00ab:  call       instance void Game.ComponentPlayer::set_ComponentMiner(class [Survivalcraft]Game.ComponentMiner)
    IL_00b0:  ldarg.0
    IL_00b1:  ldarg.0
    IL_00b2:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_00b7:  ldc.i4.1
    IL_00b8:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class [Survivalcraft]Game.ComponentRider>(bool)
    IL_00bd:  call       instance void Game.ComponentPlayer::set_ComponentRider(class [Survivalcraft]Game.ComponentRider)
    IL_00c2:  ldarg.0
    IL_00c3:  ldarg.0
    IL_00c4:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_00c9:  ldc.i4.1
    IL_00ca:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class [Survivalcraft]Game.ComponentSleep>(bool)
    IL_00cf:  call       instance void Game.ComponentPlayer::set_ComponentSleep(class [Survivalcraft]Game.ComponentSleep)
    IL_00d4:  ldarg.0
    IL_00d5:  ldarg.0
    IL_00d6:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_00db:  ldc.i4.1
    IL_00dc:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class [Survivalcraft]Game.ComponentVitalStats>(bool)
    IL_00e1:  call       instance void Game.ComponentPlayer::set_ComponentVitalStats(class [Survivalcraft]Game.ComponentVitalStats)
    IL_00e6:  ldarg.0
    IL_00e7:  ldarg.0
    IL_00e8:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_00ed:  ldc.i4.1
    IL_00ee:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class [Survivalcraft]Game.ComponentSickness>(bool)
    IL_00f3:  call       instance void Game.ComponentPlayer::set_ComponentSickness(class [Survivalcraft]Game.ComponentSickness)
    IL_00f8:  ldarg.0
    IL_00f9:  ldarg.0
    IL_00fa:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_00ff:  ldc.i4.1
    IL_0100:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class [Survivalcraft]Game.ComponentFlu>(bool)
    IL_0105:  call       instance void Game.ComponentPlayer::set_ComponentFlu(class [Survivalcraft]Game.ComponentFlu)
    IL_010a:  ldarg.0
    IL_010b:  ldarg.0
    IL_010c:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0111:  ldc.i4.1
    IL_0112:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class [Survivalcraft]Game.ComponentLevel>(bool)
    IL_0117:  call       instance void Game.ComponentPlayer::set_ComponentLevel(class [Survivalcraft]Game.ComponentLevel)
    IL_011c:  ldarg.0
    IL_011d:  ldarg.0
    IL_011e:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0123:  ldc.i4.1
    IL_0124:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class [Survivalcraft]Game.ComponentClothing>(bool)
    IL_0129:  call       instance void Game.ComponentPlayer::set_ComponentClothing(class [Survivalcraft]Game.ComponentClothing)
    IL_012e:  ldarg.0
    IL_012f:  ldarg.0
    IL_0130:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0135:  ldc.i4.1
    IL_0136:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class [Survivalcraft]Game.ComponentOuterClothingModel>(bool)
    IL_013b:  call       instance void Game.ComponentPlayer::set_ComponentOuterClothingModel(class [Survivalcraft]Game.ComponentOuterClothingModel)
    IL_0140:  ldloc.0
    IL_0141:  ldarg.1
    IL_0142:  ldstr      "PlayerIndex"
    IL_0147:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<int32>(string)
    IL_014c:  stfld      int32 Game.ComponentPlayer/'<>c__DisplayClass10_0'::playerIndex
    IL_0151:  ldarg.0
    IL_0152:  ldarg.0
    IL_0153:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0158:  ldc.i4.1
    IL_0159:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class [Survivalcraft]Game.SubsystemPlayers>(bool)
    IL_015e:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Survivalcraft]Game.PlayerData> [Survivalcraft]Game.SubsystemPlayers::get_PlayersData()
    IL_0163:  box        valuetype [Engine]Engine.ReadOnlyList`1<class [Survivalcraft]Game.PlayerData>
    IL_0168:  ldloc.0
    IL_0169:  ldftn      instance bool Game.ComponentPlayer/'<>c__DisplayClass10_0'::'<Load>b__0'(class [Survivalcraft]Game.PlayerData)
    IL_016f:  newobj     instance void class [System.Runtime]System.Func`2<class [Survivalcraft]Game.PlayerData,bool>::.ctor(object,
                                                                                                                             native int)
    IL_0174:  call       !!0 [System.Linq]System.Linq.Enumerable::First<class [Survivalcraft]Game.PlayerData>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                              class [System.Runtime]System.Func`2<!!0,bool>)
    IL_0179:  call       instance void Game.ComponentPlayer::set_PlayerData(class [Survivalcraft]Game.PlayerData)
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
    IL_0003:  call       instance void [Survivalcraft]Game.ComponentCreature::Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary,
                                                                                   class [EntitySystem]GameEntitySystem.EntityToIdMap)
    IL_0008:  ldarg.1
    IL_0009:  ldstr      "PlayerIndex"
    IL_000e:  ldarg.0
    IL_000f:  call       instance class [Survivalcraft]Game.PlayerData Game.ComponentPlayer::get_PlayerData()
    IL_0014:  callvirt   instance int32 [Survivalcraft]Game.PlayerData::get_PlayerIndex()
    IL_0019:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<int32>(string,
                                                                                                         !!0)
    IL_001e:  ret
  } // end of method ComponentPlayer::Save

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       3449 (0xd79)
    .maxstack  7
    .locals init (valuetype Game.PlayerInput V_0,
             class [Survivalcraft]Game.ComponentSteedBehavior V_1,
             class [Survivalcraft]Game.ComponentBoat V_2,
             class [Survivalcraft]Game.ComponentMount V_3,
             int32 V_4,
             class [Survivalcraft]Game.Block V_5,
             bool V_6,
             float32 V_7,
             valuetype [Engine]Engine.Vector3 V_8,
             valuetype [Engine]Engine.Vector3 V_9,
             valuetype [Engine]Engine.Vector3 V_10,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Survivalcraft]Game.BodyRaycastResult> V_11,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Survivalcraft]Game.TerrainRaycastResult> V_12,
             valuetype [Engine]Engine.Vector2 V_13,
             valuetype [Engine]Engine.Vector3 V_14,
             valuetype [Engine]Engine.Point2 V_15,
             valuetype [Engine]Engine.Vector3 V_16,
             valuetype [Engine]Engine.Vector3 V_17,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Survivalcraft]Game.TerrainRaycastResult> V_18,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Survivalcraft]Game.BodyRaycastResult> V_19,
             valuetype [Engine]Engine.Vector3 V_20,
             valuetype [Engine]Engine.Vector3 V_21,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Survivalcraft]Game.TerrainRaycastResult> V_22,
             int32 V_23,
             int32 V_24,
             int32 V_25,
             valuetype [Engine]Engine.Vector3 V_26,
             valuetype [Engine]Engine.Vector3 V_27,
             valuetype [Engine]Engine.Matrix V_28,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> V_29,
             class [Survivalcraft]Game.ComponentCreativeInventory V_30,
             valuetype [Engine]Engine.Vector3 V_31,
             valuetype [Engine]Engine.Vector3 V_32,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Survivalcraft]Game.TerrainRaycastResult> V_33,
             int32 V_34,
             int32 V_35,
             class [Survivalcraft]Game.Block V_36,
             int32 V_37,
             class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32> V_38,
             bool V_39,
             class [System.Collections]System.Collections.Generic.List`1<valuetype [Survivalcraft]Game.BlockDropValue> V_40,
             int32 V_41,
             int32 V_42,
             int32 V_43)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class [Survivalcraft]Game.ComponentInput Game.ComponentPlayer::get_ComponentInput()
    IL_0006:  callvirt   instance valuetype [Survivalcraft]Game.PlayerInput [Survivalcraft]Game.ComponentInput::get_PlayerInput()
    IL_000b:  box        [Survivalcraft]Game.PlayerInput
    IL_0010:  unbox.any  Game.PlayerInput
    IL_0015:  stloc.0
    IL_0016:  ldarg.0
    IL_0017:  call       instance class [Survivalcraft]Game.PlayerData Game.ComponentPlayer::get_PlayerData()
    IL_001c:  callvirt   instance string [Survivalcraft]Game.PlayerData::get_Name()
    IL_0021:  ldstr      "123"
    IL_0026:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                         string)
    IL_002b:  brfalse.s  IL_0035

    IL_002d:  ldloca.s   V_0
    IL_002f:  ldc.i4.1
    IL_0030:  stfld      bool Game.PlayerInput::Jump
    IL_0035:  ldarg.0
    IL_0036:  call       instance class [Survivalcraft]Game.ComponentInput Game.ComponentPlayer::get_ComponentInput()
    IL_003b:  callvirt   instance bool [Survivalcraft]Game.ComponentInput::get_IsControlledByTouch()
    IL_0040:  brfalse.s  IL_005b

    IL_0042:  ldarg.0
    IL_0043:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPlayer::m_aimDirection
    IL_0048:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_004d:  brfalse.s  IL_005b

    IL_004f:  ldloca.s   V_0
    IL_0051:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_0056:  stfld      valuetype [Engine]Engine.Vector2 Game.PlayerInput::Look
    IL_005b:  ldarg.0
    IL_005c:  call       instance class [Survivalcraft]Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_0061:  callvirt   instance class [Survivalcraft]Game.IInventory [Survivalcraft]Game.ComponentMiner::get_Inventory()
    IL_0066:  brfalse.s  IL_00c7

    IL_0068:  ldarg.0
    IL_0069:  call       instance class [Survivalcraft]Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_006e:  callvirt   instance class [Survivalcraft]Game.IInventory [Survivalcraft]Game.ComponentMiner::get_Inventory()
    IL_0073:  ldarg.0
    IL_0074:  call       instance class [Survivalcraft]Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_0079:  callvirt   instance class [Survivalcraft]Game.IInventory [Survivalcraft]Game.ComponentMiner::get_Inventory()
    IL_007e:  callvirt   instance int32 [Survivalcraft]Game.IInventory::get_ActiveSlotIndex()
    IL_0083:  ldloc.0
    IL_0084:  ldfld      int32 Game.PlayerInput::ScrollInventory
    IL_0089:  add
    IL_008a:  ldc.i4.0
    IL_008b:  ldc.i4.5
    IL_008c:  call       int32 [Engine]Engine.MathUtils::Clamp(int32,
                                                               int32,
                                                               int32)
    IL_0091:  callvirt   instance void [Survivalcraft]Game.IInventory::set_ActiveSlotIndex(int32)
    IL_0096:  ldloca.s   V_0
    IL_0098:  ldflda     valuetype [System.Runtime]System.Nullable`1<int32> Game.PlayerInput::SelectInventorySlot
    IL_009d:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_00a2:  brfalse.s  IL_00c7

    IL_00a4:  ldarg.0
    IL_00a5:  call       instance class [Survivalcraft]Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_00aa:  callvirt   instance class [Survivalcraft]Game.IInventory [Survivalcraft]Game.ComponentMiner::get_Inventory()
    IL_00af:  ldloca.s   V_0
    IL_00b1:  ldflda     valuetype [System.Runtime]System.Nullable`1<int32> Game.PlayerInput::SelectInventorySlot
    IL_00b6:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
    IL_00bb:  ldc.i4.0
    IL_00bc:  ldc.i4.5
    IL_00bd:  call       int32 [Engine]Engine.MathUtils::Clamp(int32,
                                                               int32,
                                                               int32)
    IL_00c2:  callvirt   instance void [Survivalcraft]Game.IInventory::set_ActiveSlotIndex(int32)
    IL_00c7:  ldnull
    IL_00c8:  stloc.1
    IL_00c9:  ldnull
    IL_00ca:  stloc.2
    IL_00cb:  ldarg.0
    IL_00cc:  call       instance class [Survivalcraft]Game.ComponentRider Game.ComponentPlayer::get_ComponentRider()
    IL_00d1:  callvirt   instance class [Survivalcraft]Game.ComponentMount [Survivalcraft]Game.ComponentRider::get_Mount()
    IL_00d6:  stloc.3
    IL_00d7:  ldloc.3
    IL_00d8:  brfalse.s  IL_00f2

    IL_00da:  ldloc.3
    IL_00db:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_00e0:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class [Survivalcraft]Game.ComponentSteedBehavior>()
    IL_00e5:  stloc.1
    IL_00e6:  ldloc.3
    IL_00e7:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_00ec:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class [Survivalcraft]Game.ComponentBoat>()
    IL_00f1:  stloc.2
    IL_00f2:  ldloc.1
    IL_00f3:  brfalse    IL_028a

    IL_00f8:  ldloc.0
    IL_00f9:  ldfld      valuetype [Engine]Engine.Vector3 Game.PlayerInput::Move
    IL_00fe:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0103:  ldc.r4     0.5
    IL_0108:  ble.un     IL_018d

    IL_010d:  ldarg.0
    IL_010e:  ldfld      bool Game.ComponentPlayer::m_speedOrderBlocked
    IL_0113:  brtrue.s   IL_018d

    IL_0115:  ldarg.0
    IL_0116:  call       instance class [Survivalcraft]Game.PlayerData Game.ComponentPlayer::get_PlayerData()
    IL_011b:  callvirt   instance valuetype [Survivalcraft]Game.PlayerClass [Survivalcraft]Game.PlayerData::get_PlayerClass()
    IL_0120:  brtrue.s   IL_014f

    IL_0122:  ldarg.0
    IL_0123:  ldfld      class [Survivalcraft]Game.SubsystemAudio Game.ComponentPlayer::m_subsystemAudio
    IL_0128:  ldstr      "Audio/Creatures/MaleYellFast"
    IL_012d:  ldc.r4     0.75
    IL_0132:  ldc.r4     0.0
    IL_0137:  ldarg.0
    IL_0138:  call       instance class [Survivalcraft]Game.ComponentBody [Survivalcraft]Game.ComponentCreature::get_ComponentBody()
    IL_013d:  callvirt   instance valuetype [Engine]Engine.Vector3 [Survivalcraft]Game.ComponentFrame::get_Position()
    IL_0142:  ldc.r4     2.
    IL_0147:  ldc.i4.0
    IL_0148:  callvirt   instance void [Survivalcraft]Game.SubsystemAudio::PlayRandomSound(string,
                                                                                           float32,
                                                                                           float32,
                                                                                           valuetype [Engine]Engine.Vector3,
                                                                                           float32,
                                                                                           bool)
    IL_014d:  br.s       IL_017a

    IL_014f:  ldarg.0
    IL_0150:  ldfld      class [Survivalcraft]Game.SubsystemAudio Game.ComponentPlayer::m_subsystemAudio
    IL_0155:  ldstr      "Audio/Creatures/FemaleYellFast"
    IL_015a:  ldc.r4     0.75
    IL_015f:  ldc.r4     0.0
    IL_0164:  ldarg.0
    IL_0165:  call       instance class [Survivalcraft]Game.ComponentBody [Survivalcraft]Game.ComponentCreature::get_ComponentBody()
    IL_016a:  callvirt   instance valuetype [Engine]Engine.Vector3 [Survivalcraft]Game.ComponentFrame::get_Position()
    IL_016f:  ldc.r4     2.
    IL_0174:  ldc.i4.0
    IL_0175:  callvirt   instance void [Survivalcraft]Game.SubsystemAudio::PlayRandomSound(string,
                                                                                           float32,
                                                                                           float32,
                                                                                           valuetype [Engine]Engine.Vector3,
                                                                                           float32,
                                                                                           bool)
    IL_017a:  ldloc.1
    IL_017b:  ldc.i4.1
    IL_017c:  callvirt   instance void [Survivalcraft]Game.ComponentSteedBehavior::set_SpeedOrder(int32)
    IL_0181:  ldarg.0
    IL_0182:  ldc.i4.1
    IL_0183:  stfld      bool Game.ComponentPlayer::m_speedOrderBlocked
    IL_0188:  br         IL_023a

    IL_018d:  ldloc.0
    IL_018e:  ldfld      valuetype [Engine]Engine.Vector3 Game.PlayerInput::Move
    IL_0193:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0198:  ldc.r4     -0.5
    IL_019d:  bge.un.s   IL_021c

    IL_019f:  ldarg.0
    IL_01a0:  ldfld      bool Game.ComponentPlayer::m_speedOrderBlocked
    IL_01a5:  brtrue.s   IL_021c

    IL_01a7:  ldarg.0
    IL_01a8:  call       instance class [Survivalcraft]Game.PlayerData Game.ComponentPlayer::get_PlayerData()
    IL_01ad:  callvirt   instance valuetype [Survivalcraft]Game.PlayerClass [Survivalcraft]Game.PlayerData::get_PlayerClass()
    IL_01b2:  brtrue.s   IL_01e1

    IL_01b4:  ldarg.0
    IL_01b5:  ldfld      class [Survivalcraft]Game.SubsystemAudio Game.ComponentPlayer::m_subsystemAudio
    IL_01ba:  ldstr      "Audio/Creatures/MaleYellSlow"
    IL_01bf:  ldc.r4     0.75
    IL_01c4:  ldc.r4     0.0
    IL_01c9:  ldarg.0
    IL_01ca:  call       instance class [Survivalcraft]Game.ComponentBody [Survivalcraft]Game.ComponentCreature::get_ComponentBody()
    IL_01cf:  callvirt   instance valuetype [Engine]Engine.Vector3 [Survivalcraft]Game.ComponentFrame::get_Position()
    IL_01d4:  ldc.r4     2.
    IL_01d9:  ldc.i4.0
    IL_01da:  callvirt   instance void [Survivalcraft]Game.SubsystemAudio::PlayRandomSound(string,
                                                                                           float32,
                                                                                           float32,
                                                                                           valuetype [Engine]Engine.Vector3,
                                                                                           float32,
                                                                                           bool)
    IL_01df:  br.s       IL_020c

    IL_01e1:  ldarg.0
    IL_01e2:  ldfld      class [Survivalcraft]Game.SubsystemAudio Game.ComponentPlayer::m_subsystemAudio
    IL_01e7:  ldstr      "Audio/Creatures/FemaleYellSlow"
    IL_01ec:  ldc.r4     0.75
    IL_01f1:  ldc.r4     0.0
    IL_01f6:  ldarg.0
    IL_01f7:  call       instance class [Survivalcraft]Game.ComponentBody [Survivalcraft]Game.ComponentCreature::get_ComponentBody()
    IL_01fc:  callvirt   instance valuetype [Engine]Engine.Vector3 [Survivalcraft]Game.ComponentFrame::get_Position()
    IL_0201:  ldc.r4     2.
    IL_0206:  ldc.i4.0
    IL_0207:  callvirt   instance void [Survivalcraft]Game.SubsystemAudio::PlayRandomSound(string,
                                                                                           float32,
                                                                                           float32,
                                                                                           valuetype [Engine]Engine.Vector3,
                                                                                           float32,
                                                                                           bool)
    IL_020c:  ldloc.1
    IL_020d:  ldc.i4.m1
    IL_020e:  callvirt   instance void [Survivalcraft]Game.ComponentSteedBehavior::set_SpeedOrder(int32)
    IL_0213:  ldarg.0
    IL_0214:  ldc.i4.1
    IL_0215:  stfld      bool Game.ComponentPlayer::m_speedOrderBlocked
    IL_021a:  br.s       IL_023a

    IL_021c:  ldloc.0
    IL_021d:  ldfld      valuetype [Engine]Engine.Vector3 Game.PlayerInput::Move
    IL_0222:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0227:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_022c:  ldc.r4     0.25
    IL_0231:  bgt.un.s   IL_023a

    IL_0233:  ldarg.0
    IL_0234:  ldc.i4.0
    IL_0235:  stfld      bool Game.ComponentPlayer::m_speedOrderBlocked
    IL_023a:  ldloc.1
    IL_023b:  ldloc.0
    IL_023c:  ldfld      valuetype [Engine]Engine.Vector3 Game.PlayerInput::Move
    IL_0241:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0246:  callvirt   instance void [Survivalcraft]Game.ComponentSteedBehavior::set_TurnOrder(float32)
    IL_024b:  ldloc.1
    IL_024c:  ldloc.0
    IL_024d:  ldfld      bool Game.PlayerInput::Jump
    IL_0252:  brtrue.s   IL_025b

    IL_0254:  ldc.r4     0.0
    IL_0259:  br.s       IL_0260

    IL_025b:  ldc.r4     1.
    IL_0260:  callvirt   instance void [Survivalcraft]Game.ComponentSteedBehavior::set_JumpOrder(float32)
    IL_0265:  ldarg.0
    IL_0266:  call       instance class [Survivalcraft]Game.ComponentLocomotion [Survivalcraft]Game.ComponentCreature::get_ComponentLocomotion()
    IL_026b:  ldloc.0
    IL_026c:  ldfld      valuetype [Engine]Engine.Vector2 Game.PlayerInput::Look
    IL_0271:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0276:  ldc.r4     0.0
    IL_027b:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0280:  callvirt   instance void [Survivalcraft]Game.ComponentLocomotion::set_LookOrder(valuetype [Engine]Engine.Vector2)
    IL_0285:  br         IL_0418

    IL_028a:  ldloc.2
    IL_028b:  brfalse    IL_033b

    IL_0290:  ldloc.2
    IL_0291:  ldloc.0
    IL_0292:  ldfld      valuetype [Engine]Engine.Vector3 Game.PlayerInput::Move
    IL_0297:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_029c:  callvirt   instance void [Survivalcraft]Game.ComponentBoat::set_TurnOrder(float32)
    IL_02a1:  ldloc.2
    IL_02a2:  ldloc.0
    IL_02a3:  ldfld      valuetype [Engine]Engine.Vector3 Game.PlayerInput::Move
    IL_02a8:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_02ad:  callvirt   instance void [Survivalcraft]Game.ComponentBoat::set_MoveOrder(float32)
    IL_02b2:  ldarg.0
    IL_02b3:  call       instance class [Survivalcraft]Game.ComponentLocomotion [Survivalcraft]Game.ComponentCreature::get_ComponentLocomotion()
    IL_02b8:  ldloc.0
    IL_02b9:  ldfld      valuetype [Engine]Engine.Vector2 Game.PlayerInput::Look
    IL_02be:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_02c3:  ldc.r4     0.0
    IL_02c8:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_02cd:  callvirt   instance void [Survivalcraft]Game.ComponentLocomotion::set_LookOrder(valuetype [Engine]Engine.Vector2)
    IL_02d2:  ldarg.0
    IL_02d3:  call       instance class [Survivalcraft]Game.ComponentCreatureModel [Survivalcraft]Game.ComponentCreature::get_ComponentCreatureModel()
    IL_02d8:  ldloc.0
    IL_02d9:  ldfld      valuetype [Engine]Engine.Vector3 Game.PlayerInput::Move
    IL_02de:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_02e3:  ldc.r4     -0.2
    IL_02e8:  blt.s      IL_02fe

    IL_02ea:  ldloc.0
    IL_02eb:  ldfld      valuetype [Engine]Engine.Vector3 Game.PlayerInput::Move
    IL_02f0:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_02f5:  ldc.r4     0.2
    IL_02fa:  cgt
    IL_02fc:  br.s       IL_02ff

    IL_02fe:  ldc.i4.1
    IL_02ff:  callvirt   instance void [Survivalcraft]Game.ComponentCreatureModel::set_RowLeftOrder(bool)
    IL_0304:  ldarg.0
    IL_0305:  call       instance class [Survivalcraft]Game.ComponentCreatureModel [Survivalcraft]Game.ComponentCreature::get_ComponentCreatureModel()
    IL_030a:  ldloc.0
    IL_030b:  ldfld      valuetype [Engine]Engine.Vector3 Game.PlayerInput::Move
    IL_0310:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0315:  ldc.r4     0.2
    IL_031a:  bgt.s      IL_0330

    IL_031c:  ldloc.0
    IL_031d:  ldfld      valuetype [Engine]Engine.Vector3 Game.PlayerInput::Move
    IL_0322:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0327:  ldc.r4     0.2
    IL_032c:  cgt
    IL_032e:  br.s       IL_0331

    IL_0330:  ldc.i4.1
    IL_0331:  callvirt   instance void [Survivalcraft]Game.ComponentCreatureModel::set_RowRightOrder(bool)
    IL_0336:  br         IL_0418

    IL_033b:  ldarg.0
    IL_033c:  call       instance class [Survivalcraft]Game.ComponentLocomotion [Survivalcraft]Game.ComponentCreature::get_ComponentLocomotion()
    IL_0341:  ldarg.0
    IL_0342:  call       instance class [Survivalcraft]Game.ComponentBody [Survivalcraft]Game.ComponentCreature::get_ComponentBody()
    IL_0347:  callvirt   instance bool [Survivalcraft]Game.ComponentBody::get_IsSneaking()
    IL_034c:  brtrue.s   IL_036b

    IL_034e:  ldloc.0
    IL_034f:  ldfld      valuetype [Engine]Engine.Vector3 Game.PlayerInput::Move
    IL_0354:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0359:  ldloc.0
    IL_035a:  ldfld      valuetype [Engine]Engine.Vector3 Game.PlayerInput::Move
    IL_035f:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0364:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0369:  br.s       IL_0390

    IL_036b:  ldc.r4     0.66000003
    IL_0370:  ldloc.0
    IL_0371:  ldfld      valuetype [Engine]Engine.Vector3 Game.PlayerInput::SneakMove
    IL_0376:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_037b:  ldloc.0
    IL_037c:  ldfld      valuetype [Engine]Engine.Vector3 Game.PlayerInput::SneakMove
    IL_0381:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0386:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_038b:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0390:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_0395:  callvirt   instance void [Survivalcraft]Game.ComponentLocomotion::set_WalkOrder(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>)
    IL_039a:  ldarg.0
    IL_039b:  call       instance class [Survivalcraft]Game.ComponentLocomotion [Survivalcraft]Game.ComponentCreature::get_ComponentLocomotion()
    IL_03a0:  ldc.r4     0.0
    IL_03a5:  ldloc.0
    IL_03a6:  ldfld      valuetype [Engine]Engine.Vector3 Game.PlayerInput::Move
    IL_03ab:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_03b0:  ldc.r4     0.0
    IL_03b5:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_03ba:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_03bf:  callvirt   instance void [Survivalcraft]Game.ComponentLocomotion::set_FlyOrder(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>)
    IL_03c4:  ldarg.0
    IL_03c5:  call       instance class [Survivalcraft]Game.ComponentLocomotion [Survivalcraft]Game.ComponentCreature::get_ComponentLocomotion()
    IL_03ca:  ldloc.0
    IL_03cb:  ldfld      valuetype [Engine]Engine.Vector2 Game.PlayerInput::Look
    IL_03d0:  ldc.r4     1.
    IL_03d5:  ldc.r4     0.0
    IL_03da:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_03df:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_03e4:  callvirt   instance void [Survivalcraft]Game.ComponentLocomotion::set_TurnOrder(valuetype [Engine]Engine.Vector2)
    IL_03e9:  ldarg.0
    IL_03ea:  call       instance class [Survivalcraft]Game.ComponentLocomotion [Survivalcraft]Game.ComponentCreature::get_ComponentLocomotion()
    IL_03ef:  ldloc.0
    IL_03f0:  ldfld      bool Game.PlayerInput::Jump
    IL_03f5:  brtrue.s   IL_03fe

    IL_03f7:  ldc.r4     0.0
    IL_03fc:  br.s       IL_0403

    IL_03fe:  ldc.r4     1.
    IL_0403:  ldarg.0
    IL_0404:  call       instance class [Survivalcraft]Game.ComponentLocomotion [Survivalcraft]Game.ComponentCreature::get_ComponentLocomotion()
    IL_0409:  callvirt   instance float32 [Survivalcraft]Game.ComponentLocomotion::get_JumpOrder()
    IL_040e:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_0413:  callvirt   instance void [Survivalcraft]Game.ComponentLocomotion::set_JumpOrder(float32)
    IL_0418:  ldarg.0
    IL_0419:  call       instance class [Survivalcraft]Game.ComponentLocomotion [Survivalcraft]Game.ComponentCreature::get_ComponentLocomotion()
    IL_041e:  dup
    IL_041f:  callvirt   instance valuetype [Engine]Engine.Vector2 [Survivalcraft]Game.ComponentLocomotion::get_LookOrder()
    IL_0424:  ldloc.0
    IL_0425:  ldfld      valuetype [Engine]Engine.Vector2 Game.PlayerInput::Look
    IL_042a:  call       bool [Survivalcraft]Game.SettingsManager::get_FlipVerticalAxis()
    IL_042f:  brtrue.s   IL_0442

    IL_0431:  ldc.r4     0.0
    IL_0436:  ldc.r4     1.
    IL_043b:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0440:  br.s       IL_0451

    IL_0442:  ldc.r4     0.0
    IL_0447:  ldc.r4     -1.
    IL_044c:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0451:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0456:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_045b:  callvirt   instance void [Survivalcraft]Game.ComponentLocomotion::set_LookOrder(valuetype [Engine]Engine.Vector2)
    IL_0460:  ldarg.0
    IL_0461:  call       instance class [Survivalcraft]Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_0466:  callvirt   instance int32 [Survivalcraft]Game.ComponentMiner::get_ActiveBlockValue()
    IL_046b:  call       int32 [Survivalcraft]Game.Terrain::ExtractContents(int32)
    IL_0470:  stloc.s    V_4
    IL_0472:  call       class [Survivalcraft]Game.Block[] [Survivalcraft]Game.BlocksManager::get_Blocks()
    IL_0477:  ldloc.s    V_4
    IL_0479:  ldelem.ref
    IL_047a:  stloc.s    V_5
    IL_047c:  ldc.i4.0
    IL_047d:  stloc.s    V_6
    IL_047f:  ldloca.s   V_0
    IL_0481:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Interact
    IL_0486:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_048b:  brfalse    IL_05e1

    IL_0490:  ldloc.s    V_6
    IL_0492:  brtrue     IL_05e1

    IL_0497:  ldarg.0
    IL_0498:  ldfld      class [Survivalcraft]Game.SubsystemTime Game.ComponentPlayer::m_subsystemTime
    IL_049d:  callvirt   instance float64 [Survivalcraft]Game.SubsystemTime::get_GameTime()
    IL_04a2:  ldarg.0
    IL_04a3:  ldfld      float64 Game.ComponentPlayer::m_lastActionTime
    IL_04a8:  sub
    IL_04a9:  ldc.r8     0.33000001311302185
    IL_04b2:  ble.un     IL_05e1

    IL_04b7:  ldarg.0
    IL_04b8:  call       instance class [Survivalcraft]Game.View Game.ComponentPlayer::get_View()
    IL_04bd:  callvirt   instance class [Survivalcraft]Game.Camera [Survivalcraft]Game.View::get_ActiveCamera()
    IL_04c2:  callvirt   instance valuetype [Engine]Engine.Vector3 [Survivalcraft]Game.Camera::get_ViewPosition()
    IL_04c7:  stloc.s    V_9
    IL_04c9:  ldarg.0
    IL_04ca:  call       instance class [Survivalcraft]Game.View Game.ComponentPlayer::get_View()
    IL_04cf:  callvirt   instance class [Survivalcraft]Game.Camera [Survivalcraft]Game.View::get_ActiveCamera()
    IL_04d4:  ldloca.s   V_0
    IL_04d6:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Interact
    IL_04db:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_04e0:  ldc.r4     1.
    IL_04e5:  newobj     instance void [Engine]Engine.Vector3::.ctor(valuetype [Engine]Engine.Vector2,
                                                                     float32)
    IL_04ea:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
    IL_04ef:  callvirt   instance valuetype [Engine]Engine.Vector3 [Survivalcraft]Game.Camera::ScreenToWorld(valuetype [Engine]Engine.Vector3,
                                                                                                             valuetype [Engine]Engine.Matrix)
    IL_04f4:  ldloc.s    V_9
    IL_04f6:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_04fb:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0500:  stloc.s    V_10
    IL_0502:  ldarg.0
    IL_0503:  call       instance class [Survivalcraft]Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_0508:  ldloc.s    V_9
    IL_050a:  ldloc.s    V_10
    IL_050c:  callvirt   instance bool [Survivalcraft]Game.ComponentMiner::Use(valuetype [Engine]Engine.Vector3,
                                                                               valuetype [Engine]Engine.Vector3)
    IL_0511:  brtrue     IL_05c7

    IL_0516:  ldarg.0
    IL_0517:  call       instance class [Survivalcraft]Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_051c:  ldloc.s    V_9
    IL_051e:  ldloc.s    V_10
    IL_0520:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Survivalcraft]Game.BodyRaycastResult> [Survivalcraft]Game.ComponentMiner::PickBody(valuetype [Engine]Engine.Vector3,
                                                                                                                                                                            valuetype [Engine]Engine.Vector3)
    IL_0525:  stloc.s    V_11
    IL_0527:  ldarg.0
    IL_0528:  call       instance class [Survivalcraft]Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_052d:  ldloc.s    V_9
    IL_052f:  ldloc.s    V_10
    IL_0531:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Survivalcraft]Game.TerrainRaycastResult> [Survivalcraft]Game.ComponentMiner::PickTerrainForInteraction(valuetype [Engine]Engine.Vector3,
                                                                                                                                                                                                valuetype [Engine]Engine.Vector3)
    IL_0536:  stloc.s    V_12
    IL_0538:  ldloca.s   V_12
    IL_053a:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Survivalcraft]Game.TerrainRaycastResult>::get_HasValue()
    IL_053f:  brfalse    IL_05e1

    IL_0544:  ldloca.s   V_11
    IL_0546:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Survivalcraft]Game.BodyRaycastResult>::get_HasValue()
    IL_054b:  brfalse.s  IL_0567

    IL_054d:  ldloca.s   V_12
    IL_054f:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Survivalcraft]Game.TerrainRaycastResult>::get_Value()
    IL_0554:  ldfld      float32 [Survivalcraft]Game.TerrainRaycastResult::Distance
    IL_0559:  ldloca.s   V_11
    IL_055b:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Survivalcraft]Game.BodyRaycastResult>::get_Value()
    IL_0560:  ldfld      float32 [Survivalcraft]Game.BodyRaycastResult::Distance
    IL_0565:  bge.un.s   IL_05e1

    IL_0567:  ldarg.0
    IL_0568:  call       instance class [Survivalcraft]Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_056d:  ldloca.s   V_12
    IL_056f:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Survivalcraft]Game.TerrainRaycastResult>::get_Value()
    IL_0574:  callvirt   instance bool [Survivalcraft]Game.ComponentMiner::Interact(valuetype [Survivalcraft]Game.TerrainRaycastResult)
    IL_0579:  brtrue.s   IL_05ab

    IL_057b:  ldarg.0
    IL_057c:  call       instance class [Survivalcraft]Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_0581:  ldloca.s   V_12
    IL_0583:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Survivalcraft]Game.TerrainRaycastResult>::get_Value()
    IL_0588:  callvirt   instance bool [Survivalcraft]Game.ComponentMiner::Place(valuetype [Survivalcraft]Game.TerrainRaycastResult)
    IL_058d:  brfalse.s  IL_05e1

    IL_058f:  ldarg.0
    IL_0590:  ldfld      class [Survivalcraft]Game.SubsystemTerrain Game.ComponentPlayer::m_subsystemTerrain
    IL_0595:  callvirt   instance class [Survivalcraft]Game.TerrainUpdater [Survivalcraft]Game.SubsystemTerrain::get_TerrainUpdater()
    IL_059a:  callvirt   instance void [Survivalcraft]Game.TerrainUpdater::RequestSynchronousUpdate()
    IL_059f:  ldc.i4.1
    IL_05a0:  stloc.s    V_6
    IL_05a2:  ldarg.0
    IL_05a3:  ldc.i4.1
    IL_05a4:  stfld      bool Game.ComponentPlayer::m_isAimBlocked
    IL_05a9:  br.s       IL_05e1

    IL_05ab:  ldarg.0
    IL_05ac:  ldfld      class [Survivalcraft]Game.SubsystemTerrain Game.ComponentPlayer::m_subsystemTerrain
    IL_05b1:  callvirt   instance class [Survivalcraft]Game.TerrainUpdater [Survivalcraft]Game.SubsystemTerrain::get_TerrainUpdater()
    IL_05b6:  callvirt   instance void [Survivalcraft]Game.TerrainUpdater::RequestSynchronousUpdate()
    IL_05bb:  ldc.i4.1
    IL_05bc:  stloc.s    V_6
    IL_05be:  ldarg.0
    IL_05bf:  ldc.i4.1
    IL_05c0:  stfld      bool Game.ComponentPlayer::m_isAimBlocked
    IL_05c5:  br.s       IL_05e1

    IL_05c7:  ldarg.0
    IL_05c8:  ldfld      class [Survivalcraft]Game.SubsystemTerrain Game.ComponentPlayer::m_subsystemTerrain
    IL_05cd:  callvirt   instance class [Survivalcraft]Game.TerrainUpdater [Survivalcraft]Game.SubsystemTerrain::get_TerrainUpdater()
    IL_05d2:  callvirt   instance void [Survivalcraft]Game.TerrainUpdater::RequestSynchronousUpdate()
    IL_05d7:  ldc.i4.1
    IL_05d8:  stloc.s    V_6
    IL_05da:  ldarg.0
    IL_05db:  ldc.i4.1
    IL_05dc:  stfld      bool Game.ComponentPlayer::m_isAimBlocked
    IL_05e1:  ldarg.0
    IL_05e2:  ldfld      class [Survivalcraft]Game.SubsystemGameInfo Game.ComponentPlayer::m_subsystemGameInfo
    IL_05e7:  callvirt   instance class [Survivalcraft]Game.WorldSettings [Survivalcraft]Game.SubsystemGameInfo::get_WorldSettings()
    IL_05ec:  ldfld      valuetype [Survivalcraft]Game.GameMode [Survivalcraft]Game.WorldSettings::GameMode
    IL_05f1:  brfalse.s  IL_05fa

    IL_05f3:  ldc.r4     1.4
    IL_05f8:  br.s       IL_05ff

    IL_05fa:  ldc.r4     0.1
    IL_05ff:  stloc.s    V_7
    IL_0601:  ldarg.0
    IL_0602:  call       instance class [Survivalcraft]Game.View Game.ComponentPlayer::get_View()
    IL_0607:  callvirt   instance class [Survivalcraft]Game.Camera [Survivalcraft]Game.View::get_ActiveCamera()
    IL_060c:  callvirt   instance valuetype [Engine]Engine.Vector3 [Survivalcraft]Game.Camera::get_ViewPosition()
    IL_0611:  stloc.s    V_8
    IL_0613:  ldloca.s   V_0
    IL_0615:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Aim
    IL_061a:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_061f:  brfalse    IL_07bf

    IL_0624:  ldloc.s    V_5
    IL_0626:  ldfld      bool [Survivalcraft]Game.Block::IsAimable
    IL_062b:  brfalse    IL_07bf

    IL_0630:  ldarg.0
    IL_0631:  ldfld      class [Survivalcraft]Game.SubsystemTime Game.ComponentPlayer::m_subsystemTime
    IL_0636:  callvirt   instance float64 [Survivalcraft]Game.SubsystemTime::get_GameTime()
    IL_063b:  ldarg.0
    IL_063c:  ldfld      float64 Game.ComponentPlayer::m_lastActionTime
    IL_0641:  sub
    IL_0642:  ldloc.s    V_7
    IL_0644:  conv.r8
    IL_0645:  ble.un     IL_07bf

    IL_064a:  ldarg.0
    IL_064b:  ldfld      bool Game.ComponentPlayer::m_isAimBlocked
    IL_0650:  brtrue     IL_080a

    IL_0655:  ldloca.s   V_0
    IL_0657:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Aim
    IL_065c:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_0661:  stloc.s    V_13
    IL_0663:  ldarg.0
    IL_0664:  call       instance class [Survivalcraft]Game.View Game.ComponentPlayer::get_View()
    IL_0669:  callvirt   instance class [Survivalcraft]Game.Camera [Survivalcraft]Game.View::get_ActiveCamera()
    IL_066e:  ldloc.s    V_13
    IL_0670:  ldc.r4     1.
    IL_0675:  newobj     instance void [Engine]Engine.Vector3::.ctor(valuetype [Engine]Engine.Vector2,
                                                                     float32)
    IL_067a:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
    IL_067f:  callvirt   instance valuetype [Engine]Engine.Vector3 [Survivalcraft]Game.Camera::ScreenToWorld(valuetype [Engine]Engine.Vector3,
                                                                                                             valuetype [Engine]Engine.Matrix)
    IL_0684:  stloc.s    V_14
    IL_0686:  call       valuetype [Engine]Engine.Point2 [Engine]Engine.Window::get_Size()
    IL_068b:  stloc.s    V_15
    IL_068d:  ldloca.s   V_0
    IL_068f:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Aim
    IL_0694:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_0699:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_069e:  ldloc.s    V_15
    IL_06a0:  ldfld      int32 [Engine]Engine.Point2::X
    IL_06a5:  conv.r4
    IL_06a6:  ldc.r4     0.1
    IL_06ab:  mul
    IL_06ac:  blt.un     IL_0783

    IL_06b1:  ldloca.s   V_0
    IL_06b3:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Aim
    IL_06b8:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_06bd:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_06c2:  ldloc.s    V_15
    IL_06c4:  ldfld      int32 [Engine]Engine.Point2::X
    IL_06c9:  conv.r4
    IL_06ca:  ldc.r4     0.89999998
    IL_06cf:  mul
    IL_06d0:  bge.un     IL_0783

    IL_06d5:  ldloca.s   V_0
    IL_06d7:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Aim
    IL_06dc:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_06e1:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_06e6:  ldloc.s    V_15
    IL_06e8:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_06ed:  conv.r4
    IL_06ee:  ldc.r4     0.1
    IL_06f3:  mul
    IL_06f4:  blt.un     IL_0783

    IL_06f9:  ldloca.s   V_0
    IL_06fb:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Aim
    IL_0700:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_0705:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_070a:  ldloc.s    V_15
    IL_070c:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0711:  conv.r4
    IL_0712:  ldc.r4     0.89999998
    IL_0717:  mul
    IL_0718:  bge.un.s   IL_0783

    IL_071a:  ldarg.0
    IL_071b:  ldloc.s    V_14
    IL_071d:  ldloc.s    V_8
    IL_071f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0724:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0729:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_072e:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPlayer::m_aimDirection
    IL_0733:  ldarg.0
    IL_0734:  call       instance class [Survivalcraft]Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_0739:  ldloc.s    V_8
    IL_073b:  ldarg.0
    IL_073c:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPlayer::m_aimDirection
    IL_0741:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_0746:  ldc.i4.0
    IL_0747:  callvirt   instance bool [Survivalcraft]Game.ComponentMiner::Aim(valuetype [Engine]Engine.Vector3,
                                                                               valuetype [Engine]Engine.Vector3,
                                                                               valuetype [Survivalcraft]Game.AimState)
    IL_074c:  brfalse    IL_080a

    IL_0751:  ldarg.0
    IL_0752:  call       instance class [Survivalcraft]Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_0757:  ldloc.s    V_8
    IL_0759:  ldarg.0
    IL_075a:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPlayer::m_aimDirection
    IL_075f:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_0764:  ldc.i4.1
    IL_0765:  callvirt   instance bool [Survivalcraft]Game.ComponentMiner::Aim(valuetype [Engine]Engine.Vector3,
                                                                               valuetype [Engine]Engine.Vector3,
                                                                               valuetype [Survivalcraft]Game.AimState)
    IL_076a:  pop
    IL_076b:  ldarg.0
    IL_076c:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPlayer::m_aimDirection
    IL_0771:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>
    IL_0777:  ldarg.0
    IL_0778:  ldc.i4.1
    IL_0779:  stfld      bool Game.ComponentPlayer::m_isAimBlocked
    IL_077e:  br         IL_080a

    IL_0783:  ldarg.0
    IL_0784:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPlayer::m_aimDirection
    IL_0789:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_078e:  brfalse.s  IL_080a

    IL_0790:  ldarg.0
    IL_0791:  call       instance class [Survivalcraft]Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_0796:  ldloc.s    V_8
    IL_0798:  ldarg.0
    IL_0799:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPlayer::m_aimDirection
    IL_079e:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_07a3:  ldc.i4.1
    IL_07a4:  callvirt   instance bool [Survivalcraft]Game.ComponentMiner::Aim(valuetype [Engine]Engine.Vector3,
                                                                               valuetype [Engine]Engine.Vector3,
                                                                               valuetype [Survivalcraft]Game.AimState)
    IL_07a9:  pop
    IL_07aa:  ldarg.0
    IL_07ab:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPlayer::m_aimDirection
    IL_07b0:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>
    IL_07b6:  ldarg.0
    IL_07b7:  ldc.i4.1
    IL_07b8:  stfld      bool Game.ComponentPlayer::m_isAimBlocked
    IL_07bd:  br.s       IL_080a

    IL_07bf:  ldarg.0
    IL_07c0:  ldc.i4.0
    IL_07c1:  stfld      bool Game.ComponentPlayer::m_isAimBlocked
    IL_07c6:  ldarg.0
    IL_07c7:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPlayer::m_aimDirection
    IL_07cc:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_07d1:  brfalse.s  IL_080a

    IL_07d3:  ldarg.0
    IL_07d4:  call       instance class [Survivalcraft]Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_07d9:  ldloc.s    V_8
    IL_07db:  ldarg.0
    IL_07dc:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPlayer::m_aimDirection
    IL_07e1:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_07e6:  ldc.i4.2
    IL_07e7:  callvirt   instance bool [Survivalcraft]Game.ComponentMiner::Aim(valuetype [Engine]Engine.Vector3,
                                                                               valuetype [Engine]Engine.Vector3,
                                                                               valuetype [Survivalcraft]Game.AimState)
    IL_07ec:  pop
    IL_07ed:  ldarg.0
    IL_07ee:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPlayer::m_aimDirection
    IL_07f3:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>
    IL_07f9:  ldarg.0
    IL_07fa:  ldarg.0
    IL_07fb:  ldfld      class [Survivalcraft]Game.SubsystemTime Game.ComponentPlayer::m_subsystemTime
    IL_0800:  callvirt   instance float64 [Survivalcraft]Game.SubsystemTime::get_GameTime()
    IL_0805:  stfld      float64 Game.ComponentPlayer::m_lastActionTime
    IL_080a:  ldloc.s    V_6
    IL_080c:  ldarg.0
    IL_080d:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPlayer::m_aimDirection
    IL_0812:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_0817:  or
    IL_0818:  stloc.s    V_6
    IL_081a:  ldloca.s   V_0
    IL_081c:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Hit
    IL_0821:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_0826:  brfalse    IL_093f

    IL_082b:  ldloc.s    V_6
    IL_082d:  brtrue     IL_093f

    IL_0832:  ldarg.0
    IL_0833:  ldfld      class [Survivalcraft]Game.SubsystemTime Game.ComponentPlayer::m_subsystemTime
    IL_0838:  callvirt   instance float64 [Survivalcraft]Game.SubsystemTime::get_GameTime()
    IL_083d:  ldarg.0
    IL_083e:  ldfld      float64 Game.ComponentPlayer::m_lastActionTime
    IL_0843:  sub
    IL_0844:  ldc.r8     0.33000001311302185
    IL_084d:  ble.un     IL_093f

    IL_0852:  ldarg.0
    IL_0853:  call       instance class [Survivalcraft]Game.View Game.ComponentPlayer::get_View()
    IL_0858:  callvirt   instance class [Survivalcraft]Game.Camera [Survivalcraft]Game.View::get_ActiveCamera()
    IL_085d:  callvirt   instance valuetype [Engine]Engine.Vector3 [Survivalcraft]Game.Camera::get_ViewPosition()
    IL_0862:  stloc.s    V_16
    IL_0864:  ldarg.0
    IL_0865:  call       instance class [Survivalcraft]Game.View Game.ComponentPlayer::get_View()
    IL_086a:  callvirt   instance class [Survivalcraft]Game.Camera [Survivalcraft]Game.View::get_ActiveCamera()
    IL_086f:  ldloca.s   V_0
    IL_0871:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Hit
    IL_0876:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_087b:  ldc.r4     1.
    IL_0880:  newobj     instance void [Engine]Engine.Vector3::.ctor(valuetype [Engine]Engine.Vector2,
                                                                     float32)
    IL_0885:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
    IL_088a:  callvirt   instance valuetype [Engine]Engine.Vector3 [Survivalcraft]Game.Camera::ScreenToWorld(valuetype [Engine]Engine.Vector3,
                                                                                                             valuetype [Engine]Engine.Matrix)
    IL_088f:  ldloc.s    V_16
    IL_0891:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0896:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_089b:  stloc.s    V_17
    IL_089d:  ldarg.0
    IL_089e:  call       instance class [Survivalcraft]Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_08a3:  ldloc.s    V_16
    IL_08a5:  ldloc.s    V_17
    IL_08a7:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Survivalcraft]Game.TerrainRaycastResult> [Survivalcraft]Game.ComponentMiner::PickTerrainForInteraction(valuetype [Engine]Engine.Vector3,
                                                                                                                                                                                                valuetype [Engine]Engine.Vector3)
    IL_08ac:  stloc.s    V_18
    IL_08ae:  ldarg.0
    IL_08af:  call       instance class [Survivalcraft]Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_08b4:  ldloc.s    V_16
    IL_08b6:  ldloc.s    V_17
    IL_08b8:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Survivalcraft]Game.BodyRaycastResult> [Survivalcraft]Game.ComponentMiner::PickBody(valuetype [Engine]Engine.Vector3,
                                                                                                                                                                            valuetype [Engine]Engine.Vector3)
    IL_08bd:  stloc.s    V_19
    IL_08bf:  ldloca.s   V_19
    IL_08c1:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Survivalcraft]Game.BodyRaycastResult>::get_HasValue()
    IL_08c6:  brfalse.s  IL_093f

    IL_08c8:  ldloca.s   V_18
    IL_08ca:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Survivalcraft]Game.TerrainRaycastResult>::get_HasValue()
    IL_08cf:  brfalse.s  IL_08eb

    IL_08d1:  ldloca.s   V_18
    IL_08d3:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Survivalcraft]Game.TerrainRaycastResult>::get_Value()
    IL_08d8:  ldfld      float32 [Survivalcraft]Game.TerrainRaycastResult::Distance
    IL_08dd:  ldloca.s   V_19
    IL_08df:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Survivalcraft]Game.BodyRaycastResult>::get_Value()
    IL_08e4:  ldfld      float32 [Survivalcraft]Game.BodyRaycastResult::Distance
    IL_08e9:  ble.un.s   IL_093f

    IL_08eb:  ldloc.s    V_16
    IL_08ed:  ldloc.s    V_17
    IL_08ef:  ldloca.s   V_19
    IL_08f1:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Survivalcraft]Game.BodyRaycastResult>::get_Value()
    IL_08f6:  ldfld      float32 [Survivalcraft]Game.BodyRaycastResult::Distance
    IL_08fb:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0900:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0905:  ldarg.0
    IL_0906:  call       instance class [Survivalcraft]Game.ComponentCreatureModel [Survivalcraft]Game.ComponentCreature::get_ComponentCreatureModel()
    IL_090b:  callvirt   instance valuetype [Engine]Engine.Vector3 [Survivalcraft]Game.ComponentCreatureModel::get_EyePosition()
    IL_0910:  call       float32 [Engine]Engine.Vector3::Distance(valuetype [Engine]Engine.Vector3,
                                                                  valuetype [Engine]Engine.Vector3)
    IL_0915:  ldc.r4     2.
    IL_091a:  bgt.un.s   IL_093f

    IL_091c:  ldarg.0
    IL_091d:  call       instance class [Survivalcraft]Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_0922:  ldloca.s   V_19
    IL_0924:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Survivalcraft]Game.BodyRaycastResult>::get_Value()
    IL_0929:  ldfld      class [Survivalcraft]Game.ComponentBody [Survivalcraft]Game.BodyRaycastResult::ComponentBody
    IL_092e:  ldloc.s    V_17
    IL_0930:  callvirt   instance void [Survivalcraft]Game.ComponentMiner::Hit(class [Survivalcraft]Game.ComponentBody,
                                                                               valuetype [Engine]Engine.Vector3)
    IL_0935:  ldc.i4.1
    IL_0936:  stloc.s    V_6
    IL_0938:  ldarg.0
    IL_0939:  ldc.i4.1
    IL_093a:  stfld      bool Game.ComponentPlayer::m_isDigBlocked
    IL_093f:  ldloca.s   V_0
    IL_0941:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Dig
    IL_0946:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_094b:  brfalse    IL_0a17

    IL_0950:  ldloc.s    V_6
    IL_0952:  brtrue     IL_0a17

    IL_0957:  ldarg.0
    IL_0958:  ldfld      bool Game.ComponentPlayer::m_isDigBlocked
    IL_095d:  brtrue     IL_0a17

    IL_0962:  ldarg.0
    IL_0963:  ldfld      class [Survivalcraft]Game.SubsystemTime Game.ComponentPlayer::m_subsystemTime
    IL_0968:  callvirt   instance float64 [Survivalcraft]Game.SubsystemTime::get_GameTime()
    IL_096d:  ldarg.0
    IL_096e:  ldfld      float64 Game.ComponentPlayer::m_lastActionTime
    IL_0973:  sub
    IL_0974:  ldc.r8     0.33000001311302185
    IL_097d:  ble.un     IL_0a17

    IL_0982:  ldarg.0
    IL_0983:  call       instance class [Survivalcraft]Game.View Game.ComponentPlayer::get_View()
    IL_0988:  callvirt   instance class [Survivalcraft]Game.Camera [Survivalcraft]Game.View::get_ActiveCamera()
    IL_098d:  callvirt   instance valuetype [Engine]Engine.Vector3 [Survivalcraft]Game.Camera::get_ViewPosition()
    IL_0992:  stloc.s    V_20
    IL_0994:  ldarg.0
    IL_0995:  call       instance class [Survivalcraft]Game.View Game.ComponentPlayer::get_View()
    IL_099a:  callvirt   instance class [Survivalcraft]Game.Camera [Survivalcraft]Game.View::get_ActiveCamera()
    IL_099f:  ldloca.s   V_0
    IL_09a1:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Dig
    IL_09a6:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_09ab:  ldc.r4     1.
    IL_09b0:  newobj     instance void [Engine]Engine.Vector3::.ctor(valuetype [Engine]Engine.Vector2,
                                                                     float32)
    IL_09b5:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
    IL_09ba:  callvirt   instance valuetype [Engine]Engine.Vector3 [Survivalcraft]Game.Camera::ScreenToWorld(valuetype [Engine]Engine.Vector3,
                                                                                                             valuetype [Engine]Engine.Matrix)
    IL_09bf:  stloc.s    V_21
    IL_09c1:  ldarg.0
    IL_09c2:  call       instance class [Survivalcraft]Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_09c7:  ldloc.s    V_20
    IL_09c9:  ldloc.s    V_21
    IL_09cb:  ldloc.s    V_20
    IL_09cd:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_09d2:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Survivalcraft]Game.TerrainRaycastResult> [Survivalcraft]Game.ComponentMiner::PickTerrainForDigging(valuetype [Engine]Engine.Vector3,
                                                                                                                                                                                            valuetype [Engine]Engine.Vector3)
    IL_09d7:  stloc.s    V_22
    IL_09d9:  ldloca.s   V_22
    IL_09db:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Survivalcraft]Game.TerrainRaycastResult>::get_HasValue()
    IL_09e0:  brfalse.s  IL_0a17

    IL_09e2:  ldarg.0
    IL_09e3:  call       instance class [Survivalcraft]Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_09e8:  ldloca.s   V_22
    IL_09ea:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Survivalcraft]Game.TerrainRaycastResult>::get_Value()
    IL_09ef:  callvirt   instance bool [Survivalcraft]Game.ComponentMiner::Dig(valuetype [Survivalcraft]Game.TerrainRaycastResult)
    IL_09f4:  brfalse.s  IL_0a17

    IL_09f6:  ldarg.0
    IL_09f7:  ldarg.0
    IL_09f8:  ldfld      class [Survivalcraft]Game.SubsystemTime Game.ComponentPlayer::m_subsystemTime
    IL_09fd:  callvirt   instance float64 [Survivalcraft]Game.SubsystemTime::get_GameTime()
    IL_0a02:  stfld      float64 Game.ComponentPlayer::m_lastActionTime
    IL_0a07:  ldarg.0
    IL_0a08:  ldfld      class [Survivalcraft]Game.SubsystemTerrain Game.ComponentPlayer::m_subsystemTerrain
    IL_0a0d:  callvirt   instance class [Survivalcraft]Game.TerrainUpdater [Survivalcraft]Game.SubsystemTerrain::get_TerrainUpdater()
    IL_0a12:  callvirt   instance void [Survivalcraft]Game.TerrainUpdater::RequestSynchronousUpdate()
    IL_0a17:  ldloca.s   V_0
    IL_0a19:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Dig
    IL_0a1e:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_0a23:  brtrue.s   IL_0a2c

    IL_0a25:  ldarg.0
    IL_0a26:  ldc.i4.0
    IL_0a27:  stfld      bool Game.ComponentPlayer::m_isDigBlocked
    IL_0a2c:  ldloc.0
    IL_0a2d:  ldfld      bool Game.PlayerInput::Drop
    IL_0a32:  brfalse    IL_0b2d

    IL_0a37:  ldarg.0
    IL_0a38:  call       instance class [Survivalcraft]Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_0a3d:  callvirt   instance class [Survivalcraft]Game.IInventory [Survivalcraft]Game.ComponentMiner::get_Inventory()
    IL_0a42:  brfalse    IL_0b2d

    IL_0a47:  ldarg.0
    IL_0a48:  call       instance class [Survivalcraft]Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_0a4d:  callvirt   instance class [Survivalcraft]Game.IInventory [Survivalcraft]Game.ComponentMiner::get_Inventory()
    IL_0a52:  dup
    IL_0a53:  dup
    IL_0a54:  callvirt   instance int32 [Survivalcraft]Game.IInventory::get_ActiveSlotIndex()
    IL_0a59:  callvirt   instance int32 [Survivalcraft]Game.IInventory::GetSlotValue(int32)
    IL_0a5e:  stloc.s    V_23
    IL_0a60:  dup
    IL_0a61:  dup
    IL_0a62:  callvirt   instance int32 [Survivalcraft]Game.IInventory::get_ActiveSlotIndex()
    IL_0a67:  callvirt   instance int32 [Survivalcraft]Game.IInventory::GetSlotCount(int32)
    IL_0a6c:  stloc.s    V_24
    IL_0a6e:  dup
    IL_0a6f:  callvirt   instance int32 [Survivalcraft]Game.IInventory::get_ActiveSlotIndex()
    IL_0a74:  ldloc.s    V_24
    IL_0a76:  callvirt   instance int32 [Survivalcraft]Game.IInventory::RemoveSlotItems(int32,
                                                                                        int32)
    IL_0a7b:  stloc.s    V_25
    IL_0a7d:  ldloc.s    V_23
    IL_0a7f:  brfalse    IL_0b2d

    IL_0a84:  ldloc.s    V_25
    IL_0a86:  brfalse    IL_0b2d

    IL_0a8b:  ldarg.0
    IL_0a8c:  call       instance class [Survivalcraft]Game.ComponentBody [Survivalcraft]Game.ComponentCreature::get_ComponentBody()
    IL_0a91:  callvirt   instance valuetype [Engine]Engine.Vector3 [Survivalcraft]Game.ComponentFrame::get_Position()
    IL_0a96:  ldc.r4     0.0
    IL_0a9b:  ldarg.0
    IL_0a9c:  call       instance class [Survivalcraft]Game.ComponentBody [Survivalcraft]Game.ComponentCreature::get_ComponentBody()
    IL_0aa1:  callvirt   instance valuetype [Engine]Engine.Vector3 [Survivalcraft]Game.ComponentBody::get_BoxSize()
    IL_0aa6:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0aab:  ldc.r4     0.66000003
    IL_0ab0:  mul
    IL_0ab1:  ldc.r4     0.0
    IL_0ab6:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0abb:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0ac0:  ldc.r4     0.25
    IL_0ac5:  ldarg.0
    IL_0ac6:  call       instance class [Survivalcraft]Game.ComponentBody [Survivalcraft]Game.ComponentCreature::get_ComponentBody()
    IL_0acb:  callvirt   instance valuetype [Engine]Engine.Matrix [Survivalcraft]Game.ComponentFrame::get_Matrix()
    IL_0ad0:  stloc.s    V_28
    IL_0ad2:  ldloca.s   V_28
    IL_0ad4:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Forward()
    IL_0ad9:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0ade:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0ae3:  stloc.s    V_26
    IL_0ae5:  ldc.r4     8.
    IL_0aea:  ldarg.0
    IL_0aeb:  call       instance class [Survivalcraft]Game.ComponentCreatureModel [Survivalcraft]Game.ComponentCreature::get_ComponentCreatureModel()
    IL_0af0:  callvirt   instance valuetype [Engine]Engine.Quaternion [Survivalcraft]Game.ComponentCreatureModel::get_EyeRotation()
    IL_0af5:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateFromQuaternion(valuetype [Engine]Engine.Quaternion)
    IL_0afa:  stloc.s    V_28
    IL_0afc:  ldloca.s   V_28
    IL_0afe:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Forward()
    IL_0b03:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0b08:  stloc.s    V_27
    IL_0b0a:  ldarg.0
    IL_0b0b:  ldfld      class [Survivalcraft]Game.SubsystemPickables Game.ComponentPlayer::m_subsystemPickables
    IL_0b10:  ldloc.s    V_23
    IL_0b12:  ldloc.s    V_25
    IL_0b14:  ldloc.s    V_26
    IL_0b16:  ldloc.s    V_27
    IL_0b18:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_0b1d:  ldloca.s   V_29
    IL_0b1f:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_0b25:  ldloc.s    V_29
    IL_0b27:  callvirt   instance class [Survivalcraft]Game.Pickable [Survivalcraft]Game.SubsystemPickables::AddPickable(int32,
                                                                                                                         int32,
                                                                                                                         valuetype [Engine]Engine.Vector3,
                                                                                                                         valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>,
                                                                                                                         valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_0b2c:  pop
    IL_0b2d:  ldloca.s   V_0
    IL_0b2f:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::PickBlockType
    IL_0b34:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_0b39:  brfalse    IL_0d47

    IL_0b3e:  ldloc.s    V_6
    IL_0b40:  brtrue     IL_0d47

    IL_0b45:  ldarg.0
    IL_0b46:  call       instance class [Survivalcraft]Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_0b4b:  callvirt   instance class [Survivalcraft]Game.IInventory [Survivalcraft]Game.ComponentMiner::get_Inventory()
    IL_0b50:  isinst     [Survivalcraft]Game.ComponentCreativeInventory
    IL_0b55:  stloc.s    V_30
    IL_0b57:  ldloc.s    V_30
    IL_0b59:  brfalse    IL_0d47

    IL_0b5e:  ldarg.0
    IL_0b5f:  call       instance class [Survivalcraft]Game.View Game.ComponentPlayer::get_View()
    IL_0b64:  callvirt   instance class [Survivalcraft]Game.Camera [Survivalcraft]Game.View::get_ActiveCamera()
    IL_0b69:  callvirt   instance valuetype [Engine]Engine.Vector3 [Survivalcraft]Game.Camera::get_ViewPosition()
    IL_0b6e:  stloc.s    V_31
    IL_0b70:  ldarg.0
    IL_0b71:  call       instance class [Survivalcraft]Game.View Game.ComponentPlayer::get_View()
    IL_0b76:  callvirt   instance class [Survivalcraft]Game.Camera [Survivalcraft]Game.View::get_ActiveCamera()
    IL_0b7b:  ldloca.s   V_0
    IL_0b7d:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::PickBlockType
    IL_0b82:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_0b87:  ldc.r4     1.
    IL_0b8c:  newobj     instance void [Engine]Engine.Vector3::.ctor(valuetype [Engine]Engine.Vector2,
                                                                     float32)
    IL_0b91:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
    IL_0b96:  callvirt   instance valuetype [Engine]Engine.Vector3 [Survivalcraft]Game.Camera::ScreenToWorld(valuetype [Engine]Engine.Vector3,
                                                                                                             valuetype [Engine]Engine.Matrix)
    IL_0b9b:  stloc.s    V_32
    IL_0b9d:  ldarg.0
    IL_0b9e:  call       instance class [Survivalcraft]Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_0ba3:  ldloc.s    V_31
    IL_0ba5:  ldloc.s    V_32
    IL_0ba7:  ldloc.s    V_31
    IL_0ba9:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0bae:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Survivalcraft]Game.TerrainRaycastResult> [Survivalcraft]Game.ComponentMiner::PickTerrainForDigging(valuetype [Engine]Engine.Vector3,
                                                                                                                                                                                            valuetype [Engine]Engine.Vector3)
    IL_0bb3:  stloc.s    V_33
    IL_0bb5:  ldloca.s   V_33
    IL_0bb7:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Survivalcraft]Game.TerrainRaycastResult>::get_HasValue()
    IL_0bbc:  brfalse    IL_0d47

    IL_0bc1:  ldloca.s   V_33
    IL_0bc3:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Survivalcraft]Game.TerrainRaycastResult>::get_Value()
    IL_0bc8:  ldfld      int32 [Survivalcraft]Game.TerrainRaycastResult::Value
    IL_0bcd:  ldc.i4.0
    IL_0bce:  call       int32 [Survivalcraft]Game.Terrain::ReplaceLight(int32,
                                                                         int32)
    IL_0bd3:  stloc.s    V_34
    IL_0bd5:  ldloc.s    V_34
    IL_0bd7:  call       int32 [Survivalcraft]Game.Terrain::ExtractContents(int32)
    IL_0bdc:  stloc.s    V_35
    IL_0bde:  call       class [Survivalcraft]Game.Block[] [Survivalcraft]Game.BlocksManager::get_Blocks()
    IL_0be3:  ldloc.s    V_35
    IL_0be5:  ldelem.ref
    IL_0be6:  stloc.s    V_36
    IL_0be8:  ldc.i4.0
    IL_0be9:  stloc.s    V_37
    IL_0beb:  ldloc.s    V_36
    IL_0bed:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32> [Survivalcraft]Game.Block::GetCreativeValues()
    IL_0bf2:  stloc.s    V_38
    IL_0bf4:  ldloc.s    V_36
    IL_0bf6:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32> [Survivalcraft]Game.Block::GetCreativeValues()
    IL_0bfb:  ldloc.s    V_34
    IL_0bfd:  call       bool [System.Linq]System.Linq.Enumerable::Contains<int32>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                   !!0)
    IL_0c02:  brfalse.s  IL_0c08

    IL_0c04:  ldloc.s    V_34
    IL_0c06:  stloc.s    V_37
    IL_0c08:  ldloc.s    V_37
    IL_0c0a:  brtrue.s   IL_0c5e

    IL_0c0c:  ldloc.s    V_36
    IL_0c0e:  ldfld      bool [Survivalcraft]Game.Block::IsNonDuplicable
    IL_0c13:  brtrue.s   IL_0c5e

    IL_0c15:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Survivalcraft]Game.BlockDropValue>::.ctor()
    IL_0c1a:  stloc.s    V_40
    IL_0c1c:  ldloc.s    V_36
    IL_0c1e:  ldarg.0
    IL_0c1f:  ldfld      class [Survivalcraft]Game.SubsystemTerrain Game.ComponentPlayer::m_subsystemTerrain
    IL_0c24:  ldloc.s    V_34
    IL_0c26:  ldc.i4.0
    IL_0c27:  ldc.i4     0x7fffffff
    IL_0c2c:  ldloc.s    V_40
    IL_0c2e:  ldloca.s   V_39
    IL_0c30:  callvirt   instance void [Survivalcraft]Game.Block::GetDropValues(class [Survivalcraft]Game.SubsystemTerrain,
                                                                                int32,
                                                                                int32,
                                                                                int32,
                                                                                class [System.Collections]System.Collections.Generic.List`1<valuetype [Survivalcraft]Game.BlockDropValue>,
                                                                                bool&)
    IL_0c35:  ldloc.s    V_40
    IL_0c37:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<valuetype [Survivalcraft]Game.BlockDropValue>::get_Count()
    IL_0c3c:  ldc.i4.0
    IL_0c3d:  ble.s      IL_0c5e

    IL_0c3f:  ldloc.s    V_40
    IL_0c41:  ldc.i4.0
    IL_0c42:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<valuetype [Survivalcraft]Game.BlockDropValue>::get_Item(int32)
    IL_0c47:  ldfld      int32 [Survivalcraft]Game.BlockDropValue::Count
    IL_0c4c:  ldc.i4.0
    IL_0c4d:  ble.s      IL_0c5e

    IL_0c4f:  ldloc.s    V_40
    IL_0c51:  ldc.i4.0
    IL_0c52:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<valuetype [Survivalcraft]Game.BlockDropValue>::get_Item(int32)
    IL_0c57:  ldfld      int32 [Survivalcraft]Game.BlockDropValue::Value
    IL_0c5c:  stloc.s    V_37
    IL_0c5e:  ldloc.s    V_37
    IL_0c60:  brtrue.s   IL_0c6b

    IL_0c62:  ldloc.s    V_38
    IL_0c64:  call       !!0 [System.Linq]System.Linq.Enumerable::FirstOrDefault<int32>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_0c69:  stloc.s    V_37
    IL_0c6b:  ldloc.s    V_37
    IL_0c6d:  brfalse    IL_0d47

    IL_0c72:  ldc.i4.m1
    IL_0c73:  stloc.s    V_41
    IL_0c75:  ldc.i4.0
    IL_0c76:  stloc.s    V_42
    IL_0c78:  br.s       IL_0c9f

    IL_0c7a:  ldloc.s    V_30
    IL_0c7c:  ldloc.s    V_42
    IL_0c7e:  callvirt   instance int32 [Survivalcraft]Game.ComponentCreativeInventory::GetSlotCount(int32)
    IL_0c83:  ldc.i4.0
    IL_0c84:  ble.s      IL_0c99

    IL_0c86:  ldloc.s    V_30
    IL_0c88:  ldloc.s    V_42
    IL_0c8a:  callvirt   instance int32 [Survivalcraft]Game.ComponentCreativeInventory::GetSlotValue(int32)
    IL_0c8f:  ldloc.s    V_37
    IL_0c91:  bne.un.s   IL_0c99

    IL_0c93:  ldloc.s    V_42
    IL_0c95:  stloc.s    V_41
    IL_0c97:  br.s       IL_0ca4

    IL_0c99:  ldloc.s    V_42
    IL_0c9b:  ldc.i4.1
    IL_0c9c:  add
    IL_0c9d:  stloc.s    V_42
    IL_0c9f:  ldloc.s    V_42
    IL_0ca1:  ldc.i4.6
    IL_0ca2:  blt.s      IL_0c7a

    IL_0ca4:  ldloc.s    V_41
    IL_0ca6:  ldc.i4.0
    IL_0ca7:  bge.s      IL_0cd5

    IL_0ca9:  ldc.i4.0
    IL_0caa:  stloc.s    V_43
    IL_0cac:  br.s       IL_0cd0

    IL_0cae:  ldloc.s    V_30
    IL_0cb0:  ldloc.s    V_43
    IL_0cb2:  callvirt   instance int32 [Survivalcraft]Game.ComponentCreativeInventory::GetSlotCount(int32)
    IL_0cb7:  brfalse.s  IL_0cc4

    IL_0cb9:  ldloc.s    V_30
    IL_0cbb:  ldloc.s    V_43
    IL_0cbd:  callvirt   instance int32 [Survivalcraft]Game.ComponentCreativeInventory::GetSlotValue(int32)
    IL_0cc2:  brtrue.s   IL_0cca

    IL_0cc4:  ldloc.s    V_43
    IL_0cc6:  stloc.s    V_41
    IL_0cc8:  br.s       IL_0cd5

    IL_0cca:  ldloc.s    V_43
    IL_0ccc:  ldc.i4.1
    IL_0ccd:  add
    IL_0cce:  stloc.s    V_43
    IL_0cd0:  ldloc.s    V_43
    IL_0cd2:  ldc.i4.6
    IL_0cd3:  blt.s      IL_0cae

    IL_0cd5:  ldloc.s    V_41
    IL_0cd7:  ldc.i4.0
    IL_0cd8:  bge.s      IL_0ce3

    IL_0cda:  ldloc.s    V_30
    IL_0cdc:  callvirt   instance int32 [Survivalcraft]Game.ComponentCreativeInventory::get_ActiveSlotIndex()
    IL_0ce1:  stloc.s    V_41
    IL_0ce3:  ldloc.s    V_30
    IL_0ce5:  ldloc.s    V_41
    IL_0ce7:  ldc.i4     0x7fffffff
    IL_0cec:  callvirt   instance int32 [Survivalcraft]Game.ComponentCreativeInventory::RemoveSlotItems(int32,
                                                                                                        int32)
    IL_0cf1:  pop
    IL_0cf2:  ldloc.s    V_30
    IL_0cf4:  ldloc.s    V_41
    IL_0cf6:  ldloc.s    V_37
    IL_0cf8:  ldc.i4.1
    IL_0cf9:  callvirt   instance void [Survivalcraft]Game.ComponentCreativeInventory::AddSlotItems(int32,
                                                                                                    int32,
                                                                                                    int32)
    IL_0cfe:  ldloc.s    V_30
    IL_0d00:  ldloc.s    V_41
    IL_0d02:  callvirt   instance void [Survivalcraft]Game.ComponentCreativeInventory::set_ActiveSlotIndex(int32)
    IL_0d07:  ldarg.0
    IL_0d08:  call       instance class [Survivalcraft]Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_0d0d:  ldloc.s    V_36
    IL_0d0f:  ldarg.0
    IL_0d10:  ldfld      class [Survivalcraft]Game.SubsystemTerrain Game.ComponentPlayer::m_subsystemTerrain
    IL_0d15:  ldloc.s    V_34
    IL_0d17:  callvirt   instance string [Survivalcraft]Game.Block::GetDisplayName(class [Survivalcraft]Game.SubsystemTerrain,
                                                                                   int32)
    IL_0d1c:  ldc.i4.0
    IL_0d1d:  ldc.i4.0
    IL_0d1e:  callvirt   instance void [Survivalcraft]Game.ComponentGui::DisplaySmallMessage(string,
                                                                                             bool,
                                                                                             bool)
    IL_0d23:  ldarg.0
    IL_0d24:  ldfld      class [Survivalcraft]Game.SubsystemAudio Game.ComponentPlayer::m_subsystemAudio
    IL_0d29:  ldstr      "Audio/UI/ButtonClick"
    IL_0d2e:  ldc.r4     1.
    IL_0d33:  ldc.r4     0.0
    IL_0d38:  ldc.r4     0.0
    IL_0d3d:  ldc.r4     0.0
    IL_0d42:  callvirt   instance void [Survivalcraft]Game.SubsystemAudio::PlaySound(string,
                                                                                     float32,
                                                                                     float32,
                                                                                     float32,
                                                                                     float32)
    IL_0d47:  ldarg.0
    IL_0d48:  ldarg.0
    IL_0d49:  call       instance class [Survivalcraft]Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_0d4e:  ldarg.0
    IL_0d4f:  call       instance class [Survivalcraft]Game.View Game.ComponentPlayer::get_View()
    IL_0d54:  callvirt   instance class [Survivalcraft]Game.Camera [Survivalcraft]Game.View::get_ActiveCamera()
    IL_0d59:  callvirt   instance valuetype [Engine]Engine.Vector3 [Survivalcraft]Game.Camera::get_ViewPosition()
    IL_0d5e:  ldarg.0
    IL_0d5f:  call       instance class [Survivalcraft]Game.View Game.ComponentPlayer::get_View()
    IL_0d64:  callvirt   instance class [Survivalcraft]Game.Camera [Survivalcraft]Game.View::get_ActiveCamera()
    IL_0d69:  callvirt   instance valuetype [Engine]Engine.Vector3 [Survivalcraft]Game.Camera::get_ViewDirection()
    IL_0d6e:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Survivalcraft]Game.TerrainRaycastResult> [Survivalcraft]Game.ComponentMiner::PickTerrainForDigging(valuetype [Engine]Engine.Vector3,
                                                                                                                                                                                            valuetype [Engine]Engine.Vector3)
    IL_0d73:  call       instance void Game.ComponentPlayer::set_HighlightRaycastResult(valuetype [System.Runtime]System.Nullable`1<valuetype [Survivalcraft]Game.TerrainRaycastResult>)
    IL_0d78:  ret
  } // end of method ComponentPlayer::Update

  .method public hidebysig specialname instance class [Survivalcraft]Game.ComponentClothing 
          get_ComponentClothing() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [Survivalcraft]Game.ComponentClothing Game.ComponentPlayer::'<ComponentClothing>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentPlayer::get_ComponentClothing

  .method private hidebysig specialname instance void 
          set_ComponentClothing(class [Survivalcraft]Game.ComponentClothing 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class [Survivalcraft]Game.ComponentClothing Game.ComponentPlayer::'<ComponentClothing>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentPlayer::set_ComponentClothing

  .method public hidebysig specialname instance class [Survivalcraft]Game.ComponentFlu 
          get_ComponentFlu() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [Survivalcraft]Game.ComponentFlu Game.ComponentPlayer::'<ComponentFlu>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentPlayer::get_ComponentFlu

  .method private hidebysig specialname instance void 
          set_ComponentFlu(class [Survivalcraft]Game.ComponentFlu 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class [Survivalcraft]Game.ComponentFlu Game.ComponentPlayer::'<ComponentFlu>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentPlayer::set_ComponentFlu

  .method public hidebysig specialname instance class [Survivalcraft]Game.ComponentGui 
          get_ComponentGui() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [Survivalcraft]Game.ComponentGui Game.ComponentPlayer::'<ComponentGui>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentPlayer::get_ComponentGui

  .method private hidebysig specialname instance void 
          set_ComponentGui(class [Survivalcraft]Game.ComponentGui 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class [Survivalcraft]Game.ComponentGui Game.ComponentPlayer::'<ComponentGui>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentPlayer::set_ComponentGui

  .method public hidebysig specialname instance class [Survivalcraft]Game.ComponentInput 
          get_ComponentInput() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [Survivalcraft]Game.ComponentInput Game.ComponentPlayer::'<ComponentInput>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentPlayer::get_ComponentInput

  .method private hidebysig specialname instance void 
          set_ComponentInput(class [Survivalcraft]Game.ComponentInput 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class [Survivalcraft]Game.ComponentInput Game.ComponentPlayer::'<ComponentInput>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentPlayer::set_ComponentInput

  .method public hidebysig specialname instance class [Survivalcraft]Game.ComponentLevel 
          get_ComponentLevel() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [Survivalcraft]Game.ComponentLevel Game.ComponentPlayer::'<ComponentLevel>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentPlayer::get_ComponentLevel

  .method private hidebysig specialname instance void 
          set_ComponentLevel(class [Survivalcraft]Game.ComponentLevel 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class [Survivalcraft]Game.ComponentLevel Game.ComponentPlayer::'<ComponentLevel>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentPlayer::set_ComponentLevel

  .method public hidebysig specialname instance class [Survivalcraft]Game.ComponentMiner 
          get_ComponentMiner() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [Survivalcraft]Game.ComponentMiner Game.ComponentPlayer::'<ComponentMiner>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentPlayer::get_ComponentMiner

  .method private hidebysig specialname instance void 
          set_ComponentMiner(class [Survivalcraft]Game.ComponentMiner 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class [Survivalcraft]Game.ComponentMiner Game.ComponentPlayer::'<ComponentMiner>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentPlayer::set_ComponentMiner

  .method public hidebysig specialname instance class [Survivalcraft]Game.ComponentOuterClothingModel 
          get_ComponentOuterClothingModel() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [Survivalcraft]Game.ComponentOuterClothingModel Game.ComponentPlayer::'<ComponentOuterClothingModel>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentPlayer::get_ComponentOuterClothingModel

  .method private hidebysig specialname instance void 
          set_ComponentOuterClothingModel(class [Survivalcraft]Game.ComponentOuterClothingModel 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class [Survivalcraft]Game.ComponentOuterClothingModel Game.ComponentPlayer::'<ComponentOuterClothingModel>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentPlayer::set_ComponentOuterClothingModel

  .method public hidebysig specialname instance class [Survivalcraft]Game.ComponentRider 
          get_ComponentRider() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [Survivalcraft]Game.ComponentRider Game.ComponentPlayer::'<ComponentRider>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentPlayer::get_ComponentRider

  .method private hidebysig specialname instance void 
          set_ComponentRider(class [Survivalcraft]Game.ComponentRider 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class [Survivalcraft]Game.ComponentRider Game.ComponentPlayer::'<ComponentRider>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentPlayer::set_ComponentRider

  .method public hidebysig specialname instance class [Survivalcraft]Game.ComponentScreenOverlays 
          get_ComponentScreenOverlays() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [Survivalcraft]Game.ComponentScreenOverlays Game.ComponentPlayer::'<ComponentScreenOverlays>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentPlayer::get_ComponentScreenOverlays

  .method private hidebysig specialname instance void 
          set_ComponentScreenOverlays(class [Survivalcraft]Game.ComponentScreenOverlays 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class [Survivalcraft]Game.ComponentScreenOverlays Game.ComponentPlayer::'<ComponentScreenOverlays>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentPlayer::set_ComponentScreenOverlays

  .method public hidebysig specialname instance class [Survivalcraft]Game.ComponentSickness 
          get_ComponentSickness() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [Survivalcraft]Game.ComponentSickness Game.ComponentPlayer::'<ComponentSickness>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentPlayer::get_ComponentSickness

  .method private hidebysig specialname instance void 
          set_ComponentSickness(class [Survivalcraft]Game.ComponentSickness 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class [Survivalcraft]Game.ComponentSickness Game.ComponentPlayer::'<ComponentSickness>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentPlayer::set_ComponentSickness

  .method public hidebysig specialname instance class [Survivalcraft]Game.ComponentSleep 
          get_ComponentSleep() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [Survivalcraft]Game.ComponentSleep Game.ComponentPlayer::'<ComponentSleep>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentPlayer::get_ComponentSleep

  .method private hidebysig specialname instance void 
          set_ComponentSleep(class [Survivalcraft]Game.ComponentSleep 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class [Survivalcraft]Game.ComponentSleep Game.ComponentPlayer::'<ComponentSleep>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentPlayer::set_ComponentSleep

  .method public hidebysig specialname instance class [Survivalcraft]Game.ComponentVitalStats 
          get_ComponentVitalStats() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [Survivalcraft]Game.ComponentVitalStats Game.ComponentPlayer::'<ComponentVitalStats>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentPlayer::get_ComponentVitalStats

  .method private hidebysig specialname instance void 
          set_ComponentVitalStats(class [Survivalcraft]Game.ComponentVitalStats 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class [Survivalcraft]Game.ComponentVitalStats Game.ComponentPlayer::'<ComponentVitalStats>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentPlayer::set_ComponentVitalStats

  .method public hidebysig specialname instance valuetype [System.Runtime]System.Nullable`1<valuetype [Survivalcraft]Game.TerrainRaycastResult> 
          get_HighlightRaycastResult() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Survivalcraft]Game.TerrainRaycastResult> Game.ComponentPlayer::'<HighlightRaycastResult>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentPlayer::get_HighlightRaycastResult

  .method private hidebysig specialname instance void 
          set_HighlightRaycastResult(valuetype [System.Runtime]System.Nullable`1<valuetype [Survivalcraft]Game.TerrainRaycastResult> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Survivalcraft]Game.TerrainRaycastResult> Game.ComponentPlayer::'<HighlightRaycastResult>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentPlayer::set_HighlightRaycastResult

  .method public hidebysig specialname instance class [Survivalcraft]Game.PlayerData 
          get_PlayerData() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [Survivalcraft]Game.PlayerData Game.ComponentPlayer::'<PlayerData>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentPlayer::get_PlayerData

  .method private hidebysig specialname instance void 
          set_PlayerData(class [Survivalcraft]Game.PlayerData 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class [Survivalcraft]Game.PlayerData Game.ComponentPlayer::'<PlayerData>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentPlayer::set_PlayerData

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method ComponentPlayer::get_UpdateOrder

  .method public hidebysig specialname instance class [Survivalcraft]Game.View 
          get_View() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance class [Survivalcraft]Game.PlayerData Game.ComponentPlayer::get_PlayerData()
    IL_0006:  callvirt   instance class [Survivalcraft]Game.View [Survivalcraft]Game.PlayerData::get_View()
    IL_000b:  ret
  } // end of method ComponentPlayer::get_View

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [Survivalcraft]Game.ComponentCreature::.ctor()
    IL_0006:  ret
  } // end of method ComponentPlayer::.ctor

  .property instance class [Survivalcraft]Game.ComponentClothing
          ComponentClothing()
  {
    .get instance class [Survivalcraft]Game.ComponentClothing Game.ComponentPlayer::get_ComponentClothing()
    .set instance void Game.ComponentPlayer::set_ComponentClothing(class [Survivalcraft]Game.ComponentClothing)
  } // end of property ComponentPlayer::ComponentClothing
  .property instance class [Survivalcraft]Game.ComponentFlu
          ComponentFlu()
  {
    .get instance class [Survivalcraft]Game.ComponentFlu Game.ComponentPlayer::get_ComponentFlu()
    .set instance void Game.ComponentPlayer::set_ComponentFlu(class [Survivalcraft]Game.ComponentFlu)
  } // end of property ComponentPlayer::ComponentFlu
  .property instance class [Survivalcraft]Game.ComponentGui
          ComponentGui()
  {
    .get instance class [Survivalcraft]Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    .set instance void Game.ComponentPlayer::set_ComponentGui(class [Survivalcraft]Game.ComponentGui)
  } // end of property ComponentPlayer::ComponentGui
  .property instance class [Survivalcraft]Game.ComponentInput
          ComponentInput()
  {
    .get instance class [Survivalcraft]Game.ComponentInput Game.ComponentPlayer::get_ComponentInput()
    .set instance void Game.ComponentPlayer::set_ComponentInput(class [Survivalcraft]Game.ComponentInput)
  } // end of property ComponentPlayer::ComponentInput
  .property instance class [Survivalcraft]Game.ComponentLevel
          ComponentLevel()
  {
    .get instance class [Survivalcraft]Game.ComponentLevel Game.ComponentPlayer::get_ComponentLevel()
    .set instance void Game.ComponentPlayer::set_ComponentLevel(class [Survivalcraft]Game.ComponentLevel)
  } // end of property ComponentPlayer::ComponentLevel
  .property instance class [Survivalcraft]Game.ComponentMiner
          ComponentMiner()
  {
    .get instance class [Survivalcraft]Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    .set instance void Game.ComponentPlayer::set_ComponentMiner(class [Survivalcraft]Game.ComponentMiner)
  } // end of property ComponentPlayer::ComponentMiner
  .property instance class [Survivalcraft]Game.ComponentOuterClothingModel
          ComponentOuterClothingModel()
  {
    .get instance class [Survivalcraft]Game.ComponentOuterClothingModel Game.ComponentPlayer::get_ComponentOuterClothingModel()
    .set instance void Game.ComponentPlayer::set_ComponentOuterClothingModel(class [Survivalcraft]Game.ComponentOuterClothingModel)
  } // end of property ComponentPlayer::ComponentOuterClothingModel
  .property instance class [Survivalcraft]Game.ComponentRider
          ComponentRider()
  {
    .get instance class [Survivalcraft]Game.ComponentRider Game.ComponentPlayer::get_ComponentRider()
    .set instance void Game.ComponentPlayer::set_ComponentRider(class [Survivalcraft]Game.ComponentRider)
  } // end of property ComponentPlayer::ComponentRider
  .property instance class [Survivalcraft]Game.ComponentScreenOverlays
          ComponentScreenOverlays()
  {
    .get instance class [Survivalcraft]Game.ComponentScreenOverlays Game.ComponentPlayer::get_ComponentScreenOverlays()
    .set instance void Game.ComponentPlayer::set_ComponentScreenOverlays(class [Survivalcraft]Game.ComponentScreenOverlays)
  } // end of property ComponentPlayer::ComponentScreenOverlays
  .property instance class [Survivalcraft]Game.ComponentSickness
          ComponentSickness()
  {
    .get instance class [Survivalcraft]Game.ComponentSickness Game.ComponentPlayer::get_ComponentSickness()
    .set instance void Game.ComponentPlayer::set_ComponentSickness(class [Survivalcraft]Game.ComponentSickness)
  } // end of property ComponentPlayer::ComponentSickness
  .property instance class [Survivalcraft]Game.ComponentSleep
          ComponentSleep()
  {
    .get instance class [Survivalcraft]Game.ComponentSleep Game.ComponentPlayer::get_ComponentSleep()
    .set instance void Game.ComponentPlayer::set_ComponentSleep(class [Survivalcraft]Game.ComponentSleep)
  } // end of property ComponentPlayer::ComponentSleep
  .property instance class [Survivalcraft]Game.ComponentVitalStats
          ComponentVitalStats()
  {
    .get instance class [Survivalcraft]Game.ComponentVitalStats Game.ComponentPlayer::get_ComponentVitalStats()
    .set instance void Game.ComponentPlayer::set_ComponentVitalStats(class [Survivalcraft]Game.ComponentVitalStats)
  } // end of property ComponentPlayer::ComponentVitalStats
  .property instance valuetype [System.Runtime]System.Nullable`1<valuetype [Survivalcraft]Game.TerrainRaycastResult>
          HighlightRaycastResult()
  {
    .get instance valuetype [System.Runtime]System.Nullable`1<valuetype [Survivalcraft]Game.TerrainRaycastResult> Game.ComponentPlayer::get_HighlightRaycastResult()
    .set instance void Game.ComponentPlayer::set_HighlightRaycastResult(valuetype [System.Runtime]System.Nullable`1<valuetype [Survivalcraft]Game.TerrainRaycastResult>)
  } // end of property ComponentPlayer::HighlightRaycastResult
  .property instance class [Survivalcraft]Game.PlayerData
          PlayerData()
  {
    .get instance class [Survivalcraft]Game.PlayerData Game.ComponentPlayer::get_PlayerData()
    .set instance void Game.ComponentPlayer::set_PlayerData(class [Survivalcraft]Game.PlayerData)
  } // end of property ComponentPlayer::PlayerData
  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.ComponentPlayer::get_UpdateOrder()
  } // end of property ComponentPlayer::UpdateOrder
  .property instance class [Survivalcraft]Game.View
          View()
  {
    .get instance class [Survivalcraft]Game.View Game.ComponentPlayer::get_View()
  } // end of property ComponentPlayer::View
} // end of class Game.ComponentPlayer
