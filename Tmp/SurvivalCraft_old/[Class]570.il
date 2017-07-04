.class public auto ansi beforefieldinit Game.WorldOptionsScreen
       extends Game.Screen
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.WorldOptionsScreen/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`2<object,string> '<>9__39_0'
    .field public static class [System.Runtime]System.Func`2<object,class Game.Widget> '<>9__39_2'
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

    .method assembly hidebysig instance string 
            '<Update>b__39_0'(object e) cil managed
    {
      // 代码大小       21 (0x15)
      .maxstack  1
      .locals init (valuetype Game.TerrainGenerationMode V_0)
      IL_0000:  ldarg.1
      IL_0001:  unbox.any  Game.TerrainGenerationMode
      IL_0006:  stloc.0
      IL_0007:  ldloca.s   V_0
      IL_0009:  constrained. Game.TerrainGenerationMode
      IL_000f:  callvirt   instance string [System.Runtime]System.Object::ToString()
      IL_0014:  ret
    } // end of method '<>c'::'<Update>b__39_0'

    .method assembly hidebysig instance class Game.Widget 
            '<Update>b__39_2'(object index) cil managed
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
      IL_0019:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
      IL_001e:  ldstr      "SelectBlockItem.Block"
      IL_0023:  ldc.i4.1
      IL_0024:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.BlockIconWidget>(string,
                                                                                           bool)
      IL_0029:  ldarg.1
      IL_002a:  unbox.any  [System.Runtime]System.Int32
      IL_002f:  callvirt   instance void Game.BlockIconWidget::set_Contents(int32)
      IL_0034:  dup
      IL_0035:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
      IL_003a:  ldstr      "SelectBlockItem.Text"
      IL_003f:  ldc.i4.1
      IL_0040:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                       bool)
      IL_0045:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
      IL_004a:  ldarg.1
      IL_004b:  unbox.any  [System.Runtime]System.Int32
      IL_0050:  ldelem.ref
      IL_0051:  ldnull
      IL_0052:  ldarg.1
      IL_0053:  unbox.any  [System.Runtime]System.Int32
      IL_0058:  call       int32 Game.Terrain::MakeBlockValue(int32)
      IL_005d:  callvirt   instance string Game.Block::GetDisplayName(class Game.SubsystemTerrain,
                                                                      int32)
      IL_0062:  callvirt   instance void Game.LabelWidget::set_Text(string)
      IL_0067:  ret
    } // end of method '<>c'::'<Update>b__39_2'

  } // end of class '<>c'

  .field private class Game.Widget m_newWorldOnlyPanel
  .field private class Game.LabelWidget m_terrainGenerationLabel
  .field private class Game.ButtonWidget m_terrainGenerationButton
  .field private class Game.Widget m_continentTerrainPanel
  .field private class Game.Widget m_islandTerrainPanel
  .field private class Game.SliderWidget m_islandSizeEW
  .field private class Game.SliderWidget m_islandSizeNS
  .field private class Game.Widget m_flatTerrainPanel
  .field private class Game.SliderWidget m_flatTerrainLevelSlider
  .field private class Game.BlockIconWidget m_flatTerrainBlock
  .field private class Game.LabelWidget m_flatTerrainBlockLabel
  .field private class Game.ButtonWidget m_flatTerrainBlockButton
  .field private class Game.CheckboxWidget m_flatTerrainMagmaOceanCheckbox
  .field private class Game.SliderWidget m_seaLevelOffsetSlider
  .field private class Game.SliderWidget m_temperatureOffsetSlider
  .field private class Game.SliderWidget m_humidityOffsetSlider
  .field private class Game.SliderWidget m_biomeSizeSlider
  .field private class Game.RectangleWidget m_blocksTextureIcon
  .field private class Game.LabelWidget m_blocksTextureLabel
  .field private class Game.LabelWidget m_blocksTextureDetails
  .field private class Game.ButtonWidget m_blocksTextureButton
  .field private class Game.ButtonWidget m_paletteButton
  .field private class Game.ButtonWidget m_supernaturalCreaturesButton
  .field private class Game.Widget m_creativeModePanel
  .field private class Game.ButtonWidget m_environmentBehaviorButton
  .field private class Game.ButtonWidget m_timeOfDayButton
  .field private class Game.ButtonWidget m_weatherEffectsButton
  .field private class Game.ButtonWidget m_adventureRespawnButton
  .field private class Game.ButtonWidget m_adventureSurvivalMechanicsButton
  .field private class Game.LabelWidget m_descriptionLabel
  .field private class Game.WorldSettings m_worldSettings
  .field private bool m_isExistingWorld
  .field private class Game.BlocksTexturesCache m_blockTexturesCache
  .field private static float32[] m_islandSizes
  .field private static float32[] m_biomeSizes
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       886 (0x376)
    .maxstack  4
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0)
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.BlocksTexturesCache::.ctor()
    IL_0006:  stfld      class Game.BlocksTexturesCache Game.WorldOptionsScreen::m_blockTexturesCache
    IL_000b:  ldarg.0
    IL_000c:  call       instance void Game.Screen::.ctor()
    IL_0011:  ldstr      "Screens/WorldOptionsScreen"
    IL_0016:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_001b:  stloc.0
    IL_001c:  ldarg.0
    IL_001d:  ldarg.0
    IL_001e:  ldloc.0
    IL_001f:  call       void Game.WidgetsManager::LoadWidgetContents(class Game.Widget,
                                                                      object,
                                                                      class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_002b:  ldstr      "CreativeModePanel"
    IL_0030:  ldc.i4.1
    IL_0031:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.Widget>(string,
                                                                                bool)
    IL_0036:  stfld      class Game.Widget Game.WorldOptionsScreen::m_creativeModePanel
    IL_003b:  ldarg.0
    IL_003c:  ldarg.0
    IL_003d:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0042:  ldstr      "NewWorldOnlyPanel"
    IL_0047:  ldc.i4.1
    IL_0048:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.Widget>(string,
                                                                                bool)
    IL_004d:  stfld      class Game.Widget Game.WorldOptionsScreen::m_newWorldOnlyPanel
    IL_0052:  ldarg.0
    IL_0053:  ldarg.0
    IL_0054:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0059:  ldstr      "ContinentTerrainPanel"
    IL_005e:  ldc.i4.1
    IL_005f:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.Widget>(string,
                                                                                bool)
    IL_0064:  stfld      class Game.Widget Game.WorldOptionsScreen::m_continentTerrainPanel
    IL_0069:  ldarg.0
    IL_006a:  ldarg.0
    IL_006b:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0070:  ldstr      "IslandTerrainPanel"
    IL_0075:  ldc.i4.1
    IL_0076:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.Widget>(string,
                                                                                bool)
    IL_007b:  stfld      class Game.Widget Game.WorldOptionsScreen::m_islandTerrainPanel
    IL_0080:  ldarg.0
    IL_0081:  ldarg.0
    IL_0082:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0087:  ldstr      "IslandSizeNS"
    IL_008c:  ldc.i4.1
    IL_008d:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.SliderWidget>(string,
                                                                                      bool)
    IL_0092:  stfld      class Game.SliderWidget Game.WorldOptionsScreen::m_islandSizeNS
    IL_0097:  ldarg.0
    IL_0098:  ldarg.0
    IL_0099:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_009e:  ldstr      "IslandSizeEW"
    IL_00a3:  ldc.i4.1
    IL_00a4:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.SliderWidget>(string,
                                                                                      bool)
    IL_00a9:  stfld      class Game.SliderWidget Game.WorldOptionsScreen::m_islandSizeEW
    IL_00ae:  ldarg.0
    IL_00af:  ldarg.0
    IL_00b0:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00b5:  ldstr      "FlatTerrainPanel"
    IL_00ba:  ldc.i4.1
    IL_00bb:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.Widget>(string,
                                                                                bool)
    IL_00c0:  stfld      class Game.Widget Game.WorldOptionsScreen::m_flatTerrainPanel
    IL_00c5:  ldarg.0
    IL_00c6:  ldarg.0
    IL_00c7:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00cc:  ldstr      "BlocksTextureIcon"
    IL_00d1:  ldc.i4.1
    IL_00d2:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.RectangleWidget>(string,
                                                                                         bool)
    IL_00d7:  stfld      class Game.RectangleWidget Game.WorldOptionsScreen::m_blocksTextureIcon
    IL_00dc:  ldarg.0
    IL_00dd:  ldarg.0
    IL_00de:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00e3:  ldstr      "BlocksTextureLabel"
    IL_00e8:  ldc.i4.1
    IL_00e9:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_00ee:  stfld      class Game.LabelWidget Game.WorldOptionsScreen::m_blocksTextureLabel
    IL_00f3:  ldarg.0
    IL_00f4:  ldarg.0
    IL_00f5:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00fa:  ldstr      "BlocksTextureDetails"
    IL_00ff:  ldc.i4.1
    IL_0100:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_0105:  stfld      class Game.LabelWidget Game.WorldOptionsScreen::m_blocksTextureDetails
    IL_010a:  ldarg.0
    IL_010b:  ldarg.0
    IL_010c:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0111:  ldstr      "BlocksTextureButton"
    IL_0116:  ldc.i4.1
    IL_0117:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_011c:  stfld      class Game.ButtonWidget Game.WorldOptionsScreen::m_blocksTextureButton
    IL_0121:  ldarg.0
    IL_0122:  ldarg.0
    IL_0123:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0128:  ldstr      "SeaLevelOffset"
    IL_012d:  ldc.i4.1
    IL_012e:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.SliderWidget>(string,
                                                                                      bool)
    IL_0133:  stfld      class Game.SliderWidget Game.WorldOptionsScreen::m_seaLevelOffsetSlider
    IL_0138:  ldarg.0
    IL_0139:  ldarg.0
    IL_013a:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_013f:  ldstr      "TemperatureOffset"
    IL_0144:  ldc.i4.1
    IL_0145:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.SliderWidget>(string,
                                                                                      bool)
    IL_014a:  stfld      class Game.SliderWidget Game.WorldOptionsScreen::m_temperatureOffsetSlider
    IL_014f:  ldarg.0
    IL_0150:  ldarg.0
    IL_0151:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0156:  ldstr      "HumidityOffset"
    IL_015b:  ldc.i4.1
    IL_015c:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.SliderWidget>(string,
                                                                                      bool)
    IL_0161:  stfld      class Game.SliderWidget Game.WorldOptionsScreen::m_humidityOffsetSlider
    IL_0166:  ldarg.0
    IL_0167:  ldarg.0
    IL_0168:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_016d:  ldstr      "BiomeSize"
    IL_0172:  ldc.i4.1
    IL_0173:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.SliderWidget>(string,
                                                                                      bool)
    IL_0178:  stfld      class Game.SliderWidget Game.WorldOptionsScreen::m_biomeSizeSlider
    IL_017d:  ldarg.0
    IL_017e:  ldarg.0
    IL_017f:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0184:  ldstr      "Palette"
    IL_0189:  ldc.i4.1
    IL_018a:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_018f:  stfld      class Game.ButtonWidget Game.WorldOptionsScreen::m_paletteButton
    IL_0194:  ldarg.0
    IL_0195:  ldarg.0
    IL_0196:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_019b:  ldstr      "SupernaturalCreatures"
    IL_01a0:  ldc.i4.1
    IL_01a1:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_01a6:  stfld      class Game.ButtonWidget Game.WorldOptionsScreen::m_supernaturalCreaturesButton
    IL_01ab:  ldarg.0
    IL_01ac:  ldarg.0
    IL_01ad:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_01b2:  ldstr      "EnvironmentBehavior"
    IL_01b7:  ldc.i4.1
    IL_01b8:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_01bd:  stfld      class Game.ButtonWidget Game.WorldOptionsScreen::m_environmentBehaviorButton
    IL_01c2:  ldarg.0
    IL_01c3:  ldarg.0
    IL_01c4:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_01c9:  ldstr      "TimeOfDay"
    IL_01ce:  ldc.i4.1
    IL_01cf:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_01d4:  stfld      class Game.ButtonWidget Game.WorldOptionsScreen::m_timeOfDayButton
    IL_01d9:  ldarg.0
    IL_01da:  ldarg.0
    IL_01db:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_01e0:  ldstr      "WeatherEffects"
    IL_01e5:  ldc.i4.1
    IL_01e6:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_01eb:  stfld      class Game.ButtonWidget Game.WorldOptionsScreen::m_weatherEffectsButton
    IL_01f0:  ldarg.0
    IL_01f1:  ldarg.0
    IL_01f2:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_01f7:  ldstr      "AdventureRespawn"
    IL_01fc:  ldc.i4.1
    IL_01fd:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0202:  stfld      class Game.ButtonWidget Game.WorldOptionsScreen::m_adventureRespawnButton
    IL_0207:  ldarg.0
    IL_0208:  ldarg.0
    IL_0209:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_020e:  ldstr      "AdventureSurvivalMechanics"
    IL_0213:  ldc.i4.1
    IL_0214:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0219:  stfld      class Game.ButtonWidget Game.WorldOptionsScreen::m_adventureSurvivalMechanicsButton
    IL_021e:  ldarg.0
    IL_021f:  ldarg.0
    IL_0220:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0225:  ldstr      "TerrainGenerationLabel"
    IL_022a:  ldc.i4.1
    IL_022b:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_0230:  stfld      class Game.LabelWidget Game.WorldOptionsScreen::m_terrainGenerationLabel
    IL_0235:  ldarg.0
    IL_0236:  ldarg.0
    IL_0237:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_023c:  ldstr      "TerrainGeneration"
    IL_0241:  ldc.i4.1
    IL_0242:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0247:  stfld      class Game.ButtonWidget Game.WorldOptionsScreen::m_terrainGenerationButton
    IL_024c:  ldarg.0
    IL_024d:  ldarg.0
    IL_024e:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0253:  ldstr      "FlatTerrainLevel"
    IL_0258:  ldc.i4.1
    IL_0259:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.SliderWidget>(string,
                                                                                      bool)
    IL_025e:  stfld      class Game.SliderWidget Game.WorldOptionsScreen::m_flatTerrainLevelSlider
    IL_0263:  ldarg.0
    IL_0264:  ldarg.0
    IL_0265:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_026a:  ldstr      "FlatTerrainBlock"
    IL_026f:  ldc.i4.1
    IL_0270:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.BlockIconWidget>(string,
                                                                                         bool)
    IL_0275:  stfld      class Game.BlockIconWidget Game.WorldOptionsScreen::m_flatTerrainBlock
    IL_027a:  ldarg.0
    IL_027b:  ldarg.0
    IL_027c:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0281:  ldstr      "FlatTerrainBlockLabel"
    IL_0286:  ldc.i4.1
    IL_0287:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_028c:  stfld      class Game.LabelWidget Game.WorldOptionsScreen::m_flatTerrainBlockLabel
    IL_0291:  ldarg.0
    IL_0292:  ldarg.0
    IL_0293:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0298:  ldstr      "FlatTerrainBlockButton"
    IL_029d:  ldc.i4.1
    IL_029e:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_02a3:  stfld      class Game.ButtonWidget Game.WorldOptionsScreen::m_flatTerrainBlockButton
    IL_02a8:  ldarg.0
    IL_02a9:  ldarg.0
    IL_02aa:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_02af:  ldstr      "MagmaOcean"
    IL_02b4:  ldc.i4.1
    IL_02b5:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.CheckboxWidget>(string,
                                                                                        bool)
    IL_02ba:  stfld      class Game.CheckboxWidget Game.WorldOptionsScreen::m_flatTerrainMagmaOceanCheckbox
    IL_02bf:  ldarg.0
    IL_02c0:  ldarg.0
    IL_02c1:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_02c6:  ldstr      "Description"
    IL_02cb:  ldc.i4.1
    IL_02cc:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_02d1:  stfld      class Game.LabelWidget Game.WorldOptionsScreen::m_descriptionLabel
    IL_02d6:  ldarg.0
    IL_02d7:  ldfld      class Game.SliderWidget Game.WorldOptionsScreen::m_islandSizeEW
    IL_02dc:  ldc.r4     0.0
    IL_02e1:  callvirt   instance void Game.SliderWidget::set_MinValue(float32)
    IL_02e6:  ldarg.0
    IL_02e7:  ldfld      class Game.SliderWidget Game.WorldOptionsScreen::m_islandSizeEW
    IL_02ec:  ldsfld     float32[] Game.WorldOptionsScreen::m_islandSizes
    IL_02f1:  ldlen
    IL_02f2:  conv.i4
    IL_02f3:  ldc.i4.1
    IL_02f4:  sub
    IL_02f5:  conv.r4
    IL_02f6:  callvirt   instance void Game.SliderWidget::set_MaxValue(float32)
    IL_02fb:  ldarg.0
    IL_02fc:  ldfld      class Game.SliderWidget Game.WorldOptionsScreen::m_islandSizeEW
    IL_0301:  ldc.r4     1.
    IL_0306:  callvirt   instance void Game.SliderWidget::set_Granularity(float32)
    IL_030b:  ldarg.0
    IL_030c:  ldfld      class Game.SliderWidget Game.WorldOptionsScreen::m_islandSizeNS
    IL_0311:  ldc.r4     0.0
    IL_0316:  callvirt   instance void Game.SliderWidget::set_MinValue(float32)
    IL_031b:  ldarg.0
    IL_031c:  ldfld      class Game.SliderWidget Game.WorldOptionsScreen::m_islandSizeNS
    IL_0321:  ldsfld     float32[] Game.WorldOptionsScreen::m_islandSizes
    IL_0326:  ldlen
    IL_0327:  conv.i4
    IL_0328:  ldc.i4.1
    IL_0329:  sub
    IL_032a:  conv.r4
    IL_032b:  callvirt   instance void Game.SliderWidget::set_MaxValue(float32)
    IL_0330:  ldarg.0
    IL_0331:  ldfld      class Game.SliderWidget Game.WorldOptionsScreen::m_islandSizeNS
    IL_0336:  ldc.r4     1.
    IL_033b:  callvirt   instance void Game.SliderWidget::set_Granularity(float32)
    IL_0340:  ldarg.0
    IL_0341:  ldfld      class Game.SliderWidget Game.WorldOptionsScreen::m_biomeSizeSlider
    IL_0346:  ldc.r4     0.0
    IL_034b:  callvirt   instance void Game.SliderWidget::set_MinValue(float32)
    IL_0350:  ldarg.0
    IL_0351:  ldfld      class Game.SliderWidget Game.WorldOptionsScreen::m_biomeSizeSlider
    IL_0356:  ldsfld     float32[] Game.WorldOptionsScreen::m_biomeSizes
    IL_035b:  ldlen
    IL_035c:  conv.i4
    IL_035d:  ldc.i4.1
    IL_035e:  sub
    IL_035f:  conv.r4
    IL_0360:  callvirt   instance void Game.SliderWidget::set_MaxValue(float32)
    IL_0365:  ldarg.0
    IL_0366:  ldfld      class Game.SliderWidget Game.WorldOptionsScreen::m_biomeSizeSlider
    IL_036b:  ldc.r4     1.
    IL_0370:  callvirt   instance void Game.SliderWidget::set_Granularity(float32)
    IL_0375:  ret
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
    IL_0004:  castclass  Game.WorldSettings
    IL_0009:  stfld      class Game.WorldSettings Game.WorldOptionsScreen::m_worldSettings
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
    IL_0028:  ldfld      class Game.WorldSettings Game.WorldOptionsScreen::m_worldSettings
    IL_002d:  ldfld      valuetype Game.EnvironmentBehaviorMode Game.WorldSettings::EnvironmentBehaviorMode
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
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.BlocksTexturesCache Game.WorldOptionsScreen::m_blockTexturesCache
    IL_0006:  callvirt   instance void Game.BlocksTexturesCache::Clear()
    IL_000b:  ret
  } // end of method WorldOptionsScreen::Leave

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       2570 (0xa0a)
    .maxstack  7
    .locals init (string V_0,
             class [Engine]Engine.Graphics.Texture2D V_1,
             class [System.Runtime]System.Collections.Generic.IList`1<int32> V_2,
             int32[] V_3,
             class Game.ListSelectionDialog V_4,
             class [System.Runtime]System.Collections.Generic.IList`1<int32> V_5,
             class [System.Runtime]System.Collections.Generic.IList`1<int32> V_6)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ButtonWidget Game.WorldOptionsScreen::m_terrainGenerationButton
    IL_0006:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_000b:  brfalse.s  IL_0066

    IL_000d:  ldarg.0
    IL_000e:  ldfld      bool Game.WorldOptionsScreen::m_isExistingWorld
    IL_0013:  brtrue.s   IL_0066

    IL_0015:  ldtoken    Game.TerrainGenerationMode
    IL_001a:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_001f:  call       class [System.Runtime]System.Collections.Generic.IList`1<int32> Game.EnumUtils::GetEnumValues(class [System.Runtime]System.Type)
    IL_0024:  stloc.2
    IL_0025:  ldnull
    IL_0026:  ldstr      "Select World Type"
    IL_002b:  ldloc.2
    IL_002c:  ldc.r4     56.
    IL_0031:  ldsfld     class [System.Runtime]System.Func`2<object,string> Game.WorldOptionsScreen/'<>c'::'<>9__39_0'
    IL_0036:  dup
    IL_0037:  brtrue.s   IL_0050

    IL_0039:  pop
    IL_003a:  ldsfld     class Game.WorldOptionsScreen/'<>c' Game.WorldOptionsScreen/'<>c'::'<>9'
    IL_003f:  ldftn      instance string Game.WorldOptionsScreen/'<>c'::'<Update>b__39_0'(object)
    IL_0045:  newobj     instance void class [System.Runtime]System.Func`2<object,string>::.ctor(object,
                                                                                                 native int)
    IL_004a:  dup
    IL_004b:  stsfld     class [System.Runtime]System.Func`2<object,string> Game.WorldOptionsScreen/'<>c'::'<>9__39_0'
    IL_0050:  ldarg.0
    IL_0051:  ldftn      instance void Game.WorldOptionsScreen::'<Update>b__39_1'(object)
    IL_0057:  newobj     instance void class [System.Runtime]System.Action`1<object>::.ctor(object,
                                                                                            native int)
    IL_005c:  newobj     instance void Game.ListSelectionDialog::.ctor(string,
                                                                       class [System.Runtime]System.Collections.IEnumerable,
                                                                       float32,
                                                                       class [System.Runtime]System.Func`2<object,string>,
                                                                       class [System.Runtime]System.Action`1<object>)
    IL_0061:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_0066:  ldarg.0
    IL_0067:  ldfld      class Game.SliderWidget Game.WorldOptionsScreen::m_islandSizeEW
    IL_006c:  callvirt   instance bool Game.SliderWidget::get_IsSliding()
    IL_0071:  brfalse.s  IL_00ac

    IL_0073:  ldarg.0
    IL_0074:  ldfld      bool Game.WorldOptionsScreen::m_isExistingWorld
    IL_0079:  brtrue.s   IL_00ac

    IL_007b:  ldarg.0
    IL_007c:  ldfld      class Game.WorldSettings Game.WorldOptionsScreen::m_worldSettings
    IL_0081:  ldflda     valuetype [Engine]Engine.Vector2 Game.WorldSettings::IslandSize
    IL_0086:  ldsfld     float32[] Game.WorldOptionsScreen::m_islandSizes
    IL_008b:  ldarg.0
    IL_008c:  ldfld      class Game.SliderWidget Game.WorldOptionsScreen::m_islandSizeEW
    IL_0091:  callvirt   instance float32 Game.SliderWidget::get_Value()
    IL_0096:  conv.i4
    IL_0097:  ldc.i4.0
    IL_0098:  ldsfld     float32[] Game.WorldOptionsScreen::m_islandSizes
    IL_009d:  ldlen
    IL_009e:  conv.i4
    IL_009f:  ldc.i4.1
    IL_00a0:  sub
    IL_00a1:  call       int32 [Engine]Engine.MathUtils::Clamp(int32,
                                                               int32,
                                                               int32)
    IL_00a6:  ldelem.r4
    IL_00a7:  stfld      float32 [Engine]Engine.Vector2::X
    IL_00ac:  ldarg.0
    IL_00ad:  ldfld      class Game.SliderWidget Game.WorldOptionsScreen::m_islandSizeNS
    IL_00b2:  callvirt   instance bool Game.SliderWidget::get_IsSliding()
    IL_00b7:  brfalse.s  IL_00f2

    IL_00b9:  ldarg.0
    IL_00ba:  ldfld      bool Game.WorldOptionsScreen::m_isExistingWorld
    IL_00bf:  brtrue.s   IL_00f2

    IL_00c1:  ldarg.0
    IL_00c2:  ldfld      class Game.WorldSettings Game.WorldOptionsScreen::m_worldSettings
    IL_00c7:  ldflda     valuetype [Engine]Engine.Vector2 Game.WorldSettings::IslandSize
    IL_00cc:  ldsfld     float32[] Game.WorldOptionsScreen::m_islandSizes
    IL_00d1:  ldarg.0
    IL_00d2:  ldfld      class Game.SliderWidget Game.WorldOptionsScreen::m_islandSizeNS
    IL_00d7:  callvirt   instance float32 Game.SliderWidget::get_Value()
    IL_00dc:  conv.i4
    IL_00dd:  ldc.i4.0
    IL_00de:  ldsfld     float32[] Game.WorldOptionsScreen::m_islandSizes
    IL_00e3:  ldlen
    IL_00e4:  conv.i4
    IL_00e5:  ldc.i4.1
    IL_00e6:  sub
    IL_00e7:  call       int32 [Engine]Engine.MathUtils::Clamp(int32,
                                                               int32,
                                                               int32)
    IL_00ec:  ldelem.r4
    IL_00ed:  stfld      float32 [Engine]Engine.Vector2::Y
    IL_00f2:  ldarg.0
    IL_00f3:  ldfld      class Game.SliderWidget Game.WorldOptionsScreen::m_flatTerrainLevelSlider
    IL_00f8:  callvirt   instance bool Game.SliderWidget::get_IsSliding()
    IL_00fd:  brfalse.s  IL_0133

    IL_00ff:  ldarg.0
    IL_0100:  ldfld      bool Game.WorldOptionsScreen::m_isExistingWorld
    IL_0105:  brtrue.s   IL_0133

    IL_0107:  ldarg.0
    IL_0108:  ldfld      class Game.WorldSettings Game.WorldOptionsScreen::m_worldSettings
    IL_010d:  ldarg.0
    IL_010e:  ldfld      class Game.SliderWidget Game.WorldOptionsScreen::m_flatTerrainLevelSlider
    IL_0113:  callvirt   instance float32 Game.SliderWidget::get_Value()
    IL_0118:  conv.i4
    IL_0119:  stfld      int32 Game.WorldSettings::TerrainLevel
    IL_011e:  ldarg.0
    IL_011f:  ldfld      class Game.LabelWidget Game.WorldOptionsScreen::m_descriptionLabel
    IL_0124:  ldstr      "FlatTerrainLevel.Description"
    IL_0129:  call       string Game.StringsManager::GetString(string)
    IL_012e:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0133:  ldarg.0
    IL_0134:  ldfld      class Game.ButtonWidget Game.WorldOptionsScreen::m_flatTerrainBlockButton
    IL_0139:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_013e:  brfalse.s  IL_019c

    IL_0140:  ldarg.0
    IL_0141:  ldfld      bool Game.WorldOptionsScreen::m_isExistingWorld
    IL_0146:  brtrue.s   IL_019c

    IL_0148:  ldc.i4.s   19
    IL_014a:  newarr     [System.Runtime]System.Int32
    IL_014f:  dup
    IL_0150:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=76' '<PrivateImplementationDetails>'::'7A229EC07347BD41B2EAAE72AEA774F9117F5001'
    IL_0155:  call       void [System.Runtime]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [System.Runtime]System.Array,
                                                                                                              valuetype [System.Runtime]System.RuntimeFieldHandle)
    IL_015a:  stloc.3
    IL_015b:  ldnull
    IL_015c:  ldstr      "Select Block"
    IL_0161:  ldloc.3
    IL_0162:  ldc.r4     72.
    IL_0167:  ldsfld     class [System.Runtime]System.Func`2<object,class Game.Widget> Game.WorldOptionsScreen/'<>c'::'<>9__39_2'
    IL_016c:  dup
    IL_016d:  brtrue.s   IL_0186

    IL_016f:  pop
    IL_0170:  ldsfld     class Game.WorldOptionsScreen/'<>c' Game.WorldOptionsScreen/'<>c'::'<>9'
    IL_0175:  ldftn      instance class Game.Widget Game.WorldOptionsScreen/'<>c'::'<Update>b__39_2'(object)
    IL_017b:  newobj     instance void class [System.Runtime]System.Func`2<object,class Game.Widget>::.ctor(object,
                                                                                                            native int)
    IL_0180:  dup
    IL_0181:  stsfld     class [System.Runtime]System.Func`2<object,class Game.Widget> Game.WorldOptionsScreen/'<>c'::'<>9__39_2'
    IL_0186:  ldarg.0
    IL_0187:  ldftn      instance void Game.WorldOptionsScreen::'<Update>b__39_3'(object)
    IL_018d:  newobj     instance void class [System.Runtime]System.Action`1<object>::.ctor(object,
                                                                                            native int)
    IL_0192:  newobj     instance void Game.ListSelectionDialog::.ctor(string,
                                                                       class [System.Runtime]System.Collections.IEnumerable,
                                                                       float32,
                                                                       class [System.Runtime]System.Func`2<object,class Game.Widget>,
                                                                       class [System.Runtime]System.Action`1<object>)
    IL_0197:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_019c:  ldarg.0
    IL_019d:  ldfld      class Game.CheckboxWidget Game.WorldOptionsScreen::m_flatTerrainMagmaOceanCheckbox
    IL_01a2:  callvirt   instance bool Game.CheckboxWidget::get_IsClicked()
    IL_01a7:  brfalse.s  IL_01de

    IL_01a9:  ldarg.0
    IL_01aa:  ldfld      class Game.WorldSettings Game.WorldOptionsScreen::m_worldSettings
    IL_01af:  ldarg.0
    IL_01b0:  ldfld      class Game.WorldSettings Game.WorldOptionsScreen::m_worldSettings
    IL_01b5:  ldfld      int32 Game.WorldSettings::TerrainOceanBlockIndex
    IL_01ba:  ldc.i4.s   18
    IL_01bc:  beq.s      IL_01c2

    IL_01be:  ldc.i4.s   18
    IL_01c0:  br.s       IL_01c4

    IL_01c2:  ldc.i4.s   92
    IL_01c4:  stfld      int32 Game.WorldSettings::TerrainOceanBlockIndex
    IL_01c9:  ldarg.0
    IL_01ca:  ldfld      class Game.LabelWidget Game.WorldOptionsScreen::m_descriptionLabel
    IL_01cf:  ldstr      "FlatTerrainMagmaOcean.Description"
    IL_01d4:  call       string Game.StringsManager::GetString(string)
    IL_01d9:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_01de:  ldarg.0
    IL_01df:  ldfld      class Game.SliderWidget Game.WorldOptionsScreen::m_seaLevelOffsetSlider
    IL_01e4:  callvirt   instance bool Game.SliderWidget::get_IsSliding()
    IL_01e9:  brfalse.s  IL_021f

    IL_01eb:  ldarg.0
    IL_01ec:  ldfld      bool Game.WorldOptionsScreen::m_isExistingWorld
    IL_01f1:  brtrue.s   IL_021f

    IL_01f3:  ldarg.0
    IL_01f4:  ldfld      class Game.WorldSettings Game.WorldOptionsScreen::m_worldSettings
    IL_01f9:  ldarg.0
    IL_01fa:  ldfld      class Game.SliderWidget Game.WorldOptionsScreen::m_seaLevelOffsetSlider
    IL_01ff:  callvirt   instance float32 Game.SliderWidget::get_Value()
    IL_0204:  conv.i4
    IL_0205:  stfld      int32 Game.WorldSettings::SeaLevelOffset
    IL_020a:  ldarg.0
    IL_020b:  ldfld      class Game.LabelWidget Game.WorldOptionsScreen::m_descriptionLabel
    IL_0210:  ldstr      "SeaLevelOffset.Description"
    IL_0215:  call       string Game.StringsManager::GetString(string)
    IL_021a:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_021f:  ldarg.0
    IL_0220:  ldfld      class Game.SliderWidget Game.WorldOptionsScreen::m_temperatureOffsetSlider
    IL_0225:  callvirt   instance bool Game.SliderWidget::get_IsSliding()
    IL_022a:  brfalse.s  IL_025f

    IL_022c:  ldarg.0
    IL_022d:  ldfld      bool Game.WorldOptionsScreen::m_isExistingWorld
    IL_0232:  brtrue.s   IL_025f

    IL_0234:  ldarg.0
    IL_0235:  ldfld      class Game.WorldSettings Game.WorldOptionsScreen::m_worldSettings
    IL_023a:  ldarg.0
    IL_023b:  ldfld      class Game.SliderWidget Game.WorldOptionsScreen::m_temperatureOffsetSlider
    IL_0240:  callvirt   instance float32 Game.SliderWidget::get_Value()
    IL_0245:  stfld      float32 Game.WorldSettings::TemperatureOffset
    IL_024a:  ldarg.0
    IL_024b:  ldfld      class Game.LabelWidget Game.WorldOptionsScreen::m_descriptionLabel
    IL_0250:  ldstr      "TemperatureOffset.Description"
    IL_0255:  call       string Game.StringsManager::GetString(string)
    IL_025a:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_025f:  ldarg.0
    IL_0260:  ldfld      class Game.SliderWidget Game.WorldOptionsScreen::m_humidityOffsetSlider
    IL_0265:  callvirt   instance bool Game.SliderWidget::get_IsSliding()
    IL_026a:  brfalse.s  IL_029f

    IL_026c:  ldarg.0
    IL_026d:  ldfld      bool Game.WorldOptionsScreen::m_isExistingWorld
    IL_0272:  brtrue.s   IL_029f

    IL_0274:  ldarg.0
    IL_0275:  ldfld      class Game.WorldSettings Game.WorldOptionsScreen::m_worldSettings
    IL_027a:  ldarg.0
    IL_027b:  ldfld      class Game.SliderWidget Game.WorldOptionsScreen::m_humidityOffsetSlider
    IL_0280:  callvirt   instance float32 Game.SliderWidget::get_Value()
    IL_0285:  stfld      float32 Game.WorldSettings::HumidityOffset
    IL_028a:  ldarg.0
    IL_028b:  ldfld      class Game.LabelWidget Game.WorldOptionsScreen::m_descriptionLabel
    IL_0290:  ldstr      "HumidityOffset.Description"
    IL_0295:  call       string Game.StringsManager::GetString(string)
    IL_029a:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_029f:  ldarg.0
    IL_02a0:  ldfld      class Game.SliderWidget Game.WorldOptionsScreen::m_biomeSizeSlider
    IL_02a5:  callvirt   instance bool Game.SliderWidget::get_IsSliding()
    IL_02aa:  brfalse.s  IL_02f5

    IL_02ac:  ldarg.0
    IL_02ad:  ldfld      bool Game.WorldOptionsScreen::m_isExistingWorld
    IL_02b2:  brtrue.s   IL_02f5

    IL_02b4:  ldarg.0
    IL_02b5:  ldfld      class Game.WorldSettings Game.WorldOptionsScreen::m_worldSettings
    IL_02ba:  ldsfld     float32[] Game.WorldOptionsScreen::m_biomeSizes
    IL_02bf:  ldarg.0
    IL_02c0:  ldfld      class Game.SliderWidget Game.WorldOptionsScreen::m_biomeSizeSlider
    IL_02c5:  callvirt   instance float32 Game.SliderWidget::get_Value()
    IL_02ca:  conv.i4
    IL_02cb:  ldc.i4.0
    IL_02cc:  ldsfld     float32[] Game.WorldOptionsScreen::m_biomeSizes
    IL_02d1:  ldlen
    IL_02d2:  conv.i4
    IL_02d3:  ldc.i4.1
    IL_02d4:  sub
    IL_02d5:  call       int32 [Engine]Engine.MathUtils::Clamp(int32,
                                                               int32,
                                                               int32)
    IL_02da:  ldelem.r4
    IL_02db:  stfld      float32 Game.WorldSettings::BiomeSize
    IL_02e0:  ldarg.0
    IL_02e1:  ldfld      class Game.LabelWidget Game.WorldOptionsScreen::m_descriptionLabel
    IL_02e6:  ldstr      "BiomeSize.Description"
    IL_02eb:  call       string Game.StringsManager::GetString(string)
    IL_02f0:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_02f5:  ldarg.0
    IL_02f6:  ldfld      class Game.ButtonWidget Game.WorldOptionsScreen::m_blocksTextureButton
    IL_02fb:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0300:  brfalse.s  IL_0357

    IL_0302:  call       void Game.BlocksTexturesManager::UpdateBlocksTexturesList()
    IL_0307:  ldstr      "Select Blocks Texture"
    IL_030c:  call       valuetype [Engine]Engine.ReadOnlyList`1<string> Game.BlocksTexturesManager::get_BlockTexturesNames()
    IL_0311:  box        valuetype [Engine]Engine.ReadOnlyList`1<string>
    IL_0316:  ldc.r4     64.
    IL_031b:  ldarg.0
    IL_031c:  ldftn      instance class Game.Widget Game.WorldOptionsScreen::'<Update>b__39_4'(object)
    IL_0322:  newobj     instance void class [System.Runtime]System.Func`2<object,class Game.Widget>::.ctor(object,
                                                                                                            native int)
    IL_0327:  ldarg.0
    IL_0328:  ldftn      instance void Game.WorldOptionsScreen::'<Update>b__39_5'(object)
    IL_032e:  newobj     instance void class [System.Runtime]System.Action`1<object>::.ctor(object,
                                                                                            native int)
    IL_0333:  newobj     instance void Game.ListSelectionDialog::.ctor(string,
                                                                       class [System.Runtime]System.Collections.IEnumerable,
                                                                       float32,
                                                                       class [System.Runtime]System.Func`2<object,class Game.Widget>,
                                                                       class [System.Runtime]System.Action`1<object>)
    IL_0338:  stloc.s    V_4
    IL_033a:  ldnull
    IL_033b:  ldloc.s    V_4
    IL_033d:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_0342:  ldarg.0
    IL_0343:  ldfld      class Game.LabelWidget Game.WorldOptionsScreen::m_descriptionLabel
    IL_0348:  ldstr      "BlocksTexture.Description"
    IL_034d:  call       string Game.StringsManager::GetString(string)
    IL_0352:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0357:  ldarg.0
    IL_0358:  ldfld      class Game.ButtonWidget Game.WorldOptionsScreen::m_paletteButton
    IL_035d:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0362:  brfalse.s  IL_037a

    IL_0364:  ldnull
    IL_0365:  ldarg.0
    IL_0366:  ldfld      class Game.WorldSettings Game.WorldOptionsScreen::m_worldSettings
    IL_036b:  ldfld      class Game.WorldPalette Game.WorldSettings::Palette
    IL_0370:  newobj     instance void Game.EditPaletteDialog::.ctor(class Game.WorldPalette)
    IL_0375:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_037a:  ldarg.0
    IL_037b:  ldfld      class Game.ButtonWidget Game.WorldOptionsScreen::m_supernaturalCreaturesButton
    IL_0380:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0385:  brfalse.s  IL_03ca

    IL_0387:  ldarg.0
    IL_0388:  ldfld      class Game.WorldSettings Game.WorldOptionsScreen::m_worldSettings
    IL_038d:  ldarg.0
    IL_038e:  ldfld      class Game.WorldSettings Game.WorldOptionsScreen::m_worldSettings
    IL_0393:  ldfld      bool Game.WorldSettings::AreSupernaturalCreaturesEnabled
    IL_0398:  ldc.i4.0
    IL_0399:  ceq
    IL_039b:  stfld      bool Game.WorldSettings::AreSupernaturalCreaturesEnabled
    IL_03a0:  ldarg.0
    IL_03a1:  ldfld      class Game.LabelWidget Game.WorldOptionsScreen::m_descriptionLabel
    IL_03a6:  ldstr      "SupernaturalCreatures."
    IL_03ab:  ldarg.0
    IL_03ac:  ldfld      class Game.WorldSettings Game.WorldOptionsScreen::m_worldSettings
    IL_03b1:  ldflda     bool Game.WorldSettings::AreSupernaturalCreaturesEnabled
    IL_03b6:  call       instance string [System.Runtime]System.Boolean::ToString()
    IL_03bb:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_03c0:  call       string Game.StringsManager::GetString(string)
    IL_03c5:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_03ca:  ldarg.0
    IL_03cb:  ldfld      class Game.ButtonWidget Game.WorldOptionsScreen::m_environmentBehaviorButton
    IL_03d0:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_03d5:  brfalse.s  IL_043e

    IL_03d7:  ldtoken    Game.EnvironmentBehaviorMode
    IL_03dc:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_03e1:  call       class [System.Runtime]System.Collections.Generic.IList`1<int32> Game.EnumUtils::GetEnumValues(class [System.Runtime]System.Type)
    IL_03e6:  stloc.s    V_5
    IL_03e8:  ldarg.0
    IL_03e9:  ldfld      class Game.WorldSettings Game.WorldOptionsScreen::m_worldSettings
    IL_03ee:  ldloc.s    V_5
    IL_03f0:  ldarg.0
    IL_03f1:  ldfld      class Game.WorldSettings Game.WorldOptionsScreen::m_worldSettings
    IL_03f6:  ldfld      valuetype Game.EnvironmentBehaviorMode Game.WorldSettings::EnvironmentBehaviorMode
    IL_03fb:  callvirt   instance int32 class [System.Runtime]System.Collections.Generic.IList`1<int32>::IndexOf(!0)
    IL_0400:  ldc.i4.1
    IL_0401:  add
    IL_0402:  ldloc.s    V_5
    IL_0404:  callvirt   instance int32 class [System.Runtime]System.Collections.Generic.ICollection`1<int32>::get_Count()
    IL_0409:  rem
    IL_040a:  stfld      valuetype Game.EnvironmentBehaviorMode Game.WorldSettings::EnvironmentBehaviorMode
    IL_040f:  ldarg.0
    IL_0410:  ldfld      class Game.LabelWidget Game.WorldOptionsScreen::m_descriptionLabel
    IL_0415:  ldstr      "EnvironmentBehaviorMode."
    IL_041a:  ldarg.0
    IL_041b:  ldfld      class Game.WorldSettings Game.WorldOptionsScreen::m_worldSettings
    IL_0420:  ldfld      valuetype Game.EnvironmentBehaviorMode Game.WorldSettings::EnvironmentBehaviorMode
    IL_0425:  box        Game.EnvironmentBehaviorMode
    IL_042a:  ldstr      ".Description"
    IL_042f:  call       string [System.Runtime]System.String::Concat(object,
                                                                      object,
                                                                      object)
    IL_0434:  call       string Game.StringsManager::GetString(string)
    IL_0439:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_043e:  ldarg.0
    IL_043f:  ldfld      class Game.ButtonWidget Game.WorldOptionsScreen::m_timeOfDayButton
    IL_0444:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0449:  brfalse.s  IL_04b2

    IL_044b:  ldtoken    Game.TimeOfDayMode
    IL_0450:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_0455:  call       class [System.Runtime]System.Collections.Generic.IList`1<int32> Game.EnumUtils::GetEnumValues(class [System.Runtime]System.Type)
    IL_045a:  stloc.s    V_6
    IL_045c:  ldarg.0
    IL_045d:  ldfld      class Game.WorldSettings Game.WorldOptionsScreen::m_worldSettings
    IL_0462:  ldloc.s    V_6
    IL_0464:  ldarg.0
    IL_0465:  ldfld      class Game.WorldSettings Game.WorldOptionsScreen::m_worldSettings
    IL_046a:  ldfld      valuetype Game.TimeOfDayMode Game.WorldSettings::TimeOfDayMode
    IL_046f:  callvirt   instance int32 class [System.Runtime]System.Collections.Generic.IList`1<int32>::IndexOf(!0)
    IL_0474:  ldc.i4.1
    IL_0475:  add
    IL_0476:  ldloc.s    V_6
    IL_0478:  callvirt   instance int32 class [System.Runtime]System.Collections.Generic.ICollection`1<int32>::get_Count()
    IL_047d:  rem
    IL_047e:  stfld      valuetype Game.TimeOfDayMode Game.WorldSettings::TimeOfDayMode
    IL_0483:  ldarg.0
    IL_0484:  ldfld      class Game.LabelWidget Game.WorldOptionsScreen::m_descriptionLabel
    IL_0489:  ldstr      "TimeOfDayMode."
    IL_048e:  ldarg.0
    IL_048f:  ldfld      class Game.WorldSettings Game.WorldOptionsScreen::m_worldSettings
    IL_0494:  ldfld      valuetype Game.TimeOfDayMode Game.WorldSettings::TimeOfDayMode
    IL_0499:  box        Game.TimeOfDayMode
    IL_049e:  ldstr      ".Description"
    IL_04a3:  call       string [System.Runtime]System.String::Concat(object,
                                                                      object,
                                                                      object)
    IL_04a8:  call       string Game.StringsManager::GetString(string)
    IL_04ad:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_04b2:  ldarg.0
    IL_04b3:  ldfld      class Game.ButtonWidget Game.WorldOptionsScreen::m_weatherEffectsButton
    IL_04b8:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_04bd:  brfalse.s  IL_0502

    IL_04bf:  ldarg.0
    IL_04c0:  ldfld      class Game.WorldSettings Game.WorldOptionsScreen::m_worldSettings
    IL_04c5:  ldarg.0
    IL_04c6:  ldfld      class Game.WorldSettings Game.WorldOptionsScreen::m_worldSettings
    IL_04cb:  ldfld      bool Game.WorldSettings::AreWeatherEffectsEnabled
    IL_04d0:  ldc.i4.0
    IL_04d1:  ceq
    IL_04d3:  stfld      bool Game.WorldSettings::AreWeatherEffectsEnabled
    IL_04d8:  ldarg.0
    IL_04d9:  ldfld      class Game.LabelWidget Game.WorldOptionsScreen::m_descriptionLabel
    IL_04de:  ldstr      "WeatherMode."
    IL_04e3:  ldarg.0
    IL_04e4:  ldfld      class Game.WorldSettings Game.WorldOptionsScreen::m_worldSettings
    IL_04e9:  ldflda     bool Game.WorldSettings::AreWeatherEffectsEnabled
    IL_04ee:  call       instance string [System.Runtime]System.Boolean::ToString()
    IL_04f3:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_04f8:  call       string Game.StringsManager::GetString(string)
    IL_04fd:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0502:  ldarg.0
    IL_0503:  ldfld      class Game.ButtonWidget Game.WorldOptionsScreen::m_adventureRespawnButton
    IL_0508:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_050d:  brfalse.s  IL_0552

    IL_050f:  ldarg.0
    IL_0510:  ldfld      class Game.WorldSettings Game.WorldOptionsScreen::m_worldSettings
    IL_0515:  ldarg.0
    IL_0516:  ldfld      class Game.WorldSettings Game.WorldOptionsScreen::m_worldSettings
    IL_051b:  ldfld      bool Game.WorldSettings::IsAdventureRespawnAllowed
    IL_0520:  ldc.i4.0
    IL_0521:  ceq
    IL_0523:  stfld      bool Game.WorldSettings::IsAdventureRespawnAllowed
    IL_0528:  ldarg.0
    IL_0529:  ldfld      class Game.LabelWidget Game.WorldOptionsScreen::m_descriptionLabel
    IL_052e:  ldstr      "AdventureRespawnMode."
    IL_0533:  ldarg.0
    IL_0534:  ldfld      class Game.WorldSettings Game.WorldOptionsScreen::m_worldSettings
    IL_0539:  ldflda     bool Game.WorldSettings::IsAdventureRespawnAllowed
    IL_053e:  call       instance string [System.Runtime]System.Boolean::ToString()
    IL_0543:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_0548:  call       string Game.StringsManager::GetString(string)
    IL_054d:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0552:  ldarg.0
    IL_0553:  ldfld      class Game.ButtonWidget Game.WorldOptionsScreen::m_adventureSurvivalMechanicsButton
    IL_0558:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_055d:  brfalse.s  IL_05a2

    IL_055f:  ldarg.0
    IL_0560:  ldfld      class Game.WorldSettings Game.WorldOptionsScreen::m_worldSettings
    IL_0565:  ldarg.0
    IL_0566:  ldfld      class Game.WorldSettings Game.WorldOptionsScreen::m_worldSettings
    IL_056b:  ldfld      bool Game.WorldSettings::AreAdventureSurvivalMechanicsEnabled
    IL_0570:  ldc.i4.0
    IL_0571:  ceq
    IL_0573:  stfld      bool Game.WorldSettings::AreAdventureSurvivalMechanicsEnabled
    IL_0578:  ldarg.0
    IL_0579:  ldfld      class Game.LabelWidget Game.WorldOptionsScreen::m_descriptionLabel
    IL_057e:  ldstr      "AdventureSurvivalMechanics."
    IL_0583:  ldarg.0
    IL_0584:  ldfld      class Game.WorldSettings Game.WorldOptionsScreen::m_worldSettings
    IL_0589:  ldflda     bool Game.WorldSettings::AreAdventureSurvivalMechanicsEnabled
    IL_058e:  call       instance string [System.Runtime]System.Boolean::ToString()
    IL_0593:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_0598:  call       string Game.StringsManager::GetString(string)
    IL_059d:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_05a2:  ldarg.0
    IL_05a3:  ldfld      class Game.Widget Game.WorldOptionsScreen::m_creativeModePanel
    IL_05a8:  ldarg.0
    IL_05a9:  ldfld      class Game.WorldSettings Game.WorldOptionsScreen::m_worldSettings
    IL_05ae:  ldfld      valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_05b3:  ldc.i4.0
    IL_05b4:  ceq
    IL_05b6:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_05bb:  ldarg.0
    IL_05bc:  ldfld      class Game.Widget Game.WorldOptionsScreen::m_newWorldOnlyPanel
    IL_05c1:  ldarg.0
    IL_05c2:  ldfld      bool Game.WorldOptionsScreen::m_isExistingWorld
    IL_05c7:  ldc.i4.0
    IL_05c8:  ceq
    IL_05ca:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_05cf:  ldarg.0
    IL_05d0:  ldfld      class Game.Widget Game.WorldOptionsScreen::m_continentTerrainPanel
    IL_05d5:  ldarg.0
    IL_05d6:  ldfld      class Game.WorldSettings Game.WorldOptionsScreen::m_worldSettings
    IL_05db:  ldfld      valuetype Game.TerrainGenerationMode Game.WorldSettings::TerrainGenerationMode
    IL_05e0:  ldc.i4.0
    IL_05e1:  ceq
    IL_05e3:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_05e8:  ldarg.0
    IL_05e9:  ldfld      class Game.Widget Game.WorldOptionsScreen::m_islandTerrainPanel
    IL_05ee:  ldarg.0
    IL_05ef:  ldfld      class Game.WorldSettings Game.WorldOptionsScreen::m_worldSettings
    IL_05f4:  ldfld      valuetype Game.TerrainGenerationMode Game.WorldSettings::TerrainGenerationMode
    IL_05f9:  ldc.i4.1
    IL_05fa:  ceq
    IL_05fc:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0601:  ldarg.0
    IL_0602:  ldfld      class Game.Widget Game.WorldOptionsScreen::m_flatTerrainPanel
    IL_0607:  ldarg.0
    IL_0608:  ldfld      class Game.WorldSettings Game.WorldOptionsScreen::m_worldSettings
    IL_060d:  ldfld      valuetype Game.TerrainGenerationMode Game.WorldSettings::TerrainGenerationMode
    IL_0612:  ldc.i4.2
    IL_0613:  ceq
    IL_0615:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_061a:  ldarg.0
    IL_061b:  ldfld      class Game.LabelWidget Game.WorldOptionsScreen::m_terrainGenerationLabel
    IL_0620:  ldarg.0
    IL_0621:  ldfld      class Game.WorldSettings Game.WorldOptionsScreen::m_worldSettings
    IL_0626:  ldflda     valuetype Game.TerrainGenerationMode Game.WorldSettings::TerrainGenerationMode
    IL_062b:  constrained. Game.TerrainGenerationMode
    IL_0631:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_0636:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_063b:  ldarg.0
    IL_063c:  ldfld      class Game.SliderWidget Game.WorldOptionsScreen::m_islandSizeEW
    IL_0641:  ldsfld     float32[] Game.WorldOptionsScreen::m_islandSizes
    IL_0646:  ldarg.0
    IL_0647:  ldfld      class Game.WorldSettings Game.WorldOptionsScreen::m_worldSettings
    IL_064c:  ldflda     valuetype [Engine]Engine.Vector2 Game.WorldSettings::IslandSize
    IL_0651:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0656:  call       int32 Game.WorldOptionsScreen::FindNearestIndex(class [System.Runtime]System.Collections.Generic.IList`1<float32>,
                                                                         float32)
    IL_065b:  conv.r4
    IL_065c:  callvirt   instance void Game.SliderWidget::set_Value(float32)
    IL_0661:  ldarg.0
    IL_0662:  ldfld      class Game.SliderWidget Game.WorldOptionsScreen::m_islandSizeEW
    IL_0667:  ldarg.0
    IL_0668:  ldfld      class Game.WorldSettings Game.WorldOptionsScreen::m_worldSettings
    IL_066d:  ldflda     valuetype [Engine]Engine.Vector2 Game.WorldSettings::IslandSize
    IL_0672:  ldflda     float32 [Engine]Engine.Vector2::X
    IL_0677:  call       instance string [System.Runtime]System.Single::ToString()
    IL_067c:  callvirt   instance void Game.SliderWidget::set_Text(string)
    IL_0681:  ldarg.0
    IL_0682:  ldfld      class Game.SliderWidget Game.WorldOptionsScreen::m_islandSizeNS
    IL_0687:  ldsfld     float32[] Game.WorldOptionsScreen::m_islandSizes
    IL_068c:  ldarg.0
    IL_068d:  ldfld      class Game.WorldSettings Game.WorldOptionsScreen::m_worldSettings
    IL_0692:  ldflda     valuetype [Engine]Engine.Vector2 Game.WorldSettings::IslandSize
    IL_0697:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_069c:  call       int32 Game.WorldOptionsScreen::FindNearestIndex(class [System.Runtime]System.Collections.Generic.IList`1<float32>,
                                                                         float32)
    IL_06a1:  conv.r4
    IL_06a2:  callvirt   instance void Game.SliderWidget::set_Value(float32)
    IL_06a7:  ldarg.0
    IL_06a8:  ldfld      class Game.SliderWidget Game.WorldOptionsScreen::m_islandSizeNS
    IL_06ad:  ldarg.0
    IL_06ae:  ldfld      class Game.WorldSettings Game.WorldOptionsScreen::m_worldSettings
    IL_06b3:  ldflda     valuetype [Engine]Engine.Vector2 Game.WorldSettings::IslandSize
    IL_06b8:  ldflda     float32 [Engine]Engine.Vector2::Y
    IL_06bd:  call       instance string [System.Runtime]System.Single::ToString()
    IL_06c2:  callvirt   instance void Game.SliderWidget::set_Text(string)
    IL_06c7:  ldarg.0
    IL_06c8:  ldfld      class Game.SliderWidget Game.WorldOptionsScreen::m_flatTerrainLevelSlider
    IL_06cd:  ldarg.0
    IL_06ce:  ldfld      class Game.WorldSettings Game.WorldOptionsScreen::m_worldSettings
    IL_06d3:  ldfld      int32 Game.WorldSettings::TerrainLevel
    IL_06d8:  conv.r4
    IL_06d9:  callvirt   instance void Game.SliderWidget::set_Value(float32)
    IL_06de:  ldarg.0
    IL_06df:  ldfld      class Game.SliderWidget Game.WorldOptionsScreen::m_flatTerrainLevelSlider
    IL_06e4:  ldarg.0
    IL_06e5:  ldfld      class Game.WorldSettings Game.WorldOptionsScreen::m_worldSettings
    IL_06ea:  ldflda     int32 Game.WorldSettings::TerrainLevel
    IL_06ef:  call       instance string [System.Runtime]System.Int32::ToString()
    IL_06f4:  callvirt   instance void Game.SliderWidget::set_Text(string)
    IL_06f9:  ldarg.0
    IL_06fa:  ldfld      class Game.BlockIconWidget Game.WorldOptionsScreen::m_flatTerrainBlock
    IL_06ff:  ldarg.0
    IL_0700:  ldfld      class Game.WorldSettings Game.WorldOptionsScreen::m_worldSettings
    IL_0705:  ldfld      int32 Game.WorldSettings::TerrainBlockIndex
    IL_070a:  callvirt   instance void Game.BlockIconWidget::set_Contents(int32)
    IL_070f:  ldarg.0
    IL_0710:  ldfld      class Game.CheckboxWidget Game.WorldOptionsScreen::m_flatTerrainMagmaOceanCheckbox
    IL_0715:  ldarg.0
    IL_0716:  ldfld      class Game.WorldSettings Game.WorldOptionsScreen::m_worldSettings
    IL_071b:  ldfld      int32 Game.WorldSettings::TerrainOceanBlockIndex
    IL_0720:  ldc.i4.s   92
    IL_0722:  ceq
    IL_0724:  callvirt   instance void Game.CheckboxWidget::set_IsChecked(bool)
    IL_0729:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_072e:  ldarg.0
    IL_072f:  ldfld      class Game.WorldSettings Game.WorldOptionsScreen::m_worldSettings
    IL_0734:  ldfld      int32 Game.WorldSettings::TerrainBlockIndex
    IL_0739:  ldelem.ref
    IL_073a:  brtrue.s   IL_0743

    IL_073c:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0741:  br.s       IL_076a

    IL_0743:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0748:  ldarg.0
    IL_0749:  ldfld      class Game.WorldSettings Game.WorldOptionsScreen::m_worldSettings
    IL_074e:  ldfld      int32 Game.WorldSettings::TerrainBlockIndex
    IL_0753:  ldelem.ref
    IL_0754:  ldnull
    IL_0755:  ldarg.0
    IL_0756:  ldfld      class Game.WorldSettings Game.WorldOptionsScreen::m_worldSettings
    IL_075b:  ldfld      int32 Game.WorldSettings::TerrainBlockIndex
    IL_0760:  call       int32 Game.Terrain::MakeBlockValue(int32)
    IL_0765:  callvirt   instance string Game.Block::GetDisplayName(class Game.SubsystemTerrain,
                                                                    int32)
    IL_076a:  stloc.0
    IL_076b:  ldarg.0
    IL_076c:  ldfld      class Game.LabelWidget Game.WorldOptionsScreen::m_flatTerrainBlockLabel
    IL_0771:  ldloc.0
    IL_0772:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_0777:  ldc.i4.s   10
    IL_0779:  bgt.s      IL_077e

    IL_077b:  ldloc.0
    IL_077c:  br.s       IL_0791

    IL_077e:  ldloc.0
    IL_077f:  ldc.i4.0
    IL_0780:  ldc.i4.s   10
    IL_0782:  callvirt   instance string [System.Runtime]System.String::Substring(int32,
                                                                                  int32)
    IL_0787:  ldstr      "..."
    IL_078c:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_0791:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0796:  ldarg.0
    IL_0797:  ldfld      class Game.BlocksTexturesCache Game.WorldOptionsScreen::m_blockTexturesCache
    IL_079c:  ldarg.0
    IL_079d:  ldfld      class Game.WorldSettings Game.WorldOptionsScreen::m_worldSettings
    IL_07a2:  ldfld      string Game.WorldSettings::BlocksTextureName
    IL_07a7:  callvirt   instance class [Engine]Engine.Graphics.Texture2D Game.BlocksTexturesCache::GetTexture(string)
    IL_07ac:  stloc.1
    IL_07ad:  ldarg.0
    IL_07ae:  ldfld      class Game.RectangleWidget Game.WorldOptionsScreen::m_blocksTextureIcon
    IL_07b3:  ldloc.1
    IL_07b4:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_07b9:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::One
    IL_07be:  newobj     instance void Game.Subtexture::.ctor(class [Engine]Engine.Graphics.Texture2D,
                                                              valuetype [Engine]Engine.Vector2,
                                                              valuetype [Engine]Engine.Vector2)
    IL_07c3:  callvirt   instance void Game.RectangleWidget::set_Subtexture(class Game.Subtexture)
    IL_07c8:  ldarg.0
    IL_07c9:  ldfld      class Game.LabelWidget Game.WorldOptionsScreen::m_blocksTextureLabel
    IL_07ce:  ldarg.0
    IL_07cf:  ldfld      class Game.WorldSettings Game.WorldOptionsScreen::m_worldSettings
    IL_07d4:  ldfld      string Game.WorldSettings::BlocksTextureName
    IL_07d9:  call       string Game.BlocksTexturesManager::GetDisplayName(string)
    IL_07de:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_07e3:  ldarg.0
    IL_07e4:  ldfld      class Game.LabelWidget Game.WorldOptionsScreen::m_blocksTextureDetails
    IL_07e9:  ldstr      "{0}x{1}"
    IL_07ee:  ldc.i4.2
    IL_07ef:  newarr     [System.Runtime]System.Object
    IL_07f4:  dup
    IL_07f5:  ldc.i4.0
    IL_07f6:  ldloc.1
    IL_07f7:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Width()
    IL_07fc:  box        [System.Runtime]System.Int32
    IL_0801:  stelem.ref
    IL_0802:  dup
    IL_0803:  ldc.i4.1
    IL_0804:  ldloc.1
    IL_0805:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Height()
    IL_080a:  box        [System.Runtime]System.Int32
    IL_080f:  stelem.ref
    IL_0810:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0815:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_081a:  ldarg.0
    IL_081b:  ldfld      class Game.SliderWidget Game.WorldOptionsScreen::m_seaLevelOffsetSlider
    IL_0820:  ldarg.0
    IL_0821:  ldfld      class Game.WorldSettings Game.WorldOptionsScreen::m_worldSettings
    IL_0826:  ldfld      int32 Game.WorldSettings::SeaLevelOffset
    IL_082b:  conv.r4
    IL_082c:  callvirt   instance void Game.SliderWidget::set_Value(float32)
    IL_0831:  ldarg.0
    IL_0832:  ldfld      class Game.SliderWidget Game.WorldOptionsScreen::m_seaLevelOffsetSlider
    IL_0837:  ldarg.0
    IL_0838:  ldfld      class Game.WorldSettings Game.WorldOptionsScreen::m_worldSettings
    IL_083d:  ldfld      int32 Game.WorldSettings::SeaLevelOffset
    IL_0842:  conv.r4
    IL_0843:  call       string Game.WorldOptionsScreen::FormatOffset(float32)
    IL_0848:  callvirt   instance void Game.SliderWidget::set_Text(string)
    IL_084d:  ldarg.0
    IL_084e:  ldfld      class Game.SliderWidget Game.WorldOptionsScreen::m_temperatureOffsetSlider
    IL_0853:  ldarg.0
    IL_0854:  ldfld      class Game.WorldSettings Game.WorldOptionsScreen::m_worldSettings
    IL_0859:  ldfld      float32 Game.WorldSettings::TemperatureOffset
    IL_085e:  callvirt   instance void Game.SliderWidget::set_Value(float32)
    IL_0863:  ldarg.0
    IL_0864:  ldfld      class Game.SliderWidget Game.WorldOptionsScreen::m_temperatureOffsetSlider
    IL_0869:  ldarg.0
    IL_086a:  ldfld      class Game.WorldSettings Game.WorldOptionsScreen::m_worldSettings
    IL_086f:  ldfld      float32 Game.WorldSettings::TemperatureOffset
    IL_0874:  call       string Game.WorldOptionsScreen::FormatOffset(float32)
    IL_0879:  callvirt   instance void Game.SliderWidget::set_Text(string)
    IL_087e:  ldarg.0
    IL_087f:  ldfld      class Game.SliderWidget Game.WorldOptionsScreen::m_humidityOffsetSlider
    IL_0884:  ldarg.0
    IL_0885:  ldfld      class Game.WorldSettings Game.WorldOptionsScreen::m_worldSettings
    IL_088a:  ldfld      float32 Game.WorldSettings::HumidityOffset
    IL_088f:  callvirt   instance void Game.SliderWidget::set_Value(float32)
    IL_0894:  ldarg.0
    IL_0895:  ldfld      class Game.SliderWidget Game.WorldOptionsScreen::m_humidityOffsetSlider
    IL_089a:  ldarg.0
    IL_089b:  ldfld      class Game.WorldSettings Game.WorldOptionsScreen::m_worldSettings
    IL_08a0:  ldfld      float32 Game.WorldSettings::HumidityOffset
    IL_08a5:  call       string Game.WorldOptionsScreen::FormatOffset(float32)
    IL_08aa:  callvirt   instance void Game.SliderWidget::set_Text(string)
    IL_08af:  ldarg.0
    IL_08b0:  ldfld      class Game.SliderWidget Game.WorldOptionsScreen::m_biomeSizeSlider
    IL_08b5:  ldsfld     float32[] Game.WorldOptionsScreen::m_biomeSizes
    IL_08ba:  ldarg.0
    IL_08bb:  ldfld      class Game.WorldSettings Game.WorldOptionsScreen::m_worldSettings
    IL_08c0:  ldfld      float32 Game.WorldSettings::BiomeSize
    IL_08c5:  call       int32 Game.WorldOptionsScreen::FindNearestIndex(class [System.Runtime]System.Collections.Generic.IList`1<float32>,
                                                                         float32)
    IL_08ca:  conv.r4
    IL_08cb:  callvirt   instance void Game.SliderWidget::set_Value(float32)
    IL_08d0:  ldarg.0
    IL_08d1:  ldfld      class Game.SliderWidget Game.WorldOptionsScreen::m_biomeSizeSlider
    IL_08d6:  ldarg.0
    IL_08d7:  ldfld      class Game.WorldSettings Game.WorldOptionsScreen::m_worldSettings
    IL_08dc:  ldflda     float32 Game.WorldSettings::BiomeSize
    IL_08e1:  call       instance string [System.Runtime]System.Single::ToString()
    IL_08e6:  ldstr      "x"
    IL_08eb:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_08f0:  callvirt   instance void Game.SliderWidget::set_Text(string)
    IL_08f5:  ldarg.0
    IL_08f6:  ldfld      class Game.ButtonWidget Game.WorldOptionsScreen::m_environmentBehaviorButton
    IL_08fb:  ldarg.0
    IL_08fc:  ldfld      class Game.WorldSettings Game.WorldOptionsScreen::m_worldSettings
    IL_0901:  ldflda     valuetype Game.EnvironmentBehaviorMode Game.WorldSettings::EnvironmentBehaviorMode
    IL_0906:  constrained. Game.EnvironmentBehaviorMode
    IL_090c:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_0911:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_0916:  ldarg.0
    IL_0917:  ldfld      class Game.ButtonWidget Game.WorldOptionsScreen::m_timeOfDayButton
    IL_091c:  ldarg.0
    IL_091d:  ldfld      class Game.WorldSettings Game.WorldOptionsScreen::m_worldSettings
    IL_0922:  ldflda     valuetype Game.TimeOfDayMode Game.WorldSettings::TimeOfDayMode
    IL_0927:  constrained. Game.TimeOfDayMode
    IL_092d:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_0932:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_0937:  ldarg.0
    IL_0938:  ldfld      class Game.ButtonWidget Game.WorldOptionsScreen::m_weatherEffectsButton
    IL_093d:  ldarg.0
    IL_093e:  ldfld      class Game.WorldSettings Game.WorldOptionsScreen::m_worldSettings
    IL_0943:  ldfld      bool Game.WorldSettings::AreWeatherEffectsEnabled
    IL_0948:  brtrue.s   IL_0951

    IL_094a:  ldstr      "Disabled"
    IL_094f:  br.s       IL_0956

    IL_0951:  ldstr      "Enabled"
    IL_0956:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_095b:  ldarg.0
    IL_095c:  ldfld      class Game.ButtonWidget Game.WorldOptionsScreen::m_adventureRespawnButton
    IL_0961:  ldarg.0
    IL_0962:  ldfld      class Game.WorldSettings Game.WorldOptionsScreen::m_worldSettings
    IL_0967:  ldfld      bool Game.WorldSettings::IsAdventureRespawnAllowed
    IL_096c:  brtrue.s   IL_0975

    IL_096e:  ldstr      "Not Allowed"
    IL_0973:  br.s       IL_097a

    IL_0975:  ldstr      "Allowed"
    IL_097a:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_097f:  ldarg.0
    IL_0980:  ldfld      class Game.ButtonWidget Game.WorldOptionsScreen::m_adventureSurvivalMechanicsButton
    IL_0985:  ldarg.0
    IL_0986:  ldfld      class Game.WorldSettings Game.WorldOptionsScreen::m_worldSettings
    IL_098b:  ldfld      bool Game.WorldSettings::AreAdventureSurvivalMechanicsEnabled
    IL_0990:  brtrue.s   IL_0999

    IL_0992:  ldstr      "Disabled"
    IL_0997:  br.s       IL_099e

    IL_0999:  ldstr      "Enabled"
    IL_099e:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_09a3:  ldarg.0
    IL_09a4:  ldfld      class Game.ButtonWidget Game.WorldOptionsScreen::m_supernaturalCreaturesButton
    IL_09a9:  ldarg.0
    IL_09aa:  ldfld      class Game.WorldSettings Game.WorldOptionsScreen::m_worldSettings
    IL_09af:  ldfld      bool Game.WorldSettings::AreSupernaturalCreaturesEnabled
    IL_09b4:  brtrue.s   IL_09bd

    IL_09b6:  ldstr      "Disabled"
    IL_09bb:  br.s       IL_09c2

    IL_09bd:  ldstr      "Enabled"
    IL_09c2:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_09c7:  ldarg.0
    IL_09c8:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_09cd:  callvirt   instance bool Game.WidgetInput::get_Back()
    IL_09d2:  brtrue.s   IL_09f9

    IL_09d4:  ldarg.0
    IL_09d5:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_09da:  callvirt   instance bool Game.WidgetInput::get_Cancel()
    IL_09df:  brtrue.s   IL_09f9

    IL_09e1:  ldarg.0
    IL_09e2:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_09e7:  ldstr      "TopBar.Back"
    IL_09ec:  ldc.i4.1
    IL_09ed:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_09f2:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_09f7:  brfalse.s  IL_0a09

    IL_09f9:  call       class Game.Screen Game.ScreensManager::get_PreviousScreen()
    IL_09fe:  ldc.i4.0
    IL_09ff:  newarr     [System.Runtime]System.Object
    IL_0a04:  call       void Game.ScreensManager::SwitchScreen(class Game.Screen,
                                                                object[])
    IL_0a09:  ret
  } // end of method WorldOptionsScreen::Update

  .method private hidebysig static int32 
          FindNearestIndex(class [System.Runtime]System.Collections.Generic.IList`1<float32> list,
                           float32 v) cil managed
  {
    // 代码大小       53 (0x35)
    .maxstack  3
    .locals init (int32 V_0,
             int32 V_1)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  ldc.i4.0
    IL_0003:  stloc.1
    IL_0004:  br.s       IL_002a

    IL_0006:  ldarg.0
    IL_0007:  ldloc.1
    IL_0008:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IList`1<float32>::get_Item(int32)
    IL_000d:  ldarg.1
    IL_000e:  sub
    IL_000f:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_0014:  ldarg.0
    IL_0015:  ldloc.0
    IL_0016:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IList`1<float32>::get_Item(int32)
    IL_001b:  ldarg.1
    IL_001c:  sub
    IL_001d:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_0022:  bge.un.s   IL_0026

    IL_0024:  ldloc.1
    IL_0025:  stloc.0
    IL_0026:  ldloc.1
    IL_0027:  ldc.i4.1
    IL_0028:  add
    IL_0029:  stloc.1
    IL_002a:  ldloc.1
    IL_002b:  ldarg.0
    IL_002c:  callvirt   instance int32 class [System.Runtime]System.Collections.Generic.ICollection`1<float32>::get_Count()
    IL_0031:  blt.s      IL_0006

    IL_0033:  ldloc.0
    IL_0034:  ret
  } // end of method WorldOptionsScreen::FindNearestIndex

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       46 (0x2e)
    .maxstack  8
    IL_0000:  ldc.i4.s   20
    IL_0002:  newarr     [System.Runtime]System.Single
    IL_0007:  dup
    IL_0008:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=80' '<PrivateImplementationDetails>'::'1BB74D182EB25594C82208589A634454B684195A'
    IL_000d:  call       void [System.Runtime]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [System.Runtime]System.Array,
                                                                                                              valuetype [System.Runtime]System.RuntimeFieldHandle)
    IL_0012:  stsfld     float32[] Game.WorldOptionsScreen::m_islandSizes
    IL_0017:  ldc.i4.7
    IL_0018:  newarr     [System.Runtime]System.Single
    IL_001d:  dup
    IL_001e:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=28' '<PrivateImplementationDetails>'::'7CC08966484CB1007F543504E099754076AE13AC'
    IL_0023:  call       void [System.Runtime]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [System.Runtime]System.Array,
                                                                                                              valuetype [System.Runtime]System.RuntimeFieldHandle)
    IL_0028:  stsfld     float32[] Game.WorldOptionsScreen::m_biomeSizes
    IL_002d:  ret
  } // end of method WorldOptionsScreen::.cctor

  .method private hidebysig instance void 
          '<Update>b__39_1'(object e) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       116 (0x74)
    .maxstack  6
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.WorldSettings Game.WorldOptionsScreen::m_worldSettings
    IL_0006:  ldfld      valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_000b:  brfalse.s  IL_0033

    IL_000d:  ldarg.1
    IL_000e:  unbox.any  Game.TerrainGenerationMode
    IL_0013:  ldc.i4.2
    IL_0014:  bne.un.s   IL_0033

    IL_0016:  ldnull
    IL_0017:  ldstr      "Unavailable"
    IL_001c:  ldstr      "Flat terrain is only available in Creative Mode"
    IL_0021:  ldstr      "OK"
    IL_0026:  ldnull
    IL_0027:  ldnull
    IL_0028:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                 string,
                                                                 string,
                                                                 string,
                                                                 class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
    IL_002d:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_0032:  ret

    IL_0033:  ldarg.0
    IL_0034:  ldfld      class Game.WorldSettings Game.WorldOptionsScreen::m_worldSettings
    IL_0039:  ldarg.1
    IL_003a:  unbox.any  Game.TerrainGenerationMode
    IL_003f:  stfld      valuetype Game.TerrainGenerationMode Game.WorldSettings::TerrainGenerationMode
    IL_0044:  ldarg.0
    IL_0045:  ldfld      class Game.LabelWidget Game.WorldOptionsScreen::m_descriptionLabel
    IL_004a:  ldstr      "TerrainGenerationMode."
    IL_004f:  ldarg.0
    IL_0050:  ldfld      class Game.WorldSettings Game.WorldOptionsScreen::m_worldSettings
    IL_0055:  ldfld      valuetype Game.TerrainGenerationMode Game.WorldSettings::TerrainGenerationMode
    IL_005a:  box        Game.TerrainGenerationMode
    IL_005f:  ldstr      ".Description"
    IL_0064:  call       string [System.Runtime]System.String::Concat(object,
                                                                      object,
                                                                      object)
    IL_0069:  call       string Game.StringsManager::GetString(string)
    IL_006e:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0073:  ret
  } // end of method WorldOptionsScreen::'<Update>b__39_1'

  .method private hidebysig instance void 
          '<Update>b__39_3'(object index) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.WorldSettings Game.WorldOptionsScreen::m_worldSettings
    IL_0006:  ldarg.1
    IL_0007:  unbox.any  [System.Runtime]System.Int32
    IL_000c:  stfld      int32 Game.WorldSettings::TerrainBlockIndex
    IL_0011:  ret
  } // end of method WorldOptionsScreen::'<Update>b__39_3'

  .method private hidebysig instance class Game.Widget 
          '<Update>b__39_4'(object item) cil managed
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
    IL_002c:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0031:  ldstr      "BlocksTextureItem.Text"
    IL_0036:  ldc.i4.1
    IL_0037:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_003c:  ldarg.1
    IL_003d:  castclass  [System.Runtime]System.String
    IL_0042:  call       string Game.BlocksTexturesManager::GetDisplayName(string)
    IL_0047:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_004c:  ldloc.1
    IL_004d:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0052:  ldstr      "BlocksTextureItem.Details"
    IL_0057:  ldc.i4.1
    IL_0058:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
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
    IL_008f:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0094:  ldstr      "BlocksTextureItem.Icon"
    IL_0099:  ldc.i4.1
    IL_009a:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.RectangleWidget>(string,
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
  } // end of method WorldOptionsScreen::'<Update>b__39_4'

  .method private hidebysig instance void 
          '<Update>b__39_5'(object item) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.WorldSettings Game.WorldOptionsScreen::m_worldSettings
    IL_0006:  ldarg.1
    IL_0007:  castclass  [System.Runtime]System.String
    IL_000c:  stfld      string Game.WorldSettings::BlocksTextureName
    IL_0011:  ret
  } // end of method WorldOptionsScreen::'<Update>b__39_5'

} // end of class Game.WorldOptionsScreen