.class public auto ansi beforefieldinit Game.ComponentGui
       extends [EntitySystem]GameEntitySystem.Component
       implements Game.IUpdateable,
                  Game.IDrawable
{
  .class auto ansi nested private beforefieldinit ModalPanelAnimationData
         extends [System.Runtime]System.Object
  {
    .field public class Game.Widget NewWidget
    .field public class Game.Widget OldWidget
    .field public float32 Factor
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method ModalPanelAnimationData::.ctor

  } // end of class ModalPanelAnimationData

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

  .field private class Game.SubsystemGameInfo m_subsystemGameInfo
  .field private class Game.SubsystemAudio m_subsystemAudio
  .field private class Game.SubsystemTimeOfDay m_subsystemTimeOfDay
  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.SubsystemBlockBehaviors m_subsystemBlockBehaviors
  .field private class Game.ComponentPlayer m_componentPlayer
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
  .field private float32 m_sidePanelsFactor
  .field private class Game.ComponentGui/ModalPanelAnimationData m_modalPanelAnimationData
  .field private class Game.ComponentGui/Message m_message
  .field private valuetype Game.ComponentGui/AimingSights m_aimingSights
  .field private class Game.KeyboardHelpDialog m_keyboardHelpDialog
  .field private class Game.GamepadHelpDialog m_gamepadHelpDialog
  .field private float64 m_lastMountableCreatureSearchTime
  .field private valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3> m_nearbyEditableCell
  .field private bool m_keyboardHelpMessageShown
  .field private bool m_gamepadHelpMessageShown
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
  .field private class Game.ValueBarWidget '<FoodBarWidget>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class Game.ValueBarWidget '<TemperatureBarWidget>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class Game.LabelWidget '<LevelLabelWidget>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static int32[] m_drawOrders
  .method public hidebysig specialname instance class Game.ContainerWidget 
          get_ControlsContainerWidget() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ContainerWidget Game.ComponentGui::m_controlsContainerWidget
    IL_0006:  ret
  } // end of method ComponentGui::get_ControlsContainerWidget

  .method public hidebysig specialname instance class Game.TouchInputWidget 
          get_ViewWidget() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.TouchInputWidget Game.ComponentGui::'<ViewWidget>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentGui::get_ViewWidget

  .method private hidebysig specialname instance void 
          set_ViewWidget(class Game.TouchInputWidget 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.TouchInputWidget Game.ComponentGui::'<ViewWidget>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentGui::set_ViewWidget

  .method public hidebysig specialname instance class Game.TouchInputWidget 
          get_MoveWidget() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.TouchInputWidget Game.ComponentGui::'<MoveWidget>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentGui::get_MoveWidget

  .method private hidebysig specialname instance void 
          set_MoveWidget(class Game.TouchInputWidget 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.TouchInputWidget Game.ComponentGui::'<MoveWidget>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentGui::set_MoveWidget

  .method public hidebysig specialname instance class Game.MoveRoseWidget 
          get_MoveRoseWidget() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.MoveRoseWidget Game.ComponentGui::'<MoveRoseWidget>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentGui::get_MoveRoseWidget

  .method private hidebysig specialname instance void 
          set_MoveRoseWidget(class Game.MoveRoseWidget 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.MoveRoseWidget Game.ComponentGui::'<MoveRoseWidget>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentGui::set_MoveRoseWidget

  .method public hidebysig specialname instance class Game.TouchInputWidget 
          get_LookWidget() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.TouchInputWidget Game.ComponentGui::'<LookWidget>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentGui::get_LookWidget

  .method private hidebysig specialname instance void 
          set_LookWidget(class Game.TouchInputWidget 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.TouchInputWidget Game.ComponentGui::'<LookWidget>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentGui::set_LookWidget

  .method public hidebysig specialname instance class Game.ValueBarWidget 
          get_HealthBarWidget() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ValueBarWidget Game.ComponentGui::'<HealthBarWidget>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentGui::get_HealthBarWidget

  .method private hidebysig specialname instance void 
          set_HealthBarWidget(class Game.ValueBarWidget 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.ValueBarWidget Game.ComponentGui::'<HealthBarWidget>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentGui::set_HealthBarWidget

  .method public hidebysig specialname instance class Game.ValueBarWidget 
          get_FoodBarWidget() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ValueBarWidget Game.ComponentGui::'<FoodBarWidget>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentGui::get_FoodBarWidget

  .method private hidebysig specialname instance void 
          set_FoodBarWidget(class Game.ValueBarWidget 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.ValueBarWidget Game.ComponentGui::'<FoodBarWidget>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentGui::set_FoodBarWidget

  .method public hidebysig specialname instance class Game.ValueBarWidget 
          get_TemperatureBarWidget() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ValueBarWidget Game.ComponentGui::'<TemperatureBarWidget>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentGui::get_TemperatureBarWidget

  .method private hidebysig specialname instance void 
          set_TemperatureBarWidget(class Game.ValueBarWidget 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.ValueBarWidget Game.ComponentGui::'<TemperatureBarWidget>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentGui::set_TemperatureBarWidget

  .method public hidebysig specialname instance class Game.LabelWidget 
          get_LevelLabelWidget() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.LabelWidget Game.ComponentGui::'<LevelLabelWidget>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentGui::get_LevelLabelWidget

  .method private hidebysig specialname instance void 
          set_LevelLabelWidget(class Game.LabelWidget 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.LabelWidget Game.ComponentGui::'<LevelLabelWidget>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentGui::set_LevelLabelWidget

  .method public hidebysig instance void 
          DisplayLargeMessage(string largeText,
                              string smallText,
                              float32 duration,
                              float32 delay) cil managed
  {
    // 代码大小       48 (0x30)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.ComponentGui/Message::.ctor()
    IL_0006:  dup
    IL_0007:  ldarg.1
    IL_0008:  stfld      string Game.ComponentGui/Message::LargeText
    IL_000d:  dup
    IL_000e:  ldarg.2
    IL_000f:  stfld      string Game.ComponentGui/Message::SmallText
    IL_0014:  dup
    IL_0015:  ldarg.3
    IL_0016:  stfld      float32 Game.ComponentGui/Message::Duration
    IL_001b:  dup
    IL_001c:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_0021:  ldarg.s    delay
    IL_0023:  conv.r8
    IL_0024:  add
    IL_0025:  stfld      float64 Game.ComponentGui/Message::StartTime
    IL_002a:  stfld      class Game.ComponentGui/Message Game.ComponentGui::m_message
    IL_002f:  ret
  } // end of method ComponentGui::DisplayLargeMessage

  .method public hidebysig instance void 
          DisplaySmallMessage(string text,
                              bool blinking,
                              bool playNotificationSound) cil managed
  {
    // 代码大小       53 (0x35)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.MessageWidget Game.ComponentGui::m_messageWidget
    IL_0006:  ldarg.1
    IL_0007:  ldarg.2
    IL_0008:  callvirt   instance void Game.MessageWidget::DisplayMessage(string,
                                                                          bool)
    IL_000d:  ldarg.3
    IL_000e:  brfalse.s  IL_0034

    IL_0010:  ldarg.0
    IL_0011:  ldfld      class Game.SubsystemAudio Game.ComponentGui::m_subsystemAudio
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
  } // end of method ComponentGui::DisplaySmallMessage

  .method public hidebysig instance void 
          ShowAimingSights(valuetype [Engine]Engine.Vector3 position,
                           valuetype [Engine]Engine.Vector3 direction) cil managed
  {
    // 代码大小       37 (0x25)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldflda     valuetype Game.ComponentGui/AimingSights Game.ComponentGui::m_aimingSights
    IL_0006:  ldc.i4.1
    IL_0007:  stfld      bool Game.ComponentGui/AimingSights::IsVisible
    IL_000c:  ldarg.0
    IL_000d:  ldflda     valuetype Game.ComponentGui/AimingSights Game.ComponentGui::m_aimingSights
    IL_0012:  ldarg.1
    IL_0013:  stfld      valuetype [Engine]Engine.Vector3 Game.ComponentGui/AimingSights::Position
    IL_0018:  ldarg.0
    IL_0019:  ldflda     valuetype Game.ComponentGui/AimingSights Game.ComponentGui::m_aimingSights
    IL_001e:  ldarg.2
    IL_001f:  stfld      valuetype [Engine]Engine.Vector3 Game.ComponentGui/AimingSights::Direction
    IL_0024:  ret
  } // end of method ComponentGui::ShowAimingSights

  .method public hidebysig specialname instance class Game.Widget 
          get_ModalPanelWidget() cil managed
  {
    // 代码大小       39 (0x27)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ContainerWidget Game.ComponentGui::m_modalPanelContainerWidget
    IL_0006:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_000b:  callvirt   instance int32 Game.WidgetsList::get_Count()
    IL_0010:  ldc.i4.0
    IL_0011:  bgt.s      IL_0015

    IL_0013:  ldnull
    IL_0014:  ret

    IL_0015:  ldarg.0
    IL_0016:  ldfld      class Game.ContainerWidget Game.ComponentGui::m_modalPanelContainerWidget
    IL_001b:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0020:  ldc.i4.0
    IL_0021:  callvirt   instance class Game.Widget Game.WidgetsList::get_Item(int32)
    IL_0026:  ret
  } // end of method ComponentGui::get_ModalPanelWidget

  .method public hidebysig specialname instance void 
          set_ModalPanelWidget(class Game.Widget 'value') cil managed
  {
    // 代码大小       127 (0x7f)
    .maxstack  4
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  call       instance class Game.Widget Game.ComponentGui::get_ModalPanelWidget()
    IL_0007:  beq.s      IL_007e

    IL_0009:  ldarg.0
    IL_000a:  ldfld      class Game.ComponentGui/ModalPanelAnimationData Game.ComponentGui::m_modalPanelAnimationData
    IL_000f:  brfalse.s  IL_0017

    IL_0011:  ldarg.0
    IL_0012:  call       instance void Game.ComponentGui::EndModalPanelAnimation()
    IL_0017:  ldarg.0
    IL_0018:  newobj     instance void Game.ComponentGui/ModalPanelAnimationData::.ctor()
    IL_001d:  dup
    IL_001e:  ldarg.0
    IL_001f:  call       instance class Game.Widget Game.ComponentGui::get_ModalPanelWidget()
    IL_0024:  stfld      class Game.Widget Game.ComponentGui/ModalPanelAnimationData::OldWidget
    IL_0029:  dup
    IL_002a:  ldarg.1
    IL_002b:  stfld      class Game.Widget Game.ComponentGui/ModalPanelAnimationData::NewWidget
    IL_0030:  stfld      class Game.ComponentGui/ModalPanelAnimationData Game.ComponentGui::m_modalPanelAnimationData
    IL_0035:  ldarg.1
    IL_0036:  brfalse.s  IL_0051

    IL_0038:  ldarg.1
    IL_0039:  ldc.i4.1
    IL_003a:  callvirt   instance void Game.Widget::set_HorizontalAlignment(valuetype Game.WidgetAlignment)
    IL_003f:  ldarg.0
    IL_0040:  ldfld      class Game.ContainerWidget Game.ComponentGui::m_modalPanelContainerWidget
    IL_0045:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_004a:  ldc.i4.0
    IL_004b:  ldarg.1
    IL_004c:  callvirt   instance void Game.WidgetsList::Insert(int32,
                                                                class Game.Widget)
    IL_0051:  ldarg.0
    IL_0052:  call       instance void Game.ComponentGui::UpdateModalPanelAnimation()
    IL_0057:  ldarg.0
    IL_0058:  ldfld      class Game.ComponentPlayer Game.ComponentGui::m_componentPlayer
    IL_005d:  callvirt   instance class Game.View Game.ComponentPlayer::get_View()
    IL_0062:  callvirt   instance class Game.WidgetInput Game.View::get_Input()
    IL_0067:  callvirt   instance void Game.WidgetInput::Clear()
    IL_006c:  ldarg.0
    IL_006d:  ldfld      class Game.ComponentPlayer Game.ComponentGui::m_componentPlayer
    IL_0072:  callvirt   instance class Game.ComponentInput Game.ComponentPlayer::get_ComponentInput()
    IL_0077:  ldnull
    IL_0078:  ldc.i4.m1
    IL_0079:  callvirt   instance void Game.ComponentInput::SetSplitSourceInventoryAndSlot(class Game.IInventory,
                                                                                           int32)
    IL_007e:  ret
  } // end of method ComponentGui::set_ModalPanelWidget

  .method public hidebysig instance bool 
          IsGameMenuDialogVisible() cil managed
  {
    // 代码大小       89 (0x59)
    .maxstack  2
    .locals init (valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.Dialog> V_0,
             valuetype [Engine]Engine.ReadOnlyList`1<class Game.Dialog> V_1,
             class Game.Dialog V_2,
             bool V_3)
    IL_0000:  call       valuetype [Engine]Engine.ReadOnlyList`1<class Game.Dialog> Game.DialogsManager::get_Dialogs()
    IL_0005:  stloc.1
    IL_0006:  ldloca.s   V_1
    IL_0008:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<class Game.Dialog>::GetEnumerator()
    IL_000d:  stloc.0
    .try
    {
      IL_000e:  br.s       IL_003c

      IL_0010:  ldloca.s   V_0
      IL_0012:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.Dialog>::get_Current()
      IL_0017:  stloc.2
      IL_0018:  ldloc.2
      IL_0019:  callvirt   instance class Game.ContainerWidget Game.Widget::get_ParentWidget()
      IL_001e:  ldarg.0
      IL_001f:  ldfld      class Game.ComponentPlayer Game.ComponentGui::m_componentPlayer
      IL_0024:  callvirt   instance class Game.View Game.ComponentPlayer::get_View()
      IL_0029:  callvirt   instance class Game.GameWidget Game.View::get_GameWidget()
      IL_002e:  bne.un.s   IL_003c

      IL_0030:  ldloc.2
      IL_0031:  isinst     Game.GameMenuDialog
      IL_0036:  brfalse.s  IL_003c

      IL_0038:  ldc.i4.1
      IL_0039:  stloc.3
      IL_003a:  leave.s    IL_0057

      IL_003c:  ldloca.s   V_0
      IL_003e:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.Dialog>::MoveNext()
      IL_0043:  brtrue.s   IL_0010

      IL_0045:  leave.s    IL_0055

    }  // end .try
    finally
    {
      IL_0047:  ldloca.s   V_0
      IL_0049:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.Dialog>
      IL_004f:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0054:  endfinally
    }  // end handler
    IL_0055:  ldc.i4.0
    IL_0056:  ret

    IL_0057:  ldloc.3
    IL_0058:  ret
  } // end of method ComponentGui::IsGameMenuDialogVisible

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method ComponentGui::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.ComponentGui::HandleInput()
    IL_0006:  ldarg.0
    IL_0007:  call       instance void Game.ComponentGui::UpdateWidgets()
    IL_000c:  ret
  } // end of method ComponentGui::Update

  .method public hidebysig newslot specialname virtual final 
          instance int32[]  get_DrawOrders() cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     int32[] Game.ComponentGui::m_drawOrders
    IL_0005:  ret
  } // end of method ComponentGui::get_DrawOrders

  .method public hidebysig newslot virtual final 
          instance void  Draw(class Game.Camera camera,
                              int32 drawOrder) cil managed
  {
    // 代码大小       923 (0x39b)
    .maxstack  8
    .locals init (bool V_0,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace> V_1,
             valuetype Game.CellFace V_2,
             valuetype [Engine]Engine.BoundingBox V_3,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> V_4,
             valuetype Game.CellFace V_5,
             valuetype [Engine]Engine.BoundingBox V_6,
             valuetype [Engine]Engine.BoundingBox V_7,
             valuetype [Engine]Engine.Vector2 V_8,
             class Game.Subtexture V_9,
             float32 V_10,
             valuetype [Engine]Engine.Vector3 V_11,
             valuetype [Engine]Engine.Vector3 V_12,
             valuetype [Engine]Engine.Vector2 V_13,
             class [Engine]Engine.Graphics.Texture2D V_14,
             valuetype [Engine]Engine.Vector2 V_15)
    IL_0000:  ldarg.1
    IL_0001:  callvirt   instance class Game.View Game.Camera::get_View()
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class Game.ComponentPlayer Game.ComponentGui::m_componentPlayer
    IL_000c:  callvirt   instance class Game.View Game.ComponentPlayer::get_View()
    IL_0011:  beq.s      IL_0014

    IL_0013:  ret

    IL_0014:  ldarg.0
    IL_0015:  ldfld      class Game.ComponentPlayer Game.ComponentGui::m_componentPlayer
    IL_001a:  callvirt   instance class Game.ComponentSleep Game.ComponentPlayer::get_ComponentSleep()
    IL_001f:  callvirt   instance float32 Game.ComponentSleep::get_SleepFactor()
    IL_0024:  ldc.r4     0.0
    IL_0029:  bne.un     IL_0377

    IL_002e:  ldarg.0
    IL_002f:  ldfld      class Game.ComponentPlayer Game.ComponentGui::m_componentPlayer
    IL_0034:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_0039:  callvirt   instance float32 Game.ComponentHealth::get_Health()
    IL_003e:  ldc.r4     0.0
    IL_0043:  ble.un     IL_0377

    IL_0048:  ldarg.0
    IL_0049:  ldfld      class Game.ContainerWidget Game.ComponentGui::m_controlsContainerWidget
    IL_004e:  callvirt   instance bool Game.Widget::get_IsVisible()
    IL_0053:  brfalse    IL_0377

    IL_0058:  ldarg.1
    IL_0059:  callvirt   instance bool Game.Camera::get_UsesMovementControls()
    IL_005e:  brtrue     IL_029d

    IL_0063:  ldarg.0
    IL_0064:  ldflda     valuetype Game.ComponentGui/AimingSights Game.ComponentGui::m_aimingSights
    IL_0069:  ldfld      bool Game.ComponentGui/AimingSights::IsVisible
    IL_006e:  brtrue.s   IL_0090

    IL_0070:  call       valuetype Game.LookControlMode Game.SettingsManager::get_LookControlMode()
    IL_0075:  ldc.i4.2
    IL_0076:  beq.s      IL_008d

    IL_0078:  ldarg.0
    IL_0079:  ldfld      class Game.ComponentPlayer Game.ComponentGui::m_componentPlayer
    IL_007e:  callvirt   instance class Game.ComponentInput Game.ComponentPlayer::get_ComponentInput()
    IL_0083:  callvirt   instance bool Game.ComponentInput::get_IsControlledByTouch()
    IL_0088:  ldc.i4.0
    IL_0089:  ceq
    IL_008b:  br.s       IL_0091

    IL_008d:  ldc.i4.1
    IL_008e:  br.s       IL_0091

    IL_0090:  ldc.i4.0
    IL_0091:  stloc.0
    IL_0092:  ldarg.0
    IL_0093:  ldflda     valuetype Game.ComponentGui/AimingSights Game.ComponentGui::m_aimingSights
    IL_0098:  ldfld      bool Game.ComponentGui/AimingSights::IsVisible
    IL_009d:  brtrue.s   IL_00bf

    IL_009f:  call       valuetype Game.LookControlMode Game.SettingsManager::get_LookControlMode()
    IL_00a4:  ldc.i4.2
    IL_00a5:  beq.s      IL_00bc

    IL_00a7:  ldarg.0
    IL_00a8:  ldfld      class Game.ComponentPlayer Game.ComponentGui::m_componentPlayer
    IL_00ad:  callvirt   instance class Game.ComponentInput Game.ComponentPlayer::get_ComponentInput()
    IL_00b2:  callvirt   instance bool Game.ComponentInput::get_IsControlledByTouch()
    IL_00b7:  ldc.i4.0
    IL_00b8:  ceq
    IL_00ba:  br.s       IL_00c0

    IL_00bc:  ldc.i4.1
    IL_00bd:  br.s       IL_00c0

    IL_00bf:  ldc.i4.0
    IL_00c0:  ldarg.0
    IL_00c1:  ldfld      class Game.ComponentPlayer Game.ComponentGui::m_componentPlayer
    IL_00c6:  callvirt   instance class Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_00cb:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace> Game.ComponentMiner::get_DigCellFace()
    IL_00d0:  stloc.1
    IL_00d1:  ldloca.s   V_1
    IL_00d3:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace>::get_HasValue()
    IL_00d8:  brfalse.s  IL_0135

    IL_00da:  ldarg.0
    IL_00db:  ldfld      class Game.ComponentPlayer Game.ComponentGui::m_componentPlayer
    IL_00e0:  callvirt   instance class Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_00e5:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace> Game.ComponentMiner::get_DigCellFace()
    IL_00ea:  stloc.1
    IL_00eb:  ldloca.s   V_1
    IL_00ed:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace>::get_Value()
    IL_00f2:  stloc.2
    IL_00f3:  ldarg.0
    IL_00f4:  ldloca.s   V_2
    IL_00f6:  call       instance valuetype [Engine]Engine.Point3 Game.CellFace::get_Point()
    IL_00fb:  call       instance valuetype [Engine]Engine.BoundingBox Game.ComponentGui::GetCellFaceBoundingBox(valuetype [Engine]Engine.Point3)
    IL_0100:  stloc.3
    IL_0101:  ldarg.0
    IL_0102:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.ComponentGui::PrimitivesRenderer3D
    IL_0107:  ldc.i4.m1
    IL_0108:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::None
    IL_010d:  ldnull
    IL_010e:  ldnull
    IL_010f:  callvirt   instance class [Engine]Engine.Graphics.FlatBatch3D [Engine]Engine.Graphics.PrimitivesRenderer3D::FlatBatch(int32,
                                                                                                                                    class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                    class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                    class [Engine]Engine.Graphics.BlendState)
    IL_0114:  ldloc.2
    IL_0115:  ldfld      int32 Game.CellFace::Face
    IL_011a:  ldloc.3
    IL_011b:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_0120:  ldloc.3
    IL_0121:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_0126:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Black
    IL_012b:  call       void Game.ComponentGui::DrawBoundingBoxFace(class [Engine]Engine.Graphics.FlatBatch3D,
                                                                     int32,
                                                                     valuetype [Engine]Engine.Vector3,
                                                                     valuetype [Engine]Engine.Vector3,
                                                                     valuetype [Engine]Engine.Color)
    IL_0130:  br         IL_01e9

    IL_0135:  ldloc.0
    IL_0136:  brfalse.s  IL_01aa

    IL_0138:  ldarg.0
    IL_0139:  ldfld      class Game.ComponentPlayer Game.ComponentGui::m_componentPlayer
    IL_013e:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> Game.ComponentPlayer::get_HighlightRaycastResult()
    IL_0143:  stloc.s    V_4
    IL_0145:  ldloca.s   V_4
    IL_0147:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_HasValue()
    IL_014c:  brfalse.s  IL_01aa

    IL_014e:  ldarg.0
    IL_014f:  ldfld      class Game.ComponentPlayer Game.ComponentGui::m_componentPlayer
    IL_0154:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> Game.ComponentPlayer::get_HighlightRaycastResult()
    IL_0159:  stloc.s    V_4
    IL_015b:  ldloca.s   V_4
    IL_015d:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_0162:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0167:  stloc.s    V_5
    IL_0169:  ldarg.0
    IL_016a:  ldloca.s   V_5
    IL_016c:  call       instance valuetype [Engine]Engine.Point3 Game.CellFace::get_Point()
    IL_0171:  call       instance valuetype [Engine]Engine.BoundingBox Game.ComponentGui::GetCellFaceBoundingBox(valuetype [Engine]Engine.Point3)
    IL_0176:  stloc.s    V_6
    IL_0178:  ldarg.0
    IL_0179:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.ComponentGui::PrimitivesRenderer3D
    IL_017e:  ldc.i4.m1
    IL_017f:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::None
    IL_0184:  ldnull
    IL_0185:  ldnull
    IL_0186:  callvirt   instance class [Engine]Engine.Graphics.FlatBatch3D [Engine]Engine.Graphics.PrimitivesRenderer3D::FlatBatch(int32,
                                                                                                                                    class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                    class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                    class [Engine]Engine.Graphics.BlendState)
    IL_018b:  ldloc.s    V_5
    IL_018d:  ldfld      int32 Game.CellFace::Face
    IL_0192:  ldloc.s    V_6
    IL_0194:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_0199:  ldloc.s    V_6
    IL_019b:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_01a0:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Black
    IL_01a5:  call       void Game.ComponentGui::DrawBoundingBoxFace(class [Engine]Engine.Graphics.FlatBatch3D,
                                                                     int32,
                                                                     valuetype [Engine]Engine.Vector3,
                                                                     valuetype [Engine]Engine.Vector3,
                                                                     valuetype [Engine]Engine.Color)
    IL_01aa:  ldarg.0
    IL_01ab:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3> Game.ComponentGui::m_nearbyEditableCell
    IL_01b0:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>::get_HasValue()
    IL_01b5:  brfalse.s  IL_01e9

    IL_01b7:  ldarg.0
    IL_01b8:  ldarg.0
    IL_01b9:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3> Game.ComponentGui::m_nearbyEditableCell
    IL_01be:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>::get_Value()
    IL_01c3:  call       instance valuetype [Engine]Engine.BoundingBox Game.ComponentGui::GetCellFaceBoundingBox(valuetype [Engine]Engine.Point3)
    IL_01c8:  stloc.s    V_7
    IL_01ca:  ldarg.0
    IL_01cb:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.ComponentGui::PrimitivesRenderer3D
    IL_01d0:  ldc.i4.m1
    IL_01d1:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::None
    IL_01d6:  ldnull
    IL_01d7:  ldnull
    IL_01d8:  callvirt   instance class [Engine]Engine.Graphics.FlatBatch3D [Engine]Engine.Graphics.PrimitivesRenderer3D::FlatBatch(int32,
                                                                                                                                    class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                    class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                    class [Engine]Engine.Graphics.BlendState)
    IL_01dd:  ldloc.s    V_7
    IL_01df:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Black
    IL_01e4:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch3D::QueueBoundingBox(valuetype [Engine]Engine.BoundingBox,
                                                                                             valuetype [Engine]Engine.Color)
    IL_01e9:  brfalse    IL_029d

    IL_01ee:  ldarg.1
    IL_01ef:  callvirt   instance class Game.View Game.Camera::get_View()
    IL_01f4:  callvirt   instance class Game.GameWidget Game.View::get_GameWidget()
    IL_01f9:  callvirt   instance class Game.GameViewWidget Game.GameWidget::get_GameViewWidget()
    IL_01fe:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0203:  ldc.r4     2.
    IL_0208:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Division(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_020d:  stloc.s    V_8
    IL_020f:  ldstr      "Textures/Atlas/Crosshair"
    IL_0214:  call       !!0 Game.ContentManager::Get<class Game.Subtexture>(string)
    IL_0219:  stloc.s    V_9
    IL_021b:  ldarg.0
    IL_021c:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.ComponentGui::PrimitivesRenderer2D
    IL_0221:  ldloc.s    V_9
    IL_0223:  ldfld      class [Engine]Engine.Graphics.Texture2D Game.Subtexture::Texture
    IL_0228:  ldc.i4.0
    IL_0229:  ldc.i4.0
    IL_022a:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::None
    IL_022f:  ldsfld     class [Engine]Engine.Graphics.RasterizerState [Engine]Engine.Graphics.RasterizerState::CullNoneScissor
    IL_0234:  ldsfld     class [Engine]Engine.Graphics.BlendState [Engine]Engine.Graphics.BlendState::AlphaBlend
    IL_0239:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::LinearClamp
    IL_023e:  callvirt   instance class [Engine]Engine.Graphics.TexturedBatch2D [Engine]Engine.Graphics.PrimitivesRenderer2D::TexturedBatch(class [Engine]Engine.Graphics.Texture2D,
                                                                                                                                            bool,
                                                                                                                                            int32,
                                                                                                                                            class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                            class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                            class [Engine]Engine.Graphics.BlendState,
                                                                                                                                            class [Engine]Engine.Graphics.SamplerState)
    IL_0243:  dup
    IL_0244:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture> [Engine]Engine.Graphics.BaseTexturedBatch::TriangleVertices
    IL_0249:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture>::get_Count()
    IL_024e:  pop
    IL_024f:  ldc.r4     8.
    IL_0254:  stloc.s    V_10
    IL_0256:  dup
    IL_0257:  ldloc.s    V_8
    IL_0259:  ldloc.s    V_10
    IL_025b:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_0260:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_0265:  ldloc.s    V_8
    IL_0267:  ldloc.s    V_10
    IL_0269:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_026e:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0273:  ldc.r4     0.0
    IL_0278:  ldloc.s    V_9
    IL_027a:  ldfld      valuetype [Engine]Engine.Vector2 Game.Subtexture::TopLeft
    IL_027f:  ldloc.s    V_9
    IL_0281:  ldfld      valuetype [Engine]Engine.Vector2 Game.Subtexture::BottomRight
    IL_0286:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_028b:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          float32,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Color)
    IL_0290:  ldarg.1
    IL_0291:  callvirt   instance valuetype [Engine]Engine.Matrix Game.Camera::get_WidgetMatrix()
    IL_0296:  ldc.i4.0
    IL_0297:  ldc.i4.m1
    IL_0298:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::TransformTriangles(valuetype [Engine]Engine.Matrix,
                                                                                                   int32,
                                                                                                   int32)
    IL_029d:  ldarg.0
    IL_029e:  ldflda     valuetype Game.ComponentGui/AimingSights Game.ComponentGui::m_aimingSights
    IL_02a3:  ldfld      bool Game.ComponentGui/AimingSights::IsVisible
    IL_02a8:  brfalse    IL_0377

    IL_02ad:  ldarg.1
    IL_02ae:  callvirt   instance class Game.View Game.Camera::get_View()
    IL_02b3:  callvirt   instance class Game.GameWidget Game.View::get_GameWidget()
    IL_02b8:  callvirt   instance class Game.GameViewWidget Game.GameWidget::get_GameViewWidget()
    IL_02bd:  ldarg.0
    IL_02be:  ldflda     valuetype Game.ComponentGui/AimingSights Game.ComponentGui::m_aimingSights
    IL_02c3:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentGui/AimingSights::Position
    IL_02c8:  ldarg.0
    IL_02c9:  ldflda     valuetype Game.ComponentGui/AimingSights Game.ComponentGui::m_aimingSights
    IL_02ce:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentGui/AimingSights::Direction
    IL_02d3:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_02d8:  stloc.s    V_11
    IL_02da:  ldarg.1
    IL_02db:  ldloc.s    V_11
    IL_02dd:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
    IL_02e2:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::WorldToScreen(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Matrix)
    IL_02e7:  stloc.s    V_12
    IL_02e9:  ldloca.s   V_12
    IL_02eb:  call       instance valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector3::get_XY()
    IL_02f0:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::ScreenToWidget(valuetype [Engine]Engine.Vector2)
    IL_02f5:  stloc.s    V_13
    IL_02f7:  ldstr      "Textures/Gui/Sights"
    IL_02fc:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Texture2D>(string)
    IL_0301:  stloc.s    V_14
    IL_0303:  ldloca.s   V_15
    IL_0305:  ldc.r4     64.
    IL_030a:  call       instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_030f:  ldarg.0
    IL_0310:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.ComponentGui::PrimitivesRenderer2D
    IL_0315:  ldloc.s    V_14
    IL_0317:  ldc.i4.0
    IL_0318:  ldc.i4.0
    IL_0319:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::None
    IL_031e:  ldnull
    IL_031f:  ldnull
    IL_0320:  ldnull
    IL_0321:  callvirt   instance class [Engine]Engine.Graphics.TexturedBatch2D [Engine]Engine.Graphics.PrimitivesRenderer2D::TexturedBatch(class [Engine]Engine.Graphics.Texture2D,
                                                                                                                                            bool,
                                                                                                                                            int32,
                                                                                                                                            class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                            class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                            class [Engine]Engine.Graphics.BlendState,
                                                                                                                                            class [Engine]Engine.Graphics.SamplerState)
    IL_0326:  dup
    IL_0327:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture> [Engine]Engine.Graphics.BaseTexturedBatch::TriangleVertices
    IL_032c:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture>::get_Count()
    IL_0331:  pop
    IL_0332:  dup
    IL_0333:  ldloc.s    V_13
    IL_0335:  ldloc.s    V_15
    IL_0337:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_033c:  ldloc.s    V_13
    IL_033e:  ldloc.s    V_15
    IL_0340:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0345:  ldc.r4     0.0
    IL_034a:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_034f:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::One
    IL_0354:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0359:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          float32,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Color)
    IL_035e:  ldarg.1
    IL_035f:  callvirt   instance valuetype [Engine]Engine.Matrix Game.Camera::get_WidgetMatrix()
    IL_0364:  ldc.i4.0
    IL_0365:  ldc.i4.m1
    IL_0366:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::TransformTriangles(valuetype [Engine]Engine.Matrix,
                                                                                                   int32,
                                                                                                   int32)
    IL_036b:  ldarg.0
    IL_036c:  ldflda     valuetype Game.ComponentGui/AimingSights Game.ComponentGui::m_aimingSights
    IL_0371:  ldc.i4.0
    IL_0372:  stfld      bool Game.ComponentGui/AimingSights::IsVisible
    IL_0377:  ldarg.0
    IL_0378:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.ComponentGui::PrimitivesRenderer3D
    IL_037d:  ldarg.1
    IL_037e:  callvirt   instance valuetype [Engine]Engine.Matrix Game.Camera::get_ViewProjectionMatrix()
    IL_0383:  ldc.i4.1
    IL_0384:  ldc.i4     0x7fffffff
    IL_0389:  callvirt   instance void class [Engine]Engine.Graphics.BasePrimitivesRenderer`3<class [Engine]Engine.Graphics.FlatBatch3D,class [Engine]Engine.Graphics.TexturedBatch3D,class [Engine]Engine.Graphics.FontBatch3D>::Flush(valuetype [Engine]Engine.Matrix,
                                                                                                                                                                                                                                        bool,
                                                                                                                                                                                                                                        int32)
    IL_038e:  ldarg.0
    IL_038f:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.ComponentGui::PrimitivesRenderer2D
    IL_0394:  ldc.i4.1
    IL_0395:  callvirt   instance void [Engine]Engine.Graphics.PrimitivesRenderer2D::Flush(bool)
    IL_039a:  ret
  } // end of method ComponentGui::Draw

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       1080 (0x438)
    .maxstack  4
    .locals init (class Game.GameWidget V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGameInfo>(bool)
    IL_000d:  stfld      class Game.SubsystemGameInfo Game.ComponentGui::m_subsystemGameInfo
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemAudio>(bool)
    IL_001f:  stfld      class Game.SubsystemAudio Game.ComponentGui::m_subsystemAudio
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTimeOfDay>(bool)
    IL_0031:  stfld      class Game.SubsystemTimeOfDay Game.ComponentGui::m_subsystemTimeOfDay
    IL_0036:  ldarg.0
    IL_0037:  ldarg.0
    IL_0038:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_003d:  ldc.i4.1
    IL_003e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_0043:  stfld      class Game.SubsystemTerrain Game.ComponentGui::m_subsystemTerrain
    IL_0048:  ldarg.0
    IL_0049:  ldarg.0
    IL_004a:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_004f:  ldc.i4.1
    IL_0050:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemBlockBehaviors>(bool)
    IL_0055:  stfld      class Game.SubsystemBlockBehaviors Game.ComponentGui::m_subsystemBlockBehaviors
    IL_005a:  ldarg.0
    IL_005b:  ldarg.0
    IL_005c:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0061:  ldc.i4.1
    IL_0062:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentPlayer>(bool)
    IL_0067:  stfld      class Game.ComponentPlayer Game.ComponentGui::m_componentPlayer
    IL_006c:  ldarg.0
    IL_006d:  ldfld      class Game.ComponentPlayer Game.ComponentGui::m_componentPlayer
    IL_0072:  callvirt   instance class Game.View Game.ComponentPlayer::get_View()
    IL_0077:  callvirt   instance class Game.GameWidget Game.View::get_GameWidget()
    IL_007c:  stloc.0
    IL_007d:  ldarg.0
    IL_007e:  ldloc.0
    IL_007f:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0084:  ldstr      "BackButton"
    IL_0089:  ldc.i4.1
    IL_008a:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_008f:  stfld      class Game.ButtonWidget Game.ComponentGui::m_backButtonWidget
    IL_0094:  ldarg.0
    IL_0095:  ldloc.0
    IL_0096:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_009b:  ldstr      "InventoryButton"
    IL_00a0:  ldc.i4.1
    IL_00a1:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_00a6:  stfld      class Game.ButtonWidget Game.ComponentGui::m_inventoryButtonWidget
    IL_00ab:  ldarg.0
    IL_00ac:  ldloc.0
    IL_00ad:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00b2:  ldstr      "ClothingButton"
    IL_00b7:  ldc.i4.1
    IL_00b8:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_00bd:  stfld      class Game.ButtonWidget Game.ComponentGui::m_clothingButtonWidget
    IL_00c2:  ldarg.0
    IL_00c3:  ldloc.0
    IL_00c4:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00c9:  ldstr      "MoreButton"
    IL_00ce:  ldc.i4.1
    IL_00cf:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_00d4:  stfld      class Game.ButtonWidget Game.ComponentGui::m_moreButtonWidget
    IL_00d9:  ldarg.0
    IL_00da:  ldloc.0
    IL_00db:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00e0:  ldstr      "MoreContents"
    IL_00e5:  ldc.i4.1
    IL_00e6:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.Widget>(string,
                                                                                bool)
    IL_00eb:  stfld      class Game.Widget Game.ComponentGui::m_moreContentsWidget
    IL_00f0:  ldarg.0
    IL_00f1:  ldloc.0
    IL_00f2:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00f7:  ldstr      "HelpButton"
    IL_00fc:  ldc.i4.1
    IL_00fd:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0102:  stfld      class Game.ButtonWidget Game.ComponentGui::m_helpButtonWidget
    IL_0107:  ldarg.0
    IL_0108:  ldloc.0
    IL_0109:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_010e:  ldstr      "PhotoButton"
    IL_0113:  ldc.i4.1
    IL_0114:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0119:  stfld      class Game.ButtonWidget Game.ComponentGui::m_photoButtonWidget
    IL_011e:  ldarg.0
    IL_011f:  ldloc.0
    IL_0120:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0125:  ldstr      "LightningButton"
    IL_012a:  ldc.i4.1
    IL_012b:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0130:  stfld      class Game.ButtonWidget Game.ComponentGui::m_lightningButtonWidget
    IL_0135:  ldarg.0
    IL_0136:  ldloc.0
    IL_0137:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_013c:  ldstr      "TimeOfDayButton"
    IL_0141:  ldc.i4.1
    IL_0142:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0147:  stfld      class Game.ButtonWidget Game.ComponentGui::m_timeOfDayButtonWidget
    IL_014c:  ldarg.0
    IL_014d:  ldloc.0
    IL_014e:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0153:  ldstr      "CameraButton"
    IL_0158:  ldc.i4.1
    IL_0159:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_015e:  stfld      class Game.ButtonWidget Game.ComponentGui::m_cameraButtonWidget
    IL_0163:  ldarg.0
    IL_0164:  ldloc.0
    IL_0165:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_016a:  ldstr      "CreativeFlyButton"
    IL_016f:  ldc.i4.1
    IL_0170:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0175:  stfld      class Game.ButtonWidget Game.ComponentGui::m_creativeFlyButtonWidget
    IL_017a:  ldarg.0
    IL_017b:  ldloc.0
    IL_017c:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0181:  ldstr      "SneakButton"
    IL_0186:  ldc.i4.1
    IL_0187:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_018c:  stfld      class Game.ButtonWidget Game.ComponentGui::m_sneakButtonWidget
    IL_0191:  ldarg.0
    IL_0192:  ldloc.0
    IL_0193:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0198:  ldstr      "MountButton"
    IL_019d:  ldc.i4.1
    IL_019e:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_01a3:  stfld      class Game.ButtonWidget Game.ComponentGui::m_mountButtonWidget
    IL_01a8:  ldarg.0
    IL_01a9:  ldloc.0
    IL_01aa:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_01af:  ldstr      "EditItemButton"
    IL_01b4:  ldc.i4.1
    IL_01b5:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_01ba:  stfld      class Game.ButtonWidget Game.ComponentGui::m_editItemButton
    IL_01bf:  ldarg.0
    IL_01c0:  ldloc.0
    IL_01c1:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_01c6:  ldstr      "Move"
    IL_01cb:  ldc.i4.1
    IL_01cc:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.TouchInputWidget>(string,
                                                                                          bool)
    IL_01d1:  call       instance void Game.ComponentGui::set_MoveWidget(class Game.TouchInputWidget)
    IL_01d6:  ldarg.0
    IL_01d7:  ldloc.0
    IL_01d8:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_01dd:  ldstr      "MoveRose"
    IL_01e2:  ldc.i4.1
    IL_01e3:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.MoveRoseWidget>(string,
                                                                                        bool)
    IL_01e8:  call       instance void Game.ComponentGui::set_MoveRoseWidget(class Game.MoveRoseWidget)
    IL_01ed:  ldarg.0
    IL_01ee:  ldloc.0
    IL_01ef:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_01f4:  ldstr      "Look"
    IL_01f9:  ldc.i4.1
    IL_01fa:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.TouchInputWidget>(string,
                                                                                          bool)
    IL_01ff:  call       instance void Game.ComponentGui::set_LookWidget(class Game.TouchInputWidget)
    IL_0204:  ldarg.0
    IL_0205:  ldloc.0
    IL_0206:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_020b:  ldstr      "View"
    IL_0210:  ldc.i4.1
    IL_0211:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.TouchInputWidget>(string,
                                                                                          bool)
    IL_0216:  call       instance void Game.ComponentGui::set_ViewWidget(class Game.TouchInputWidget)
    IL_021b:  ldarg.0
    IL_021c:  ldloc.0
    IL_021d:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0222:  ldstr      "HealthBar"
    IL_0227:  ldc.i4.1
    IL_0228:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ValueBarWidget>(string,
                                                                                        bool)
    IL_022d:  call       instance void Game.ComponentGui::set_HealthBarWidget(class Game.ValueBarWidget)
    IL_0232:  ldarg.0
    IL_0233:  ldloc.0
    IL_0234:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0239:  ldstr      "FoodBar"
    IL_023e:  ldc.i4.1
    IL_023f:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ValueBarWidget>(string,
                                                                                        bool)
    IL_0244:  call       instance void Game.ComponentGui::set_FoodBarWidget(class Game.ValueBarWidget)
    IL_0249:  ldarg.0
    IL_024a:  ldloc.0
    IL_024b:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0250:  ldstr      "TemperatureBar"
    IL_0255:  ldc.i4.1
    IL_0256:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ValueBarWidget>(string,
                                                                                        bool)
    IL_025b:  call       instance void Game.ComponentGui::set_TemperatureBarWidget(class Game.ValueBarWidget)
    IL_0260:  ldarg.0
    IL_0261:  ldloc.0
    IL_0262:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0267:  ldstr      "LevelLabel"
    IL_026c:  ldc.i4.1
    IL_026d:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_0272:  call       instance void Game.ComponentGui::set_LevelLabelWidget(class Game.LabelWidget)
    IL_0277:  ldarg.0
    IL_0278:  ldloc.0
    IL_0279:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_027e:  ldstr      "ModalPanelContainer"
    IL_0283:  ldc.i4.1
    IL_0284:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ContainerWidget>(string,
                                                                                         bool)
    IL_0289:  stfld      class Game.ContainerWidget Game.ComponentGui::m_modalPanelContainerWidget
    IL_028e:  ldarg.0
    IL_028f:  ldloc.0
    IL_0290:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0295:  ldstr      "ControlsContainer"
    IL_029a:  ldc.i4.1
    IL_029b:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ContainerWidget>(string,
                                                                                         bool)
    IL_02a0:  stfld      class Game.ContainerWidget Game.ComponentGui::m_controlsContainerWidget
    IL_02a5:  ldarg.0
    IL_02a6:  ldloc.0
    IL_02a7:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_02ac:  ldstr      "LeftControlsContainer"
    IL_02b1:  ldc.i4.1
    IL_02b2:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ContainerWidget>(string,
                                                                                         bool)
    IL_02b7:  stfld      class Game.ContainerWidget Game.ComponentGui::m_leftControlsContainerWidget
    IL_02bc:  ldarg.0
    IL_02bd:  ldloc.0
    IL_02be:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_02c3:  ldstr      "RightControlsContainer"
    IL_02c8:  ldc.i4.1
    IL_02c9:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ContainerWidget>(string,
                                                                                         bool)
    IL_02ce:  stfld      class Game.ContainerWidget Game.ComponentGui::m_rightControlsContainerWidget
    IL_02d3:  ldarg.0
    IL_02d4:  ldloc.0
    IL_02d5:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_02da:  ldstr      "MoveContainer"
    IL_02df:  ldc.i4.1
    IL_02e0:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ContainerWidget>(string,
                                                                                         bool)
    IL_02e5:  stfld      class Game.ContainerWidget Game.ComponentGui::m_moveContainerWidget
    IL_02ea:  ldarg.0
    IL_02eb:  ldloc.0
    IL_02ec:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_02f1:  ldstr      "LookContainer"
    IL_02f6:  ldc.i4.1
    IL_02f7:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ContainerWidget>(string,
                                                                                         bool)
    IL_02fc:  stfld      class Game.ContainerWidget Game.ComponentGui::m_lookContainerWidget
    IL_0301:  ldarg.0
    IL_0302:  ldloc.0
    IL_0303:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0308:  ldstr      "MoveRectangle"
    IL_030d:  ldc.i4.1
    IL_030e:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.RectangleWidget>(string,
                                                                                         bool)
    IL_0313:  stfld      class Game.RectangleWidget Game.ComponentGui::m_moveRectangleWidget
    IL_0318:  ldarg.0
    IL_0319:  ldloc.0
    IL_031a:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_031f:  ldstr      "LookRectangle"
    IL_0324:  ldc.i4.1
    IL_0325:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.RectangleWidget>(string,
                                                                                         bool)
    IL_032a:  stfld      class Game.RectangleWidget Game.ComponentGui::m_lookRectangleWidget
    IL_032f:  ldarg.0
    IL_0330:  ldloc.0
    IL_0331:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0336:  ldstr      "MoveRectangleContainer"
    IL_033b:  ldc.i4.1
    IL_033c:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ContainerWidget>(string,
                                                                                         bool)
    IL_0341:  stfld      class Game.ContainerWidget Game.ComponentGui::m_moveRectangleContainerWidget
    IL_0346:  ldarg.0
    IL_0347:  ldloc.0
    IL_0348:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_034d:  ldstr      "LookRectangleContainer"
    IL_0352:  ldc.i4.1
    IL_0353:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ContainerWidget>(string,
                                                                                         bool)
    IL_0358:  stfld      class Game.ContainerWidget Game.ComponentGui::m_lookRectangleContainerWidget
    IL_035d:  ldarg.0
    IL_035e:  ldloc.0
    IL_035f:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0364:  ldstr      "MoveRectangle"
    IL_0369:  ldc.i4.1
    IL_036a:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.RectangleWidget>(string,
                                                                                         bool)
    IL_036f:  stfld      class Game.RectangleWidget Game.ComponentGui::m_moveRectangleWidget
    IL_0374:  ldarg.0
    IL_0375:  ldloc.0
    IL_0376:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_037b:  ldstr      "LookRectangle"
    IL_0380:  ldc.i4.1
    IL_0381:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.RectangleWidget>(string,
                                                                                         bool)
    IL_0386:  stfld      class Game.RectangleWidget Game.ComponentGui::m_lookRectangleWidget
    IL_038b:  ldarg.0
    IL_038c:  ldloc.0
    IL_038d:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0392:  ldstr      "MovePadContainer"
    IL_0397:  ldc.i4.1
    IL_0398:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ContainerWidget>(string,
                                                                                         bool)
    IL_039d:  stfld      class Game.ContainerWidget Game.ComponentGui::m_movePadContainerWidget
    IL_03a2:  ldarg.0
    IL_03a3:  ldloc.0
    IL_03a4:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_03a9:  ldstr      "LookPadContainer"
    IL_03ae:  ldc.i4.1
    IL_03af:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ContainerWidget>(string,
                                                                                         bool)
    IL_03b4:  stfld      class Game.ContainerWidget Game.ComponentGui::m_lookPadContainerWidget
    IL_03b9:  ldarg.0
    IL_03ba:  ldloc.0
    IL_03bb:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_03c0:  ldstr      "MoveButtonsContainer"
    IL_03c5:  ldc.i4.1
    IL_03c6:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ContainerWidget>(string,
                                                                                         bool)
    IL_03cb:  stfld      class Game.ContainerWidget Game.ComponentGui::m_moveButtonsContainerWidget
    IL_03d0:  ldarg.0
    IL_03d1:  ldloc.0
    IL_03d2:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_03d7:  ldstr      "ShortInventory"
    IL_03dc:  ldc.i4.1
    IL_03dd:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ShortInventoryWidget>(string,
                                                                                              bool)
    IL_03e2:  stfld      class Game.ShortInventoryWidget Game.ComponentGui::m_shortInventoryWidget
    IL_03e7:  ldarg.0
    IL_03e8:  ldloc.0
    IL_03e9:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_03ee:  ldstr      "LargeMessage"
    IL_03f3:  ldc.i4.1
    IL_03f4:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ContainerWidget>(string,
                                                                                         bool)
    IL_03f9:  stfld      class Game.ContainerWidget Game.ComponentGui::m_largeMessageWidget
    IL_03fe:  ldarg.0
    IL_03ff:  ldloc.0
    IL_0400:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0405:  ldstr      "Message"
    IL_040a:  ldc.i4.1
    IL_040b:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.MessageWidget>(string,
                                                                                       bool)
    IL_0410:  stfld      class Game.MessageWidget Game.ComponentGui::m_messageWidget
    IL_0415:  ldarg.0
    IL_0416:  ldarg.1
    IL_0417:  ldstr      "KeyboardHelpMessageShown"
    IL_041c:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<bool>(string)
    IL_0421:  stfld      bool Game.ComponentGui::m_keyboardHelpMessageShown
    IL_0426:  ldarg.0
    IL_0427:  ldarg.1
    IL_0428:  ldstr      "GamepadHelpMessageShown"
    IL_042d:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<bool>(string)
    IL_0432:  stfld      bool Game.ComponentGui::m_gamepadHelpMessageShown
    IL_0437:  ret
  } // end of method ComponentGui::Load

  .method family hidebysig virtual instance void 
          Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.EntityToIdMap entityToIdMap) cil managed
  {
    // 代码大小       35 (0x23)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldstr      "KeyboardHelpMessageShown"
    IL_0006:  ldarg.0
    IL_0007:  ldfld      bool Game.ComponentGui::m_keyboardHelpMessageShown
    IL_000c:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<bool>(string,
                                                                                                        !!0)
    IL_0011:  ldarg.1
    IL_0012:  ldstr      "GamepadHelpMessageShown"
    IL_0017:  ldarg.0
    IL_0018:  ldfld      bool Game.ComponentGui::m_gamepadHelpMessageShown
    IL_001d:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<bool>(string,
                                                                                                        !!0)
    IL_0022:  ret
  } // end of method ComponentGui::Save

  .method family hidebysig virtual instance void 
          OnEntityAdded() cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ShortInventoryWidget Game.ComponentGui::m_shortInventoryWidget
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class Game.ComponentPlayer Game.ComponentGui::m_componentPlayer
    IL_000c:  callvirt   instance class Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_0011:  callvirt   instance class Game.IInventory Game.ComponentMiner::get_Inventory()
    IL_0016:  callvirt   instance void Game.ShortInventoryWidget::AssignComponents(class Game.IInventory)
    IL_001b:  ret
  } // end of method ComponentGui::OnEntityAdded

  .method family hidebysig virtual instance void 
          OnEntityRemoved() cil managed
  {
    // 代码大小       20 (0x14)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ShortInventoryWidget Game.ComponentGui::m_shortInventoryWidget
    IL_0006:  ldnull
    IL_0007:  callvirt   instance void Game.ShortInventoryWidget::AssignComponents(class Game.IInventory)
    IL_000c:  ldarg.0
    IL_000d:  ldnull
    IL_000e:  stfld      class Game.ComponentGui/Message Game.ComponentGui::m_message
    IL_0013:  ret
  } // end of method ComponentGui::OnEntityRemoved

  .method public hidebysig virtual instance void 
          Dispose() cil managed
  {
    // 代码大小       35 (0x23)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldnull
    IL_0002:  call       instance void Game.ComponentGui::set_ModalPanelWidget(class Game.Widget)
    IL_0007:  ldarg.0
    IL_0008:  ldnull
    IL_0009:  stfld      class Game.KeyboardHelpDialog Game.ComponentGui::m_keyboardHelpDialog
    IL_000e:  ldarg.0
    IL_000f:  ldfld      class Game.ShortInventoryWidget Game.ComponentGui::m_shortInventoryWidget
    IL_0014:  brfalse.s  IL_0022

    IL_0016:  ldarg.0
    IL_0017:  ldfld      class Game.ShortInventoryWidget Game.ComponentGui::m_shortInventoryWidget
    IL_001c:  ldnull
    IL_001d:  callvirt   instance void Game.ShortInventoryWidget::AssignComponents(class Game.IInventory)
    IL_0022:  ret
  } // end of method ComponentGui::Dispose

  .method private hidebysig instance void 
          UpdateSidePanelsAnimation() cil managed
  {
    // 代码大小       260 (0x104)
    .maxstack  5
    .locals init (float32 V_0,
             bool V_1,
             float32 V_2,
             float32 V_3)
    IL_0000:  call       float32 [Engine]Engine.Time::get_FrameDuration()
    IL_0005:  ldc.r4     0.1
    IL_000a:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_000f:  stloc.0
    IL_0010:  ldarg.0
    IL_0011:  call       instance class Game.Widget Game.ComponentGui::get_ModalPanelWidget()
    IL_0016:  brfalse.s  IL_0033

    IL_0018:  ldarg.0
    IL_0019:  ldfld      class Game.ComponentGui/ModalPanelAnimationData Game.ComponentGui::m_modalPanelAnimationData
    IL_001e:  brfalse.s  IL_0030

    IL_0020:  ldarg.0
    IL_0021:  ldfld      class Game.ComponentGui/ModalPanelAnimationData Game.ComponentGui::m_modalPanelAnimationData
    IL_0026:  ldfld      class Game.Widget Game.ComponentGui/ModalPanelAnimationData::NewWidget
    IL_002b:  ldnull
    IL_002c:  cgt.un
    IL_002e:  br.s       IL_0034

    IL_0030:  ldc.i4.1
    IL_0031:  br.s       IL_0034

    IL_0033:  ldc.i4.0
    IL_0034:  stloc.1
    IL_0035:  ldarg.0
    IL_0036:  ldfld      class Game.ComponentPlayer Game.ComponentGui::m_componentPlayer
    IL_003b:  callvirt   instance class Game.ComponentInput Game.ComponentPlayer::get_ComponentInput()
    IL_0040:  callvirt   instance bool Game.ComponentInput::get_IsControlledByTouch()
    IL_0045:  ldloc.1
    IL_0046:  or
    IL_0047:  brtrue.s   IL_004c

    IL_0049:  ldc.i4.1
    IL_004a:  br.s       IL_004d

    IL_004c:  ldc.i4.0
    IL_004d:  conv.r4
    IL_004e:  stloc.2
    IL_004f:  ldloc.2
    IL_0050:  ldarg.0
    IL_0051:  ldfld      float32 Game.ComponentGui::m_sidePanelsFactor
    IL_0056:  sub
    IL_0057:  stloc.3
    IL_0058:  ldloc.3
    IL_0059:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_005e:  ldc.r4     9.9999998e-003
    IL_0063:  ble.un.s   IL_0099

    IL_0065:  ldarg.0
    IL_0066:  ldarg.0
    IL_0067:  ldfld      float32 Game.ComponentGui::m_sidePanelsFactor
    IL_006c:  ldc.r4     12.
    IL_0071:  ldloc.3
    IL_0072:  ldc.r4     0.75
    IL_0077:  call       float32 [Engine]Engine.MathUtils::PowSign(float32,
                                                                   float32)
    IL_007c:  mul
    IL_007d:  ldloc.0
    IL_007e:  mul
    IL_007f:  ldloc.3
    IL_0080:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_0085:  neg
    IL_0086:  ldloc.3
    IL_0087:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_008c:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_0091:  add
    IL_0092:  stfld      float32 Game.ComponentGui::m_sidePanelsFactor
    IL_0097:  br.s       IL_00a0

    IL_0099:  ldarg.0
    IL_009a:  ldloc.2
    IL_009b:  stfld      float32 Game.ComponentGui::m_sidePanelsFactor
    IL_00a0:  ldarg.0
    IL_00a1:  ldfld      class Game.ContainerWidget Game.ComponentGui::m_leftControlsContainerWidget
    IL_00a6:  ldarg.0
    IL_00a7:  ldfld      class Game.ContainerWidget Game.ComponentGui::m_leftControlsContainerWidget
    IL_00ac:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_00b1:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_00b6:  ldarg.0
    IL_00b7:  ldfld      float32 Game.ComponentGui::m_sidePanelsFactor
    IL_00bc:  neg
    IL_00bd:  mul
    IL_00be:  ldc.r4     0.0
    IL_00c3:  ldc.r4     0.0
    IL_00c8:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_00cd:  callvirt   instance void Game.Widget::set_RenderTransform(valuetype [Engine]Engine.Matrix)
    IL_00d2:  ldarg.0
    IL_00d3:  ldfld      class Game.ContainerWidget Game.ComponentGui::m_rightControlsContainerWidget
    IL_00d8:  ldarg.0
    IL_00d9:  ldfld      class Game.ContainerWidget Game.ComponentGui::m_rightControlsContainerWidget
    IL_00de:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_00e3:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_00e8:  ldarg.0
    IL_00e9:  ldfld      float32 Game.ComponentGui::m_sidePanelsFactor
    IL_00ee:  mul
    IL_00ef:  ldc.r4     0.0
    IL_00f4:  ldc.r4     0.0
    IL_00f9:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_00fe:  callvirt   instance void Game.Widget::set_RenderTransform(valuetype [Engine]Engine.Matrix)
    IL_0103:  ret
  } // end of method ComponentGui::UpdateSidePanelsAnimation

  .method private hidebysig instance void 
          UpdateModalPanelAnimation() cil managed
  {
    // 代码大小       492 (0x1ec)
    .maxstack  5
    .locals init (float32 V_0,
             float32 V_1,
             float32 V_2,
             float32 V_3,
             float32 V_4,
             valuetype [Engine]Engine.Vector2 V_5,
             valuetype [Engine]Engine.Vector2 V_6)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentGui/ModalPanelAnimationData Game.ComponentGui::m_modalPanelAnimationData
    IL_0006:  dup
    IL_0007:  ldfld      float32 Game.ComponentGui/ModalPanelAnimationData::Factor
    IL_000c:  ldc.r4     6.
    IL_0011:  call       float32 [Engine]Engine.Time::get_FrameDuration()
    IL_0016:  ldc.r4     0.1
    IL_001b:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_0020:  mul
    IL_0021:  add
    IL_0022:  stfld      float32 Game.ComponentGui/ModalPanelAnimationData::Factor
    IL_0027:  ldarg.0
    IL_0028:  ldfld      class Game.ComponentGui/ModalPanelAnimationData Game.ComponentGui::m_modalPanelAnimationData
    IL_002d:  ldfld      float32 Game.ComponentGui/ModalPanelAnimationData::Factor
    IL_0032:  ldc.r4     1.
    IL_0037:  bge.un     IL_01e5

    IL_003c:  ldarg.0
    IL_003d:  ldfld      class Game.ComponentGui/ModalPanelAnimationData Game.ComponentGui::m_modalPanelAnimationData
    IL_0042:  ldfld      float32 Game.ComponentGui/ModalPanelAnimationData::Factor
    IL_0047:  stloc.0
    IL_0048:  ldc.r4     0.5
    IL_004d:  ldc.r4     0.5
    IL_0052:  ldc.r4     1.
    IL_0057:  ldloc.0
    IL_0058:  sub
    IL_0059:  ldc.r4     0.1
    IL_005e:  call       float32 [Engine]Engine.MathUtils::Pow(float32,
                                                               float32)
    IL_0063:  mul
    IL_0064:  add
    IL_0065:  stloc.1
    IL_0066:  ldc.r4     0.5
    IL_006b:  ldc.r4     0.5
    IL_0070:  ldloc.0
    IL_0071:  ldc.r4     0.1
    IL_0076:  call       float32 [Engine]Engine.MathUtils::Pow(float32,
                                                               float32)
    IL_007b:  mul
    IL_007c:  add
    IL_007d:  stloc.2
    IL_007e:  ldc.r4     1.
    IL_0083:  ldloc.0
    IL_0084:  sub
    IL_0085:  stloc.3
    IL_0086:  ldloc.0
    IL_0087:  stloc.s    V_4
    IL_0089:  ldarg.0
    IL_008a:  ldfld      class Game.ComponentGui/ModalPanelAnimationData Game.ComponentGui::m_modalPanelAnimationData
    IL_008f:  ldfld      class Game.Widget Game.ComponentGui/ModalPanelAnimationData::OldWidget
    IL_0094:  brfalse    IL_0136

    IL_0099:  ldarg.0
    IL_009a:  ldfld      class Game.ComponentGui/ModalPanelAnimationData Game.ComponentGui::m_modalPanelAnimationData
    IL_009f:  ldfld      class Game.Widget Game.ComponentGui/ModalPanelAnimationData::OldWidget
    IL_00a4:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_00a9:  stloc.s    V_5
    IL_00ab:  ldarg.0
    IL_00ac:  ldfld      class Game.ComponentGui/ModalPanelAnimationData Game.ComponentGui::m_modalPanelAnimationData
    IL_00b1:  ldfld      class Game.Widget Game.ComponentGui/ModalPanelAnimationData::OldWidget
    IL_00b6:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_00bb:  ldloc.3
    IL_00bc:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_00c1:  callvirt   instance void Game.Widget::set_ColorTransform(valuetype [Engine]Engine.Color)
    IL_00c6:  ldarg.0
    IL_00c7:  ldfld      class Game.ComponentGui/ModalPanelAnimationData Game.ComponentGui::m_modalPanelAnimationData
    IL_00cc:  ldfld      class Game.Widget Game.ComponentGui/ModalPanelAnimationData::OldWidget
    IL_00d1:  ldloc.s    V_5
    IL_00d3:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_00d8:  neg
    IL_00d9:  ldc.r4     2.
    IL_00de:  div
    IL_00df:  ldloc.s    V_5
    IL_00e1:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00e6:  neg
    IL_00e7:  ldc.r4     2.
    IL_00ec:  div
    IL_00ed:  ldc.r4     0.0
    IL_00f2:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_00f7:  ldloc.1
    IL_00f8:  ldloc.1
    IL_00f9:  ldc.r4     1.
    IL_00fe:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateScale(float32,
                                                                                            float32,
                                                                                            float32)
    IL_0103:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0108:  ldloc.s    V_5
    IL_010a:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_010f:  ldc.r4     2.
    IL_0114:  div
    IL_0115:  ldloc.s    V_5
    IL_0117:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_011c:  ldc.r4     2.
    IL_0121:  div
    IL_0122:  ldc.r4     0.0
    IL_0127:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_012c:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0131:  callvirt   instance void Game.Widget::set_RenderTransform(valuetype [Engine]Engine.Matrix)
    IL_0136:  ldarg.0
    IL_0137:  ldfld      class Game.ComponentGui/ModalPanelAnimationData Game.ComponentGui::m_modalPanelAnimationData
    IL_013c:  ldfld      class Game.Widget Game.ComponentGui/ModalPanelAnimationData::NewWidget
    IL_0141:  brfalse    IL_01eb

    IL_0146:  ldarg.0
    IL_0147:  ldfld      class Game.ComponentGui/ModalPanelAnimationData Game.ComponentGui::m_modalPanelAnimationData
    IL_014c:  ldfld      class Game.Widget Game.ComponentGui/ModalPanelAnimationData::NewWidget
    IL_0151:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0156:  stloc.s    V_6
    IL_0158:  ldarg.0
    IL_0159:  ldfld      class Game.ComponentGui/ModalPanelAnimationData Game.ComponentGui::m_modalPanelAnimationData
    IL_015e:  ldfld      class Game.Widget Game.ComponentGui/ModalPanelAnimationData::NewWidget
    IL_0163:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0168:  ldloc.s    V_4
    IL_016a:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_016f:  callvirt   instance void Game.Widget::set_ColorTransform(valuetype [Engine]Engine.Color)
    IL_0174:  ldarg.0
    IL_0175:  ldfld      class Game.ComponentGui/ModalPanelAnimationData Game.ComponentGui::m_modalPanelAnimationData
    IL_017a:  ldfld      class Game.Widget Game.ComponentGui/ModalPanelAnimationData::NewWidget
    IL_017f:  ldloc.s    V_6
    IL_0181:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0186:  neg
    IL_0187:  ldc.r4     2.
    IL_018c:  div
    IL_018d:  ldloc.s    V_6
    IL_018f:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0194:  neg
    IL_0195:  ldc.r4     2.
    IL_019a:  div
    IL_019b:  ldc.r4     0.0
    IL_01a0:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_01a5:  ldloc.2
    IL_01a6:  ldloc.2
    IL_01a7:  ldc.r4     1.
    IL_01ac:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateScale(float32,
                                                                                            float32,
                                                                                            float32)
    IL_01b1:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_01b6:  ldloc.s    V_6
    IL_01b8:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_01bd:  ldc.r4     2.
    IL_01c2:  div
    IL_01c3:  ldloc.s    V_6
    IL_01c5:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_01ca:  ldc.r4     2.
    IL_01cf:  div
    IL_01d0:  ldc.r4     0.0
    IL_01d5:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_01da:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_01df:  callvirt   instance void Game.Widget::set_RenderTransform(valuetype [Engine]Engine.Matrix)
    IL_01e4:  ret

    IL_01e5:  ldarg.0
    IL_01e6:  call       instance void Game.ComponentGui::EndModalPanelAnimation()
    IL_01eb:  ret
  } // end of method ComponentGui::UpdateModalPanelAnimation

  .method private hidebysig instance void 
          EndModalPanelAnimation() cil managed
  {
    // 代码大小       103 (0x67)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentGui/ModalPanelAnimationData Game.ComponentGui::m_modalPanelAnimationData
    IL_0006:  ldfld      class Game.Widget Game.ComponentGui/ModalPanelAnimationData::OldWidget
    IL_000b:  brfalse.s  IL_0028

    IL_000d:  ldarg.0
    IL_000e:  ldfld      class Game.ContainerWidget Game.ComponentGui::m_modalPanelContainerWidget
    IL_0013:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0018:  ldarg.0
    IL_0019:  ldfld      class Game.ComponentGui/ModalPanelAnimationData Game.ComponentGui::m_modalPanelAnimationData
    IL_001e:  ldfld      class Game.Widget Game.ComponentGui/ModalPanelAnimationData::OldWidget
    IL_0023:  callvirt   instance void Game.WidgetsList::Remove(class Game.Widget)
    IL_0028:  ldarg.0
    IL_0029:  ldfld      class Game.ComponentGui/ModalPanelAnimationData Game.ComponentGui::m_modalPanelAnimationData
    IL_002e:  ldfld      class Game.Widget Game.ComponentGui/ModalPanelAnimationData::NewWidget
    IL_0033:  brfalse.s  IL_005f

    IL_0035:  ldarg.0
    IL_0036:  ldfld      class Game.ComponentGui/ModalPanelAnimationData Game.ComponentGui::m_modalPanelAnimationData
    IL_003b:  ldfld      class Game.Widget Game.ComponentGui/ModalPanelAnimationData::NewWidget
    IL_0040:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0045:  callvirt   instance void Game.Widget::set_ColorTransform(valuetype [Engine]Engine.Color)
    IL_004a:  ldarg.0
    IL_004b:  ldfld      class Game.ComponentGui/ModalPanelAnimationData Game.ComponentGui::m_modalPanelAnimationData
    IL_0050:  ldfld      class Game.Widget Game.ComponentGui/ModalPanelAnimationData::NewWidget
    IL_0055:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
    IL_005a:  callvirt   instance void Game.Widget::set_RenderTransform(valuetype [Engine]Engine.Matrix)
    IL_005f:  ldarg.0
    IL_0060:  ldnull
    IL_0061:  stfld      class Game.ComponentGui/ModalPanelAnimationData Game.ComponentGui::m_modalPanelAnimationData
    IL_0066:  ret
  } // end of method ComponentGui::EndModalPanelAnimation

  .method private hidebysig instance void 
          UpdateWidgets() cil managed
  {
    // 代码大小       1485 (0x5cd)
    .maxstack  6
    .locals init (class Game.ComponentRider V_0,
             class Game.ComponentSleep V_1,
             class Game.ComponentInput V_2,
             class Game.WorldSettings V_3,
             valuetype Game.GameMode V_4,
             float64 V_5,
             class Game.LabelWidget V_6,
             float32 V_7)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentPlayer Game.ComponentGui::m_componentPlayer
    IL_0006:  callvirt   instance class Game.ComponentRider Game.ComponentPlayer::get_ComponentRider()
    IL_000b:  stloc.0
    IL_000c:  ldarg.0
    IL_000d:  ldfld      class Game.ComponentPlayer Game.ComponentGui::m_componentPlayer
    IL_0012:  callvirt   instance class Game.ComponentSleep Game.ComponentPlayer::get_ComponentSleep()
    IL_0017:  stloc.1
    IL_0018:  ldarg.0
    IL_0019:  ldfld      class Game.ComponentPlayer Game.ComponentGui::m_componentPlayer
    IL_001e:  callvirt   instance class Game.ComponentInput Game.ComponentPlayer::get_ComponentInput()
    IL_0023:  stloc.2
    IL_0024:  ldarg.0
    IL_0025:  ldfld      class Game.SubsystemGameInfo Game.ComponentGui::m_subsystemGameInfo
    IL_002a:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_002f:  stloc.3
    IL_0030:  ldloc.3
    IL_0031:  ldfld      valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_0036:  stloc.s    V_4
    IL_0038:  ldarg.0
    IL_0039:  call       instance void Game.ComponentGui::UpdateSidePanelsAnimation()
    IL_003e:  ldarg.0
    IL_003f:  ldfld      class Game.ComponentGui/ModalPanelAnimationData Game.ComponentGui::m_modalPanelAnimationData
    IL_0044:  brfalse.s  IL_004c

    IL_0046:  ldarg.0
    IL_0047:  call       instance void Game.ComponentGui::UpdateModalPanelAnimation()
    IL_004c:  ldarg.0
    IL_004d:  ldfld      class Game.ComponentGui/Message Game.ComponentGui::m_message
    IL_0052:  brfalse    IL_018b

    IL_0057:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_005c:  stloc.s    V_5
    IL_005e:  ldarg.0
    IL_005f:  ldfld      class Game.ContainerWidget Game.ComponentGui::m_largeMessageWidget
    IL_0064:  ldc.i4.1
    IL_0065:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_006a:  ldarg.0
    IL_006b:  ldfld      class Game.ContainerWidget Game.ComponentGui::m_largeMessageWidget
    IL_0070:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0075:  ldstr      "LargeLabel"
    IL_007a:  ldc.i4.1
    IL_007b:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_0080:  stloc.s    V_6
    IL_0082:  ldarg.0
    IL_0083:  ldfld      class Game.ContainerWidget Game.ComponentGui::m_largeMessageWidget
    IL_0088:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_008d:  ldstr      "SmallLabel"
    IL_0092:  ldc.i4.1
    IL_0093:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_0098:  ldloc.s    V_6
    IL_009a:  ldarg.0
    IL_009b:  ldfld      class Game.ComponentGui/Message Game.ComponentGui::m_message
    IL_00a0:  ldfld      string Game.ComponentGui/Message::LargeText
    IL_00a5:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_00aa:  dup
    IL_00ab:  ldarg.0
    IL_00ac:  ldfld      class Game.ComponentGui/Message Game.ComponentGui::m_message
    IL_00b1:  ldfld      string Game.ComponentGui/Message::SmallText
    IL_00b6:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_00bb:  ldloc.s    V_6
    IL_00bd:  ldarg.0
    IL_00be:  ldfld      class Game.ComponentGui/Message Game.ComponentGui::m_message
    IL_00c3:  ldfld      string Game.ComponentGui/Message::LargeText
    IL_00c8:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_00cd:  ldc.i4.0
    IL_00ce:  ceq
    IL_00d0:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_00d5:  dup
    IL_00d6:  ldarg.0
    IL_00d7:  ldfld      class Game.ComponentGui/Message Game.ComponentGui::m_message
    IL_00dc:  ldfld      string Game.ComponentGui/Message::SmallText
    IL_00e1:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_00e6:  ldc.i4.0
    IL_00e7:  ceq
    IL_00e9:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_00ee:  ldc.r8     2.
    IL_00f7:  ldloc.s    V_5
    IL_00f9:  ldarg.0
    IL_00fa:  ldfld      class Game.ComponentGui/Message Game.ComponentGui::m_message
    IL_00ff:  ldfld      float64 Game.ComponentGui/Message::StartTime
    IL_0104:  sub
    IL_0105:  mul
    IL_0106:  call       float64 [Engine]Engine.MathUtils::Saturate(float64)
    IL_010b:  ldc.r8     2.
    IL_0114:  ldarg.0
    IL_0115:  ldfld      class Game.ComponentGui/Message Game.ComponentGui::m_message
    IL_011a:  ldfld      float64 Game.ComponentGui/Message::StartTime
    IL_011f:  ldarg.0
    IL_0120:  ldfld      class Game.ComponentGui/Message Game.ComponentGui::m_message
    IL_0125:  ldfld      float32 Game.ComponentGui/Message::Duration
    IL_012a:  conv.r8
    IL_012b:  add
    IL_012c:  ldloc.s    V_5
    IL_012e:  sub
    IL_012f:  mul
    IL_0130:  call       float64 [Engine]Engine.MathUtils::Saturate(float64)
    IL_0135:  call       float64 [Engine]Engine.MathUtils::Min(float64,
                                                               float64)
    IL_013a:  conv.r4
    IL_013b:  stloc.s    V_7
    IL_013d:  ldloc.s    V_6
    IL_013f:  ldloc.s    V_7
    IL_0141:  ldloc.s    V_7
    IL_0143:  ldloc.s    V_7
    IL_0145:  ldloc.s    V_7
    IL_0147:  newobj     instance void [Engine]Engine.Color::.ctor(float32,
                                                                   float32,
                                                                   float32,
                                                                   float32)
    IL_014c:  callvirt   instance void Game.LabelWidget::set_Color(valuetype [Engine]Engine.Color)
    IL_0151:  ldloc.s    V_7
    IL_0153:  ldloc.s    V_7
    IL_0155:  ldloc.s    V_7
    IL_0157:  ldloc.s    V_7
    IL_0159:  newobj     instance void [Engine]Engine.Color::.ctor(float32,
                                                                   float32,
                                                                   float32,
                                                                   float32)
    IL_015e:  callvirt   instance void Game.LabelWidget::set_Color(valuetype [Engine]Engine.Color)
    IL_0163:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_0168:  ldarg.0
    IL_0169:  ldfld      class Game.ComponentGui/Message Game.ComponentGui::m_message
    IL_016e:  ldfld      float64 Game.ComponentGui/Message::StartTime
    IL_0173:  ldarg.0
    IL_0174:  ldfld      class Game.ComponentGui/Message Game.ComponentGui::m_message
    IL_0179:  ldfld      float32 Game.ComponentGui/Message::Duration
    IL_017e:  conv.r8
    IL_017f:  add
    IL_0180:  ble.un.s   IL_0197

    IL_0182:  ldarg.0
    IL_0183:  ldnull
    IL_0184:  stfld      class Game.ComponentGui/Message Game.ComponentGui::m_message
    IL_0189:  br.s       IL_0197

    IL_018b:  ldarg.0
    IL_018c:  ldfld      class Game.ContainerWidget Game.ComponentGui::m_largeMessageWidget
    IL_0191:  ldc.i4.0
    IL_0192:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0197:  ldarg.0
    IL_0198:  ldfld      class Game.ContainerWidget Game.ComponentGui::m_controlsContainerWidget
    IL_019d:  ldarg.0
    IL_019e:  ldfld      class Game.ComponentPlayer Game.ComponentGui::m_componentPlayer
    IL_01a3:  callvirt   instance class Game.PlayerData Game.ComponentPlayer::get_PlayerData()
    IL_01a8:  callvirt   instance bool Game.PlayerData::get_IsReadyForPlaying()
    IL_01ad:  brfalse.s  IL_01d8

    IL_01af:  ldarg.0
    IL_01b0:  ldfld      class Game.ComponentPlayer Game.ComponentGui::m_componentPlayer
    IL_01b5:  callvirt   instance class Game.View Game.ComponentPlayer::get_View()
    IL_01ba:  callvirt   instance class Game.Camera Game.View::get_ActiveCamera()
    IL_01bf:  callvirt   instance bool Game.Camera::get_IsEntityControlEnabled()
    IL_01c4:  brfalse.s  IL_01d8

    IL_01c6:  ldloc.1
    IL_01c7:  callvirt   instance float32 Game.ComponentSleep::get_SleepFactor()
    IL_01cc:  ldc.r4     0.0
    IL_01d1:  cgt.un
    IL_01d3:  ldc.i4.0
    IL_01d4:  ceq
    IL_01d6:  br.s       IL_01d9

    IL_01d8:  ldc.i4.0
    IL_01d9:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_01de:  ldarg.0
    IL_01df:  ldfld      class Game.ContainerWidget Game.ComponentGui::m_moveRectangleContainerWidget
    IL_01e4:  call       bool Game.SettingsManager::get_HideMoveLookPads()
    IL_01e9:  brtrue.s   IL_01f3

    IL_01eb:  ldloc.2
    IL_01ec:  callvirt   instance bool Game.ComponentInput::get_IsControlledByTouch()
    IL_01f1:  br.s       IL_01f4

    IL_01f3:  ldc.i4.0
    IL_01f4:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_01f9:  ldarg.0
    IL_01fa:  ldfld      class Game.ContainerWidget Game.ComponentGui::m_lookRectangleContainerWidget
    IL_01ff:  call       bool Game.SettingsManager::get_HideMoveLookPads()
    IL_0204:  brtrue.s   IL_0226

    IL_0206:  ldloc.2
    IL_0207:  callvirt   instance bool Game.ComponentInput::get_IsControlledByTouch()
    IL_020c:  brfalse.s  IL_0226

    IL_020e:  call       valuetype Game.LookControlMode Game.SettingsManager::get_LookControlMode()
    IL_0213:  ldc.i4.1
    IL_0214:  bne.un.s   IL_0223

    IL_0216:  call       valuetype Game.MoveControlMode Game.SettingsManager::get_MoveControlMode()
    IL_021b:  ldc.i4.1
    IL_021c:  ceq
    IL_021e:  ldc.i4.0
    IL_021f:  ceq
    IL_0221:  br.s       IL_0227

    IL_0223:  ldc.i4.1
    IL_0224:  br.s       IL_0227

    IL_0226:  ldc.i4.0
    IL_0227:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_022c:  ldarg.0
    IL_022d:  ldfld      class Game.ContainerWidget Game.ComponentGui::m_lookPadContainerWidget
    IL_0232:  call       valuetype Game.LookControlMode Game.SettingsManager::get_LookControlMode()
    IL_0237:  ldc.i4.2
    IL_0238:  ceq
    IL_023a:  ldc.i4.0
    IL_023b:  ceq
    IL_023d:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0242:  ldarg.0
    IL_0243:  call       instance class Game.MoveRoseWidget Game.ComponentGui::get_MoveRoseWidget()
    IL_0248:  ldloc.2
    IL_0249:  callvirt   instance bool Game.ComponentInput::get_IsControlledByTouch()
    IL_024e:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0253:  ldarg.0
    IL_0254:  ldfld      class Game.Widget Game.ComponentGui::m_moreContentsWidget
    IL_0259:  ldarg.0
    IL_025a:  ldfld      class Game.ButtonWidget Game.ComponentGui::m_moreButtonWidget
    IL_025f:  callvirt   instance bool Game.ButtonWidget::get_IsChecked()
    IL_0264:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0269:  ldarg.0
    IL_026a:  call       instance class Game.ValueBarWidget Game.ComponentGui::get_HealthBarWidget()
    IL_026f:  ldloc.s    V_4
    IL_0271:  ldc.i4.0
    IL_0272:  cgt.un
    IL_0274:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0279:  ldarg.0
    IL_027a:  call       instance class Game.ValueBarWidget Game.ComponentGui::get_FoodBarWidget()
    IL_027f:  ldloc.s    V_4
    IL_0281:  brfalse.s  IL_028b

    IL_0283:  ldloc.3
    IL_0284:  ldfld      bool Game.WorldSettings::AreAdventureSurvivalMechanicsEnabled
    IL_0289:  br.s       IL_028c

    IL_028b:  ldc.i4.0
    IL_028c:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0291:  ldarg.0
    IL_0292:  call       instance class Game.ValueBarWidget Game.ComponentGui::get_TemperatureBarWidget()
    IL_0297:  ldloc.s    V_4
    IL_0299:  brfalse.s  IL_02a3

    IL_029b:  ldloc.3
    IL_029c:  ldfld      bool Game.WorldSettings::AreAdventureSurvivalMechanicsEnabled
    IL_02a1:  br.s       IL_02a4

    IL_02a3:  ldc.i4.0
    IL_02a4:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_02a9:  ldarg.0
    IL_02aa:  call       instance class Game.LabelWidget Game.ComponentGui::get_LevelLabelWidget()
    IL_02af:  ldloc.s    V_4
    IL_02b1:  brfalse.s  IL_02bb

    IL_02b3:  ldloc.3
    IL_02b4:  ldfld      bool Game.WorldSettings::AreAdventureSurvivalMechanicsEnabled
    IL_02b9:  br.s       IL_02bc

    IL_02bb:  ldc.i4.0
    IL_02bc:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_02c1:  ldarg.0
    IL_02c2:  ldfld      class Game.ButtonWidget Game.ComponentGui::m_creativeFlyButtonWidget
    IL_02c7:  ldloc.s    V_4
    IL_02c9:  ldc.i4.0
    IL_02ca:  ceq
    IL_02cc:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_02d1:  ldarg.0
    IL_02d2:  ldfld      class Game.ButtonWidget Game.ComponentGui::m_timeOfDayButtonWidget
    IL_02d7:  ldloc.s    V_4
    IL_02d9:  ldc.i4.0
    IL_02da:  ceq
    IL_02dc:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_02e1:  ldarg.0
    IL_02e2:  ldfld      class Game.ButtonWidget Game.ComponentGui::m_lightningButtonWidget
    IL_02e7:  ldloc.s    V_4
    IL_02e9:  ldc.i4.0
    IL_02ea:  ceq
    IL_02ec:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_02f1:  ldarg.0
    IL_02f2:  ldfld      class Game.ContainerWidget Game.ComponentGui::m_moveButtonsContainerWidget
    IL_02f7:  call       valuetype Game.MoveControlMode Game.SettingsManager::get_MoveControlMode()
    IL_02fc:  ldc.i4.1
    IL_02fd:  ceq
    IL_02ff:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0304:  ldarg.0
    IL_0305:  ldfld      class Game.ContainerWidget Game.ComponentGui::m_movePadContainerWidget
    IL_030a:  call       valuetype Game.MoveControlMode Game.SettingsManager::get_MoveControlMode()
    IL_030f:  ldc.i4.0
    IL_0310:  ceq
    IL_0312:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0317:  call       bool Game.SettingsManager::get_LeftHandedLayout()
    IL_031c:  brfalse.s  IL_0350

    IL_031e:  ldarg.0
    IL_031f:  ldfld      class Game.ContainerWidget Game.ComponentGui::m_moveContainerWidget
    IL_0324:  ldc.i4.2
    IL_0325:  callvirt   instance void Game.Widget::set_HorizontalAlignment(valuetype Game.WidgetAlignment)
    IL_032a:  ldarg.0
    IL_032b:  ldfld      class Game.ContainerWidget Game.ComponentGui::m_lookContainerWidget
    IL_0330:  ldc.i4.0
    IL_0331:  callvirt   instance void Game.Widget::set_HorizontalAlignment(valuetype Game.WidgetAlignment)
    IL_0336:  ldarg.0
    IL_0337:  ldfld      class Game.RectangleWidget Game.ComponentGui::m_moveRectangleWidget
    IL_033c:  ldc.i4.1
    IL_033d:  callvirt   instance void Game.RectangleWidget::set_FlipHorizontal(bool)
    IL_0342:  ldarg.0
    IL_0343:  ldfld      class Game.RectangleWidget Game.ComponentGui::m_lookRectangleWidget
    IL_0348:  ldc.i4.0
    IL_0349:  callvirt   instance void Game.RectangleWidget::set_FlipHorizontal(bool)
    IL_034e:  br.s       IL_0380

    IL_0350:  ldarg.0
    IL_0351:  ldfld      class Game.ContainerWidget Game.ComponentGui::m_moveContainerWidget
    IL_0356:  ldc.i4.0
    IL_0357:  callvirt   instance void Game.Widget::set_HorizontalAlignment(valuetype Game.WidgetAlignment)
    IL_035c:  ldarg.0
    IL_035d:  ldfld      class Game.ContainerWidget Game.ComponentGui::m_lookContainerWidget
    IL_0362:  ldc.i4.2
    IL_0363:  callvirt   instance void Game.Widget::set_HorizontalAlignment(valuetype Game.WidgetAlignment)
    IL_0368:  ldarg.0
    IL_0369:  ldfld      class Game.RectangleWidget Game.ComponentGui::m_moveRectangleWidget
    IL_036e:  ldc.i4.0
    IL_036f:  callvirt   instance void Game.RectangleWidget::set_FlipHorizontal(bool)
    IL_0374:  ldarg.0
    IL_0375:  ldfld      class Game.RectangleWidget Game.ComponentGui::m_lookRectangleWidget
    IL_037a:  ldc.i4.1
    IL_037b:  callvirt   instance void Game.RectangleWidget::set_FlipHorizontal(bool)
    IL_0380:  ldarg.0
    IL_0381:  ldarg.0
    IL_0382:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3> Game.ComponentGui::FindNearbyEditableCell()
    IL_0387:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3> Game.ComponentGui::m_nearbyEditableCell
    IL_038c:  ldarg.0
    IL_038d:  ldfld      class Game.ButtonWidget Game.ComponentGui::m_sneakButtonWidget
    IL_0392:  ldarg.0
    IL_0393:  ldfld      class Game.ComponentPlayer Game.ComponentGui::m_componentPlayer
    IL_0398:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_039d:  callvirt   instance bool Game.ComponentBody::get_IsSneaking()
    IL_03a2:  callvirt   instance void Game.ButtonWidget::set_IsChecked(bool)
    IL_03a7:  ldarg.0
    IL_03a8:  ldfld      class Game.ButtonWidget Game.ComponentGui::m_creativeFlyButtonWidget
    IL_03ad:  ldarg.0
    IL_03ae:  ldfld      class Game.ComponentPlayer Game.ComponentGui::m_componentPlayer
    IL_03b3:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_03b8:  callvirt   instance bool Game.ComponentLocomotion::get_IsCreativeFlyEnabled()
    IL_03bd:  callvirt   instance void Game.ButtonWidget::set_IsChecked(bool)
    IL_03c2:  ldarg.0
    IL_03c3:  ldfld      class Game.ButtonWidget Game.ComponentGui::m_inventoryButtonWidget
    IL_03c8:  ldarg.0
    IL_03c9:  call       instance bool Game.ComponentGui::IsInventoryVisible()
    IL_03ce:  callvirt   instance void Game.ButtonWidget::set_IsChecked(bool)
    IL_03d3:  ldarg.0
    IL_03d4:  ldfld      class Game.ButtonWidget Game.ComponentGui::m_clothingButtonWidget
    IL_03d9:  ldarg.0
    IL_03da:  call       instance bool Game.ComponentGui::IsClothingVisible()
    IL_03df:  callvirt   instance void Game.ButtonWidget::set_IsChecked(bool)
    IL_03e4:  ldarg.0
    IL_03e5:  call       instance bool Game.ComponentGui::IsActiveSlotEditable()
    IL_03ea:  brtrue.s   IL_03f9

    IL_03ec:  ldarg.0
    IL_03ed:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3> Game.ComponentGui::m_nearbyEditableCell
    IL_03f2:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>::get_HasValue()
    IL_03f7:  brfalse.s  IL_0422

    IL_03f9:  ldarg.0
    IL_03fa:  ldfld      class Game.ButtonWidget Game.ComponentGui::m_sneakButtonWidget
    IL_03ff:  ldc.i4.0
    IL_0400:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0405:  ldarg.0
    IL_0406:  ldfld      class Game.ButtonWidget Game.ComponentGui::m_mountButtonWidget
    IL_040b:  ldc.i4.0
    IL_040c:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0411:  ldarg.0
    IL_0412:  ldfld      class Game.ButtonWidget Game.ComponentGui::m_editItemButton
    IL_0417:  ldc.i4.1
    IL_0418:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_041d:  br         IL_04e5

    IL_0422:  ldloc.0
    IL_0423:  brfalse.s  IL_0462

    IL_0425:  ldloc.0
    IL_0426:  callvirt   instance class Game.ComponentMount Game.ComponentRider::get_Mount()
    IL_042b:  brfalse.s  IL_0462

    IL_042d:  ldarg.0
    IL_042e:  ldfld      class Game.ButtonWidget Game.ComponentGui::m_sneakButtonWidget
    IL_0433:  ldc.i4.0
    IL_0434:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0439:  ldarg.0
    IL_043a:  ldfld      class Game.ButtonWidget Game.ComponentGui::m_mountButtonWidget
    IL_043f:  ldc.i4.1
    IL_0440:  callvirt   instance void Game.ButtonWidget::set_IsChecked(bool)
    IL_0445:  ldarg.0
    IL_0446:  ldfld      class Game.ButtonWidget Game.ComponentGui::m_mountButtonWidget
    IL_044b:  ldc.i4.1
    IL_044c:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0451:  ldarg.0
    IL_0452:  ldfld      class Game.ButtonWidget Game.ComponentGui::m_editItemButton
    IL_0457:  ldc.i4.0
    IL_0458:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_045d:  br         IL_04e5

    IL_0462:  ldarg.0
    IL_0463:  ldfld      class Game.ButtonWidget Game.ComponentGui::m_mountButtonWidget
    IL_0468:  ldc.i4.0
    IL_0469:  callvirt   instance void Game.ButtonWidget::set_IsChecked(bool)
    IL_046e:  ldloc.0
    IL_046f:  brfalse.s  IL_04e5

    IL_0471:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
    IL_0476:  ldarg.0
    IL_0477:  ldfld      float64 Game.ComponentGui::m_lastMountableCreatureSearchTime
    IL_047c:  sub
    IL_047d:  ldc.r8     0.5
    IL_0486:  ble.un.s   IL_04e5

    IL_0488:  ldarg.0
    IL_0489:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
    IL_048e:  stfld      float64 Game.ComponentGui::m_lastMountableCreatureSearchTime
    IL_0493:  ldloc.0
    IL_0494:  callvirt   instance class Game.ComponentMount Game.ComponentRider::FindNearestMount()
    IL_0499:  brfalse.s  IL_04c1

    IL_049b:  ldarg.0
    IL_049c:  ldfld      class Game.ButtonWidget Game.ComponentGui::m_sneakButtonWidget
    IL_04a1:  ldc.i4.0
    IL_04a2:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_04a7:  ldarg.0
    IL_04a8:  ldfld      class Game.ButtonWidget Game.ComponentGui::m_mountButtonWidget
    IL_04ad:  ldc.i4.1
    IL_04ae:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_04b3:  ldarg.0
    IL_04b4:  ldfld      class Game.ButtonWidget Game.ComponentGui::m_editItemButton
    IL_04b9:  ldc.i4.0
    IL_04ba:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_04bf:  br.s       IL_04e5

    IL_04c1:  ldarg.0
    IL_04c2:  ldfld      class Game.ButtonWidget Game.ComponentGui::m_sneakButtonWidget
    IL_04c7:  ldc.i4.1
    IL_04c8:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_04cd:  ldarg.0
    IL_04ce:  ldfld      class Game.ButtonWidget Game.ComponentGui::m_mountButtonWidget
    IL_04d3:  ldc.i4.0
    IL_04d4:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_04d9:  ldarg.0
    IL_04da:  ldfld      class Game.ButtonWidget Game.ComponentGui::m_editItemButton
    IL_04df:  ldc.i4.0
    IL_04e0:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_04e5:  ldarg.0
    IL_04e6:  ldfld      class Game.ComponentPlayer Game.ComponentGui::m_componentPlayer
    IL_04eb:  callvirt   instance bool [EntitySystem]GameEntitySystem.Component::get_IsAddedToProject()
    IL_04f0:  brfalse.s  IL_0535

    IL_04f2:  ldarg.0
    IL_04f3:  ldfld      class Game.ComponentPlayer Game.ComponentGui::m_componentPlayer
    IL_04f8:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_04fd:  callvirt   instance float32 Game.ComponentHealth::get_Health()
    IL_0502:  ldc.r4     0.0
    IL_0507:  beq.s      IL_0535

    IL_0509:  ldloc.1
    IL_050a:  callvirt   instance bool Game.ComponentSleep::get_IsSleeping()
    IL_050f:  brtrue.s   IL_0535

    IL_0511:  ldarg.0
    IL_0512:  ldfld      class Game.ComponentPlayer Game.ComponentGui::m_componentPlayer
    IL_0517:  callvirt   instance class Game.ComponentSickness Game.ComponentPlayer::get_ComponentSickness()
    IL_051c:  callvirt   instance bool Game.ComponentSickness::get_IsPuking()
    IL_0521:  brtrue.s   IL_0535

    IL_0523:  ldarg.0
    IL_0524:  ldfld      class Game.ComponentPlayer Game.ComponentGui::m_componentPlayer
    IL_0529:  callvirt   instance class Game.ComponentFlu Game.ComponentPlayer::get_ComponentFlu()
    IL_052e:  callvirt   instance bool Game.ComponentFlu::get_IsCoughing()
    IL_0533:  brfalse.s  IL_053c

    IL_0535:  ldarg.0
    IL_0536:  ldnull
    IL_0537:  call       instance void Game.ComponentGui::set_ModalPanelWidget(class Game.Widget)
    IL_053c:  ldarg.0
    IL_053d:  ldfld      class Game.ComponentPlayer Game.ComponentGui::m_componentPlayer
    IL_0542:  callvirt   instance class Game.ComponentSickness Game.ComponentPlayer::get_ComponentSickness()
    IL_0547:  callvirt   instance bool Game.ComponentSickness::get_IsSick()
    IL_054c:  brfalse.s  IL_0575

    IL_054e:  ldarg.0
    IL_054f:  ldfld      class Game.ComponentPlayer Game.ComponentGui::m_componentPlayer
    IL_0554:  callvirt   instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_0559:  callvirt   instance class Game.ValueBarWidget Game.ComponentGui::get_HealthBarWidget()
    IL_055e:  ldc.i4     0xa6
    IL_0563:  ldc.i4     0xaf
    IL_0568:  ldc.i4.s   103
    IL_056a:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_056f:  callvirt   instance void Game.ValueBarWidget::set_LitBarColor(valuetype [Engine]Engine.Color)
    IL_0574:  ret

    IL_0575:  ldarg.0
    IL_0576:  ldfld      class Game.ComponentPlayer Game.ComponentGui::m_componentPlayer
    IL_057b:  callvirt   instance class Game.ComponentFlu Game.ComponentPlayer::get_ComponentFlu()
    IL_0580:  callvirt   instance bool Game.ComponentFlu::get_HasFlu()
    IL_0585:  brfalse.s  IL_05aa

    IL_0587:  ldarg.0
    IL_0588:  ldfld      class Game.ComponentPlayer Game.ComponentGui::m_componentPlayer
    IL_058d:  callvirt   instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_0592:  callvirt   instance class Game.ValueBarWidget Game.ComponentGui::get_HealthBarWidget()
    IL_0597:  ldc.i4.0
    IL_0598:  ldc.i4.s   48
    IL_059a:  ldc.i4     0xff
    IL_059f:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_05a4:  callvirt   instance void Game.ValueBarWidget::set_LitBarColor(valuetype [Engine]Engine.Color)
    IL_05a9:  ret

    IL_05aa:  ldarg.0
    IL_05ab:  ldfld      class Game.ComponentPlayer Game.ComponentGui::m_componentPlayer
    IL_05b0:  callvirt   instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_05b5:  callvirt   instance class Game.ValueBarWidget Game.ComponentGui::get_HealthBarWidget()
    IL_05ba:  ldc.i4     0xe0
    IL_05bf:  ldc.i4.s   24
    IL_05c1:  ldc.i4.0
    IL_05c2:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_05c7:  callvirt   instance void Game.ValueBarWidget::set_LitBarColor(valuetype [Engine]Engine.Color)
    IL_05cc:  ret
  } // end of method ComponentGui::UpdateWidgets

  .method private hidebysig instance void 
          HandleInput() cil managed
  {
    // 代码大小       2259 (0x8d3)
    .maxstack  6
    .locals init (class Game.WidgetInput V_0,
             valuetype Game.PlayerInput V_1,
             class Game.ComponentRider V_2,
             bool V_3,
             bool V_4,
             class Game.ComponentMount V_5,
             int32 V_6,
             int32 V_7,
             class Game.SubsystemBlockBehavior[] V_8,
             int32 V_9,
             class Game.IInventory V_10,
             int32 V_11,
             int32 V_12,
             bool V_13,
             class Game.View V_14,
             valuetype [Engine]Engine.Matrix V_15,
             float32 V_16,
             float32 V_17,
             float32 V_18,
             float32 V_19,
             float32 V_20,
             float32 V_21,
             float32 V_22,
             float32 V_23)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentPlayer Game.ComponentGui::m_componentPlayer
    IL_0006:  callvirt   instance class Game.View Game.ComponentPlayer::get_View()
    IL_000b:  callvirt   instance class Game.WidgetInput Game.View::get_Input()
    IL_0010:  stloc.0
    IL_0011:  ldarg.0
    IL_0012:  ldfld      class Game.ComponentPlayer Game.ComponentGui::m_componentPlayer
    IL_0017:  callvirt   instance class Game.ComponentInput Game.ComponentPlayer::get_ComponentInput()
    IL_001c:  callvirt   instance valuetype Game.PlayerInput Game.ComponentInput::get_PlayerInput()
    IL_0021:  stloc.1
    IL_0022:  ldarg.0
    IL_0023:  ldfld      class Game.ComponentPlayer Game.ComponentGui::m_componentPlayer
    IL_0028:  callvirt   instance class Game.ComponentRider Game.ComponentPlayer::get_ComponentRider()
    IL_002d:  stloc.2
    IL_002e:  ldarg.0
    IL_002f:  ldfld      class Game.ComponentPlayer Game.ComponentGui::m_componentPlayer
    IL_0034:  callvirt   instance class Game.View Game.ComponentPlayer::get_View()
    IL_0039:  callvirt   instance class Game.Camera Game.View::get_ActiveCamera()
    IL_003e:  callvirt   instance bool Game.Camera::get_IsEntityControlEnabled()
    IL_0043:  brfalse    IL_00dd

    IL_0048:  ldarg.0
    IL_0049:  ldfld      bool Game.ComponentGui::m_keyboardHelpMessageShown
    IL_004e:  brtrue.s   IL_0093

    IL_0050:  ldarg.0
    IL_0051:  ldfld      class Game.ComponentPlayer Game.ComponentGui::m_componentPlayer
    IL_0056:  callvirt   instance class Game.PlayerData Game.ComponentPlayer::get_PlayerData()
    IL_005b:  callvirt   instance valuetype Game.WidgetInputDevice Game.PlayerData::get_InputDevice()
    IL_0060:  ldc.i4.1
    IL_0061:  and
    IL_0062:  brfalse.s  IL_0093

    IL_0064:  ldc.r8     7.
    IL_006d:  ldc.r8     0.0
    IL_0076:  call       bool [Engine]Engine.Time::PeriodicEvent(float64,
                                                                 float64)
    IL_007b:  brfalse.s  IL_0093

    IL_007d:  ldarg.0
    IL_007e:  ldc.i4.1
    IL_007f:  stfld      bool Game.ComponentGui::m_keyboardHelpMessageShown
    IL_0084:  ldarg.0
    IL_0085:  ldstr      "Press H for keyboard controls\n(or see HELP)"
    IL_008a:  ldc.i4.1
    IL_008b:  ldc.i4.1
    IL_008c:  call       instance void Game.ComponentGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_0091:  br.s       IL_00dd

    IL_0093:  ldarg.0
    IL_0094:  ldfld      bool Game.ComponentGui::m_gamepadHelpMessageShown
    IL_0099:  brtrue.s   IL_00dd

    IL_009b:  ldarg.0
    IL_009c:  ldfld      class Game.ComponentPlayer Game.ComponentGui::m_componentPlayer
    IL_00a1:  callvirt   instance class Game.PlayerData Game.ComponentPlayer::get_PlayerData()
    IL_00a6:  callvirt   instance valuetype Game.WidgetInputDevice Game.PlayerData::get_InputDevice()
    IL_00ab:  ldc.i4.s   120
    IL_00ad:  and
    IL_00ae:  brfalse.s  IL_00dd

    IL_00b0:  ldc.r8     7.
    IL_00b9:  ldc.r8     0.0
    IL_00c2:  call       bool [Engine]Engine.Time::PeriodicEvent(float64,
                                                                 float64)
    IL_00c7:  brfalse.s  IL_00dd

    IL_00c9:  ldarg.0
    IL_00ca:  ldc.i4.1
    IL_00cb:  stfld      bool Game.ComponentGui::m_gamepadHelpMessageShown
    IL_00d0:  ldarg.0
    IL_00d1:  ldstr      "Press START/PAUSE for gamepad controls\n(or see HELP)"
    IL_00d6:  ldc.i4.1
    IL_00d7:  ldc.i4.1
    IL_00d8:  call       instance void Game.ComponentGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_00dd:  ldloc.1
    IL_00de:  ldfld      bool Game.PlayerInput::KeyboardHelp
    IL_00e3:  brfalse.s  IL_012d

    IL_00e5:  ldarg.0
    IL_00e6:  ldfld      class Game.KeyboardHelpDialog Game.ComponentGui::m_keyboardHelpDialog
    IL_00eb:  brtrue.s   IL_00f8

    IL_00ed:  ldarg.0
    IL_00ee:  newobj     instance void Game.KeyboardHelpDialog::.ctor()
    IL_00f3:  stfld      class Game.KeyboardHelpDialog Game.ComponentGui::m_keyboardHelpDialog
    IL_00f8:  ldarg.0
    IL_00f9:  ldfld      class Game.KeyboardHelpDialog Game.ComponentGui::m_keyboardHelpDialog
    IL_00fe:  callvirt   instance class Game.ContainerWidget Game.Widget::get_ParentWidget()
    IL_0103:  brfalse.s  IL_0112

    IL_0105:  ldarg.0
    IL_0106:  ldfld      class Game.KeyboardHelpDialog Game.ComponentGui::m_keyboardHelpDialog
    IL_010b:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
    IL_0110:  br.s       IL_012d

    IL_0112:  ldarg.0
    IL_0113:  ldfld      class Game.ComponentPlayer Game.ComponentGui::m_componentPlayer
    IL_0118:  callvirt   instance class Game.View Game.ComponentPlayer::get_View()
    IL_011d:  callvirt   instance class Game.GameWidget Game.View::get_GameWidget()
    IL_0122:  ldarg.0
    IL_0123:  ldfld      class Game.KeyboardHelpDialog Game.ComponentGui::m_keyboardHelpDialog
    IL_0128:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_012d:  ldloc.1
    IL_012e:  ldfld      bool Game.PlayerInput::GamepadHelp
    IL_0133:  brfalse.s  IL_017d

    IL_0135:  ldarg.0
    IL_0136:  ldfld      class Game.GamepadHelpDialog Game.ComponentGui::m_gamepadHelpDialog
    IL_013b:  brtrue.s   IL_0148

    IL_013d:  ldarg.0
    IL_013e:  newobj     instance void Game.GamepadHelpDialog::.ctor()
    IL_0143:  stfld      class Game.GamepadHelpDialog Game.ComponentGui::m_gamepadHelpDialog
    IL_0148:  ldarg.0
    IL_0149:  ldfld      class Game.GamepadHelpDialog Game.ComponentGui::m_gamepadHelpDialog
    IL_014e:  callvirt   instance class Game.ContainerWidget Game.Widget::get_ParentWidget()
    IL_0153:  brfalse.s  IL_0162

    IL_0155:  ldarg.0
    IL_0156:  ldfld      class Game.GamepadHelpDialog Game.ComponentGui::m_gamepadHelpDialog
    IL_015b:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
    IL_0160:  br.s       IL_017d

    IL_0162:  ldarg.0
    IL_0163:  ldfld      class Game.ComponentPlayer Game.ComponentGui::m_componentPlayer
    IL_0168:  callvirt   instance class Game.View Game.ComponentPlayer::get_View()
    IL_016d:  callvirt   instance class Game.GameWidget Game.View::get_GameWidget()
    IL_0172:  ldarg.0
    IL_0173:  ldfld      class Game.GamepadHelpDialog Game.ComponentGui::m_gamepadHelpDialog
    IL_0178:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_017d:  ldarg.0
    IL_017e:  ldfld      class Game.ButtonWidget Game.ComponentGui::m_helpButtonWidget
    IL_0183:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0188:  brfalse.s  IL_019a

    IL_018a:  ldstr      "Help"
    IL_018f:  ldc.i4.0
    IL_0190:  newarr     [System.Runtime]System.Object
    IL_0195:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                object[])
    IL_019a:  ldloc.1
    IL_019b:  ldfld      bool Game.PlayerInput::ToggleInventory
    IL_01a0:  brtrue.s   IL_01af

    IL_01a2:  ldarg.0
    IL_01a3:  ldfld      class Game.ButtonWidget Game.ComponentGui::m_inventoryButtonWidget
    IL_01a8:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_01ad:  brfalse.s  IL_021b

    IL_01af:  ldarg.0
    IL_01b0:  call       instance bool Game.ComponentGui::IsInventoryVisible()
    IL_01b5:  brfalse.s  IL_01c0

    IL_01b7:  ldarg.0
    IL_01b8:  ldnull
    IL_01b9:  call       instance void Game.ComponentGui::set_ModalPanelWidget(class Game.Widget)
    IL_01be:  br.s       IL_021b

    IL_01c0:  ldarg.0
    IL_01c1:  ldfld      class Game.ComponentPlayer Game.ComponentGui::m_componentPlayer
    IL_01c6:  callvirt   instance class Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_01cb:  callvirt   instance class Game.IInventory Game.ComponentMiner::get_Inventory()
    IL_01d0:  isinst     Game.ComponentCreativeInventory
    IL_01d5:  brfalse.s  IL_01ef

    IL_01d7:  ldarg.0
    IL_01d8:  ldarg.0
    IL_01d9:  ldfld      class Game.ComponentPlayer Game.ComponentGui::m_componentPlayer
    IL_01de:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_01e3:  newobj     instance void Game.CreativeInventoryWidget::.ctor(class [EntitySystem]GameEntitySystem.Entity)
    IL_01e8:  call       instance void Game.ComponentGui::set_ModalPanelWidget(class Game.Widget)
    IL_01ed:  br.s       IL_021b

    IL_01ef:  ldarg.0
    IL_01f0:  ldarg.0
    IL_01f1:  ldfld      class Game.ComponentPlayer Game.ComponentGui::m_componentPlayer
    IL_01f6:  callvirt   instance class Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_01fb:  callvirt   instance class Game.IInventory Game.ComponentMiner::get_Inventory()
    IL_0200:  ldarg.0
    IL_0201:  ldfld      class Game.ComponentPlayer Game.ComponentGui::m_componentPlayer
    IL_0206:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_020b:  ldc.i4.1
    IL_020c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCraftingTable>(bool)
    IL_0211:  newobj     instance void Game.FullInventoryWidget::.ctor(class Game.IInventory,
                                                                       class Game.ComponentCraftingTable)
    IL_0216:  call       instance void Game.ComponentGui::set_ModalPanelWidget(class Game.Widget)
    IL_021b:  ldloc.1
    IL_021c:  ldfld      bool Game.PlayerInput::ToggleClothing
    IL_0221:  brtrue.s   IL_0230

    IL_0223:  ldarg.0
    IL_0224:  ldfld      class Game.ButtonWidget Game.ComponentGui::m_clothingButtonWidget
    IL_0229:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_022e:  brfalse.s  IL_0252

    IL_0230:  ldarg.0
    IL_0231:  call       instance bool Game.ComponentGui::IsClothingVisible()
    IL_0236:  brfalse.s  IL_0241

    IL_0238:  ldarg.0
    IL_0239:  ldnull
    IL_023a:  call       instance void Game.ComponentGui::set_ModalPanelWidget(class Game.Widget)
    IL_023f:  br.s       IL_0252

    IL_0241:  ldarg.0
    IL_0242:  ldarg.0
    IL_0243:  ldfld      class Game.ComponentPlayer Game.ComponentGui::m_componentPlayer
    IL_0248:  newobj     instance void Game.ClothingWidget::.ctor(class Game.ComponentPlayer)
    IL_024d:  call       instance void Game.ComponentGui::set_ModalPanelWidget(class Game.Widget)
    IL_0252:  ldarg.0
    IL_0253:  ldfld      class Game.ButtonWidget Game.ComponentGui::m_sneakButtonWidget
    IL_0258:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_025d:  brtrue.s   IL_0267

    IL_025f:  ldloc.1
    IL_0260:  ldfld      bool Game.PlayerInput::ToggleSneak
    IL_0265:  brfalse.s  IL_02cd

    IL_0267:  ldarg.0
    IL_0268:  ldfld      class Game.ComponentPlayer Game.ComponentGui::m_componentPlayer
    IL_026d:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0272:  callvirt   instance bool Game.ComponentBody::get_IsSneaking()
    IL_0277:  stloc.3
    IL_0278:  ldarg.0
    IL_0279:  ldfld      class Game.ComponentPlayer Game.ComponentGui::m_componentPlayer
    IL_027e:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0283:  ldloc.3
    IL_0284:  ldc.i4.0
    IL_0285:  ceq
    IL_0287:  callvirt   instance void Game.ComponentBody::set_IsSneaking(bool)
    IL_028c:  ldarg.0
    IL_028d:  ldfld      class Game.ComponentPlayer Game.ComponentGui::m_componentPlayer
    IL_0292:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0297:  callvirt   instance bool Game.ComponentBody::get_IsSneaking()
    IL_029c:  ldloc.3
    IL_029d:  beq.s      IL_02cd

    IL_029f:  ldarg.0
    IL_02a0:  ldfld      class Game.ComponentPlayer Game.ComponentGui::m_componentPlayer
    IL_02a5:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_02aa:  callvirt   instance bool Game.ComponentBody::get_IsSneaking()
    IL_02af:  brfalse.s  IL_02c0

    IL_02b1:  ldarg.0
    IL_02b2:  ldstr      "Sneak mode on"
    IL_02b7:  ldc.i4.0
    IL_02b8:  ldc.i4.0
    IL_02b9:  call       instance void Game.ComponentGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_02be:  br.s       IL_02cd

    IL_02c0:  ldarg.0
    IL_02c1:  ldstr      "Sneak mode off"
    IL_02c6:  ldc.i4.0
    IL_02c7:  ldc.i4.0
    IL_02c8:  call       instance void Game.ComponentGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_02cd:  ldloc.2
    IL_02ce:  brfalse.s  IL_0341

    IL_02d0:  ldarg.0
    IL_02d1:  ldfld      class Game.ButtonWidget Game.ComponentGui::m_mountButtonWidget
    IL_02d6:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_02db:  brtrue.s   IL_02e5

    IL_02dd:  ldloc.1
    IL_02de:  ldfld      bool Game.PlayerInput::ToggleMount
    IL_02e3:  brfalse.s  IL_0341

    IL_02e5:  ldloc.2
    IL_02e6:  callvirt   instance class Game.ComponentMount Game.ComponentRider::get_Mount()
    IL_02eb:  ldnull
    IL_02ec:  cgt.un
    IL_02ee:  stloc.s    V_4
    IL_02f0:  ldloc.s    V_4
    IL_02f2:  brfalse.s  IL_02fc

    IL_02f4:  ldloc.2
    IL_02f5:  callvirt   instance void Game.ComponentRider::StartDismounting()
    IL_02fa:  br.s       IL_0310

    IL_02fc:  ldloc.2
    IL_02fd:  callvirt   instance class Game.ComponentMount Game.ComponentRider::FindNearestMount()
    IL_0302:  stloc.s    V_5
    IL_0304:  ldloc.s    V_5
    IL_0306:  brfalse.s  IL_0310

    IL_0308:  ldloc.2
    IL_0309:  ldloc.s    V_5
    IL_030b:  callvirt   instance void Game.ComponentRider::StartMounting(class Game.ComponentMount)
    IL_0310:  ldloc.2
    IL_0311:  callvirt   instance class Game.ComponentMount Game.ComponentRider::get_Mount()
    IL_0316:  ldnull
    IL_0317:  cgt.un
    IL_0319:  ldloc.s    V_4
    IL_031b:  beq.s      IL_0341

    IL_031d:  ldloc.2
    IL_031e:  callvirt   instance class Game.ComponentMount Game.ComponentRider::get_Mount()
    IL_0323:  brfalse.s  IL_0334

    IL_0325:  ldarg.0
    IL_0326:  ldstr      "Mounted"
    IL_032b:  ldc.i4.0
    IL_032c:  ldc.i4.0
    IL_032d:  call       instance void Game.ComponentGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_0332:  br.s       IL_0341

    IL_0334:  ldarg.0
    IL_0335:  ldstr      "Dismounted"
    IL_033a:  ldc.i4.0
    IL_033b:  ldc.i4.0
    IL_033c:  call       instance void Game.ComponentGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_0341:  ldarg.0
    IL_0342:  ldfld      class Game.ButtonWidget Game.ComponentGui::m_editItemButton
    IL_0347:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_034c:  brtrue.s   IL_0359

    IL_034e:  ldloc.1
    IL_034f:  ldfld      bool Game.PlayerInput::EditItem
    IL_0354:  brfalse    IL_0422

    IL_0359:  ldarg.0
    IL_035a:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3> Game.ComponentGui::m_nearbyEditableCell
    IL_035f:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>::get_HasValue()
    IL_0364:  brfalse    IL_0422

    IL_0369:  ldarg.0
    IL_036a:  ldfld      class Game.SubsystemTerrain Game.ComponentGui::m_subsystemTerrain
    IL_036f:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0374:  ldarg.0
    IL_0375:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3> Game.ComponentGui::m_nearbyEditableCell
    IL_037a:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>::get_Value()
    IL_037f:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0384:  ldarg.0
    IL_0385:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3> Game.ComponentGui::m_nearbyEditableCell
    IL_038a:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>::get_Value()
    IL_038f:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0394:  ldarg.0
    IL_0395:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3> Game.ComponentGui::m_nearbyEditableCell
    IL_039a:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>::get_Value()
    IL_039f:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_03a4:  callvirt   instance int32 Game.Terrain::GetCellValue(int32,
                                                                   int32,
                                                                   int32)
    IL_03a9:  stloc.s    V_6
    IL_03ab:  ldloc.s    V_6
    IL_03ad:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_03b2:  stloc.s    V_7
    IL_03b4:  ldarg.0
    IL_03b5:  ldfld      class Game.SubsystemBlockBehaviors Game.ComponentGui::m_subsystemBlockBehaviors
    IL_03ba:  ldloc.s    V_7
    IL_03bc:  callvirt   instance class Game.SubsystemBlockBehavior[] Game.SubsystemBlockBehaviors::GetBlockBehaviors(int32)
    IL_03c1:  stloc.s    V_8
    IL_03c3:  ldc.i4.0
    IL_03c4:  stloc.s    V_9
    IL_03c6:  br.s       IL_0415

    IL_03c8:  ldloc.s    V_8
    IL_03ca:  ldloc.s    V_9
    IL_03cc:  ldelem.ref
    IL_03cd:  ldarg.0
    IL_03ce:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3> Game.ComponentGui::m_nearbyEditableCell
    IL_03d3:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>::get_Value()
    IL_03d8:  ldfld      int32 [Engine]Engine.Point3::X
    IL_03dd:  ldarg.0
    IL_03de:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3> Game.ComponentGui::m_nearbyEditableCell
    IL_03e3:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>::get_Value()
    IL_03e8:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_03ed:  ldarg.0
    IL_03ee:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3> Game.ComponentGui::m_nearbyEditableCell
    IL_03f3:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>::get_Value()
    IL_03f8:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_03fd:  ldloc.s    V_6
    IL_03ff:  ldarg.0
    IL_0400:  ldfld      class Game.ComponentPlayer Game.ComponentGui::m_componentPlayer
    IL_0405:  callvirt   instance bool Game.SubsystemBlockBehavior::OnEditBlock(int32,
                                                                                int32,
                                                                                int32,
                                                                                int32,
                                                                                class Game.ComponentPlayer)
    IL_040a:  brtrue     IL_04b5

    IL_040f:  ldloc.s    V_9
    IL_0411:  ldc.i4.1
    IL_0412:  add
    IL_0413:  stloc.s    V_9
    IL_0415:  ldloc.s    V_9
    IL_0417:  ldloc.s    V_8
    IL_0419:  ldlen
    IL_041a:  conv.i4
    IL_041b:  blt.s      IL_03c8

    IL_041d:  br         IL_04b5

    IL_0422:  ldarg.0
    IL_0423:  ldfld      class Game.ButtonWidget Game.ComponentGui::m_editItemButton
    IL_0428:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_042d:  brtrue.s   IL_0437

    IL_042f:  ldloc.1
    IL_0430:  ldfld      bool Game.PlayerInput::EditItem
    IL_0435:  brfalse.s  IL_04b5

    IL_0437:  ldarg.0
    IL_0438:  call       instance bool Game.ComponentGui::IsActiveSlotEditable()
    IL_043d:  brfalse.s  IL_04b5

    IL_043f:  ldarg.0
    IL_0440:  ldfld      class Game.ComponentPlayer Game.ComponentGui::m_componentPlayer
    IL_0445:  callvirt   instance class Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_044a:  callvirt   instance class Game.IInventory Game.ComponentMiner::get_Inventory()
    IL_044f:  stloc.s    V_10
    IL_0451:  ldloc.s    V_10
    IL_0453:  brfalse.s  IL_04b5

    IL_0455:  ldloc.s    V_10
    IL_0457:  callvirt   instance int32 Game.IInventory::get_ActiveSlotIndex()
    IL_045c:  stloc.s    V_11
    IL_045e:  ldloc.s    V_10
    IL_0460:  ldloc.s    V_11
    IL_0462:  callvirt   instance int32 Game.IInventory::GetSlotValue(int32)
    IL_0467:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_046c:  stloc.s    V_12
    IL_046e:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0473:  ldloc.s    V_12
    IL_0475:  ldelem.ref
    IL_0476:  ldfld      bool Game.Block::IsEditable
    IL_047b:  brfalse.s  IL_04b5

    IL_047d:  ldarg.0
    IL_047e:  ldfld      class Game.SubsystemBlockBehaviors Game.ComponentGui::m_subsystemBlockBehaviors
    IL_0483:  ldloc.s    V_12
    IL_0485:  callvirt   instance class Game.SubsystemBlockBehavior[] Game.SubsystemBlockBehaviors::GetBlockBehaviors(int32)
    IL_048a:  stloc.s    V_8
    IL_048c:  ldc.i4.0
    IL_048d:  stloc.s    V_9
    IL_048f:  br.s       IL_04ad

    IL_0491:  ldloc.s    V_8
    IL_0493:  ldloc.s    V_9
    IL_0495:  ldelem.ref
    IL_0496:  ldloc.s    V_10
    IL_0498:  ldloc.s    V_11
    IL_049a:  ldarg.0
    IL_049b:  ldfld      class Game.ComponentPlayer Game.ComponentGui::m_componentPlayer
    IL_04a0:  callvirt   instance bool Game.SubsystemBlockBehavior::OnEditInventoryItem(class Game.IInventory,
                                                                                        int32,
                                                                                        class Game.ComponentPlayer)
    IL_04a5:  brtrue.s   IL_04b5

    IL_04a7:  ldloc.s    V_9
    IL_04a9:  ldc.i4.1
    IL_04aa:  add
    IL_04ab:  stloc.s    V_9
    IL_04ad:  ldloc.s    V_9
    IL_04af:  ldloc.s    V_8
    IL_04b1:  ldlen
    IL_04b2:  conv.i4
    IL_04b3:  blt.s      IL_0491

    IL_04b5:  ldarg.0
    IL_04b6:  ldfld      class Game.SubsystemGameInfo Game.ComponentGui::m_subsystemGameInfo
    IL_04bb:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_04c0:  ldfld      valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_04c5:  brtrue     IL_0568

    IL_04ca:  ldarg.0
    IL_04cb:  ldfld      class Game.ButtonWidget Game.ComponentGui::m_creativeFlyButtonWidget
    IL_04d0:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_04d5:  brtrue.s   IL_04e2

    IL_04d7:  ldloc.1
    IL_04d8:  ldfld      bool Game.PlayerInput::ToggleCreativeFly
    IL_04dd:  brfalse    IL_0568

    IL_04e2:  ldloc.2
    IL_04e3:  callvirt   instance class Game.ComponentMount Game.ComponentRider::get_Mount()
    IL_04e8:  brtrue.s   IL_0568

    IL_04ea:  ldarg.0
    IL_04eb:  ldfld      class Game.ComponentPlayer Game.ComponentGui::m_componentPlayer
    IL_04f0:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_04f5:  callvirt   instance bool Game.ComponentLocomotion::get_IsCreativeFlyEnabled()
    IL_04fa:  stloc.s    V_13
    IL_04fc:  ldarg.0
    IL_04fd:  ldfld      class Game.ComponentPlayer Game.ComponentGui::m_componentPlayer
    IL_0502:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_0507:  ldloc.s    V_13
    IL_0509:  ldc.i4.0
    IL_050a:  ceq
    IL_050c:  callvirt   instance void Game.ComponentLocomotion::set_IsCreativeFlyEnabled(bool)
    IL_0511:  ldarg.0
    IL_0512:  ldfld      class Game.ComponentPlayer Game.ComponentGui::m_componentPlayer
    IL_0517:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_051c:  callvirt   instance bool Game.ComponentLocomotion::get_IsCreativeFlyEnabled()
    IL_0521:  ldloc.s    V_13
    IL_0523:  beq.s      IL_0568

    IL_0525:  ldarg.0
    IL_0526:  ldfld      class Game.ComponentPlayer Game.ComponentGui::m_componentPlayer
    IL_052b:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_0530:  callvirt   instance bool Game.ComponentLocomotion::get_IsCreativeFlyEnabled()
    IL_0535:  brfalse.s  IL_055b

    IL_0537:  ldarg.0
    IL_0538:  ldfld      class Game.ComponentPlayer Game.ComponentGui::m_componentPlayer
    IL_053d:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_0542:  ldc.r4     1.
    IL_0547:  callvirt   instance void Game.ComponentLocomotion::set_JumpOrder(float32)
    IL_054c:  ldarg.0
    IL_054d:  ldstr      "Fly mode on"
    IL_0552:  ldc.i4.0
    IL_0553:  ldc.i4.0
    IL_0554:  call       instance void Game.ComponentGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_0559:  br.s       IL_0568

    IL_055b:  ldarg.0
    IL_055c:  ldstr      "Fly mode off"
    IL_0561:  ldc.i4.0
    IL_0562:  ldc.i4.0
    IL_0563:  call       instance void Game.ComponentGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_0568:  ldarg.0
    IL_0569:  ldfld      class Game.ButtonWidget Game.ComponentGui::m_cameraButtonWidget
    IL_056e:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0573:  brtrue.s   IL_0580

    IL_0575:  ldloc.1
    IL_0576:  ldfld      bool Game.PlayerInput::SwitchCameraMode
    IL_057b:  brfalse    IL_064e

    IL_0580:  ldarg.0
    IL_0581:  ldfld      class Game.ComponentPlayer Game.ComponentGui::m_componentPlayer
    IL_0586:  callvirt   instance class Game.View Game.ComponentPlayer::get_View()
    IL_058b:  stloc.s    V_14
    IL_058d:  ldloc.s    V_14
    IL_058f:  callvirt   instance class Game.Camera Game.View::get_ActiveCamera()
    IL_0594:  callvirt   instance class [System.Runtime]System.Type [System.Runtime]System.Object::GetType()
    IL_0599:  ldtoken    Game.FppCamera
    IL_059e:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_05a3:  bne.un.s   IL_05c6

    IL_05a5:  ldloc.s    V_14
    IL_05a7:  ldloc.s    V_14
    IL_05a9:  ldc.i4.1
    IL_05aa:  callvirt   instance !!0 Game.View::FindCamera<class Game.TppCamera>(bool)
    IL_05af:  callvirt   instance void Game.View::set_ActiveCamera(class Game.Camera)
    IL_05b4:  ldarg.0
    IL_05b5:  ldstr      "Third person camera"
    IL_05ba:  ldc.i4.0
    IL_05bb:  ldc.i4.0
    IL_05bc:  call       instance void Game.ComponentGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_05c1:  br         IL_064e

    IL_05c6:  ldloc.s    V_14
    IL_05c8:  callvirt   instance class Game.Camera Game.View::get_ActiveCamera()
    IL_05cd:  callvirt   instance class [System.Runtime]System.Type [System.Runtime]System.Object::GetType()
    IL_05d2:  ldtoken    Game.TppCamera
    IL_05d7:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_05dc:  bne.un.s   IL_05fc

    IL_05de:  ldloc.s    V_14
    IL_05e0:  ldloc.s    V_14
    IL_05e2:  ldc.i4.1
    IL_05e3:  callvirt   instance !!0 Game.View::FindCamera<class Game.OrbitCamera>(bool)
    IL_05e8:  callvirt   instance void Game.View::set_ActiveCamera(class Game.Camera)
    IL_05ed:  ldarg.0
    IL_05ee:  ldstr      "Orbit camera"
    IL_05f3:  ldc.i4.0
    IL_05f4:  ldc.i4.0
    IL_05f5:  call       instance void Game.ComponentGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_05fa:  br.s       IL_064e

    IL_05fc:  ldloc.s    V_14
    IL_05fe:  callvirt   instance class Game.Camera Game.View::get_ActiveCamera()
    IL_0603:  callvirt   instance class [System.Runtime]System.Type [System.Runtime]System.Object::GetType()
    IL_0608:  ldtoken    Game.OrbitCamera
    IL_060d:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_0612:  bne.un.s   IL_0632

    IL_0614:  ldloc.s    V_14
    IL_0616:  ldloc.s    V_14
    IL_0618:  ldc.i4.1
    IL_0619:  callvirt   instance !!0 Game.View::FindCamera<class Game.FixedCamera>(bool)
    IL_061e:  callvirt   instance void Game.View::set_ActiveCamera(class Game.Camera)
    IL_0623:  ldarg.0
    IL_0624:  ldstr      "Fixed camera"
    IL_0629:  ldc.i4.0
    IL_062a:  ldc.i4.0
    IL_062b:  call       instance void Game.ComponentGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_0630:  br.s       IL_064e

    IL_0632:  ldloc.s    V_14
    IL_0634:  ldloc.s    V_14
    IL_0636:  ldc.i4.1
    IL_0637:  callvirt   instance !!0 Game.View::FindCamera<class Game.FppCamera>(bool)
    IL_063c:  callvirt   instance void Game.View::set_ActiveCamera(class Game.Camera)
    IL_0641:  ldarg.0
    IL_0642:  ldstr      "First person camera"
    IL_0647:  ldc.i4.0
    IL_0648:  ldc.i4.0
    IL_0649:  call       instance void Game.ComponentGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_064e:  ldarg.0
    IL_064f:  ldfld      class Game.ButtonWidget Game.ComponentGui::m_photoButtonWidget
    IL_0654:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0659:  brtrue.s   IL_0663

    IL_065b:  ldloc.1
    IL_065c:  ldfld      bool Game.PlayerInput::TakeScreenshot
    IL_0661:  brfalse.s  IL_0680

    IL_0663:  call       void Game.ScreenCaptureManager::CapturePhoto()
    IL_0668:  call       int32 [Engine]Engine.Time::get_FrameIndex()
    IL_066d:  ldc.i4.1
    IL_066e:  add
    IL_066f:  ldarg.0
    IL_0670:  ldftn      instance void Game.ComponentGui::'<HandleInput>b__108_0'()
    IL_0676:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_067b:  call       void [Engine]Engine.Time::QueueFrameCountDelayedExecution(int32,
                                                                                   class [System.Runtime]System.Action)
    IL_0680:  ldarg.0
    IL_0681:  ldfld      class Game.SubsystemGameInfo Game.ComponentGui::m_subsystemGameInfo
    IL_0686:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_068b:  ldfld      valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_0690:  brtrue.s   IL_06e6

    IL_0692:  ldarg.0
    IL_0693:  ldfld      class Game.ButtonWidget Game.ComponentGui::m_lightningButtonWidget
    IL_0698:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_069d:  brtrue.s   IL_06a7

    IL_069f:  ldloc.1
    IL_06a0:  ldfld      bool Game.PlayerInput::Lighting
    IL_06a5:  brfalse.s  IL_06e6

    IL_06a7:  ldarg.0
    IL_06a8:  ldfld      class Game.ComponentPlayer Game.ComponentGui::m_componentPlayer
    IL_06ad:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_06b2:  callvirt   instance valuetype [Engine]Engine.Quaternion Game.ComponentCreatureModel::get_EyeRotation()
    IL_06b7:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateFromQuaternion(valuetype [Engine]Engine.Quaternion)
    IL_06bc:  stloc.s    V_15
    IL_06be:  ldarg.0
    IL_06bf:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_06c4:  ldc.i4.1
    IL_06c5:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemWeather>(bool)
    IL_06ca:  ldarg.0
    IL_06cb:  ldfld      class Game.ComponentPlayer Game.ComponentGui::m_componentPlayer
    IL_06d0:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_06d5:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentCreatureModel::get_EyePosition()
    IL_06da:  ldloca.s   V_15
    IL_06dc:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Forward()
    IL_06e1:  callvirt   instance void Game.SubsystemWeather::ManualLightingStrike(valuetype [Engine]Engine.Vector3,
                                                                                   valuetype [Engine]Engine.Vector3)
    IL_06e6:  ldarg.0
    IL_06e7:  ldfld      class Game.SubsystemGameInfo Game.ComponentGui::m_subsystemGameInfo
    IL_06ec:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_06f1:  ldfld      valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_06f6:  brtrue     IL_0870

    IL_06fb:  ldarg.0
    IL_06fc:  ldfld      class Game.ButtonWidget Game.ComponentGui::m_timeOfDayButtonWidget
    IL_0701:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0706:  brtrue.s   IL_0713

    IL_0708:  ldloc.1
    IL_0709:  ldfld      bool Game.PlayerInput::TimeOfDay
    IL_070e:  brfalse    IL_0870

    IL_0713:  ldc.r4     0.25
    IL_0718:  ldc.r4     1.
    IL_071d:  call       float32 [Engine]Engine.MathUtils::Remainder(float32,
                                                                     float32)
    IL_0722:  ldc.r4     0.5
    IL_0727:  ldc.r4     1.
    IL_072c:  call       float32 [Engine]Engine.MathUtils::Remainder(float32,
                                                                     float32)
    IL_0731:  stloc.s    V_16
    IL_0733:  ldc.r4     0.75
    IL_0738:  ldc.r4     1.
    IL_073d:  call       float32 [Engine]Engine.MathUtils::Remainder(float32,
                                                                     float32)
    IL_0742:  stloc.s    V_17
    IL_0744:  ldc.r4     1.
    IL_0749:  ldc.r4     1.
    IL_074e:  call       float32 [Engine]Engine.MathUtils::Remainder(float32,
                                                                     float32)
    IL_0753:  stloc.s    V_18
    IL_0755:  ldarg.0
    IL_0756:  ldfld      class Game.SubsystemTimeOfDay Game.ComponentGui::m_subsystemTimeOfDay
    IL_075b:  callvirt   instance float32 Game.SubsystemTimeOfDay::get_TimeOfDay()
    IL_0760:  sub
    IL_0761:  ldc.r4     1.
    IL_0766:  call       float32 [Engine]Engine.MathUtils::Remainder(float32,
                                                                     float32)
    IL_076b:  stloc.s    V_19
    IL_076d:  ldloc.s    V_16
    IL_076f:  ldarg.0
    IL_0770:  ldfld      class Game.SubsystemTimeOfDay Game.ComponentGui::m_subsystemTimeOfDay
    IL_0775:  callvirt   instance float32 Game.SubsystemTimeOfDay::get_TimeOfDay()
    IL_077a:  sub
    IL_077b:  ldc.r4     1.
    IL_0780:  call       float32 [Engine]Engine.MathUtils::Remainder(float32,
                                                                     float32)
    IL_0785:  stloc.s    V_20
    IL_0787:  ldloc.s    V_17
    IL_0789:  ldarg.0
    IL_078a:  ldfld      class Game.SubsystemTimeOfDay Game.ComponentGui::m_subsystemTimeOfDay
    IL_078f:  callvirt   instance float32 Game.SubsystemTimeOfDay::get_TimeOfDay()
    IL_0794:  sub
    IL_0795:  ldc.r4     1.
    IL_079a:  call       float32 [Engine]Engine.MathUtils::Remainder(float32,
                                                                     float32)
    IL_079f:  stloc.s    V_21
    IL_07a1:  ldloc.s    V_18
    IL_07a3:  ldarg.0
    IL_07a4:  ldfld      class Game.SubsystemTimeOfDay Game.ComponentGui::m_subsystemTimeOfDay
    IL_07a9:  callvirt   instance float32 Game.SubsystemTimeOfDay::get_TimeOfDay()
    IL_07ae:  sub
    IL_07af:  ldc.r4     1.
    IL_07b4:  call       float32 [Engine]Engine.MathUtils::Remainder(float32,
                                                                     float32)
    IL_07b9:  stloc.s    V_22
    IL_07bb:  ldloc.s    V_19
    IL_07bd:  ldloc.s    V_20
    IL_07bf:  ldloc.s    V_21
    IL_07c1:  ldloc.s    V_22
    IL_07c3:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32,
                                                               float32,
                                                               float32)
    IL_07c8:  stloc.s    V_23
    IL_07ca:  ldloc.s    V_19
    IL_07cc:  ldloc.s    V_23
    IL_07ce:  bne.un.s   IL_07f4

    IL_07d0:  ldarg.0
    IL_07d1:  ldfld      class Game.SubsystemTimeOfDay Game.ComponentGui::m_subsystemTimeOfDay
    IL_07d6:  dup
    IL_07d7:  callvirt   instance float64 Game.SubsystemTimeOfDay::get_TimeOfDayOffset()
    IL_07dc:  ldloc.s    V_19
    IL_07de:  conv.r8
    IL_07df:  add
    IL_07e0:  callvirt   instance void Game.SubsystemTimeOfDay::set_TimeOfDayOffset(float64)
    IL_07e5:  ldarg.0
    IL_07e6:  ldstr      "Dawn"
    IL_07eb:  ldc.i4.0
    IL_07ec:  ldc.i4.0
    IL_07ed:  call       instance void Game.ComponentGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_07f2:  br.s       IL_0870

    IL_07f4:  ldloc.s    V_20
    IL_07f6:  ldloc.s    V_23
    IL_07f8:  bne.un.s   IL_081e

    IL_07fa:  ldarg.0
    IL_07fb:  ldfld      class Game.SubsystemTimeOfDay Game.ComponentGui::m_subsystemTimeOfDay
    IL_0800:  dup
    IL_0801:  callvirt   instance float64 Game.SubsystemTimeOfDay::get_TimeOfDayOffset()
    IL_0806:  ldloc.s    V_20
    IL_0808:  conv.r8
    IL_0809:  add
    IL_080a:  callvirt   instance void Game.SubsystemTimeOfDay::set_TimeOfDayOffset(float64)
    IL_080f:  ldarg.0
    IL_0810:  ldstr      "Noon"
    IL_0815:  ldc.i4.0
    IL_0816:  ldc.i4.0
    IL_0817:  call       instance void Game.ComponentGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_081c:  br.s       IL_0870

    IL_081e:  ldloc.s    V_21
    IL_0820:  ldloc.s    V_23
    IL_0822:  bne.un.s   IL_0848

    IL_0824:  ldarg.0
    IL_0825:  ldfld      class Game.SubsystemTimeOfDay Game.ComponentGui::m_subsystemTimeOfDay
    IL_082a:  dup
    IL_082b:  callvirt   instance float64 Game.SubsystemTimeOfDay::get_TimeOfDayOffset()
    IL_0830:  ldloc.s    V_21
    IL_0832:  conv.r8
    IL_0833:  add
    IL_0834:  callvirt   instance void Game.SubsystemTimeOfDay::set_TimeOfDayOffset(float64)
    IL_0839:  ldarg.0
    IL_083a:  ldstr      "Dusk"
    IL_083f:  ldc.i4.0
    IL_0840:  ldc.i4.0
    IL_0841:  call       instance void Game.ComponentGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_0846:  br.s       IL_0870

    IL_0848:  ldloc.s    V_22
    IL_084a:  ldloc.s    V_23
    IL_084c:  bne.un.s   IL_0870

    IL_084e:  ldarg.0
    IL_084f:  ldfld      class Game.SubsystemTimeOfDay Game.ComponentGui::m_subsystemTimeOfDay
    IL_0854:  dup
    IL_0855:  callvirt   instance float64 Game.SubsystemTimeOfDay::get_TimeOfDayOffset()
    IL_085a:  ldloc.s    V_22
    IL_085c:  conv.r8
    IL_085d:  add
    IL_085e:  callvirt   instance void Game.SubsystemTimeOfDay::set_TimeOfDayOffset(float64)
    IL_0863:  ldarg.0
    IL_0864:  ldstr      "Midnight"
    IL_0869:  ldc.i4.0
    IL_086a:  ldc.i4.0
    IL_086b:  call       instance void Game.ComponentGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_0870:  ldarg.0
    IL_0871:  call       instance class Game.Widget Game.ComponentGui::get_ModalPanelWidget()
    IL_0876:  brfalse.s  IL_089d

    IL_0878:  ldloc.0
    IL_0879:  callvirt   instance bool Game.WidgetInput::get_Cancel()
    IL_087e:  brtrue.s   IL_0895

    IL_0880:  ldloc.0
    IL_0881:  callvirt   instance bool Game.WidgetInput::get_Back()
    IL_0886:  brtrue.s   IL_0895

    IL_0888:  ldarg.0
    IL_0889:  ldfld      class Game.ButtonWidget Game.ComponentGui::m_backButtonWidget
    IL_088e:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0893:  brfalse.s  IL_08d2

    IL_0895:  ldarg.0
    IL_0896:  ldnull
    IL_0897:  call       instance void Game.ComponentGui::set_ModalPanelWidget(class Game.Widget)
    IL_089c:  ret

    IL_089d:  ldloc.0
    IL_089e:  callvirt   instance bool Game.WidgetInput::get_Back()
    IL_08a3:  brtrue.s   IL_08b2

    IL_08a5:  ldarg.0
    IL_08a6:  ldfld      class Game.ButtonWidget Game.ComponentGui::m_backButtonWidget
    IL_08ab:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_08b0:  brfalse.s  IL_08d2

    IL_08b2:  ldarg.0
    IL_08b3:  ldfld      class Game.ComponentPlayer Game.ComponentGui::m_componentPlayer
    IL_08b8:  callvirt   instance class Game.View Game.ComponentPlayer::get_View()
    IL_08bd:  callvirt   instance class Game.GameWidget Game.View::get_GameWidget()
    IL_08c2:  ldarg.0
    IL_08c3:  ldfld      class Game.ComponentPlayer Game.ComponentGui::m_componentPlayer
    IL_08c8:  newobj     instance void Game.GameMenuDialog::.ctor(class Game.ComponentPlayer)
    IL_08cd:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_08d2:  ret
  } // end of method ComponentGui::HandleInput

  .method private hidebysig instance bool 
          IsClothingVisible() cil managed
  {
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.Widget Game.ComponentGui::get_ModalPanelWidget()
    IL_0006:  isinst     Game.ClothingWidget
    IL_000b:  ldnull
    IL_000c:  cgt.un
    IL_000e:  ret
  } // end of method ComponentGui::IsClothingVisible

  .method private hidebysig instance bool 
          IsInventoryVisible() cil managed
  {
    // 代码大小       20 (0x14)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.Widget Game.ComponentGui::get_ModalPanelWidget()
    IL_0006:  brfalse.s  IL_0012

    IL_0008:  ldarg.0
    IL_0009:  call       instance bool Game.ComponentGui::IsClothingVisible()
    IL_000e:  ldc.i4.0
    IL_000f:  ceq
    IL_0011:  ret

    IL_0012:  ldc.i4.0
    IL_0013:  ret
  } // end of method ComponentGui::IsInventoryVisible

  .method private hidebysig instance bool 
          IsActiveSlotEditable() cil managed
  {
    // 代码大小       58 (0x3a)
    .maxstack  2
    .locals init (class Game.IInventory V_0,
             int32 V_1,
             int32 V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentPlayer Game.ComponentGui::m_componentPlayer
    IL_0006:  callvirt   instance class Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_000b:  callvirt   instance class Game.IInventory Game.ComponentMiner::get_Inventory()
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  brfalse.s  IL_0038

    IL_0014:  ldloc.0
    IL_0015:  callvirt   instance int32 Game.IInventory::get_ActiveSlotIndex()
    IL_001a:  stloc.1
    IL_001b:  ldloc.0
    IL_001c:  ldloc.1
    IL_001d:  callvirt   instance int32 Game.IInventory::GetSlotValue(int32)
    IL_0022:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0027:  stloc.2
    IL_0028:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_002d:  ldloc.2
    IL_002e:  ldelem.ref
    IL_002f:  ldfld      bool Game.Block::IsEditable
    IL_0034:  brfalse.s  IL_0038

    IL_0036:  ldc.i4.1
    IL_0037:  ret

    IL_0038:  ldc.i4.0
    IL_0039:  ret
  } // end of method ComponentGui::IsActiveSlotEditable

  .method private hidebysig instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3> 
          FindNearbyEditableCell() cil managed
  {
    // 代码大小       152 (0x98)
    .maxstack  4
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> V_0,
             valuetype [Engine]Engine.Point3 V_1,
             int32 V_2,
             valuetype Game.TerrainRaycastResult V_3,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3> V_4)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentPlayer Game.ComponentGui::m_componentPlayer
    IL_0006:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> Game.ComponentPlayer::get_HighlightRaycastResult()
    IL_000b:  stloc.0
    IL_000c:  ldloca.s   V_0
    IL_000e:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_HasValue()
    IL_0013:  brfalse.s  IL_008d

    IL_0015:  ldloca.s   V_0
    IL_0017:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_001c:  ldfld      float32 Game.TerrainRaycastResult::Distance
    IL_0021:  ldc.r4     3.
    IL_0026:  bge.un.s   IL_008d

    IL_0028:  ldloca.s   V_0
    IL_002a:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_002f:  stloc.3
    IL_0030:  ldloca.s   V_3
    IL_0032:  ldflda     valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0037:  call       instance valuetype [Engine]Engine.Point3 Game.CellFace::get_Point()
    IL_003c:  stloc.1
    IL_003d:  ldarg.0
    IL_003e:  ldfld      class Game.SubsystemTerrain Game.ComponentGui::m_subsystemTerrain
    IL_0043:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0048:  ldloc.1
    IL_0049:  ldfld      int32 [Engine]Engine.Point3::X
    IL_004e:  ldloc.1
    IL_004f:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0054:  ldloc.1
    IL_0055:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_005a:  callvirt   instance int32 Game.Terrain::GetCellValue(int32,
                                                                   int32,
                                                                   int32)
    IL_005f:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0064:  stloc.2
    IL_0065:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_006a:  ldloc.2
    IL_006b:  ldelem.ref
    IL_006c:  ldfld      bool Game.Block::IsEditable
    IL_0071:  brfalse.s  IL_008d

    IL_0073:  ldloca.s   V_0
    IL_0075:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_007a:  stloc.3
    IL_007b:  ldloca.s   V_3
    IL_007d:  ldflda     valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0082:  call       instance valuetype [Engine]Engine.Point3 Game.CellFace::get_Point()
    IL_0087:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>::.ctor(!0)
    IL_008c:  ret

    IL_008d:  ldloca.s   V_4
    IL_008f:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>
    IL_0095:  ldloc.s    V_4
    IL_0097:  ret
  } // end of method ComponentGui::FindNearbyEditableCell

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
  } // end of method ComponentGui::DrawBoundingBoxFace

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
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.ComponentGui::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_000b:  ldarg.1
    IL_000c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0011:  ldarg.1
    IL_0012:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0017:  ldarg.1
    IL_0018:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_001d:  callvirt   instance int32 Game.Terrain::GetCellValue(int32,
                                                                   int32,
                                                                   int32)
    IL_0022:  stloc.0
    IL_0023:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0028:  ldloc.0
    IL_0029:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_002e:  ldelem.ref
    IL_002f:  ldarg.0
    IL_0030:  ldfld      class Game.SubsystemTerrain Game.ComponentGui::m_subsystemTerrain
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
  } // end of method ComponentGui::GetCellFaceBoundingBox

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void [Engine]Engine.Graphics.PrimitivesRenderer2D::.ctor()
    IL_0006:  stfld      class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.ComponentGui::PrimitivesRenderer2D
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void [Engine]Engine.Graphics.PrimitivesRenderer3D::.ctor()
    IL_0011:  stfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.ComponentGui::PrimitivesRenderer3D
    IL_0016:  ldarg.0
    IL_0017:  call       instance void [EntitySystem]GameEntitySystem.Component::.ctor()
    IL_001c:  ret
  } // end of method ComponentGui::.ctor

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
    IL_000e:  stsfld     int32[] Game.ComponentGui::m_drawOrders
    IL_0013:  ret
  } // end of method ComponentGui::.cctor

  .method private hidebysig instance void 
          '<HandleInput>b__108_0'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldstr      "Photo saved in pictures library"
    IL_0006:  ldc.i4.0
    IL_0007:  ldc.i4.0
    IL_0008:  call       instance void Game.ComponentGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_000d:  ret
  } // end of method ComponentGui::'<HandleInput>b__108_0'

  .property instance class Game.ContainerWidget
          ControlsContainerWidget()
  {
    .get instance class Game.ContainerWidget Game.ComponentGui::get_ControlsContainerWidget()
  } // end of property ComponentGui::ControlsContainerWidget
  .property instance class Game.TouchInputWidget
          ViewWidget()
  {
    .get instance class Game.TouchInputWidget Game.ComponentGui::get_ViewWidget()
    .set instance void Game.ComponentGui::set_ViewWidget(class Game.TouchInputWidget)
  } // end of property ComponentGui::ViewWidget
  .property instance class Game.TouchInputWidget
          MoveWidget()
  {
    .get instance class Game.TouchInputWidget Game.ComponentGui::get_MoveWidget()
    .set instance void Game.ComponentGui::set_MoveWidget(class Game.TouchInputWidget)
  } // end of property ComponentGui::MoveWidget
  .property instance class Game.MoveRoseWidget
          MoveRoseWidget()
  {
    .get instance class Game.MoveRoseWidget Game.ComponentGui::get_MoveRoseWidget()
    .set instance void Game.ComponentGui::set_MoveRoseWidget(class Game.MoveRoseWidget)
  } // end of property ComponentGui::MoveRoseWidget
  .property instance class Game.TouchInputWidget
          LookWidget()
  {
    .get instance class Game.TouchInputWidget Game.ComponentGui::get_LookWidget()
    .set instance void Game.ComponentGui::set_LookWidget(class Game.TouchInputWidget)
  } // end of property ComponentGui::LookWidget
  .property instance class Game.ValueBarWidget
          HealthBarWidget()
  {
    .get instance class Game.ValueBarWidget Game.ComponentGui::get_HealthBarWidget()
    .set instance void Game.ComponentGui::set_HealthBarWidget(class Game.ValueBarWidget)
  } // end of property ComponentGui::HealthBarWidget
  .property instance class Game.ValueBarWidget
          FoodBarWidget()
  {
    .get instance class Game.ValueBarWidget Game.ComponentGui::get_FoodBarWidget()
    .set instance void Game.ComponentGui::set_FoodBarWidget(class Game.ValueBarWidget)
  } // end of property ComponentGui::FoodBarWidget
  .property instance class Game.ValueBarWidget
          TemperatureBarWidget()
  {
    .get instance class Game.ValueBarWidget Game.ComponentGui::get_TemperatureBarWidget()
    .set instance void Game.ComponentGui::set_TemperatureBarWidget(class Game.ValueBarWidget)
  } // end of property ComponentGui::TemperatureBarWidget
  .property instance class Game.LabelWidget
          LevelLabelWidget()
  {
    .get instance class Game.LabelWidget Game.ComponentGui::get_LevelLabelWidget()
    .set instance void Game.ComponentGui::set_LevelLabelWidget(class Game.LabelWidget)
  } // end of property ComponentGui::LevelLabelWidget
  .property instance class Game.Widget ModalPanelWidget()
  {
    .get instance class Game.Widget Game.ComponentGui::get_ModalPanelWidget()
    .set instance void Game.ComponentGui::set_ModalPanelWidget(class Game.Widget)
  } // end of property ComponentGui::ModalPanelWidget
  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.ComponentGui::get_UpdateOrder()
  } // end of property ComponentGui::UpdateOrder
  .property instance int32[] DrawOrders()
  {
    .get instance int32[] Game.ComponentGui::get_DrawOrders()
  } // end of property ComponentGui::DrawOrders
} // end of class Game.ComponentGui