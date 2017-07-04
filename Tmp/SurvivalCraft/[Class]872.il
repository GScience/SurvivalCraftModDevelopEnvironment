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
    // 代码大小       371 (0x173)
    .maxstack  5
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             class Game.InventorySlotWidget V_4,
             valuetype Game.WidgetsList/Enumerator V_5,
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
    IL_0034:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0039:  ldstr      "InventoryGrid"
    IL_003e:  ldc.i4.1
    IL_003f:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.GridPanelWidget>(string,
                                                                                         bool)
    IL_0044:  stfld      class Game.GridPanelWidget Game.CrossbowWidget::m_inventoryGrid
    IL_0049:  ldarg.0
    IL_004a:  ldarg.0
    IL_004b:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0050:  ldstr      "InventorySlot"
    IL_0055:  ldc.i4.1
    IL_0056:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.InventorySlotWidget>(string,
                                                                                             bool)
    IL_005b:  stfld      class Game.InventorySlotWidget Game.CrossbowWidget::m_inventorySlotWidget
    IL_0060:  ldarg.0
    IL_0061:  ldarg.0
    IL_0062:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0067:  ldstr      "InstructionsLabel"
    IL_006c:  ldc.i4.1
    IL_006d:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
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
    IL_008c:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0091:  ldloc.s    V_4
    IL_0093:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
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
    IL_00d8:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00dd:  callvirt   instance valuetype Game.WidgetsList/Enumerator Game.WidgetsList::GetEnumerator()
    IL_00e2:  stloc.s    V_5
    .try
    {
      IL_00e4:  br.s       IL_0105

      IL_00e6:  ldloca.s   V_5
      IL_00e8:  call       instance class Game.Widget Game.WidgetsList/Enumerator::get_Current()
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
      IL_0105:  ldloca.s   V_5
      IL_0107:  call       instance bool Game.WidgetsList/Enumerator::MoveNext()
      IL_010c:  brtrue.s   IL_00e6

      IL_010e:  leave.s    IL_011e

    }  // end .try
    finally
    {
      IL_0110:  ldloca.s   V_5
      IL_0112:  constrained. Game.WidgetsList/Enumerator
      IL_0118:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_011d:  endfinally
    }  // end handler
    IL_011e:  ldarg.0
    IL_011f:  ldfld      class Game.InventorySlotWidget Game.CrossbowWidget::m_inventorySlotWidget
    IL_0124:  ldarg.1
    IL_0125:  ldarg.2
    IL_0126:  callvirt   instance void Game.InventorySlotWidget::AssignInventorySlot(class Game.IInventory,
                                                                                     int32)
    IL_012b:  ldarg.0
    IL_012c:  ldfld      class Game.InventorySlotWidget Game.CrossbowWidget::m_inventorySlotWidget
    IL_0131:  ldc.r4     0.0
    IL_0136:  ldc.r4     1.
    IL_013b:  ldc.r4     0.2
    IL_0140:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0145:  ldc.r4     0.0
    IL_014a:  ldc.r4     0.0
    IL_014f:  ldc.r4     0.2
    IL_0154:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0159:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitZ
    IL_015e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_0163:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateLookAt(valuetype [Engine]Engine.Vector3,
                                                                                             valuetype [Engine]Engine.Vector3,
                                                                                             valuetype [Engine]Engine.Vector3)
    IL_0168:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_016d:  callvirt   instance void Game.InventorySlotWidget::set_CustomViewMatrix(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_0172:  ret
  } // end of method CrossbowWidget::.ctor

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       612 (0x264)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType> V_3,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> V_4,
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
    IL_0024:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0029:  stloc.1
    IL_002a:  call       int32 Game.Terrain::ExtractData(int32)
    IL_002f:  dup
    IL_0030:  call       int32 Game.CrossbowBlock::GetDraw(int32)
    IL_0035:  stloc.2
    IL_0036:  call       valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType> Game.CrossbowBlock::GetArrowType(int32)
    IL_003b:  stloc.3
    IL_003c:  ldloc.1
    IL_003d:  ldc.i4     0xc8
    IL_0042:  bne.un     IL_0252

    IL_0047:  ldloc.0
    IL_0048:  ldc.i4.0
    IL_0049:  ble        IL_0252

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
    IL_009c:  brtrue     IL_014c

    IL_00a1:  ldarg.0
    IL_00a2:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_00a7:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::get_Tap()
    IL_00ac:  stloc.s    V_4
    IL_00ae:  ldloca.s   V_4
    IL_00b0:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_00b5:  brfalse    IL_014c

    IL_00ba:  ldarg.0
    IL_00bb:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_00c0:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::get_Tap()
    IL_00c5:  stloc.s    V_4
    IL_00c7:  ldloca.s   V_4
    IL_00c9:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_00ce:  call       class Game.Widget Game.WidgetsManager::HitTest(valuetype [Engine]Engine.Vector2)
    IL_00d3:  ldarg.0
    IL_00d4:  ldfld      class Game.InventorySlotWidget Game.CrossbowWidget::m_inventorySlotWidget
    IL_00d9:  bne.un.s   IL_014c

    IL_00db:  ldarg.0
    IL_00dc:  ldfld      class Game.InventorySlotWidget Game.CrossbowWidget::m_inventorySlotWidget
    IL_00e1:  ldarg.0
    IL_00e2:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_00e7:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::get_Press()
    IL_00ec:  stloc.s    V_4
    IL_00ee:  ldloca.s   V_4
    IL_00f0:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_00f5:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::ScreenToWidget(valuetype [Engine]Engine.Vector2)
    IL_00fa:  dup
    IL_00fb:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0100:  ldloc.2
    IL_0101:  call       float32 Game.CrossbowWidget::DrawToPosition(int32)
    IL_0106:  sub
    IL_0107:  stloc.s    V_5
    IL_0109:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_010e:  ldarg.0
    IL_010f:  ldfld      class Game.InventorySlotWidget Game.CrossbowWidget::m_inventorySlotWidget
    IL_0114:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0119:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_011e:  ldc.r4     2.
    IL_0123:  div
    IL_0124:  sub
    IL_0125:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_012a:  ldc.r4     25.
    IL_012f:  bge.un.s   IL_014c

    IL_0131:  ldloc.s    V_5
    IL_0133:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_0138:  ldc.r4     25.
    IL_013d:  bge.un.s   IL_014c

    IL_013f:  ldarg.0
    IL_0140:  ldloc.s    V_5
    IL_0142:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float32>::.ctor(!0)
    IL_0147:  stfld      valuetype [System.Runtime]System.Nullable`1<float32> Game.CrossbowWidget::m_dragStartOffset
    IL_014c:  ldarg.0
    IL_014d:  ldflda     valuetype [System.Runtime]System.Nullable`1<float32> Game.CrossbowWidget::m_dragStartOffset
    IL_0152:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float32>::get_HasValue()
    IL_0157:  brfalse    IL_0263

    IL_015c:  ldarg.0
    IL_015d:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0162:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::get_Press()
    IL_0167:  stloc.s    V_4
    IL_0169:  ldloca.s   V_4
    IL_016b:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_0170:  brfalse.s  IL_01ec

    IL_0172:  ldarg.0
    IL_0173:  ldfld      class Game.InventorySlotWidget Game.CrossbowWidget::m_inventorySlotWidget
    IL_0178:  ldarg.0
    IL_0179:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_017e:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::get_Press()
    IL_0183:  stloc.s    V_4
    IL_0185:  ldloca.s   V_4
    IL_0187:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_018c:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::ScreenToWidget(valuetype [Engine]Engine.Vector2)
    IL_0191:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0196:  ldarg.0
    IL_0197:  ldflda     valuetype [System.Runtime]System.Nullable`1<float32> Game.CrossbowWidget::m_dragStartOffset
    IL_019c:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_01a1:  sub
    IL_01a2:  call       int32 Game.CrossbowWidget::PositionToDraw(float32)
    IL_01a7:  stloc.s    V_6
    IL_01a9:  ldarg.0
    IL_01aa:  ldloc.s    V_6
    IL_01ac:  call       instance void Game.CrossbowWidget::SetDraw(int32)
    IL_01b1:  ldloc.2
    IL_01b2:  ldc.i4.s   9
    IL_01b4:  bgt        IL_0263

    IL_01b9:  ldloc.s    V_6
    IL_01bb:  ldc.i4.s   9
    IL_01bd:  ble        IL_0263

    IL_01c2:  ldstr      "Audio/CrossbowDraw"
    IL_01c7:  ldc.r4     1.
    IL_01cc:  ldarg.0
    IL_01cd:  ldfld      class Game.Random Game.CrossbowWidget::m_random
    IL_01d2:  ldc.r4     -0.2
    IL_01d7:  ldc.r4     0.2
    IL_01dc:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_01e1:  ldc.r4     0.0
    IL_01e6:  call       void Game.AudioManager::PlaySound(string,
                                                           float32,
                                                           float32,
                                                           float32)
    IL_01eb:  ret

    IL_01ec:  ldarg.0
    IL_01ed:  ldflda     valuetype [System.Runtime]System.Nullable`1<float32> Game.CrossbowWidget::m_dragStartOffset
    IL_01f2:  initobj    valuetype [System.Runtime]System.Nullable`1<float32>
    IL_01f8:  ldloc.2
    IL_01f9:  ldc.i4.s   15
    IL_01fb:  bne.un.s   IL_0217

    IL_01fd:  ldstr      "Audio/UI/ItemMoved"
    IL_0202:  ldc.r4     1.
    IL_0207:  ldc.r4     0.0
    IL_020c:  ldc.r4     0.0
    IL_0211:  call       void Game.AudioManager::PlaySound(string,
                                                           float32,
                                                           float32,
                                                           float32)
    IL_0216:  ret

    IL_0217:  ldarg.0
    IL_0218:  ldc.i4.0
    IL_0219:  call       instance void Game.CrossbowWidget::SetDraw(int32)
    IL_021e:  ldstr      "Audio/CrossbowBoing"
    IL_0223:  ldloc.2
    IL_0224:  ldc.i4.3
    IL_0225:  sub
    IL_0226:  conv.r4
    IL_0227:  ldc.r4     10.
    IL_022c:  div
    IL_022d:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0232:  ldarg.0
    IL_0233:  ldfld      class Game.Random Game.CrossbowWidget::m_random
    IL_0238:  ldc.r4     -0.1
    IL_023d:  ldc.r4     0.1
    IL_0242:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0247:  ldc.r4     0.0
    IL_024c:  call       void Game.AudioManager::PlaySound(string,
                                                           float32,
                                                           float32,
                                                           float32)
    IL_0251:  ret

    IL_0252:  ldarg.0
    IL_0253:  call       instance class Game.ContainerWidget Game.Widget::get_ParentWidget()
    IL_0258:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_025d:  ldarg.0
    IL_025e:  callvirt   instance void Game.WidgetsList::Remove(class Game.Widget)
    IL_0263:  ret
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
    IL_0011:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0016:  stloc.0
    IL_0017:  ldc.i4     0xc8
    IL_001c:  ldc.i4.0
    IL_001d:  ldloc.0
    IL_001e:  ldarg.1
    IL_001f:  call       int32 Game.CrossbowBlock::SetDraw(int32,
                                                           int32)
    IL_0024:  call       int32 Game.Terrain::MakeBlockValue(int32,
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