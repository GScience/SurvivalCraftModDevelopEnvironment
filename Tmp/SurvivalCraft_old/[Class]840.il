.class public auto ansi beforefieldinit Game.FurnitureSetItemWidget
       extends Game.CanvasWidget
       implements Game.IDragTargetWidget
{
  .field private class Game.FurnitureInventoryPanel m_furnitureInventoryPanel
  .field private class Game.FurnitureSet m_furnitureSet
  .field private bool m_highlighted
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.FurnitureInventoryPanel furnitureInventoryWidget,
                               class Game.FurnitureSet furnitureSet) cil managed
  {
    // 代码大小       132 (0x84)
    .maxstack  6
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0,
             class Game.LabelWidget V_1)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.CanvasWidget::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  stfld      class Game.FurnitureInventoryPanel Game.FurnitureSetItemWidget::m_furnitureInventoryPanel
    IL_000d:  ldarg.0
    IL_000e:  ldarg.2
    IL_000f:  stfld      class Game.FurnitureSet Game.FurnitureSetItemWidget::m_furnitureSet
    IL_0014:  ldstr      "Widgets/FurnitureSetItemWidget"
    IL_0019:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_001e:  stloc.0
    IL_001f:  ldarg.0
    IL_0020:  ldarg.0
    IL_0021:  ldloc.0
    IL_0022:  call       void Game.WidgetsManager::LoadWidgetContents(class Game.Widget,
                                                                      object,
                                                                      class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_0027:  ldarg.0
    IL_0028:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_002d:  ldstr      "FurnitureSetItem.Name"
    IL_0032:  ldc.i4.1
    IL_0033:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_0038:  ldarg.0
    IL_0039:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_003e:  ldstr      "FurnitureSetItem.DesignsCount"
    IL_0043:  ldc.i4.1
    IL_0044:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_0049:  stloc.1
    IL_004a:  ldarg.2
    IL_004b:  brfalse.s  IL_0055

    IL_004d:  ldarg.2
    IL_004e:  ldfld      string Game.FurnitureSet::Name
    IL_0053:  br.s       IL_005a

    IL_0055:  ldstr      "Uncategorized"
    IL_005a:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_005f:  ldloc.1
    IL_0060:  ldstr      "{0} design(s)"
    IL_0065:  ldc.i4.1
    IL_0066:  newarr     [System.Runtime]System.Object
    IL_006b:  dup
    IL_006c:  ldc.i4.0
    IL_006d:  ldarg.0
    IL_006e:  call       instance int32 Game.FurnitureSetItemWidget::CountFurnitureDesigns()
    IL_0073:  box        [System.Runtime]System.Int32
    IL_0078:  stelem.ref
    IL_0079:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_007e:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0083:  ret
  } // end of method FurnitureSetItemWidget::.ctor

  .method public hidebysig newslot virtual final 
          instance void  DragDrop(class Game.Widget dragWidget,
                                  object data) cil managed
  {
    // 代码大小       46 (0x2e)
    .maxstack  3
    .locals init (class Game.FurnitureDesign V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.2
    IL_0002:  call       instance class Game.FurnitureDesign Game.FurnitureSetItemWidget::GetFurnitureDesign(object)
    IL_0007:  stloc.0
    IL_0008:  ldloc.0
    IL_0009:  brfalse.s  IL_002d

    IL_000b:  ldarg.0
    IL_000c:  ldfld      class Game.FurnitureInventoryPanel Game.FurnitureSetItemWidget::m_furnitureInventoryPanel
    IL_0011:  callvirt   instance class Game.SubsystemFurnitureBlockBehavior Game.FurnitureInventoryPanel::get_SubsystemFurnitureBlockBehavior()
    IL_0016:  ldloc.0
    IL_0017:  ldarg.0
    IL_0018:  ldfld      class Game.FurnitureSet Game.FurnitureSetItemWidget::m_furnitureSet
    IL_001d:  callvirt   instance void Game.SubsystemFurnitureBlockBehavior::AddToFurnitureSet(class Game.FurnitureDesign,
                                                                                               class Game.FurnitureSet)
    IL_0022:  ldarg.0
    IL_0023:  ldfld      class Game.FurnitureInventoryPanel Game.FurnitureSetItemWidget::m_furnitureInventoryPanel
    IL_0028:  callvirt   instance void Game.FurnitureInventoryPanel::Invalidate()
    IL_002d:  ret
  } // end of method FurnitureSetItemWidget::DragDrop

  .method public hidebysig newslot virtual final 
          instance void  DragOver(class Game.Widget dragWidget,
                                  object data) cil managed
  {
    // 代码大小       17 (0x11)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  ldarg.2
    IL_0003:  call       instance class Game.FurnitureDesign Game.FurnitureSetItemWidget::GetFurnitureDesign(object)
    IL_0008:  ldnull
    IL_0009:  cgt.un
    IL_000b:  stfld      bool Game.FurnitureSetItemWidget::m_highlighted
    IL_0010:  ret
  } // end of method FurnitureSetItemWidget::DragOver

  .method public hidebysig virtual instance void 
          Measure(valuetype [Engine]Engine.Vector2 availableSize) cil managed
  {
    // 代码大小       20 (0x14)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void Game.CanvasWidget::Measure(valuetype [Engine]Engine.Vector2)
    IL_0007:  ldarg.0
    IL_0008:  ldarg.0
    IL_0009:  ldfld      bool Game.FurnitureSetItemWidget::m_highlighted
    IL_000e:  call       instance void Game.Widget::set_IsDrawRequired(bool)
    IL_0013:  ret
  } // end of method FurnitureSetItemWidget::Measure

  .method public hidebysig virtual instance void 
          Draw() cil managed
  {
    // 代码大小       113 (0x71)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.FurnitureSetItemWidget::m_highlighted
    IL_0006:  brfalse.s  IL_0070

    IL_0008:  ldsfld     class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.WidgetsManager::PrimitivesRenderer2D
    IL_000d:  ldc.i4.s   100
    IL_000f:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::None
    IL_0014:  ldnull
    IL_0015:  ldnull
    IL_0016:  callvirt   instance class [Engine]Engine.Graphics.FlatBatch2D [Engine]Engine.Graphics.PrimitivesRenderer2D::FlatBatch(int32,
                                                                                                                                    class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                    class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                    class [Engine]Engine.Graphics.BlendState)
    IL_001b:  ldarg.0
    IL_001c:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_0021:  call       float32 Game.WidgetsManager::get_Scale()
    IL_0026:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_002b:  ldarg.0
    IL_002c:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_0031:  ldarg.0
    IL_0032:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0037:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_003c:  call       float32 Game.WidgetsManager::get_Scale()
    IL_0041:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0046:  ldc.r4     0.0
    IL_004b:  ldc.i4     0x80
    IL_0050:  ldc.i4     0x80
    IL_0055:  ldc.i4     0x80
    IL_005a:  ldc.i4     0x80
    IL_005f:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32,
                                                                   int32)
    IL_0064:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      float32,
                                                                                      valuetype [Engine]Engine.Color)
    IL_0069:  ldarg.0
    IL_006a:  ldc.i4.0
    IL_006b:  stfld      bool Game.FurnitureSetItemWidget::m_highlighted
    IL_0070:  ret
  } // end of method FurnitureSetItemWidget::Draw

  .method private hidebysig instance class Game.FurnitureDesign 
          GetFurnitureDesign(object dragData) cil managed
  {
    // 代码大小       73 (0x49)
    .maxstack  2
    .locals init (class Game.InventoryDragData V_0,
             int32 V_1,
             int32 V_2)
    IL_0000:  ldarg.1
    IL_0001:  isinst     Game.InventoryDragData
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  brfalse.s  IL_0047

    IL_000a:  ldloc.0
    IL_000b:  ldfld      class Game.IInventory Game.InventoryDragData::Inventory
    IL_0010:  ldloc.0
    IL_0011:  ldfld      int32 Game.InventoryDragData::SlotIndex
    IL_0016:  callvirt   instance int32 Game.IInventory::GetSlotValue(int32)
    IL_001b:  stloc.1
    IL_001c:  ldloc.1
    IL_001d:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0022:  ldc.i4     0xe3
    IL_0027:  bne.un.s   IL_0047

    IL_0029:  ldloc.1
    IL_002a:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_002f:  call       int32 Game.FurnitureBlock::GetDesignIndex(int32)
    IL_0034:  stloc.2
    IL_0035:  ldarg.0
    IL_0036:  ldfld      class Game.FurnitureInventoryPanel Game.FurnitureSetItemWidget::m_furnitureInventoryPanel
    IL_003b:  callvirt   instance class Game.SubsystemFurnitureBlockBehavior Game.FurnitureInventoryPanel::get_SubsystemFurnitureBlockBehavior()
    IL_0040:  ldloc.2
    IL_0041:  callvirt   instance class Game.FurnitureDesign Game.SubsystemFurnitureBlockBehavior::GetDesign(int32)
    IL_0046:  ret

    IL_0047:  ldnull
    IL_0048:  ret
  } // end of method FurnitureSetItemWidget::GetFurnitureDesign

  .method private hidebysig instance int32 
          CountFurnitureDesigns() cil managed
  {
    // 代码大小       116 (0x74)
    .maxstack  2
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             class Game.FurnitureDesign V_4)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  ldc.i4.0
    IL_0003:  stloc.1
    IL_0004:  br.s       IL_005f

    IL_0006:  ldarg.0
    IL_0007:  ldfld      class Game.FurnitureInventoryPanel Game.FurnitureSetItemWidget::m_furnitureInventoryPanel
    IL_000c:  callvirt   instance class Game.ComponentFurnitureInventory Game.FurnitureInventoryPanel::get_ComponentFurnitureInventory()
    IL_0011:  ldloc.1
    IL_0012:  callvirt   instance int32 Game.ComponentFurnitureInventory::GetSlotValue(int32)
    IL_0017:  stloc.2
    IL_0018:  ldloc.2
    IL_0019:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_001e:  ldc.i4     0xe3
    IL_0023:  bne.un.s   IL_005b

    IL_0025:  ldloc.2
    IL_0026:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_002b:  call       int32 Game.FurnitureBlock::GetDesignIndex(int32)
    IL_0030:  stloc.3
    IL_0031:  ldarg.0
    IL_0032:  ldfld      class Game.FurnitureInventoryPanel Game.FurnitureSetItemWidget::m_furnitureInventoryPanel
    IL_0037:  callvirt   instance class Game.SubsystemFurnitureBlockBehavior Game.FurnitureInventoryPanel::get_SubsystemFurnitureBlockBehavior()
    IL_003c:  ldloc.3
    IL_003d:  callvirt   instance class Game.FurnitureDesign Game.SubsystemFurnitureBlockBehavior::GetDesign(int32)
    IL_0042:  stloc.s    V_4
    IL_0044:  ldloc.s    V_4
    IL_0046:  brfalse.s  IL_005b

    IL_0048:  ldloc.s    V_4
    IL_004a:  callvirt   instance class Game.FurnitureSet Game.FurnitureDesign::get_FurnitureSet()
    IL_004f:  ldarg.0
    IL_0050:  ldfld      class Game.FurnitureSet Game.FurnitureSetItemWidget::m_furnitureSet
    IL_0055:  bne.un.s   IL_005b

    IL_0057:  ldloc.0
    IL_0058:  ldc.i4.1
    IL_0059:  add
    IL_005a:  stloc.0
    IL_005b:  ldloc.1
    IL_005c:  ldc.i4.1
    IL_005d:  add
    IL_005e:  stloc.1
    IL_005f:  ldloc.1
    IL_0060:  ldarg.0
    IL_0061:  ldfld      class Game.FurnitureInventoryPanel Game.FurnitureSetItemWidget::m_furnitureInventoryPanel
    IL_0066:  callvirt   instance class Game.ComponentFurnitureInventory Game.FurnitureInventoryPanel::get_ComponentFurnitureInventory()
    IL_006b:  callvirt   instance int32 Game.ComponentFurnitureInventory::get_SlotsCount()
    IL_0070:  blt.s      IL_0006

    IL_0072:  ldloc.0
    IL_0073:  ret
  } // end of method FurnitureSetItemWidget::CountFurnitureDesigns

} // end of class Game.FurnitureSetItemWidget