.class public auto ansi beforefieldinit Game.WorldOptionsScreen
       extends Game.Screen
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.WorldOptionsScreen/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`2<object,class Game.Widget> '<>9__35_4'
    .field public static class [System.Runtime]System.Action '<>9__35_6'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.WorldOptionsScreen/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.WorldOptionsScreen/'<>c' Game.WorldOptionsScreen/'<>c'::'<>9'
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

    .method assembly hidebysig instance class Game.Widget 
            '<Update>b__35_4'(object index) cil managed
    {
      // 代码大小       104 (0x68)
      .maxstack  5
      .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0)
      IL_0000:  ldstr      "Widgets/SelectBlockItem"
      IL_0005:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
      IL_000a:  stloc.0
      IL_000b:  ldnull
      IL_000c:  ldloc.0
      IL_000d:  ldnull
      IL_000e:  call       class Game.Widget Game.WidgetsManager::LoadWidget(object,
                                                                             class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                             class Game.ContainerWidget)
      IL_0013:  castclass  Game.ContainerWidget
      IL_0018:  dup
      IL_0019:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
      IL_001e:  ldstr      "SelectBlockItem.Block"
      IL_0023:  ldc.i4.1
      IL_0024:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.BlockIconWidget>(string,
                                                                                                bool)
      IL_0029:  ldarg.1
      IL_002a:  unbox.any  [System.Runtime]System.Int32
      IL_002f:  callvirt   instance void Game.BlockIconWidget::set_Contents(int32)
      IL_0034:  dup
      IL_0035:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
      IL_003a:  ldstr      "SelectBlockItem.Text"
      IL_003f:  ldc.i4.1
      IL_0040:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                            bool)
      IL_0045:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
      IL_004a:  ldarg.1
      IL_004b:  unbox.any  [System.Runtime]System.Int32
      IL_0050:  ldelem.ref
      IL_0051:  ldnull
      IL_0052:  ldarg.1
      IL_0053:  unbox.any  [System.Runtime]System.Int32
      IL_0058:  call       int32 Game.TerrainData::MakeBlockValue(int32)
      IL_005d:  callvirt   instance string Game.Block::GetDisplayName(class Game.SubsystemTerrain,
                                                                      int32)
      IL_0062:  callvirt   instance void Game.LabelWidget::set_Text(string)
      IL_0067:  ret
    } // end of method '<>c'::'<Update>b__35_4'

    .method assembly hidebysig instance void 
            '<Update>b__35_6'() cil managed
    {
      // 代码大小       17 (0x11)
      .maxstack  8
      IL_0000:  call       class Game.Screen Game.ScreensManager::get_PreviousScreen()
      IL_0005:  ldc.i4.0
      IL_0006:  newarr     [System.Runtime]System.Object
      IL_000b:  call       void Game.ScreensManager::SwitchScreen(class Game.Screen,
                                                                  object[])
      IL_0010:  ret
    } // end of method '<>c'::'<Update>b__35_6'

  } // end of class '<>c'

  .field private class Game.Widget m_creativeModePanel
  .field private class Game.Widget m_newWorldOnlyPanel1
  .field private class Game.Widget m_newWorldOnlyPanel2
  .field private class Game.Widget m_flatTerrainPanel
  .field private class Game.ModelWidget m_characterSkinModel
  .field private class Game.LabelWidget m_characterSkinLabel
  .field private class Game.LabelWidget m_characterSkinDetails
  .field private class Game.ButtonWidget m_characterSkinButton
  .field private class Game.RectangleWidget m_blocksTextureIcon
  .field private class Game.LabelWidget m_blocksTextureLabel
  .field private class Game.LabelWidget m_blocksTextureDetails
  .field private class Game.ButtonWidget m_blocksTextureButton
  .field private class Game.ButtonWidget m_environmentBehaviorButton
  .field private class Game.ButtonWidget m_timeOfDayButton
  .field private class Game.ButtonWidget m_weatherEffectsButton
  .field private class Game.ButtonWidget m_adventureRespawnButton
  .field private class Game.ButtonWidget m_adventureSurvivalMechanicsButton
  .field private class Game.ButtonWidget m_terrainGenerationButton
  .field private class Game.SliderWidget m_flatTerrainLevelSlider
  .field private class Game.BlockIconWidget m_flatTerrainBlock
  .field private class Game.LabelWidget m_flatTerrainBlockLabel
  .field private class Game.ButtonWidget m_flatTerrainBlockButton
  .field private class Game.CheckboxWidget m_flatTerrainMagmaOceanCheckbox
  .field private class Game.SliderWidget m_seaLevelOffsetSlider
  .field private class Game.SliderWidget m_temperatureOffsetSlider
  .field private class Game.SliderWidget m_humidityOffsetSlider
  .field private class Game.LabelWidget m_descriptionLabel
  .field private class Game.WorldInfo m_worldInfo
  .field private bool m_isExistingWorld
  .field private class Game.CharacterSkinsCache m_characterSkinsCache
  .field private class Game.BlocksTexturesCache m_blockTexturesCache
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       809 (0x329)
    .maxstack  4
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0)
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.CharacterSkinsCache::.ctor()
    IL_0006:  stfld      class Game.CharacterSkinsCache Game.WorldOptionsScreen::m_characterSkinsCache
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void Game.BlocksTexturesCache::.ctor()
    IL_0011:  stfld      class Game.BlocksTexturesCache Game.WorldOptionsScreen::m_blockTexturesCache
    IL_0016:  ldarg.0
    IL_0017:  call       instance void Game.Screen::.ctor()
    IL_001c:  ldstr      "Screens/WorldOptionsScreen"
    IL_0021:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_0026:  stloc.0
    IL_0027:  ldarg.0
    IL_0028:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_002d:  ldarg.0
    IL_002e:  ldloc.0
    IL_002f:  call       void Game.WidgetsManager::LoadWidgetContents(class Game.Widget,
                                                                      object,
                                                                      class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_0034:  ldarg.0
    IL_0035:  ldarg.0
    IL_0036:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_003b:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0040:  ldstr      "CreativeModePanel"
    IL_0045:  ldc.i4.1
    IL_0046:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.Widget>(string,
                                                                                     bool)
    IL_004b:  stfld      class Game.Widget Game.WorldOptionsScreen::m_creativeModePanel
    IL_0050:  ldarg.0
    IL_0051:  ldarg.0
    IL_0052:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0057:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_005c:  ldstr      "NewWorldOnlyPanel1"
    IL_0061:  ldc.i4.1
    IL_0062:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.Widget>(string,
                                                                                     bool)
    IL_0067:  stfld      class Game.Widget Game.WorldOptionsScreen::m_newWorldOnlyPanel1
    IL_006c:  ldarg.0
    IL_006d:  ldarg.0
    IL_006e:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0073:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0078:  ldstr      "NewWorldOnlyPanel2"
    IL_007d:  ldc.i4.1
    IL_007e:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.Widget>(string,
                                                                                     bool)
    IL_0083:  stfld      class Game.Widget Game.WorldOptionsScreen::m_newWorldOnlyPanel2
    IL_0088:  ldarg.0
    IL_0089:  ldarg.0
    IL_008a:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_008f:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0094:  ldstr      "FlatTerrainPanel"
    IL_0099:  ldc.i4.1
    IL_009a:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.Widget>(string,
                                                                                     bool)
    IL_009f:  stfld      class Game.Widget Game.WorldOptionsScreen::m_flatTerrainPanel
    IL_00a4:  ldarg.0
    IL_00a5:  ldarg.0
    IL_00a6:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_00ab:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00b0:  ldstr      "CharacterSkinModel"
    IL_00b5:  ldc.i4.1
    IL_00b6:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ModelWidget>(string,
                                                                                          bool)
    IL_00bb:  stfld      class Game.ModelWidget Game.WorldOptionsScreen::m_characterSkinModel
    IL_00c0:  ldarg.0
    IL_00c1:  ldarg.0
    IL_00c2:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_00c7:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00cc:  ldstr      "CharacterSkinLabel"
    IL_00d1:  ldc.i4.1
    IL_00d2:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_00d7:  stfld      class Game.LabelWidget Game.WorldOptionsScreen::m_characterSkinLabel
    IL_00dc:  ldarg.0
    IL_00dd:  ldarg.0
    IL_00de:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_00e3:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00e8:  ldstr      "CharacterSkinDetails"
    IL_00ed:  ldc.i4.1
    IL_00ee:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_00f3:  stfld      class Game.LabelWidget Game.WorldOptionsScreen::m_characterSkinDetails
    IL_00f8:  ldarg.0
    IL_00f9:  ldarg.0
    IL_00fa:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_00ff:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0104:  ldstr      "CharacterSkinButton"
    IL_0109:  ldc.i4.1
    IL_010a:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_010f:  stfld      class Game.ButtonWidget Game.WorldOptionsScreen::m_characterSkinButton
    IL_0114:  ldarg.0
    IL_0115:  ldarg.0
    IL_0116:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_011b:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0120:  ldstr      "BlocksTextureIcon"
    IL_0125:  ldc.i4.1
    IL_0126:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.RectangleWidget>(string,
                                                                                              bool)
    IL_012b:  stfld      class Game.RectangleWidget Game.WorldOptionsScreen::m_blocksTextureIcon
    IL_0130:  ldarg.0
    IL_0131:  ldarg.0
    IL_0132:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0137:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_013c:  ldstr      "BlocksTextureLabel"
    IL_0141:  ldc.i4.1
    IL_0142:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_0147:  stfld      class Game.LabelWidget Game.WorldOptionsScreen::m_blocksTextureLabel
    IL_014c:  ldarg.0
    IL_014d:  ldarg.0
    IL_014e:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0153:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0158:  ldstr      "BlocksTextureDetails"
    IL_015d:  ldc.i4.1
    IL_015e:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_0163:  stfld      class Game.LabelWidget Game.WorldOptionsScreen::m_blocksTextureDetails
    IL_0168:  ldarg.0
    IL_0169:  ldarg.0
    IL_016a:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_016f:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0174:  ldstr      "BlocksTextureButton"
    IL_0179:  ldc.i4.1
    IL_017a:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_017f:  stfld      class Game.ButtonWidget Game.WorldOptionsScreen::m_blocksTextureButton
    IL_0184:  ldarg.0
    IL_0185:  ldarg.0
    IL_0186:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_018b:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0190:  ldstr      "SeaLevelOffset"
    IL_0195:  ldc.i4.1
    IL_0196:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.SliderWidget>(string,
                                                                                           bool)
    IL_019b:  stfld      class Game.SliderWidget Game.WorldOptionsScreen::m_seaLevelOffsetSlider
    IL_01a0:  ldarg.0
    IL_01a1:  ldarg.0
    IL_01a2:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_01a7:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_01ac:  ldstr      "TemperatureOffset"
    IL_01b1:  ldc.i4.1
    IL_01b2:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.SliderWidget>(string,
                                                                                           bool)
    IL_01b7:  stfld      class Game.SliderWidget Game.WorldOptionsScreen::m_temperatureOffsetSlider
    IL_01bc:  ldarg.0
    IL_01bd:  ldarg.0
    IL_01be:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_01c3:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_01c8:  ldstr      "HumidityOffset"
    IL_01cd:  ldc.i4.1
    IL_01ce:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.SliderWidget>(string,
                                                                                           bool)
    IL_01d3:  stfld      class Game.SliderWidget Game.WorldOptionsScreen::m_humidityOffsetSlider
    IL_01d8:  ldarg.0
    IL_01d9:  ldarg.0
    IL_01da:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_01df:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_01e4:  ldstr      "EnvironmentBehavior"
    IL_01e9:  ldc.i4.1
    IL_01ea:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_01ef:  stfld      class Game.ButtonWidget Game.WorldOptionsScreen::m_environmentBehaviorButton
    IL_01f4:  ldarg.0
    IL_01f5:  ldarg.0
    IL_01f6:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_01fb:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0200:  ldstr      "TimeOfDay"
    IL_0205:  ldc.i4.1
    IL_0206:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_020b:  stfld      class Game.ButtonWidget Game.WorldOptionsScreen::m_timeOfDayButton
    IL_0210:  ldarg.0
    IL_0211:  ldarg.0
    IL_0212:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0217:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_021c:  ldstr      "WeatherEffects"
    IL_0221:  ldc.i4.1
    IL_0222:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_0227:  stfld      class Game.ButtonWidget Game.WorldOptionsScreen::m_weatherEffectsButton
    IL_022c:  ldarg.0
    IL_022d:  ldarg.0
    IL_022e:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0233:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0238:  ldstr      "AdventureRespawn"
    IL_023d:  ldc.i4.1
    IL_023e:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_0243:  stfld      class Game.ButtonWidget Game.WorldOptionsScreen::m_adventureRespawnButton
    IL_0248:  ldarg.0
    IL_0249:  ldarg.0
    IL_024a:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_024f:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0254:  ldstr      "AdventureSurvivalMechanics"
    IL_0259:  ldc.i4.1
    IL_025a:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_025f:  stfld      class Game.ButtonWidget Game.WorldOptionsScreen::m_adventureSurvivalMechanicsButton
    IL_0264:  ldarg.0
    IL_0265:  ldarg.0
    IL_0266:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_026b:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0270:  ldstr      "TerrainGeneration"
    IL_0275:  ldc.i4.1
    IL_0276:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_027b:  stfld      class Game.ButtonWidget Game.WorldOptionsScreen::m_terrainGenerationButton
    IL_0280:  ldarg.0
    IL_0281:  ldarg.0
    IL_0282:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0287:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_028c:  ldstr      "FlatTerrainLevel"
    IL_0291:  ldc.i4.1
    IL_0292:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.SliderWidget>(string,
                                                                                           bool)
    IL_0297:  stfld      class Game.SliderWidget Game.WorldOptionsScreen::m_flatTerrainLevelSlider
    IL_029c:  ldarg.0
    IL_029d:  ldarg.0
    IL_029e:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_02a3:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_02a8:  ldstr      "FlatTerrainBlock"
    IL_02ad:  ldc.i4.1
    IL_02ae:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.BlockIconWidget>(string,
                                                                                              bool)
    IL_02b3:  stfld      class Game.BlockIconWidget Game.WorldOptionsScreen::m_flatTerrainBlock
    IL_02b8:  ldarg.0
    IL_02b9:  ldarg.0
    IL_02ba:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_02bf:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_02c4:  ldstr      "FlatTerrainBlockLabel"
    IL_02c9:  ldc.i4.1
    IL_02ca:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_02cf:  stfld      class Game.LabelWidget Game.WorldOptionsScreen::m_flatTerrainBlockLabel
    IL_02d4:  ldarg.0
    IL_02d5:  ldarg.0
    IL_02d6:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_02db:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_02e0:  ldstr      "FlatTerrainBlockButton"
    IL_02e5:  ldc.i4.1
    IL_02e6:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_02eb:  stfld      class Game.ButtonWidget Game.WorldOptionsScreen::m_flatTerrainBlockButton
    IL_02f0:  ldarg.0
    IL_02f1:  ldarg.0
    IL_02f2:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_02f7:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_02fc:  ldstr      "MagmaOcean"
    IL_0301:  ldc.i4.1
    IL_0302:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.CheckboxWidget>(string,
                                                                                             bool)
    IL_0307:  stfld      class Game.CheckboxWidget Game.WorldOptionsScreen::m_flatTerrainMagmaOceanCheckbox
    IL_030c:  ldarg.0
    IL_030d:  ldarg.0
    IL_030e:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0313:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0318:  ldstr      "Description"
    IL_031d:  ldc.i4.1
    IL_031e:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_0323:  stfld      class Game.LabelWidget Game.WorldOptionsScreen::m_descriptionLabel
    IL_0328:  ret
  } // end of method WorldOptionsScreen::.ctor

  .method public hidebysig static string 
          FormatOffset(float32 'value') cil managed
  {
    // 代码大小       47 (0x2f)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.r4     0.0
    IL_0006:  beq.s      IL_0029

    IL_0008:  ldarg.0
    IL_0009:  ldc.r4     0.0
    IL_000e:  bge.s      IL_0017

    IL_0010:  ldstr      ""
    IL_0015:  br.s       IL_001c

    IL_0017:  ldstr      "+"
    IL_001c:  ldarga.s   'value'
    IL_001e:  call       instance string [System.Runtime]System.Single::ToString()
    IL_0023:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_0028:  ret

    IL_0029:  ldstr      "Normal"
    IL_002e:  ret
  } // end of method WorldOptionsScreen::FormatOffset

  .method public hidebysig virtual instance void 
          Enter(object[] parameters) cil managed
  {
    // 代码大小       76 (0x4c)
    .maxstack  4
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldc.i4.0
    IL_0003:  ldelem.ref
    IL_0004:  castclass  Game.WorldInfo
    IL_0009:  stfld      class Game.WorldInfo Game.WorldOptionsScreen::m_worldInfo
    IL_000e:  ldarg.0
    IL_000f:  ldarg.1
    IL_0010:  ldc.i4.1
    IL_0011:  ldelem.ref
    IL_0012:  unbox.any  [System.Runtime]System.Boolean
    IL_0017:  stfld      bool Game.WorldOptionsScreen::m_isExistingWorld
    IL_001c:  ldarg.0
    IL_001d:  ldfld      class Game.LabelWidget Game.WorldOptionsScreen::m_descriptionLabel
    IL_0022:  ldstr      "EnvironmentBehaviorMode."
    IL_0027:  ldarg.0
    IL_0028:  ldfld      class Game.WorldInfo Game.WorldOptionsScreen::m_worldInfo
    IL_002d:  ldfld      valuetype Game.EnvironmentBehaviorMode Game.WorldInfo::EnvironmentBehaviorMode
    IL_0032:  box        Game.EnvironmentBehaviorMode
    IL_0037:  ldstr      ".Description"
    IL_003c:  call       string [System.Runtime]System.String::Concat(object,
                                                                      object,
                                                                      object)
    IL_0041:  call       string Game.StringsManager::GetString(string)
    IL_0046:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_004b:  ret
  } // end of method WorldOptionsScreen::Enter

  .method public hidebysig virtual instance void 
          Leave() cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.CharacterSkinsCache Game.WorldOptionsScreen::m_characterSkinsCache
    IL_0006:  callvirt   instance void Game.CharacterSkinsCache::Clear()
    IL_000b:  ldarg.0
    IL_000c:  ldfld      class Game.BlocksTexturesCache Game.WorldOptionsScreen::m_blockTexturesCache
    IL_0011:  callvirt   instance void Game.BlocksTexturesCache::Clear()
    IL_0016:  ret
  } // end of method WorldOptionsScreen::Leave

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       2210 (0x8a2)
    .maxstack  6
    .locals init (class [Engine]Engine.Graphics.Texture2D V_0,
             class [Engine]Engine.Graphics.Texture2D V_1,
             string V_2,
             class [System.Runtime]System.Collections.Generic.IList`1<int32> V_3,
             class [System.Runtime]System.Collections.Generic.IList`1<int32> V_4,
             class [System.Runtime]System.Collections.Generic.IList`1<int32> V_5,
             int32[] V_6)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ButtonWidget Game.WorldOptionsScreen::m_characterSkinButton
    IL_0006:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_000b:  brfalse.s  IL_005d

    IL_000d:  call       void Game.CharacterSkinsManager::UpdateCharacterSkinsList()
    IL_0012:  ldstr      "Select Character Skin"
    IL_0017:  call       valuetype [Engine]Engine.ReadOnlyList`1<string> Game.CharacterSkinsManager::get_CharacterSkinsNames()
    IL_001c:  box        valuetype [Engine]Engine.ReadOnlyList`1<string>
    IL_0021:  ldc.r4     64.
    IL_0026:  ldarg.0
    IL_0027:  ldftn      instance class Game.Widget Game.WorldOptionsScreen::'<Update>b__35_0'(object)
    IL_002d:  newobj     instance void class [System.Runtime]System.Func`2<object,class Game.Widget>::.ctor(object,
                                                                                                            native int)
    IL_0032:  ldarg.0
    IL_0033:  ldftn      instance void Game.WorldOptionsScreen::'<Update>b__35_1'(object)
    IL_0039:  newobj     instance void class [System.Runtime]System.Action`1<object>::.ctor(object,
                                                                                            native int)
    IL_003e:  newobj     instance void Game.ListSelectionDialog::.ctor(string,
                                                                       class [System.Runtime]System.Collections.IEnumerable,
                                                                       float32,
                                                                       class [System.Runtime]System.Func`2<object,class Game.Widget>,
                                                                       class [System.Runtime]System.Action`1<object>)
    IL_0043:  call       void Game.DialogsManager::ShowDialog(class Game.Dialog)
    IL_0048:  ldarg.0
    IL_0049:  ldfld      class Game.LabelWidget Game.WorldOptionsScreen::m_descriptionLabel
    IL_004e:  ldstr      "CharacterSkin.Description"
    IL_0053:  call       string Game.StringsManager::GetString(string)
    IL_0058:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_005d:  ldarg.0
    IL_005e:  ldfld      class Game.ButtonWidget Game.WorldOptionsScreen::m_blocksTextureButton
    IL_0063:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0068:  brfalse.s  IL_00ba

    IL_006a:  call       void Game.BlocksTexturesManager::UpdateBlocksTexturesList()
    IL_006f:  ldstr      "Select Blocks Texture"
    IL_0074:  call       valuetype [Engine]Engine.ReadOnlyList`1<string> Game.BlocksTexturesManager::get_BlockTexturesNames()
    IL_0079:  box        valuetype [Engine]Engine.ReadOnlyList`1<string>
    IL_007e:  ldc.r4     64.
    IL_0083:  ldarg.0
    IL_0084:  ldftn      instance class Game.Widget Game.WorldOptionsScreen::'<Update>b__35_2'(object)
    IL_008a:  newobj     instance void class [System.Runtime]System.Func`2<object,class Game.Widget>::.ctor(object,
                                                                                                            native int)
    IL_008f:  ldarg.0
    IL_0090:  ldftn      instance void Game.WorldOptionsScreen::'<Update>b__35_3'(object)
    IL_0096:  newobj     instance void class [System.Runtime]System.Action`1<object>::.ctor(object,
                                                                                            native int)
    IL_009b:  newobj     instance void Game.ListSelectionDialog::.ctor(string,
                                                                       class [System.Runtime]System.Collections.IEnumerable,
                                                                       float32,
                                                                       class [System.Runtime]System.Func`2<object,class Game.Widget>,
                                                                       class [System.Runtime]System.Action`1<object>)
    IL_00a0:  call       void Game.DialogsManager::ShowDialog(class Game.Dialog)
    IL_00a5:  ldarg.0
    IL_00a6:  ldfld      class Game.LabelWidget Game.WorldOptionsScreen::m_descriptionLabel
    IL_00ab:  ldstr      "BlocksTexture.Description"
    IL_00b0:  call       string Game.StringsManager::GetString(string)
    IL_00b5:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_00ba:  ldarg.0
    IL_00bb:  ldfld      class Game.SliderWidget Game.WorldOptionsScreen::m_seaLevelOffsetSlider
    IL_00c0:  callvirt   instance bool Game.SliderWidget::get_IsSliding()
    IL_00c5:  brfalse.s  IL_00fb

    IL_00c7:  ldarg.0
    IL_00c8:  ldfld      bool Game.WorldOptionsScreen::m_isExistingWorld
    IL_00cd:  brtrue.s   IL_00fb

    IL_00cf:  ldarg.0
    IL_00d0:  ldfld      class Game.WorldInfo Game.WorldOptionsScreen::m_worldInfo
    IL_00d5:  ldarg.0
    IL_00d6:  ldfld      class Game.SliderWidget Game.WorldOptionsScreen::m_seaLevelOffsetSlider
    IL_00db:  callvirt   instance float32 Game.SliderWidget::get_Value()
    IL_00e0:  conv.i4
    IL_00e1:  stfld      int32 Game.WorldInfo::SeaLevelOffset
    IL_00e6:  ldarg.0
    IL_00e7:  ldfld      class Game.LabelWidget Game.WorldOptionsScreen::m_descriptionLabel
    IL_00ec:  ldstr      "SeaLevelOffset.Description"
    IL_00f1:  call       string Game.StringsManager::GetString(string)
    IL_00f6:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_00fb:  ldarg.0
    IL_00fc:  ldfld      class Game.SliderWidget Game.WorldOptionsScreen::m_temperatureOffsetSlider
    IL_0101:  callvirt   instance bool Game.SliderWidget::get_IsSliding()
    IL_0106:  brfalse.s  IL_013b

    IL_0108:  ldarg.0
    IL_0109:  ldfld      bool Game.WorldOptionsScreen::m_isExistingWorld
    IL_010e:  brtrue.s   IL_013b

    IL_0110:  ldarg.0
    IL_0111:  ldfld      class Game.WorldInfo Game.WorldOptionsScreen::m_worldInfo
    IL_0116:  ldarg.0
    IL_0117:  ldfld      class Game.SliderWidget Game.WorldOptionsScreen::m_temperatureOffsetSlider
    IL_011c:  callvirt   instance float32 Game.SliderWidget::get_Value()
    IL_0121:  stfld      float32 Game.WorldInfo::TemperatureOffset
    IL_0126:  ldarg.0
    IL_0127:  ldfld      class Game.LabelWidget Game.WorldOptionsScreen::m_descriptionLabel
    IL_012c:  ldstr      "TemperatureOffset.Description"
    IL_0131:  call       string Game.StringsManager::GetString(string)
    IL_0136:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_013b:  ldarg.0
    IL_013c:  ldfld      class Game.SliderWidget Game.WorldOptionsScreen::m_humidityOffsetSlider
    IL_0141:  callvirt   instance bool Game.SliderWidget::get_IsSliding()
    IL_0146:  brfalse.s  IL_017b

    IL_0148:  ldarg.0
    IL_0149:  ldfld      bool Game.WorldOptionsScreen::m_isExistingWorld
    IL_014e:  brtrue.s   IL_017b

    IL_0150:  ldarg.0
    IL_0151:  ldfld      class Game.WorldInfo Game.WorldOptionsScreen::m_worldInfo
    IL_0156:  ldarg.0
    IL_0157:  ldfld      class Game.SliderWidget Game.WorldOptionsScreen::m_humidityOffsetSlider
    IL_015c:  callvirt   instance float32 Game.SliderWidget::get_Value()
    IL_0161:  stfld      float32 Game.WorldInfo::HumidityOffset
    IL_0166:  ldarg.0
    IL_0167:  ldfld      class Game.LabelWidget Game.WorldOptionsScreen::m_descriptionLabel
    IL_016c:  ldstr      "HumidityOffset.Description"
    IL_0171:  call       string Game.StringsManager::GetString(string)
    IL_0176:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_017b:  ldarg.0
    IL_017c:  ldfld      class Game.ButtonWidget Game.WorldOptionsScreen::m_environmentBehaviorButton
    IL_0181:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0186:  brfalse.s  IL_01ec

    IL_0188:  ldtoken    Game.EnvironmentBehaviorMode
    IL_018d:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_0192:  call       class [System.Runtime]System.Collections.Generic.IList`1<int32> Game.EnumUtils::GetEnumValues(class [System.Runtime]System.Type)
    IL_0197:  stloc.3
    IL_0198:  ldarg.0
    IL_0199:  ldfld      class Game.WorldInfo Game.WorldOptionsScreen::m_worldInfo
    IL_019e:  ldloc.3
    IL_019f:  ldarg.0
    IL_01a0:  ldfld      class Game.WorldInfo Game.WorldOptionsScreen::m_worldInfo
    IL_01a5:  ldfld      valuetype Game.EnvironmentBehaviorMode Game.WorldInfo::EnvironmentBehaviorMode
    IL_01aa:  callvirt   instance int32 class [System.Runtime]System.Collections.Generic.IList`1<int32>::IndexOf(!0)
    IL_01af:  ldc.i4.1
    IL_01b0:  add
    IL_01b1:  ldloc.3
    IL_01b2:  callvirt   instance int32 class [System.Runtime]System.Collections.Generic.ICollection`1<int32>::get_Count()
    IL_01b7:  rem
    IL_01b8:  stfld      valuetype Game.EnvironmentBehaviorMode Game.WorldInfo::EnvironmentBehaviorMode
    IL_01bd:  ldarg.0
    IL_01be:  ldfld      class Game.LabelWidget Game.WorldOptionsScreen::m_descriptionLabel
    IL_01c3:  ldstr      "EnvironmentBehaviorMode."
    IL_01c8:  ldarg.0
    IL_01c9:  ldfld      class Game.WorldInfo Game.WorldOptionsScreen::m_worldInfo
    IL_01ce:  ldfld      valuetype Game.EnvironmentBehaviorMode Game.WorldInfo::EnvironmentBehaviorMode
    IL_01d3:  box        Game.EnvironmentBehaviorMode
    IL_01d8:  ldstr      ".Description"
    IL_01dd:  call       string [System.Runtime]System.String::Concat(object,
                                                                      object,
                                                                      object)
    IL_01e2:  call       string Game.StringsManager::GetString(string)
    IL_01e7:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_01ec:  ldarg.0
    IL_01ed:  ldfld      class Game.ButtonWidget Game.WorldOptionsScreen::m_timeOfDayButton
    IL_01f2:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_01f7:  brfalse.s  IL_0260

    IL_01f9:  ldtoken    Game.TimeOfDayMode
    IL_01fe:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_0203:  call       class [System.Runtime]System.Collections.Generic.IList`1<int32> Game.EnumUtils::GetEnumValues(class [System.Runtime]System.Type)
    IL_0208:  stloc.s    V_4
    IL_020a:  ldarg.0
    IL_020b:  ldfld      class Game.WorldInfo Game.WorldOptionsScreen::m_worldInfo
    IL_0210:  ldloc.s    V_4
    IL_0212:  ldarg.0
    IL_0213:  ldfld      class Game.WorldInfo Game.WorldOptionsScreen::m_worldInfo
    IL_0218:  ldfld      valuetype Game.TimeOfDayMode Game.WorldInfo::TimeOfDayMode
    IL_021d:  callvirt   instance int32 class [System.Runtime]System.Collections.Generic.IList`1<int32>::IndexOf(!0)
    IL_0222:  ldc.i4.1
    IL_0223:  add
    IL_0224:  ldloc.s    V_4
    IL_0226:  callvirt   instance int32 class [System.Runtime]System.Collections.Generic.ICollection`1<int32>::get_Count()
    IL_022b:  rem
    IL_022c:  stfld      valuetype Game.TimeOfDayMode Game.WorldInfo::TimeOfDayMode
    IL_0231:  ldarg.0
    IL_0232:  ldfld      class Game.LabelWidget Game.WorldOptionsScreen::m_descriptionLabel
    IL_0237:  ldstr      "TimeOfDayMode."
    IL_023c:  ldarg.0
    IL_023d:  ldfld      class Game.WorldInfo Game.WorldOptionsScreen::m_worldInfo
    IL_0242:  ldfld      valuetype Game.TimeOfDayMode Game.WorldInfo::TimeOfDayMode
    IL_0247:  box        Game.TimeOfDayMode
    IL_024c:  ldstr      ".Description"
    IL_0251:  call       string [System.Runtime]System.String::Concat(object,
                                                                      object,
                                                                      object)
    IL_0256:  call       string Game.StringsManager::GetString(string)
    IL_025b:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0260:  ldarg.0
    IL_0261:  ldfld      class Game.ButtonWidget Game.WorldOptionsScreen::m_weatherEffectsButton
    IL_0266:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_026b:  brfalse.s  IL_02b0

    IL_026d:  ldarg.0
    IL_026e:  ldfld      class Game.WorldInfo Game.WorldOptionsScreen::m_worldInfo
    IL_0273:  ldarg.0
    IL_0274:  ldfld      class Game.WorldInfo Game.WorldOptionsScreen::m_worldInfo
    IL_0279:  ldfld      bool Game.WorldInfo::AreWeatherEffectsEnabled
    IL_027e:  ldc.i4.0
    IL_027f:  ceq
    IL_0281:  stfld      bool Game.WorldInfo::AreWeatherEffectsEnabled
    IL_0286:  ldarg.0
    IL_0287:  ldfld      class Game.LabelWidget Game.WorldOptionsScreen::m_descriptionLabel
    IL_028c:  ldstr      "WeatherMode."
    IL_0291:  ldarg.0
    IL_0292:  ldfld      class Game.WorldInfo Game.WorldOptionsScreen::m_worldInfo
    IL_0297:  ldflda     bool Game.WorldInfo::AreWeatherEffectsEnabled
    IL_029c:  call       instance string [System.Runtime]System.Boolean::ToString()
    IL_02a1:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_02a6:  call       string Game.StringsManager::GetString(string)
    IL_02ab:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_02b0:  ldarg.0
    IL_02b1:  ldfld      class Game.ButtonWidget Game.WorldOptionsScreen::m_adventureRespawnButton
    IL_02b6:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_02bb:  brfalse.s  IL_0300

    IL_02bd:  ldarg.0
    IL_02be:  ldfld      class Game.WorldInfo Game.WorldOptionsScreen::m_worldInfo
    IL_02c3:  ldarg.0
    IL_02c4:  ldfld      class Game.WorldInfo Game.WorldOptionsScreen::m_worldInfo
    IL_02c9:  ldfld      bool Game.WorldInfo::IsAdventureRespawnAllowed
    IL_02ce:  ldc.i4.0
    IL_02cf:  ceq
    IL_02d1:  stfld      bool Game.WorldInfo::IsAdventureRespawnAllowed
    IL_02d6:  ldarg.0
    IL_02d7:  ldfld      class Game.LabelWidget Game.WorldOptionsScreen::m_descriptionLabel
    IL_02dc:  ldstr      "AdventureRespawnMode."
    IL_02e1:  ldarg.0
    IL_02e2:  ldfld      class Game.WorldInfo Game.WorldOptionsScreen::m_worldInfo
    IL_02e7:  ldflda     bool Game.WorldInfo::IsAdventureRespawnAllowed
    IL_02ec:  call       instance string [System.Runtime]System.Boolean::ToString()
    IL_02f1:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_02f6:  call       string Game.StringsManager::GetString(string)
    IL_02fb:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0300:  ldarg.0
    IL_0301:  ldfld      class Game.ButtonWidget Game.WorldOptionsScreen::m_adventureSurvivalMechanicsButton
    IL_0306:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_030b:  brfalse.s  IL_0350

    IL_030d:  ldarg.0
    IL_030e:  ldfld      class Game.WorldInfo Game.WorldOptionsScreen::m_worldInfo
    IL_0313:  ldarg.0
    IL_0314:  ldfld      class Game.WorldInfo Game.WorldOptionsScreen::m_worldInfo
    IL_0319:  ldfld      bool Game.WorldInfo::AreAdventureSurvivalMechanicsEnabled
    IL_031e:  ldc.i4.0
    IL_031f:  ceq
    IL_0321:  stfld      bool Game.WorldInfo::AreAdventureSurvivalMechanicsEnabled
    IL_0326:  ldarg.0
    IL_0327:  ldfld      class Game.LabelWidget Game.WorldOptionsScreen::m_descriptionLabel
    IL_032c:  ldstr      "AdventureSurvivalMechanics."
    IL_0331:  ldarg.0
    IL_0332:  ldfld      class Game.WorldInfo Game.WorldOptionsScreen::m_worldInfo
    IL_0337:  ldflda     bool Game.WorldInfo::AreAdventureSurvivalMechanicsEnabled
    IL_033c:  call       instance string [System.Runtime]System.Boolean::ToString()
    IL_0341:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_0346:  call       string Game.StringsManager::GetString(string)
    IL_034b:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0350:  ldarg.0
    IL_0351:  ldfld      class Game.ButtonWidget Game.WorldOptionsScreen::m_terrainGenerationButton
    IL_0356:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_035b:  brfalse.s  IL_03cc

    IL_035d:  ldarg.0
    IL_035e:  ldfld      bool Game.WorldOptionsScreen::m_isExistingWorld
    IL_0363:  brtrue.s   IL_03cc

    IL_0365:  ldtoken    Game.TerrainGenerationMode
    IL_036a:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_036f:  call       class [System.Runtime]System.Collections.Generic.IList`1<int32> Game.EnumUtils::GetEnumValues(class [System.Runtime]System.Type)
    IL_0374:  stloc.s    V_5
    IL_0376:  ldarg.0
    IL_0377:  ldfld      class Game.WorldInfo Game.WorldOptionsScreen::m_worldInfo
    IL_037c:  ldloc.s    V_5
    IL_037e:  ldarg.0
    IL_037f:  ldfld      class Game.WorldInfo Game.WorldOptionsScreen::m_worldInfo
    IL_0384:  ldfld      valuetype Game.TerrainGenerationMode Game.WorldInfo::TerrainGenerationMode
    IL_0389:  callvirt   instance int32 class [System.Runtime]System.Collections.Generic.IList`1<int32>::IndexOf(!0)
    IL_038e:  ldc.i4.1
    IL_038f:  add
    IL_0390:  ldloc.s    V_5
    IL_0392:  callvirt   instance int32 class [System.Runtime]System.Collections.Generic.ICollection`1<int32>::get_Count()
    IL_0397:  rem
    IL_0398:  stfld      valuetype Game.TerrainGenerationMode Game.WorldInfo::TerrainGenerationMode
    IL_039d:  ldarg.0
    IL_039e:  ldfld      class Game.LabelWidget Game.WorldOptionsScreen::m_descriptionLabel
    IL_03a3:  ldstr      "TerrainGenerationMode."
    IL_03a8:  ldarg.0
    IL_03a9:  ldfld      class Game.WorldInfo Game.WorldOptionsScreen::m_worldInfo
    IL_03ae:  ldfld      valuetype Game.TerrainGenerationMode Game.WorldInfo::TerrainGenerationMode
    IL_03b3:  box        Game.TerrainGenerationMode
    IL_03b8:  ldstr      ".Description"
    IL_03bd:  call       string [System.Runtime]System.String::Concat(object,
                                                                      object,
                                                                      object)
    IL_03c2:  call       string Game.StringsManager::GetString(string)
    IL_03c7:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_03cc:  ldarg.0
    IL_03cd:  ldfld      class Game.SliderWidget Game.WorldOptionsScreen::m_flatTerrainLevelSlider
    IL_03d2:  callvirt   instance bool Game.SliderWidget::get_IsSliding()
    IL_03d7:  brfalse.s  IL_040d

    IL_03d9:  ldarg.0
    IL_03da:  ldfld      bool Game.WorldOptionsScreen::m_isExistingWorld
    IL_03df:  brtrue.s   IL_040d

    IL_03e1:  ldarg.0
    IL_03e2:  ldfld      class Game.WorldInfo Game.WorldOptionsScreen::m_worldInfo
    IL_03e7:  ldarg.0
    IL_03e8:  ldfld      class Game.SliderWidget Game.WorldOptionsScreen::m_flatTerrainLevelSlider
    IL_03ed:  callvirt   instance float32 Game.SliderWidget::get_Value()
    IL_03f2:  conv.i4
    IL_03f3:  stfld      int32 Game.WorldInfo::TerrainLevel
    IL_03f8:  ldarg.0
    IL_03f9:  ldfld      class Game.LabelWidget Game.WorldOptionsScreen::m_descriptionLabel
    IL_03fe:  ldstr      "FlatTerrainLevel.Description"
    IL_0403:  call       string Game.StringsManager::GetString(string)
    IL_0408:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_040d:  ldarg.0
    IL_040e:  ldfld      class Game.ButtonWidget Game.WorldOptionsScreen::m_flatTerrainBlockButton
    IL_0413:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0418:  brfalse.s  IL_0477

    IL_041a:  ldarg.0
    IL_041b:  ldfld      bool Game.WorldOptionsScreen::m_isExistingWorld
    IL_0420:  brtrue.s   IL_0477

    IL_0422:  ldc.i4.s   19
    IL_0424:  newarr     [System.Runtime]System.Int32
    IL_0429:  dup
    IL_042a:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=76' '<PrivateImplementationDetails>'::'7A229EC07347BD41B2EAAE72AEA774F9117F5001'
    IL_042f:  call       void [System.Runtime]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [System.Runtime]System.Array,
                                                                                                              valuetype [System.Runtime]System.RuntimeFieldHandle)
    IL_0434:  stloc.s    V_6
    IL_0436:  ldstr      "Select Block"
    IL_043b:  ldloc.s    V_6
    IL_043d:  ldc.r4     72.
    IL_0442:  ldsfld     class [System.Runtime]System.Func`2<object,class Game.Widget> Game.WorldOptionsScreen/'<>c'::'<>9__35_4'
    IL_0447:  dup
    IL_0448:  brtrue.s   IL_0461

    IL_044a:  pop
    IL_044b:  ldsfld     class Game.WorldOptionsScreen/'<>c' Game.WorldOptionsScreen/'<>c'::'<>9'
    IL_0450:  ldftn      instance class Game.Widget Game.WorldOptionsScreen/'<>c'::'<Update>b__35_4'(object)
    IL_0456:  newobj     instance void class [System.Runtime]System.Func`2<object,class Game.Widget>::.ctor(object,
                                                                                                            native int)
    IL_045b:  dup
    IL_045c:  stsfld     class [System.Runtime]System.Func`2<object,class Game.Widget> Game.WorldOptionsScreen/'<>c'::'<>9__35_4'
    IL_0461:  ldarg.0
    IL_0462:  ldftn      instance void Game.WorldOptionsScreen::'<Update>b__35_5'(object)
    IL_0468:  newobj     instance void class [System.Runtime]System.Action`1<object>::.ctor(object,
                                                                                            native int)
    IL_046d:  newobj     instance void Game.ListSelectionDialog::.ctor(string,
                                                                       class [System.Runtime]System.Collections.IEnumerable,
                                                                       float32,
                                                                       class [System.Runtime]System.Func`2<object,class Game.Widget>,
                                                                       class [System.Runtime]System.Action`1<object>)
    IL_0472:  call       void Game.DialogsManager::ShowDialog(class Game.Dialog)
    IL_0477:  ldarg.0
    IL_0478:  ldfld      class Game.CheckboxWidget Game.WorldOptionsScreen::m_flatTerrainMagmaOceanCheckbox
    IL_047d:  callvirt   instance bool Game.CheckboxWidget::get_IsClicked()
    IL_0482:  brfalse.s  IL_04b9

    IL_0484:  ldarg.0
    IL_0485:  ldfld      class Game.WorldInfo Game.WorldOptionsScreen::m_worldInfo
    IL_048a:  ldarg.0
    IL_048b:  ldfld      class Game.WorldInfo Game.WorldOptionsScreen::m_worldInfo
    IL_0490:  ldfld      int32 Game.WorldInfo::TerrainOceanBlockIndex
    IL_0495:  ldc.i4.s   18
    IL_0497:  beq.s      IL_049d

    IL_0499:  ldc.i4.s   18
    IL_049b:  br.s       IL_049f

    IL_049d:  ldc.i4.s   92
    IL_049f:  stfld      int32 Game.WorldInfo::TerrainOceanBlockIndex
    IL_04a4:  ldarg.0
    IL_04a5:  ldfld      class Game.LabelWidget Game.WorldOptionsScreen::m_descriptionLabel
    IL_04aa:  ldstr      "FlatTerrainMagmaOcean.Description"
    IL_04af:  call       string Game.StringsManager::GetString(string)
    IL_04b4:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_04b9:  ldarg.0
    IL_04ba:  ldfld      class Game.Widget Game.WorldOptionsScreen::m_creativeModePanel
    IL_04bf:  ldarg.0
    IL_04c0:  ldfld      class Game.WorldInfo Game.WorldOptionsScreen::m_worldInfo
    IL_04c5:  ldfld      valuetype Game.GameMode Game.WorldInfo::GameMode
    IL_04ca:  ldc.i4.0
    IL_04cb:  ceq
    IL_04cd:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_04d2:  ldarg.0
    IL_04d3:  ldfld      class Game.Widget Game.WorldOptionsScreen::m_newWorldOnlyPanel1
    IL_04d8:  ldarg.0
    IL_04d9:  ldfld      bool Game.WorldOptionsScreen::m_isExistingWorld
    IL_04de:  ldc.i4.0
    IL_04df:  ceq
    IL_04e1:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_04e6:  ldarg.0
    IL_04e7:  ldfld      class Game.Widget Game.WorldOptionsScreen::m_newWorldOnlyPanel2
    IL_04ec:  ldarg.0
    IL_04ed:  ldfld      bool Game.WorldOptionsScreen::m_isExistingWorld
    IL_04f2:  ldc.i4.0
    IL_04f3:  ceq
    IL_04f5:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_04fa:  ldarg.0
    IL_04fb:  ldfld      class Game.Widget Game.WorldOptionsScreen::m_flatTerrainPanel
    IL_0500:  ldarg.0
    IL_0501:  ldfld      class Game.WorldInfo Game.WorldOptionsScreen::m_worldInfo
    IL_0506:  ldfld      valuetype Game.TerrainGenerationMode Game.WorldInfo::TerrainGenerationMode
    IL_050b:  ldc.i4.1
    IL_050c:  ceq
    IL_050e:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0513:  ldarg.0
    IL_0514:  ldfld      class Game.ModelWidget Game.WorldOptionsScreen::m_characterSkinModel
    IL_0519:  ldstr      "Models/Human"
    IL_051e:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Model>(string)
    IL_0523:  callvirt   instance void Game.ModelWidget::set_Model(class [Engine]Engine.Graphics.Model)
    IL_0528:  ldarg.0
    IL_0529:  ldfld      class Game.CharacterSkinsCache Game.WorldOptionsScreen::m_characterSkinsCache
    IL_052e:  ldarg.0
    IL_052f:  ldfld      class Game.WorldInfo Game.WorldOptionsScreen::m_worldInfo
    IL_0534:  ldfld      string Game.WorldInfo::CharacterSkinName
    IL_0539:  callvirt   instance class [Engine]Engine.Graphics.Texture2D Game.CharacterSkinsCache::GetTexture(string)
    IL_053e:  stloc.0
    IL_053f:  ldarg.0
    IL_0540:  ldfld      class Game.ModelWidget Game.WorldOptionsScreen::m_characterSkinModel
    IL_0545:  ldloc.0
    IL_0546:  callvirt   instance void Game.ModelWidget::set_TextureOverride(class [Engine]Engine.Graphics.Texture2D)
    IL_054b:  ldarg.0
    IL_054c:  ldfld      class Game.LabelWidget Game.WorldOptionsScreen::m_characterSkinLabel
    IL_0551:  ldarg.0
    IL_0552:  ldfld      class Game.WorldInfo Game.WorldOptionsScreen::m_worldInfo
    IL_0557:  ldfld      string Game.WorldInfo::CharacterSkinName
    IL_055c:  call       string Game.CharacterSkinsManager::GetDisplayName(string)
    IL_0561:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0566:  ldarg.0
    IL_0567:  ldfld      class Game.LabelWidget Game.WorldOptionsScreen::m_characterSkinDetails
    IL_056c:  ldstr      "{0}x{1}"
    IL_0571:  ldc.i4.2
    IL_0572:  newarr     [System.Runtime]System.Object
    IL_0577:  dup
    IL_0578:  ldc.i4.0
    IL_0579:  ldloc.0
    IL_057a:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Width()
    IL_057f:  box        [System.Runtime]System.Int32
    IL_0584:  stelem.ref
    IL_0585:  dup
    IL_0586:  ldc.i4.1
    IL_0587:  ldloc.0
    IL_0588:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Height()
    IL_058d:  box        [System.Runtime]System.Int32
    IL_0592:  stelem.ref
    IL_0593:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0598:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_059d:  ldarg.0
    IL_059e:  ldfld      class Game.BlocksTexturesCache Game.WorldOptionsScreen::m_blockTexturesCache
    IL_05a3:  ldarg.0
    IL_05a4:  ldfld      class Game.WorldInfo Game.WorldOptionsScreen::m_worldInfo
    IL_05a9:  ldfld      string Game.WorldInfo::BlocksTextureName
    IL_05ae:  callvirt   instance class [Engine]Engine.Graphics.Texture2D Game.BlocksTexturesCache::GetTexture(string)
    IL_05b3:  stloc.1
    IL_05b4:  ldarg.0
    IL_05b5:  ldfld      class Game.RectangleWidget Game.WorldOptionsScreen::m_blocksTextureIcon
    IL_05ba:  ldloc.1
    IL_05bb:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_05c0:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::One
    IL_05c5:  newobj     instance void Game.Subtexture::.ctor(class [Engine]Engine.Graphics.Texture2D,
                                                              valuetype [Engine]Engine.Vector2,
                                                              valuetype [Engine]Engine.Vector2)
    IL_05ca:  callvirt   instance void Game.RectangleWidget::set_Subtexture(class Game.Subtexture)
    IL_05cf:  ldarg.0
    IL_05d0:  ldfld      class Game.LabelWidget Game.WorldOptionsScreen::m_blocksTextureLabel
    IL_05d5:  ldarg.0
    IL_05d6:  ldfld      class Game.WorldInfo Game.WorldOptionsScreen::m_worldInfo
    IL_05db:  ldfld      string Game.WorldInfo::BlocksTextureName
    IL_05e0:  call       string Game.BlocksTexturesManager::GetDisplayName(string)
    IL_05e5:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_05ea:  ldarg.0
    IL_05eb:  ldfld      class Game.LabelWidget Game.WorldOptionsScreen::m_blocksTextureDetails
    IL_05f0:  ldstr      "{0}x{1}"
    IL_05f5:  ldc.i4.2
    IL_05f6:  newarr     [System.Runtime]System.Object
    IL_05fb:  dup
    IL_05fc:  ldc.i4.0
    IL_05fd:  ldloc.1
    IL_05fe:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Width()
    IL_0603:  box        [System.Runtime]System.Int32
    IL_0608:  stelem.ref
    IL_0609:  dup
    IL_060a:  ldc.i4.1
    IL_060b:  ldloc.1
    IL_060c:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Height()
    IL_0611:  box        [System.Runtime]System.Int32
    IL_0616:  stelem.ref
    IL_0617:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_061c:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0621:  ldarg.0
    IL_0622:  ldfld      class Game.SliderWidget Game.WorldOptionsScreen::m_seaLevelOffsetSlider
    IL_0627:  ldarg.0
    IL_0628:  ldfld      class Game.WorldInfo Game.WorldOptionsScreen::m_worldInfo
    IL_062d:  ldfld      int32 Game.WorldInfo::SeaLevelOffset
    IL_0632:  conv.r4
    IL_0633:  callvirt   instance void Game.SliderWidget::set_Value(float32)
    IL_0638:  ldarg.0
    IL_0639:  ldfld      class Game.SliderWidget Game.WorldOptionsScreen::m_seaLevelOffsetSlider
    IL_063e:  ldarg.0
    IL_063f:  ldfld      class Game.WorldInfo Game.WorldOptionsScreen::m_worldInfo
    IL_0644:  ldfld      int32 Game.WorldInfo::SeaLevelOffset
    IL_0649:  conv.r4
    IL_064a:  call       string Game.WorldOptionsScreen::FormatOffset(float32)
    IL_064f:  callvirt   instance void Game.SliderWidget::set_Text(string)
    IL_0654:  ldarg.0
    IL_0655:  ldfld      class Game.SliderWidget Game.WorldOptionsScreen::m_temperatureOffsetSlider
    IL_065a:  ldarg.0
    IL_065b:  ldfld      class Game.WorldInfo Game.WorldOptionsScreen::m_worldInfo
    IL_0660:  ldfld      float32 Game.WorldInfo::TemperatureOffset
    IL_0665:  callvirt   instance void Game.SliderWidget::set_Value(float32)
    IL_066a:  ldarg.0
    IL_066b:  ldfld      class Game.SliderWidget Game.WorldOptionsScreen::m_temperatureOffsetSlider
    IL_0670:  ldarg.0
    IL_0671:  ldfld      class Game.WorldInfo Game.WorldOptionsScreen::m_worldInfo
    IL_0676:  ldfld      float32 Game.WorldInfo::TemperatureOffset
    IL_067b:  call       string Game.WorldOptionsScreen::FormatOffset(float32)
    IL_0680:  callvirt   instance void Game.SliderWidget::set_Text(string)
    IL_0685:  ldarg.0
    IL_0686:  ldfld      class Game.SliderWidget Game.WorldOptionsScreen::m_humidityOffsetSlider
    IL_068b:  ldarg.0
    IL_068c:  ldfld      class Game.WorldInfo Game.WorldOptionsScreen::m_worldInfo
    IL_0691:  ldfld      float32 Game.WorldInfo::HumidityOffset
    IL_0696:  callvirt   instance void Game.SliderWidget::set_Value(float32)
    IL_069b:  ldarg.0
    IL_069c:  ldfld      class Game.SliderWidget Game.WorldOptionsScreen::m_humidityOffsetSlider
    IL_06a1:  ldarg.0
    IL_06a2:  ldfld      class Game.WorldInfo Game.WorldOptionsScreen::m_worldInfo
    IL_06a7:  ldfld      float32 Game.WorldInfo::HumidityOffset
    IL_06ac:  call       string Game.WorldOptionsScreen::FormatOffset(float32)
    IL_06b1:  callvirt   instance void Game.SliderWidget::set_Text(string)
    IL_06b6:  ldarg.0
    IL_06b7:  ldfld      class Game.ButtonWidget Game.WorldOptionsScreen::m_environmentBehaviorButton
    IL_06bc:  ldarg.0
    IL_06bd:  ldfld      class Game.WorldInfo Game.WorldOptionsScreen::m_worldInfo
    IL_06c2:  ldflda     valuetype Game.EnvironmentBehaviorMode Game.WorldInfo::EnvironmentBehaviorMode
    IL_06c7:  constrained. Game.EnvironmentBehaviorMode
    IL_06cd:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_06d2:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_06d7:  ldarg.0
    IL_06d8:  ldfld      class Game.ButtonWidget Game.WorldOptionsScreen::m_timeOfDayButton
    IL_06dd:  ldarg.0
    IL_06de:  ldfld      class Game.WorldInfo Game.WorldOptionsScreen::m_worldInfo
    IL_06e3:  ldflda     valuetype Game.TimeOfDayMode Game.WorldInfo::TimeOfDayMode
    IL_06e8:  constrained. Game.TimeOfDayMode
    IL_06ee:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_06f3:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_06f8:  ldarg.0
    IL_06f9:  ldfld      class Game.ButtonWidget Game.WorldOptionsScreen::m_weatherEffectsButton
    IL_06fe:  ldarg.0
    IL_06ff:  ldfld      class Game.WorldInfo Game.WorldOptionsScreen::m_worldInfo
    IL_0704:  ldfld      bool Game.WorldInfo::AreWeatherEffectsEnabled
    IL_0709:  brtrue.s   IL_0712

    IL_070b:  ldstr      "Disabled"
    IL_0710:  br.s       IL_0717

    IL_0712:  ldstr      "Enabled"
    IL_0717:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_071c:  ldarg.0
    IL_071d:  ldfld      class Game.ButtonWidget Game.WorldOptionsScreen::m_adventureRespawnButton
    IL_0722:  ldarg.0
    IL_0723:  ldfld      class Game.WorldInfo Game.WorldOptionsScreen::m_worldInfo
    IL_0728:  ldfld      bool Game.WorldInfo::IsAdventureRespawnAllowed
    IL_072d:  brtrue.s   IL_0736

    IL_072f:  ldstr      "Not Allowed"
    IL_0734:  br.s       IL_073b

    IL_0736:  ldstr      "Allowed"
    IL_073b:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_0740:  ldarg.0
    IL_0741:  ldfld      class Game.ButtonWidget Game.WorldOptionsScreen::m_adventureSurvivalMechanicsButton
    IL_0746:  ldarg.0
    IL_0747:  ldfld      class Game.WorldInfo Game.WorldOptionsScreen::m_worldInfo
    IL_074c:  ldfld      bool Game.WorldInfo::AreAdventureSurvivalMechanicsEnabled
    IL_0751:  brtrue.s   IL_075a

    IL_0753:  ldstr      "Disabled"
    IL_0758:  br.s       IL_075f

    IL_075a:  ldstr      "Enabled"
    IL_075f:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_0764:  ldarg.0
    IL_0765:  ldfld      class Game.ButtonWidget Game.WorldOptionsScreen::m_terrainGenerationButton
    IL_076a:  ldarg.0
    IL_076b:  ldfld      class Game.WorldInfo Game.WorldOptionsScreen::m_worldInfo
    IL_0770:  ldflda     valuetype Game.TerrainGenerationMode Game.WorldInfo::TerrainGenerationMode
    IL_0775:  constrained. Game.TerrainGenerationMode
    IL_077b:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_0780:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_0785:  ldarg.0
    IL_0786:  ldfld      class Game.SliderWidget Game.WorldOptionsScreen::m_flatTerrainLevelSlider
    IL_078b:  ldarg.0
    IL_078c:  ldfld      class Game.WorldInfo Game.WorldOptionsScreen::m_worldInfo
    IL_0791:  ldfld      int32 Game.WorldInfo::TerrainLevel
    IL_0796:  conv.r4
    IL_0797:  callvirt   instance void Game.SliderWidget::set_Value(float32)
    IL_079c:  ldarg.0
    IL_079d:  ldfld      class Game.SliderWidget Game.WorldOptionsScreen::m_flatTerrainLevelSlider
    IL_07a2:  ldarg.0
    IL_07a3:  ldfld      class Game.WorldInfo Game.WorldOptionsScreen::m_worldInfo
    IL_07a8:  ldflda     int32 Game.WorldInfo::TerrainLevel
    IL_07ad:  call       instance string [System.Runtime]System.Int32::ToString()
    IL_07b2:  callvirt   instance void Game.SliderWidget::set_Text(string)
    IL_07b7:  ldarg.0
    IL_07b8:  ldfld      class Game.BlockIconWidget Game.WorldOptionsScreen::m_flatTerrainBlock
    IL_07bd:  ldarg.0
    IL_07be:  ldfld      class Game.WorldInfo Game.WorldOptionsScreen::m_worldInfo
    IL_07c3:  ldfld      int32 Game.WorldInfo::TerrainBlockIndex
    IL_07c8:  callvirt   instance void Game.BlockIconWidget::set_Contents(int32)
    IL_07cd:  ldarg.0
    IL_07ce:  ldfld      class Game.CheckboxWidget Game.WorldOptionsScreen::m_flatTerrainMagmaOceanCheckbox
    IL_07d3:  ldarg.0
    IL_07d4:  ldfld      class Game.WorldInfo Game.WorldOptionsScreen::m_worldInfo
    IL_07d9:  ldfld      int32 Game.WorldInfo::TerrainOceanBlockIndex
    IL_07de:  ldc.i4.s   92
    IL_07e0:  ceq
    IL_07e2:  callvirt   instance void Game.CheckboxWidget::set_IsChecked(bool)
    IL_07e7:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_07ec:  ldarg.0
    IL_07ed:  ldfld      class Game.WorldInfo Game.WorldOptionsScreen::m_worldInfo
    IL_07f2:  ldfld      int32 Game.WorldInfo::TerrainBlockIndex
    IL_07f7:  ldelem.ref
    IL_07f8:  brtrue.s   IL_0801

    IL_07fa:  ldsfld     string [System.Runtime]System.String::Empty
    IL_07ff:  br.s       IL_0828

    IL_0801:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0806:  ldarg.0
    IL_0807:  ldfld      class Game.WorldInfo Game.WorldOptionsScreen::m_worldInfo
    IL_080c:  ldfld      int32 Game.WorldInfo::TerrainBlockIndex
    IL_0811:  ldelem.ref
    IL_0812:  ldnull
    IL_0813:  ldarg.0
    IL_0814:  ldfld      class Game.WorldInfo Game.WorldOptionsScreen::m_worldInfo
    IL_0819:  ldfld      int32 Game.WorldInfo::TerrainBlockIndex
    IL_081e:  call       int32 Game.TerrainData::MakeBlockValue(int32)
    IL_0823:  callvirt   instance string Game.Block::GetDisplayName(class Game.SubsystemTerrain,
                                                                    int32)
    IL_0828:  stloc.2
    IL_0829:  ldarg.0
    IL_082a:  ldfld      class Game.LabelWidget Game.WorldOptionsScreen::m_flatTerrainBlockLabel
    IL_082f:  ldloc.2
    IL_0830:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_0835:  ldc.i4.s   10
    IL_0837:  bgt.s      IL_083c

    IL_0839:  ldloc.2
    IL_083a:  br.s       IL_084f

    IL_083c:  ldloc.2
    IL_083d:  ldc.i4.0
    IL_083e:  ldc.i4.s   10
    IL_0840:  callvirt   instance string [System.Runtime]System.String::Substring(int32,
                                                                                  int32)
    IL_0845:  ldstr      "..."
    IL_084a:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_084f:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0854:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_0859:  ldfld      bool Game.InputState::Back
    IL_085e:  brtrue.s   IL_087d

    IL_0860:  ldarg.0
    IL_0861:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0866:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_086b:  ldstr      "TopBar.Back"
    IL_0870:  ldc.i4.1
    IL_0871:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_0876:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_087b:  brfalse.s  IL_08a1

    IL_087d:  ldsfld     class [System.Runtime]System.Action Game.WorldOptionsScreen/'<>c'::'<>9__35_6'
    IL_0882:  dup
    IL_0883:  brtrue.s   IL_089c

    IL_0885:  pop
    IL_0886:  ldsfld     class Game.WorldOptionsScreen/'<>c' Game.WorldOptionsScreen/'<>c'::'<>9'
    IL_088b:  ldftn      instance void Game.WorldOptionsScreen/'<>c'::'<Update>b__35_6'()
    IL_0891:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0896:  dup
    IL_0897:  stsfld     class [System.Runtime]System.Action Game.WorldOptionsScreen/'<>c'::'<>9__35_6'
    IL_089c:  call       void Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
    IL_08a1:  ret
  } // end of method WorldOptionsScreen::Update

  .method private hidebysig instance class Game.Widget 
          '<Update>b__35_0'(object item) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       183 (0xb7)
    .maxstack  6
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0,
             class Game.ContainerWidget V_1,
             class [Engine]Engine.Graphics.Texture2D V_2)
    IL_0000:  ldstr      "Widgets/CharacterSkinItem"
    IL_0005:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_000a:  stloc.0
    IL_000b:  ldarg.0
    IL_000c:  ldloc.0
    IL_000d:  ldnull
    IL_000e:  call       class Game.Widget Game.WidgetsManager::LoadWidget(object,
                                                                           class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                           class Game.ContainerWidget)
    IL_0013:  castclass  Game.ContainerWidget
    IL_0018:  stloc.1
    IL_0019:  ldarg.0
    IL_001a:  ldfld      class Game.CharacterSkinsCache Game.WorldOptionsScreen::m_characterSkinsCache
    IL_001f:  ldarg.1
    IL_0020:  castclass  [System.Runtime]System.String
    IL_0025:  callvirt   instance class [Engine]Engine.Graphics.Texture2D Game.CharacterSkinsCache::GetTexture(string)
    IL_002a:  stloc.2
    IL_002b:  ldloc.1
    IL_002c:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0031:  ldstr      "CharacterSkinItem.Text"
    IL_0036:  ldc.i4.1
    IL_0037:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_003c:  ldarg.1
    IL_003d:  castclass  [System.Runtime]System.String
    IL_0042:  call       string Game.CharacterSkinsManager::GetDisplayName(string)
    IL_0047:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_004c:  ldloc.1
    IL_004d:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0052:  ldstr      "CharacterSkinItem.Details"
    IL_0057:  ldc.i4.1
    IL_0058:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_005d:  ldstr      "{0}x{1}"
    IL_0062:  ldc.i4.2
    IL_0063:  newarr     [System.Runtime]System.Object
    IL_0068:  dup
    IL_0069:  ldc.i4.0
    IL_006a:  ldloc.2
    IL_006b:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Width()
    IL_0070:  box        [System.Runtime]System.Int32
    IL_0075:  stelem.ref
    IL_0076:  dup
    IL_0077:  ldc.i4.1
    IL_0078:  ldloc.2
    IL_0079:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Height()
    IL_007e:  box        [System.Runtime]System.Int32
    IL_0083:  stelem.ref
    IL_0084:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0089:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_008e:  ldloc.1
    IL_008f:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0094:  ldstr      "CharacterSkinItem.Model"
    IL_0099:  ldc.i4.1
    IL_009a:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ModelWidget>(string,
                                                                                          bool)
    IL_009f:  dup
    IL_00a0:  ldstr      "Models/Human"
    IL_00a5:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Model>(string)
    IL_00aa:  callvirt   instance void Game.ModelWidget::set_Model(class [Engine]Engine.Graphics.Model)
    IL_00af:  ldloc.2
    IL_00b0:  callvirt   instance void Game.ModelWidget::set_TextureOverride(class [Engine]Engine.Graphics.Texture2D)
    IL_00b5:  ldloc.1
    IL_00b6:  ret
  } // end of method WorldOptionsScreen::'<Update>b__35_0'

  .method private hidebysig instance void 
          '<Update>b__35_1'(object item) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.WorldInfo Game.WorldOptionsScreen::m_worldInfo
    IL_0006:  ldarg.1
    IL_0007:  castclass  [System.Runtime]System.String
    IL_000c:  stfld      string Game.WorldInfo::CharacterSkinName
    IL_0011:  ret
  } // end of method WorldOptionsScreen::'<Update>b__35_1'

  .method private hidebysig instance class Game.Widget 
          '<Update>b__35_2'(object item) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       182 (0xb6)
    .maxstack  6
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0,
             class Game.ContainerWidget V_1,
             class [Engine]Engine.Graphics.Texture2D V_2)
    IL_0000:  ldstr      "Widgets/BlocksTextureItem"
    IL_0005:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_000a:  stloc.0
    IL_000b:  ldarg.0
    IL_000c:  ldloc.0
    IL_000d:  ldnull
    IL_000e:  call       class Game.Widget Game.WidgetsManager::LoadWidget(object,
                                                                           class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                           class Game.ContainerWidget)
    IL_0013:  castclass  Game.ContainerWidget
    IL_0018:  stloc.1
    IL_0019:  ldarg.0
    IL_001a:  ldfld      class Game.BlocksTexturesCache Game.WorldOptionsScreen::m_blockTexturesCache
    IL_001f:  ldarg.1
    IL_0020:  castclass  [System.Runtime]System.String
    IL_0025:  callvirt   instance class [Engine]Engine.Graphics.Texture2D Game.BlocksTexturesCache::GetTexture(string)
    IL_002a:  stloc.2
    IL_002b:  ldloc.1
    IL_002c:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0031:  ldstr      "BlocksTextureItem.Text"
    IL_0036:  ldc.i4.1
    IL_0037:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_003c:  ldarg.1
    IL_003d:  castclass  [System.Runtime]System.String
    IL_0042:  call       string Game.BlocksTexturesManager::GetDisplayName(string)
    IL_0047:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_004c:  ldloc.1
    IL_004d:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0052:  ldstr      "BlocksTextureItem.Details"
    IL_0057:  ldc.i4.1
    IL_0058:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_005d:  ldstr      "{0}x{1}"
    IL_0062:  ldc.i4.2
    IL_0063:  newarr     [System.Runtime]System.Object
    IL_0068:  dup
    IL_0069:  ldc.i4.0
    IL_006a:  ldloc.2
    IL_006b:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Width()
    IL_0070:  box        [System.Runtime]System.Int32
    IL_0075:  stelem.ref
    IL_0076:  dup
    IL_0077:  ldc.i4.1
    IL_0078:  ldloc.2
    IL_0079:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Height()
    IL_007e:  box        [System.Runtime]System.Int32
    IL_0083:  stelem.ref
    IL_0084:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0089:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_008e:  ldloc.1
    IL_008f:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0094:  ldstr      "BlocksTextureItem.Icon"
    IL_0099:  ldc.i4.1
    IL_009a:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.RectangleWidget>(string,
                                                                                              bool)
    IL_009f:  ldloc.2
    IL_00a0:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_00a5:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::One
    IL_00aa:  newobj     instance void Game.Subtexture::.ctor(class [Engine]Engine.Graphics.Texture2D,
                                                              valuetype [Engine]Engine.Vector2,
                                                              valuetype [Engine]Engine.Vector2)
    IL_00af:  callvirt   instance void Game.RectangleWidget::set_Subtexture(class Game.Subtexture)
    IL_00b4:  ldloc.1
    IL_00b5:  ret
  } // end of method WorldOptionsScreen::'<Update>b__35_2'

  .method private hidebysig instance void 
          '<Update>b__35_3'(object item) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.WorldInfo Game.WorldOptionsScreen::m_worldInfo
    IL_0006:  ldarg.1
    IL_0007:  castclass  [System.Runtime]System.String
    IL_000c:  stfld      string Game.WorldInfo::BlocksTextureName
    IL_0011:  ret
  } // end of method WorldOptionsScreen::'<Update>b__35_3'

  .method private hidebysig instance void 
          '<Update>b__35_5'(object index) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.WorldInfo Game.WorldOptionsScreen::m_worldInfo
    IL_0006:  ldarg.1
    IL_0007:  unbox.any  [System.Runtime]System.Int32
    IL_000c:  stfld      int32 Game.WorldInfo::TerrainBlockIndex
    IL_0011:  ret
  } // end of method WorldOptionsScreen::'<Update>b__35_5'

} // end of class Game.WorldOptionsScreen