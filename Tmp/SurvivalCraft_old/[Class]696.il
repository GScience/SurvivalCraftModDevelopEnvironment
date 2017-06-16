.class public auto ansi beforefieldinit Game.SubsystemGui
       extends [EntitySystem]GameEntitySystem.Subsystem
       implements Game.IUpdateable,
                  Game.IDrawable
{
  .class auto ansi nested private beforefieldinit Message
         extends [System.Runtime]System.Object
  {
    .field public string LargeText
    .field public string SmallText
    .field public float64 StartTime
    .field public float32 Duration
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method Message::.ctor

  } // end of class Message

  .class sequential ansi sealed nested private beforefieldinit AimingSights
         extends [System.Runtime]System.ValueType
  {
    .field public bool IsVisible
    .field public valuetype [Engine]Engine.Vector3 Position
    .field public valuetype [Engine]Engine.Vector3 Direction
  } // end of class AimingSights

  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.SubsystemGui/'<>c' '<>9'
    .field public static class [System.Runtime]System.Action '<>9__87_0'
    .field public static class [System.Runtime]System.Action '<>9__87_2'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.SubsystemGui/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.SubsystemGui/'<>c' Game.SubsystemGui/'<>c'::'<>9'
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

    .method assembly hidebysig instance void 
            '<Update>b__87_0'() cil managed
    {
      // 代码大小       17 (0x11)
      .maxstack  8
      IL_0000:  ldstr      "Help"
      IL_0005:  ldc.i4.0
      IL_0006:  newarr     [System.Runtime]System.Object
      IL_000b:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                  object[])
      IL_0010:  ret
    } // end of method '<>c'::'<Update>b__87_0'

    .method assembly hidebysig instance void 
            '<Update>b__87_2'() cil managed
    {
      // 代码大小       17 (0x11)
      .maxstack  8
      IL_0000:  ldstr      "GameMenu"
      IL_0005:  ldc.i4.0
      IL_0006:  newarr     [System.Runtime]System.Object
      IL_000b:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                  object[])
      IL_0010:  ret
    } // end of method '<>c'::'<Update>b__87_2'

  } // end of class '<>c'

  .field private class Game.SubsystemGameInfo m_subsystemGameInfo
  .field private class Game.SubsystemAudio m_subsystemAudio
  .field private class Game.SubsystemTimeOfDay m_subsystemTimeOfDay
  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.SubsystemCamera m_subsystemCamera
  .field private class Game.SubsystemPlayer m_subsystemPlayer
  .field private class Game.SubsystemInput m_subsystemInput
  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.SubsystemBlockBehaviors m_subsystemBlockBehaviors
  .field private class Game.ContainerWidget m_controlsContainerWidget
  .field private class Game.ContainerWidget m_leftControlsContainerWidget
  .field private class Game.ContainerWidget m_rightControlsContainerWidget
  .field private class Game.ContainerWidget m_moveContainerWidget
  .field private class Game.ContainerWidget m_lookContainerWidget
  .field private class Game.RectangleWidget m_moveRectangleWidget
  .field private class Game.RectangleWidget m_lookRectangleWidget
  .field private class Game.ContainerWidget m_moveRectangleContainerWidget
  .field private class Game.ContainerWidget m_lookRectangleContainerWidget
  .field private class Game.ContainerWidget m_movePadContainerWidget
  .field private class Game.ContainerWidget m_lookPadContainerWidget
  .field private class Game.ContainerWidget m_moveButtonsContainerWidget
  .field private class Game.ContainerWidget m_modalPanelContainerWidget
  .field private class Game.ShortInventoryWidget m_shortInventoryWidget
  .field private class Game.ContainerWidget m_largeMessageWidget
  .field private class Game.MessageWidget m_messageWidget
  .field private class Game.ButtonWidget m_backButtonWidget
  .field private class Game.ButtonWidget m_inventoryButtonWidget
  .field private class Game.ButtonWidget m_clothingButtonWidget
  .field private class Game.ButtonWidget m_moreButtonWidget
  .field private class Game.Widget m_moreContentsWidget
  .field private class Game.ButtonWidget m_lightningButtonWidget
  .field private class Game.ButtonWidget m_photoButtonWidget
  .field private class Game.ButtonWidget m_helpButtonWidget
  .field private class Game.ButtonWidget m_timeOfDayButtonWidget
  .field private class Game.ButtonWidget m_cameraButtonWidget
  .field private class Game.ButtonWidget m_creativeFlyButtonWidget
  .field private class Game.ButtonWidget m_sneakButtonWidget
  .field private class Game.ButtonWidget m_mountButtonWidget
  .field private class Game.ButtonWidget m_editItemButton
  .field private class Game.SubsystemGui/Message m_message
  .field private valuetype Game.SubsystemGui/AimingSights m_aimingSights
  .field private class Game.KeyboardHelpDialog m_keyboardHelpDialog
  .field private float64 m_lastMountableCreatureSearchTime
  .field private valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3> m_nearbyEditableCell
  .field private bool m_keyboardHelpMessageShown
  .field public initonly class [Engine]Engine.Graphics.PrimitivesRenderer2D PrimitivesRenderer2D
  .field public initonly class [Engine]Engine.Graphics.PrimitivesRenderer3D PrimitivesRenderer3D
  .field private class Game.TouchInputWidget '<ViewWidget>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class Game.TouchInputWidget '<MoveWidget>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class Game.MoveRoseWidget '<MoveRoseWidget>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class Game.TouchInputWidget '<LookWidget>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class Game.ValueBarWidget '<HealthBarWidget>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class Game.ValueBarWidget '<TemperatureBarWidget>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class Game.ValueBarWidget '<FoodBarWidget>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static int32[] m_drawOrders
  .method public hidebysig specialname instance class Game.ContainerWidget 
          get_ControlsContainerWidget() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ContainerWidget Game.SubsystemGui::m_controlsContainerWidget
    IL_0006:  ret
  } // end of method SubsystemGui::get_ControlsContainerWidget

  .method public hidebysig specialname instance class Game.TouchInputWidget 
          get_ViewWidget() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.TouchInputWidget Game.SubsystemGui::'<ViewWidget>k__BackingField'
    IL_0006:  ret
  } // end of method SubsystemGui::get_ViewWidget

  .method private hidebysig specialname instance void 
          set_ViewWidget(class Game.TouchInputWidget 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.TouchInputWidget Game.SubsystemGui::'<ViewWidget>k__BackingField'
    IL_0007:  ret
  } // end of method SubsystemGui::set_ViewWidget

  .method public hidebysig specialname instance class Game.TouchInputWidget 
          get_MoveWidget() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.TouchInputWidget Game.SubsystemGui::'<MoveWidget>k__BackingField'
    IL_0006:  ret
  } // end of method SubsystemGui::get_MoveWidget

  .method private hidebysig specialname instance void 
          set_MoveWidget(class Game.TouchInputWidget 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.TouchInputWidget Game.SubsystemGui::'<MoveWidget>k__BackingField'
    IL_0007:  ret
  } // end of method SubsystemGui::set_MoveWidget

  .method public hidebysig specialname instance class Game.MoveRoseWidget 
          get_MoveRoseWidget() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.MoveRoseWidget Game.SubsystemGui::'<MoveRoseWidget>k__BackingField'
    IL_0006:  ret
  } // end of method SubsystemGui::get_MoveRoseWidget

  .method private hidebysig specialname instance void 
          set_MoveRoseWidget(class Game.MoveRoseWidget 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.MoveRoseWidget Game.SubsystemGui::'<MoveRoseWidget>k__BackingField'
    IL_0007:  ret
  } // end of method SubsystemGui::set_MoveRoseWidget

  .method public hidebysig specialname instance class Game.TouchInputWidget 
          get_LookWidget() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.TouchInputWidget Game.SubsystemGui::'<LookWidget>k__BackingField'
    IL_0006:  ret
  } // end of method SubsystemGui::get_LookWidget

  .method private hidebysig specialname instance void 
          set_LookWidget(class Game.TouchInputWidget 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.TouchInputWidget Game.SubsystemGui::'<LookWidget>k__BackingField'
    IL_0007:  ret
  } // end of method SubsystemGui::set_LookWidget

  .method public hidebysig specialname instance class Game.ValueBarWidget 
          get_HealthBarWidget() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ValueBarWidget Game.SubsystemGui::'<HealthBarWidget>k__BackingField'
    IL_0006:  ret
  } // end of method SubsystemGui::get_HealthBarWidget

  .method private hidebysig specialname instance void 
          set_HealthBarWidget(class Game.ValueBarWidget 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.ValueBarWidget Game.SubsystemGui::'<HealthBarWidget>k__BackingField'
    IL_0007:  ret
  } // end of method SubsystemGui::set_HealthBarWidget

  .method public hidebysig specialname instance class Game.ValueBarWidget 
          get_TemperatureBarWidget() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ValueBarWidget Game.SubsystemGui::'<TemperatureBarWidget>k__BackingField'
    IL_0006:  ret
  } // end of method SubsystemGui::get_TemperatureBarWidget

  .method private hidebysig specialname instance void 
          set_TemperatureBarWidget(class Game.ValueBarWidget 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.ValueBarWidget Game.SubsystemGui::'<TemperatureBarWidget>k__BackingField'
    IL_0007:  ret
  } // end of method SubsystemGui::set_TemperatureBarWidget

  .method public hidebysig specialname instance class Game.ValueBarWidget 
          get_FoodBarWidget() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ValueBarWidget Game.SubsystemGui::'<FoodBarWidget>k__BackingField'
    IL_0006:  ret
  } // end of method SubsystemGui::get_FoodBarWidget

  .method private hidebysig specialname instance void 
          set_FoodBarWidget(class Game.ValueBarWidget 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.ValueBarWidget Game.SubsystemGui::'<FoodBarWidget>k__BackingField'
    IL_0007:  ret
  } // end of method SubsystemGui::set_FoodBarWidget

  .method public hidebysig instance void 
          DisplayLargeMessage(string largeText,
                              string smallText,
                              float32 duration,
                              float32 delay) cil managed
  {
    // 代码大小       48 (0x30)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.SubsystemGui/Message::.ctor()
    IL_0006:  dup
    IL_0007:  ldarg.1
    IL_0008:  stfld      string Game.SubsystemGui/Message::LargeText
    IL_000d:  dup
    IL_000e:  ldarg.2
    IL_000f:  stfld      string Game.SubsystemGui/Message::SmallText
    IL_0014:  dup
    IL_0015:  ldarg.3
    IL_0016:  stfld      float32 Game.SubsystemGui/Message::Duration
    IL_001b:  dup
    IL_001c:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_0021:  ldarg.s    delay
    IL_0023:  conv.r8
    IL_0024:  add
    IL_0025:  stfld      float64 Game.SubsystemGui/Message::StartTime
    IL_002a:  stfld      class Game.SubsystemGui/Message Game.SubsystemGui::m_message
    IL_002f:  ret
  } // end of method SubsystemGui::DisplayLargeMessage

  .method public hidebysig instance void 
          DisplaySmallMessage(string text,
                              bool blinking,
                              bool playNotificationSound) cil managed
  {
    // 代码大小       53 (0x35)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.MessageWidget Game.SubsystemGui::m_messageWidget
    IL_0006:  ldarg.1
    IL_0007:  ldarg.2
    IL_0008:  callvirt   instance void Game.MessageWidget::DisplayMessage(string,
                                                                          bool)
    IL_000d:  ldarg.3
    IL_000e:  brfalse.s  IL_0034

    IL_0010:  ldarg.0
    IL_0011:  ldfld      class Game.SubsystemAudio Game.SubsystemGui::m_subsystemAudio
    IL_0016:  ldstr      "Audio/UI/Message"
    IL_001b:  ldc.r4     1.
    IL_0020:  ldc.r4     0.0
    IL_0025:  ldc.r4     0.0
    IL_002a:  ldc.r4     0.0
    IL_002f:  callvirt   instance void Game.SubsystemAudio::PlaySound(string,
                                                                      float32,
                                                                      float32,
                                                                      float32,
                                                                      float32)
    IL_0034:  ret
  } // end of method SubsystemGui::DisplaySmallMessage

  .method public hidebysig instance void 
          ShowAimingSights(valuetype [Engine]Engine.Vector3 position,
                           valuetype [Engine]Engine.Vector3 direction) cil managed
  {
    // 代码大小       37 (0x25)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldflda     valuetype Game.SubsystemGui/AimingSights Game.SubsystemGui::m_aimingSights
    IL_0006:  ldc.i4.1
    IL_0007:  stfld      bool Game.SubsystemGui/AimingSights::IsVisible
    IL_000c:  ldarg.0
    IL_000d:  ldflda     valuetype Game.SubsystemGui/AimingSights Game.SubsystemGui::m_aimingSights
    IL_0012:  ldarg.1
    IL_0013:  stfld      valuetype [Engine]Engine.Vector3 Game.SubsystemGui/AimingSights::Position
    IL_0018:  ldarg.0
    IL_0019:  ldflda     valuetype Game.SubsystemGui/AimingSights Game.SubsystemGui::m_aimingSights
    IL_001e:  ldarg.2
    IL_001f:  stfld      valuetype [Engine]Engine.Vector3 Game.SubsystemGui/AimingSights::Direction
    IL_0024:  ret
  } // end of method SubsystemGui::ShowAimingSights

  .method public hidebysig specialname instance class Game.Widget 
          get_ModalPanelWidget() cil managed
  {
    // 代码大小       17 (0x11)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ContainerWidget Game.SubsystemGui::m_modalPanelContainerWidget
    IL_0006:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_000b:  call       !!0 [System.Linq]System.Linq.Enumerable::FirstOrDefault<class Game.Widget>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_0010:  ret
  } // end of method SubsystemGui::get_ModalPanelWidget

  .method public hidebysig specialname instance void 
          set_ModalPanelWidget(class Game.Widget 'value') cil managed
  {
    // 代码大小       106 (0x6a)
    .maxstack  3
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  call       instance class Game.Widget Game.SubsystemGui::get_ModalPanelWidget()
    IL_0007:  beq.s      IL_0069

    IL_0009:  br.s       IL_002b

    IL_000b:  ldarg.0
    IL_000c:  ldfld      class Game.ContainerWidget Game.SubsystemGui::m_modalPanelContainerWidget
    IL_0011:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0016:  ldarg.0
    IL_0017:  ldfld      class Game.ContainerWidget Game.SubsystemGui::m_modalPanelContainerWidget
    IL_001c:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0021:  call       !!0 [System.Linq]System.Linq.Enumerable::FirstOrDefault<class Game.Widget>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_0026:  callvirt   instance void Game.WidgetsContainer::Remove(class Game.Widget)
    IL_002b:  ldarg.0
    IL_002c:  ldfld      class Game.ContainerWidget Game.SubsystemGui::m_modalPanelContainerWidget
    IL_0031:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0036:  call       !!0 [System.Linq]System.Linq.Enumerable::FirstOrDefault<class Game.Widget>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_003b:  brtrue.s   IL_000b

    IL_003d:  ldarg.1
    IL_003e:  brfalse.s  IL_0051

    IL_0040:  ldarg.0
    IL_0041:  ldfld      class Game.ContainerWidget Game.SubsystemGui::m_modalPanelContainerWidget
    IL_0046:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_004b:  ldarg.1
    IL_004c:  callvirt   instance void Game.WidgetsContainer::Add(class Game.Widget)
    IL_0051:  call       void Game.InputManager::Clear()
    IL_0056:  ldarg.0
    IL_0057:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_005c:  ldc.i4.1
    IL_005d:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemInventory>(bool)
    IL_0062:  ldnull
    IL_0063:  ldc.i4.0
    IL_0064:  callvirt   instance void Game.SubsystemInventory::SetSplitSourceInventoryAndSlot(class Game.IInventory,
                                                                                               int32)
    IL_0069:  ret
  } // end of method SubsystemGui::set_ModalPanelWidget

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method SubsystemGui::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       3505 (0xdb1)
    .maxstack  6
    .locals init (valuetype Game.PlayerInput V_0,
             class Game.ComponentPlayer V_1,
             class Game.ComponentRider V_2,
             class Game.ComponentSleep V_3,
             bool V_4,
             class Game.WorldInfo V_5,
             valuetype Game.GameMode V_6,
             bool V_7,
             bool V_8,
             bool V_9,
             float64 V_10,
             class Game.LabelWidget V_11,
             float32 V_12,
             bool V_13,
             bool V_14,
             class Game.ComponentMount V_15,
             int32 V_16,
             int32 V_17,
             class Game.SubsystemBlockBehavior[] V_18,
             int32 V_19,
             class Game.IInventory V_20,
             int32 V_21,
             int32 V_22,
             bool V_23,
             float32 V_24,
             float32 V_25,
             float32 V_26,
             float32 V_27,
             float32 V_28,
             float32 V_29,
             float32 V_30,
             float32 V_31)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemInput Game.SubsystemGui::m_subsystemInput
    IL_0006:  callvirt   instance valuetype Game.PlayerInput Game.SubsystemInput::get_PlayerInput()
    IL_000b:  stloc.0
    IL_000c:  ldarg.0
    IL_000d:  ldfld      class Game.SubsystemPlayer Game.SubsystemGui::m_subsystemPlayer
    IL_0012:  callvirt   instance class Game.ComponentPlayer Game.SubsystemPlayer::get_ComponentPlayer()
    IL_0017:  stloc.1
    IL_0018:  ldloc.1
    IL_0019:  brtrue.s   IL_001e

    IL_001b:  ldnull
    IL_001c:  br.s       IL_0024

    IL_001e:  ldloc.1
    IL_001f:  callvirt   instance class Game.ComponentRider Game.ComponentPlayer::get_ComponentRider()
    IL_0024:  stloc.2
    IL_0025:  ldloc.1
    IL_0026:  brtrue.s   IL_002b

    IL_0028:  ldnull
    IL_0029:  br.s       IL_0031

    IL_002b:  ldloc.1
    IL_002c:  callvirt   instance class Game.ComponentSleep Game.ComponentPlayer::get_ComponentSleep()
    IL_0031:  stloc.3
    IL_0032:  ldloc.1
    IL_0033:  brfalse.s  IL_006d

    IL_0035:  ldloc.1
    IL_0036:  callvirt   instance bool [EntitySystem]GameEntitySystem.Component::get_IsAddedToProject()
    IL_003b:  brfalse.s  IL_006d

    IL_003d:  ldloc.1
    IL_003e:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_0043:  callvirt   instance float32 Game.ComponentHealth::get_Health()
    IL_0048:  ldc.r4     0.0
    IL_004d:  beq.s      IL_006d

    IL_004f:  ldloc.3
    IL_0050:  brfalse.s  IL_005a

    IL_0052:  ldloc.3
    IL_0053:  callvirt   instance bool Game.ComponentSleep::get_IsSleeping()
    IL_0058:  brtrue.s   IL_006d

    IL_005a:  ldarg.0
    IL_005b:  ldfld      class Game.SubsystemCamera Game.SubsystemGui::m_subsystemCamera
    IL_0060:  ldloc.1
    IL_0061:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0066:  callvirt   instance bool Game.SubsystemCamera::IsEntityControlEnabled(class [EntitySystem]GameEntitySystem.Entity)
    IL_006b:  brtrue.s   IL_0074

    IL_006d:  ldarg.0
    IL_006e:  ldnull
    IL_006f:  call       instance void Game.SubsystemGui::set_ModalPanelWidget(class Game.Widget)
    IL_0074:  ldarg.0
    IL_0075:  ldfld      class Game.SubsystemGui/Message Game.SubsystemGui::m_message
    IL_007a:  brfalse    IL_01b3

    IL_007f:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_0084:  stloc.s    V_10
    IL_0086:  ldarg.0
    IL_0087:  ldfld      class Game.ContainerWidget Game.SubsystemGui::m_largeMessageWidget
    IL_008c:  ldc.i4.1
    IL_008d:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0092:  ldarg.0
    IL_0093:  ldfld      class Game.ContainerWidget Game.SubsystemGui::m_largeMessageWidget
    IL_0098:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_009d:  ldstr      "LargeLabel"
    IL_00a2:  ldc.i4.1
    IL_00a3:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_00a8:  stloc.s    V_11
    IL_00aa:  ldarg.0
    IL_00ab:  ldfld      class Game.ContainerWidget Game.SubsystemGui::m_largeMessageWidget
    IL_00b0:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00b5:  ldstr      "SmallLabel"
    IL_00ba:  ldc.i4.1
    IL_00bb:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_00c0:  ldloc.s    V_11
    IL_00c2:  ldarg.0
    IL_00c3:  ldfld      class Game.SubsystemGui/Message Game.SubsystemGui::m_message
    IL_00c8:  ldfld      string Game.SubsystemGui/Message::LargeText
    IL_00cd:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_00d2:  dup
    IL_00d3:  ldarg.0
    IL_00d4:  ldfld      class Game.SubsystemGui/Message Game.SubsystemGui::m_message
    IL_00d9:  ldfld      string Game.SubsystemGui/Message::SmallText
    IL_00de:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_00e3:  ldloc.s    V_11
    IL_00e5:  ldarg.0
    IL_00e6:  ldfld      class Game.SubsystemGui/Message Game.SubsystemGui::m_message
    IL_00eb:  ldfld      string Game.SubsystemGui/Message::LargeText
    IL_00f0:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_00f5:  ldc.i4.0
    IL_00f6:  ceq
    IL_00f8:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_00fd:  dup
    IL_00fe:  ldarg.0
    IL_00ff:  ldfld      class Game.SubsystemGui/Message Game.SubsystemGui::m_message
    IL_0104:  ldfld      string Game.SubsystemGui/Message::SmallText
    IL_0109:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_010e:  ldc.i4.0
    IL_010f:  ceq
    IL_0111:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0116:  ldc.r8     2.
    IL_011f:  ldloc.s    V_10
    IL_0121:  ldarg.0
    IL_0122:  ldfld      class Game.SubsystemGui/Message Game.SubsystemGui::m_message
    IL_0127:  ldfld      float64 Game.SubsystemGui/Message::StartTime
    IL_012c:  sub
    IL_012d:  mul
    IL_012e:  call       float64 [Engine]Engine.MathUtils::Saturate(float64)
    IL_0133:  ldc.r8     2.
    IL_013c:  ldarg.0
    IL_013d:  ldfld      class Game.SubsystemGui/Message Game.SubsystemGui::m_message
    IL_0142:  ldfld      float64 Game.SubsystemGui/Message::StartTime
    IL_0147:  ldarg.0
    IL_0148:  ldfld      class Game.SubsystemGui/Message Game.SubsystemGui::m_message
    IL_014d:  ldfld      float32 Game.SubsystemGui/Message::Duration
    IL_0152:  conv.r8
    IL_0153:  add
    IL_0154:  ldloc.s    V_10
    IL_0156:  sub
    IL_0157:  mul
    IL_0158:  call       float64 [Engine]Engine.MathUtils::Saturate(float64)
    IL_015d:  call       float64 [Engine]Engine.MathUtils::Min(float64,
                                                               float64)
    IL_0162:  conv.r4
    IL_0163:  stloc.s    V_12
    IL_0165:  ldloc.s    V_11
    IL_0167:  ldloc.s    V_12
    IL_0169:  ldloc.s    V_12
    IL_016b:  ldloc.s    V_12
    IL_016d:  ldloc.s    V_12
    IL_016f:  newobj     instance void [Engine]Engine.Color::.ctor(float32,
                                                                   float32,
                                                                   float32,
                                                                   float32)
    IL_0174:  callvirt   instance void Game.LabelWidget::set_Color(valuetype [Engine]Engine.Color)
    IL_0179:  ldloc.s    V_12
    IL_017b:  ldloc.s    V_12
    IL_017d:  ldloc.s    V_12
    IL_017f:  ldloc.s    V_12
    IL_0181:  newobj     instance void [Engine]Engine.Color::.ctor(float32,
                                                                   float32,
                                                                   float32,
                                                                   float32)
    IL_0186:  callvirt   instance void Game.LabelWidget::set_Color(valuetype [Engine]Engine.Color)
    IL_018b:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_0190:  ldarg.0
    IL_0191:  ldfld      class Game.SubsystemGui/Message Game.SubsystemGui::m_message
    IL_0196:  ldfld      float64 Game.SubsystemGui/Message::StartTime
    IL_019b:  ldarg.0
    IL_019c:  ldfld      class Game.SubsystemGui/Message Game.SubsystemGui::m_message
    IL_01a1:  ldfld      float32 Game.SubsystemGui/Message::Duration
    IL_01a6:  conv.r8
    IL_01a7:  add
    IL_01a8:  ble.un.s   IL_01bf

    IL_01aa:  ldarg.0
    IL_01ab:  ldnull
    IL_01ac:  stfld      class Game.SubsystemGui/Message Game.SubsystemGui::m_message
    IL_01b1:  br.s       IL_01bf

    IL_01b3:  ldarg.0
    IL_01b4:  ldfld      class Game.ContainerWidget Game.SubsystemGui::m_largeMessageWidget
    IL_01b9:  ldc.i4.0
    IL_01ba:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_01bf:  ldloc.1
    IL_01c0:  brfalse.s  IL_0217

    IL_01c2:  ldarg.0
    IL_01c3:  ldfld      class Game.SubsystemCamera Game.SubsystemGui::m_subsystemCamera
    IL_01c8:  ldloc.1
    IL_01c9:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_01ce:  callvirt   instance bool Game.SubsystemCamera::IsEntityControlEnabled(class [EntitySystem]GameEntitySystem.Entity)
    IL_01d3:  brfalse.s  IL_0217

    IL_01d5:  ldarg.0
    IL_01d6:  ldfld      bool Game.SubsystemGui::m_keyboardHelpMessageShown
    IL_01db:  brtrue.s   IL_0217

    IL_01dd:  ldarg.0
    IL_01de:  ldfld      class Game.SubsystemInput Game.SubsystemGui::m_subsystemInput
    IL_01e3:  callvirt   instance bool Game.SubsystemInput::get_IsControlledByMouse()
    IL_01e8:  brfalse.s  IL_0217

    IL_01ea:  ldc.r8     7.
    IL_01f3:  ldc.r8     0.0
    IL_01fc:  call       bool [Engine]Engine.Time::PeriodicEvent(float64,
                                                                 float64)
    IL_0201:  brfalse.s  IL_0217

    IL_0203:  ldarg.0
    IL_0204:  ldc.i4.1
    IL_0205:  stfld      bool Game.SubsystemGui::m_keyboardHelpMessageShown
    IL_020a:  ldarg.0
    IL_020b:  ldstr      "Press H for keyboard help"
    IL_0210:  ldc.i4.1
    IL_0211:  ldc.i4.1
    IL_0212:  call       instance void Game.SubsystemGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_0217:  ldc.i4.1
    IL_0218:  stloc.s    V_4
    IL_021a:  ldarg.0
    IL_021b:  ldfld      class Game.SubsystemCamera Game.SubsystemGui::m_subsystemCamera
    IL_0220:  callvirt   instance class Game.Camera Game.SubsystemCamera::get_ActiveCamera()
    IL_0225:  isinst     Game.IntroCamera
    IL_022a:  brfalse.s  IL_022f

    IL_022c:  ldc.i4.0
    IL_022d:  stloc.s    V_4
    IL_022f:  ldarg.0
    IL_0230:  ldfld      class Game.SubsystemCamera Game.SubsystemGui::m_subsystemCamera
    IL_0235:  callvirt   instance class Game.Camera Game.SubsystemCamera::get_ActiveCamera()
    IL_023a:  isinst     Game.DeathCamera
    IL_023f:  brfalse.s  IL_0244

    IL_0241:  ldc.i4.0
    IL_0242:  stloc.s    V_4
    IL_0244:  ldloc.3
    IL_0245:  brfalse.s  IL_0252

    IL_0247:  ldloc.3
    IL_0248:  callvirt   instance bool Game.ComponentSleep::get_IsSleeping()
    IL_024d:  brfalse.s  IL_0252

    IL_024f:  ldc.i4.0
    IL_0250:  stloc.s    V_4
    IL_0252:  ldarg.0
    IL_0253:  ldfld      class Game.ContainerWidget Game.SubsystemGui::m_controlsContainerWidget
    IL_0258:  ldloc.s    V_4
    IL_025a:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_025f:  ldarg.0
    IL_0260:  ldfld      class Game.ContainerWidget Game.SubsystemGui::m_leftControlsContainerWidget
    IL_0265:  ldarg.0
    IL_0266:  ldfld      class Game.SubsystemInput Game.SubsystemGui::m_subsystemInput
    IL_026b:  callvirt   instance bool Game.SubsystemInput::get_IsControlledByMouse()
    IL_0270:  brfalse.s  IL_027d

    IL_0272:  ldarg.0
    IL_0273:  call       instance class Game.Widget Game.SubsystemGui::get_ModalPanelWidget()
    IL_0278:  ldnull
    IL_0279:  cgt.un
    IL_027b:  br.s       IL_027e

    IL_027d:  ldc.i4.1
    IL_027e:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0283:  ldarg.0
    IL_0284:  ldfld      class Game.ContainerWidget Game.SubsystemGui::m_rightControlsContainerWidget
    IL_0289:  ldarg.0
    IL_028a:  ldfld      class Game.SubsystemInput Game.SubsystemGui::m_subsystemInput
    IL_028f:  callvirt   instance bool Game.SubsystemInput::get_IsControlledByMouse()
    IL_0294:  brfalse.s  IL_02a1

    IL_0296:  ldarg.0
    IL_0297:  call       instance class Game.Widget Game.SubsystemGui::get_ModalPanelWidget()
    IL_029c:  ldnull
    IL_029d:  cgt.un
    IL_029f:  br.s       IL_02a2

    IL_02a1:  ldc.i4.1
    IL_02a2:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_02a7:  ldarg.0
    IL_02a8:  ldfld      class Game.ContainerWidget Game.SubsystemGui::m_moveRectangleContainerWidget
    IL_02ad:  call       bool Game.SettingsManager::get_HideMoveLookPads()
    IL_02b2:  brtrue.s   IL_02c4

    IL_02b4:  ldarg.0
    IL_02b5:  ldfld      class Game.SubsystemInput Game.SubsystemGui::m_subsystemInput
    IL_02ba:  callvirt   instance bool Game.SubsystemInput::get_IsControlledByMouse()
    IL_02bf:  ldc.i4.0
    IL_02c0:  ceq
    IL_02c2:  br.s       IL_02c5

    IL_02c4:  ldc.i4.0
    IL_02c5:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_02ca:  ldarg.0
    IL_02cb:  ldfld      class Game.ContainerWidget Game.SubsystemGui::m_lookRectangleContainerWidget
    IL_02d0:  call       bool Game.SettingsManager::get_HideMoveLookPads()
    IL_02d5:  brtrue.s   IL_02fc

    IL_02d7:  ldarg.0
    IL_02d8:  ldfld      class Game.SubsystemInput Game.SubsystemGui::m_subsystemInput
    IL_02dd:  callvirt   instance bool Game.SubsystemInput::get_IsControlledByMouse()
    IL_02e2:  brtrue.s   IL_02fc

    IL_02e4:  call       valuetype Game.LookControlMode Game.SettingsManager::get_LookControlMode()
    IL_02e9:  ldc.i4.1
    IL_02ea:  bne.un.s   IL_02f9

    IL_02ec:  call       valuetype Game.MoveControlMode Game.SettingsManager::get_MoveControlMode()
    IL_02f1:  ldc.i4.1
    IL_02f2:  ceq
    IL_02f4:  ldc.i4.0
    IL_02f5:  ceq
    IL_02f7:  br.s       IL_02fd

    IL_02f9:  ldc.i4.1
    IL_02fa:  br.s       IL_02fd

    IL_02fc:  ldc.i4.0
    IL_02fd:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0302:  ldarg.0
    IL_0303:  ldfld      class Game.ContainerWidget Game.SubsystemGui::m_lookPadContainerWidget
    IL_0308:  call       valuetype Game.LookControlMode Game.SettingsManager::get_LookControlMode()
    IL_030d:  ldc.i4.2
    IL_030e:  ceq
    IL_0310:  ldc.i4.0
    IL_0311:  ceq
    IL_0313:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0318:  ldarg.0
    IL_0319:  call       instance class Game.MoveRoseWidget Game.SubsystemGui::get_MoveRoseWidget()
    IL_031e:  ldarg.0
    IL_031f:  ldfld      class Game.SubsystemInput Game.SubsystemGui::m_subsystemInput
    IL_0324:  callvirt   instance bool Game.SubsystemInput::get_IsControlledByMouse()
    IL_0329:  ldc.i4.0
    IL_032a:  ceq
    IL_032c:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0331:  ldarg.0
    IL_0332:  ldfld      class Game.Widget Game.SubsystemGui::m_moreContentsWidget
    IL_0337:  ldarg.0
    IL_0338:  ldfld      class Game.ButtonWidget Game.SubsystemGui::m_moreButtonWidget
    IL_033d:  callvirt   instance bool Game.ButtonWidget::get_IsChecked()
    IL_0342:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0347:  ldarg.0
    IL_0348:  ldfld      class Game.ContainerWidget Game.SubsystemGui::m_moveButtonsContainerWidget
    IL_034d:  call       valuetype Game.MoveControlMode Game.SettingsManager::get_MoveControlMode()
    IL_0352:  ldc.i4.1
    IL_0353:  ceq
    IL_0355:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_035a:  ldarg.0
    IL_035b:  ldfld      class Game.ContainerWidget Game.SubsystemGui::m_movePadContainerWidget
    IL_0360:  call       valuetype Game.MoveControlMode Game.SettingsManager::get_MoveControlMode()
    IL_0365:  ldc.i4.0
    IL_0366:  ceq
    IL_0368:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_036d:  call       bool Game.SettingsManager::get_LeftHandedLayout()
    IL_0372:  brfalse.s  IL_03a6

    IL_0374:  ldarg.0
    IL_0375:  ldfld      class Game.ContainerWidget Game.SubsystemGui::m_moveContainerWidget
    IL_037a:  ldc.i4.2
    IL_037b:  callvirt   instance void Game.Widget::set_HorizontalAlignment(valuetype Game.WidgetAlignment)
    IL_0380:  ldarg.0
    IL_0381:  ldfld      class Game.ContainerWidget Game.SubsystemGui::m_lookContainerWidget
    IL_0386:  ldc.i4.0
    IL_0387:  callvirt   instance void Game.Widget::set_HorizontalAlignment(valuetype Game.WidgetAlignment)
    IL_038c:  ldarg.0
    IL_038d:  ldfld      class Game.RectangleWidget Game.SubsystemGui::m_moveRectangleWidget
    IL_0392:  ldc.i4.1
    IL_0393:  callvirt   instance void Game.RectangleWidget::set_FlipHorizontal(bool)
    IL_0398:  ldarg.0
    IL_0399:  ldfld      class Game.RectangleWidget Game.SubsystemGui::m_lookRectangleWidget
    IL_039e:  ldc.i4.0
    IL_039f:  callvirt   instance void Game.RectangleWidget::set_FlipHorizontal(bool)
    IL_03a4:  br.s       IL_03d6

    IL_03a6:  ldarg.0
    IL_03a7:  ldfld      class Game.ContainerWidget Game.SubsystemGui::m_moveContainerWidget
    IL_03ac:  ldc.i4.0
    IL_03ad:  callvirt   instance void Game.Widget::set_HorizontalAlignment(valuetype Game.WidgetAlignment)
    IL_03b2:  ldarg.0
    IL_03b3:  ldfld      class Game.ContainerWidget Game.SubsystemGui::m_lookContainerWidget
    IL_03b8:  ldc.i4.2
    IL_03b9:  callvirt   instance void Game.Widget::set_HorizontalAlignment(valuetype Game.WidgetAlignment)
    IL_03be:  ldarg.0
    IL_03bf:  ldfld      class Game.RectangleWidget Game.SubsystemGui::m_moveRectangleWidget
    IL_03c4:  ldc.i4.0
    IL_03c5:  callvirt   instance void Game.RectangleWidget::set_FlipHorizontal(bool)
    IL_03ca:  ldarg.0
    IL_03cb:  ldfld      class Game.RectangleWidget Game.SubsystemGui::m_lookRectangleWidget
    IL_03d0:  ldc.i4.1
    IL_03d1:  callvirt   instance void Game.RectangleWidget::set_FlipHorizontal(bool)
    IL_03d6:  call       class [EntitySystem]GameEntitySystem.Project Game.GameManager::get_Project()
    IL_03db:  ldc.i4.1
    IL_03dc:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGameInfo>(bool)
    IL_03e1:  callvirt   instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
    IL_03e6:  stloc.s    V_5
    IL_03e8:  ldloc.s    V_5
    IL_03ea:  ldfld      valuetype Game.GameMode Game.WorldInfo::GameMode
    IL_03ef:  stloc.s    V_6
    IL_03f1:  ldarg.0
    IL_03f2:  call       instance class Game.ValueBarWidget Game.SubsystemGui::get_HealthBarWidget()
    IL_03f7:  ldloc.s    V_6
    IL_03f9:  ldc.i4.0
    IL_03fa:  cgt.un
    IL_03fc:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0401:  ldarg.0
    IL_0402:  call       instance class Game.ValueBarWidget Game.SubsystemGui::get_TemperatureBarWidget()
    IL_0407:  ldloc.s    V_6
    IL_0409:  brfalse.s  IL_0414

    IL_040b:  ldloc.s    V_5
    IL_040d:  ldfld      bool Game.WorldInfo::AreAdventureSurvivalMechanicsEnabled
    IL_0412:  br.s       IL_0415

    IL_0414:  ldc.i4.0
    IL_0415:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_041a:  ldarg.0
    IL_041b:  call       instance class Game.ValueBarWidget Game.SubsystemGui::get_FoodBarWidget()
    IL_0420:  ldloc.s    V_6
    IL_0422:  brfalse.s  IL_042d

    IL_0424:  ldloc.s    V_5
    IL_0426:  ldfld      bool Game.WorldInfo::AreAdventureSurvivalMechanicsEnabled
    IL_042b:  br.s       IL_042e

    IL_042d:  ldc.i4.0
    IL_042e:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0433:  ldarg.0
    IL_0434:  ldfld      class Game.ButtonWidget Game.SubsystemGui::m_creativeFlyButtonWidget
    IL_0439:  ldloc.s    V_6
    IL_043b:  ldc.i4.0
    IL_043c:  ceq
    IL_043e:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0443:  ldarg.0
    IL_0444:  ldfld      class Game.ButtonWidget Game.SubsystemGui::m_timeOfDayButtonWidget
    IL_0449:  ldloc.s    V_6
    IL_044b:  ldc.i4.0
    IL_044c:  ceq
    IL_044e:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0453:  ldarg.0
    IL_0454:  ldfld      class Game.ButtonWidget Game.SubsystemGui::m_lightningButtonWidget
    IL_0459:  ldloc.s    V_6
    IL_045b:  ldc.i4.0
    IL_045c:  ceq
    IL_045e:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0463:  ldarg.0
    IL_0464:  call       instance class Game.Widget Game.SubsystemGui::get_ModalPanelWidget()
    IL_0469:  isinst     Game.CreativeInventoryWidget
    IL_046e:  brtrue.s   IL_0480

    IL_0470:  ldarg.0
    IL_0471:  call       instance class Game.Widget Game.SubsystemGui::get_ModalPanelWidget()
    IL_0476:  isinst     Game.FullInventoryWidget
    IL_047b:  ldnull
    IL_047c:  cgt.un
    IL_047e:  br.s       IL_0481

    IL_0480:  ldc.i4.1
    IL_0481:  stloc.s    V_7
    IL_0483:  ldarg.0
    IL_0484:  call       instance class Game.Widget Game.SubsystemGui::get_ModalPanelWidget()
    IL_0489:  isinst     Game.ClothingWidget
    IL_048e:  ldnull
    IL_048f:  cgt.un
    IL_0491:  stloc.s    V_8
    IL_0493:  ldarg.0
    IL_0494:  call       instance bool Game.SubsystemGui::IsActiveSlotEditable()
    IL_0499:  stloc.s    V_9
    IL_049b:  ldarg.0
    IL_049c:  ldarg.0
    IL_049d:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3> Game.SubsystemGui::FindNearbyEditableCell()
    IL_04a2:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3> Game.SubsystemGui::m_nearbyEditableCell
    IL_04a7:  ldarg.0
    IL_04a8:  ldfld      class Game.ButtonWidget Game.SubsystemGui::m_sneakButtonWidget
    IL_04ad:  ldloc.1
    IL_04ae:  brtrue.s   IL_04b3

    IL_04b0:  ldc.i4.0
    IL_04b1:  br.s       IL_04be

    IL_04b3:  ldloc.1
    IL_04b4:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_04b9:  callvirt   instance bool Game.ComponentBody::get_IsSneaking()
    IL_04be:  callvirt   instance void Game.ButtonWidget::set_IsChecked(bool)
    IL_04c3:  ldarg.0
    IL_04c4:  ldfld      class Game.ButtonWidget Game.SubsystemGui::m_creativeFlyButtonWidget
    IL_04c9:  ldloc.1
    IL_04ca:  brtrue.s   IL_04cf

    IL_04cc:  ldc.i4.0
    IL_04cd:  br.s       IL_04da

    IL_04cf:  ldloc.1
    IL_04d0:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_04d5:  callvirt   instance bool Game.ComponentLocomotion::get_IsCreativeFlyEnabled()
    IL_04da:  callvirt   instance void Game.ButtonWidget::set_IsChecked(bool)
    IL_04df:  ldarg.0
    IL_04e0:  ldfld      class Game.ButtonWidget Game.SubsystemGui::m_inventoryButtonWidget
    IL_04e5:  ldloc.s    V_7
    IL_04e7:  callvirt   instance void Game.ButtonWidget::set_IsChecked(bool)
    IL_04ec:  ldarg.0
    IL_04ed:  ldfld      class Game.ButtonWidget Game.SubsystemGui::m_clothingButtonWidget
    IL_04f2:  ldloc.s    V_8
    IL_04f4:  callvirt   instance void Game.ButtonWidget::set_IsChecked(bool)
    IL_04f9:  ldloc.s    V_9
    IL_04fb:  brtrue.s   IL_050a

    IL_04fd:  ldarg.0
    IL_04fe:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3> Game.SubsystemGui::m_nearbyEditableCell
    IL_0503:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>::get_HasValue()
    IL_0508:  brfalse.s  IL_0533

    IL_050a:  ldarg.0
    IL_050b:  ldfld      class Game.ButtonWidget Game.SubsystemGui::m_sneakButtonWidget
    IL_0510:  ldc.i4.0
    IL_0511:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0516:  ldarg.0
    IL_0517:  ldfld      class Game.ButtonWidget Game.SubsystemGui::m_mountButtonWidget
    IL_051c:  ldc.i4.0
    IL_051d:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0522:  ldarg.0
    IL_0523:  ldfld      class Game.ButtonWidget Game.SubsystemGui::m_editItemButton
    IL_0528:  ldc.i4.1
    IL_0529:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_052e:  br         IL_05f6

    IL_0533:  ldloc.2
    IL_0534:  brfalse.s  IL_0573

    IL_0536:  ldloc.2
    IL_0537:  callvirt   instance class Game.ComponentMount Game.ComponentRider::get_Mount()
    IL_053c:  brfalse.s  IL_0573

    IL_053e:  ldarg.0
    IL_053f:  ldfld      class Game.ButtonWidget Game.SubsystemGui::m_sneakButtonWidget
    IL_0544:  ldc.i4.0
    IL_0545:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_054a:  ldarg.0
    IL_054b:  ldfld      class Game.ButtonWidget Game.SubsystemGui::m_mountButtonWidget
    IL_0550:  ldc.i4.1
    IL_0551:  callvirt   instance void Game.ButtonWidget::set_IsChecked(bool)
    IL_0556:  ldarg.0
    IL_0557:  ldfld      class Game.ButtonWidget Game.SubsystemGui::m_mountButtonWidget
    IL_055c:  ldc.i4.1
    IL_055d:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0562:  ldarg.0
    IL_0563:  ldfld      class Game.ButtonWidget Game.SubsystemGui::m_editItemButton
    IL_0568:  ldc.i4.0
    IL_0569:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_056e:  br         IL_05f6

    IL_0573:  ldarg.0
    IL_0574:  ldfld      class Game.ButtonWidget Game.SubsystemGui::m_mountButtonWidget
    IL_0579:  ldc.i4.0
    IL_057a:  callvirt   instance void Game.ButtonWidget::set_IsChecked(bool)
    IL_057f:  ldloc.2
    IL_0580:  brfalse.s  IL_05f6

    IL_0582:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
    IL_0587:  ldarg.0
    IL_0588:  ldfld      float64 Game.SubsystemGui::m_lastMountableCreatureSearchTime
    IL_058d:  sub
    IL_058e:  ldc.r8     0.5
    IL_0597:  ble.un.s   IL_05f6

    IL_0599:  ldarg.0
    IL_059a:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
    IL_059f:  stfld      float64 Game.SubsystemGui::m_lastMountableCreatureSearchTime
    IL_05a4:  ldloc.2
    IL_05a5:  callvirt   instance class Game.ComponentMount Game.ComponentRider::FindNearestMount()
    IL_05aa:  brfalse.s  IL_05d2

    IL_05ac:  ldarg.0
    IL_05ad:  ldfld      class Game.ButtonWidget Game.SubsystemGui::m_sneakButtonWidget
    IL_05b2:  ldc.i4.0
    IL_05b3:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_05b8:  ldarg.0
    IL_05b9:  ldfld      class Game.ButtonWidget Game.SubsystemGui::m_mountButtonWidget
    IL_05be:  ldc.i4.1
    IL_05bf:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_05c4:  ldarg.0
    IL_05c5:  ldfld      class Game.ButtonWidget Game.SubsystemGui::m_editItemButton
    IL_05ca:  ldc.i4.0
    IL_05cb:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_05d0:  br.s       IL_05f6

    IL_05d2:  ldarg.0
    IL_05d3:  ldfld      class Game.ButtonWidget Game.SubsystemGui::m_sneakButtonWidget
    IL_05d8:  ldc.i4.1
    IL_05d9:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_05de:  ldarg.0
    IL_05df:  ldfld      class Game.ButtonWidget Game.SubsystemGui::m_mountButtonWidget
    IL_05e4:  ldc.i4.0
    IL_05e5:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_05ea:  ldarg.0
    IL_05eb:  ldfld      class Game.ButtonWidget Game.SubsystemGui::m_editItemButton
    IL_05f0:  ldc.i4.0
    IL_05f1:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_05f6:  ldloc.0
    IL_05f7:  ldfld      bool Game.PlayerInput::KeyboardHelp
    IL_05fc:  brfalse.s  IL_0630

    IL_05fe:  ldarg.0
    IL_05ff:  ldfld      class Game.KeyboardHelpDialog Game.SubsystemGui::m_keyboardHelpDialog
    IL_0604:  brfalse.s  IL_061a

    IL_0606:  ldarg.0
    IL_0607:  ldfld      class Game.KeyboardHelpDialog Game.SubsystemGui::m_keyboardHelpDialog
    IL_060c:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
    IL_0611:  ldarg.0
    IL_0612:  ldnull
    IL_0613:  stfld      class Game.KeyboardHelpDialog Game.SubsystemGui::m_keyboardHelpDialog
    IL_0618:  br.s       IL_0630

    IL_061a:  ldarg.0
    IL_061b:  newobj     instance void Game.KeyboardHelpDialog::.ctor()
    IL_0620:  stfld      class Game.KeyboardHelpDialog Game.SubsystemGui::m_keyboardHelpDialog
    IL_0625:  ldarg.0
    IL_0626:  ldfld      class Game.KeyboardHelpDialog Game.SubsystemGui::m_keyboardHelpDialog
    IL_062b:  call       void Game.DialogsManager::ShowDialog(class Game.Dialog)
    IL_0630:  ldarg.0
    IL_0631:  ldfld      class Game.ButtonWidget Game.SubsystemGui::m_helpButtonWidget
    IL_0636:  callvirt   instance bool Game.ButtonWidget::get_IsTapped()
    IL_063b:  brfalse.s  IL_0661

    IL_063d:  ldsfld     class [System.Runtime]System.Action Game.SubsystemGui/'<>c'::'<>9__87_0'
    IL_0642:  dup
    IL_0643:  brtrue.s   IL_065c

    IL_0645:  pop
    IL_0646:  ldsfld     class Game.SubsystemGui/'<>c' Game.SubsystemGui/'<>c'::'<>9'
    IL_064b:  ldftn      instance void Game.SubsystemGui/'<>c'::'<Update>b__87_0'()
    IL_0651:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0656:  dup
    IL_0657:  stsfld     class [System.Runtime]System.Action Game.SubsystemGui/'<>c'::'<>9__87_0'
    IL_065c:  call       void Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
    IL_0661:  ldarg.0
    IL_0662:  ldfld      class Game.SubsystemPlayer Game.SubsystemGui::m_subsystemPlayer
    IL_0667:  callvirt   instance class Game.ComponentPlayer Game.SubsystemPlayer::get_ComponentPlayer()
    IL_066c:  brfalse    IL_0702

    IL_0671:  ldloc.0
    IL_0672:  ldfld      bool Game.PlayerInput::ToggleInventory
    IL_0677:  brtrue.s   IL_0686

    IL_0679:  ldarg.0
    IL_067a:  ldfld      class Game.ButtonWidget Game.SubsystemGui::m_inventoryButtonWidget
    IL_067f:  callvirt   instance bool Game.ButtonWidget::get_IsTapped()
    IL_0684:  brfalse.s  IL_0702

    IL_0686:  ldloc.s    V_7
    IL_0688:  brfalse.s  IL_0693

    IL_068a:  ldarg.0
    IL_068b:  ldnull
    IL_068c:  call       instance void Game.SubsystemGui::set_ModalPanelWidget(class Game.Widget)
    IL_0691:  br.s       IL_0702

    IL_0693:  ldarg.0
    IL_0694:  ldfld      class Game.SubsystemPlayer Game.SubsystemGui::m_subsystemPlayer
    IL_0699:  callvirt   instance class Game.ComponentPlayer Game.SubsystemPlayer::get_ComponentPlayer()
    IL_069e:  callvirt   instance class Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_06a3:  callvirt   instance class Game.IInventory Game.ComponentMiner::get_Inventory()
    IL_06a8:  isinst     Game.ComponentCreativeInventory
    IL_06ad:  brfalse.s  IL_06cc

    IL_06af:  ldarg.0
    IL_06b0:  ldarg.0
    IL_06b1:  ldfld      class Game.SubsystemPlayer Game.SubsystemGui::m_subsystemPlayer
    IL_06b6:  callvirt   instance class Game.ComponentPlayer Game.SubsystemPlayer::get_ComponentPlayer()
    IL_06bb:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_06c0:  newobj     instance void Game.CreativeInventoryWidget::.ctor(class [EntitySystem]GameEntitySystem.Entity)
    IL_06c5:  call       instance void Game.SubsystemGui::set_ModalPanelWidget(class Game.Widget)
    IL_06ca:  br.s       IL_0702

    IL_06cc:  ldarg.0
    IL_06cd:  ldarg.0
    IL_06ce:  ldfld      class Game.SubsystemPlayer Game.SubsystemGui::m_subsystemPlayer
    IL_06d3:  callvirt   instance class Game.ComponentPlayer Game.SubsystemPlayer::get_ComponentPlayer()
    IL_06d8:  callvirt   instance class Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_06dd:  callvirt   instance class Game.IInventory Game.ComponentMiner::get_Inventory()
    IL_06e2:  ldarg.0
    IL_06e3:  ldfld      class Game.SubsystemPlayer Game.SubsystemGui::m_subsystemPlayer
    IL_06e8:  callvirt   instance class Game.ComponentPlayer Game.SubsystemPlayer::get_ComponentPlayer()
    IL_06ed:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_06f2:  ldc.i4.1
    IL_06f3:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCraftingTable>(bool)
    IL_06f8:  newobj     instance void Game.FullInventoryWidget::.ctor(class Game.IInventory,
                                                                       class Game.ComponentCraftingTable)
    IL_06fd:  call       instance void Game.SubsystemGui::set_ModalPanelWidget(class Game.Widget)
    IL_0702:  ldarg.0
    IL_0703:  ldfld      class Game.SubsystemPlayer Game.SubsystemGui::m_subsystemPlayer
    IL_0708:  callvirt   instance class Game.ComponentPlayer Game.SubsystemPlayer::get_ComponentPlayer()
    IL_070d:  brfalse.s  IL_0747

    IL_070f:  ldloc.0
    IL_0710:  ldfld      bool Game.PlayerInput::ToggleClothing
    IL_0715:  brtrue.s   IL_0724

    IL_0717:  ldarg.0
    IL_0718:  ldfld      class Game.ButtonWidget Game.SubsystemGui::m_clothingButtonWidget
    IL_071d:  callvirt   instance bool Game.ButtonWidget::get_IsTapped()
    IL_0722:  brfalse.s  IL_0747

    IL_0724:  ldloc.s    V_8
    IL_0726:  brfalse.s  IL_0731

    IL_0728:  ldarg.0
    IL_0729:  ldnull
    IL_072a:  call       instance void Game.SubsystemGui::set_ModalPanelWidget(class Game.Widget)
    IL_072f:  br.s       IL_0747

    IL_0731:  ldarg.0
    IL_0732:  ldarg.0
    IL_0733:  ldfld      class Game.SubsystemPlayer Game.SubsystemGui::m_subsystemPlayer
    IL_0738:  callvirt   instance class Game.ComponentPlayer Game.SubsystemPlayer::get_ComponentPlayer()
    IL_073d:  newobj     instance void Game.ClothingWidget::.ctor(class Game.ComponentPlayer)
    IL_0742:  call       instance void Game.SubsystemGui::set_ModalPanelWidget(class Game.Widget)
    IL_0747:  ldloc.1
    IL_0748:  brfalse.s  IL_07b4

    IL_074a:  ldarg.0
    IL_074b:  ldfld      class Game.ButtonWidget Game.SubsystemGui::m_sneakButtonWidget
    IL_0750:  callvirt   instance bool Game.ButtonWidget::get_IsTapped()
    IL_0755:  brtrue.s   IL_075f

    IL_0757:  ldloc.0
    IL_0758:  ldfld      bool Game.PlayerInput::ToggleSneak
    IL_075d:  brfalse.s  IL_07b4

    IL_075f:  ldloc.1
    IL_0760:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0765:  callvirt   instance bool Game.ComponentBody::get_IsSneaking()
    IL_076a:  stloc.s    V_13
    IL_076c:  ldloc.1
    IL_076d:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0772:  ldloc.s    V_13
    IL_0774:  ldc.i4.0
    IL_0775:  ceq
    IL_0777:  callvirt   instance void Game.ComponentBody::set_IsSneaking(bool)
    IL_077c:  ldloc.1
    IL_077d:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0782:  callvirt   instance bool Game.ComponentBody::get_IsSneaking()
    IL_0787:  ldloc.s    V_13
    IL_0789:  beq.s      IL_07b4

    IL_078b:  ldloc.1
    IL_078c:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0791:  callvirt   instance bool Game.ComponentBody::get_IsSneaking()
    IL_0796:  brfalse.s  IL_07a7

    IL_0798:  ldarg.0
    IL_0799:  ldstr      "Sneak mode on"
    IL_079e:  ldc.i4.0
    IL_079f:  ldc.i4.0
    IL_07a0:  call       instance void Game.SubsystemGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_07a5:  br.s       IL_07b4

    IL_07a7:  ldarg.0
    IL_07a8:  ldstr      "Sneak mode off"
    IL_07ad:  ldc.i4.0
    IL_07ae:  ldc.i4.0
    IL_07af:  call       instance void Game.SubsystemGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_07b4:  ldloc.2
    IL_07b5:  brfalse.s  IL_0828

    IL_07b7:  ldarg.0
    IL_07b8:  ldfld      class Game.ButtonWidget Game.SubsystemGui::m_mountButtonWidget
    IL_07bd:  callvirt   instance bool Game.ButtonWidget::get_IsTapped()
    IL_07c2:  brtrue.s   IL_07cc

    IL_07c4:  ldloc.0
    IL_07c5:  ldfld      bool Game.PlayerInput::ToggleMount
    IL_07ca:  brfalse.s  IL_0828

    IL_07cc:  ldloc.2
    IL_07cd:  callvirt   instance class Game.ComponentMount Game.ComponentRider::get_Mount()
    IL_07d2:  ldnull
    IL_07d3:  cgt.un
    IL_07d5:  stloc.s    V_14
    IL_07d7:  ldloc.s    V_14
    IL_07d9:  brfalse.s  IL_07e3

    IL_07db:  ldloc.2
    IL_07dc:  callvirt   instance void Game.ComponentRider::StartDismounting()
    IL_07e1:  br.s       IL_07f7

    IL_07e3:  ldloc.2
    IL_07e4:  callvirt   instance class Game.ComponentMount Game.ComponentRider::FindNearestMount()
    IL_07e9:  stloc.s    V_15
    IL_07eb:  ldloc.s    V_15
    IL_07ed:  brfalse.s  IL_07f7

    IL_07ef:  ldloc.2
    IL_07f0:  ldloc.s    V_15
    IL_07f2:  callvirt   instance void Game.ComponentRider::StartMounting(class Game.ComponentMount)
    IL_07f7:  ldloc.2
    IL_07f8:  callvirt   instance class Game.ComponentMount Game.ComponentRider::get_Mount()
    IL_07fd:  ldnull
    IL_07fe:  cgt.un
    IL_0800:  ldloc.s    V_14
    IL_0802:  beq.s      IL_0828

    IL_0804:  ldloc.2
    IL_0805:  callvirt   instance class Game.ComponentMount Game.ComponentRider::get_Mount()
    IL_080a:  brfalse.s  IL_081b

    IL_080c:  ldarg.0
    IL_080d:  ldstr      "Mounted"
    IL_0812:  ldc.i4.0
    IL_0813:  ldc.i4.0
    IL_0814:  call       instance void Game.SubsystemGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_0819:  br.s       IL_0828

    IL_081b:  ldarg.0
    IL_081c:  ldstr      "Dismounted"
    IL_0821:  ldc.i4.0
    IL_0822:  ldc.i4.0
    IL_0823:  call       instance void Game.SubsystemGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_0828:  ldarg.0
    IL_0829:  ldfld      class Game.ButtonWidget Game.SubsystemGui::m_editItemButton
    IL_082e:  callvirt   instance bool Game.ButtonWidget::get_IsTapped()
    IL_0833:  brtrue.s   IL_0840

    IL_0835:  ldloc.0
    IL_0836:  ldfld      bool Game.PlayerInput::EditItem
    IL_083b:  brfalse    IL_0903

    IL_0840:  ldarg.0
    IL_0841:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3> Game.SubsystemGui::m_nearbyEditableCell
    IL_0846:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>::get_HasValue()
    IL_084b:  brfalse    IL_0903

    IL_0850:  ldarg.0
    IL_0851:  ldfld      class Game.SubsystemTerrain Game.SubsystemGui::m_subsystemTerrain
    IL_0856:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_085b:  ldarg.0
    IL_085c:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3> Game.SubsystemGui::m_nearbyEditableCell
    IL_0861:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>::get_Value()
    IL_0866:  ldfld      int32 [Engine]Engine.Point3::X
    IL_086b:  ldarg.0
    IL_086c:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3> Game.SubsystemGui::m_nearbyEditableCell
    IL_0871:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>::get_Value()
    IL_0876:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_087b:  ldarg.0
    IL_087c:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3> Game.SubsystemGui::m_nearbyEditableCell
    IL_0881:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>::get_Value()
    IL_0886:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_088b:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_0890:  stloc.s    V_16
    IL_0892:  ldloc.s    V_16
    IL_0894:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0899:  stloc.s    V_17
    IL_089b:  ldarg.0
    IL_089c:  ldfld      class Game.SubsystemBlockBehaviors Game.SubsystemGui::m_subsystemBlockBehaviors
    IL_08a1:  ldloc.s    V_17
    IL_08a3:  callvirt   instance class Game.SubsystemBlockBehavior[] Game.SubsystemBlockBehaviors::GetBlockBehaviors(int32)
    IL_08a8:  stloc.s    V_18
    IL_08aa:  ldc.i4.0
    IL_08ab:  stloc.s    V_19
    IL_08ad:  br.s       IL_08f6

    IL_08af:  ldloc.s    V_18
    IL_08b1:  ldloc.s    V_19
    IL_08b3:  ldelem.ref
    IL_08b4:  ldarg.0
    IL_08b5:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3> Game.SubsystemGui::m_nearbyEditableCell
    IL_08ba:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>::get_Value()
    IL_08bf:  ldfld      int32 [Engine]Engine.Point3::X
    IL_08c4:  ldarg.0
    IL_08c5:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3> Game.SubsystemGui::m_nearbyEditableCell
    IL_08ca:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>::get_Value()
    IL_08cf:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_08d4:  ldarg.0
    IL_08d5:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3> Game.SubsystemGui::m_nearbyEditableCell
    IL_08da:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>::get_Value()
    IL_08df:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_08e4:  ldloc.s    V_16
    IL_08e6:  callvirt   instance bool Game.SubsystemBlockBehavior::OnEditBlock(int32,
                                                                                int32,
                                                                                int32,
                                                                                int32)
    IL_08eb:  brtrue     IL_098c

    IL_08f0:  ldloc.s    V_19
    IL_08f2:  ldc.i4.1
    IL_08f3:  add
    IL_08f4:  stloc.s    V_19
    IL_08f6:  ldloc.s    V_19
    IL_08f8:  ldloc.s    V_18
    IL_08fa:  ldlen
    IL_08fb:  conv.i4
    IL_08fc:  blt.s      IL_08af

    IL_08fe:  br         IL_098c

    IL_0903:  ldarg.0
    IL_0904:  ldfld      class Game.ButtonWidget Game.SubsystemGui::m_editItemButton
    IL_0909:  callvirt   instance bool Game.ButtonWidget::get_IsTapped()
    IL_090e:  brtrue.s   IL_0918

    IL_0910:  ldloc.0
    IL_0911:  ldfld      bool Game.PlayerInput::EditItem
    IL_0916:  br.s       IL_0919

    IL_0918:  ldc.i4.1
    IL_0919:  ldloc.s    V_9
    IL_091b:  and
    IL_091c:  brfalse.s  IL_098c

    IL_091e:  ldloc.1
    IL_091f:  brfalse.s  IL_098c

    IL_0921:  ldloc.1
    IL_0922:  callvirt   instance class Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_0927:  callvirt   instance class Game.IInventory Game.ComponentMiner::get_Inventory()
    IL_092c:  stloc.s    V_20
    IL_092e:  ldloc.s    V_20
    IL_0930:  brfalse.s  IL_098c

    IL_0932:  ldloc.s    V_20
    IL_0934:  callvirt   instance int32 Game.IInventory::get_ActiveSlotIndex()
    IL_0939:  stloc.s    V_21
    IL_093b:  ldloc.s    V_20
    IL_093d:  ldloc.s    V_21
    IL_093f:  callvirt   instance int32 Game.IInventory::GetSlotValue(int32)
    IL_0944:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0949:  stloc.s    V_22
    IL_094b:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0950:  ldloc.s    V_22
    IL_0952:  ldelem.ref
    IL_0953:  ldfld      bool Game.Block::IsEditable
    IL_0958:  brfalse.s  IL_098c

    IL_095a:  ldarg.0
    IL_095b:  ldfld      class Game.SubsystemBlockBehaviors Game.SubsystemGui::m_subsystemBlockBehaviors
    IL_0960:  ldloc.s    V_22
    IL_0962:  callvirt   instance class Game.SubsystemBlockBehavior[] Game.SubsystemBlockBehaviors::GetBlockBehaviors(int32)
    IL_0967:  stloc.s    V_18
    IL_0969:  ldc.i4.0
    IL_096a:  stloc.s    V_19
    IL_096c:  br.s       IL_0984

    IL_096e:  ldloc.s    V_18
    IL_0970:  ldloc.s    V_19
    IL_0972:  ldelem.ref
    IL_0973:  ldloc.s    V_20
    IL_0975:  ldloc.s    V_21
    IL_0977:  callvirt   instance bool Game.SubsystemBlockBehavior::OnEditInventoryItem(class Game.IInventory,
                                                                                        int32)
    IL_097c:  brtrue.s   IL_098c

    IL_097e:  ldloc.s    V_19
    IL_0980:  ldc.i4.1
    IL_0981:  add
    IL_0982:  stloc.s    V_19
    IL_0984:  ldloc.s    V_19
    IL_0986:  ldloc.s    V_18
    IL_0988:  ldlen
    IL_0989:  conv.i4
    IL_098a:  blt.s      IL_096e

    IL_098c:  ldarg.0
    IL_098d:  ldfld      class Game.SubsystemGameInfo Game.SubsystemGui::m_subsystemGameInfo
    IL_0992:  callvirt   instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
    IL_0997:  ldfld      valuetype Game.GameMode Game.WorldInfo::GameMode
    IL_099c:  brtrue     IL_0a38

    IL_09a1:  ldarg.0
    IL_09a2:  ldfld      class Game.SubsystemPlayer Game.SubsystemGui::m_subsystemPlayer
    IL_09a7:  callvirt   instance class Game.ComponentPlayer Game.SubsystemPlayer::get_ComponentPlayer()
    IL_09ac:  brfalse    IL_0a38

    IL_09b1:  ldarg.0
    IL_09b2:  ldfld      class Game.ButtonWidget Game.SubsystemGui::m_creativeFlyButtonWidget
    IL_09b7:  callvirt   instance bool Game.ButtonWidget::get_IsTapped()
    IL_09bc:  brtrue.s   IL_09c6

    IL_09be:  ldloc.0
    IL_09bf:  ldfld      bool Game.PlayerInput::ToggleCreativeFly
    IL_09c4:  brfalse.s  IL_0a38

    IL_09c6:  ldloc.1
    IL_09c7:  callvirt   instance class Game.ComponentRider Game.ComponentPlayer::get_ComponentRider()
    IL_09cc:  callvirt   instance class Game.ComponentMount Game.ComponentRider::get_Mount()
    IL_09d1:  brtrue.s   IL_0a38

    IL_09d3:  ldloc.1
    IL_09d4:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_09d9:  callvirt   instance bool Game.ComponentLocomotion::get_IsCreativeFlyEnabled()
    IL_09de:  stloc.s    V_23
    IL_09e0:  ldloc.1
    IL_09e1:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_09e6:  ldloc.s    V_23
    IL_09e8:  ldc.i4.0
    IL_09e9:  ceq
    IL_09eb:  callvirt   instance void Game.ComponentLocomotion::set_IsCreativeFlyEnabled(bool)
    IL_09f0:  ldloc.1
    IL_09f1:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_09f6:  callvirt   instance bool Game.ComponentLocomotion::get_IsCreativeFlyEnabled()
    IL_09fb:  ldloc.s    V_23
    IL_09fd:  beq.s      IL_0a38

    IL_09ff:  ldloc.1
    IL_0a00:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_0a05:  callvirt   instance bool Game.ComponentLocomotion::get_IsCreativeFlyEnabled()
    IL_0a0a:  brfalse.s  IL_0a2b

    IL_0a0c:  ldloc.1
    IL_0a0d:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_0a12:  ldc.r4     1.
    IL_0a17:  callvirt   instance void Game.ComponentLocomotion::set_JumpOrder(float32)
    IL_0a1c:  ldarg.0
    IL_0a1d:  ldstr      "Fly mode on"
    IL_0a22:  ldc.i4.0
    IL_0a23:  ldc.i4.0
    IL_0a24:  call       instance void Game.SubsystemGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_0a29:  br.s       IL_0a38

    IL_0a2b:  ldarg.0
    IL_0a2c:  ldstr      "Fly mode off"
    IL_0a31:  ldc.i4.0
    IL_0a32:  ldc.i4.0
    IL_0a33:  call       instance void Game.SubsystemGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_0a38:  ldarg.0
    IL_0a39:  ldfld      class Game.ButtonWidget Game.SubsystemGui::m_cameraButtonWidget
    IL_0a3e:  callvirt   instance bool Game.ButtonWidget::get_IsTapped()
    IL_0a43:  brtrue.s   IL_0a50

    IL_0a45:  ldloc.0
    IL_0a46:  ldfld      bool Game.PlayerInput::SwitchCameraMode
    IL_0a4b:  brfalse    IL_0b62

    IL_0a50:  ldarg.0
    IL_0a51:  ldfld      class Game.SubsystemCamera Game.SubsystemGui::m_subsystemCamera
    IL_0a56:  callvirt   instance class Game.Camera Game.SubsystemCamera::get_ActiveCamera()
    IL_0a5b:  brfalse    IL_0b62

    IL_0a60:  ldarg.0
    IL_0a61:  ldfld      class Game.SubsystemCamera Game.SubsystemGui::m_subsystemCamera
    IL_0a66:  callvirt   instance class Game.Camera Game.SubsystemCamera::get_ActiveCamera()
    IL_0a6b:  isinst     Game.IntroCamera
    IL_0a70:  brtrue     IL_0b62

    IL_0a75:  ldarg.0
    IL_0a76:  ldfld      class Game.SubsystemCamera Game.SubsystemGui::m_subsystemCamera
    IL_0a7b:  callvirt   instance class Game.Camera Game.SubsystemCamera::get_ActiveCamera()
    IL_0a80:  callvirt   instance class [System.Runtime]System.Type [System.Runtime]System.Object::GetType()
    IL_0a85:  ldtoken    Game.FppCamera
    IL_0a8a:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_0a8f:  bne.un.s   IL_0aba

    IL_0a91:  ldarg.0
    IL_0a92:  ldfld      class Game.SubsystemCamera Game.SubsystemGui::m_subsystemCamera
    IL_0a97:  ldarg.0
    IL_0a98:  ldfld      class Game.SubsystemCamera Game.SubsystemGui::m_subsystemCamera
    IL_0a9d:  ldc.i4.1
    IL_0a9e:  callvirt   instance !!0 Game.SubsystemCamera::FindCamera<class Game.TppCamera>(bool)
    IL_0aa3:  callvirt   instance void Game.SubsystemCamera::set_ActiveCamera(class Game.Camera)
    IL_0aa8:  ldarg.0
    IL_0aa9:  ldstr      "Third person camera"
    IL_0aae:  ldc.i4.0
    IL_0aaf:  ldc.i4.0
    IL_0ab0:  call       instance void Game.SubsystemGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_0ab5:  br         IL_0b62

    IL_0aba:  ldarg.0
    IL_0abb:  ldfld      class Game.SubsystemCamera Game.SubsystemGui::m_subsystemCamera
    IL_0ac0:  callvirt   instance class Game.Camera Game.SubsystemCamera::get_ActiveCamera()
    IL_0ac5:  callvirt   instance class [System.Runtime]System.Type [System.Runtime]System.Object::GetType()
    IL_0aca:  ldtoken    Game.TppCamera
    IL_0acf:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_0ad4:  bne.un.s   IL_0afc

    IL_0ad6:  ldarg.0
    IL_0ad7:  ldfld      class Game.SubsystemCamera Game.SubsystemGui::m_subsystemCamera
    IL_0adc:  ldarg.0
    IL_0add:  ldfld      class Game.SubsystemCamera Game.SubsystemGui::m_subsystemCamera
    IL_0ae2:  ldc.i4.1
    IL_0ae3:  callvirt   instance !!0 Game.SubsystemCamera::FindCamera<class Game.OrbitCamera>(bool)
    IL_0ae8:  callvirt   instance void Game.SubsystemCamera::set_ActiveCamera(class Game.Camera)
    IL_0aed:  ldarg.0
    IL_0aee:  ldstr      "Orbit camera"
    IL_0af3:  ldc.i4.0
    IL_0af4:  ldc.i4.0
    IL_0af5:  call       instance void Game.SubsystemGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_0afa:  br.s       IL_0b62

    IL_0afc:  ldarg.0
    IL_0afd:  ldfld      class Game.SubsystemCamera Game.SubsystemGui::m_subsystemCamera
    IL_0b02:  callvirt   instance class Game.Camera Game.SubsystemCamera::get_ActiveCamera()
    IL_0b07:  callvirt   instance class [System.Runtime]System.Type [System.Runtime]System.Object::GetType()
    IL_0b0c:  ldtoken    Game.OrbitCamera
    IL_0b11:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_0b16:  bne.un.s   IL_0b3e

    IL_0b18:  ldarg.0
    IL_0b19:  ldfld      class Game.SubsystemCamera Game.SubsystemGui::m_subsystemCamera
    IL_0b1e:  ldarg.0
    IL_0b1f:  ldfld      class Game.SubsystemCamera Game.SubsystemGui::m_subsystemCamera
    IL_0b24:  ldc.i4.1
    IL_0b25:  callvirt   instance !!0 Game.SubsystemCamera::FindCamera<class Game.FixedCamera>(bool)
    IL_0b2a:  callvirt   instance void Game.SubsystemCamera::set_ActiveCamera(class Game.Camera)
    IL_0b2f:  ldarg.0
    IL_0b30:  ldstr      "Fixed camera"
    IL_0b35:  ldc.i4.0
    IL_0b36:  ldc.i4.0
    IL_0b37:  call       instance void Game.SubsystemGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_0b3c:  br.s       IL_0b62

    IL_0b3e:  ldarg.0
    IL_0b3f:  ldfld      class Game.SubsystemCamera Game.SubsystemGui::m_subsystemCamera
    IL_0b44:  ldarg.0
    IL_0b45:  ldfld      class Game.SubsystemCamera Game.SubsystemGui::m_subsystemCamera
    IL_0b4a:  ldc.i4.1
    IL_0b4b:  callvirt   instance !!0 Game.SubsystemCamera::FindCamera<class Game.FppCamera>(bool)
    IL_0b50:  callvirt   instance void Game.SubsystemCamera::set_ActiveCamera(class Game.Camera)
    IL_0b55:  ldarg.0
    IL_0b56:  ldstr      "First person camera"
    IL_0b5b:  ldc.i4.0
    IL_0b5c:  ldc.i4.0
    IL_0b5d:  call       instance void Game.SubsystemGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_0b62:  ldarg.0
    IL_0b63:  ldfld      class Game.ButtonWidget Game.SubsystemGui::m_photoButtonWidget
    IL_0b68:  callvirt   instance bool Game.ButtonWidget::get_IsTapped()
    IL_0b6d:  brtrue.s   IL_0b77

    IL_0b6f:  ldloc.0
    IL_0b70:  ldfld      bool Game.PlayerInput::TakeScreenshot
    IL_0b75:  brfalse.s  IL_0ba1

    IL_0b77:  call       void Game.ScreenCaptureManager::CapturePhoto()
    IL_0b7c:  ldarg.0
    IL_0b7d:  ldfld      class Game.SubsystemTime Game.SubsystemGui::m_subsystemTime
    IL_0b82:  ldarg.0
    IL_0b83:  ldfld      class Game.SubsystemTime Game.SubsystemGui::m_subsystemTime
    IL_0b88:  callvirt   instance int32 Game.SubsystemTime::get_FrameIndex()
    IL_0b8d:  ldc.i4.1
    IL_0b8e:  add
    IL_0b8f:  ldnull
    IL_0b90:  ldarg.0
    IL_0b91:  ldftn      instance void Game.SubsystemGui::'<Update>b__87_1'(object)
    IL_0b97:  newobj     instance void class [System.Runtime]System.Action`1<object>::.ctor(object,
                                                                                            native int)
    IL_0b9c:  callvirt   instance void Game.SubsystemTime::QueueFrameCountDelayedExecution(int32,
                                                                                           object,
                                                                                           class [System.Runtime]System.Action`1<object>)
    IL_0ba1:  ldarg.0
    IL_0ba2:  ldfld      class Game.SubsystemGameInfo Game.SubsystemGui::m_subsystemGameInfo
    IL_0ba7:  callvirt   instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
    IL_0bac:  ldfld      valuetype Game.GameMode Game.WorldInfo::GameMode
    IL_0bb1:  brtrue.s   IL_0bd9

    IL_0bb3:  ldarg.0
    IL_0bb4:  ldfld      class Game.ButtonWidget Game.SubsystemGui::m_lightningButtonWidget
    IL_0bb9:  callvirt   instance bool Game.ButtonWidget::get_IsTapped()
    IL_0bbe:  brtrue.s   IL_0bc8

    IL_0bc0:  ldloc.0
    IL_0bc1:  ldfld      bool Game.PlayerInput::Lighting
    IL_0bc6:  brfalse.s  IL_0bd9

    IL_0bc8:  ldarg.0
    IL_0bc9:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0bce:  ldc.i4.1
    IL_0bcf:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemWeather>(bool)
    IL_0bd4:  callvirt   instance void Game.SubsystemWeather::ManualLightingStrike()
    IL_0bd9:  ldarg.0
    IL_0bda:  ldfld      class Game.SubsystemGameInfo Game.SubsystemGui::m_subsystemGameInfo
    IL_0bdf:  callvirt   instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
    IL_0be4:  ldfld      valuetype Game.GameMode Game.WorldInfo::GameMode
    IL_0be9:  brtrue     IL_0d63

    IL_0bee:  ldarg.0
    IL_0bef:  ldfld      class Game.ButtonWidget Game.SubsystemGui::m_timeOfDayButtonWidget
    IL_0bf4:  callvirt   instance bool Game.ButtonWidget::get_IsTapped()
    IL_0bf9:  brtrue.s   IL_0c06

    IL_0bfb:  ldloc.0
    IL_0bfc:  ldfld      bool Game.PlayerInput::TimeOfDay
    IL_0c01:  brfalse    IL_0d63

    IL_0c06:  ldc.r4     0.25
    IL_0c0b:  ldc.r4     1.
    IL_0c10:  call       float32 [Engine]Engine.MathUtils::Remainder(float32,
                                                                     float32)
    IL_0c15:  ldc.r4     0.5
    IL_0c1a:  ldc.r4     1.
    IL_0c1f:  call       float32 [Engine]Engine.MathUtils::Remainder(float32,
                                                                     float32)
    IL_0c24:  stloc.s    V_24
    IL_0c26:  ldc.r4     0.75
    IL_0c2b:  ldc.r4     1.
    IL_0c30:  call       float32 [Engine]Engine.MathUtils::Remainder(float32,
                                                                     float32)
    IL_0c35:  stloc.s    V_25
    IL_0c37:  ldc.r4     1.
    IL_0c3c:  ldc.r4     1.
    IL_0c41:  call       float32 [Engine]Engine.MathUtils::Remainder(float32,
                                                                     float32)
    IL_0c46:  stloc.s    V_26
    IL_0c48:  ldarg.0
    IL_0c49:  ldfld      class Game.SubsystemTimeOfDay Game.SubsystemGui::m_subsystemTimeOfDay
    IL_0c4e:  callvirt   instance float32 Game.SubsystemTimeOfDay::get_TimeOfDay()
    IL_0c53:  sub
    IL_0c54:  ldc.r4     1.
    IL_0c59:  call       float32 [Engine]Engine.MathUtils::Remainder(float32,
                                                                     float32)
    IL_0c5e:  stloc.s    V_27
    IL_0c60:  ldloc.s    V_24
    IL_0c62:  ldarg.0
    IL_0c63:  ldfld      class Game.SubsystemTimeOfDay Game.SubsystemGui::m_subsystemTimeOfDay
    IL_0c68:  callvirt   instance float32 Game.SubsystemTimeOfDay::get_TimeOfDay()
    IL_0c6d:  sub
    IL_0c6e:  ldc.r4     1.
    IL_0c73:  call       float32 [Engine]Engine.MathUtils::Remainder(float32,
                                                                     float32)
    IL_0c78:  stloc.s    V_28
    IL_0c7a:  ldloc.s    V_25
    IL_0c7c:  ldarg.0
    IL_0c7d:  ldfld      class Game.SubsystemTimeOfDay Game.SubsystemGui::m_subsystemTimeOfDay
    IL_0c82:  callvirt   instance float32 Game.SubsystemTimeOfDay::get_TimeOfDay()
    IL_0c87:  sub
    IL_0c88:  ldc.r4     1.
    IL_0c8d:  call       float32 [Engine]Engine.MathUtils::Remainder(float32,
                                                                     float32)
    IL_0c92:  stloc.s    V_29
    IL_0c94:  ldloc.s    V_26
    IL_0c96:  ldarg.0
    IL_0c97:  ldfld      class Game.SubsystemTimeOfDay Game.SubsystemGui::m_subsystemTimeOfDay
    IL_0c9c:  callvirt   instance float32 Game.SubsystemTimeOfDay::get_TimeOfDay()
    IL_0ca1:  sub
    IL_0ca2:  ldc.r4     1.
    IL_0ca7:  call       float32 [Engine]Engine.MathUtils::Remainder(float32,
                                                                     float32)
    IL_0cac:  stloc.s    V_30
    IL_0cae:  ldloc.s    V_27
    IL_0cb0:  ldloc.s    V_28
    IL_0cb2:  ldloc.s    V_29
    IL_0cb4:  ldloc.s    V_30
    IL_0cb6:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32,
                                                               float32,
                                                               float32)
    IL_0cbb:  stloc.s    V_31
    IL_0cbd:  ldloc.s    V_27
    IL_0cbf:  ldloc.s    V_31
    IL_0cc1:  bne.un.s   IL_0ce7

    IL_0cc3:  ldarg.0
    IL_0cc4:  ldfld      class Game.SubsystemTimeOfDay Game.SubsystemGui::m_subsystemTimeOfDay
    IL_0cc9:  dup
    IL_0cca:  callvirt   instance float64 Game.SubsystemTimeOfDay::get_TimeOfDayOffset()
    IL_0ccf:  ldloc.s    V_27
    IL_0cd1:  conv.r8
    IL_0cd2:  add
    IL_0cd3:  callvirt   instance void Game.SubsystemTimeOfDay::set_TimeOfDayOffset(float64)
    IL_0cd8:  ldarg.0
    IL_0cd9:  ldstr      "Dawn"
    IL_0cde:  ldc.i4.0
    IL_0cdf:  ldc.i4.0
    IL_0ce0:  call       instance void Game.SubsystemGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_0ce5:  br.s       IL_0d63

    IL_0ce7:  ldloc.s    V_28
    IL_0ce9:  ldloc.s    V_31
    IL_0ceb:  bne.un.s   IL_0d11

    IL_0ced:  ldarg.0
    IL_0cee:  ldfld      class Game.SubsystemTimeOfDay Game.SubsystemGui::m_subsystemTimeOfDay
    IL_0cf3:  dup
    IL_0cf4:  callvirt   instance float64 Game.SubsystemTimeOfDay::get_TimeOfDayOffset()
    IL_0cf9:  ldloc.s    V_28
    IL_0cfb:  conv.r8
    IL_0cfc:  add
    IL_0cfd:  callvirt   instance void Game.SubsystemTimeOfDay::set_TimeOfDayOffset(float64)
    IL_0d02:  ldarg.0
    IL_0d03:  ldstr      "Noon"
    IL_0d08:  ldc.i4.0
    IL_0d09:  ldc.i4.0
    IL_0d0a:  call       instance void Game.SubsystemGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_0d0f:  br.s       IL_0d63

    IL_0d11:  ldloc.s    V_29
    IL_0d13:  ldloc.s    V_31
    IL_0d15:  bne.un.s   IL_0d3b

    IL_0d17:  ldarg.0
    IL_0d18:  ldfld      class Game.SubsystemTimeOfDay Game.SubsystemGui::m_subsystemTimeOfDay
    IL_0d1d:  dup
    IL_0d1e:  callvirt   instance float64 Game.SubsystemTimeOfDay::get_TimeOfDayOffset()
    IL_0d23:  ldloc.s    V_29
    IL_0d25:  conv.r8
    IL_0d26:  add
    IL_0d27:  callvirt   instance void Game.SubsystemTimeOfDay::set_TimeOfDayOffset(float64)
    IL_0d2c:  ldarg.0
    IL_0d2d:  ldstr      "Dusk"
    IL_0d32:  ldc.i4.0
    IL_0d33:  ldc.i4.0
    IL_0d34:  call       instance void Game.SubsystemGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_0d39:  br.s       IL_0d63

    IL_0d3b:  ldloc.s    V_30
    IL_0d3d:  ldloc.s    V_31
    IL_0d3f:  bne.un.s   IL_0d63

    IL_0d41:  ldarg.0
    IL_0d42:  ldfld      class Game.SubsystemTimeOfDay Game.SubsystemGui::m_subsystemTimeOfDay
    IL_0d47:  dup
    IL_0d48:  callvirt   instance float64 Game.SubsystemTimeOfDay::get_TimeOfDayOffset()
    IL_0d4d:  ldloc.s    V_30
    IL_0d4f:  conv.r8
    IL_0d50:  add
    IL_0d51:  callvirt   instance void Game.SubsystemTimeOfDay::set_TimeOfDayOffset(float64)
    IL_0d56:  ldarg.0
    IL_0d57:  ldstr      "Midnight"
    IL_0d5c:  ldc.i4.0
    IL_0d5d:  ldc.i4.0
    IL_0d5e:  call       instance void Game.SubsystemGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_0d63:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_0d68:  ldfld      bool Game.InputState::Back
    IL_0d6d:  brtrue.s   IL_0d7c

    IL_0d6f:  ldarg.0
    IL_0d70:  ldfld      class Game.ButtonWidget Game.SubsystemGui::m_backButtonWidget
    IL_0d75:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0d7a:  brfalse.s  IL_0db0

    IL_0d7c:  ldarg.0
    IL_0d7d:  call       instance class Game.Widget Game.SubsystemGui::get_ModalPanelWidget()
    IL_0d82:  brfalse.s  IL_0d8c

    IL_0d84:  ldarg.0
    IL_0d85:  ldnull
    IL_0d86:  call       instance void Game.SubsystemGui::set_ModalPanelWidget(class Game.Widget)
    IL_0d8b:  ret

    IL_0d8c:  ldsfld     class [System.Runtime]System.Action Game.SubsystemGui/'<>c'::'<>9__87_2'
    IL_0d91:  dup
    IL_0d92:  brtrue.s   IL_0dab

    IL_0d94:  pop
    IL_0d95:  ldsfld     class Game.SubsystemGui/'<>c' Game.SubsystemGui/'<>c'::'<>9'
    IL_0d9a:  ldftn      instance void Game.SubsystemGui/'<>c'::'<Update>b__87_2'()
    IL_0da0:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0da5:  dup
    IL_0da6:  stsfld     class [System.Runtime]System.Action Game.SubsystemGui/'<>c'::'<>9__87_2'
    IL_0dab:  call       void Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
    IL_0db0:  ret
  } // end of method SubsystemGui::Update

  .method public hidebysig newslot specialname virtual final 
          instance int32[]  get_DrawOrders() cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     int32[] Game.SubsystemGui::m_drawOrders
    IL_0005:  ret
  } // end of method SubsystemGui::get_DrawOrders

  .method public hidebysig newslot virtual final 
          instance void  Draw(class Game.SubsystemDrawing subsystemDrawing,
                              int32 drawOrder) cil managed
  {
    // 代码大小       908 (0x38c)
    .maxstack  8
    .locals init (class Game.ComponentPlayer V_0,
             bool V_1,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace> V_2,
             valuetype Game.CellFace V_3,
             valuetype [Engine]Engine.BoundingBox V_4,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> V_5,
             valuetype Game.CellFace V_6,
             valuetype [Engine]Engine.BoundingBox V_7,
             valuetype [Engine]Engine.BoundingBox V_8,
             valuetype [Engine]Engine.Graphics.Viewport V_9,
             valuetype [Engine]Engine.Vector2 V_10,
             class Game.Subtexture V_11,
             float32 V_12,
             valuetype [Engine]Engine.Vector3 V_13,
             valuetype [Engine]Engine.Vector3 V_14,
             class [Engine]Engine.Graphics.Texture2D V_15,
             valuetype [Engine]Engine.Vector2 V_16)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemPlayer Game.SubsystemGui::m_subsystemPlayer
    IL_0006:  callvirt   instance class Game.ComponentPlayer Game.SubsystemPlayer::get_ComponentPlayer()
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  brfalse    IL_036d

    IL_0012:  ldloc.0
    IL_0013:  callvirt   instance class Game.ComponentSleep Game.ComponentPlayer::get_ComponentSleep()
    IL_0018:  callvirt   instance bool Game.ComponentSleep::get_IsSleeping()
    IL_001d:  brtrue     IL_036d

    IL_0022:  ldloc.0
    IL_0023:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_0028:  callvirt   instance float32 Game.ComponentHealth::get_Health()
    IL_002d:  ldc.r4     0.0
    IL_0032:  ble.un     IL_036d

    IL_0037:  ldarg.0
    IL_0038:  ldfld      class Game.ContainerWidget Game.SubsystemGui::m_controlsContainerWidget
    IL_003d:  callvirt   instance bool Game.Widget::get_IsVisible()
    IL_0042:  brfalse    IL_036d

    IL_0047:  ldarg.0
    IL_0048:  ldfld      class Game.SubsystemCamera Game.SubsystemGui::m_subsystemCamera
    IL_004d:  ldloc.0
    IL_004e:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0053:  callvirt   instance bool Game.SubsystemCamera::IsEntityControlEnabled(class [EntitySystem]GameEntitySystem.Entity)
    IL_0058:  brfalse    IL_0284

    IL_005d:  ldarg.0
    IL_005e:  ldflda     valuetype Game.SubsystemGui/AimingSights Game.SubsystemGui::m_aimingSights
    IL_0063:  ldfld      bool Game.SubsystemGui/AimingSights::IsVisible
    IL_0068:  brtrue.s   IL_0082

    IL_006a:  call       valuetype Game.LookControlMode Game.SettingsManager::get_LookControlMode()
    IL_006f:  ldc.i4.2
    IL_0070:  beq.s      IL_007f

    IL_0072:  ldarg.0
    IL_0073:  ldfld      class Game.SubsystemInput Game.SubsystemGui::m_subsystemInput
    IL_0078:  callvirt   instance bool Game.SubsystemInput::get_IsControlledByMouse()
    IL_007d:  br.s       IL_0083

    IL_007f:  ldc.i4.1
    IL_0080:  br.s       IL_0083

    IL_0082:  ldc.i4.0
    IL_0083:  stloc.1
    IL_0084:  ldarg.0
    IL_0085:  ldflda     valuetype Game.SubsystemGui/AimingSights Game.SubsystemGui::m_aimingSights
    IL_008a:  ldfld      bool Game.SubsystemGui/AimingSights::IsVisible
    IL_008f:  brtrue.s   IL_00a9

    IL_0091:  call       valuetype Game.LookControlMode Game.SettingsManager::get_LookControlMode()
    IL_0096:  ldc.i4.2
    IL_0097:  beq.s      IL_00a6

    IL_0099:  ldarg.0
    IL_009a:  ldfld      class Game.SubsystemInput Game.SubsystemGui::m_subsystemInput
    IL_009f:  callvirt   instance bool Game.SubsystemInput::get_IsControlledByMouse()
    IL_00a4:  br.s       IL_00aa

    IL_00a6:  ldc.i4.1
    IL_00a7:  br.s       IL_00aa

    IL_00a9:  ldc.i4.0
    IL_00aa:  ldloc.0
    IL_00ab:  callvirt   instance class Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_00b0:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace> Game.ComponentMiner::get_DigCellFace()
    IL_00b5:  stloc.2
    IL_00b6:  ldloca.s   V_2
    IL_00b8:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace>::get_HasValue()
    IL_00bd:  brfalse.s  IL_0118

    IL_00bf:  ldloc.0
    IL_00c0:  callvirt   instance class Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_00c5:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace> Game.ComponentMiner::get_DigCellFace()
    IL_00ca:  stloc.2
    IL_00cb:  ldloca.s   V_2
    IL_00cd:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace>::get_Value()
    IL_00d2:  stloc.3
    IL_00d3:  ldarg.0
    IL_00d4:  ldloca.s   V_3
    IL_00d6:  call       instance valuetype [Engine]Engine.Point3 Game.CellFace::get_Point()
    IL_00db:  call       instance valuetype [Engine]Engine.BoundingBox Game.SubsystemGui::GetCellFaceBoundingBox(valuetype [Engine]Engine.Point3)
    IL_00e0:  stloc.s    V_4
    IL_00e2:  ldarg.0
    IL_00e3:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.SubsystemGui::PrimitivesRenderer3D
    IL_00e8:  ldc.i4.m1
    IL_00e9:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::None
    IL_00ee:  ldnull
    IL_00ef:  ldnull
    IL_00f0:  callvirt   instance class [Engine]Engine.Graphics.FlatBatch3D [Engine]Engine.Graphics.PrimitivesRenderer3D::FlatBatch(int32,
                                                                                                                                    class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                    class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                    class [Engine]Engine.Graphics.BlendState)
    IL_00f5:  ldloc.3
    IL_00f6:  ldfld      int32 Game.CellFace::Face
    IL_00fb:  ldloc.s    V_4
    IL_00fd:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_0102:  ldloc.s    V_4
    IL_0104:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_0109:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Black
    IL_010e:  call       void Game.SubsystemGui::DrawBoundingBoxFace(class [Engine]Engine.Graphics.FlatBatch3D,
                                                                     int32,
                                                                     valuetype [Engine]Engine.Vector3,
                                                                     valuetype [Engine]Engine.Vector3,
                                                                     valuetype [Engine]Engine.Color)
    IL_0113:  br         IL_01cc

    IL_0118:  ldloc.1
    IL_0119:  brfalse.s  IL_018d

    IL_011b:  ldloc.0
    IL_011c:  callvirt   instance class Game.ComponentPlayerInput Game.ComponentPlayer::get_ComponentPlayerInput()
    IL_0121:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> Game.ComponentPlayerInput::get_HighlightRaycastResult()
    IL_0126:  stloc.s    V_5
    IL_0128:  ldloca.s   V_5
    IL_012a:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_HasValue()
    IL_012f:  brfalse.s  IL_018d

    IL_0131:  ldloc.0
    IL_0132:  callvirt   instance class Game.ComponentPlayerInput Game.ComponentPlayer::get_ComponentPlayerInput()
    IL_0137:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> Game.ComponentPlayerInput::get_HighlightRaycastResult()
    IL_013c:  stloc.s    V_5
    IL_013e:  ldloca.s   V_5
    IL_0140:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_0145:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_014a:  stloc.s    V_6
    IL_014c:  ldarg.0
    IL_014d:  ldloca.s   V_6
    IL_014f:  call       instance valuetype [Engine]Engine.Point3 Game.CellFace::get_Point()
    IL_0154:  call       instance valuetype [Engine]Engine.BoundingBox Game.SubsystemGui::GetCellFaceBoundingBox(valuetype [Engine]Engine.Point3)
    IL_0159:  stloc.s    V_7
    IL_015b:  ldarg.0
    IL_015c:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.SubsystemGui::PrimitivesRenderer3D
    IL_0161:  ldc.i4.m1
    IL_0162:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::None
    IL_0167:  ldnull
    IL_0168:  ldnull
    IL_0169:  callvirt   instance class [Engine]Engine.Graphics.FlatBatch3D [Engine]Engine.Graphics.PrimitivesRenderer3D::FlatBatch(int32,
                                                                                                                                    class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                    class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                    class [Engine]Engine.Graphics.BlendState)
    IL_016e:  ldloc.s    V_6
    IL_0170:  ldfld      int32 Game.CellFace::Face
    IL_0175:  ldloc.s    V_7
    IL_0177:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_017c:  ldloc.s    V_7
    IL_017e:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_0183:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Black
    IL_0188:  call       void Game.SubsystemGui::DrawBoundingBoxFace(class [Engine]Engine.Graphics.FlatBatch3D,
                                                                     int32,
                                                                     valuetype [Engine]Engine.Vector3,
                                                                     valuetype [Engine]Engine.Vector3,
                                                                     valuetype [Engine]Engine.Color)
    IL_018d:  ldarg.0
    IL_018e:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3> Game.SubsystemGui::m_nearbyEditableCell
    IL_0193:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>::get_HasValue()
    IL_0198:  brfalse.s  IL_01cc

    IL_019a:  ldarg.0
    IL_019b:  ldarg.0
    IL_019c:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3> Game.SubsystemGui::m_nearbyEditableCell
    IL_01a1:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>::get_Value()
    IL_01a6:  call       instance valuetype [Engine]Engine.BoundingBox Game.SubsystemGui::GetCellFaceBoundingBox(valuetype [Engine]Engine.Point3)
    IL_01ab:  stloc.s    V_8
    IL_01ad:  ldarg.0
    IL_01ae:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.SubsystemGui::PrimitivesRenderer3D
    IL_01b3:  ldc.i4.m1
    IL_01b4:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::None
    IL_01b9:  ldnull
    IL_01ba:  ldnull
    IL_01bb:  callvirt   instance class [Engine]Engine.Graphics.FlatBatch3D [Engine]Engine.Graphics.PrimitivesRenderer3D::FlatBatch(int32,
                                                                                                                                    class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                    class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                    class [Engine]Engine.Graphics.BlendState)
    IL_01c0:  ldloc.s    V_8
    IL_01c2:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Black
    IL_01c7:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch3D::QueueBoundingBox(valuetype [Engine]Engine.BoundingBox,
                                                                                             valuetype [Engine]Engine.Color)
    IL_01cc:  brfalse    IL_0284

    IL_01d1:  call       valuetype [Engine]Engine.Graphics.Viewport [Engine]Engine.Graphics.Display::get_Viewport()
    IL_01d6:  stloc.s    V_9
    IL_01d8:  ldloca.s   V_10
    IL_01da:  ldloc.s    V_9
    IL_01dc:  ldfld      int32 [Engine]Engine.Graphics.Viewport::X
    IL_01e1:  ldloc.s    V_9
    IL_01e3:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Width
    IL_01e8:  ldc.i4.2
    IL_01e9:  div
    IL_01ea:  add
    IL_01eb:  conv.r4
    IL_01ec:  ldloc.s    V_9
    IL_01ee:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Y
    IL_01f3:  ldloc.s    V_9
    IL_01f5:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Height
    IL_01fa:  ldc.i4.2
    IL_01fb:  div
    IL_01fc:  add
    IL_01fd:  conv.r4
    IL_01fe:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0203:  ldstr      "Textures/Atlas/Crosshair"
    IL_0208:  call       !!0 Game.ContentManager::Get<class Game.Subtexture>(string)
    IL_020d:  stloc.s    V_11
    IL_020f:  ldarg.0
    IL_0210:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.SubsystemGui::PrimitivesRenderer2D
    IL_0215:  ldloc.s    V_11
    IL_0217:  ldfld      class [Engine]Engine.Graphics.Texture2D Game.Subtexture::Texture
    IL_021c:  ldc.i4.0
    IL_021d:  ldc.i4.0
    IL_021e:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::None
    IL_0223:  ldsfld     class [Engine]Engine.Graphics.RasterizerState [Engine]Engine.Graphics.RasterizerState::CullNone
    IL_0228:  ldsfld     class [Engine]Engine.Graphics.BlendState [Engine]Engine.Graphics.BlendState::AlphaBlend
    IL_022d:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::LinearClamp
    IL_0232:  callvirt   instance class [Engine]Engine.Graphics.TexturedBatch2D [Engine]Engine.Graphics.PrimitivesRenderer2D::TexturedBatch(class [Engine]Engine.Graphics.Texture2D,
                                                                                                                                            bool,
                                                                                                                                            int32,
                                                                                                                                            class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                            class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                            class [Engine]Engine.Graphics.BlendState,
                                                                                                                                            class [Engine]Engine.Graphics.SamplerState)
    IL_0237:  call       float32 Game.ScreenResolutionManager::get_ApproximateScreenDpi()
    IL_023c:  ldc.r4     240.
    IL_0241:  bgt.s      IL_0246

    IL_0243:  ldc.i4.8
    IL_0244:  br.s       IL_0248

    IL_0246:  ldc.i4.s   16
    IL_0248:  conv.r4
    IL_0249:  stloc.s    V_12
    IL_024b:  ldloc.s    V_10
    IL_024d:  ldloc.s    V_12
    IL_024f:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_0254:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_0259:  ldloc.s    V_10
    IL_025b:  ldloc.s    V_12
    IL_025d:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_0262:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0267:  ldc.r4     0.0
    IL_026c:  ldloc.s    V_11
    IL_026e:  ldfld      valuetype [Engine]Engine.Vector2 Game.Subtexture::TopLeft
    IL_0273:  ldloc.s    V_11
    IL_0275:  ldfld      valuetype [Engine]Engine.Vector2 Game.Subtexture::BottomRight
    IL_027a:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_027f:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          float32,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Color)
    IL_0284:  ldarg.0
    IL_0285:  ldflda     valuetype Game.SubsystemGui/AimingSights Game.SubsystemGui::m_aimingSights
    IL_028a:  ldfld      bool Game.SubsystemGui/AimingSights::IsVisible
    IL_028f:  brfalse    IL_036d

    IL_0294:  ldarg.0
    IL_0295:  ldflda     valuetype Game.SubsystemGui/AimingSights Game.SubsystemGui::m_aimingSights
    IL_029a:  ldfld      valuetype [Engine]Engine.Vector3 Game.SubsystemGui/AimingSights::Position
    IL_029f:  ldarg.0
    IL_02a0:  ldflda     valuetype Game.SubsystemGui/AimingSights Game.SubsystemGui::m_aimingSights
    IL_02a5:  ldfld      valuetype [Engine]Engine.Vector3 Game.SubsystemGui/AimingSights::Direction
    IL_02aa:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_02af:  stloc.s    V_13
    IL_02b1:  ldarg.1
    IL_02b2:  ldloc.s    V_13
    IL_02b4:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
    IL_02b9:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::WorldToScreen(valuetype [Engine]Engine.Vector3,
                                                                                                        valuetype [Engine]Engine.Matrix)
    IL_02be:  stloc.s    V_14
    IL_02c0:  ldstr      "Textures/Gui/Sights"
    IL_02c5:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Texture2D>(string)
    IL_02ca:  stloc.s    V_15
    IL_02cc:  ldarg.0
    IL_02cd:  ldfld      class Game.SubsystemInput Game.SubsystemGui::m_subsystemInput
    IL_02d2:  callvirt   instance bool Game.SubsystemInput::get_IsControlledByMouse()
    IL_02d7:  brtrue.s   IL_02eb

    IL_02d9:  ldc.r4     128.
    IL_02de:  call       float32 Game.WidgetsManager::get_Scale()
    IL_02e3:  mul
    IL_02e4:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_02e9:  br.s       IL_02fb

    IL_02eb:  ldc.r4     64.
    IL_02f0:  call       float32 Game.WidgetsManager::get_Scale()
    IL_02f5:  mul
    IL_02f6:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_02fb:  stloc.s    V_16
    IL_02fd:  ldarg.0
    IL_02fe:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.SubsystemGui::PrimitivesRenderer2D
    IL_0303:  ldloc.s    V_15
    IL_0305:  ldc.i4.0
    IL_0306:  ldc.i4.0
    IL_0307:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::None
    IL_030c:  ldnull
    IL_030d:  ldnull
    IL_030e:  ldnull
    IL_030f:  callvirt   instance class [Engine]Engine.Graphics.TexturedBatch2D [Engine]Engine.Graphics.PrimitivesRenderer2D::TexturedBatch(class [Engine]Engine.Graphics.Texture2D,
                                                                                                                                            bool,
                                                                                                                                            int32,
                                                                                                                                            class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                            class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                            class [Engine]Engine.Graphics.BlendState,
                                                                                                                                            class [Engine]Engine.Graphics.SamplerState)
    IL_0314:  ldloc.s    V_14
    IL_0316:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_031b:  ldloc.s    V_14
    IL_031d:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0322:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0327:  ldloc.s    V_16
    IL_0329:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_032e:  ldloc.s    V_14
    IL_0330:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0335:  ldloc.s    V_14
    IL_0337:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_033c:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0341:  ldloc.s    V_16
    IL_0343:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0348:  ldc.r4     0.0
    IL_034d:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_0352:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::One
    IL_0357:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_035c:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          float32,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Color)
    IL_0361:  ldarg.0
    IL_0362:  ldflda     valuetype Game.SubsystemGui/AimingSights Game.SubsystemGui::m_aimingSights
    IL_0367:  ldc.i4.0
    IL_0368:  stfld      bool Game.SubsystemGui/AimingSights::IsVisible
    IL_036d:  ldarg.0
    IL_036e:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.SubsystemGui::PrimitivesRenderer3D
    IL_0373:  ldarg.1
    IL_0374:  callvirt   instance valuetype [Engine]Engine.Matrix Game.SubsystemDrawing::get_ViewProjectionMatrix()
    IL_0379:  ldc.i4.1
    IL_037a:  callvirt   instance void class [Engine]Engine.Graphics.BasePrimitivesRenderer`3<class [Engine]Engine.Graphics.FlatBatch3D,class [Engine]Engine.Graphics.TexturedBatch3D,class [Engine]Engine.Graphics.FontBatch3D>::Flush(valuetype [Engine]Engine.Matrix,
                                                                                                                                                                                                                                        bool)
    IL_037f:  ldarg.0
    IL_0380:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.SubsystemGui::PrimitivesRenderer2D
    IL_0385:  ldc.i4.1
    IL_0386:  callvirt   instance void [Engine]Engine.Graphics.PrimitivesRenderer2D::Flush(bool)
    IL_038b:  ret
  } // end of method SubsystemGui::Draw

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       1467 (0x5bb)
    .maxstack  4
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGameInfo>(bool)
    IL_000d:  stfld      class Game.SubsystemGameInfo Game.SubsystemGui::m_subsystemGameInfo
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemAudio>(bool)
    IL_001f:  stfld      class Game.SubsystemAudio Game.SubsystemGui::m_subsystemAudio
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTimeOfDay>(bool)
    IL_0031:  stfld      class Game.SubsystemTimeOfDay Game.SubsystemGui::m_subsystemTimeOfDay
    IL_0036:  ldarg.0
    IL_0037:  ldarg.0
    IL_0038:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_003d:  ldc.i4.1
    IL_003e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_0043:  stfld      class Game.SubsystemTime Game.SubsystemGui::m_subsystemTime
    IL_0048:  ldarg.0
    IL_0049:  ldarg.0
    IL_004a:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_004f:  ldc.i4.1
    IL_0050:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemCamera>(bool)
    IL_0055:  stfld      class Game.SubsystemCamera Game.SubsystemGui::m_subsystemCamera
    IL_005a:  ldarg.0
    IL_005b:  ldarg.0
    IL_005c:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0061:  ldc.i4.1
    IL_0062:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemPlayer>(bool)
    IL_0067:  stfld      class Game.SubsystemPlayer Game.SubsystemGui::m_subsystemPlayer
    IL_006c:  ldarg.0
    IL_006d:  ldarg.0
    IL_006e:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0073:  ldc.i4.1
    IL_0074:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemInput>(bool)
    IL_0079:  stfld      class Game.SubsystemInput Game.SubsystemGui::m_subsystemInput
    IL_007e:  ldarg.0
    IL_007f:  ldarg.0
    IL_0080:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0085:  ldc.i4.1
    IL_0086:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_008b:  stfld      class Game.SubsystemTerrain Game.SubsystemGui::m_subsystemTerrain
    IL_0090:  ldarg.0
    IL_0091:  ldarg.0
    IL_0092:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0097:  ldc.i4.1
    IL_0098:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemBlockBehaviors>(bool)
    IL_009d:  stfld      class Game.SubsystemBlockBehaviors Game.SubsystemGui::m_subsystemBlockBehaviors
    IL_00a2:  ldarg.0
    IL_00a3:  ldarg.0
    IL_00a4:  ldfld      class Game.SubsystemGameInfo Game.SubsystemGui::m_subsystemGameInfo
    IL_00a9:  callvirt   instance class Game.GameWidget Game.SubsystemGameInfo::get_GameWidget()
    IL_00ae:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00b3:  ldstr      "BackButton"
    IL_00b8:  ldc.i4.1
    IL_00b9:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_00be:  stfld      class Game.ButtonWidget Game.SubsystemGui::m_backButtonWidget
    IL_00c3:  ldarg.0
    IL_00c4:  ldarg.0
    IL_00c5:  ldfld      class Game.SubsystemGameInfo Game.SubsystemGui::m_subsystemGameInfo
    IL_00ca:  callvirt   instance class Game.GameWidget Game.SubsystemGameInfo::get_GameWidget()
    IL_00cf:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00d4:  ldstr      "InventoryButton"
    IL_00d9:  ldc.i4.1
    IL_00da:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_00df:  stfld      class Game.ButtonWidget Game.SubsystemGui::m_inventoryButtonWidget
    IL_00e4:  ldarg.0
    IL_00e5:  ldarg.0
    IL_00e6:  ldfld      class Game.SubsystemGameInfo Game.SubsystemGui::m_subsystemGameInfo
    IL_00eb:  callvirt   instance class Game.GameWidget Game.SubsystemGameInfo::get_GameWidget()
    IL_00f0:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00f5:  ldstr      "ClothingButton"
    IL_00fa:  ldc.i4.1
    IL_00fb:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_0100:  stfld      class Game.ButtonWidget Game.SubsystemGui::m_clothingButtonWidget
    IL_0105:  ldarg.0
    IL_0106:  ldarg.0
    IL_0107:  ldfld      class Game.SubsystemGameInfo Game.SubsystemGui::m_subsystemGameInfo
    IL_010c:  callvirt   instance class Game.GameWidget Game.SubsystemGameInfo::get_GameWidget()
    IL_0111:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0116:  ldstr      "MoreButton"
    IL_011b:  ldc.i4.1
    IL_011c:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_0121:  stfld      class Game.ButtonWidget Game.SubsystemGui::m_moreButtonWidget
    IL_0126:  ldarg.0
    IL_0127:  ldarg.0
    IL_0128:  ldfld      class Game.SubsystemGameInfo Game.SubsystemGui::m_subsystemGameInfo
    IL_012d:  callvirt   instance class Game.GameWidget Game.SubsystemGameInfo::get_GameWidget()
    IL_0132:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0137:  ldstr      "MoreContents"
    IL_013c:  ldc.i4.1
    IL_013d:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.Widget>(string,
                                                                                     bool)
    IL_0142:  stfld      class Game.Widget Game.SubsystemGui::m_moreContentsWidget
    IL_0147:  ldarg.0
    IL_0148:  ldarg.0
    IL_0149:  ldfld      class Game.SubsystemGameInfo Game.SubsystemGui::m_subsystemGameInfo
    IL_014e:  callvirt   instance class Game.GameWidget Game.SubsystemGameInfo::get_GameWidget()
    IL_0153:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0158:  ldstr      "HelpButton"
    IL_015d:  ldc.i4.1
    IL_015e:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_0163:  stfld      class Game.ButtonWidget Game.SubsystemGui::m_helpButtonWidget
    IL_0168:  ldarg.0
    IL_0169:  ldarg.0
    IL_016a:  ldfld      class Game.SubsystemGameInfo Game.SubsystemGui::m_subsystemGameInfo
    IL_016f:  callvirt   instance class Game.GameWidget Game.SubsystemGameInfo::get_GameWidget()
    IL_0174:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0179:  ldstr      "PhotoButton"
    IL_017e:  ldc.i4.1
    IL_017f:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_0184:  stfld      class Game.ButtonWidget Game.SubsystemGui::m_photoButtonWidget
    IL_0189:  ldarg.0
    IL_018a:  ldarg.0
    IL_018b:  ldfld      class Game.SubsystemGameInfo Game.SubsystemGui::m_subsystemGameInfo
    IL_0190:  callvirt   instance class Game.GameWidget Game.SubsystemGameInfo::get_GameWidget()
    IL_0195:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_019a:  ldstr      "LightningButton"
    IL_019f:  ldc.i4.1
    IL_01a0:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_01a5:  stfld      class Game.ButtonWidget Game.SubsystemGui::m_lightningButtonWidget
    IL_01aa:  ldarg.0
    IL_01ab:  ldarg.0
    IL_01ac:  ldfld      class Game.SubsystemGameInfo Game.SubsystemGui::m_subsystemGameInfo
    IL_01b1:  callvirt   instance class Game.GameWidget Game.SubsystemGameInfo::get_GameWidget()
    IL_01b6:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_01bb:  ldstr      "TimeOfDayButton"
    IL_01c0:  ldc.i4.1
    IL_01c1:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_01c6:  stfld      class Game.ButtonWidget Game.SubsystemGui::m_timeOfDayButtonWidget
    IL_01cb:  ldarg.0
    IL_01cc:  ldarg.0
    IL_01cd:  ldfld      class Game.SubsystemGameInfo Game.SubsystemGui::m_subsystemGameInfo
    IL_01d2:  callvirt   instance class Game.GameWidget Game.SubsystemGameInfo::get_GameWidget()
    IL_01d7:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_01dc:  ldstr      "CameraButton"
    IL_01e1:  ldc.i4.1
    IL_01e2:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_01e7:  stfld      class Game.ButtonWidget Game.SubsystemGui::m_cameraButtonWidget
    IL_01ec:  ldarg.0
    IL_01ed:  ldarg.0
    IL_01ee:  ldfld      class Game.SubsystemGameInfo Game.SubsystemGui::m_subsystemGameInfo
    IL_01f3:  callvirt   instance class Game.GameWidget Game.SubsystemGameInfo::get_GameWidget()
    IL_01f8:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_01fd:  ldstr      "CreativeFlyButton"
    IL_0202:  ldc.i4.1
    IL_0203:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_0208:  stfld      class Game.ButtonWidget Game.SubsystemGui::m_creativeFlyButtonWidget
    IL_020d:  ldarg.0
    IL_020e:  ldarg.0
    IL_020f:  ldfld      class Game.SubsystemGameInfo Game.SubsystemGui::m_subsystemGameInfo
    IL_0214:  callvirt   instance class Game.GameWidget Game.SubsystemGameInfo::get_GameWidget()
    IL_0219:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_021e:  ldstr      "SneakButton"
    IL_0223:  ldc.i4.1
    IL_0224:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_0229:  stfld      class Game.ButtonWidget Game.SubsystemGui::m_sneakButtonWidget
    IL_022e:  ldarg.0
    IL_022f:  ldarg.0
    IL_0230:  ldfld      class Game.SubsystemGameInfo Game.SubsystemGui::m_subsystemGameInfo
    IL_0235:  callvirt   instance class Game.GameWidget Game.SubsystemGameInfo::get_GameWidget()
    IL_023a:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_023f:  ldstr      "MountButton"
    IL_0244:  ldc.i4.1
    IL_0245:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_024a:  stfld      class Game.ButtonWidget Game.SubsystemGui::m_mountButtonWidget
    IL_024f:  ldarg.0
    IL_0250:  ldarg.0
    IL_0251:  ldfld      class Game.SubsystemGameInfo Game.SubsystemGui::m_subsystemGameInfo
    IL_0256:  callvirt   instance class Game.GameWidget Game.SubsystemGameInfo::get_GameWidget()
    IL_025b:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0260:  ldstr      "EditItemButton"
    IL_0265:  ldc.i4.1
    IL_0266:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_026b:  stfld      class Game.ButtonWidget Game.SubsystemGui::m_editItemButton
    IL_0270:  ldarg.0
    IL_0271:  ldarg.0
    IL_0272:  ldfld      class Game.SubsystemGameInfo Game.SubsystemGui::m_subsystemGameInfo
    IL_0277:  callvirt   instance class Game.GameWidget Game.SubsystemGameInfo::get_GameWidget()
    IL_027c:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0281:  ldstr      "Move"
    IL_0286:  ldc.i4.1
    IL_0287:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.TouchInputWidget>(string,
                                                                                               bool)
    IL_028c:  call       instance void Game.SubsystemGui::set_MoveWidget(class Game.TouchInputWidget)
    IL_0291:  ldarg.0
    IL_0292:  ldarg.0
    IL_0293:  ldfld      class Game.SubsystemGameInfo Game.SubsystemGui::m_subsystemGameInfo
    IL_0298:  callvirt   instance class Game.GameWidget Game.SubsystemGameInfo::get_GameWidget()
    IL_029d:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_02a2:  ldstr      "MoveRose"
    IL_02a7:  ldc.i4.1
    IL_02a8:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.MoveRoseWidget>(string,
                                                                                             bool)
    IL_02ad:  call       instance void Game.SubsystemGui::set_MoveRoseWidget(class Game.MoveRoseWidget)
    IL_02b2:  ldarg.0
    IL_02b3:  ldarg.0
    IL_02b4:  ldfld      class Game.SubsystemGameInfo Game.SubsystemGui::m_subsystemGameInfo
    IL_02b9:  callvirt   instance class Game.GameWidget Game.SubsystemGameInfo::get_GameWidget()
    IL_02be:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_02c3:  ldstr      "Look"
    IL_02c8:  ldc.i4.1
    IL_02c9:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.TouchInputWidget>(string,
                                                                                               bool)
    IL_02ce:  call       instance void Game.SubsystemGui::set_LookWidget(class Game.TouchInputWidget)
    IL_02d3:  ldarg.0
    IL_02d4:  ldarg.0
    IL_02d5:  ldfld      class Game.SubsystemGameInfo Game.SubsystemGui::m_subsystemGameInfo
    IL_02da:  callvirt   instance class Game.GameWidget Game.SubsystemGameInfo::get_GameWidget()
    IL_02df:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_02e4:  ldstr      "View"
    IL_02e9:  ldc.i4.1
    IL_02ea:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.TouchInputWidget>(string,
                                                                                               bool)
    IL_02ef:  call       instance void Game.SubsystemGui::set_ViewWidget(class Game.TouchInputWidget)
    IL_02f4:  ldarg.0
    IL_02f5:  ldarg.0
    IL_02f6:  ldfld      class Game.SubsystemGameInfo Game.SubsystemGui::m_subsystemGameInfo
    IL_02fb:  callvirt   instance class Game.GameWidget Game.SubsystemGameInfo::get_GameWidget()
    IL_0300:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0305:  ldstr      "HealthBar"
    IL_030a:  ldc.i4.1
    IL_030b:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ValueBarWidget>(string,
                                                                                             bool)
    IL_0310:  call       instance void Game.SubsystemGui::set_HealthBarWidget(class Game.ValueBarWidget)
    IL_0315:  ldarg.0
    IL_0316:  ldarg.0
    IL_0317:  ldfld      class Game.SubsystemGameInfo Game.SubsystemGui::m_subsystemGameInfo
    IL_031c:  callvirt   instance class Game.GameWidget Game.SubsystemGameInfo::get_GameWidget()
    IL_0321:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0326:  ldstr      "TemperatureBar"
    IL_032b:  ldc.i4.1
    IL_032c:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ValueBarWidget>(string,
                                                                                             bool)
    IL_0331:  call       instance void Game.SubsystemGui::set_TemperatureBarWidget(class Game.ValueBarWidget)
    IL_0336:  ldarg.0
    IL_0337:  ldarg.0
    IL_0338:  ldfld      class Game.SubsystemGameInfo Game.SubsystemGui::m_subsystemGameInfo
    IL_033d:  callvirt   instance class Game.GameWidget Game.SubsystemGameInfo::get_GameWidget()
    IL_0342:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0347:  ldstr      "FoodBar"
    IL_034c:  ldc.i4.1
    IL_034d:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ValueBarWidget>(string,
                                                                                             bool)
    IL_0352:  call       instance void Game.SubsystemGui::set_FoodBarWidget(class Game.ValueBarWidget)
    IL_0357:  ldarg.0
    IL_0358:  ldarg.0
    IL_0359:  ldfld      class Game.SubsystemGameInfo Game.SubsystemGui::m_subsystemGameInfo
    IL_035e:  callvirt   instance class Game.GameWidget Game.SubsystemGameInfo::get_GameWidget()
    IL_0363:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0368:  ldstr      "ModalPanelContainer"
    IL_036d:  ldc.i4.1
    IL_036e:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ContainerWidget>(string,
                                                                                              bool)
    IL_0373:  stfld      class Game.ContainerWidget Game.SubsystemGui::m_modalPanelContainerWidget
    IL_0378:  ldarg.0
    IL_0379:  ldarg.0
    IL_037a:  ldfld      class Game.SubsystemGameInfo Game.SubsystemGui::m_subsystemGameInfo
    IL_037f:  callvirt   instance class Game.GameWidget Game.SubsystemGameInfo::get_GameWidget()
    IL_0384:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0389:  ldstr      "ControlsContainer"
    IL_038e:  ldc.i4.1
    IL_038f:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ContainerWidget>(string,
                                                                                              bool)
    IL_0394:  stfld      class Game.ContainerWidget Game.SubsystemGui::m_controlsContainerWidget
    IL_0399:  ldarg.0
    IL_039a:  ldarg.0
    IL_039b:  ldfld      class Game.SubsystemGameInfo Game.SubsystemGui::m_subsystemGameInfo
    IL_03a0:  callvirt   instance class Game.GameWidget Game.SubsystemGameInfo::get_GameWidget()
    IL_03a5:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_03aa:  ldstr      "LeftControlsContainer"
    IL_03af:  ldc.i4.1
    IL_03b0:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ContainerWidget>(string,
                                                                                              bool)
    IL_03b5:  stfld      class Game.ContainerWidget Game.SubsystemGui::m_leftControlsContainerWidget
    IL_03ba:  ldarg.0
    IL_03bb:  ldarg.0
    IL_03bc:  ldfld      class Game.SubsystemGameInfo Game.SubsystemGui::m_subsystemGameInfo
    IL_03c1:  callvirt   instance class Game.GameWidget Game.SubsystemGameInfo::get_GameWidget()
    IL_03c6:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_03cb:  ldstr      "RightControlsContainer"
    IL_03d0:  ldc.i4.1
    IL_03d1:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ContainerWidget>(string,
                                                                                              bool)
    IL_03d6:  stfld      class Game.ContainerWidget Game.SubsystemGui::m_rightControlsContainerWidget
    IL_03db:  ldarg.0
    IL_03dc:  ldarg.0
    IL_03dd:  ldfld      class Game.SubsystemGameInfo Game.SubsystemGui::m_subsystemGameInfo
    IL_03e2:  callvirt   instance class Game.GameWidget Game.SubsystemGameInfo::get_GameWidget()
    IL_03e7:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_03ec:  ldstr      "MoveContainer"
    IL_03f1:  ldc.i4.1
    IL_03f2:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ContainerWidget>(string,
                                                                                              bool)
    IL_03f7:  stfld      class Game.ContainerWidget Game.SubsystemGui::m_moveContainerWidget
    IL_03fc:  ldarg.0
    IL_03fd:  ldarg.0
    IL_03fe:  ldfld      class Game.SubsystemGameInfo Game.SubsystemGui::m_subsystemGameInfo
    IL_0403:  callvirt   instance class Game.GameWidget Game.SubsystemGameInfo::get_GameWidget()
    IL_0408:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_040d:  ldstr      "LookContainer"
    IL_0412:  ldc.i4.1
    IL_0413:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ContainerWidget>(string,
                                                                                              bool)
    IL_0418:  stfld      class Game.ContainerWidget Game.SubsystemGui::m_lookContainerWidget
    IL_041d:  ldarg.0
    IL_041e:  ldarg.0
    IL_041f:  ldfld      class Game.SubsystemGameInfo Game.SubsystemGui::m_subsystemGameInfo
    IL_0424:  callvirt   instance class Game.GameWidget Game.SubsystemGameInfo::get_GameWidget()
    IL_0429:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_042e:  ldstr      "MoveRectangle"
    IL_0433:  ldc.i4.1
    IL_0434:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.RectangleWidget>(string,
                                                                                              bool)
    IL_0439:  stfld      class Game.RectangleWidget Game.SubsystemGui::m_moveRectangleWidget
    IL_043e:  ldarg.0
    IL_043f:  ldarg.0
    IL_0440:  ldfld      class Game.SubsystemGameInfo Game.SubsystemGui::m_subsystemGameInfo
    IL_0445:  callvirt   instance class Game.GameWidget Game.SubsystemGameInfo::get_GameWidget()
    IL_044a:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_044f:  ldstr      "LookRectangle"
    IL_0454:  ldc.i4.1
    IL_0455:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.RectangleWidget>(string,
                                                                                              bool)
    IL_045a:  stfld      class Game.RectangleWidget Game.SubsystemGui::m_lookRectangleWidget
    IL_045f:  ldarg.0
    IL_0460:  ldarg.0
    IL_0461:  ldfld      class Game.SubsystemGameInfo Game.SubsystemGui::m_subsystemGameInfo
    IL_0466:  callvirt   instance class Game.GameWidget Game.SubsystemGameInfo::get_GameWidget()
    IL_046b:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0470:  ldstr      "MoveRectangleContainer"
    IL_0475:  ldc.i4.1
    IL_0476:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ContainerWidget>(string,
                                                                                              bool)
    IL_047b:  stfld      class Game.ContainerWidget Game.SubsystemGui::m_moveRectangleContainerWidget
    IL_0480:  ldarg.0
    IL_0481:  ldarg.0
    IL_0482:  ldfld      class Game.SubsystemGameInfo Game.SubsystemGui::m_subsystemGameInfo
    IL_0487:  callvirt   instance class Game.GameWidget Game.SubsystemGameInfo::get_GameWidget()
    IL_048c:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0491:  ldstr      "LookRectangleContainer"
    IL_0496:  ldc.i4.1
    IL_0497:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ContainerWidget>(string,
                                                                                              bool)
    IL_049c:  stfld      class Game.ContainerWidget Game.SubsystemGui::m_lookRectangleContainerWidget
    IL_04a1:  ldarg.0
    IL_04a2:  ldarg.0
    IL_04a3:  ldfld      class Game.SubsystemGameInfo Game.SubsystemGui::m_subsystemGameInfo
    IL_04a8:  callvirt   instance class Game.GameWidget Game.SubsystemGameInfo::get_GameWidget()
    IL_04ad:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_04b2:  ldstr      "MoveRectangle"
    IL_04b7:  ldc.i4.1
    IL_04b8:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.RectangleWidget>(string,
                                                                                              bool)
    IL_04bd:  stfld      class Game.RectangleWidget Game.SubsystemGui::m_moveRectangleWidget
    IL_04c2:  ldarg.0
    IL_04c3:  ldarg.0
    IL_04c4:  ldfld      class Game.SubsystemGameInfo Game.SubsystemGui::m_subsystemGameInfo
    IL_04c9:  callvirt   instance class Game.GameWidget Game.SubsystemGameInfo::get_GameWidget()
    IL_04ce:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_04d3:  ldstr      "LookRectangle"
    IL_04d8:  ldc.i4.1
    IL_04d9:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.RectangleWidget>(string,
                                                                                              bool)
    IL_04de:  stfld      class Game.RectangleWidget Game.SubsystemGui::m_lookRectangleWidget
    IL_04e3:  ldarg.0
    IL_04e4:  ldarg.0
    IL_04e5:  ldfld      class Game.SubsystemGameInfo Game.SubsystemGui::m_subsystemGameInfo
    IL_04ea:  callvirt   instance class Game.GameWidget Game.SubsystemGameInfo::get_GameWidget()
    IL_04ef:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_04f4:  ldstr      "MovePadContainer"
    IL_04f9:  ldc.i4.1
    IL_04fa:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ContainerWidget>(string,
                                                                                              bool)
    IL_04ff:  stfld      class Game.ContainerWidget Game.SubsystemGui::m_movePadContainerWidget
    IL_0504:  ldarg.0
    IL_0505:  ldarg.0
    IL_0506:  ldfld      class Game.SubsystemGameInfo Game.SubsystemGui::m_subsystemGameInfo
    IL_050b:  callvirt   instance class Game.GameWidget Game.SubsystemGameInfo::get_GameWidget()
    IL_0510:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0515:  ldstr      "LookPadContainer"
    IL_051a:  ldc.i4.1
    IL_051b:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ContainerWidget>(string,
                                                                                              bool)
    IL_0520:  stfld      class Game.ContainerWidget Game.SubsystemGui::m_lookPadContainerWidget
    IL_0525:  ldarg.0
    IL_0526:  ldarg.0
    IL_0527:  ldfld      class Game.SubsystemGameInfo Game.SubsystemGui::m_subsystemGameInfo
    IL_052c:  callvirt   instance class Game.GameWidget Game.SubsystemGameInfo::get_GameWidget()
    IL_0531:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0536:  ldstr      "MoveButtonsContainer"
    IL_053b:  ldc.i4.1
    IL_053c:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ContainerWidget>(string,
                                                                                              bool)
    IL_0541:  stfld      class Game.ContainerWidget Game.SubsystemGui::m_moveButtonsContainerWidget
    IL_0546:  ldarg.0
    IL_0547:  ldarg.0
    IL_0548:  ldfld      class Game.SubsystemGameInfo Game.SubsystemGui::m_subsystemGameInfo
    IL_054d:  callvirt   instance class Game.GameWidget Game.SubsystemGameInfo::get_GameWidget()
    IL_0552:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0557:  ldstr      "ShortInventory"
    IL_055c:  ldc.i4.1
    IL_055d:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ShortInventoryWidget>(string,
                                                                                                   bool)
    IL_0562:  stfld      class Game.ShortInventoryWidget Game.SubsystemGui::m_shortInventoryWidget
    IL_0567:  ldarg.0
    IL_0568:  ldarg.0
    IL_0569:  ldfld      class Game.SubsystemGameInfo Game.SubsystemGui::m_subsystemGameInfo
    IL_056e:  callvirt   instance class Game.GameWidget Game.SubsystemGameInfo::get_GameWidget()
    IL_0573:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0578:  ldstr      "LargeMessage"
    IL_057d:  ldc.i4.1
    IL_057e:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ContainerWidget>(string,
                                                                                              bool)
    IL_0583:  stfld      class Game.ContainerWidget Game.SubsystemGui::m_largeMessageWidget
    IL_0588:  ldarg.0
    IL_0589:  ldarg.0
    IL_058a:  ldfld      class Game.SubsystemGameInfo Game.SubsystemGui::m_subsystemGameInfo
    IL_058f:  callvirt   instance class Game.GameWidget Game.SubsystemGameInfo::get_GameWidget()
    IL_0594:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0599:  ldstr      "Message"
    IL_059e:  ldc.i4.1
    IL_059f:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.MessageWidget>(string,
                                                                                            bool)
    IL_05a4:  stfld      class Game.MessageWidget Game.SubsystemGui::m_messageWidget
    IL_05a9:  ldarg.0
    IL_05aa:  ldarg.1
    IL_05ab:  ldstr      "KeyboardHelpMessageShown"
    IL_05b0:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<bool>(string)
    IL_05b5:  stfld      bool Game.SubsystemGui::m_keyboardHelpMessageShown
    IL_05ba:  ret
  } // end of method SubsystemGui::Load

  .method family hidebysig virtual instance void 
          Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldstr      "KeyboardHelpMessageShown"
    IL_0006:  ldarg.0
    IL_0007:  ldfld      bool Game.SubsystemGui::m_keyboardHelpMessageShown
    IL_000c:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<bool>(string,
                                                                                                        !!0)
    IL_0011:  ret
  } // end of method SubsystemGui::Save

  .method family hidebysig virtual instance void 
          OnEntityAdded(class [EntitySystem]GameEntitySystem.Entity entity) cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  2
    .locals init (class Game.ComponentPlayer V_0)
    IL_0000:  ldarg.1
    IL_0001:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentPlayer>()
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  brfalse.s  IL_0020

    IL_000a:  ldarg.0
    IL_000b:  ldfld      class Game.ShortInventoryWidget Game.SubsystemGui::m_shortInventoryWidget
    IL_0010:  ldloc.0
    IL_0011:  callvirt   instance class Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_0016:  callvirt   instance class Game.IInventory Game.ComponentMiner::get_Inventory()
    IL_001b:  callvirt   instance void Game.ShortInventoryWidget::AssignComponents(class Game.IInventory)
    IL_0020:  ret
  } // end of method SubsystemGui::OnEntityAdded

  .method family hidebysig virtual instance void 
          OnEntityRemoved(class [EntitySystem]GameEntitySystem.Entity entity) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentPlayer>()
    IL_0006:  brfalse.s  IL_001b

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.ShortInventoryWidget Game.SubsystemGui::m_shortInventoryWidget
    IL_000e:  ldnull
    IL_000f:  callvirt   instance void Game.ShortInventoryWidget::AssignComponents(class Game.IInventory)
    IL_0014:  ldarg.0
    IL_0015:  ldnull
    IL_0016:  stfld      class Game.SubsystemGui/Message Game.SubsystemGui::m_message
    IL_001b:  ret
  } // end of method SubsystemGui::OnEntityRemoved

  .method public hidebysig virtual instance void 
          Dispose() cil managed
  {
    // 代码大小       35 (0x23)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldnull
    IL_0002:  call       instance void Game.SubsystemGui::set_ModalPanelWidget(class Game.Widget)
    IL_0007:  ldarg.0
    IL_0008:  ldnull
    IL_0009:  stfld      class Game.KeyboardHelpDialog Game.SubsystemGui::m_keyboardHelpDialog
    IL_000e:  ldarg.0
    IL_000f:  ldfld      class Game.ShortInventoryWidget Game.SubsystemGui::m_shortInventoryWidget
    IL_0014:  brfalse.s  IL_0022

    IL_0016:  ldarg.0
    IL_0017:  ldfld      class Game.ShortInventoryWidget Game.SubsystemGui::m_shortInventoryWidget
    IL_001c:  ldnull
    IL_001d:  callvirt   instance void Game.ShortInventoryWidget::AssignComponents(class Game.IInventory)
    IL_0022:  ret
  } // end of method SubsystemGui::Dispose

  .method private hidebysig instance bool 
          IsActiveSlotEditable() cil managed
  {
    // 代码大小       68 (0x44)
    .maxstack  2
    .locals init (class Game.ComponentPlayer V_0,
             class Game.IInventory V_1,
             int32 V_2,
             int32 V_3)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemPlayer Game.SubsystemGui::m_subsystemPlayer
    IL_0006:  callvirt   instance class Game.ComponentPlayer Game.SubsystemPlayer::get_ComponentPlayer()
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  brfalse.s  IL_0042

    IL_000f:  ldloc.0
    IL_0010:  callvirt   instance class Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_0015:  callvirt   instance class Game.IInventory Game.ComponentMiner::get_Inventory()
    IL_001a:  stloc.1
    IL_001b:  ldloc.1
    IL_001c:  brfalse.s  IL_0042

    IL_001e:  ldloc.1
    IL_001f:  callvirt   instance int32 Game.IInventory::get_ActiveSlotIndex()
    IL_0024:  stloc.2
    IL_0025:  ldloc.1
    IL_0026:  ldloc.2
    IL_0027:  callvirt   instance int32 Game.IInventory::GetSlotValue(int32)
    IL_002c:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0031:  stloc.3
    IL_0032:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0037:  ldloc.3
    IL_0038:  ldelem.ref
    IL_0039:  ldfld      bool Game.Block::IsEditable
    IL_003e:  brfalse.s  IL_0042

    IL_0040:  ldc.i4.1
    IL_0041:  ret

    IL_0042:  ldc.i4.0
    IL_0043:  ret
  } // end of method SubsystemGui::IsActiveSlotEditable

  .method private hidebysig instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3> 
          FindNearbyEditableCell() cil managed
  {
    // 代码大小       172 (0xac)
    .maxstack  4
    .locals init (class Game.ComponentPlayer V_0,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> V_1,
             valuetype [Engine]Engine.Point3 V_2,
             int32 V_3,
             valuetype Game.TerrainRaycastResult V_4,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3> V_5)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemPlayer Game.SubsystemGui::m_subsystemPlayer
    IL_0006:  callvirt   instance class Game.ComponentPlayer Game.SubsystemPlayer::get_ComponentPlayer()
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  brfalse    IL_00a1

    IL_0012:  ldloc.0
    IL_0013:  callvirt   instance class Game.ComponentPlayerInput Game.ComponentPlayer::get_ComponentPlayerInput()
    IL_0018:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> Game.ComponentPlayerInput::get_HighlightRaycastResult()
    IL_001d:  stloc.1
    IL_001e:  ldloca.s   V_1
    IL_0020:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_HasValue()
    IL_0025:  brfalse.s  IL_00a1

    IL_0027:  ldloca.s   V_1
    IL_0029:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_002e:  ldfld      float32 Game.TerrainRaycastResult::Distance
    IL_0033:  ldc.r4     3.
    IL_0038:  bge.un.s   IL_00a1

    IL_003a:  ldloca.s   V_1
    IL_003c:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_0041:  stloc.s    V_4
    IL_0043:  ldloca.s   V_4
    IL_0045:  ldflda     valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_004a:  call       instance valuetype [Engine]Engine.Point3 Game.CellFace::get_Point()
    IL_004f:  stloc.2
    IL_0050:  ldarg.0
    IL_0051:  ldfld      class Game.SubsystemTerrain Game.SubsystemGui::m_subsystemTerrain
    IL_0056:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_005b:  ldloc.2
    IL_005c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0061:  ldloc.2
    IL_0062:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0067:  ldloc.2
    IL_0068:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_006d:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_0072:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0077:  stloc.3
    IL_0078:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_007d:  ldloc.3
    IL_007e:  ldelem.ref
    IL_007f:  ldfld      bool Game.Block::IsEditable
    IL_0084:  brfalse.s  IL_00a1

    IL_0086:  ldloca.s   V_1
    IL_0088:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_008d:  stloc.s    V_4
    IL_008f:  ldloca.s   V_4
    IL_0091:  ldflda     valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0096:  call       instance valuetype [Engine]Engine.Point3 Game.CellFace::get_Point()
    IL_009b:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>::.ctor(!0)
    IL_00a0:  ret

    IL_00a1:  ldloca.s   V_5
    IL_00a3:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>
    IL_00a9:  ldloc.s    V_5
    IL_00ab:  ret
  } // end of method SubsystemGui::FindNearbyEditableCell

  .method private hidebysig static void  DrawBoundingBoxFace(class [Engine]Engine.Graphics.FlatBatch3D batch,
                                                             int32 face,
                                                             valuetype [Engine]Engine.Vector3 c1,
                                                             valuetype [Engine]Engine.Vector3 c2,
                                                             valuetype [Engine]Engine.Color color) cil managed
  {
    // 代码大小       1343 (0x53f)
    .maxstack  5
    IL_0000:  ldarg.1
    IL_0001:  brtrue     IL_00df

    IL_0006:  ldarg.0
    IL_0007:  ldarg.2
    IL_0008:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_000d:  ldarg.2
    IL_000e:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0013:  ldarg.3
    IL_0014:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0019:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_001e:  ldarg.3
    IL_001f:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0024:  ldarg.2
    IL_0025:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_002a:  ldarg.3
    IL_002b:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0030:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0035:  ldarg.s    color
    IL_0037:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch3D::QueueLine(valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Color)
    IL_003c:  ldarg.0
    IL_003d:  ldarg.3
    IL_003e:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0043:  ldarg.3
    IL_0044:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0049:  ldarg.3
    IL_004a:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_004f:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0054:  ldarg.2
    IL_0055:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_005a:  ldarg.3
    IL_005b:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0060:  ldarg.3
    IL_0061:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0066:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_006b:  ldarg.s    color
    IL_006d:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch3D::QueueLine(valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Color)
    IL_0072:  ldarg.0
    IL_0073:  ldarg.3
    IL_0074:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0079:  ldarg.2
    IL_007a:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_007f:  ldarg.3
    IL_0080:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0085:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_008a:  ldarg.3
    IL_008b:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0090:  ldarg.3
    IL_0091:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0096:  ldarg.3
    IL_0097:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_009c:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00a1:  ldarg.s    color
    IL_00a3:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch3D::QueueLine(valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Color)
    IL_00a8:  ldarg.0
    IL_00a9:  ldarg.2
    IL_00aa:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_00af:  ldarg.3
    IL_00b0:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_00b5:  ldarg.3
    IL_00b6:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_00bb:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00c0:  ldarg.2
    IL_00c1:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_00c6:  ldarg.2
    IL_00c7:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_00cc:  ldarg.3
    IL_00cd:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_00d2:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00d7:  ldarg.s    color
    IL_00d9:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch3D::QueueLine(valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Color)
    IL_00de:  ret

    IL_00df:  ldarg.1
    IL_00e0:  ldc.i4.1
    IL_00e1:  bne.un     IL_01bf

    IL_00e6:  ldarg.0
    IL_00e7:  ldarg.3
    IL_00e8:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_00ed:  ldarg.2
    IL_00ee:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_00f3:  ldarg.3
    IL_00f4:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_00f9:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00fe:  ldarg.3
    IL_00ff:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0104:  ldarg.3
    IL_0105:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_010a:  ldarg.3
    IL_010b:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0110:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0115:  ldarg.s    color
    IL_0117:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch3D::QueueLine(valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Color)
    IL_011c:  ldarg.0
    IL_011d:  ldarg.3
    IL_011e:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0123:  ldarg.2
    IL_0124:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0129:  ldarg.2
    IL_012a:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_012f:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0134:  ldarg.3
    IL_0135:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_013a:  ldarg.3
    IL_013b:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0140:  ldarg.2
    IL_0141:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0146:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_014b:  ldarg.s    color
    IL_014d:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch3D::QueueLine(valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Color)
    IL_0152:  ldarg.0
    IL_0153:  ldarg.3
    IL_0154:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0159:  ldarg.3
    IL_015a:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_015f:  ldarg.2
    IL_0160:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0165:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_016a:  ldarg.3
    IL_016b:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0170:  ldarg.3
    IL_0171:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0176:  ldarg.3
    IL_0177:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_017c:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0181:  ldarg.s    color
    IL_0183:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch3D::QueueLine(valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Color)
    IL_0188:  ldarg.0
    IL_0189:  ldarg.3
    IL_018a:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_018f:  ldarg.2
    IL_0190:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0195:  ldarg.2
    IL_0196:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_019b:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_01a0:  ldarg.3
    IL_01a1:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_01a6:  ldarg.2
    IL_01a7:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_01ac:  ldarg.3
    IL_01ad:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_01b2:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_01b7:  ldarg.s    color
    IL_01b9:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch3D::QueueLine(valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Color)
    IL_01be:  ret

    IL_01bf:  ldarg.1
    IL_01c0:  ldc.i4.2
    IL_01c1:  bne.un     IL_029f

    IL_01c6:  ldarg.0
    IL_01c7:  ldarg.2
    IL_01c8:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_01cd:  ldarg.2
    IL_01ce:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_01d3:  ldarg.2
    IL_01d4:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_01d9:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_01de:  ldarg.3
    IL_01df:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_01e4:  ldarg.2
    IL_01e5:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_01ea:  ldarg.2
    IL_01eb:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_01f0:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_01f5:  ldarg.s    color
    IL_01f7:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch3D::QueueLine(valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Color)
    IL_01fc:  ldarg.0
    IL_01fd:  ldarg.3
    IL_01fe:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0203:  ldarg.2
    IL_0204:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0209:  ldarg.2
    IL_020a:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_020f:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0214:  ldarg.3
    IL_0215:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_021a:  ldarg.3
    IL_021b:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0220:  ldarg.2
    IL_0221:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0226:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_022b:  ldarg.s    color
    IL_022d:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch3D::QueueLine(valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Color)
    IL_0232:  ldarg.0
    IL_0233:  ldarg.3
    IL_0234:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0239:  ldarg.3
    IL_023a:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_023f:  ldarg.2
    IL_0240:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0245:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_024a:  ldarg.2
    IL_024b:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0250:  ldarg.3
    IL_0251:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0256:  ldarg.2
    IL_0257:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_025c:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0261:  ldarg.s    color
    IL_0263:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch3D::QueueLine(valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Color)
    IL_0268:  ldarg.0
    IL_0269:  ldarg.2
    IL_026a:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_026f:  ldarg.3
    IL_0270:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0275:  ldarg.2
    IL_0276:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_027b:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0280:  ldarg.2
    IL_0281:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0286:  ldarg.2
    IL_0287:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_028c:  ldarg.2
    IL_028d:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0292:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0297:  ldarg.s    color
    IL_0299:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch3D::QueueLine(valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Color)
    IL_029e:  ret

    IL_029f:  ldarg.1
    IL_02a0:  ldc.i4.3
    IL_02a1:  bne.un     IL_037f

    IL_02a6:  ldarg.0
    IL_02a7:  ldarg.2
    IL_02a8:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_02ad:  ldarg.3
    IL_02ae:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_02b3:  ldarg.3
    IL_02b4:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_02b9:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_02be:  ldarg.2
    IL_02bf:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_02c4:  ldarg.2
    IL_02c5:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_02ca:  ldarg.3
    IL_02cb:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_02d0:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_02d5:  ldarg.s    color
    IL_02d7:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch3D::QueueLine(valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Color)
    IL_02dc:  ldarg.0
    IL_02dd:  ldarg.2
    IL_02de:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_02e3:  ldarg.3
    IL_02e4:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_02e9:  ldarg.2
    IL_02ea:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_02ef:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_02f4:  ldarg.2
    IL_02f5:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_02fa:  ldarg.2
    IL_02fb:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0300:  ldarg.2
    IL_0301:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0306:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_030b:  ldarg.s    color
    IL_030d:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch3D::QueueLine(valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Color)
    IL_0312:  ldarg.0
    IL_0313:  ldarg.2
    IL_0314:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0319:  ldarg.2
    IL_031a:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_031f:  ldarg.2
    IL_0320:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0325:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_032a:  ldarg.2
    IL_032b:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0330:  ldarg.2
    IL_0331:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0336:  ldarg.3
    IL_0337:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_033c:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0341:  ldarg.s    color
    IL_0343:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch3D::QueueLine(valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Color)
    IL_0348:  ldarg.0
    IL_0349:  ldarg.2
    IL_034a:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_034f:  ldarg.3
    IL_0350:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0355:  ldarg.2
    IL_0356:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_035b:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0360:  ldarg.2
    IL_0361:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0366:  ldarg.3
    IL_0367:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_036c:  ldarg.3
    IL_036d:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0372:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0377:  ldarg.s    color
    IL_0379:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch3D::QueueLine(valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Color)
    IL_037e:  ret

    IL_037f:  ldarg.1
    IL_0380:  ldc.i4.4
    IL_0381:  bne.un     IL_045f

    IL_0386:  ldarg.0
    IL_0387:  ldarg.3
    IL_0388:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_038d:  ldarg.3
    IL_038e:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0393:  ldarg.3
    IL_0394:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0399:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_039e:  ldarg.2
    IL_039f:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_03a4:  ldarg.3
    IL_03a5:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_03aa:  ldarg.3
    IL_03ab:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_03b0:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_03b5:  ldarg.s    color
    IL_03b7:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch3D::QueueLine(valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Color)
    IL_03bc:  ldarg.0
    IL_03bd:  ldarg.3
    IL_03be:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_03c3:  ldarg.3
    IL_03c4:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_03c9:  ldarg.2
    IL_03ca:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_03cf:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_03d4:  ldarg.2
    IL_03d5:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_03da:  ldarg.3
    IL_03db:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_03e0:  ldarg.2
    IL_03e1:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_03e6:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_03eb:  ldarg.s    color
    IL_03ed:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch3D::QueueLine(valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Color)
    IL_03f2:  ldarg.0
    IL_03f3:  ldarg.2
    IL_03f4:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_03f9:  ldarg.3
    IL_03fa:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_03ff:  ldarg.2
    IL_0400:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0405:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_040a:  ldarg.2
    IL_040b:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0410:  ldarg.3
    IL_0411:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0416:  ldarg.3
    IL_0417:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_041c:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0421:  ldarg.s    color
    IL_0423:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch3D::QueueLine(valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Color)
    IL_0428:  ldarg.0
    IL_0429:  ldarg.3
    IL_042a:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_042f:  ldarg.3
    IL_0430:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0435:  ldarg.2
    IL_0436:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_043b:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0440:  ldarg.3
    IL_0441:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0446:  ldarg.3
    IL_0447:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_044c:  ldarg.3
    IL_044d:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0452:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0457:  ldarg.s    color
    IL_0459:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch3D::QueueLine(valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Color)
    IL_045e:  ret

    IL_045f:  ldarg.1
    IL_0460:  ldc.i4.5
    IL_0461:  bne.un     IL_053e

    IL_0466:  ldarg.0
    IL_0467:  ldarg.2
    IL_0468:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_046d:  ldarg.2
    IL_046e:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0473:  ldarg.3
    IL_0474:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0479:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_047e:  ldarg.3
    IL_047f:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0484:  ldarg.2
    IL_0485:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_048a:  ldarg.3
    IL_048b:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0490:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0495:  ldarg.s    color
    IL_0497:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch3D::QueueLine(valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Color)
    IL_049c:  ldarg.0
    IL_049d:  ldarg.2
    IL_049e:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_04a3:  ldarg.2
    IL_04a4:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_04a9:  ldarg.2
    IL_04aa:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_04af:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_04b4:  ldarg.3
    IL_04b5:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_04ba:  ldarg.2
    IL_04bb:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_04c0:  ldarg.2
    IL_04c1:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_04c6:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_04cb:  ldarg.s    color
    IL_04cd:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch3D::QueueLine(valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Color)
    IL_04d2:  ldarg.0
    IL_04d3:  ldarg.2
    IL_04d4:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_04d9:  ldarg.2
    IL_04da:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_04df:  ldarg.2
    IL_04e0:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_04e5:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_04ea:  ldarg.2
    IL_04eb:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_04f0:  ldarg.2
    IL_04f1:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_04f6:  ldarg.3
    IL_04f7:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_04fc:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0501:  ldarg.s    color
    IL_0503:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch3D::QueueLine(valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Color)
    IL_0508:  ldarg.0
    IL_0509:  ldarg.3
    IL_050a:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_050f:  ldarg.2
    IL_0510:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0515:  ldarg.2
    IL_0516:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_051b:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0520:  ldarg.3
    IL_0521:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0526:  ldarg.2
    IL_0527:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_052c:  ldarg.3
    IL_052d:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0532:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0537:  ldarg.s    color
    IL_0539:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch3D::QueueLine(valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Color)
    IL_053e:  ret
  } // end of method SubsystemGui::DrawBoundingBoxFace

  .method private hidebysig instance valuetype [Engine]Engine.BoundingBox 
          GetCellFaceBoundingBox(valuetype [Engine]Engine.Point3 point) cil managed
  {
    // 代码大小       283 (0x11b)
    .maxstack  4
    .locals init (int32 V_0,
             valuetype [Engine]Engine.BoundingBox[] V_1,
             valuetype [Engine]Engine.Vector3 V_2,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.BoundingBox> V_3,
             int32 V_4,
             valuetype [Engine]Engine.BoundingBox V_5)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.SubsystemGui::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_000b:  ldarg.1
    IL_000c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0011:  ldarg.1
    IL_0012:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0017:  ldarg.1
    IL_0018:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_001d:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_0022:  stloc.0
    IL_0023:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0028:  ldloc.0
    IL_0029:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_002e:  ldelem.ref
    IL_002f:  ldarg.0
    IL_0030:  ldfld      class Game.SubsystemTerrain Game.SubsystemGui::m_subsystemTerrain
    IL_0035:  ldloc.0
    IL_0036:  callvirt   instance valuetype [Engine]Engine.BoundingBox[] Game.Block::GetCustomCollisionBoxes(class Game.SubsystemTerrain,
                                                                                                             int32)
    IL_003b:  stloc.1
    IL_003c:  ldloca.s   V_2
    IL_003e:  ldarg.1
    IL_003f:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0044:  conv.r4
    IL_0045:  ldarg.1
    IL_0046:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_004b:  conv.r4
    IL_004c:  ldarg.1
    IL_004d:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0052:  conv.r4
    IL_0053:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0058:  ldloc.1
    IL_0059:  ldlen
    IL_005a:  brfalse    IL_0109

    IL_005f:  ldloca.s   V_3
    IL_0061:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.BoundingBox>
    IL_0067:  ldc.i4.0
    IL_0068:  stloc.s    V_4
    IL_006a:  br.s       IL_00b9

    IL_006c:  ldloc.1
    IL_006d:  ldloc.s    V_4
    IL_006f:  ldelem     [Engine]Engine.BoundingBox
    IL_0074:  ldloca.s   V_5
    IL_0076:  initobj    [Engine]Engine.BoundingBox
    IL_007c:  ldloc.s    V_5
    IL_007e:  call       bool [Engine]Engine.BoundingBox::op_Inequality(valuetype [Engine]Engine.BoundingBox,
                                                                        valuetype [Engine]Engine.BoundingBox)
    IL_0083:  brfalse.s  IL_00b3

    IL_0085:  ldloca.s   V_3
    IL_0087:  ldloca.s   V_3
    IL_0089:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.BoundingBox>::get_HasValue()
    IL_008e:  brtrue.s   IL_009a

    IL_0090:  ldloc.1
    IL_0091:  ldloc.s    V_4
    IL_0093:  ldelem     [Engine]Engine.BoundingBox
    IL_0098:  br.s       IL_00ae

    IL_009a:  ldloca.s   V_3
    IL_009c:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.BoundingBox>::get_Value()
    IL_00a1:  ldloc.1
    IL_00a2:  ldloc.s    V_4
    IL_00a4:  ldelem     [Engine]Engine.BoundingBox
    IL_00a9:  call       valuetype [Engine]Engine.BoundingBox [Engine]Engine.BoundingBox::Union(valuetype [Engine]Engine.BoundingBox,
                                                                                                valuetype [Engine]Engine.BoundingBox)
    IL_00ae:  call       instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.BoundingBox>::.ctor(!0)
    IL_00b3:  ldloc.s    V_4
    IL_00b5:  ldc.i4.1
    IL_00b6:  add
    IL_00b7:  stloc.s    V_4
    IL_00b9:  ldloc.s    V_4
    IL_00bb:  ldloc.1
    IL_00bc:  ldlen
    IL_00bd:  conv.i4
    IL_00be:  blt.s      IL_006c

    IL_00c0:  ldloca.s   V_3
    IL_00c2:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.BoundingBox>::get_HasValue()
    IL_00c7:  brtrue.s   IL_00df

    IL_00c9:  ldloca.s   V_3
    IL_00cb:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_00d0:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::One
    IL_00d5:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_00da:  call       instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.BoundingBox>::.ctor(!0)
    IL_00df:  ldloca.s   V_3
    IL_00e1:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.BoundingBox>::get_Value()
    IL_00e6:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_00eb:  ldloc.2
    IL_00ec:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00f1:  ldloca.s   V_3
    IL_00f3:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.BoundingBox>::get_Value()
    IL_00f8:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_00fd:  ldloc.2
    IL_00fe:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0103:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_0108:  ret

    IL_0109:  ldloc.2
    IL_010a:  ldloc.2
    IL_010b:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::One
    IL_0110:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0115:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_011a:  ret
  } // end of method SubsystemGui::GetCellFaceBoundingBox

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void [Engine]Engine.Graphics.PrimitivesRenderer2D::.ctor()
    IL_0006:  stfld      class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.SubsystemGui::PrimitivesRenderer2D
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void [Engine]Engine.Graphics.PrimitivesRenderer3D::.ctor()
    IL_0011:  stfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.SubsystemGui::PrimitivesRenderer3D
    IL_0016:  ldarg.0
    IL_0017:  call       instance void [EntitySystem]GameEntitySystem.Subsystem::.ctor()
    IL_001c:  ret
  } // end of method SubsystemGui::.ctor

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       20 (0x14)
    .maxstack  8
    IL_0000:  ldc.i4.1
    IL_0001:  newarr     [System.Runtime]System.Int32
    IL_0006:  dup
    IL_0007:  ldc.i4.0
    IL_0008:  ldc.i4     0x7d0
    IL_000d:  stelem.i4
    IL_000e:  stsfld     int32[] Game.SubsystemGui::m_drawOrders
    IL_0013:  ret
  } // end of method SubsystemGui::.cctor

  .method private hidebysig instance void 
          '<Update>b__87_1'(object '<obj>') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldstr      "Photo saved in pictures library"
    IL_0006:  ldc.i4.0
    IL_0007:  ldc.i4.0
    IL_0008:  call       instance void Game.SubsystemGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_000d:  ret
  } // end of method SubsystemGui::'<Update>b__87_1'

  .property instance class Game.ContainerWidget
          ControlsContainerWidget()
  {
    .get instance class Game.ContainerWidget Game.SubsystemGui::get_ControlsContainerWidget()
  } // end of property SubsystemGui::ControlsContainerWidget
  .property instance class Game.TouchInputWidget
          ViewWidget()
  {
    .get instance class Game.TouchInputWidget Game.SubsystemGui::get_ViewWidget()
    .set instance void Game.SubsystemGui::set_ViewWidget(class Game.TouchInputWidget)
  } // end of property SubsystemGui::ViewWidget
  .property instance class Game.TouchInputWidget
          MoveWidget()
  {
    .get instance class Game.TouchInputWidget Game.SubsystemGui::get_MoveWidget()
    .set instance void Game.SubsystemGui::set_MoveWidget(class Game.TouchInputWidget)
  } // end of property SubsystemGui::MoveWidget
  .property instance class Game.MoveRoseWidget
          MoveRoseWidget()
  {
    .get instance class Game.MoveRoseWidget Game.SubsystemGui::get_MoveRoseWidget()
    .set instance void Game.SubsystemGui::set_MoveRoseWidget(class Game.MoveRoseWidget)
  } // end of property SubsystemGui::MoveRoseWidget
  .property instance class Game.TouchInputWidget
          LookWidget()
  {
    .get instance class Game.TouchInputWidget Game.SubsystemGui::get_LookWidget()
    .set instance void Game.SubsystemGui::set_LookWidget(class Game.TouchInputWidget)
  } // end of property SubsystemGui::LookWidget
  .property instance class Game.ValueBarWidget
          HealthBarWidget()
  {
    .get instance class Game.ValueBarWidget Game.SubsystemGui::get_HealthBarWidget()
    .set instance void Game.SubsystemGui::set_HealthBarWidget(class Game.ValueBarWidget)
  } // end of property SubsystemGui::HealthBarWidget
  .property instance class Game.ValueBarWidget
          TemperatureBarWidget()
  {
    .get instance class Game.ValueBarWidget Game.SubsystemGui::get_TemperatureBarWidget()
    .set instance void Game.SubsystemGui::set_TemperatureBarWidget(class Game.ValueBarWidget)
  } // end of property SubsystemGui::TemperatureBarWidget
  .property instance class Game.ValueBarWidget
          FoodBarWidget()
  {
    .get instance class Game.ValueBarWidget Game.SubsystemGui::get_FoodBarWidget()
    .set instance void Game.SubsystemGui::set_FoodBarWidget(class Game.ValueBarWidget)
  } // end of property SubsystemGui::FoodBarWidget
  .property instance class Game.Widget ModalPanelWidget()
  {
    .get instance class Game.Widget Game.SubsystemGui::get_ModalPanelWidget()
    .set instance void Game.SubsystemGui::set_ModalPanelWidget(class Game.Widget)
  } // end of property SubsystemGui::ModalPanelWidget
  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.SubsystemGui::get_UpdateOrder()
  } // end of property SubsystemGui::UpdateOrder
  .property instance int32[] DrawOrders()
  {
    .get instance int32[] Game.SubsystemGui::get_DrawOrders()
  } // end of property SubsystemGui::DrawOrders
} // end of class Game.SubsystemGui