.class public auto ansi beforefieldinit Game.InventorySlotWidget
       extends Game.CanvasWidget
       implements Game.IDragTargetWidget
{
  .field private class Game.BevelledRectangleWidget m_rectangleWidget
  .field private class Game.RectangleWidget m_highlightWidget
  .field private class Game.BlockIconWidget m_blockIconWidget
  .field private class Game.LabelWidget m_countWidget
  .field private class Game.ValueBarWidget m_healthBarWidget
  .field private class Game.RectangleWidget m_editOverlayWidget
  .field private class Game.RectangleWidget m_interactiveOverlayWidget
  .field private class Game.DragHostWidget m_dragHostWidget
  .field private class Game.IInventory m_inventory
  .field private int32 m_slotIndex
  .field private valuetype [System.Runtime]System.Nullable`1<valuetype Game.DragMode> m_dragMode
  .field private bool m_focus
  .field private class Game.InventoryDragData m_inventoryDragData
  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private bool '<HideBlockIcon>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private bool '<HideEditOverlay>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private bool '<HideInteractiveOverlay>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private bool '<HideHighlightRectangle>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private bool '<HideHealthBar>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private bool '<ProcessingOnly>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       187 (0xbb)
    .maxstack  4
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.CanvasWidget::.ctor()
    IL_0006:  ldstr      "Widgets/InventorySlotWidget"
    IL_000b:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_0010:  stloc.0
    IL_0011:  ldarg.0
    IL_0012:  ldarg.0
    IL_0013:  ldloc.0
    IL_0014:  call       void Game.WidgetsManager::LoadWidgetContents(class Game.Widget,
                                                                      object,
                                                                      class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_0019:  ldarg.0
    IL_001a:  ldarg.0
    IL_001b:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0020:  ldstr      "InventorySlotWidget.Rectangle"
    IL_0025:  ldc.i4.1
    IL_0026:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.BevelledRectangleWidget>(string,
                                                                                                      bool)
    IL_002b:  stfld      class Game.BevelledRectangleWidget Game.InventorySlotWidget::m_rectangleWidget
    IL_0030:  ldarg.0
    IL_0031:  ldarg.0
    IL_0032:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0037:  ldstr      "InventorySlotWidget.HighlightRectangle"
    IL_003c:  ldc.i4.1
    IL_003d:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.RectangleWidget>(string,
                                                                                              bool)
    IL_0042:  stfld      class Game.RectangleWidget Game.InventorySlotWidget::m_highlightWidget
    IL_0047:  ldarg.0
    IL_0048:  ldarg.0
    IL_0049:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_004e:  ldstr      "InventorySlotWidget.Icon"
    IL_0053:  ldc.i4.1
    IL_0054:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.BlockIconWidget>(string,
                                                                                              bool)
    IL_0059:  stfld      class Game.BlockIconWidget Game.InventorySlotWidget::m_blockIconWidget
    IL_005e:  ldarg.0
    IL_005f:  ldarg.0
    IL_0060:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0065:  ldstr      "InventorySlotWidget.Count"
    IL_006a:  ldc.i4.1
    IL_006b:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_0070:  stfld      class Game.LabelWidget Game.InventorySlotWidget::m_countWidget
    IL_0075:  ldarg.0
    IL_0076:  ldarg.0
    IL_0077:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_007c:  ldstr      "InventorySlotWidget.ToolHealthBar"
    IL_0081:  ldc.i4.1
    IL_0082:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ValueBarWidget>(string,
                                                                                             bool)
    IL_0087:  stfld      class Game.ValueBarWidget Game.InventorySlotWidget::m_healthBarWidget
    IL_008c:  ldarg.0
    IL_008d:  ldarg.0
    IL_008e:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0093:  ldstr      "InventorySlotWidget.EditOverlay"
    IL_0098:  ldc.i4.1
    IL_0099:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.RectangleWidget>(string,
                                                                                              bool)
    IL_009e:  stfld      class Game.RectangleWidget Game.InventorySlotWidget::m_editOverlayWidget
    IL_00a3:  ldarg.0
    IL_00a4:  ldarg.0
    IL_00a5:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00aa:  ldstr      "InventorySlotWidget.InteractiveOverlay"
    IL_00af:  ldc.i4.1
    IL_00b0:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.RectangleWidget>(string,
                                                                                              bool)
    IL_00b5:  stfld      class Game.RectangleWidget Game.InventorySlotWidget::m_interactiveOverlayWidget
    IL_00ba:  ret
  } // end of method InventorySlotWidget::.ctor

  .method public hidebysig specialname instance bool 
          get_HideBlockIcon() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.InventorySlotWidget::'<HideBlockIcon>k__BackingField'
    IL_0006:  ret
  } // end of method InventorySlotWidget::get_HideBlockIcon

  .method public hidebysig specialname instance void 
          set_HideBlockIcon(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.InventorySlotWidget::'<HideBlockIcon>k__BackingField'
    IL_0007:  ret
  } // end of method InventorySlotWidget::set_HideBlockIcon

  .method public hidebysig specialname instance bool 
          get_HideEditOverlay() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.InventorySlotWidget::'<HideEditOverlay>k__BackingField'
    IL_0006:  ret
  } // end of method InventorySlotWidget::get_HideEditOverlay

  .method public hidebysig specialname instance void 
          set_HideEditOverlay(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.InventorySlotWidget::'<HideEditOverlay>k__BackingField'
    IL_0007:  ret
  } // end of method InventorySlotWidget::set_HideEditOverlay

  .method public hidebysig specialname instance bool 
          get_HideInteractiveOverlay() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.InventorySlotWidget::'<HideInteractiveOverlay>k__BackingField'
    IL_0006:  ret
  } // end of method InventorySlotWidget::get_HideInteractiveOverlay

  .method public hidebysig specialname instance void 
          set_HideInteractiveOverlay(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.InventorySlotWidget::'<HideInteractiveOverlay>k__BackingField'
    IL_0007:  ret
  } // end of method InventorySlotWidget::set_HideInteractiveOverlay

  .method public hidebysig specialname instance bool 
          get_HideHighlightRectangle() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.InventorySlotWidget::'<HideHighlightRectangle>k__BackingField'
    IL_0006:  ret
  } // end of method InventorySlotWidget::get_HideHighlightRectangle

  .method public hidebysig specialname instance void 
          set_HideHighlightRectangle(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.InventorySlotWidget::'<HideHighlightRectangle>k__BackingField'
    IL_0007:  ret
  } // end of method InventorySlotWidget::set_HideHighlightRectangle

  .method public hidebysig specialname instance bool 
          get_HideHealthBar() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.InventorySlotWidget::'<HideHealthBar>k__BackingField'
    IL_0006:  ret
  } // end of method InventorySlotWidget::get_HideHealthBar

  .method public hidebysig specialname instance void 
          set_HideHealthBar(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.InventorySlotWidget::'<HideHealthBar>k__BackingField'
    IL_0007:  ret
  } // end of method InventorySlotWidget::set_HideHealthBar

  .method public hidebysig specialname instance bool 
          get_ProcessingOnly() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.InventorySlotWidget::'<ProcessingOnly>k__BackingField'
    IL_0006:  ret
  } // end of method InventorySlotWidget::get_ProcessingOnly

  .method public hidebysig specialname instance void 
          set_ProcessingOnly(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.InventorySlotWidget::'<ProcessingOnly>k__BackingField'
    IL_0007:  ret
  } // end of method InventorySlotWidget::set_ProcessingOnly

  .method public hidebysig specialname instance valuetype [Engine]Engine.Color 
          get_CenterColor() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.BevelledRectangleWidget Game.InventorySlotWidget::m_rectangleWidget
    IL_0006:  callvirt   instance valuetype [Engine]Engine.Color Game.BevelledRectangleWidget::get_CenterColor()
    IL_000b:  ret
  } // end of method InventorySlotWidget::get_CenterColor

  .method public hidebysig specialname instance void 
          set_CenterColor(valuetype [Engine]Engine.Color 'value') cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.BevelledRectangleWidget Game.InventorySlotWidget::m_rectangleWidget
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance void Game.BevelledRectangleWidget::set_CenterColor(valuetype [Engine]Engine.Color)
    IL_000c:  ret
  } // end of method InventorySlotWidget::set_CenterColor

  .method public hidebysig specialname instance valuetype [Engine]Engine.Color 
          get_BevelColor() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.BevelledRectangleWidget Game.InventorySlotWidget::m_rectangleWidget
    IL_0006:  callvirt   instance valuetype [Engine]Engine.Color Game.BevelledRectangleWidget::get_BevelColor()
    IL_000b:  ret
  } // end of method InventorySlotWidget::get_BevelColor

  .method public hidebysig specialname instance void 
          set_BevelColor(valuetype [Engine]Engine.Color 'value') cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.BevelledRectangleWidget Game.InventorySlotWidget::m_rectangleWidget
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance void Game.BevelledRectangleWidget::set_BevelColor(valuetype [Engine]Engine.Color)
    IL_000c:  ret
  } // end of method InventorySlotWidget::set_BevelColor

  .method public hidebysig specialname instance float32 
          get_Light() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.BevelledRectangleWidget Game.InventorySlotWidget::m_rectangleWidget
    IL_0006:  callvirt   instance float32 Game.BevelledRectangleWidget::get_Light()
    IL_000b:  ret
  } // end of method InventorySlotWidget::get_Light

  .method public hidebysig specialname instance void 
          set_Light(float32 'value') cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.BevelledRectangleWidget Game.InventorySlotWidget::m_rectangleWidget
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance void Game.BevelledRectangleWidget::set_Light(float32)
    IL_000c:  ret
  } // end of method InventorySlotWidget::set_Light

  .method public hidebysig specialname instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> 
          get_CustomViewMatrix() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.BlockIconWidget Game.InventorySlotWidget::m_blockIconWidget
    IL_0006:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.BlockIconWidget::get_CustomViewMatrix()
    IL_000b:  ret
  } // end of method InventorySlotWidget::get_CustomViewMatrix

  .method public hidebysig specialname instance void 
          set_CustomViewMatrix(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> 'value') cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.BlockIconWidget Game.InventorySlotWidget::m_blockIconWidget
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance void Game.BlockIconWidget::set_CustomViewMatrix(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_000c:  ret
  } // end of method InventorySlotWidget::set_CustomViewMatrix

  .method public hidebysig instance void 
          AssignInventorySlot(class Game.IInventory inventory,
                              int32 slotIndex) cil managed
  {
    // 代码大小       66 (0x42)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.IInventory Game.InventorySlotWidget::m_inventory
    IL_0007:  ldarg.0
    IL_0008:  ldarg.2
    IL_0009:  stfld      int32 Game.InventorySlotWidget::m_slotIndex
    IL_000e:  ldarg.0
    IL_000f:  ldarg.1
    IL_0010:  brtrue.s   IL_0015

    IL_0012:  ldnull
    IL_0013:  br.s       IL_0026

    IL_0015:  ldarg.1
    IL_0016:  callvirt   instance class Game.SubsystemInventory Game.IInventory::get_SubsystemInventory()
    IL_001b:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0020:  ldc.i4.1
    IL_0021:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_0026:  stfld      class Game.SubsystemTerrain Game.InventorySlotWidget::m_subsystemTerrain
    IL_002b:  ldarg.0
    IL_002c:  ldfld      class Game.BlockIconWidget Game.InventorySlotWidget::m_blockIconWidget
    IL_0031:  callvirt   instance class Game.DrawBlockEnvironmentData Game.BlockIconWidget::get_DrawBlockEnvironmentData()
    IL_0036:  ldarg.0
    IL_0037:  ldfld      class Game.SubsystemTerrain Game.InventorySlotWidget::m_subsystemTerrain
    IL_003c:  stfld      class Game.SubsystemTerrain Game.DrawBlockEnvironmentData::SubsystemTerrain
    IL_0041:  ret
  } // end of method InventorySlotWidget::AssignInventorySlot

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       1122 (0x462)
    .maxstack  6
    .locals init (class [EntitySystem]GameEntitySystem.Component V_0,
             class Game.ComponentFrame V_1,
             valuetype Game.InputState V_2,
             bool V_3,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> V_4,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> V_5,
             int32 V_6,
             int32 V_7,
             int32 V_8,
             int32 V_9,
             class Game.Block V_10,
             class Game.SubsystemTerrain V_11,
             class Game.ContainerWidget V_12)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.Widget::Update()
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class Game.IInventory Game.InventorySlotWidget::m_inventory
    IL_000c:  brfalse    IL_0461

    IL_0011:  ldarg.0
    IL_0012:  ldfld      class Game.IInventory Game.InventorySlotWidget::m_inventory
    IL_0017:  isinst     [EntitySystem]GameEntitySystem.Component
    IL_001c:  stloc.0
    IL_001d:  ldloc.0
    IL_001e:  brfalse.s  IL_0045

    IL_0020:  ldloc.0
    IL_0021:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0026:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentFrame>()
    IL_002b:  stloc.1
    IL_002c:  ldloc.1
    IL_002d:  brfalse.s  IL_0045

    IL_002f:  ldarg.0
    IL_0030:  ldfld      class Game.BlockIconWidget Game.InventorySlotWidget::m_blockIconWidget
    IL_0035:  callvirt   instance class Game.DrawBlockEnvironmentData Game.BlockIconWidget::get_DrawBlockEnvironmentData()
    IL_003a:  ldloc.1
    IL_003b:  callvirt   instance valuetype [Engine]Engine.Matrix Game.ComponentFrame::get_Matrix()
    IL_0040:  stfld      valuetype [Engine]Engine.Matrix Game.DrawBlockEnvironmentData::InWorldMatrix
    IL_0045:  ldarg.0
    IL_0046:  ldfld      bool Game.InventorySlotWidget::m_focus
    IL_004b:  brfalse.s  IL_006a

    IL_004d:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_0052:  stloc.2
    IL_0053:  ldloca.s   V_2
    IL_0055:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputState::Press
    IL_005a:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_005f:  brtrue.s   IL_006a

    IL_0061:  ldarg.0
    IL_0062:  ldc.i4.0
    IL_0063:  stfld      bool Game.InventorySlotWidget::m_focus
    IL_0068:  br.s       IL_009f

    IL_006a:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_006f:  stloc.2
    IL_0070:  ldloca.s   V_2
    IL_0072:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputState::Click
    IL_0077:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_007c:  brfalse.s  IL_009f

    IL_007e:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_0083:  stloc.2
    IL_0084:  ldloca.s   V_2
    IL_0086:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputState::Click
    IL_008b:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_0090:  call       class Game.Widget Game.WidgetsManager::HitTest(valuetype [Engine]Engine.Vector2)
    IL_0095:  ldarg.0
    IL_0096:  bne.un.s   IL_009f

    IL_0098:  ldarg.0
    IL_0099:  ldc.i4.1
    IL_009a:  stfld      bool Game.InventorySlotWidget::m_focus
    IL_009f:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_00a4:  stloc.2
    IL_00a5:  ldloca.s   V_2
    IL_00a7:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputState::Tap
    IL_00ac:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_00b1:  brfalse    IL_01cd

    IL_00b6:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_00bb:  stloc.2
    IL_00bc:  ldloca.s   V_2
    IL_00be:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputState::Tap
    IL_00c3:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_00c8:  call       class Game.Widget Game.WidgetsManager::HitTest(valuetype [Engine]Engine.Vector2)
    IL_00cd:  ldarg.0
    IL_00ce:  bne.un     IL_01cd

    IL_00d3:  ldc.i4.0
    IL_00d4:  stloc.3
    IL_00d5:  ldarg.0
    IL_00d6:  ldfld      class Game.IInventory Game.InventorySlotWidget::m_inventory
    IL_00db:  callvirt   instance class Game.SubsystemInventory Game.IInventory::get_SubsystemInventory()
    IL_00e0:  callvirt   instance class Game.IInventory Game.SubsystemInventory::get_SplitSourceInventory()
    IL_00e5:  ldarg.0
    IL_00e6:  ldfld      class Game.IInventory Game.InventorySlotWidget::m_inventory
    IL_00eb:  bne.un.s   IL_011b

    IL_00ed:  ldarg.0
    IL_00ee:  ldfld      class Game.IInventory Game.InventorySlotWidget::m_inventory
    IL_00f3:  callvirt   instance class Game.SubsystemInventory Game.IInventory::get_SubsystemInventory()
    IL_00f8:  callvirt   instance int32 Game.SubsystemInventory::get_SplitSourceSlotIndex()
    IL_00fd:  ldarg.0
    IL_00fe:  ldfld      int32 Game.InventorySlotWidget::m_slotIndex
    IL_0103:  bne.un.s   IL_011b

    IL_0105:  ldarg.0
    IL_0106:  ldfld      class Game.IInventory Game.InventorySlotWidget::m_inventory
    IL_010b:  callvirt   instance class Game.SubsystemInventory Game.IInventory::get_SubsystemInventory()
    IL_0110:  ldnull
    IL_0111:  ldc.i4.m1
    IL_0112:  callvirt   instance void Game.SubsystemInventory::SetSplitSourceInventoryAndSlot(class Game.IInventory,
                                                                                               int32)
    IL_0117:  ldc.i4.1
    IL_0118:  stloc.3
    IL_0119:  br.s       IL_017a

    IL_011b:  ldarg.0
    IL_011c:  ldfld      class Game.IInventory Game.InventorySlotWidget::m_inventory
    IL_0121:  callvirt   instance class Game.SubsystemInventory Game.IInventory::get_SubsystemInventory()
    IL_0126:  callvirt   instance class Game.IInventory Game.SubsystemInventory::get_SplitSourceInventory()
    IL_012b:  brfalse.s  IL_017a

    IL_012d:  ldarg.0
    IL_012e:  ldarg.0
    IL_012f:  ldfld      class Game.IInventory Game.InventorySlotWidget::m_inventory
    IL_0134:  callvirt   instance class Game.SubsystemInventory Game.IInventory::get_SubsystemInventory()
    IL_0139:  callvirt   instance class Game.IInventory Game.SubsystemInventory::get_SplitSourceInventory()
    IL_013e:  ldarg.0
    IL_013f:  ldfld      class Game.IInventory Game.InventorySlotWidget::m_inventory
    IL_0144:  callvirt   instance class Game.SubsystemInventory Game.IInventory::get_SubsystemInventory()
    IL_0149:  callvirt   instance int32 Game.SubsystemInventory::get_SplitSourceSlotIndex()
    IL_014e:  ldarg.0
    IL_014f:  ldfld      class Game.IInventory Game.InventorySlotWidget::m_inventory
    IL_0154:  ldarg.0
    IL_0155:  ldfld      int32 Game.InventorySlotWidget::m_slotIndex
    IL_015a:  ldc.i4.1
    IL_015b:  call       instance bool Game.InventorySlotWidget::HandleMoveItem(class Game.IInventory,
                                                                                int32,
                                                                                class Game.IInventory,
                                                                                int32,
                                                                                int32)
    IL_0160:  stloc.3
    IL_0161:  ldstr      "Audio/UI/ButtonClick"
    IL_0166:  ldc.r4     1.
    IL_016b:  ldc.r4     0.0
    IL_0170:  ldc.r4     0.0
    IL_0175:  call       void Game.AudioManager::PlaySound(string,
                                                           float32,
                                                           float32,
                                                           float32)
    IL_017a:  ldloc.3
    IL_017b:  brtrue.s   IL_01cd

    IL_017d:  ldarg.0
    IL_017e:  ldfld      class Game.IInventory Game.InventorySlotWidget::m_inventory
    IL_0183:  callvirt   instance int32 Game.IInventory::get_ActiveSlotIndex()
    IL_0188:  ldarg.0
    IL_0189:  ldfld      int32 Game.InventorySlotWidget::m_slotIndex
    IL_018e:  beq.s      IL_01cd

    IL_0190:  ldarg.0
    IL_0191:  ldfld      class Game.IInventory Game.InventorySlotWidget::m_inventory
    IL_0196:  ldarg.0
    IL_0197:  ldfld      int32 Game.InventorySlotWidget::m_slotIndex
    IL_019c:  callvirt   instance void Game.IInventory::set_ActiveSlotIndex(int32)
    IL_01a1:  ldarg.0
    IL_01a2:  ldfld      class Game.IInventory Game.InventorySlotWidget::m_inventory
    IL_01a7:  callvirt   instance int32 Game.IInventory::get_ActiveSlotIndex()
    IL_01ac:  ldarg.0
    IL_01ad:  ldfld      int32 Game.InventorySlotWidget::m_slotIndex
    IL_01b2:  bne.un.s   IL_01cd

    IL_01b4:  ldstr      "Audio/UI/ButtonClick"
    IL_01b9:  ldc.r4     1.
    IL_01be:  ldc.r4     0.0
    IL_01c3:  ldc.r4     0.0
    IL_01c8:  call       void Game.AudioManager::PlaySound(string,
                                                           float32,
                                                           float32,
                                                           float32)
    IL_01cd:  ldarg.0
    IL_01ce:  ldfld      bool Game.InventorySlotWidget::m_focus
    IL_01d3:  brfalse    IL_0461

    IL_01d8:  ldarg.0
    IL_01d9:  call       instance bool Game.InventorySlotWidget::get_ProcessingOnly()
    IL_01de:  brtrue     IL_0461

    IL_01e3:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_01e8:  ldfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputState::Hold
    IL_01ed:  stloc.s    V_4
    IL_01ef:  ldloca.s   V_4
    IL_01f1:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_01f6:  brfalse    IL_0293

    IL_01fb:  ldloca.s   V_4
    IL_01fd:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_0202:  call       class Game.Widget Game.WidgetsManager::HitTest(valuetype [Engine]Engine.Vector2)
    IL_0207:  ldarg.0
    IL_0208:  bne.un     IL_0293

    IL_020d:  ldarg.0
    IL_020e:  call       instance class Game.DragHostWidget Game.InventorySlotWidget::get_DragHostWidget()
    IL_0213:  callvirt   instance bool Game.DragHostWidget::get_IsDragInProgress()
    IL_0218:  brtrue.s   IL_0293

    IL_021a:  ldarg.0
    IL_021b:  ldfld      class Game.IInventory Game.InventorySlotWidget::m_inventory
    IL_0220:  ldarg.0
    IL_0221:  ldfld      int32 Game.InventorySlotWidget::m_slotIndex
    IL_0226:  callvirt   instance int32 Game.IInventory::GetSlotCount(int32)
    IL_022b:  ldc.i4.0
    IL_022c:  ble.s      IL_0293

    IL_022e:  ldarg.0
    IL_022f:  ldfld      class Game.IInventory Game.InventorySlotWidget::m_inventory
    IL_0234:  callvirt   instance class Game.SubsystemInventory Game.IInventory::get_SubsystemInventory()
    IL_0239:  callvirt   instance class Game.IInventory Game.SubsystemInventory::get_SplitSourceInventory()
    IL_023e:  ldarg.0
    IL_023f:  ldfld      class Game.IInventory Game.InventorySlotWidget::m_inventory
    IL_0244:  bne.un.s   IL_025e

    IL_0246:  ldarg.0
    IL_0247:  ldfld      class Game.IInventory Game.InventorySlotWidget::m_inventory
    IL_024c:  callvirt   instance class Game.SubsystemInventory Game.IInventory::get_SubsystemInventory()
    IL_0251:  callvirt   instance int32 Game.SubsystemInventory::get_SplitSourceSlotIndex()
    IL_0256:  ldarg.0
    IL_0257:  ldfld      int32 Game.InventorySlotWidget::m_slotIndex
    IL_025c:  beq.s      IL_0293

    IL_025e:  ldarg.0
    IL_025f:  ldfld      class Game.IInventory Game.InventorySlotWidget::m_inventory
    IL_0264:  callvirt   instance class Game.SubsystemInventory Game.IInventory::get_SubsystemInventory()
    IL_0269:  ldarg.0
    IL_026a:  ldfld      class Game.IInventory Game.InventorySlotWidget::m_inventory
    IL_026f:  ldarg.0
    IL_0270:  ldfld      int32 Game.InventorySlotWidget::m_slotIndex
    IL_0275:  callvirt   instance void Game.SubsystemInventory::SetSplitSourceInventoryAndSlot(class Game.IInventory,
                                                                                               int32)
    IL_027a:  ldstr      "Audio/UI/ButtonClick"
    IL_027f:  ldc.r4     1.
    IL_0284:  ldc.r4     0.0
    IL_0289:  ldc.r4     0.0
    IL_028e:  call       void Game.AudioManager::PlaySound(string,
                                                           float32,
                                                           float32,
                                                           float32)
    IL_0293:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_0298:  ldfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputState::Drag
    IL_029d:  stloc.s    V_5
    IL_029f:  ldloca.s   V_5
    IL_02a1:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_02a6:  brfalse    IL_0461

    IL_02ab:  ldloca.s   V_5
    IL_02ad:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_02b2:  call       class Game.Widget Game.WidgetsManager::HitTest(valuetype [Engine]Engine.Vector2)
    IL_02b7:  ldarg.0
    IL_02b8:  bne.un     IL_0461

    IL_02bd:  ldarg.0
    IL_02be:  call       instance class Game.DragHostWidget Game.InventorySlotWidget::get_DragHostWidget()
    IL_02c3:  callvirt   instance bool Game.DragHostWidget::get_IsDragInProgress()
    IL_02c8:  brtrue     IL_0461

    IL_02cd:  ldarg.0
    IL_02ce:  ldfld      class Game.IInventory Game.InventorySlotWidget::m_inventory
    IL_02d3:  ldarg.0
    IL_02d4:  ldfld      int32 Game.InventorySlotWidget::m_slotIndex
    IL_02d9:  callvirt   instance int32 Game.IInventory::GetSlotCount(int32)
    IL_02de:  stloc.s    V_6
    IL_02e0:  ldloc.s    V_6
    IL_02e2:  ldc.i4.0
    IL_02e3:  ble        IL_0461

    IL_02e8:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_02ed:  ldfld      valuetype Game.DragMode Game.InputState::DragMode
    IL_02f2:  brfalse.s  IL_02f7

    IL_02f4:  ldc.i4.1
    IL_02f5:  br.s       IL_02f9

    IL_02f7:  ldloc.s    V_6
    IL_02f9:  stloc.s    V_7
    IL_02fb:  ldarg.0
    IL_02fc:  ldfld      class Game.IInventory Game.InventorySlotWidget::m_inventory
    IL_0301:  ldarg.0
    IL_0302:  ldfld      int32 Game.InventorySlotWidget::m_slotIndex
    IL_0307:  callvirt   instance int32 Game.IInventory::GetSlotValue(int32)
    IL_030c:  stloc.s    V_8
    IL_030e:  ldloc.s    V_8
    IL_0310:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0315:  stloc.s    V_9
    IL_0317:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_031c:  ldloc.s    V_9
    IL_031e:  ldelem.ref
    IL_031f:  stloc.s    V_10
    IL_0321:  ldarg.0
    IL_0322:  ldfld      class Game.IInventory Game.InventorySlotWidget::m_inventory
    IL_0327:  callvirt   instance class Game.SubsystemInventory Game.IInventory::get_SubsystemInventory()
    IL_032c:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0331:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>()
    IL_0336:  stloc.s    V_11
    IL_0338:  ldnull
    IL_0339:  ldstr      "Widgets/InventoryDragWidget"
    IL_033e:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_0343:  ldnull
    IL_0344:  call       class Game.Widget Game.WidgetsManager::LoadWidget(object,
                                                                           class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                           class Game.ContainerWidget)
    IL_0349:  castclass  Game.ContainerWidget
    IL_034e:  stloc.s    V_12
    IL_0350:  ldloc.s    V_12
    IL_0352:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0357:  ldstr      "InventoryDragWidget.Icon"
    IL_035c:  ldc.i4.1
    IL_035d:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.BlockIconWidget>(string,
                                                                                              bool)
    IL_0362:  ldloc.s    V_8
    IL_0364:  ldc.i4.s   15
    IL_0366:  call       int32 Game.TerrainData::ReplaceLight(int32,
                                                              int32)
    IL_036b:  callvirt   instance void Game.BlockIconWidget::set_Value(int32)
    IL_0370:  ldloc.s    V_12
    IL_0372:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0377:  ldstr      "InventoryDragWidget.Icon"
    IL_037c:  ldc.i4.1
    IL_037d:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.BlockIconWidget>(string,
                                                                                              bool)
    IL_0382:  callvirt   instance class Game.DrawBlockEnvironmentData Game.BlockIconWidget::get_DrawBlockEnvironmentData()
    IL_0387:  ldloc.s    V_11
    IL_0389:  stfld      class Game.SubsystemTerrain Game.DrawBlockEnvironmentData::SubsystemTerrain
    IL_038e:  ldloc.s    V_12
    IL_0390:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0395:  ldstr      "InventoryDragWidget.Name"
    IL_039a:  ldc.i4.1
    IL_039b:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_03a0:  ldloc.s    V_10
    IL_03a2:  ldloc.s    V_11
    IL_03a4:  ldloc.s    V_8
    IL_03a6:  callvirt   instance string Game.Block::GetDisplayName(class Game.SubsystemTerrain,
                                                                    int32)
    IL_03ab:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_03b0:  ldloc.s    V_12
    IL_03b2:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_03b7:  ldstr      "InventoryDragWidget.Count"
    IL_03bc:  ldc.i4.1
    IL_03bd:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_03c2:  ldloca.s   V_7
    IL_03c4:  call       instance string [System.Runtime]System.Int32::ToString()
    IL_03c9:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_03ce:  ldloc.s    V_12
    IL_03d0:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_03d5:  ldstr      "InventoryDragWidget.Count"
    IL_03da:  ldc.i4.1
    IL_03db:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_03e0:  ldarg.0
    IL_03e1:  ldfld      class Game.IInventory Game.InventorySlotWidget::m_inventory
    IL_03e6:  isinst     Game.ComponentCreativeInventory
    IL_03eb:  brtrue.s   IL_0400

    IL_03ed:  ldarg.0
    IL_03ee:  ldfld      class Game.IInventory Game.InventorySlotWidget::m_inventory
    IL_03f3:  isinst     Game.ComponentFurnitureInventory
    IL_03f8:  ldnull
    IL_03f9:  cgt.un
    IL_03fb:  ldc.i4.0
    IL_03fc:  ceq
    IL_03fe:  br.s       IL_0401

    IL_0400:  ldc.i4.0
    IL_0401:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0406:  ldarg.0
    IL_0407:  call       instance class Game.DragHostWidget Game.InventorySlotWidget::get_DragHostWidget()
    IL_040c:  ldloc.s    V_12
    IL_040e:  newobj     instance void Game.InventoryDragData::.ctor()
    IL_0413:  dup
    IL_0414:  ldarg.0
    IL_0415:  ldfld      class Game.IInventory Game.InventorySlotWidget::m_inventory
    IL_041a:  stfld      class Game.IInventory Game.InventoryDragData::Inventory
    IL_041f:  dup
    IL_0420:  ldarg.0
    IL_0421:  ldfld      int32 Game.InventorySlotWidget::m_slotIndex
    IL_0426:  stfld      int32 Game.InventoryDragData::SlotIndex
    IL_042b:  dup
    IL_042c:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_0431:  ldfld      valuetype Game.DragMode Game.InputState::DragMode
    IL_0436:  stfld      valuetype Game.DragMode Game.InventoryDragData::DragMode
    IL_043b:  ldarg.0
    IL_043c:  ldftn      instance void Game.InventorySlotWidget::'<Update>b__52_0'()
    IL_0442:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0447:  callvirt   instance void Game.DragHostWidget::BeginDrag(class Game.Widget,
                                                                      object,
                                                                      class [System.Runtime]System.Action)
    IL_044c:  ldarg.0
    IL_044d:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_0452:  ldfld      valuetype Game.DragMode Game.InputState::DragMode
    IL_0457:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.DragMode>::.ctor(!0)
    IL_045c:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype Game.DragMode> Game.InventorySlotWidget::m_dragMode
    IL_0461:  ret
  } // end of method InventorySlotWidget::Update

  .method public hidebysig virtual instance void 
          Measure(valuetype [Engine]Engine.Vector2 availableSize) cil managed
  {
    // 代码大小       761 (0x2f9)
    .maxstack  5
    .locals init (bool V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             class Game.Block V_4,
             int32 V_5)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.IInventory Game.InventorySlotWidget::m_inventory
    IL_0006:  brfalse    IL_028e

    IL_000b:  ldarg.0
    IL_000c:  ldfld      class Game.IInventory Game.InventorySlotWidget::m_inventory
    IL_0011:  isinst     Game.ComponentCreativeInventory
    IL_0016:  brtrue.s   IL_0028

    IL_0018:  ldarg.0
    IL_0019:  ldfld      class Game.IInventory Game.InventorySlotWidget::m_inventory
    IL_001e:  isinst     Game.ComponentFurnitureInventory
    IL_0023:  ldnull
    IL_0024:  cgt.un
    IL_0026:  br.s       IL_0029

    IL_0028:  ldc.i4.1
    IL_0029:  stloc.0
    IL_002a:  ldarg.0
    IL_002b:  ldfld      class Game.IInventory Game.InventorySlotWidget::m_inventory
    IL_0030:  ldarg.0
    IL_0031:  ldfld      int32 Game.InventorySlotWidget::m_slotIndex
    IL_0036:  callvirt   instance int32 Game.IInventory::GetSlotCount(int32)
    IL_003b:  stloc.1
    IL_003c:  ldloc.0
    IL_003d:  brtrue.s   IL_0066

    IL_003f:  ldarg.0
    IL_0040:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype Game.DragMode> Game.InventorySlotWidget::m_dragMode
    IL_0045:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.DragMode>::get_HasValue()
    IL_004a:  brfalse.s  IL_0066

    IL_004c:  ldarg.0
    IL_004d:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype Game.DragMode> Game.InventorySlotWidget::m_dragMode
    IL_0052:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.DragMode>::get_Value()
    IL_0057:  brfalse.s  IL_0064

    IL_0059:  ldloc.1
    IL_005a:  ldc.i4.1
    IL_005b:  sub
    IL_005c:  ldc.i4.0
    IL_005d:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_0062:  br.s       IL_0065

    IL_0064:  ldc.i4.0
    IL_0065:  stloc.1
    IL_0066:  ldarg.0
    IL_0067:  ldfld      class Game.BevelledRectangleWidget Game.InventorySlotWidget::m_rectangleWidget
    IL_006c:  ldc.i4.1
    IL_006d:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0072:  ldloc.1
    IL_0073:  ldc.i4.0
    IL_0074:  ble        IL_0196

    IL_0079:  ldarg.0
    IL_007a:  ldfld      class Game.IInventory Game.InventorySlotWidget::m_inventory
    IL_007f:  ldarg.0
    IL_0080:  ldfld      int32 Game.InventorySlotWidget::m_slotIndex
    IL_0085:  callvirt   instance int32 Game.IInventory::GetSlotValue(int32)
    IL_008a:  stloc.2
    IL_008b:  ldloc.2
    IL_008c:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0091:  stloc.3
    IL_0092:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0097:  ldloc.3
    IL_0098:  ldelem.ref
    IL_0099:  stloc.s    V_4
    IL_009b:  ldarg.0
    IL_009c:  ldfld      class Game.BlockIconWidget Game.InventorySlotWidget::m_blockIconWidget
    IL_00a1:  ldloc.2
    IL_00a2:  ldc.i4.s   15
    IL_00a4:  call       int32 Game.TerrainData::ReplaceLight(int32,
                                                              int32)
    IL_00a9:  callvirt   instance void Game.BlockIconWidget::set_Value(int32)
    IL_00ae:  ldarg.0
    IL_00af:  ldfld      class Game.BlockIconWidget Game.InventorySlotWidget::m_blockIconWidget
    IL_00b4:  ldarg.0
    IL_00b5:  call       instance bool Game.InventorySlotWidget::get_HideBlockIcon()
    IL_00ba:  ldc.i4.0
    IL_00bb:  ceq
    IL_00bd:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_00c2:  ldarg.0
    IL_00c3:  ldfld      class Game.LabelWidget Game.InventorySlotWidget::m_countWidget
    IL_00c8:  ldloca.s   V_1
    IL_00ca:  call       instance string [System.Runtime]System.Int32::ToString()
    IL_00cf:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_00d4:  ldarg.0
    IL_00d5:  ldfld      class Game.LabelWidget Game.InventorySlotWidget::m_countWidget
    IL_00da:  ldloc.1
    IL_00db:  ldc.i4.1
    IL_00dc:  ble.s      IL_00e4

    IL_00de:  ldloc.0
    IL_00df:  ldc.i4.0
    IL_00e0:  ceq
    IL_00e2:  br.s       IL_00e5

    IL_00e4:  ldc.i4.0
    IL_00e5:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_00ea:  ldarg.0
    IL_00eb:  ldfld      class Game.RectangleWidget Game.InventorySlotWidget::m_editOverlayWidget
    IL_00f0:  ldarg.0
    IL_00f1:  call       instance bool Game.InventorySlotWidget::get_HideEditOverlay()
    IL_00f6:  brtrue.s   IL_0101

    IL_00f8:  ldloc.s    V_4
    IL_00fa:  ldfld      bool Game.Block::IsEditable
    IL_00ff:  br.s       IL_0102

    IL_0101:  ldc.i4.0
    IL_0102:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0107:  ldarg.0
    IL_0108:  ldfld      class Game.RectangleWidget Game.InventorySlotWidget::m_interactiveOverlayWidget
    IL_010d:  ldarg.0
    IL_010e:  call       instance bool Game.InventorySlotWidget::get_HideInteractiveOverlay()
    IL_0113:  brtrue.s   IL_0136

    IL_0115:  ldarg.0
    IL_0116:  ldfld      class Game.SubsystemTerrain Game.InventorySlotWidget::m_subsystemTerrain
    IL_011b:  brtrue.s   IL_0126

    IL_011d:  ldloc.s    V_4
    IL_011f:  ldfld      bool Game.Block::DefaultIsInteractive
    IL_0124:  br.s       IL_0137

    IL_0126:  ldloc.s    V_4
    IL_0128:  ldarg.0
    IL_0129:  ldfld      class Game.SubsystemTerrain Game.InventorySlotWidget::m_subsystemTerrain
    IL_012e:  ldloc.2
    IL_012f:  callvirt   instance bool Game.Block::IsInteractive(class Game.SubsystemTerrain,
                                                                 int32)
    IL_0134:  br.s       IL_0137

    IL_0136:  ldc.i4.0
    IL_0137:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_013c:  ldloc.0
    IL_013d:  brtrue.s   IL_0188

    IL_013f:  ldloc.s    V_4
    IL_0141:  ldfld      int32 Game.Block::Durability
    IL_0146:  ldc.i4.0
    IL_0147:  ble.s      IL_0188

    IL_0149:  ldarg.0
    IL_014a:  call       instance bool Game.InventorySlotWidget::get_HideHealthBar()
    IL_014f:  brtrue.s   IL_0188

    IL_0151:  ldloc.s    V_4
    IL_0153:  ldloc.2
    IL_0154:  callvirt   instance int32 Game.Block::GetDamage(int32)
    IL_0159:  stloc.s    V_5
    IL_015b:  ldarg.0
    IL_015c:  ldfld      class Game.ValueBarWidget Game.InventorySlotWidget::m_healthBarWidget
    IL_0161:  ldc.i4.1
    IL_0162:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0167:  ldarg.0
    IL_0168:  ldfld      class Game.ValueBarWidget Game.InventorySlotWidget::m_healthBarWidget
    IL_016d:  ldloc.s    V_4
    IL_016f:  ldfld      int32 Game.Block::Durability
    IL_0174:  ldloc.s    V_5
    IL_0176:  sub
    IL_0177:  conv.r4
    IL_0178:  ldloc.s    V_4
    IL_017a:  ldfld      int32 Game.Block::Durability
    IL_017f:  conv.r4
    IL_0180:  div
    IL_0181:  callvirt   instance void Game.ValueBarWidget::set_Value(float32)
    IL_0186:  br.s       IL_01d2

    IL_0188:  ldarg.0
    IL_0189:  ldfld      class Game.ValueBarWidget Game.InventorySlotWidget::m_healthBarWidget
    IL_018e:  ldc.i4.0
    IL_018f:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0194:  br.s       IL_01d2

    IL_0196:  ldarg.0
    IL_0197:  ldfld      class Game.BlockIconWidget Game.InventorySlotWidget::m_blockIconWidget
    IL_019c:  ldc.i4.0
    IL_019d:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_01a2:  ldarg.0
    IL_01a3:  ldfld      class Game.LabelWidget Game.InventorySlotWidget::m_countWidget
    IL_01a8:  ldc.i4.0
    IL_01a9:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_01ae:  ldarg.0
    IL_01af:  ldfld      class Game.ValueBarWidget Game.InventorySlotWidget::m_healthBarWidget
    IL_01b4:  ldc.i4.0
    IL_01b5:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_01ba:  ldarg.0
    IL_01bb:  ldfld      class Game.RectangleWidget Game.InventorySlotWidget::m_editOverlayWidget
    IL_01c0:  ldc.i4.0
    IL_01c1:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_01c6:  ldarg.0
    IL_01c7:  ldfld      class Game.RectangleWidget Game.InventorySlotWidget::m_interactiveOverlayWidget
    IL_01cc:  ldc.i4.0
    IL_01cd:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_01d2:  ldarg.0
    IL_01d3:  ldfld      class Game.RectangleWidget Game.InventorySlotWidget::m_highlightWidget
    IL_01d8:  ldarg.0
    IL_01d9:  call       instance bool Game.InventorySlotWidget::get_HideHighlightRectangle()
    IL_01de:  ldc.i4.0
    IL_01df:  ceq
    IL_01e1:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_01e6:  ldarg.0
    IL_01e7:  ldfld      class Game.RectangleWidget Game.InventorySlotWidget::m_highlightWidget
    IL_01ec:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
    IL_01f1:  callvirt   instance void Game.RectangleWidget::set_OutlineColor(valuetype [Engine]Engine.Color)
    IL_01f6:  ldarg.0
    IL_01f7:  ldfld      class Game.RectangleWidget Game.InventorySlotWidget::m_highlightWidget
    IL_01fc:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
    IL_0201:  callvirt   instance void Game.RectangleWidget::set_FillColor(valuetype [Engine]Engine.Color)
    IL_0206:  ldarg.0
    IL_0207:  ldfld      int32 Game.InventorySlotWidget::m_slotIndex
    IL_020c:  ldarg.0
    IL_020d:  ldfld      class Game.IInventory Game.InventorySlotWidget::m_inventory
    IL_0212:  callvirt   instance int32 Game.IInventory::get_ActiveSlotIndex()
    IL_0217:  bne.un.s   IL_0241

    IL_0219:  ldarg.0
    IL_021a:  ldfld      class Game.RectangleWidget Game.InventorySlotWidget::m_highlightWidget
    IL_021f:  ldc.i4.0
    IL_0220:  ldc.i4.0
    IL_0221:  ldc.i4.0
    IL_0222:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0227:  callvirt   instance void Game.RectangleWidget::set_OutlineColor(valuetype [Engine]Engine.Color)
    IL_022c:  ldarg.0
    IL_022d:  ldfld      class Game.RectangleWidget Game.InventorySlotWidget::m_highlightWidget
    IL_0232:  ldc.i4.0
    IL_0233:  ldc.i4.0
    IL_0234:  ldc.i4.0
    IL_0235:  ldc.i4.s   80
    IL_0237:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32,
                                                                   int32)
    IL_023c:  callvirt   instance void Game.RectangleWidget::set_FillColor(valuetype [Engine]Engine.Color)
    IL_0241:  ldarg.0
    IL_0242:  ldfld      class Game.IInventory Game.InventorySlotWidget::m_inventory
    IL_0247:  ldarg.0
    IL_0248:  ldfld      class Game.IInventory Game.InventorySlotWidget::m_inventory
    IL_024d:  callvirt   instance class Game.SubsystemInventory Game.IInventory::get_SubsystemInventory()
    IL_0252:  callvirt   instance class Game.IInventory Game.SubsystemInventory::get_SplitSourceInventory()
    IL_0257:  bne.un     IL_02e2

    IL_025c:  ldarg.0
    IL_025d:  ldfld      int32 Game.InventorySlotWidget::m_slotIndex
    IL_0262:  ldarg.0
    IL_0263:  ldfld      class Game.IInventory Game.InventorySlotWidget::m_inventory
    IL_0268:  callvirt   instance class Game.SubsystemInventory Game.IInventory::get_SubsystemInventory()
    IL_026d:  callvirt   instance int32 Game.SubsystemInventory::get_SplitSourceSlotIndex()
    IL_0272:  bne.un.s   IL_02e2

    IL_0274:  ldarg.0
    IL_0275:  ldfld      class Game.RectangleWidget Game.InventorySlotWidget::m_highlightWidget
    IL_027a:  ldc.i4     0xff
    IL_027f:  ldc.i4.s   64
    IL_0281:  ldc.i4.0
    IL_0282:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0287:  callvirt   instance void Game.RectangleWidget::set_OutlineColor(valuetype [Engine]Engine.Color)
    IL_028c:  br.s       IL_02e2

    IL_028e:  ldarg.0
    IL_028f:  ldfld      class Game.BevelledRectangleWidget Game.InventorySlotWidget::m_rectangleWidget
    IL_0294:  ldc.i4.0
    IL_0295:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_029a:  ldarg.0
    IL_029b:  ldfld      class Game.RectangleWidget Game.InventorySlotWidget::m_highlightWidget
    IL_02a0:  ldc.i4.0
    IL_02a1:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_02a6:  ldarg.0
    IL_02a7:  ldfld      class Game.BlockIconWidget Game.InventorySlotWidget::m_blockIconWidget
    IL_02ac:  ldc.i4.0
    IL_02ad:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_02b2:  ldarg.0
    IL_02b3:  ldfld      class Game.LabelWidget Game.InventorySlotWidget::m_countWidget
    IL_02b8:  ldc.i4.0
    IL_02b9:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_02be:  ldarg.0
    IL_02bf:  ldfld      class Game.ValueBarWidget Game.InventorySlotWidget::m_healthBarWidget
    IL_02c4:  ldc.i4.0
    IL_02c5:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_02ca:  ldarg.0
    IL_02cb:  ldfld      class Game.RectangleWidget Game.InventorySlotWidget::m_editOverlayWidget
    IL_02d0:  ldc.i4.0
    IL_02d1:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_02d6:  ldarg.0
    IL_02d7:  ldfld      class Game.RectangleWidget Game.InventorySlotWidget::m_interactiveOverlayWidget
    IL_02dc:  ldc.i4.0
    IL_02dd:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_02e2:  ldarg.0
    IL_02e3:  ldarg.0
    IL_02e4:  ldfld      class Game.InventoryDragData Game.InventorySlotWidget::m_inventoryDragData
    IL_02e9:  ldnull
    IL_02ea:  cgt.un
    IL_02ec:  call       instance void Game.Widget::set_IsDrawRequired(bool)
    IL_02f1:  ldarg.0
    IL_02f2:  ldarg.1
    IL_02f3:  call       instance void Game.CanvasWidget::Measure(valuetype [Engine]Engine.Vector2)
    IL_02f8:  ret
  } // end of method InventorySlotWidget::Measure

  .method public hidebysig virtual instance void 
          Draw() cil managed
  {
    // 代码大小       343 (0x157)
    .maxstack  9
    .locals init (int32 V_0,
             float32 V_1,
             valuetype [Engine]Engine.Vector2 V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.IInventory Game.InventorySlotWidget::m_inventory
    IL_0006:  brfalse    IL_014f

    IL_000b:  ldarg.0
    IL_000c:  ldfld      class Game.InventoryDragData Game.InventorySlotWidget::m_inventoryDragData
    IL_0011:  brfalse    IL_014f

    IL_0016:  ldarg.0
    IL_0017:  ldfld      class Game.InventoryDragData Game.InventorySlotWidget::m_inventoryDragData
    IL_001c:  ldfld      class Game.IInventory Game.InventoryDragData::Inventory
    IL_0021:  ldarg.0
    IL_0022:  ldfld      class Game.InventoryDragData Game.InventorySlotWidget::m_inventoryDragData
    IL_0027:  ldfld      int32 Game.InventoryDragData::SlotIndex
    IL_002c:  callvirt   instance int32 Game.IInventory::GetSlotValue(int32)
    IL_0031:  stloc.0
    IL_0032:  ldarg.0
    IL_0033:  ldfld      class Game.IInventory Game.InventorySlotWidget::m_inventory
    IL_0038:  ldarg.0
    IL_0039:  ldfld      int32 Game.InventorySlotWidget::m_slotIndex
    IL_003e:  ldloc.0
    IL_003f:  callvirt   instance int32 Game.IInventory::GetSlotProcessCapacity(int32,
                                                                                int32)
    IL_0044:  ldc.i4.0
    IL_0045:  bge.s      IL_005f

    IL_0047:  ldarg.0
    IL_0048:  ldfld      class Game.IInventory Game.InventorySlotWidget::m_inventory
    IL_004d:  ldarg.0
    IL_004e:  ldfld      int32 Game.InventorySlotWidget::m_slotIndex
    IL_0053:  ldloc.0
    IL_0054:  callvirt   instance int32 Game.IInventory::GetSlotCapacity(int32,
                                                                         int32)
    IL_0059:  ldc.i4.0
    IL_005a:  ble        IL_014f

    IL_005f:  ldc.r4     80.
    IL_0064:  call       float32 Game.WidgetsManager::get_Scale()
    IL_0069:  mul
    IL_006a:  stloc.1
    IL_006b:  ldarg.0
    IL_006c:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_0071:  ldarg.0
    IL_0072:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0077:  ldc.r4     2.
    IL_007c:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Division(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0081:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0086:  call       float32 Game.WidgetsManager::get_Scale()
    IL_008b:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0090:  stloc.2
    IL_0091:  ldsfld     class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.WidgetsManager::PrimitivesRenderer2D
    IL_0096:  ldc.i4.s   100
    IL_0098:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::None
    IL_009d:  ldnull
    IL_009e:  ldnull
    IL_009f:  callvirt   instance class [Engine]Engine.Graphics.FlatBatch2D [Engine]Engine.Graphics.PrimitivesRenderer2D::FlatBatch(int32,
                                                                                                                                    class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                    class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                    class [Engine]Engine.Graphics.BlendState)
    IL_00a4:  dup
    IL_00a5:  ldloc.2
    IL_00a6:  ldloc.1
    IL_00a7:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_00ac:  ldc.r4     0.0
    IL_00b1:  ldc.i4.0
    IL_00b2:  ldc.i4.0
    IL_00b3:  ldc.i4.0
    IL_00b4:  ldc.i4.s   96
    IL_00b6:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32,
                                                                   int32)
    IL_00bb:  ldc.r4     0.0
    IL_00c0:  ldc.r4     6.2831855
    IL_00c5:  ldc.i4.s   32
    IL_00c7:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueEllipse(valuetype [Engine]Engine.Vector2,
                                                                                         valuetype [Engine]Engine.Vector2,
                                                                                         float32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         float32,
                                                                                         float32,
                                                                                         int32)
    IL_00cc:  dup
    IL_00cd:  ldloc.2
    IL_00ce:  ldloc.1
    IL_00cf:  ldc.r4     0.5
    IL_00d4:  sub
    IL_00d5:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_00da:  ldc.r4     0.0
    IL_00df:  ldc.i4.0
    IL_00e0:  ldc.i4.0
    IL_00e1:  ldc.i4.0
    IL_00e2:  ldc.i4.s   64
    IL_00e4:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32,
                                                                   int32)
    IL_00e9:  ldc.r4     0.0
    IL_00ee:  ldc.r4     6.2831855
    IL_00f3:  ldc.i4.s   32
    IL_00f5:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueEllipse(valuetype [Engine]Engine.Vector2,
                                                                                         valuetype [Engine]Engine.Vector2,
                                                                                         float32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         float32,
                                                                                         float32,
                                                                                         int32)
    IL_00fa:  dup
    IL_00fb:  ldloc.2
    IL_00fc:  ldloc.1
    IL_00fd:  ldc.r4     0.5
    IL_0102:  add
    IL_0103:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_0108:  ldc.r4     0.0
    IL_010d:  ldc.i4.0
    IL_010e:  ldc.i4.0
    IL_010f:  ldc.i4.0
    IL_0110:  ldc.i4.s   48
    IL_0112:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32,
                                                                   int32)
    IL_0117:  ldc.r4     0.0
    IL_011c:  ldc.r4     6.2831855
    IL_0121:  ldc.i4.s   32
    IL_0123:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueEllipse(valuetype [Engine]Engine.Vector2,
                                                                                         valuetype [Engine]Engine.Vector2,
                                                                                         float32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         float32,
                                                                                         float32,
                                                                                         int32)
    IL_0128:  ldloc.2
    IL_0129:  ldloc.1
    IL_012a:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_012f:  ldc.r4     0.0
    IL_0134:  ldc.i4.0
    IL_0135:  ldc.i4.0
    IL_0136:  ldc.i4.0
    IL_0137:  ldc.i4.s   48
    IL_0139:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32,
                                                                   int32)
    IL_013e:  ldc.r4     0.0
    IL_0143:  ldc.r4     6.2831855
    IL_0148:  ldc.i4.s   32
    IL_014a:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueDisc(valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      float32,
                                                                                      valuetype [Engine]Engine.Color,
                                                                                      float32,
                                                                                      float32,
                                                                                      int32)
    IL_014f:  ldarg.0
    IL_0150:  ldnull
    IL_0151:  stfld      class Game.InventoryDragData Game.InventorySlotWidget::m_inventoryDragData
    IL_0156:  ret
  } // end of method InventorySlotWidget::Draw

  .method public hidebysig newslot virtual final 
          instance void  DragOver(class Game.Widget dragWidget,
                                  object data) cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.2
    IL_0002:  isinst     Game.InventoryDragData
    IL_0007:  stfld      class Game.InventoryDragData Game.InventorySlotWidget::m_inventoryDragData
    IL_000c:  ret
  } // end of method InventorySlotWidget::DragOver

  .method public hidebysig newslot virtual final 
          instance void  DragDrop(class Game.Widget dragWidget,
                                  object data) cil managed
  {
    // 代码大小       56 (0x38)
    .maxstack  6
    .locals init (class Game.InventoryDragData V_0)
    IL_0000:  ldarg.2
    IL_0001:  isinst     Game.InventoryDragData
    IL_0006:  stloc.0
    IL_0007:  ldarg.0
    IL_0008:  ldfld      class Game.IInventory Game.InventorySlotWidget::m_inventory
    IL_000d:  brfalse.s  IL_0037

    IL_000f:  ldloc.0
    IL_0010:  brfalse.s  IL_0037

    IL_0012:  ldarg.0
    IL_0013:  ldloc.0
    IL_0014:  ldfld      class Game.IInventory Game.InventoryDragData::Inventory
    IL_0019:  ldloc.0
    IL_001a:  ldfld      int32 Game.InventoryDragData::SlotIndex
    IL_001f:  ldloc.0
    IL_0020:  ldfld      valuetype Game.DragMode Game.InventoryDragData::DragMode
    IL_0025:  ldarg.0
    IL_0026:  ldfld      class Game.IInventory Game.InventorySlotWidget::m_inventory
    IL_002b:  ldarg.0
    IL_002c:  ldfld      int32 Game.InventorySlotWidget::m_slotIndex
    IL_0031:  call       instance bool Game.InventorySlotWidget::HandleDragDrop(class Game.IInventory,
                                                                                int32,
                                                                                valuetype Game.DragMode,
                                                                                class Game.IInventory,
                                                                                int32)
    IL_0036:  pop
    IL_0037:  ret
  } // end of method InventorySlotWidget::DragDrop

  .method private hidebysig instance bool 
          HandleMoveItem(class Game.IInventory sourceInventory,
                         int32 sourceSlotIndex,
                         class Game.IInventory targetInventory,
                         int32 targetSlotIndex,
                         int32 count) cil managed
  {
    // 代码大小       93 (0x5d)
    .maxstack  4
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5)
    IL_0000:  ldarg.1
    IL_0001:  ldarg.2
    IL_0002:  callvirt   instance int32 Game.IInventory::GetSlotValue(int32)
    IL_0007:  stloc.0
    IL_0008:  ldarg.3
    IL_0009:  ldarg.s    targetSlotIndex
    IL_000b:  callvirt   instance int32 Game.IInventory::GetSlotValue(int32)
    IL_0010:  stloc.1
    IL_0011:  ldarg.1
    IL_0012:  ldarg.2
    IL_0013:  callvirt   instance int32 Game.IInventory::GetSlotCount(int32)
    IL_0018:  stloc.2
    IL_0019:  ldarg.3
    IL_001a:  ldarg.s    targetSlotIndex
    IL_001c:  callvirt   instance int32 Game.IInventory::GetSlotCount(int32)
    IL_0021:  stloc.3
    IL_0022:  ldloc.3
    IL_0023:  brfalse.s  IL_0029

    IL_0025:  ldloc.0
    IL_0026:  ldloc.1
    IL_0027:  bne.un.s   IL_005b

    IL_0029:  ldarg.3
    IL_002a:  ldarg.s    targetSlotIndex
    IL_002c:  ldloc.0
    IL_002d:  callvirt   instance int32 Game.IInventory::GetSlotCapacity(int32,
                                                                         int32)
    IL_0032:  ldloc.3
    IL_0033:  sub
    IL_0034:  ldloc.2
    IL_0035:  ldarg.s    count
    IL_0037:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32,
                                                             int32)
    IL_003c:  stloc.s    V_4
    IL_003e:  ldloc.s    V_4
    IL_0040:  ldc.i4.0
    IL_0041:  ble.s      IL_005b

    IL_0043:  ldarg.1
    IL_0044:  ldarg.2
    IL_0045:  ldloc.s    V_4
    IL_0047:  callvirt   instance int32 Game.IInventory::RemoveSlotItems(int32,
                                                                         int32)
    IL_004c:  stloc.s    V_5
    IL_004e:  ldarg.3
    IL_004f:  ldarg.s    targetSlotIndex
    IL_0051:  ldloc.0
    IL_0052:  ldloc.s    V_5
    IL_0054:  callvirt   instance void Game.IInventory::AddSlotItems(int32,
                                                                     int32,
                                                                     int32)
    IL_0059:  ldc.i4.1
    IL_005a:  ret

    IL_005b:  ldc.i4.0
    IL_005c:  ret
  } // end of method InventorySlotWidget::HandleMoveItem

  .method private hidebysig instance bool 
          HandleDragDrop(class Game.IInventory sourceInventory,
                         int32 sourceSlotIndex,
                         valuetype Game.DragMode dragMode,
                         class Game.IInventory targetInventory,
                         int32 targetSlotIndex) cil managed
  {
    // 代码大小       345 (0x159)
    .maxstack  7
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             bool V_6,
             int32 V_7,
             int32 V_8,
             int32 V_9,
             int32 V_10,
             int32 V_11,
             int32 V_12,
             int32 V_13,
             int32 V_14)
    IL_0000:  ldarg.1
    IL_0001:  ldarg.2
    IL_0002:  callvirt   instance int32 Game.IInventory::GetSlotValue(int32)
    IL_0007:  stloc.0
    IL_0008:  ldarg.s    targetInventory
    IL_000a:  ldarg.s    targetSlotIndex
    IL_000c:  callvirt   instance int32 Game.IInventory::GetSlotValue(int32)
    IL_0011:  stloc.1
    IL_0012:  ldarg.1
    IL_0013:  ldarg.2
    IL_0014:  callvirt   instance int32 Game.IInventory::GetSlotCount(int32)
    IL_0019:  stloc.2
    IL_001a:  ldarg.s    targetInventory
    IL_001c:  ldarg.s    targetSlotIndex
    IL_001e:  callvirt   instance int32 Game.IInventory::GetSlotCount(int32)
    IL_0023:  stloc.3
    IL_0024:  ldarg.s    targetInventory
    IL_0026:  ldarg.s    targetSlotIndex
    IL_0028:  ldloc.0
    IL_0029:  callvirt   instance int32 Game.IInventory::GetSlotCapacity(int32,
                                                                         int32)
    IL_002e:  stloc.s    V_4
    IL_0030:  ldarg.s    targetInventory
    IL_0032:  ldarg.s    targetSlotIndex
    IL_0034:  ldloc.0
    IL_0035:  callvirt   instance int32 Game.IInventory::GetSlotProcessCapacity(int32,
                                                                                int32)
    IL_003a:  stloc.s    V_5
    IL_003c:  ldarg.3
    IL_003d:  ldc.i4.1
    IL_003e:  bne.un.s   IL_0048

    IL_0040:  ldloc.2
    IL_0041:  ldc.i4.1
    IL_0042:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_0047:  stloc.2
    IL_0048:  ldc.i4.0
    IL_0049:  stloc.s    V_6
    IL_004b:  ldloc.s    V_5
    IL_004d:  ldc.i4.0
    IL_004e:  ble.s      IL_009f

    IL_0050:  ldarg.1
    IL_0051:  ldarg.2
    IL_0052:  ldloc.2
    IL_0053:  ldloc.s    V_5
    IL_0055:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_005a:  callvirt   instance int32 Game.IInventory::RemoveSlotItems(int32,
                                                                         int32)
    IL_005f:  stloc.s    V_7
    IL_0061:  ldarg.s    targetInventory
    IL_0063:  ldarg.s    targetSlotIndex
    IL_0065:  ldloc.0
    IL_0066:  ldloc.2
    IL_0067:  ldloc.s    V_7
    IL_0069:  ldloca.s   V_8
    IL_006b:  ldloca.s   V_9
    IL_006d:  callvirt   instance void Game.IInventory::ProcessSlotItems(int32,
                                                                         int32,
                                                                         int32,
                                                                         int32,
                                                                         int32&,
                                                                         int32&)
    IL_0072:  ldloc.s    V_8
    IL_0074:  brfalse.s  IL_0097

    IL_0076:  ldloc.s    V_9
    IL_0078:  brfalse.s  IL_0097

    IL_007a:  ldarg.1
    IL_007b:  ldarg.2
    IL_007c:  ldloc.s    V_8
    IL_007e:  callvirt   instance int32 Game.IInventory::GetSlotCapacity(int32,
                                                                         int32)
    IL_0083:  ldloc.s    V_9
    IL_0085:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_008a:  stloc.s    V_10
    IL_008c:  ldarg.1
    IL_008d:  ldarg.2
    IL_008e:  ldloc.s    V_8
    IL_0090:  ldloc.s    V_10
    IL_0092:  callvirt   instance void Game.IInventory::AddSlotItems(int32,
                                                                     int32,
                                                                     int32)
    IL_0097:  ldc.i4.1
    IL_0098:  stloc.s    V_6
    IL_009a:  br         IL_0139

    IL_009f:  ldarg.0
    IL_00a0:  call       instance bool Game.InventorySlotWidget::get_ProcessingOnly()
    IL_00a5:  brtrue.s   IL_00e0

    IL_00a7:  ldloc.3
    IL_00a8:  brfalse.s  IL_00ae

    IL_00aa:  ldloc.0
    IL_00ab:  ldloc.1
    IL_00ac:  bne.un.s   IL_00e0

    IL_00ae:  ldloc.3
    IL_00af:  ldloc.s    V_4
    IL_00b1:  bge.s      IL_00e0

    IL_00b3:  ldloc.s    V_4
    IL_00b5:  ldloc.3
    IL_00b6:  sub
    IL_00b7:  ldloc.2
    IL_00b8:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_00bd:  stloc.s    V_11
    IL_00bf:  ldloc.s    V_11
    IL_00c1:  ldc.i4.0
    IL_00c2:  ble.s      IL_0139

    IL_00c4:  ldarg.1
    IL_00c5:  ldarg.2
    IL_00c6:  ldloc.s    V_11
    IL_00c8:  callvirt   instance int32 Game.IInventory::RemoveSlotItems(int32,
                                                                         int32)
    IL_00cd:  stloc.s    V_12
    IL_00cf:  ldarg.s    targetInventory
    IL_00d1:  ldarg.s    targetSlotIndex
    IL_00d3:  ldloc.0
    IL_00d4:  ldloc.s    V_12
    IL_00d6:  callvirt   instance void Game.IInventory::AddSlotItems(int32,
                                                                     int32,
                                                                     int32)
    IL_00db:  ldc.i4.1
    IL_00dc:  stloc.s    V_6
    IL_00de:  br.s       IL_0139

    IL_00e0:  ldarg.0
    IL_00e1:  call       instance bool Game.InventorySlotWidget::get_ProcessingOnly()
    IL_00e6:  brtrue.s   IL_0139

    IL_00e8:  ldarg.s    targetInventory
    IL_00ea:  ldarg.s    targetSlotIndex
    IL_00ec:  ldloc.0
    IL_00ed:  callvirt   instance int32 Game.IInventory::GetSlotCapacity(int32,
                                                                         int32)
    IL_00f2:  ldloc.2
    IL_00f3:  blt.s      IL_0139

    IL_00f5:  ldarg.1
    IL_00f6:  ldarg.2
    IL_00f7:  ldloc.1
    IL_00f8:  callvirt   instance int32 Game.IInventory::GetSlotCapacity(int32,
                                                                         int32)
    IL_00fd:  ldloc.3
    IL_00fe:  blt.s      IL_0139

    IL_0100:  ldarg.1
    IL_0101:  ldarg.2
    IL_0102:  callvirt   instance int32 Game.IInventory::GetSlotCount(int32)
    IL_0107:  ldloc.2
    IL_0108:  bne.un.s   IL_0139

    IL_010a:  ldarg.s    targetInventory
    IL_010c:  ldarg.s    targetSlotIndex
    IL_010e:  ldloc.3
    IL_010f:  callvirt   instance int32 Game.IInventory::RemoveSlotItems(int32,
                                                                         int32)
    IL_0114:  stloc.s    V_13
    IL_0116:  ldarg.1
    IL_0117:  ldarg.2
    IL_0118:  ldloc.2
    IL_0119:  callvirt   instance int32 Game.IInventory::RemoveSlotItems(int32,
                                                                         int32)
    IL_011e:  stloc.s    V_14
    IL_0120:  ldarg.s    targetInventory
    IL_0122:  ldarg.s    targetSlotIndex
    IL_0124:  ldloc.0
    IL_0125:  ldloc.s    V_14
    IL_0127:  callvirt   instance void Game.IInventory::AddSlotItems(int32,
                                                                     int32,
                                                                     int32)
    IL_012c:  ldarg.1
    IL_012d:  ldarg.2
    IL_012e:  ldloc.1
    IL_012f:  ldloc.s    V_13
    IL_0131:  callvirt   instance void Game.IInventory::AddSlotItems(int32,
                                                                     int32,
                                                                     int32)
    IL_0136:  ldc.i4.1
    IL_0137:  stloc.s    V_6
    IL_0139:  ldloc.s    V_6
    IL_013b:  brfalse.s  IL_0156

    IL_013d:  ldstr      "Audio/UI/ItemMoved"
    IL_0142:  ldc.r4     1.
    IL_0147:  ldc.r4     0.0
    IL_014c:  ldc.r4     0.0
    IL_0151:  call       void Game.AudioManager::PlaySound(string,
                                                           float32,
                                                           float32,
                                                           float32)
    IL_0156:  ldloc.s    V_6
    IL_0158:  ret
  } // end of method InventorySlotWidget::HandleDragDrop

  .method private hidebysig specialname instance class Game.DragHostWidget 
          get_DragHostWidget() cil managed
  {
    // 代码大小       49 (0x31)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.DragHostWidget Game.InventorySlotWidget::m_dragHostWidget
    IL_0006:  brtrue.s   IL_002a

    IL_0008:  ldarg.0
    IL_0009:  ldarg.0
    IL_000a:  call       instance class Game.ContainerWidget Game.Widget::get_RootWidget()
    IL_000f:  brtrue.s   IL_0014

    IL_0011:  ldnull
    IL_0012:  br.s       IL_0025

    IL_0014:  ldarg.0
    IL_0015:  call       instance class Game.ContainerWidget Game.Widget::get_RootWidget()
    IL_001a:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_001f:  ldc.i4.0
    IL_0020:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.DragHostWidget>(bool)
    IL_0025:  stfld      class Game.DragHostWidget Game.InventorySlotWidget::m_dragHostWidget
    IL_002a:  ldarg.0
    IL_002b:  ldfld      class Game.DragHostWidget Game.InventorySlotWidget::m_dragHostWidget
    IL_0030:  ret
  } // end of method InventorySlotWidget::get_DragHostWidget

  .method private hidebysig instance void 
          '<Update>b__52_0'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype Game.DragMode> Game.InventorySlotWidget::m_dragMode
    IL_0006:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype Game.DragMode>
    IL_000c:  ret
  } // end of method InventorySlotWidget::'<Update>b__52_0'

  .property instance bool HideBlockIcon()
  {
    .get instance bool Game.InventorySlotWidget::get_HideBlockIcon()
    .set instance void Game.InventorySlotWidget::set_HideBlockIcon(bool)
  } // end of property InventorySlotWidget::HideBlockIcon
  .property instance bool HideEditOverlay()
  {
    .get instance bool Game.InventorySlotWidget::get_HideEditOverlay()
    .set instance void Game.InventorySlotWidget::set_HideEditOverlay(bool)
  } // end of property InventorySlotWidget::HideEditOverlay
  .property instance bool HideInteractiveOverlay()
  {
    .get instance bool Game.InventorySlotWidget::get_HideInteractiveOverlay()
    .set instance void Game.InventorySlotWidget::set_HideInteractiveOverlay(bool)
  } // end of property InventorySlotWidget::HideInteractiveOverlay
  .property instance bool HideHighlightRectangle()
  {
    .get instance bool Game.InventorySlotWidget::get_HideHighlightRectangle()
    .set instance void Game.InventorySlotWidget::set_HideHighlightRectangle(bool)
  } // end of property InventorySlotWidget::HideHighlightRectangle
  .property instance bool HideHealthBar()
  {
    .get instance bool Game.InventorySlotWidget::get_HideHealthBar()
    .set instance void Game.InventorySlotWidget::set_HideHealthBar(bool)
  } // end of property InventorySlotWidget::HideHealthBar
  .property instance bool ProcessingOnly()
  {
    .get instance bool Game.InventorySlotWidget::get_ProcessingOnly()
    .set instance void Game.InventorySlotWidget::set_ProcessingOnly(bool)
  } // end of property InventorySlotWidget::ProcessingOnly
  .property instance valuetype [Engine]Engine.Color
          CenterColor()
  {
    .get instance valuetype [Engine]Engine.Color Game.InventorySlotWidget::get_CenterColor()
    .set instance void Game.InventorySlotWidget::set_CenterColor(valuetype [Engine]Engine.Color)
  } // end of property InventorySlotWidget::CenterColor
  .property instance valuetype [Engine]Engine.Color
          BevelColor()
  {
    .get instance valuetype [Engine]Engine.Color Game.InventorySlotWidget::get_BevelColor()
    .set instance void Game.InventorySlotWidget::set_BevelColor(valuetype [Engine]Engine.Color)
  } // end of property InventorySlotWidget::BevelColor
  .property instance float32 Light()
  {
    .get instance float32 Game.InventorySlotWidget::get_Light()
    .set instance void Game.InventorySlotWidget::set_Light(float32)
  } // end of property InventorySlotWidget::Light
  .property instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
          CustomViewMatrix()
  {
    .get instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.InventorySlotWidget::get_CustomViewMatrix()
    .set instance void Game.InventorySlotWidget::set_CustomViewMatrix(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
  } // end of property InventorySlotWidget::CustomViewMatrix
  .property instance class Game.DragHostWidget
          DragHostWidget()
  {
    .get instance class Game.DragHostWidget Game.InventorySlotWidget::get_DragHostWidget()
  } // end of property InventorySlotWidget::DragHostWidget
} // end of class Game.InventorySlotWidget