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
  .field private class Game.RectangleWidget m_foodOverlayWidget
  .field private class Game.LabelWidget m_splitLabelWidget
  .field private class Game.GameWidget m_gameWidget
  .field private class Game.DragHostWidget m_dragHostWidget
  .field private class Game.IInventory m_inventory
  .field private int32 m_slotIndex
  .field private valuetype [System.Runtime]System.Nullable`1<valuetype Game.DragMode> m_dragMode
  .field private bool m_focus
  .field private int32 m_lastCount
  .field private class Game.InventoryDragData m_inventoryDragData
  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.ComponentPlayer m_componentPlayer
  .field private bool '<HideBlockIcon>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private bool '<HideEditOverlay>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private bool '<HideInteractiveOverlay>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private bool '<HideFoodOverlay>k__BackingField'
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
    // 代码大小       860 (0x35c)
    .maxstack  12
    .locals init (class Game.BevelledRectangleWidget V_0,
             class Game.RectangleWidget V_1,
             class Game.BlockIconWidget V_2,
             class Game.LabelWidget V_3,
             class Game.ValueBarWidget V_4)
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.m1
    IL_0002:  stfld      int32 Game.InventorySlotWidget::m_lastCount
    IL_0007:  ldarg.0
    IL_0008:  call       instance void Game.CanvasWidget::.ctor()
    IL_000d:  ldarg.0
    IL_000e:  ldc.r4     72.
    IL_0013:  ldc.r4     72.
    IL_0018:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_001d:  call       instance void Game.CanvasWidget::set_Size(valuetype [Engine]Engine.Vector2)
    IL_0022:  ldarg.0
    IL_0023:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0028:  ldc.i4.7
    IL_0029:  newarr     Game.Widget
    IL_002e:  dup
    IL_002f:  ldc.i4.0
    IL_0030:  ldarg.0
    IL_0031:  newobj     instance void Game.BevelledRectangleWidget::.ctor()
    IL_0036:  dup
    IL_0037:  ldc.r4     -2.
    IL_003c:  callvirt   instance void Game.BevelledRectangleWidget::set_BevelSize(float32)
    IL_0041:  dup
    IL_0042:  ldc.r4     0.15000001
    IL_0047:  callvirt   instance void Game.BevelledRectangleWidget::set_DirectionalLight(float32)
    IL_004c:  dup
    IL_004d:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
    IL_0052:  callvirt   instance void Game.BevelledRectangleWidget::set_CenterColor(valuetype [Engine]Engine.Color)
    IL_0057:  dup
    IL_0058:  stloc.0
    IL_0059:  stfld      class Game.BevelledRectangleWidget Game.InventorySlotWidget::m_rectangleWidget
    IL_005e:  ldloc.0
    IL_005f:  stelem.ref
    IL_0060:  dup
    IL_0061:  ldc.i4.1
    IL_0062:  ldarg.0
    IL_0063:  newobj     instance void Game.RectangleWidget::.ctor()
    IL_0068:  dup
    IL_0069:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
    IL_006e:  callvirt   instance void Game.RectangleWidget::set_FillColor(valuetype [Engine]Engine.Color)
    IL_0073:  dup
    IL_0074:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
    IL_0079:  callvirt   instance void Game.RectangleWidget::set_OutlineColor(valuetype [Engine]Engine.Color)
    IL_007e:  dup
    IL_007f:  stloc.1
    IL_0080:  stfld      class Game.RectangleWidget Game.InventorySlotWidget::m_highlightWidget
    IL_0085:  ldloc.1
    IL_0086:  stelem.ref
    IL_0087:  dup
    IL_0088:  ldc.i4.2
    IL_0089:  ldarg.0
    IL_008a:  newobj     instance void Game.BlockIconWidget::.ctor()
    IL_008f:  dup
    IL_0090:  ldc.i4.1
    IL_0091:  callvirt   instance void Game.Widget::set_HorizontalAlignment(valuetype Game.WidgetAlignment)
    IL_0096:  dup
    IL_0097:  ldc.i4.1
    IL_0098:  callvirt   instance void Game.Widget::set_VerticalAlignment(valuetype Game.WidgetAlignment)
    IL_009d:  dup
    IL_009e:  ldc.r4     2.
    IL_00a3:  ldc.r4     2.
    IL_00a8:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00ad:  callvirt   instance void Game.Widget::set_Margin(valuetype [Engine]Engine.Vector2)
    IL_00b2:  dup
    IL_00b3:  stloc.2
    IL_00b4:  stfld      class Game.BlockIconWidget Game.InventorySlotWidget::m_blockIconWidget
    IL_00b9:  ldloc.2
    IL_00ba:  stelem.ref
    IL_00bb:  dup
    IL_00bc:  ldc.i4.3
    IL_00bd:  ldarg.0
    IL_00be:  newobj     instance void Game.LabelWidget::.ctor()
    IL_00c3:  dup
    IL_00c4:  ldstr      "Fonts/Pericles24"
    IL_00c9:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Media.BitmapFont>(string)
    IL_00ce:  callvirt   instance void Game.LabelWidget::set_Font(class [Engine]Engine.Media.BitmapFont)
    IL_00d3:  dup
    IL_00d4:  ldc.r4     1.
    IL_00d9:  callvirt   instance void Game.LabelWidget::set_FontScale(float32)
    IL_00de:  dup
    IL_00df:  ldc.i4.2
    IL_00e0:  callvirt   instance void Game.Widget::set_HorizontalAlignment(valuetype Game.WidgetAlignment)
    IL_00e5:  dup
    IL_00e6:  ldc.i4.2
    IL_00e7:  callvirt   instance void Game.Widget::set_VerticalAlignment(valuetype Game.WidgetAlignment)
    IL_00ec:  dup
    IL_00ed:  ldc.r4     6.
    IL_00f2:  ldc.r4     2.
    IL_00f7:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00fc:  callvirt   instance void Game.Widget::set_Margin(valuetype [Engine]Engine.Vector2)
    IL_0101:  dup
    IL_0102:  stloc.3
    IL_0103:  stfld      class Game.LabelWidget Game.InventorySlotWidget::m_countWidget
    IL_0108:  ldloc.3
    IL_0109:  stelem.ref
    IL_010a:  dup
    IL_010b:  ldc.i4.4
    IL_010c:  ldarg.0
    IL_010d:  newobj     instance void Game.ValueBarWidget::.ctor()
    IL_0112:  dup
    IL_0113:  ldc.i4.1
    IL_0114:  callvirt   instance void Game.ValueBarWidget::set_LayoutDirection(valuetype Game.LayoutDirection)
    IL_0119:  dup
    IL_011a:  ldc.i4.0
    IL_011b:  callvirt   instance void Game.Widget::set_HorizontalAlignment(valuetype Game.WidgetAlignment)
    IL_0120:  dup
    IL_0121:  ldc.i4.2
    IL_0122:  callvirt   instance void Game.Widget::set_VerticalAlignment(valuetype Game.WidgetAlignment)
    IL_0127:  dup
    IL_0128:  ldc.i4.3
    IL_0129:  callvirt   instance void Game.ValueBarWidget::set_BarsCount(int32)
    IL_012e:  dup
    IL_012f:  ldc.i4.1
    IL_0130:  callvirt   instance void Game.ValueBarWidget::set_FlipDirection(bool)
    IL_0135:  dup
    IL_0136:  ldc.i4.s   32
    IL_0138:  ldc.i4     0x80
    IL_013d:  ldc.i4.0
    IL_013e:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0143:  callvirt   instance void Game.ValueBarWidget::set_LitBarColor(valuetype [Engine]Engine.Color)
    IL_0148:  dup
    IL_0149:  ldc.i4.s   24
    IL_014b:  ldc.i4.s   24
    IL_014d:  ldc.i4.s   24
    IL_014f:  ldc.i4.s   64
    IL_0151:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32,
                                                                   int32)
    IL_0156:  callvirt   instance void Game.ValueBarWidget::set_UnlitBarColor(valuetype [Engine]Engine.Color)
    IL_015b:  dup
    IL_015c:  ldc.r4     12.
    IL_0161:  ldc.r4     12.
    IL_0166:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_016b:  callvirt   instance void Game.ValueBarWidget::set_BarSize(valuetype [Engine]Engine.Vector2)
    IL_0170:  dup
    IL_0171:  ldstr      "Textures/Atlas/ProgressBar"
    IL_0176:  call       !!0 Game.ContentManager::Get<class Game.Subtexture>(string)
    IL_017b:  callvirt   instance void Game.ValueBarWidget::set_BarSubtexture(class Game.Subtexture)
    IL_0180:  dup
    IL_0181:  ldc.r4     4.
    IL_0186:  ldc.r4     4.
    IL_018b:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0190:  callvirt   instance void Game.Widget::set_Margin(valuetype [Engine]Engine.Vector2)
    IL_0195:  dup
    IL_0196:  stloc.s    V_4
    IL_0198:  stfld      class Game.ValueBarWidget Game.InventorySlotWidget::m_healthBarWidget
    IL_019d:  ldloc.s    V_4
    IL_019f:  stelem.ref
    IL_01a0:  dup
    IL_01a1:  ldc.i4.5
    IL_01a2:  newobj     instance void Game.StackPanelWidget::.ctor()
    IL_01a7:  dup
    IL_01a8:  ldc.i4.0
    IL_01a9:  callvirt   instance void Game.StackPanelWidget::set_Direction(valuetype Game.LayoutDirection)
    IL_01ae:  dup
    IL_01af:  ldc.i4.2
    IL_01b0:  callvirt   instance void Game.Widget::set_HorizontalAlignment(valuetype Game.WidgetAlignment)
    IL_01b5:  dup
    IL_01b6:  ldc.r4     3.
    IL_01bb:  ldc.r4     3.
    IL_01c0:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_01c5:  callvirt   instance void Game.Widget::set_Margin(valuetype [Engine]Engine.Vector2)
    IL_01ca:  dup
    IL_01cb:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_01d0:  ldarg.0
    IL_01d1:  newobj     instance void Game.RectangleWidget::.ctor()
    IL_01d6:  dup
    IL_01d7:  ldstr      "Textures/Atlas/InteractiveItemOverlay"
    IL_01dc:  call       !!0 Game.ContentManager::Get<class Game.Subtexture>(string)
    IL_01e1:  callvirt   instance void Game.RectangleWidget::set_Subtexture(class Game.Subtexture)
    IL_01e6:  dup
    IL_01e7:  ldc.r4     13.
    IL_01ec:  ldc.r4     14.
    IL_01f1:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_01f6:  callvirt   instance void Game.RectangleWidget::set_Size(valuetype [Engine]Engine.Vector2)
    IL_01fb:  dup
    IL_01fc:  ldc.i4     0xa0
    IL_0201:  ldc.i4     0xa0
    IL_0206:  ldc.i4     0xa0
    IL_020b:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0210:  callvirt   instance void Game.RectangleWidget::set_FillColor(valuetype [Engine]Engine.Color)
    IL_0215:  dup
    IL_0216:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
    IL_021b:  callvirt   instance void Game.RectangleWidget::set_OutlineColor(valuetype [Engine]Engine.Color)
    IL_0220:  dup
    IL_0221:  stloc.1
    IL_0222:  stfld      class Game.RectangleWidget Game.InventorySlotWidget::m_interactiveOverlayWidget
    IL_0227:  ldloc.1
    IL_0228:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
    IL_022d:  dup
    IL_022e:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0233:  ldarg.0
    IL_0234:  newobj     instance void Game.RectangleWidget::.ctor()
    IL_0239:  dup
    IL_023a:  ldstr      "Textures/Atlas/EditItemOverlay"
    IL_023f:  call       !!0 Game.ContentManager::Get<class Game.Subtexture>(string)
    IL_0244:  callvirt   instance void Game.RectangleWidget::set_Subtexture(class Game.Subtexture)
    IL_0249:  dup
    IL_024a:  ldc.r4     12.
    IL_024f:  ldc.r4     14.
    IL_0254:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0259:  callvirt   instance void Game.RectangleWidget::set_Size(valuetype [Engine]Engine.Vector2)
    IL_025e:  dup
    IL_025f:  ldc.i4     0xa0
    IL_0264:  ldc.i4     0xa0
    IL_0269:  ldc.i4     0xa0
    IL_026e:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0273:  callvirt   instance void Game.RectangleWidget::set_FillColor(valuetype [Engine]Engine.Color)
    IL_0278:  dup
    IL_0279:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
    IL_027e:  callvirt   instance void Game.RectangleWidget::set_OutlineColor(valuetype [Engine]Engine.Color)
    IL_0283:  dup
    IL_0284:  stloc.1
    IL_0285:  stfld      class Game.RectangleWidget Game.InventorySlotWidget::m_editOverlayWidget
    IL_028a:  ldloc.1
    IL_028b:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
    IL_0290:  dup
    IL_0291:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0296:  ldarg.0
    IL_0297:  newobj     instance void Game.RectangleWidget::.ctor()
    IL_029c:  dup
    IL_029d:  ldstr      "Textures/Atlas/FoodItemOverlay"
    IL_02a2:  call       !!0 Game.ContentManager::Get<class Game.Subtexture>(string)
    IL_02a7:  callvirt   instance void Game.RectangleWidget::set_Subtexture(class Game.Subtexture)
    IL_02ac:  dup
    IL_02ad:  ldc.r4     11.
    IL_02b2:  ldc.r4     14.
    IL_02b7:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_02bc:  callvirt   instance void Game.RectangleWidget::set_Size(valuetype [Engine]Engine.Vector2)
    IL_02c1:  dup
    IL_02c2:  ldc.i4     0xa0
    IL_02c7:  ldc.i4     0xa0
    IL_02cc:  ldc.i4     0xa0
    IL_02d1:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_02d6:  callvirt   instance void Game.RectangleWidget::set_FillColor(valuetype [Engine]Engine.Color)
    IL_02db:  dup
    IL_02dc:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
    IL_02e1:  callvirt   instance void Game.RectangleWidget::set_OutlineColor(valuetype [Engine]Engine.Color)
    IL_02e6:  dup
    IL_02e7:  stloc.1
    IL_02e8:  stfld      class Game.RectangleWidget Game.InventorySlotWidget::m_foodOverlayWidget
    IL_02ed:  ldloc.1
    IL_02ee:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
    IL_02f3:  stelem.ref
    IL_02f4:  dup
    IL_02f5:  ldc.i4.6
    IL_02f6:  ldarg.0
    IL_02f7:  newobj     instance void Game.LabelWidget::.ctor()
    IL_02fc:  dup
    IL_02fd:  ldstr      "Split"
    IL_0302:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0307:  dup
    IL_0308:  ldstr      "Fonts/Pericles12"
    IL_030d:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Media.BitmapFont>(string)
    IL_0312:  callvirt   instance void Game.LabelWidget::set_Font(class [Engine]Engine.Media.BitmapFont)
    IL_0317:  dup
    IL_0318:  ldc.i4     0xff
    IL_031d:  ldc.i4.s   64
    IL_031f:  ldc.i4.0
    IL_0320:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0325:  callvirt   instance void Game.LabelWidget::set_Color(valuetype [Engine]Engine.Color)
    IL_032a:  dup
    IL_032b:  ldc.i4.0
    IL_032c:  callvirt   instance void Game.Widget::set_HorizontalAlignment(valuetype Game.WidgetAlignment)
    IL_0331:  dup
    IL_0332:  ldc.i4.0
    IL_0333:  callvirt   instance void Game.Widget::set_VerticalAlignment(valuetype Game.WidgetAlignment)
    IL_0338:  dup
    IL_0339:  ldc.r4     2.
    IL_033e:  ldc.r4     0.0
    IL_0343:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0348:  callvirt   instance void Game.Widget::set_Margin(valuetype [Engine]Engine.Vector2)
    IL_034d:  dup
    IL_034e:  stloc.3
    IL_034f:  stfld      class Game.LabelWidget Game.InventorySlotWidget::m_splitLabelWidget
    IL_0354:  ldloc.3
    IL_0355:  stelem.ref
    IL_0356:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget[])
    IL_035b:  ret
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
          get_HideFoodOverlay() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.InventorySlotWidget::'<HideFoodOverlay>k__BackingField'
    IL_0006:  ret
  } // end of method InventorySlotWidget::get_HideFoodOverlay

  .method public hidebysig specialname instance void 
          set_HideFoodOverlay(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.InventorySlotWidget::'<HideFoodOverlay>k__BackingField'
    IL_0007:  ret
  } // end of method InventorySlotWidget::set_HideFoodOverlay

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
    // 代码大小       100 (0x64)
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
    IL_0013:  br.s       IL_0021

    IL_0015:  ldarg.1
    IL_0016:  callvirt   instance class [EntitySystem]GameEntitySystem.Project Game.IInventory::get_Project()
    IL_001b:  ldc.i4.1
    IL_001c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_0021:  stfld      class Game.SubsystemTerrain Game.InventorySlotWidget::m_subsystemTerrain
    IL_0026:  ldarg.1
    IL_0027:  isinst     [EntitySystem]GameEntitySystem.Component
    IL_002c:  brfalse.s  IL_0046

    IL_002e:  ldarg.0
    IL_002f:  ldarg.1
    IL_0030:  castclass  [EntitySystem]GameEntitySystem.Component
    IL_0035:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_003a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentPlayer>()
    IL_003f:  stfld      class Game.ComponentPlayer Game.InventorySlotWidget::m_componentPlayer
    IL_0044:  br.s       IL_004d

    IL_0046:  ldarg.0
    IL_0047:  ldnull
    IL_0048:  stfld      class Game.ComponentPlayer Game.InventorySlotWidget::m_componentPlayer
    IL_004d:  ldarg.0
    IL_004e:  ldfld      class Game.BlockIconWidget Game.InventorySlotWidget::m_blockIconWidget
    IL_0053:  callvirt   instance class Game.DrawBlockEnvironmentData Game.BlockIconWidget::get_DrawBlockEnvironmentData()
    IL_0058:  ldarg.0
    IL_0059:  ldfld      class Game.SubsystemTerrain Game.InventorySlotWidget::m_subsystemTerrain
    IL_005e:  stfld      class Game.SubsystemTerrain Game.DrawBlockEnvironmentData::SubsystemTerrain
    IL_0063:  ret
  } // end of method InventorySlotWidget::AssignInventorySlot

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       1398 (0x576)
    .maxstack  7
    .locals init (class Game.WidgetInput V_0,
             class Game.ComponentPlayer V_1,
             int32 V_2,
             int32 V_3,
             class Game.Block V_4,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> V_5,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.Segment2> V_6,
             class Game.IInventory V_7,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.InventorySlotWidget> V_8,
             class Game.InventorySlotWidget V_9,
             int32 V_10,
             bool V_11,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> V_12,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> V_13,
             int32 V_14,
             valuetype Game.DragMode V_15,
             int32 V_16,
             class Game.SubsystemTerrain V_17,
             class Game.ContainerWidget V_18)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.IInventory Game.InventorySlotWidget::m_inventory
    IL_0006:  brfalse    IL_0575

    IL_000b:  ldarg.0
    IL_000c:  call       instance class Game.DragHostWidget Game.InventorySlotWidget::get_DragHostWidget()
    IL_0011:  brfalse    IL_0575

    IL_0016:  ldarg.0
    IL_0017:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_001c:  stloc.0
    IL_001d:  ldarg.0
    IL_001e:  call       instance class Game.ComponentPlayer Game.InventorySlotWidget::GetViewPlayer()
    IL_0023:  stloc.1
    IL_0024:  ldarg.0
    IL_0025:  ldfld      class Game.IInventory Game.InventorySlotWidget::m_inventory
    IL_002a:  ldarg.0
    IL_002b:  ldfld      int32 Game.InventorySlotWidget::m_slotIndex
    IL_0030:  callvirt   instance int32 Game.IInventory::GetSlotValue(int32)
    IL_0035:  stloc.2
    IL_0036:  ldloc.2
    IL_0037:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_003c:  stloc.3
    IL_003d:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0042:  ldloc.3
    IL_0043:  ldelem.ref
    IL_0044:  stloc.s    V_4
    IL_0046:  ldarg.0
    IL_0047:  ldfld      class Game.ComponentPlayer Game.InventorySlotWidget::m_componentPlayer
    IL_004c:  brfalse.s  IL_006e

    IL_004e:  ldarg.0
    IL_004f:  ldfld      class Game.BlockIconWidget Game.InventorySlotWidget::m_blockIconWidget
    IL_0054:  callvirt   instance class Game.DrawBlockEnvironmentData Game.BlockIconWidget::get_DrawBlockEnvironmentData()
    IL_0059:  ldarg.0
    IL_005a:  ldfld      class Game.ComponentPlayer Game.InventorySlotWidget::m_componentPlayer
    IL_005f:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0064:  callvirt   instance valuetype [Engine]Engine.Matrix Game.ComponentFrame::get_Matrix()
    IL_0069:  stfld      valuetype [Engine]Engine.Matrix Game.DrawBlockEnvironmentData::InWorldMatrix
    IL_006e:  ldarg.0
    IL_006f:  ldfld      bool Game.InventorySlotWidget::m_focus
    IL_0074:  brfalse.s  IL_0090

    IL_0076:  ldloc.0
    IL_0077:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::get_Press()
    IL_007c:  stloc.s    V_5
    IL_007e:  ldloca.s   V_5
    IL_0080:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_0085:  brtrue.s   IL_0090

    IL_0087:  ldarg.0
    IL_0088:  ldc.i4.0
    IL_0089:  stfld      bool Game.InventorySlotWidget::m_focus
    IL_008e:  br.s       IL_00bf

    IL_0090:  ldloc.0
    IL_0091:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::get_Tap()
    IL_0096:  stloc.s    V_5
    IL_0098:  ldloca.s   V_5
    IL_009a:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_009f:  brfalse.s  IL_00bf

    IL_00a1:  ldloc.0
    IL_00a2:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::get_Tap()
    IL_00a7:  stloc.s    V_5
    IL_00a9:  ldloca.s   V_5
    IL_00ab:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_00b0:  call       class Game.Widget Game.WidgetsManager::HitTest(valuetype [Engine]Engine.Vector2)
    IL_00b5:  ldarg.0
    IL_00b6:  bne.un.s   IL_00bf

    IL_00b8:  ldarg.0
    IL_00b9:  ldc.i4.1
    IL_00ba:  stfld      bool Game.InventorySlotWidget::m_focus
    IL_00bf:  ldloc.0
    IL_00c0:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.Segment2> Game.WidgetInput::get_SpecialClick()
    IL_00c5:  stloc.s    V_6
    IL_00c7:  ldloca.s   V_6
    IL_00c9:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.Segment2>::get_HasValue()
    IL_00ce:  brfalse    IL_01cb

    IL_00d3:  ldloc.0
    IL_00d4:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.Segment2> Game.WidgetInput::get_SpecialClick()
    IL_00d9:  stloc.s    V_6
    IL_00db:  ldloca.s   V_6
    IL_00dd:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.Segment2>::get_Value()
    IL_00e2:  ldfld      valuetype [Engine]Engine.Vector2 Game.Segment2::Start
    IL_00e7:  call       class Game.Widget Game.WidgetsManager::HitTest(valuetype [Engine]Engine.Vector2)
    IL_00ec:  ldarg.0
    IL_00ed:  bne.un     IL_01cb

    IL_00f2:  ldloc.0
    IL_00f3:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.Segment2> Game.WidgetInput::get_SpecialClick()
    IL_00f8:  stloc.s    V_6
    IL_00fa:  ldloca.s   V_6
    IL_00fc:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.Segment2>::get_Value()
    IL_0101:  ldfld      valuetype [Engine]Engine.Vector2 Game.Segment2::End
    IL_0106:  call       class Game.Widget Game.WidgetsManager::HitTest(valuetype [Engine]Engine.Vector2)
    IL_010b:  ldarg.0
    IL_010c:  bne.un     IL_01cb

    IL_0111:  ldnull
    IL_0112:  stloc.s    V_7
    IL_0114:  call       class Game.ContainerWidget Game.WidgetsManager::get_RootWidget()
    IL_0119:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.Widget> Game.ContainerWidget::get_AllChildren()
    IL_011e:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::OfType<class Game.InventorySlotWidget>(class [System.Runtime]System.Collections.IEnumerable)
    IL_0123:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.InventorySlotWidget>::GetEnumerator()
    IL_0128:  stloc.s    V_8
    .try
    {
      IL_012a:  br.s       IL_0179

      IL_012c:  ldloc.s    V_8
      IL_012e:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.InventorySlotWidget>::get_Current()
      IL_0133:  stloc.s    V_9
      IL_0135:  ldloc.s    V_9
      IL_0137:  ldfld      class Game.IInventory Game.InventorySlotWidget::m_inventory
      IL_013c:  brfalse.s  IL_0179

      IL_013e:  ldloc.s    V_9
      IL_0140:  ldfld      class Game.IInventory Game.InventorySlotWidget::m_inventory
      IL_0145:  ldarg.0
      IL_0146:  ldfld      class Game.IInventory Game.InventorySlotWidget::m_inventory
      IL_014b:  beq.s      IL_0179

      IL_014d:  ldloc.s    V_9
      IL_014f:  callvirt   instance class Game.WidgetInput Game.Widget::get_Input()
      IL_0154:  ldarg.0
      IL_0155:  call       instance class Game.WidgetInput Game.Widget::get_Input()
      IL_015a:  bne.un.s   IL_0179

      IL_015c:  ldloc.s    V_9
      IL_015e:  call       bool Game.WidgetsManager::IsWidgetEnabled(class Game.Widget)
      IL_0163:  brfalse.s  IL_0179

      IL_0165:  ldloc.s    V_9
      IL_0167:  call       bool Game.WidgetsManager::IsWidgetVisible(class Game.Widget)
      IL_016c:  brfalse.s  IL_0179

      IL_016e:  ldloc.s    V_9
      IL_0170:  ldfld      class Game.IInventory Game.InventorySlotWidget::m_inventory
      IL_0175:  stloc.s    V_7
      IL_0177:  leave.s    IL_0190

      IL_0179:  ldloc.s    V_8
      IL_017b:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_0180:  brtrue.s   IL_012c

      IL_0182:  leave.s    IL_0190

    }  // end .try
    finally
    {
      IL_0184:  ldloc.s    V_8
      IL_0186:  brfalse.s  IL_018f

      IL_0188:  ldloc.s    V_8
      IL_018a:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_018f:  endfinally
    }  // end handler
    IL_0190:  ldloc.s    V_7
    IL_0192:  brfalse.s  IL_01cb

    IL_0194:  ldloc.s    V_7
    IL_0196:  ldloc.2
    IL_0197:  call       int32 Game.ComponentInventoryBase::FindAcquireSlotForItem(class Game.IInventory,
                                                                                   int32)
    IL_019c:  stloc.s    V_10
    IL_019e:  ldloc.s    V_10
    IL_01a0:  ldc.i4.0
    IL_01a1:  blt.s      IL_01cb

    IL_01a3:  ldarg.0
    IL_01a4:  ldarg.0
    IL_01a5:  ldfld      class Game.IInventory Game.InventorySlotWidget::m_inventory
    IL_01aa:  ldarg.0
    IL_01ab:  ldfld      int32 Game.InventorySlotWidget::m_slotIndex
    IL_01b0:  ldloc.s    V_7
    IL_01b2:  ldloc.s    V_10
    IL_01b4:  ldarg.0
    IL_01b5:  ldfld      class Game.IInventory Game.InventorySlotWidget::m_inventory
    IL_01ba:  ldarg.0
    IL_01bb:  ldfld      int32 Game.InventorySlotWidget::m_slotIndex
    IL_01c0:  callvirt   instance int32 Game.IInventory::GetSlotCount(int32)
    IL_01c5:  call       instance bool Game.InventorySlotWidget::HandleMoveItem(class Game.IInventory,
                                                                                int32,
                                                                                class Game.IInventory,
                                                                                int32,
                                                                                int32)
    IL_01ca:  pop
    IL_01cb:  ldloc.0
    IL_01cc:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.Segment2> Game.WidgetInput::get_Click()
    IL_01d1:  stloc.s    V_6
    IL_01d3:  ldloca.s   V_6
    IL_01d5:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.Segment2>::get_HasValue()
    IL_01da:  brfalse    IL_0303

    IL_01df:  ldloc.0
    IL_01e0:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.Segment2> Game.WidgetInput::get_Click()
    IL_01e5:  stloc.s    V_6
    IL_01e7:  ldloca.s   V_6
    IL_01e9:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.Segment2>::get_Value()
    IL_01ee:  ldfld      valuetype [Engine]Engine.Vector2 Game.Segment2::Start
    IL_01f3:  call       class Game.Widget Game.WidgetsManager::HitTest(valuetype [Engine]Engine.Vector2)
    IL_01f8:  ldarg.0
    IL_01f9:  bne.un     IL_0303

    IL_01fe:  ldloc.0
    IL_01ff:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.Segment2> Game.WidgetInput::get_Click()
    IL_0204:  stloc.s    V_6
    IL_0206:  ldloca.s   V_6
    IL_0208:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.Segment2>::get_Value()
    IL_020d:  ldfld      valuetype [Engine]Engine.Vector2 Game.Segment2::End
    IL_0212:  call       class Game.Widget Game.WidgetsManager::HitTest(valuetype [Engine]Engine.Vector2)
    IL_0217:  ldarg.0
    IL_0218:  bne.un     IL_0303

    IL_021d:  ldc.i4.0
    IL_021e:  stloc.s    V_11
    IL_0220:  ldloc.1
    IL_0221:  brfalse    IL_02af

    IL_0226:  ldloc.1
    IL_0227:  callvirt   instance class Game.ComponentInput Game.ComponentPlayer::get_ComponentInput()
    IL_022c:  callvirt   instance class Game.IInventory Game.ComponentInput::get_SplitSourceInventory()
    IL_0231:  ldarg.0
    IL_0232:  ldfld      class Game.IInventory Game.InventorySlotWidget::m_inventory
    IL_0237:  bne.un.s   IL_025e

    IL_0239:  ldloc.1
    IL_023a:  callvirt   instance class Game.ComponentInput Game.ComponentPlayer::get_ComponentInput()
    IL_023f:  callvirt   instance int32 Game.ComponentInput::get_SplitSourceSlotIndex()
    IL_0244:  ldarg.0
    IL_0245:  ldfld      int32 Game.InventorySlotWidget::m_slotIndex
    IL_024a:  bne.un.s   IL_025e

    IL_024c:  ldloc.1
    IL_024d:  callvirt   instance class Game.ComponentInput Game.ComponentPlayer::get_ComponentInput()
    IL_0252:  ldnull
    IL_0253:  ldc.i4.m1
    IL_0254:  callvirt   instance void Game.ComponentInput::SetSplitSourceInventoryAndSlot(class Game.IInventory,
                                                                                           int32)
    IL_0259:  ldc.i4.1
    IL_025a:  stloc.s    V_11
    IL_025c:  br.s       IL_02af

    IL_025e:  ldloc.1
    IL_025f:  callvirt   instance class Game.ComponentInput Game.ComponentPlayer::get_ComponentInput()
    IL_0264:  callvirt   instance class Game.IInventory Game.ComponentInput::get_SplitSourceInventory()
    IL_0269:  brfalse.s  IL_02af

    IL_026b:  ldarg.0
    IL_026c:  ldloc.1
    IL_026d:  callvirt   instance class Game.ComponentInput Game.ComponentPlayer::get_ComponentInput()
    IL_0272:  callvirt   instance class Game.IInventory Game.ComponentInput::get_SplitSourceInventory()
    IL_0277:  ldloc.1
    IL_0278:  callvirt   instance class Game.ComponentInput Game.ComponentPlayer::get_ComponentInput()
    IL_027d:  callvirt   instance int32 Game.ComponentInput::get_SplitSourceSlotIndex()
    IL_0282:  ldarg.0
    IL_0283:  ldfld      class Game.IInventory Game.InventorySlotWidget::m_inventory
    IL_0288:  ldarg.0
    IL_0289:  ldfld      int32 Game.InventorySlotWidget::m_slotIndex
    IL_028e:  ldc.i4.1
    IL_028f:  call       instance bool Game.InventorySlotWidget::HandleMoveItem(class Game.IInventory,
                                                                                int32,
                                                                                class Game.IInventory,
                                                                                int32,
                                                                                int32)
    IL_0294:  stloc.s    V_11
    IL_0296:  ldstr      "Audio/UI/ButtonClick"
    IL_029b:  ldc.r4     1.
    IL_02a0:  ldc.r4     0.0
    IL_02a5:  ldc.r4     0.0
    IL_02aa:  call       void Game.AudioManager::PlaySound(string,
                                                           float32,
                                                           float32,
                                                           float32)
    IL_02af:  ldloc.s    V_11
    IL_02b1:  brtrue.s   IL_0303

    IL_02b3:  ldarg.0
    IL_02b4:  ldfld      class Game.IInventory Game.InventorySlotWidget::m_inventory
    IL_02b9:  callvirt   instance int32 Game.IInventory::get_ActiveSlotIndex()
    IL_02be:  ldarg.0
    IL_02bf:  ldfld      int32 Game.InventorySlotWidget::m_slotIndex
    IL_02c4:  beq.s      IL_0303

    IL_02c6:  ldarg.0
    IL_02c7:  ldfld      class Game.IInventory Game.InventorySlotWidget::m_inventory
    IL_02cc:  ldarg.0
    IL_02cd:  ldfld      int32 Game.InventorySlotWidget::m_slotIndex
    IL_02d2:  callvirt   instance void Game.IInventory::set_ActiveSlotIndex(int32)
    IL_02d7:  ldarg.0
    IL_02d8:  ldfld      class Game.IInventory Game.InventorySlotWidget::m_inventory
    IL_02dd:  callvirt   instance int32 Game.IInventory::get_ActiveSlotIndex()
    IL_02e2:  ldarg.0
    IL_02e3:  ldfld      int32 Game.InventorySlotWidget::m_slotIndex
    IL_02e8:  bne.un.s   IL_0303

    IL_02ea:  ldstr      "Audio/UI/ButtonClick"
    IL_02ef:  ldc.r4     1.
    IL_02f4:  ldc.r4     0.0
    IL_02f9:  ldc.r4     0.0
    IL_02fe:  call       void Game.AudioManager::PlaySound(string,
                                                           float32,
                                                           float32,
                                                           float32)
    IL_0303:  ldarg.0
    IL_0304:  ldfld      bool Game.InventorySlotWidget::m_focus
    IL_0309:  brfalse    IL_0575

    IL_030e:  ldarg.0
    IL_030f:  call       instance bool Game.InventorySlotWidget::get_ProcessingOnly()
    IL_0314:  brtrue     IL_0575

    IL_0319:  ldloc.1
    IL_031a:  brfalse    IL_0575

    IL_031f:  ldloc.0
    IL_0320:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::get_Hold()
    IL_0325:  stloc.s    V_12
    IL_0327:  ldloca.s   V_12
    IL_0329:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_032e:  brfalse    IL_03bf

    IL_0333:  ldloca.s   V_12
    IL_0335:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_033a:  call       class Game.Widget Game.WidgetsManager::HitTest(valuetype [Engine]Engine.Vector2)
    IL_033f:  ldarg.0
    IL_0340:  bne.un.s   IL_03bf

    IL_0342:  ldarg.0
    IL_0343:  call       instance class Game.DragHostWidget Game.InventorySlotWidget::get_DragHostWidget()
    IL_0348:  callvirt   instance bool Game.DragHostWidget::get_IsDragInProgress()
    IL_034d:  brtrue.s   IL_03bf

    IL_034f:  ldarg.0
    IL_0350:  ldfld      class Game.IInventory Game.InventorySlotWidget::m_inventory
    IL_0355:  ldarg.0
    IL_0356:  ldfld      int32 Game.InventorySlotWidget::m_slotIndex
    IL_035b:  callvirt   instance int32 Game.IInventory::GetSlotCount(int32)
    IL_0360:  ldc.i4.0
    IL_0361:  ble.s      IL_03bf

    IL_0363:  ldloc.1
    IL_0364:  callvirt   instance class Game.ComponentInput Game.ComponentPlayer::get_ComponentInput()
    IL_0369:  callvirt   instance class Game.IInventory Game.ComponentInput::get_SplitSourceInventory()
    IL_036e:  ldarg.0
    IL_036f:  ldfld      class Game.IInventory Game.InventorySlotWidget::m_inventory
    IL_0374:  bne.un.s   IL_0389

    IL_0376:  ldloc.1
    IL_0377:  callvirt   instance class Game.ComponentInput Game.ComponentPlayer::get_ComponentInput()
    IL_037c:  callvirt   instance int32 Game.ComponentInput::get_SplitSourceSlotIndex()
    IL_0381:  ldarg.0
    IL_0382:  ldfld      int32 Game.InventorySlotWidget::m_slotIndex
    IL_0387:  beq.s      IL_03bf

    IL_0389:  ldloc.0
    IL_038a:  callvirt   instance void Game.WidgetInput::Clear()
    IL_038f:  ldloc.1
    IL_0390:  callvirt   instance class Game.ComponentInput Game.ComponentPlayer::get_ComponentInput()
    IL_0395:  ldarg.0
    IL_0396:  ldfld      class Game.IInventory Game.InventorySlotWidget::m_inventory
    IL_039b:  ldarg.0
    IL_039c:  ldfld      int32 Game.InventorySlotWidget::m_slotIndex
    IL_03a1:  callvirt   instance void Game.ComponentInput::SetSplitSourceInventoryAndSlot(class Game.IInventory,
                                                                                           int32)
    IL_03a6:  ldstr      "Audio/UI/ButtonClick"
    IL_03ab:  ldc.r4     1.
    IL_03b0:  ldc.r4     0.0
    IL_03b5:  ldc.r4     0.0
    IL_03ba:  call       void Game.AudioManager::PlaySound(string,
                                                           float32,
                                                           float32,
                                                           float32)
    IL_03bf:  ldloc.0
    IL_03c0:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::get_Drag()
    IL_03c5:  stloc.s    V_13
    IL_03c7:  ldloca.s   V_13
    IL_03c9:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_03ce:  brfalse    IL_0575

    IL_03d3:  ldloca.s   V_13
    IL_03d5:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_03da:  call       class Game.Widget Game.WidgetsManager::HitTest(valuetype [Engine]Engine.Vector2)
    IL_03df:  ldarg.0
    IL_03e0:  bne.un     IL_0575

    IL_03e5:  ldarg.0
    IL_03e6:  call       instance class Game.DragHostWidget Game.InventorySlotWidget::get_DragHostWidget()
    IL_03eb:  callvirt   instance bool Game.DragHostWidget::get_IsDragInProgress()
    IL_03f0:  brtrue     IL_0575

    IL_03f5:  ldarg.0
    IL_03f6:  ldfld      class Game.IInventory Game.InventorySlotWidget::m_inventory
    IL_03fb:  ldarg.0
    IL_03fc:  ldfld      int32 Game.InventorySlotWidget::m_slotIndex
    IL_0401:  callvirt   instance int32 Game.IInventory::GetSlotCount(int32)
    IL_0406:  stloc.s    V_14
    IL_0408:  ldloc.s    V_14
    IL_040a:  ldc.i4.0
    IL_040b:  ble        IL_0575

    IL_0410:  ldloc.0
    IL_0411:  callvirt   instance valuetype Game.DragMode Game.WidgetInput::get_DragMode()
    IL_0416:  stloc.s    V_15
    IL_0418:  ldloc.1
    IL_0419:  callvirt   instance class Game.ComponentInput Game.ComponentPlayer::get_ComponentInput()
    IL_041e:  callvirt   instance class Game.IInventory Game.ComponentInput::get_SplitSourceInventory()
    IL_0423:  ldarg.0
    IL_0424:  ldfld      class Game.IInventory Game.InventorySlotWidget::m_inventory
    IL_0429:  bne.un.s   IL_0441

    IL_042b:  ldloc.1
    IL_042c:  callvirt   instance class Game.ComponentInput Game.ComponentPlayer::get_ComponentInput()
    IL_0431:  callvirt   instance int32 Game.ComponentInput::get_SplitSourceSlotIndex()
    IL_0436:  ldarg.0
    IL_0437:  ldfld      int32 Game.InventorySlotWidget::m_slotIndex
    IL_043c:  bne.un.s   IL_0441

    IL_043e:  ldc.i4.1
    IL_043f:  stloc.s    V_15
    IL_0441:  ldloc.s    V_15
    IL_0443:  brfalse.s  IL_0448

    IL_0445:  ldc.i4.1
    IL_0446:  br.s       IL_044a

    IL_0448:  ldloc.s    V_14
    IL_044a:  stloc.s    V_16
    IL_044c:  ldarg.0
    IL_044d:  ldfld      class Game.IInventory Game.InventorySlotWidget::m_inventory
    IL_0452:  callvirt   instance class [EntitySystem]GameEntitySystem.Project Game.IInventory::get_Project()
    IL_0457:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>()
    IL_045c:  stloc.s    V_17
    IL_045e:  ldnull
    IL_045f:  ldstr      "Widgets/InventoryDragWidget"
    IL_0464:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_0469:  ldnull
    IL_046a:  call       class Game.Widget Game.WidgetsManager::LoadWidget(object,
                                                                           class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                           class Game.ContainerWidget)
    IL_046f:  castclass  Game.ContainerWidget
    IL_0474:  stloc.s    V_18
    IL_0476:  ldloc.s    V_18
    IL_0478:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_047d:  ldstr      "InventoryDragWidget.Icon"
    IL_0482:  ldc.i4.1
    IL_0483:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.BlockIconWidget>(string,
                                                                                         bool)
    IL_0488:  ldloc.2
    IL_0489:  ldc.i4.s   15
    IL_048b:  call       int32 Game.Terrain::ReplaceLight(int32,
                                                          int32)
    IL_0490:  callvirt   instance void Game.BlockIconWidget::set_Value(int32)
    IL_0495:  ldloc.s    V_18
    IL_0497:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_049c:  ldstr      "InventoryDragWidget.Icon"
    IL_04a1:  ldc.i4.1
    IL_04a2:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.BlockIconWidget>(string,
                                                                                         bool)
    IL_04a7:  callvirt   instance class Game.DrawBlockEnvironmentData Game.BlockIconWidget::get_DrawBlockEnvironmentData()
    IL_04ac:  ldloc.s    V_17
    IL_04ae:  stfld      class Game.SubsystemTerrain Game.DrawBlockEnvironmentData::SubsystemTerrain
    IL_04b3:  ldloc.s    V_18
    IL_04b5:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_04ba:  ldstr      "InventoryDragWidget.Name"
    IL_04bf:  ldc.i4.1
    IL_04c0:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_04c5:  ldloc.s    V_4
    IL_04c7:  ldloc.s    V_17
    IL_04c9:  ldloc.2
    IL_04ca:  callvirt   instance string Game.Block::GetDisplayName(class Game.SubsystemTerrain,
                                                                    int32)
    IL_04cf:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_04d4:  ldloc.s    V_18
    IL_04d6:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_04db:  ldstr      "InventoryDragWidget.Count"
    IL_04e0:  ldc.i4.1
    IL_04e1:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_04e6:  ldloca.s   V_16
    IL_04e8:  call       instance string [System.Runtime]System.Int32::ToString()
    IL_04ed:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_04f2:  ldloc.s    V_18
    IL_04f4:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_04f9:  ldstr      "InventoryDragWidget.Count"
    IL_04fe:  ldc.i4.1
    IL_04ff:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_0504:  ldarg.0
    IL_0505:  ldfld      class Game.IInventory Game.InventorySlotWidget::m_inventory
    IL_050a:  isinst     Game.ComponentCreativeInventory
    IL_050f:  brtrue.s   IL_0524

    IL_0511:  ldarg.0
    IL_0512:  ldfld      class Game.IInventory Game.InventorySlotWidget::m_inventory
    IL_0517:  isinst     Game.ComponentFurnitureInventory
    IL_051c:  ldnull
    IL_051d:  cgt.un
    IL_051f:  ldc.i4.0
    IL_0520:  ceq
    IL_0522:  br.s       IL_0525

    IL_0524:  ldc.i4.0
    IL_0525:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_052a:  ldarg.0
    IL_052b:  call       instance class Game.DragHostWidget Game.InventorySlotWidget::get_DragHostWidget()
    IL_0530:  ldloc.s    V_18
    IL_0532:  newobj     instance void Game.InventoryDragData::.ctor()
    IL_0537:  dup
    IL_0538:  ldarg.0
    IL_0539:  ldfld      class Game.IInventory Game.InventorySlotWidget::m_inventory
    IL_053e:  stfld      class Game.IInventory Game.InventoryDragData::Inventory
    IL_0543:  dup
    IL_0544:  ldarg.0
    IL_0545:  ldfld      int32 Game.InventorySlotWidget::m_slotIndex
    IL_054a:  stfld      int32 Game.InventoryDragData::SlotIndex
    IL_054f:  dup
    IL_0550:  ldloc.s    V_15
    IL_0552:  stfld      valuetype Game.DragMode Game.InventoryDragData::DragMode
    IL_0557:  ldarg.0
    IL_0558:  ldftn      instance void Game.InventorySlotWidget::'<Update>b__58_0'()
    IL_055e:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0563:  callvirt   instance void Game.DragHostWidget::BeginDrag(class Game.Widget,
                                                                      object,
                                                                      class [System.Runtime]System.Action)
    IL_0568:  ldarg.0
    IL_0569:  ldloc.s    V_15
    IL_056b:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.DragMode>::.ctor(!0)
    IL_0570:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype Game.DragMode> Game.InventorySlotWidget::m_dragMode
    IL_0575:  ret
  } // end of method InventorySlotWidget::Update

  .method public hidebysig virtual instance void 
          MeasureOverride(valuetype [Engine]Engine.Vector2 parentAvailableSize) cil managed
  {
    // 代码大小       907 (0x38b)
    .maxstack  5
    .locals init (bool V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             class Game.Block V_4,
             bool V_5,
             int32 V_6)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.IInventory Game.InventorySlotWidget::m_inventory
    IL_0006:  brfalse    IL_0308

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
    IL_0074:  ble        IL_0214

    IL_0079:  ldarg.0
    IL_007a:  ldfld      class Game.IInventory Game.InventorySlotWidget::m_inventory
    IL_007f:  ldarg.0
    IL_0080:  ldfld      int32 Game.InventorySlotWidget::m_slotIndex
    IL_0085:  callvirt   instance int32 Game.IInventory::GetSlotValue(int32)
    IL_008a:  stloc.2
    IL_008b:  ldloc.2
    IL_008c:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0091:  stloc.3
    IL_0092:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0097:  ldloc.3
    IL_0098:  ldelem.ref
    IL_0099:  stloc.s    V_4
    IL_009b:  ldloc.s    V_4
    IL_009d:  ldloc.2
    IL_009e:  callvirt   instance int32 Game.Block::GetRotPeriod(int32)
    IL_00a3:  ldc.i4.0
    IL_00a4:  ble.s      IL_00b3

    IL_00a6:  ldloc.s    V_4
    IL_00a8:  ldloc.2
    IL_00a9:  callvirt   instance int32 Game.Block::GetDamage(int32)
    IL_00ae:  ldc.i4.0
    IL_00af:  cgt
    IL_00b1:  br.s       IL_00b4

    IL_00b3:  ldc.i4.0
    IL_00b4:  stloc.s    V_5
    IL_00b6:  ldarg.0
    IL_00b7:  ldfld      class Game.BlockIconWidget Game.InventorySlotWidget::m_blockIconWidget
    IL_00bc:  ldloc.2
    IL_00bd:  ldc.i4.s   15
    IL_00bf:  call       int32 Game.Terrain::ReplaceLight(int32,
                                                          int32)
    IL_00c4:  callvirt   instance void Game.BlockIconWidget::set_Value(int32)
    IL_00c9:  ldarg.0
    IL_00ca:  ldfld      class Game.BlockIconWidget Game.InventorySlotWidget::m_blockIconWidget
    IL_00cf:  ldarg.0
    IL_00d0:  call       instance bool Game.InventorySlotWidget::get_HideBlockIcon()
    IL_00d5:  ldc.i4.0
    IL_00d6:  ceq
    IL_00d8:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_00dd:  ldloc.1
    IL_00de:  ldarg.0
    IL_00df:  ldfld      int32 Game.InventorySlotWidget::m_lastCount
    IL_00e4:  beq.s      IL_00ff

    IL_00e6:  ldarg.0
    IL_00e7:  ldfld      class Game.LabelWidget Game.InventorySlotWidget::m_countWidget
    IL_00ec:  ldloca.s   V_1
    IL_00ee:  call       instance string [System.Runtime]System.Int32::ToString()
    IL_00f3:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_00f8:  ldarg.0
    IL_00f9:  ldloc.1
    IL_00fa:  stfld      int32 Game.InventorySlotWidget::m_lastCount
    IL_00ff:  ldarg.0
    IL_0100:  ldfld      class Game.LabelWidget Game.InventorySlotWidget::m_countWidget
    IL_0105:  ldloc.1
    IL_0106:  ldc.i4.1
    IL_0107:  ble.s      IL_010f

    IL_0109:  ldloc.0
    IL_010a:  ldc.i4.0
    IL_010b:  ceq
    IL_010d:  br.s       IL_0110

    IL_010f:  ldc.i4.0
    IL_0110:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0115:  ldarg.0
    IL_0116:  ldfld      class Game.RectangleWidget Game.InventorySlotWidget::m_editOverlayWidget
    IL_011b:  ldarg.0
    IL_011c:  call       instance bool Game.InventorySlotWidget::get_HideEditOverlay()
    IL_0121:  brtrue.s   IL_012c

    IL_0123:  ldloc.s    V_4
    IL_0125:  ldfld      bool Game.Block::IsEditable
    IL_012a:  br.s       IL_012d

    IL_012c:  ldc.i4.0
    IL_012d:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0132:  ldarg.0
    IL_0133:  ldfld      class Game.RectangleWidget Game.InventorySlotWidget::m_interactiveOverlayWidget
    IL_0138:  ldarg.0
    IL_0139:  call       instance bool Game.InventorySlotWidget::get_HideInteractiveOverlay()
    IL_013e:  brtrue.s   IL_0161

    IL_0140:  ldarg.0
    IL_0141:  ldfld      class Game.SubsystemTerrain Game.InventorySlotWidget::m_subsystemTerrain
    IL_0146:  brtrue.s   IL_0151

    IL_0148:  ldloc.s    V_4
    IL_014a:  ldfld      bool Game.Block::DefaultIsInteractive
    IL_014f:  br.s       IL_0162

    IL_0151:  ldloc.s    V_4
    IL_0153:  ldarg.0
    IL_0154:  ldfld      class Game.SubsystemTerrain Game.InventorySlotWidget::m_subsystemTerrain
    IL_0159:  ldloc.2
    IL_015a:  callvirt   instance bool Game.Block::IsInteractive(class Game.SubsystemTerrain,
                                                                 int32)
    IL_015f:  br.s       IL_0162

    IL_0161:  ldc.i4.0
    IL_0162:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0167:  ldarg.0
    IL_0168:  ldfld      class Game.RectangleWidget Game.InventorySlotWidget::m_foodOverlayWidget
    IL_016d:  ldarg.0
    IL_016e:  call       instance bool Game.InventorySlotWidget::get_HideFoodOverlay()
    IL_0173:  brtrue.s   IL_0182

    IL_0175:  ldloc.s    V_4
    IL_0177:  ldloc.2
    IL_0178:  callvirt   instance int32 Game.Block::GetRotPeriod(int32)
    IL_017d:  ldc.i4.0
    IL_017e:  cgt
    IL_0180:  br.s       IL_0183

    IL_0182:  ldc.i4.0
    IL_0183:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0188:  ldarg.0
    IL_0189:  ldfld      class Game.RectangleWidget Game.InventorySlotWidget::m_foodOverlayWidget
    IL_018e:  ldloc.s    V_5
    IL_0190:  brtrue.s   IL_01a8

    IL_0192:  ldc.i4     0xa0
    IL_0197:  ldc.i4     0xa0
    IL_019c:  ldc.i4     0xa0
    IL_01a1:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_01a6:  br.s       IL_01b5

    IL_01a8:  ldc.i4     0x80
    IL_01ad:  ldc.i4.s   64
    IL_01af:  ldc.i4.0
    IL_01b0:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_01b5:  callvirt   instance void Game.RectangleWidget::set_FillColor(valuetype [Engine]Engine.Color)
    IL_01ba:  ldloc.0
    IL_01bb:  brtrue.s   IL_0206

    IL_01bd:  ldarg.0
    IL_01be:  call       instance bool Game.InventorySlotWidget::get_HideHealthBar()
    IL_01c3:  brtrue.s   IL_0206

    IL_01c5:  ldloc.s    V_4
    IL_01c7:  ldfld      int32 Game.Block::Durability
    IL_01cc:  ldc.i4.0
    IL_01cd:  blt.s      IL_0206

    IL_01cf:  ldloc.s    V_4
    IL_01d1:  ldloc.2
    IL_01d2:  callvirt   instance int32 Game.Block::GetDamage(int32)
    IL_01d7:  stloc.s    V_6
    IL_01d9:  ldarg.0
    IL_01da:  ldfld      class Game.ValueBarWidget Game.InventorySlotWidget::m_healthBarWidget
    IL_01df:  ldc.i4.1
    IL_01e0:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_01e5:  ldarg.0
    IL_01e6:  ldfld      class Game.ValueBarWidget Game.InventorySlotWidget::m_healthBarWidget
    IL_01eb:  ldloc.s    V_4
    IL_01ed:  ldfld      int32 Game.Block::Durability
    IL_01f2:  ldloc.s    V_6
    IL_01f4:  sub
    IL_01f5:  conv.r4
    IL_01f6:  ldloc.s    V_4
    IL_01f8:  ldfld      int32 Game.Block::Durability
    IL_01fd:  conv.r4
    IL_01fe:  div
    IL_01ff:  callvirt   instance void Game.ValueBarWidget::set_Value(float32)
    IL_0204:  br.s       IL_025c

    IL_0206:  ldarg.0
    IL_0207:  ldfld      class Game.ValueBarWidget Game.InventorySlotWidget::m_healthBarWidget
    IL_020c:  ldc.i4.0
    IL_020d:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0212:  br.s       IL_025c

    IL_0214:  ldarg.0
    IL_0215:  ldfld      class Game.BlockIconWidget Game.InventorySlotWidget::m_blockIconWidget
    IL_021a:  ldc.i4.0
    IL_021b:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0220:  ldarg.0
    IL_0221:  ldfld      class Game.LabelWidget Game.InventorySlotWidget::m_countWidget
    IL_0226:  ldc.i4.0
    IL_0227:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_022c:  ldarg.0
    IL_022d:  ldfld      class Game.ValueBarWidget Game.InventorySlotWidget::m_healthBarWidget
    IL_0232:  ldc.i4.0
    IL_0233:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0238:  ldarg.0
    IL_0239:  ldfld      class Game.RectangleWidget Game.InventorySlotWidget::m_editOverlayWidget
    IL_023e:  ldc.i4.0
    IL_023f:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0244:  ldarg.0
    IL_0245:  ldfld      class Game.RectangleWidget Game.InventorySlotWidget::m_interactiveOverlayWidget
    IL_024a:  ldc.i4.0
    IL_024b:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0250:  ldarg.0
    IL_0251:  ldfld      class Game.RectangleWidget Game.InventorySlotWidget::m_foodOverlayWidget
    IL_0256:  ldc.i4.0
    IL_0257:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_025c:  ldarg.0
    IL_025d:  ldfld      class Game.RectangleWidget Game.InventorySlotWidget::m_highlightWidget
    IL_0262:  ldarg.0
    IL_0263:  call       instance bool Game.InventorySlotWidget::get_HideHighlightRectangle()
    IL_0268:  ldc.i4.0
    IL_0269:  ceq
    IL_026b:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0270:  ldarg.0
    IL_0271:  ldfld      class Game.RectangleWidget Game.InventorySlotWidget::m_highlightWidget
    IL_0276:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
    IL_027b:  callvirt   instance void Game.RectangleWidget::set_OutlineColor(valuetype [Engine]Engine.Color)
    IL_0280:  ldarg.0
    IL_0281:  ldfld      class Game.RectangleWidget Game.InventorySlotWidget::m_highlightWidget
    IL_0286:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
    IL_028b:  callvirt   instance void Game.RectangleWidget::set_FillColor(valuetype [Engine]Engine.Color)
    IL_0290:  ldarg.0
    IL_0291:  ldfld      class Game.LabelWidget Game.InventorySlotWidget::m_splitLabelWidget
    IL_0296:  ldc.i4.0
    IL_0297:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_029c:  ldarg.0
    IL_029d:  ldfld      int32 Game.InventorySlotWidget::m_slotIndex
    IL_02a2:  ldarg.0
    IL_02a3:  ldfld      class Game.IInventory Game.InventorySlotWidget::m_inventory
    IL_02a8:  callvirt   instance int32 Game.IInventory::get_ActiveSlotIndex()
    IL_02ad:  bne.un.s   IL_02d7

    IL_02af:  ldarg.0
    IL_02b0:  ldfld      class Game.RectangleWidget Game.InventorySlotWidget::m_highlightWidget
    IL_02b5:  ldc.i4.0
    IL_02b6:  ldc.i4.0
    IL_02b7:  ldc.i4.0
    IL_02b8:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_02bd:  callvirt   instance void Game.RectangleWidget::set_OutlineColor(valuetype [Engine]Engine.Color)
    IL_02c2:  ldarg.0
    IL_02c3:  ldfld      class Game.RectangleWidget Game.InventorySlotWidget::m_highlightWidget
    IL_02c8:  ldc.i4.0
    IL_02c9:  ldc.i4.0
    IL_02ca:  ldc.i4.0
    IL_02cb:  ldc.i4.s   80
    IL_02cd:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32,
                                                                   int32)
    IL_02d2:  callvirt   instance void Game.RectangleWidget::set_FillColor(valuetype [Engine]Engine.Color)
    IL_02d7:  ldarg.0
    IL_02d8:  call       instance bool Game.InventorySlotWidget::IsSplitMode()
    IL_02dd:  brfalse    IL_0374

    IL_02e2:  ldarg.0
    IL_02e3:  ldfld      class Game.RectangleWidget Game.InventorySlotWidget::m_highlightWidget
    IL_02e8:  ldc.i4     0xff
    IL_02ed:  ldc.i4.s   64
    IL_02ef:  ldc.i4.0
    IL_02f0:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_02f5:  callvirt   instance void Game.RectangleWidget::set_OutlineColor(valuetype [Engine]Engine.Color)
    IL_02fa:  ldarg.0
    IL_02fb:  ldfld      class Game.LabelWidget Game.InventorySlotWidget::m_splitLabelWidget
    IL_0300:  ldc.i4.1
    IL_0301:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0306:  br.s       IL_0374

    IL_0308:  ldarg.0
    IL_0309:  ldfld      class Game.BevelledRectangleWidget Game.InventorySlotWidget::m_rectangleWidget
    IL_030e:  ldc.i4.0
    IL_030f:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0314:  ldarg.0
    IL_0315:  ldfld      class Game.RectangleWidget Game.InventorySlotWidget::m_highlightWidget
    IL_031a:  ldc.i4.0
    IL_031b:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0320:  ldarg.0
    IL_0321:  ldfld      class Game.BlockIconWidget Game.InventorySlotWidget::m_blockIconWidget
    IL_0326:  ldc.i4.0
    IL_0327:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_032c:  ldarg.0
    IL_032d:  ldfld      class Game.LabelWidget Game.InventorySlotWidget::m_countWidget
    IL_0332:  ldc.i4.0
    IL_0333:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0338:  ldarg.0
    IL_0339:  ldfld      class Game.ValueBarWidget Game.InventorySlotWidget::m_healthBarWidget
    IL_033e:  ldc.i4.0
    IL_033f:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0344:  ldarg.0
    IL_0345:  ldfld      class Game.RectangleWidget Game.InventorySlotWidget::m_editOverlayWidget
    IL_034a:  ldc.i4.0
    IL_034b:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0350:  ldarg.0
    IL_0351:  ldfld      class Game.RectangleWidget Game.InventorySlotWidget::m_interactiveOverlayWidget
    IL_0356:  ldc.i4.0
    IL_0357:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_035c:  ldarg.0
    IL_035d:  ldfld      class Game.RectangleWidget Game.InventorySlotWidget::m_foodOverlayWidget
    IL_0362:  ldc.i4.0
    IL_0363:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0368:  ldarg.0
    IL_0369:  ldfld      class Game.LabelWidget Game.InventorySlotWidget::m_splitLabelWidget
    IL_036e:  ldc.i4.0
    IL_036f:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0374:  ldarg.0
    IL_0375:  ldarg.0
    IL_0376:  ldfld      class Game.InventoryDragData Game.InventorySlotWidget::m_inventoryDragData
    IL_037b:  ldnull
    IL_037c:  cgt.un
    IL_037e:  call       instance void Game.Widget::set_IsDrawRequired(bool)
    IL_0383:  ldarg.0
    IL_0384:  ldarg.1
    IL_0385:  call       instance void Game.CanvasWidget::MeasureOverride(valuetype [Engine]Engine.Vector2)
    IL_038a:  ret
  } // end of method InventorySlotWidget::MeasureOverride

  .method public hidebysig virtual instance void 
          Draw() cil managed
  {
    // 代码大小       395 (0x18b)
    .maxstack  9
    .locals init (int32 V_0,
             float32 V_1,
             valuetype [Engine]Engine.Vector2 V_2,
             valuetype [Engine]Engine.Matrix V_3,
             valuetype [Engine]Engine.Vector3 V_4)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.IInventory Game.InventorySlotWidget::m_inventory
    IL_0006:  brfalse    IL_0183

    IL_000b:  ldarg.0
    IL_000c:  ldfld      class Game.InventoryDragData Game.InventorySlotWidget::m_inventoryDragData
    IL_0011:  brfalse    IL_0183

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
    IL_005a:  ble        IL_0183

    IL_005f:  ldc.r4     80.
    IL_0064:  ldarg.0
    IL_0065:  call       instance valuetype [Engine]Engine.Matrix Game.Widget::get_GlobalTransform()
    IL_006a:  stloc.3
    IL_006b:  ldloca.s   V_3
    IL_006d:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Right()
    IL_0072:  stloc.s    V_4
    IL_0074:  ldloca.s   V_4
    IL_0076:  call       instance float32 [Engine]Engine.Vector3::Length()
    IL_007b:  mul
    IL_007c:  stloc.1
    IL_007d:  ldarg.0
    IL_007e:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0083:  ldc.r4     2.
    IL_0088:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Division(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_008d:  ldarg.0
    IL_008e:  call       instance valuetype [Engine]Engine.Matrix Game.Widget::get_GlobalTransform()
    IL_0093:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Transform(valuetype [Engine]Engine.Vector2,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0098:  stloc.2
    IL_0099:  ldsfld     class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.WidgetsManager::PrimitivesRenderer2D
    IL_009e:  ldc.i4.s   100
    IL_00a0:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::None
    IL_00a5:  ldnull
    IL_00a6:  ldnull
    IL_00a7:  callvirt   instance class [Engine]Engine.Graphics.FlatBatch2D [Engine]Engine.Graphics.PrimitivesRenderer2D::FlatBatch(int32,
                                                                                                                                    class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                    class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                    class [Engine]Engine.Graphics.BlendState)
    IL_00ac:  dup
    IL_00ad:  ldloc.2
    IL_00ae:  ldloc.1
    IL_00af:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_00b4:  ldc.r4     0.0
    IL_00b9:  ldc.i4.0
    IL_00ba:  ldc.i4.0
    IL_00bb:  ldc.i4.0
    IL_00bc:  ldc.i4.s   96
    IL_00be:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32,
                                                                   int32)
    IL_00c3:  ldarg.0
    IL_00c4:  call       instance valuetype [Engine]Engine.Color Game.Widget::get_GlobalColorTransform()
    IL_00c9:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color)
    IL_00ce:  ldc.r4     0.0
    IL_00d3:  ldc.r4     6.2831855
    IL_00d8:  ldc.i4.s   32
    IL_00da:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueEllipse(valuetype [Engine]Engine.Vector2,
                                                                                         valuetype [Engine]Engine.Vector2,
                                                                                         float32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         float32,
                                                                                         float32,
                                                                                         int32)
    IL_00df:  dup
    IL_00e0:  ldloc.2
    IL_00e1:  ldloc.1
    IL_00e2:  ldc.r4     0.5
    IL_00e7:  sub
    IL_00e8:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_00ed:  ldc.r4     0.0
    IL_00f2:  ldc.i4.0
    IL_00f3:  ldc.i4.0
    IL_00f4:  ldc.i4.0
    IL_00f5:  ldc.i4.s   64
    IL_00f7:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32,
                                                                   int32)
    IL_00fc:  ldarg.0
    IL_00fd:  call       instance valuetype [Engine]Engine.Color Game.Widget::get_GlobalColorTransform()
    IL_0102:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color)
    IL_0107:  ldc.r4     0.0
    IL_010c:  ldc.r4     6.2831855
    IL_0111:  ldc.i4.s   32
    IL_0113:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueEllipse(valuetype [Engine]Engine.Vector2,
                                                                                         valuetype [Engine]Engine.Vector2,
                                                                                         float32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         float32,
                                                                                         float32,
                                                                                         int32)
    IL_0118:  dup
    IL_0119:  ldloc.2
    IL_011a:  ldloc.1
    IL_011b:  ldc.r4     0.5
    IL_0120:  add
    IL_0121:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_0126:  ldc.r4     0.0
    IL_012b:  ldc.i4.0
    IL_012c:  ldc.i4.0
    IL_012d:  ldc.i4.0
    IL_012e:  ldc.i4.s   48
    IL_0130:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32,
                                                                   int32)
    IL_0135:  ldarg.0
    IL_0136:  call       instance valuetype [Engine]Engine.Color Game.Widget::get_GlobalColorTransform()
    IL_013b:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color)
    IL_0140:  ldc.r4     0.0
    IL_0145:  ldc.r4     6.2831855
    IL_014a:  ldc.i4.s   32
    IL_014c:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueEllipse(valuetype [Engine]Engine.Vector2,
                                                                                         valuetype [Engine]Engine.Vector2,
                                                                                         float32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         float32,
                                                                                         float32,
                                                                                         int32)
    IL_0151:  ldloc.2
    IL_0152:  ldloc.1
    IL_0153:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_0158:  ldc.r4     0.0
    IL_015d:  ldc.i4.0
    IL_015e:  ldc.i4.0
    IL_015f:  ldc.i4.0
    IL_0160:  ldc.i4.s   48
    IL_0162:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32,
                                                                   int32)
    IL_0167:  ldarg.0
    IL_0168:  call       instance valuetype [Engine]Engine.Color Game.Widget::get_GlobalColorTransform()
    IL_016d:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color)
    IL_0172:  ldc.r4     0.0
    IL_0177:  ldc.r4     6.2831855
    IL_017c:  ldc.i4.s   32
    IL_017e:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueDisc(valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      float32,
                                                                                      valuetype [Engine]Engine.Color,
                                                                                      float32,
                                                                                      float32,
                                                                                      int32)
    IL_0183:  ldarg.0
    IL_0184:  ldnull
    IL_0185:  stfld      class Game.InventoryDragData Game.InventorySlotWidget::m_inventoryDragData
    IL_018a:  ret
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

  .method private hidebysig instance class Game.ComponentPlayer 
          GetViewPlayer() cil managed
  {
    // 代码大小       37 (0x25)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.GameWidget Game.InventorySlotWidget::get_GameWidget()
    IL_0006:  brtrue.s   IL_000a

    IL_0008:  ldnull
    IL_0009:  ret

    IL_000a:  ldarg.0
    IL_000b:  call       instance class Game.GameWidget Game.InventorySlotWidget::get_GameWidget()
    IL_0010:  callvirt   instance class Game.GameViewWidget Game.GameWidget::get_GameViewWidget()
    IL_0015:  callvirt   instance class Game.View Game.GameViewWidget::get_View()
    IL_001a:  callvirt   instance class Game.PlayerData Game.View::get_PlayerData()
    IL_001f:  callvirt   instance class Game.ComponentPlayer Game.PlayerData::get_ComponentPlayer()
    IL_0024:  ret
  } // end of method InventorySlotWidget::GetViewPlayer

  .method private hidebysig instance bool 
          IsSplitMode() cil managed
  {
    // 代码大小       61 (0x3d)
    .maxstack  2
    .locals init (class Game.ComponentPlayer V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.ComponentPlayer Game.InventorySlotWidget::GetViewPlayer()
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  brfalse.s  IL_003b

    IL_000a:  ldarg.0
    IL_000b:  ldfld      class Game.IInventory Game.InventorySlotWidget::m_inventory
    IL_0010:  brfalse.s  IL_0039

    IL_0012:  ldarg.0
    IL_0013:  ldfld      class Game.IInventory Game.InventorySlotWidget::m_inventory
    IL_0018:  ldloc.0
    IL_0019:  callvirt   instance class Game.ComponentInput Game.ComponentPlayer::get_ComponentInput()
    IL_001e:  callvirt   instance class Game.IInventory Game.ComponentInput::get_SplitSourceInventory()
    IL_0023:  bne.un.s   IL_0039

    IL_0025:  ldarg.0
    IL_0026:  ldfld      int32 Game.InventorySlotWidget::m_slotIndex
    IL_002b:  ldloc.0
    IL_002c:  callvirt   instance class Game.ComponentInput Game.ComponentPlayer::get_ComponentInput()
    IL_0031:  callvirt   instance int32 Game.ComponentInput::get_SplitSourceSlotIndex()
    IL_0036:  ceq
    IL_0038:  ret

    IL_0039:  ldc.i4.0
    IL_003a:  ret

    IL_003b:  ldc.i4.0
    IL_003c:  ret
  } // end of method InventorySlotWidget::IsSplitMode

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

  .method private hidebysig specialname instance class Game.GameWidget 
          get_GameWidget() cil managed
  {
    // 代码大小       53 (0x35)
    .maxstack  2
    .locals init (class Game.ContainerWidget V_0,
             class Game.GameWidget V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.GameWidget Game.InventorySlotWidget::m_gameWidget
    IL_0006:  brtrue.s   IL_002e

    IL_0008:  ldarg.0
    IL_0009:  call       instance class Game.ContainerWidget Game.Widget::get_ParentWidget()
    IL_000e:  stloc.0
    IL_000f:  br.s       IL_002b

    IL_0011:  ldloc.0
    IL_0012:  isinst     Game.GameWidget
    IL_0017:  stloc.1
    IL_0018:  ldloc.1
    IL_0019:  brfalse.s  IL_0024

    IL_001b:  ldarg.0
    IL_001c:  ldloc.1
    IL_001d:  stfld      class Game.GameWidget Game.InventorySlotWidget::m_gameWidget
    IL_0022:  br.s       IL_002e

    IL_0024:  ldloc.0
    IL_0025:  callvirt   instance class Game.ContainerWidget Game.Widget::get_ParentWidget()
    IL_002a:  stloc.0
    IL_002b:  ldloc.0
    IL_002c:  brtrue.s   IL_0011

    IL_002e:  ldarg.0
    IL_002f:  ldfld      class Game.GameWidget Game.InventorySlotWidget::m_gameWidget
    IL_0034:  ret
  } // end of method InventorySlotWidget::get_GameWidget

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
    IL_000a:  call       instance class Game.GameWidget Game.InventorySlotWidget::get_GameWidget()
    IL_000f:  brtrue.s   IL_0014

    IL_0011:  ldnull
    IL_0012:  br.s       IL_0025

    IL_0014:  ldarg.0
    IL_0015:  call       instance class Game.GameWidget Game.InventorySlotWidget::get_GameWidget()
    IL_001a:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_001f:  ldc.i4.0
    IL_0020:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.DragHostWidget>(bool)
    IL_0025:  stfld      class Game.DragHostWidget Game.InventorySlotWidget::m_dragHostWidget
    IL_002a:  ldarg.0
    IL_002b:  ldfld      class Game.DragHostWidget Game.InventorySlotWidget::m_dragHostWidget
    IL_0030:  ret
  } // end of method InventorySlotWidget::get_DragHostWidget

  .method private hidebysig instance void 
          '<Update>b__58_0'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype Game.DragMode> Game.InventorySlotWidget::m_dragMode
    IL_0006:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype Game.DragMode>
    IL_000c:  ret
  } // end of method InventorySlotWidget::'<Update>b__58_0'

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
  .property instance bool HideFoodOverlay()
  {
    .get instance bool Game.InventorySlotWidget::get_HideFoodOverlay()
    .set instance void Game.InventorySlotWidget::set_HideFoodOverlay(bool)
  } // end of property InventorySlotWidget::HideFoodOverlay
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
  .property instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
          CustomViewMatrix()
  {
    .get instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.InventorySlotWidget::get_CustomViewMatrix()
    .set instance void Game.InventorySlotWidget::set_CustomViewMatrix(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
  } // end of property InventorySlotWidget::CustomViewMatrix
  .property instance class Game.GameWidget
          GameWidget()
  {
    .get instance class Game.GameWidget Game.InventorySlotWidget::get_GameWidget()
  } // end of property InventorySlotWidget::GameWidget
  .property instance class Game.DragHostWidget
          DragHostWidget()
  {
    .get instance class Game.DragHostWidget Game.InventorySlotWidget::get_DragHostWidget()
  } // end of property InventorySlotWidget::DragHostWidget
} // end of class Game.InventorySlotWidget