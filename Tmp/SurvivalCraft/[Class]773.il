.class public auto ansi beforefieldinit Game.TerrainData
       extends [System.Runtime]System.Object
{
  .field private static literal int32 ContentsMask = int32(0x000003FF)
  .field private static literal int32 LightMask = int32(0x00003C00)
  .field private static literal int32 LightShift = int32(0x0000000A)
  .field private static literal int32 DataMask = int32(0xFFFFC000)
  .field private static literal int32 DataShift = int32(0x0000000E)
  .field private static literal int32 TopHeightMask = int32(0x000000FF)
  .field private static literal int32 TopHeightShift = int32(0x00000000)
  .field private static literal int32 TemperatureMask = int32(0x00000F00)
  .field private static literal int32 TemperatureShift = int32(0x00000008)
  .field private static literal int32 HumidityMask = int32(0x0000F000)
  .field private static literal int32 HumidityShift = int32(0x0000000C)
  .field private static literal int32 BottomHeightMask = int32(0x00FF0000)
  .field private static literal int32 BottomHeightShift = int32(0x00000010)
  .field private int32 m_sizeX
  .field private int32 m_sizeY
  .field private int32 m_sizeZ
  .field private int32 m_sizeXY
  .field private int32 m_sizeXZ
  .field private int32 m_sizeXYZ
  .field private int32 m_sizeMinusOneX
  .field private int32 m_sizeMinusOneY
  .field private int32 m_sizeMinusOneZ
  .field private int32 m_sizeXShift
  .field private int32 m_sizeYShift
  .field private int32 m_sizeXYShift
  .field private int32[] m_cells
  .field private int32[] m_shafts
  .field private int32 m_originX
  .field private int32 m_originZ
  .field private int32 m_endX
  .field private int32 m_endZ
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(int32 sizeX,
                               int32 sizeY,
                               int32 sizeZ) cil managed
  {
    // 代码大小       324 (0x144)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0006:  ldarg.1
    IL_0007:  conv.i8
    IL_0008:  call       bool [Engine]Engine.MathUtils::IsPowerOf2(int64)
    IL_000d:  brfalse.s  IL_0021

    IL_000f:  ldarg.2
    IL_0010:  conv.i8
    IL_0011:  call       bool [Engine]Engine.MathUtils::IsPowerOf2(int64)
    IL_0016:  brfalse.s  IL_0021

    IL_0018:  ldarg.3
    IL_0019:  conv.i8
    IL_001a:  call       bool [Engine]Engine.MathUtils::IsPowerOf2(int64)
    IL_001f:  brtrue.s   IL_002c

    IL_0021:  ldstr      "TerrainData size must be a power of 2."
    IL_0026:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_002b:  throw

    IL_002c:  ldarg.0
    IL_002d:  ldarg.1
    IL_002e:  stfld      int32 Game.TerrainData::m_sizeX
    IL_0033:  ldarg.0
    IL_0034:  ldarg.2
    IL_0035:  stfld      int32 Game.TerrainData::m_sizeY
    IL_003a:  ldarg.0
    IL_003b:  ldarg.3
    IL_003c:  stfld      int32 Game.TerrainData::m_sizeZ
    IL_0041:  ldarg.0
    IL_0042:  ldarg.0
    IL_0043:  ldfld      int32 Game.TerrainData::m_sizeX
    IL_0048:  ldarg.0
    IL_0049:  ldfld      int32 Game.TerrainData::m_sizeY
    IL_004e:  mul
    IL_004f:  stfld      int32 Game.TerrainData::m_sizeXY
    IL_0054:  ldarg.0
    IL_0055:  ldarg.0
    IL_0056:  ldfld      int32 Game.TerrainData::m_sizeX
    IL_005b:  ldarg.0
    IL_005c:  ldfld      int32 Game.TerrainData::m_sizeZ
    IL_0061:  mul
    IL_0062:  stfld      int32 Game.TerrainData::m_sizeXZ
    IL_0067:  ldarg.0
    IL_0068:  ldarg.0
    IL_0069:  ldfld      int32 Game.TerrainData::m_sizeX
    IL_006e:  ldarg.0
    IL_006f:  ldfld      int32 Game.TerrainData::m_sizeY
    IL_0074:  mul
    IL_0075:  ldarg.0
    IL_0076:  ldfld      int32 Game.TerrainData::m_sizeZ
    IL_007b:  mul
    IL_007c:  stfld      int32 Game.TerrainData::m_sizeXYZ
    IL_0081:  ldarg.0
    IL_0082:  ldarg.0
    IL_0083:  ldfld      int32 Game.TerrainData::m_sizeX
    IL_0088:  ldc.i4.1
    IL_0089:  sub
    IL_008a:  stfld      int32 Game.TerrainData::m_sizeMinusOneX
    IL_008f:  ldarg.0
    IL_0090:  ldarg.0
    IL_0091:  ldfld      int32 Game.TerrainData::m_sizeY
    IL_0096:  ldc.i4.1
    IL_0097:  sub
    IL_0098:  stfld      int32 Game.TerrainData::m_sizeMinusOneY
    IL_009d:  ldarg.0
    IL_009e:  ldarg.0
    IL_009f:  ldfld      int32 Game.TerrainData::m_sizeZ
    IL_00a4:  ldc.i4.1
    IL_00a5:  sub
    IL_00a6:  stfld      int32 Game.TerrainData::m_sizeMinusOneZ
    IL_00ab:  ldarg.0
    IL_00ac:  ldarg.0
    IL_00ad:  ldfld      int32 Game.TerrainData::m_sizeX
    IL_00b2:  conv.r4
    IL_00b3:  call       float32 [Engine]Engine.MathUtils::Log(float32)
    IL_00b8:  ldc.r4     2.
    IL_00bd:  call       float32 [Engine]Engine.MathUtils::Log(float32)
    IL_00c2:  div
    IL_00c3:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_00c8:  conv.i4
    IL_00c9:  stfld      int32 Game.TerrainData::m_sizeXShift
    IL_00ce:  ldarg.0
    IL_00cf:  ldarg.0
    IL_00d0:  ldfld      int32 Game.TerrainData::m_sizeY
    IL_00d5:  conv.r4
    IL_00d6:  call       float32 [Engine]Engine.MathUtils::Log(float32)
    IL_00db:  ldc.r4     2.
    IL_00e0:  call       float32 [Engine]Engine.MathUtils::Log(float32)
    IL_00e5:  div
    IL_00e6:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_00eb:  conv.i4
    IL_00ec:  stfld      int32 Game.TerrainData::m_sizeYShift
    IL_00f1:  ldarg.0
    IL_00f2:  ldarg.0
    IL_00f3:  ldfld      int32 Game.TerrainData::m_sizeXY
    IL_00f8:  conv.r4
    IL_00f9:  call       float32 [Engine]Engine.MathUtils::Log(float32)
    IL_00fe:  ldc.r4     2.
    IL_0103:  call       float32 [Engine]Engine.MathUtils::Log(float32)
    IL_0108:  div
    IL_0109:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_010e:  conv.i4
    IL_010f:  stfld      int32 Game.TerrainData::m_sizeXYShift
    IL_0114:  ldarg.0
    IL_0115:  ldarg.0
    IL_0116:  ldfld      int32 Game.TerrainData::m_sizeXYZ
    IL_011b:  newarr     [System.Runtime]System.Int32
    IL_0120:  stfld      int32[] Game.TerrainData::m_cells
    IL_0125:  ldarg.0
    IL_0126:  ldarg.0
    IL_0127:  ldfld      int32 Game.TerrainData::m_sizeXZ
    IL_012c:  newarr     [System.Runtime]System.Int32
    IL_0131:  stfld      int32[] Game.TerrainData::m_shafts
    IL_0136:  ldarg.0
    IL_0137:  ldc.i4.0
    IL_0138:  ldc.i4.0
    IL_0139:  newobj     instance void [Engine]Engine.Point2::.ctor(int32,
                                                                    int32)
    IL_013e:  call       instance void Game.TerrainData::set_Origin(valuetype [Engine]Engine.Point2)
    IL_0143:  ret
  } // end of method TerrainData::.ctor

  .method public hidebysig specialname instance int32 
          get_SizeX() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Game.TerrainData::m_sizeX
    IL_0006:  ret
  } // end of method TerrainData::get_SizeX

  .method public hidebysig specialname instance int32 
          get_SizeY() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Game.TerrainData::m_sizeY
    IL_0006:  ret
  } // end of method TerrainData::get_SizeY

  .method public hidebysig specialname instance int32 
          get_SizeZ() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Game.TerrainData::m_sizeZ
    IL_0006:  ret
  } // end of method TerrainData::get_SizeZ

  .method public hidebysig specialname instance valuetype [Engine]Engine.Point2 
          get_Origin() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Game.TerrainData::m_originX
    IL_0006:  ldarg.0
    IL_0007:  ldfld      int32 Game.TerrainData::m_originZ
    IL_000c:  newobj     instance void [Engine]Engine.Point2::.ctor(int32,
                                                                    int32)
    IL_0011:  ret
  } // end of method TerrainData::get_Origin

  .method public hidebysig specialname instance void 
          set_Origin(valuetype [Engine]Engine.Point2 'value') cil managed
  {
    // 代码大小       63 (0x3f)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0007:  stfld      int32 Game.TerrainData::m_originX
    IL_000c:  ldarg.0
    IL_000d:  ldarg.1
    IL_000e:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0013:  stfld      int32 Game.TerrainData::m_originZ
    IL_0018:  ldarg.0
    IL_0019:  ldarg.0
    IL_001a:  ldfld      int32 Game.TerrainData::m_originX
    IL_001f:  ldarg.0
    IL_0020:  ldfld      int32 Game.TerrainData::m_sizeX
    IL_0025:  add
    IL_0026:  stfld      int32 Game.TerrainData::m_endX
    IL_002b:  ldarg.0
    IL_002c:  ldarg.0
    IL_002d:  ldfld      int32 Game.TerrainData::m_originZ
    IL_0032:  ldarg.0
    IL_0033:  ldfld      int32 Game.TerrainData::m_sizeZ
    IL_0038:  add
    IL_0039:  stfld      int32 Game.TerrainData::m_endZ
    IL_003e:  ret
  } // end of method TerrainData::set_Origin

  .method public hidebysig instance bool 
          IsCellValid(int32 x,
                      int32 y,
                      int32 z) cil managed
  {
    // 代码大小       52 (0x34)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  ldfld      int32 Game.TerrainData::m_originX
    IL_0007:  blt.s      IL_0032

    IL_0009:  ldarg.1
    IL_000a:  ldarg.0
    IL_000b:  ldfld      int32 Game.TerrainData::m_endX
    IL_0010:  bge.s      IL_0032

    IL_0012:  ldarg.2
    IL_0013:  ldc.i4.0
    IL_0014:  blt.s      IL_0032

    IL_0016:  ldarg.2
    IL_0017:  ldarg.0
    IL_0018:  ldfld      int32 Game.TerrainData::m_sizeY
    IL_001d:  bge.s      IL_0032

    IL_001f:  ldarg.3
    IL_0020:  ldarg.0
    IL_0021:  ldfld      int32 Game.TerrainData::m_originZ
    IL_0026:  blt.s      IL_0032

    IL_0028:  ldarg.3
    IL_0029:  ldarg.0
    IL_002a:  ldfld      int32 Game.TerrainData::m_endZ
    IL_002f:  clt
    IL_0031:  ret

    IL_0032:  ldc.i4.0
    IL_0033:  ret
  } // end of method TerrainData::IsCellValid

  .method public hidebysig instance int32 
          GetCellValue(int32 x,
                       int32 y,
                       int32 z) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  ldarg.3
    IL_0004:  call       instance bool Game.TerrainData::IsCellValid(int32,
                                                                     int32,
                                                                     int32)
    IL_0009:  brfalse.s  IL_0015

    IL_000b:  ldarg.0
    IL_000c:  ldarg.1
    IL_000d:  ldarg.2
    IL_000e:  ldarg.3
    IL_000f:  call       instance int32 Game.TerrainData::GetCellValueFast(int32,
                                                                           int32,
                                                                           int32)
    IL_0014:  ret

    IL_0015:  ldc.i4.0
    IL_0016:  ret
  } // end of method TerrainData::GetCellValue

  .method public hidebysig instance int32 
          GetCellContents(int32 x,
                          int32 y,
                          int32 z) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  ldarg.3
    IL_0004:  call       instance bool Game.TerrainData::IsCellValid(int32,
                                                                     int32,
                                                                     int32)
    IL_0009:  brfalse.s  IL_0015

    IL_000b:  ldarg.0
    IL_000c:  ldarg.1
    IL_000d:  ldarg.2
    IL_000e:  ldarg.3
    IL_000f:  call       instance int32 Game.TerrainData::GetCellContentsFast(int32,
                                                                              int32,
                                                                              int32)
    IL_0014:  ret

    IL_0015:  ldc.i4.0
    IL_0016:  ret
  } // end of method TerrainData::GetCellContents

  .method public hidebysig instance int32 
          GetCellLight(int32 x,
                       int32 y,
                       int32 z) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  ldarg.3
    IL_0004:  call       instance bool Game.TerrainData::IsCellValid(int32,
                                                                     int32,
                                                                     int32)
    IL_0009:  brfalse.s  IL_0015

    IL_000b:  ldarg.0
    IL_000c:  ldarg.1
    IL_000d:  ldarg.2
    IL_000e:  ldarg.3
    IL_000f:  call       instance int32 Game.TerrainData::GetCellLightFast(int32,
                                                                           int32,
                                                                           int32)
    IL_0014:  ret

    IL_0015:  ldc.i4.0
    IL_0016:  ret
  } // end of method TerrainData::GetCellLight

  .method public hidebysig instance int32 
          CalculateCellIndex(int32 x,
                             int32 y,
                             int32 z) cil managed
  {
    // 代码大小       44 (0x2c)
    .maxstack  4
    .locals init (int32 V_0,
             int32 V_1)
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  ldfld      int32 Game.TerrainData::m_sizeMinusOneX
    IL_0007:  and
    IL_0008:  stloc.0
    IL_0009:  ldarg.3
    IL_000a:  ldarg.0
    IL_000b:  ldfld      int32 Game.TerrainData::m_sizeMinusOneZ
    IL_0010:  and
    IL_0011:  stloc.1
    IL_0012:  ldarg.2
    IL_0013:  ldloc.0
    IL_0014:  ldarg.0
    IL_0015:  ldfld      int32 Game.TerrainData::m_sizeYShift
    IL_001a:  ldc.i4.s   31
    IL_001c:  and
    IL_001d:  shl
    IL_001e:  add
    IL_001f:  ldloc.1
    IL_0020:  ldarg.0
    IL_0021:  ldfld      int32 Game.TerrainData::m_sizeXYShift
    IL_0026:  ldc.i4.s   31
    IL_0028:  and
    IL_0029:  shl
    IL_002a:  add
    IL_002b:  ret
  } // end of method TerrainData::CalculateCellIndex

  .method public hidebysig instance int32 
          CalculateShaftIndex(int32 x,
                              int32 z) cil managed
  {
    // 代码大小       30 (0x1e)
    .maxstack  4
    .locals init (int32 V_0)
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  ldfld      int32 Game.TerrainData::m_sizeMinusOneX
    IL_0007:  and
    IL_0008:  ldarg.2
    IL_0009:  ldarg.0
    IL_000a:  ldfld      int32 Game.TerrainData::m_sizeMinusOneZ
    IL_000f:  and
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldarg.0
    IL_0013:  ldfld      int32 Game.TerrainData::m_sizeXShift
    IL_0018:  ldc.i4.s   31
    IL_001a:  and
    IL_001b:  shl
    IL_001c:  add
    IL_001d:  ret
  } // end of method TerrainData::CalculateShaftIndex

  .method public hidebysig instance int32 
          GetCellValueFast(int32 index) cil managed
  {
    // 代码大小       9 (0x9)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32[] Game.TerrainData::m_cells
    IL_0006:  ldarg.1
    IL_0007:  ldelem.i4
    IL_0008:  ret
  } // end of method TerrainData::GetCellValueFast

  .method public hidebysig instance int32 
          GetCellValueFast(int32 x,
                           int32 y,
                           int32 z) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  4
    .locals init (int32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  ldarg.3
    IL_0004:  call       instance int32 Game.TerrainData::CalculateCellIndex(int32,
                                                                             int32,
                                                                             int32)
    IL_0009:  stloc.0
    IL_000a:  ldarg.0
    IL_000b:  ldfld      int32[] Game.TerrainData::m_cells
    IL_0010:  ldloc.0
    IL_0011:  ldelem.i4
    IL_0012:  ret
  } // end of method TerrainData::GetCellValueFast

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
    IL_0004:  call       instance int32 Game.TerrainData::GetCellValueFast(int32,
                                                                           int32,
                                                                           int32)
    IL_0009:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_000e:  ret
  } // end of method TerrainData::GetCellContentsFast

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
    IL_0004:  call       instance int32 Game.TerrainData::GetCellValueFast(int32,
                                                                           int32,
                                                                           int32)
    IL_0009:  call       int32 Game.TerrainData::ExtractLight(int32)
    IL_000e:  ret
  } // end of method TerrainData::GetCellLightFast

  .method public hidebysig instance void 
          SetCellValueFast(int32 index,
                           int32 'value') cil managed
  {
    // 代码大小       10 (0xa)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32[] Game.TerrainData::m_cells
    IL_0006:  ldarg.1
    IL_0007:  ldarg.2
    IL_0008:  stelem.i4
    IL_0009:  ret
  } // end of method TerrainData::SetCellValueFast

  .method public hidebysig instance void 
          SetCellValueFast(int32 x,
                           int32 y,
                           int32 z,
                           int32 'value') cil managed
  {
    // 代码大小       21 (0x15)
    .maxstack  4
    .locals init (int32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  ldarg.3
    IL_0004:  call       instance int32 Game.TerrainData::CalculateCellIndex(int32,
                                                                             int32,
                                                                             int32)
    IL_0009:  stloc.0
    IL_000a:  ldarg.0
    IL_000b:  ldfld      int32[] Game.TerrainData::m_cells
    IL_0010:  ldloc.0
    IL_0011:  ldarg.s    'value'
    IL_0013:  stelem.i4
    IL_0014:  ret
  } // end of method TerrainData::SetCellValueFast

  .method public hidebysig instance int32 
          CalculateTopmostCellHeight(int32 x,
                                     int32 z) cil managed
  {
    // 代码大小       54 (0x36)
    .maxstack  4
    .locals init (int32 V_0,
             int32 V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.0
    IL_0003:  ldfld      int32 Game.TerrainData::m_sizeMinusOneY
    IL_0008:  ldarg.2
    IL_0009:  call       instance int32 Game.TerrainData::CalculateCellIndex(int32,
                                                                             int32,
                                                                             int32)
    IL_000e:  stloc.0
    IL_000f:  ldarg.0
    IL_0010:  ldfld      int32 Game.TerrainData::m_sizeMinusOneY
    IL_0015:  stloc.1
    IL_0016:  br.s       IL_0030

    IL_0018:  ldarg.0
    IL_0019:  ldloc.0
    IL_001a:  call       instance int32 Game.TerrainData::GetCellValueFast(int32)
    IL_001f:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0024:  brfalse.s  IL_0028

    IL_0026:  ldloc.1
    IL_0027:  ret

    IL_0028:  ldloc.1
    IL_0029:  ldc.i4.1
    IL_002a:  sub
    IL_002b:  stloc.1
    IL_002c:  ldloc.0
    IL_002d:  ldc.i4.1
    IL_002e:  sub
    IL_002f:  stloc.0
    IL_0030:  ldloc.1
    IL_0031:  ldc.i4.0
    IL_0032:  bge.s      IL_0018

    IL_0034:  ldc.i4.0
    IL_0035:  ret
  } // end of method TerrainData::CalculateTopmostCellHeight

  .method public hidebysig instance bool 
          IsShaftValid(int32 x,
                       int32 z) cil managed
  {
    // 代码大小       53 (0x35)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  ldfld      int32 Game.TerrainData::m_originX
    IL_0007:  blt.s      IL_0033

    IL_0009:  ldarg.1
    IL_000a:  ldarg.0
    IL_000b:  ldfld      int32 Game.TerrainData::m_originX
    IL_0010:  ldarg.0
    IL_0011:  ldfld      int32 Game.TerrainData::m_sizeX
    IL_0016:  add
    IL_0017:  bge.s      IL_0033

    IL_0019:  ldarg.2
    IL_001a:  ldarg.0
    IL_001b:  ldfld      int32 Game.TerrainData::m_originZ
    IL_0020:  blt.s      IL_0033

    IL_0022:  ldarg.2
    IL_0023:  ldarg.0
    IL_0024:  ldfld      int32 Game.TerrainData::m_originZ
    IL_0029:  ldarg.0
    IL_002a:  ldfld      int32 Game.TerrainData::m_sizeZ
    IL_002f:  add
    IL_0030:  clt
    IL_0032:  ret

    IL_0033:  ldc.i4.0
    IL_0034:  ret
  } // end of method TerrainData::IsShaftValid

  .method public hidebysig instance int32 
          GetShaftValueFast(int32 x,
                            int32 z) cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  3
    .locals init (int32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  call       instance int32 Game.TerrainData::CalculateShaftIndex(int32,
                                                                              int32)
    IL_0008:  stloc.0
    IL_0009:  ldarg.0
    IL_000a:  ldfld      int32[] Game.TerrainData::m_shafts
    IL_000f:  ldloc.0
    IL_0010:  ldelem.i4
    IL_0011:  ret
  } // end of method TerrainData::GetShaftValueFast

  .method public hidebysig instance void 
          SetShaftValueFast(int32 x,
                            int32 z,
                            int32 'value') cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  3
    .locals init (int32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  call       instance int32 Game.TerrainData::CalculateShaftIndex(int32,
                                                                              int32)
    IL_0008:  stloc.0
    IL_0009:  ldarg.0
    IL_000a:  ldfld      int32[] Game.TerrainData::m_shafts
    IL_000f:  ldloc.0
    IL_0010:  ldarg.3
    IL_0011:  stelem.i4
    IL_0012:  ret
  } // end of method TerrainData::SetShaftValueFast

  .method public hidebysig instance int32 
          GetTopHeightFast(int32 x,
                           int32 z) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  3
    .locals init (int32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  call       instance int32 Game.TerrainData::CalculateShaftIndex(int32,
                                                                              int32)
    IL_0008:  stloc.0
    IL_0009:  ldarg.0
    IL_000a:  ldfld      int32[] Game.TerrainData::m_shafts
    IL_000f:  ldloc.0
    IL_0010:  ldelem.i4
    IL_0011:  call       int32 Game.TerrainData::ExtractTopHeight(int32)
    IL_0016:  ret
  } // end of method TerrainData::GetTopHeightFast

  .method public hidebysig instance int32 
          GetBottomHeightFast(int32 x,
                              int32 z) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  3
    .locals init (int32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  call       instance int32 Game.TerrainData::CalculateShaftIndex(int32,
                                                                              int32)
    IL_0008:  stloc.0
    IL_0009:  ldarg.0
    IL_000a:  ldfld      int32[] Game.TerrainData::m_shafts
    IL_000f:  ldloc.0
    IL_0010:  ldelem.i4
    IL_0011:  call       int32 Game.TerrainData::ExtractBottomHeight(int32)
    IL_0016:  ret
  } // end of method TerrainData::GetBottomHeightFast

  .method public hidebysig instance void 
          SetTopHeightFast(int32 x,
                           int32 z,
                           int32 topHeight) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  4
    .locals init (int32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  call       instance int32 Game.TerrainData::CalculateShaftIndex(int32,
                                                                              int32)
    IL_0008:  stloc.0
    IL_0009:  ldarg.0
    IL_000a:  ldfld      int32[] Game.TerrainData::m_shafts
    IL_000f:  ldloc.0
    IL_0010:  ldarg.0
    IL_0011:  ldfld      int32[] Game.TerrainData::m_shafts
    IL_0016:  ldloc.0
    IL_0017:  ldelem.i4
    IL_0018:  ldarg.3
    IL_0019:  call       int32 Game.TerrainData::ReplaceTopHeight(int32,
                                                                  int32)
    IL_001e:  stelem.i4
    IL_001f:  ret
  } // end of method TerrainData::SetTopHeightFast

  .method public hidebysig instance void 
          SetBottomHeightFast(int32 x,
                              int32 z,
                              int32 bottomHeight) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  4
    .locals init (int32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  call       instance int32 Game.TerrainData::CalculateShaftIndex(int32,
                                                                              int32)
    IL_0008:  stloc.0
    IL_0009:  ldarg.0
    IL_000a:  ldfld      int32[] Game.TerrainData::m_shafts
    IL_000f:  ldloc.0
    IL_0010:  ldarg.0
    IL_0011:  ldfld      int32[] Game.TerrainData::m_shafts
    IL_0016:  ldloc.0
    IL_0017:  ldelem.i4
    IL_0018:  ldarg.3
    IL_0019:  call       int32 Game.TerrainData::ReplaceBottomHeight(int32,
                                                                     int32)
    IL_001e:  stelem.i4
    IL_001f:  ret
  } // end of method TerrainData::SetBottomHeightFast

  .method public hidebysig instance int32 
          GetHumidityFast(int32 x,
                          int32 z) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  3
    .locals init (int32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  call       instance int32 Game.TerrainData::CalculateShaftIndex(int32,
                                                                              int32)
    IL_0008:  stloc.0
    IL_0009:  ldarg.0
    IL_000a:  ldfld      int32[] Game.TerrainData::m_shafts
    IL_000f:  ldloc.0
    IL_0010:  ldelem.i4
    IL_0011:  call       int32 Game.TerrainData::ExtractHumidity(int32)
    IL_0016:  ret
  } // end of method TerrainData::GetHumidityFast

  .method public hidebysig instance void 
          SetHumidityFast(int32 x,
                          int32 z,
                          int32 humidity) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  4
    .locals init (int32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  call       instance int32 Game.TerrainData::CalculateShaftIndex(int32,
                                                                              int32)
    IL_0008:  stloc.0
    IL_0009:  ldarg.0
    IL_000a:  ldfld      int32[] Game.TerrainData::m_shafts
    IL_000f:  ldloc.0
    IL_0010:  ldarg.0
    IL_0011:  ldfld      int32[] Game.TerrainData::m_shafts
    IL_0016:  ldloc.0
    IL_0017:  ldelem.i4
    IL_0018:  ldarg.3
    IL_0019:  call       int32 Game.TerrainData::ReplaceHumidity(int32,
                                                                 int32)
    IL_001e:  stelem.i4
    IL_001f:  ret
  } // end of method TerrainData::SetHumidityFast

  .method public hidebysig instance int32 
          GetTemperatureFast(int32 x,
                             int32 z) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  3
    .locals init (int32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  call       instance int32 Game.TerrainData::CalculateShaftIndex(int32,
                                                                              int32)
    IL_0008:  stloc.0
    IL_0009:  ldarg.0
    IL_000a:  ldfld      int32[] Game.TerrainData::m_shafts
    IL_000f:  ldloc.0
    IL_0010:  ldelem.i4
    IL_0011:  call       int32 Game.TerrainData::ExtractTemperature(int32)
    IL_0016:  ret
  } // end of method TerrainData::GetTemperatureFast

  .method public hidebysig instance void 
          SetTemperatureFast(int32 x,
                             int32 z,
                             int32 temperature) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  4
    .locals init (int32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  call       instance int32 Game.TerrainData::CalculateShaftIndex(int32,
                                                                              int32)
    IL_0008:  stloc.0
    IL_0009:  ldarg.0
    IL_000a:  ldfld      int32[] Game.TerrainData::m_shafts
    IL_000f:  ldloc.0
    IL_0010:  ldarg.0
    IL_0011:  ldfld      int32[] Game.TerrainData::m_shafts
    IL_0016:  ldloc.0
    IL_0017:  ldelem.i4
    IL_0018:  ldarg.3
    IL_0019:  call       int32 Game.TerrainData::ReplaceTemperature(int32,
                                                                    int32)
    IL_001e:  stelem.i4
    IL_001f:  ret
  } // end of method TerrainData::SetTemperatureFast

  .method public hidebysig static int32  MakeBlockValue(int32 contents) cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4     0x3ff
    IL_0006:  and
    IL_0007:  ret
  } // end of method TerrainData::MakeBlockValue

  .method public hidebysig static int32  MakeBlockValue(int32 contents,
                                                        int32 light,
                                                        int32 data) cil managed
  {
    // 代码大小       30 (0x1e)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4     0x3ff
    IL_0006:  and
    IL_0007:  ldarg.1
    IL_0008:  ldc.i4.s   10
    IL_000a:  shl
    IL_000b:  ldc.i4     0x3c00
    IL_0010:  and
    IL_0011:  or
    IL_0012:  ldarg.2
    IL_0013:  ldc.i4.s   14
    IL_0015:  shl
    IL_0016:  ldc.i4     0xffffc000
    IL_001b:  and
    IL_001c:  or
    IL_001d:  ret
  } // end of method TerrainData::MakeBlockValue

  .method public hidebysig static int32  ExtractContents(int32 'value') cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4     0x3ff
    IL_0006:  and
    IL_0007:  ret
  } // end of method TerrainData::ExtractContents

  .method public hidebysig static int32  ExtractLight(int32 'value') cil managed
  {
    // 代码大小       11 (0xb)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4     0x3c00
    IL_0006:  and
    IL_0007:  ldc.i4.s   10
    IL_0009:  shr
    IL_000a:  ret
  } // end of method TerrainData::ExtractLight

  .method public hidebysig static int32  ExtractData(int32 'value') cil managed
  {
    // 代码大小       11 (0xb)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4     0xffffc000
    IL_0006:  and
    IL_0007:  ldc.i4.s   14
    IL_0009:  shr
    IL_000a:  ret
  } // end of method TerrainData::ExtractData

  .method public hidebysig static int32  ExtractTopHeight(int32 'value') cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4     0xff
    IL_0006:  and
    IL_0007:  ret
  } // end of method TerrainData::ExtractTopHeight

  .method public hidebysig static int32  ExtractBottomHeight(int32 'value') cil managed
  {
    // 代码大小       11 (0xb)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4     0xff0000
    IL_0006:  and
    IL_0007:  ldc.i4.s   16
    IL_0009:  shr
    IL_000a:  ret
  } // end of method TerrainData::ExtractBottomHeight

  .method public hidebysig static int32  ExtractHumidity(int32 'value') cil managed
  {
    // 代码大小       11 (0xb)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4     0xf000
    IL_0006:  and
    IL_0007:  ldc.i4.s   12
    IL_0009:  shr
    IL_000a:  ret
  } // end of method TerrainData::ExtractHumidity

  .method public hidebysig static int32  ExtractTemperature(int32 'value') cil managed
  {
    // 代码大小       10 (0xa)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4     0xf00
    IL_0006:  and
    IL_0007:  ldc.i4.8
    IL_0008:  shr
    IL_0009:  ret
  } // end of method TerrainData::ExtractTemperature

  .method public hidebysig static int32  ReplaceContents(int32 'value',
                                                         int32 contents) cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  xor
    IL_0004:  ldc.i4     0x3ff
    IL_0009:  and
    IL_000a:  xor
    IL_000b:  ret
  } // end of method TerrainData::ReplaceContents

  .method public hidebysig static int32  ReplaceLight(int32 'value',
                                                      int32 light) cil managed
  {
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  ldc.i4.s   10
    IL_0005:  shl
    IL_0006:  xor
    IL_0007:  ldc.i4     0x3c00
    IL_000c:  and
    IL_000d:  xor
    IL_000e:  ret
  } // end of method TerrainData::ReplaceLight

  .method public hidebysig static int32  ReplaceData(int32 'value',
                                                     int32 data) cil managed
  {
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  ldc.i4.s   14
    IL_0005:  shl
    IL_0006:  xor
    IL_0007:  ldc.i4     0xffffc000
    IL_000c:  and
    IL_000d:  xor
    IL_000e:  ret
  } // end of method TerrainData::ReplaceData

  .method public hidebysig static int32  ReplaceTopHeight(int32 'value',
                                                          int32 topHeight) cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  xor
    IL_0004:  ldc.i4     0xff
    IL_0009:  and
    IL_000a:  xor
    IL_000b:  ret
  } // end of method TerrainData::ReplaceTopHeight

  .method public hidebysig static int32  ReplaceBottomHeight(int32 'value',
                                                             int32 bottomHeight) cil managed
  {
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  ldc.i4.s   16
    IL_0005:  shl
    IL_0006:  xor
    IL_0007:  ldc.i4     0xff0000
    IL_000c:  and
    IL_000d:  xor
    IL_000e:  ret
  } // end of method TerrainData::ReplaceBottomHeight

  .method public hidebysig static int32  ReplaceHumidity(int32 'value',
                                                         int32 humidity) cil managed
  {
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  ldc.i4.s   12
    IL_0005:  shl
    IL_0006:  xor
    IL_0007:  ldc.i4     0xf000
    IL_000c:  and
    IL_000d:  xor
    IL_000e:  ret
  } // end of method TerrainData::ReplaceHumidity

  .method public hidebysig static int32  ReplaceTemperature(int32 'value',
                                                            int32 temperature) cil managed
  {
    // 代码大小       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  ldc.i4.8
    IL_0004:  shl
    IL_0005:  xor
    IL_0006:  ldc.i4     0xf00
    IL_000b:  and
    IL_000c:  xor
    IL_000d:  ret
  } // end of method TerrainData::ReplaceTemperature

  .property instance int32 SizeX()
  {
    .get instance int32 Game.TerrainData::get_SizeX()
  } // end of property TerrainData::SizeX
  .property instance int32 SizeY()
  {
    .get instance int32 Game.TerrainData::get_SizeY()
  } // end of property TerrainData::SizeY
  .property instance int32 SizeZ()
  {
    .get instance int32 Game.TerrainData::get_SizeZ()
  } // end of property TerrainData::SizeZ
  .property instance valuetype [Engine]Engine.Point2
          Origin()
  {
    .get instance valuetype [Engine]Engine.Point2 Game.TerrainData::get_Origin()
    .set instance void Game.TerrainData::set_Origin(valuetype [Engine]Engine.Point2)
  } // end of property TerrainData::Origin
} // end of class Game.TerrainData