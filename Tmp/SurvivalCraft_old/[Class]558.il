.class public auto ansi beforefieldinit Game.RecipaediaDescriptionScreen
       extends Game.Screen
{
  .field private class Game.BlockIconWidget m_blockIconWidget
  .field private class Game.LabelWidget m_nameWidget
  .field private class Game.ButtonWidget m_leftButtonWidget
  .field private class Game.ButtonWidget m_rightButtonWidget
  .field private class Game.LabelWidget m_descriptionWidget
  .field private class Game.LabelWidget m_propertyNames1Widget
  .field private class Game.LabelWidget m_propertyValues1Widget
  .field private class Game.LabelWidget m_propertyNames2Widget
  .field private class Game.LabelWidget m_propertyValues2Widget
  .field private int32 m_index
  .field private class [System.Runtime]System.Collections.Generic.IList`1<int32> m_valuesList
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       233 (0xe9)
    .maxstack  4
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.Screen::.ctor()
    IL_0006:  ldstr      "Screens/RecipaediaDescriptionScreen"
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
    IL_001b:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0020:  ldstr      "Icon"
    IL_0025:  ldc.i4.1
    IL_0026:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.BlockIconWidget>(string,
                                                                                         bool)
    IL_002b:  stfld      class Game.BlockIconWidget Game.RecipaediaDescriptionScreen::m_blockIconWidget
    IL_0030:  ldarg.0
    IL_0031:  ldarg.0
    IL_0032:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0037:  ldstr      "Name"
    IL_003c:  ldc.i4.1
    IL_003d:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_0042:  stfld      class Game.LabelWidget Game.RecipaediaDescriptionScreen::m_nameWidget
    IL_0047:  ldarg.0
    IL_0048:  ldarg.0
    IL_0049:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_004e:  ldstr      "Left"
    IL_0053:  ldc.i4.1
    IL_0054:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0059:  stfld      class Game.ButtonWidget Game.RecipaediaDescriptionScreen::m_leftButtonWidget
    IL_005e:  ldarg.0
    IL_005f:  ldarg.0
    IL_0060:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0065:  ldstr      "Right"
    IL_006a:  ldc.i4.1
    IL_006b:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0070:  stfld      class Game.ButtonWidget Game.RecipaediaDescriptionScreen::m_rightButtonWidget
    IL_0075:  ldarg.0
    IL_0076:  ldarg.0
    IL_0077:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_007c:  ldstr      "Description"
    IL_0081:  ldc.i4.1
    IL_0082:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_0087:  stfld      class Game.LabelWidget Game.RecipaediaDescriptionScreen::m_descriptionWidget
    IL_008c:  ldarg.0
    IL_008d:  ldarg.0
    IL_008e:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0093:  ldstr      "PropertyNames1"
    IL_0098:  ldc.i4.1
    IL_0099:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_009e:  stfld      class Game.LabelWidget Game.RecipaediaDescriptionScreen::m_propertyNames1Widget
    IL_00a3:  ldarg.0
    IL_00a4:  ldarg.0
    IL_00a5:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00aa:  ldstr      "PropertyValues1"
    IL_00af:  ldc.i4.1
    IL_00b0:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_00b5:  stfld      class Game.LabelWidget Game.RecipaediaDescriptionScreen::m_propertyValues1Widget
    IL_00ba:  ldarg.0
    IL_00bb:  ldarg.0
    IL_00bc:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00c1:  ldstr      "PropertyNames2"
    IL_00c6:  ldc.i4.1
    IL_00c7:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_00cc:  stfld      class Game.LabelWidget Game.RecipaediaDescriptionScreen::m_propertyNames2Widget
    IL_00d1:  ldarg.0
    IL_00d2:  ldarg.0
    IL_00d3:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00d8:  ldstr      "PropertyValues2"
    IL_00dd:  ldc.i4.1
    IL_00de:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_00e3:  stfld      class Game.LabelWidget Game.RecipaediaDescriptionScreen::m_propertyValues2Widget
    IL_00e8:  ret
  } // end of method RecipaediaDescriptionScreen::.ctor

  .method public hidebysig virtual instance void 
          Enter(object[] parameters) cil managed
  {
    // 代码大小       48 (0x30)
    .maxstack  3
    .locals init (int32 V_0)
    IL_0000:  ldarg.1
    IL_0001:  ldc.i4.0
    IL_0002:  ldelem.ref
    IL_0003:  unbox.any  [System.Runtime]System.Int32
    IL_0008:  stloc.0
    IL_0009:  ldarg.0
    IL_000a:  ldarg.1
    IL_000b:  ldc.i4.1
    IL_000c:  ldelem.ref
    IL_000d:  castclass  class [System.Runtime]System.Collections.Generic.IList`1<int32>
    IL_0012:  stfld      class [System.Runtime]System.Collections.Generic.IList`1<int32> Game.RecipaediaDescriptionScreen::m_valuesList
    IL_0017:  ldarg.0
    IL_0018:  ldarg.0
    IL_0019:  ldfld      class [System.Runtime]System.Collections.Generic.IList`1<int32> Game.RecipaediaDescriptionScreen::m_valuesList
    IL_001e:  ldloc.0
    IL_001f:  callvirt   instance int32 class [System.Runtime]System.Collections.Generic.IList`1<int32>::IndexOf(!0)
    IL_0024:  stfld      int32 Game.RecipaediaDescriptionScreen::m_index
    IL_0029:  ldarg.0
    IL_002a:  call       instance void Game.RecipaediaDescriptionScreen::UpdateBlockProperties()
    IL_002f:  ret
  } // end of method RecipaediaDescriptionScreen::Enter

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       235 (0xeb)
    .maxstack  4
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ButtonWidget Game.RecipaediaDescriptionScreen::m_leftButtonWidget
    IL_0006:  ldarg.0
    IL_0007:  ldfld      int32 Game.RecipaediaDescriptionScreen::m_index
    IL_000c:  ldc.i4.0
    IL_000d:  cgt
    IL_000f:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_0014:  ldarg.0
    IL_0015:  ldfld      class Game.ButtonWidget Game.RecipaediaDescriptionScreen::m_rightButtonWidget
    IL_001a:  ldarg.0
    IL_001b:  ldfld      int32 Game.RecipaediaDescriptionScreen::m_index
    IL_0020:  ldarg.0
    IL_0021:  ldfld      class [System.Runtime]System.Collections.Generic.IList`1<int32> Game.RecipaediaDescriptionScreen::m_valuesList
    IL_0026:  callvirt   instance int32 class [System.Runtime]System.Collections.Generic.ICollection`1<int32>::get_Count()
    IL_002b:  ldc.i4.1
    IL_002c:  sub
    IL_002d:  clt
    IL_002f:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_0034:  ldarg.0
    IL_0035:  ldfld      class Game.ButtonWidget Game.RecipaediaDescriptionScreen::m_leftButtonWidget
    IL_003a:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_003f:  brtrue.s   IL_004e

    IL_0041:  ldarg.0
    IL_0042:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0047:  callvirt   instance bool Game.WidgetInput::get_Left()
    IL_004c:  brfalse.s  IL_0068

    IL_004e:  ldarg.0
    IL_004f:  ldarg.0
    IL_0050:  ldfld      int32 Game.RecipaediaDescriptionScreen::m_index
    IL_0055:  ldc.i4.1
    IL_0056:  sub
    IL_0057:  ldc.i4.0
    IL_0058:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_005d:  stfld      int32 Game.RecipaediaDescriptionScreen::m_index
    IL_0062:  ldarg.0
    IL_0063:  call       instance void Game.RecipaediaDescriptionScreen::UpdateBlockProperties()
    IL_0068:  ldarg.0
    IL_0069:  ldfld      class Game.ButtonWidget Game.RecipaediaDescriptionScreen::m_rightButtonWidget
    IL_006e:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0073:  brtrue.s   IL_0082

    IL_0075:  ldarg.0
    IL_0076:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_007b:  callvirt   instance bool Game.WidgetInput::get_Right()
    IL_0080:  brfalse.s  IL_00a8

    IL_0082:  ldarg.0
    IL_0083:  ldarg.0
    IL_0084:  ldfld      int32 Game.RecipaediaDescriptionScreen::m_index
    IL_0089:  ldc.i4.1
    IL_008a:  add
    IL_008b:  ldarg.0
    IL_008c:  ldfld      class [System.Runtime]System.Collections.Generic.IList`1<int32> Game.RecipaediaDescriptionScreen::m_valuesList
    IL_0091:  callvirt   instance int32 class [System.Runtime]System.Collections.Generic.ICollection`1<int32>::get_Count()
    IL_0096:  ldc.i4.1
    IL_0097:  sub
    IL_0098:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_009d:  stfld      int32 Game.RecipaediaDescriptionScreen::m_index
    IL_00a2:  ldarg.0
    IL_00a3:  call       instance void Game.RecipaediaDescriptionScreen::UpdateBlockProperties()
    IL_00a8:  ldarg.0
    IL_00a9:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_00ae:  callvirt   instance bool Game.WidgetInput::get_Back()
    IL_00b3:  brtrue.s   IL_00da

    IL_00b5:  ldarg.0
    IL_00b6:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_00bb:  callvirt   instance bool Game.WidgetInput::get_Cancel()
    IL_00c0:  brtrue.s   IL_00da

    IL_00c2:  ldarg.0
    IL_00c3:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00c8:  ldstr      "TopBar.Back"
    IL_00cd:  ldc.i4.1
    IL_00ce:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_00d3:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_00d8:  brfalse.s  IL_00ea

    IL_00da:  call       class Game.Screen Game.ScreensManager::get_PreviousScreen()
    IL_00df:  ldc.i4.0
    IL_00e0:  newarr     [System.Runtime]System.Object
    IL_00e5:  call       void Game.ScreensManager::SwitchScreen(class Game.Screen,
                                                                object[])
    IL_00ea:  ret
  } // end of method RecipaediaDescriptionScreen::Update

  .method private hidebysig instance class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> 
          GetBlockProperties(int32 'value') cil managed
  {
    // 代码大小       970 (0x3ca)
    .maxstack  9
    .locals init (class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> V_0,
             int32 V_1,
             class Game.Block V_2,
             bool V_3,
             float32 V_4,
             class Game.ClothingData V_5)
    IL_0000:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldarg.1
    IL_0007:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_000c:  stloc.1
    IL_000d:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0012:  ldloc.1
    IL_0013:  ldelem.ref
    IL_0014:  stloc.2
    IL_0015:  ldloc.2
    IL_0016:  ldfld      int32 Game.Block::EmittedLightAmount
    IL_001b:  ldc.i4.0
    IL_001c:  ble.s      IL_0034

    IL_001e:  ldloc.0
    IL_001f:  ldstr      "Luminosity"
    IL_0024:  ldloc.2
    IL_0025:  ldflda     int32 Game.Block::EmittedLightAmount
    IL_002a:  call       instance string [System.Runtime]System.Int32::ToString()
    IL_002f:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                             !1)
    IL_0034:  ldloc.2
    IL_0035:  ldfld      float32 Game.Block::FuelFireDuration
    IL_003a:  ldc.r4     0.0
    IL_003f:  ble.un.s   IL_0057

    IL_0041:  ldloc.0
    IL_0042:  ldstr      "Fuel Value"
    IL_0047:  ldloc.2
    IL_0048:  ldflda     float32 Game.Block::FuelFireDuration
    IL_004d:  call       instance string [System.Runtime]System.Single::ToString()
    IL_0052:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                             !1)
    IL_0057:  ldloc.0
    IL_0058:  ldstr      "Is Stackable"
    IL_005d:  ldloc.2
    IL_005e:  ldfld      int32 Game.Block::MaxStacking
    IL_0063:  ldc.i4.1
    IL_0064:  bgt.s      IL_006d

    IL_0066:  ldstr      "No"
    IL_006b:  br.s       IL_0087

    IL_006d:  ldstr      "Yes (up to "
    IL_0072:  ldloc.2
    IL_0073:  ldflda     int32 Game.Block::MaxStacking
    IL_0078:  call       instance string [System.Runtime]System.Int32::ToString()
    IL_007d:  ldstr      ")"
    IL_0082:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string,
                                                                      string)
    IL_0087:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                             !1)
    IL_008c:  ldloc.0
    IL_008d:  ldstr      "Is Flammable"
    IL_0092:  ldloc.2
    IL_0093:  ldfld      float32 Game.Block::FireDuration
    IL_0098:  ldc.r4     0.0
    IL_009d:  bgt.s      IL_00a6

    IL_009f:  ldstr      "No"
    IL_00a4:  br.s       IL_00ab

    IL_00a6:  ldstr      "Yes"
    IL_00ab:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                             !1)
    IL_00b0:  ldloc.2
    IL_00b1:  ldarg.1
    IL_00b2:  callvirt   instance float32 Game.Block::GetNutritionalValue(int32)
    IL_00b7:  ldc.r4     0.0
    IL_00bc:  ble.un.s   IL_00d9

    IL_00be:  ldloc.0
    IL_00bf:  ldstr      "Nutrition"
    IL_00c4:  ldloc.2
    IL_00c5:  ldarg.1
    IL_00c6:  callvirt   instance float32 Game.Block::GetNutritionalValue(int32)
    IL_00cb:  stloc.s    V_4
    IL_00cd:  ldloca.s   V_4
    IL_00cf:  call       instance string [System.Runtime]System.Single::ToString()
    IL_00d4:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                             !1)
    IL_00d9:  ldloc.2
    IL_00da:  ldarg.1
    IL_00db:  callvirt   instance int32 Game.Block::GetRotPeriod(int32)
    IL_00e0:  ldc.i4.0
    IL_00e1:  ble.s      IL_011c

    IL_00e3:  ldloc.0
    IL_00e4:  ldstr      "Max Storage Time"
    IL_00e9:  ldstr      "{0:0.0} days"
    IL_00ee:  ldc.i4.1
    IL_00ef:  newarr     [System.Runtime]System.Object
    IL_00f4:  dup
    IL_00f5:  ldc.i4.0
    IL_00f6:  ldc.i4.2
    IL_00f7:  ldloc.2
    IL_00f8:  ldarg.1
    IL_00f9:  callvirt   instance int32 Game.Block::GetRotPeriod(int32)
    IL_00fe:  mul
    IL_00ff:  conv.r4
    IL_0100:  ldc.r4     60.
    IL_0105:  mul
    IL_0106:  ldc.r4     1200.
    IL_010b:  div
    IL_010c:  box        [System.Runtime]System.Single
    IL_0111:  stelem.ref
    IL_0112:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0117:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                             !1)
    IL_011c:  ldloc.2
    IL_011d:  ldfld      valuetype Game.BlockDigMethod Game.Block::DigMethod
    IL_0122:  brfalse.s  IL_0156

    IL_0124:  ldloc.0
    IL_0125:  ldstr      "Digging Method"
    IL_012a:  ldloc.2
    IL_012b:  ldflda     valuetype Game.BlockDigMethod Game.Block::DigMethod
    IL_0130:  constrained. Game.BlockDigMethod
    IL_0136:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_013b:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                             !1)
    IL_0140:  ldloc.0
    IL_0141:  ldstr      "Digging Resilience"
    IL_0146:  ldloc.2
    IL_0147:  ldflda     float32 Game.Block::DigResilience
    IL_014c:  call       instance string [System.Runtime]System.Single::ToString()
    IL_0151:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                             !1)
    IL_0156:  ldloc.2
    IL_0157:  ldfld      float32 Game.Block::ExplosionResilience
    IL_015c:  ldc.r4     0.0
    IL_0161:  ble.un.s   IL_0179

    IL_0163:  ldloc.0
    IL_0164:  ldstr      "Explosion Resilience"
    IL_0169:  ldloc.2
    IL_016a:  ldflda     float32 Game.Block::ExplosionResilience
    IL_016f:  call       instance string [System.Runtime]System.Single::ToString()
    IL_0174:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                             !1)
    IL_0179:  ldloc.2
    IL_017a:  ldarg.1
    IL_017b:  callvirt   instance float32 Game.Block::GetExplosionPressure(int32)
    IL_0180:  ldc.r4     0.0
    IL_0185:  ble.un.s   IL_01a2

    IL_0187:  ldloc.0
    IL_0188:  ldstr      "Explosive Power"
    IL_018d:  ldloc.2
    IL_018e:  ldarg.1
    IL_018f:  callvirt   instance float32 Game.Block::GetExplosionPressure(int32)
    IL_0194:  stloc.s    V_4
    IL_0196:  ldloca.s   V_4
    IL_0198:  call       instance string [System.Runtime]System.Single::ToString()
    IL_019d:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                             !1)
    IL_01a2:  ldc.i4.0
    IL_01a3:  stloc.3
    IL_01a4:  ldloc.2
    IL_01a5:  ldarg.1
    IL_01a6:  callvirt   instance float32 Game.Block::GetMeleePower(int32)
    IL_01ab:  ldc.r4     1.
    IL_01b0:  ble.un.s   IL_01cf

    IL_01b2:  ldloc.0
    IL_01b3:  ldstr      "Melee Power"
    IL_01b8:  ldloc.2
    IL_01b9:  ldarg.1
    IL_01ba:  callvirt   instance float32 Game.Block::GetMeleePower(int32)
    IL_01bf:  stloc.s    V_4
    IL_01c1:  ldloca.s   V_4
    IL_01c3:  call       instance string [System.Runtime]System.Single::ToString()
    IL_01c8:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                             !1)
    IL_01cd:  ldc.i4.1
    IL_01ce:  stloc.3
    IL_01cf:  ldloc.2
    IL_01d0:  ldarg.1
    IL_01d1:  callvirt   instance float32 Game.Block::GetMeleePower(int32)
    IL_01d6:  ldc.r4     1.
    IL_01db:  ble.un.s   IL_020f

    IL_01dd:  ldloc.0
    IL_01de:  ldstr      "Melee Hit Ratio"
    IL_01e3:  ldstr      "{0:0}%"
    IL_01e8:  ldc.i4.1
    IL_01e9:  newarr     [System.Runtime]System.Object
    IL_01ee:  dup
    IL_01ef:  ldc.i4.0
    IL_01f0:  ldc.r4     100.
    IL_01f5:  ldloc.2
    IL_01f6:  ldarg.1
    IL_01f7:  callvirt   instance float32 Game.Block::GetMeleeHitProbability(int32)
    IL_01fc:  mul
    IL_01fd:  box        [System.Runtime]System.Single
    IL_0202:  stelem.ref
    IL_0203:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0208:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                             !1)
    IL_020d:  ldc.i4.1
    IL_020e:  stloc.3
    IL_020f:  ldloc.2
    IL_0210:  ldarg.1
    IL_0211:  callvirt   instance float32 Game.Block::GetProjectilePower(int32)
    IL_0216:  ldc.r4     1.
    IL_021b:  ble.un.s   IL_023a

    IL_021d:  ldloc.0
    IL_021e:  ldstr      "Projectile Power"
    IL_0223:  ldloc.2
    IL_0224:  ldarg.1
    IL_0225:  callvirt   instance float32 Game.Block::GetProjectilePower(int32)
    IL_022a:  stloc.s    V_4
    IL_022c:  ldloca.s   V_4
    IL_022e:  call       instance string [System.Runtime]System.Single::ToString()
    IL_0233:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                             !1)
    IL_0238:  ldc.i4.1
    IL_0239:  stloc.3
    IL_023a:  ldloc.2
    IL_023b:  ldfld      float32 Game.Block::ShovelPower
    IL_0240:  ldc.r4     1.
    IL_0245:  ble.un.s   IL_025f

    IL_0247:  ldloc.0
    IL_0248:  ldstr      "Shoveling"
    IL_024d:  ldloc.2
    IL_024e:  ldflda     float32 Game.Block::ShovelPower
    IL_0253:  call       instance string [System.Runtime]System.Single::ToString()
    IL_0258:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                             !1)
    IL_025d:  ldc.i4.1
    IL_025e:  stloc.3
    IL_025f:  ldloc.2
    IL_0260:  ldfld      float32 Game.Block::HackPower
    IL_0265:  ldc.r4     1.
    IL_026a:  ble.un.s   IL_0284

    IL_026c:  ldloc.0
    IL_026d:  ldstr      "Hacking"
    IL_0272:  ldloc.2
    IL_0273:  ldflda     float32 Game.Block::HackPower
    IL_0278:  call       instance string [System.Runtime]System.Single::ToString()
    IL_027d:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                             !1)
    IL_0282:  ldc.i4.1
    IL_0283:  stloc.3
    IL_0284:  ldloc.2
    IL_0285:  ldfld      float32 Game.Block::QuarryPower
    IL_028a:  ldc.r4     1.
    IL_028f:  ble.un.s   IL_02a9

    IL_0291:  ldloc.0
    IL_0292:  ldstr      "Quarrying"
    IL_0297:  ldloc.2
    IL_0298:  ldflda     float32 Game.Block::QuarryPower
    IL_029d:  call       instance string [System.Runtime]System.Single::ToString()
    IL_02a2:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                             !1)
    IL_02a7:  ldc.i4.1
    IL_02a8:  stloc.3
    IL_02a9:  ldloc.3
    IL_02aa:  brfalse.s  IL_02cb

    IL_02ac:  ldloc.2
    IL_02ad:  ldfld      int32 Game.Block::Durability
    IL_02b2:  ldc.i4.0
    IL_02b3:  ble.s      IL_02cb

    IL_02b5:  ldloc.0
    IL_02b6:  ldstr      "Durability"
    IL_02bb:  ldloc.2
    IL_02bc:  ldflda     int32 Game.Block::Durability
    IL_02c1:  call       instance string [System.Runtime]System.Int32::ToString()
    IL_02c6:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                             !1)
    IL_02cb:  ldloc.2
    IL_02cc:  ldfld      float32 Game.Block::DefaultExperienceCount
    IL_02d1:  ldc.r4     0.0
    IL_02d6:  ble.un.s   IL_02ee

    IL_02d8:  ldloc.0
    IL_02d9:  ldstr      "Experience Orbs"
    IL_02de:  ldloc.2
    IL_02df:  ldflda     float32 Game.Block::DefaultExperienceCount
    IL_02e4:  call       instance string [System.Runtime]System.Single::ToString()
    IL_02e9:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                             !1)
    IL_02ee:  ldloc.2
    IL_02ef:  isinst     Game.ClothingBlock
    IL_02f4:  brfalse    IL_03c8

    IL_02f9:  ldarg.1
    IL_02fa:  call       int32 Game.Terrain::ExtractData(int32)
    IL_02ff:  call       class Game.ClothingData Game.ClothingBlock::GetClothingData(int32)
    IL_0304:  stloc.s    V_5
    IL_0306:  ldloc.0
    IL_0307:  ldstr      "Can Be Dyed"
    IL_030c:  ldloc.s    V_5
    IL_030e:  ldfld      bool Game.ClothingData::CanBeDyed
    IL_0313:  brtrue.s   IL_031c

    IL_0315:  ldstr      "No"
    IL_031a:  br.s       IL_0321

    IL_031c:  ldstr      "Yes"
    IL_0321:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                             !1)
    IL_0326:  ldloc.0
    IL_0327:  ldstr      "Armor Protection"
    IL_032c:  ldstr      "{0}%"
    IL_0331:  ldc.i4.1
    IL_0332:  newarr     [System.Runtime]System.Object
    IL_0337:  dup
    IL_0338:  ldc.i4.0
    IL_0339:  ldloc.s    V_5
    IL_033b:  ldfld      float32 Game.ClothingData::ArmorProtection
    IL_0340:  ldc.r4     100.
    IL_0345:  mul
    IL_0346:  conv.i4
    IL_0347:  box        [System.Runtime]System.Int32
    IL_034c:  stelem.ref
    IL_034d:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0352:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                             !1)
    IL_0357:  ldloc.0
    IL_0358:  ldstr      "Armor Durability"
    IL_035d:  ldloc.s    V_5
    IL_035f:  ldflda     float32 Game.ClothingData::Sturdiness
    IL_0364:  call       instance string [System.Runtime]System.Single::ToString()
    IL_0369:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                             !1)
    IL_036e:  ldloc.0
    IL_036f:  ldstr      "Insulation"
    IL_0374:  ldstr      "{0:0.0} clo"
    IL_0379:  ldc.i4.1
    IL_037a:  newarr     [System.Runtime]System.Object
    IL_037f:  dup
    IL_0380:  ldc.i4.0
    IL_0381:  ldloc.s    V_5
    IL_0383:  ldfld      float32 Game.ClothingData::Insulation
    IL_0388:  box        [System.Runtime]System.Single
    IL_038d:  stelem.ref
    IL_038e:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0393:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                             !1)
    IL_0398:  ldloc.0
    IL_0399:  ldstr      "Movement Speed"
    IL_039e:  ldstr      "{0:0}%"
    IL_03a3:  ldc.i4.1
    IL_03a4:  newarr     [System.Runtime]System.Object
    IL_03a9:  dup
    IL_03aa:  ldc.i4.0
    IL_03ab:  ldloc.s    V_5
    IL_03ad:  ldfld      float32 Game.ClothingData::MovementSpeedFactor
    IL_03b2:  ldc.r4     100.
    IL_03b7:  mul
    IL_03b8:  box        [System.Runtime]System.Single
    IL_03bd:  stelem.ref
    IL_03be:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_03c3:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                             !1)
    IL_03c8:  ldloc.0
    IL_03c9:  ret
  } // end of method RecipaediaDescriptionScreen::GetBlockProperties

  .method private hidebysig instance void 
          UpdateBlockProperties() cil managed
  {
    // 代码大小       405 (0x195)
    .maxstack  4
    .locals init (int32 V_0,
             int32 V_1,
             class Game.Block V_2,
             class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> V_3,
             int32 V_4,
             valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<string,string> V_5,
             valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,string> V_6)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Game.RecipaediaDescriptionScreen::m_index
    IL_0006:  ldc.i4.0
    IL_0007:  blt        IL_0194

    IL_000c:  ldarg.0
    IL_000d:  ldfld      int32 Game.RecipaediaDescriptionScreen::m_index
    IL_0012:  ldarg.0
    IL_0013:  ldfld      class [System.Runtime]System.Collections.Generic.IList`1<int32> Game.RecipaediaDescriptionScreen::m_valuesList
    IL_0018:  callvirt   instance int32 class [System.Runtime]System.Collections.Generic.ICollection`1<int32>::get_Count()
    IL_001d:  bge        IL_0194

    IL_0022:  ldarg.0
    IL_0023:  ldfld      class [System.Runtime]System.Collections.Generic.IList`1<int32> Game.RecipaediaDescriptionScreen::m_valuesList
    IL_0028:  ldarg.0
    IL_0029:  ldfld      int32 Game.RecipaediaDescriptionScreen::m_index
    IL_002e:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IList`1<int32>::get_Item(int32)
    IL_0033:  stloc.0
    IL_0034:  ldloc.0
    IL_0035:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_003a:  stloc.1
    IL_003b:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0040:  ldloc.1
    IL_0041:  ldelem.ref
    IL_0042:  stloc.2
    IL_0043:  ldarg.0
    IL_0044:  ldfld      class Game.BlockIconWidget Game.RecipaediaDescriptionScreen::m_blockIconWidget
    IL_0049:  ldloc.0
    IL_004a:  callvirt   instance void Game.BlockIconWidget::set_Value(int32)
    IL_004f:  ldarg.0
    IL_0050:  ldfld      class Game.LabelWidget Game.RecipaediaDescriptionScreen::m_nameWidget
    IL_0055:  ldloc.2
    IL_0056:  ldnull
    IL_0057:  ldloc.0
    IL_0058:  callvirt   instance string Game.Block::GetDisplayName(class Game.SubsystemTerrain,
                                                                    int32)
    IL_005d:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0062:  ldarg.0
    IL_0063:  ldfld      class Game.LabelWidget Game.RecipaediaDescriptionScreen::m_descriptionWidget
    IL_0068:  ldloc.2
    IL_0069:  ldloc.0
    IL_006a:  callvirt   instance string Game.Block::GetDescription(int32)
    IL_006f:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0074:  ldarg.0
    IL_0075:  ldfld      class Game.LabelWidget Game.RecipaediaDescriptionScreen::m_propertyNames1Widget
    IL_007a:  ldsfld     string [System.Runtime]System.String::Empty
    IL_007f:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0084:  ldarg.0
    IL_0085:  ldfld      class Game.LabelWidget Game.RecipaediaDescriptionScreen::m_propertyValues1Widget
    IL_008a:  ldsfld     string [System.Runtime]System.String::Empty
    IL_008f:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0094:  ldarg.0
    IL_0095:  ldfld      class Game.LabelWidget Game.RecipaediaDescriptionScreen::m_propertyNames2Widget
    IL_009a:  ldsfld     string [System.Runtime]System.String::Empty
    IL_009f:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_00a4:  ldarg.0
    IL_00a5:  ldfld      class Game.LabelWidget Game.RecipaediaDescriptionScreen::m_propertyValues2Widget
    IL_00aa:  ldsfld     string [System.Runtime]System.String::Empty
    IL_00af:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_00b4:  ldarg.0
    IL_00b5:  ldloc.0
    IL_00b6:  call       instance class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> Game.RecipaediaDescriptionScreen::GetBlockProperties(int32)
    IL_00bb:  stloc.3
    IL_00bc:  ldc.i4.0
    IL_00bd:  stloc.s    V_4
    IL_00bf:  ldloc.3
    IL_00c0:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::GetEnumerator()
    IL_00c5:  stloc.s    V_5
    .try
    {
      IL_00c7:  br         IL_0178

      IL_00cc:  ldloca.s   V_5
      IL_00ce:  call       instance valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1> valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<string,string>::get_Current()
      IL_00d3:  stloc.s    V_6
      IL_00d5:  ldloc.s    V_4
      IL_00d7:  ldloc.3
      IL_00d8:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::get_Count()
      IL_00dd:  ldloc.3
      IL_00de:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::get_Count()
      IL_00e3:  ldc.i4.2
      IL_00e4:  div
      IL_00e5:  sub
      IL_00e6:  bge.s      IL_012e

      IL_00e8:  ldarg.0
      IL_00e9:  ldfld      class Game.LabelWidget Game.RecipaediaDescriptionScreen::m_propertyNames1Widget
      IL_00ee:  dup
      IL_00ef:  callvirt   instance string Game.LabelWidget::get_Text()
      IL_00f4:  ldloca.s   V_6
      IL_00f6:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,string>::get_Key()
      IL_00fb:  ldstr      ":\n"
      IL_0100:  call       string [System.Runtime]System.String::Concat(string,
                                                                        string,
                                                                        string)
      IL_0105:  callvirt   instance void Game.LabelWidget::set_Text(string)
      IL_010a:  ldarg.0
      IL_010b:  ldfld      class Game.LabelWidget Game.RecipaediaDescriptionScreen::m_propertyValues1Widget
      IL_0110:  dup
      IL_0111:  callvirt   instance string Game.LabelWidget::get_Text()
      IL_0116:  ldloca.s   V_6
      IL_0118:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,string>::get_Value()
      IL_011d:  ldstr      "\n"
      IL_0122:  call       string [System.Runtime]System.String::Concat(string,
                                                                        string,
                                                                        string)
      IL_0127:  callvirt   instance void Game.LabelWidget::set_Text(string)
      IL_012c:  br.s       IL_0172

      IL_012e:  ldarg.0
      IL_012f:  ldfld      class Game.LabelWidget Game.RecipaediaDescriptionScreen::m_propertyNames2Widget
      IL_0134:  dup
      IL_0135:  callvirt   instance string Game.LabelWidget::get_Text()
      IL_013a:  ldloca.s   V_6
      IL_013c:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,string>::get_Key()
      IL_0141:  ldstr      ":\n"
      IL_0146:  call       string [System.Runtime]System.String::Concat(string,
                                                                        string,
                                                                        string)
      IL_014b:  callvirt   instance void Game.LabelWidget::set_Text(string)
      IL_0150:  ldarg.0
      IL_0151:  ldfld      class Game.LabelWidget Game.RecipaediaDescriptionScreen::m_propertyValues2Widget
      IL_0156:  dup
      IL_0157:  callvirt   instance string Game.LabelWidget::get_Text()
      IL_015c:  ldloca.s   V_6
      IL_015e:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,string>::get_Value()
      IL_0163:  ldstr      "\n"
      IL_0168:  call       string [System.Runtime]System.String::Concat(string,
                                                                        string,
                                                                        string)
      IL_016d:  callvirt   instance void Game.LabelWidget::set_Text(string)
      IL_0172:  ldloc.s    V_4
      IL_0174:  ldc.i4.1
      IL_0175:  add
      IL_0176:  stloc.s    V_4
      IL_0178:  ldloca.s   V_5
      IL_017a:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<string,string>::MoveNext()
      IL_017f:  brtrue     IL_00cc

      IL_0184:  leave.s    IL_0194

    }  // end .try
    finally
    {
      IL_0186:  ldloca.s   V_5
      IL_0188:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<string,string>
      IL_018e:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0193:  endfinally
    }  // end handler
    IL_0194:  ret
  } // end of method RecipaediaDescriptionScreen::UpdateBlockProperties

} // end of class Game.RecipaediaDescriptionScreen