
//  Microsoft (R) .NET Framework IL Disassembler.  Version 4.6.1055.0




// Metadata version: v4.0.30319
.assembly extern System.Runtime
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 4:0:20:0
}
.assembly extern Survivalcraft
{
  .ver 2:0:30:0
}
.assembly extern System.Collections
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 4:0:10:0
}
.assembly extern Engine
{
  .ver 0:0:0:0
}
.assembly extern EntitySystem
{
  .ver 0:0:0:0
}
.assembly extern System.Xml.XDocument
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 4:0:10:0
}
.assembly UserAdditionCode
{
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
                                                                                                                   63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.

  // --- 下列自定义特性会自动添加，不要取消注释 -------
  //  .custom instance void [System.Runtime]System.Diagnostics.DebuggableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggableAttribute/DebuggingModes) = ( 01 00 02 00 00 00 00 00 ) 

  .custom instance void [System.Runtime]System.Reflection.AssemblyTitleAttribute::.ctor(string) = ( 01 00 04 54 65 73 74 00 00 )                      // ...Test..
  .custom instance void [System.Runtime]System.Reflection.AssemblyDescriptionAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [System.Runtime]System.Reflection.AssemblyConfigurationAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [System.Runtime]System.Reflection.AssemblyCompanyAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [System.Runtime]System.Reflection.AssemblyProductAttribute::.ctor(string) = ( 01 00 04 54 65 73 74 00 00 )                      // ...Test..
  .custom instance void [System.Runtime]System.Reflection.AssemblyCopyrightAttribute::.ctor(string) = ( 01 00 12 43 6F 70 79 72 69 67 68 74 20 C2 A9 20   // ...Copyright .. 
                                                                                                        20 32 30 31 37 00 00 )                            //  2017..
  .custom instance void [System.Runtime]System.Reflection.AssemblyTrademarkAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [System.Runtime]System.Reflection.AssemblyFileVersionAttribute::.ctor(string) = ( 01 00 07 31 2E 30 2E 30 2E 30 00 00 )             // ...1.0.0.0..
  .custom instance void [System.Runtime]System.Runtime.InteropServices.ComVisibleAttribute::.ctor(bool) = ( 01 00 00 00 00 ) 
  .custom instance void [System.Runtime]System.Runtime.Versioning.TargetFrameworkAttribute::.ctor(string) = ( 01 00 15 2E 4E 45 54 43 6F 72 65 2C 56 65 72 73   // ....NETCore,Vers
                                                                                                              69 6F 6E 3D 76 35 2E 30 01 00 54 0E 14 46 72 61   // ion=v5.0..T..Fra
                                                                                                              6D 65 77 6F 72 6B 44 69 73 70 6C 61 79 4E 61 6D   // meworkDisplayNam
                                                                                                              65 1A 2E 4E 45 54 20 66 6F 72 20 57 69 6E 64 6F   // e..NET for Windo
                                                                                                              77 73 20 55 6E 69 76 65 72 73 61 6C )             // ws Universal
  .hash algorithm 0x00008004
  .ver 1:0:0:0
}
.mresource public Test.Properties.Test.rd.xml
{
  // Offset: 0x00000000 Length: 0x0000055D
  // 警告: 创建了托管资源文件 Test.Properties.Test.rd.xml
}
.module UserAdditionCode.dll
// MVID: {A36D282B-3F47-4768-A916-9DF5BB145D18}
.imagebase 0x10000000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000003    //  ILONLY 32BITREQUIRED
// Image base: 0x01900000


// =============== CLASS MEMBERS DECLARATION ===================

.class public auto ansi beforefieldinit Test.Game.MarketplaceManager
       extends [System.Runtime]System.Object
{
  .method public hidebysig static void  Initialize() cil managed
  {
    // 代码大小       1 (0x1)
    .maxstack  8
    IL_0000:  ret
  } // end of method MarketplaceManager::Initialize

  .method public hidebysig static void  ShowMarketplace() cil managed
  {
    // 代码大小       1 (0x1)
    .maxstack  8
    IL_0000:  ret
  } // end of method MarketplaceManager::ShowMarketplace

  .method public hidebysig specialname static 
          bool  get_IsTrialMode() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method MarketplaceManager::get_IsTrialMode

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0006:  ret
  } // end of method MarketplaceManager::.ctor

  .property bool IsTrialMode()
  {
    .get bool Test.Game.MarketplaceManager::get_IsTrialMode()
  } // end of property MarketplaceManager::IsTrialMode
} // end of class Test.Game.MarketplaceManager

