.class public auto ansi beforefieldinit Game.LoadingScreen
       extends Game.Screen
{
  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass5_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public valuetype [Engine]Engine.Content.ContentInfo localContentInfo
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass5_0'::.ctor

    .method assembly hidebysig instance void 
            '<.ctor>b__5'() cil managed
    {
      // 代码大小       18 (0x12)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldflda     valuetype [Engine]Engine.Content.ContentInfo Game.LoadingScreen/'<>c__DisplayClass5_0'::localContentInfo
      IL_0006:  ldfld      string [Engine]Engine.Content.ContentInfo::Name
      IL_000b:  call       object Game.ContentManager::Get(string)
      IL_0010:  pop
      IL_0011:  ret
    } // end of method '<>c__DisplayClass5_0'::'<.ctor>b__5'

  } // end of class '<>c__DisplayClass5_0'

  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.LoadingScreen/'<>c' '<>9'
    .field public static class [System.Runtime]System.Action '<>9__5_0'
    .field public static class [System.Runtime]System.Action '<>9__5_1'
    .field public static class [System.Runtime]System.Action '<>9__5_2'
    .field public static class [System.Runtime]System.Action '<>9__5_3'
    .field public static class [System.Runtime]System.Action '<>9__5_4'
    .field public static class [System.Runtime]System.Action '<>9__5_6'
    .field public static class [System.Runtime]System.Action '<>9__5_7'
    .field public static class [System.Runtime]System.Action '<>9__5_8'
    .field public static class [System.Runtime]System.Action '<>9__5_9'
    .field public static class [System.Runtime]System.Action '<>9__5_10'
    .field public static class [System.Runtime]System.Action '<>9__5_11'
    .field public static class [System.Runtime]System.Action '<>9__5_12'
    .field public static class [System.Runtime]System.Action '<>9__8_1'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.LoadingScreen/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.LoadingScreen/'<>c' Game.LoadingScreen/'<>c'::'<>9'
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
            '<.ctor>b__5_0'() cil managed
    {
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  call       void Game.CommunityContentManager::Initialize()
      IL_0005:  ret
    } // end of method '<>c'::'<.ctor>b__5_0'

    .method assembly hidebysig instance void 
            '<.ctor>b__5_1'() cil managed
    {
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  call       void Game.MotdManager::Initialize()
      IL_0005:  ret
    } // end of method '<>c'::'<.ctor>b__5_1'

    .method assembly hidebysig instance void 
            '<.ctor>b__5_2'() cil managed
    {
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  call       void Game.LightingManager::Initialize()
      IL_0005:  ret
    } // end of method '<>c'::'<.ctor>b__5_2'

    .method assembly hidebysig instance void 
            '<.ctor>b__5_3'() cil managed
    {
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  call       void Game.StringsManager::LoadStrings()
      IL_0005:  ret
    } // end of method '<>c'::'<.ctor>b__5_3'

    .method assembly hidebysig instance void 
            '<.ctor>b__5_4'() cil managed
    {
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  call       void Game.TextureAtlasManager::LoadAtlases()
      IL_0005:  ret
    } // end of method '<>c'::'<.ctor>b__5_4'

    .method assembly hidebysig instance void 
            '<.ctor>b__5_6'() cil managed
    {
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  call       void Game.DatabaseManager::LoadDatabase()
      IL_0005:  ret
    } // end of method '<>c'::'<.ctor>b__5_6'

    .method assembly hidebysig instance void 
            '<.ctor>b__5_7'() cil managed
    {
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  call       void Game.WorldsManager::Initialize()
      IL_0005:  ret
    } // end of method '<>c'::'<.ctor>b__5_7'

    .method assembly hidebysig instance void 
            '<.ctor>b__5_8'() cil managed
    {
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  call       void Game.BlocksTexturesManager::Initialize()
      IL_0005:  ret
    } // end of method '<>c'::'<.ctor>b__5_8'

    .method assembly hidebysig instance void 
            '<.ctor>b__5_9'() cil managed
    {
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  call       void Game.CharacterSkinsManager::Initialize()
      IL_0005:  ret
    } // end of method '<>c'::'<.ctor>b__5_9'

    .method assembly hidebysig instance void 
            '<.ctor>b__5_10'() cil managed
    {
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  call       void Game.FurniturePacksManager::Initialize()
      IL_0005:  ret
    } // end of method '<>c'::'<.ctor>b__5_10'

    .method assembly hidebysig instance void 
            '<.ctor>b__5_11'() cil managed
    {
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  call       void Game.BlocksManager::Initialize()
      IL_0005:  ret
    } // end of method '<>c'::'<.ctor>b__5_11'

    .method assembly hidebysig instance void 
            '<.ctor>b__5_12'() cil managed
    {
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  call       void Game.CraftingRecipesManager::Initialize()
      IL_0005:  ret
    } // end of method '<>c'::'<.ctor>b__5_12'

    .method assembly hidebysig instance void 
            '<Update>b__8_1'() cil managed
    {
      // 代码大小       17 (0x11)
      .maxstack  8
      IL_0000:  ldstr      "MainMenu"
      IL_0005:  ldc.i4.0
      IL_0006:  newarr     [System.Runtime]System.Object
      IL_000b:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                  object[])
      IL_0010:  ret
    } // end of method '<>c'::'<Update>b__8_1'

  } // end of class '<>c'

  .field private class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Action> m_loadActions
  .field private int32 m_index
  .field private bool m_loadingFinished
  .field private bool m_pauseLoading
  .field private bool m_loadingErrorsSuppressed
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       569 (0x239)
    .maxstack  3
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0,
             valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype [Engine]Engine.Content.ContentInfo> V_1,
             valuetype [Engine]Engine.ReadOnlyList`1<valuetype [Engine]Engine.Content.ContentInfo> V_2,
             valuetype [Engine]Engine.Content.ContentInfo V_3,
             class Game.LoadingScreen/'<>c__DisplayClass5_0' V_4)
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Action>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Action> Game.LoadingScreen::m_loadActions
    IL_000b:  ldarg.0
    IL_000c:  call       instance void Game.Screen::.ctor()
    IL_0011:  ldstr      "Screens/LoadingScreen"
    IL_0016:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_001b:  stloc.0
    IL_001c:  ldarg.0
    IL_001d:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0022:  ldarg.0
    IL_0023:  ldloc.0
    IL_0024:  call       void Game.WidgetsManager::LoadWidgetContents(class Game.Widget,
                                                                      object,
                                                                      class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_0029:  ldarg.0
    IL_002a:  ldsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__5_0'
    IL_002f:  dup
    IL_0030:  brtrue.s   IL_0049

    IL_0032:  pop
    IL_0033:  ldsfld     class Game.LoadingScreen/'<>c' Game.LoadingScreen/'<>c'::'<>9'
    IL_0038:  ldftn      instance void Game.LoadingScreen/'<>c'::'<.ctor>b__5_0'()
    IL_003e:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0043:  dup
    IL_0044:  stsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__5_0'
    IL_0049:  call       instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_004e:  ldarg.0
    IL_004f:  ldsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__5_1'
    IL_0054:  dup
    IL_0055:  brtrue.s   IL_006e

    IL_0057:  pop
    IL_0058:  ldsfld     class Game.LoadingScreen/'<>c' Game.LoadingScreen/'<>c'::'<>9'
    IL_005d:  ldftn      instance void Game.LoadingScreen/'<>c'::'<.ctor>b__5_1'()
    IL_0063:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0068:  dup
    IL_0069:  stsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__5_1'
    IL_006e:  call       instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_0073:  ldarg.0
    IL_0074:  ldsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__5_2'
    IL_0079:  dup
    IL_007a:  brtrue.s   IL_0093

    IL_007c:  pop
    IL_007d:  ldsfld     class Game.LoadingScreen/'<>c' Game.LoadingScreen/'<>c'::'<>9'
    IL_0082:  ldftn      instance void Game.LoadingScreen/'<>c'::'<.ctor>b__5_2'()
    IL_0088:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_008d:  dup
    IL_008e:  stsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__5_2'
    IL_0093:  call       instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_0098:  ldarg.0
    IL_0099:  ldsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__5_3'
    IL_009e:  dup
    IL_009f:  brtrue.s   IL_00b8

    IL_00a1:  pop
    IL_00a2:  ldsfld     class Game.LoadingScreen/'<>c' Game.LoadingScreen/'<>c'::'<>9'
    IL_00a7:  ldftn      instance void Game.LoadingScreen/'<>c'::'<.ctor>b__5_3'()
    IL_00ad:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00b2:  dup
    IL_00b3:  stsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__5_3'
    IL_00b8:  call       instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_00bd:  ldarg.0
    IL_00be:  ldsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__5_4'
    IL_00c3:  dup
    IL_00c4:  brtrue.s   IL_00dd

    IL_00c6:  pop
    IL_00c7:  ldsfld     class Game.LoadingScreen/'<>c' Game.LoadingScreen/'<>c'::'<>9'
    IL_00cc:  ldftn      instance void Game.LoadingScreen/'<>c'::'<.ctor>b__5_4'()
    IL_00d2:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00d7:  dup
    IL_00d8:  stsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__5_4'
    IL_00dd:  call       instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_00e2:  call       valuetype [Engine]Engine.ReadOnlyList`1<valuetype [Engine]Engine.Content.ContentInfo> Game.ContentManager::List()
    IL_00e7:  stloc.2
    IL_00e8:  ldloca.s   V_2
    IL_00ea:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<valuetype [Engine]Engine.Content.ContentInfo>::GetEnumerator()
    IL_00ef:  stloc.1
    .try
    {
      IL_00f0:  br.s       IL_011c

      IL_00f2:  ldloca.s   V_1
      IL_00f4:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype [Engine]Engine.Content.ContentInfo>::get_Current()
      IL_00f9:  stloc.3
      IL_00fa:  newobj     instance void Game.LoadingScreen/'<>c__DisplayClass5_0'::.ctor()
      IL_00ff:  stloc.s    V_4
      IL_0101:  ldloc.s    V_4
      IL_0103:  ldloc.3
      IL_0104:  stfld      valuetype [Engine]Engine.Content.ContentInfo Game.LoadingScreen/'<>c__DisplayClass5_0'::localContentInfo
      IL_0109:  ldarg.0
      IL_010a:  ldloc.s    V_4
      IL_010c:  ldftn      instance void Game.LoadingScreen/'<>c__DisplayClass5_0'::'<.ctor>b__5'()
      IL_0112:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                              native int)
      IL_0117:  call       instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
      IL_011c:  ldloca.s   V_1
      IL_011e:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype [Engine]Engine.Content.ContentInfo>::MoveNext()
      IL_0123:  brtrue.s   IL_00f2

      IL_0125:  leave.s    IL_0135

    }  // end .try
    finally
    {
      IL_0127:  ldloca.s   V_1
      IL_0129:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype [Engine]Engine.Content.ContentInfo>
      IL_012f:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0134:  endfinally
    }  // end handler
    IL_0135:  ldarg.0
    IL_0136:  ldsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__5_6'
    IL_013b:  dup
    IL_013c:  brtrue.s   IL_0155

    IL_013e:  pop
    IL_013f:  ldsfld     class Game.LoadingScreen/'<>c' Game.LoadingScreen/'<>c'::'<>9'
    IL_0144:  ldftn      instance void Game.LoadingScreen/'<>c'::'<.ctor>b__5_6'()
    IL_014a:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_014f:  dup
    IL_0150:  stsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__5_6'
    IL_0155:  call       instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_015a:  ldarg.0
    IL_015b:  ldsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__5_7'
    IL_0160:  dup
    IL_0161:  brtrue.s   IL_017a

    IL_0163:  pop
    IL_0164:  ldsfld     class Game.LoadingScreen/'<>c' Game.LoadingScreen/'<>c'::'<>9'
    IL_0169:  ldftn      instance void Game.LoadingScreen/'<>c'::'<.ctor>b__5_7'()
    IL_016f:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0174:  dup
    IL_0175:  stsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__5_7'
    IL_017a:  call       instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_017f:  ldarg.0
    IL_0180:  ldsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__5_8'
    IL_0185:  dup
    IL_0186:  brtrue.s   IL_019f

    IL_0188:  pop
    IL_0189:  ldsfld     class Game.LoadingScreen/'<>c' Game.LoadingScreen/'<>c'::'<>9'
    IL_018e:  ldftn      instance void Game.LoadingScreen/'<>c'::'<.ctor>b__5_8'()
    IL_0194:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0199:  dup
    IL_019a:  stsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__5_8'
    IL_019f:  call       instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_01a4:  ldarg.0
    IL_01a5:  ldsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__5_9'
    IL_01aa:  dup
    IL_01ab:  brtrue.s   IL_01c4

    IL_01ad:  pop
    IL_01ae:  ldsfld     class Game.LoadingScreen/'<>c' Game.LoadingScreen/'<>c'::'<>9'
    IL_01b3:  ldftn      instance void Game.LoadingScreen/'<>c'::'<.ctor>b__5_9'()
    IL_01b9:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_01be:  dup
    IL_01bf:  stsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__5_9'
    IL_01c4:  call       instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_01c9:  ldarg.0
    IL_01ca:  ldsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__5_10'
    IL_01cf:  dup
    IL_01d0:  brtrue.s   IL_01e9

    IL_01d2:  pop
    IL_01d3:  ldsfld     class Game.LoadingScreen/'<>c' Game.LoadingScreen/'<>c'::'<>9'
    IL_01d8:  ldftn      instance void Game.LoadingScreen/'<>c'::'<.ctor>b__5_10'()
    IL_01de:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_01e3:  dup
    IL_01e4:  stsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__5_10'
    IL_01e9:  call       instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_01ee:  ldarg.0
    IL_01ef:  ldsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__5_11'
    IL_01f4:  dup
    IL_01f5:  brtrue.s   IL_020e

    IL_01f7:  pop
    IL_01f8:  ldsfld     class Game.LoadingScreen/'<>c' Game.LoadingScreen/'<>c'::'<>9'
    IL_01fd:  ldftn      instance void Game.LoadingScreen/'<>c'::'<.ctor>b__5_11'()
    IL_0203:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0208:  dup
    IL_0209:  stsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__5_11'
    IL_020e:  call       instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_0213:  ldarg.0
    IL_0214:  ldsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__5_12'
    IL_0219:  dup
    IL_021a:  brtrue.s   IL_0233

    IL_021c:  pop
    IL_021d:  ldsfld     class Game.LoadingScreen/'<>c' Game.LoadingScreen/'<>c'::'<>9'
    IL_0222:  ldftn      instance void Game.LoadingScreen/'<>c'::'<.ctor>b__5_12'()
    IL_0228:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_022d:  dup
    IL_022e:  stsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__5_12'
    IL_0233:  call       instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_0238:  ret
  } // end of method LoadingScreen::.ctor

  .method public hidebysig instance void 
          AddLoadAction(class [System.Runtime]System.Action action) cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Action> Game.LoadingScreen::m_loadActions
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Action>::Add(!0)
    IL_000c:  ret
  } // end of method LoadingScreen::AddLoadAction

  .method public hidebysig virtual instance void 
          Leave() cil managed
  {
    // 代码大小       21 (0x15)
    .maxstack  8
    IL_0000:  ldstr      "Textures/Gui/CandyRufusLogo"
    IL_0005:  call       void Game.ContentManager::Dispose(string)
    IL_000a:  ldstr      "Textures/Gui/EngineLogo"
    IL_000f:  call       void Game.ContentManager::Dispose(string)
    IL_0014:  ret
  } // end of method LoadingScreen::Leave

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       276 (0x114)
    .maxstack  6
    .locals init (float64 V_0,
             int32 V_1,
             class [System.Runtime]System.Exception V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.LoadingScreen::m_loadingFinished
    IL_0006:  brtrue     IL_0113

    IL_000b:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_0010:  stloc.0
    IL_0011:  br         IL_009e

    IL_0016:  nop
    .try
    {
      IL_0017:  ldarg.0
      IL_0018:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Action> Game.LoadingScreen::m_loadActions
      IL_001d:  ldarg.0
      IL_001e:  ldarg.0
      IL_001f:  ldfld      int32 Game.LoadingScreen::m_index
      IL_0024:  stloc.1
      IL_0025:  ldloc.1
      IL_0026:  ldc.i4.1
      IL_0027:  add
      IL_0028:  stfld      int32 Game.LoadingScreen::m_index
      IL_002d:  ldloc.1
      IL_002e:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Action>::get_Item(int32)
      IL_0033:  callvirt   instance void [System.Runtime]System.Action::Invoke()
      IL_0038:  leave.s    IL_008c

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_003a:  stloc.2
      IL_003b:  ldstr      "Loading error. Reason: "
      IL_0040:  ldloc.2
      IL_0041:  callvirt   instance string [System.Runtime]System.Exception::get_Message()
      IL_0046:  call       string [System.Runtime]System.String::Concat(string,
                                                                        string)
      IL_004b:  call       void [Engine]Engine.Log::Error(string)
      IL_0050:  ldarg.0
      IL_0051:  ldfld      bool Game.LoadingScreen::m_loadingErrorsSuppressed
      IL_0056:  brtrue.s   IL_008a

      IL_0058:  ldarg.0
      IL_0059:  ldc.i4.1
      IL_005a:  stfld      bool Game.LoadingScreen::m_pauseLoading
      IL_005f:  ldstr      "Loading Error"
      IL_0064:  ldloc.2
      IL_0065:  call       string Game.ExceptionManager::MakeFullErrorMessage(class [System.Runtime]System.Exception)
      IL_006a:  ldstr      "OK"
      IL_006f:  ldstr      "Suppress"
      IL_0074:  ldarg.0
      IL_0075:  ldftn      instance void Game.LoadingScreen::'<Update>b__8_0'(valuetype Game.MessageDialogButton)
      IL_007b:  newobj     instance void class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>::.ctor(object,
                                                                                                                          native int)
      IL_0080:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                   string,
                                                                   string,
                                                                   string,
                                                                   class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
      IL_0085:  call       void Game.DialogsManager::ShowDialog(class Game.Dialog)
      IL_008a:  leave.s    IL_008c

    }  // end handler
    IL_008c:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_0091:  ldloc.0
    IL_0092:  sub
    IL_0093:  ldc.r8     0.10000000000000001
    IL_009c:  bgt.s      IL_00bc

    IL_009e:  ldarg.0
    IL_009f:  ldfld      bool Game.LoadingScreen::m_pauseLoading
    IL_00a4:  brtrue.s   IL_00bc

    IL_00a6:  ldarg.0
    IL_00a7:  ldfld      int32 Game.LoadingScreen::m_index
    IL_00ac:  ldarg.0
    IL_00ad:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Action> Game.LoadingScreen::m_loadActions
    IL_00b2:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Action>::get_Count()
    IL_00b7:  blt        IL_0016

    IL_00bc:  ldarg.0
    IL_00bd:  ldfld      int32 Game.LoadingScreen::m_index
    IL_00c2:  ldarg.0
    IL_00c3:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Action> Game.LoadingScreen::m_loadActions
    IL_00c8:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Action>::get_Count()
    IL_00cd:  blt.s      IL_0113

    IL_00cf:  ldarg.0
    IL_00d0:  ldc.i4.1
    IL_00d1:  stfld      bool Game.LoadingScreen::m_loadingFinished
    IL_00d6:  ldstr      "Audio/UI/ButtonClick"
    IL_00db:  ldc.r4     1.
    IL_00e0:  ldc.r4     0.0
    IL_00e5:  ldc.r4     0.0
    IL_00ea:  call       void Game.AudioManager::PlaySound(string,
                                                           float32,
                                                           float32,
                                                           float32)
    IL_00ef:  ldsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__8_1'
    IL_00f4:  dup
    IL_00f5:  brtrue.s   IL_010e

    IL_00f7:  pop
    IL_00f8:  ldsfld     class Game.LoadingScreen/'<>c' Game.LoadingScreen/'<>c'::'<>9'
    IL_00fd:  ldftn      instance void Game.LoadingScreen/'<>c'::'<Update>b__8_1'()
    IL_0103:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0108:  dup
    IL_0109:  stsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__8_1'
    IL_010e:  call       void Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
    IL_0113:  ret
  } // end of method LoadingScreen::Update

  .method private hidebysig instance void 
          '<Update>b__8_0'(valuetype Game.MessageDialogButton b) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  brtrue.s   IL_000b

    IL_0003:  ldarg.0
    IL_0004:  ldc.i4.0
    IL_0005:  stfld      bool Game.LoadingScreen::m_pauseLoading
    IL_000a:  ret

    IL_000b:  ldarg.1
    IL_000c:  ldc.i4.1
    IL_000d:  bne.un.s   IL_0016

    IL_000f:  ldarg.0
    IL_0010:  ldc.i4.1
    IL_0011:  stfld      bool Game.LoadingScreen::m_loadingErrorsSuppressed
    IL_0016:  ret
  } // end of method LoadingScreen::'<Update>b__8_0'

} // end of class Game.LoadingScreen