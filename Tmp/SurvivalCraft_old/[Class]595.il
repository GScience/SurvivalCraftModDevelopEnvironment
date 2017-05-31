.class public auto ansi beforefieldinit Game.SubsystemSignBlockBehavior
       extends Game.SubsystemBlockBehavior
       implements Game.IDrawable
{
  .class auto ansi nested private beforefieldinit TextData
         extends [System.Runtime]System.Object
  {
    .field public valuetype [Engine]Engine.Point3 Point
    .field public string[] Lines
    .field public valuetype [Engine]Engine.Color[] Colors
    .field public string Url
    .field public valuetype [System.Runtime]System.Nullable`1<int32> TextureLocation
    .field public float32 UsedTextureWidth
    .field public float32 UsedTextureHeight
    .field public float32 Distance
    .field public int32 ToBeRenderedFrame
    .field public int32 Light
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       122 (0x7a)
      .maxstack  5
      IL_0000:  ldarg.0
      IL_0001:  ldc.i4.4
      IL_0002:  newarr     [System.Runtime]System.String
      IL_0007:  dup
      IL_0008:  ldc.i4.0
      IL_0009:  ldsfld     string [System.Runtime]System.String::Empty
      IL_000e:  stelem.ref
      IL_000f:  dup
      IL_0010:  ldc.i4.1
      IL_0011:  ldsfld     string [System.Runtime]System.String::Empty
      IL_0016:  stelem.ref
      IL_0017:  dup
      IL_0018:  ldc.i4.2
      IL_0019:  ldsfld     string [System.Runtime]System.String::Empty
      IL_001e:  stelem.ref
      IL_001f:  dup
      IL_0020:  ldc.i4.3
      IL_0021:  ldsfld     string [System.Runtime]System.String::Empty
      IL_0026:  stelem.ref
      IL_0027:  stfld      string[] Game.SubsystemSignBlockBehavior/TextData::Lines
      IL_002c:  ldarg.0
      IL_002d:  ldc.i4.4
      IL_002e:  newarr     [Engine]Engine.Color
      IL_0033:  dup
      IL_0034:  ldc.i4.0
      IL_0035:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Black
      IL_003a:  stelem     [Engine]Engine.Color
      IL_003f:  dup
      IL_0040:  ldc.i4.1
      IL_0041:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Black
      IL_0046:  stelem     [Engine]Engine.Color
      IL_004b:  dup
      IL_004c:  ldc.i4.2
      IL_004d:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Black
      IL_0052:  stelem     [Engine]Engine.Color
      IL_0057:  dup
      IL_0058:  ldc.i4.3
      IL_0059:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Black
      IL_005e:  stelem     [Engine]Engine.Color
      IL_0063:  stfld      valuetype [Engine]Engine.Color[] Game.SubsystemSignBlockBehavior/TextData::Colors
      IL_0068:  ldarg.0
      IL_0069:  ldsfld     string [System.Runtime]System.String::Empty
      IL_006e:  stfld      string Game.SubsystemSignBlockBehavior/TextData::Url
      IL_0073:  ldarg.0
      IL_0074:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0079:  ret
    } // end of method TextData::.ctor

  } // end of class TextData

  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.SubsystemSignBlockBehavior/'<>c' '<>9'
    .field public static class [System.Runtime]System.Comparison`1<class Game.SubsystemSignBlockBehavior/TextData> '<>9__28_0'
    .field public static class [System.Runtime]System.Func`2<class Game.SubsystemSignBlockBehavior/TextData,bool> '<>9__28_1'
    .field public static class [System.Runtime]System.Func`2<class Game.SubsystemSignBlockBehavior/TextData,bool> '<>9__28_2'
    .field public static class [System.Runtime]System.Func`2<string,int32> '<>9__35_0'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.SubsystemSignBlockBehavior/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.SubsystemSignBlockBehavior/'<>c' Game.SubsystemSignBlockBehavior/'<>c'::'<>9'
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

    .method assembly hidebysig instance int32 
            '<Draw>b__28_0'(class Game.SubsystemSignBlockBehavior/TextData d1,
                            class Game.SubsystemSignBlockBehavior/TextData d2) cil managed
    {
      // 代码大小       23 (0x17)
      .maxstack  8
      IL_0000:  call       class [System.Collections]System.Collections.Generic.Comparer`1<!0> class [System.Collections]System.Collections.Generic.Comparer`1<float32>::get_Default()
      IL_0005:  ldarg.1
      IL_0006:  ldfld      float32 Game.SubsystemSignBlockBehavior/TextData::Distance
      IL_000b:  ldarg.2
      IL_000c:  ldfld      float32 Game.SubsystemSignBlockBehavior/TextData::Distance
      IL_0011:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.Comparer`1<float32>::Compare(!0,
                                                                                                                            !0)
      IL_0016:  ret
    } // end of method '<>c'::'<Draw>b__28_0'

    .method assembly hidebysig instance bool 
            '<Draw>b__28_1'(class Game.SubsystemSignBlockBehavior/TextData d) cil managed
    {
      // 代码大小       5 (0x5)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldnull
      IL_0002:  ceq
      IL_0004:  ret
    } // end of method '<>c'::'<Draw>b__28_1'

    .method assembly hidebysig instance bool 
            '<Draw>b__28_2'(class Game.SubsystemSignBlockBehavior/TextData d) cil managed
    {
      // 代码大小       17 (0x11)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldfld      int32 Game.SubsystemSignBlockBehavior/TextData::ToBeRenderedFrame
      IL_0006:  call       int32 [Engine]Engine.Time::get_FrameIndex()
      IL_000b:  ceq
      IL_000d:  ldc.i4.0
      IL_000e:  ceq
      IL_0010:  ret
    } // end of method '<>c'::'<Draw>b__28_2'

    .method assembly hidebysig instance int32 
            '<RenderText>b__35_0'(string l) cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
      IL_0006:  ret
    } // end of method '<>c'::'<RenderText>b__35_0'

  } // end of class '<>c'

  .field private static literal float32 m_maxVisibilityDistanceSqr = float32(400.)
  .field private static literal float32 m_minUpdateDistance = float32(2.)
  .field private static literal int32 m_textWidth = int32(0x00000080)
  .field private static literal int32 m_textHeight = int32(0x00000020)
  .field private static literal int32 m_maxTexts = int32(0x00000020)
  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.SubsystemGameInfo m_subsystemGameInfo
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemSignBlockBehavior/TextData> m_textsByPoint
  .field private class Game.SubsystemSignBlockBehavior/TextData[] m_textureLocations
  .field private class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemSignBlockBehavior/TextData> m_nearTexts
  .field private class [Engine]Engine.Media.BitmapFont m_font
  .field private class [Engine]Engine.Graphics.RenderTarget2D m_renderTarget
  .field private valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> m_lastUpdatePosition
  .field private class [Engine]Engine.Graphics.PrimitivesRenderer2D m_primitivesRenderer2D
  .field private class [Engine]Engine.Graphics.PrimitivesRenderer3D m_primitivesRenderer3D
  .field public bool ShowSignsTexture
  .field public bool CopySignsText
  .field private static int32[] m_drawOrders
  .method public hidebysig instance class Game.SignData 
          GetSignData(valuetype [Engine]Engine.Point3 point) cil managed
  {
    // 代码大小       70 (0x46)
    .maxstack  3
    .locals init (class Game.SubsystemSignBlockBehavior/TextData V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemSignBlockBehavior/TextData> Game.SubsystemSignBlockBehavior::m_textsByPoint
    IL_0006:  ldarg.1
    IL_0007:  ldloca.s   V_0
    IL_0009:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemSignBlockBehavior/TextData>::TryGetValue(!0,
                                                                                                                                                                                                      !1&)
    IL_000e:  brfalse.s  IL_0044

    IL_0010:  newobj     instance void Game.SignData::.ctor()
    IL_0015:  dup
    IL_0016:  ldloc.0
    IL_0017:  ldfld      string[] Game.SubsystemSignBlockBehavior/TextData::Lines
    IL_001c:  call       !!0[] [System.Linq]System.Linq.Enumerable::ToArray<string>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_0021:  stfld      string[] Game.SignData::Lines
    IL_0026:  dup
    IL_0027:  ldloc.0
    IL_0028:  ldfld      valuetype [Engine]Engine.Color[] Game.SubsystemSignBlockBehavior/TextData::Colors
    IL_002d:  call       !!0[] [System.Linq]System.Linq.Enumerable::ToArray<valuetype [Engine]Engine.Color>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_0032:  stfld      valuetype [Engine]Engine.Color[] Game.SignData::Colors
    IL_0037:  dup
    IL_0038:  ldloc.0
    IL_0039:  ldfld      string Game.SubsystemSignBlockBehavior/TextData::Url
    IL_003e:  stfld      string Game.SignData::Url
    IL_0043:  ret

    IL_0044:  ldnull
    IL_0045:  ret
  } // end of method SubsystemSignBlockBehavior::GetSignData

  .method public hidebysig instance void 
          SetSignData(valuetype [Engine]Engine.Point3 point,
                      string[] lines,
                      valuetype [Engine]Engine.Color[] colors,
                      string url) cil managed
  {
    // 代码大小       89 (0x59)
    .maxstack  4
    .locals init (class Game.SubsystemSignBlockBehavior/TextData V_0,
             int32 V_1)
    IL_0000:  newobj     instance void Game.SubsystemSignBlockBehavior/TextData::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.1
    IL_0008:  stfld      valuetype [Engine]Engine.Point3 Game.SubsystemSignBlockBehavior/TextData::Point
    IL_000d:  ldc.i4.0
    IL_000e:  stloc.1
    IL_000f:  br.s       IL_0033

    IL_0011:  ldloc.0
    IL_0012:  ldfld      string[] Game.SubsystemSignBlockBehavior/TextData::Lines
    IL_0017:  ldloc.1
    IL_0018:  ldarg.2
    IL_0019:  ldloc.1
    IL_001a:  ldelem.ref
    IL_001b:  stelem.ref
    IL_001c:  ldloc.0
    IL_001d:  ldfld      valuetype [Engine]Engine.Color[] Game.SubsystemSignBlockBehavior/TextData::Colors
    IL_0022:  ldloc.1
    IL_0023:  ldarg.3
    IL_0024:  ldloc.1
    IL_0025:  ldelem     [Engine]Engine.Color
    IL_002a:  stelem     [Engine]Engine.Color
    IL_002f:  ldloc.1
    IL_0030:  ldc.i4.1
    IL_0031:  add
    IL_0032:  stloc.1
    IL_0033:  ldloc.1
    IL_0034:  ldc.i4.4
    IL_0035:  blt.s      IL_0011

    IL_0037:  ldloc.0
    IL_0038:  ldarg.s    url
    IL_003a:  stfld      string Game.SubsystemSignBlockBehavior/TextData::Url
    IL_003f:  ldarg.0
    IL_0040:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemSignBlockBehavior/TextData> Game.SubsystemSignBlockBehavior::m_textsByPoint
    IL_0045:  ldarg.1
    IL_0046:  ldloc.0
    IL_0047:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemSignBlockBehavior/TextData>::set_Item(!0,
                                                                                                                                                                                                   !1)
    IL_004c:  ldarg.0
    IL_004d:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.SubsystemSignBlockBehavior::m_lastUpdatePosition
    IL_0052:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>
    IL_0058:  ret
  } // end of method SubsystemSignBlockBehavior::SetSignData

  .method public hidebysig specialname virtual 
          instance int32[]  get_HandledBlocks() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldc.i4.4
    IL_0001:  newarr     [System.Runtime]System.Int32
    IL_0006:  dup
    IL_0007:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=16' '<PrivateImplementationDetails>'::F91625AC244C948A5AAEFF3400E771CCB5C03256
    IL_000c:  call       void [System.Runtime]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [System.Runtime]System.Array,
                                                                                                              valuetype [System.Runtime]System.RuntimeFieldHandle)
    IL_0011:  ret
  } // end of method SubsystemSignBlockBehavior::get_HandledBlocks

  .method public hidebysig virtual instance void 
          OnNeighborBlockChanged(int32 x,
                                 int32 y,
                                 int32 z,
                                 int32 neighborX,
                                 int32 neighborY,
                                 int32 neighborZ) cil managed
  {
    // 代码大小       247 (0xf7)
    .maxstack  8
    .locals init (int32 V_0,
             int32 V_1,
             class Game.Block V_2,
             valuetype [Engine]Engine.Vector3 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7,
             int32 V_8)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0006:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_000b:  ldarg.1
    IL_000c:  ldarg.2
    IL_000d:  ldarg.3
    IL_000e:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32,
                                                                           int32,
                                                                           int32)
    IL_0013:  dup
    IL_0014:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0019:  stloc.0
    IL_001a:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_001f:  stloc.1
    IL_0020:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0025:  ldloc.0
    IL_0026:  ldelem.ref
    IL_0027:  stloc.2
    IL_0028:  ldloc.2
    IL_0029:  isinst     Game.AttachedSignBlock
    IL_002e:  brfalse.s  IL_0097

    IL_0030:  ldloc.1
    IL_0031:  call       int32 Game.AttachedSignBlock::GetFace(int32)
    IL_0036:  call       valuetype [Engine]Engine.Vector3 Game.CellFace::FaceToVector3(int32)
    IL_003b:  stloc.3
    IL_003c:  ldarg.1
    IL_003d:  ldloc.3
    IL_003e:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0043:  conv.i4
    IL_0044:  sub
    IL_0045:  stloc.s    V_4
    IL_0047:  ldarg.2
    IL_0048:  ldloc.3
    IL_0049:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_004e:  conv.i4
    IL_004f:  sub
    IL_0050:  stloc.s    V_5
    IL_0052:  ldarg.3
    IL_0053:  ldloc.3
    IL_0054:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0059:  conv.i4
    IL_005a:  sub
    IL_005b:  stloc.s    V_6
    IL_005d:  ldarg.0
    IL_005e:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0063:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0068:  ldloc.s    V_4
    IL_006a:  ldloc.s    V_5
    IL_006c:  ldloc.s    V_6
    IL_006e:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                          int32,
                                                                          int32)
    IL_0073:  stloc.s    V_7
    IL_0075:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_007a:  ldloc.s    V_7
    IL_007c:  ldelem.ref
    IL_007d:  ldfld      bool Game.Block::IsCollidable
    IL_0082:  brtrue.s   IL_00f6

    IL_0084:  ldarg.0
    IL_0085:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_008a:  ldc.i4.0
    IL_008b:  ldarg.1
    IL_008c:  ldarg.2
    IL_008d:  ldarg.3
    IL_008e:  ldc.i4.0
    IL_008f:  ldc.i4.0
    IL_0090:  ldc.i4.0
    IL_0091:  callvirt   instance void Game.SubsystemTerrain::DestroyCell(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          bool,
                                                                          bool)
    IL_0096:  ret

    IL_0097:  ldloc.2
    IL_0098:  isinst     Game.PostedSignBlock
    IL_009d:  brfalse.s  IL_00f6

    IL_009f:  ldloc.1
    IL_00a0:  call       bool Game.PostedSignBlock::GetHanging(int32)
    IL_00a5:  brtrue.s   IL_00be

    IL_00a7:  ldarg.0
    IL_00a8:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_00ad:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_00b2:  ldarg.1
    IL_00b3:  ldarg.2
    IL_00b4:  ldc.i4.1
    IL_00b5:  sub
    IL_00b6:  ldarg.3
    IL_00b7:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                          int32,
                                                                          int32)
    IL_00bc:  br.s       IL_00d3

    IL_00be:  ldarg.0
    IL_00bf:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_00c4:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_00c9:  ldarg.1
    IL_00ca:  ldarg.2
    IL_00cb:  ldc.i4.1
    IL_00cc:  add
    IL_00cd:  ldarg.3
    IL_00ce:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                          int32,
                                                                          int32)
    IL_00d3:  stloc.s    V_8
    IL_00d5:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_00da:  ldloc.s    V_8
    IL_00dc:  ldelem.ref
    IL_00dd:  ldfld      bool Game.Block::IsCollidable
    IL_00e2:  brtrue.s   IL_00f6

    IL_00e4:  ldarg.0
    IL_00e5:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_00ea:  ldc.i4.0
    IL_00eb:  ldarg.1
    IL_00ec:  ldarg.2
    IL_00ed:  ldarg.3
    IL_00ee:  ldc.i4.0
    IL_00ef:  ldc.i4.0
    IL_00f0:  ldc.i4.0
    IL_00f1:  callvirt   instance void Game.SubsystemTerrain::DestroyCell(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          bool,
                                                                          bool)
    IL_00f6:  ret
  } // end of method SubsystemSignBlockBehavior::OnNeighborBlockChanged

  .method public hidebysig virtual instance bool 
          OnInteract(valuetype Game.TerrainRaycastResult raycastResult,
                     class Game.ComponentMiner componentMiner) cil managed
  {
    // 代码大小       135 (0x87)
    .maxstack  4
    .locals init (valuetype [Engine]Engine.Point3 V_0,
             class Game.SignData V_1)
    IL_0000:  ldstr      "Audio/UI/ButtonClick"
    IL_0005:  ldc.r4     1.
    IL_000a:  ldc.r4     0.0
    IL_000f:  ldc.r4     0.0
    IL_0014:  call       void Game.AudioManager::PlaySound(string,
                                                           float32,
                                                           float32,
                                                           float32)
    IL_0019:  ldloca.s   V_0
    IL_001b:  ldarg.1
    IL_001c:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0021:  ldfld      int32 Game.CellFace::X
    IL_0026:  ldarg.1
    IL_0027:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_002c:  ldfld      int32 Game.CellFace::Y
    IL_0031:  ldarg.1
    IL_0032:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0037:  ldfld      int32 Game.CellFace::Z
    IL_003c:  call       instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0041:  ldarg.0
    IL_0042:  ldfld      class Game.SubsystemGameInfo Game.SubsystemSignBlockBehavior::m_subsystemGameInfo
    IL_0047:  callvirt   instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
    IL_004c:  ldfld      valuetype Game.GameMode Game.WorldInfo::GameMode
    IL_0051:  ldc.i4.4
    IL_0052:  bne.un.s   IL_0079

    IL_0054:  ldarg.0
    IL_0055:  ldloc.0
    IL_0056:  call       instance class Game.SignData Game.SubsystemSignBlockBehavior::GetSignData(valuetype [Engine]Engine.Point3)
    IL_005b:  stloc.1
    IL_005c:  ldloc.1
    IL_005d:  brfalse.s  IL_0085

    IL_005f:  ldloc.1
    IL_0060:  ldfld      string Game.SignData::Url
    IL_0065:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_006a:  brtrue.s   IL_0085

    IL_006c:  ldloc.1
    IL_006d:  ldfld      string Game.SignData::Url
    IL_0072:  call       void Game.WebBrowserManager::LaunchBrowser(string)
    IL_0077:  br.s       IL_0085

    IL_0079:  ldarg.0
    IL_007a:  ldloc.0
    IL_007b:  newobj     instance void Game.EditSignDialog::.ctor(class Game.SubsystemSignBlockBehavior,
                                                                  valuetype [Engine]Engine.Point3)
    IL_0080:  call       void Game.DialogsManager::ShowDialog(class Game.Dialog)
    IL_0085:  ldc.i4.1
    IL_0086:  ret
  } // end of method SubsystemSignBlockBehavior::OnInteract

  .method public hidebysig virtual instance void 
          OnBlockRemoved(int32 'value',
                         int32 newValue,
                         int32 x,
                         int32 y,
                         int32 z) cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  4
    .locals init (valuetype [Engine]Engine.Point3 V_0)
    IL_0000:  ldloca.s   V_0
    IL_0002:  ldarg.3
    IL_0003:  ldarg.s    y
    IL_0005:  ldarg.s    z
    IL_0007:  call       instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_000c:  ldarg.0
    IL_000d:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemSignBlockBehavior/TextData> Game.SubsystemSignBlockBehavior::m_textsByPoint
    IL_0012:  ldloc.0
    IL_0013:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemSignBlockBehavior/TextData>::Remove(!0)
    IL_0018:  pop
    IL_0019:  ldarg.0
    IL_001a:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.SubsystemSignBlockBehavior::m_lastUpdatePosition
    IL_001f:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>
    IL_0025:  ret
  } // end of method SubsystemSignBlockBehavior::OnBlockRemoved

  .method public hidebysig newslot specialname virtual final 
          instance int32[]  get_DrawOrders() cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     int32[] Game.SubsystemSignBlockBehavior::m_drawOrders
    IL_0005:  ret
  } // end of method SubsystemSignBlockBehavior::get_DrawOrders

  .method public hidebysig newslot virtual final 
          instance void  Draw(class Game.SubsystemDrawing subsystemDrawing,
                              int32 drawOrder) cil managed
  {
    // 代码大小       1750 (0x6d6)
    .maxstack  8
    .locals init (bool V_0,
             valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<valuetype [Engine]Engine.Point3,class Game.SubsystemSignBlockBehavior/TextData> V_1,
             class Game.SubsystemSignBlockBehavior/TextData V_2,
             valuetype [Engine]Engine.Point3 V_3,
             float32 V_4,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemSignBlockBehavior/TextData> V_5,
             int32 V_6,
             class Game.SubsystemSignBlockBehavior/TextData V_7,
             int32 V_8,
             class Game.SubsystemSignBlockBehavior/TextData V_9,
             class [Engine]Engine.Graphics.RenderTarget2D V_10,
             class [Engine]Engine.Graphics.FlatBatch2D V_11,
             class [Engine]Engine.Graphics.FontBatch2D V_12,
             valuetype [System.Runtime]System.Nullable`1<float32> V_13,
             valuetype [System.Runtime]System.Nullable`1<int32> V_14,
             int32 V_15,
             class Game.SubsystemSignBlockBehavior/TextData V_16,
             class [Engine]Engine.Graphics.TexturedBatch3D V_17,
             class Game.SubsystemSignBlockBehavior/TextData V_18,
             int32 V_19,
             int32 V_20,
             class Game.SignBlock V_21,
             int32 V_22,
             class Game.BlockMesh V_23,
             class Game.TerrainChunk V_24,
             float32 V_25,
             valuetype [Engine]Engine.Color V_26,
             float32 V_27,
             float32 V_28,
             float32 V_29,
             float32 V_30,
             valuetype [Engine]Engine.Vector3 V_31,
             valuetype [Engine]Engine.Vector3 V_32,
             float32 V_33,
             valuetype [Engine]Engine.Vector3 V_34,
             int32 V_35,
             valuetype Game.BlockMeshVertex V_36,
             valuetype Game.BlockMeshVertex V_37,
             valuetype [Engine]Engine.Vector3 V_38,
             valuetype [Engine]Engine.Vector3 V_39,
             valuetype [Engine]Engine.Vector3 V_40,
             valuetype [Engine]Engine.Vector2 V_41,
             valuetype [Engine]Engine.Vector2 V_42,
             valuetype [Engine]Engine.Vector2 V_43)
    IL_0000:  ldarg.2
    IL_0001:  ldsfld     int32[] Game.SubsystemSignBlockBehavior::m_drawOrders
    IL_0006:  ldc.i4.0
    IL_0007:  ldelem.i4
    IL_0008:  bne.un     IL_0316

    IL_000d:  ldarg.0
    IL_000e:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.SubsystemSignBlockBehavior::m_lastUpdatePosition
    IL_0013:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_0018:  brfalse.s  IL_003a

    IL_001a:  ldarg.0
    IL_001b:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.SubsystemSignBlockBehavior::m_lastUpdatePosition
    IL_0020:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_0025:  ldarg.1
    IL_0026:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
    IL_002b:  call       float32 [Engine]Engine.Vector3::Distance(valuetype [Engine]Engine.Vector3,
                                                                  valuetype [Engine]Engine.Vector3)
    IL_0030:  ldc.r4     2.
    IL_0035:  blt.un     IL_06d5

    IL_003a:  ldarg.0
    IL_003b:  ldarg.1
    IL_003c:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
    IL_0041:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_0046:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.SubsystemSignBlockBehavior::m_lastUpdatePosition
    IL_004b:  ldarg.0
    IL_004c:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemSignBlockBehavior/TextData> Game.SubsystemSignBlockBehavior::m_nearTexts
    IL_0051:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemSignBlockBehavior/TextData>::Clear()
    IL_0056:  ldarg.0
    IL_0057:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemSignBlockBehavior/TextData> Game.SubsystemSignBlockBehavior::m_textsByPoint
    IL_005c:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemSignBlockBehavior/TextData>::get_Values()
    IL_0061:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection<valuetype [Engine]Engine.Point3,class Game.SubsystemSignBlockBehavior/TextData>::GetEnumerator()
    IL_0066:  stloc.1
    .try
    {
      IL_0067:  br.s       IL_00bc

      IL_0069:  ldloca.s   V_1
      IL_006b:  call       instance !1 valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<valuetype [Engine]Engine.Point3,class Game.SubsystemSignBlockBehavior/TextData>::get_Current()
      IL_0070:  stloc.2
      IL_0071:  ldloc.2
      IL_0072:  ldfld      valuetype [Engine]Engine.Point3 Game.SubsystemSignBlockBehavior/TextData::Point
      IL_0077:  stloc.3
      IL_0078:  ldloc.3
      IL_0079:  ldfld      int32 [Engine]Engine.Point3::X
      IL_007e:  conv.r4
      IL_007f:  ldloc.3
      IL_0080:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_0085:  conv.r4
      IL_0086:  ldloc.3
      IL_0087:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_008c:  conv.r4
      IL_008d:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                       float32,
                                                                       float32)
      IL_0092:  ldarg.1
      IL_0093:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
      IL_0098:  call       float32 [Engine]Engine.Vector3::DistanceSquared(valuetype [Engine]Engine.Vector3,
                                                                           valuetype [Engine]Engine.Vector3)
      IL_009d:  stloc.s    V_4
      IL_009f:  ldloc.s    V_4
      IL_00a1:  ldc.r4     400.
      IL_00a6:  bgt.un.s   IL_00bc

      IL_00a8:  ldloc.2
      IL_00a9:  ldloc.s    V_4
      IL_00ab:  stfld      float32 Game.SubsystemSignBlockBehavior/TextData::Distance
      IL_00b0:  ldarg.0
      IL_00b1:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemSignBlockBehavior/TextData> Game.SubsystemSignBlockBehavior::m_nearTexts
      IL_00b6:  ldloc.2
      IL_00b7:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemSignBlockBehavior/TextData>::Add(!0)
      IL_00bc:  ldloca.s   V_1
      IL_00be:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<valuetype [Engine]Engine.Point3,class Game.SubsystemSignBlockBehavior/TextData>::MoveNext()
      IL_00c3:  brtrue.s   IL_0069

      IL_00c5:  leave.s    IL_00d5

    }  // end .try
    finally
    {
      IL_00c7:  ldloca.s   V_1
      IL_00c9:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<valuetype [Engine]Engine.Point3,class Game.SubsystemSignBlockBehavior/TextData>
      IL_00cf:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00d4:  endfinally
    }  // end handler
    IL_00d5:  ldarg.0
    IL_00d6:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemSignBlockBehavior/TextData> Game.SubsystemSignBlockBehavior::m_nearTexts
    IL_00db:  ldsfld     class [System.Runtime]System.Comparison`1<class Game.SubsystemSignBlockBehavior/TextData> Game.SubsystemSignBlockBehavior/'<>c'::'<>9__28_0'
    IL_00e0:  dup
    IL_00e1:  brtrue.s   IL_00fa

    IL_00e3:  pop
    IL_00e4:  ldsfld     class Game.SubsystemSignBlockBehavior/'<>c' Game.SubsystemSignBlockBehavior/'<>c'::'<>9'
    IL_00e9:  ldftn      instance int32 Game.SubsystemSignBlockBehavior/'<>c'::'<Draw>b__28_0'(class Game.SubsystemSignBlockBehavior/TextData,
                                                                                               class Game.SubsystemSignBlockBehavior/TextData)
    IL_00ef:  newobj     instance void class [System.Runtime]System.Comparison`1<class Game.SubsystemSignBlockBehavior/TextData>::.ctor(object,
                                                                                                                                        native int)
    IL_00f4:  dup
    IL_00f5:  stsfld     class [System.Runtime]System.Comparison`1<class Game.SubsystemSignBlockBehavior/TextData> Game.SubsystemSignBlockBehavior/'<>c'::'<>9__28_0'
    IL_00fa:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemSignBlockBehavior/TextData>::Sort(class [System.Runtime]System.Comparison`1<!0>)
    IL_00ff:  ldarg.0
    IL_0100:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemSignBlockBehavior/TextData> Game.SubsystemSignBlockBehavior::m_nearTexts
    IL_0105:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemSignBlockBehavior/TextData>::get_Count()
    IL_010a:  ldc.i4.s   32
    IL_010c:  ble.s      IL_0129

    IL_010e:  ldarg.0
    IL_010f:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemSignBlockBehavior/TextData> Game.SubsystemSignBlockBehavior::m_nearTexts
    IL_0114:  ldc.i4.s   32
    IL_0116:  ldarg.0
    IL_0117:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemSignBlockBehavior/TextData> Game.SubsystemSignBlockBehavior::m_nearTexts
    IL_011c:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemSignBlockBehavior/TextData>::get_Count()
    IL_0121:  ldc.i4.s   32
    IL_0123:  sub
    IL_0124:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemSignBlockBehavior/TextData>::RemoveRange(int32,
                                                                                                                                                                int32)
    IL_0129:  ldarg.0
    IL_012a:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemSignBlockBehavior/TextData> Game.SubsystemSignBlockBehavior::m_nearTexts
    IL_012f:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemSignBlockBehavior/TextData>::GetEnumerator()
    IL_0134:  stloc.s    V_5
    .try
    {
      IL_0136:  br.s       IL_0149

      IL_0138:  ldloca.s   V_5
      IL_013a:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemSignBlockBehavior/TextData>::get_Current()
      IL_013f:  call       int32 [Engine]Engine.Time::get_FrameIndex()
      IL_0144:  stfld      int32 Game.SubsystemSignBlockBehavior/TextData::ToBeRenderedFrame
      IL_0149:  ldloca.s   V_5
      IL_014b:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemSignBlockBehavior/TextData>::MoveNext()
      IL_0150:  brtrue.s   IL_0138

      IL_0152:  leave.s    IL_0162

    }  // end .try
    finally
    {
      IL_0154:  ldloca.s   V_5
      IL_0156:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemSignBlockBehavior/TextData>
      IL_015c:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0161:  endfinally
    }  // end handler
    IL_0162:  ldc.i4.0
    IL_0163:  stloc.0
    IL_0164:  ldc.i4.0
    IL_0165:  stloc.s    V_6
    IL_0167:  br         IL_0235

    IL_016c:  ldarg.0
    IL_016d:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemSignBlockBehavior/TextData> Game.SubsystemSignBlockBehavior::m_nearTexts
    IL_0172:  ldloc.s    V_6
    IL_0174:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemSignBlockBehavior/TextData>::get_Item(int32)
    IL_0179:  stloc.s    V_7
    IL_017b:  ldloc.s    V_7
    IL_017d:  ldflda     valuetype [System.Runtime]System.Nullable`1<int32> Game.SubsystemSignBlockBehavior/TextData::TextureLocation
    IL_0182:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0187:  brtrue     IL_022f

    IL_018c:  ldarg.0
    IL_018d:  ldfld      class Game.SubsystemSignBlockBehavior/TextData[] Game.SubsystemSignBlockBehavior::m_textureLocations
    IL_0192:  ldsfld     class [System.Runtime]System.Func`2<class Game.SubsystemSignBlockBehavior/TextData,bool> Game.SubsystemSignBlockBehavior/'<>c'::'<>9__28_1'
    IL_0197:  dup
    IL_0198:  brtrue.s   IL_01b1

    IL_019a:  pop
    IL_019b:  ldsfld     class Game.SubsystemSignBlockBehavior/'<>c' Game.SubsystemSignBlockBehavior/'<>c'::'<>9'
    IL_01a0:  ldftn      instance bool Game.SubsystemSignBlockBehavior/'<>c'::'<Draw>b__28_1'(class Game.SubsystemSignBlockBehavior/TextData)
    IL_01a6:  newobj     instance void class [System.Runtime]System.Func`2<class Game.SubsystemSignBlockBehavior/TextData,bool>::.ctor(object,
                                                                                                                                       native int)
    IL_01ab:  dup
    IL_01ac:  stsfld     class [System.Runtime]System.Func`2<class Game.SubsystemSignBlockBehavior/TextData,bool> Game.SubsystemSignBlockBehavior/'<>c'::'<>9__28_1'
    IL_01b1:  call       int32 Game.CollectionUtils::FirstIndex<class Game.SubsystemSignBlockBehavior/TextData>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                class [System.Runtime]System.Func`2<!!0,bool>)
    IL_01b6:  stloc.s    V_8
    IL_01b8:  ldloc.s    V_8
    IL_01ba:  ldc.i4.0
    IL_01bb:  bge.s      IL_01e9

    IL_01bd:  ldarg.0
    IL_01be:  ldfld      class Game.SubsystemSignBlockBehavior/TextData[] Game.SubsystemSignBlockBehavior::m_textureLocations
    IL_01c3:  ldsfld     class [System.Runtime]System.Func`2<class Game.SubsystemSignBlockBehavior/TextData,bool> Game.SubsystemSignBlockBehavior/'<>c'::'<>9__28_2'
    IL_01c8:  dup
    IL_01c9:  brtrue.s   IL_01e2

    IL_01cb:  pop
    IL_01cc:  ldsfld     class Game.SubsystemSignBlockBehavior/'<>c' Game.SubsystemSignBlockBehavior/'<>c'::'<>9'
    IL_01d1:  ldftn      instance bool Game.SubsystemSignBlockBehavior/'<>c'::'<Draw>b__28_2'(class Game.SubsystemSignBlockBehavior/TextData)
    IL_01d7:  newobj     instance void class [System.Runtime]System.Func`2<class Game.SubsystemSignBlockBehavior/TextData,bool>::.ctor(object,
                                                                                                                                       native int)
    IL_01dc:  dup
    IL_01dd:  stsfld     class [System.Runtime]System.Func`2<class Game.SubsystemSignBlockBehavior/TextData,bool> Game.SubsystemSignBlockBehavior/'<>c'::'<>9__28_2'
    IL_01e2:  call       int32 Game.CollectionUtils::FirstIndex<class Game.SubsystemSignBlockBehavior/TextData>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                class [System.Runtime]System.Func`2<!!0,bool>)
    IL_01e7:  stloc.s    V_8
    IL_01e9:  ldloc.s    V_8
    IL_01eb:  ldc.i4.0
    IL_01ec:  blt.s      IL_022f

    IL_01ee:  ldarg.0
    IL_01ef:  ldfld      class Game.SubsystemSignBlockBehavior/TextData[] Game.SubsystemSignBlockBehavior::m_textureLocations
    IL_01f4:  ldloc.s    V_8
    IL_01f6:  ldelem.ref
    IL_01f7:  stloc.s    V_9
    IL_01f9:  ldloc.s    V_9
    IL_01fb:  brfalse.s  IL_0214

    IL_01fd:  ldloc.s    V_9
    IL_01ff:  ldflda     valuetype [System.Runtime]System.Nullable`1<int32> Game.SubsystemSignBlockBehavior/TextData::TextureLocation
    IL_0204:  initobj    valuetype [System.Runtime]System.Nullable`1<int32>
    IL_020a:  ldarg.0
    IL_020b:  ldfld      class Game.SubsystemSignBlockBehavior/TextData[] Game.SubsystemSignBlockBehavior::m_textureLocations
    IL_0210:  ldloc.s    V_8
    IL_0212:  ldnull
    IL_0213:  stelem.ref
    IL_0214:  ldarg.0
    IL_0215:  ldfld      class Game.SubsystemSignBlockBehavior/TextData[] Game.SubsystemSignBlockBehavior::m_textureLocations
    IL_021a:  ldloc.s    V_8
    IL_021c:  ldloc.s    V_7
    IL_021e:  stelem.ref
    IL_021f:  ldloc.s    V_7
    IL_0221:  ldloc.s    V_8
    IL_0223:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_0228:  stfld      valuetype [System.Runtime]System.Nullable`1<int32> Game.SubsystemSignBlockBehavior/TextData::TextureLocation
    IL_022d:  ldc.i4.1
    IL_022e:  stloc.0
    IL_022f:  ldloc.s    V_6
    IL_0231:  ldc.i4.1
    IL_0232:  add
    IL_0233:  stloc.s    V_6
    IL_0235:  ldloc.s    V_6
    IL_0237:  ldarg.0
    IL_0238:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemSignBlockBehavior/TextData> Game.SubsystemSignBlockBehavior::m_nearTexts
    IL_023d:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemSignBlockBehavior/TextData>::get_Count()
    IL_0242:  ldc.i4.s   32
    IL_0244:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_0249:  blt        IL_016c

    IL_024e:  ldloc.0
    IL_024f:  brfalse    IL_06d5

    IL_0254:  call       class [Engine]Engine.Graphics.RenderTarget2D [Engine]Engine.Graphics.Display::get_RenderTarget()
    IL_0259:  stloc.s    V_10
    IL_025b:  ldarg.0
    IL_025c:  ldfld      class [Engine]Engine.Graphics.RenderTarget2D Game.SubsystemSignBlockBehavior::m_renderTarget
    IL_0261:  call       void [Engine]Engine.Graphics.Display::set_RenderTarget(class [Engine]Engine.Graphics.RenderTarget2D)
    .try
    {
      IL_0266:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
      IL_026b:  newobj     instance void [Engine]Engine.Vector4::.ctor(valuetype [Engine]Engine.Color)
      IL_0270:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector4>::.ctor(!0)
      IL_0275:  ldloca.s   V_13
      IL_0277:  initobj    valuetype [System.Runtime]System.Nullable`1<float32>
      IL_027d:  ldloc.s    V_13
      IL_027f:  ldloca.s   V_14
      IL_0281:  initobj    valuetype [System.Runtime]System.Nullable`1<int32>
      IL_0287:  ldloc.s    V_14
      IL_0289:  call       void [Engine]Engine.Graphics.Display::Clear(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector4>,
                                                                       valuetype [System.Runtime]System.Nullable`1<float32>,
                                                                       valuetype [System.Runtime]System.Nullable`1<int32>)
      IL_028e:  ldarg.0
      IL_028f:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.SubsystemSignBlockBehavior::m_primitivesRenderer2D
      IL_0294:  ldc.i4.0
      IL_0295:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::None
      IL_029a:  ldnull
      IL_029b:  ldsfld     class [Engine]Engine.Graphics.BlendState [Engine]Engine.Graphics.BlendState::Opaque
      IL_02a0:  callvirt   instance class [Engine]Engine.Graphics.FlatBatch2D [Engine]Engine.Graphics.PrimitivesRenderer2D::FlatBatch(int32,
                                                                                                                                      class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                      class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                      class [Engine]Engine.Graphics.BlendState)
      IL_02a5:  stloc.s    V_11
      IL_02a7:  ldarg.0
      IL_02a8:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.SubsystemSignBlockBehavior::m_primitivesRenderer2D
      IL_02ad:  ldarg.0
      IL_02ae:  ldfld      class [Engine]Engine.Media.BitmapFont Game.SubsystemSignBlockBehavior::m_font
      IL_02b3:  ldc.i4.1
      IL_02b4:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::None
      IL_02b9:  ldnull
      IL_02ba:  ldsfld     class [Engine]Engine.Graphics.BlendState [Engine]Engine.Graphics.BlendState::Opaque
      IL_02bf:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::PointClamp
      IL_02c4:  callvirt   instance class [Engine]Engine.Graphics.FontBatch2D [Engine]Engine.Graphics.PrimitivesRenderer2D::FontBatch(class [Engine]Engine.Media.BitmapFont,
                                                                                                                                      int32,
                                                                                                                                      class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                      class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                      class [Engine]Engine.Graphics.BlendState,
                                                                                                                                      class [Engine]Engine.Graphics.SamplerState)
      IL_02c9:  stloc.s    V_12
      IL_02cb:  ldc.i4.0
      IL_02cc:  stloc.s    V_15
      IL_02ce:  br.s       IL_02f1

      IL_02d0:  ldarg.0
      IL_02d1:  ldfld      class Game.SubsystemSignBlockBehavior/TextData[] Game.SubsystemSignBlockBehavior::m_textureLocations
      IL_02d6:  ldloc.s    V_15
      IL_02d8:  ldelem.ref
      IL_02d9:  stloc.s    V_16
      IL_02db:  ldloc.s    V_16
      IL_02dd:  brfalse.s  IL_02eb

      IL_02df:  ldarg.0
      IL_02e0:  ldloc.s    V_12
      IL_02e2:  ldloc.s    V_11
      IL_02e4:  ldloc.s    V_16
      IL_02e6:  call       instance void Game.SubsystemSignBlockBehavior::RenderText(class [Engine]Engine.Graphics.FontBatch2D,
                                                                                     class [Engine]Engine.Graphics.FlatBatch2D,
                                                                                     class Game.SubsystemSignBlockBehavior/TextData)
      IL_02eb:  ldloc.s    V_15
      IL_02ed:  ldc.i4.1
      IL_02ee:  add
      IL_02ef:  stloc.s    V_15
      IL_02f1:  ldloc.s    V_15
      IL_02f3:  ldarg.0
      IL_02f4:  ldfld      class Game.SubsystemSignBlockBehavior/TextData[] Game.SubsystemSignBlockBehavior::m_textureLocations
      IL_02f9:  ldlen
      IL_02fa:  conv.i4
      IL_02fb:  blt.s      IL_02d0

      IL_02fd:  ldarg.0
      IL_02fe:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.SubsystemSignBlockBehavior::m_primitivesRenderer2D
      IL_0303:  ldc.i4.1
      IL_0304:  callvirt   instance void [Engine]Engine.Graphics.PrimitivesRenderer2D::Flush(bool)
      IL_0309:  leave      IL_06d5

    }  // end .try
    finally
    {
      IL_030e:  ldloc.s    V_10
      IL_0310:  call       void [Engine]Engine.Graphics.Display::set_RenderTarget(class [Engine]Engine.Graphics.RenderTarget2D)
      IL_0315:  endfinally
    }  // end handler
    IL_0316:  ldarg.2
    IL_0317:  ldsfld     int32[] Game.SubsystemSignBlockBehavior::m_drawOrders
    IL_031c:  ldc.i4.1
    IL_031d:  ldelem.i4
    IL_031e:  bne.un     IL_06d5

    IL_0323:  ldarg.0
    IL_0324:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemSignBlockBehavior/TextData> Game.SubsystemSignBlockBehavior::m_nearTexts
    IL_0329:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemSignBlockBehavior/TextData>::get_Count()
    IL_032e:  ldc.i4.0
    IL_032f:  ble        IL_06d5

    IL_0334:  ldarg.0
    IL_0335:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.SubsystemSignBlockBehavior::m_primitivesRenderer3D
    IL_033a:  ldarg.0
    IL_033b:  ldfld      class [Engine]Engine.Graphics.RenderTarget2D Game.SubsystemSignBlockBehavior::m_renderTarget
    IL_0340:  ldc.i4.0
    IL_0341:  ldc.i4.0
    IL_0342:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::DepthRead
    IL_0347:  ldsfld     class [Engine]Engine.Graphics.RasterizerState [Engine]Engine.Graphics.RasterizerState::CullCounterClockwise
    IL_034c:  ldnull
    IL_034d:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::PointClamp
    IL_0352:  callvirt   instance class [Engine]Engine.Graphics.TexturedBatch3D [Engine]Engine.Graphics.PrimitivesRenderer3D::TexturedBatch(class [Engine]Engine.Graphics.Texture2D,
                                                                                                                                            bool,
                                                                                                                                            int32,
                                                                                                                                            class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                            class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                            class [Engine]Engine.Graphics.BlendState,
                                                                                                                                            class [Engine]Engine.Graphics.SamplerState)
    IL_0357:  stloc.s    V_17
    IL_0359:  ldarg.0
    IL_035a:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemSignBlockBehavior/TextData> Game.SubsystemSignBlockBehavior::m_nearTexts
    IL_035f:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemSignBlockBehavior/TextData>::GetEnumerator()
    IL_0364:  stloc.s    V_5
    .try
    {
      IL_0366:  br         IL_06a7

      IL_036b:  ldloca.s   V_5
      IL_036d:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemSignBlockBehavior/TextData>::get_Current()
      IL_0372:  stloc.s    V_18
      IL_0374:  ldloc.s    V_18
      IL_0376:  ldflda     valuetype [System.Runtime]System.Nullable`1<int32> Game.SubsystemSignBlockBehavior/TextData::TextureLocation
      IL_037b:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
      IL_0380:  brfalse    IL_06a7

      IL_0385:  ldarg.0
      IL_0386:  ldfld      class Game.SubsystemTerrain Game.SubsystemSignBlockBehavior::m_subsystemTerrain
      IL_038b:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
      IL_0390:  ldloc.s    V_18
      IL_0392:  ldflda     valuetype [Engine]Engine.Point3 Game.SubsystemSignBlockBehavior/TextData::Point
      IL_0397:  ldfld      int32 [Engine]Engine.Point3::X
      IL_039c:  ldloc.s    V_18
      IL_039e:  ldflda     valuetype [Engine]Engine.Point3 Game.SubsystemSignBlockBehavior/TextData::Point
      IL_03a3:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_03a8:  ldloc.s    V_18
      IL_03aa:  ldflda     valuetype [Engine]Engine.Point3 Game.SubsystemSignBlockBehavior/TextData::Point
      IL_03af:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_03b4:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                         int32,
                                                                         int32)
      IL_03b9:  stloc.s    V_19
      IL_03bb:  ldloc.s    V_19
      IL_03bd:  call       int32 Game.TerrainData::ExtractContents(int32)
      IL_03c2:  stloc.s    V_20
      IL_03c4:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
      IL_03c9:  ldloc.s    V_20
      IL_03cb:  ldelem.ref
      IL_03cc:  isinst     Game.SignBlock
      IL_03d1:  stloc.s    V_21
      IL_03d3:  ldloc.s    V_21
      IL_03d5:  brfalse    IL_06a7

      IL_03da:  ldloc.s    V_19
      IL_03dc:  call       int32 Game.TerrainData::ExtractData(int32)
      IL_03e1:  stloc.s    V_22
      IL_03e3:  ldloc.s    V_21
      IL_03e5:  ldloc.s    V_22
      IL_03e7:  callvirt   instance class Game.BlockMesh Game.SignBlock::GetSignSurfaceBlockMesh(int32)
      IL_03ec:  stloc.s    V_23
      IL_03ee:  ldloc.s    V_23
      IL_03f0:  brfalse    IL_06a7

      IL_03f5:  ldarg.0
      IL_03f6:  ldfld      class Game.SubsystemTerrain Game.SubsystemSignBlockBehavior::m_subsystemTerrain
      IL_03fb:  ldloc.s    V_18
      IL_03fd:  ldflda     valuetype [Engine]Engine.Point3 Game.SubsystemSignBlockBehavior/TextData::Point
      IL_0402:  ldfld      int32 [Engine]Engine.Point3::X
      IL_0407:  ldloc.s    V_18
      IL_0409:  ldflda     valuetype [Engine]Engine.Point3 Game.SubsystemSignBlockBehavior/TextData::Point
      IL_040e:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_0413:  callvirt   instance class Game.TerrainChunk Game.SubsystemTerrain::CellToChunk(int32,
                                                                                               int32)
      IL_0418:  stloc.s    V_24
      IL_041a:  ldloc.s    V_24
      IL_041c:  brfalse.s  IL_0436

      IL_041e:  ldloc.s    V_24
      IL_0420:  ldfld      valuetype Game.TerrainChunkState Game.TerrainChunk::State
      IL_0425:  ldc.i4.7
      IL_0426:  blt.s      IL_0436

      IL_0428:  ldloc.s    V_18
      IL_042a:  ldloc.s    V_19
      IL_042c:  call       int32 Game.TerrainData::ExtractLight(int32)
      IL_0431:  stfld      int32 Game.SubsystemSignBlockBehavior/TextData::Light
      IL_0436:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValue
      IL_043b:  ldloc.s    V_18
      IL_043d:  ldfld      int32 Game.SubsystemSignBlockBehavior/TextData::Light
      IL_0442:  ldelem.r4
      IL_0443:  stloc.s    V_25
      IL_0445:  ldloca.s   V_26
      IL_0447:  ldloc.s    V_25
      IL_0449:  ldloc.s    V_25
      IL_044b:  ldloc.s    V_25
      IL_044d:  call       instance void [Engine]Engine.Color::.ctor(float32,
                                                                     float32,
                                                                     float32)
      IL_0452:  ldc.r4     0.0
      IL_0457:  stloc.s    V_27
      IL_0459:  ldloc.s    V_18
      IL_045b:  ldfld      float32 Game.SubsystemSignBlockBehavior/TextData::UsedTextureWidth
      IL_0460:  ldc.r4     128.
      IL_0465:  div
      IL_0466:  stloc.s    V_28
      IL_0468:  ldloc.s    V_18
      IL_046a:  ldflda     valuetype [System.Runtime]System.Nullable`1<int32> Game.SubsystemSignBlockBehavior/TextData::TextureLocation
      IL_046f:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
      IL_0474:  conv.r4
      IL_0475:  ldc.r4     32.
      IL_047a:  div
      IL_047b:  stloc.s    V_29
      IL_047d:  ldloc.s    V_18
      IL_047f:  ldflda     valuetype [System.Runtime]System.Nullable`1<int32> Game.SubsystemSignBlockBehavior/TextData::TextureLocation
      IL_0484:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
      IL_0489:  conv.r4
      IL_048a:  ldloc.s    V_18
      IL_048c:  ldfld      float32 Game.SubsystemSignBlockBehavior/TextData::UsedTextureHeight
      IL_0491:  ldc.r4     32.
      IL_0496:  div
      IL_0497:  add
      IL_0498:  conv.r4
      IL_0499:  ldc.r4     32.
      IL_049e:  div
      IL_049f:  stloc.s    V_30
      IL_04a1:  ldloc.s    V_21
      IL_04a3:  ldloc.s    V_22
      IL_04a5:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SignBlock::GetSignSurfaceNormal(int32)
      IL_04aa:  stloc.s    V_31
      IL_04ac:  ldloca.s   V_32
      IL_04ae:  ldloc.s    V_18
      IL_04b0:  ldflda     valuetype [Engine]Engine.Point3 Game.SubsystemSignBlockBehavior/TextData::Point
      IL_04b5:  ldfld      int32 [Engine]Engine.Point3::X
      IL_04ba:  conv.r4
      IL_04bb:  ldloc.s    V_18
      IL_04bd:  ldflda     valuetype [Engine]Engine.Point3 Game.SubsystemSignBlockBehavior/TextData::Point
      IL_04c2:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_04c7:  conv.r4
      IL_04c8:  ldloc.s    V_18
      IL_04ca:  ldflda     valuetype [Engine]Engine.Point3 Game.SubsystemSignBlockBehavior/TextData::Point
      IL_04cf:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_04d4:  conv.r4
      IL_04d5:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                       float32,
                                                                       float32)
      IL_04da:  ldarg.1
      IL_04db:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
      IL_04e0:  ldloc.s    V_32
      IL_04e2:  ldc.r4     0.5
      IL_04e7:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32)
      IL_04ec:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_04f1:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                   valuetype [Engine]Engine.Vector3)
      IL_04f6:  ldloc.s    V_31
      IL_04f8:  call       float32 [Engine]Engine.Vector3::Dot(valuetype [Engine]Engine.Vector3,
                                                               valuetype [Engine]Engine.Vector3)
      IL_04fd:  stloc.s    V_33
      IL_04ff:  ldc.r4     9.9999998e-003
      IL_0504:  ldloc.s    V_33
      IL_0506:  mul
      IL_0507:  ldc.r4     4.9999999e-003
      IL_050c:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                                 float32)
      IL_0511:  ldloc.s    V_31
      IL_0513:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0518:  stloc.s    V_34
      IL_051a:  ldc.i4.0
      IL_051b:  stloc.s    V_35
      IL_051d:  br         IL_0692

      IL_0522:  ldloc.s    V_23
      IL_0524:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex> Game.BlockMesh::Vertices
      IL_0529:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Array()
      IL_052e:  ldloc.s    V_23
      IL_0530:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.BlockMesh::Indices
      IL_0535:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
      IL_053a:  ldloc.s    V_35
      IL_053c:  ldc.i4.3
      IL_053d:  mul
      IL_053e:  ldelem.u2
      IL_053f:  ldelem     Game.BlockMeshVertex
      IL_0544:  stloc.s    V_36
      IL_0546:  ldloc.s    V_23
      IL_0548:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex> Game.BlockMesh::Vertices
      IL_054d:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Array()
      IL_0552:  ldloc.s    V_23
      IL_0554:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.BlockMesh::Indices
      IL_0559:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
      IL_055e:  ldloc.s    V_35
      IL_0560:  ldc.i4.3
      IL_0561:  mul
      IL_0562:  ldc.i4.1
      IL_0563:  add
      IL_0564:  ldelem.u2
      IL_0565:  ldelem     Game.BlockMeshVertex
      IL_056a:  stloc.s    V_37
      IL_056c:  ldloc.s    V_23
      IL_056e:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex> Game.BlockMesh::Vertices
      IL_0573:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Array()
      IL_0578:  ldloc.s    V_23
      IL_057a:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.BlockMesh::Indices
      IL_057f:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
      IL_0584:  ldloc.s    V_35
      IL_0586:  ldc.i4.3
      IL_0587:  mul
      IL_0588:  ldc.i4.2
      IL_0589:  add
      IL_058a:  ldelem.u2
      IL_058b:  ldelem     Game.BlockMeshVertex
      IL_0590:  ldloc.s    V_36
      IL_0592:  ldfld      valuetype [Engine]Engine.Vector3 Game.BlockMeshVertex::Position
      IL_0597:  ldloc.s    V_32
      IL_0599:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_059e:  ldloc.s    V_34
      IL_05a0:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_05a5:  stloc.s    V_38
      IL_05a7:  ldloc.s    V_37
      IL_05a9:  ldfld      valuetype [Engine]Engine.Vector3 Game.BlockMeshVertex::Position
      IL_05ae:  ldloc.s    V_32
      IL_05b0:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_05b5:  ldloc.s    V_34
      IL_05b7:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_05bc:  stloc.s    V_39
      IL_05be:  dup
      IL_05bf:  ldfld      valuetype [Engine]Engine.Vector3 Game.BlockMeshVertex::Position
      IL_05c4:  ldloc.s    V_32
      IL_05c6:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_05cb:  ldloc.s    V_34
      IL_05cd:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_05d2:  stloc.s    V_40
      IL_05d4:  ldloc.s    V_36
      IL_05d6:  ldfld      valuetype [Engine]Engine.Vector2 Game.BlockMeshVertex::TextureCoordinates
      IL_05db:  stloc.s    V_41
      IL_05dd:  ldloc.s    V_37
      IL_05df:  ldfld      valuetype [Engine]Engine.Vector2 Game.BlockMeshVertex::TextureCoordinates
      IL_05e4:  stloc.s    V_42
      IL_05e6:  ldfld      valuetype [Engine]Engine.Vector2 Game.BlockMeshVertex::TextureCoordinates
      IL_05eb:  stloc.s    V_43
      IL_05ed:  ldloca.s   V_41
      IL_05ef:  ldloc.s    V_27
      IL_05f1:  ldloc.s    V_28
      IL_05f3:  ldloc.s    V_41
      IL_05f5:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_05fa:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                  float32,
                                                                  float32)
      IL_05ff:  stfld      float32 [Engine]Engine.Vector2::X
      IL_0604:  ldloca.s   V_42
      IL_0606:  ldloc.s    V_27
      IL_0608:  ldloc.s    V_28
      IL_060a:  ldloc.s    V_42
      IL_060c:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_0611:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                  float32,
                                                                  float32)
      IL_0616:  stfld      float32 [Engine]Engine.Vector2::X
      IL_061b:  ldloca.s   V_43
      IL_061d:  ldloc.s    V_27
      IL_061f:  ldloc.s    V_28
      IL_0621:  ldloc.s    V_43
      IL_0623:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_0628:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                  float32,
                                                                  float32)
      IL_062d:  stfld      float32 [Engine]Engine.Vector2::X
      IL_0632:  ldloca.s   V_41
      IL_0634:  ldloc.s    V_29
      IL_0636:  ldloc.s    V_30
      IL_0638:  ldloc.s    V_41
      IL_063a:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_063f:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                  float32,
                                                                  float32)
      IL_0644:  stfld      float32 [Engine]Engine.Vector2::Y
      IL_0649:  ldloca.s   V_42
      IL_064b:  ldloc.s    V_29
      IL_064d:  ldloc.s    V_30
      IL_064f:  ldloc.s    V_42
      IL_0651:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_0656:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                  float32,
                                                                  float32)
      IL_065b:  stfld      float32 [Engine]Engine.Vector2::Y
      IL_0660:  ldloca.s   V_43
      IL_0662:  ldloc.s    V_29
      IL_0664:  ldloc.s    V_30
      IL_0666:  ldloc.s    V_43
      IL_0668:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_066d:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                  float32,
                                                                  float32)
      IL_0672:  stfld      float32 [Engine]Engine.Vector2::Y
      IL_0677:  ldloc.s    V_17
      IL_0679:  ldloc.s    V_38
      IL_067b:  ldloc.s    V_39
      IL_067d:  ldloc.s    V_40
      IL_067f:  ldloc.s    V_41
      IL_0681:  ldloc.s    V_42
      IL_0683:  ldloc.s    V_43
      IL_0685:  ldloc.s    V_26
      IL_0687:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch3D::QueueTriangle(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector2,
                                                                                                valuetype [Engine]Engine.Vector2,
                                                                                                valuetype [Engine]Engine.Vector2,
                                                                                                valuetype [Engine]Engine.Color)
      IL_068c:  ldloc.s    V_35
      IL_068e:  ldc.i4.1
      IL_068f:  add
      IL_0690:  stloc.s    V_35
      IL_0692:  ldloc.s    V_35
      IL_0694:  ldloc.s    V_23
      IL_0696:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.BlockMesh::Indices
      IL_069b:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
      IL_06a0:  ldc.i4.3
      IL_06a1:  div
      IL_06a2:  blt        IL_0522

      IL_06a7:  ldloca.s   V_5
      IL_06a9:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemSignBlockBehavior/TextData>::MoveNext()
      IL_06ae:  brtrue     IL_036b

      IL_06b3:  leave.s    IL_06c3

    }  // end .try
    finally
    {
      IL_06b5:  ldloca.s   V_5
      IL_06b7:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemSignBlockBehavior/TextData>
      IL_06bd:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_06c2:  endfinally
    }  // end handler
    IL_06c3:  ldarg.0
    IL_06c4:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.SubsystemSignBlockBehavior::m_primitivesRenderer3D
    IL_06c9:  ldarg.1
    IL_06ca:  callvirt   instance valuetype [Engine]Engine.Matrix Game.SubsystemDrawing::get_ViewProjectionMatrix()
    IL_06cf:  ldc.i4.1
    IL_06d0:  callvirt   instance void class [Engine]Engine.Graphics.BasePrimitivesRenderer`3<class [Engine]Engine.Graphics.FlatBatch3D,class [Engine]Engine.Graphics.TexturedBatch3D,class [Engine]Engine.Graphics.FontBatch3D>::Flush(valuetype [Engine]Engine.Matrix,
                                                                                                                                                                                                                                        bool)
    IL_06d5:  ret
  } // end of method SubsystemSignBlockBehavior::Draw

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       374 (0x176)
    .maxstack  7
    .locals init (class [System.Runtime]System.Collections.Generic.IEnumerator`1<object> V_0,
             valuetype [Engine]Engine.Point3 V_1,
             string V_2,
             string V_3,
             string V_4,
             string V_5,
             valuetype [Engine]Engine.Color V_6,
             valuetype [Engine]Engine.Color V_7,
             valuetype [Engine]Engine.Color V_8,
             valuetype [Engine]Engine.Color V_9,
             string V_10)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void Game.SubsystemBlockBehavior::Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary)
    IL_0007:  ldarg.0
    IL_0008:  ldarg.0
    IL_0009:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_000e:  ldc.i4.1
    IL_000f:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_0014:  stfld      class Game.SubsystemTerrain Game.SubsystemSignBlockBehavior::m_subsystemTerrain
    IL_0019:  ldarg.0
    IL_001a:  ldarg.0
    IL_001b:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0020:  ldc.i4.1
    IL_0021:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGameInfo>(bool)
    IL_0026:  stfld      class Game.SubsystemGameInfo Game.SubsystemSignBlockBehavior::m_subsystemGameInfo
    IL_002b:  ldarg.1
    IL_002c:  ldstr      "Texts"
    IL_0031:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<class [EntitySystem]TemplatesDatabase.ValuesDictionary>(string)
    IL_0036:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<object> [EntitySystem]TemplatesDatabase.ValuesDictionary::get_Values()
    IL_003b:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<object>::GetEnumerator()
    IL_0040:  stloc.0
    .try
    {
      IL_0041:  br         IL_0147

      IL_0046:  ldloc.0
      IL_0047:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<object>::get_Current()
      IL_004c:  castclass  [EntitySystem]TemplatesDatabase.ValuesDictionary
      IL_0051:  dup
      IL_0052:  ldstr      "Point"
      IL_0057:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<valuetype [Engine]Engine.Point3>(string)
      IL_005c:  stloc.1
      IL_005d:  dup
      IL_005e:  ldstr      "Line1"
      IL_0063:  ldsfld     string [System.Runtime]System.String::Empty
      IL_0068:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string,
                                                                                                           !!0)
      IL_006d:  stloc.2
      IL_006e:  dup
      IL_006f:  ldstr      "Line2"
      IL_0074:  ldsfld     string [System.Runtime]System.String::Empty
      IL_0079:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string,
                                                                                                           !!0)
      IL_007e:  stloc.3
      IL_007f:  dup
      IL_0080:  ldstr      "Line3"
      IL_0085:  ldsfld     string [System.Runtime]System.String::Empty
      IL_008a:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string,
                                                                                                           !!0)
      IL_008f:  stloc.s    V_4
      IL_0091:  dup
      IL_0092:  ldstr      "Line4"
      IL_0097:  ldsfld     string [System.Runtime]System.String::Empty
      IL_009c:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string,
                                                                                                           !!0)
      IL_00a1:  stloc.s    V_5
      IL_00a3:  dup
      IL_00a4:  ldstr      "Color1"
      IL_00a9:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Black
      IL_00ae:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<valuetype [Engine]Engine.Color>(string,
                                                                                                                                   !!0)
      IL_00b3:  stloc.s    V_6
      IL_00b5:  dup
      IL_00b6:  ldstr      "Color2"
      IL_00bb:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Black
      IL_00c0:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<valuetype [Engine]Engine.Color>(string,
                                                                                                                                   !!0)
      IL_00c5:  stloc.s    V_7
      IL_00c7:  dup
      IL_00c8:  ldstr      "Color3"
      IL_00cd:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Black
      IL_00d2:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<valuetype [Engine]Engine.Color>(string,
                                                                                                                                   !!0)
      IL_00d7:  stloc.s    V_8
      IL_00d9:  dup
      IL_00da:  ldstr      "Color4"
      IL_00df:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Black
      IL_00e4:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<valuetype [Engine]Engine.Color>(string,
                                                                                                                                   !!0)
      IL_00e9:  stloc.s    V_9
      IL_00eb:  ldstr      "Url"
      IL_00f0:  ldsfld     string [System.Runtime]System.String::Empty
      IL_00f5:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string,
                                                                                                           !!0)
      IL_00fa:  stloc.s    V_10
      IL_00fc:  ldarg.0
      IL_00fd:  ldloc.1
      IL_00fe:  ldc.i4.4
      IL_00ff:  newarr     [System.Runtime]System.String
      IL_0104:  dup
      IL_0105:  ldc.i4.0
      IL_0106:  ldloc.2
      IL_0107:  stelem.ref
      IL_0108:  dup
      IL_0109:  ldc.i4.1
      IL_010a:  ldloc.3
      IL_010b:  stelem.ref
      IL_010c:  dup
      IL_010d:  ldc.i4.2
      IL_010e:  ldloc.s    V_4
      IL_0110:  stelem.ref
      IL_0111:  dup
      IL_0112:  ldc.i4.3
      IL_0113:  ldloc.s    V_5
      IL_0115:  stelem.ref
      IL_0116:  ldc.i4.4
      IL_0117:  newarr     [Engine]Engine.Color
      IL_011c:  dup
      IL_011d:  ldc.i4.0
      IL_011e:  ldloc.s    V_6
      IL_0120:  stelem     [Engine]Engine.Color
      IL_0125:  dup
      IL_0126:  ldc.i4.1
      IL_0127:  ldloc.s    V_7
      IL_0129:  stelem     [Engine]Engine.Color
      IL_012e:  dup
      IL_012f:  ldc.i4.2
      IL_0130:  ldloc.s    V_8
      IL_0132:  stelem     [Engine]Engine.Color
      IL_0137:  dup
      IL_0138:  ldc.i4.3
      IL_0139:  ldloc.s    V_9
      IL_013b:  stelem     [Engine]Engine.Color
      IL_0140:  ldloc.s    V_10
      IL_0142:  call       instance void Game.SubsystemSignBlockBehavior::SetSignData(valuetype [Engine]Engine.Point3,
                                                                                      string[],
                                                                                      valuetype [Engine]Engine.Color[],
                                                                                      string)
      IL_0147:  ldloc.0
      IL_0148:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_014d:  brtrue     IL_0046

      IL_0152:  leave.s    IL_015e

    }  // end .try
    finally
    {
      IL_0154:  ldloc.0
      IL_0155:  brfalse.s  IL_015d

      IL_0157:  ldloc.0
      IL_0158:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_015d:  endfinally
    }  // end handler
    IL_015e:  ldarg.0
    IL_015f:  call       instance void Game.SubsystemSignBlockBehavior::CreateRenderTarget()
    IL_0164:  ldarg.0
    IL_0165:  ldftn      instance void Game.SubsystemSignBlockBehavior::Display_DeviceReset()
    IL_016b:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0170:  call       void [Engine]Engine.Graphics.Display::add_DeviceReset(class [System.Runtime]System.Action)
    IL_0175:  ret
  } // end of method SubsystemSignBlockBehavior::Load

  .method family hidebysig virtual instance void 
          Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       497 (0x1f1)
    .maxstack  4
    .locals init (int32 V_0,
             class [EntitySystem]TemplatesDatabase.ValuesDictionary V_1,
             valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<valuetype [Engine]Engine.Point3,class Game.SubsystemSignBlockBehavior/TextData> V_2,
             class Game.SubsystemSignBlockBehavior/TextData V_3,
             class [EntitySystem]TemplatesDatabase.ValuesDictionary V_4,
             int32 V_5)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void [EntitySystem]GameEntitySystem.Subsystem::Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary)
    IL_0007:  ldc.i4.0
    IL_0008:  stloc.0
    IL_0009:  newobj     instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::.ctor()
    IL_000e:  stloc.1
    IL_000f:  ldarg.1
    IL_0010:  ldstr      "Texts"
    IL_0015:  ldloc.1
    IL_0016:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<class [EntitySystem]TemplatesDatabase.ValuesDictionary>(string,
                                                                                                                                                          !!0)
    IL_001b:  ldarg.0
    IL_001c:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemSignBlockBehavior/TextData> Game.SubsystemSignBlockBehavior::m_textsByPoint
    IL_0021:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemSignBlockBehavior/TextData>::get_Values()
    IL_0026:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection<valuetype [Engine]Engine.Point3,class Game.SubsystemSignBlockBehavior/TextData>::GetEnumerator()
    IL_002b:  stloc.2
    .try
    {
      IL_002c:  br         IL_01d4

      IL_0031:  ldloca.s   V_2
      IL_0033:  call       instance !1 valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<valuetype [Engine]Engine.Point3,class Game.SubsystemSignBlockBehavior/TextData>::get_Current()
      IL_0038:  stloc.3
      IL_0039:  newobj     instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::.ctor()
      IL_003e:  stloc.s    V_4
      IL_0040:  ldloc.s    V_4
      IL_0042:  ldstr      "Point"
      IL_0047:  ldloc.3
      IL_0048:  ldfld      valuetype [Engine]Engine.Point3 Game.SubsystemSignBlockBehavior/TextData::Point
      IL_004d:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<valuetype [Engine]Engine.Point3>(string,
                                                                                                                                     !!0)
      IL_0052:  ldloc.3
      IL_0053:  ldfld      string[] Game.SubsystemSignBlockBehavior/TextData::Lines
      IL_0058:  ldc.i4.0
      IL_0059:  ldelem.ref
      IL_005a:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
      IL_005f:  brtrue.s   IL_0075

      IL_0061:  ldloc.s    V_4
      IL_0063:  ldstr      "Line1"
      IL_0068:  ldloc.3
      IL_0069:  ldfld      string[] Game.SubsystemSignBlockBehavior/TextData::Lines
      IL_006e:  ldc.i4.0
      IL_006f:  ldelem.ref
      IL_0070:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<string>(string,
                                                                                                            !!0)
      IL_0075:  ldloc.3
      IL_0076:  ldfld      string[] Game.SubsystemSignBlockBehavior/TextData::Lines
      IL_007b:  ldc.i4.1
      IL_007c:  ldelem.ref
      IL_007d:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
      IL_0082:  brtrue.s   IL_0098

      IL_0084:  ldloc.s    V_4
      IL_0086:  ldstr      "Line2"
      IL_008b:  ldloc.3
      IL_008c:  ldfld      string[] Game.SubsystemSignBlockBehavior/TextData::Lines
      IL_0091:  ldc.i4.1
      IL_0092:  ldelem.ref
      IL_0093:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<string>(string,
                                                                                                            !!0)
      IL_0098:  ldloc.3
      IL_0099:  ldfld      string[] Game.SubsystemSignBlockBehavior/TextData::Lines
      IL_009e:  ldc.i4.2
      IL_009f:  ldelem.ref
      IL_00a0:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
      IL_00a5:  brtrue.s   IL_00bb

      IL_00a7:  ldloc.s    V_4
      IL_00a9:  ldstr      "Line3"
      IL_00ae:  ldloc.3
      IL_00af:  ldfld      string[] Game.SubsystemSignBlockBehavior/TextData::Lines
      IL_00b4:  ldc.i4.2
      IL_00b5:  ldelem.ref
      IL_00b6:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<string>(string,
                                                                                                            !!0)
      IL_00bb:  ldloc.3
      IL_00bc:  ldfld      string[] Game.SubsystemSignBlockBehavior/TextData::Lines
      IL_00c1:  ldc.i4.3
      IL_00c2:  ldelem.ref
      IL_00c3:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
      IL_00c8:  brtrue.s   IL_00de

      IL_00ca:  ldloc.s    V_4
      IL_00cc:  ldstr      "Line4"
      IL_00d1:  ldloc.3
      IL_00d2:  ldfld      string[] Game.SubsystemSignBlockBehavior/TextData::Lines
      IL_00d7:  ldc.i4.3
      IL_00d8:  ldelem.ref
      IL_00d9:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<string>(string,
                                                                                                            !!0)
      IL_00de:  ldloc.3
      IL_00df:  ldfld      valuetype [Engine]Engine.Color[] Game.SubsystemSignBlockBehavior/TextData::Colors
      IL_00e4:  ldc.i4.0
      IL_00e5:  ldelem     [Engine]Engine.Color
      IL_00ea:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Black
      IL_00ef:  call       bool [Engine]Engine.Color::op_Inequality(valuetype [Engine]Engine.Color,
                                                                    valuetype [Engine]Engine.Color)
      IL_00f4:  brfalse.s  IL_010e

      IL_00f6:  ldloc.s    V_4
      IL_00f8:  ldstr      "Color1"
      IL_00fd:  ldloc.3
      IL_00fe:  ldfld      valuetype [Engine]Engine.Color[] Game.SubsystemSignBlockBehavior/TextData::Colors
      IL_0103:  ldc.i4.0
      IL_0104:  ldelem     [Engine]Engine.Color
      IL_0109:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<valuetype [Engine]Engine.Color>(string,
                                                                                                                                    !!0)
      IL_010e:  ldloc.3
      IL_010f:  ldfld      valuetype [Engine]Engine.Color[] Game.SubsystemSignBlockBehavior/TextData::Colors
      IL_0114:  ldc.i4.1
      IL_0115:  ldelem     [Engine]Engine.Color
      IL_011a:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Black
      IL_011f:  call       bool [Engine]Engine.Color::op_Inequality(valuetype [Engine]Engine.Color,
                                                                    valuetype [Engine]Engine.Color)
      IL_0124:  brfalse.s  IL_013e

      IL_0126:  ldloc.s    V_4
      IL_0128:  ldstr      "Color2"
      IL_012d:  ldloc.3
      IL_012e:  ldfld      valuetype [Engine]Engine.Color[] Game.SubsystemSignBlockBehavior/TextData::Colors
      IL_0133:  ldc.i4.1
      IL_0134:  ldelem     [Engine]Engine.Color
      IL_0139:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<valuetype [Engine]Engine.Color>(string,
                                                                                                                                    !!0)
      IL_013e:  ldloc.3
      IL_013f:  ldfld      valuetype [Engine]Engine.Color[] Game.SubsystemSignBlockBehavior/TextData::Colors
      IL_0144:  ldc.i4.2
      IL_0145:  ldelem     [Engine]Engine.Color
      IL_014a:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Black
      IL_014f:  call       bool [Engine]Engine.Color::op_Inequality(valuetype [Engine]Engine.Color,
                                                                    valuetype [Engine]Engine.Color)
      IL_0154:  brfalse.s  IL_016e

      IL_0156:  ldloc.s    V_4
      IL_0158:  ldstr      "Color3"
      IL_015d:  ldloc.3
      IL_015e:  ldfld      valuetype [Engine]Engine.Color[] Game.SubsystemSignBlockBehavior/TextData::Colors
      IL_0163:  ldc.i4.2
      IL_0164:  ldelem     [Engine]Engine.Color
      IL_0169:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<valuetype [Engine]Engine.Color>(string,
                                                                                                                                    !!0)
      IL_016e:  ldloc.3
      IL_016f:  ldfld      valuetype [Engine]Engine.Color[] Game.SubsystemSignBlockBehavior/TextData::Colors
      IL_0174:  ldc.i4.3
      IL_0175:  ldelem     [Engine]Engine.Color
      IL_017a:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Black
      IL_017f:  call       bool [Engine]Engine.Color::op_Inequality(valuetype [Engine]Engine.Color,
                                                                    valuetype [Engine]Engine.Color)
      IL_0184:  brfalse.s  IL_019e

      IL_0186:  ldloc.s    V_4
      IL_0188:  ldstr      "Color4"
      IL_018d:  ldloc.3
      IL_018e:  ldfld      valuetype [Engine]Engine.Color[] Game.SubsystemSignBlockBehavior/TextData::Colors
      IL_0193:  ldc.i4.3
      IL_0194:  ldelem     [Engine]Engine.Color
      IL_0199:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<valuetype [Engine]Engine.Color>(string,
                                                                                                                                    !!0)
      IL_019e:  ldloc.3
      IL_019f:  ldfld      string Game.SubsystemSignBlockBehavior/TextData::Url
      IL_01a4:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
      IL_01a9:  brtrue.s   IL_01bd

      IL_01ab:  ldloc.s    V_4
      IL_01ad:  ldstr      "Url"
      IL_01b2:  ldloc.3
      IL_01b3:  ldfld      string Game.SubsystemSignBlockBehavior/TextData::Url
      IL_01b8:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<string>(string,
                                                                                                            !!0)
      IL_01bd:  ldloc.1
      IL_01be:  ldloc.0
      IL_01bf:  stloc.s    V_5
      IL_01c1:  ldloc.s    V_5
      IL_01c3:  ldc.i4.1
      IL_01c4:  add
      IL_01c5:  stloc.0
      IL_01c6:  ldloca.s   V_5
      IL_01c8:  call       instance string [System.Runtime]System.Int32::ToString()
      IL_01cd:  ldloc.s    V_4
      IL_01cf:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<class [EntitySystem]TemplatesDatabase.ValuesDictionary>(string,
                                                                                                                                                            !!0)
      IL_01d4:  ldloca.s   V_2
      IL_01d6:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<valuetype [Engine]Engine.Point3,class Game.SubsystemSignBlockBehavior/TextData>::MoveNext()
      IL_01db:  brtrue     IL_0031

      IL_01e0:  leave.s    IL_01f0

    }  // end .try
    finally
    {
      IL_01e2:  ldloca.s   V_2
      IL_01e4:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<valuetype [Engine]Engine.Point3,class Game.SubsystemSignBlockBehavior/TextData>
      IL_01ea:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_01ef:  endfinally
    }  // end handler
    IL_01f0:  ret
  } // end of method SubsystemSignBlockBehavior::Save

  .method public hidebysig virtual instance void 
          Dispose() cil managed
  {
    // 代码大小       35 (0x23)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [EntitySystem]GameEntitySystem.Subsystem::Dispose()
    IL_0006:  ldarg.0
    IL_0007:  ldflda     class [Engine]Engine.Graphics.RenderTarget2D Game.SubsystemSignBlockBehavior::m_renderTarget
    IL_000c:  call       void [Engine]Engine.Utilities::Dispose<class [Engine]Engine.Graphics.RenderTarget2D>(!!0&)
    IL_0011:  ldarg.0
    IL_0012:  ldftn      instance void Game.SubsystemSignBlockBehavior::Display_DeviceReset()
    IL_0018:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_001d:  call       void [Engine]Engine.Graphics.Display::remove_DeviceReset(class [System.Runtime]System.Action)
    IL_0022:  ret
  } // end of method SubsystemSignBlockBehavior::Dispose

  .method private hidebysig instance void 
          Display_DeviceReset() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.SubsystemSignBlockBehavior::InvalidateRenderTarget()
    IL_0006:  ret
  } // end of method SubsystemSignBlockBehavior::Display_DeviceReset

  .method private hidebysig instance void 
          CreateRenderTarget() cil managed
  {
    // 代码大小       24 (0x18)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4     0x80
    IL_0006:  ldc.i4     0x400
    IL_000b:  ldc.i4.0
    IL_000c:  ldc.i4.0
    IL_000d:  newobj     instance void [Engine]Engine.Graphics.RenderTarget2D::.ctor(int32,
                                                                                     int32,
                                                                                     valuetype [Engine]Engine.Graphics.ColorFormat,
                                                                                     valuetype [Engine]Engine.Graphics.DepthFormat)
    IL_0012:  stfld      class [Engine]Engine.Graphics.RenderTarget2D Game.SubsystemSignBlockBehavior::m_renderTarget
    IL_0017:  ret
  } // end of method SubsystemSignBlockBehavior::CreateRenderTarget

  .method private hidebysig instance void 
          InvalidateRenderTarget() cil managed
  {
    // 代码大小       103 (0x67)
    .maxstack  3
    .locals init (int32 V_0,
             valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<valuetype [Engine]Engine.Point3,class Game.SubsystemSignBlockBehavior/TextData> V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.SubsystemSignBlockBehavior::m_lastUpdatePosition
    IL_0006:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>
    IL_000c:  ldc.i4.0
    IL_000d:  stloc.0
    IL_000e:  br.s       IL_001d

    IL_0010:  ldarg.0
    IL_0011:  ldfld      class Game.SubsystemSignBlockBehavior/TextData[] Game.SubsystemSignBlockBehavior::m_textureLocations
    IL_0016:  ldloc.0
    IL_0017:  ldnull
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.1
    IL_001b:  add
    IL_001c:  stloc.0
    IL_001d:  ldloc.0
    IL_001e:  ldarg.0
    IL_001f:  ldfld      class Game.SubsystemSignBlockBehavior/TextData[] Game.SubsystemSignBlockBehavior::m_textureLocations
    IL_0024:  ldlen
    IL_0025:  conv.i4
    IL_0026:  blt.s      IL_0010

    IL_0028:  ldarg.0
    IL_0029:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemSignBlockBehavior/TextData> Game.SubsystemSignBlockBehavior::m_textsByPoint
    IL_002e:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemSignBlockBehavior/TextData>::get_Values()
    IL_0033:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection<valuetype [Engine]Engine.Point3,class Game.SubsystemSignBlockBehavior/TextData>::GetEnumerator()
    IL_0038:  stloc.1
    .try
    {
      IL_0039:  br.s       IL_004d

      IL_003b:  ldloca.s   V_1
      IL_003d:  call       instance !1 valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<valuetype [Engine]Engine.Point3,class Game.SubsystemSignBlockBehavior/TextData>::get_Current()
      IL_0042:  ldflda     valuetype [System.Runtime]System.Nullable`1<int32> Game.SubsystemSignBlockBehavior/TextData::TextureLocation
      IL_0047:  initobj    valuetype [System.Runtime]System.Nullable`1<int32>
      IL_004d:  ldloca.s   V_1
      IL_004f:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<valuetype [Engine]Engine.Point3,class Game.SubsystemSignBlockBehavior/TextData>::MoveNext()
      IL_0054:  brtrue.s   IL_003b

      IL_0056:  leave.s    IL_0066

    }  // end .try
    finally
    {
      IL_0058:  ldloca.s   V_1
      IL_005a:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<valuetype [Engine]Engine.Point3,class Game.SubsystemSignBlockBehavior/TextData>
      IL_0060:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0065:  endfinally
    }  // end handler
    IL_0066:  ret
  } // end of method SubsystemSignBlockBehavior::InvalidateRenderTarget

  .method private hidebysig instance void 
          RenderText(class [Engine]Engine.Graphics.FontBatch2D fontBatch,
                     class [Engine]Engine.Graphics.FlatBatch2D flatBatch,
                     class Game.SubsystemSignBlockBehavior/TextData textData) cil managed
  {
    // 代码大小       479 (0x1df)
    .maxstack  7
    .locals init (class [System.Collections]System.Collections.Generic.List`1<string> V_0,
             class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Color> V_1,
             int32 V_2,
             float32 V_3,
             float32 V_4,
             float32 V_5,
             float32 V_6,
             float32 V_7,
             bool V_8,
             int32 V_9,
             valuetype [Engine]Engine.Vector2 V_10)
    IL_0000:  ldarg.3
    IL_0001:  ldflda     valuetype [System.Runtime]System.Nullable`1<int32> Game.SubsystemSignBlockBehavior/TextData::TextureLocation
    IL_0006:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_000b:  brfalse    IL_01de

    IL_0010:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<string>::.ctor()
    IL_0015:  stloc.0
    IL_0016:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Color>::.ctor()
    IL_001b:  stloc.1
    IL_001c:  ldc.i4.0
    IL_001d:  stloc.2
    IL_001e:  br.s       IL_0067

    IL_0020:  ldarg.3
    IL_0021:  ldfld      string[] Game.SubsystemSignBlockBehavior/TextData::Lines
    IL_0026:  ldloc.2
    IL_0027:  ldelem.ref
    IL_0028:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_002d:  brtrue.s   IL_0063

    IL_002f:  ldloc.0
    IL_0030:  ldarg.3
    IL_0031:  ldfld      string[] Game.SubsystemSignBlockBehavior/TextData::Lines
    IL_0036:  ldloc.2
    IL_0037:  ldelem.ref
    IL_0038:  ldstr      "\\"
    IL_003d:  ldstr      ""
    IL_0042:  callvirt   instance string [System.Runtime]System.String::Replace(string,
                                                                                string)
    IL_0047:  callvirt   instance string [System.Runtime]System.String::ToUpper()
    IL_004c:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<string>::Add(!0)
    IL_0051:  ldloc.1
    IL_0052:  ldarg.3
    IL_0053:  ldfld      valuetype [Engine]Engine.Color[] Game.SubsystemSignBlockBehavior/TextData::Colors
    IL_0058:  ldloc.2
    IL_0059:  ldelem     [Engine]Engine.Color
    IL_005e:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Color>::Add(!0)
    IL_0063:  ldloc.2
    IL_0064:  ldc.i4.1
    IL_0065:  add
    IL_0066:  stloc.2
    IL_0067:  ldloc.2
    IL_0068:  ldarg.3
    IL_0069:  ldfld      string[] Game.SubsystemSignBlockBehavior/TextData::Lines
    IL_006e:  ldlen
    IL_006f:  conv.i4
    IL_0070:  blt.s      IL_0020

    IL_0072:  ldloc.0
    IL_0073:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<string>::get_Count()
    IL_0078:  ldc.i4.0
    IL_0079:  ble        IL_01de

    IL_007e:  ldloc.0
    IL_007f:  ldsfld     class [System.Runtime]System.Func`2<string,int32> Game.SubsystemSignBlockBehavior/'<>c'::'<>9__35_0'
    IL_0084:  dup
    IL_0085:  brtrue.s   IL_009e

    IL_0087:  pop
    IL_0088:  ldsfld     class Game.SubsystemSignBlockBehavior/'<>c' Game.SubsystemSignBlockBehavior/'<>c'::'<>9'
    IL_008d:  ldftn      instance int32 Game.SubsystemSignBlockBehavior/'<>c'::'<RenderText>b__35_0'(string)
    IL_0093:  newobj     instance void class [System.Runtime]System.Func`2<string,int32>::.ctor(object,
                                                                                                native int)
    IL_0098:  dup
    IL_0099:  stsfld     class [System.Runtime]System.Func`2<string,int32> Game.SubsystemSignBlockBehavior/'<>c'::'<>9__35_0'
    IL_009e:  call       int32 [System.Linq]System.Linq.Enumerable::Max<string>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                class [System.Runtime]System.Func`2<!!0,int32>)
    IL_00a3:  ldc.i4.8
    IL_00a4:  mul
    IL_00a5:  conv.r4
    IL_00a6:  stloc.3
    IL_00a7:  ldloc.0
    IL_00a8:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<string>::get_Count()
    IL_00ad:  ldc.i4.8
    IL_00ae:  mul
    IL_00af:  conv.r4
    IL_00b0:  stloc.s    V_4
    IL_00b2:  ldc.r4     4.
    IL_00b7:  stloc.s    V_5
    IL_00b9:  ldloc.3
    IL_00ba:  ldloc.s    V_4
    IL_00bc:  div
    IL_00bd:  ldloc.s    V_5
    IL_00bf:  bge.un.s   IL_00ce

    IL_00c1:  ldloc.s    V_4
    IL_00c3:  ldloc.s    V_5
    IL_00c5:  mul
    IL_00c6:  stloc.s    V_6
    IL_00c8:  ldloc.s    V_4
    IL_00ca:  stloc.s    V_7
    IL_00cc:  br.s       IL_00d7

    IL_00ce:  ldloc.3
    IL_00cf:  stloc.s    V_6
    IL_00d1:  ldloc.3
    IL_00d2:  ldloc.s    V_5
    IL_00d4:  div
    IL_00d5:  stloc.s    V_7
    IL_00d7:  ldarg.3
    IL_00d8:  ldfld      string Game.SubsystemSignBlockBehavior/TextData::Url
    IL_00dd:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_00e2:  ldc.i4.0
    IL_00e3:  ceq
    IL_00e5:  stloc.s    V_8
    IL_00e7:  ldc.i4.0
    IL_00e8:  stloc.s    V_9
    IL_00ea:  br         IL_01c1

    IL_00ef:  ldloca.s   V_10
    IL_00f1:  ldloc.s    V_6
    IL_00f3:  ldc.r4     2.
    IL_00f8:  div
    IL_00f9:  ldloc.s    V_9
    IL_00fb:  ldc.i4.8
    IL_00fc:  mul
    IL_00fd:  ldarg.3
    IL_00fe:  ldflda     valuetype [System.Runtime]System.Nullable`1<int32> Game.SubsystemSignBlockBehavior/TextData::TextureLocation
    IL_0103:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
    IL_0108:  ldc.i4.s   32
    IL_010a:  mul
    IL_010b:  add
    IL_010c:  conv.r4
    IL_010d:  ldloc.s    V_7
    IL_010f:  ldloc.s    V_4
    IL_0111:  sub
    IL_0112:  ldc.r4     2.
    IL_0117:  div
    IL_0118:  add
    IL_0119:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_011e:  ldarg.1
    IL_011f:  ldloc.0
    IL_0120:  ldloc.s    V_9
    IL_0122:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<string>::get_Item(int32)
    IL_0127:  ldloc.s    V_10
    IL_0129:  ldc.r4     0.0
    IL_012e:  ldloc.s    V_8
    IL_0130:  brtrue.s   IL_013c

    IL_0132:  ldloc.1
    IL_0133:  ldloc.s    V_9
    IL_0135:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Color>::get_Item(int32)
    IL_013a:  br.s       IL_0145

    IL_013c:  ldc.i4.0
    IL_013d:  ldc.i4.0
    IL_013e:  ldc.i4.s   64
    IL_0140:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0145:  ldc.i4.1
    IL_0146:  callvirt   instance void [Engine]Engine.Graphics.FontBatch2D::QueueText(string,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      float32,
                                                                                      valuetype [Engine]Engine.Color,
                                                                                      valuetype [Engine]Engine.Graphics.TextAnchor)
    IL_014b:  ldloc.s    V_8
    IL_014d:  brfalse.s  IL_01bb

    IL_014f:  ldarg.2
    IL_0150:  ldloc.s    V_10
    IL_0152:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0157:  ldloc.0
    IL_0158:  ldloc.s    V_9
    IL_015a:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<string>::get_Item(int32)
    IL_015f:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_0164:  ldc.i4.8
    IL_0165:  mul
    IL_0166:  ldc.i4.2
    IL_0167:  div
    IL_0168:  conv.r4
    IL_0169:  sub
    IL_016a:  ldloc.s    V_10
    IL_016c:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0171:  ldc.r4     8.
    IL_0176:  add
    IL_0177:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_017c:  ldloc.s    V_10
    IL_017e:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0183:  ldloc.0
    IL_0184:  ldloc.s    V_9
    IL_0186:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<string>::get_Item(int32)
    IL_018b:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_0190:  ldc.i4.8
    IL_0191:  mul
    IL_0192:  ldc.i4.2
    IL_0193:  div
    IL_0194:  conv.r4
    IL_0195:  add
    IL_0196:  ldloc.s    V_10
    IL_0198:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_019d:  ldc.r4     8.
    IL_01a2:  add
    IL_01a3:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_01a8:  ldc.r4     0.0
    IL_01ad:  ldc.i4.0
    IL_01ae:  ldc.i4.0
    IL_01af:  ldc.i4.s   64
    IL_01b1:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_01b6:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueLine(valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      float32,
                                                                                      valuetype [Engine]Engine.Color)
    IL_01bb:  ldloc.s    V_9
    IL_01bd:  ldc.i4.1
    IL_01be:  add
    IL_01bf:  stloc.s    V_9
    IL_01c1:  ldloc.s    V_9
    IL_01c3:  ldloc.0
    IL_01c4:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<string>::get_Count()
    IL_01c9:  blt        IL_00ef

    IL_01ce:  ldarg.3
    IL_01cf:  ldloc.s    V_6
    IL_01d1:  stfld      float32 Game.SubsystemSignBlockBehavior/TextData::UsedTextureWidth
    IL_01d6:  ldarg.3
    IL_01d7:  ldloc.s    V_7
    IL_01d9:  stfld      float32 Game.SubsystemSignBlockBehavior/TextData::UsedTextureHeight
    IL_01de:  ret
  } // end of method SubsystemSignBlockBehavior::RenderText

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       80 (0x50)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemSignBlockBehavior/TextData>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemSignBlockBehavior/TextData> Game.SubsystemSignBlockBehavior::m_textsByPoint
    IL_000b:  ldarg.0
    IL_000c:  ldc.i4.s   32
    IL_000e:  newarr     Game.SubsystemSignBlockBehavior/TextData
    IL_0013:  stfld      class Game.SubsystemSignBlockBehavior/TextData[] Game.SubsystemSignBlockBehavior::m_textureLocations
    IL_0018:  ldarg.0
    IL_0019:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemSignBlockBehavior/TextData>::.ctor()
    IL_001e:  stfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemSignBlockBehavior/TextData> Game.SubsystemSignBlockBehavior::m_nearTexts
    IL_0023:  ldarg.0
    IL_0024:  ldstr      "Fonts/SignFont"
    IL_0029:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Media.BitmapFont>(string)
    IL_002e:  stfld      class [Engine]Engine.Media.BitmapFont Game.SubsystemSignBlockBehavior::m_font
    IL_0033:  ldarg.0
    IL_0034:  newobj     instance void [Engine]Engine.Graphics.PrimitivesRenderer2D::.ctor()
    IL_0039:  stfld      class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.SubsystemSignBlockBehavior::m_primitivesRenderer2D
    IL_003e:  ldarg.0
    IL_003f:  newobj     instance void [Engine]Engine.Graphics.PrimitivesRenderer3D::.ctor()
    IL_0044:  stfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.SubsystemSignBlockBehavior::m_primitivesRenderer3D
    IL_0049:  ldarg.0
    IL_004a:  call       instance void Game.SubsystemBlockBehavior::.ctor()
    IL_004f:  ret
  } // end of method SubsystemSignBlockBehavior::.ctor

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       25 (0x19)
    .maxstack  8
    IL_0000:  ldc.i4.2
    IL_0001:  newarr     [System.Runtime]System.Int32
    IL_0006:  dup
    IL_0007:  ldc.i4.0
    IL_0008:  ldc.i4     0xfffff82f
    IL_000d:  stelem.i4
    IL_000e:  dup
    IL_000f:  ldc.i4.1
    IL_0010:  ldc.i4.s   50
    IL_0012:  stelem.i4
    IL_0013:  stsfld     int32[] Game.SubsystemSignBlockBehavior::m_drawOrders
    IL_0018:  ret
  } // end of method SubsystemSignBlockBehavior::.cctor

  .property instance int32[] HandledBlocks()
  {
    .get instance int32[] Game.SubsystemSignBlockBehavior::get_HandledBlocks()
  } // end of property SubsystemSignBlockBehavior::HandledBlocks
  .property instance int32[] DrawOrders()
  {
    .get instance int32[] Game.SubsystemSignBlockBehavior::get_DrawOrders()
  } // end of property SubsystemSignBlockBehavior::DrawOrders
} // end of class Game.SubsystemSignBlockBehavior