.class public auto ansi beforefieldinit Game.LoadingScreen
       extends Game.Screen
{
  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass6_0'
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
    } // end of method '<>c__DisplayClass6_0'::.ctor

    .method assembly hidebysig instance void 
            '<.ctor>b__5'() cil managed
    {
      // 代码大小       18 (0x12)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldflda     valuetype [Engine]Engine.Content.ContentInfo Game.LoadingScreen/'<>c__DisplayClass6_0'::localContentInfo
      IL_0006:  ldfld      string [Engine]Engine.Content.ContentInfo::Name
      IL_000b:  call       object Game.ContentManager::Get(string)
      IL_0010:  pop
      IL_0011:  ret
    } // end of method '<>c__DisplayClass6_0'::'<.ctor>b__5'

  } // end of class '<>c__DisplayClass6_0'

  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.LoadingScreen/'<>c' '<>9'
    .field public static class [System.Runtime]System.Action '<>9__6_0'
    .field public static class [System.Runtime]System.Action '<>9__6_1'
    .field public static class [System.Runtime]System.Action '<>9__6_2'
    .field public static class [System.Runtime]System.Action '<>9__6_3'
    .field public static class [System.Runtime]System.Action '<>9__6_4'
    .field public static class [System.Runtime]System.Action '<>9__6_6'
    .field public static class [System.Runtime]System.Action '<>9__6_7'
    .field public static class [System.Runtime]System.Action '<>9__6_8'
    .field public static class [System.Runtime]System.Action '<>9__6_9'
    .field public static class [System.Runtime]System.Action '<>9__6_10'
    .field public static class [System.Runtime]System.Action '<>9__6_11'
    .field public static class [System.Runtime]System.Action '<>9__6_12'
    .field public static class [System.Runtime]System.Action '<>9__6_13'
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
            '<.ctor>b__6_0'() cil managed
    {
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  call       void Game.CommunityContentManager::Initialize()
      IL_0005:  ret
    } // end of method '<>c'::'<.ctor>b__6_0'

    .method assembly hidebysig instance void 
            '<.ctor>b__6_1'() cil managed
    {
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  call       void Game.MotdManager::Initialize()
      IL_0005:  ret
    } // end of method '<>c'::'<.ctor>b__6_1'

    .method assembly hidebysig instance void 
            '<.ctor>b__6_2'() cil managed
    {
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  call       void Game.LightingManager::Initialize()
      IL_0005:  ret
    } // end of method '<>c'::'<.ctor>b__6_2'

    .method assembly hidebysig instance void 
            '<.ctor>b__6_3'() cil managed
    {
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  call       void Game.StringsManager::LoadStrings()
      IL_0005:  ret
    } // end of method '<>c'::'<.ctor>b__6_3'

    .method assembly hidebysig instance void 
            '<.ctor>b__6_4'() cil managed
    {
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  call       void Game.TextureAtlasManager::LoadAtlases()
      IL_0005:  ret
    } // end of method '<>c'::'<.ctor>b__6_4'

    .method assembly hidebysig instance void 
            '<.ctor>b__6_6'() cil managed
    {
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  call       void Game.DatabaseManager::Initialize()
      IL_0005:  ret
    } // end of method '<>c'::'<.ctor>b__6_6'

    .method assembly hidebysig instance void 
            '<.ctor>b__6_7'() cil managed
    {
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  call       void Game.WorldsManager::Initialize()
      IL_0005:  ret
    } // end of method '<>c'::'<.ctor>b__6_7'

    .method assembly hidebysig instance void 
            '<.ctor>b__6_8'() cil managed
    {
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  call       void Game.BlocksTexturesManager::Initialize()
      IL_0005:  ret
    } // end of method '<>c'::'<.ctor>b__6_8'

    .method assembly hidebysig instance void 
            '<.ctor>b__6_9'() cil managed
    {
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  call       void Game.CharacterSkinsManager::Initialize()
      IL_0005:  ret
    } // end of method '<>c'::'<.ctor>b__6_9'

    .method assembly hidebysig instance void 
            '<.ctor>b__6_10'() cil managed
    {
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  call       void Game.FurniturePacksManager::Initialize()
      IL_0005:  ret
    } // end of method '<>c'::'<.ctor>b__6_10'

    .method assembly hidebysig instance void 
            '<.ctor>b__6_11'() cil managed
    {
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  call       void Game.BlocksManager::Initialize()
      IL_0005:  ret
    } // end of method '<>c'::'<.ctor>b__6_11'

    .method assembly hidebysig instance void 
            '<.ctor>b__6_12'() cil managed
    {
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  call       void Game.CraftingRecipesManager::Initialize()
      IL_0005:  ret
    } // end of method '<>c'::'<.ctor>b__6_12'

    .method assembly hidebysig instance void 
            '<.ctor>b__6_13'() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldc.i4.1
      IL_0001:  call       void Game.MusicManager::set_CurrentMix(valuetype Game.MusicManager/Mix)
      IL_0006:  ret
    } // end of method '<>c'::'<.ctor>b__6_13'

  } // end of class '<>c'

  .field private class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Action> m_loadActions
  .field private int32 m_index
  .field private bool m_loadingStarted
  .field private bool m_loadingFinished
  .field private bool m_pauseLoading
  .field private bool m_loadingErrorsSuppressed
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       601 (0x259)
    .maxstack  3
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0,
             valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype [Engine]Engine.Content.ContentInfo> V_1,
             valuetype [Engine]Engine.ReadOnlyList`1<valuetype [Engine]Engine.Content.ContentInfo> V_2,
             valuetype [Engine]Engine.Content.ContentInfo V_3,
             class Game.LoadingScreen/'<>c__DisplayClass6_0' V_4)
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Action>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Action> Game.LoadingScreen::m_loadActions
    IL_000b:  ldarg.0
    IL_000c:  call       instance void Game.Screen::.ctor()
    IL_0011:  ldstr      "Screens/LoadingScreen"
    IL_0016:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_001b:  stloc.0
    IL_001c:  ldarg.0
    IL_001d:  ldarg.0
    IL_001e:  ldloc.0
    IL_001f:  call       void Game.WidgetsManager::LoadWidgetContents(class Game.Widget,
                                                                      object,
                                                                      class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_0024:  ldarg.0
    IL_0025:  ldsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__6_0'
    IL_002a:  dup
    IL_002b:  brtrue.s   IL_0044

    IL_002d:  pop
    IL_002e:  ldsfld     class Game.LoadingScreen/'<>c' Game.LoadingScreen/'<>c'::'<>9'
    IL_0033:  ldftn      instance void Game.LoadingScreen/'<>c'::'<.ctor>b__6_0'()
    IL_0039:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_003e:  dup
    IL_003f:  stsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__6_0'
    IL_0044:  call       instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_0049:  ldarg.0
    IL_004a:  ldsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__6_1'
    IL_004f:  dup
    IL_0050:  brtrue.s   IL_0069

    IL_0052:  pop
    IL_0053:  ldsfld     class Game.LoadingScreen/'<>c' Game.LoadingScreen/'<>c'::'<>9'
    IL_0058:  ldftn      instance void Game.LoadingScreen/'<>c'::'<.ctor>b__6_1'()
    IL_005e:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0063:  dup
    IL_0064:  stsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__6_1'
    IL_0069:  call       instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_006e:  ldarg.0
    IL_006f:  ldsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__6_2'
    IL_0074:  dup
    IL_0075:  brtrue.s   IL_008e

    IL_0077:  pop
    IL_0078:  ldsfld     class Game.LoadingScreen/'<>c' Game.LoadingScreen/'<>c'::'<>9'
    IL_007d:  ldftn      instance void Game.LoadingScreen/'<>c'::'<.ctor>b__6_2'()
    IL_0083:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0088:  dup
    IL_0089:  stsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__6_2'
    IL_008e:  call       instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_0093:  ldarg.0
    IL_0094:  ldsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__6_3'
    IL_0099:  dup
    IL_009a:  brtrue.s   IL_00b3

    IL_009c:  pop
    IL_009d:  ldsfld     class Game.LoadingScreen/'<>c' Game.LoadingScreen/'<>c'::'<>9'
    IL_00a2:  ldftn      instance void Game.LoadingScreen/'<>c'::'<.ctor>b__6_3'()
    IL_00a8:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00ad:  dup
    IL_00ae:  stsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__6_3'
    IL_00b3:  call       instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_00b8:  ldarg.0
    IL_00b9:  ldsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__6_4'
    IL_00be:  dup
    IL_00bf:  brtrue.s   IL_00d8

    IL_00c1:  pop
    IL_00c2:  ldsfld     class Game.LoadingScreen/'<>c' Game.LoadingScreen/'<>c'::'<>9'
    IL_00c7:  ldftn      instance void Game.LoadingScreen/'<>c'::'<.ctor>b__6_4'()
    IL_00cd:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00d2:  dup
    IL_00d3:  stsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__6_4'
    IL_00d8:  call       instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_00dd:  call       valuetype [Engine]Engine.ReadOnlyList`1<valuetype [Engine]Engine.Content.ContentInfo> Game.ContentManager::List()
    IL_00e2:  stloc.2
    IL_00e3:  ldloca.s   V_2
    IL_00e5:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<valuetype [Engine]Engine.Content.ContentInfo>::GetEnumerator()
    IL_00ea:  stloc.1
    .try
    {
      IL_00eb:  br.s       IL_0117

      IL_00ed:  ldloca.s   V_1
      IL_00ef:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype [Engine]Engine.Content.ContentInfo>::get_Current()
      IL_00f4:  stloc.3
      IL_00f5:  newobj     instance void Game.LoadingScreen/'<>c__DisplayClass6_0'::.ctor()
      IL_00fa:  stloc.s    V_4
      IL_00fc:  ldloc.s    V_4
      IL_00fe:  ldloc.3
      IL_00ff:  stfld      valuetype [Engine]Engine.Content.ContentInfo Game.LoadingScreen/'<>c__DisplayClass6_0'::localContentInfo
      IL_0104:  ldarg.0
      IL_0105:  ldloc.s    V_4
      IL_0107:  ldftn      instance void Game.LoadingScreen/'<>c__DisplayClass6_0'::'<.ctor>b__5'()
      IL_010d:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                              native int)
      IL_0112:  call       instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
      IL_0117:  ldloca.s   V_1
      IL_0119:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype [Engine]Engine.Content.ContentInfo>::MoveNext()
      IL_011e:  brtrue.s   IL_00ed

      IL_0120:  leave.s    IL_0130

    }  // end .try
    finally
    {
      IL_0122:  ldloca.s   V_1
      IL_0124:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype [Engine]Engine.Content.ContentInfo>
      IL_012a:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_012f:  endfinally
    }  // end handler
    IL_0130:  ldarg.0
    IL_0131:  ldsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__6_6'
    IL_0136:  dup
    IL_0137:  brtrue.s   IL_0150

    IL_0139:  pop
    IL_013a:  ldsfld     class Game.LoadingScreen/'<>c' Game.LoadingScreen/'<>c'::'<>9'
    IL_013f:  ldftn      instance void Game.LoadingScreen/'<>c'::'<.ctor>b__6_6'()
    IL_0145:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_014a:  dup
    IL_014b:  stsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__6_6'
    IL_0150:  call       instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_0155:  ldarg.0
    IL_0156:  ldsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__6_7'
    IL_015b:  dup
    IL_015c:  brtrue.s   IL_0175

    IL_015e:  pop
    IL_015f:  ldsfld     class Game.LoadingScreen/'<>c' Game.LoadingScreen/'<>c'::'<>9'
    IL_0164:  ldftn      instance void Game.LoadingScreen/'<>c'::'<.ctor>b__6_7'()
    IL_016a:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_016f:  dup
    IL_0170:  stsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__6_7'
    IL_0175:  call       instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_017a:  ldarg.0
    IL_017b:  ldsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__6_8'
    IL_0180:  dup
    IL_0181:  brtrue.s   IL_019a

    IL_0183:  pop
    IL_0184:  ldsfld     class Game.LoadingScreen/'<>c' Game.LoadingScreen/'<>c'::'<>9'
    IL_0189:  ldftn      instance void Game.LoadingScreen/'<>c'::'<.ctor>b__6_8'()
    IL_018f:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0194:  dup
    IL_0195:  stsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__6_8'
    IL_019a:  call       instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_019f:  ldarg.0
    IL_01a0:  ldsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__6_9'
    IL_01a5:  dup
    IL_01a6:  brtrue.s   IL_01bf

    IL_01a8:  pop
    IL_01a9:  ldsfld     class Game.LoadingScreen/'<>c' Game.LoadingScreen/'<>c'::'<>9'
    IL_01ae:  ldftn      instance void Game.LoadingScreen/'<>c'::'<.ctor>b__6_9'()
    IL_01b4:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_01b9:  dup
    IL_01ba:  stsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__6_9'
    IL_01bf:  call       instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_01c4:  ldarg.0
    IL_01c5:  ldsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__6_10'
    IL_01ca:  dup
    IL_01cb:  brtrue.s   IL_01e4

    IL_01cd:  pop
    IL_01ce:  ldsfld     class Game.LoadingScreen/'<>c' Game.LoadingScreen/'<>c'::'<>9'
    IL_01d3:  ldftn      instance void Game.LoadingScreen/'<>c'::'<.ctor>b__6_10'()
    IL_01d9:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_01de:  dup
    IL_01df:  stsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__6_10'
    IL_01e4:  call       instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_01e9:  ldarg.0
    IL_01ea:  ldsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__6_11'
    IL_01ef:  dup
    IL_01f0:  brtrue.s   IL_0209

    IL_01f2:  pop
    IL_01f3:  ldsfld     class Game.LoadingScreen/'<>c' Game.LoadingScreen/'<>c'::'<>9'
    IL_01f8:  ldftn      instance void Game.LoadingScreen/'<>c'::'<.ctor>b__6_11'()
    IL_01fe:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0203:  dup
    IL_0204:  stsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__6_11'
    IL_0209:  call       instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_020e:  ldarg.0
    IL_020f:  ldsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__6_12'
    IL_0214:  dup
    IL_0215:  brtrue.s   IL_022e

    IL_0217:  pop
    IL_0218:  ldsfld     class Game.LoadingScreen/'<>c' Game.LoadingScreen/'<>c'::'<>9'
    IL_021d:  ldftn      instance void Game.LoadingScreen/'<>c'::'<.ctor>b__6_12'()
    IL_0223:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0228:  dup
    IL_0229:  stsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__6_12'
    IL_022e:  call       instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_0233:  ldarg.0
    IL_0234:  ldsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__6_13'
    IL_0239:  dup
    IL_023a:  brtrue.s   IL_0253

    IL_023c:  pop
    IL_023d:  ldsfld     class Game.LoadingScreen/'<>c' Game.LoadingScreen/'<>c'::'<>9'
    IL_0242:  ldftn      instance void Game.LoadingScreen/'<>c'::'<.ctor>b__6_13'()
    IL_0248:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_024d:  dup
    IL_024e:  stsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__6_13'
    IL_0253:  call       instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_0258:  ret
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
    // 代码大小       275 (0x113)
    .maxstack  7
    .locals init (float64 V_0,
             int32 V_1,
             class [System.Runtime]System.Exception V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.LoadingScreen::m_loadingStarted
    IL_0006:  brtrue.s   IL_0010

    IL_0008:  ldarg.0
    IL_0009:  ldc.i4.1
    IL_000a:  stfld      bool Game.LoadingScreen::m_loadingStarted
    IL_000f:  ret

    IL_0010:  ldarg.0
    IL_0011:  ldfld      bool Game.LoadingScreen::m_loadingFinished
    IL_0016:  brfalse.s  IL_0019

    IL_0018:  ret

    IL_0019:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_001e:  stloc.0
    IL_001f:  br         IL_00b1

    IL_0024:  nop
    .try
    {
      IL_0025:  ldarg.0
      IL_0026:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Action> Game.LoadingScreen::m_loadActions
      IL_002b:  ldarg.0
      IL_002c:  ldarg.0
      IL_002d:  ldfld      int32 Game.LoadingScreen::m_index
      IL_0032:  stloc.1
      IL_0033:  ldloc.1
      IL_0034:  ldc.i4.1
      IL_0035:  add
      IL_0036:  stfld      int32 Game.LoadingScreen::m_index
      IL_003b:  ldloc.1
      IL_003c:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Action>::get_Item(int32)
      IL_0041:  callvirt   instance void [System.Runtime]System.Action::Invoke()
      IL_0046:  leave.s    IL_009f

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_0048:  stloc.2
      IL_0049:  ldstr      "Loading error. Reason: "
      IL_004e:  ldloc.2
      IL_004f:  callvirt   instance string [System.Runtime]System.Exception::get_Message()
      IL_0054:  call       string [System.Runtime]System.String::Concat(string,
                                                                        string)
      IL_0059:  call       void [Engine]Engine.Log::Error(string)
      IL_005e:  ldarg.0
      IL_005f:  ldfld      bool Game.LoadingScreen::m_loadingErrorsSuppressed
      IL_0064:  brtrue.s   IL_009d

      IL_0066:  ldarg.0
      IL_0067:  ldc.i4.1
      IL_0068:  stfld      bool Game.LoadingScreen::m_pauseLoading
      IL_006d:  call       class Game.ContainerWidget Game.WidgetsManager::get_RootWidget()
      IL_0072:  ldstr      "Loading Error"
      IL_0077:  ldloc.2
      IL_0078:  call       string Game.ExceptionManager::MakeFullErrorMessage(class [System.Runtime]System.Exception)
      IL_007d:  ldstr      "OK"
      IL_0082:  ldstr      "Suppress"
      IL_0087:  ldarg.0
      IL_0088:  ldftn      instance void Game.LoadingScreen::'<Update>b__9_0'(valuetype Game.MessageDialogButton)
      IL_008e:  newobj     instance void class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>::.ctor(object,
                                                                                                                          native int)
      IL_0093:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                   string,
                                                                   string,
                                                                   string,
                                                                   class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
      IL_0098:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                                class Game.Dialog)
      IL_009d:  leave.s    IL_009f

    }  // end handler
    IL_009f:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_00a4:  ldloc.0
    IL_00a5:  sub
    IL_00a6:  ldc.r8     0.10000000000000001
    IL_00af:  bgt.s      IL_00cf

    IL_00b1:  ldarg.0
    IL_00b2:  ldfld      bool Game.LoadingScreen::m_pauseLoading
    IL_00b7:  brtrue.s   IL_00cf

    IL_00b9:  ldarg.0
    IL_00ba:  ldfld      int32 Game.LoadingScreen::m_index
    IL_00bf:  ldarg.0
    IL_00c0:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Action> Game.LoadingScreen::m_loadActions
    IL_00c5:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Action>::get_Count()
    IL_00ca:  blt        IL_0024

    IL_00cf:  ldarg.0
    IL_00d0:  ldfld      int32 Game.LoadingScreen::m_index
    IL_00d5:  ldarg.0
    IL_00d6:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Action> Game.LoadingScreen::m_loadActions
    IL_00db:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Action>::get_Count()
    IL_00e0:  blt.s      IL_0112

    IL_00e2:  ldarg.0
    IL_00e3:  ldc.i4.1
    IL_00e4:  stfld      bool Game.LoadingScreen::m_loadingFinished
    IL_00e9:  ldstr      "Audio/UI/ButtonClick"
    IL_00ee:  ldc.r4     1.
    IL_00f3:  ldc.r4     0.0
    IL_00f8:  ldc.r4     0.0
    IL_00fd:  call       void Game.AudioManager::PlaySound(string,
                                                           float32,
                                                           float32,
                                                           float32)
    IL_0102:  ldstr      "MainMenu"
    IL_0107:  ldc.i4.0
    IL_0108:  newarr     [System.Runtime]System.Object
    IL_010d:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                object[])
    IL_0112:  ret
  } // end of method LoadingScreen::Update

  .method private hidebysig instance void 
          '<Update>b__9_0'(valuetype Game.MessageDialogButton b) cil managed
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
  } // end of method LoadingScreen::'<Update>b__9_0'

} // end of class Game.LoadingScreen