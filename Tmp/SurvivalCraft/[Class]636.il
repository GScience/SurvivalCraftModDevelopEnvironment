.class public auto ansi beforefieldinit Game.SubsystemSignBlockBehavior
       extends Game.SubsystemBlockBehavior
       implements Game.IDrawable,
                  Game.IUpdateable
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
    .field public static class [System.Runtime]System.Func`2<string,int32> '<>9__39_0'
    .field public static class [System.Runtime]System.Func`2<class Game.View,valuetype [Engine]Engine.Vector3> '<>9__40_0'
    .field public static class [System.Runtime]System.Comparison`1<class Game.SubsystemSignBlockBehavior/TextData> '<>9__40_1'
    .field public static class [System.Runtime]System.Func`2<class Game.SubsystemSignBlockBehavior/TextData,bool> '<>9__40_2'
    .field public static class [System.Runtime]System.Func`2<class Game.SubsystemSignBlockBehavior/TextData,bool> '<>9__40_3'
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
            '<RenderText>b__39_0'(string l) cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
      IL_0006:  ret
    } // end of method '<>c'::'<RenderText>b__39_0'

    .method assembly hidebysig instance valuetype [Engine]Engine.Vector3 
            '<UpdateRenderTarget>b__40_0'(class Game.View v) cil managed
    {
      // 代码大小       12 (0xc)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  callvirt   instance class Game.Camera Game.View::get_ActiveCamera()
      IL_0006:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewPosition()
      IL_000b:  ret
    } // end of method '<>c'::'<UpdateRenderTarget>b__40_0'

    .method assembly hidebysig instance int32 
            '<UpdateRenderTarget>b__40_1'(class Game.SubsystemSignBlockBehavior/TextData d1,
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
    } // end of method '<>c'::'<UpdateRenderTarget>b__40_1'

    .method assembly hidebysig instance bool 
            '<UpdateRenderTarget>b__40_2'(class Game.SubsystemSignBlockBehavior/TextData d) cil managed
    {
      // 代码大小       5 (0x5)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldnull
      IL_0002:  ceq
      IL_0004:  ret
    } // end of method '<>c'::'<UpdateRenderTarget>b__40_2'

    .method assembly hidebysig instance bool 
            '<UpdateRenderTarget>b__40_3'(class Game.SubsystemSignBlockBehavior/TextData d) cil managed
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
    } // end of method '<>c'::'<UpdateRenderTarget>b__40_3'

  } // end of class '<>c'

  .field private static literal float32 m_maxVisibilityDistanceSqr = float32(400.)
  .field private static literal float32 m_minUpdateDistance = float32(2.)
  .field private static literal int32 m_textWidth = int32(0x00000080)
  .field private static literal int32 m_textHeight = int32(0x00000020)
  .field private static literal int32 m_maxTexts = int32(0x00000020)
  .field private class Game.SubsystemViews m_subsystemViews
  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.SubsystemGameInfo m_subsystemGameInfo
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemSignBlockBehavior/TextData> m_textsByPoint
  .field private class Game.SubsystemSignBlockBehavior/TextData[] m_textureLocations
  .field private class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemSignBlockBehavior/TextData> m_nearTexts
  .field private class [Engine]Engine.Media.BitmapFont m_font
  .field private class [Engine]Engine.Graphics.RenderTarget2D m_renderTarget
  .field private class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector3> m_lastUpdatePositions
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
    // 代码大小       88 (0x58)
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
    IL_004d:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector3> Game.SubsystemSignBlockBehavior::m_lastUpdatePositions
    IL_0052:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector3>::Clear()
    IL_0057:  ret
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
    // 代码大小       244 (0xf4)
    .maxstack  8
    .locals init (int32 V_0,
             int32 V_1,
             class Game.Block V_2,
             valuetype [Engine]Engine.Point3 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7,
             int32 V_8)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0006:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_000b:  ldarg.1
    IL_000c:  ldarg.2
    IL_000d:  ldarg.3
    IL_000e:  callvirt   instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_0013:  dup
    IL_0014:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0019:  stloc.0
    IL_001a:  call       int32 Game.Terrain::ExtractData(int32)
    IL_001f:  stloc.1
    IL_0020:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0025:  ldloc.0
    IL_0026:  ldelem.ref
    IL_0027:  stloc.2
    IL_0028:  ldloc.2
    IL_0029:  isinst     Game.AttachedSignBlock
    IL_002e:  brfalse.s  IL_0094

    IL_0030:  ldloc.1
    IL_0031:  call       int32 Game.AttachedSignBlock::GetFace(int32)
    IL_0036:  call       valuetype [Engine]Engine.Point3 Game.CellFace::FaceToPoint3(int32)
    IL_003b:  stloc.3
    IL_003c:  ldarg.1
    IL_003d:  ldloc.3
    IL_003e:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0043:  sub
    IL_0044:  stloc.s    V_4
    IL_0046:  ldarg.2
    IL_0047:  ldloc.3
    IL_0048:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_004d:  sub
    IL_004e:  stloc.s    V_5
    IL_0050:  ldarg.3
    IL_0051:  ldloc.3
    IL_0052:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0057:  sub
    IL_0058:  stloc.s    V_6
    IL_005a:  ldarg.0
    IL_005b:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0060:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0065:  ldloc.s    V_4
    IL_0067:  ldloc.s    V_5
    IL_0069:  ldloc.s    V_6
    IL_006b:  callvirt   instance int32 Game.Terrain::GetCellContents(int32,
                                                                      int32,
                                                                      int32)
    IL_0070:  stloc.s    V_7
    IL_0072:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0077:  ldloc.s    V_7
    IL_0079:  ldelem.ref
    IL_007a:  ldfld      bool Game.Block::IsCollidable
    IL_007f:  brtrue.s   IL_00f3

    IL_0081:  ldarg.0
    IL_0082:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0087:  ldc.i4.0
    IL_0088:  ldarg.1
    IL_0089:  ldarg.2
    IL_008a:  ldarg.3
    IL_008b:  ldc.i4.0
    IL_008c:  ldc.i4.0
    IL_008d:  ldc.i4.0
    IL_008e:  callvirt   instance void Game.SubsystemTerrain::DestroyCell(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          bool,
                                                                          bool)
    IL_0093:  ret

    IL_0094:  ldloc.2
    IL_0095:  isinst     Game.PostedSignBlock
    IL_009a:  brfalse.s  IL_00f3

    IL_009c:  ldloc.1
    IL_009d:  call       bool Game.PostedSignBlock::GetHanging(int32)
    IL_00a2:  brtrue.s   IL_00bb

    IL_00a4:  ldarg.0
    IL_00a5:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_00aa:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_00af:  ldarg.1
    IL_00b0:  ldarg.2
    IL_00b1:  ldc.i4.1
    IL_00b2:  sub
    IL_00b3:  ldarg.3
    IL_00b4:  callvirt   instance int32 Game.Terrain::GetCellContents(int32,
                                                                      int32,
                                                                      int32)
    IL_00b9:  br.s       IL_00d0

    IL_00bb:  ldarg.0
    IL_00bc:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_00c1:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_00c6:  ldarg.1
    IL_00c7:  ldarg.2
    IL_00c8:  ldc.i4.1
    IL_00c9:  add
    IL_00ca:  ldarg.3
    IL_00cb:  callvirt   instance int32 Game.Terrain::GetCellContents(int32,
                                                                      int32,
                                                                      int32)
    IL_00d0:  stloc.s    V_8
    IL_00d2:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_00d7:  ldloc.s    V_8
    IL_00d9:  ldelem.ref
    IL_00da:  ldfld      bool Game.Block::IsCollidable
    IL_00df:  brtrue.s   IL_00f3

    IL_00e1:  ldarg.0
    IL_00e2:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_00e7:  ldc.i4.0
    IL_00e8:  ldarg.1
    IL_00e9:  ldarg.2
    IL_00ea:  ldarg.3
    IL_00eb:  ldc.i4.0
    IL_00ec:  ldc.i4.0
    IL_00ed:  ldc.i4.0
    IL_00ee:  callvirt   instance void Game.SubsystemTerrain::DestroyCell(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          bool,
                                                                          bool)
    IL_00f3:  ret
  } // end of method SubsystemSignBlockBehavior::OnNeighborBlockChanged

  .method public hidebysig virtual instance bool 
          OnInteract(valuetype Game.TerrainRaycastResult raycastResult,
                     class Game.ComponentMiner componentMiner) cil managed
  {
    // 代码大小       159 (0x9f)
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
    IL_0047:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_004c:  ldfld      valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_0051:  ldc.i4.4
    IL_0052:  bne.un.s   IL_0079

    IL_0054:  ldarg.0
    IL_0055:  ldloc.0
    IL_0056:  call       instance class Game.SignData Game.SubsystemSignBlockBehavior::GetSignData(valuetype [Engine]Engine.Point3)
    IL_005b:  stloc.1
    IL_005c:  ldloc.1
    IL_005d:  brfalse.s  IL_009d

    IL_005f:  ldloc.1
    IL_0060:  ldfld      string Game.SignData::Url
    IL_0065:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_006a:  brtrue.s   IL_009d

    IL_006c:  ldloc.1
    IL_006d:  ldfld      string Game.SignData::Url
    IL_0072:  call       void Game.WebBrowserManager::LaunchBrowser(string)
    IL_0077:  br.s       IL_009d

    IL_0079:  ldarg.2
    IL_007a:  callvirt   instance class Game.ComponentPlayer Game.ComponentMiner::get_ComponentPlayer()
    IL_007f:  brfalse.s  IL_009d

    IL_0081:  ldarg.2
    IL_0082:  callvirt   instance class Game.ComponentPlayer Game.ComponentMiner::get_ComponentPlayer()
    IL_0087:  callvirt   instance class Game.View Game.ComponentPlayer::get_View()
    IL_008c:  callvirt   instance class Game.GameWidget Game.View::get_GameWidget()
    IL_0091:  ldarg.0
    IL_0092:  ldloc.0
    IL_0093:  newobj     instance void Game.EditSignDialog::.ctor(class Game.SubsystemSignBlockBehavior,
                                                                  valuetype [Engine]Engine.Point3)
    IL_0098:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_009d:  ldc.i4.1
    IL_009e:  ret
  } // end of method SubsystemSignBlockBehavior::OnInteract

  .method public hidebysig virtual instance void 
          OnBlockRemoved(int32 'value',
                         int32 newValue,
                         int32 x,
                         int32 y,
                         int32 z) cil managed
  {
    // 代码大小       37 (0x25)
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
    IL_001a:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector3> Game.SubsystemSignBlockBehavior::m_lastUpdatePositions
    IL_001f:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector3>::Clear()
    IL_0024:  ret
  } // end of method SubsystemSignBlockBehavior::OnBlockRemoved

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method SubsystemSignBlockBehavior::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.SubsystemSignBlockBehavior::UpdateRenderTarget()
    IL_0006:  ret
  } // end of method SubsystemSignBlockBehavior::Update

  .method public hidebysig newslot specialname virtual final 
          instance int32[]  get_DrawOrders() cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     int32[] Game.SubsystemSignBlockBehavior::m_drawOrders
    IL_0005:  ret
  } // end of method SubsystemSignBlockBehavior::get_DrawOrders

  .method public hidebysig newslot virtual final 
          instance void  Draw(class Game.Camera camera,
                              int32 drawOrder) cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void Game.SubsystemSignBlockBehavior::DrawSigns(class Game.Camera)
    IL_0007:  ret
  } // end of method SubsystemSignBlockBehavior::Draw

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       392 (0x188)
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
    IL_000f:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemViews>(bool)
    IL_0014:  stfld      class Game.SubsystemViews Game.SubsystemSignBlockBehavior::m_subsystemViews
    IL_0019:  ldarg.0
    IL_001a:  ldarg.0
    IL_001b:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0020:  ldc.i4.1
    IL_0021:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_0026:  stfld      class Game.SubsystemTerrain Game.SubsystemSignBlockBehavior::m_subsystemTerrain
    IL_002b:  ldarg.0
    IL_002c:  ldarg.0
    IL_002d:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0032:  ldc.i4.1
    IL_0033:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGameInfo>(bool)
    IL_0038:  stfld      class Game.SubsystemGameInfo Game.SubsystemSignBlockBehavior::m_subsystemGameInfo
    IL_003d:  ldarg.1
    IL_003e:  ldstr      "Texts"
    IL_0043:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<class [EntitySystem]TemplatesDatabase.ValuesDictionary>(string)
    IL_0048:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<object> [EntitySystem]TemplatesDatabase.ValuesDictionary::get_Values()
    IL_004d:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<object>::GetEnumerator()
    IL_0052:  stloc.0
    .try
    {
      IL_0053:  br         IL_0159

      IL_0058:  ldloc.0
      IL_0059:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<object>::get_Current()
      IL_005e:  castclass  [EntitySystem]TemplatesDatabase.ValuesDictionary
      IL_0063:  dup
      IL_0064:  ldstr      "Point"
      IL_0069:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<valuetype [Engine]Engine.Point3>(string)
      IL_006e:  stloc.1
      IL_006f:  dup
      IL_0070:  ldstr      "Line1"
      IL_0075:  ldsfld     string [System.Runtime]System.String::Empty
      IL_007a:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string,
                                                                                                           !!0)
      IL_007f:  stloc.2
      IL_0080:  dup
      IL_0081:  ldstr      "Line2"
      IL_0086:  ldsfld     string [System.Runtime]System.String::Empty
      IL_008b:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string,
                                                                                                           !!0)
      IL_0090:  stloc.3
      IL_0091:  dup
      IL_0092:  ldstr      "Line3"
      IL_0097:  ldsfld     string [System.Runtime]System.String::Empty
      IL_009c:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string,
                                                                                                           !!0)
      IL_00a1:  stloc.s    V_4
      IL_00a3:  dup
      IL_00a4:  ldstr      "Line4"
      IL_00a9:  ldsfld     string [System.Runtime]System.String::Empty
      IL_00ae:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string,
                                                                                                           !!0)
      IL_00b3:  stloc.s    V_5
      IL_00b5:  dup
      IL_00b6:  ldstr      "Color1"
      IL_00bb:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Black
      IL_00c0:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<valuetype [Engine]Engine.Color>(string,
                                                                                                                                   !!0)
      IL_00c5:  stloc.s    V_6
      IL_00c7:  dup
      IL_00c8:  ldstr      "Color2"
      IL_00cd:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Black
      IL_00d2:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<valuetype [Engine]Engine.Color>(string,
                                                                                                                                   !!0)
      IL_00d7:  stloc.s    V_7
      IL_00d9:  dup
      IL_00da:  ldstr      "Color3"
      IL_00df:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Black
      IL_00e4:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<valuetype [Engine]Engine.Color>(string,
                                                                                                                                   !!0)
      IL_00e9:  stloc.s    V_8
      IL_00eb:  dup
      IL_00ec:  ldstr      "Color4"
      IL_00f1:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Black
      IL_00f6:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<valuetype [Engine]Engine.Color>(string,
                                                                                                                                   !!0)
      IL_00fb:  stloc.s    V_9
      IL_00fd:  ldstr      "Url"
      IL_0102:  ldsfld     string [System.Runtime]System.String::Empty
      IL_0107:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string,
                                                                                                           !!0)
      IL_010c:  stloc.s    V_10
      IL_010e:  ldarg.0
      IL_010f:  ldloc.1
      IL_0110:  ldc.i4.4
      IL_0111:  newarr     [System.Runtime]System.String
      IL_0116:  dup
      IL_0117:  ldc.i4.0
      IL_0118:  ldloc.2
      IL_0119:  stelem.ref
      IL_011a:  dup
      IL_011b:  ldc.i4.1
      IL_011c:  ldloc.3
      IL_011d:  stelem.ref
      IL_011e:  dup
      IL_011f:  ldc.i4.2
      IL_0120:  ldloc.s    V_4
      IL_0122:  stelem.ref
      IL_0123:  dup
      IL_0124:  ldc.i4.3
      IL_0125:  ldloc.s    V_5
      IL_0127:  stelem.ref
      IL_0128:  ldc.i4.4
      IL_0129:  newarr     [Engine]Engine.Color
      IL_012e:  dup
      IL_012f:  ldc.i4.0
      IL_0130:  ldloc.s    V_6
      IL_0132:  stelem     [Engine]Engine.Color
      IL_0137:  dup
      IL_0138:  ldc.i4.1
      IL_0139:  ldloc.s    V_7
      IL_013b:  stelem     [Engine]Engine.Color
      IL_0140:  dup
      IL_0141:  ldc.i4.2
      IL_0142:  ldloc.s    V_8
      IL_0144:  stelem     [Engine]Engine.Color
      IL_0149:  dup
      IL_014a:  ldc.i4.3
      IL_014b:  ldloc.s    V_9
      IL_014d:  stelem     [Engine]Engine.Color
      IL_0152:  ldloc.s    V_10
      IL_0154:  call       instance void Game.SubsystemSignBlockBehavior::SetSignData(valuetype [Engine]Engine.Point3,
                                                                                      string[],
                                                                                      valuetype [Engine]Engine.Color[],
                                                                                      string)
      IL_0159:  ldloc.0
      IL_015a:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_015f:  brtrue     IL_0058

      IL_0164:  leave.s    IL_0170

    }  // end .try
    finally
    {
      IL_0166:  ldloc.0
      IL_0167:  brfalse.s  IL_016f

      IL_0169:  ldloc.0
      IL_016a:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_016f:  endfinally
    }  // end handler
    IL_0170:  ldarg.0
    IL_0171:  call       instance void Game.SubsystemSignBlockBehavior::CreateRenderTarget()
    IL_0176:  ldarg.0
    IL_0177:  ldftn      instance void Game.SubsystemSignBlockBehavior::Display_DeviceReset()
    IL_017d:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0182:  call       void [Engine]Engine.Graphics.Display::add_DeviceReset(class [System.Runtime]System.Action)
    IL_0187:  ret
  } // end of method SubsystemSignBlockBehavior::Load

  .method family hidebysig virtual instance void 
          Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       502 (0x1f6)
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
      IL_002c:  br         IL_01d9

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
      IL_01c8:  call       class [System.Globalization]System.Globalization.CultureInfo [System.Globalization]System.Globalization.CultureInfo::get_InvariantCulture()
      IL_01cd:  call       instance string [System.Runtime]System.Int32::ToString(class [System.Runtime]System.IFormatProvider)
      IL_01d2:  ldloc.s    V_4
      IL_01d4:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<class [EntitySystem]TemplatesDatabase.ValuesDictionary>(string,
                                                                                                                                                            !!0)
      IL_01d9:  ldloca.s   V_2
      IL_01db:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<valuetype [Engine]Engine.Point3,class Game.SubsystemSignBlockBehavior/TextData>::MoveNext()
      IL_01e0:  brtrue     IL_0031

      IL_01e5:  leave.s    IL_01f5

    }  // end .try
    finally
    {
      IL_01e7:  ldloca.s   V_2
      IL_01e9:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<valuetype [Engine]Engine.Point3,class Game.SubsystemSignBlockBehavior/TextData>
      IL_01ef:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_01f4:  endfinally
    }  // end handler
    IL_01f5:  ret
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
    // 代码大小       102 (0x66)
    .maxstack  3
    .locals init (int32 V_0,
             valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<valuetype [Engine]Engine.Point3,class Game.SubsystemSignBlockBehavior/TextData> V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector3> Game.SubsystemSignBlockBehavior::m_lastUpdatePositions
    IL_0006:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector3>::Clear()
    IL_000b:  ldc.i4.0
    IL_000c:  stloc.0
    IL_000d:  br.s       IL_001c

    IL_000f:  ldarg.0
    IL_0010:  ldfld      class Game.SubsystemSignBlockBehavior/TextData[] Game.SubsystemSignBlockBehavior::m_textureLocations
    IL_0015:  ldloc.0
    IL_0016:  ldnull
    IL_0017:  stelem.ref
    IL_0018:  ldloc.0
    IL_0019:  ldc.i4.1
    IL_001a:  add
    IL_001b:  stloc.0
    IL_001c:  ldloc.0
    IL_001d:  ldarg.0
    IL_001e:  ldfld      class Game.SubsystemSignBlockBehavior/TextData[] Game.SubsystemSignBlockBehavior::m_textureLocations
    IL_0023:  ldlen
    IL_0024:  conv.i4
    IL_0025:  blt.s      IL_000f

    IL_0027:  ldarg.0
    IL_0028:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemSignBlockBehavior/TextData> Game.SubsystemSignBlockBehavior::m_textsByPoint
    IL_002d:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemSignBlockBehavior/TextData>::get_Values()
    IL_0032:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection<valuetype [Engine]Engine.Point3,class Game.SubsystemSignBlockBehavior/TextData>::GetEnumerator()
    IL_0037:  stloc.1
    .try
    {
      IL_0038:  br.s       IL_004c

      IL_003a:  ldloca.s   V_1
      IL_003c:  call       instance !1 valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<valuetype [Engine]Engine.Point3,class Game.SubsystemSignBlockBehavior/TextData>::get_Current()
      IL_0041:  ldflda     valuetype [System.Runtime]System.Nullable`1<int32> Game.SubsystemSignBlockBehavior/TextData::TextureLocation
      IL_0046:  initobj    valuetype [System.Runtime]System.Nullable`1<int32>
      IL_004c:  ldloca.s   V_1
      IL_004e:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<valuetype [Engine]Engine.Point3,class Game.SubsystemSignBlockBehavior/TextData>::MoveNext()
      IL_0053:  brtrue.s   IL_003a

      IL_0055:  leave.s    IL_0065

    }  // end .try
    finally
    {
      IL_0057:  ldloca.s   V_1
      IL_0059:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<valuetype [Engine]Engine.Point3,class Game.SubsystemSignBlockBehavior/TextData>
      IL_005f:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0064:  endfinally
    }  // end handler
    IL_0065:  ret
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
    IL_007f:  ldsfld     class [System.Runtime]System.Func`2<string,int32> Game.SubsystemSignBlockBehavior/'<>c'::'<>9__39_0'
    IL_0084:  dup
    IL_0085:  brtrue.s   IL_009e

    IL_0087:  pop
    IL_0088:  ldsfld     class Game.SubsystemSignBlockBehavior/'<>c' Game.SubsystemSignBlockBehavior/'<>c'::'<>9'
    IL_008d:  ldftn      instance int32 Game.SubsystemSignBlockBehavior/'<>c'::'<RenderText>b__39_0'(string)
    IL_0093:  newobj     instance void class [System.Runtime]System.Func`2<string,int32>::.ctor(object,
                                                                                                native int)
    IL_0098:  dup
    IL_0099:  stsfld     class [System.Runtime]System.Func`2<string,int32> Game.SubsystemSignBlockBehavior/'<>c'::'<>9__39_0'
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

  .method private hidebysig instance void 
          UpdateRenderTarget() cil managed
  {
    // 代码大小       930 (0x3a2)
    .maxstack  7
    .locals init (bool V_0,
             valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.View> V_1,
             valuetype [Engine]Engine.ReadOnlyList`1<class Game.View> V_2,
             class Game.View V_3,
             bool V_4,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype [Engine]Engine.Vector3> V_5,
             valuetype [Engine]Engine.Vector3 V_6,
             bool V_7,
             valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<valuetype [Engine]Engine.Point3,class Game.SubsystemSignBlockBehavior/TextData> V_8,
             class Game.SubsystemSignBlockBehavior/TextData V_9,
             valuetype [Engine]Engine.Point3 V_10,
             float32 V_11,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemSignBlockBehavior/TextData> V_12,
             int32 V_13,
             class Game.SubsystemSignBlockBehavior/TextData V_14,
             int32 V_15,
             class Game.SubsystemSignBlockBehavior/TextData V_16,
             class [Engine]Engine.Graphics.RenderTarget2D V_17,
             class [Engine]Engine.Graphics.FlatBatch2D V_18,
             class [Engine]Engine.Graphics.FontBatch2D V_19,
             valuetype [System.Runtime]System.Nullable`1<float32> V_20,
             valuetype [System.Runtime]System.Nullable`1<int32> V_21,
             int32 V_22,
             class Game.SubsystemSignBlockBehavior/TextData V_23)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  ldarg.0
    IL_0003:  ldfld      class Game.SubsystemViews Game.SubsystemSignBlockBehavior::m_subsystemViews
    IL_0008:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.View> Game.SubsystemViews::get_Views()
    IL_000d:  stloc.2
    IL_000e:  ldloca.s   V_2
    IL_0010:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<class Game.View>::GetEnumerator()
    IL_0015:  stloc.1
    .try
    {
      IL_0016:  br.s       IL_007a

      IL_0018:  ldloca.s   V_1
      IL_001a:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.View>::get_Current()
      IL_001f:  stloc.3
      IL_0020:  ldc.i4.0
      IL_0021:  stloc.s    V_4
      IL_0023:  ldarg.0
      IL_0024:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector3> Game.SubsystemSignBlockBehavior::m_lastUpdatePositions
      IL_0029:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector3>::GetEnumerator()
      IL_002e:  stloc.s    V_5
      .try
      {
        IL_0030:  br.s       IL_0059

        IL_0032:  ldloca.s   V_5
        IL_0034:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype [Engine]Engine.Vector3>::get_Current()
        IL_0039:  stloc.s    V_6
        IL_003b:  ldloc.3
        IL_003c:  callvirt   instance class Game.Camera Game.View::get_ActiveCamera()
        IL_0041:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewPosition()
        IL_0046:  ldloc.s    V_6
        IL_0048:  call       float32 [Engine]Engine.Vector3::DistanceSquared(valuetype [Engine]Engine.Vector3,
                                                                             valuetype [Engine]Engine.Vector3)
        IL_004d:  ldc.r4     4.
        IL_0052:  bge.un.s   IL_0059

        IL_0054:  ldc.i4.1
        IL_0055:  stloc.s    V_4
        IL_0057:  leave.s    IL_0072

        IL_0059:  ldloca.s   V_5
        IL_005b:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype [Engine]Engine.Vector3>::MoveNext()
        IL_0060:  brtrue.s   IL_0032

        IL_0062:  leave.s    IL_0072

      }  // end .try
      finally
      {
        IL_0064:  ldloca.s   V_5
        IL_0066:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype [Engine]Engine.Vector3>
        IL_006c:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_0071:  endfinally
      }  // end handler
      IL_0072:  ldloc.s    V_4
      IL_0074:  brtrue.s   IL_007a

      IL_0076:  ldc.i4.1
      IL_0077:  stloc.0
      IL_0078:  leave.s    IL_0093

      IL_007a:  ldloca.s   V_1
      IL_007c:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.View>::MoveNext()
      IL_0081:  brtrue.s   IL_0018

      IL_0083:  leave.s    IL_0093

    }  // end .try
    finally
    {
      IL_0085:  ldloca.s   V_1
      IL_0087:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.View>
      IL_008d:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0092:  endfinally
    }  // end handler
    IL_0093:  ldloc.0
    IL_0094:  brfalse    IL_03a1

    IL_0099:  ldarg.0
    IL_009a:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector3> Game.SubsystemSignBlockBehavior::m_lastUpdatePositions
    IL_009f:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector3>::Clear()
    IL_00a4:  ldarg.0
    IL_00a5:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector3> Game.SubsystemSignBlockBehavior::m_lastUpdatePositions
    IL_00aa:  ldarg.0
    IL_00ab:  ldfld      class Game.SubsystemViews Game.SubsystemSignBlockBehavior::m_subsystemViews
    IL_00b0:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.View> Game.SubsystemViews::get_Views()
    IL_00b5:  box        valuetype [Engine]Engine.ReadOnlyList`1<class Game.View>
    IL_00ba:  ldsfld     class [System.Runtime]System.Func`2<class Game.View,valuetype [Engine]Engine.Vector3> Game.SubsystemSignBlockBehavior/'<>c'::'<>9__40_0'
    IL_00bf:  dup
    IL_00c0:  brtrue.s   IL_00d9

    IL_00c2:  pop
    IL_00c3:  ldsfld     class Game.SubsystemSignBlockBehavior/'<>c' Game.SubsystemSignBlockBehavior/'<>c'::'<>9'
    IL_00c8:  ldftn      instance valuetype [Engine]Engine.Vector3 Game.SubsystemSignBlockBehavior/'<>c'::'<UpdateRenderTarget>b__40_0'(class Game.View)
    IL_00ce:  newobj     instance void class [System.Runtime]System.Func`2<class Game.View,valuetype [Engine]Engine.Vector3>::.ctor(object,
                                                                                                                                    native int)
    IL_00d3:  dup
    IL_00d4:  stsfld     class [System.Runtime]System.Func`2<class Game.View,valuetype [Engine]Engine.Vector3> Game.SubsystemSignBlockBehavior/'<>c'::'<>9__40_0'
    IL_00d9:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!1> [System.Linq]System.Linq.Enumerable::Select<class Game.View,valuetype [Engine]Engine.Vector3>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                           class [System.Runtime]System.Func`2<!!0,!!1>)
    IL_00de:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector3>::AddRange(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!0>)
    IL_00e3:  ldarg.0
    IL_00e4:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemSignBlockBehavior/TextData> Game.SubsystemSignBlockBehavior::m_nearTexts
    IL_00e9:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemSignBlockBehavior/TextData>::Clear()
    IL_00ee:  ldarg.0
    IL_00ef:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemSignBlockBehavior/TextData> Game.SubsystemSignBlockBehavior::m_textsByPoint
    IL_00f4:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemSignBlockBehavior/TextData>::get_Values()
    IL_00f9:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection<valuetype [Engine]Engine.Point3,class Game.SubsystemSignBlockBehavior/TextData>::GetEnumerator()
    IL_00fe:  stloc.s    V_8
    .try
    {
      IL_0100:  br.s       IL_0147

      IL_0102:  ldloca.s   V_8
      IL_0104:  call       instance !1 valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<valuetype [Engine]Engine.Point3,class Game.SubsystemSignBlockBehavior/TextData>::get_Current()
      IL_0109:  stloc.s    V_9
      IL_010b:  ldloc.s    V_9
      IL_010d:  ldfld      valuetype [Engine]Engine.Point3 Game.SubsystemSignBlockBehavior/TextData::Point
      IL_0112:  stloc.s    V_10
      IL_0114:  ldarg.0
      IL_0115:  ldfld      class Game.SubsystemViews Game.SubsystemSignBlockBehavior::m_subsystemViews
      IL_011a:  ldloc.s    V_10
      IL_011c:  newobj     instance void [Engine]Engine.Vector3::.ctor(valuetype [Engine]Engine.Point3)
      IL_0121:  callvirt   instance float32 Game.SubsystemViews::CalculateSquaredDistanceFromNearestView(valuetype [Engine]Engine.Vector3)
      IL_0126:  stloc.s    V_11
      IL_0128:  ldloc.s    V_11
      IL_012a:  ldc.r4     400.
      IL_012f:  bgt.un.s   IL_0147

      IL_0131:  ldloc.s    V_9
      IL_0133:  ldloc.s    V_11
      IL_0135:  stfld      float32 Game.SubsystemSignBlockBehavior/TextData::Distance
      IL_013a:  ldarg.0
      IL_013b:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemSignBlockBehavior/TextData> Game.SubsystemSignBlockBehavior::m_nearTexts
      IL_0140:  ldloc.s    V_9
      IL_0142:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemSignBlockBehavior/TextData>::Add(!0)
      IL_0147:  ldloca.s   V_8
      IL_0149:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<valuetype [Engine]Engine.Point3,class Game.SubsystemSignBlockBehavior/TextData>::MoveNext()
      IL_014e:  brtrue.s   IL_0102

      IL_0150:  leave.s    IL_0160

    }  // end .try
    finally
    {
      IL_0152:  ldloca.s   V_8
      IL_0154:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<valuetype [Engine]Engine.Point3,class Game.SubsystemSignBlockBehavior/TextData>
      IL_015a:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_015f:  endfinally
    }  // end handler
    IL_0160:  ldarg.0
    IL_0161:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemSignBlockBehavior/TextData> Game.SubsystemSignBlockBehavior::m_nearTexts
    IL_0166:  ldsfld     class [System.Runtime]System.Comparison`1<class Game.SubsystemSignBlockBehavior/TextData> Game.SubsystemSignBlockBehavior/'<>c'::'<>9__40_1'
    IL_016b:  dup
    IL_016c:  brtrue.s   IL_0185

    IL_016e:  pop
    IL_016f:  ldsfld     class Game.SubsystemSignBlockBehavior/'<>c' Game.SubsystemSignBlockBehavior/'<>c'::'<>9'
    IL_0174:  ldftn      instance int32 Game.SubsystemSignBlockBehavior/'<>c'::'<UpdateRenderTarget>b__40_1'(class Game.SubsystemSignBlockBehavior/TextData,
                                                                                                             class Game.SubsystemSignBlockBehavior/TextData)
    IL_017a:  newobj     instance void class [System.Runtime]System.Comparison`1<class Game.SubsystemSignBlockBehavior/TextData>::.ctor(object,
                                                                                                                                        native int)
    IL_017f:  dup
    IL_0180:  stsfld     class [System.Runtime]System.Comparison`1<class Game.SubsystemSignBlockBehavior/TextData> Game.SubsystemSignBlockBehavior/'<>c'::'<>9__40_1'
    IL_0185:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemSignBlockBehavior/TextData>::Sort(class [System.Runtime]System.Comparison`1<!0>)
    IL_018a:  ldarg.0
    IL_018b:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemSignBlockBehavior/TextData> Game.SubsystemSignBlockBehavior::m_nearTexts
    IL_0190:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemSignBlockBehavior/TextData>::get_Count()
    IL_0195:  ldc.i4.s   32
    IL_0197:  ble.s      IL_01b4

    IL_0199:  ldarg.0
    IL_019a:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemSignBlockBehavior/TextData> Game.SubsystemSignBlockBehavior::m_nearTexts
    IL_019f:  ldc.i4.s   32
    IL_01a1:  ldarg.0
    IL_01a2:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemSignBlockBehavior/TextData> Game.SubsystemSignBlockBehavior::m_nearTexts
    IL_01a7:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemSignBlockBehavior/TextData>::get_Count()
    IL_01ac:  ldc.i4.s   32
    IL_01ae:  sub
    IL_01af:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemSignBlockBehavior/TextData>::RemoveRange(int32,
                                                                                                                                                                int32)
    IL_01b4:  ldarg.0
    IL_01b5:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemSignBlockBehavior/TextData> Game.SubsystemSignBlockBehavior::m_nearTexts
    IL_01ba:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemSignBlockBehavior/TextData>::GetEnumerator()
    IL_01bf:  stloc.s    V_12
    .try
    {
      IL_01c1:  br.s       IL_01d4

      IL_01c3:  ldloca.s   V_12
      IL_01c5:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemSignBlockBehavior/TextData>::get_Current()
      IL_01ca:  call       int32 [Engine]Engine.Time::get_FrameIndex()
      IL_01cf:  stfld      int32 Game.SubsystemSignBlockBehavior/TextData::ToBeRenderedFrame
      IL_01d4:  ldloca.s   V_12
      IL_01d6:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemSignBlockBehavior/TextData>::MoveNext()
      IL_01db:  brtrue.s   IL_01c3

      IL_01dd:  leave.s    IL_01ed

    }  // end .try
    finally
    {
      IL_01df:  ldloca.s   V_12
      IL_01e1:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemSignBlockBehavior/TextData>
      IL_01e7:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_01ec:  endfinally
    }  // end handler
    IL_01ed:  ldc.i4.0
    IL_01ee:  stloc.s    V_7
    IL_01f0:  ldc.i4.0
    IL_01f1:  stloc.s    V_13
    IL_01f3:  br         IL_02c2

    IL_01f8:  ldarg.0
    IL_01f9:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemSignBlockBehavior/TextData> Game.SubsystemSignBlockBehavior::m_nearTexts
    IL_01fe:  ldloc.s    V_13
    IL_0200:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemSignBlockBehavior/TextData>::get_Item(int32)
    IL_0205:  stloc.s    V_14
    IL_0207:  ldloc.s    V_14
    IL_0209:  ldflda     valuetype [System.Runtime]System.Nullable`1<int32> Game.SubsystemSignBlockBehavior/TextData::TextureLocation
    IL_020e:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0213:  brtrue     IL_02bc

    IL_0218:  ldarg.0
    IL_0219:  ldfld      class Game.SubsystemSignBlockBehavior/TextData[] Game.SubsystemSignBlockBehavior::m_textureLocations
    IL_021e:  ldsfld     class [System.Runtime]System.Func`2<class Game.SubsystemSignBlockBehavior/TextData,bool> Game.SubsystemSignBlockBehavior/'<>c'::'<>9__40_2'
    IL_0223:  dup
    IL_0224:  brtrue.s   IL_023d

    IL_0226:  pop
    IL_0227:  ldsfld     class Game.SubsystemSignBlockBehavior/'<>c' Game.SubsystemSignBlockBehavior/'<>c'::'<>9'
    IL_022c:  ldftn      instance bool Game.SubsystemSignBlockBehavior/'<>c'::'<UpdateRenderTarget>b__40_2'(class Game.SubsystemSignBlockBehavior/TextData)
    IL_0232:  newobj     instance void class [System.Runtime]System.Func`2<class Game.SubsystemSignBlockBehavior/TextData,bool>::.ctor(object,
                                                                                                                                       native int)
    IL_0237:  dup
    IL_0238:  stsfld     class [System.Runtime]System.Func`2<class Game.SubsystemSignBlockBehavior/TextData,bool> Game.SubsystemSignBlockBehavior/'<>c'::'<>9__40_2'
    IL_023d:  call       int32 Game.CollectionUtils::FirstIndex<class Game.SubsystemSignBlockBehavior/TextData>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                class [System.Runtime]System.Func`2<!!0,bool>)
    IL_0242:  stloc.s    V_15
    IL_0244:  ldloc.s    V_15
    IL_0246:  ldc.i4.0
    IL_0247:  bge.s      IL_0275

    IL_0249:  ldarg.0
    IL_024a:  ldfld      class Game.SubsystemSignBlockBehavior/TextData[] Game.SubsystemSignBlockBehavior::m_textureLocations
    IL_024f:  ldsfld     class [System.Runtime]System.Func`2<class Game.SubsystemSignBlockBehavior/TextData,bool> Game.SubsystemSignBlockBehavior/'<>c'::'<>9__40_3'
    IL_0254:  dup
    IL_0255:  brtrue.s   IL_026e

    IL_0257:  pop
    IL_0258:  ldsfld     class Game.SubsystemSignBlockBehavior/'<>c' Game.SubsystemSignBlockBehavior/'<>c'::'<>9'
    IL_025d:  ldftn      instance bool Game.SubsystemSignBlockBehavior/'<>c'::'<UpdateRenderTarget>b__40_3'(class Game.SubsystemSignBlockBehavior/TextData)
    IL_0263:  newobj     instance void class [System.Runtime]System.Func`2<class Game.SubsystemSignBlockBehavior/TextData,bool>::.ctor(object,
                                                                                                                                       native int)
    IL_0268:  dup
    IL_0269:  stsfld     class [System.Runtime]System.Func`2<class Game.SubsystemSignBlockBehavior/TextData,bool> Game.SubsystemSignBlockBehavior/'<>c'::'<>9__40_3'
    IL_026e:  call       int32 Game.CollectionUtils::FirstIndex<class Game.SubsystemSignBlockBehavior/TextData>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                class [System.Runtime]System.Func`2<!!0,bool>)
    IL_0273:  stloc.s    V_15
    IL_0275:  ldloc.s    V_15
    IL_0277:  ldc.i4.0
    IL_0278:  blt.s      IL_02bc

    IL_027a:  ldarg.0
    IL_027b:  ldfld      class Game.SubsystemSignBlockBehavior/TextData[] Game.SubsystemSignBlockBehavior::m_textureLocations
    IL_0280:  ldloc.s    V_15
    IL_0282:  ldelem.ref
    IL_0283:  stloc.s    V_16
    IL_0285:  ldloc.s    V_16
    IL_0287:  brfalse.s  IL_02a0

    IL_0289:  ldloc.s    V_16
    IL_028b:  ldflda     valuetype [System.Runtime]System.Nullable`1<int32> Game.SubsystemSignBlockBehavior/TextData::TextureLocation
    IL_0290:  initobj    valuetype [System.Runtime]System.Nullable`1<int32>
    IL_0296:  ldarg.0
    IL_0297:  ldfld      class Game.SubsystemSignBlockBehavior/TextData[] Game.SubsystemSignBlockBehavior::m_textureLocations
    IL_029c:  ldloc.s    V_15
    IL_029e:  ldnull
    IL_029f:  stelem.ref
    IL_02a0:  ldarg.0
    IL_02a1:  ldfld      class Game.SubsystemSignBlockBehavior/TextData[] Game.SubsystemSignBlockBehavior::m_textureLocations
    IL_02a6:  ldloc.s    V_15
    IL_02a8:  ldloc.s    V_14
    IL_02aa:  stelem.ref
    IL_02ab:  ldloc.s    V_14
    IL_02ad:  ldloc.s    V_15
    IL_02af:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_02b4:  stfld      valuetype [System.Runtime]System.Nullable`1<int32> Game.SubsystemSignBlockBehavior/TextData::TextureLocation
    IL_02b9:  ldc.i4.1
    IL_02ba:  stloc.s    V_7
    IL_02bc:  ldloc.s    V_13
    IL_02be:  ldc.i4.1
    IL_02bf:  add
    IL_02c0:  stloc.s    V_13
    IL_02c2:  ldloc.s    V_13
    IL_02c4:  ldarg.0
    IL_02c5:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemSignBlockBehavior/TextData> Game.SubsystemSignBlockBehavior::m_nearTexts
    IL_02ca:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemSignBlockBehavior/TextData>::get_Count()
    IL_02cf:  ldc.i4.s   32
    IL_02d1:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_02d6:  blt        IL_01f8

    IL_02db:  ldloc.s    V_7
    IL_02dd:  brfalse    IL_03a1

    IL_02e2:  call       class [Engine]Engine.Graphics.RenderTarget2D [Engine]Engine.Graphics.Display::get_RenderTarget()
    IL_02e7:  stloc.s    V_17
    IL_02e9:  ldarg.0
    IL_02ea:  ldfld      class [Engine]Engine.Graphics.RenderTarget2D Game.SubsystemSignBlockBehavior::m_renderTarget
    IL_02ef:  call       void [Engine]Engine.Graphics.Display::set_RenderTarget(class [Engine]Engine.Graphics.RenderTarget2D)
    .try
    {
      IL_02f4:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
      IL_02f9:  newobj     instance void [Engine]Engine.Vector4::.ctor(valuetype [Engine]Engine.Color)
      IL_02fe:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector4>::.ctor(!0)
      IL_0303:  ldloca.s   V_20
      IL_0305:  initobj    valuetype [System.Runtime]System.Nullable`1<float32>
      IL_030b:  ldloc.s    V_20
      IL_030d:  ldloca.s   V_21
      IL_030f:  initobj    valuetype [System.Runtime]System.Nullable`1<int32>
      IL_0315:  ldloc.s    V_21
      IL_0317:  call       void [Engine]Engine.Graphics.Display::Clear(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector4>,
                                                                       valuetype [System.Runtime]System.Nullable`1<float32>,
                                                                       valuetype [System.Runtime]System.Nullable`1<int32>)
      IL_031c:  ldarg.0
      IL_031d:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.SubsystemSignBlockBehavior::m_primitivesRenderer2D
      IL_0322:  ldc.i4.0
      IL_0323:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::None
      IL_0328:  ldnull
      IL_0329:  ldsfld     class [Engine]Engine.Graphics.BlendState [Engine]Engine.Graphics.BlendState::Opaque
      IL_032e:  callvirt   instance class [Engine]Engine.Graphics.FlatBatch2D [Engine]Engine.Graphics.PrimitivesRenderer2D::FlatBatch(int32,
                                                                                                                                      class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                      class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                      class [Engine]Engine.Graphics.BlendState)
      IL_0333:  stloc.s    V_18
      IL_0335:  ldarg.0
      IL_0336:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.SubsystemSignBlockBehavior::m_primitivesRenderer2D
      IL_033b:  ldarg.0
      IL_033c:  ldfld      class [Engine]Engine.Media.BitmapFont Game.SubsystemSignBlockBehavior::m_font
      IL_0341:  ldc.i4.1
      IL_0342:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::None
      IL_0347:  ldnull
      IL_0348:  ldsfld     class [Engine]Engine.Graphics.BlendState [Engine]Engine.Graphics.BlendState::Opaque
      IL_034d:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::PointClamp
      IL_0352:  callvirt   instance class [Engine]Engine.Graphics.FontBatch2D [Engine]Engine.Graphics.PrimitivesRenderer2D::FontBatch(class [Engine]Engine.Media.BitmapFont,
                                                                                                                                      int32,
                                                                                                                                      class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                      class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                      class [Engine]Engine.Graphics.BlendState,
                                                                                                                                      class [Engine]Engine.Graphics.SamplerState)
      IL_0357:  stloc.s    V_19
      IL_0359:  ldc.i4.0
      IL_035a:  stloc.s    V_22
      IL_035c:  br.s       IL_037f

      IL_035e:  ldarg.0
      IL_035f:  ldfld      class Game.SubsystemSignBlockBehavior/TextData[] Game.SubsystemSignBlockBehavior::m_textureLocations
      IL_0364:  ldloc.s    V_22
      IL_0366:  ldelem.ref
      IL_0367:  stloc.s    V_23
      IL_0369:  ldloc.s    V_23
      IL_036b:  brfalse.s  IL_0379

      IL_036d:  ldarg.0
      IL_036e:  ldloc.s    V_19
      IL_0370:  ldloc.s    V_18
      IL_0372:  ldloc.s    V_23
      IL_0374:  call       instance void Game.SubsystemSignBlockBehavior::RenderText(class [Engine]Engine.Graphics.FontBatch2D,
                                                                                     class [Engine]Engine.Graphics.FlatBatch2D,
                                                                                     class Game.SubsystemSignBlockBehavior/TextData)
      IL_0379:  ldloc.s    V_22
      IL_037b:  ldc.i4.1
      IL_037c:  add
      IL_037d:  stloc.s    V_22
      IL_037f:  ldloc.s    V_22
      IL_0381:  ldarg.0
      IL_0382:  ldfld      class Game.SubsystemSignBlockBehavior/TextData[] Game.SubsystemSignBlockBehavior::m_textureLocations
      IL_0387:  ldlen
      IL_0388:  conv.i4
      IL_0389:  blt.s      IL_035e

      IL_038b:  ldarg.0
      IL_038c:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.SubsystemSignBlockBehavior::m_primitivesRenderer2D
      IL_0391:  ldc.i4.1
      IL_0392:  callvirt   instance void [Engine]Engine.Graphics.PrimitivesRenderer2D::Flush(bool)
      IL_0397:  leave.s    IL_03a1

    }  // end .try
    finally
    {
      IL_0399:  ldloc.s    V_17
      IL_039b:  call       void [Engine]Engine.Graphics.Display::set_RenderTarget(class [Engine]Engine.Graphics.RenderTarget2D)
      IL_03a0:  endfinally
    }  // end handler
    IL_03a1:  ret
  } // end of method SubsystemSignBlockBehavior::UpdateRenderTarget

  .method private hidebysig instance void 
          DrawSigns(class Game.Camera camera) cil managed
  {
    // 代码大小       934 (0x3a6)
    .maxstack  8
    .locals init (class [Engine]Engine.Graphics.TexturedBatch3D V_0,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemSignBlockBehavior/TextData> V_1,
             class Game.SubsystemSignBlockBehavior/TextData V_2,
             int32 V_3,
             int32 V_4,
             class Game.SignBlock V_5,
             int32 V_6,
             class Game.BlockMesh V_7,
             class Game.TerrainChunk V_8,
             float32 V_9,
             valuetype [Engine]Engine.Color V_10,
             float32 V_11,
             float32 V_12,
             float32 V_13,
             float32 V_14,
             valuetype [Engine]Engine.Vector3 V_15,
             valuetype [Engine]Engine.Vector3 V_16,
             float32 V_17,
             valuetype [Engine]Engine.Vector3 V_18,
             int32 V_19,
             valuetype Game.BlockMeshVertex V_20,
             valuetype Game.BlockMeshVertex V_21,
             valuetype [Engine]Engine.Vector3 V_22,
             valuetype [Engine]Engine.Vector3 V_23,
             valuetype [Engine]Engine.Vector3 V_24,
             valuetype [Engine]Engine.Vector2 V_25,
             valuetype [Engine]Engine.Vector2 V_26,
             valuetype [Engine]Engine.Vector2 V_27)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemSignBlockBehavior/TextData> Game.SubsystemSignBlockBehavior::m_nearTexts
    IL_0006:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemSignBlockBehavior/TextData>::get_Count()
    IL_000b:  ldc.i4.0
    IL_000c:  ble        IL_03a5

    IL_0011:  ldarg.0
    IL_0012:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.SubsystemSignBlockBehavior::m_primitivesRenderer3D
    IL_0017:  ldarg.0
    IL_0018:  ldfld      class [Engine]Engine.Graphics.RenderTarget2D Game.SubsystemSignBlockBehavior::m_renderTarget
    IL_001d:  ldc.i4.0
    IL_001e:  ldc.i4.0
    IL_001f:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::DepthRead
    IL_0024:  ldsfld     class [Engine]Engine.Graphics.RasterizerState [Engine]Engine.Graphics.RasterizerState::CullCounterClockwiseScissor
    IL_0029:  ldnull
    IL_002a:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::PointClamp
    IL_002f:  callvirt   instance class [Engine]Engine.Graphics.TexturedBatch3D [Engine]Engine.Graphics.PrimitivesRenderer3D::TexturedBatch(class [Engine]Engine.Graphics.Texture2D,
                                                                                                                                            bool,
                                                                                                                                            int32,
                                                                                                                                            class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                            class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                            class [Engine]Engine.Graphics.BlendState,
                                                                                                                                            class [Engine]Engine.Graphics.SamplerState)
    IL_0034:  stloc.0
    IL_0035:  ldarg.0
    IL_0036:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemSignBlockBehavior/TextData> Game.SubsystemSignBlockBehavior::m_nearTexts
    IL_003b:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemSignBlockBehavior/TextData>::GetEnumerator()
    IL_0040:  stloc.1
    .try
    {
      IL_0041:  br         IL_0372

      IL_0046:  ldloca.s   V_1
      IL_0048:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemSignBlockBehavior/TextData>::get_Current()
      IL_004d:  stloc.2
      IL_004e:  ldloc.2
      IL_004f:  ldflda     valuetype [System.Runtime]System.Nullable`1<int32> Game.SubsystemSignBlockBehavior/TextData::TextureLocation
      IL_0054:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
      IL_0059:  brfalse    IL_0372

      IL_005e:  ldarg.0
      IL_005f:  ldfld      class Game.SubsystemTerrain Game.SubsystemSignBlockBehavior::m_subsystemTerrain
      IL_0064:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
      IL_0069:  ldloc.2
      IL_006a:  ldflda     valuetype [Engine]Engine.Point3 Game.SubsystemSignBlockBehavior/TextData::Point
      IL_006f:  ldfld      int32 [Engine]Engine.Point3::X
      IL_0074:  ldloc.2
      IL_0075:  ldflda     valuetype [Engine]Engine.Point3 Game.SubsystemSignBlockBehavior/TextData::Point
      IL_007a:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_007f:  ldloc.2
      IL_0080:  ldflda     valuetype [Engine]Engine.Point3 Game.SubsystemSignBlockBehavior/TextData::Point
      IL_0085:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_008a:  callvirt   instance int32 Game.Terrain::GetCellValue(int32,
                                                                     int32,
                                                                     int32)
      IL_008f:  stloc.3
      IL_0090:  ldloc.3
      IL_0091:  call       int32 Game.Terrain::ExtractContents(int32)
      IL_0096:  stloc.s    V_4
      IL_0098:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
      IL_009d:  ldloc.s    V_4
      IL_009f:  ldelem.ref
      IL_00a0:  isinst     Game.SignBlock
      IL_00a5:  stloc.s    V_5
      IL_00a7:  ldloc.s    V_5
      IL_00a9:  brfalse    IL_0372

      IL_00ae:  ldloc.3
      IL_00af:  call       int32 Game.Terrain::ExtractData(int32)
      IL_00b4:  stloc.s    V_6
      IL_00b6:  ldloc.s    V_5
      IL_00b8:  ldloc.s    V_6
      IL_00ba:  callvirt   instance class Game.BlockMesh Game.SignBlock::GetSignSurfaceBlockMesh(int32)
      IL_00bf:  stloc.s    V_7
      IL_00c1:  ldloc.s    V_7
      IL_00c3:  brfalse    IL_0372

      IL_00c8:  ldarg.0
      IL_00c9:  ldfld      class Game.SubsystemTerrain Game.SubsystemSignBlockBehavior::m_subsystemTerrain
      IL_00ce:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
      IL_00d3:  ldloc.2
      IL_00d4:  ldflda     valuetype [Engine]Engine.Point3 Game.SubsystemSignBlockBehavior/TextData::Point
      IL_00d9:  ldfld      int32 [Engine]Engine.Point3::X
      IL_00de:  ldloc.2
      IL_00df:  ldflda     valuetype [Engine]Engine.Point3 Game.SubsystemSignBlockBehavior/TextData::Point
      IL_00e4:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_00e9:  callvirt   instance class Game.TerrainChunk Game.Terrain::GetChunkAtCell(int32,
                                                                                         int32)
      IL_00ee:  stloc.s    V_8
      IL_00f0:  ldloc.s    V_8
      IL_00f2:  brfalse.s  IL_010a

      IL_00f4:  ldloc.s    V_8
      IL_00f6:  ldfld      valuetype Game.TerrainChunkState Game.TerrainChunk::State
      IL_00fb:  ldc.i4.7
      IL_00fc:  blt.s      IL_010a

      IL_00fe:  ldloc.2
      IL_00ff:  ldloc.3
      IL_0100:  call       int32 Game.Terrain::ExtractLight(int32)
      IL_0105:  stfld      int32 Game.SubsystemSignBlockBehavior/TextData::Light
      IL_010a:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValue
      IL_010f:  ldloc.2
      IL_0110:  ldfld      int32 Game.SubsystemSignBlockBehavior/TextData::Light
      IL_0115:  ldelem.r4
      IL_0116:  stloc.s    V_9
      IL_0118:  ldloca.s   V_10
      IL_011a:  ldloc.s    V_9
      IL_011c:  ldloc.s    V_9
      IL_011e:  ldloc.s    V_9
      IL_0120:  call       instance void [Engine]Engine.Color::.ctor(float32,
                                                                     float32,
                                                                     float32)
      IL_0125:  ldc.r4     0.0
      IL_012a:  stloc.s    V_11
      IL_012c:  ldloc.2
      IL_012d:  ldfld      float32 Game.SubsystemSignBlockBehavior/TextData::UsedTextureWidth
      IL_0132:  ldc.r4     128.
      IL_0137:  div
      IL_0138:  stloc.s    V_12
      IL_013a:  ldloc.2
      IL_013b:  ldflda     valuetype [System.Runtime]System.Nullable`1<int32> Game.SubsystemSignBlockBehavior/TextData::TextureLocation
      IL_0140:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
      IL_0145:  conv.r4
      IL_0146:  ldc.r4     32.
      IL_014b:  div
      IL_014c:  stloc.s    V_13
      IL_014e:  ldloc.2
      IL_014f:  ldflda     valuetype [System.Runtime]System.Nullable`1<int32> Game.SubsystemSignBlockBehavior/TextData::TextureLocation
      IL_0154:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
      IL_0159:  conv.r4
      IL_015a:  ldloc.2
      IL_015b:  ldfld      float32 Game.SubsystemSignBlockBehavior/TextData::UsedTextureHeight
      IL_0160:  ldc.r4     32.
      IL_0165:  div
      IL_0166:  add
      IL_0167:  conv.r4
      IL_0168:  ldc.r4     32.
      IL_016d:  div
      IL_016e:  stloc.s    V_14
      IL_0170:  ldloc.s    V_5
      IL_0172:  ldloc.s    V_6
      IL_0174:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SignBlock::GetSignSurfaceNormal(int32)
      IL_0179:  stloc.s    V_15
      IL_017b:  ldloca.s   V_16
      IL_017d:  ldloc.2
      IL_017e:  ldflda     valuetype [Engine]Engine.Point3 Game.SubsystemSignBlockBehavior/TextData::Point
      IL_0183:  ldfld      int32 [Engine]Engine.Point3::X
      IL_0188:  conv.r4
      IL_0189:  ldloc.2
      IL_018a:  ldflda     valuetype [Engine]Engine.Point3 Game.SubsystemSignBlockBehavior/TextData::Point
      IL_018f:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_0194:  conv.r4
      IL_0195:  ldloc.2
      IL_0196:  ldflda     valuetype [Engine]Engine.Point3 Game.SubsystemSignBlockBehavior/TextData::Point
      IL_019b:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_01a0:  conv.r4
      IL_01a1:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                       float32,
                                                                       float32)
      IL_01a6:  ldarg.1
      IL_01a7:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewPosition()
      IL_01ac:  ldloc.s    V_16
      IL_01ae:  ldc.r4     0.5
      IL_01b3:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32)
      IL_01b8:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_01bd:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                   valuetype [Engine]Engine.Vector3)
      IL_01c2:  ldloc.s    V_15
      IL_01c4:  call       float32 [Engine]Engine.Vector3::Dot(valuetype [Engine]Engine.Vector3,
                                                               valuetype [Engine]Engine.Vector3)
      IL_01c9:  stloc.s    V_17
      IL_01cb:  ldc.r4     9.9999998e-003
      IL_01d0:  ldloc.s    V_17
      IL_01d2:  mul
      IL_01d3:  ldc.r4     4.9999999e-003
      IL_01d8:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                                 float32)
      IL_01dd:  ldloc.s    V_15
      IL_01df:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_01e4:  stloc.s    V_18
      IL_01e6:  ldc.i4.0
      IL_01e7:  stloc.s    V_19
      IL_01e9:  br         IL_035d

      IL_01ee:  ldloc.s    V_7
      IL_01f0:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex> Game.BlockMesh::Vertices
      IL_01f5:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Array()
      IL_01fa:  ldloc.s    V_7
      IL_01fc:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.BlockMesh::Indices
      IL_0201:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
      IL_0206:  ldloc.s    V_19
      IL_0208:  ldc.i4.3
      IL_0209:  mul
      IL_020a:  ldelem.u2
      IL_020b:  ldelem     Game.BlockMeshVertex
      IL_0210:  stloc.s    V_20
      IL_0212:  ldloc.s    V_7
      IL_0214:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex> Game.BlockMesh::Vertices
      IL_0219:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Array()
      IL_021e:  ldloc.s    V_7
      IL_0220:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.BlockMesh::Indices
      IL_0225:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
      IL_022a:  ldloc.s    V_19
      IL_022c:  ldc.i4.3
      IL_022d:  mul
      IL_022e:  ldc.i4.1
      IL_022f:  add
      IL_0230:  ldelem.u2
      IL_0231:  ldelem     Game.BlockMeshVertex
      IL_0236:  stloc.s    V_21
      IL_0238:  ldloc.s    V_7
      IL_023a:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex> Game.BlockMesh::Vertices
      IL_023f:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Array()
      IL_0244:  ldloc.s    V_7
      IL_0246:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.BlockMesh::Indices
      IL_024b:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
      IL_0250:  ldloc.s    V_19
      IL_0252:  ldc.i4.3
      IL_0253:  mul
      IL_0254:  ldc.i4.2
      IL_0255:  add
      IL_0256:  ldelem.u2
      IL_0257:  ldelem     Game.BlockMeshVertex
      IL_025c:  ldloc.s    V_20
      IL_025e:  ldfld      valuetype [Engine]Engine.Vector3 Game.BlockMeshVertex::Position
      IL_0263:  ldloc.s    V_16
      IL_0265:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_026a:  ldloc.s    V_18
      IL_026c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0271:  stloc.s    V_22
      IL_0273:  ldloc.s    V_21
      IL_0275:  ldfld      valuetype [Engine]Engine.Vector3 Game.BlockMeshVertex::Position
      IL_027a:  ldloc.s    V_16
      IL_027c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0281:  ldloc.s    V_18
      IL_0283:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0288:  stloc.s    V_23
      IL_028a:  dup
      IL_028b:  ldfld      valuetype [Engine]Engine.Vector3 Game.BlockMeshVertex::Position
      IL_0290:  ldloc.s    V_16
      IL_0292:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0297:  ldloc.s    V_18
      IL_0299:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_029e:  stloc.s    V_24
      IL_02a0:  ldloc.s    V_20
      IL_02a2:  ldfld      valuetype [Engine]Engine.Vector2 Game.BlockMeshVertex::TextureCoordinates
      IL_02a7:  stloc.s    V_25
      IL_02a9:  ldloc.s    V_21
      IL_02ab:  ldfld      valuetype [Engine]Engine.Vector2 Game.BlockMeshVertex::TextureCoordinates
      IL_02b0:  stloc.s    V_26
      IL_02b2:  ldfld      valuetype [Engine]Engine.Vector2 Game.BlockMeshVertex::TextureCoordinates
      IL_02b7:  stloc.s    V_27
      IL_02b9:  ldloca.s   V_25
      IL_02bb:  ldloc.s    V_11
      IL_02bd:  ldloc.s    V_12
      IL_02bf:  ldloc.s    V_25
      IL_02c1:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_02c6:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                  float32,
                                                                  float32)
      IL_02cb:  stfld      float32 [Engine]Engine.Vector2::X
      IL_02d0:  ldloca.s   V_26
      IL_02d2:  ldloc.s    V_11
      IL_02d4:  ldloc.s    V_12
      IL_02d6:  ldloc.s    V_26
      IL_02d8:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_02dd:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                  float32,
                                                                  float32)
      IL_02e2:  stfld      float32 [Engine]Engine.Vector2::X
      IL_02e7:  ldloca.s   V_27
      IL_02e9:  ldloc.s    V_11
      IL_02eb:  ldloc.s    V_12
      IL_02ed:  ldloc.s    V_27
      IL_02ef:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_02f4:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                  float32,
                                                                  float32)
      IL_02f9:  stfld      float32 [Engine]Engine.Vector2::X
      IL_02fe:  ldloca.s   V_25
      IL_0300:  ldloc.s    V_13
      IL_0302:  ldloc.s    V_14
      IL_0304:  ldloc.s    V_25
      IL_0306:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_030b:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                  float32,
                                                                  float32)
      IL_0310:  stfld      float32 [Engine]Engine.Vector2::Y
      IL_0315:  ldloca.s   V_26
      IL_0317:  ldloc.s    V_13
      IL_0319:  ldloc.s    V_14
      IL_031b:  ldloc.s    V_26
      IL_031d:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_0322:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                  float32,
                                                                  float32)
      IL_0327:  stfld      float32 [Engine]Engine.Vector2::Y
      IL_032c:  ldloca.s   V_27
      IL_032e:  ldloc.s    V_13
      IL_0330:  ldloc.s    V_14
      IL_0332:  ldloc.s    V_27
      IL_0334:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_0339:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                  float32,
                                                                  float32)
      IL_033e:  stfld      float32 [Engine]Engine.Vector2::Y
      IL_0343:  ldloc.0
      IL_0344:  ldloc.s    V_22
      IL_0346:  ldloc.s    V_23
      IL_0348:  ldloc.s    V_24
      IL_034a:  ldloc.s    V_25
      IL_034c:  ldloc.s    V_26
      IL_034e:  ldloc.s    V_27
      IL_0350:  ldloc.s    V_10
      IL_0352:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch3D::QueueTriangle(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector2,
                                                                                                valuetype [Engine]Engine.Vector2,
                                                                                                valuetype [Engine]Engine.Vector2,
                                                                                                valuetype [Engine]Engine.Color)
      IL_0357:  ldloc.s    V_19
      IL_0359:  ldc.i4.1
      IL_035a:  add
      IL_035b:  stloc.s    V_19
      IL_035d:  ldloc.s    V_19
      IL_035f:  ldloc.s    V_7
      IL_0361:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.BlockMesh::Indices
      IL_0366:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
      IL_036b:  ldc.i4.3
      IL_036c:  div
      IL_036d:  blt        IL_01ee

      IL_0372:  ldloca.s   V_1
      IL_0374:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemSignBlockBehavior/TextData>::MoveNext()
      IL_0379:  brtrue     IL_0046

      IL_037e:  leave.s    IL_038e

    }  // end .try
    finally
    {
      IL_0380:  ldloca.s   V_1
      IL_0382:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemSignBlockBehavior/TextData>
      IL_0388:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_038d:  endfinally
    }  // end handler
    IL_038e:  ldarg.0
    IL_038f:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.SubsystemSignBlockBehavior::m_primitivesRenderer3D
    IL_0394:  ldarg.1
    IL_0395:  callvirt   instance valuetype [Engine]Engine.Matrix Game.Camera::get_ViewProjectionMatrix()
    IL_039a:  ldc.i4.1
    IL_039b:  ldc.i4     0x7fffffff
    IL_03a0:  callvirt   instance void class [Engine]Engine.Graphics.BasePrimitivesRenderer`3<class [Engine]Engine.Graphics.FlatBatch3D,class [Engine]Engine.Graphics.TexturedBatch3D,class [Engine]Engine.Graphics.FontBatch3D>::Flush(valuetype [Engine]Engine.Matrix,
                                                                                                                                                                                                                                        bool,
                                                                                                                                                                                                                                        int32)
    IL_03a5:  ret
  } // end of method SubsystemSignBlockBehavior::DrawSigns

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       91 (0x5b)
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
    IL_0034:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector3>::.ctor()
    IL_0039:  stfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector3> Game.SubsystemSignBlockBehavior::m_lastUpdatePositions
    IL_003e:  ldarg.0
    IL_003f:  newobj     instance void [Engine]Engine.Graphics.PrimitivesRenderer2D::.ctor()
    IL_0044:  stfld      class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.SubsystemSignBlockBehavior::m_primitivesRenderer2D
    IL_0049:  ldarg.0
    IL_004a:  newobj     instance void [Engine]Engine.Graphics.PrimitivesRenderer3D::.ctor()
    IL_004f:  stfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.SubsystemSignBlockBehavior::m_primitivesRenderer3D
    IL_0054:  ldarg.0
    IL_0055:  call       instance void Game.SubsystemBlockBehavior::.ctor()
    IL_005a:  ret
  } // end of method SubsystemSignBlockBehavior::.ctor

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       17 (0x11)
    .maxstack  8
    IL_0000:  ldc.i4.1
    IL_0001:  newarr     [System.Runtime]System.Int32
    IL_0006:  dup
    IL_0007:  ldc.i4.0
    IL_0008:  ldc.i4.s   50
    IL_000a:  stelem.i4
    IL_000b:  stsfld     int32[] Game.SubsystemSignBlockBehavior::m_drawOrders
    IL_0010:  ret
  } // end of method SubsystemSignBlockBehavior::.cctor

  .property instance int32[] HandledBlocks()
  {
    .get instance int32[] Game.SubsystemSignBlockBehavior::get_HandledBlocks()
  } // end of property SubsystemSignBlockBehavior::HandledBlocks
  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.SubsystemSignBlockBehavior::get_UpdateOrder()
  } // end of property SubsystemSignBlockBehavior::UpdateOrder
  .property instance int32[] DrawOrders()
  {
    .get instance int32[] Game.SubsystemSignBlockBehavior::get_DrawOrders()
  } // end of property SubsystemSignBlockBehavior::DrawOrders
} // end of class Game.SubsystemSignBlockBehavior