.class public auto ansi beforefieldinit Game.LoadingScreen
       extends [Survivalcraft]Game.Screen
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
      IL_000b:  call       object [Survivalcraft]Game.ContentManager::Get(string)
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
    .field public static class [System.Runtime]System.Action '<>9__9_1'
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
      IL_0000:  call       void [Survivalcraft]Game.CommunityContentManager::Initialize()
      IL_0005:  ret
    } // end of method '<>c'::'<.ctor>b__6_0'

    .method assembly hidebysig instance void 
            '<.ctor>b__6_1'() cil managed
    {
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  call       void [Survivalcraft]Game.MotdManager::Initialize()
      IL_0005:  ret
    } // end of method '<>c'::'<.ctor>b__6_1'

    .method assembly hidebysig instance void 
            '<.ctor>b__6_2'() cil managed
    {
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  call       void [Survivalcraft]Game.LightingManager::Initialize()
      IL_0005:  ret
    } // end of method '<>c'::'<.ctor>b__6_2'

    .method assembly hidebysig instance void 
            '<.ctor>b__6_3'() cil managed
    {
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  call       void [Survivalcraft]Game.StringsManager::LoadStrings()
      IL_0005:  ret
    } // end of method '<>c'::'<.ctor>b__6_3'

    .method assembly hidebysig instance void 
            '<.ctor>b__6_4'() cil managed
    {
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  call       void [Survivalcraft]Game.TextureAtlasManager::LoadAtlases()
      IL_0005:  ret
    } // end of method '<>c'::'<.ctor>b__6_4'

    .method assembly hidebysig instance void 
            '<.ctor>b__6_6'() cil managed
    {
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  call       void [Survivalcraft]Game.DatabaseManager::LoadDatabase()
      IL_0005:  ret
    } // end of method '<>c'::'<.ctor>b__6_6'

    .method assembly hidebysig instance void 
            '<.ctor>b__6_7'() cil managed
    {
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  call       void [Survivalcraft]Game.WorldsManager::Initialize()
      IL_0005:  ret
    } // end of method '<>c'::'<.ctor>b__6_7'

    .method assembly hidebysig instance void 
            '<.ctor>b__6_8'() cil managed
    {
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  call       void [Survivalcraft]Game.BlocksTexturesManager::Initialize()
      IL_0005:  ret
    } // end of method '<>c'::'<.ctor>b__6_8'

    .method assembly hidebysig instance void 
            '<.ctor>b__6_9'() cil managed
    {
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  call       void [Survivalcraft]Game.CharacterSkinsManager::Initialize()
      IL_0005:  ret
    } // end of method '<>c'::'<.ctor>b__6_9'

    .method assembly hidebysig instance void 
            '<.ctor>b__6_10'() cil managed
    {
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  call       void [Survivalcraft]Game.FurniturePacksManager::Initialize()
      IL_0005:  ret
    } // end of method '<>c'::'<.ctor>b__6_10'

    .method assembly hidebysig instance void 
            '<.ctor>b__6_11'() cil managed
    {
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  call       void [Survivalcraft]Game.BlocksManager::Initialize()
      IL_0005:  ret
    } // end of method '<>c'::'<.ctor>b__6_11'

    .method assembly hidebysig instance void 
            '<.ctor>b__6_12'() cil managed
    {
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  call       void [Survivalcraft]Game.CraftingRecipesManager::Initialize()
      IL_0005:  ret
    } // end of method '<>c'::'<.ctor>b__6_12'

    .method assembly hidebysig instance void 
            '<Update>b__9_1'() cil managed
    {
      // 代码大小       16 (0x10)
      .maxstack  8
      IL_0000:  ldstr      "MainMenu"
      IL_0005:  call       !!0[] [System.Runtime]System.Array::Empty<object>()
      IL_000a:  call       void [Survivalcraft]Game.ScreensManager::SwitchScreen(string,
                                                                                 object[])
      IL_000f:  ret
    } // end of method '<>c'::'<Update>b__9_1'

  } // end of class '<>c'

  .field private class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Action> m_loadActions
  .field private int32 m_index
  .field private bool m_loadingFinished
  .field private bool m_pauseLoading
  .field private bool m_loadingErrorsSuppressed
  .field private bool m_hasShowDialog
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       562 (0x232)
    .maxstack  3
    .locals init (valuetype [Engine]Engine.ReadOnlyList`1<valuetype [Engine]Engine.Content.ContentInfo> V_0,
             valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype [Engine]Engine.Content.ContentInfo> V_1,
             class Game.LoadingScreen/'<>c__DisplayClass6_0' V_2)
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Action>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Action> Game.LoadingScreen::m_loadActions
    IL_000b:  ldarg.0
    IL_000c:  call       instance void [Survivalcraft]Game.Screen::.ctor()
    IL_0011:  ldarg.0
    IL_0012:  call       instance class [Survivalcraft]Game.ContainerWidget [Survivalcraft]Game.Screen::get_ScreenWidget()
    IL_0017:  ldarg.0
    IL_0018:  ldstr      "Screens/LoadingScreen"
    IL_001d:  call       !!0 [Survivalcraft]Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_0022:  call       void [Survivalcraft]Game.WidgetsManager::LoadWidgetContents(class [Survivalcraft]Game.Widget,
                                                                                     object,
                                                                                     class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_0027:  ldarg.0
    IL_0028:  ldsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__6_0'
    IL_002d:  dup
    IL_002e:  brtrue.s   IL_0047

    IL_0030:  pop
    IL_0031:  ldsfld     class Game.LoadingScreen/'<>c' Game.LoadingScreen/'<>c'::'<>9'
    IL_0036:  ldftn      instance void Game.LoadingScreen/'<>c'::'<.ctor>b__6_0'()
    IL_003c:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0041:  dup
    IL_0042:  stsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__6_0'
    IL_0047:  call       instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_004c:  ldarg.0
    IL_004d:  ldsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__6_1'
    IL_0052:  dup
    IL_0053:  brtrue.s   IL_006c

    IL_0055:  pop
    IL_0056:  ldsfld     class Game.LoadingScreen/'<>c' Game.LoadingScreen/'<>c'::'<>9'
    IL_005b:  ldftn      instance void Game.LoadingScreen/'<>c'::'<.ctor>b__6_1'()
    IL_0061:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0066:  dup
    IL_0067:  stsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__6_1'
    IL_006c:  call       instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_0071:  ldarg.0
    IL_0072:  ldsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__6_2'
    IL_0077:  dup
    IL_0078:  brtrue.s   IL_0091

    IL_007a:  pop
    IL_007b:  ldsfld     class Game.LoadingScreen/'<>c' Game.LoadingScreen/'<>c'::'<>9'
    IL_0080:  ldftn      instance void Game.LoadingScreen/'<>c'::'<.ctor>b__6_2'()
    IL_0086:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_008b:  dup
    IL_008c:  stsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__6_2'
    IL_0091:  call       instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_0096:  ldarg.0
    IL_0097:  ldsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__6_3'
    IL_009c:  dup
    IL_009d:  brtrue.s   IL_00b6

    IL_009f:  pop
    IL_00a0:  ldsfld     class Game.LoadingScreen/'<>c' Game.LoadingScreen/'<>c'::'<>9'
    IL_00a5:  ldftn      instance void Game.LoadingScreen/'<>c'::'<.ctor>b__6_3'()
    IL_00ab:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00b0:  dup
    IL_00b1:  stsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__6_3'
    IL_00b6:  call       instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_00bb:  ldarg.0
    IL_00bc:  ldsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__6_4'
    IL_00c1:  dup
    IL_00c2:  brtrue.s   IL_00db

    IL_00c4:  pop
    IL_00c5:  ldsfld     class Game.LoadingScreen/'<>c' Game.LoadingScreen/'<>c'::'<>9'
    IL_00ca:  ldftn      instance void Game.LoadingScreen/'<>c'::'<.ctor>b__6_4'()
    IL_00d0:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00d5:  dup
    IL_00d6:  stsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__6_4'
    IL_00db:  call       instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_00e0:  call       valuetype [Engine]Engine.ReadOnlyList`1<valuetype [Engine]Engine.Content.ContentInfo> [Survivalcraft]Game.ContentManager::List()
    IL_00e5:  stloc.0
    IL_00e6:  ldloca.s   V_0
    IL_00e8:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<valuetype [Engine]Engine.Content.ContentInfo>::GetEnumerator()
    IL_00ed:  stloc.1
    .try
    {
      IL_00ee:  br.s       IL_0115

      IL_00f0:  newobj     instance void Game.LoadingScreen/'<>c__DisplayClass6_0'::.ctor()
      IL_00f5:  stloc.2
      IL_00f6:  ldloc.2
      IL_00f7:  ldloca.s   V_1
      IL_00f9:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype [Engine]Engine.Content.ContentInfo>::get_Current()
      IL_00fe:  stfld      valuetype [Engine]Engine.Content.ContentInfo Game.LoadingScreen/'<>c__DisplayClass6_0'::localContentInfo
      IL_0103:  ldarg.0
      IL_0104:  ldloc.2
      IL_0105:  ldftn      instance void Game.LoadingScreen/'<>c__DisplayClass6_0'::'<.ctor>b__5'()
      IL_010b:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                              native int)
      IL_0110:  call       instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
      IL_0115:  ldloca.s   V_1
      IL_0117:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype [Engine]Engine.Content.ContentInfo>::MoveNext()
      IL_011c:  brtrue.s   IL_00f0

      IL_011e:  leave.s    IL_012e

    }  // end .try
    finally
    {
      IL_0120:  ldloca.s   V_1
      IL_0122:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype [Engine]Engine.Content.ContentInfo>
      IL_0128:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_012d:  endfinally
    }  // end handler
    IL_012e:  ldarg.0
    IL_012f:  ldsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__6_6'
    IL_0134:  dup
    IL_0135:  brtrue.s   IL_014e

    IL_0137:  pop
    IL_0138:  ldsfld     class Game.LoadingScreen/'<>c' Game.LoadingScreen/'<>c'::'<>9'
    IL_013d:  ldftn      instance void Game.LoadingScreen/'<>c'::'<.ctor>b__6_6'()
    IL_0143:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0148:  dup
    IL_0149:  stsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__6_6'
    IL_014e:  call       instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_0153:  ldarg.0
    IL_0154:  ldsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__6_7'
    IL_0159:  dup
    IL_015a:  brtrue.s   IL_0173

    IL_015c:  pop
    IL_015d:  ldsfld     class Game.LoadingScreen/'<>c' Game.LoadingScreen/'<>c'::'<>9'
    IL_0162:  ldftn      instance void Game.LoadingScreen/'<>c'::'<.ctor>b__6_7'()
    IL_0168:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_016d:  dup
    IL_016e:  stsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__6_7'
    IL_0173:  call       instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_0178:  ldarg.0
    IL_0179:  ldsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__6_8'
    IL_017e:  dup
    IL_017f:  brtrue.s   IL_0198

    IL_0181:  pop
    IL_0182:  ldsfld     class Game.LoadingScreen/'<>c' Game.LoadingScreen/'<>c'::'<>9'
    IL_0187:  ldftn      instance void Game.LoadingScreen/'<>c'::'<.ctor>b__6_8'()
    IL_018d:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0192:  dup
    IL_0193:  stsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__6_8'
    IL_0198:  call       instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_019d:  ldarg.0
    IL_019e:  ldsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__6_9'
    IL_01a3:  dup
    IL_01a4:  brtrue.s   IL_01bd

    IL_01a6:  pop
    IL_01a7:  ldsfld     class Game.LoadingScreen/'<>c' Game.LoadingScreen/'<>c'::'<>9'
    IL_01ac:  ldftn      instance void Game.LoadingScreen/'<>c'::'<.ctor>b__6_9'()
    IL_01b2:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_01b7:  dup
    IL_01b8:  stsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__6_9'
    IL_01bd:  call       instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_01c2:  ldarg.0
    IL_01c3:  ldsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__6_10'
    IL_01c8:  dup
    IL_01c9:  brtrue.s   IL_01e2

    IL_01cb:  pop
    IL_01cc:  ldsfld     class Game.LoadingScreen/'<>c' Game.LoadingScreen/'<>c'::'<>9'
    IL_01d1:  ldftn      instance void Game.LoadingScreen/'<>c'::'<.ctor>b__6_10'()
    IL_01d7:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_01dc:  dup
    IL_01dd:  stsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__6_10'
    IL_01e2:  call       instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_01e7:  ldarg.0
    IL_01e8:  ldsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__6_11'
    IL_01ed:  dup
    IL_01ee:  brtrue.s   IL_0207

    IL_01f0:  pop
    IL_01f1:  ldsfld     class Game.LoadingScreen/'<>c' Game.LoadingScreen/'<>c'::'<>9'
    IL_01f6:  ldftn      instance void Game.LoadingScreen/'<>c'::'<.ctor>b__6_11'()
    IL_01fc:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0201:  dup
    IL_0202:  stsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__6_11'
    IL_0207:  call       instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_020c:  ldarg.0
    IL_020d:  ldsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__6_12'
    IL_0212:  dup
    IL_0213:  brtrue.s   IL_022c

    IL_0215:  pop
    IL_0216:  ldsfld     class Game.LoadingScreen/'<>c' Game.LoadingScreen/'<>c'::'<>9'
    IL_021b:  ldftn      instance void Game.LoadingScreen/'<>c'::'<.ctor>b__6_12'()
    IL_0221:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0226:  dup
    IL_0227:  stsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__6_12'
    IL_022c:  call       instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_0231:  ret
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
    // 代码大小       52 (0x34)
    .maxstack  8
    IL_0000:  ldstr      "Made By GM2000! He is our God!"
    IL_0005:  ldstr      "just a joke..."
    IL_000a:  ldstr      "I know"
    IL_000f:  ldstr      ""
    IL_0014:  ldnull
    IL_0015:  newobj     instance void [Survivalcraft]Game.MessageDialog::.ctor(string,
                                                                                string,
                                                                                string,
                                                                                string,
                                                                                class [System.Runtime]System.Action`1<valuetype [Survivalcraft]Game.MessageDialogButton>)
    IL_001a:  call       void [Survivalcraft]Game.DialogsManager::ShowDialog(class [Survivalcraft]Game.Dialog)
    IL_001f:  ldstr      "Textures/Gui/CandyRufusLogo"
    IL_0024:  call       void [Survivalcraft]Game.ContentManager::Dispose(string)
    IL_0029:  ldstr      "Textures/Gui/EngineLogo"
    IL_002e:  call       void [Survivalcraft]Game.ContentManager::Dispose(string)
    IL_0033:  ret
  } // end of method LoadingScreen::Leave

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       279 (0x117)
    .maxstack  6
    .locals init (float64 V_0,
             int32 V_1,
             int32 V_2,
             class [System.Runtime]System.Exception V_3)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.LoadingScreen::m_loadingFinished
    IL_0006:  brfalse.s  IL_0009

    IL_0008:  ret

    IL_0009:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_000e:  stloc.0
    IL_000f:  br         IL_00b3

    IL_0014:  ldarg.0
    IL_0015:  ldfld      int32 Game.LoadingScreen::m_index
    IL_001a:  ldarg.0
    IL_001b:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Action> Game.LoadingScreen::m_loadActions
    IL_0020:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Action>::get_Count()
    IL_0025:  bge        IL_00be

    .try
    {
      IL_002a:  ldarg.0
      IL_002b:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Action> Game.LoadingScreen::m_loadActions
      IL_0030:  ldarg.0
      IL_0031:  ldfld      int32 Game.LoadingScreen::m_index
      IL_0036:  stloc.1
      IL_0037:  ldarg.0
      IL_0038:  ldloc.1
      IL_0039:  ldc.i4.1
      IL_003a:  add
      IL_003b:  stfld      int32 Game.LoadingScreen::m_index
      IL_0040:  ldloc.1
      IL_0041:  stloc.2
      IL_0042:  ldloc.2
      IL_0043:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Action>::get_Item(int32)
      IL_0048:  callvirt   instance void [System.Runtime]System.Action::Invoke()
      IL_004d:  leave.s    IL_00a1

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_004f:  stloc.3
      IL_0050:  ldstr      "Loading error. Reason: "
      IL_0055:  ldloc.3
      IL_0056:  callvirt   instance string [System.Runtime]System.Exception::get_Message()
      IL_005b:  call       string [System.Runtime]System.String::Concat(string,
                                                                        string)
      IL_0060:  call       void [Engine]Engine.Log::Error(string)
      IL_0065:  ldarg.0
      IL_0066:  ldfld      bool Game.LoadingScreen::m_loadingErrorsSuppressed
      IL_006b:  brtrue.s   IL_009f

      IL_006d:  ldarg.0
      IL_006e:  ldc.i4.1
      IL_006f:  stfld      bool Game.LoadingScreen::m_pauseLoading
      IL_0074:  ldstr      "Loading Error"
      IL_0079:  ldloc.3
      IL_007a:  call       string [Survivalcraft]Game.ExceptionManager::MakeFullErrorMessage(class [System.Runtime]System.Exception)
      IL_007f:  ldstr      "OK"
      IL_0084:  ldstr      "Suppress"
      IL_0089:  ldarg.0
      IL_008a:  ldftn      instance void Game.LoadingScreen::'<Update>b__9_0'(valuetype [Survivalcraft]Game.MessageDialogButton)
      IL_0090:  newobj     instance void class [System.Runtime]System.Action`1<valuetype [Survivalcraft]Game.MessageDialogButton>::.ctor(object,
                                                                                                                                         native int)
      IL_0095:  newobj     instance void [Survivalcraft]Game.MessageDialog::.ctor(string,
                                                                                  string,
                                                                                  string,
                                                                                  string,
                                                                                  class [System.Runtime]System.Action`1<valuetype [Survivalcraft]Game.MessageDialogButton>)
      IL_009a:  call       void [Survivalcraft]Game.DialogsManager::ShowDialog(class [Survivalcraft]Game.Dialog)
      IL_009f:  leave.s    IL_00a1

    }  // end handler
    IL_00a1:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_00a6:  ldloc.0
    IL_00a7:  sub
    IL_00a8:  ldc.r8     0.10000000000000001
    IL_00b1:  bgt.s      IL_00be

    IL_00b3:  ldarg.0
    IL_00b4:  ldfld      bool Game.LoadingScreen::m_pauseLoading
    IL_00b9:  brfalse    IL_0014

    IL_00be:  ldarg.0
    IL_00bf:  ldfld      int32 Game.LoadingScreen::m_index
    IL_00c4:  ldarg.0
    IL_00c5:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Action> Game.LoadingScreen::m_loadActions
    IL_00ca:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Action>::get_Count()
    IL_00cf:  bge.s      IL_00d2

    IL_00d1:  ret

    IL_00d2:  ldarg.0
    IL_00d3:  ldc.i4.1
    IL_00d4:  stfld      bool Game.LoadingScreen::m_loadingFinished
    IL_00d9:  ldstr      "Audio/UI/ButtonClick"
    IL_00de:  ldc.r4     1.
    IL_00e3:  ldc.r4     0.0
    IL_00e8:  ldc.r4     0.0
    IL_00ed:  call       void [Survivalcraft]Game.AudioManager::PlaySound(string,
                                                                          float32,
                                                                          float32,
                                                                          float32)
    IL_00f2:  ldsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__9_1'
    IL_00f7:  dup
    IL_00f8:  brtrue.s   IL_0111

    IL_00fa:  pop
    IL_00fb:  ldsfld     class Game.LoadingScreen/'<>c' Game.LoadingScreen/'<>c'::'<>9'
    IL_0100:  ldftn      instance void Game.LoadingScreen/'<>c'::'<Update>b__9_1'()
    IL_0106:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_010b:  dup
    IL_010c:  stsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__9_1'
    IL_0111:  call       void [Survivalcraft]Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
    IL_0116:  ret
  } // end of method LoadingScreen::Update

  .method private hidebysig instance void 
          '<Update>b__9_0'(valuetype [Survivalcraft]Game.MessageDialogButton b) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       24 (0x18)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  brtrue.s   IL_000b

    IL_0003:  ldarg.0
    IL_0004:  ldc.i4.0
    IL_0005:  stfld      bool Game.LoadingScreen::m_pauseLoading
    IL_000a:  ret

    IL_000b:  ldarg.1
    IL_000c:  ldc.i4.1
    IL_000d:  beq.s      IL_0010

    IL_000f:  ret

    IL_0010:  ldarg.0
    IL_0011:  ldc.i4.1
    IL_0012:  stfld      bool Game.LoadingScreen::m_loadingErrorsSuppressed
    IL_0017:  ret
  } // end of method LoadingScreen::'<Update>b__9_0'

} // end of class Game.LoadingScreen

.class public auto ansi beforefieldinit Game.SubsystemEggBlockBehavior
       extends [Survivalcraft]Game.SubsystemBlockBehavior
{
  .field private class [Survivalcraft]Game.EggBlock m_eggBlock
  .field private class [Survivalcraft]Game.Random m_random
  .field private class [Survivalcraft]Game.SubsystemCreatureSpawn m_subsystemCreatureSpawn
  .field private class [Survivalcraft]Game.SubsystemEntityFactory m_subsystemEntityFactory
  .field private class [Survivalcraft]Game.SubsystemGameInfo m_subsystemGameInfo
  .field private class [Survivalcraft]Game.SubsystemGui m_subsystemGui
  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       80 (0x50)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void [Survivalcraft]Game.SubsystemBlockBehavior::Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary)
    IL_0007:  ldarg.0
    IL_0008:  ldarg.0
    IL_0009:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_000e:  ldc.i4.1
    IL_000f:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class [Survivalcraft]Game.SubsystemGameInfo>(bool)
    IL_0014:  stfld      class [Survivalcraft]Game.SubsystemGameInfo Game.SubsystemEggBlockBehavior::m_subsystemGameInfo
    IL_0019:  ldarg.0
    IL_001a:  ldarg.0
    IL_001b:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0020:  ldc.i4.1
    IL_0021:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class [Survivalcraft]Game.SubsystemEntityFactory>(bool)
    IL_0026:  stfld      class [Survivalcraft]Game.SubsystemEntityFactory Game.SubsystemEggBlockBehavior::m_subsystemEntityFactory
    IL_002b:  ldarg.0
    IL_002c:  ldarg.0
    IL_002d:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0032:  ldc.i4.1
    IL_0033:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class [Survivalcraft]Game.SubsystemCreatureSpawn>(bool)
    IL_0038:  stfld      class [Survivalcraft]Game.SubsystemCreatureSpawn Game.SubsystemEggBlockBehavior::m_subsystemCreatureSpawn
    IL_003d:  ldarg.0
    IL_003e:  ldarg.0
    IL_003f:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0044:  ldc.i4.1
    IL_0045:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class [Survivalcraft]Game.SubsystemGui>(bool)
    IL_004a:  stfld      class [Survivalcraft]Game.SubsystemGui Game.SubsystemEggBlockBehavior::m_subsystemGui
    IL_004f:  ret
  } // end of method SubsystemEggBlockBehavior::Load

  .method public hidebysig virtual instance bool 
          OnHitAsProjectile(valuetype [System.Runtime]System.Nullable`1<valuetype [Survivalcraft]Game.CellFace> cellFace,
                            class [Survivalcraft]Game.ComponentBody componentBody,
                            class [Survivalcraft]Game.WorldItem worldItem) cil managed
  {
    // 代码大小       251 (0xfb)
    .maxstack  5
    .locals init (int32 V_0,
             bool V_1,
             class [Survivalcraft]Game.EggBlock/EggType V_2,
             class [EntitySystem]GameEntitySystem.Entity V_3)
    IL_0000:  ldarg.3
    IL_0001:  ldfld      int32 [Survivalcraft]Game.WorldItem::Value
    IL_0006:  call       int32 [Survivalcraft]Game.TerrainData::ExtractData(int32)
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  call       bool [Survivalcraft]Game.EggBlock::GetIsLaid(int32)
    IL_0012:  stloc.1
    IL_0013:  ldloc.0
    IL_0014:  call       bool [Survivalcraft]Game.EggBlock::GetIsCooked(int32)
    IL_0019:  brtrue     IL_00f9

    IL_001e:  ldarg.0
    IL_001f:  ldfld      class [Survivalcraft]Game.SubsystemGameInfo Game.SubsystemEggBlockBehavior::m_subsystemGameInfo
    IL_0024:  callvirt   instance class [Survivalcraft]Game.WorldInfo [Survivalcraft]Game.SubsystemGameInfo::get_WorldInfo()
    IL_0029:  ldfld      valuetype [Survivalcraft]Game.GameMode [Survivalcraft]Game.WorldInfo::GameMode
    IL_002e:  brfalse.s  IL_0059

    IL_0030:  ldarg.0
    IL_0031:  ldfld      class [Survivalcraft]Game.Random Game.SubsystemEggBlockBehavior::m_random
    IL_0036:  ldc.r4     0.0
    IL_003b:  ldc.r4     1.
    IL_0040:  callvirt   instance float32 [Survivalcraft]Game.Random::UniformFloat(float32,
                                                                                   float32)
    IL_0045:  ldloc.1
    IL_0046:  brtrue.s   IL_004f

    IL_0048:  ldc.r4     1.
    IL_004d:  br.s       IL_0054

    IL_004f:  ldc.r4     0.2
    IL_0054:  bgt.un     IL_00f9

    IL_0059:  ldarg.0
    IL_005a:  ldfld      class [Survivalcraft]Game.EggBlock Game.SubsystemEggBlockBehavior::m_eggBlock
    IL_005f:  ldloc.0
    IL_0060:  callvirt   instance class [Survivalcraft]Game.EggBlock/EggType [Survivalcraft]Game.EggBlock::GetEggType(int32)
    IL_0065:  stloc.2
    IL_0066:  ldarg.0
    IL_0067:  ldfld      class [Survivalcraft]Game.SubsystemEntityFactory Game.SubsystemEggBlockBehavior::m_subsystemEntityFactory
    IL_006c:  ldloc.2
    IL_006d:  ldfld      string [Survivalcraft]Game.EggBlock/EggType::TemplateName
    IL_0072:  ldc.i4.1
    IL_0073:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [Survivalcraft]Game.SubsystemEntityFactory::CreateEntity(string,
                                                                                                                                       bool)
    IL_0078:  stloc.3
    IL_0079:  ldloc.3
    IL_007a:  ldc.i4.1
    IL_007b:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class [Survivalcraft]Game.ComponentBody>(bool)
    IL_0080:  ldarg.3
    IL_0081:  ldfld      valuetype [Engine]Engine.Vector3 [Survivalcraft]Game.WorldItem::Position
    IL_0086:  callvirt   instance void [Survivalcraft]Game.ComponentFrame::set_Position(valuetype [Engine]Engine.Vector3)
    IL_008b:  ldloc.3
    IL_008c:  ldc.i4.1
    IL_008d:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class [Survivalcraft]Game.ComponentBody>(bool)
    IL_0092:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_0097:  ldarg.0
    IL_0098:  ldfld      class [Survivalcraft]Game.Random Game.SubsystemEggBlockBehavior::m_random
    IL_009d:  ldc.r4     0.0
    IL_00a2:  ldc.r4     6.283185
    IL_00a7:  callvirt   instance float32 [Survivalcraft]Game.Random::UniformFloat(float32,
                                                                                   float32)
    IL_00ac:  call       valuetype [Engine]Engine.Quaternion [Engine]Engine.Quaternion::CreateFromAxisAngle(valuetype [Engine]Engine.Vector3,
                                                                                                            float32)
    IL_00b1:  callvirt   instance void [Survivalcraft]Game.ComponentFrame::set_Rotation(valuetype [Engine]Engine.Quaternion)
    IL_00b6:  ldloc.3
    IL_00b7:  ldc.i4.1
    IL_00b8:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class [Survivalcraft]Game.ComponentSpawn>(bool)
    IL_00bd:  ldc.r4     0.25
    IL_00c2:  callvirt   instance void [Survivalcraft]Game.ComponentSpawn::set_SpawnDuration(float32)
    IL_00c7:  ldarg.0
    IL_00c8:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_00cd:  ldloc.3
    IL_00ce:  callvirt   instance void [EntitySystem]GameEntitySystem.Project::AddEntity(class [EntitySystem]GameEntitySystem.Entity)
    IL_00d3:  ldarg.0
    IL_00d4:  ldfld      class [Survivalcraft]Game.SubsystemCreatureSpawn Game.SubsystemEggBlockBehavior::m_subsystemCreatureSpawn
    IL_00d9:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<class [Survivalcraft]Game.ComponentCreature,bool> [Survivalcraft]Game.SubsystemCreatureSpawn::get_Creatures()
    IL_00de:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<class [Survivalcraft]Game.ComponentCreature,bool>::get_Count()
    IL_00e3:  ldc.i4.s   30
    IL_00e5:  ble.s      IL_00f9

    IL_00e7:  ldarg.0
    IL_00e8:  ldfld      class [Survivalcraft]Game.SubsystemGui Game.SubsystemEggBlockBehavior::m_subsystemGui
    IL_00ed:  ldstr      "Too many creatures. But you can still drop egg~"
    IL_00f2:  ldc.i4.1
    IL_00f3:  ldc.i4.0
    IL_00f4:  callvirt   instance void [Survivalcraft]Game.SubsystemGui::DisplaySmallMessage(string,
                                                                                             bool,
                                                                                             bool)
    IL_00f9:  ldc.i4.1
    IL_00fa:  ret
  } // end of method SubsystemEggBlockBehavior::OnHitAsProjectile

  .method public hidebysig specialname virtual 
          instance int32[]  get_HandledBlocks() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  newarr     [System.Runtime]System.Int32
    IL_0006:  ret
  } // end of method SubsystemEggBlockBehavior::get_HandledBlocks

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       37 (0x25)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       class [Survivalcraft]Game.Block[] [Survivalcraft]Game.BlocksManager::get_Blocks()
    IL_0006:  ldc.i4.s   118
    IL_0008:  ldelem.ref
    IL_0009:  castclass  [Survivalcraft]Game.EggBlock
    IL_000e:  stfld      class [Survivalcraft]Game.EggBlock Game.SubsystemEggBlockBehavior::m_eggBlock
    IL_0013:  ldarg.0
    IL_0014:  newobj     instance void [Survivalcraft]Game.Random::.ctor()
    IL_0019:  stfld      class [Survivalcraft]Game.Random Game.SubsystemEggBlockBehavior::m_random
    IL_001e:  ldarg.0
    IL_001f:  call       instance void [Survivalcraft]Game.SubsystemBlockBehavior::.ctor()
    IL_0024:  ret
  } // end of method SubsystemEggBlockBehavior::.ctor

  .property instance int32[] HandledBlocks()
  {
    .get instance int32[] Game.SubsystemEggBlockBehavior::get_HandledBlocks()
  } // end of property SubsystemEggBlockBehavior::HandledBlocks
} // end of class Game.SubsystemEggBlockBehavior


// =============================================================

// *********** 反汇编完成 ***********************
// 警告: 创建了 Win32 资源文件 D:\编程\程序源码\游戏辅助工具\生存战争改版\SCCode Installer\Tmp\UserCode.res
