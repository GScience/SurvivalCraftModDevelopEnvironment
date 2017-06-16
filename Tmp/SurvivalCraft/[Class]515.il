.class public auto ansi beforefieldinit Game.RecipaediaDescriptionScreen
       extends Game.Screen
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.RecipaediaDescriptionScreen/'<>c' '<>9'
    .field public static class [System.Runtime]System.Action '<>9__13_0'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.RecipaediaDescriptionScreen/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.RecipaediaDescriptionScreen/'<>c' Game.RecipaediaDescriptionScreen/'<>c'::'<>9'
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
            '<Update>b__13_0'() cil managed
    {
      // 代码大小       17 (0x11)
      .maxstack  8
      IL_0000:  call       class Game.Screen Game.ScreensManager::get_PreviousScreen()
      IL_0005:  ldc.i4.0
      IL_0006:  newarr     [System.Runtime]System.Object
      IL_000b:  call       void Game.ScreensManager::SwitchScreen(class Game.Screen,
                                                                  object[])
      IL_0010:  ret
    } // end of method '<>c'::'<Update>b__13_0'

  } // end of class '<>c'

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
    // 代码大小       283 (0x11b)
    .maxstack  4
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.Screen::.ctor()
    IL_0006:  ldstr      "Screens/RecipaediaDescriptionScreen"
    IL_000b:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_0010:  stloc.0
    IL_0011:  ldarg.0
    IL_0012:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0017:  ldarg.0
    IL_0018:  ldloc.0
    IL_0019:  call       void Game.WidgetsManager::LoadWidgetContents(class Game.Widget,
                                                                      object,
                                                                      class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_001e:  ldarg.0
    IL_001f:  ldarg.0
    IL_0020:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0025:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_002a:  ldstr      "Icon"
    IL_002f:  ldc.i4.1
    IL_0030:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.BlockIconWidget>(string,
                                                                                              bool)
    IL_0035:  stfld      class Game.BlockIconWidget Game.RecipaediaDescriptionScreen::m_blockIconWidget
    IL_003a:  ldarg.0
    IL_003b:  ldarg.0
    IL_003c:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0041:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0046:  ldstr      "Name"
    IL_004b:  ldc.i4.1
    IL_004c:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_0051:  stfld      class Game.LabelWidget Game.RecipaediaDescriptionScreen::m_nameWidget
    IL_0056:  ldarg.0
    IL_0057:  ldarg.0
    IL_0058:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_005d:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0062:  ldstr      "Left"
    IL_0067:  ldc.i4.1
    IL_0068:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_006d:  stfld      class Game.ButtonWidget Game.RecipaediaDescriptionScreen::m_leftButtonWidget
    IL_0072:  ldarg.0
    IL_0073:  ldarg.0
    IL_0074:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0079:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_007e:  ldstr      "Right"
    IL_0083:  ldc.i4.1
    IL_0084:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_0089:  stfld      class Game.ButtonWidget Game.RecipaediaDescriptionScreen::m_rightButtonWidget
    IL_008e:  ldarg.0
    IL_008f:  ldarg.0
    IL_0090:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0095:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_009a:  ldstr      "Description"
    IL_009f:  ldc.i4.1
    IL_00a0:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_00a5:  stfld      class Game.LabelWidget Game.RecipaediaDescriptionScreen::m_descriptionWidget
    IL_00aa:  ldarg.0
    IL_00ab:  ldarg.0
    IL_00ac:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_00b1:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00b6:  ldstr      "PropertyNames1"
    IL_00bb:  ldc.i4.1
    IL_00bc:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_00c1:  stfld      class Game.LabelWidget Game.RecipaediaDescriptionScreen::m_propertyNames1Widget
    IL_00c6:  ldarg.0
    IL_00c7:  ldarg.0
    IL_00c8:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_00cd:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00d2:  ldstr      "PropertyValues1"
    IL_00d7:  ldc.i4.1
    IL_00d8:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_00dd:  stfld      class Game.LabelWidget Game.RecipaediaDescriptionScreen::m_propertyValues1Widget
    IL_00e2:  ldarg.0
    IL_00e3:  ldarg.0
    IL_00e4:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_00e9:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00ee:  ldstr      "PropertyNames2"
    IL_00f3:  ldc.i4.1
    IL_00f4:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_00f9:  stfld      class Game.LabelWidget Game.RecipaediaDescriptionScreen::m_propertyNames2Widget
    IL_00fe:  ldarg.0
    IL_00ff:  ldarg.0
    IL_0100:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0105:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_010a:  ldstr      "PropertyValues2"
    IL_010f:  ldc.i4.1
    IL_0110:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_0115:  stfld      class Game.LabelWidget Game.RecipaediaDescriptionScreen::m_propertyValues2Widget
    IL_011a:  ret
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
    // 代码大小       220 (0xdc)
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
    IL_003f:  brfalse.s  IL_005b

    IL_0041:  ldarg.0
    IL_0042:  ldarg.0
    IL_0043:  ldfld      int32 Game.RecipaediaDescriptionScreen::m_index
    IL_0048:  ldc.i4.1
    IL_0049:  sub
    IL_004a:  ldc.i4.0
    IL_004b:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_0050:  stfld      int32 Game.RecipaediaDescriptionScreen::m_index
    IL_0055:  ldarg.0
    IL_0056:  call       instance void Game.RecipaediaDescriptionScreen::UpdateBlockProperties()
    IL_005b:  ldarg.0
    IL_005c:  ldfld      class Game.ButtonWidget Game.RecipaediaDescriptionScreen::m_rightButtonWidget
    IL_0061:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0066:  brfalse.s  IL_008e

    IL_0068:  ldarg.0
    IL_0069:  ldarg.0
    IL_006a:  ldfld      int32 Game.RecipaediaDescriptionScreen::m_index
    IL_006f:  ldc.i4.1
    IL_0070:  add
    IL_0071:  ldarg.0
    IL_0072:  ldfld      class [System.Runtime]System.Collections.Generic.IList`1<int32> Game.RecipaediaDescriptionScreen::m_valuesList
    IL_0077:  callvirt   instance int32 class [System.Runtime]System.Collections.Generic.ICollection`1<int32>::get_Count()
    IL_007c:  ldc.i4.1
    IL_007d:  sub
    IL_007e:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_0083:  stfld      int32 Game.RecipaediaDescriptionScreen::m_index
    IL_0088:  ldarg.0
    IL_0089:  call       instance void Game.RecipaediaDescriptionScreen::UpdateBlockProperties()
    IL_008e:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_0093:  ldfld      bool Game.InputState::Back
    IL_0098:  brtrue.s   IL_00b7

    IL_009a:  ldarg.0
    IL_009b:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_00a0:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00a5:  ldstr      "TopBar.Back"
    IL_00aa:  ldc.i4.1
    IL_00ab:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_00b0:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_00b5:  brfalse.s  IL_00db

    IL_00b7:  ldsfld     class [System.Runtime]System.Action Game.RecipaediaDescriptionScreen/'<>c'::'<>9__13_0'
    IL_00bc:  dup
    IL_00bd:  brtrue.s   IL_00d6

    IL_00bf:  pop
    IL_00c0:  ldsfld     class Game.RecipaediaDescriptionScreen/'<>c' Game.RecipaediaDescriptionScreen/'<>c'::'<>9'
    IL_00c5:  ldftn      instance void Game.RecipaediaDescriptionScreen/'<>c'::'<Update>b__13_0'()
    IL_00cb:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00d0:  dup
    IL_00d1:  stsfld     class [System.Runtime]System.Action Game.RecipaediaDescriptionScreen/'<>c'::'<>9__13_0'
    IL_00d6:  call       void Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
    IL_00db:  ret
  } // end of method RecipaediaDescriptionScreen::Update

  .method private hidebysig instance class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> 
          GetBlockProperties(int32 'value') cil managed
  {
    // 代码大小       868 (0x364)
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
    IL_0007:  call       int32 Game.TerrainData::ExtractContents(int32)
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
    IL_00da:  ldfld      valuetype Game.BlockDigMethod Game.Block::DigMethod
    IL_00df:  brfalse.s  IL_0113

    IL_00e1:  ldloc.0
    IL_00e2:  ldstr      "Digging Method"
    IL_00e7:  ldloc.2
    IL_00e8:  ldflda     valuetype Game.BlockDigMethod Game.Block::DigMethod
    IL_00ed:  constrained. Game.BlockDigMethod
    IL_00f3:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_00f8:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                             !1)
    IL_00fd:  ldloc.0
    IL_00fe:  ldstr      "Digging Resilience"
    IL_0103:  ldloc.2
    IL_0104:  ldflda     float32 Game.Block::DigResilience
    IL_0109:  call       instance string [System.Runtime]System.Single::ToString()
    IL_010e:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                             !1)
    IL_0113:  ldloc.2
    IL_0114:  ldfld      float32 Game.Block::ExplosionResilience
    IL_0119:  ldc.r4     0.0
    IL_011e:  ble.un.s   IL_0136

    IL_0120:  ldloc.0
    IL_0121:  ldstr      "Explosion Resilience"
    IL_0126:  ldloc.2
    IL_0127:  ldflda     float32 Game.Block::ExplosionResilience
    IL_012c:  call       instance string [System.Runtime]System.Single::ToString()
    IL_0131:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                             !1)
    IL_0136:  ldloc.2
    IL_0137:  ldarg.1
    IL_0138:  callvirt   instance float32 Game.Block::GetExplosionPressure(int32)
    IL_013d:  ldc.r4     0.0
    IL_0142:  ble.un.s   IL_015f

    IL_0144:  ldloc.0
    IL_0145:  ldstr      "Explosive Power"
    IL_014a:  ldloc.2
    IL_014b:  ldarg.1
    IL_014c:  callvirt   instance float32 Game.Block::GetExplosionPressure(int32)
    IL_0151:  stloc.s    V_4
    IL_0153:  ldloca.s   V_4
    IL_0155:  call       instance string [System.Runtime]System.Single::ToString()
    IL_015a:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                             !1)
    IL_015f:  ldc.i4.0
    IL_0160:  stloc.3
    IL_0161:  ldloc.2
    IL_0162:  ldarg.1
    IL_0163:  callvirt   instance float32 Game.Block::GetMeleePower(int32)
    IL_0168:  ldc.r4     1.
    IL_016d:  ble.un.s   IL_018c

    IL_016f:  ldloc.0
    IL_0170:  ldstr      "Melee Power"
    IL_0175:  ldloc.2
    IL_0176:  ldarg.1
    IL_0177:  callvirt   instance float32 Game.Block::GetMeleePower(int32)
    IL_017c:  stloc.s    V_4
    IL_017e:  ldloca.s   V_4
    IL_0180:  call       instance string [System.Runtime]System.Single::ToString()
    IL_0185:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                             !1)
    IL_018a:  ldc.i4.1
    IL_018b:  stloc.3
    IL_018c:  ldloc.2
    IL_018d:  ldarg.1
    IL_018e:  callvirt   instance float32 Game.Block::GetMeleePower(int32)
    IL_0193:  ldc.r4     1.
    IL_0198:  ble.un.s   IL_01cc

    IL_019a:  ldloc.0
    IL_019b:  ldstr      "Melee Hit Ratio"
    IL_01a0:  ldstr      "{0:0}%"
    IL_01a5:  ldc.i4.1
    IL_01a6:  newarr     [System.Runtime]System.Object
    IL_01ab:  dup
    IL_01ac:  ldc.i4.0
    IL_01ad:  ldc.r4     100.
    IL_01b2:  ldloc.2
    IL_01b3:  ldarg.1
    IL_01b4:  callvirt   instance float32 Game.Block::GetMeleeHitProbability(int32)
    IL_01b9:  mul
    IL_01ba:  box        [System.Runtime]System.Single
    IL_01bf:  stelem.ref
    IL_01c0:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_01c5:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                             !1)
    IL_01ca:  ldc.i4.1
    IL_01cb:  stloc.3
    IL_01cc:  ldloc.2
    IL_01cd:  ldarg.1
    IL_01ce:  callvirt   instance float32 Game.Block::GetProjectilePower(int32)
    IL_01d3:  ldc.r4     1.
    IL_01d8:  ble.un.s   IL_01f7

    IL_01da:  ldloc.0
    IL_01db:  ldstr      "Projectile Power"
    IL_01e0:  ldloc.2
    IL_01e1:  ldarg.1
    IL_01e2:  callvirt   instance float32 Game.Block::GetProjectilePower(int32)
    IL_01e7:  stloc.s    V_4
    IL_01e9:  ldloca.s   V_4
    IL_01eb:  call       instance string [System.Runtime]System.Single::ToString()
    IL_01f0:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                             !1)
    IL_01f5:  ldc.i4.1
    IL_01f6:  stloc.3
    IL_01f7:  ldloc.2
    IL_01f8:  ldfld      float32 Game.Block::ShovelPower
    IL_01fd:  ldc.r4     1.
    IL_0202:  ble.un.s   IL_021c

    IL_0204:  ldloc.0
    IL_0205:  ldstr      "Shoveling"
    IL_020a:  ldloc.2
    IL_020b:  ldflda     float32 Game.Block::ShovelPower
    IL_0210:  call       instance string [System.Runtime]System.Single::ToString()
    IL_0215:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                             !1)
    IL_021a:  ldc.i4.1
    IL_021b:  stloc.3
    IL_021c:  ldloc.2
    IL_021d:  ldfld      float32 Game.Block::HackPower
    IL_0222:  ldc.r4     1.
    IL_0227:  ble.un.s   IL_0241

    IL_0229:  ldloc.0
    IL_022a:  ldstr      "Hacking"
    IL_022f:  ldloc.2
    IL_0230:  ldflda     float32 Game.Block::HackPower
    IL_0235:  call       instance string [System.Runtime]System.Single::ToString()
    IL_023a:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                             !1)
    IL_023f:  ldc.i4.1
    IL_0240:  stloc.3
    IL_0241:  ldloc.2
    IL_0242:  ldfld      float32 Game.Block::QuarryPower
    IL_0247:  ldc.r4     1.
    IL_024c:  ble.un.s   IL_0266

    IL_024e:  ldloc.0
    IL_024f:  ldstr      "Quarrying"
    IL_0254:  ldloc.2
    IL_0255:  ldflda     float32 Game.Block::QuarryPower
    IL_025a:  call       instance string [System.Runtime]System.Single::ToString()
    IL_025f:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                             !1)
    IL_0264:  ldc.i4.1
    IL_0265:  stloc.3
    IL_0266:  ldloc.3
    IL_0267:  brfalse.s  IL_0288

    IL_0269:  ldloc.2
    IL_026a:  ldfld      int32 Game.Block::Durability
    IL_026f:  ldc.i4.0
    IL_0270:  ble.s      IL_0288

    IL_0272:  ldloc.0
    IL_0273:  ldstr      "Durability"
    IL_0278:  ldloc.2
    IL_0279:  ldflda     int32 Game.Block::Durability
    IL_027e:  call       instance string [System.Runtime]System.Int32::ToString()
    IL_0283:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                             !1)
    IL_0288:  ldloc.2
    IL_0289:  isinst     Game.ClothingBlock
    IL_028e:  brfalse    IL_0362

    IL_0293:  ldarg.1
    IL_0294:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0299:  call       class Game.ClothingData Game.ClothingBlock::GetClothingData(int32)
    IL_029e:  stloc.s    V_5
    IL_02a0:  ldloc.0
    IL_02a1:  ldstr      "Can Be Dyed"
    IL_02a6:  ldloc.s    V_5
    IL_02a8:  ldfld      bool Game.ClothingData::CanByDyed
    IL_02ad:  brtrue.s   IL_02b6

    IL_02af:  ldstr      "No"
    IL_02b4:  br.s       IL_02bb

    IL_02b6:  ldstr      "Yes"
    IL_02bb:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                             !1)
    IL_02c0:  ldloc.0
    IL_02c1:  ldstr      "Armor Protection"
    IL_02c6:  ldstr      "{0}%"
    IL_02cb:  ldc.i4.1
    IL_02cc:  newarr     [System.Runtime]System.Object
    IL_02d1:  dup
    IL_02d2:  ldc.i4.0
    IL_02d3:  ldloc.s    V_5
    IL_02d5:  ldfld      float32 Game.ClothingData::ArmorProtection
    IL_02da:  ldc.r4     100.
    IL_02df:  mul
    IL_02e0:  conv.i4
    IL_02e1:  box        [System.Runtime]System.Int32
    IL_02e6:  stelem.ref
    IL_02e7:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_02ec:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                             !1)
    IL_02f1:  ldloc.0
    IL_02f2:  ldstr      "Armor Durability"
    IL_02f7:  ldloc.s    V_5
    IL_02f9:  ldflda     float32 Game.ClothingData::Sturdiness
    IL_02fe:  call       instance string [System.Runtime]System.Single::ToString()
    IL_0303:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                             !1)
    IL_0308:  ldloc.0
    IL_0309:  ldstr      "Insulation"
    IL_030e:  ldstr      "{0:0.0} clo"
    IL_0313:  ldc.i4.1
    IL_0314:  newarr     [System.Runtime]System.Object
    IL_0319:  dup
    IL_031a:  ldc.i4.0
    IL_031b:  ldloc.s    V_5
    IL_031d:  ldfld      float32 Game.ClothingData::Insulation
    IL_0322:  box        [System.Runtime]System.Single
    IL_0327:  stelem.ref
    IL_0328:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_032d:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                             !1)
    IL_0332:  ldloc.0
    IL_0333:  ldstr      "Movement Speed"
    IL_0338:  ldstr      "{0:0}%"
    IL_033d:  ldc.i4.1
    IL_033e:  newarr     [System.Runtime]System.Object
    IL_0343:  dup
    IL_0344:  ldc.i4.0
    IL_0345:  ldloc.s    V_5
    IL_0347:  ldfld      float32 Game.ClothingData::MovementSpeedFactor
    IL_034c:  ldc.r4     100.
    IL_0351:  mul
    IL_0352:  box        [System.Runtime]System.Single
    IL_0357:  stelem.ref
    IL_0358:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_035d:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                             !1)
    IL_0362:  ldloc.0
    IL_0363:  ret
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
    IL_0035:  call       int32 Game.TerrainData::ExtractContents(int32)
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