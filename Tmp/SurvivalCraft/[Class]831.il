.class public auto ansi beforefieldinit Game.CrossbowWidget
       extends Game.CanvasWidget
{
  .field private class Game.IInventory m_inventory
  .field private int32 m_slotIndex
  .field private valuetype [System.Runtime]System.Nullable`1<float32> m_dragStartOffset
  .field private class Game.GridPanelWidget m_inventoryGrid
  .field private class Game.InventorySlotWidget m_inventorySlotWidget
  .field private class Game.LabelWidget m_instructionsLabel
  .field private class Game.Random m_random
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.IInventory inventory,
                               int32 slotIndex) cil managed
  {
    // 代码大小       369 (0x171)
    .maxstack  5
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             class Game.InventorySlotWidget V_4,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget> V_5,
             class Game.InventorySlotWidget V_6)
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.Random::.ctor()
    IL_0006:  stfld      class Game.Random Game.CrossbowWidget::m_random
    IL_000b:  ldarg.0
    IL_000c:  call       instance void Game.CanvasWidget::.ctor()
    IL_0011:  ldarg.0
    IL_0012:  ldarg.1
    IL_0013:  stfld      class Game.IInventory Game.CrossbowWidget::m_inventory
    IL_0018:  ldarg.0
    IL_0019:  ldarg.2
    IL_001a:  stfld      int32 Game.CrossbowWidget::m_slotIndex
    IL_001f:  ldstr      "Widgets/CrossbowWidget"
    IL_0024:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_0029:  stloc.0
    IL_002a:  ldarg.0
    IL_002b:  ldarg.0
    IL_002c:  ldloc.0
    IL_002d:  call       void Game.WidgetsManager::LoadWidgetContents(class Game.Widget,
                                                                      object,
                                                                      class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_0032:  ldarg.0
    IL_0033:  ldarg.0
    IL_0034:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0039:  ldstr      "InventoryGrid"
    IL_003e:  ldc.i4.1
    IL_003f:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.GridPanelWidget>(string,
                                                                                              bool)
    IL_0044:  stfld      class Game.GridPanelWidget Game.CrossbowWidget::m_inventoryGrid
    IL_0049:  ldarg.0
    IL_004a:  ldarg.0
    IL_004b:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0050:  ldstr      "InventorySlot"
    IL_0055:  ldc.i4.1
    IL_0056:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.InventorySlotWidget>(string,
                                                                                                  bool)
    IL_005b:  stfld      class Game.InventorySlotWidget Game.CrossbowWidget::m_inventorySlotWidget
    IL_0060:  ldarg.0
    IL_0061:  ldarg.0
    IL_0062:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0067:  ldstr      "InstructionsLabel"
    IL_006c:  ldc.i4.1
    IL_006d:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_0072:  stfld      class Game.LabelWidget Game.CrossbowWidget::m_instructionsLabel
    IL_0077:  ldc.i4.0
    IL_0078:  stloc.2
    IL_0079:  br.s       IL_00c2

    IL_007b:  ldc.i4.0
    IL_007c:  stloc.3
    IL_007d:  br.s       IL_00b0

    IL_007f:  newobj     instance void Game.InventorySlotWidget::.ctor()
    IL_0084:  stloc.s    V_4
    IL_0086:  ldarg.0
    IL_0087:  ldfld      class Game.GridPanelWidget Game.CrossbowWidget::m_inventoryGrid
    IL_008c:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0091:  ldloc.s    V_4
    IL_0093:  callvirt   instance void Game.WidgetsContainer::Add(class Game.Widget)
    IL_0098:  ldarg.0
    IL_0099:  ldfld      class Game.GridPanelWidget Game.CrossbowWidget::m_inventoryGrid
    IL_009e:  ldloc.s    V_4
    IL_00a0:  ldloc.3
    IL_00a1:  ldloc.2
    IL_00a2:  newobj     instance void [Engine]Engine.Point2::.ctor(int32,
                                                                    int32)
    IL_00a7:  callvirt   instance void Game.GridPanelWidget::SetWidgetCell(class Game.Widget,
                                                                           valuetype [Engine]Engine.Point2)
    IL_00ac:  ldloc.3
    IL_00ad:  ldc.i4.1
    IL_00ae:  add
    IL_00af:  stloc.3
    IL_00b0:  ldloc.3
    IL_00b1:  ldarg.0
    IL_00b2:  ldfld      class Game.GridPanelWidget Game.CrossbowWidget::m_inventoryGrid
    IL_00b7:  callvirt   instance int32 Game.GridPanelWidget::get_ColumnsCount()
    IL_00bc:  blt.s      IL_007f

    IL_00be:  ldloc.2
    IL_00bf:  ldc.i4.1
    IL_00c0:  add
    IL_00c1:  stloc.2
    IL_00c2:  ldloc.2
    IL_00c3:  ldarg.0
    IL_00c4:  ldfld      class Game.GridPanelWidget Game.CrossbowWidget::m_inventoryGrid
    IL_00c9:  callvirt   instance int32 Game.GridPanelWidget::get_RowsCount()
    IL_00ce:  blt.s      IL_007b

    IL_00d0:  ldc.i4.6
    IL_00d1:  stloc.1
    IL_00d2:  ldarg.0
    IL_00d3:  ldfld      class Game.GridPanelWidget Game.CrossbowWidget::m_inventoryGrid
    IL_00d8:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00dd:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget> Game.WidgetsContainer::GetEnumerator()
    IL_00e2:  stloc.s    V_5
    .try
    {
      IL_00e4:  br.s       IL_0105

      IL_00e6:  ldloc.s    V_5
      IL_00e8:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget>::get_Current()
      IL_00ed:  isinst     Game.InventorySlotWidget
      IL_00f2:  stloc.s    V_6
      IL_00f4:  ldloc.s    V_6
      IL_00f6:  brfalse.s  IL_0105

      IL_00f8:  ldloc.s    V_6
      IL_00fa:  ldarg.1
      IL_00fb:  ldloc.1
      IL_00fc:  dup
      IL_00fd:  ldc.i4.1
      IL_00fe:  add
      IL_00ff:  stloc.1
      IL_0100:  callvirt   instance void Game.InventorySlotWidget::AssignInventorySlot(class Game.IInventory,
                                                                                       int32)
      IL_0105:  ldloc.s    V_5
      IL_0107:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_010c:  brtrue.s   IL_00e6

      IL_010e:  leave.s    IL_011c

    }  // end .try
    finally
    {
      IL_0110:  ldloc.s    V_5
      IL_0112:  brfalse.s  IL_011b

      IL_0114:  ldloc.s    V_5
      IL_0116:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_011b:  endfinally
    }  // end handler
    IL_011c:  ldarg.0
    IL_011d:  ldfld      class Game.InventorySlotWidget Game.CrossbowWidget::m_inventorySlotWidget
    IL_0122:  ldarg.1
    IL_0123:  ldarg.2
    IL_0124:  callvirt   instance void Game.InventorySlotWidget::AssignInventorySlot(class Game.IInventory,
                                                                                     int32)
    IL_0129:  ldarg.0
    IL_012a:  ldfld      class Game.InventorySlotWidget Game.CrossbowWidget::m_inventorySlotWidget
    IL_012f:  ldc.r4     0.0
    IL_0134:  ldc.r4     1.
    IL_0139:  ldc.r4     0.2
    IL_013e:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0143:  ldc.r4     0.0
    IL_0148:  ldc.r4     0.0
    IL_014d:  ldc.r4     0.2
    IL_0152:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0157:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitZ
    IL_015c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_0161:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateLookAt(valuetype [Engine]Engine.Vector3,
                                                                                             valuetype [Engine]Engine.Vector3,
                                                                                             valuetype [Engine]Engine.Vector3)
    IL_0166:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_016b:  callvirt   instance void Game.InventorySlotWidget::set_CustomViewMatrix(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_0170:  ret
  } // end of method CrossbowWidget::.ctor

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       637 (0x27d)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType> V_3,
             valuetype Game.InputState V_4,
             float32 V_5,
             int32 V_6)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.IInventory Game.CrossbowWidget::m_inventory
    IL_0006:  ldarg.0
    IL_0007:  ldfld      int32 Game.CrossbowWidget::m_slotIndex
    IL_000c:  callvirt   instance int32 Game.IInventory::GetSlotValue(int32)
    IL_0011:  ldarg.0
    IL_0012:  ldfld      class Game.IInventory Game.CrossbowWidget::m_inventory
    IL_0017:  ldarg.0
    IL_0018:  ldfld      int32 Game.CrossbowWidget::m_slotIndex
    IL_001d:  callvirt   instance int32 Game.IInventory::GetSlotCount(int32)
    IL_0022:  stloc.0
    IL_0023:  dup
    IL_0024:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0029:  stloc.1
    IL_002a:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_002f:  dup
    IL_0030:  call       int32 Game.CrossbowBlock::GetDraw(int32)
    IL_0035:  stloc.2
    IL_0036:  call       valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType> Game.CrossbowBlock::GetArrowType(int32)
    IL_003b:  stloc.3
    IL_003c:  ldloc.1
    IL_003d:  ldc.i4     0xc8
    IL_0042:  bne.un     IL_026b

    IL_0047:  ldloc.0
    IL_0048:  ldc.i4.0
    IL_0049:  ble        IL_026b

    IL_004e:  ldloc.2
    IL_004f:  ldc.i4.s   15
    IL_0051:  bge.s      IL_0065

    IL_0053:  ldarg.0
    IL_0054:  ldfld      class Game.LabelWidget Game.CrossbowWidget::m_instructionsLabel
    IL_0059:  ldstr      "Pull"
    IL_005e:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0063:  br.s       IL_0090

    IL_0065:  ldloca.s   V_3
    IL_0067:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType>::get_HasValue()
    IL_006c:  brtrue.s   IL_0080

    IL_006e:  ldarg.0
    IL_006f:  ldfld      class Game.LabelWidget Game.CrossbowWidget::m_instructionsLabel
    IL_0074:  ldstr      "Load bolt"
    IL_0079:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_007e:  br.s       IL_0090

    IL_0080:  ldarg.0
    IL_0081:  ldfld      class Game.LabelWidget Game.CrossbowWidget::m_instructionsLabel
    IL_0086:  ldstr      "Ready to fire"
    IL_008b:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0090:  ldloc.2
    IL_0091:  ldc.i4.s   15
    IL_0093:  blt.s      IL_00a1

    IL_0095:  ldloca.s   V_3
    IL_0097:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType>::get_HasValue()
    IL_009c:  brtrue     IL_0158

    IL_00a1:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_00a6:  stloc.s    V_4
    IL_00a8:  ldloca.s   V_4
    IL_00aa:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputState::Click
    IL_00af:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_00b4:  brfalse    IL_0158

    IL_00b9:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_00be:  stloc.s    V_4
    IL_00c0:  ldloca.s   V_4
    IL_00c2:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputState::Click
    IL_00c7:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_00cc:  call       class Game.Widget Game.WidgetsManager::HitTest(valuetype [Engine]Engine.Vector2)
    IL_00d1:  ldarg.0
    IL_00d2:  ldfld      class Game.InventorySlotWidget Game.CrossbowWidget::m_inventorySlotWidget
    IL_00d7:  bne.un.s   IL_0158

    IL_00d9:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_00de:  stloc.s    V_4
    IL_00e0:  ldloca.s   V_4
    IL_00e2:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputState::Press
    IL_00e7:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_00ec:  call       float32 Game.WidgetsManager::get_Scale()
    IL_00f1:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Division(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_00f6:  ldarg.0
    IL_00f7:  ldfld      class Game.InventorySlotWidget Game.CrossbowWidget::m_inventorySlotWidget
    IL_00fc:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_0101:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_0106:  dup
    IL_0107:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_010c:  ldloc.2
    IL_010d:  call       float32 Game.CrossbowWidget::DrawToPosition(int32)
    IL_0112:  sub
    IL_0113:  stloc.s    V_5
    IL_0115:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_011a:  ldarg.0
    IL_011b:  ldfld      class Game.InventorySlotWidget Game.CrossbowWidget::m_inventorySlotWidget
    IL_0120:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0125:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_012a:  ldc.r4     2.
    IL_012f:  div
    IL_0130:  sub
    IL_0131:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_0136:  ldc.r4     25.
    IL_013b:  bge.un.s   IL_0158

    IL_013d:  ldloc.s    V_5
    IL_013f:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_0144:  ldc.r4     25.
    IL_0149:  bge.un.s   IL_0158

    IL_014b:  ldarg.0
    IL_014c:  ldloc.s    V_5
    IL_014e:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float32>::.ctor(!0)
    IL_0153:  stfld      valuetype [System.Runtime]System.Nullable`1<float32> Game.CrossbowWidget::m_dragStartOffset
    IL_0158:  ldarg.0
    IL_0159:  ldflda     valuetype [System.Runtime]System.Nullable`1<float32> Game.CrossbowWidget::m_dragStartOffset
    IL_015e:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float32>::get_HasValue()
    IL_0163:  brfalse    IL_027c

    IL_0168:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_016d:  stloc.s    V_4
    IL_016f:  ldloca.s   V_4
    IL_0171:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputState::Press
    IL_0176:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_017b:  brfalse    IL_0205

    IL_0180:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_0185:  stloc.s    V_4
    IL_0187:  ldloca.s   V_4
    IL_0189:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputState::Press
    IL_018e:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_0193:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0198:  call       float32 Game.WidgetsManager::get_Scale()
    IL_019d:  div
    IL_019e:  ldarg.0
    IL_019f:  ldfld      class Game.InventorySlotWidget Game.CrossbowWidget::m_inventorySlotWidget
    IL_01a4:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_01a9:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_01ae:  sub
    IL_01af:  ldarg.0
    IL_01b0:  ldflda     valuetype [System.Runtime]System.Nullable`1<float32> Game.CrossbowWidget::m_dragStartOffset
    IL_01b5:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_01ba:  sub
    IL_01bb:  call       int32 Game.CrossbowWidget::PositionToDraw(float32)
    IL_01c0:  stloc.s    V_6
    IL_01c2:  ldarg.0
    IL_01c3:  ldloc.s    V_6
    IL_01c5:  call       instance void Game.CrossbowWidget::SetDraw(int32)
    IL_01ca:  ldloc.2
    IL_01cb:  ldc.i4.s   9
    IL_01cd:  bgt        IL_027c

    IL_01d2:  ldloc.s    V_6
    IL_01d4:  ldc.i4.s   9
    IL_01d6:  ble        IL_027c

    IL_01db:  ldstr      "Audio/CrossbowDraw"
    IL_01e0:  ldc.r4     1.
    IL_01e5:  ldarg.0
    IL_01e6:  ldfld      class Game.Random Game.CrossbowWidget::m_random
    IL_01eb:  ldc.r4     -0.2
    IL_01f0:  ldc.r4     0.2
    IL_01f5:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_01fa:  ldc.r4     0.0
    IL_01ff:  call       void Game.AudioManager::PlaySound(string,
                                                           float32,
                                                           float32,
                                                           float32)
    IL_0204:  ret

    IL_0205:  ldarg.0
    IL_0206:  ldflda     valuetype [System.Runtime]System.Nullable`1<float32> Game.CrossbowWidget::m_dragStartOffset
    IL_020b:  initobj    valuetype [System.Runtime]System.Nullable`1<float32>
    IL_0211:  ldloc.2
    IL_0212:  ldc.i4.s   15
    IL_0214:  bne.un.s   IL_0230

    IL_0216:  ldstr      "Audio/UI/ItemMoved"
    IL_021b:  ldc.r4     1.
    IL_0220:  ldc.r4     0.0
    IL_0225:  ldc.r4     0.0
    IL_022a:  call       void Game.AudioManager::PlaySound(string,
                                                           float32,
                                                           float32,
                                                           float32)
    IL_022f:  ret

    IL_0230:  ldarg.0
    IL_0231:  ldc.i4.0
    IL_0232:  call       instance void Game.CrossbowWidget::SetDraw(int32)
    IL_0237:  ldstr      "Audio/CrossbowBoing"
    IL_023c:  ldloc.2
    IL_023d:  ldc.i4.3
    IL_023e:  sub
    IL_023f:  conv.r4
    IL_0240:  ldc.r4     10.
    IL_0245:  div
    IL_0246:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_024b:  ldarg.0
    IL_024c:  ldfld      class Game.Random Game.CrossbowWidget::m_random
    IL_0251:  ldc.r4     -0.1
    IL_0256:  ldc.r4     0.1
    IL_025b:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0260:  ldc.r4     0.0
    IL_0265:  call       void Game.AudioManager::PlaySound(string,
                                                           float32,
                                                           float32,
                                                           float32)
    IL_026a:  ret

    IL_026b:  ldarg.0
    IL_026c:  call       instance class Game.ContainerWidget Game.Widget::get_ParentWidget()
    IL_0271:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0276:  ldarg.0
    IL_0277:  callvirt   instance void Game.WidgetsContainer::Remove(class Game.Widget)
    IL_027c:  ret
  } // end of method CrossbowWidget::Update

  .method private hidebysig instance void 
          SetDraw(int32 draw) cil managed
  {
    // 代码大小       81 (0x51)
    .maxstack  4
    .locals init (int32 V_0,
             int32 V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.IInventory Game.CrossbowWidget::m_inventory
    IL_0006:  ldarg.0
    IL_0007:  ldfld      int32 Game.CrossbowWidget::m_slotIndex
    IL_000c:  callvirt   instance int32 Game.IInventory::GetSlotValue(int32)
    IL_0011:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0016:  stloc.0
    IL_0017:  ldc.i4     0xc8
    IL_001c:  ldc.i4.0
    IL_001d:  ldloc.0
    IL_001e:  ldarg.1
    IL_001f:  call       int32 Game.CrossbowBlock::SetDraw(int32,
                                                           int32)
    IL_0024:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_0029:  stloc.1
    IL_002a:  ldarg.0
    IL_002b:  ldfld      class Game.IInventory Game.CrossbowWidget::m_inventory
    IL_0030:  ldarg.0
    IL_0031:  ldfld      int32 Game.CrossbowWidget::m_slotIndex
    IL_0036:  ldc.i4.1
    IL_0037:  callvirt   instance int32 Game.IInventory::RemoveSlotItems(int32,
                                                                         int32)
    IL_003c:  pop
    IL_003d:  ldarg.0
    IL_003e:  ldfld      class Game.IInventory Game.CrossbowWidget::m_inventory
    IL_0043:  ldarg.0
    IL_0044:  ldfld      int32 Game.CrossbowWidget::m_slotIndex
    IL_0049:  ldloc.1
    IL_004a:  ldc.i4.1
    IL_004b:  callvirt   instance void Game.IInventory::AddSlotItems(int32,
                                                                     int32,
                                                                     int32)
    IL_0050:  ret
  } // end of method CrossbowWidget::SetDraw

  .method private hidebysig static float32 
          DrawToPosition(int32 draw) cil managed
  {
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  conv.r4
    IL_0002:  ldc.r4     5.4000001
    IL_0007:  mul
    IL_0008:  ldc.r4     85.
    IL_000d:  add
    IL_000e:  ret
  } // end of method CrossbowWidget::DrawToPosition

  .method private hidebysig static int32 
          PositionToDraw(float32 position) cil managed
  {
    // 代码大小       35 (0x23)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.r4     85.
    IL_0006:  sub
    IL_0007:  ldc.r4     5.4000001
    IL_000c:  div
    IL_000d:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_0012:  ldc.r4     0.0
    IL_0017:  ldc.r4     15.
    IL_001c:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_0021:  conv.i4
    IL_0022:  ret
  } // end of method CrossbowWidget::PositionToDraw

} // end of class Game.CrossbowWidget