.class public auto ansi beforefieldinit Game.TerrainChunk
       extends [System.Runtime]System.Object
{
  .field public static literal int32 SizeBits = int32(0x00000004)
  .field public static literal int32 Size = int32(0x00000010)
  .field public static literal int32 HeightBits = int32(0x00000007)
  .field public static literal int32 Height = int32(0x00000080)
  .field public static literal int32 SizeMinusOne = int32(0x0000000F)
  .field public static literal int32 HeightMinusOne = int32(0x0000007F)
  .field public class Game.Terrain Terrain
  .field public valuetype [Engine]Engine.Point2 Coords
  .field public valuetype [Engine]Engine.Point2 Origin
  .field public valuetype [Engine]Engine.BoundingBox BoundingBox
  .field public valuetype [Engine]Engine.Vector2 Center
  .field public valuetype Game.TerrainChunkState State
  .field public valuetype Game.TerrainChunkState ThreadState
  .field public bool WasDowngraded
  .field public valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainChunkState> DowngradedState
  .field public bool WasUpgraded
  .field public valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainChunkState> UpgradedState
  .field public float32 DrawDistanceSquared
  .field public int32 LightPropagationMask
  .field public int32 ModificationCounter
  .field public float32[] FogEnds
  .field public int64 ContentsHash
  .field public bool AreBehaviorsNotified
  .field public bool IsLoaded
  .field public bool modreq([System.Runtime]System.Runtime.CompilerServices.IsVolatile) NewGeometryData
  .field public float32 GeometryMinY
  .field public float32 GeometryMaxY
  .field public class Game.TerrainChunkGeometry Geometry
  .field public int32[] Cells
  .field public int32[] Shafts
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.Terrain terrain,
                               int32 x,
                               int32 z) cil managed
  {
    // 代码大小       233 (0xe9)
    .maxstack  6
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.4
    IL_0002:  newarr     [System.Runtime]System.Single
    IL_0007:  stfld      float32[] Game.TerrainChunk::FogEnds
    IL_000c:  ldarg.0
    IL_000d:  newobj     instance void Game.TerrainChunkGeometry::.ctor()
    IL_0012:  stfld      class Game.TerrainChunkGeometry Game.TerrainChunk::Geometry
    IL_0017:  ldarg.0
    IL_0018:  ldc.i4     0x8000
    IL_001d:  newarr     [System.Runtime]System.Int32
    IL_0022:  stfld      int32[] Game.TerrainChunk::Cells
    IL_0027:  ldarg.0
    IL_0028:  ldc.i4     0x100
    IL_002d:  newarr     [System.Runtime]System.Int32
    IL_0032:  stfld      int32[] Game.TerrainChunk::Shafts
    IL_0037:  ldarg.0
    IL_0038:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_003d:  ldarg.0
    IL_003e:  ldarg.1
    IL_003f:  stfld      class Game.Terrain Game.TerrainChunk::Terrain
    IL_0044:  ldarg.0
    IL_0045:  ldarg.2
    IL_0046:  ldarg.3
    IL_0047:  newobj     instance void [Engine]Engine.Point2::.ctor(int32,
                                                                    int32)
    IL_004c:  stfld      valuetype [Engine]Engine.Point2 Game.TerrainChunk::Coords
    IL_0051:  ldarg.0
    IL_0052:  ldarg.2
    IL_0053:  ldc.i4.s   16
    IL_0055:  mul
    IL_0056:  ldarg.3
    IL_0057:  ldc.i4.s   16
    IL_0059:  mul
    IL_005a:  newobj     instance void [Engine]Engine.Point2::.ctor(int32,
                                                                    int32)
    IL_005f:  stfld      valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_0064:  ldarg.0
    IL_0065:  ldarg.0
    IL_0066:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_006b:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0070:  conv.r4
    IL_0071:  ldc.r4     0.0
    IL_0076:  ldarg.0
    IL_0077:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_007c:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0081:  conv.r4
    IL_0082:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0087:  ldarg.0
    IL_0088:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_008d:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0092:  ldc.i4.s   16
    IL_0094:  add
    IL_0095:  conv.r4
    IL_0096:  ldc.r4     128.
    IL_009b:  ldarg.0
    IL_009c:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_00a1:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_00a6:  ldc.i4.s   16
    IL_00a8:  add
    IL_00a9:  conv.r4
    IL_00aa:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00af:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_00b4:  stfld      valuetype [Engine]Engine.BoundingBox Game.TerrainChunk::BoundingBox
    IL_00b9:  ldarg.0
    IL_00ba:  ldarg.0
    IL_00bb:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_00c0:  ldfld      int32 [Engine]Engine.Point2::X
    IL_00c5:  conv.r4
    IL_00c6:  ldc.r4     8.
    IL_00cb:  add
    IL_00cc:  ldarg.0
    IL_00cd:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_00d2:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_00d7:  conv.r4
    IL_00d8:  ldc.r4     8.
    IL_00dd:  add
    IL_00de:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00e3:  stfld      valuetype [Engine]Engine.Vector2 Game.TerrainChunk::Center
    IL_00e8:  ret
  } // end of method TerrainChunk::.ctor

  .method public hidebysig static bool  IsCellValid(int32 x,
                                                    int32 y,
                                                    int32 z) cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.0
    IL_0002:  blt.s      IL_001f

    IL_0004:  ldarg.0
    IL_0005:  ldc.i4.s   16
    IL_0007:  bge.s      IL_001f

    IL_0009:  ldarg.1
    IL_000a:  ldc.i4.0
    IL_000b:  blt.s      IL_001f

    IL_000d:  ldarg.1
    IL_000e:  ldc.i4     0x80
    IL_0013:  bge.s      IL_001f

    IL_0015:  ldarg.2
    IL_0016:  ldc.i4.0
    IL_0017:  blt.s      IL_001f

    IL_0019:  ldarg.2
    IL_001a:  ldc.i4.s   16
    IL_001c:  clt
    IL_001e:  ret

    IL_001f:  ldc.i4.0
    IL_0020:  ret
  } // end of method TerrainChunk::IsCellValid

  .method public hidebysig static bool  IsShaftValid(int32 x,
                                                     int32 z) cil managed
  {
    // 代码大小       21 (0x15)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.0
    IL_0002:  blt.s      IL_0013

    IL_0004:  ldarg.0
    IL_0005:  ldc.i4.s   16
    IL_0007:  bge.s      IL_0013

    IL_0009:  ldarg.1
    IL_000a:  ldc.i4.0
    IL_000b:  blt.s      IL_0013

    IL_000d:  ldarg.1
    IL_000e:  ldc.i4.s   16
    IL_0010:  clt
    IL_0012:  ret

    IL_0013:  ldc.i4.0
    IL_0014:  ret
  } // end of method TerrainChunk::IsShaftValid

  .method public hidebysig static int32  CalculateCellIndex(int32 x,
                                                            int32 y,
                                                            int32 z) cil managed
  {
    // 代码大小       21 (0x15)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  ldc.i4     0x80
    IL_0007:  mul
    IL_0008:  add
    IL_0009:  ldarg.2
    IL_000a:  ldc.i4     0x80
    IL_000f:  mul
    IL_0010:  ldc.i4.s   16
    IL_0012:  mul
    IL_0013:  add
    IL_0014:  ret
  } // end of method TerrainChunk::CalculateCellIndex

  .method public hidebysig instance int32 
          CalculateTopmostCellHeight(int32 x,
                                     int32 z) cil managed
  {
    // 代码大小       45 (0x2d)
    .maxstack  3
    .locals init (int32 V_0,
             int32 V_1)
    IL_0000:  ldarg.1
    IL_0001:  ldc.i4.s   127
    IL_0003:  ldarg.2
    IL_0004:  call       int32 Game.TerrainChunk::CalculateCellIndex(int32,
                                                                     int32,
                                                                     int32)
    IL_0009:  stloc.0
    IL_000a:  ldc.i4.s   127
    IL_000c:  stloc.1
    IL_000d:  br.s       IL_0027

    IL_000f:  ldarg.0
    IL_0010:  ldloc.0
    IL_0011:  call       instance int32 Game.TerrainChunk::GetCellValueFast(int32)
    IL_0016:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_001b:  brfalse.s  IL_001f

    IL_001d:  ldloc.1
    IL_001e:  ret

    IL_001f:  ldloc.1
    IL_0020:  ldc.i4.1
    IL_0021:  sub
    IL_0022:  stloc.1
    IL_0023:  ldloc.0
    IL_0024:  ldc.i4.1
    IL_0025:  sub
    IL_0026:  stloc.0
    IL_0027:  ldloc.1
    IL_0028:  ldc.i4.0
    IL_0029:  bge.s      IL_000f

    IL_002b:  ldc.i4.0
    IL_002c:  ret
  } // end of method TerrainChunk::CalculateTopmostCellHeight

  .method public hidebysig instance int32 
          GetCellValueFast(int32 index) cil managed
  {
    // 代码大小       9 (0x9)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32[] Game.TerrainChunk::Cells
    IL_0006:  ldarg.1
    IL_0007:  ldelem.i4
    IL_0008:  ret
  } // end of method TerrainChunk::GetCellValueFast

  .method public hidebysig instance int32 
          GetCellValueFast(int32 x,
                           int32 y,
                           int32 z) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32[] Game.TerrainChunk::Cells
    IL_0006:  ldarg.2
    IL_0007:  ldarg.1
    IL_0008:  ldc.i4     0x80
    IL_000d:  mul
    IL_000e:  add
    IL_000f:  ldarg.3
    IL_0010:  ldc.i4     0x80
    IL_0015:  mul
    IL_0016:  ldc.i4.s   16
    IL_0018:  mul
    IL_0019:  add
    IL_001a:  ldelem.i4
    IL_001b:  ret
  } // end of method TerrainChunk::GetCellValueFast

  .method public hidebysig instance void 
          SetCellValueFast(int32 x,
                           int32 y,
                           int32 z,
                           int32 'value') cil managed
  {
    // 代码大小       30 (0x1e)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32[] Game.TerrainChunk::Cells
    IL_0006:  ldarg.2
    IL_0007:  ldarg.1
    IL_0008:  ldc.i4     0x80
    IL_000d:  mul
    IL_000e:  add
    IL_000f:  ldarg.3
    IL_0010:  ldc.i4     0x80
    IL_0015:  mul
    IL_0016:  ldc.i4.s   16
    IL_0018:  mul
    IL_0019:  add
    IL_001a:  ldarg.s    'value'
    IL_001c:  stelem.i4
    IL_001d:  ret
  } // end of method TerrainChunk::SetCellValueFast

  .method public hidebysig instance void 
          SetCellValueFast(int32 index,
                           int32 'value') cil managed
  {
    // 代码大小       10 (0xa)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32[] Game.TerrainChunk::Cells
    IL_0006:  ldarg.1
    IL_0007:  ldarg.2
    IL_0008:  stelem.i4
    IL_0009:  ret
  } // end of method TerrainChunk::SetCellValueFast

  .method public hidebysig instance int32 
          GetCellContentsFast(int32 x,
                              int32 y,
                              int32 z) cil managed
  {
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  ldarg.3
    IL_0004:  call       instance int32 Game.TerrainChunk::GetCellValueFast(int32,
                                                                            int32,
                                                                            int32)
    IL_0009:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_000e:  ret
  } // end of method TerrainChunk::GetCellContentsFast

  .method public hidebysig instance int32 
          GetCellLightFast(int32 x,
                           int32 y,
                           int32 z) cil managed
  {
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  ldarg.3
    IL_0004:  call       instance int32 Game.TerrainChunk::GetCellValueFast(int32,
                                                                            int32,
                                                                            int32)
    IL_0009:  call       int32 Game.Terrain::ExtractLight(int32)
    IL_000e:  ret
  } // end of method TerrainChunk::GetCellLightFast

  .method public hidebysig instance int32 
          GetShaftValueFast(int32 x,
                            int32 z) cil managed
  {
    // 代码大小       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32[] Game.TerrainChunk::Shafts
    IL_0006:  ldarg.1
    IL_0007:  ldarg.2
    IL_0008:  ldc.i4.s   16
    IL_000a:  mul
    IL_000b:  add
    IL_000c:  ldelem.i4
    IL_000d:  ret
  } // end of method TerrainChunk::GetShaftValueFast

  .method public hidebysig instance void 
          SetShaftValueFast(int32 x,
                            int32 z,
                            int32 'value') cil managed
  {
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32[] Game.TerrainChunk::Shafts
    IL_0006:  ldarg.1
    IL_0007:  ldarg.2
    IL_0008:  ldc.i4.s   16
    IL_000a:  mul
    IL_000b:  add
    IL_000c:  ldarg.3
    IL_000d:  stelem.i4
    IL_000e:  ret
  } // end of method TerrainChunk::SetShaftValueFast

  .method public hidebysig instance int32 
          GetTemperatureFast(int32 x,
                             int32 z) cil managed
  {
    // 代码大小       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  call       instance int32 Game.TerrainChunk::GetShaftValueFast(int32,
                                                                             int32)
    IL_0008:  call       int32 Game.Terrain::ExtractTemperature(int32)
    IL_000d:  ret
  } // end of method TerrainChunk::GetTemperatureFast

  .method public hidebysig instance void 
          SetTemperatureFast(int32 x,
                             int32 z,
                             int32 temperature) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  ldarg.0
    IL_0004:  ldarg.1
    IL_0005:  ldarg.2
    IL_0006:  call       instance int32 Game.TerrainChunk::GetShaftValueFast(int32,
                                                                             int32)
    IL_000b:  ldarg.3
    IL_000c:  call       int32 Game.Terrain::ReplaceTemperature(int32,
                                                                int32)
    IL_0011:  call       instance void Game.TerrainChunk::SetShaftValueFast(int32,
                                                                            int32,
                                                                            int32)
    IL_0016:  ret
  } // end of method TerrainChunk::SetTemperatureFast

  .method public hidebysig instance int32 
          GetHumidityFast(int32 x,
                          int32 z) cil managed
  {
    // 代码大小       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  call       instance int32 Game.TerrainChunk::GetShaftValueFast(int32,
                                                                             int32)
    IL_0008:  call       int32 Game.Terrain::ExtractHumidity(int32)
    IL_000d:  ret
  } // end of method TerrainChunk::GetHumidityFast

  .method public hidebysig instance void 
          SetHumidityFast(int32 x,
                          int32 z,
                          int32 humidity) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  ldarg.0
    IL_0004:  ldarg.1
    IL_0005:  ldarg.2
    IL_0006:  call       instance int32 Game.TerrainChunk::GetShaftValueFast(int32,
                                                                             int32)
    IL_000b:  ldarg.3
    IL_000c:  call       int32 Game.Terrain::ReplaceHumidity(int32,
                                                             int32)
    IL_0011:  call       instance void Game.TerrainChunk::SetShaftValueFast(int32,
                                                                            int32,
                                                                            int32)
    IL_0016:  ret
  } // end of method TerrainChunk::SetHumidityFast

  .method public hidebysig instance int32 
          GetTopHeightFast(int32 x,
                           int32 z) cil managed
  {
    // 代码大小       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  call       instance int32 Game.TerrainChunk::GetShaftValueFast(int32,
                                                                             int32)
    IL_0008:  call       int32 Game.Terrain::ExtractTopHeight(int32)
    IL_000d:  ret
  } // end of method TerrainChunk::GetTopHeightFast

  .method public hidebysig instance void 
          SetTopHeightFast(int32 x,
                           int32 z,
                           int32 topHeight) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  ldarg.0
    IL_0004:  ldarg.1
    IL_0005:  ldarg.2
    IL_0006:  call       instance int32 Game.TerrainChunk::GetShaftValueFast(int32,
                                                                             int32)
    IL_000b:  ldarg.3
    IL_000c:  call       int32 Game.Terrain::ReplaceTopHeight(int32,
                                                              int32)
    IL_0011:  call       instance void Game.TerrainChunk::SetShaftValueFast(int32,
                                                                            int32,
                                                                            int32)
    IL_0016:  ret
  } // end of method TerrainChunk::SetTopHeightFast

  .method public hidebysig instance int32 
          GetBottomHeightFast(int32 x,
                              int32 z) cil managed
  {
    // 代码大小       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  call       instance int32 Game.TerrainChunk::GetShaftValueFast(int32,
                                                                             int32)
    IL_0008:  call       int32 Game.Terrain::ExtractBottomHeight(int32)
    IL_000d:  ret
  } // end of method TerrainChunk::GetBottomHeightFast

  .method public hidebysig instance void 
          SetBottomHeightFast(int32 x,
                              int32 z,
                              int32 bottomHeight) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  ldarg.0
    IL_0004:  ldarg.1
    IL_0005:  ldarg.2
    IL_0006:  call       instance int32 Game.TerrainChunk::GetShaftValueFast(int32,
                                                                             int32)
    IL_000b:  ldarg.3
    IL_000c:  call       int32 Game.Terrain::ReplaceBottomHeight(int32,
                                                                 int32)
    IL_0011:  call       instance void Game.TerrainChunk::SetShaftValueFast(int32,
                                                                            int32,
                                                                            int32)
    IL_0016:  ret
  } // end of method TerrainChunk::SetBottomHeightFast

} // end of class Game.TerrainChunk