.class public auto ansi Game.TerrainContentsGenerator
       extends [System.Runtime]System.Object
       implements Game.ITerrainContentsGenerator
{
  .class auto ansi nested private beforefieldinit Grid2d
         extends [System.Runtime]System.Object
  {
    .field private int32 m_sizeX
    .field private int32 m_sizeY
    .field private float32[] m_data
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor(int32 sizeX,
                                 int32 sizeY) cil managed
    {
      // 代码大小       45 (0x2d)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ldarg.0
      IL_0007:  ldarg.1
      IL_0008:  stfld      int32 Game.TerrainContentsGenerator/Grid2d::m_sizeX
      IL_000d:  ldarg.0
      IL_000e:  ldarg.2
      IL_000f:  stfld      int32 Game.TerrainContentsGenerator/Grid2d::m_sizeY
      IL_0014:  ldarg.0
      IL_0015:  ldarg.0
      IL_0016:  ldfld      int32 Game.TerrainContentsGenerator/Grid2d::m_sizeX
      IL_001b:  ldarg.0
      IL_001c:  ldfld      int32 Game.TerrainContentsGenerator/Grid2d::m_sizeY
      IL_0021:  mul
      IL_0022:  newarr     [System.Runtime]System.Single
      IL_0027:  stfld      float32[] Game.TerrainContentsGenerator/Grid2d::m_data
      IL_002c:  ret
    } // end of method Grid2d::.ctor

    .method public hidebysig specialname 
            instance int32  get_SizeX() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.TerrainContentsGenerator/Grid2d::m_sizeX
      IL_0006:  ret
    } // end of method Grid2d::get_SizeX

    .method public hidebysig specialname 
            instance int32  get_SizeY() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.TerrainContentsGenerator/Grid2d::m_sizeY
      IL_0006:  ret
    } // end of method Grid2d::get_SizeY

    .method public hidebysig instance float32 
            Get(int32 x,
                int32 y) cil managed
    {
      // 代码大小       18 (0x12)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      float32[] Game.TerrainContentsGenerator/Grid2d::m_data
      IL_0006:  ldarg.1
      IL_0007:  ldarg.2
      IL_0008:  ldarg.0
      IL_0009:  ldfld      int32 Game.TerrainContentsGenerator/Grid2d::m_sizeX
      IL_000e:  mul
      IL_000f:  add
      IL_0010:  ldelem.r4
      IL_0011:  ret
    } // end of method Grid2d::Get

    .method public hidebysig instance void 
            Set(int32 x,
                int32 y,
                float32 'value') cil managed
    {
      // 代码大小       19 (0x13)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      float32[] Game.TerrainContentsGenerator/Grid2d::m_data
      IL_0006:  ldarg.1
      IL_0007:  ldarg.2
      IL_0008:  ldarg.0
      IL_0009:  ldfld      int32 Game.TerrainContentsGenerator/Grid2d::m_sizeX
      IL_000e:  mul
      IL_000f:  add
      IL_0010:  ldarg.3
      IL_0011:  stelem.r4
      IL_0012:  ret
    } // end of method Grid2d::Set

    .method public hidebysig instance float32 
            Sample(float32 x,
                   float32 y) cil managed
    {
      // 代码大小       150 (0x96)
      .maxstack  5
      .locals init (int32 V_0,
               int32 V_1,
               int32 V_2,
               int32 V_3,
               float32 V_4,
               float32 V_5,
               float32 V_6,
               float32 V_7,
               float32 V_8,
               float32 V_9)
      IL_0000:  ldarg.1
      IL_0001:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
      IL_0006:  conv.i4
      IL_0007:  stloc.0
      IL_0008:  ldarg.2
      IL_0009:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
      IL_000e:  conv.i4
      IL_000f:  stloc.1
      IL_0010:  ldarg.1
      IL_0011:  call       float32 [Engine]Engine.MathUtils::Ceiling(float32)
      IL_0016:  conv.i4
      IL_0017:  stloc.2
      IL_0018:  ldarg.2
      IL_0019:  call       float32 [Engine]Engine.MathUtils::Ceiling(float32)
      IL_001e:  conv.i4
      IL_001f:  stloc.3
      IL_0020:  ldarg.1
      IL_0021:  ldloc.0
      IL_0022:  conv.r4
      IL_0023:  sub
      IL_0024:  stloc.s    V_4
      IL_0026:  ldarg.2
      IL_0027:  ldloc.1
      IL_0028:  conv.r4
      IL_0029:  sub
      IL_002a:  stloc.s    V_5
      IL_002c:  ldarg.0
      IL_002d:  ldfld      float32[] Game.TerrainContentsGenerator/Grid2d::m_data
      IL_0032:  ldloc.0
      IL_0033:  ldloc.1
      IL_0034:  ldarg.0
      IL_0035:  ldfld      int32 Game.TerrainContentsGenerator/Grid2d::m_sizeX
      IL_003a:  mul
      IL_003b:  add
      IL_003c:  ldelem.r4
      IL_003d:  ldarg.0
      IL_003e:  ldfld      float32[] Game.TerrainContentsGenerator/Grid2d::m_data
      IL_0043:  ldloc.2
      IL_0044:  ldloc.1
      IL_0045:  ldarg.0
      IL_0046:  ldfld      int32 Game.TerrainContentsGenerator/Grid2d::m_sizeX
      IL_004b:  mul
      IL_004c:  add
      IL_004d:  ldelem.r4
      IL_004e:  stloc.s    V_6
      IL_0050:  ldarg.0
      IL_0051:  ldfld      float32[] Game.TerrainContentsGenerator/Grid2d::m_data
      IL_0056:  ldloc.0
      IL_0057:  ldloc.3
      IL_0058:  ldarg.0
      IL_0059:  ldfld      int32 Game.TerrainContentsGenerator/Grid2d::m_sizeX
      IL_005e:  mul
      IL_005f:  add
      IL_0060:  ldelem.r4
      IL_0061:  stloc.s    V_7
      IL_0063:  ldarg.0
      IL_0064:  ldfld      float32[] Game.TerrainContentsGenerator/Grid2d::m_data
      IL_0069:  ldloc.2
      IL_006a:  ldloc.3
      IL_006b:  ldarg.0
      IL_006c:  ldfld      int32 Game.TerrainContentsGenerator/Grid2d::m_sizeX
      IL_0071:  mul
      IL_0072:  add
      IL_0073:  ldelem.r4
      IL_0074:  stloc.s    V_8
      IL_0076:  ldloc.s    V_6
      IL_0078:  ldloc.s    V_4
      IL_007a:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                  float32,
                                                                  float32)
      IL_007f:  ldloc.s    V_7
      IL_0081:  ldloc.s    V_8
      IL_0083:  ldloc.s    V_4
      IL_0085:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                  float32,
                                                                  float32)
      IL_008a:  stloc.s    V_9
      IL_008c:  ldloc.s    V_9
      IL_008e:  ldloc.s    V_5
      IL_0090:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                  float32,
                                                                  float32)
      IL_0095:  ret
    } // end of method Grid2d::Sample

    .property instance int32 SizeX()
    {
      .get instance int32 Game.TerrainContentsGenerator/Grid2d::get_SizeX()
    } // end of property Grid2d::SizeX
    .property instance int32 SizeY()
    {
      .get instance int32 Game.TerrainContentsGenerator/Grid2d::get_SizeY()
    } // end of property Grid2d::SizeY
  } // end of class Grid2d

  .class auto ansi nested private beforefieldinit Grid3d
         extends [System.Runtime]System.Object
  {
    .field private int32 m_sizeX
    .field private int32 m_sizeY
    .field private int32 m_sizeZ
    .field private int32 m_sizeXY
    .field private float32[] m_data
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor(int32 sizeX,
                                 int32 sizeY,
                                 int32 sizeZ) cil managed
    {
      // 代码大小       78 (0x4e)
      .maxstack  3
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ldarg.0
      IL_0007:  ldarg.1
      IL_0008:  stfld      int32 Game.TerrainContentsGenerator/Grid3d::m_sizeX
      IL_000d:  ldarg.0
      IL_000e:  ldarg.2
      IL_000f:  stfld      int32 Game.TerrainContentsGenerator/Grid3d::m_sizeY
      IL_0014:  ldarg.0
      IL_0015:  ldarg.3
      IL_0016:  stfld      int32 Game.TerrainContentsGenerator/Grid3d::m_sizeZ
      IL_001b:  ldarg.0
      IL_001c:  ldarg.0
      IL_001d:  ldfld      int32 Game.TerrainContentsGenerator/Grid3d::m_sizeX
      IL_0022:  ldarg.0
      IL_0023:  ldfld      int32 Game.TerrainContentsGenerator/Grid3d::m_sizeY
      IL_0028:  mul
      IL_0029:  stfld      int32 Game.TerrainContentsGenerator/Grid3d::m_sizeXY
      IL_002e:  ldarg.0
      IL_002f:  ldarg.0
      IL_0030:  ldfld      int32 Game.TerrainContentsGenerator/Grid3d::m_sizeX
      IL_0035:  ldarg.0
      IL_0036:  ldfld      int32 Game.TerrainContentsGenerator/Grid3d::m_sizeY
      IL_003b:  mul
      IL_003c:  ldarg.0
      IL_003d:  ldfld      int32 Game.TerrainContentsGenerator/Grid3d::m_sizeZ
      IL_0042:  mul
      IL_0043:  newarr     [System.Runtime]System.Single
      IL_0048:  stfld      float32[] Game.TerrainContentsGenerator/Grid3d::m_data
      IL_004d:  ret
    } // end of method Grid3d::.ctor

    .method public hidebysig specialname 
            instance int32  get_SizeX() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.TerrainContentsGenerator/Grid3d::m_sizeX
      IL_0006:  ret
    } // end of method Grid3d::get_SizeX

    .method public hidebysig specialname 
            instance int32  get_SizeY() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.TerrainContentsGenerator/Grid3d::m_sizeY
      IL_0006:  ret
    } // end of method Grid3d::get_SizeY

    .method public hidebysig specialname 
            instance int32  get_SizeZ() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.TerrainContentsGenerator/Grid3d::m_sizeZ
      IL_0006:  ret
    } // end of method Grid3d::get_SizeZ

    .method public hidebysig instance void 
            Get8(int32 x,
                 int32 y,
                 int32 z,
                 [out] float32& v111,
                 [out] float32& v211,
                 [out] float32& v121,
                 [out] float32& v221,
                 [out] float32& v112,
                 [out] float32& v212,
                 [out] float32& v122,
                 [out] float32& v222) cil managed
    {
      // 代码大小       173 (0xad)
      .maxstack  4
      .locals init (int32 V_0)
      IL_0000:  ldarg.1
      IL_0001:  ldarg.2
      IL_0002:  ldarg.0
      IL_0003:  ldfld      int32 Game.TerrainContentsGenerator/Grid3d::m_sizeX
      IL_0008:  mul
      IL_0009:  add
      IL_000a:  ldarg.3
      IL_000b:  ldarg.0
      IL_000c:  ldfld      int32 Game.TerrainContentsGenerator/Grid3d::m_sizeXY
      IL_0011:  mul
      IL_0012:  add
      IL_0013:  stloc.0
      IL_0014:  ldarg.s    v111
      IL_0016:  ldarg.0
      IL_0017:  ldfld      float32[] Game.TerrainContentsGenerator/Grid3d::m_data
      IL_001c:  ldloc.0
      IL_001d:  ldelem.r4
      IL_001e:  stind.r4
      IL_001f:  ldarg.s    v211
      IL_0021:  ldarg.0
      IL_0022:  ldfld      float32[] Game.TerrainContentsGenerator/Grid3d::m_data
      IL_0027:  ldloc.0
      IL_0028:  ldc.i4.1
      IL_0029:  add
      IL_002a:  ldelem.r4
      IL_002b:  stind.r4
      IL_002c:  ldarg.s    v121
      IL_002e:  ldarg.0
      IL_002f:  ldfld      float32[] Game.TerrainContentsGenerator/Grid3d::m_data
      IL_0034:  ldloc.0
      IL_0035:  ldarg.0
      IL_0036:  ldfld      int32 Game.TerrainContentsGenerator/Grid3d::m_sizeX
      IL_003b:  add
      IL_003c:  ldelem.r4
      IL_003d:  stind.r4
      IL_003e:  ldarg.s    v221
      IL_0040:  ldarg.0
      IL_0041:  ldfld      float32[] Game.TerrainContentsGenerator/Grid3d::m_data
      IL_0046:  ldloc.0
      IL_0047:  ldc.i4.1
      IL_0048:  add
      IL_0049:  ldarg.0
      IL_004a:  ldfld      int32 Game.TerrainContentsGenerator/Grid3d::m_sizeX
      IL_004f:  add
      IL_0050:  ldelem.r4
      IL_0051:  stind.r4
      IL_0052:  ldarg.s    v112
      IL_0054:  ldarg.0
      IL_0055:  ldfld      float32[] Game.TerrainContentsGenerator/Grid3d::m_data
      IL_005a:  ldloc.0
      IL_005b:  ldarg.0
      IL_005c:  ldfld      int32 Game.TerrainContentsGenerator/Grid3d::m_sizeXY
      IL_0061:  add
      IL_0062:  ldelem.r4
      IL_0063:  stind.r4
      IL_0064:  ldarg.s    v212
      IL_0066:  ldarg.0
      IL_0067:  ldfld      float32[] Game.TerrainContentsGenerator/Grid3d::m_data
      IL_006c:  ldloc.0
      IL_006d:  ldc.i4.1
      IL_006e:  add
      IL_006f:  ldarg.0
      IL_0070:  ldfld      int32 Game.TerrainContentsGenerator/Grid3d::m_sizeXY
      IL_0075:  add
      IL_0076:  ldelem.r4
      IL_0077:  stind.r4
      IL_0078:  ldarg.s    v122
      IL_007a:  ldarg.0
      IL_007b:  ldfld      float32[] Game.TerrainContentsGenerator/Grid3d::m_data
      IL_0080:  ldloc.0
      IL_0081:  ldarg.0
      IL_0082:  ldfld      int32 Game.TerrainContentsGenerator/Grid3d::m_sizeX
      IL_0087:  add
      IL_0088:  ldarg.0
      IL_0089:  ldfld      int32 Game.TerrainContentsGenerator/Grid3d::m_sizeXY
      IL_008e:  add
      IL_008f:  ldelem.r4
      IL_0090:  stind.r4
      IL_0091:  ldarg.s    v222
      IL_0093:  ldarg.0
      IL_0094:  ldfld      float32[] Game.TerrainContentsGenerator/Grid3d::m_data
      IL_0099:  ldloc.0
      IL_009a:  ldc.i4.1
      IL_009b:  add
      IL_009c:  ldarg.0
      IL_009d:  ldfld      int32 Game.TerrainContentsGenerator/Grid3d::m_sizeX
      IL_00a2:  add
      IL_00a3:  ldarg.0
      IL_00a4:  ldfld      int32 Game.TerrainContentsGenerator/Grid3d::m_sizeXY
      IL_00a9:  add
      IL_00aa:  ldelem.r4
      IL_00ab:  stind.r4
      IL_00ac:  ret
    } // end of method Grid3d::Get8

    .method public hidebysig instance float32 
            Get(int32 x,
                int32 y,
                int32 z) cil managed
    {
      // 代码大小       27 (0x1b)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      float32[] Game.TerrainContentsGenerator/Grid3d::m_data
      IL_0006:  ldarg.1
      IL_0007:  ldarg.2
      IL_0008:  ldarg.0
      IL_0009:  ldfld      int32 Game.TerrainContentsGenerator/Grid3d::m_sizeX
      IL_000e:  mul
      IL_000f:  add
      IL_0010:  ldarg.3
      IL_0011:  ldarg.0
      IL_0012:  ldfld      int32 Game.TerrainContentsGenerator/Grid3d::m_sizeXY
      IL_0017:  mul
      IL_0018:  add
      IL_0019:  ldelem.r4
      IL_001a:  ret
    } // end of method Grid3d::Get

    .method public hidebysig instance void 
            Set(int32 x,
                int32 y,
                int32 z,
                float32 'value') cil managed
    {
      // 代码大小       29 (0x1d)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      float32[] Game.TerrainContentsGenerator/Grid3d::m_data
      IL_0006:  ldarg.1
      IL_0007:  ldarg.2
      IL_0008:  ldarg.0
      IL_0009:  ldfld      int32 Game.TerrainContentsGenerator/Grid3d::m_sizeX
      IL_000e:  mul
      IL_000f:  add
      IL_0010:  ldarg.3
      IL_0011:  ldarg.0
      IL_0012:  ldfld      int32 Game.TerrainContentsGenerator/Grid3d::m_sizeXY
      IL_0017:  mul
      IL_0018:  add
      IL_0019:  ldarg.s    'value'
      IL_001b:  stelem.r4
      IL_001c:  ret
    } // end of method Grid3d::Set

    .method public hidebysig instance float32 
            Sample(float32 x,
                   float32 y,
                   float32 z) cil managed
    {
      // 代码大小       435 (0x1b3)
      .maxstack  5
      .locals init (int32 V_0,
               int32 V_1,
               int32 V_2,
               int32 V_3,
               int32 V_4,
               int32 V_5,
               float32 V_6,
               float32 V_7,
               float32 V_8,
               float32 V_9,
               float32 V_10,
               float32 V_11,
               float32 V_12,
               float32 V_13,
               float32 V_14,
               float32 V_15,
               float32 V_16,
               float32 V_17,
               float32 V_18,
               float32 V_19)
      IL_0000:  ldarg.1
      IL_0001:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
      IL_0006:  conv.i4
      IL_0007:  stloc.0
      IL_0008:  ldarg.1
      IL_0009:  call       float32 [Engine]Engine.MathUtils::Ceiling(float32)
      IL_000e:  conv.i4
      IL_000f:  stloc.1
      IL_0010:  ldarg.2
      IL_0011:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
      IL_0016:  conv.i4
      IL_0017:  stloc.2
      IL_0018:  ldarg.2
      IL_0019:  call       float32 [Engine]Engine.MathUtils::Ceiling(float32)
      IL_001e:  conv.i4
      IL_001f:  stloc.3
      IL_0020:  ldarg.3
      IL_0021:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
      IL_0026:  conv.i4
      IL_0027:  stloc.s    V_4
      IL_0029:  ldarg.3
      IL_002a:  call       float32 [Engine]Engine.MathUtils::Ceiling(float32)
      IL_002f:  conv.i4
      IL_0030:  stloc.s    V_5
      IL_0032:  ldarg.1
      IL_0033:  ldloc.0
      IL_0034:  conv.r4
      IL_0035:  sub
      IL_0036:  stloc.s    V_6
      IL_0038:  ldarg.2
      IL_0039:  ldloc.2
      IL_003a:  conv.r4
      IL_003b:  sub
      IL_003c:  stloc.s    V_7
      IL_003e:  ldarg.3
      IL_003f:  ldloc.s    V_4
      IL_0041:  conv.r4
      IL_0042:  sub
      IL_0043:  stloc.s    V_8
      IL_0045:  ldarg.0
      IL_0046:  ldfld      float32[] Game.TerrainContentsGenerator/Grid3d::m_data
      IL_004b:  ldloc.0
      IL_004c:  ldloc.2
      IL_004d:  ldarg.0
      IL_004e:  ldfld      int32 Game.TerrainContentsGenerator/Grid3d::m_sizeX
      IL_0053:  mul
      IL_0054:  add
      IL_0055:  ldloc.s    V_4
      IL_0057:  ldarg.0
      IL_0058:  ldfld      int32 Game.TerrainContentsGenerator/Grid3d::m_sizeX
      IL_005d:  mul
      IL_005e:  ldarg.0
      IL_005f:  ldfld      int32 Game.TerrainContentsGenerator/Grid3d::m_sizeY
      IL_0064:  mul
      IL_0065:  add
      IL_0066:  ldelem.r4
      IL_0067:  ldarg.0
      IL_0068:  ldfld      float32[] Game.TerrainContentsGenerator/Grid3d::m_data
      IL_006d:  ldloc.1
      IL_006e:  ldloc.2
      IL_006f:  ldarg.0
      IL_0070:  ldfld      int32 Game.TerrainContentsGenerator/Grid3d::m_sizeX
      IL_0075:  mul
      IL_0076:  add
      IL_0077:  ldloc.s    V_4
      IL_0079:  ldarg.0
      IL_007a:  ldfld      int32 Game.TerrainContentsGenerator/Grid3d::m_sizeX
      IL_007f:  mul
      IL_0080:  ldarg.0
      IL_0081:  ldfld      int32 Game.TerrainContentsGenerator/Grid3d::m_sizeY
      IL_0086:  mul
      IL_0087:  add
      IL_0088:  ldelem.r4
      IL_0089:  stloc.s    V_9
      IL_008b:  ldarg.0
      IL_008c:  ldfld      float32[] Game.TerrainContentsGenerator/Grid3d::m_data
      IL_0091:  ldloc.0
      IL_0092:  ldloc.3
      IL_0093:  ldarg.0
      IL_0094:  ldfld      int32 Game.TerrainContentsGenerator/Grid3d::m_sizeX
      IL_0099:  mul
      IL_009a:  add
      IL_009b:  ldloc.s    V_4
      IL_009d:  ldarg.0
      IL_009e:  ldfld      int32 Game.TerrainContentsGenerator/Grid3d::m_sizeX
      IL_00a3:  mul
      IL_00a4:  ldarg.0
      IL_00a5:  ldfld      int32 Game.TerrainContentsGenerator/Grid3d::m_sizeY
      IL_00aa:  mul
      IL_00ab:  add
      IL_00ac:  ldelem.r4
      IL_00ad:  stloc.s    V_10
      IL_00af:  ldarg.0
      IL_00b0:  ldfld      float32[] Game.TerrainContentsGenerator/Grid3d::m_data
      IL_00b5:  ldloc.1
      IL_00b6:  ldloc.3
      IL_00b7:  ldarg.0
      IL_00b8:  ldfld      int32 Game.TerrainContentsGenerator/Grid3d::m_sizeX
      IL_00bd:  mul
      IL_00be:  add
      IL_00bf:  ldloc.s    V_4
      IL_00c1:  ldarg.0
      IL_00c2:  ldfld      int32 Game.TerrainContentsGenerator/Grid3d::m_sizeX
      IL_00c7:  mul
      IL_00c8:  ldarg.0
      IL_00c9:  ldfld      int32 Game.TerrainContentsGenerator/Grid3d::m_sizeY
      IL_00ce:  mul
      IL_00cf:  add
      IL_00d0:  ldelem.r4
      IL_00d1:  stloc.s    V_11
      IL_00d3:  ldarg.0
      IL_00d4:  ldfld      float32[] Game.TerrainContentsGenerator/Grid3d::m_data
      IL_00d9:  ldloc.0
      IL_00da:  ldloc.2
      IL_00db:  ldarg.0
      IL_00dc:  ldfld      int32 Game.TerrainContentsGenerator/Grid3d::m_sizeX
      IL_00e1:  mul
      IL_00e2:  add
      IL_00e3:  ldloc.s    V_5
      IL_00e5:  ldarg.0
      IL_00e6:  ldfld      int32 Game.TerrainContentsGenerator/Grid3d::m_sizeX
      IL_00eb:  mul
      IL_00ec:  ldarg.0
      IL_00ed:  ldfld      int32 Game.TerrainContentsGenerator/Grid3d::m_sizeY
      IL_00f2:  mul
      IL_00f3:  add
      IL_00f4:  ldelem.r4
      IL_00f5:  stloc.s    V_12
      IL_00f7:  ldarg.0
      IL_00f8:  ldfld      float32[] Game.TerrainContentsGenerator/Grid3d::m_data
      IL_00fd:  ldloc.1
      IL_00fe:  ldloc.2
      IL_00ff:  ldarg.0
      IL_0100:  ldfld      int32 Game.TerrainContentsGenerator/Grid3d::m_sizeX
      IL_0105:  mul
      IL_0106:  add
      IL_0107:  ldloc.s    V_5
      IL_0109:  ldarg.0
      IL_010a:  ldfld      int32 Game.TerrainContentsGenerator/Grid3d::m_sizeX
      IL_010f:  mul
      IL_0110:  ldarg.0
      IL_0111:  ldfld      int32 Game.TerrainContentsGenerator/Grid3d::m_sizeY
      IL_0116:  mul
      IL_0117:  add
      IL_0118:  ldelem.r4
      IL_0119:  stloc.s    V_13
      IL_011b:  ldarg.0
      IL_011c:  ldfld      float32[] Game.TerrainContentsGenerator/Grid3d::m_data
      IL_0121:  ldloc.0
      IL_0122:  ldloc.3
      IL_0123:  ldarg.0
      IL_0124:  ldfld      int32 Game.TerrainContentsGenerator/Grid3d::m_sizeX
      IL_0129:  mul
      IL_012a:  add
      IL_012b:  ldloc.s    V_5
      IL_012d:  ldarg.0
      IL_012e:  ldfld      int32 Game.TerrainContentsGenerator/Grid3d::m_sizeX
      IL_0133:  mul
      IL_0134:  ldarg.0
      IL_0135:  ldfld      int32 Game.TerrainContentsGenerator/Grid3d::m_sizeY
      IL_013a:  mul
      IL_013b:  add
      IL_013c:  ldelem.r4
      IL_013d:  stloc.s    V_14
      IL_013f:  ldarg.0
      IL_0140:  ldfld      float32[] Game.TerrainContentsGenerator/Grid3d::m_data
      IL_0145:  ldloc.1
      IL_0146:  ldloc.3
      IL_0147:  ldarg.0
      IL_0148:  ldfld      int32 Game.TerrainContentsGenerator/Grid3d::m_sizeX
      IL_014d:  mul
      IL_014e:  add
      IL_014f:  ldloc.s    V_5
      IL_0151:  ldarg.0
      IL_0152:  ldfld      int32 Game.TerrainContentsGenerator/Grid3d::m_sizeX
      IL_0157:  mul
      IL_0158:  ldarg.0
      IL_0159:  ldfld      int32 Game.TerrainContentsGenerator/Grid3d::m_sizeY
      IL_015e:  mul
      IL_015f:  add
      IL_0160:  ldelem.r4
      IL_0161:  stloc.s    V_15
      IL_0163:  ldloc.s    V_9
      IL_0165:  ldloc.s    V_6
      IL_0167:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                  float32,
                                                                  float32)
      IL_016c:  ldloc.s    V_10
      IL_016e:  ldloc.s    V_11
      IL_0170:  ldloc.s    V_6
      IL_0172:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                  float32,
                                                                  float32)
      IL_0177:  stloc.s    V_16
      IL_0179:  ldloc.s    V_12
      IL_017b:  ldloc.s    V_13
      IL_017d:  ldloc.s    V_6
      IL_017f:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                  float32,
                                                                  float32)
      IL_0184:  stloc.s    V_17
      IL_0186:  ldloc.s    V_14
      IL_0188:  ldloc.s    V_15
      IL_018a:  ldloc.s    V_6
      IL_018c:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                  float32,
                                                                  float32)
      IL_0191:  stloc.s    V_18
      IL_0193:  ldloc.s    V_16
      IL_0195:  ldloc.s    V_7
      IL_0197:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                  float32,
                                                                  float32)
      IL_019c:  ldloc.s    V_17
      IL_019e:  ldloc.s    V_18
      IL_01a0:  ldloc.s    V_7
      IL_01a2:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                  float32,
                                                                  float32)
      IL_01a7:  stloc.s    V_19
      IL_01a9:  ldloc.s    V_19
      IL_01ab:  ldloc.s    V_8
      IL_01ad:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                  float32,
                                                                  float32)
      IL_01b2:  ret
    } // end of method Grid3d::Sample

    .property instance int32 SizeX()
    {
      .get instance int32 Game.TerrainContentsGenerator/Grid3d::get_SizeX()
    } // end of property Grid3d::SizeX
    .property instance int32 SizeY()
    {
      .get instance int32 Game.TerrainContentsGenerator/Grid3d::get_SizeY()
    } // end of property Grid3d::SizeY
    .property instance int32 SizeZ()
    {
      .get instance int32 Game.TerrainContentsGenerator/Grid3d::get_SizeZ()
    } // end of property Grid3d::SizeZ
  } // end of class Grid3d

  .class auto ansi nested private beforefieldinit CavePoint
         extends [System.Runtime]System.Object
  {
    .field public valuetype [Engine]Engine.Vector3 Position
    .field public valuetype [Engine]Engine.Vector3 Direction
    .field public int32 BrushType
    .field public int32 Length
    .field public int32 StepsTaken
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method CavePoint::.ctor

  } // end of class CavePoint

  .field private static class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> m_coalBrushes
  .field private static class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> m_ironBrushes
  .field private static class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> m_copperBrushes
  .field private static class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> m_saltpeterBrushes
  .field private static class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> m_sulphurBrushes
  .field private static class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> m_diamondBrushes
  .field private static class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> m_germaniumBrushes
  .field private static class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> m_dirtPocketBrushes
  .field private static class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> m_gravelPocketBrushes
  .field private static class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> m_limestonePocketBrushes
  .field private static class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> m_sandPocketBrushes
  .field private static class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> m_basaltPocketBrushes
  .field private static class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> m_granitePocketBrushes
  .field private static class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> m_clayPocketBrushes
  .field private static class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> m_waterPocketBrushes
  .field private static class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> m_magmaPocketBrushes
  .field private static class [System.Collections]System.Collections.Generic.List`1<class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>> m_caveBrushesByType
  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.WorldInfo m_worldInfo
  .field private int32 m_seed
  .field private valuetype [Engine]Engine.Vector2 m_oceanCorner
  .field public float32 TGDensityBias
  .field public float32 TGHeightBias
  .field public float32 TGHillsStrength
  .field public float32 TGMountainsStrength
  .field public float32 TGTurbulenceStrength
  .field public float32 TGTurbulenceTopOffset
  .field public float32 TGTurbulencePower
  .field public bool TGWater
  .field public bool TGExtras
  .field public bool TGCavesAndPockets
  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       176 (0xb0)
    .maxstack  1
    IL_0000:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::.ctor()
    IL_0005:  stsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_coalBrushes
    IL_000a:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::.ctor()
    IL_000f:  stsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_ironBrushes
    IL_0014:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::.ctor()
    IL_0019:  stsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_copperBrushes
    IL_001e:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::.ctor()
    IL_0023:  stsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_saltpeterBrushes
    IL_0028:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::.ctor()
    IL_002d:  stsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_sulphurBrushes
    IL_0032:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::.ctor()
    IL_0037:  stsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_diamondBrushes
    IL_003c:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::.ctor()
    IL_0041:  stsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_germaniumBrushes
    IL_0046:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::.ctor()
    IL_004b:  stsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_dirtPocketBrushes
    IL_0050:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::.ctor()
    IL_0055:  stsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_gravelPocketBrushes
    IL_005a:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::.ctor()
    IL_005f:  stsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_limestonePocketBrushes
    IL_0064:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::.ctor()
    IL_0069:  stsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_sandPocketBrushes
    IL_006e:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::.ctor()
    IL_0073:  stsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_basaltPocketBrushes
    IL_0078:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::.ctor()
    IL_007d:  stsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_granitePocketBrushes
    IL_0082:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::.ctor()
    IL_0087:  stsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_clayPocketBrushes
    IL_008c:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::.ctor()
    IL_0091:  stsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_waterPocketBrushes
    IL_0096:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::.ctor()
    IL_009b:  stsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_magmaPocketBrushes
    IL_00a0:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>>::.ctor()
    IL_00a5:  stsfld     class [System.Collections]System.Collections.Generic.List`1<class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>> Game.TerrainContentsGenerator::m_caveBrushesByType
    IL_00aa:  call       void Game.TerrainContentsGenerator::CreateBrushes()
    IL_00af:  ret
  } // end of method TerrainContentsGenerator::.cctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.SubsystemTerrain subsystemTerrain) cil managed
  {
    // 代码大小       324 (0x144)
    .maxstack  5
    .locals init (class Game.SubsystemGameInfo V_0,
             class Game.OldRandom V_1)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  stfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_000d:  ldarg.1
    IL_000e:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0013:  ldc.i4.1
    IL_0014:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGameInfo>(bool)
    IL_0019:  stloc.0
    IL_001a:  ldarg.0
    IL_001b:  ldloc.0
    IL_001c:  callvirt   instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
    IL_0021:  stfld      class Game.WorldInfo Game.TerrainContentsGenerator::m_worldInfo
    IL_0026:  ldarg.0
    IL_0027:  ldloc.0
    IL_0028:  callvirt   instance int32 Game.SubsystemGameInfo::get_WorldSeed()
    IL_002d:  stfld      int32 Game.TerrainContentsGenerator::m_seed
    IL_0032:  ldc.i4.s   100
    IL_0034:  ldarg.0
    IL_0035:  ldfld      int32 Game.TerrainContentsGenerator::m_seed
    IL_003a:  add
    IL_003b:  newobj     instance void Game.OldRandom::.ctor(int32)
    IL_0040:  stloc.1
    IL_0041:  ldarg.0
    IL_0042:  ldloc.1
    IL_0043:  ldc.r4     2000.
    IL_0048:  ldc.r4     4000.
    IL_004d:  callvirt   instance float32 Game.OldRandom::UniformFloat(float32,
                                                                       float32)
    IL_0052:  ldloc.1
    IL_0053:  ldc.r4     2000.
    IL_0058:  ldc.r4     4000.
    IL_005d:  callvirt   instance float32 Game.OldRandom::UniformFloat(float32,
                                                                       float32)
    IL_0062:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0067:  stfld      valuetype [Engine]Engine.Vector2 Game.TerrainContentsGenerator::m_oceanCorner
    IL_006c:  ldloc.0
    IL_006d:  callvirt   instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
    IL_0072:  ldfld      string Game.WorldInfo::OriginalSerializationVersion
    IL_0077:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_007c:  brfalse.s  IL_00e1

    IL_007e:  ldarg.0
    IL_007f:  ldc.r4     57.
    IL_0084:  stfld      float32 Game.TerrainContentsGenerator::TGDensityBias
    IL_0089:  ldarg.0
    IL_008a:  ldc.r4     1.
    IL_008f:  stfld      float32 Game.TerrainContentsGenerator::TGHeightBias
    IL_0094:  ldarg.0
    IL_0095:  ldc.r4     56.
    IL_009a:  stfld      float32 Game.TerrainContentsGenerator::TGMountainsStrength
    IL_009f:  ldarg.0
    IL_00a0:  ldc.r4     13.
    IL_00a5:  stfld      float32 Game.TerrainContentsGenerator::TGHillsStrength
    IL_00aa:  ldarg.0
    IL_00ab:  ldc.r4     13.
    IL_00b0:  stfld      float32 Game.TerrainContentsGenerator::TGTurbulenceStrength
    IL_00b5:  ldarg.0
    IL_00b6:  ldc.r4     3.
    IL_00bb:  stfld      float32 Game.TerrainContentsGenerator::TGTurbulenceTopOffset
    IL_00c0:  ldarg.0
    IL_00c1:  ldc.r4     0.5
    IL_00c6:  stfld      float32 Game.TerrainContentsGenerator::TGTurbulencePower
    IL_00cb:  ldarg.0
    IL_00cc:  ldc.i4.1
    IL_00cd:  stfld      bool Game.TerrainContentsGenerator::TGWater
    IL_00d2:  ldarg.0
    IL_00d3:  ldc.i4.1
    IL_00d4:  stfld      bool Game.TerrainContentsGenerator::TGExtras
    IL_00d9:  ldarg.0
    IL_00da:  ldc.i4.1
    IL_00db:  stfld      bool Game.TerrainContentsGenerator::TGCavesAndPockets
    IL_00e0:  ret

    IL_00e1:  ldarg.0
    IL_00e2:  ldc.r4     57.
    IL_00e7:  stfld      float32 Game.TerrainContentsGenerator::TGDensityBias
    IL_00ec:  ldarg.0
    IL_00ed:  ldc.r4     1.
    IL_00f2:  stfld      float32 Game.TerrainContentsGenerator::TGHeightBias
    IL_00f7:  ldarg.0
    IL_00f8:  ldc.r4     50.
    IL_00fd:  stfld      float32 Game.TerrainContentsGenerator::TGMountainsStrength
    IL_0102:  ldarg.0
    IL_0103:  ldc.r4     10.
    IL_0108:  stfld      float32 Game.TerrainContentsGenerator::TGHillsStrength
    IL_010d:  ldarg.0
    IL_010e:  ldc.r4     24.
    IL_0113:  stfld      float32 Game.TerrainContentsGenerator::TGTurbulenceStrength
    IL_0118:  ldarg.0
    IL_0119:  ldc.r4     0.0
    IL_011e:  stfld      float32 Game.TerrainContentsGenerator::TGTurbulenceTopOffset
    IL_0123:  ldarg.0
    IL_0124:  ldc.r4     0.30000001
    IL_0129:  stfld      float32 Game.TerrainContentsGenerator::TGTurbulencePower
    IL_012e:  ldarg.0
    IL_012f:  ldc.i4.1
    IL_0130:  stfld      bool Game.TerrainContentsGenerator::TGWater
    IL_0135:  ldarg.0
    IL_0136:  ldc.i4.1
    IL_0137:  stfld      bool Game.TerrainContentsGenerator::TGExtras
    IL_013c:  ldarg.0
    IL_013d:  ldc.i4.1
    IL_013e:  stfld      bool Game.TerrainContentsGenerator::TGCavesAndPockets
    IL_0143:  ret
  } // end of method TerrainContentsGenerator::.ctor

  .method public hidebysig newslot specialname virtual final 
          instance valuetype [Engine]Engine.Vector2 
          get_OceanCorner() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector2 Game.TerrainContentsGenerator::m_oceanCorner
    IL_0006:  ret
  } // end of method TerrainContentsGenerator::get_OceanCorner

  .method public hidebysig newslot virtual final 
          instance void  GenerateChunkContentsPass1(int32 chunkX,
                                                    int32 chunkZ) cil managed
  {
    // 代码大小       27 (0x1b)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  ldc.i4.0
    IL_0004:  ldc.i4.s   16
    IL_0006:  ldc.i4.0
    IL_0007:  ldc.i4.8
    IL_0008:  call       instance void Game.TerrainContentsGenerator::GenerateSurfaceParameters(int32,
                                                                                                int32,
                                                                                                int32,
                                                                                                int32,
                                                                                                int32,
                                                                                                int32)
    IL_000d:  ldarg.0
    IL_000e:  ldarg.1
    IL_000f:  ldarg.2
    IL_0010:  ldc.i4.0
    IL_0011:  ldc.i4.s   16
    IL_0013:  ldc.i4.0
    IL_0014:  ldc.i4.8
    IL_0015:  call       instance void Game.TerrainContentsGenerator::GenerateTerrain(int32,
                                                                                      int32,
                                                                                      int32,
                                                                                      int32,
                                                                                      int32,
                                                                                      int32)
    IL_001a:  ret
  } // end of method TerrainContentsGenerator::GenerateChunkContentsPass1

  .method public hidebysig newslot virtual final 
          instance void  GenerateChunkContentsPass2(int32 chunkX,
                                                    int32 chunkZ) cil managed
  {
    // 代码大小       27 (0x1b)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  ldc.i4.0
    IL_0004:  ldc.i4.s   16
    IL_0006:  ldc.i4.8
    IL_0007:  ldc.i4.8
    IL_0008:  call       instance void Game.TerrainContentsGenerator::GenerateSurfaceParameters(int32,
                                                                                                int32,
                                                                                                int32,
                                                                                                int32,
                                                                                                int32,
                                                                                                int32)
    IL_000d:  ldarg.0
    IL_000e:  ldarg.1
    IL_000f:  ldarg.2
    IL_0010:  ldc.i4.0
    IL_0011:  ldc.i4.s   16
    IL_0013:  ldc.i4.8
    IL_0014:  ldc.i4.8
    IL_0015:  call       instance void Game.TerrainContentsGenerator::GenerateTerrain(int32,
                                                                                      int32,
                                                                                      int32,
                                                                                      int32,
                                                                                      int32,
                                                                                      int32)
    IL_001a:  ret
  } // end of method TerrainContentsGenerator::GenerateChunkContentsPass2

  .method public hidebysig newslot virtual final 
          instance void  GenerateChunkContentsPass3(int32 chunkX,
                                                    int32 chunkZ) cil managed
  {
    // 代码大小       41 (0x29)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  call       instance void Game.TerrainContentsGenerator::GenerateCaves(int32,
                                                                                    int32)
    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  ldarg.2
    IL_000b:  call       instance void Game.TerrainContentsGenerator::GeneratePockets(int32,
                                                                                      int32)
    IL_0010:  ldarg.0
    IL_0011:  ldarg.1
    IL_0012:  ldarg.2
    IL_0013:  call       instance void Game.TerrainContentsGenerator::GenerateMinerals(int32,
                                                                                       int32)
    IL_0018:  ldarg.0
    IL_0019:  ldarg.1
    IL_001a:  ldarg.2
    IL_001b:  call       instance void Game.TerrainContentsGenerator::GenerateSurface(int32,
                                                                                      int32)
    IL_0020:  ldarg.0
    IL_0021:  ldarg.1
    IL_0022:  ldarg.2
    IL_0023:  call       instance void Game.TerrainContentsGenerator::PropagateFluidsDownwards(int32,
                                                                                               int32)
    IL_0028:  ret
  } // end of method TerrainContentsGenerator::GenerateChunkContentsPass3

  .method public hidebysig newslot virtual final 
          instance void  GenerateChunkContentsPass4(int32 chunkX,
                                                    int32 chunkZ) cil managed
  {
    // 代码大小       105 (0x69)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  call       instance void Game.TerrainContentsGenerator::GenerateGrassAndPlants(int32,
                                                                                             int32)
    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  ldarg.2
    IL_000b:  call       instance void Game.TerrainContentsGenerator::GenerateTreesAndLogs(int32,
                                                                                           int32)
    IL_0010:  ldarg.0
    IL_0011:  ldarg.1
    IL_0012:  ldarg.2
    IL_0013:  call       instance void Game.TerrainContentsGenerator::GenerateCacti(int32,
                                                                                    int32)
    IL_0018:  ldarg.0
    IL_0019:  ldarg.1
    IL_001a:  ldarg.2
    IL_001b:  call       instance void Game.TerrainContentsGenerator::GeneratePumpkins(int32,
                                                                                       int32)
    IL_0020:  ldarg.0
    IL_0021:  ldarg.1
    IL_0022:  ldarg.2
    IL_0023:  call       instance void Game.TerrainContentsGenerator::GenerateKelp(int32,
                                                                                   int32)
    IL_0028:  ldarg.0
    IL_0029:  ldarg.1
    IL_002a:  ldarg.2
    IL_002b:  call       instance void Game.TerrainContentsGenerator::GenerateSeagrass(int32,
                                                                                       int32)
    IL_0030:  ldarg.0
    IL_0031:  ldarg.1
    IL_0032:  ldarg.2
    IL_0033:  call       instance void Game.TerrainContentsGenerator::GenerateBottomSuckers(int32,
                                                                                            int32)
    IL_0038:  ldarg.0
    IL_0039:  ldarg.1
    IL_003a:  ldarg.2
    IL_003b:  call       instance void Game.TerrainContentsGenerator::GenerateTraps(int32,
                                                                                    int32)
    IL_0040:  ldarg.0
    IL_0041:  ldarg.1
    IL_0042:  ldarg.2
    IL_0043:  call       instance void Game.TerrainContentsGenerator::GenerateIvy(int32,
                                                                                  int32)
    IL_0048:  ldarg.0
    IL_0049:  ldarg.1
    IL_004a:  ldarg.2
    IL_004b:  call       instance void Game.TerrainContentsGenerator::GenerateGraves(int32,
                                                                                     int32)
    IL_0050:  ldarg.0
    IL_0051:  ldarg.1
    IL_0052:  ldarg.2
    IL_0053:  call       instance void Game.TerrainContentsGenerator::GenerateSnowAndIce(int32,
                                                                                         int32)
    IL_0058:  ldarg.0
    IL_0059:  ldarg.1
    IL_005a:  ldarg.2
    IL_005b:  call       instance void Game.TerrainContentsGenerator::GenerateBedrockAndAir(int32,
                                                                                            int32)
    IL_0060:  ldarg.0
    IL_0061:  ldarg.1
    IL_0062:  ldarg.2
    IL_0063:  call       instance void Game.TerrainContentsGenerator::UpdateFluidIsTop(int32,
                                                                                       int32)
    IL_0068:  ret
  } // end of method TerrainContentsGenerator::GenerateChunkContentsPass4

  .method public hidebysig newslot virtual final 
          instance float32  CalculateOceanShoreX(float32 z) cil managed
  {
    // 代码大小       46 (0x2e)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance valuetype [Engine]Engine.Vector2 Game.TerrainContentsGenerator::get_OceanCorner()
    IL_0006:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_000b:  ldc.r4     100.
    IL_0010:  ldarg.1
    IL_0011:  ldc.r4     0.0
    IL_0016:  ldc.r4     4.9999999e-003
    IL_001b:  ldc.i4.3
    IL_001c:  ldc.r4     1.95
    IL_0021:  ldc.r4     1.
    IL_0026:  call       float32 Game.SimplexNoise::OctavedNoise(float32,
                                                                 float32,
                                                                 float32,
                                                                 int32,
                                                                 float32,
                                                                 float32)
    IL_002b:  mul
    IL_002c:  add
    IL_002d:  ret
  } // end of method TerrainContentsGenerator::CalculateOceanShoreX

  .method public hidebysig newslot virtual final 
          instance float32  CalculateOceanShoreZ(float32 x) cil managed
  {
    // 代码大小       46 (0x2e)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance valuetype [Engine]Engine.Vector2 Game.TerrainContentsGenerator::get_OceanCorner()
    IL_0006:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_000b:  ldc.r4     100.
    IL_0010:  ldc.r4     0.0
    IL_0015:  ldarg.1
    IL_0016:  ldc.r4     4.9999999e-003
    IL_001b:  ldc.i4.3
    IL_001c:  ldc.r4     1.95
    IL_0021:  ldc.r4     1.
    IL_0026:  call       float32 Game.SimplexNoise::OctavedNoise(float32,
                                                                 float32,
                                                                 float32,
                                                                 int32,
                                                                 float32,
                                                                 float32)
    IL_002b:  mul
    IL_002c:  add
    IL_002d:  ret
  } // end of method TerrainContentsGenerator::CalculateOceanShoreZ

  .method public hidebysig newslot virtual final 
          instance float32  CalculateOceanShoreDistance(float32 x,
                                                        float32 z) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  3
    .locals init (float32 V_0,
             float32 V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.2
    IL_0002:  call       instance float32 Game.TerrainContentsGenerator::CalculateOceanShoreX(float32)
    IL_0007:  stloc.0
    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  call       instance float32 Game.TerrainContentsGenerator::CalculateOceanShoreZ(float32)
    IL_000f:  stloc.1
    IL_0010:  ldarg.1
    IL_0011:  ldloc.0
    IL_0012:  sub
    IL_0013:  ldarg.2
    IL_0014:  ldloc.1
    IL_0015:  sub
    IL_0016:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_001b:  ret
  } // end of method TerrainContentsGenerator::CalculateOceanShoreDistance

  .method public hidebysig newslot virtual final 
          instance float32  CalculateMountainRangeFactor(float32 x,
                                                         float32 z) cil managed
  {
    // 代码大小       47 (0x2f)
    .maxstack  8
    IL_0000:  ldc.r4     1.
    IL_0005:  ldc.r4     2.
    IL_000a:  ldarg.1
    IL_000b:  ldarg.2
    IL_000c:  ldc.r4     1.4e-003
    IL_0011:  ldc.i4.3
    IL_0012:  ldc.r4     1.91
    IL_0017:  ldc.r4     0.75
    IL_001c:  call       float32 Game.SimplexNoise::OctavedNoise(float32,
                                                                 float32,
                                                                 float32,
                                                                 int32,
                                                                 float32,
                                                                 float32)
    IL_0021:  mul
    IL_0022:  ldc.r4     1.
    IL_0027:  sub
    IL_0028:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_002d:  sub
    IL_002e:  ret
  } // end of method TerrainContentsGenerator::CalculateMountainRangeFactor

  .method public hidebysig newslot virtual final 
          instance float32  CalculateHeight(float32 x,
                                            float32 z) cil managed
  {
    // 代码大小       446 (0x1be)
    .maxstack  7
    .locals init (float32 V_0,
             float32 V_1,
             float32 V_2,
             float32 V_3,
             float32 V_4,
             float32 V_5,
             float32 V_6,
             float32 V_7,
             float32 V_8,
             float32 V_9,
             float32 V_10,
             float32 V_11,
             float32 V_12,
             float32 V_13,
             float32 V_14,
             float32 V_15,
             float32 V_16)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  call       instance float32 Game.TerrainContentsGenerator::CalculateOceanShoreDistance(float32,
                                                                                                     float32)
    IL_0008:  stloc.0
    IL_0009:  ldc.r4     1.
    IL_000e:  ldc.r4     5.0000001e-002
    IL_0013:  ldloc.0
    IL_0014:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_0019:  mul
    IL_001a:  sub
    IL_001b:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0020:  stloc.1
    IL_0021:  ldc.r4     1.7000001e-002
    IL_0026:  ldloc.0
    IL_0027:  mul
    IL_0028:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_002d:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0032:  stloc.2
    IL_0033:  ldc.r4     -1.5e-002
    IL_0038:  ldloc.0
    IL_0039:  mul
    IL_003a:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_003f:  ldc.r4     0.85000002
    IL_0044:  ldloc.2
    IL_0045:  mul
    IL_0046:  sub
    IL_0047:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_004c:  stloc.3
    IL_004d:  ldc.r4     5.0000001e-002
    IL_0052:  ldloc.0
    IL_0053:  neg
    IL_0054:  ldc.r4     10.
    IL_0059:  sub
    IL_005a:  mul
    IL_005b:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0060:  ldloc.2
    IL_0061:  sub
    IL_0062:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0067:  stloc.s    V_4
    IL_0069:  ldarg.0
    IL_006a:  ldarg.1
    IL_006b:  ldarg.2
    IL_006c:  call       instance float32 Game.TerrainContentsGenerator::CalculateMountainRangeFactor(float32,
                                                                                                      float32)
    IL_0071:  stloc.s    V_5
    IL_0073:  ldc.r4     1.
    IL_0078:  ldloc.1
    IL_0079:  sub
    IL_007a:  ldarg.1
    IL_007b:  ldarg.2
    IL_007c:  ldc.r4     1.e-003
    IL_0081:  ldc.i4.2
    IL_0082:  ldc.r4     1.97
    IL_0087:  ldc.r4     0.80000001
    IL_008c:  call       float32 Game.SimplexNoise::OctavedNoise(float32,
                                                                 float32,
                                                                 float32,
                                                                 int32,
                                                                 float32,
                                                                 float32)
    IL_0091:  mul
    IL_0092:  stloc.s    V_6
    IL_0094:  ldc.r4     1.
    IL_0099:  ldloc.1
    IL_009a:  sub
    IL_009b:  ldarg.1
    IL_009c:  ldarg.2
    IL_009d:  ldc.r4     1.7e-003
    IL_00a2:  ldc.i4.2
    IL_00a3:  ldc.r4     1.9299999
    IL_00a8:  ldc.r4     0.69999999
    IL_00ad:  call       float32 Game.SimplexNoise::OctavedNoise(float32,
                                                                 float32,
                                                                 float32,
                                                                 int32,
                                                                 float32,
                                                                 float32)
    IL_00b2:  mul
    IL_00b3:  stloc.s    V_7
    IL_00b5:  ldc.r4     1.
    IL_00ba:  ldloc.s    V_4
    IL_00bc:  sub
    IL_00bd:  ldc.r4     1.
    IL_00c2:  ldloc.1
    IL_00c3:  sub
    IL_00c4:  mul
    IL_00c5:  ldloc.s    V_5
    IL_00c7:  ldc.r4     0.60000002
    IL_00cc:  sub
    IL_00cd:  ldc.r4     0.40000001
    IL_00d2:  div
    IL_00d3:  ldc.r4     0.0
    IL_00d8:  ldc.r4     1.
    IL_00dd:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_00e2:  mul
    IL_00e3:  stloc.s    V_8
    IL_00e5:  ldc.r4     1.
    IL_00ea:  ldloc.s    V_4
    IL_00ec:  sub
    IL_00ed:  ldloc.s    V_5
    IL_00ef:  ldc.r4     0.85000002
    IL_00f4:  sub
    IL_00f5:  ldc.r4     0.15000001
    IL_00fa:  div
    IL_00fb:  ldc.r4     0.0
    IL_0100:  ldc.r4     1.
    IL_0105:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_010a:  mul
    IL_010b:  stloc.s    V_9
    IL_010d:  ldc.r4     2.
    IL_0112:  ldarg.1
    IL_0113:  ldarg.2
    IL_0114:  ldc.r4     2.e-002
    IL_0119:  ldc.i4.3
    IL_011a:  ldc.r4     1.9299999
    IL_011f:  ldc.r4     0.80000001
    IL_0124:  call       float32 Game.SimplexNoise::OctavedNoise(float32,
                                                                 float32,
                                                                 float32,
                                                                 int32,
                                                                 float32,
                                                                 float32)
    IL_0129:  mul
    IL_012a:  ldc.r4     1.
    IL_012f:  sub
    IL_0130:  stloc.s    V_10
    IL_0132:  ldc.r4     1.5
    IL_0137:  ldarg.1
    IL_0138:  ldarg.2
    IL_0139:  ldc.r4     4.0000002e-003
    IL_013e:  ldc.i4.4
    IL_013f:  ldc.r4     1.98
    IL_0144:  ldc.r4     0.89999998
    IL_0149:  call       float32 Game.SimplexNoise::OctavedNoise(float32,
                                                                 float32,
                                                                 float32,
                                                                 int32,
                                                                 float32,
                                                                 float32)
    IL_014e:  mul
    IL_014f:  ldc.r4     0.5
    IL_0154:  sub
    IL_0155:  stloc.s    V_11
    IL_0157:  ldc.r4     -50.
    IL_015c:  ldloc.3
    IL_015d:  mul
    IL_015e:  ldarg.0
    IL_015f:  ldfld      float32 Game.TerrainContentsGenerator::TGHeightBias
    IL_0164:  add
    IL_0165:  stloc.s    V_12
    IL_0167:  ldc.r4     0.0
    IL_016c:  ldc.r4     8.
    IL_0171:  ldloc.s    V_6
    IL_0173:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0178:  stloc.s    V_13
    IL_017a:  ldc.r4     0.0
    IL_017f:  ldc.r4     -6.
    IL_0184:  ldloc.s    V_7
    IL_0186:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_018b:  stloc.s    V_14
    IL_018d:  ldarg.0
    IL_018e:  ldfld      float32 Game.TerrainContentsGenerator::TGHillsStrength
    IL_0193:  ldloc.s    V_8
    IL_0195:  mul
    IL_0196:  ldloc.s    V_10
    IL_0198:  mul
    IL_0199:  stloc.s    V_15
    IL_019b:  ldarg.0
    IL_019c:  ldfld      float32 Game.TerrainContentsGenerator::TGMountainsStrength
    IL_01a1:  ldloc.s    V_9
    IL_01a3:  mul
    IL_01a4:  ldloc.s    V_11
    IL_01a6:  mul
    IL_01a7:  stloc.s    V_16
    IL_01a9:  ldc.r4     64.
    IL_01ae:  ldloc.s    V_12
    IL_01b0:  add
    IL_01b1:  ldloc.s    V_13
    IL_01b3:  add
    IL_01b4:  ldloc.s    V_14
    IL_01b6:  add
    IL_01b7:  ldloc.s    V_16
    IL_01b9:  add
    IL_01ba:  ldloc.s    V_15
    IL_01bc:  add
    IL_01bd:  ret
  } // end of method TerrainContentsGenerator::CalculateHeight

  .method public hidebysig newslot virtual final 
          instance int32  CalculateTemperature(float32 x,
                                               float32 z) cil managed
  {
    // 代码大小       86 (0x56)
    .maxstack  7
    IL_0000:  ldc.r4     4.
    IL_0005:  ldarg.1
    IL_0006:  ldc.r4     1000.
    IL_000b:  add
    IL_000c:  ldarg.2
    IL_000d:  ldc.r4     1000.
    IL_0012:  add
    IL_0013:  ldc.r4     6.0000003e-004
    IL_0018:  ldc.i4.4
    IL_0019:  ldc.r4     1.9299999
    IL_001e:  ldc.r4     1.
    IL_0023:  call       float32 Game.SimplexNoise::OctavedNoise(float32,
                                                                 float32,
                                                                 float32,
                                                                 int32,
                                                                 float32,
                                                                 float32)
    IL_0028:  mul
    IL_0029:  ldc.r4     1.6
    IL_002e:  sub
    IL_002f:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0034:  ldarg.0
    IL_0035:  ldfld      class Game.WorldInfo Game.TerrainContentsGenerator::m_worldInfo
    IL_003a:  ldfld      float32 Game.WorldInfo::TemperatureOffset
    IL_003f:  ldc.r4     16.
    IL_0044:  div
    IL_0045:  add
    IL_0046:  ldc.r4     16.
    IL_004b:  mul
    IL_004c:  conv.i4
    IL_004d:  ldc.i4.0
    IL_004e:  ldc.i4.s   15
    IL_0050:  call       int32 [Engine]Engine.MathUtils::Clamp(int32,
                                                               int32,
                                                               int32)
    IL_0055:  ret
  } // end of method TerrainContentsGenerator::CalculateTemperature

  .method public hidebysig newslot virtual final 
          instance int32  CalculateHumidity(float32 x,
                                            float32 z) cil managed
  {
    // 代码大小       74 (0x4a)
    .maxstack  7
    IL_0000:  ldc.r4     4.
    IL_0005:  ldarg.1
    IL_0006:  ldarg.2
    IL_0007:  ldc.r4     7.9999998e-004
    IL_000c:  ldc.i4.5
    IL_000d:  ldc.r4     1.97
    IL_0012:  ldc.r4     1.
    IL_0017:  call       float32 Game.SimplexNoise::OctavedNoise(float32,
                                                                 float32,
                                                                 float32,
                                                                 int32,
                                                                 float32,
                                                                 float32)
    IL_001c:  mul
    IL_001d:  ldc.r4     1.5
    IL_0022:  sub
    IL_0023:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0028:  ldarg.0
    IL_0029:  ldfld      class Game.WorldInfo Game.TerrainContentsGenerator::m_worldInfo
    IL_002e:  ldfld      float32 Game.WorldInfo::HumidityOffset
    IL_0033:  ldc.r4     16.
    IL_0038:  div
    IL_0039:  add
    IL_003a:  ldc.r4     16.
    IL_003f:  mul
    IL_0040:  conv.i4
    IL_0041:  ldc.i4.0
    IL_0042:  ldc.i4.s   15
    IL_0044:  call       int32 [Engine]Engine.MathUtils::Clamp(int32,
                                                               int32,
                                                               int32)
    IL_0049:  ret
  } // end of method TerrainContentsGenerator::CalculateHumidity

  .method private hidebysig instance void 
          GenerateSurfaceParameters(int32 chunkX,
                                    int32 chunkZ,
                                    int32 startX,
                                    int32 countX,
                                    int32 startZ,
                                    int32 countZ) cil managed
  {
    // 代码大小       120 (0x78)
    .maxstack  4
    .locals init (class Game.TerrainData V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_000b:  stloc.0
    IL_000c:  ldarg.1
    IL_000d:  ldc.i4.s   16
    IL_000f:  mul
    IL_0010:  ldarg.3
    IL_0011:  add
    IL_0012:  dup
    IL_0013:  ldarg.s    countX
    IL_0015:  add
    IL_0016:  stloc.1
    IL_0017:  ldarg.2
    IL_0018:  ldc.i4.s   16
    IL_001a:  mul
    IL_001b:  ldarg.s    startZ
    IL_001d:  add
    IL_001e:  stloc.2
    IL_001f:  ldloc.2
    IL_0020:  ldarg.s    countZ
    IL_0022:  add
    IL_0023:  stloc.3
    IL_0024:  stloc.s    V_4
    IL_0026:  br.s       IL_0072

    IL_0028:  ldloc.2
    IL_0029:  stloc.s    V_5
    IL_002b:  br.s       IL_0067

    IL_002d:  ldarg.0
    IL_002e:  ldloc.s    V_4
    IL_0030:  conv.r4
    IL_0031:  ldloc.s    V_5
    IL_0033:  conv.r4
    IL_0034:  call       instance int32 Game.TerrainContentsGenerator::CalculateTemperature(float32,
                                                                                            float32)
    IL_0039:  stloc.s    V_6
    IL_003b:  ldarg.0
    IL_003c:  ldloc.s    V_4
    IL_003e:  conv.r4
    IL_003f:  ldloc.s    V_5
    IL_0041:  conv.r4
    IL_0042:  call       instance int32 Game.TerrainContentsGenerator::CalculateHumidity(float32,
                                                                                         float32)
    IL_0047:  stloc.s    V_7
    IL_0049:  ldloc.0
    IL_004a:  ldloc.s    V_4
    IL_004c:  ldloc.s    V_5
    IL_004e:  ldloc.s    V_6
    IL_0050:  callvirt   instance void Game.TerrainData::SetTemperatureFast(int32,
                                                                            int32,
                                                                            int32)
    IL_0055:  ldloc.0
    IL_0056:  ldloc.s    V_4
    IL_0058:  ldloc.s    V_5
    IL_005a:  ldloc.s    V_7
    IL_005c:  callvirt   instance void Game.TerrainData::SetHumidityFast(int32,
                                                                         int32,
                                                                         int32)
    IL_0061:  ldloc.s    V_5
    IL_0063:  ldc.i4.1
    IL_0064:  add
    IL_0065:  stloc.s    V_5
    IL_0067:  ldloc.s    V_5
    IL_0069:  ldloc.3
    IL_006a:  blt.s      IL_002d

    IL_006c:  ldloc.s    V_4
    IL_006e:  ldc.i4.1
    IL_006f:  add
    IL_0070:  stloc.s    V_4
    IL_0072:  ldloc.s    V_4
    IL_0074:  ldloc.1
    IL_0075:  blt.s      IL_0028

    IL_0077:  ret
  } // end of method TerrainContentsGenerator::GenerateSurfaceParameters

  .method private hidebysig instance void 
          GenerateTerrain(int32 chunkX,
                          int32 chunkZ,
                          int32 xStart,
                          int32 xCount,
                          int32 zStart,
                          int32 zCount) cil managed
  {
    // 代码大小       1185 (0x4a1)
    .maxstack  12
    .locals init (class Game.TerrainData V_0,
             int32 V_1,
             int32 V_2,
             class Game.TerrainContentsGenerator/Grid2d V_3,
             class Game.TerrainContentsGenerator/Grid2d V_4,
             class Game.TerrainContentsGenerator/Grid3d V_5,
             int32 V_6,
             int32 V_7,
             int32 V_8,
             int32 V_9,
             int32 V_10,
             int32 V_11,
             int32 V_12,
             float32 V_13,
             float32 V_14,
             float32 V_15,
             int32 V_16,
             int32 V_17,
             float32 V_18,
             float32 V_19,
             float32 V_20,
             float32 V_21,
             int32 V_22,
             int32 V_23,
             int32 V_24,
             float32 V_25,
             float32 V_26,
             float32 V_27,
             float32 V_28,
             float32 V_29,
             float32 V_30,
             float32 V_31,
             float32 V_32,
             float32 V_33,
             float32 V_34,
             float32 V_35,
             float32 V_36,
             float32 V_37,
             float32 V_38,
             float32 V_39,
             float32 V_40,
             int32 V_41,
             float32 V_42,
             float32 V_43,
             float32 V_44,
             float32 V_45,
             int32 V_46,
             float32 V_47,
             float32 V_48,
             int32 V_49,
             int32 V_50,
             int32 V_51,
             int32 V_52,
             float32 V_53,
             float32 V_54,
             int32 V_55,
             int32 V_56,
             float32 V_57,
             float32 V_58,
             float32 V_59,
             bool V_60,
             int32 V_61,
             int32 V_62,
             int32 V_63,
             int32 V_64)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_000b:  stloc.0
    IL_000c:  ldarg.1
    IL_000d:  ldc.i4.s   16
    IL_000f:  mul
    IL_0010:  ldarg.3
    IL_0011:  add
    IL_0012:  stloc.1
    IL_0013:  ldarg.2
    IL_0014:  ldc.i4.s   16
    IL_0016:  mul
    IL_0017:  ldarg.s    zStart
    IL_0019:  add
    IL_001a:  stloc.2
    IL_001b:  ldarg.s    xCount
    IL_001d:  ldarg.s    zCount
    IL_001f:  newobj     instance void Game.TerrainContentsGenerator/Grid2d::.ctor(int32,
                                                                                   int32)
    IL_0024:  stloc.3
    IL_0025:  ldarg.s    xCount
    IL_0027:  ldarg.s    zCount
    IL_0029:  newobj     instance void Game.TerrainContentsGenerator/Grid2d::.ctor(int32,
                                                                                   int32)
    IL_002e:  stloc.s    V_4
    IL_0030:  ldc.i4.0
    IL_0031:  stloc.s    V_7
    IL_0033:  br.s       IL_0081

    IL_0035:  ldc.i4.0
    IL_0036:  stloc.s    V_8
    IL_0038:  br.s       IL_0075

    IL_003a:  ldloc.3
    IL_003b:  ldloc.s    V_8
    IL_003d:  ldloc.s    V_7
    IL_003f:  ldarg.0
    IL_0040:  ldloc.s    V_8
    IL_0042:  ldloc.1
    IL_0043:  add
    IL_0044:  conv.r4
    IL_0045:  ldloc.s    V_7
    IL_0047:  ldloc.2
    IL_0048:  add
    IL_0049:  conv.r4
    IL_004a:  call       instance float32 Game.TerrainContentsGenerator::CalculateOceanShoreDistance(float32,
                                                                                                     float32)
    IL_004f:  callvirt   instance void Game.TerrainContentsGenerator/Grid2d::Set(int32,
                                                                                 int32,
                                                                                 float32)
    IL_0054:  ldloc.s    V_4
    IL_0056:  ldloc.s    V_8
    IL_0058:  ldloc.s    V_7
    IL_005a:  ldarg.0
    IL_005b:  ldloc.s    V_8
    IL_005d:  ldloc.1
    IL_005e:  add
    IL_005f:  conv.r4
    IL_0060:  ldloc.s    V_7
    IL_0062:  ldloc.2
    IL_0063:  add
    IL_0064:  conv.r4
    IL_0065:  call       instance float32 Game.TerrainContentsGenerator::CalculateMountainRangeFactor(float32,
                                                                                                      float32)
    IL_006a:  callvirt   instance void Game.TerrainContentsGenerator/Grid2d::Set(int32,
                                                                                 int32,
                                                                                 float32)
    IL_006f:  ldloc.s    V_8
    IL_0071:  ldc.i4.1
    IL_0072:  add
    IL_0073:  stloc.s    V_8
    IL_0075:  ldloc.s    V_8
    IL_0077:  ldarg.s    xCount
    IL_0079:  blt.s      IL_003a

    IL_007b:  ldloc.s    V_7
    IL_007d:  ldc.i4.1
    IL_007e:  add
    IL_007f:  stloc.s    V_7
    IL_0081:  ldloc.s    V_7
    IL_0083:  ldarg.s    zCount
    IL_0085:  blt.s      IL_0035

    IL_0087:  ldarg.s    xCount
    IL_0089:  ldc.i4.4
    IL_008a:  div
    IL_008b:  ldc.i4.1
    IL_008c:  add
    IL_008d:  ldc.i4.s   17
    IL_008f:  ldarg.s    zCount
    IL_0091:  ldc.i4.4
    IL_0092:  div
    IL_0093:  ldc.i4.1
    IL_0094:  add
    IL_0095:  newobj     instance void Game.TerrainContentsGenerator/Grid3d::.ctor(int32,
                                                                                   int32,
                                                                                   int32)
    IL_009a:  stloc.s    V_5
    IL_009c:  ldc.i4.0
    IL_009d:  stloc.s    V_9
    IL_009f:  br         IL_01df

    IL_00a4:  ldc.i4.0
    IL_00a5:  stloc.s    V_10
    IL_00a7:  br         IL_01cb

    IL_00ac:  ldloc.s    V_9
    IL_00ae:  ldc.i4.4
    IL_00af:  mul
    IL_00b0:  ldloc.1
    IL_00b1:  add
    IL_00b2:  stloc.s    V_11
    IL_00b4:  ldloc.s    V_10
    IL_00b6:  ldc.i4.4
    IL_00b7:  mul
    IL_00b8:  ldloc.2
    IL_00b9:  add
    IL_00ba:  stloc.s    V_12
    IL_00bc:  ldarg.0
    IL_00bd:  ldloc.s    V_11
    IL_00bf:  conv.r4
    IL_00c0:  ldloc.s    V_12
    IL_00c2:  conv.r4
    IL_00c3:  call       instance float32 Game.TerrainContentsGenerator::CalculateHeight(float32,
                                                                                         float32)
    IL_00c8:  stloc.s    V_13
    IL_00ca:  ldarg.0
    IL_00cb:  ldloc.s    V_11
    IL_00cd:  conv.r4
    IL_00ce:  ldloc.s    V_12
    IL_00d0:  conv.r4
    IL_00d1:  call       instance float32 Game.TerrainContentsGenerator::CalculateMountainRangeFactor(float32,
                                                                                                      float32)
    IL_00d6:  stloc.s    V_14
    IL_00d8:  ldc.r4     0.89999998
    IL_00dd:  ldloc.s    V_14
    IL_00df:  ldc.r4     0.80000001
    IL_00e4:  sub
    IL_00e5:  mul
    IL_00e6:  ldc.r4     0.2
    IL_00eb:  div
    IL_00ec:  ldc.r4     0.1
    IL_00f1:  add
    IL_00f2:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_00f7:  stloc.s    V_15
    IL_00f9:  ldc.i4.0
    IL_00fa:  stloc.s    V_16
    IL_00fc:  br         IL_01b7

    IL_0101:  ldloc.s    V_16
    IL_0103:  ldc.i4.8
    IL_0104:  mul
    IL_0105:  stloc.s    V_17
    IL_0107:  ldloc.s    V_13
    IL_0109:  ldarg.0
    IL_010a:  ldfld      float32 Game.TerrainContentsGenerator::TGTurbulenceTopOffset
    IL_010f:  sub
    IL_0110:  stloc.s    V_18
    IL_0112:  ldc.r4     0.0
    IL_0117:  ldarg.0
    IL_0118:  ldfld      float32 Game.TerrainContentsGenerator::TGTurbulenceStrength
    IL_011d:  ldloc.s    V_15
    IL_011f:  mul
    IL_0120:  ldloc.s    V_18
    IL_0122:  ldloc.s    V_17
    IL_0124:  conv.r4
    IL_0125:  sub
    IL_0126:  ldc.r4     0.2
    IL_012b:  mul
    IL_012c:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0131:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0136:  ldc.r4     2.
    IL_013b:  ldloc.s    V_11
    IL_013d:  conv.r4
    IL_013e:  ldloc.s    V_17
    IL_0140:  ldc.i4     0x3e8
    IL_0145:  add
    IL_0146:  conv.r4
    IL_0147:  ldloc.s    V_12
    IL_0149:  conv.r4
    IL_014a:  ldc.r4     8.0000004e-003
    IL_014f:  ldc.i4.3
    IL_0150:  ldc.r4     2.
    IL_0155:  ldc.r4     0.75
    IL_015a:  call       float32 Game.SimplexNoise::OctavedNoise(float32,
                                                                 float32,
                                                                 float32,
                                                                 float32,
                                                                 int32,
                                                                 float32,
                                                                 float32)
    IL_015f:  mul
    IL_0160:  ldc.r4     1.
    IL_0165:  sub
    IL_0166:  ldarg.0
    IL_0167:  ldfld      float32 Game.TerrainContentsGenerator::TGTurbulencePower
    IL_016c:  call       float32 [Engine]Engine.MathUtils::PowSign(float32,
                                                                   float32)
    IL_0171:  mul
    IL_0172:  stloc.s    V_19
    IL_0174:  ldloc.s    V_17
    IL_0176:  conv.r4
    IL_0177:  ldloc.s    V_19
    IL_0179:  add
    IL_017a:  stloc.s    V_20
    IL_017c:  ldloc.s    V_13
    IL_017e:  ldloc.s    V_20
    IL_0180:  sub
    IL_0181:  stloc.s    V_21
    IL_0183:  ldloc.s    V_21
    IL_0185:  ldc.r4     4.
    IL_018a:  ldarg.0
    IL_018b:  ldfld      float32 Game.TerrainContentsGenerator::TGDensityBias
    IL_0190:  ldloc.s    V_17
    IL_0192:  conv.r4
    IL_0193:  sub
    IL_0194:  mul
    IL_0195:  ldc.r4     0.0
    IL_019a:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_019f:  add
    IL_01a0:  stloc.s    V_21
    IL_01a2:  ldloc.s    V_5
    IL_01a4:  ldloc.s    V_9
    IL_01a6:  ldloc.s    V_16
    IL_01a8:  ldloc.s    V_10
    IL_01aa:  ldloc.s    V_21
    IL_01ac:  callvirt   instance void Game.TerrainContentsGenerator/Grid3d::Set(int32,
                                                                                 int32,
                                                                                 int32,
                                                                                 float32)
    IL_01b1:  ldloc.s    V_16
    IL_01b3:  ldc.i4.1
    IL_01b4:  add
    IL_01b5:  stloc.s    V_16
    IL_01b7:  ldloc.s    V_16
    IL_01b9:  ldloc.s    V_5
    IL_01bb:  callvirt   instance int32 Game.TerrainContentsGenerator/Grid3d::get_SizeY()
    IL_01c0:  blt        IL_0101

    IL_01c5:  ldloc.s    V_10
    IL_01c7:  ldc.i4.1
    IL_01c8:  add
    IL_01c9:  stloc.s    V_10
    IL_01cb:  ldloc.s    V_10
    IL_01cd:  ldloc.s    V_5
    IL_01cf:  callvirt   instance int32 Game.TerrainContentsGenerator/Grid3d::get_SizeZ()
    IL_01d4:  blt        IL_00ac

    IL_01d9:  ldloc.s    V_9
    IL_01db:  ldc.i4.1
    IL_01dc:  add
    IL_01dd:  stloc.s    V_9
    IL_01df:  ldloc.s    V_9
    IL_01e1:  ldloc.s    V_5
    IL_01e3:  callvirt   instance int32 Game.TerrainContentsGenerator/Grid3d::get_SizeX()
    IL_01e8:  blt        IL_00a4

    IL_01ed:  ldc.i4.s   64
    IL_01ef:  ldarg.0
    IL_01f0:  ldfld      class Game.WorldInfo Game.TerrainContentsGenerator::m_worldInfo
    IL_01f5:  ldfld      int32 Game.WorldInfo::SeaLevelOffset
    IL_01fa:  add
    IL_01fb:  stloc.s    V_6
    IL_01fd:  ldc.i4.0
    IL_01fe:  stloc.s    V_22
    IL_0200:  br         IL_0490

    IL_0205:  ldc.i4.0
    IL_0206:  stloc.s    V_23
    IL_0208:  br         IL_047a

    IL_020d:  ldc.i4.0
    IL_020e:  stloc.s    V_24
    IL_0210:  br         IL_0464

    IL_0215:  ldloc.s    V_5
    IL_0217:  ldloc.s    V_22
    IL_0219:  ldloc.s    V_24
    IL_021b:  ldloc.s    V_23
    IL_021d:  ldloca.s   V_25
    IL_021f:  ldloca.s   V_26
    IL_0221:  ldloca.s   V_27
    IL_0223:  ldloca.s   V_28
    IL_0225:  ldloca.s   V_29
    IL_0227:  ldloca.s   V_30
    IL_0229:  ldloca.s   V_31
    IL_022b:  ldloca.s   V_32
    IL_022d:  callvirt   instance void Game.TerrainContentsGenerator/Grid3d::Get8(int32,
                                                                                  int32,
                                                                                  int32,
                                                                                  float32&,
                                                                                  float32&,
                                                                                  float32&,
                                                                                  float32&,
                                                                                  float32&,
                                                                                  float32&,
                                                                                  float32&,
                                                                                  float32&)
    IL_0232:  ldloc.s    V_26
    IL_0234:  ldloc.s    V_25
    IL_0236:  sub
    IL_0237:  ldc.r4     4.
    IL_023c:  div
    IL_023d:  stloc.s    V_33
    IL_023f:  ldloc.s    V_28
    IL_0241:  ldloc.s    V_27
    IL_0243:  sub
    IL_0244:  ldc.r4     4.
    IL_0249:  div
    IL_024a:  stloc.s    V_34
    IL_024c:  ldloc.s    V_30
    IL_024e:  ldloc.s    V_29
    IL_0250:  sub
    IL_0251:  ldc.r4     4.
    IL_0256:  div
    IL_0257:  stloc.s    V_35
    IL_0259:  ldloc.s    V_32
    IL_025b:  ldloc.s    V_31
    IL_025d:  sub
    IL_025e:  ldc.r4     4.
    IL_0263:  div
    IL_0264:  stloc.s    V_36
    IL_0266:  ldloc.s    V_25
    IL_0268:  stloc.s    V_37
    IL_026a:  ldloc.s    V_27
    IL_026c:  stloc.s    V_38
    IL_026e:  ldloc.s    V_29
    IL_0270:  stloc.s    V_39
    IL_0272:  ldloc.s    V_31
    IL_0274:  stloc.s    V_40
    IL_0276:  ldc.i4.0
    IL_0277:  stloc.s    V_41
    IL_0279:  br         IL_0456

    IL_027e:  ldloc.s    V_39
    IL_0280:  ldloc.s    V_37
    IL_0282:  sub
    IL_0283:  ldc.r4     4.
    IL_0288:  div
    IL_0289:  stloc.s    V_42
    IL_028b:  ldloc.s    V_40
    IL_028d:  ldloc.s    V_38
    IL_028f:  sub
    IL_0290:  ldc.r4     4.
    IL_0295:  div
    IL_0296:  stloc.s    V_43
    IL_0298:  ldloc.s    V_37
    IL_029a:  stloc.s    V_44
    IL_029c:  ldloc.s    V_38
    IL_029e:  stloc.s    V_45
    IL_02a0:  ldc.i4.0
    IL_02a1:  stloc.s    V_46
    IL_02a3:  br         IL_042c

    IL_02a8:  ldloc.s    V_45
    IL_02aa:  ldloc.s    V_44
    IL_02ac:  sub
    IL_02ad:  ldc.r4     8.
    IL_02b2:  div
    IL_02b3:  stloc.s    V_47
    IL_02b5:  ldloc.s    V_44
    IL_02b7:  stloc.s    V_48
    IL_02b9:  ldloc.1
    IL_02ba:  ldloc.s    V_41
    IL_02bc:  add
    IL_02bd:  ldloc.s    V_22
    IL_02bf:  ldc.i4.4
    IL_02c0:  mul
    IL_02c1:  add
    IL_02c2:  stloc.s    V_49
    IL_02c4:  ldloc.2
    IL_02c5:  ldloc.s    V_46
    IL_02c7:  add
    IL_02c8:  ldloc.s    V_23
    IL_02ca:  ldc.i4.4
    IL_02cb:  mul
    IL_02cc:  add
    IL_02cd:  stloc.s    V_50
    IL_02cf:  ldloc.s    V_41
    IL_02d1:  ldloc.s    V_22
    IL_02d3:  ldc.i4.4
    IL_02d4:  mul
    IL_02d5:  add
    IL_02d6:  stloc.s    V_51
    IL_02d8:  ldloc.s    V_46
    IL_02da:  ldloc.s    V_23
    IL_02dc:  ldc.i4.4
    IL_02dd:  mul
    IL_02de:  add
    IL_02df:  stloc.s    V_52
    IL_02e1:  ldloc.3
    IL_02e2:  ldloc.s    V_51
    IL_02e4:  ldloc.s    V_52
    IL_02e6:  callvirt   instance float32 Game.TerrainContentsGenerator/Grid2d::Get(int32,
                                                                                    int32)
    IL_02eb:  stloc.s    V_53
    IL_02ed:  ldloc.s    V_4
    IL_02ef:  ldloc.s    V_51
    IL_02f1:  ldloc.s    V_52
    IL_02f3:  callvirt   instance float32 Game.TerrainContentsGenerator/Grid2d::Get(int32,
                                                                                    int32)
    IL_02f8:  stloc.s    V_54
    IL_02fa:  ldloc.0
    IL_02fb:  ldloc.s    V_49
    IL_02fd:  ldloc.s    V_50
    IL_02ff:  callvirt   instance int32 Game.TerrainData::GetTemperatureFast(int32,
                                                                             int32)
    IL_0304:  stloc.s    V_55
    IL_0306:  ldloc.0
    IL_0307:  ldloc.s    V_49
    IL_0309:  ldloc.s    V_50
    IL_030b:  callvirt   instance int32 Game.TerrainData::GetHumidityFast(int32,
                                                                          int32)
    IL_0310:  stloc.s    V_56
    IL_0312:  ldloc.s    V_54
    IL_0314:  ldc.r4     9.9999998e-003
    IL_0319:  ldloc.s    V_56
    IL_031b:  conv.r4
    IL_031c:  mul
    IL_031d:  sub
    IL_031e:  stloc.s    V_57
    IL_0320:  ldc.r4     100.
    IL_0325:  ldc.r4     0.0
    IL_032a:  ldloc.s    V_57
    IL_032c:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0331:  stloc.s    V_58
    IL_0333:  ldc.r4     300.
    IL_0338:  ldc.r4     30.
    IL_033d:  ldloc.s    V_57
    IL_033f:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0344:  stloc.s    V_59
    IL_0346:  ldloc.s    V_55
    IL_0348:  ldc.i4.8
    IL_0349:  ble.s      IL_0359

    IL_034b:  ldloc.s    V_56
    IL_034d:  ldc.i4.8
    IL_034e:  bge.s      IL_0359

    IL_0350:  ldloc.s    V_54
    IL_0352:  ldc.r4     0.94999999
    IL_0357:  blt.s      IL_0375

    IL_0359:  ldloc.s    V_53
    IL_035b:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_0360:  ldc.r4     12.
    IL_0365:  bge.un.s   IL_0372

    IL_0367:  ldloc.s    V_54
    IL_0369:  ldc.r4     0.89999998
    IL_036e:  clt
    IL_0370:  br.s       IL_0376

    IL_0372:  ldc.i4.0
    IL_0373:  br.s       IL_0376

    IL_0375:  ldc.i4.1
    IL_0376:  stloc.s    V_60
    IL_0378:  ldloc.0
    IL_0379:  ldloc.s    V_49
    IL_037b:  ldc.i4.0
    IL_037c:  ldloc.s    V_50
    IL_037e:  callvirt   instance int32 Game.TerrainData::CalculateCellIndex(int32,
                                                                             int32,
                                                                             int32)
    IL_0383:  stloc.s    V_61
    IL_0385:  ldc.i4.0
    IL_0386:  stloc.s    V_62
    IL_0388:  br         IL_0410

    IL_038d:  ldloc.s    V_62
    IL_038f:  ldloc.s    V_24
    IL_0391:  ldc.i4.8
    IL_0392:  mul
    IL_0393:  add
    IL_0394:  stloc.s    V_63
    IL_0396:  ldc.i4.0
    IL_0397:  stloc.s    V_64
    IL_0399:  ldloc.s    V_48
    IL_039b:  ldc.r4     0.0
    IL_03a0:  bge.un.s   IL_03ae

    IL_03a2:  ldloc.s    V_63
    IL_03a4:  ldloc.s    V_6
    IL_03a6:  bgt.s      IL_03f6

    IL_03a8:  ldc.i4.s   18
    IL_03aa:  stloc.s    V_64
    IL_03ac:  br.s       IL_03f6

    IL_03ae:  ldloc.s    V_60
    IL_03b0:  brfalse.s  IL_03dd

    IL_03b2:  ldloc.s    V_48
    IL_03b4:  ldloc.s    V_58
    IL_03b6:  bge.un.s   IL_03c2

    IL_03b8:  ldc.i4.4
    IL_03b9:  call       int32 Game.TerrainData::MakeBlockValue(int32)
    IL_03be:  stloc.s    V_64
    IL_03c0:  br.s       IL_03f6

    IL_03c2:  ldloc.s    V_48
    IL_03c4:  ldloc.s    V_59
    IL_03c6:  bge.un.s   IL_03d2

    IL_03c8:  ldc.i4.3
    IL_03c9:  call       int32 Game.TerrainData::MakeBlockValue(int32)
    IL_03ce:  stloc.s    V_64
    IL_03d0:  br.s       IL_03f6

    IL_03d2:  ldc.i4.s   67
    IL_03d4:  call       int32 Game.TerrainData::MakeBlockValue(int32)
    IL_03d9:  stloc.s    V_64
    IL_03db:  br.s       IL_03f6

    IL_03dd:  ldloc.s    V_48
    IL_03df:  ldloc.s    V_59
    IL_03e1:  bge.un.s   IL_03ed

    IL_03e3:  ldc.i4.3
    IL_03e4:  call       int32 Game.TerrainData::MakeBlockValue(int32)
    IL_03e9:  stloc.s    V_64
    IL_03eb:  br.s       IL_03f6

    IL_03ed:  ldc.i4.s   67
    IL_03ef:  call       int32 Game.TerrainData::MakeBlockValue(int32)
    IL_03f4:  stloc.s    V_64
    IL_03f6:  ldloc.0
    IL_03f7:  ldloc.s    V_61
    IL_03f9:  ldloc.s    V_63
    IL_03fb:  add
    IL_03fc:  ldloc.s    V_64
    IL_03fe:  callvirt   instance void Game.TerrainData::SetCellValueFast(int32,
                                                                          int32)
    IL_0403:  ldloc.s    V_48
    IL_0405:  ldloc.s    V_47
    IL_0407:  add
    IL_0408:  stloc.s    V_48
    IL_040a:  ldloc.s    V_62
    IL_040c:  ldc.i4.1
    IL_040d:  add
    IL_040e:  stloc.s    V_62
    IL_0410:  ldloc.s    V_62
    IL_0412:  ldc.i4.8
    IL_0413:  blt        IL_038d

    IL_0418:  ldloc.s    V_44
    IL_041a:  ldloc.s    V_42
    IL_041c:  add
    IL_041d:  stloc.s    V_44
    IL_041f:  ldloc.s    V_45
    IL_0421:  ldloc.s    V_43
    IL_0423:  add
    IL_0424:  stloc.s    V_45
    IL_0426:  ldloc.s    V_46
    IL_0428:  ldc.i4.1
    IL_0429:  add
    IL_042a:  stloc.s    V_46
    IL_042c:  ldloc.s    V_46
    IL_042e:  ldc.i4.4
    IL_042f:  blt        IL_02a8

    IL_0434:  ldloc.s    V_37
    IL_0436:  ldloc.s    V_33
    IL_0438:  add
    IL_0439:  stloc.s    V_37
    IL_043b:  ldloc.s    V_38
    IL_043d:  ldloc.s    V_34
    IL_043f:  add
    IL_0440:  stloc.s    V_38
    IL_0442:  ldloc.s    V_39
    IL_0444:  ldloc.s    V_35
    IL_0446:  add
    IL_0447:  stloc.s    V_39
    IL_0449:  ldloc.s    V_40
    IL_044b:  ldloc.s    V_36
    IL_044d:  add
    IL_044e:  stloc.s    V_40
    IL_0450:  ldloc.s    V_41
    IL_0452:  ldc.i4.1
    IL_0453:  add
    IL_0454:  stloc.s    V_41
    IL_0456:  ldloc.s    V_41
    IL_0458:  ldc.i4.4
    IL_0459:  blt        IL_027e

    IL_045e:  ldloc.s    V_24
    IL_0460:  ldc.i4.1
    IL_0461:  add
    IL_0462:  stloc.s    V_24
    IL_0464:  ldloc.s    V_24
    IL_0466:  ldloc.s    V_5
    IL_0468:  callvirt   instance int32 Game.TerrainContentsGenerator/Grid3d::get_SizeY()
    IL_046d:  ldc.i4.1
    IL_046e:  sub
    IL_046f:  blt        IL_0215

    IL_0474:  ldloc.s    V_23
    IL_0476:  ldc.i4.1
    IL_0477:  add
    IL_0478:  stloc.s    V_23
    IL_047a:  ldloc.s    V_23
    IL_047c:  ldloc.s    V_5
    IL_047e:  callvirt   instance int32 Game.TerrainContentsGenerator/Grid3d::get_SizeZ()
    IL_0483:  ldc.i4.1
    IL_0484:  sub
    IL_0485:  blt        IL_020d

    IL_048a:  ldloc.s    V_22
    IL_048c:  ldc.i4.1
    IL_048d:  add
    IL_048e:  stloc.s    V_22
    IL_0490:  ldloc.s    V_22
    IL_0492:  ldloc.s    V_5
    IL_0494:  callvirt   instance int32 Game.TerrainContentsGenerator/Grid3d::get_SizeX()
    IL_0499:  ldc.i4.1
    IL_049a:  sub
    IL_049b:  blt        IL_0205

    IL_04a0:  ret
  } // end of method TerrainContentsGenerator::GenerateTerrain

  .method private hidebysig instance void 
          GenerateSurface(int32 chunkX,
                          int32 chunkZ) cil managed
  {
    // 代码大小       548 (0x224)
    .maxstack  4
    .locals init (class Game.TerrainData V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             class Game.Random V_6,
             int32 V_7,
             int32 V_8,
             int32 V_9,
             int32 V_10,
             int32 V_11,
             int32 V_12,
             int32 V_13,
             float32 V_14,
             int32 V_15,
             int32 V_16,
             int32 V_17,
             int32 V_18,
             int32 V_19,
             int32 V_20,
             int32 V_21,
             int32 V_22,
             int32 V_23)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_000b:  stloc.0
    IL_000c:  ldarg.1
    IL_000d:  ldc.i4.s   16
    IL_000f:  mul
    IL_0010:  dup
    IL_0011:  ldc.i4.s   16
    IL_0013:  add
    IL_0014:  stloc.1
    IL_0015:  ldc.i4.0
    IL_0016:  stloc.2
    IL_0017:  ldc.i4     0x80
    IL_001c:  stloc.3
    IL_001d:  ldarg.2
    IL_001e:  ldc.i4.s   16
    IL_0020:  mul
    IL_0021:  stloc.s    V_4
    IL_0023:  ldloc.s    V_4
    IL_0025:  ldc.i4.s   16
    IL_0027:  add
    IL_0028:  stloc.s    V_5
    IL_002a:  ldarg.0
    IL_002b:  ldfld      int32 Game.TerrainContentsGenerator::m_seed
    IL_0030:  ldarg.1
    IL_0031:  add
    IL_0032:  ldc.i4.s   101
    IL_0034:  ldarg.2
    IL_0035:  mul
    IL_0036:  add
    IL_0037:  newobj     instance void Game.Random::.ctor(int32)
    IL_003c:  stloc.s    V_6
    IL_003e:  stloc.s    V_7
    IL_0040:  br         IL_021b

    IL_0045:  ldloc.s    V_4
    IL_0047:  stloc.s    V_8
    IL_0049:  br         IL_020c

    IL_004e:  ldloc.0
    IL_004f:  ldloc.s    V_7
    IL_0051:  ldloc.3
    IL_0052:  ldc.i4.1
    IL_0053:  sub
    IL_0054:  ldloc.s    V_8
    IL_0056:  callvirt   instance int32 Game.TerrainData::CalculateCellIndex(int32,
                                                                             int32,
                                                                             int32)
    IL_005b:  stloc.s    V_9
    IL_005d:  ldloc.3
    IL_005e:  ldc.i4.1
    IL_005f:  sub
    IL_0060:  stloc.s    V_10
    IL_0062:  br         IL_01fe

    IL_0067:  ldloc.0
    IL_0068:  ldloc.s    V_9
    IL_006a:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32)
    IL_006f:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0074:  stloc.s    V_11
    IL_0076:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_007b:  ldloc.s    V_11
    IL_007d:  ldelem.ref
    IL_007e:  ldfld      bool Game.Block::IsTransparent
    IL_0083:  brtrue     IL_01f2

    IL_0088:  ldarg.0
    IL_0089:  ldloc.s    V_7
    IL_008b:  conv.r4
    IL_008c:  ldloc.s    V_8
    IL_008e:  conv.r4
    IL_008f:  call       instance float32 Game.TerrainContentsGenerator::CalculateMountainRangeFactor(float32,
                                                                                                      float32)
    IL_0094:  ldloc.0
    IL_0095:  ldloc.s    V_7
    IL_0097:  ldloc.s    V_8
    IL_0099:  callvirt   instance int32 Game.TerrainData::GetTemperatureFast(int32,
                                                                             int32)
    IL_009e:  stloc.s    V_12
    IL_00a0:  ldloc.0
    IL_00a1:  ldloc.s    V_7
    IL_00a3:  ldloc.s    V_8
    IL_00a5:  callvirt   instance int32 Game.TerrainData::GetHumidityFast(int32,
                                                                          int32)
    IL_00aa:  stloc.s    V_13
    IL_00ac:  ldc.r4     0.89999998
    IL_00b1:  sub
    IL_00b2:  ldc.r4     0.1
    IL_00b7:  div
    IL_00b8:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_00bd:  ldloc.s    V_13
    IL_00bf:  conv.r4
    IL_00c0:  ldc.r4     3.
    IL_00c5:  sub
    IL_00c6:  ldc.r4     12.
    IL_00cb:  div
    IL_00cc:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_00d1:  sub
    IL_00d2:  ldloc.s    V_10
    IL_00d4:  conv.r4
    IL_00d5:  ldc.r4     85.
    IL_00da:  sub
    IL_00db:  ldc.r4     5.0000001e-002
    IL_00e0:  mul
    IL_00e1:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_00e6:  add
    IL_00e7:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_00ec:  stloc.s    V_14
    IL_00ee:  ldc.r4     4.
    IL_00f3:  ldc.r4     0.0
    IL_00f8:  ldloc.s    V_14
    IL_00fa:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_00ff:  conv.i4
    IL_0100:  stloc.s    V_15
    IL_0102:  ldc.r4     7.
    IL_0107:  ldc.r4     0.0
    IL_010c:  ldloc.s    V_14
    IL_010e:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0113:  conv.i4
    IL_0114:  stloc.s    V_16
    IL_0116:  ldloc.s    V_6
    IL_0118:  ldloc.s    V_15
    IL_011a:  ldloc.s    V_16
    IL_011c:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0121:  stloc.s    V_17
    IL_0123:  ldc.i4.0
    IL_0124:  stloc.s    V_18
    IL_0126:  ldloc.s    V_11
    IL_0128:  ldc.i4.4
    IL_0129:  bne.un.s   IL_013d

    IL_012b:  ldloc.s    V_12
    IL_012d:  ldc.i4.4
    IL_012e:  ble.s      IL_0135

    IL_0130:  ldloc.s    V_12
    IL_0132:  ldc.i4.7
    IL_0133:  blt.s      IL_0138

    IL_0135:  ldc.i4.7
    IL_0136:  br.s       IL_0139

    IL_0138:  ldc.i4.6
    IL_0139:  stloc.s    V_18
    IL_013b:  br.s       IL_01a8

    IL_013d:  ldloc.s    V_12
    IL_013f:  ldc.i4.4
    IL_0140:  div
    IL_0141:  stloc.s    V_20
    IL_0143:  ldloc.s    V_10
    IL_0145:  ldc.i4.1
    IL_0146:  add
    IL_0147:  ldloc.3
    IL_0148:  blt.s      IL_014d

    IL_014a:  ldc.i4.0
    IL_014b:  br.s       IL_015b

    IL_014d:  ldloc.0
    IL_014e:  ldloc.s    V_7
    IL_0150:  ldloc.s    V_10
    IL_0152:  ldc.i4.1
    IL_0153:  add
    IL_0154:  ldloc.s    V_8
    IL_0156:  callvirt   instance int32 Game.TerrainData::GetCellContentsFast(int32,
                                                                              int32,
                                                                              int32)
    IL_015b:  stloc.s    V_21
    IL_015d:  ldloc.s    V_10
    IL_015f:  ldc.i4.s   66
    IL_0161:  blt.s      IL_0175

    IL_0163:  ldloc.s    V_10
    IL_0165:  ldc.i4.s   84
    IL_0167:  ldloc.s    V_20
    IL_0169:  add
    IL_016a:  beq.s      IL_0175

    IL_016c:  ldloc.s    V_10
    IL_016e:  ldc.i4.s   103
    IL_0170:  ldloc.s    V_20
    IL_0172:  add
    IL_0173:  bne.un.s   IL_0188

    IL_0175:  ldloc.s    V_13
    IL_0177:  ldc.i4.s   9
    IL_0179:  bne.un.s   IL_0188

    IL_017b:  ldloc.s    V_12
    IL_017d:  ldc.i4.6
    IL_017e:  rem
    IL_017f:  ldc.i4.1
    IL_0180:  bne.un.s   IL_0188

    IL_0182:  ldc.i4.s   66
    IL_0184:  stloc.s    V_18
    IL_0186:  br.s       IL_01a8

    IL_0188:  ldloc.s    V_21
    IL_018a:  ldc.i4.s   18
    IL_018c:  bne.un.s   IL_01a5

    IL_018e:  ldloc.s    V_13
    IL_0190:  ldc.i4.8
    IL_0191:  ble.s      IL_01a5

    IL_0193:  ldloc.s    V_13
    IL_0195:  ldc.i4.2
    IL_0196:  rem
    IL_0197:  brtrue.s   IL_01a5

    IL_0199:  ldloc.s    V_12
    IL_019b:  ldc.i4.3
    IL_019c:  rem
    IL_019d:  brtrue.s   IL_01a5

    IL_019f:  ldc.i4.s   72
    IL_01a1:  stloc.s    V_18
    IL_01a3:  br.s       IL_01a8

    IL_01a5:  ldc.i4.2
    IL_01a6:  stloc.s    V_18
    IL_01a8:  ldloc.0
    IL_01a9:  ldloc.s    V_7
    IL_01ab:  ldloc.s    V_10
    IL_01ad:  ldc.i4.1
    IL_01ae:  add
    IL_01af:  ldloc.s    V_8
    IL_01b1:  callvirt   instance int32 Game.TerrainData::CalculateCellIndex(int32,
                                                                             int32,
                                                                             int32)
    IL_01b6:  stloc.s    V_19
    IL_01b8:  ldloc.s    V_19
    IL_01ba:  ldloc.s    V_17
    IL_01bc:  sub
    IL_01bd:  stloc.s    V_22
    IL_01bf:  br.s       IL_01ea

    IL_01c1:  ldloc.0
    IL_01c2:  ldloc.s    V_22
    IL_01c4:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32)
    IL_01c9:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_01ce:  brfalse.s  IL_01e4

    IL_01d0:  ldc.i4.0
    IL_01d1:  ldloc.s    V_18
    IL_01d3:  call       int32 Game.TerrainData::ReplaceContents(int32,
                                                                 int32)
    IL_01d8:  stloc.s    V_23
    IL_01da:  ldloc.0
    IL_01db:  ldloc.s    V_22
    IL_01dd:  ldloc.s    V_23
    IL_01df:  callvirt   instance void Game.TerrainData::SetCellValueFast(int32,
                                                                          int32)
    IL_01e4:  ldloc.s    V_22
    IL_01e6:  ldc.i4.1
    IL_01e7:  add
    IL_01e8:  stloc.s    V_22
    IL_01ea:  ldloc.s    V_22
    IL_01ec:  ldloc.s    V_19
    IL_01ee:  blt.s      IL_01c1

    IL_01f0:  br.s       IL_0206

    IL_01f2:  ldloc.s    V_10
    IL_01f4:  ldc.i4.1
    IL_01f5:  sub
    IL_01f6:  stloc.s    V_10
    IL_01f8:  ldloc.s    V_9
    IL_01fa:  ldc.i4.1
    IL_01fb:  sub
    IL_01fc:  stloc.s    V_9
    IL_01fe:  ldloc.s    V_10
    IL_0200:  ldloc.2
    IL_0201:  bge        IL_0067

    IL_0206:  ldloc.s    V_8
    IL_0208:  ldc.i4.1
    IL_0209:  add
    IL_020a:  stloc.s    V_8
    IL_020c:  ldloc.s    V_8
    IL_020e:  ldloc.s    V_5
    IL_0210:  blt        IL_004e

    IL_0215:  ldloc.s    V_7
    IL_0217:  ldc.i4.1
    IL_0218:  add
    IL_0219:  stloc.s    V_7
    IL_021b:  ldloc.s    V_7
    IL_021d:  ldloc.1
    IL_021e:  blt        IL_0045

    IL_0223:  ret
  } // end of method TerrainContentsGenerator::GenerateSurface

  .method private hidebysig instance void 
          GenerateMinerals(int32 chunkX,
                           int32 chunkZ) cil managed
  {
    // 代码大小       1450 (0x5aa)
    .maxstack  12
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7,
             class Game.Random V_8,
             int32 V_9,
             float32 V_10,
             int32 V_11,
             int32 V_12,
             int32 V_13,
             int32 V_14,
             int32 V_15,
             int32 V_16,
             int32 V_17,
             int32 V_18,
             int32 V_19,
             int32 V_20,
             int32 V_21,
             int32 V_22,
             int32 V_23,
             int32 V_24,
             int32 V_25,
             int32 V_26,
             int32 V_27,
             int32 V_28,
             int32 V_29,
             int32 V_30,
             int32 V_31,
             int32 V_32,
             int32 V_33,
             int32 V_34,
             int32 V_35,
             int32 V_36,
             int32 V_37,
             int32 V_38,
             int32 V_39,
             int32 V_40,
             int32 V_41,
             int32 V_42,
             int32 V_43,
             int32 V_44,
             int32 V_45,
             int32 V_46)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.TerrainContentsGenerator::TGCavesAndPockets
    IL_0006:  brtrue.s   IL_0009

    IL_0008:  ret

    IL_0009:  ldarg.1
    IL_000a:  ldc.i4.s   16
    IL_000c:  mul
    IL_000d:  stloc.0
    IL_000e:  ldloc.0
    IL_000f:  ldc.i4.s   16
    IL_0011:  add
    IL_0012:  stloc.1
    IL_0013:  ldarg.2
    IL_0014:  ldc.i4.s   16
    IL_0016:  mul
    IL_0017:  stloc.2
    IL_0018:  ldloc.2
    IL_0019:  ldc.i4.s   16
    IL_001b:  add
    IL_001c:  stloc.3
    IL_001d:  ldc.i4.0
    IL_001e:  stloc.s    V_4
    IL_0020:  ldc.i4     0x80
    IL_0025:  stloc.s    V_5
    IL_0027:  ldarg.1
    IL_0028:  ldc.i4.1
    IL_0029:  sub
    IL_002a:  stloc.s    V_6
    IL_002c:  br         IL_059f

    IL_0031:  ldarg.2
    IL_0032:  ldc.i4.1
    IL_0033:  sub
    IL_0034:  stloc.s    V_7
    IL_0036:  br         IL_058f

    IL_003b:  ldarg.0
    IL_003c:  ldfld      int32 Game.TerrainContentsGenerator::m_seed
    IL_0041:  ldloc.s    V_6
    IL_0043:  add
    IL_0044:  ldc.i4.s   119
    IL_0046:  ldloc.s    V_7
    IL_0048:  mul
    IL_0049:  add
    IL_004a:  newobj     instance void Game.Random::.ctor(int32)
    IL_004f:  stloc.s    V_8
    IL_0051:  ldloc.s    V_8
    IL_0053:  ldc.i4.0
    IL_0054:  ldc.i4.s   10
    IL_0056:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_005b:  stloc.s    V_9
    IL_005d:  ldc.i4.0
    IL_005e:  stloc.s    V_18
    IL_0060:  br.s       IL_0072

    IL_0062:  ldloc.s    V_8
    IL_0064:  ldc.i4.0
    IL_0065:  ldc.i4.1
    IL_0066:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_006b:  pop
    IL_006c:  ldloc.s    V_18
    IL_006e:  ldc.i4.1
    IL_006f:  add
    IL_0070:  stloc.s    V_18
    IL_0072:  ldloc.s    V_18
    IL_0074:  ldloc.s    V_9
    IL_0076:  blt.s      IL_0062

    IL_0078:  ldarg.0
    IL_0079:  ldloc.s    V_6
    IL_007b:  ldc.i4.s   16
    IL_007d:  mul
    IL_007e:  conv.r4
    IL_007f:  ldloc.s    V_7
    IL_0081:  ldc.i4.s   16
    IL_0083:  mul
    IL_0084:  conv.r4
    IL_0085:  call       instance float32 Game.TerrainContentsGenerator::CalculateMountainRangeFactor(float32,
                                                                                                      float32)
    IL_008a:  stloc.s    V_10
    IL_008c:  ldc.r4     3.
    IL_0091:  ldc.r4     4.
    IL_0096:  ldloc.s    V_10
    IL_0098:  mul
    IL_0099:  ldloc.s    V_6
    IL_009b:  conv.r4
    IL_009c:  ldloc.s    V_7
    IL_009e:  conv.r4
    IL_009f:  ldc.r4     0.33000001
    IL_00a4:  ldc.i4.1
    IL_00a5:  ldc.r4     1.
    IL_00aa:  ldc.r4     1.
    IL_00af:  call       float32 Game.SimplexNoise::OctavedNoise(float32,
                                                                 float32,
                                                                 float32,
                                                                 int32,
                                                                 float32,
                                                                 float32)
    IL_00b4:  mul
    IL_00b5:  add
    IL_00b6:  conv.i4
    IL_00b7:  stloc.s    V_11
    IL_00b9:  ldc.i4.0
    IL_00ba:  stloc.s    V_19
    IL_00bc:  br.s       IL_0132

    IL_00be:  ldloc.s    V_6
    IL_00c0:  ldc.i4.s   16
    IL_00c2:  mul
    IL_00c3:  ldloc.s    V_8
    IL_00c5:  ldc.i4.0
    IL_00c6:  ldc.i4.s   15
    IL_00c8:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_00cd:  add
    IL_00ce:  stloc.s    V_20
    IL_00d0:  ldloc.s    V_8
    IL_00d2:  ldc.i4.s   30
    IL_00d4:  ldc.i4.s   90
    IL_00d6:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_00db:  stloc.s    V_21
    IL_00dd:  ldloc.s    V_7
    IL_00df:  ldc.i4.s   16
    IL_00e1:  mul
    IL_00e2:  ldloc.s    V_8
    IL_00e4:  ldc.i4.0
    IL_00e5:  ldc.i4.s   15
    IL_00e7:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_00ec:  add
    IL_00ed:  stloc.s    V_22
    IL_00ef:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_coalBrushes
    IL_00f4:  ldloc.s    V_8
    IL_00f6:  ldc.i4.0
    IL_00f7:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_coalBrushes
    IL_00fc:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::get_Count()
    IL_0101:  ldc.i4.1
    IL_0102:  sub
    IL_0103:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0108:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::get_Item(int32)
    IL_010d:  ldarg.0
    IL_010e:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_0113:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0118:  ldloc.s    V_20
    IL_011a:  ldloc.s    V_21
    IL_011c:  ldloc.s    V_22
    IL_011e:  ldloc.0
    IL_011f:  ldloc.1
    IL_0120:  ldloc.s    V_4
    IL_0122:  ldloc.s    V_5
    IL_0124:  ldloc.2
    IL_0125:  ldloc.3
    IL_0126:  ldc.i4.3
    IL_0127:  callvirt   instance void Game.TerrainBrush::PaintFastSelective(class Game.TerrainData,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32)
    IL_012c:  ldloc.s    V_19
    IL_012e:  ldc.i4.1
    IL_012f:  add
    IL_0130:  stloc.s    V_19
    IL_0132:  ldloc.s    V_19
    IL_0134:  ldloc.s    V_11
    IL_0136:  blt.s      IL_00be

    IL_0138:  ldc.r4     2.
    IL_013d:  ldc.r4     3.
    IL_0142:  ldloc.s    V_10
    IL_0144:  mul
    IL_0145:  ldloc.s    V_6
    IL_0147:  ldc.i4     0x2c9
    IL_014c:  add
    IL_014d:  conv.r4
    IL_014e:  ldloc.s    V_7
    IL_0150:  ldc.i4     0xd3
    IL_0155:  add
    IL_0156:  conv.r4
    IL_0157:  ldc.r4     0.33000001
    IL_015c:  ldc.i4.1
    IL_015d:  ldc.r4     1.
    IL_0162:  ldc.r4     1.
    IL_0167:  call       float32 Game.SimplexNoise::OctavedNoise(float32,
                                                                 float32,
                                                                 float32,
                                                                 int32,
                                                                 float32,
                                                                 float32)
    IL_016c:  mul
    IL_016d:  add
    IL_016e:  conv.i4
    IL_016f:  stloc.s    V_12
    IL_0171:  ldc.i4.0
    IL_0172:  stloc.s    V_23
    IL_0174:  br.s       IL_01ea

    IL_0176:  ldloc.s    V_6
    IL_0178:  ldc.i4.s   16
    IL_017a:  mul
    IL_017b:  ldloc.s    V_8
    IL_017d:  ldc.i4.0
    IL_017e:  ldc.i4.s   15
    IL_0180:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0185:  add
    IL_0186:  stloc.s    V_24
    IL_0188:  ldloc.s    V_8
    IL_018a:  ldc.i4.5
    IL_018b:  ldc.i4.s   40
    IL_018d:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0192:  stloc.s    V_25
    IL_0194:  ldloc.s    V_7
    IL_0196:  ldc.i4.s   16
    IL_0198:  mul
    IL_0199:  ldloc.s    V_8
    IL_019b:  ldc.i4.0
    IL_019c:  ldc.i4.s   15
    IL_019e:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_01a3:  add
    IL_01a4:  stloc.s    V_26
    IL_01a6:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_ironBrushes
    IL_01ab:  ldloc.s    V_8
    IL_01ad:  ldc.i4.0
    IL_01ae:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_ironBrushes
    IL_01b3:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::get_Count()
    IL_01b8:  ldc.i4.1
    IL_01b9:  sub
    IL_01ba:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_01bf:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::get_Item(int32)
    IL_01c4:  ldarg.0
    IL_01c5:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_01ca:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_01cf:  ldloc.s    V_24
    IL_01d1:  ldloc.s    V_25
    IL_01d3:  ldloc.s    V_26
    IL_01d5:  ldloc.0
    IL_01d6:  ldloc.1
    IL_01d7:  ldloc.s    V_4
    IL_01d9:  ldloc.s    V_5
    IL_01db:  ldloc.2
    IL_01dc:  ldloc.3
    IL_01dd:  ldc.i4.s   67
    IL_01df:  callvirt   instance void Game.TerrainBrush::PaintFastSelective(class Game.TerrainData,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32)
    IL_01e4:  ldloc.s    V_23
    IL_01e6:  ldc.i4.1
    IL_01e7:  add
    IL_01e8:  stloc.s    V_23
    IL_01ea:  ldloc.s    V_23
    IL_01ec:  ldloc.s    V_12
    IL_01ee:  blt.s      IL_0176

    IL_01f0:  ldc.r4     3.
    IL_01f5:  ldc.r4     3.
    IL_01fa:  ldloc.s    V_10
    IL_01fc:  mul
    IL_01fd:  ldloc.s    V_6
    IL_01ff:  ldc.i4     0x4bb
    IL_0204:  add
    IL_0205:  conv.r4
    IL_0206:  ldloc.s    V_7
    IL_0208:  ldc.i4     0x18c
    IL_020d:  add
    IL_020e:  conv.r4
    IL_020f:  ldc.r4     0.33000001
    IL_0214:  ldc.i4.1
    IL_0215:  ldc.r4     1.
    IL_021a:  ldc.r4     1.
    IL_021f:  call       float32 Game.SimplexNoise::OctavedNoise(float32,
                                                                 float32,
                                                                 float32,
                                                                 int32,
                                                                 float32,
                                                                 float32)
    IL_0224:  mul
    IL_0225:  add
    IL_0226:  conv.i4
    IL_0227:  stloc.s    V_13
    IL_0229:  ldc.i4.0
    IL_022a:  stloc.s    V_27
    IL_022c:  br.s       IL_02a2

    IL_022e:  ldloc.s    V_6
    IL_0230:  ldc.i4.s   16
    IL_0232:  mul
    IL_0233:  ldloc.s    V_8
    IL_0235:  ldc.i4.0
    IL_0236:  ldc.i4.s   15
    IL_0238:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_023d:  add
    IL_023e:  stloc.s    V_28
    IL_0240:  ldloc.s    V_8
    IL_0242:  ldc.i4.s   25
    IL_0244:  ldc.i4.s   65
    IL_0246:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_024b:  stloc.s    V_29
    IL_024d:  ldloc.s    V_7
    IL_024f:  ldc.i4.s   16
    IL_0251:  mul
    IL_0252:  ldloc.s    V_8
    IL_0254:  ldc.i4.0
    IL_0255:  ldc.i4.s   15
    IL_0257:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_025c:  add
    IL_025d:  stloc.s    V_30
    IL_025f:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_copperBrushes
    IL_0264:  ldloc.s    V_8
    IL_0266:  ldc.i4.0
    IL_0267:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_copperBrushes
    IL_026c:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::get_Count()
    IL_0271:  ldc.i4.1
    IL_0272:  sub
    IL_0273:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0278:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::get_Item(int32)
    IL_027d:  ldarg.0
    IL_027e:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_0283:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0288:  ldloc.s    V_28
    IL_028a:  ldloc.s    V_29
    IL_028c:  ldloc.s    V_30
    IL_028e:  ldloc.0
    IL_028f:  ldloc.1
    IL_0290:  ldloc.s    V_4
    IL_0292:  ldloc.s    V_5
    IL_0294:  ldloc.2
    IL_0295:  ldloc.3
    IL_0296:  ldc.i4.3
    IL_0297:  callvirt   instance void Game.TerrainBrush::PaintFastSelective(class Game.TerrainData,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32)
    IL_029c:  ldloc.s    V_27
    IL_029e:  ldc.i4.1
    IL_029f:  add
    IL_02a0:  stloc.s    V_27
    IL_02a2:  ldloc.s    V_27
    IL_02a4:  ldloc.s    V_13
    IL_02a6:  blt.s      IL_022e

    IL_02a8:  ldc.r4     3.
    IL_02ad:  ldc.r4     3.
    IL_02b2:  ldloc.s    V_10
    IL_02b4:  mul
    IL_02b5:  ldloc.s    V_6
    IL_02b7:  ldc.i4     0x393
    IL_02bc:  add
    IL_02bd:  conv.r4
    IL_02be:  ldloc.s    V_7
    IL_02c0:  ldc.i4     0x110
    IL_02c5:  add
    IL_02c6:  conv.r4
    IL_02c7:  ldc.r4     0.33000001
    IL_02cc:  ldc.i4.1
    IL_02cd:  ldc.r4     1.
    IL_02d2:  ldc.r4     1.
    IL_02d7:  call       float32 Game.SimplexNoise::OctavedNoise(float32,
                                                                 float32,
                                                                 float32,
                                                                 int32,
                                                                 float32,
                                                                 float32)
    IL_02dc:  mul
    IL_02dd:  add
    IL_02de:  conv.i4
    IL_02df:  stloc.s    V_14
    IL_02e1:  ldc.i4.0
    IL_02e2:  stloc.s    V_31
    IL_02e4:  br.s       IL_035a

    IL_02e6:  ldloc.s    V_6
    IL_02e8:  ldc.i4.s   16
    IL_02ea:  mul
    IL_02eb:  ldloc.s    V_8
    IL_02ed:  ldc.i4.0
    IL_02ee:  ldc.i4.s   15
    IL_02f0:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_02f5:  add
    IL_02f6:  stloc.s    V_32
    IL_02f8:  ldloc.s    V_8
    IL_02fa:  ldc.i4.s   50
    IL_02fc:  ldc.i4.s   70
    IL_02fe:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0303:  stloc.s    V_33
    IL_0305:  ldloc.s    V_7
    IL_0307:  ldc.i4.s   16
    IL_0309:  mul
    IL_030a:  ldloc.s    V_8
    IL_030c:  ldc.i4.0
    IL_030d:  ldc.i4.s   15
    IL_030f:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0314:  add
    IL_0315:  stloc.s    V_34
    IL_0317:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_saltpeterBrushes
    IL_031c:  ldloc.s    V_8
    IL_031e:  ldc.i4.0
    IL_031f:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_saltpeterBrushes
    IL_0324:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::get_Count()
    IL_0329:  ldc.i4.1
    IL_032a:  sub
    IL_032b:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0330:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::get_Item(int32)
    IL_0335:  ldarg.0
    IL_0336:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_033b:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0340:  ldloc.s    V_32
    IL_0342:  ldloc.s    V_33
    IL_0344:  ldloc.s    V_34
    IL_0346:  ldloc.0
    IL_0347:  ldloc.1
    IL_0348:  ldloc.s    V_4
    IL_034a:  ldloc.s    V_5
    IL_034c:  ldloc.2
    IL_034d:  ldloc.3
    IL_034e:  ldc.i4.4
    IL_034f:  callvirt   instance void Game.TerrainBrush::PaintFastSelective(class Game.TerrainData,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32)
    IL_0354:  ldloc.s    V_31
    IL_0356:  ldc.i4.1
    IL_0357:  add
    IL_0358:  stloc.s    V_31
    IL_035a:  ldloc.s    V_31
    IL_035c:  ldloc.s    V_14
    IL_035e:  blt.s      IL_02e6

    IL_0360:  ldc.r4     4.
    IL_0365:  ldc.r4     3.
    IL_036a:  ldloc.s    V_10
    IL_036c:  mul
    IL_036d:  ldloc.s    V_6
    IL_036f:  ldc.i4     0x2c7
    IL_0374:  add
    IL_0375:  conv.r4
    IL_0376:  ldloc.s    V_7
    IL_0378:  ldc.i4     0x4aa
    IL_037d:  add
    IL_037e:  conv.r4
    IL_037f:  ldc.r4     0.33000001
    IL_0384:  ldc.i4.1
    IL_0385:  ldc.r4     1.
    IL_038a:  ldc.r4     1.
    IL_038f:  call       float32 Game.SimplexNoise::OctavedNoise(float32,
                                                                 float32,
                                                                 float32,
                                                                 int32,
                                                                 float32,
                                                                 float32)
    IL_0394:  mul
    IL_0395:  add
    IL_0396:  conv.i4
    IL_0397:  stloc.s    V_15
    IL_0399:  ldc.i4.0
    IL_039a:  stloc.s    V_35
    IL_039c:  br.s       IL_0412

    IL_039e:  ldloc.s    V_6
    IL_03a0:  ldc.i4.s   16
    IL_03a2:  mul
    IL_03a3:  ldloc.s    V_8
    IL_03a5:  ldc.i4.0
    IL_03a6:  ldc.i4.s   15
    IL_03a8:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_03ad:  add
    IL_03ae:  stloc.s    V_36
    IL_03b0:  ldloc.s    V_8
    IL_03b2:  ldc.i4.5
    IL_03b3:  ldc.i4.s   40
    IL_03b5:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_03ba:  stloc.s    V_37
    IL_03bc:  ldloc.s    V_7
    IL_03be:  ldc.i4.s   16
    IL_03c0:  mul
    IL_03c1:  ldloc.s    V_8
    IL_03c3:  ldc.i4.0
    IL_03c4:  ldc.i4.s   15
    IL_03c6:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_03cb:  add
    IL_03cc:  stloc.s    V_38
    IL_03ce:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_sulphurBrushes
    IL_03d3:  ldloc.s    V_8
    IL_03d5:  ldc.i4.0
    IL_03d6:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_sulphurBrushes
    IL_03db:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::get_Count()
    IL_03e0:  ldc.i4.1
    IL_03e1:  sub
    IL_03e2:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_03e7:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::get_Item(int32)
    IL_03ec:  ldarg.0
    IL_03ed:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_03f2:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_03f7:  ldloc.s    V_36
    IL_03f9:  ldloc.s    V_37
    IL_03fb:  ldloc.s    V_38
    IL_03fd:  ldloc.0
    IL_03fe:  ldloc.1
    IL_03ff:  ldloc.s    V_4
    IL_0401:  ldloc.s    V_5
    IL_0403:  ldloc.2
    IL_0404:  ldloc.3
    IL_0405:  ldc.i4.s   67
    IL_0407:  callvirt   instance void Game.TerrainBrush::PaintFastSelective(class Game.TerrainData,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32)
    IL_040c:  ldloc.s    V_35
    IL_040e:  ldc.i4.1
    IL_040f:  add
    IL_0410:  stloc.s    V_35
    IL_0412:  ldloc.s    V_35
    IL_0414:  ldloc.s    V_15
    IL_0416:  blt.s      IL_039e

    IL_0418:  ldc.r4     1.
    IL_041d:  ldc.r4     2.
    IL_0422:  ldloc.s    V_10
    IL_0424:  mul
    IL_0425:  ldloc.s    V_6
    IL_0427:  ldc.i4     0x1b0
    IL_042c:  add
    IL_042d:  conv.r4
    IL_042e:  ldloc.s    V_7
    IL_0430:  ldc.i4     0x38b
    IL_0435:  add
    IL_0436:  conv.r4
    IL_0437:  ldc.r4     0.33000001
    IL_043c:  ldc.i4.1
    IL_043d:  ldc.r4     1.
    IL_0442:  ldc.r4     1.
    IL_0447:  call       float32 Game.SimplexNoise::OctavedNoise(float32,
                                                                 float32,
                                                                 float32,
                                                                 int32,
                                                                 float32,
                                                                 float32)
    IL_044c:  mul
    IL_044d:  add
    IL_044e:  conv.i4
    IL_044f:  stloc.s    V_16
    IL_0451:  ldc.i4.0
    IL_0452:  stloc.s    V_39
    IL_0454:  br.s       IL_04ca

    IL_0456:  ldloc.s    V_6
    IL_0458:  ldc.i4.s   16
    IL_045a:  mul
    IL_045b:  ldloc.s    V_8
    IL_045d:  ldc.i4.0
    IL_045e:  ldc.i4.s   15
    IL_0460:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0465:  add
    IL_0466:  stloc.s    V_40
    IL_0468:  ldloc.s    V_8
    IL_046a:  ldc.i4.4
    IL_046b:  ldc.i4.s   15
    IL_046d:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0472:  stloc.s    V_41
    IL_0474:  ldloc.s    V_7
    IL_0476:  ldc.i4.s   16
    IL_0478:  mul
    IL_0479:  ldloc.s    V_8
    IL_047b:  ldc.i4.0
    IL_047c:  ldc.i4.s   15
    IL_047e:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0483:  add
    IL_0484:  stloc.s    V_42
    IL_0486:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_diamondBrushes
    IL_048b:  ldloc.s    V_8
    IL_048d:  ldc.i4.0
    IL_048e:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_diamondBrushes
    IL_0493:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::get_Count()
    IL_0498:  ldc.i4.1
    IL_0499:  sub
    IL_049a:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_049f:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::get_Item(int32)
    IL_04a4:  ldarg.0
    IL_04a5:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_04aa:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_04af:  ldloc.s    V_40
    IL_04b1:  ldloc.s    V_41
    IL_04b3:  ldloc.s    V_42
    IL_04b5:  ldloc.0
    IL_04b6:  ldloc.1
    IL_04b7:  ldloc.s    V_4
    IL_04b9:  ldloc.s    V_5
    IL_04bb:  ldloc.2
    IL_04bc:  ldloc.3
    IL_04bd:  ldc.i4.s   67
    IL_04bf:  callvirt   instance void Game.TerrainBrush::PaintFastSelective(class Game.TerrainData,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32)
    IL_04c4:  ldloc.s    V_39
    IL_04c6:  ldc.i4.1
    IL_04c7:  add
    IL_04c8:  stloc.s    V_39
    IL_04ca:  ldloc.s    V_39
    IL_04cc:  ldloc.s    V_16
    IL_04ce:  blt.s      IL_0456

    IL_04d0:  ldc.r4     3.
    IL_04d5:  ldc.r4     3.
    IL_04da:  ldloc.s    V_10
    IL_04dc:  mul
    IL_04dd:  ldloc.s    V_6
    IL_04df:  ldc.i4     0x31f
    IL_04e4:  add
    IL_04e5:  conv.r4
    IL_04e6:  ldloc.s    V_7
    IL_04e8:  ldc.i4     0x83
    IL_04ed:  add
    IL_04ee:  conv.r4
    IL_04ef:  ldc.r4     0.33000001
    IL_04f4:  ldc.i4.1
    IL_04f5:  ldc.r4     1.
    IL_04fa:  ldc.r4     1.
    IL_04ff:  call       float32 Game.SimplexNoise::OctavedNoise(float32,
                                                                 float32,
                                                                 float32,
                                                                 int32,
                                                                 float32,
                                                                 float32)
    IL_0504:  mul
    IL_0505:  add
    IL_0506:  conv.i4
    IL_0507:  stloc.s    V_17
    IL_0509:  ldc.i4.0
    IL_050a:  stloc.s    V_43
    IL_050c:  br.s       IL_0583

    IL_050e:  ldloc.s    V_6
    IL_0510:  ldc.i4.s   16
    IL_0512:  mul
    IL_0513:  ldloc.s    V_8
    IL_0515:  ldc.i4.0
    IL_0516:  ldc.i4.s   15
    IL_0518:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_051d:  add
    IL_051e:  stloc.s    V_44
    IL_0520:  ldloc.s    V_8
    IL_0522:  ldc.i4.s   10
    IL_0524:  ldc.i4.s   50
    IL_0526:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_052b:  stloc.s    V_45
    IL_052d:  ldloc.s    V_7
    IL_052f:  ldc.i4.s   16
    IL_0531:  mul
    IL_0532:  ldloc.s    V_8
    IL_0534:  ldc.i4.0
    IL_0535:  ldc.i4.s   15
    IL_0537:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_053c:  add
    IL_053d:  stloc.s    V_46
    IL_053f:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_germaniumBrushes
    IL_0544:  ldloc.s    V_8
    IL_0546:  ldc.i4.0
    IL_0547:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_germaniumBrushes
    IL_054c:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::get_Count()
    IL_0551:  ldc.i4.1
    IL_0552:  sub
    IL_0553:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0558:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::get_Item(int32)
    IL_055d:  ldarg.0
    IL_055e:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_0563:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0568:  ldloc.s    V_44
    IL_056a:  ldloc.s    V_45
    IL_056c:  ldloc.s    V_46
    IL_056e:  ldloc.0
    IL_056f:  ldloc.1
    IL_0570:  ldloc.s    V_4
    IL_0572:  ldloc.s    V_5
    IL_0574:  ldloc.2
    IL_0575:  ldloc.3
    IL_0576:  ldc.i4.s   67
    IL_0578:  callvirt   instance void Game.TerrainBrush::PaintFastSelective(class Game.TerrainData,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32)
    IL_057d:  ldloc.s    V_43
    IL_057f:  ldc.i4.1
    IL_0580:  add
    IL_0581:  stloc.s    V_43
    IL_0583:  ldloc.s    V_43
    IL_0585:  ldloc.s    V_17
    IL_0587:  blt.s      IL_050e

    IL_0589:  ldloc.s    V_7
    IL_058b:  ldc.i4.1
    IL_058c:  add
    IL_058d:  stloc.s    V_7
    IL_058f:  ldloc.s    V_7
    IL_0591:  ldarg.2
    IL_0592:  ldc.i4.1
    IL_0593:  add
    IL_0594:  ble        IL_003b

    IL_0599:  ldloc.s    V_6
    IL_059b:  ldc.i4.1
    IL_059c:  add
    IL_059d:  stloc.s    V_6
    IL_059f:  ldloc.s    V_6
    IL_05a1:  ldarg.1
    IL_05a2:  ldc.i4.1
    IL_05a3:  add
    IL_05a4:  ble        IL_0031

    IL_05a9:  ret
  } // end of method TerrainContentsGenerator::GenerateMinerals

  .method private hidebysig instance void 
          GeneratePockets(int32 chunkX,
                          int32 chunkZ) cil managed
  {
    // 代码大小       1576 (0x628)
    .maxstack  12
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7,
             class Game.Random V_8,
             int32 V_9,
             float32 V_10,
             int32 V_11,
             int32 V_12,
             int32 V_13,
             int32 V_14,
             int32 V_15,
             int32 V_16,
             int32 V_17,
             int32 V_18,
             int32 V_19,
             int32 V_20,
             int32 V_21,
             int32 V_22,
             int32 V_23,
             int32 V_24,
             int32 V_25,
             int32 V_26,
             int32 V_27,
             int32 V_28,
             int32 V_29,
             int32 V_30,
             int32 V_31,
             int32 V_32,
             int32 V_33,
             int32 V_34,
             int32 V_35,
             int32 V_36,
             int32 V_37,
             int32 V_38,
             int32 V_39,
             int32 V_40,
             int32 V_41,
             int32 V_42,
             int32 V_43,
             int32 V_44,
             int32 V_45,
             int32 V_46,
             int32 V_47,
             int32 V_48,
             valuetype [Engine]Engine.Vector2 V_49,
             int32 V_50,
             int32 V_51,
             int32 V_52,
             int32 V_53,
             int32 V_54,
             int32 V_55,
             int32 V_56,
             int32 V_57,
             valuetype [Engine]Engine.Vector2 V_58,
             int32 V_59,
             int32 V_60,
             int32 V_61)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.TerrainContentsGenerator::TGCavesAndPockets
    IL_0006:  brtrue.s   IL_0009

    IL_0008:  ret

    IL_0009:  ldarg.1
    IL_000a:  ldc.i4.s   16
    IL_000c:  mul
    IL_000d:  stloc.0
    IL_000e:  ldloc.0
    IL_000f:  ldc.i4.s   16
    IL_0011:  add
    IL_0012:  stloc.1
    IL_0013:  ldarg.2
    IL_0014:  ldc.i4.s   16
    IL_0016:  mul
    IL_0017:  stloc.2
    IL_0018:  ldloc.2
    IL_0019:  ldc.i4.s   16
    IL_001b:  add
    IL_001c:  stloc.3
    IL_001d:  ldc.i4.0
    IL_001e:  stloc.s    V_4
    IL_0020:  ldc.i4     0x80
    IL_0025:  stloc.s    V_5
    IL_0027:  ldarg.1
    IL_0028:  ldc.i4.1
    IL_0029:  sub
    IL_002a:  stloc.s    V_6
    IL_002c:  br         IL_061d

    IL_0031:  ldarg.2
    IL_0032:  ldc.i4.1
    IL_0033:  sub
    IL_0034:  stloc.s    V_7
    IL_0036:  br         IL_060d

    IL_003b:  ldarg.0
    IL_003c:  ldfld      int32 Game.TerrainContentsGenerator::m_seed
    IL_0041:  ldloc.s    V_6
    IL_0043:  add
    IL_0044:  ldc.i4.s   71
    IL_0046:  ldloc.s    V_7
    IL_0048:  mul
    IL_0049:  add
    IL_004a:  newobj     instance void Game.Random::.ctor(int32)
    IL_004f:  stloc.s    V_8
    IL_0051:  ldloc.s    V_8
    IL_0053:  ldc.i4.0
    IL_0054:  ldc.i4.s   10
    IL_0056:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_005b:  stloc.s    V_9
    IL_005d:  ldc.i4.0
    IL_005e:  stloc.s    V_11
    IL_0060:  br.s       IL_0072

    IL_0062:  ldloc.s    V_8
    IL_0064:  ldc.i4.0
    IL_0065:  ldc.i4.1
    IL_0066:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_006b:  pop
    IL_006c:  ldloc.s    V_11
    IL_006e:  ldc.i4.1
    IL_006f:  add
    IL_0070:  stloc.s    V_11
    IL_0072:  ldloc.s    V_11
    IL_0074:  ldloc.s    V_9
    IL_0076:  blt.s      IL_0062

    IL_0078:  ldarg.0
    IL_0079:  ldloc.s    V_6
    IL_007b:  ldc.i4.s   16
    IL_007d:  mul
    IL_007e:  conv.r4
    IL_007f:  ldloc.s    V_7
    IL_0081:  ldc.i4.s   16
    IL_0083:  mul
    IL_0084:  conv.r4
    IL_0085:  call       instance float32 Game.TerrainContentsGenerator::CalculateMountainRangeFactor(float32,
                                                                                                      float32)
    IL_008a:  stloc.s    V_10
    IL_008c:  ldc.i4.0
    IL_008d:  stloc.s    V_12
    IL_008f:  br.s       IL_0105

    IL_0091:  ldloc.s    V_6
    IL_0093:  ldc.i4.s   16
    IL_0095:  mul
    IL_0096:  ldloc.s    V_8
    IL_0098:  ldc.i4.0
    IL_0099:  ldc.i4.s   15
    IL_009b:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_00a0:  add
    IL_00a1:  stloc.s    V_13
    IL_00a3:  ldloc.s    V_8
    IL_00a5:  ldc.i4.s   50
    IL_00a7:  ldc.i4.s   100
    IL_00a9:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_00ae:  stloc.s    V_14
    IL_00b0:  ldloc.s    V_7
    IL_00b2:  ldc.i4.s   16
    IL_00b4:  mul
    IL_00b5:  ldloc.s    V_8
    IL_00b7:  ldc.i4.0
    IL_00b8:  ldc.i4.s   15
    IL_00ba:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_00bf:  add
    IL_00c0:  stloc.s    V_15
    IL_00c2:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_dirtPocketBrushes
    IL_00c7:  ldloc.s    V_8
    IL_00c9:  ldc.i4.0
    IL_00ca:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_dirtPocketBrushes
    IL_00cf:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::get_Count()
    IL_00d4:  ldc.i4.1
    IL_00d5:  sub
    IL_00d6:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_00db:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::get_Item(int32)
    IL_00e0:  ldarg.0
    IL_00e1:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_00e6:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_00eb:  ldloc.s    V_13
    IL_00ed:  ldloc.s    V_14
    IL_00ef:  ldloc.s    V_15
    IL_00f1:  ldloc.0
    IL_00f2:  ldloc.1
    IL_00f3:  ldloc.s    V_4
    IL_00f5:  ldloc.s    V_5
    IL_00f7:  ldloc.2
    IL_00f8:  ldloc.3
    IL_00f9:  ldc.i4.3
    IL_00fa:  callvirt   instance void Game.TerrainBrush::PaintFastSelective(class Game.TerrainData,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32)
    IL_00ff:  ldloc.s    V_12
    IL_0101:  ldc.i4.1
    IL_0102:  add
    IL_0103:  stloc.s    V_12
    IL_0105:  ldloc.s    V_12
    IL_0107:  ldc.i4.3
    IL_0108:  blt.s      IL_0091

    IL_010a:  ldc.i4.0
    IL_010b:  stloc.s    V_16
    IL_010d:  br.s       IL_0183

    IL_010f:  ldloc.s    V_6
    IL_0111:  ldc.i4.s   16
    IL_0113:  mul
    IL_0114:  ldloc.s    V_8
    IL_0116:  ldc.i4.0
    IL_0117:  ldc.i4.s   15
    IL_0119:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_011e:  add
    IL_011f:  stloc.s    V_17
    IL_0121:  ldloc.s    V_8
    IL_0123:  ldc.i4.s   30
    IL_0125:  ldc.i4.s   80
    IL_0127:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_012c:  stloc.s    V_18
    IL_012e:  ldloc.s    V_7
    IL_0130:  ldc.i4.s   16
    IL_0132:  mul
    IL_0133:  ldloc.s    V_8
    IL_0135:  ldc.i4.0
    IL_0136:  ldc.i4.s   15
    IL_0138:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_013d:  add
    IL_013e:  stloc.s    V_19
    IL_0140:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_gravelPocketBrushes
    IL_0145:  ldloc.s    V_8
    IL_0147:  ldc.i4.0
    IL_0148:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_gravelPocketBrushes
    IL_014d:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::get_Count()
    IL_0152:  ldc.i4.1
    IL_0153:  sub
    IL_0154:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0159:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::get_Item(int32)
    IL_015e:  ldarg.0
    IL_015f:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_0164:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0169:  ldloc.s    V_17
    IL_016b:  ldloc.s    V_18
    IL_016d:  ldloc.s    V_19
    IL_016f:  ldloc.0
    IL_0170:  ldloc.1
    IL_0171:  ldloc.s    V_4
    IL_0173:  ldloc.s    V_5
    IL_0175:  ldloc.2
    IL_0176:  ldloc.3
    IL_0177:  ldc.i4.3
    IL_0178:  callvirt   instance void Game.TerrainBrush::PaintFastSelective(class Game.TerrainData,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32)
    IL_017d:  ldloc.s    V_16
    IL_017f:  ldc.i4.1
    IL_0180:  add
    IL_0181:  stloc.s    V_16
    IL_0183:  ldloc.s    V_16
    IL_0185:  ldc.i4.5
    IL_0186:  blt.s      IL_010f

    IL_0188:  ldc.i4.0
    IL_0189:  stloc.s    V_20
    IL_018b:  br.s       IL_0201

    IL_018d:  ldloc.s    V_6
    IL_018f:  ldc.i4.s   16
    IL_0191:  mul
    IL_0192:  ldloc.s    V_8
    IL_0194:  ldc.i4.0
    IL_0195:  ldc.i4.s   15
    IL_0197:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_019c:  add
    IL_019d:  stloc.s    V_21
    IL_019f:  ldloc.s    V_8
    IL_01a1:  ldc.i4.s   20
    IL_01a3:  ldc.i4.s   120
    IL_01a5:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_01aa:  stloc.s    V_22
    IL_01ac:  ldloc.s    V_7
    IL_01ae:  ldc.i4.s   16
    IL_01b0:  mul
    IL_01b1:  ldloc.s    V_8
    IL_01b3:  ldc.i4.0
    IL_01b4:  ldc.i4.s   15
    IL_01b6:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_01bb:  add
    IL_01bc:  stloc.s    V_23
    IL_01be:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_limestonePocketBrushes
    IL_01c3:  ldloc.s    V_8
    IL_01c5:  ldc.i4.0
    IL_01c6:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_limestonePocketBrushes
    IL_01cb:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::get_Count()
    IL_01d0:  ldc.i4.1
    IL_01d1:  sub
    IL_01d2:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_01d7:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::get_Item(int32)
    IL_01dc:  ldarg.0
    IL_01dd:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_01e2:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_01e7:  ldloc.s    V_21
    IL_01e9:  ldloc.s    V_22
    IL_01eb:  ldloc.s    V_23
    IL_01ed:  ldloc.0
    IL_01ee:  ldloc.1
    IL_01ef:  ldloc.s    V_4
    IL_01f1:  ldloc.s    V_5
    IL_01f3:  ldloc.2
    IL_01f4:  ldloc.3
    IL_01f5:  ldc.i4.3
    IL_01f6:  callvirt   instance void Game.TerrainBrush::PaintFastSelective(class Game.TerrainData,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32)
    IL_01fb:  ldloc.s    V_20
    IL_01fd:  ldc.i4.1
    IL_01fe:  add
    IL_01ff:  stloc.s    V_20
    IL_0201:  ldloc.s    V_20
    IL_0203:  ldc.i4.2
    IL_0204:  blt.s      IL_018d

    IL_0206:  ldc.i4.0
    IL_0207:  stloc.s    V_24
    IL_0209:  br.s       IL_027f

    IL_020b:  ldloc.s    V_6
    IL_020d:  ldc.i4.s   16
    IL_020f:  mul
    IL_0210:  ldloc.s    V_8
    IL_0212:  ldc.i4.0
    IL_0213:  ldc.i4.s   15
    IL_0215:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_021a:  add
    IL_021b:  stloc.s    V_25
    IL_021d:  ldloc.s    V_8
    IL_021f:  ldc.i4.s   50
    IL_0221:  ldc.i4.s   70
    IL_0223:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0228:  stloc.s    V_26
    IL_022a:  ldloc.s    V_7
    IL_022c:  ldc.i4.s   16
    IL_022e:  mul
    IL_022f:  ldloc.s    V_8
    IL_0231:  ldc.i4.0
    IL_0232:  ldc.i4.s   15
    IL_0234:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0239:  add
    IL_023a:  stloc.s    V_27
    IL_023c:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_clayPocketBrushes
    IL_0241:  ldloc.s    V_8
    IL_0243:  ldc.i4.0
    IL_0244:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_clayPocketBrushes
    IL_0249:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::get_Count()
    IL_024e:  ldc.i4.1
    IL_024f:  sub
    IL_0250:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0255:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::get_Item(int32)
    IL_025a:  ldarg.0
    IL_025b:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_0260:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0265:  ldloc.s    V_25
    IL_0267:  ldloc.s    V_26
    IL_0269:  ldloc.s    V_27
    IL_026b:  ldloc.0
    IL_026c:  ldloc.1
    IL_026d:  ldloc.s    V_4
    IL_026f:  ldloc.s    V_5
    IL_0271:  ldloc.2
    IL_0272:  ldloc.3
    IL_0273:  ldc.i4.3
    IL_0274:  callvirt   instance void Game.TerrainBrush::PaintFastSelective(class Game.TerrainData,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32)
    IL_0279:  ldloc.s    V_24
    IL_027b:  ldc.i4.1
    IL_027c:  add
    IL_027d:  stloc.s    V_24
    IL_027f:  ldloc.s    V_24
    IL_0281:  ldc.i4.1
    IL_0282:  blt.s      IL_020b

    IL_0284:  ldc.i4.0
    IL_0285:  stloc.s    V_28
    IL_0287:  br.s       IL_02fd

    IL_0289:  ldloc.s    V_6
    IL_028b:  ldc.i4.s   16
    IL_028d:  mul
    IL_028e:  ldloc.s    V_8
    IL_0290:  ldc.i4.0
    IL_0291:  ldc.i4.s   15
    IL_0293:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0298:  add
    IL_0299:  stloc.s    V_29
    IL_029b:  ldloc.s    V_8
    IL_029d:  ldc.i4.s   40
    IL_029f:  ldc.i4.s   80
    IL_02a1:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_02a6:  stloc.s    V_30
    IL_02a8:  ldloc.s    V_7
    IL_02aa:  ldc.i4.s   16
    IL_02ac:  mul
    IL_02ad:  ldloc.s    V_8
    IL_02af:  ldc.i4.0
    IL_02b0:  ldc.i4.s   15
    IL_02b2:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_02b7:  add
    IL_02b8:  stloc.s    V_31
    IL_02ba:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_sandPocketBrushes
    IL_02bf:  ldloc.s    V_8
    IL_02c1:  ldc.i4.0
    IL_02c2:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_sandPocketBrushes
    IL_02c7:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::get_Count()
    IL_02cc:  ldc.i4.1
    IL_02cd:  sub
    IL_02ce:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_02d3:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::get_Item(int32)
    IL_02d8:  ldarg.0
    IL_02d9:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_02de:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_02e3:  ldloc.s    V_29
    IL_02e5:  ldloc.s    V_30
    IL_02e7:  ldloc.s    V_31
    IL_02e9:  ldloc.0
    IL_02ea:  ldloc.1
    IL_02eb:  ldloc.s    V_4
    IL_02ed:  ldloc.s    V_5
    IL_02ef:  ldloc.2
    IL_02f0:  ldloc.3
    IL_02f1:  ldc.i4.4
    IL_02f2:  callvirt   instance void Game.TerrainBrush::PaintFastSelective(class Game.TerrainData,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32)
    IL_02f7:  ldloc.s    V_28
    IL_02f9:  ldc.i4.1
    IL_02fa:  add
    IL_02fb:  stloc.s    V_28
    IL_02fd:  ldloc.s    V_28
    IL_02ff:  ldc.i4.5
    IL_0300:  blt.s      IL_0289

    IL_0302:  ldc.i4.0
    IL_0303:  stloc.s    V_32
    IL_0305:  br.s       IL_037b

    IL_0307:  ldloc.s    V_6
    IL_0309:  ldc.i4.s   16
    IL_030b:  mul
    IL_030c:  ldloc.s    V_8
    IL_030e:  ldc.i4.0
    IL_030f:  ldc.i4.s   15
    IL_0311:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0316:  add
    IL_0317:  stloc.s    V_33
    IL_0319:  ldloc.s    V_8
    IL_031b:  ldc.i4.s   40
    IL_031d:  ldc.i4.s   60
    IL_031f:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0324:  stloc.s    V_34
    IL_0326:  ldloc.s    V_7
    IL_0328:  ldc.i4.s   16
    IL_032a:  mul
    IL_032b:  ldloc.s    V_8
    IL_032d:  ldc.i4.0
    IL_032e:  ldc.i4.s   15
    IL_0330:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0335:  add
    IL_0336:  stloc.s    V_35
    IL_0338:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_basaltPocketBrushes
    IL_033d:  ldloc.s    V_8
    IL_033f:  ldc.i4.0
    IL_0340:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_basaltPocketBrushes
    IL_0345:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::get_Count()
    IL_034a:  ldc.i4.1
    IL_034b:  sub
    IL_034c:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0351:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::get_Item(int32)
    IL_0356:  ldarg.0
    IL_0357:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_035c:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0361:  ldloc.s    V_33
    IL_0363:  ldloc.s    V_34
    IL_0365:  ldloc.s    V_35
    IL_0367:  ldloc.0
    IL_0368:  ldloc.1
    IL_0369:  ldloc.s    V_4
    IL_036b:  ldloc.s    V_5
    IL_036d:  ldloc.2
    IL_036e:  ldloc.3
    IL_036f:  ldc.i4.4
    IL_0370:  callvirt   instance void Game.TerrainBrush::PaintFastSelective(class Game.TerrainData,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32)
    IL_0375:  ldloc.s    V_32
    IL_0377:  ldc.i4.1
    IL_0378:  add
    IL_0379:  stloc.s    V_32
    IL_037b:  ldloc.s    V_32
    IL_037d:  ldc.i4.4
    IL_037e:  blt.s      IL_0307

    IL_0380:  ldc.i4.0
    IL_0381:  stloc.s    V_36
    IL_0383:  br.s       IL_03f9

    IL_0385:  ldloc.s    V_6
    IL_0387:  ldc.i4.s   16
    IL_0389:  mul
    IL_038a:  ldloc.s    V_8
    IL_038c:  ldc.i4.0
    IL_038d:  ldc.i4.s   15
    IL_038f:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0394:  add
    IL_0395:  stloc.s    V_37
    IL_0397:  ldloc.s    V_8
    IL_0399:  ldc.i4.s   20
    IL_039b:  ldc.i4.s   40
    IL_039d:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_03a2:  stloc.s    V_38
    IL_03a4:  ldloc.s    V_7
    IL_03a6:  ldc.i4.s   16
    IL_03a8:  mul
    IL_03a9:  ldloc.s    V_8
    IL_03ab:  ldc.i4.0
    IL_03ac:  ldc.i4.s   15
    IL_03ae:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_03b3:  add
    IL_03b4:  stloc.s    V_39
    IL_03b6:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_basaltPocketBrushes
    IL_03bb:  ldloc.s    V_8
    IL_03bd:  ldc.i4.0
    IL_03be:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_basaltPocketBrushes
    IL_03c3:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::get_Count()
    IL_03c8:  ldc.i4.1
    IL_03c9:  sub
    IL_03ca:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_03cf:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::get_Item(int32)
    IL_03d4:  ldarg.0
    IL_03d5:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_03da:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_03df:  ldloc.s    V_37
    IL_03e1:  ldloc.s    V_38
    IL_03e3:  ldloc.s    V_39
    IL_03e5:  ldloc.0
    IL_03e6:  ldloc.1
    IL_03e7:  ldloc.s    V_4
    IL_03e9:  ldloc.s    V_5
    IL_03eb:  ldloc.2
    IL_03ec:  ldloc.3
    IL_03ed:  ldc.i4.3
    IL_03ee:  callvirt   instance void Game.TerrainBrush::PaintFastSelective(class Game.TerrainData,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32)
    IL_03f3:  ldloc.s    V_36
    IL_03f5:  ldc.i4.1
    IL_03f6:  add
    IL_03f7:  stloc.s    V_36
    IL_03f9:  ldloc.s    V_36
    IL_03fb:  ldc.i4.3
    IL_03fc:  blt.s      IL_0385

    IL_03fe:  ldc.i4.0
    IL_03ff:  stloc.s    V_40
    IL_0401:  br.s       IL_0477

    IL_0403:  ldloc.s    V_6
    IL_0405:  ldc.i4.s   16
    IL_0407:  mul
    IL_0408:  ldloc.s    V_8
    IL_040a:  ldc.i4.0
    IL_040b:  ldc.i4.s   15
    IL_040d:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0412:  add
    IL_0413:  stloc.s    V_41
    IL_0415:  ldloc.s    V_8
    IL_0417:  ldc.i4.4
    IL_0418:  ldc.i4.s   50
    IL_041a:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_041f:  stloc.s    V_42
    IL_0421:  ldloc.s    V_7
    IL_0423:  ldc.i4.s   16
    IL_0425:  mul
    IL_0426:  ldloc.s    V_8
    IL_0428:  ldc.i4.0
    IL_0429:  ldc.i4.s   15
    IL_042b:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0430:  add
    IL_0431:  stloc.s    V_43
    IL_0433:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_granitePocketBrushes
    IL_0438:  ldloc.s    V_8
    IL_043a:  ldc.i4.0
    IL_043b:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_granitePocketBrushes
    IL_0440:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::get_Count()
    IL_0445:  ldc.i4.1
    IL_0446:  sub
    IL_0447:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_044c:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::get_Item(int32)
    IL_0451:  ldarg.0
    IL_0452:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_0457:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_045c:  ldloc.s    V_41
    IL_045e:  ldloc.s    V_42
    IL_0460:  ldloc.s    V_43
    IL_0462:  ldloc.0
    IL_0463:  ldloc.1
    IL_0464:  ldloc.s    V_4
    IL_0466:  ldloc.s    V_5
    IL_0468:  ldloc.2
    IL_0469:  ldloc.3
    IL_046a:  ldc.i4.s   67
    IL_046c:  callvirt   instance void Game.TerrainBrush::PaintFastSelective(class Game.TerrainData,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32)
    IL_0471:  ldloc.s    V_40
    IL_0473:  ldc.i4.1
    IL_0474:  add
    IL_0475:  stloc.s    V_40
    IL_0477:  ldloc.s    V_40
    IL_0479:  ldc.i4.6
    IL_047a:  blt.s      IL_0403

    IL_047c:  ldloc.s    V_8
    IL_047e:  ldc.r4     2.e-002
    IL_0483:  ldc.r4     9.9999998e-003
    IL_0488:  ldloc.s    V_10
    IL_048a:  mul
    IL_048b:  add
    IL_048c:  callvirt   instance bool Game.Random::Bool(float32)
    IL_0491:  brfalse    IL_053c

    IL_0496:  ldloc.s    V_6
    IL_0498:  ldc.i4.s   16
    IL_049a:  mul
    IL_049b:  stloc.s    V_44
    IL_049d:  ldloc.s    V_8
    IL_049f:  ldc.i4.s   40
    IL_04a1:  ldc.i4.s   60
    IL_04a3:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_04a8:  stloc.s    V_45
    IL_04aa:  ldloc.s    V_7
    IL_04ac:  ldc.i4.s   16
    IL_04ae:  mul
    IL_04af:  stloc.s    V_46
    IL_04b1:  ldloc.s    V_8
    IL_04b3:  ldc.i4.1
    IL_04b4:  ldc.i4.3
    IL_04b5:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_04ba:  stloc.s    V_47
    IL_04bc:  ldc.i4.0
    IL_04bd:  stloc.s    V_48
    IL_04bf:  br.s       IL_0536

    IL_04c1:  ldloc.s    V_8
    IL_04c3:  ldc.r4     7.
    IL_04c8:  ldc.i4.0
    IL_04c9:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Random::Vector2(float32,
                                                                                        bool)
    IL_04ce:  stloc.s    V_49
    IL_04d0:  ldc.i4.8
    IL_04d1:  ldloc.s    V_49
    IL_04d3:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_04d8:  conv.i4
    IL_04d9:  add
    IL_04da:  stloc.s    V_50
    IL_04dc:  ldc.i4.0
    IL_04dd:  stloc.s    V_51
    IL_04df:  ldc.i4.8
    IL_04e0:  ldloc.s    V_49
    IL_04e2:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_04e7:  conv.i4
    IL_04e8:  add
    IL_04e9:  stloc.s    V_52
    IL_04eb:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_waterPocketBrushes
    IL_04f0:  ldloc.s    V_8
    IL_04f2:  ldc.i4.0
    IL_04f3:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_waterPocketBrushes
    IL_04f8:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::get_Count()
    IL_04fd:  ldc.i4.1
    IL_04fe:  sub
    IL_04ff:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0504:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::get_Item(int32)
    IL_0509:  ldarg.0
    IL_050a:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_050f:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0514:  ldloc.s    V_44
    IL_0516:  ldloc.s    V_50
    IL_0518:  add
    IL_0519:  ldloc.s    V_45
    IL_051b:  ldloc.s    V_51
    IL_051d:  add
    IL_051e:  ldloc.s    V_46
    IL_0520:  ldloc.s    V_52
    IL_0522:  add
    IL_0523:  ldloc.0
    IL_0524:  ldloc.1
    IL_0525:  ldloc.s    V_4
    IL_0527:  ldloc.s    V_5
    IL_0529:  ldloc.2
    IL_052a:  ldloc.3
    IL_052b:  callvirt   instance void Game.TerrainBrush::PaintFast(class Game.TerrainData,
                                                                    int32,
                                                                    int32,
                                                                    int32,
                                                                    int32,
                                                                    int32,
                                                                    int32,
                                                                    int32,
                                                                    int32,
                                                                    int32)
    IL_0530:  ldloc.s    V_48
    IL_0532:  ldc.i4.1
    IL_0533:  add
    IL_0534:  stloc.s    V_48
    IL_0536:  ldloc.s    V_48
    IL_0538:  ldloc.s    V_47
    IL_053a:  blt.s      IL_04c1

    IL_053c:  ldloc.s    V_8
    IL_053e:  ldc.r4     5.0000001e-002
    IL_0543:  ldc.r4     5.0000001e-002
    IL_0548:  ldloc.s    V_10
    IL_054a:  mul
    IL_054b:  add
    IL_054c:  callvirt   instance bool Game.Random::Bool(float32)
    IL_0551:  brfalse    IL_0607

    IL_0556:  ldloc.s    V_6
    IL_0558:  ldc.i4.s   16
    IL_055a:  mul
    IL_055b:  stloc.s    V_53
    IL_055d:  ldloc.s    V_8
    IL_055f:  ldc.i4.s   15
    IL_0561:  ldc.i4.s   42
    IL_0563:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0568:  stloc.s    V_54
    IL_056a:  ldloc.s    V_7
    IL_056c:  ldc.i4.s   16
    IL_056e:  mul
    IL_056f:  stloc.s    V_55
    IL_0571:  ldloc.s    V_8
    IL_0573:  ldc.i4.1
    IL_0574:  ldc.i4.2
    IL_0575:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_057a:  stloc.s    V_56
    IL_057c:  ldc.i4.0
    IL_057d:  stloc.s    V_57
    IL_057f:  br.s       IL_05fe

    IL_0581:  ldloc.s    V_8
    IL_0583:  ldc.r4     7.
    IL_0588:  ldc.i4.0
    IL_0589:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Random::Vector2(float32,
                                                                                        bool)
    IL_058e:  stloc.s    V_58
    IL_0590:  ldc.i4.8
    IL_0591:  ldloc.s    V_58
    IL_0593:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0598:  conv.i4
    IL_0599:  add
    IL_059a:  stloc.s    V_59
    IL_059c:  ldloc.s    V_8
    IL_059e:  ldc.i4.0
    IL_059f:  ldc.i4.1
    IL_05a0:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_05a5:  stloc.s    V_60
    IL_05a7:  ldc.i4.8
    IL_05a8:  ldloc.s    V_58
    IL_05aa:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_05af:  conv.i4
    IL_05b0:  add
    IL_05b1:  stloc.s    V_61
    IL_05b3:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_magmaPocketBrushes
    IL_05b8:  ldloc.s    V_8
    IL_05ba:  ldc.i4.0
    IL_05bb:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_magmaPocketBrushes
    IL_05c0:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::get_Count()
    IL_05c5:  ldc.i4.1
    IL_05c6:  sub
    IL_05c7:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_05cc:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::get_Item(int32)
    IL_05d1:  ldarg.0
    IL_05d2:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_05d7:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_05dc:  ldloc.s    V_53
    IL_05de:  ldloc.s    V_59
    IL_05e0:  add
    IL_05e1:  ldloc.s    V_54
    IL_05e3:  ldloc.s    V_60
    IL_05e5:  add
    IL_05e6:  ldloc.s    V_55
    IL_05e8:  ldloc.s    V_61
    IL_05ea:  add
    IL_05eb:  ldloc.0
    IL_05ec:  ldloc.1
    IL_05ed:  ldloc.s    V_4
    IL_05ef:  ldloc.s    V_5
    IL_05f1:  ldloc.2
    IL_05f2:  ldloc.3
    IL_05f3:  callvirt   instance void Game.TerrainBrush::PaintFast(class Game.TerrainData,
                                                                    int32,
                                                                    int32,
                                                                    int32,
                                                                    int32,
                                                                    int32,
                                                                    int32,
                                                                    int32,
                                                                    int32,
                                                                    int32)
    IL_05f8:  ldloc.s    V_57
    IL_05fa:  ldc.i4.1
    IL_05fb:  add
    IL_05fc:  stloc.s    V_57
    IL_05fe:  ldloc.s    V_57
    IL_0600:  ldloc.s    V_56
    IL_0602:  blt        IL_0581

    IL_0607:  ldloc.s    V_7
    IL_0609:  ldc.i4.1
    IL_060a:  add
    IL_060b:  stloc.s    V_7
    IL_060d:  ldloc.s    V_7
    IL_060f:  ldarg.2
    IL_0610:  ldc.i4.1
    IL_0611:  add
    IL_0612:  ble        IL_003b

    IL_0617:  ldloc.s    V_6
    IL_0619:  ldc.i4.1
    IL_061a:  add
    IL_061b:  stloc.s    V_6
    IL_061d:  ldloc.s    V_6
    IL_061f:  ldarg.1
    IL_0620:  ldc.i4.1
    IL_0621:  add
    IL_0622:  ble        IL_0031

    IL_0627:  ret
  } // end of method TerrainContentsGenerator::GeneratePockets

  .method private hidebysig instance void 
          GenerateCaves(int32 chunkX,
                        int32 chunkZ) cil managed
  {
    // 代码大小       1657 (0x679)
    .maxstack  11
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainContentsGenerator/CavePoint> V_6,
             int32 V_7,
             int32 V_8,
             class Game.Random V_9,
             int32 V_10,
             int32 V_11,
             float32 V_12,
             int32 V_13,
             int32 V_14,
             int32 V_15,
             valuetype [Engine]Engine.Vector3 V_16,
             valuetype [Engine]Engine.Vector3 V_17,
             valuetype [Engine]Engine.Vector3 V_18,
             int32 V_19,
             int32 V_20,
             int32 V_21,
             class Game.TerrainContentsGenerator/CavePoint V_22,
             class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> V_23,
             float32 V_24,
             float32 V_25,
             valuetype [Engine]Engine.Vector3 V_26,
             float32 V_27)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.TerrainContentsGenerator::TGCavesAndPockets
    IL_0006:  brtrue.s   IL_0009

    IL_0008:  ret

    IL_0009:  ldarg.1
    IL_000a:  ldc.i4.s   16
    IL_000c:  mul
    IL_000d:  stloc.0
    IL_000e:  ldloc.0
    IL_000f:  ldc.i4.s   16
    IL_0011:  add
    IL_0012:  stloc.1
    IL_0013:  ldarg.2
    IL_0014:  ldc.i4.s   16
    IL_0016:  mul
    IL_0017:  stloc.2
    IL_0018:  ldloc.2
    IL_0019:  ldc.i4.s   16
    IL_001b:  add
    IL_001c:  stloc.3
    IL_001d:  ldc.i4.0
    IL_001e:  stloc.s    V_4
    IL_0020:  ldc.i4     0x80
    IL_0025:  stloc.s    V_5
    IL_0027:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainContentsGenerator/CavePoint>::.ctor()
    IL_002c:  stloc.s    V_6
    IL_002e:  ldarg.1
    IL_002f:  ldc.i4.2
    IL_0030:  sub
    IL_0031:  stloc.s    V_7
    IL_0033:  br         IL_066e

    IL_0038:  ldarg.2
    IL_0039:  ldc.i4.2
    IL_003a:  sub
    IL_003b:  stloc.s    V_8
    IL_003d:  br         IL_065e

    IL_0042:  ldloc.s    V_6
    IL_0044:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainContentsGenerator/CavePoint>::Clear()
    IL_0049:  ldarg.0
    IL_004a:  ldfld      int32 Game.TerrainContentsGenerator::m_seed
    IL_004f:  ldloc.s    V_7
    IL_0051:  add
    IL_0052:  ldc.i4     0x26f5
    IL_0057:  ldloc.s    V_8
    IL_0059:  mul
    IL_005a:  add
    IL_005b:  newobj     instance void Game.Random::.ctor(int32)
    IL_0060:  stloc.s    V_9
    IL_0062:  ldloc.s    V_7
    IL_0064:  ldc.i4.s   16
    IL_0066:  mul
    IL_0067:  ldloc.s    V_9
    IL_0069:  ldc.i4.0
    IL_006a:  ldc.i4.s   15
    IL_006c:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0071:  add
    IL_0072:  stloc.s    V_10
    IL_0074:  ldloc.s    V_8
    IL_0076:  ldc.i4.s   16
    IL_0078:  mul
    IL_0079:  ldloc.s    V_9
    IL_007b:  ldc.i4.0
    IL_007c:  ldc.i4.s   15
    IL_007e:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0083:  add
    IL_0084:  stloc.s    V_11
    IL_0086:  ldc.r4     0.5
    IL_008b:  stloc.s    V_12
    IL_008d:  ldloc.s    V_9
    IL_008f:  ldloc.s    V_12
    IL_0091:  callvirt   instance bool Game.Random::Bool(float32)
    IL_0096:  brfalse    IL_0658

    IL_009b:  ldarg.0
    IL_009c:  ldloc.s    V_10
    IL_009e:  conv.r4
    IL_009f:  ldloc.s    V_11
    IL_00a1:  conv.r4
    IL_00a2:  call       instance float32 Game.TerrainContentsGenerator::CalculateHeight(float32,
                                                                                         float32)
    IL_00a7:  conv.i4
    IL_00a8:  stloc.s    V_13
    IL_00aa:  ldarg.0
    IL_00ab:  ldloc.s    V_10
    IL_00ad:  ldc.i4.3
    IL_00ae:  add
    IL_00af:  conv.r4
    IL_00b0:  ldloc.s    V_11
    IL_00b2:  conv.r4
    IL_00b3:  call       instance float32 Game.TerrainContentsGenerator::CalculateHeight(float32,
                                                                                         float32)
    IL_00b8:  conv.i4
    IL_00b9:  stloc.s    V_14
    IL_00bb:  ldarg.0
    IL_00bc:  ldloc.s    V_10
    IL_00be:  conv.r4
    IL_00bf:  ldloc.s    V_11
    IL_00c1:  ldc.i4.3
    IL_00c2:  add
    IL_00c3:  conv.r4
    IL_00c4:  call       instance float32 Game.TerrainContentsGenerator::CalculateHeight(float32,
                                                                                         float32)
    IL_00c9:  conv.i4
    IL_00ca:  stloc.s    V_15
    IL_00cc:  ldloca.s   V_16
    IL_00ce:  ldloc.s    V_10
    IL_00d0:  conv.r4
    IL_00d1:  ldloc.s    V_13
    IL_00d3:  ldc.i4.1
    IL_00d4:  sub
    IL_00d5:  conv.r4
    IL_00d6:  ldloc.s    V_11
    IL_00d8:  conv.r4
    IL_00d9:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00de:  ldc.r4     3.
    IL_00e3:  ldloc.s    V_14
    IL_00e5:  ldloc.s    V_13
    IL_00e7:  sub
    IL_00e8:  conv.r4
    IL_00e9:  ldc.r4     0.0
    IL_00ee:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00f3:  ldloca.s   V_17
    IL_00f5:  ldc.r4     0.0
    IL_00fa:  ldloc.s    V_15
    IL_00fc:  ldloc.s    V_13
    IL_00fe:  sub
    IL_00ff:  conv.r4
    IL_0100:  ldc.r4     3.
    IL_0105:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_010a:  ldloc.s    V_17
    IL_010c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Cross(valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3)
    IL_0111:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0116:  stloc.s    V_18
    IL_0118:  ldloc.s    V_18
    IL_011a:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_011f:  ldc.r4     -0.60000002
    IL_0124:  ble.un.s   IL_015d

    IL_0126:  ldloc.s    V_6
    IL_0128:  newobj     instance void Game.TerrainContentsGenerator/CavePoint::.ctor()
    IL_012d:  dup
    IL_012e:  ldloc.s    V_16
    IL_0130:  stfld      valuetype [Engine]Engine.Vector3 Game.TerrainContentsGenerator/CavePoint::Position
    IL_0135:  dup
    IL_0136:  ldloc.s    V_18
    IL_0138:  stfld      valuetype [Engine]Engine.Vector3 Game.TerrainContentsGenerator/CavePoint::Direction
    IL_013d:  dup
    IL_013e:  ldc.i4.0
    IL_013f:  stfld      int32 Game.TerrainContentsGenerator/CavePoint::BrushType
    IL_0144:  dup
    IL_0145:  ldloc.s    V_9
    IL_0147:  ldc.i4.s   80
    IL_0149:  ldc.i4     0xf0
    IL_014e:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0153:  stfld      int32 Game.TerrainContentsGenerator/CavePoint::Length
    IL_0158:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainContentsGenerator/CavePoint>::Add(!0)
    IL_015d:  ldloc.s    V_7
    IL_015f:  ldc.i4.s   16
    IL_0161:  mul
    IL_0162:  ldc.i4.8
    IL_0163:  add
    IL_0164:  stloc.s    V_19
    IL_0166:  ldloc.s    V_8
    IL_0168:  ldc.i4.s   16
    IL_016a:  mul
    IL_016b:  ldc.i4.8
    IL_016c:  add
    IL_016d:  stloc.s    V_20
    IL_016f:  ldc.i4.0
    IL_0170:  stloc.s    V_21
    IL_0172:  br         IL_064a

    IL_0177:  ldloc.s    V_6
    IL_0179:  ldloc.s    V_21
    IL_017b:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainContentsGenerator/CavePoint>::get_Item(int32)
    IL_0180:  stloc.s    V_22
    IL_0182:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>> Game.TerrainContentsGenerator::m_caveBrushesByType
    IL_0187:  ldloc.s    V_22
    IL_0189:  ldfld      int32 Game.TerrainContentsGenerator/CavePoint::BrushType
    IL_018e:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>>::get_Item(int32)
    IL_0193:  stloc.s    V_23
    IL_0195:  ldloc.s    V_23
    IL_0197:  ldloc.s    V_9
    IL_0199:  ldc.i4.0
    IL_019a:  ldloc.s    V_23
    IL_019c:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::get_Count()
    IL_01a1:  ldc.i4.1
    IL_01a2:  sub
    IL_01a3:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_01a8:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::get_Item(int32)
    IL_01ad:  ldarg.0
    IL_01ae:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_01b3:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_01b8:  ldloc.s    V_22
    IL_01ba:  ldflda     valuetype [Engine]Engine.Vector3 Game.TerrainContentsGenerator/CavePoint::Position
    IL_01bf:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_01c4:  conv.i4
    IL_01c5:  ldloc.s    V_22
    IL_01c7:  ldflda     valuetype [Engine]Engine.Vector3 Game.TerrainContentsGenerator/CavePoint::Position
    IL_01cc:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_01d1:  conv.i4
    IL_01d2:  ldloc.s    V_22
    IL_01d4:  ldflda     valuetype [Engine]Engine.Vector3 Game.TerrainContentsGenerator/CavePoint::Position
    IL_01d9:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_01de:  conv.i4
    IL_01df:  ldloc.0
    IL_01e0:  ldloc.1
    IL_01e1:  ldloc.s    V_4
    IL_01e3:  ldloc.s    V_5
    IL_01e5:  ldloc.2
    IL_01e6:  ldloc.3
    IL_01e7:  callvirt   instance void Game.TerrainBrush::PaintFastAvoidWater(class Game.TerrainData,
                                                                              int32,
                                                                              int32,
                                                                              int32,
                                                                              int32,
                                                                              int32,
                                                                              int32,
                                                                              int32,
                                                                              int32,
                                                                              int32)
    IL_01ec:  ldloc.s    V_22
    IL_01ee:  dup
    IL_01ef:  ldfld      valuetype [Engine]Engine.Vector3 Game.TerrainContentsGenerator/CavePoint::Position
    IL_01f4:  ldc.r4     2.
    IL_01f9:  ldloc.s    V_22
    IL_01fb:  ldfld      valuetype [Engine]Engine.Vector3 Game.TerrainContentsGenerator/CavePoint::Direction
    IL_0200:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0205:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_020a:  stfld      valuetype [Engine]Engine.Vector3 Game.TerrainContentsGenerator/CavePoint::Position
    IL_020f:  ldloc.s    V_22
    IL_0211:  dup
    IL_0212:  ldfld      int32 Game.TerrainContentsGenerator/CavePoint::StepsTaken
    IL_0217:  ldc.i4.2
    IL_0218:  add
    IL_0219:  stfld      int32 Game.TerrainContentsGenerator/CavePoint::StepsTaken
    IL_021e:  ldloc.s    V_22
    IL_0220:  ldflda     valuetype [Engine]Engine.Vector3 Game.TerrainContentsGenerator/CavePoint::Position
    IL_0225:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_022a:  ldloc.s    V_19
    IL_022c:  conv.r4
    IL_022d:  sub
    IL_022e:  stloc.s    V_24
    IL_0230:  ldloc.s    V_22
    IL_0232:  ldflda     valuetype [Engine]Engine.Vector3 Game.TerrainContentsGenerator/CavePoint::Position
    IL_0237:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_023c:  ldloc.s    V_20
    IL_023e:  conv.r4
    IL_023f:  sub
    IL_0240:  stloc.s    V_25
    IL_0242:  ldloc.s    V_9
    IL_0244:  ldc.r4     0.5
    IL_0249:  callvirt   instance bool Game.Random::Bool(float32)
    IL_024e:  brfalse    IL_0356

    IL_0253:  ldloc.s    V_9
    IL_0255:  ldc.r4     1.
    IL_025a:  ldc.i4.1
    IL_025b:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Random::Vector3(float32,
                                                                                        bool)
    IL_0260:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0265:  stloc.s    V_26
    IL_0267:  ldloc.s    V_24
    IL_0269:  ldc.r4     -25.5
    IL_026e:  bge.un.s   IL_027e

    IL_0270:  ldloc.s    V_26
    IL_0272:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0277:  ldc.r4     0.0
    IL_027c:  blt.s      IL_0295

    IL_027e:  ldloc.s    V_24
    IL_0280:  ldc.r4     25.5
    IL_0285:  ble.un.s   IL_02a4

    IL_0287:  ldloc.s    V_26
    IL_0289:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_028e:  ldc.r4     0.0
    IL_0293:  ble.un.s   IL_02a4

    IL_0295:  ldloca.s   V_26
    IL_0297:  ldloc.s    V_26
    IL_0299:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_029e:  neg
    IL_029f:  stfld      float32 [Engine]Engine.Vector3::X
    IL_02a4:  ldloc.s    V_25
    IL_02a6:  ldc.r4     -25.5
    IL_02ab:  bge.un.s   IL_02bb

    IL_02ad:  ldloc.s    V_26
    IL_02af:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_02b4:  ldc.r4     0.0
    IL_02b9:  blt.s      IL_02d2

    IL_02bb:  ldloc.s    V_25
    IL_02bd:  ldc.r4     25.5
    IL_02c2:  ble.un.s   IL_02e1

    IL_02c4:  ldloc.s    V_26
    IL_02c6:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_02cb:  ldc.r4     0.0
    IL_02d0:  ble.un.s   IL_02e1

    IL_02d2:  ldloca.s   V_26
    IL_02d4:  ldloc.s    V_26
    IL_02d6:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_02db:  neg
    IL_02dc:  stfld      float32 [Engine]Engine.Vector3::Z
    IL_02e1:  ldloc.s    V_22
    IL_02e3:  ldflda     valuetype [Engine]Engine.Vector3 Game.TerrainContentsGenerator/CavePoint::Direction
    IL_02e8:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_02ed:  ldc.r4     -0.5
    IL_02f2:  bge.un.s   IL_0302

    IL_02f4:  ldloc.s    V_26
    IL_02f6:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_02fb:  ldc.r4     0.0
    IL_0300:  blt.s      IL_0323

    IL_0302:  ldloc.s    V_22
    IL_0304:  ldflda     valuetype [Engine]Engine.Vector3 Game.TerrainContentsGenerator/CavePoint::Direction
    IL_0309:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_030e:  ldc.r4     -0.1
    IL_0313:  ble.un.s   IL_0332

    IL_0315:  ldloc.s    V_26
    IL_0317:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_031c:  ldc.r4     0.0
    IL_0321:  ble.un.s   IL_0332

    IL_0323:  ldloca.s   V_26
    IL_0325:  ldloc.s    V_26
    IL_0327:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_032c:  neg
    IL_032d:  stfld      float32 [Engine]Engine.Vector3::Y
    IL_0332:  ldloc.s    V_22
    IL_0334:  ldloc.s    V_22
    IL_0336:  ldfld      valuetype [Engine]Engine.Vector3 Game.TerrainContentsGenerator/CavePoint::Direction
    IL_033b:  ldc.r4     0.33000001
    IL_0340:  ldloc.s    V_26
    IL_0342:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0347:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_034c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0351:  stfld      valuetype [Engine]Engine.Vector3 Game.TerrainContentsGenerator/CavePoint::Direction
    IL_0356:  ldloc.s    V_22
    IL_0358:  ldfld      int32 Game.TerrainContentsGenerator/CavePoint::StepsTaken
    IL_035d:  ldc.i4.s   20
    IL_035f:  ble.s      IL_03a1

    IL_0361:  ldloc.s    V_9
    IL_0363:  ldc.r4     5.9999999e-002
    IL_0368:  callvirt   instance bool Game.Random::Bool(float32)
    IL_036d:  brfalse.s  IL_03a1

    IL_036f:  ldloc.s    V_22
    IL_0371:  ldloc.s    V_9
    IL_0373:  ldc.r4     1.
    IL_0378:  ldc.i4.1
    IL_0379:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Random::Vector3(float32,
                                                                                        bool)
    IL_037e:  ldc.r4     1.
    IL_0383:  ldc.r4     0.33000001
    IL_0388:  ldc.r4     1.
    IL_038d:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0392:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0397:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_039c:  stfld      valuetype [Engine]Engine.Vector3 Game.TerrainContentsGenerator/CavePoint::Direction
    IL_03a1:  ldloc.s    V_22
    IL_03a3:  ldfld      int32 Game.TerrainContentsGenerator/CavePoint::StepsTaken
    IL_03a8:  ldc.i4.s   20
    IL_03aa:  ble.s      IL_03ec

    IL_03ac:  ldloc.s    V_9
    IL_03ae:  ldc.r4     5.0000001e-002
    IL_03b3:  callvirt   instance bool Game.Random::Bool(float32)
    IL_03b8:  brfalse.s  IL_03ec

    IL_03ba:  ldloc.s    V_22
    IL_03bc:  ldflda     valuetype [Engine]Engine.Vector3 Game.TerrainContentsGenerator/CavePoint::Direction
    IL_03c1:  ldc.r4     0.0
    IL_03c6:  stfld      float32 [Engine]Engine.Vector3::Y
    IL_03cb:  ldloc.s    V_22
    IL_03cd:  ldloc.s    V_22
    IL_03cf:  ldfld      int32 Game.TerrainContentsGenerator/CavePoint::BrushType
    IL_03d4:  ldc.i4.2
    IL_03d5:  add
    IL_03d6:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>> Game.TerrainContentsGenerator::m_caveBrushesByType
    IL_03db:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>>::get_Count()
    IL_03e0:  ldc.i4.1
    IL_03e1:  sub
    IL_03e2:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_03e7:  stfld      int32 Game.TerrainContentsGenerator/CavePoint::BrushType
    IL_03ec:  ldloc.s    V_22
    IL_03ee:  ldfld      int32 Game.TerrainContentsGenerator/CavePoint::StepsTaken
    IL_03f3:  ldc.i4.s   30
    IL_03f5:  ble.s      IL_0438

    IL_03f7:  ldloc.s    V_9
    IL_03f9:  ldc.r4     2.9999999e-002
    IL_03fe:  callvirt   instance bool Game.Random::Bool(float32)
    IL_0403:  brfalse.s  IL_0438

    IL_0405:  ldloc.s    V_22
    IL_0407:  ldflda     valuetype [Engine]Engine.Vector3 Game.TerrainContentsGenerator/CavePoint::Direction
    IL_040c:  ldc.r4     0.0
    IL_0411:  stfld      float32 [Engine]Engine.Vector3::X
    IL_0416:  ldloc.s    V_22
    IL_0418:  ldflda     valuetype [Engine]Engine.Vector3 Game.TerrainContentsGenerator/CavePoint::Direction
    IL_041d:  ldc.r4     -1.
    IL_0422:  stfld      float32 [Engine]Engine.Vector3::Y
    IL_0427:  ldloc.s    V_22
    IL_0429:  ldflda     valuetype [Engine]Engine.Vector3 Game.TerrainContentsGenerator/CavePoint::Direction
    IL_042e:  ldc.r4     0.0
    IL_0433:  stfld      float32 [Engine]Engine.Vector3::Z
    IL_0438:  ldloc.s    V_22
    IL_043a:  ldfld      int32 Game.TerrainContentsGenerator/CavePoint::StepsTaken
    IL_043f:  ldc.i4.s   30
    IL_0441:  ble.s      IL_0497

    IL_0443:  ldloc.s    V_22
    IL_0445:  ldflda     valuetype [Engine]Engine.Vector3 Game.TerrainContentsGenerator/CavePoint::Position
    IL_044a:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_044f:  ldc.r4     30.
    IL_0454:  bge.un.s   IL_0497

    IL_0456:  ldloc.s    V_9
    IL_0458:  ldc.r4     2.e-002
    IL_045d:  callvirt   instance bool Game.Random::Bool(float32)
    IL_0462:  brfalse.s  IL_0497

    IL_0464:  ldloc.s    V_22
    IL_0466:  ldflda     valuetype [Engine]Engine.Vector3 Game.TerrainContentsGenerator/CavePoint::Direction
    IL_046b:  ldc.r4     0.0
    IL_0470:  stfld      float32 [Engine]Engine.Vector3::X
    IL_0475:  ldloc.s    V_22
    IL_0477:  ldflda     valuetype [Engine]Engine.Vector3 Game.TerrainContentsGenerator/CavePoint::Direction
    IL_047c:  ldc.r4     1.
    IL_0481:  stfld      float32 [Engine]Engine.Vector3::Y
    IL_0486:  ldloc.s    V_22
    IL_0488:  ldflda     valuetype [Engine]Engine.Vector3 Game.TerrainContentsGenerator/CavePoint::Direction
    IL_048d:  ldc.r4     0.0
    IL_0492:  stfld      float32 [Engine]Engine.Vector3::Z
    IL_0497:  ldloc.s    V_9
    IL_0499:  ldc.r4     0.33000001
    IL_049e:  callvirt   instance bool Game.Random::Bool(float32)
    IL_04a3:  brfalse.s  IL_04d4

    IL_04a5:  ldloc.s    V_22
    IL_04a7:  ldloc.s    V_9
    IL_04a9:  ldc.r4     0.0
    IL_04ae:  ldc.r4     0.99900001
    IL_04b3:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_04b8:  ldc.r4     7.
    IL_04bd:  call       float32 [Engine]Engine.MathUtils::Pow(float32,
                                                               float32)
    IL_04c2:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>> Game.TerrainContentsGenerator::m_caveBrushesByType
    IL_04c7:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>>::get_Count()
    IL_04cc:  conv.r4
    IL_04cd:  mul
    IL_04ce:  conv.i4
    IL_04cf:  stfld      int32 Game.TerrainContentsGenerator/CavePoint::BrushType
    IL_04d4:  ldloc.s    V_9
    IL_04d6:  ldc.r4     5.9999999e-002
    IL_04db:  callvirt   instance bool Game.Random::Bool(float32)
    IL_04e0:  brfalse    IL_05a8

    IL_04e5:  ldloc.s    V_6
    IL_04e7:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainContentsGenerator/CavePoint>::get_Count()
    IL_04ec:  ldc.i4.s   12
    IL_04ee:  bge        IL_05a8

    IL_04f3:  ldloc.s    V_22
    IL_04f5:  ldfld      int32 Game.TerrainContentsGenerator/CavePoint::StepsTaken
    IL_04fa:  ldc.i4.s   20
    IL_04fc:  ble        IL_05a8

    IL_0501:  ldloc.s    V_22
    IL_0503:  ldflda     valuetype [Engine]Engine.Vector3 Game.TerrainContentsGenerator/CavePoint::Position
    IL_0508:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_050d:  ldc.r4     58.
    IL_0512:  bge.un     IL_05a8

    IL_0517:  ldloc.s    V_6
    IL_0519:  newobj     instance void Game.TerrainContentsGenerator/CavePoint::.ctor()
    IL_051e:  dup
    IL_051f:  ldloc.s    V_22
    IL_0521:  ldfld      valuetype [Engine]Engine.Vector3 Game.TerrainContentsGenerator/CavePoint::Position
    IL_0526:  stfld      valuetype [Engine]Engine.Vector3 Game.TerrainContentsGenerator/CavePoint::Position
    IL_052b:  dup
    IL_052c:  ldloc.s    V_9
    IL_052e:  ldc.r4     1.
    IL_0533:  ldc.r4     1.
    IL_0538:  ldc.i4.0
    IL_0539:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Random::UniformVector3(float32,
                                                                                               float32,
                                                                                               bool)
    IL_053e:  ldc.r4     1.
    IL_0543:  ldc.r4     0.33000001
    IL_0548:  ldc.r4     1.
    IL_054d:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0552:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0557:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_055c:  stfld      valuetype [Engine]Engine.Vector3 Game.TerrainContentsGenerator/CavePoint::Direction
    IL_0561:  dup
    IL_0562:  ldloc.s    V_9
    IL_0564:  ldc.r4     0.0
    IL_0569:  ldc.r4     0.99900001
    IL_056e:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0573:  ldc.r4     7.
    IL_0578:  call       float32 [Engine]Engine.MathUtils::Pow(float32,
                                                               float32)
    IL_057d:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>> Game.TerrainContentsGenerator::m_caveBrushesByType
    IL_0582:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>>::get_Count()
    IL_0587:  conv.r4
    IL_0588:  mul
    IL_0589:  conv.i4
    IL_058a:  stfld      int32 Game.TerrainContentsGenerator/CavePoint::BrushType
    IL_058f:  dup
    IL_0590:  ldloc.s    V_9
    IL_0592:  ldc.i4.s   40
    IL_0594:  ldc.i4     0xb4
    IL_0599:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_059e:  stfld      int32 Game.TerrainContentsGenerator/CavePoint::Length
    IL_05a3:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainContentsGenerator/CavePoint>::Add(!0)
    IL_05a8:  ldloc.s    V_22
    IL_05aa:  ldfld      int32 Game.TerrainContentsGenerator/CavePoint::StepsTaken
    IL_05af:  ldloc.s    V_22
    IL_05b1:  ldfld      int32 Game.TerrainContentsGenerator/CavePoint::Length
    IL_05b6:  bge.s      IL_05fa

    IL_05b8:  ldloc.s    V_24
    IL_05ba:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_05bf:  ldc.r4     34.
    IL_05c4:  bgt.s      IL_05fa

    IL_05c6:  ldloc.s    V_25
    IL_05c8:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_05cd:  ldc.r4     34.
    IL_05d2:  bgt.s      IL_05fa

    IL_05d4:  ldloc.s    V_22
    IL_05d6:  ldflda     valuetype [Engine]Engine.Vector3 Game.TerrainContentsGenerator/CavePoint::Position
    IL_05db:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_05e0:  ldc.r4     5.
    IL_05e5:  blt.s      IL_05fa

    IL_05e7:  ldloc.s    V_22
    IL_05e9:  ldflda     valuetype [Engine]Engine.Vector3 Game.TerrainContentsGenerator/CavePoint::Position
    IL_05ee:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_05f3:  ldc.r4     118.
    IL_05f8:  ble.un.s   IL_0602

    IL_05fa:  ldloc.s    V_21
    IL_05fc:  ldc.i4.1
    IL_05fd:  add
    IL_05fe:  stloc.s    V_21
    IL_0600:  br.s       IL_064a

    IL_0602:  ldloc.s    V_22
    IL_0604:  ldfld      int32 Game.TerrainContentsGenerator/CavePoint::StepsTaken
    IL_0609:  ldc.i4.s   20
    IL_060b:  rem
    IL_060c:  brtrue.s   IL_064a

    IL_060e:  ldarg.0
    IL_060f:  ldloc.s    V_22
    IL_0611:  ldflda     valuetype [Engine]Engine.Vector3 Game.TerrainContentsGenerator/CavePoint::Position
    IL_0616:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_061b:  ldloc.s    V_22
    IL_061d:  ldflda     valuetype [Engine]Engine.Vector3 Game.TerrainContentsGenerator/CavePoint::Position
    IL_0622:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0627:  call       instance float32 Game.TerrainContentsGenerator::CalculateHeight(float32,
                                                                                         float32)
    IL_062c:  stloc.s    V_27
    IL_062e:  ldloc.s    V_22
    IL_0630:  ldflda     valuetype [Engine]Engine.Vector3 Game.TerrainContentsGenerator/CavePoint::Position
    IL_0635:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_063a:  ldloc.s    V_27
    IL_063c:  ldc.r4     1.
    IL_0641:  add
    IL_0642:  ble.un.s   IL_064a

    IL_0644:  ldloc.s    V_21
    IL_0646:  ldc.i4.1
    IL_0647:  add
    IL_0648:  stloc.s    V_21
    IL_064a:  ldloc.s    V_21
    IL_064c:  ldloc.s    V_6
    IL_064e:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainContentsGenerator/CavePoint>::get_Count()
    IL_0653:  blt        IL_0177

    IL_0658:  ldloc.s    V_8
    IL_065a:  ldc.i4.1
    IL_065b:  add
    IL_065c:  stloc.s    V_8
    IL_065e:  ldloc.s    V_8
    IL_0660:  ldarg.2
    IL_0661:  ldc.i4.2
    IL_0662:  add
    IL_0663:  ble        IL_0042

    IL_0668:  ldloc.s    V_7
    IL_066a:  ldc.i4.1
    IL_066b:  add
    IL_066c:  stloc.s    V_7
    IL_066e:  ldloc.s    V_7
    IL_0670:  ldarg.1
    IL_0671:  ldc.i4.2
    IL_0672:  add
    IL_0673:  ble        IL_0038

    IL_0678:  ret
  } // end of method TerrainContentsGenerator::GenerateCaves

  .method private hidebysig instance void 
          GenerateTreesAndLogs(int32 chunkX,
                               int32 chunkZ) cil managed
  {
    // 代码大小       1691 (0x69b)
    .maxstack  11
    .locals init (class Game.TerrainData V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7,
             int32 V_8,
             class Game.Random V_9,
             int32 V_10,
             int32 V_11,
             float32 V_12,
             int32 V_13,
             int32 V_14,
             int32 V_15,
             int32 V_16,
             int32 V_17,
             int32 V_18,
             int32 V_19,
             int32 V_20,
             int32 V_21,
             int32 V_22,
             valuetype [Engine]Engine.Point3 V_23,
             bool V_24,
             bool V_25,
             bool V_26,
             int32 V_27,
             int32 V_28,
             int32 V_29,
             valuetype [Engine]Engine.Point3 V_30,
             int32 V_31,
             int32 V_32,
             int32 V_33,
             int32 V_34,
             int32 V_35,
             int32 V_36,
             int32 V_37,
             int32 V_38,
             int32 V_39,
             int32 V_40,
             valuetype [Engine]Engine.ReadOnlyList`1<class Game.TerrainBrush> V_41)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.TerrainContentsGenerator::TGExtras
    IL_0006:  brtrue.s   IL_0009

    IL_0008:  ret

    IL_0009:  ldarg.0
    IL_000a:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_000f:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0014:  stloc.0
    IL_0015:  ldarg.1
    IL_0016:  ldc.i4.s   16
    IL_0018:  mul
    IL_0019:  stloc.1
    IL_001a:  ldloc.1
    IL_001b:  ldc.i4.s   16
    IL_001d:  add
    IL_001e:  stloc.2
    IL_001f:  ldarg.2
    IL_0020:  ldc.i4.s   16
    IL_0022:  mul
    IL_0023:  stloc.3
    IL_0024:  ldloc.3
    IL_0025:  ldc.i4.s   16
    IL_0027:  add
    IL_0028:  stloc.s    V_4
    IL_002a:  ldc.i4.0
    IL_002b:  stloc.s    V_5
    IL_002d:  ldc.i4     0x80
    IL_0032:  stloc.s    V_6
    IL_0034:  ldarg.1
    IL_0035:  stloc.s    V_7
    IL_0037:  br         IL_0692

    IL_003c:  ldarg.2
    IL_003d:  stloc.s    V_8
    IL_003f:  br         IL_0684

    IL_0044:  ldarg.0
    IL_0045:  ldfld      int32 Game.TerrainContentsGenerator::m_seed
    IL_004a:  ldloc.s    V_7
    IL_004c:  add
    IL_004d:  ldc.i4     0xf67
    IL_0052:  ldloc.s    V_8
    IL_0054:  mul
    IL_0055:  add
    IL_0056:  newobj     instance void Game.Random::.ctor(int32)
    IL_005b:  stloc.s    V_9
    IL_005d:  ldarg.0
    IL_005e:  ldloc.s    V_7
    IL_0060:  ldc.i4.s   16
    IL_0062:  mul
    IL_0063:  conv.r4
    IL_0064:  ldloc.s    V_8
    IL_0066:  ldc.i4.s   16
    IL_0068:  mul
    IL_0069:  conv.r4
    IL_006a:  call       instance int32 Game.TerrainContentsGenerator::CalculateHumidity(float32,
                                                                                         float32)
    IL_006f:  stloc.s    V_10
    IL_0071:  ldarg.0
    IL_0072:  ldloc.s    V_7
    IL_0074:  ldc.i4.s   16
    IL_0076:  mul
    IL_0077:  conv.r4
    IL_0078:  ldloc.s    V_8
    IL_007a:  ldc.i4.s   16
    IL_007c:  mul
    IL_007d:  conv.r4
    IL_007e:  call       instance int32 Game.TerrainContentsGenerator::CalculateTemperature(float32,
                                                                                            float32)
    IL_0083:  stloc.s    V_11
    IL_0085:  ldloc.s    V_7
    IL_0087:  conv.r4
    IL_0088:  ldloc.s    V_8
    IL_008a:  conv.r4
    IL_008b:  ldc.r4     0.1
    IL_0090:  ldc.i4.3
    IL_0091:  ldc.r4     2.
    IL_0096:  ldc.r4     0.5
    IL_009b:  call       float32 Game.SimplexNoise::OctavedNoise(float32,
                                                                 float32,
                                                                 float32,
                                                                 int32,
                                                                 float32,
                                                                 float32)
    IL_00a0:  ldc.r4     0.25
    IL_00a5:  sub
    IL_00a6:  ldc.r4     0.2
    IL_00ab:  div
    IL_00ac:  ldloc.s    V_9
    IL_00ae:  ldc.r4     0.25
    IL_00b3:  callvirt   instance bool Game.Random::Bool(float32)
    IL_00b8:  brtrue.s   IL_00c1

    IL_00ba:  ldc.r4     0.0
    IL_00bf:  br.s       IL_00c6

    IL_00c1:  ldc.r4     0.5
    IL_00c6:  add
    IL_00c7:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_00cc:  ldloc.s    V_10
    IL_00ce:  conv.r4
    IL_00cf:  ldc.r4     4.
    IL_00d4:  sub
    IL_00d5:  ldc.r4     11.
    IL_00da:  div
    IL_00db:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_00e0:  mul
    IL_00e1:  stloc.s    V_12
    IL_00e3:  ldc.i4.0
    IL_00e4:  stloc.s    V_13
    IL_00e6:  ldloc.s    V_12
    IL_00e8:  ldc.r4     0.94999999
    IL_00ed:  ble.un.s   IL_0107

    IL_00ef:  ldc.i4.1
    IL_00f0:  ldloc.s    V_9
    IL_00f2:  ldc.r4     0.25
    IL_00f7:  callvirt   instance bool Game.Random::Bool(float32)
    IL_00fc:  brtrue.s   IL_0101

    IL_00fe:  ldc.i4.0
    IL_00ff:  br.s       IL_0102

    IL_0101:  ldc.i4.1
    IL_0102:  add
    IL_0103:  stloc.s    V_13
    IL_0105:  br.s       IL_0124

    IL_0107:  ldloc.s    V_12
    IL_0109:  ldc.r4     0.5
    IL_010e:  ble.un.s   IL_0124

    IL_0110:  ldloc.s    V_9
    IL_0112:  ldc.r4     0.25
    IL_0117:  callvirt   instance bool Game.Random::Bool(float32)
    IL_011c:  brtrue.s   IL_0121

    IL_011e:  ldc.i4.0
    IL_011f:  br.s       IL_0122

    IL_0121:  ldc.i4.1
    IL_0122:  stloc.s    V_13
    IL_0124:  ldc.i4.0
    IL_0125:  stloc.s    V_14
    IL_0127:  ldc.i4.0
    IL_0128:  stloc.s    V_17
    IL_012a:  br         IL_0535

    IL_012f:  ldloc.s    V_7
    IL_0131:  ldc.i4.s   16
    IL_0133:  mul
    IL_0134:  ldloc.s    V_9
    IL_0136:  ldc.i4.0
    IL_0137:  ldc.i4.s   15
    IL_0139:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_013e:  add
    IL_013f:  stloc.s    V_18
    IL_0141:  ldloc.s    V_8
    IL_0143:  ldc.i4.s   16
    IL_0145:  mul
    IL_0146:  ldloc.s    V_9
    IL_0148:  ldc.i4.0
    IL_0149:  ldc.i4.s   15
    IL_014b:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0150:  add
    IL_0151:  stloc.s    V_19
    IL_0153:  ldloc.0
    IL_0154:  ldloc.s    V_18
    IL_0156:  ldloc.s    V_19
    IL_0158:  callvirt   instance int32 Game.TerrainData::CalculateTopmostCellHeight(int32,
                                                                                     int32)
    IL_015d:  stloc.s    V_20
    IL_015f:  ldloc.s    V_20
    IL_0161:  ldc.i4.s   66
    IL_0163:  blt        IL_052f

    IL_0168:  ldloc.0
    IL_0169:  ldloc.s    V_18
    IL_016b:  ldloc.s    V_20
    IL_016d:  ldloc.s    V_19
    IL_016f:  callvirt   instance int32 Game.TerrainData::GetCellContentsFast(int32,
                                                                              int32,
                                                                              int32)
    IL_0174:  stloc.s    V_21
    IL_0176:  ldloc.s    V_21
    IL_0178:  ldc.i4.2
    IL_0179:  beq.s      IL_0183

    IL_017b:  ldloc.s    V_21
    IL_017d:  ldc.i4.8
    IL_017e:  bne.un     IL_052f

    IL_0183:  ldloc.s    V_20
    IL_0185:  ldc.i4.1
    IL_0186:  add
    IL_0187:  stloc.s    V_20
    IL_0189:  ldloc.s    V_9
    IL_018b:  ldc.i4.3
    IL_018c:  ldc.i4.7
    IL_018d:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0192:  stloc.s    V_22
    IL_0194:  ldloc.s    V_9
    IL_0196:  ldc.i4.0
    IL_0197:  ldc.i4.3
    IL_0198:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_019d:  call       valuetype [Engine]Engine.Point3 Game.CellFace::FaceToPoint3(int32)
    IL_01a2:  stloc.s    V_23
    IL_01a4:  ldloc.s    V_23
    IL_01a6:  ldfld      int32 [Engine]Engine.Point3::X
    IL_01ab:  ldc.i4.0
    IL_01ac:  bge.s      IL_01c4

    IL_01ae:  ldloc.s    V_18
    IL_01b0:  ldloc.s    V_22
    IL_01b2:  sub
    IL_01b3:  ldc.i4.1
    IL_01b4:  add
    IL_01b5:  ldc.i4.0
    IL_01b6:  bge.s      IL_01c4

    IL_01b8:  ldloca.s   V_23
    IL_01ba:  ldflda     int32 [Engine]Engine.Point3::X
    IL_01bf:  dup
    IL_01c0:  ldind.i4
    IL_01c1:  ldc.i4.m1
    IL_01c2:  mul
    IL_01c3:  stind.i4
    IL_01c4:  ldloc.s    V_23
    IL_01c6:  ldfld      int32 [Engine]Engine.Point3::X
    IL_01cb:  ldc.i4.0
    IL_01cc:  ble.s      IL_01e5

    IL_01ce:  ldloc.s    V_18
    IL_01d0:  ldloc.s    V_22
    IL_01d2:  add
    IL_01d3:  ldc.i4.1
    IL_01d4:  sub
    IL_01d5:  ldc.i4.s   15
    IL_01d7:  ble.s      IL_01e5

    IL_01d9:  ldloca.s   V_23
    IL_01db:  ldflda     int32 [Engine]Engine.Point3::X
    IL_01e0:  dup
    IL_01e1:  ldind.i4
    IL_01e2:  ldc.i4.m1
    IL_01e3:  mul
    IL_01e4:  stind.i4
    IL_01e5:  ldloc.s    V_23
    IL_01e7:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_01ec:  ldc.i4.0
    IL_01ed:  bge.s      IL_0205

    IL_01ef:  ldloc.s    V_19
    IL_01f1:  ldloc.s    V_22
    IL_01f3:  sub
    IL_01f4:  ldc.i4.1
    IL_01f5:  add
    IL_01f6:  ldc.i4.0
    IL_01f7:  bge.s      IL_0205

    IL_01f9:  ldloca.s   V_23
    IL_01fb:  ldflda     int32 [Engine]Engine.Point3::Z
    IL_0200:  dup
    IL_0201:  ldind.i4
    IL_0202:  ldc.i4.m1
    IL_0203:  mul
    IL_0204:  stind.i4
    IL_0205:  ldloc.s    V_23
    IL_0207:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_020c:  ldc.i4.0
    IL_020d:  ble.s      IL_0226

    IL_020f:  ldloc.s    V_19
    IL_0211:  ldloc.s    V_22
    IL_0213:  add
    IL_0214:  ldc.i4.1
    IL_0215:  sub
    IL_0216:  ldc.i4.s   15
    IL_0218:  ble.s      IL_0226

    IL_021a:  ldloca.s   V_23
    IL_021c:  ldflda     int32 [Engine]Engine.Point3::Z
    IL_0221:  dup
    IL_0222:  ldind.i4
    IL_0223:  ldc.i4.m1
    IL_0224:  mul
    IL_0225:  stind.i4
    IL_0226:  ldc.i4.1
    IL_0227:  stloc.s    V_24
    IL_0229:  ldc.i4.0
    IL_022a:  stloc.s    V_25
    IL_022c:  ldc.i4.0
    IL_022d:  stloc.s    V_26
    IL_022f:  ldc.i4.0
    IL_0230:  stloc.s    V_27
    IL_0232:  br         IL_02dd

    IL_0237:  ldloc.s    V_18
    IL_0239:  ldloc.s    V_23
    IL_023b:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0240:  ldloc.s    V_27
    IL_0242:  mul
    IL_0243:  add
    IL_0244:  stloc.s    V_28
    IL_0246:  ldloc.s    V_19
    IL_0248:  ldloc.s    V_23
    IL_024a:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_024f:  ldloc.s    V_27
    IL_0251:  mul
    IL_0252:  add
    IL_0253:  stloc.s    V_29
    IL_0255:  ldloc.s    V_28
    IL_0257:  ldloc.1
    IL_0258:  ldc.i4.1
    IL_0259:  add
    IL_025a:  blt.s      IL_0272

    IL_025c:  ldloc.s    V_28
    IL_025e:  ldloc.2
    IL_025f:  ldc.i4.1
    IL_0260:  sub
    IL_0261:  bge.s      IL_0272

    IL_0263:  ldloc.s    V_29
    IL_0265:  ldloc.3
    IL_0266:  ldc.i4.1
    IL_0267:  add
    IL_0268:  blt.s      IL_0272

    IL_026a:  ldloc.s    V_29
    IL_026c:  ldloc.s    V_4
    IL_026e:  ldc.i4.1
    IL_026f:  sub
    IL_0270:  blt.s      IL_0277

    IL_0272:  ldc.i4.0
    IL_0273:  stloc.s    V_24
    IL_0275:  br.s       IL_02e6

    IL_0277:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_027c:  ldloc.0
    IL_027d:  ldloc.s    V_28
    IL_027f:  ldloc.s    V_20
    IL_0281:  ldloc.s    V_29
    IL_0283:  callvirt   instance int32 Game.TerrainData::GetCellContentsFast(int32,
                                                                              int32,
                                                                              int32)
    IL_0288:  ldelem.ref
    IL_0289:  ldfld      bool Game.Block::IsCollidable
    IL_028e:  brfalse.s  IL_0295

    IL_0290:  ldc.i4.0
    IL_0291:  stloc.s    V_24
    IL_0293:  br.s       IL_02e6

    IL_0295:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_029a:  ldloc.0
    IL_029b:  ldloc.s    V_28
    IL_029d:  ldloc.s    V_20
    IL_029f:  ldc.i4.1
    IL_02a0:  sub
    IL_02a1:  ldloc.s    V_29
    IL_02a3:  callvirt   instance int32 Game.TerrainData::GetCellContentsFast(int32,
                                                                              int32,
                                                                              int32)
    IL_02a8:  ldelem.ref
    IL_02a9:  ldfld      bool Game.Block::IsCollidable
    IL_02ae:  brfalse.s  IL_02d7

    IL_02b0:  ldloc.s    V_27
    IL_02b2:  ldloc.s    V_22
    IL_02b4:  ldc.i4.2
    IL_02b5:  div
    IL_02b6:  ldc.i4.0
    IL_02b7:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_02bc:  bgt.s      IL_02c1

    IL_02be:  ldc.i4.1
    IL_02bf:  stloc.s    V_25
    IL_02c1:  ldloc.s    V_27
    IL_02c3:  ldloc.s    V_22
    IL_02c5:  ldc.i4.2
    IL_02c6:  div
    IL_02c7:  ldc.i4.1
    IL_02c8:  add
    IL_02c9:  ldloc.s    V_22
    IL_02cb:  ldc.i4.1
    IL_02cc:  sub
    IL_02cd:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_02d2:  blt.s      IL_02d7

    IL_02d4:  ldc.i4.1
    IL_02d5:  stloc.s    V_26
    IL_02d7:  ldloc.s    V_27
    IL_02d9:  ldc.i4.1
    IL_02da:  add
    IL_02db:  stloc.s    V_27
    IL_02dd:  ldloc.s    V_27
    IL_02df:  ldloc.s    V_22
    IL_02e1:  blt        IL_0237

    IL_02e6:  ldloc.s    V_24
    IL_02e8:  ldloc.s    V_25
    IL_02ea:  and
    IL_02eb:  ldloc.s    V_26
    IL_02ed:  and
    IL_02ee:  brfalse    IL_052f

    IL_02f3:  ldloc.s    V_23
    IL_02f5:  ldfld      int32 [Engine]Engine.Point3::X
    IL_02fa:  brtrue.s   IL_0306

    IL_02fc:  ldc.i4.1
    IL_02fd:  ldc.i4.0
    IL_02fe:  ldc.i4.0
    IL_02ff:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0304:  br.s       IL_030e

    IL_0306:  ldc.i4.0
    IL_0307:  ldc.i4.0
    IL_0308:  ldc.i4.1
    IL_0309:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_030e:  stloc.s    V_30
    IL_0310:  ldloc.s    V_9
    IL_0312:  ldloc.s    V_11
    IL_0314:  ldloc.s    V_10
    IL_0316:  ldloc.s    V_20
    IL_0318:  call       valuetype Game.TreeType Game.PlantsManager::GenerateRandomTreeType(class Game.Random,
                                                                                            int32,
                                                                                            int32,
                                                                                            int32)
    IL_031d:  dup
    IL_031e:  call       int32 Game.PlantsManager::GetTreeTrunkValue(valuetype Game.TreeType)
    IL_0323:  stloc.s    V_31
    IL_0325:  ldloc.s    V_31
    IL_0327:  ldloc.s    V_31
    IL_0329:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_032e:  ldloc.s    V_23
    IL_0330:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0335:  brtrue.s   IL_033a

    IL_0337:  ldc.i4.0
    IL_0338:  br.s       IL_033b

    IL_033a:  ldc.i4.1
    IL_033b:  call       int32 Game.WoodBlock::SetCutFace(int32,
                                                          int32)
    IL_0340:  call       int32 Game.TerrainData::ReplaceData(int32,
                                                             int32)
    IL_0345:  stloc.s    V_31
    IL_0347:  call       int32 Game.PlantsManager::GetTreeLeavesValue(valuetype Game.TreeType)
    IL_034c:  stloc.s    V_32
    IL_034e:  ldc.i4.0
    IL_034f:  stloc.s    V_33
    IL_0351:  br         IL_0520

    IL_0356:  ldloc.s    V_18
    IL_0358:  ldloc.s    V_23
    IL_035a:  ldfld      int32 [Engine]Engine.Point3::X
    IL_035f:  ldloc.s    V_33
    IL_0361:  mul
    IL_0362:  add
    IL_0363:  stloc.s    V_34
    IL_0365:  ldloc.s    V_19
    IL_0367:  ldloc.s    V_23
    IL_0369:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_036e:  ldloc.s    V_33
    IL_0370:  mul
    IL_0371:  add
    IL_0372:  stloc.s    V_35
    IL_0374:  ldloc.0
    IL_0375:  ldloc.s    V_34
    IL_0377:  ldloc.s    V_20
    IL_0379:  ldloc.s    V_35
    IL_037b:  ldloc.s    V_31
    IL_037d:  callvirt   instance void Game.TerrainData::SetCellValueFast(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_0382:  ldloc.s    V_33
    IL_0384:  ldloc.s    V_22
    IL_0386:  ldc.i4.2
    IL_0387:  div
    IL_0388:  ble        IL_051a

    IL_038d:  ldloc.s    V_9
    IL_038f:  ldc.r4     0.30000001
    IL_0394:  callvirt   instance bool Game.Random::Bool(float32)
    IL_0399:  brfalse.s  IL_03e2

    IL_039b:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_03a0:  ldloc.0
    IL_03a1:  ldloc.s    V_34
    IL_03a3:  ldloc.s    V_30
    IL_03a5:  ldfld      int32 [Engine]Engine.Point3::X
    IL_03aa:  add
    IL_03ab:  ldloc.s    V_20
    IL_03ad:  ldloc.s    V_35
    IL_03af:  ldloc.s    V_30
    IL_03b1:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_03b6:  add
    IL_03b7:  callvirt   instance int32 Game.TerrainData::GetCellContentsFast(int32,
                                                                              int32,
                                                                              int32)
    IL_03bc:  ldelem.ref
    IL_03bd:  ldfld      bool Game.Block::IsCollidable
    IL_03c2:  brtrue.s   IL_03e2

    IL_03c4:  ldloc.0
    IL_03c5:  ldloc.s    V_34
    IL_03c7:  ldloc.s    V_30
    IL_03c9:  ldfld      int32 [Engine]Engine.Point3::X
    IL_03ce:  add
    IL_03cf:  ldloc.s    V_20
    IL_03d1:  ldloc.s    V_35
    IL_03d3:  ldloc.s    V_30
    IL_03d5:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_03da:  add
    IL_03db:  ldloc.s    V_32
    IL_03dd:  callvirt   instance void Game.TerrainData::SetCellValueFast(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_03e2:  ldloc.s    V_9
    IL_03e4:  ldc.r4     5.0000001e-002
    IL_03e9:  callvirt   instance bool Game.Random::Bool(float32)
    IL_03ee:  brfalse.s  IL_0437

    IL_03f0:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_03f5:  ldloc.0
    IL_03f6:  ldloc.s    V_34
    IL_03f8:  ldloc.s    V_30
    IL_03fa:  ldfld      int32 [Engine]Engine.Point3::X
    IL_03ff:  add
    IL_0400:  ldloc.s    V_20
    IL_0402:  ldloc.s    V_35
    IL_0404:  ldloc.s    V_30
    IL_0406:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_040b:  add
    IL_040c:  callvirt   instance int32 Game.TerrainData::GetCellContentsFast(int32,
                                                                              int32,
                                                                              int32)
    IL_0411:  ldelem.ref
    IL_0412:  ldfld      bool Game.Block::IsCollidable
    IL_0417:  brtrue.s   IL_0437

    IL_0419:  ldloc.0
    IL_041a:  ldloc.s    V_34
    IL_041c:  ldloc.s    V_30
    IL_041e:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0423:  add
    IL_0424:  ldloc.s    V_20
    IL_0426:  ldloc.s    V_35
    IL_0428:  ldloc.s    V_30
    IL_042a:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_042f:  add
    IL_0430:  ldloc.s    V_31
    IL_0432:  callvirt   instance void Game.TerrainData::SetCellValueFast(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_0437:  ldloc.s    V_9
    IL_0439:  ldc.r4     0.30000001
    IL_043e:  callvirt   instance bool Game.Random::Bool(float32)
    IL_0443:  brfalse.s  IL_048c

    IL_0445:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_044a:  ldloc.0
    IL_044b:  ldloc.s    V_34
    IL_044d:  ldloc.s    V_30
    IL_044f:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0454:  sub
    IL_0455:  ldloc.s    V_20
    IL_0457:  ldloc.s    V_35
    IL_0459:  ldloc.s    V_30
    IL_045b:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0460:  sub
    IL_0461:  callvirt   instance int32 Game.TerrainData::GetCellContentsFast(int32,
                                                                              int32,
                                                                              int32)
    IL_0466:  ldelem.ref
    IL_0467:  ldfld      bool Game.Block::IsCollidable
    IL_046c:  brtrue.s   IL_048c

    IL_046e:  ldloc.0
    IL_046f:  ldloc.s    V_34
    IL_0471:  ldloc.s    V_30
    IL_0473:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0478:  sub
    IL_0479:  ldloc.s    V_20
    IL_047b:  ldloc.s    V_35
    IL_047d:  ldloc.s    V_30
    IL_047f:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0484:  sub
    IL_0485:  ldloc.s    V_32
    IL_0487:  callvirt   instance void Game.TerrainData::SetCellValueFast(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_048c:  ldloc.s    V_9
    IL_048e:  ldc.r4     5.0000001e-002
    IL_0493:  callvirt   instance bool Game.Random::Bool(float32)
    IL_0498:  brfalse.s  IL_04e1

    IL_049a:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_049f:  ldloc.0
    IL_04a0:  ldloc.s    V_34
    IL_04a2:  ldloc.s    V_30
    IL_04a4:  ldfld      int32 [Engine]Engine.Point3::X
    IL_04a9:  sub
    IL_04aa:  ldloc.s    V_20
    IL_04ac:  ldloc.s    V_35
    IL_04ae:  ldloc.s    V_30
    IL_04b0:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_04b5:  sub
    IL_04b6:  callvirt   instance int32 Game.TerrainData::GetCellContentsFast(int32,
                                                                              int32,
                                                                              int32)
    IL_04bb:  ldelem.ref
    IL_04bc:  ldfld      bool Game.Block::IsCollidable
    IL_04c1:  brtrue.s   IL_04e1

    IL_04c3:  ldloc.0
    IL_04c4:  ldloc.s    V_34
    IL_04c6:  ldloc.s    V_30
    IL_04c8:  ldfld      int32 [Engine]Engine.Point3::X
    IL_04cd:  sub
    IL_04ce:  ldloc.s    V_20
    IL_04d0:  ldloc.s    V_35
    IL_04d2:  ldloc.s    V_30
    IL_04d4:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_04d9:  sub
    IL_04da:  ldloc.s    V_31
    IL_04dc:  callvirt   instance void Game.TerrainData::SetCellValueFast(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_04e1:  ldloc.s    V_9
    IL_04e3:  ldc.r4     0.1
    IL_04e8:  callvirt   instance bool Game.Random::Bool(float32)
    IL_04ed:  brfalse.s  IL_051a

    IL_04ef:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_04f4:  ldloc.0
    IL_04f5:  ldloc.s    V_34
    IL_04f7:  ldloc.s    V_20
    IL_04f9:  ldc.i4.1
    IL_04fa:  add
    IL_04fb:  ldloc.s    V_35
    IL_04fd:  callvirt   instance int32 Game.TerrainData::GetCellContentsFast(int32,
                                                                              int32,
                                                                              int32)
    IL_0502:  ldelem.ref
    IL_0503:  ldfld      bool Game.Block::IsCollidable
    IL_0508:  brtrue.s   IL_051a

    IL_050a:  ldloc.0
    IL_050b:  ldloc.s    V_34
    IL_050d:  ldloc.s    V_20
    IL_050f:  ldc.i4.1
    IL_0510:  add
    IL_0511:  ldloc.s    V_35
    IL_0513:  ldloc.s    V_32
    IL_0515:  callvirt   instance void Game.TerrainData::SetCellValueFast(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_051a:  ldloc.s    V_33
    IL_051c:  ldc.i4.1
    IL_051d:  add
    IL_051e:  stloc.s    V_33
    IL_0520:  ldloc.s    V_33
    IL_0522:  ldloc.s    V_22
    IL_0524:  blt        IL_0356

    IL_0529:  ldloc.s    V_14
    IL_052b:  ldc.i4.1
    IL_052c:  add
    IL_052d:  stloc.s    V_14
    IL_052f:  ldloc.s    V_17
    IL_0531:  ldc.i4.1
    IL_0532:  add
    IL_0533:  stloc.s    V_17
    IL_0535:  ldloc.s    V_17
    IL_0537:  ldc.i4.8
    IL_0538:  bge.s      IL_0543

    IL_053a:  ldloc.s    V_14
    IL_053c:  ldloc.s    V_13
    IL_053e:  blt        IL_012f

    IL_0543:  ldc.r4     5.
    IL_0548:  ldloc.s    V_12
    IL_054a:  mul
    IL_054b:  conv.i4
    IL_054c:  stloc.s    V_15
    IL_054e:  ldc.i4.0
    IL_054f:  stloc.s    V_16
    IL_0551:  ldc.i4.0
    IL_0552:  stloc.s    V_36
    IL_0554:  br         IL_066f

    IL_0559:  ldloc.s    V_7
    IL_055b:  ldc.i4.s   16
    IL_055d:  mul
    IL_055e:  ldloc.s    V_9
    IL_0560:  ldc.i4.2
    IL_0561:  ldc.i4.s   13
    IL_0563:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0568:  add
    IL_0569:  stloc.s    V_37
    IL_056b:  ldloc.s    V_8
    IL_056d:  ldc.i4.s   16
    IL_056f:  mul
    IL_0570:  ldloc.s    V_9
    IL_0572:  ldc.i4.2
    IL_0573:  ldc.i4.s   13
    IL_0575:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_057a:  add
    IL_057b:  stloc.s    V_38
    IL_057d:  ldloc.0
    IL_057e:  ldloc.s    V_37
    IL_0580:  ldloc.s    V_38
    IL_0582:  callvirt   instance int32 Game.TerrainData::CalculateTopmostCellHeight(int32,
                                                                                     int32)
    IL_0587:  stloc.s    V_39
    IL_0589:  ldloc.s    V_39
    IL_058b:  ldc.i4.s   66
    IL_058d:  blt        IL_0669

    IL_0592:  ldloc.0
    IL_0593:  ldloc.s    V_37
    IL_0595:  ldloc.s    V_39
    IL_0597:  ldloc.s    V_38
    IL_0599:  callvirt   instance int32 Game.TerrainData::GetCellContentsFast(int32,
                                                                              int32,
                                                                              int32)
    IL_059e:  stloc.s    V_40
    IL_05a0:  ldloc.s    V_40
    IL_05a2:  ldc.i4.2
    IL_05a3:  beq.s      IL_05ad

    IL_05a5:  ldloc.s    V_40
    IL_05a7:  ldc.i4.8
    IL_05a8:  bne.un     IL_0669

    IL_05ad:  ldloc.s    V_39
    IL_05af:  ldc.i4.1
    IL_05b0:  add
    IL_05b1:  stloc.s    V_39
    IL_05b3:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_05b8:  ldloc.0
    IL_05b9:  ldloc.s    V_37
    IL_05bb:  ldc.i4.1
    IL_05bc:  add
    IL_05bd:  ldloc.s    V_39
    IL_05bf:  ldloc.s    V_38
    IL_05c1:  callvirt   instance int32 Game.TerrainData::GetCellContentsFast(int32,
                                                                              int32,
                                                                              int32)
    IL_05c6:  ldelem.ref
    IL_05c7:  ldfld      bool Game.Block::IsCollidable
    IL_05cc:  brtrue     IL_0669

    IL_05d1:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_05d6:  ldloc.0
    IL_05d7:  ldloc.s    V_37
    IL_05d9:  ldc.i4.1
    IL_05da:  sub
    IL_05db:  ldloc.s    V_39
    IL_05dd:  ldloc.s    V_38
    IL_05df:  callvirt   instance int32 Game.TerrainData::GetCellContentsFast(int32,
                                                                              int32,
                                                                              int32)
    IL_05e4:  ldelem.ref
    IL_05e5:  ldfld      bool Game.Block::IsCollidable
    IL_05ea:  brtrue.s   IL_0669

    IL_05ec:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_05f1:  ldloc.0
    IL_05f2:  ldloc.s    V_37
    IL_05f4:  ldloc.s    V_39
    IL_05f6:  ldloc.s    V_38
    IL_05f8:  ldc.i4.1
    IL_05f9:  add
    IL_05fa:  callvirt   instance int32 Game.TerrainData::GetCellContentsFast(int32,
                                                                              int32,
                                                                              int32)
    IL_05ff:  ldelem.ref
    IL_0600:  ldfld      bool Game.Block::IsCollidable
    IL_0605:  brtrue.s   IL_0669

    IL_0607:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_060c:  ldloc.0
    IL_060d:  ldloc.s    V_37
    IL_060f:  ldloc.s    V_39
    IL_0611:  ldloc.s    V_38
    IL_0613:  ldc.i4.1
    IL_0614:  sub
    IL_0615:  callvirt   instance int32 Game.TerrainData::GetCellContentsFast(int32,
                                                                              int32,
                                                                              int32)
    IL_061a:  ldelem.ref
    IL_061b:  ldfld      bool Game.Block::IsCollidable
    IL_0620:  brtrue.s   IL_0669

    IL_0622:  ldloc.s    V_9
    IL_0624:  ldloc.s    V_11
    IL_0626:  ldloc.s    V_10
    IL_0628:  ldloc.s    V_39
    IL_062a:  call       valuetype Game.TreeType Game.PlantsManager::GenerateRandomTreeType(class Game.Random,
                                                                                            int32,
                                                                                            int32,
                                                                                            int32)
    IL_062f:  call       valuetype [Engine]Engine.ReadOnlyList`1<class Game.TerrainBrush> Game.PlantsManager::GetTreeBrushes(valuetype Game.TreeType)
    IL_0634:  stloc.s    V_41
    IL_0636:  ldloca.s   V_41
    IL_0638:  ldloc.s    V_9
    IL_063a:  ldc.i4.0
    IL_063b:  ldloca.s   V_41
    IL_063d:  call       instance int32 valuetype [Engine]Engine.ReadOnlyList`1<class Game.TerrainBrush>::get_Count()
    IL_0642:  ldc.i4.1
    IL_0643:  sub
    IL_0644:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0649:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class Game.TerrainBrush>::get_Item(int32)
    IL_064e:  ldloc.0
    IL_064f:  ldloc.s    V_37
    IL_0651:  ldloc.s    V_39
    IL_0653:  ldloc.s    V_38
    IL_0655:  ldloc.1
    IL_0656:  ldloc.2
    IL_0657:  ldloc.s    V_5
    IL_0659:  ldloc.s    V_6
    IL_065b:  ldloc.3
    IL_065c:  ldloc.s    V_4
    IL_065e:  callvirt   instance void Game.TerrainBrush::PaintFast(class Game.TerrainData,
                                                                    int32,
                                                                    int32,
                                                                    int32,
                                                                    int32,
                                                                    int32,
                                                                    int32,
                                                                    int32,
                                                                    int32,
                                                                    int32)
    IL_0663:  ldloc.s    V_16
    IL_0665:  ldc.i4.1
    IL_0666:  add
    IL_0667:  stloc.s    V_16
    IL_0669:  ldloc.s    V_36
    IL_066b:  ldc.i4.1
    IL_066c:  add
    IL_066d:  stloc.s    V_36
    IL_066f:  ldloc.s    V_36
    IL_0671:  ldc.i4.s   32
    IL_0673:  bge.s      IL_067e

    IL_0675:  ldloc.s    V_16
    IL_0677:  ldloc.s    V_15
    IL_0679:  blt        IL_0559

    IL_067e:  ldloc.s    V_8
    IL_0680:  ldc.i4.1
    IL_0681:  add
    IL_0682:  stloc.s    V_8
    IL_0684:  ldloc.s    V_8
    IL_0686:  ldarg.2
    IL_0687:  ble        IL_0044

    IL_068c:  ldloc.s    V_7
    IL_068e:  ldc.i4.1
    IL_068f:  add
    IL_0690:  stloc.s    V_7
    IL_0692:  ldloc.s    V_7
    IL_0694:  ldarg.1
    IL_0695:  ble        IL_003c

    IL_069a:  ret
  } // end of method TerrainContentsGenerator::GenerateTreesAndLogs

  .method private hidebysig instance void 
          GenerateBedrockAndAir(int32 chunkX,
                                int32 chunkZ) cil managed
  {
    // 代码大小       164 (0xa4)
    .maxstack  8
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             float32 V_6,
             int32 V_7)
    IL_0000:  ldc.i4.1
    IL_0001:  call       int32 Game.TerrainData::MakeBlockValue(int32)
    IL_0006:  stloc.0
    IL_0007:  ldarg.1
    IL_0008:  ldc.i4.s   16
    IL_000a:  mul
    IL_000b:  dup
    IL_000c:  ldc.i4.s   16
    IL_000e:  add
    IL_000f:  stloc.1
    IL_0010:  ldarg.2
    IL_0011:  ldc.i4.s   16
    IL_0013:  mul
    IL_0014:  stloc.2
    IL_0015:  ldloc.2
    IL_0016:  ldc.i4.s   16
    IL_0018:  add
    IL_0019:  stloc.3
    IL_001a:  stloc.s    V_4
    IL_001c:  br.s       IL_009b

    IL_001e:  ldloc.2
    IL_001f:  stloc.s    V_5
    IL_0021:  br.s       IL_0090

    IL_0023:  ldc.i4.2
    IL_0024:  ldc.r4     4.
    IL_0029:  ldloc.s    V_4
    IL_002b:  conv.r4
    IL_002c:  ldloc.s    V_5
    IL_002e:  conv.r4
    IL_002f:  ldc.r4     0.1
    IL_0034:  ldc.i4.1
    IL_0035:  ldc.r4     1.
    IL_003a:  ldc.r4     1.
    IL_003f:  call       float32 Game.SimplexNoise::OctavedNoise(float32,
                                                                 float32,
                                                                 float32,
                                                                 int32,
                                                                 float32,
                                                                 float32)
    IL_0044:  mul
    IL_0045:  conv.i4
    IL_0046:  add
    IL_0047:  conv.r4
    IL_0048:  stloc.s    V_6
    IL_004a:  ldc.i4.0
    IL_004b:  stloc.s    V_7
    IL_004d:  br.s       IL_006c

    IL_004f:  ldarg.0
    IL_0050:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_0055:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_005a:  ldloc.s    V_4
    IL_005c:  ldloc.s    V_7
    IL_005e:  ldloc.s    V_5
    IL_0060:  ldloc.0
    IL_0061:  callvirt   instance void Game.TerrainData::SetCellValueFast(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_0066:  ldloc.s    V_7
    IL_0068:  ldc.i4.1
    IL_0069:  add
    IL_006a:  stloc.s    V_7
    IL_006c:  ldloc.s    V_7
    IL_006e:  conv.r4
    IL_006f:  ldloc.s    V_6
    IL_0071:  blt.s      IL_004f

    IL_0073:  ldarg.0
    IL_0074:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_0079:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_007e:  ldloc.s    V_4
    IL_0080:  ldc.i4.s   127
    IL_0082:  ldloc.s    V_5
    IL_0084:  ldc.i4.0
    IL_0085:  callvirt   instance void Game.TerrainData::SetCellValueFast(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_008a:  ldloc.s    V_5
    IL_008c:  ldc.i4.1
    IL_008d:  add
    IL_008e:  stloc.s    V_5
    IL_0090:  ldloc.s    V_5
    IL_0092:  ldloc.3
    IL_0093:  blt.s      IL_0023

    IL_0095:  ldloc.s    V_4
    IL_0097:  ldc.i4.1
    IL_0098:  add
    IL_0099:  stloc.s    V_4
    IL_009b:  ldloc.s    V_4
    IL_009d:  ldloc.1
    IL_009e:  blt        IL_001e

    IL_00a3:  ret
  } // end of method TerrainContentsGenerator::GenerateBedrockAndAir

  .method private hidebysig instance void 
          GenerateGrassAndPlants(int32 chunkX,
                                 int32 chunkZ) cil managed
  {
    // 代码大小       318 (0x13e)
    .maxstack  7
    .locals init (class Game.Random V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7,
             int32 V_8,
             int32 V_9,
             int32 V_10,
             int32 V_11,
             int32 V_12,
             int32 V_13)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.TerrainContentsGenerator::TGExtras
    IL_0006:  brtrue.s   IL_0009

    IL_0008:  ret

    IL_0009:  ldarg.0
    IL_000a:  ldfld      int32 Game.TerrainContentsGenerator::m_seed
    IL_000f:  ldarg.1
    IL_0010:  add
    IL_0011:  ldc.i4     0xf67
    IL_0016:  ldarg.2
    IL_0017:  mul
    IL_0018:  add
    IL_0019:  newobj     instance void Game.Random::.ctor(int32)
    IL_001e:  stloc.0
    IL_001f:  ldarg.1
    IL_0020:  ldc.i4.s   16
    IL_0022:  mul
    IL_0023:  dup
    IL_0024:  ldc.i4.s   16
    IL_0026:  add
    IL_0027:  stloc.1
    IL_0028:  ldc.i4.0
    IL_0029:  stloc.2
    IL_002a:  ldc.i4     0x80
    IL_002f:  stloc.3
    IL_0030:  ldarg.2
    IL_0031:  ldc.i4.s   16
    IL_0033:  mul
    IL_0034:  stloc.s    V_4
    IL_0036:  ldloc.s    V_4
    IL_0038:  ldc.i4.s   16
    IL_003a:  add
    IL_003b:  stloc.s    V_5
    IL_003d:  stloc.s    V_6
    IL_003f:  br         IL_0135

    IL_0044:  ldloc.s    V_4
    IL_0046:  stloc.s    V_7
    IL_0048:  br         IL_0126

    IL_004d:  ldloc.3
    IL_004e:  ldc.i4.2
    IL_004f:  sub
    IL_0050:  stloc.s    V_8
    IL_0052:  br         IL_0118

    IL_0057:  ldarg.0
    IL_0058:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_005d:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0062:  ldloc.s    V_6
    IL_0064:  ldloc.s    V_8
    IL_0066:  ldloc.s    V_7
    IL_0068:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32,
                                                                           int32,
                                                                           int32)
    IL_006d:  stloc.s    V_9
    IL_006f:  ldloc.s    V_9
    IL_0071:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0076:  stloc.s    V_10
    IL_0078:  ldloc.s    V_10
    IL_007a:  brfalse    IL_0112

    IL_007f:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0084:  ldloc.s    V_10
    IL_0086:  ldelem.ref
    IL_0087:  isinst     Game.FluidBlock
    IL_008c:  brtrue     IL_0120

    IL_0091:  ldarg.0
    IL_0092:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_0097:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_009c:  ldloc.s    V_6
    IL_009e:  ldloc.s    V_7
    IL_00a0:  callvirt   instance int32 Game.TerrainData::GetTemperatureFast(int32,
                                                                             int32)
    IL_00a5:  stloc.s    V_11
    IL_00a7:  ldarg.0
    IL_00a8:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_00ad:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_00b2:  ldloc.s    V_6
    IL_00b4:  ldloc.s    V_7
    IL_00b6:  callvirt   instance int32 Game.TerrainData::GetHumidityFast(int32,
                                                                          int32)
    IL_00bb:  stloc.s    V_12
    IL_00bd:  ldloc.0
    IL_00be:  ldloc.s    V_9
    IL_00c0:  ldloc.s    V_11
    IL_00c2:  ldloc.s    V_12
    IL_00c4:  ldloc.s    V_8
    IL_00c6:  ldc.i4.1
    IL_00c7:  add
    IL_00c8:  call       int32 Game.PlantsManager::GenerateRandomPlantValue(class Game.Random,
                                                                            int32,
                                                                            int32,
                                                                            int32,
                                                                            int32)
    IL_00cd:  stloc.s    V_13
    IL_00cf:  ldloc.s    V_13
    IL_00d1:  brfalse.s  IL_00ed

    IL_00d3:  ldarg.0
    IL_00d4:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_00d9:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_00de:  ldloc.s    V_6
    IL_00e0:  ldloc.s    V_8
    IL_00e2:  ldc.i4.1
    IL_00e3:  add
    IL_00e4:  ldloc.s    V_7
    IL_00e6:  ldloc.s    V_13
    IL_00e8:  callvirt   instance void Game.TerrainData::SetCellValueFast(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_00ed:  ldloc.s    V_10
    IL_00ef:  ldc.i4.2
    IL_00f0:  bne.un.s   IL_0120

    IL_00f2:  ldarg.0
    IL_00f3:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_00f8:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_00fd:  ldloc.s    V_6
    IL_00ff:  ldloc.s    V_8
    IL_0101:  ldloc.s    V_7
    IL_0103:  ldc.i4.8
    IL_0104:  ldc.i4.0
    IL_0105:  ldc.i4.0
    IL_0106:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_010b:  callvirt   instance void Game.TerrainData::SetCellValueFast(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_0110:  br.s       IL_0120

    IL_0112:  ldloc.s    V_8
    IL_0114:  ldc.i4.1
    IL_0115:  sub
    IL_0116:  stloc.s    V_8
    IL_0118:  ldloc.s    V_8
    IL_011a:  ldloc.2
    IL_011b:  bge        IL_0057

    IL_0120:  ldloc.s    V_7
    IL_0122:  ldc.i4.1
    IL_0123:  add
    IL_0124:  stloc.s    V_7
    IL_0126:  ldloc.s    V_7
    IL_0128:  ldloc.s    V_5
    IL_012a:  blt        IL_004d

    IL_012f:  ldloc.s    V_6
    IL_0131:  ldc.i4.1
    IL_0132:  add
    IL_0133:  stloc.s    V_6
    IL_0135:  ldloc.s    V_6
    IL_0137:  ldloc.1
    IL_0138:  blt        IL_0044

    IL_013d:  ret
  } // end of method TerrainContentsGenerator::GenerateGrassAndPlants

  .method private hidebysig instance void 
          GenerateBottomSuckers(int32 chunkX,
                                int32 chunkZ) cil managed
  {
    // 代码大小       651 (0x28b)
    .maxstack  5
    .locals init (class Game.TerrainData V_0,
             class Game.Random V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7,
             int32 V_8,
             int32 V_9,
             int32 V_10,
             int32 V_11,
             int32 V_12,
             int32 V_13,
             valuetype [Engine]Engine.Point3 V_14,
             int32 V_15,
             float32 V_16,
             float32 V_17,
             float32 V_18,
             int32 V_19,
             int32 V_20,
             int32 V_21)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.TerrainContentsGenerator::TGExtras
    IL_0006:  brtrue.s   IL_0009

    IL_0008:  ret

    IL_0009:  ldarg.0
    IL_000a:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_000f:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0014:  stloc.0
    IL_0015:  ldarg.0
    IL_0016:  ldfld      int32 Game.TerrainContentsGenerator::m_seed
    IL_001b:  ldarg.1
    IL_001c:  add
    IL_001d:  ldc.i4     0x8a2
    IL_0022:  ldarg.2
    IL_0023:  mul
    IL_0024:  add
    IL_0025:  newobj     instance void Game.Random::.ctor(int32)
    IL_002a:  stloc.1
    IL_002b:  ldarg.1
    IL_002c:  ldc.i4.s   16
    IL_002e:  mul
    IL_002f:  stloc.2
    IL_0030:  ldloc.2
    IL_0031:  ldc.i4.s   16
    IL_0033:  add
    IL_0034:  stloc.3
    IL_0035:  ldc.i4.0
    IL_0036:  stloc.s    V_4
    IL_0038:  ldc.i4     0x80
    IL_003d:  stloc.s    V_5
    IL_003f:  ldarg.2
    IL_0040:  ldc.i4.s   16
    IL_0042:  mul
    IL_0043:  stloc.s    V_6
    IL_0045:  ldloc.s    V_6
    IL_0047:  ldc.i4.s   16
    IL_0049:  add
    IL_004a:  stloc.s    V_7
    IL_004c:  ldloc.2
    IL_004d:  stloc.s    V_8
    IL_004f:  br         IL_0282

    IL_0054:  ldloc.s    V_6
    IL_0056:  stloc.s    V_9
    IL_0058:  br         IL_0273

    IL_005d:  ldloc.1
    IL_005e:  ldc.r4     0.33000001
    IL_0063:  callvirt   instance bool Game.Random::Bool(float32)
    IL_0068:  brfalse    IL_026d

    IL_006d:  ldloc.0
    IL_006e:  ldloc.s    V_8
    IL_0070:  ldloc.s    V_9
    IL_0072:  callvirt   instance int32 Game.TerrainData::GetTemperatureFast(int32,
                                                                             int32)
    IL_0077:  stloc.s    V_10
    IL_0079:  ldarg.0
    IL_007a:  ldloc.s    V_8
    IL_007c:  conv.r4
    IL_007d:  ldloc.s    V_9
    IL_007f:  conv.r4
    IL_0080:  call       instance float32 Game.TerrainContentsGenerator::CalculateOceanShoreDistance(float32,
                                                                                                     float32)
    IL_0085:  ldc.r4     10.
    IL_008a:  bgt        IL_026d

    IL_008f:  ldc.i4.0
    IL_0090:  stloc.s    V_11
    IL_0092:  ldloc.s    V_5
    IL_0094:  ldc.i4.2
    IL_0095:  sub
    IL_0096:  stloc.s    V_12
    IL_0098:  br         IL_0264

    IL_009d:  ldloc.0
    IL_009e:  ldloc.s    V_8
    IL_00a0:  ldloc.s    V_12
    IL_00a2:  ldloc.s    V_9
    IL_00a4:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32,
                                                                           int32,
                                                                           int32)
    IL_00a9:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_00ae:  ldc.i4.s   18
    IL_00b0:  bne.un     IL_025b

    IL_00b5:  ldloc.s    V_11
    IL_00b7:  ldc.i4.1
    IL_00b8:  add
    IL_00b9:  stloc.s    V_11
    IL_00bb:  ldloc.1
    IL_00bc:  ldc.i4.0
    IL_00bd:  ldc.i4.5
    IL_00be:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_00c3:  stloc.s    V_13
    IL_00c5:  ldloc.s    V_13
    IL_00c7:  call       valuetype [Engine]Engine.Point3 Game.CellFace::FaceToPoint3(int32)
    IL_00cc:  stloc.s    V_14
    IL_00ce:  ldloc.s    V_8
    IL_00d0:  ldloc.s    V_14
    IL_00d2:  ldfld      int32 [Engine]Engine.Point3::X
    IL_00d7:  add
    IL_00d8:  ldloc.2
    IL_00d9:  blt        IL_025e

    IL_00de:  ldloc.s    V_8
    IL_00e0:  ldloc.s    V_14
    IL_00e2:  ldfld      int32 [Engine]Engine.Point3::X
    IL_00e7:  add
    IL_00e8:  ldloc.3
    IL_00e9:  bge        IL_025e

    IL_00ee:  ldloc.s    V_12
    IL_00f0:  ldloc.s    V_14
    IL_00f2:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_00f7:  add
    IL_00f8:  ldloc.s    V_4
    IL_00fa:  blt        IL_025e

    IL_00ff:  ldloc.s    V_12
    IL_0101:  ldloc.s    V_14
    IL_0103:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0108:  add
    IL_0109:  ldloc.s    V_5
    IL_010b:  bge        IL_025e

    IL_0110:  ldloc.s    V_9
    IL_0112:  ldloc.s    V_14
    IL_0114:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0119:  add
    IL_011a:  ldloc.s    V_6
    IL_011c:  blt        IL_025e

    IL_0121:  ldloc.s    V_9
    IL_0123:  ldloc.s    V_14
    IL_0125:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_012a:  add
    IL_012b:  ldloc.s    V_7
    IL_012d:  bge        IL_025e

    IL_0132:  ldloc.0
    IL_0133:  ldloc.s    V_8
    IL_0135:  ldloc.s    V_14
    IL_0137:  ldfld      int32 [Engine]Engine.Point3::X
    IL_013c:  add
    IL_013d:  ldloc.s    V_12
    IL_013f:  ldloc.s    V_14
    IL_0141:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0146:  add
    IL_0147:  ldloc.s    V_9
    IL_0149:  ldloc.s    V_14
    IL_014b:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0150:  add
    IL_0151:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32,
                                                                           int32,
                                                                           int32)
    IL_0156:  ldloc.s    V_13
    IL_0158:  call       int32 Game.CellFace::OppositeFace(int32)
    IL_015d:  call       bool Game.SubsystemBottomSuckerBlockBehavior::IsSupport(int32,
                                                                                 int32)
    IL_0162:  brfalse    IL_025e

    IL_0167:  ldc.i4.0
    IL_0168:  stloc.s    V_15
    IL_016a:  ldc.r4     0.69999999
    IL_016f:  stloc.s    V_16
    IL_0171:  ldc.r4     0.30000001
    IL_0176:  stloc.s    V_17
    IL_0178:  ldloc.s    V_10
    IL_017a:  ldc.i4.8
    IL_017b:  bge.s      IL_018b

    IL_017d:  ldc.r4     0.89999998
    IL_0182:  stloc.s    V_16
    IL_0184:  ldc.r4     0.1
    IL_0189:  stloc.s    V_17
    IL_018b:  ldloc.s    V_11
    IL_018d:  ldc.i4.6
    IL_018e:  ble.s      IL_019a

    IL_0190:  ldloc.s    V_16
    IL_0192:  ldc.r4     0.5
    IL_0197:  mul
    IL_0198:  stloc.s    V_16
    IL_019a:  ldloc.s    V_11
    IL_019c:  ldc.i4.s   12
    IL_019e:  ble.s      IL_01aa

    IL_01a0:  ldloc.s    V_17
    IL_01a2:  ldc.r4     0.5
    IL_01a7:  mul
    IL_01a8:  stloc.s    V_17
    IL_01aa:  ldloc.s    V_11
    IL_01ac:  ldc.i4.4
    IL_01ad:  bge.s      IL_01b9

    IL_01af:  ldloc.s    V_17
    IL_01b1:  ldc.r4     0.5
    IL_01b6:  mul
    IL_01b7:  stloc.s    V_17
    IL_01b9:  ldloc.s    V_12
    IL_01bb:  ldc.i4.s   40
    IL_01bd:  bge.s      IL_01d3

    IL_01bf:  ldloc.s    V_16
    IL_01c1:  ldc.r4     0.2
    IL_01c6:  mul
    IL_01c7:  stloc.s    V_16
    IL_01c9:  ldloc.s    V_17
    IL_01cb:  ldc.r4     0.2
    IL_01d0:  mul
    IL_01d1:  stloc.s    V_17
    IL_01d3:  ldloc.1
    IL_01d4:  ldc.r4     0.0
    IL_01d9:  ldc.r4     1.
    IL_01de:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_01e3:  stloc.s    V_18
    IL_01e5:  ldloc.s    V_18
    IL_01e7:  ldloc.s    V_16
    IL_01e9:  sub
    IL_01ea:  stloc.s    V_18
    IL_01ec:  ldloc.s    V_15
    IL_01ee:  brtrue.s   IL_0200

    IL_01f0:  ldloc.s    V_18
    IL_01f2:  ldc.r4     0.0
    IL_01f7:  bge.un.s   IL_0200

    IL_01f9:  ldc.i4     0xe2
    IL_01fe:  stloc.s    V_15
    IL_0200:  ldloc.s    V_18
    IL_0202:  ldloc.s    V_17
    IL_0204:  sub
    IL_0205:  stloc.s    V_18
    IL_0207:  ldloc.s    V_15
    IL_0209:  brtrue.s   IL_021b

    IL_020b:  ldloc.s    V_18
    IL_020d:  ldc.r4     0.0
    IL_0212:  bge.un.s   IL_021b

    IL_0214:  ldc.i4     0xe5
    IL_0219:  stloc.s    V_15
    IL_021b:  ldloc.s    V_15
    IL_021d:  brfalse.s  IL_025e

    IL_021f:  ldloc.1
    IL_0220:  ldc.i4.0
    IL_0221:  ldc.i4.3
    IL_0222:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0227:  stloc.s    V_19
    IL_0229:  ldc.i4.0
    IL_022a:  ldloc.s    V_19
    IL_022c:  call       int32 Game.BottomSuckerBlock::SetSubvariant(int32,
                                                                     int32)
    IL_0231:  ldloc.s    V_13
    IL_0233:  call       int32 Game.CellFace::OppositeFace(int32)
    IL_0238:  call       int32 Game.BottomSuckerBlock::SetFace(int32,
                                                               int32)
    IL_023d:  stloc.s    V_20
    IL_023f:  ldloc.s    V_15
    IL_0241:  ldc.i4.0
    IL_0242:  ldloc.s    V_20
    IL_0244:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_0249:  stloc.s    V_21
    IL_024b:  ldloc.0
    IL_024c:  ldloc.s    V_8
    IL_024e:  ldloc.s    V_12
    IL_0250:  ldloc.s    V_9
    IL_0252:  ldloc.s    V_21
    IL_0254:  callvirt   instance void Game.TerrainData::SetCellValueFast(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_0259:  br.s       IL_025e

    IL_025b:  ldc.i4.0
    IL_025c:  stloc.s    V_11
    IL_025e:  ldloc.s    V_12
    IL_0260:  ldc.i4.1
    IL_0261:  sub
    IL_0262:  stloc.s    V_12
    IL_0264:  ldloc.s    V_12
    IL_0266:  ldloc.s    V_4
    IL_0268:  bge        IL_009d

    IL_026d:  ldloc.s    V_9
    IL_026f:  ldc.i4.1
    IL_0270:  add
    IL_0271:  stloc.s    V_9
    IL_0273:  ldloc.s    V_9
    IL_0275:  ldloc.s    V_7
    IL_0277:  blt        IL_005d

    IL_027c:  ldloc.s    V_8
    IL_027e:  ldc.i4.1
    IL_027f:  add
    IL_0280:  stloc.s    V_8
    IL_0282:  ldloc.s    V_8
    IL_0284:  ldloc.3
    IL_0285:  blt        IL_0054

    IL_028a:  ret
  } // end of method TerrainContentsGenerator::GenerateBottomSuckers

  .method private hidebysig instance void 
          GenerateCacti(int32 chunkX,
                        int32 chunkZ) cil managed
  {
    // 代码大小       497 (0x1f1)
    .maxstack  5
    .locals init (class Game.Random V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7,
             int32 V_8,
             int32 V_9,
             int32 V_10,
             int32 V_11,
             int32 V_12,
             int32 V_13,
             int32 V_14,
             int32 V_15,
             int32 V_16,
             int32 V_17)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.TerrainContentsGenerator::TGExtras
    IL_0006:  brtrue.s   IL_0009

    IL_0008:  ret

    IL_0009:  ldarg.0
    IL_000a:  ldfld      int32 Game.TerrainContentsGenerator::m_seed
    IL_000f:  ldarg.1
    IL_0010:  add
    IL_0011:  ldc.i4     0x7c7
    IL_0016:  ldarg.2
    IL_0017:  mul
    IL_0018:  add
    IL_0019:  newobj     instance void Game.Random::.ctor(int32)
    IL_001e:  stloc.0
    IL_001f:  ldarg.1
    IL_0020:  ldc.i4.s   16
    IL_0022:  mul
    IL_0023:  stloc.1
    IL_0024:  ldloc.1
    IL_0025:  ldc.i4.s   16
    IL_0027:  add
    IL_0028:  stloc.2
    IL_0029:  ldc.i4.0
    IL_002a:  stloc.3
    IL_002b:  ldc.i4     0x80
    IL_0030:  stloc.s    V_4
    IL_0032:  ldarg.2
    IL_0033:  ldc.i4.s   16
    IL_0035:  mul
    IL_0036:  stloc.s    V_5
    IL_0038:  ldloc.s    V_5
    IL_003a:  ldc.i4.s   16
    IL_003c:  add
    IL_003d:  stloc.s    V_6
    IL_003f:  ldloc.0
    IL_0040:  ldc.r4     0.0
    IL_0045:  ldc.r4     1.
    IL_004a:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_004f:  ldc.r4     0.5
    IL_0054:  bge.un     IL_01f0

    IL_0059:  ldloc.0
    IL_005a:  ldc.i4.0
    IL_005b:  ldc.i4.1
    IL_005c:  ldc.i4.1
    IL_005d:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_0062:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0067:  stloc.s    V_7
    IL_0069:  ldc.i4.0
    IL_006a:  stloc.s    V_8
    IL_006c:  br         IL_01e7

    IL_0071:  ldloc.0
    IL_0072:  ldloc.1
    IL_0073:  ldc.i4.3
    IL_0074:  add
    IL_0075:  ldloc.2
    IL_0076:  ldc.i4.4
    IL_0077:  sub
    IL_0078:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_007d:  stloc.s    V_9
    IL_007f:  ldloc.0
    IL_0080:  ldloc.s    V_5
    IL_0082:  ldc.i4.3
    IL_0083:  add
    IL_0084:  ldloc.s    V_6
    IL_0086:  ldc.i4.4
    IL_0087:  sub
    IL_0088:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_008d:  stloc.s    V_10
    IL_008f:  ldarg.0
    IL_0090:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_0095:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_009a:  ldloc.s    V_9
    IL_009c:  ldloc.s    V_10
    IL_009e:  callvirt   instance int32 Game.TerrainData::GetHumidityFast(int32,
                                                                          int32)
    IL_00a3:  ldarg.0
    IL_00a4:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_00a9:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_00ae:  ldloc.s    V_9
    IL_00b0:  ldloc.s    V_10
    IL_00b2:  callvirt   instance int32 Game.TerrainData::GetTemperatureFast(int32,
                                                                             int32)
    IL_00b7:  stloc.s    V_11
    IL_00b9:  ldc.i4.6
    IL_00ba:  bge        IL_01e1

    IL_00bf:  ldloc.s    V_11
    IL_00c1:  ldc.i4.8
    IL_00c2:  ble        IL_01e1

    IL_00c7:  ldc.i4.0
    IL_00c8:  stloc.s    V_12
    IL_00ca:  br         IL_01d9

    IL_00cf:  ldloc.s    V_9
    IL_00d1:  ldloc.0
    IL_00d2:  ldc.i4.s   -2
    IL_00d4:  ldc.i4.2
    IL_00d5:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_00da:  add
    IL_00db:  stloc.s    V_13
    IL_00dd:  ldloc.s    V_10
    IL_00df:  ldloc.0
    IL_00e0:  ldc.i4.s   -2
    IL_00e2:  ldc.i4.2
    IL_00e3:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_00e8:  add
    IL_00e9:  stloc.s    V_14
    IL_00eb:  ldloc.s    V_4
    IL_00ed:  ldc.i4.5
    IL_00ee:  sub
    IL_00ef:  stloc.s    V_15
    IL_00f1:  br         IL_01cb

    IL_00f6:  ldarg.0
    IL_00f7:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_00fc:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0101:  ldloc.s    V_13
    IL_0103:  ldloc.s    V_15
    IL_0105:  ldloc.s    V_14
    IL_0107:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32,
                                                                           int32,
                                                                           int32)
    IL_010c:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0111:  stloc.s    V_16
    IL_0113:  ldloc.s    V_16
    IL_0115:  ldc.i4.7
    IL_0116:  bne.un     IL_01c1

    IL_011b:  ldloc.s    V_15
    IL_011d:  ldc.i4.1
    IL_011e:  add
    IL_011f:  stloc.s    V_17
    IL_0121:  br         IL_01b4

    IL_0126:  ldarg.0
    IL_0127:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_012c:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0131:  ldloc.s    V_13
    IL_0133:  ldc.i4.1
    IL_0134:  add
    IL_0135:  ldloc.s    V_17
    IL_0137:  ldloc.s    V_14
    IL_0139:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                          int32,
                                                                          int32)
    IL_013e:  brtrue     IL_01d3

    IL_0143:  ldarg.0
    IL_0144:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_0149:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_014e:  ldloc.s    V_13
    IL_0150:  ldc.i4.1
    IL_0151:  sub
    IL_0152:  ldloc.s    V_17
    IL_0154:  ldloc.s    V_14
    IL_0156:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                          int32,
                                                                          int32)
    IL_015b:  brtrue.s   IL_01d3

    IL_015d:  ldarg.0
    IL_015e:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_0163:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0168:  ldloc.s    V_13
    IL_016a:  ldloc.s    V_17
    IL_016c:  ldloc.s    V_14
    IL_016e:  ldc.i4.1
    IL_016f:  add
    IL_0170:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                          int32,
                                                                          int32)
    IL_0175:  brtrue.s   IL_01d3

    IL_0177:  ldarg.0
    IL_0178:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_017d:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0182:  ldloc.s    V_13
    IL_0184:  ldloc.s    V_17
    IL_0186:  ldloc.s    V_14
    IL_0188:  ldc.i4.1
    IL_0189:  sub
    IL_018a:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                          int32,
                                                                          int32)
    IL_018f:  brtrue.s   IL_01d3

    IL_0191:  ldarg.0
    IL_0192:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_0197:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_019c:  ldloc.s    V_13
    IL_019e:  ldloc.s    V_17
    IL_01a0:  ldloc.s    V_14
    IL_01a2:  ldc.i4.s   127
    IL_01a4:  call       int32 Game.TerrainData::MakeBlockValue(int32)
    IL_01a9:  callvirt   instance void Game.TerrainData::SetCellValueFast(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_01ae:  ldloc.s    V_17
    IL_01b0:  ldc.i4.1
    IL_01b1:  add
    IL_01b2:  stloc.s    V_17
    IL_01b4:  ldloc.s    V_17
    IL_01b6:  ldloc.s    V_15
    IL_01b8:  ldc.i4.3
    IL_01b9:  add
    IL_01ba:  ble        IL_0126

    IL_01bf:  br.s       IL_01d3

    IL_01c1:  ldloc.s    V_16
    IL_01c3:  brtrue.s   IL_01d3

    IL_01c5:  ldloc.s    V_15
    IL_01c7:  ldc.i4.1
    IL_01c8:  sub
    IL_01c9:  stloc.s    V_15
    IL_01cb:  ldloc.s    V_15
    IL_01cd:  ldloc.3
    IL_01ce:  bge        IL_00f6

    IL_01d3:  ldloc.s    V_12
    IL_01d5:  ldc.i4.1
    IL_01d6:  add
    IL_01d7:  stloc.s    V_12
    IL_01d9:  ldloc.s    V_12
    IL_01db:  ldc.i4.8
    IL_01dc:  blt        IL_00cf

    IL_01e1:  ldloc.s    V_8
    IL_01e3:  ldc.i4.1
    IL_01e4:  add
    IL_01e5:  stloc.s    V_8
    IL_01e7:  ldloc.s    V_8
    IL_01e9:  ldloc.s    V_7
    IL_01eb:  blt        IL_0071

    IL_01f0:  ret
  } // end of method TerrainContentsGenerator::GenerateCacti

  .method private hidebysig instance void 
          GeneratePumpkins(int32 chunkX,
                           int32 chunkZ) cil managed
  {
    // 代码大小       354 (0x162)
    .maxstack  5
    .locals init (class Game.Random V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7,
             int32 V_8,
             int32 V_9,
             int32 V_10,
             int32 V_11,
             int32 V_12,
             int32 V_13,
             int32 V_14,
             int32 V_15,
             int32 V_16)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.TerrainContentsGenerator::TGExtras
    IL_0006:  brtrue.s   IL_0009

    IL_0008:  ret

    IL_0009:  ldarg.0
    IL_000a:  ldfld      int32 Game.TerrainContentsGenerator::m_seed
    IL_000f:  ldarg.1
    IL_0010:  add
    IL_0011:  ldc.i4     0x5d7
    IL_0016:  ldarg.2
    IL_0017:  mul
    IL_0018:  add
    IL_0019:  newobj     instance void Game.Random::.ctor(int32)
    IL_001e:  stloc.0
    IL_001f:  ldarg.1
    IL_0020:  ldc.i4.s   16
    IL_0022:  mul
    IL_0023:  stloc.1
    IL_0024:  ldloc.1
    IL_0025:  ldc.i4.s   16
    IL_0027:  add
    IL_0028:  stloc.2
    IL_0029:  ldc.i4.0
    IL_002a:  stloc.3
    IL_002b:  ldc.i4     0x80
    IL_0030:  stloc.s    V_4
    IL_0032:  ldarg.2
    IL_0033:  ldc.i4.s   16
    IL_0035:  mul
    IL_0036:  stloc.s    V_5
    IL_0038:  ldloc.s    V_5
    IL_003a:  ldc.i4.s   16
    IL_003c:  add
    IL_003d:  stloc.s    V_6
    IL_003f:  ldloc.0
    IL_0040:  ldc.r4     0.0
    IL_0045:  ldc.r4     1.
    IL_004a:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_004f:  ldc.r4     0.2
    IL_0054:  bge.un     IL_0161

    IL_0059:  ldloc.0
    IL_005a:  ldc.i4.0
    IL_005b:  ldc.i4.1
    IL_005c:  ldc.i4.1
    IL_005d:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_0062:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0067:  stloc.s    V_7
    IL_0069:  ldc.i4.0
    IL_006a:  stloc.s    V_8
    IL_006c:  br         IL_0158

    IL_0071:  ldloc.0
    IL_0072:  ldloc.1
    IL_0073:  ldc.i4.1
    IL_0074:  add
    IL_0075:  ldloc.2
    IL_0076:  ldc.i4.2
    IL_0077:  sub
    IL_0078:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_007d:  stloc.s    V_9
    IL_007f:  ldloc.0
    IL_0080:  ldloc.s    V_5
    IL_0082:  ldc.i4.1
    IL_0083:  add
    IL_0084:  ldloc.s    V_6
    IL_0086:  ldc.i4.2
    IL_0087:  sub
    IL_0088:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_008d:  stloc.s    V_10
    IL_008f:  ldarg.0
    IL_0090:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_0095:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_009a:  ldloc.s    V_9
    IL_009c:  ldloc.s    V_10
    IL_009e:  callvirt   instance int32 Game.TerrainData::GetHumidityFast(int32,
                                                                          int32)
    IL_00a3:  ldarg.0
    IL_00a4:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_00a9:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_00ae:  ldloc.s    V_9
    IL_00b0:  ldloc.s    V_10
    IL_00b2:  callvirt   instance int32 Game.TerrainData::GetTemperatureFast(int32,
                                                                             int32)
    IL_00b7:  stloc.s    V_11
    IL_00b9:  ldc.i4.s   10
    IL_00bb:  blt        IL_0152

    IL_00c0:  ldloc.s    V_11
    IL_00c2:  ldc.i4.6
    IL_00c3:  ble        IL_0152

    IL_00c8:  ldc.i4.0
    IL_00c9:  stloc.s    V_12
    IL_00cb:  br.s       IL_014a

    IL_00cd:  ldloc.s    V_9
    IL_00cf:  ldloc.0
    IL_00d0:  ldc.i4.m1
    IL_00d1:  ldc.i4.1
    IL_00d2:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_00d7:  add
    IL_00d8:  stloc.s    V_13
    IL_00da:  ldloc.s    V_10
    IL_00dc:  ldloc.0
    IL_00dd:  ldc.i4.m1
    IL_00de:  ldc.i4.1
    IL_00df:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_00e4:  add
    IL_00e5:  stloc.s    V_14
    IL_00e7:  ldloc.s    V_4
    IL_00e9:  ldc.i4.2
    IL_00ea:  sub
    IL_00eb:  stloc.s    V_15
    IL_00ed:  br.s       IL_013f

    IL_00ef:  ldarg.0
    IL_00f0:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_00f5:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_00fa:  ldloc.s    V_13
    IL_00fc:  ldloc.s    V_15
    IL_00fe:  ldloc.s    V_14
    IL_0100:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32,
                                                                           int32,
                                                                           int32)
    IL_0105:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_010a:  stloc.s    V_16
    IL_010c:  ldloc.s    V_16
    IL_010e:  ldc.i4.8
    IL_010f:  bne.un.s   IL_0135

    IL_0111:  ldarg.0
    IL_0112:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_0117:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_011c:  ldloc.s    V_13
    IL_011e:  ldloc.s    V_15
    IL_0120:  ldc.i4.1
    IL_0121:  add
    IL_0122:  ldloc.s    V_14
    IL_0124:  ldc.i4     0x83
    IL_0129:  call       int32 Game.TerrainData::MakeBlockValue(int32)
    IL_012e:  callvirt   instance void Game.TerrainData::SetCellValueFast(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_0133:  br.s       IL_0144

    IL_0135:  ldloc.s    V_16
    IL_0137:  brtrue.s   IL_0144

    IL_0139:  ldloc.s    V_15
    IL_013b:  ldc.i4.1
    IL_013c:  sub
    IL_013d:  stloc.s    V_15
    IL_013f:  ldloc.s    V_15
    IL_0141:  ldloc.3
    IL_0142:  bge.s      IL_00ef

    IL_0144:  ldloc.s    V_12
    IL_0146:  ldc.i4.1
    IL_0147:  add
    IL_0148:  stloc.s    V_12
    IL_014a:  ldloc.s    V_12
    IL_014c:  ldc.i4.5
    IL_014d:  blt        IL_00cd

    IL_0152:  ldloc.s    V_8
    IL_0154:  ldc.i4.1
    IL_0155:  add
    IL_0156:  stloc.s    V_8
    IL_0158:  ldloc.s    V_8
    IL_015a:  ldloc.s    V_7
    IL_015c:  blt        IL_0071

    IL_0161:  ret
  } // end of method TerrainContentsGenerator::GeneratePumpkins

  .method private hidebysig instance void 
          GenerateKelp(int32 chunkX,
                       int32 chunkZ) cil managed
  {
    // 代码大小       577 (0x241)
    .maxstack  5
    .locals init (class Game.Random V_0,
             float32 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7,
             int32 V_8,
             int32 V_9,
             int32 V_10,
             int32 V_11,
             int32 V_12,
             int32 V_13,
             int32 V_14,
             int32 V_15,
             int32 V_16,
             bool V_17,
             int32 V_18,
             int32 V_19,
             int32 V_20,
             int32 V_21,
             int32 V_22,
             int32 V_23,
             class Game.Block V_24,
             int32 V_25,
             int32 V_26)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.TerrainContentsGenerator::TGExtras
    IL_0006:  brtrue.s   IL_0009

    IL_0008:  ret

    IL_0009:  ldc.i4.0
    IL_000a:  newobj     instance void Game.Random::.ctor(int32)
    IL_000f:  stloc.0
    IL_0010:  ldc.r4     0.0
    IL_0015:  stloc.1
    IL_0016:  ldc.i4.0
    IL_0017:  stloc.s    V_9
    IL_0019:  br.s       IL_0077

    IL_001b:  ldloc.s    V_9
    IL_001d:  ldc.i4.3
    IL_001e:  rem
    IL_001f:  ldc.i4.1
    IL_0020:  sub
    IL_0021:  stloc.s    V_10
    IL_0023:  ldloc.s    V_9
    IL_0025:  ldc.i4.3
    IL_0026:  div
    IL_0027:  ldc.i4.1
    IL_0028:  sub
    IL_0029:  stloc.s    V_11
    IL_002b:  ldloc.0
    IL_002c:  ldarg.0
    IL_002d:  ldfld      int32 Game.TerrainContentsGenerator::m_seed
    IL_0032:  ldarg.1
    IL_0033:  ldloc.s    V_10
    IL_0035:  add
    IL_0036:  add
    IL_0037:  ldc.i4     0x352
    IL_003c:  ldarg.2
    IL_003d:  ldloc.s    V_11
    IL_003f:  add
    IL_0040:  mul
    IL_0041:  add
    IL_0042:  callvirt   instance void Game.Random::Reset(int32)
    IL_0047:  ldloc.0
    IL_0048:  ldc.r4     0.2
    IL_004d:  callvirt   instance bool Game.Random::Bool(float32)
    IL_0052:  brfalse.s  IL_0071

    IL_0054:  ldloc.1
    IL_0055:  ldc.r4     2.5e-002
    IL_005a:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_005f:  stloc.1
    IL_0060:  ldloc.s    V_9
    IL_0062:  ldc.i4.4
    IL_0063:  bne.un.s   IL_0071

    IL_0065:  ldloc.1
    IL_0066:  ldc.r4     0.1
    IL_006b:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_0070:  stloc.1
    IL_0071:  ldloc.s    V_9
    IL_0073:  ldc.i4.1
    IL_0074:  add
    IL_0075:  stloc.s    V_9
    IL_0077:  ldloc.s    V_9
    IL_0079:  ldc.i4.s   9
    IL_007b:  blt.s      IL_001b

    IL_007d:  ldloc.1
    IL_007e:  ldc.r4     0.0
    IL_0083:  bne.un.s   IL_0086

    IL_0085:  ret

    IL_0086:  ldloc.0
    IL_0087:  ldarg.0
    IL_0088:  ldfld      int32 Game.TerrainContentsGenerator::m_seed
    IL_008d:  ldarg.1
    IL_008e:  add
    IL_008f:  ldc.i4     0x352
    IL_0094:  ldarg.2
    IL_0095:  mul
    IL_0096:  add
    IL_0097:  callvirt   instance void Game.Random::Reset(int32)
    IL_009c:  ldarg.1
    IL_009d:  ldc.i4.s   16
    IL_009f:  mul
    IL_00a0:  stloc.2
    IL_00a1:  ldloc.2
    IL_00a2:  ldc.i4.s   16
    IL_00a4:  add
    IL_00a5:  stloc.3
    IL_00a6:  ldc.i4.0
    IL_00a7:  stloc.s    V_4
    IL_00a9:  ldc.i4     0x80
    IL_00ae:  stloc.s    V_5
    IL_00b0:  ldarg.2
    IL_00b1:  ldc.i4.s   16
    IL_00b3:  mul
    IL_00b4:  stloc.s    V_6
    IL_00b6:  ldloc.s    V_6
    IL_00b8:  ldc.i4.s   16
    IL_00ba:  add
    IL_00bb:  stloc.s    V_7
    IL_00bd:  ldloc.0
    IL_00be:  ldc.i4.0
    IL_00bf:  ldc.r4     256.
    IL_00c4:  ldloc.1
    IL_00c5:  mul
    IL_00c6:  conv.i4
    IL_00c7:  ldc.i4.1
    IL_00c8:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_00cd:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_00d2:  stloc.s    V_8
    IL_00d4:  ldc.i4.0
    IL_00d5:  stloc.s    V_12
    IL_00d7:  br         IL_0237

    IL_00dc:  ldloc.0
    IL_00dd:  ldloc.2
    IL_00de:  ldc.i4.2
    IL_00df:  add
    IL_00e0:  ldloc.3
    IL_00e1:  ldc.i4.3
    IL_00e2:  sub
    IL_00e3:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_00e8:  stloc.s    V_13
    IL_00ea:  ldloc.0
    IL_00eb:  ldloc.s    V_6
    IL_00ed:  ldc.i4.2
    IL_00ee:  add
    IL_00ef:  ldloc.s    V_7
    IL_00f1:  ldc.i4.3
    IL_00f2:  sub
    IL_00f3:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_00f8:  stloc.s    V_14
    IL_00fa:  ldloc.0
    IL_00fb:  ldc.i4.s   10
    IL_00fd:  ldc.i4.s   26
    IL_00ff:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0104:  stloc.s    V_15
    IL_0106:  ldc.i4.6
    IL_0107:  stloc.s    V_16
    IL_0109:  ldc.i4.1
    IL_010a:  stloc.s    V_17
    IL_010c:  ldarg.0
    IL_010d:  ldloc.s    V_13
    IL_010f:  conv.r4
    IL_0110:  ldloc.s    V_14
    IL_0112:  conv.r4
    IL_0113:  call       instance float32 Game.TerrainContentsGenerator::CalculateOceanShoreDistance(float32,
                                                                                                     float32)
    IL_0118:  ldc.r4     5.
    IL_011d:  ble.un.s   IL_0125

    IL_011f:  ldc.i4.4
    IL_0120:  stloc.s    V_16
    IL_0122:  ldc.i4.0
    IL_0123:  stloc.s    V_17
    IL_0125:  ldloc.s    V_15
    IL_0127:  ldc.i4.0
    IL_0128:  ble        IL_0231

    IL_012d:  ldc.i4.0
    IL_012e:  stloc.s    V_18
    IL_0130:  br         IL_0228

    IL_0135:  ldloc.s    V_13
    IL_0137:  ldloc.0
    IL_0138:  ldc.i4.s   -2
    IL_013a:  ldc.i4.2
    IL_013b:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0140:  add
    IL_0141:  stloc.s    V_19
    IL_0143:  ldloc.s    V_14
    IL_0145:  ldloc.0
    IL_0146:  ldc.i4.s   -2
    IL_0148:  ldc.i4.2
    IL_0149:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_014e:  add
    IL_014f:  stloc.s    V_20
    IL_0151:  ldc.i4.0
    IL_0152:  stloc.s    V_21
    IL_0154:  ldloc.s    V_5
    IL_0156:  ldc.i4.2
    IL_0157:  sub
    IL_0158:  stloc.s    V_22
    IL_015a:  br         IL_0219

    IL_015f:  ldarg.0
    IL_0160:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_0165:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_016a:  ldloc.s    V_19
    IL_016c:  ldloc.s    V_22
    IL_016e:  ldloc.s    V_20
    IL_0170:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32,
                                                                           int32,
                                                                           int32)
    IL_0175:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_017a:  stloc.s    V_23
    IL_017c:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0181:  ldloc.s    V_23
    IL_0183:  ldelem.ref
    IL_0184:  stloc.s    V_24
    IL_0186:  ldloc.s    V_23
    IL_0188:  brfalse    IL_0213

    IL_018d:  ldloc.s    V_24
    IL_018f:  isinst     Game.WaterBlock
    IL_0194:  brfalse.s  IL_01a4

    IL_0196:  ldloc.s    V_21
    IL_0198:  ldc.i4.1
    IL_0199:  add
    IL_019a:  stloc.s    V_21
    IL_019c:  ldloc.s    V_21
    IL_019e:  ldloc.s    V_16
    IL_01a0:  ble.s      IL_0213

    IL_01a2:  br.s       IL_0222

    IL_01a4:  ldloc.s    V_23
    IL_01a6:  ldc.i4.2
    IL_01a7:  beq.s      IL_01b4

    IL_01a9:  ldloc.s    V_23
    IL_01ab:  ldc.i4.7
    IL_01ac:  beq.s      IL_01b4

    IL_01ae:  ldloc.s    V_23
    IL_01b0:  ldc.i4.s   72
    IL_01b2:  bne.un.s   IL_0222

    IL_01b4:  ldloc.s    V_21
    IL_01b6:  ldc.i4.2
    IL_01b7:  blt.s      IL_0222

    IL_01b9:  ldloc.s    V_17
    IL_01bb:  brtrue.s   IL_01cb

    IL_01bd:  ldloc.0
    IL_01be:  ldloc.s    V_21
    IL_01c0:  ldc.i4.1
    IL_01c1:  sub
    IL_01c2:  ldloc.s    V_21
    IL_01c4:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_01c9:  br.s       IL_01d9

    IL_01cb:  ldloc.0
    IL_01cc:  ldloc.s    V_21
    IL_01ce:  ldc.i4.2
    IL_01cf:  sub
    IL_01d0:  ldloc.s    V_21
    IL_01d2:  ldc.i4.1
    IL_01d3:  sub
    IL_01d4:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_01d9:  stloc.s    V_25
    IL_01db:  ldc.i4.0
    IL_01dc:  stloc.s    V_26
    IL_01de:  br.s       IL_020b

    IL_01e0:  ldarg.0
    IL_01e1:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_01e6:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_01eb:  ldloc.s    V_19
    IL_01ed:  ldloc.s    V_22
    IL_01ef:  ldc.i4.1
    IL_01f0:  add
    IL_01f1:  ldloc.s    V_26
    IL_01f3:  add
    IL_01f4:  ldloc.s    V_20
    IL_01f6:  ldc.i4     0xe8
    IL_01fb:  call       int32 Game.TerrainData::MakeBlockValue(int32)
    IL_0200:  callvirt   instance void Game.TerrainData::SetCellValueFast(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_0205:  ldloc.s    V_26
    IL_0207:  ldc.i4.1
    IL_0208:  add
    IL_0209:  stloc.s    V_26
    IL_020b:  ldloc.s    V_26
    IL_020d:  ldloc.s    V_25
    IL_020f:  blt.s      IL_01e0

    IL_0211:  br.s       IL_0222

    IL_0213:  ldloc.s    V_22
    IL_0215:  ldc.i4.1
    IL_0216:  sub
    IL_0217:  stloc.s    V_22
    IL_0219:  ldloc.s    V_22
    IL_021b:  ldloc.s    V_4
    IL_021d:  bge        IL_015f

    IL_0222:  ldloc.s    V_18
    IL_0224:  ldc.i4.1
    IL_0225:  add
    IL_0226:  stloc.s    V_18
    IL_0228:  ldloc.s    V_18
    IL_022a:  ldloc.s    V_15
    IL_022c:  blt        IL_0135

    IL_0231:  ldloc.s    V_12
    IL_0233:  ldc.i4.1
    IL_0234:  add
    IL_0235:  stloc.s    V_12
    IL_0237:  ldloc.s    V_12
    IL_0239:  ldloc.s    V_8
    IL_023b:  blt        IL_00dc

    IL_0240:  ret
  } // end of method TerrainContentsGenerator::GenerateKelp

  .method private hidebysig instance void 
          GenerateSeagrass(int32 chunkX,
                           int32 chunkZ) cil managed
  {
    // 代码大小       419 (0x1a3)
    .maxstack  5
    .locals init (class Game.Random V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7,
             int32 V_8,
             int32 V_9,
             bool V_10,
             int32 V_11,
             int32 V_12,
             int32 V_13,
             int32 V_14,
             int32 V_15,
             int32 V_16,
             int32 V_17,
             int32 V_18,
             int32 V_19)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.TerrainContentsGenerator::TGExtras
    IL_0006:  brtrue.s   IL_0009

    IL_0008:  ret

    IL_0009:  ldarg.0
    IL_000a:  ldfld      int32 Game.TerrainContentsGenerator::m_seed
    IL_000f:  ldarg.1
    IL_0010:  add
    IL_0011:  ldc.i4     0x17a
    IL_0016:  ldarg.2
    IL_0017:  mul
    IL_0018:  add
    IL_0019:  newobj     instance void Game.Random::.ctor(int32)
    IL_001e:  stloc.0
    IL_001f:  ldarg.1
    IL_0020:  ldc.i4.s   16
    IL_0022:  mul
    IL_0023:  stloc.1
    IL_0024:  ldloc.1
    IL_0025:  ldc.i4.s   16
    IL_0027:  add
    IL_0028:  stloc.2
    IL_0029:  ldc.i4.0
    IL_002a:  stloc.3
    IL_002b:  ldc.i4     0x80
    IL_0030:  stloc.s    V_4
    IL_0032:  ldarg.2
    IL_0033:  ldc.i4.s   16
    IL_0035:  mul
    IL_0036:  stloc.s    V_5
    IL_0038:  ldloc.s    V_5
    IL_003a:  ldc.i4.s   16
    IL_003c:  add
    IL_003d:  stloc.s    V_6
    IL_003f:  ldc.i4.0
    IL_0040:  stloc.s    V_7
    IL_0042:  br         IL_0199

    IL_0047:  ldloc.0
    IL_0048:  ldloc.1
    IL_0049:  ldc.i4.1
    IL_004a:  add
    IL_004b:  ldloc.2
    IL_004c:  ldc.i4.2
    IL_004d:  sub
    IL_004e:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0053:  stloc.s    V_8
    IL_0055:  ldloc.0
    IL_0056:  ldloc.s    V_5
    IL_0058:  ldc.i4.1
    IL_0059:  add
    IL_005a:  ldloc.s    V_6
    IL_005c:  ldc.i4.2
    IL_005d:  sub
    IL_005e:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0063:  stloc.s    V_9
    IL_0065:  ldarg.0
    IL_0066:  ldloc.s    V_8
    IL_0068:  conv.r4
    IL_0069:  ldloc.s    V_9
    IL_006b:  conv.r4
    IL_006c:  call       instance float32 Game.TerrainContentsGenerator::CalculateOceanShoreDistance(float32,
                                                                                                     float32)
    IL_0071:  ldc.r4     10.
    IL_0076:  clt
    IL_0078:  stloc.s    V_10
    IL_007a:  ldloc.0
    IL_007b:  ldc.i4.1
    IL_007c:  ldc.i4.3
    IL_007d:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0082:  stloc.s    V_11
    IL_0084:  ldc.i4.0
    IL_0085:  stloc.s    V_12
    IL_0087:  br         IL_018a

    IL_008c:  ldloc.s    V_8
    IL_008e:  ldloc.0
    IL_008f:  ldc.i4.m1
    IL_0090:  ldc.i4.1
    IL_0091:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0096:  add
    IL_0097:  stloc.s    V_13
    IL_0099:  ldloc.s    V_9
    IL_009b:  ldloc.0
    IL_009c:  ldc.i4.m1
    IL_009d:  ldc.i4.1
    IL_009e:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_00a3:  add
    IL_00a4:  stloc.s    V_14
    IL_00a6:  ldc.i4.0
    IL_00a7:  stloc.s    V_15
    IL_00a9:  ldloc.s    V_4
    IL_00ab:  ldc.i4.2
    IL_00ac:  sub
    IL_00ad:  stloc.s    V_16
    IL_00af:  br         IL_017c

    IL_00b4:  ldarg.0
    IL_00b5:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_00ba:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_00bf:  ldloc.s    V_13
    IL_00c1:  ldloc.s    V_16
    IL_00c3:  ldloc.s    V_14
    IL_00c5:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32,
                                                                           int32,
                                                                           int32)
    IL_00ca:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_00cf:  stloc.s    V_17
    IL_00d1:  ldloc.s    V_17
    IL_00d3:  brfalse    IL_0176

    IL_00d8:  ldloc.s    V_17
    IL_00da:  ldc.i4.s   18
    IL_00dc:  bne.un.s   IL_00f2

    IL_00de:  ldloc.s    V_15
    IL_00e0:  ldc.i4.1
    IL_00e1:  add
    IL_00e2:  stloc.s    V_15
    IL_00e4:  ldloc.s    V_15
    IL_00e6:  ldc.i4.s   16
    IL_00e8:  ble        IL_0176

    IL_00ed:  br         IL_0184

    IL_00f2:  ldloc.s    V_15
    IL_00f4:  ldc.i4.1
    IL_00f5:  ble        IL_0184

    IL_00fa:  ldloc.s    V_17
    IL_00fc:  ldc.i4.2
    IL_00fd:  beq.s      IL_010f

    IL_00ff:  ldloc.s    V_17
    IL_0101:  ldc.i4.7
    IL_0102:  beq.s      IL_010f

    IL_0104:  ldloc.s    V_17
    IL_0106:  ldc.i4.s   72
    IL_0108:  beq.s      IL_010f

    IL_010a:  ldloc.s    V_17
    IL_010c:  ldc.i4.3
    IL_010d:  bne.un.s   IL_0184

    IL_010f:  ldloc.0
    IL_0110:  ldc.r4     0.1
    IL_0115:  callvirt   instance bool Game.Random::Bool(float32)
    IL_011a:  brtrue.s   IL_011f

    IL_011c:  ldc.i4.1
    IL_011d:  br.s       IL_0120

    IL_011f:  ldc.i4.2
    IL_0120:  stloc.s    V_18
    IL_0122:  ldloc.s    V_10
    IL_0124:  brtrue.s   IL_0131

    IL_0126:  ldloc.s    V_18
    IL_0128:  ldloc.s    V_15
    IL_012a:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_012f:  br.s       IL_013c

    IL_0131:  ldloc.s    V_18
    IL_0133:  ldloc.s    V_15
    IL_0135:  ldc.i4.1
    IL_0136:  sub
    IL_0137:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_013c:  stloc.s    V_18
    IL_013e:  ldc.i4.0
    IL_013f:  stloc.s    V_19
    IL_0141:  br.s       IL_016e

    IL_0143:  ldarg.0
    IL_0144:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_0149:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_014e:  ldloc.s    V_13
    IL_0150:  ldloc.s    V_16
    IL_0152:  ldc.i4.1
    IL_0153:  add
    IL_0154:  ldloc.s    V_19
    IL_0156:  add
    IL_0157:  ldloc.s    V_14
    IL_0159:  ldc.i4     0xe9
    IL_015e:  call       int32 Game.TerrainData::MakeBlockValue(int32)
    IL_0163:  callvirt   instance void Game.TerrainData::SetCellValueFast(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_0168:  ldloc.s    V_19
    IL_016a:  ldc.i4.1
    IL_016b:  add
    IL_016c:  stloc.s    V_19
    IL_016e:  ldloc.s    V_19
    IL_0170:  ldloc.s    V_18
    IL_0172:  blt.s      IL_0143

    IL_0174:  br.s       IL_0184

    IL_0176:  ldloc.s    V_16
    IL_0178:  ldc.i4.1
    IL_0179:  sub
    IL_017a:  stloc.s    V_16
    IL_017c:  ldloc.s    V_16
    IL_017e:  ldloc.3
    IL_017f:  bge        IL_00b4

    IL_0184:  ldloc.s    V_12
    IL_0186:  ldc.i4.1
    IL_0187:  add
    IL_0188:  stloc.s    V_12
    IL_018a:  ldloc.s    V_12
    IL_018c:  ldloc.s    V_11
    IL_018e:  blt        IL_008c

    IL_0193:  ldloc.s    V_7
    IL_0195:  ldc.i4.1
    IL_0196:  add
    IL_0197:  stloc.s    V_7
    IL_0199:  ldloc.s    V_7
    IL_019b:  ldc.i4.s   15
    IL_019d:  blt        IL_0047

    IL_01a2:  ret
  } // end of method TerrainContentsGenerator::GenerateSeagrass

  .method private hidebysig instance void 
          GenerateIvy(int32 chunkX,
                      int32 chunkZ) cil managed
  {
    // 代码大小       660 (0x294)
    .maxstack  5
    .locals init (class Game.TerrainData V_0,
             class Game.Random V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7,
             int32 V_8,
             int32 V_9,
             int32 V_10,
             int32 V_11,
             int32 V_12,
             int32 V_13,
             int32 V_14,
             int32 V_15,
             int32 V_16,
             int32 V_17,
             int32 V_18,
             int32 V_19,
             int32 V_20,
             valuetype [Engine]Engine.Point3 V_21,
             int32 V_22,
             int32 V_23)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.TerrainContentsGenerator::TGExtras
    IL_0006:  brtrue.s   IL_0009

    IL_0008:  ret

    IL_0009:  ldarg.0
    IL_000a:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_000f:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0014:  stloc.0
    IL_0015:  ldarg.0
    IL_0016:  ldfld      int32 Game.TerrainContentsGenerator::m_seed
    IL_001b:  ldarg.1
    IL_001c:  add
    IL_001d:  ldc.i4     0x88f
    IL_0022:  ldarg.2
    IL_0023:  mul
    IL_0024:  add
    IL_0025:  newobj     instance void Game.Random::.ctor(int32)
    IL_002a:  stloc.1
    IL_002b:  ldarg.1
    IL_002c:  ldc.i4.s   16
    IL_002e:  mul
    IL_002f:  stloc.2
    IL_0030:  ldloc.2
    IL_0031:  ldc.i4.s   16
    IL_0033:  add
    IL_0034:  stloc.3
    IL_0035:  ldarg.2
    IL_0036:  ldc.i4.s   16
    IL_0038:  mul
    IL_0039:  stloc.s    V_4
    IL_003b:  ldloc.s    V_4
    IL_003d:  ldc.i4.s   16
    IL_003f:  add
    IL_0040:  stloc.s    V_5
    IL_0042:  ldloc.1
    IL_0043:  ldc.i4.0
    IL_0044:  ldc.i4.s   12
    IL_0046:  ldc.i4.1
    IL_0047:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_004c:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0051:  stloc.s    V_6
    IL_0053:  ldc.i4.0
    IL_0054:  stloc.s    V_7
    IL_0056:  br         IL_028a

    IL_005b:  ldloc.1
    IL_005c:  ldloc.2
    IL_005d:  ldc.i4.4
    IL_005e:  add
    IL_005f:  ldloc.3
    IL_0060:  ldc.i4.5
    IL_0061:  sub
    IL_0062:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0067:  stloc.s    V_8
    IL_0069:  ldloc.1
    IL_006a:  ldloc.s    V_4
    IL_006c:  ldc.i4.4
    IL_006d:  add
    IL_006e:  ldloc.s    V_5
    IL_0070:  ldc.i4.5
    IL_0071:  sub
    IL_0072:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0077:  stloc.s    V_9
    IL_0079:  ldloc.0
    IL_007a:  ldloc.s    V_8
    IL_007c:  ldloc.s    V_9
    IL_007e:  callvirt   instance int32 Game.TerrainData::GetHumidityFast(int32,
                                                                          int32)
    IL_0083:  stloc.s    V_10
    IL_0085:  ldloc.0
    IL_0086:  ldloc.s    V_8
    IL_0088:  ldloc.s    V_9
    IL_008a:  callvirt   instance int32 Game.TerrainData::GetTemperatureFast(int32,
                                                                             int32)
    IL_008f:  stloc.s    V_11
    IL_0091:  ldloc.s    V_10
    IL_0093:  ldc.i4.s   10
    IL_0095:  ble        IL_0284

    IL_009a:  ldloc.s    V_11
    IL_009c:  ldc.i4.s   10
    IL_009e:  ble        IL_0284

    IL_00a3:  ldloc.0
    IL_00a4:  ldloc.s    V_8
    IL_00a6:  ldloc.s    V_9
    IL_00a8:  callvirt   instance int32 Game.TerrainData::CalculateTopmostCellHeight(int32,
                                                                                     int32)
    IL_00ad:  stloc.s    V_12
    IL_00af:  ldc.i4.0
    IL_00b0:  stloc.s    V_13
    IL_00b2:  br         IL_027b

    IL_00b7:  ldloc.s    V_8
    IL_00b9:  ldloc.1
    IL_00ba:  ldc.i4.s   -3
    IL_00bc:  ldc.i4.3
    IL_00bd:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_00c2:  add
    IL_00c3:  stloc.s    V_14
    IL_00c5:  ldloc.s    V_12
    IL_00c7:  ldloc.1
    IL_00c8:  ldc.i4.s   -10
    IL_00ca:  ldc.i4.1
    IL_00cb:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_00d0:  add
    IL_00d1:  ldc.i4.1
    IL_00d2:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_00d7:  stloc.s    V_15
    IL_00d9:  ldloc.s    V_9
    IL_00db:  ldloc.1
    IL_00dc:  ldc.i4.s   -3
    IL_00de:  ldc.i4.3
    IL_00df:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_00e4:  add
    IL_00e5:  stloc.s    V_16
    IL_00e7:  ldloc.0
    IL_00e8:  ldloc.s    V_14
    IL_00ea:  ldloc.s    V_15
    IL_00ec:  ldloc.s    V_16
    IL_00ee:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32,
                                                                           int32,
                                                                           int32)
    IL_00f3:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_00f8:  stloc.s    V_17
    IL_00fa:  ldloc.s    V_17
    IL_00fc:  ldc.i4.3
    IL_00fd:  bgt.s      IL_010e

    IL_00ff:  ldloc.s    V_17
    IL_0101:  ldc.i4.2
    IL_0102:  beq.s      IL_013a

    IL_0104:  ldloc.s    V_17
    IL_0106:  ldc.i4.3
    IL_0107:  beq.s      IL_013a

    IL_0109:  br         IL_0275

    IL_010e:  ldloc.s    V_17
    IL_0110:  ldc.i4.8
    IL_0111:  sub
    IL_0112:  switch     ( 
                          IL_013a,
                          IL_013a,
                          IL_0275,
                          IL_0275,
                          IL_013a)
    IL_012b:  ldloc.s    V_17
    IL_012d:  ldc.i4.s   66
    IL_012f:  beq.s      IL_013a

    IL_0131:  ldloc.s    V_17
    IL_0133:  ldc.i4.s   67
    IL_0135:  bne.un     IL_0275

    IL_013a:  ldloc.1
    IL_013b:  ldc.i4.0
    IL_013c:  ldc.i4.3
    IL_013d:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0142:  stloc.s    V_18
    IL_0144:  ldc.i4.0
    IL_0145:  stloc.s    V_19
    IL_0147:  br         IL_026d

    IL_014c:  ldloc.s    V_19
    IL_014e:  ldloc.s    V_18
    IL_0150:  add
    IL_0151:  ldc.i4.4
    IL_0152:  rem
    IL_0153:  stloc.s    V_20
    IL_0155:  ldloc.s    V_20
    IL_0157:  call       valuetype [Engine]Engine.Point3 Game.CellFace::FaceToPoint3(int32)
    IL_015c:  stloc.s    V_21
    IL_015e:  ldloc.0
    IL_015f:  ldloc.s    V_14
    IL_0161:  ldloc.s    V_21
    IL_0163:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0168:  add
    IL_0169:  ldloc.s    V_15
    IL_016b:  ldloc.s    V_16
    IL_016d:  ldloc.s    V_21
    IL_016f:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0174:  add
    IL_0175:  callvirt   instance int32 Game.TerrainData::GetCellContentsFast(int32,
                                                                              int32,
                                                                              int32)
    IL_017a:  brtrue     IL_0267

    IL_017f:  ldloc.s    V_15
    IL_0181:  ldc.i4.1
    IL_0182:  sub
    IL_0183:  stloc.s    V_22
    IL_0185:  br.s       IL_01b9

    IL_0187:  ldloc.0
    IL_0188:  ldloc.s    V_14
    IL_018a:  ldloc.s    V_21
    IL_018c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0191:  add
    IL_0192:  ldloc.s    V_22
    IL_0194:  ldloc.s    V_16
    IL_0196:  ldloc.s    V_21
    IL_0198:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_019d:  add
    IL_019e:  callvirt   instance int32 Game.TerrainData::GetCellContentsFast(int32,
                                                                              int32,
                                                                              int32)
    IL_01a3:  brtrue.s   IL_01be

    IL_01a5:  ldloc.0
    IL_01a6:  ldloc.s    V_14
    IL_01a8:  ldloc.s    V_22
    IL_01aa:  ldloc.s    V_16
    IL_01ac:  callvirt   instance int32 Game.TerrainData::GetCellContentsFast(int32,
                                                                              int32,
                                                                              int32)
    IL_01b1:  brfalse.s  IL_01be

    IL_01b3:  ldloc.s    V_22
    IL_01b5:  ldc.i4.1
    IL_01b6:  sub
    IL_01b7:  stloc.s    V_22
    IL_01b9:  ldloc.s    V_22
    IL_01bb:  ldc.i4.1
    IL_01bc:  bge.s      IL_0187

    IL_01be:  ldloc.0
    IL_01bf:  ldloc.s    V_14
    IL_01c1:  ldloc.s    V_21
    IL_01c3:  ldfld      int32 [Engine]Engine.Point3::X
    IL_01c8:  add
    IL_01c9:  ldloc.s    V_22
    IL_01cb:  ldloc.s    V_16
    IL_01cd:  ldloc.s    V_21
    IL_01cf:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_01d4:  add
    IL_01d5:  callvirt   instance int32 Game.TerrainData::GetCellContentsFast(int32,
                                                                              int32,
                                                                              int32)
    IL_01da:  brtrue     IL_0275

    IL_01df:  ldloc.s    V_22
    IL_01e1:  ldc.i4.1
    IL_01e2:  add
    IL_01e3:  stloc.s    V_22
    IL_01e5:  ldc.i4     0xc5
    IL_01ea:  ldc.i4.0
    IL_01eb:  ldc.i4.0
    IL_01ec:  ldloc.s    V_20
    IL_01ee:  call       int32 Game.CellFace::OppositeFace(int32)
    IL_01f3:  call       int32 Game.IvyBlock::SetFace(int32,
                                                      int32)
    IL_01f8:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_01fd:  stloc.s    V_23
    IL_01ff:  br.s       IL_0260

    IL_0201:  ldloc.0
    IL_0202:  ldloc.s    V_14
    IL_0204:  ldloc.s    V_21
    IL_0206:  ldfld      int32 [Engine]Engine.Point3::X
    IL_020b:  add
    IL_020c:  ldloc.s    V_22
    IL_020e:  ldloc.s    V_16
    IL_0210:  ldloc.s    V_21
    IL_0212:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0217:  add
    IL_0218:  callvirt   instance int32 Game.TerrainData::GetCellContentsFast(int32,
                                                                              int32,
                                                                              int32)
    IL_021d:  brtrue.s   IL_0275

    IL_021f:  ldloc.0
    IL_0220:  ldloc.s    V_14
    IL_0222:  ldloc.s    V_21
    IL_0224:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0229:  add
    IL_022a:  ldloc.s    V_22
    IL_022c:  ldloc.s    V_16
    IL_022e:  ldloc.s    V_21
    IL_0230:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0235:  add
    IL_0236:  ldloc.s    V_23
    IL_0238:  callvirt   instance void Game.TerrainData::SetCellValueFast(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_023d:  ldloc.s    V_14
    IL_023f:  ldloc.s    V_21
    IL_0241:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0246:  add
    IL_0247:  ldloc.s    V_22
    IL_0249:  ldloc.s    V_16
    IL_024b:  ldloc.s    V_21
    IL_024d:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0252:  add
    IL_0253:  call       bool Game.IvyBlock::IsGrowthStopCell(int32,
                                                              int32,
                                                              int32)
    IL_0258:  brtrue.s   IL_0275

    IL_025a:  ldloc.s    V_22
    IL_025c:  ldc.i4.1
    IL_025d:  sub
    IL_025e:  stloc.s    V_22
    IL_0260:  ldloc.s    V_22
    IL_0262:  ldc.i4.1
    IL_0263:  bge.s      IL_0201

    IL_0265:  br.s       IL_0275

    IL_0267:  ldloc.s    V_19
    IL_0269:  ldc.i4.1
    IL_026a:  add
    IL_026b:  stloc.s    V_19
    IL_026d:  ldloc.s    V_19
    IL_026f:  ldc.i4.4
    IL_0270:  blt        IL_014c

    IL_0275:  ldloc.s    V_13
    IL_0277:  ldc.i4.1
    IL_0278:  add
    IL_0279:  stloc.s    V_13
    IL_027b:  ldloc.s    V_13
    IL_027d:  ldc.i4.s   100
    IL_027f:  blt        IL_00b7

    IL_0284:  ldloc.s    V_7
    IL_0286:  ldc.i4.1
    IL_0287:  add
    IL_0288:  stloc.s    V_7
    IL_028a:  ldloc.s    V_7
    IL_028c:  ldloc.s    V_6
    IL_028e:  blt        IL_005b

    IL_0293:  ret
  } // end of method TerrainContentsGenerator::GenerateIvy

  .method private hidebysig instance void 
          GenerateTraps(int32 chunkX,
                        int32 chunkZ) cil managed
  {
    // 代码大小       781 (0x30d)
    .maxstack  7
    .locals init (class Game.TerrainData V_0,
             class Game.Random V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7,
             int32 V_8,
             int32 V_9,
             int32 V_10,
             int32 V_11,
             bool V_12,
             int32 V_13,
             valuetype [System.Runtime]System.Nullable`1<int32> V_14,
             int32 V_15,
             int32 V_16,
             int32 V_17,
             int32 V_18,
             valuetype [System.Runtime]System.Nullable`1<int32> V_19,
             int32 V_20,
             valuetype [System.Runtime]System.Nullable`1<int32> V_21,
             int32 V_22,
             valuetype [System.Runtime]System.Nullable`1<int32> V_23,
             int32 V_24,
             int32 V_25,
             int32 V_26,
             int32 V_27)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.TerrainContentsGenerator::TGExtras
    IL_0006:  brtrue.s   IL_0009

    IL_0008:  ret

    IL_0009:  ldarg.0
    IL_000a:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_000f:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0014:  stloc.0
    IL_0015:  ldarg.0
    IL_0016:  ldfld      int32 Game.TerrainContentsGenerator::m_seed
    IL_001b:  ldarg.1
    IL_001c:  add
    IL_001d:  ldc.i4     0x841
    IL_0022:  ldarg.2
    IL_0023:  mul
    IL_0024:  add
    IL_0025:  newobj     instance void Game.Random::.ctor(int32)
    IL_002a:  stloc.1
    IL_002b:  ldarg.1
    IL_002c:  ldc.i4.s   16
    IL_002e:  mul
    IL_002f:  stloc.2
    IL_0030:  ldloc.2
    IL_0031:  ldc.i4.s   16
    IL_0033:  add
    IL_0034:  stloc.3
    IL_0035:  ldarg.2
    IL_0036:  ldc.i4.s   16
    IL_0038:  mul
    IL_0039:  stloc.s    V_4
    IL_003b:  ldloc.s    V_4
    IL_003d:  ldc.i4.s   16
    IL_003f:  add
    IL_0040:  stloc.s    V_5
    IL_0042:  ldloc.1
    IL_0043:  ldc.r4     0.0
    IL_0048:  ldc.r4     1.
    IL_004d:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0052:  ldc.r4     0.15000001
    IL_0057:  bge.un     IL_030c

    IL_005c:  ldarg.0
    IL_005d:  ldloc.2
    IL_005e:  conv.r4
    IL_005f:  ldloc.s    V_4
    IL_0061:  conv.r4
    IL_0062:  call       instance float32 Game.TerrainContentsGenerator::CalculateOceanShoreDistance(float32,
                                                                                                     float32)
    IL_0067:  ldc.r4     100.
    IL_006c:  ble.un     IL_030c

    IL_0071:  ldloc.1
    IL_0072:  ldc.i4.0
    IL_0073:  ldc.i4.2
    IL_0074:  ldc.i4.1
    IL_0075:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_007a:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_007f:  stloc.s    V_6
    IL_0081:  ldc.i4.0
    IL_0082:  stloc.s    V_7
    IL_0084:  br         IL_0303

    IL_0089:  ldloc.1
    IL_008a:  ldc.i4.2
    IL_008b:  ldc.i4.5
    IL_008c:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0091:  stloc.s    V_8
    IL_0093:  ldloc.1
    IL_0094:  ldc.i4.2
    IL_0095:  ldc.i4.5
    IL_0096:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_009b:  stloc.s    V_9
    IL_009d:  ldloc.1
    IL_009e:  ldloc.2
    IL_009f:  ldc.i4.1
    IL_00a0:  add
    IL_00a1:  ldloc.3
    IL_00a2:  ldloc.s    V_8
    IL_00a4:  sub
    IL_00a5:  ldc.i4.2
    IL_00a6:  sub
    IL_00a7:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_00ac:  stloc.s    V_10
    IL_00ae:  ldloc.1
    IL_00af:  ldloc.s    V_4
    IL_00b1:  ldc.i4.1
    IL_00b2:  add
    IL_00b3:  ldloc.s    V_5
    IL_00b5:  ldloc.s    V_9
    IL_00b7:  sub
    IL_00b8:  ldc.i4.2
    IL_00b9:  sub
    IL_00ba:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_00bf:  stloc.s    V_11
    IL_00c1:  ldloc.1
    IL_00c2:  ldc.r4     0.0
    IL_00c7:  ldc.r4     1.
    IL_00cc:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_00d1:  ldc.r4     0.5
    IL_00d6:  clt
    IL_00d8:  stloc.s    V_12
    IL_00da:  ldloc.1
    IL_00db:  ldc.i4.3
    IL_00dc:  ldc.i4.5
    IL_00dd:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_00e2:  stloc.s    V_13
    IL_00e4:  ldloca.s   V_14
    IL_00e6:  initobj    valuetype [System.Runtime]System.Nullable`1<int32>
    IL_00ec:  ldloc.s    V_10
    IL_00ee:  ldc.i4.1
    IL_00ef:  sub
    IL_00f0:  stloc.s    V_15
    IL_00f2:  br         IL_019b

    IL_00f7:  ldloc.s    V_11
    IL_00f9:  ldc.i4.1
    IL_00fa:  sub
    IL_00fb:  stloc.s    V_16
    IL_00fd:  br         IL_0187

    IL_0102:  ldloc.0
    IL_0103:  ldloc.s    V_15
    IL_0105:  ldloc.s    V_16
    IL_0107:  callvirt   instance int32 Game.TerrainData::CalculateTopmostCellHeight(int32,
                                                                                     int32)
    IL_010c:  stloc.s    V_17
    IL_010e:  ldloc.s    V_17
    IL_0110:  ldc.i4.s   20
    IL_0112:  sub
    IL_0113:  ldc.i4.5
    IL_0114:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_0119:  stloc.s    V_18
    IL_011b:  br.s       IL_0132

    IL_011d:  ldloc.0
    IL_011e:  ldloc.s    V_15
    IL_0120:  ldloc.s    V_17
    IL_0122:  ldloc.s    V_16
    IL_0124:  callvirt   instance int32 Game.TerrainData::GetCellContentsFast(int32,
                                                                              int32,
                                                                              int32)
    IL_0129:  ldc.i4.8
    IL_012a:  beq.s      IL_0138

    IL_012c:  ldloc.s    V_17
    IL_012e:  ldc.i4.1
    IL_012f:  sub
    IL_0130:  stloc.s    V_17
    IL_0132:  ldloc.s    V_17
    IL_0134:  ldloc.s    V_18
    IL_0136:  bge.s      IL_011d

    IL_0138:  ldloca.s   V_14
    IL_013a:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_013f:  brfalse.s  IL_0166

    IL_0141:  ldloc.s    V_14
    IL_0143:  stloc.s    V_19
    IL_0145:  ldloc.s    V_17
    IL_0147:  stloc.s    V_20
    IL_0149:  ldloca.s   V_19
    IL_014b:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::GetValueOrDefault()
    IL_0150:  ldloc.s    V_20
    IL_0152:  beq.s      IL_0157

    IL_0154:  ldc.i4.1
    IL_0155:  br.s       IL_0161

    IL_0157:  ldloca.s   V_19
    IL_0159:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_015e:  ldc.i4.0
    IL_015f:  ceq
    IL_0161:  brtrue     IL_02fd

    IL_0166:  ldloca.s   V_14
    IL_0168:  ldloc.s    V_17
    IL_016a:  call       instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_016f:  ldloc.0
    IL_0170:  ldloc.s    V_15
    IL_0172:  ldloc.s    V_17
    IL_0174:  ldloc.s    V_16
    IL_0176:  callvirt   instance int32 Game.TerrainData::GetCellContentsFast(int32,
                                                                              int32,
                                                                              int32)
    IL_017b:  ldc.i4.8
    IL_017c:  bne.un     IL_02fd

    IL_0181:  ldloc.s    V_16
    IL_0183:  ldc.i4.1
    IL_0184:  add
    IL_0185:  stloc.s    V_16
    IL_0187:  ldloc.s    V_16
    IL_0189:  ldloc.s    V_11
    IL_018b:  ldloc.s    V_9
    IL_018d:  add
    IL_018e:  ldc.i4.1
    IL_018f:  add
    IL_0190:  blt        IL_0102

    IL_0195:  ldloc.s    V_15
    IL_0197:  ldc.i4.1
    IL_0198:  add
    IL_0199:  stloc.s    V_15
    IL_019b:  ldloc.s    V_15
    IL_019d:  ldloc.s    V_10
    IL_019f:  ldloc.s    V_8
    IL_01a1:  add
    IL_01a2:  ldc.i4.1
    IL_01a3:  add
    IL_01a4:  blt        IL_00f7

    IL_01a9:  ldloca.s   V_14
    IL_01ab:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_01b0:  brfalse    IL_02fd

    IL_01b5:  ldloc.s    V_14
    IL_01b7:  stloc.s    V_21
    IL_01b9:  ldloc.s    V_13
    IL_01bb:  stloc.s    V_22
    IL_01bd:  ldloca.s   V_21
    IL_01bf:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_01c4:  brtrue.s   IL_01d2

    IL_01c6:  ldloca.s   V_23
    IL_01c8:  initobj    valuetype [System.Runtime]System.Nullable`1<int32>
    IL_01ce:  ldloc.s    V_23
    IL_01d0:  br.s       IL_01e1

    IL_01d2:  ldloca.s   V_21
    IL_01d4:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::GetValueOrDefault()
    IL_01d9:  ldloc.s    V_22
    IL_01db:  sub
    IL_01dc:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_01e1:  stloc.s    V_19
    IL_01e3:  ldc.i4.5
    IL_01e4:  stloc.s    V_20
    IL_01e6:  ldloca.s   V_19
    IL_01e8:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::GetValueOrDefault()
    IL_01ed:  ldloc.s    V_20
    IL_01ef:  blt.s      IL_01f4

    IL_01f1:  ldc.i4.0
    IL_01f2:  br.s       IL_01fb

    IL_01f4:  ldloca.s   V_19
    IL_01f6:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_01fb:  brtrue     IL_02fd

    IL_0200:  ldloc.s    V_10
    IL_0202:  stloc.s    V_24
    IL_0204:  br         IL_02f1

    IL_0209:  ldloc.s    V_11
    IL_020b:  stloc.s    V_25
    IL_020d:  br         IL_02df

    IL_0212:  ldloca.s   V_14
    IL_0214:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
    IL_0219:  ldc.i4.1
    IL_021a:  sub
    IL_021b:  stloc.s    V_26
    IL_021d:  br.s       IL_0237

    IL_021f:  ldloc.0
    IL_0220:  ldloc.s    V_24
    IL_0222:  ldloc.s    V_26
    IL_0224:  ldloc.s    V_25
    IL_0226:  ldc.i4.0
    IL_0227:  call       int32 Game.TerrainData::MakeBlockValue(int32)
    IL_022c:  callvirt   instance void Game.TerrainData::SetCellValueFast(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_0231:  ldloc.s    V_26
    IL_0233:  ldc.i4.1
    IL_0234:  sub
    IL_0235:  stloc.s    V_26
    IL_0237:  ldloc.s    V_26
    IL_0239:  ldloc.s    V_14
    IL_023b:  stloc.s    V_21
    IL_023d:  ldloc.s    V_13
    IL_023f:  stloc.s    V_20
    IL_0241:  ldloca.s   V_21
    IL_0243:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0248:  brtrue.s   IL_0256

    IL_024a:  ldloca.s   V_23
    IL_024c:  initobj    valuetype [System.Runtime]System.Nullable`1<int32>
    IL_0252:  ldloc.s    V_23
    IL_0254:  br.s       IL_0267

    IL_0256:  ldloca.s   V_21
    IL_0258:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::GetValueOrDefault()
    IL_025d:  ldloc.s    V_20
    IL_025f:  sub
    IL_0260:  ldc.i4.1
    IL_0261:  add
    IL_0262:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_0267:  stloc.s    V_19
    IL_0269:  ldloca.s   V_19
    IL_026b:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::GetValueOrDefault()
    IL_0270:  bge.s      IL_0275

    IL_0272:  ldc.i4.0
    IL_0273:  br.s       IL_027c

    IL_0275:  ldloca.s   V_19
    IL_0277:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_027c:  brtrue.s   IL_021f

    IL_027e:  ldloc.0
    IL_027f:  ldloc.s    V_24
    IL_0281:  ldloca.s   V_14
    IL_0283:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
    IL_0288:  ldloc.s    V_25
    IL_028a:  ldc.i4.s   87
    IL_028c:  call       int32 Game.TerrainData::MakeBlockValue(int32)
    IL_0291:  callvirt   instance void Game.TerrainData::SetCellValueFast(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_0296:  ldloc.s    V_12
    IL_0298:  brfalse.s  IL_02d9

    IL_029a:  ldc.i4.0
    IL_029b:  ldloc.1
    IL_029c:  ldc.r4     0.0
    IL_02a1:  ldc.r4     1.
    IL_02a6:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_02ab:  ldc.r4     0.33000001
    IL_02b0:  clt
    IL_02b2:  call       int32 Game.SpikedPlankBlock::SetSpikesState(int32,
                                                                     bool)
    IL_02b7:  stloc.s    V_27
    IL_02b9:  ldloc.0
    IL_02ba:  ldloc.s    V_24
    IL_02bc:  ldloca.s   V_14
    IL_02be:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
    IL_02c3:  ldloc.s    V_13
    IL_02c5:  sub
    IL_02c6:  ldc.i4.1
    IL_02c7:  add
    IL_02c8:  ldloc.s    V_25
    IL_02ca:  ldc.i4.s   86
    IL_02cc:  ldc.i4.0
    IL_02cd:  ldloc.s    V_27
    IL_02cf:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_02d4:  callvirt   instance void Game.TerrainData::SetCellValueFast(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_02d9:  ldloc.s    V_25
    IL_02db:  ldc.i4.1
    IL_02dc:  add
    IL_02dd:  stloc.s    V_25
    IL_02df:  ldloc.s    V_25
    IL_02e1:  ldloc.s    V_11
    IL_02e3:  ldloc.s    V_9
    IL_02e5:  add
    IL_02e6:  blt        IL_0212

    IL_02eb:  ldloc.s    V_24
    IL_02ed:  ldc.i4.1
    IL_02ee:  add
    IL_02ef:  stloc.s    V_24
    IL_02f1:  ldloc.s    V_24
    IL_02f3:  ldloc.s    V_10
    IL_02f5:  ldloc.s    V_8
    IL_02f7:  add
    IL_02f8:  blt        IL_0209

    IL_02fd:  ldloc.s    V_7
    IL_02ff:  ldc.i4.1
    IL_0300:  add
    IL_0301:  stloc.s    V_7
    IL_0303:  ldloc.s    V_7
    IL_0305:  ldloc.s    V_6
    IL_0307:  blt        IL_0089

    IL_030c:  ret
  } // end of method TerrainContentsGenerator::GenerateTraps

  .method private hidebysig instance void 
          GenerateGraves(int32 chunkX,
                         int32 chunkZ) cil managed
  {
    // 代码大小       2040 (0x7f8)
    .maxstack  8
    .locals init (class Game.Random V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7,
             int32 V_8,
             int32 V_9,
             bool V_10,
             int32 V_11,
             int32 V_12,
             int32 V_13,
             int32 V_14,
             int32 V_15,
             int32 V_16,
             int32 V_17,
             valuetype [Engine]Engine.Point3 V_18,
             valuetype [Engine]Engine.Point3 V_19,
             int32 V_20,
             int32 V_21,
             int32 V_22,
             int32 V_23,
             int32 V_24,
             valuetype [System.Runtime]System.Nullable`1<int32> V_25,
             int32 V_26,
             int32 V_27,
             bool V_28,
             float32 V_29,
             float32 V_30,
             int32 V_31,
             int32 V_32,
             int32 V_33,
             int32 V_34,
             int32 V_35,
             int32 V_36,
             int32 V_37,
             class Game.Block V_38,
             int32 V_39,
             int32 V_40,
             int32 V_41,
             int32 V_42,
             int32 V_43,
             int32 V_44,
             int32 V_45,
             int32 V_46,
             int32 V_47)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.TerrainContentsGenerator::TGExtras
    IL_0006:  brtrue.s   IL_0009

    IL_0008:  ret

    IL_0009:  ldarg.0
    IL_000a:  ldfld      int32 Game.TerrainContentsGenerator::m_seed
    IL_000f:  ldarg.1
    IL_0010:  add
    IL_0011:  ldc.i4     0x2853
    IL_0016:  ldarg.2
    IL_0017:  mul
    IL_0018:  add
    IL_0019:  call       uint32 [Engine]Engine.MathUtils::Hash(uint32)
    IL_001e:  newobj     instance void Game.Random::.ctor(int32)
    IL_0023:  stloc.0
    IL_0024:  ldarg.1
    IL_0025:  ldc.i4.s   16
    IL_0027:  mul
    IL_0028:  stloc.1
    IL_0029:  ldloc.1
    IL_002a:  ldc.i4.s   16
    IL_002c:  add
    IL_002d:  stloc.2
    IL_002e:  ldarg.2
    IL_002f:  ldc.i4.s   16
    IL_0031:  mul
    IL_0032:  stloc.3
    IL_0033:  ldloc.3
    IL_0034:  ldc.i4.s   16
    IL_0036:  add
    IL_0037:  stloc.s    V_4
    IL_0039:  ldloc.0
    IL_003a:  ldc.r4     0.0
    IL_003f:  ldc.r4     1.
    IL_0044:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0049:  ldc.r4     3.3e-002
    IL_004e:  bge.un     IL_07f7

    IL_0053:  ldarg.0
    IL_0054:  ldloc.1
    IL_0055:  conv.r4
    IL_0056:  ldloc.3
    IL_0057:  conv.r4
    IL_0058:  call       instance float32 Game.TerrainContentsGenerator::CalculateOceanShoreDistance(float32,
                                                                                                     float32)
    IL_005d:  ldc.r4     60.
    IL_0062:  ble.un     IL_07f7

    IL_0067:  ldloc.0
    IL_0068:  ldc.i4.0
    IL_0069:  ldc.i4.1
    IL_006a:  ldc.i4.1
    IL_006b:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_0070:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0075:  stloc.s    V_5
    IL_0077:  ldc.i4.0
    IL_0078:  stloc.s    V_6
    IL_007a:  br         IL_07ee

    IL_007f:  ldloc.0
    IL_0080:  ldloc.1
    IL_0081:  ldc.i4.6
    IL_0082:  add
    IL_0083:  ldloc.2
    IL_0084:  ldc.i4.7
    IL_0085:  sub
    IL_0086:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_008b:  stloc.s    V_7
    IL_008d:  ldloc.0
    IL_008e:  ldloc.3
    IL_008f:  ldc.i4.6
    IL_0090:  add
    IL_0091:  ldloc.s    V_4
    IL_0093:  ldc.i4.7
    IL_0094:  sub
    IL_0095:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_009a:  stloc.s    V_8
    IL_009c:  ldloc.0
    IL_009d:  ldc.r4     0.0
    IL_00a2:  ldc.r4     1.
    IL_00a7:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_00ac:  ldc.r4     0.2
    IL_00b1:  blt.s      IL_00bd

    IL_00b3:  ldloc.0
    IL_00b4:  ldc.i4.1
    IL_00b5:  ldc.i4.3
    IL_00b6:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_00bb:  br.s       IL_00c6

    IL_00bd:  ldloc.0
    IL_00be:  ldc.i4.4
    IL_00bf:  ldc.i4.s   20
    IL_00c1:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_00c6:  stloc.s    V_9
    IL_00c8:  ldloc.0
    IL_00c9:  ldc.r4     0.0
    IL_00ce:  ldc.r4     1.
    IL_00d3:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_00d8:  ldc.r4     0.5
    IL_00dd:  clt
    IL_00df:  stloc.s    V_10
    IL_00e1:  ldc.i4.0
    IL_00e2:  stloc.s    V_11
    IL_00e4:  br         IL_07df

    IL_00e9:  ldloc.s    V_7
    IL_00eb:  ldloc.0
    IL_00ec:  ldc.i4.s   -4
    IL_00ee:  ldc.i4.4
    IL_00ef:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_00f4:  add
    IL_00f5:  stloc.s    V_12
    IL_00f7:  ldloc.s    V_8
    IL_00f9:  ldloc.0
    IL_00fa:  ldc.i4.s   -4
    IL_00fc:  ldc.i4.4
    IL_00fd:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0102:  add
    IL_0103:  stloc.s    V_13
    IL_0105:  ldarg.0
    IL_0106:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_010b:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0110:  ldloc.s    V_12
    IL_0112:  ldloc.s    V_13
    IL_0114:  callvirt   instance int32 Game.TerrainData::CalculateTopmostCellHeight(int32,
                                                                                     int32)
    IL_0119:  stloc.s    V_14
    IL_011b:  ldloc.s    V_14
    IL_011d:  ldc.i4.s   10
    IL_011f:  blt        IL_07d9

    IL_0124:  ldloc.s    V_14
    IL_0126:  ldarg.0
    IL_0127:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_012c:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0131:  callvirt   instance int32 Game.TerrainData::get_SizeY()
    IL_0136:  ldc.i4.s   10
    IL_0138:  sub
    IL_0139:  bgt        IL_07d9

    IL_013e:  ldloc.0
    IL_013f:  ldc.i4.0
    IL_0140:  ldc.i4.3
    IL_0141:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0146:  stloc.s    V_15
    IL_0148:  ldc.i4.0
    IL_0149:  stloc.s    V_16
    IL_014b:  br         IL_07d1

    IL_0150:  ldloc.s    V_16
    IL_0152:  ldloc.s    V_15
    IL_0154:  add
    IL_0155:  ldc.i4.4
    IL_0156:  rem
    IL_0157:  stloc.s    V_17
    IL_0159:  ldloc.s    V_17
    IL_015b:  call       valuetype [Engine]Engine.Point3 Game.CellFace::FaceToPoint3(int32)
    IL_0160:  stloc.s    V_18
    IL_0162:  ldloca.s   V_19
    IL_0164:  ldloc.s    V_18
    IL_0166:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_016b:  neg
    IL_016c:  ldloc.s    V_18
    IL_016e:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0173:  ldloc.s    V_18
    IL_0175:  ldfld      int32 [Engine]Engine.Point3::X
    IL_017a:  call       instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_017f:  ldloc.s    V_18
    IL_0181:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0186:  ldc.i4.0
    IL_0187:  blt.s      IL_018f

    IL_0189:  ldloc.s    V_12
    IL_018b:  ldc.i4.1
    IL_018c:  sub
    IL_018d:  br.s       IL_0193

    IL_018f:  ldloc.s    V_12
    IL_0191:  ldc.i4.2
    IL_0192:  sub
    IL_0193:  ldloc.s    V_18
    IL_0195:  ldfld      int32 [Engine]Engine.Point3::X
    IL_019a:  ldc.i4.0
    IL_019b:  bgt.s      IL_01a3

    IL_019d:  ldloc.s    V_12
    IL_019f:  ldc.i4.1
    IL_01a0:  add
    IL_01a1:  br.s       IL_01a7

    IL_01a3:  ldloc.s    V_12
    IL_01a5:  ldc.i4.2
    IL_01a6:  add
    IL_01a7:  stloc.s    V_20
    IL_01a9:  ldloc.s    V_18
    IL_01ab:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_01b0:  ldc.i4.0
    IL_01b1:  blt.s      IL_01b9

    IL_01b3:  ldloc.s    V_13
    IL_01b5:  ldc.i4.1
    IL_01b6:  sub
    IL_01b7:  br.s       IL_01bd

    IL_01b9:  ldloc.s    V_13
    IL_01bb:  ldc.i4.2
    IL_01bc:  sub
    IL_01bd:  stloc.s    V_21
    IL_01bf:  ldloc.s    V_18
    IL_01c1:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_01c6:  ldc.i4.0
    IL_01c7:  bgt.s      IL_01cf

    IL_01c9:  ldloc.s    V_13
    IL_01cb:  ldc.i4.1
    IL_01cc:  add
    IL_01cd:  br.s       IL_01d3

    IL_01cf:  ldloc.s    V_13
    IL_01d1:  ldc.i4.2
    IL_01d2:  add
    IL_01d3:  stloc.s    V_22
    IL_01d5:  stloc.s    V_34
    IL_01d7:  br         IL_0261

    IL_01dc:  ldloc.s    V_14
    IL_01de:  ldc.i4.2
    IL_01df:  sub
    IL_01e0:  stloc.s    V_35
    IL_01e2:  br.s       IL_0253

    IL_01e4:  ldloc.s    V_21
    IL_01e6:  stloc.s    V_36
    IL_01e8:  br.s       IL_0247

    IL_01ea:  ldarg.0
    IL_01eb:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_01f0:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_01f5:  ldloc.s    V_34
    IL_01f7:  ldloc.s    V_35
    IL_01f9:  ldloc.s    V_36
    IL_01fb:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32,
                                                                           int32,
                                                                           int32)
    IL_0200:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0205:  stloc.s    V_37
    IL_0207:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_020c:  ldloc.s    V_37
    IL_020e:  ldelem.ref
    IL_020f:  stloc.s    V_38
    IL_0211:  ldloc.s    V_35
    IL_0213:  ldloc.s    V_14
    IL_0215:  ble.s      IL_0225

    IL_0217:  ldloc.s    V_38
    IL_0219:  ldfld      bool Game.Block::IsCollidable
    IL_021e:  brfalse.s  IL_0241

    IL_0220:  br         IL_07cb

    IL_0225:  ldloc.s    V_37
    IL_0227:  ldc.i4.8
    IL_0228:  beq.s      IL_0241

    IL_022a:  ldloc.s    V_37
    IL_022c:  ldc.i4.2
    IL_022d:  beq.s      IL_0241

    IL_022f:  ldloc.s    V_37
    IL_0231:  ldc.i4.7
    IL_0232:  beq.s      IL_0241

    IL_0234:  ldloc.s    V_37
    IL_0236:  ldc.i4.3
    IL_0237:  beq.s      IL_0241

    IL_0239:  ldloc.s    V_37
    IL_023b:  ldc.i4.4
    IL_023c:  bne.un     IL_07cb

    IL_0241:  ldloc.s    V_36
    IL_0243:  ldc.i4.1
    IL_0244:  add
    IL_0245:  stloc.s    V_36
    IL_0247:  ldloc.s    V_36
    IL_0249:  ldloc.s    V_22
    IL_024b:  ble.s      IL_01ea

    IL_024d:  ldloc.s    V_35
    IL_024f:  ldc.i4.1
    IL_0250:  add
    IL_0251:  stloc.s    V_35
    IL_0253:  ldloc.s    V_35
    IL_0255:  ldloc.s    V_14
    IL_0257:  ldc.i4.2
    IL_0258:  add
    IL_0259:  ble.s      IL_01e4

    IL_025b:  ldloc.s    V_34
    IL_025d:  ldc.i4.1
    IL_025e:  add
    IL_025f:  stloc.s    V_34
    IL_0261:  ldloc.s    V_34
    IL_0263:  ldloc.s    V_20
    IL_0265:  ble        IL_01dc

    IL_026a:  ldloc.0
    IL_026b:  ldc.i4.0
    IL_026c:  ldc.i4.7
    IL_026d:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0272:  stloc.s    V_23
    IL_0274:  ldc.i4.0
    IL_0275:  ldloc.s    V_17
    IL_0277:  ldc.i4.2
    IL_0278:  rem
    IL_0279:  call       int32 Game.GravestoneBlock::SetRotation(int32,
                                                                 int32)
    IL_027e:  ldloc.s    V_23
    IL_0280:  call       int32 Game.GravestoneBlock::SetVariant(int32,
                                                                int32)
    IL_0285:  stloc.s    V_24
    IL_0287:  ldloca.s   V_25
    IL_0289:  initobj    valuetype [System.Runtime]System.Nullable`1<int32>
    IL_028f:  ldc.i4     0xd9
    IL_0294:  stloc.s    V_26
    IL_0296:  ldc.i4     0x88
    IL_029b:  stloc.s    V_27
    IL_029d:  ldloc.s    V_23
    IL_029f:  ldc.i4.4
    IL_02a0:  blt        IL_032f

    IL_02a5:  ldloc.s    V_10
    IL_02a7:  brtrue     IL_032f

    IL_02ac:  ldarg.0
    IL_02ad:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_02b2:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_02b7:  ldloc.s    V_12
    IL_02b9:  ldloc.s    V_14
    IL_02bb:  ldloc.s    V_13
    IL_02bd:  callvirt   instance int32 Game.TerrainData::GetCellContentsFast(int32,
                                                                              int32,
                                                                              int32)
    IL_02c2:  stloc.s    V_39
    IL_02c4:  ldloc.s    V_39
    IL_02c6:  ldc.i4.7
    IL_02c7:  beq.s      IL_02ce

    IL_02c9:  ldloc.s    V_39
    IL_02cb:  ldc.i4.4
    IL_02cc:  bne.un.s   IL_02e5

    IL_02ce:  ldloca.s   V_25
    IL_02d0:  ldc.i4.4
    IL_02d1:  call       int32 Game.TerrainData::MakeBlockValue(int32)
    IL_02d6:  call       instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_02db:  ldc.i4.s   51
    IL_02dd:  stloc.s    V_26
    IL_02df:  ldc.i4.s   52
    IL_02e1:  stloc.s    V_27
    IL_02e3:  br.s       IL_032f

    IL_02e5:  ldloc.0
    IL_02e6:  ldc.r4     0.0
    IL_02eb:  ldc.r4     1.
    IL_02f0:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_02f5:  ldc.r4     0.5
    IL_02fa:  bge.un.s   IL_0319

    IL_02fc:  ldloca.s   V_25
    IL_02fe:  ldc.i4.3
    IL_02ff:  call       int32 Game.TerrainData::MakeBlockValue(int32)
    IL_0304:  call       instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_0309:  ldc.i4     0xd9
    IL_030e:  stloc.s    V_26
    IL_0310:  ldc.i4     0x88
    IL_0315:  stloc.s    V_27
    IL_0317:  br.s       IL_032f

    IL_0319:  ldloca.s   V_25
    IL_031b:  ldc.i4.s   67
    IL_031d:  call       int32 Game.TerrainData::MakeBlockValue(int32)
    IL_0322:  call       instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_0327:  ldc.i4.s   96
    IL_0329:  stloc.s    V_26
    IL_032b:  ldc.i4.s   95
    IL_032d:  stloc.s    V_27
    IL_032f:  ldloca.s   V_25
    IL_0331:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0336:  brtrue.s   IL_033b

    IL_0338:  ldc.i4.0
    IL_0339:  br.s       IL_0352

    IL_033b:  ldloc.0
    IL_033c:  ldc.r4     0.0
    IL_0341:  ldc.r4     1.
    IL_0346:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_034b:  ldc.r4     0.33000001
    IL_0350:  clt
    IL_0352:  stloc.s    V_28
    IL_0354:  ldloc.0
    IL_0355:  ldc.r4     0.0
    IL_035a:  ldc.r4     1.
    IL_035f:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0364:  stloc.s    V_29
    IL_0366:  ldloc.0
    IL_0367:  ldc.r4     0.0
    IL_036c:  ldc.r4     1.
    IL_0371:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0376:  stloc.s    V_30
    IL_0378:  ldloc.0
    IL_0379:  ldc.i4.m1
    IL_037a:  ldc.i4.0
    IL_037b:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0380:  stloc.s    V_31
    IL_0382:  ldloc.0
    IL_0383:  ldc.i4.1
    IL_0384:  ldc.i4.2
    IL_0385:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_038a:  stloc.s    V_32
    IL_038c:  ldloc.s    V_28
    IL_038e:  brtrue.s   IL_0396

    IL_0390:  ldloc.s    V_14
    IL_0392:  ldc.i4.1
    IL_0393:  add
    IL_0394:  br.s       IL_039a

    IL_0396:  ldloc.s    V_14
    IL_0398:  ldc.i4.2
    IL_0399:  add
    IL_039a:  stloc.s    V_33
    IL_039c:  ldarg.0
    IL_039d:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_03a2:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_03a7:  ldloc.s    V_12
    IL_03a9:  ldloc.s    V_33
    IL_03ab:  ldloc.s    V_13
    IL_03ad:  ldc.i4     0xbd
    IL_03b2:  ldc.i4.0
    IL_03b3:  ldloc.s    V_24
    IL_03b5:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_03ba:  callvirt   instance void Game.TerrainData::SetCellValueFast(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_03bf:  ldloc.s    V_31
    IL_03c1:  stloc.s    V_40
    IL_03c3:  br         IL_07c0

    IL_03c8:  ldloc.s    V_12
    IL_03ca:  ldloc.s    V_18
    IL_03cc:  ldfld      int32 [Engine]Engine.Point3::X
    IL_03d1:  ldloc.s    V_40
    IL_03d3:  mul
    IL_03d4:  add
    IL_03d5:  stloc.s    V_41
    IL_03d7:  ldloc.s    V_13
    IL_03d9:  ldloc.s    V_18
    IL_03db:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_03e0:  ldloc.s    V_40
    IL_03e2:  mul
    IL_03e3:  add
    IL_03e4:  stloc.s    V_42
    IL_03e6:  ldloc.s    V_40
    IL_03e8:  brfalse.s  IL_03f2

    IL_03ea:  ldloc.s    V_40
    IL_03ec:  ldc.i4.1
    IL_03ed:  bne.un     IL_050c

    IL_03f2:  ldloc.0
    IL_03f3:  ldc.r4     0.0
    IL_03f8:  ldc.r4     1.
    IL_03fd:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0402:  ldc.r4     0.25
    IL_0407:  bge.un.s   IL_042d

    IL_0409:  ldarg.0
    IL_040a:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_040f:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0414:  ldloc.s    V_41
    IL_0416:  ldloc.s    V_33
    IL_0418:  ldc.i4.2
    IL_0419:  sub
    IL_041a:  ldloc.s    V_42
    IL_041c:  ldc.i4     0xbe
    IL_0421:  call       int32 Game.TerrainData::MakeBlockValue(int32)
    IL_0426:  callvirt   instance void Game.TerrainData::SetCellValueFast(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_042b:  br.s       IL_044b

    IL_042d:  ldarg.0
    IL_042e:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_0433:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0438:  ldloc.s    V_41
    IL_043a:  ldloc.s    V_33
    IL_043c:  ldc.i4.2
    IL_043d:  sub
    IL_043e:  ldloc.s    V_42
    IL_0440:  ldc.i4.0
    IL_0441:  call       int32 Game.TerrainData::MakeBlockValue(int32)
    IL_0446:  callvirt   instance void Game.TerrainData::SetCellValueFast(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_044b:  ldloca.s   V_25
    IL_044d:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0452:  brfalse    IL_050c

    IL_0457:  ldarg.0
    IL_0458:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_045d:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0462:  ldloc.s    V_41
    IL_0464:  ldloc.s    V_33
    IL_0466:  ldc.i4.1
    IL_0467:  sub
    IL_0468:  ldloc.s    V_42
    IL_046a:  ldloca.s   V_25
    IL_046c:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
    IL_0471:  callvirt   instance void Game.TerrainData::SetCellValueFast(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_0476:  ldloc.s    V_40
    IL_0478:  ldc.i4.1
    IL_0479:  bne.un     IL_050c

    IL_047e:  ldc.i4.0
    IL_047f:  stloc.s    V_43
    IL_0481:  ldloc.s    V_30
    IL_0483:  ldc.r4     0.2
    IL_0488:  bge.un.s   IL_0495

    IL_048a:  ldc.i4.s   20
    IL_048c:  call       int32 Game.TerrainData::MakeBlockValue(int32)
    IL_0491:  stloc.s    V_43
    IL_0493:  br.s       IL_04f0

    IL_0495:  ldloc.s    V_30
    IL_0497:  ldc.r4     0.30000001
    IL_049c:  bge.un.s   IL_04a9

    IL_049e:  ldc.i4.s   24
    IL_04a0:  call       int32 Game.TerrainData::MakeBlockValue(int32)
    IL_04a5:  stloc.s    V_43
    IL_04a7:  br.s       IL_04f0

    IL_04a9:  ldloc.s    V_30
    IL_04ab:  ldc.r4     0.40000001
    IL_04b0:  bge.un.s   IL_04bd

    IL_04b2:  ldc.i4.s   25
    IL_04b4:  call       int32 Game.TerrainData::MakeBlockValue(int32)
    IL_04b9:  stloc.s    V_43
    IL_04bb:  br.s       IL_04f0

    IL_04bd:  ldloc.s    V_30
    IL_04bf:  ldc.r4     0.5
    IL_04c4:  bge.un.s   IL_04d3

    IL_04c6:  ldc.i4.s   31
    IL_04c8:  ldc.i4.0
    IL_04c9:  ldc.i4.4
    IL_04ca:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_04cf:  stloc.s    V_43
    IL_04d1:  br.s       IL_04f0

    IL_04d3:  ldloc.s    V_30
    IL_04d5:  ldc.r4     0.60000002
    IL_04da:  bge.un.s   IL_04f0

    IL_04dc:  ldc.i4     0x84
    IL_04e1:  ldc.i4.0
    IL_04e2:  ldloc.s    V_17
    IL_04e4:  call       int32 Game.CellFace::OppositeFace(int32)
    IL_04e9:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_04ee:  stloc.s    V_43
    IL_04f0:  ldloc.s    V_43
    IL_04f2:  brfalse.s  IL_050c

    IL_04f4:  ldarg.0
    IL_04f5:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_04fa:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_04ff:  ldloc.s    V_41
    IL_0501:  ldloc.s    V_33
    IL_0503:  ldloc.s    V_42
    IL_0505:  ldloc.s    V_43
    IL_0507:  callvirt   instance void Game.TerrainData::SetCellValueFast(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_050c:  ldloc.s    V_28
    IL_050e:  brfalse    IL_07ba

    IL_0513:  ldloc.s    V_29
    IL_0515:  ldc.r4     0.30000001
    IL_051a:  bge.un     IL_0623

    IL_051f:  ldloc.s    V_26
    IL_0521:  ldc.i4.0
    IL_0522:  ldc.i4.0
    IL_0523:  ldloc.s    V_19
    IL_0525:  ldc.i4.5
    IL_0526:  call       int32 Game.CellFace::Point3ToFace(valuetype [Engine]Engine.Point3,
                                                           int32)
    IL_052b:  call       int32 Game.StairsBlock::SetRotation(int32,
                                                             int32)
    IL_0530:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_0535:  stloc.s    V_44
    IL_0537:  ldloc.s    V_26
    IL_0539:  ldc.i4.0
    IL_053a:  ldc.i4.0
    IL_053b:  ldloc.s    V_19
    IL_053d:  ldc.i4.5
    IL_053e:  call       int32 Game.CellFace::Point3ToFace(valuetype [Engine]Engine.Point3,
                                                           int32)
    IL_0543:  call       int32 Game.CellFace::OppositeFace(int32)
    IL_0548:  call       int32 Game.StairsBlock::SetRotation(int32,
                                                             int32)
    IL_054d:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_0552:  stloc.s    V_45
    IL_0554:  ldarg.0
    IL_0555:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_055a:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_055f:  ldloc.s    V_41
    IL_0561:  ldloc.s    V_19
    IL_0563:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0568:  add
    IL_0569:  ldloc.s    V_33
    IL_056b:  ldc.i4.1
    IL_056c:  sub
    IL_056d:  ldloc.s    V_42
    IL_056f:  ldloc.s    V_19
    IL_0571:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0576:  add
    IL_0577:  ldloc.s    V_44
    IL_0579:  callvirt   instance void Game.TerrainData::SetCellValueFast(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_057e:  ldarg.0
    IL_057f:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_0584:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0589:  ldloc.s    V_41
    IL_058b:  ldloc.s    V_19
    IL_058d:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0592:  sub
    IL_0593:  ldloc.s    V_33
    IL_0595:  ldc.i4.1
    IL_0596:  sub
    IL_0597:  ldloc.s    V_42
    IL_0599:  ldloc.s    V_19
    IL_059b:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_05a0:  sub
    IL_05a1:  ldloc.s    V_45
    IL_05a3:  callvirt   instance void Game.TerrainData::SetCellValueFast(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_05a8:  ldloc.s    V_40
    IL_05aa:  ldc.i4.m1
    IL_05ab:  bne.un.s   IL_05e4

    IL_05ad:  ldloc.s    V_26
    IL_05af:  ldc.i4.0
    IL_05b0:  ldc.i4.0
    IL_05b1:  ldloc.s    V_18
    IL_05b3:  ldc.i4.5
    IL_05b4:  call       int32 Game.CellFace::Point3ToFace(valuetype [Engine]Engine.Point3,
                                                           int32)
    IL_05b9:  call       int32 Game.CellFace::OppositeFace(int32)
    IL_05be:  call       int32 Game.StairsBlock::SetRotation(int32,
                                                             int32)
    IL_05c3:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_05c8:  stloc.s    V_46
    IL_05ca:  ldarg.0
    IL_05cb:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_05d0:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_05d5:  ldloc.s    V_41
    IL_05d7:  ldloc.s    V_33
    IL_05d9:  ldc.i4.1
    IL_05da:  sub
    IL_05db:  ldloc.s    V_42
    IL_05dd:  ldloc.s    V_46
    IL_05df:  callvirt   instance void Game.TerrainData::SetCellValueFast(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_05e4:  ldloc.s    V_40
    IL_05e6:  ldc.i4.2
    IL_05e7:  bne.un     IL_07ba

    IL_05ec:  ldloc.s    V_26
    IL_05ee:  ldc.i4.0
    IL_05ef:  ldc.i4.0
    IL_05f0:  ldloc.s    V_18
    IL_05f2:  ldc.i4.5
    IL_05f3:  call       int32 Game.CellFace::Point3ToFace(valuetype [Engine]Engine.Point3,
                                                           int32)
    IL_05f8:  call       int32 Game.StairsBlock::SetRotation(int32,
                                                             int32)
    IL_05fd:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_0602:  stloc.s    V_47
    IL_0604:  ldarg.0
    IL_0605:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_060a:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_060f:  ldloc.s    V_41
    IL_0611:  ldloc.s    V_33
    IL_0613:  ldc.i4.1
    IL_0614:  sub
    IL_0615:  ldloc.s    V_42
    IL_0617:  ldloc.s    V_47
    IL_0619:  callvirt   instance void Game.TerrainData::SetCellValueFast(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_061e:  br         IL_07ba

    IL_0623:  ldloc.s    V_29
    IL_0625:  ldc.r4     0.40000001
    IL_062a:  bge.un     IL_06dd

    IL_062f:  ldarg.0
    IL_0630:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_0635:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_063a:  ldloc.s    V_41
    IL_063c:  ldloc.s    V_19
    IL_063e:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0643:  add
    IL_0644:  ldloc.s    V_33
    IL_0646:  ldc.i4.1
    IL_0647:  sub
    IL_0648:  ldloc.s    V_42
    IL_064a:  ldloc.s    V_19
    IL_064c:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0651:  add
    IL_0652:  ldloc.s    V_27
    IL_0654:  call       int32 Game.TerrainData::MakeBlockValue(int32)
    IL_0659:  callvirt   instance void Game.TerrainData::SetCellValueFast(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_065e:  ldarg.0
    IL_065f:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_0664:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0669:  ldloc.s    V_41
    IL_066b:  ldloc.s    V_19
    IL_066d:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0672:  sub
    IL_0673:  ldloc.s    V_33
    IL_0675:  ldc.i4.1
    IL_0676:  sub
    IL_0677:  ldloc.s    V_42
    IL_0679:  ldloc.s    V_19
    IL_067b:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0680:  sub
    IL_0681:  ldloc.s    V_27
    IL_0683:  call       int32 Game.TerrainData::MakeBlockValue(int32)
    IL_0688:  callvirt   instance void Game.TerrainData::SetCellValueFast(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_068d:  ldloc.s    V_40
    IL_068f:  ldc.i4.m1
    IL_0690:  bne.un.s   IL_06b1

    IL_0692:  ldarg.0
    IL_0693:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_0698:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_069d:  ldloc.s    V_41
    IL_069f:  ldloc.s    V_33
    IL_06a1:  ldc.i4.1
    IL_06a2:  sub
    IL_06a3:  ldloc.s    V_42
    IL_06a5:  ldloc.s    V_27
    IL_06a7:  call       int32 Game.TerrainData::MakeBlockValue(int32)
    IL_06ac:  callvirt   instance void Game.TerrainData::SetCellValueFast(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_06b1:  ldloc.s    V_40
    IL_06b3:  ldc.i4.2
    IL_06b4:  bne.un     IL_07ba

    IL_06b9:  ldarg.0
    IL_06ba:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_06bf:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_06c4:  ldloc.s    V_41
    IL_06c6:  ldloc.s    V_33
    IL_06c8:  ldc.i4.1
    IL_06c9:  sub
    IL_06ca:  ldloc.s    V_42
    IL_06cc:  ldloc.s    V_27
    IL_06ce:  call       int32 Game.TerrainData::MakeBlockValue(int32)
    IL_06d3:  callvirt   instance void Game.TerrainData::SetCellValueFast(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_06d8:  br         IL_07ba

    IL_06dd:  ldloc.s    V_29
    IL_06df:  ldc.r4     0.60000002
    IL_06e4:  bge.un     IL_07ba

    IL_06e9:  ldloc.s    V_40
    IL_06eb:  brfalse.s  IL_06f2

    IL_06ed:  ldloc.s    V_40
    IL_06ef:  ldc.i4.1
    IL_06f0:  bne.un.s   IL_0767

    IL_06f2:  ldarg.0
    IL_06f3:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_06f8:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_06fd:  ldloc.s    V_41
    IL_06ff:  ldloc.s    V_19
    IL_0701:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0706:  add
    IL_0707:  ldloc.s    V_33
    IL_0709:  ldc.i4.1
    IL_070a:  sub
    IL_070b:  ldloc.s    V_42
    IL_070d:  ldloc.s    V_19
    IL_070f:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0714:  add
    IL_0715:  ldc.i4.s   31
    IL_0717:  ldc.i4.0
    IL_0718:  ldloc.s    V_19
    IL_071a:  ldc.i4.5
    IL_071b:  call       int32 Game.CellFace::Point3ToFace(valuetype [Engine]Engine.Point3,
                                                           int32)
    IL_0720:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_0725:  callvirt   instance void Game.TerrainData::SetCellValueFast(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_072a:  ldarg.0
    IL_072b:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_0730:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0735:  ldloc.s    V_41
    IL_0737:  ldloc.s    V_19
    IL_0739:  ldfld      int32 [Engine]Engine.Point3::X
    IL_073e:  sub
    IL_073f:  ldloc.s    V_33
    IL_0741:  ldc.i4.1
    IL_0742:  sub
    IL_0743:  ldloc.s    V_42
    IL_0745:  ldloc.s    V_19
    IL_0747:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_074c:  sub
    IL_074d:  ldc.i4.s   31
    IL_074f:  ldc.i4.0
    IL_0750:  ldloc.s    V_19
    IL_0752:  ldc.i4.5
    IL_0753:  call       int32 Game.CellFace::Point3ToFace(valuetype [Engine]Engine.Point3,
                                                           int32)
    IL_0758:  call       int32 Game.CellFace::OppositeFace(int32)
    IL_075d:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_0762:  callvirt   instance void Game.TerrainData::SetCellValueFast(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_0767:  ldloc.s    V_40
    IL_0769:  ldc.i4.m1
    IL_076a:  bne.un.s   IL_0793

    IL_076c:  ldarg.0
    IL_076d:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_0772:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0777:  ldloc.s    V_41
    IL_0779:  ldloc.s    V_33
    IL_077b:  ldc.i4.1
    IL_077c:  sub
    IL_077d:  ldloc.s    V_42
    IL_077f:  ldc.i4.s   31
    IL_0781:  ldc.i4.0
    IL_0782:  ldloc.s    V_17
    IL_0784:  call       int32 Game.CellFace::OppositeFace(int32)
    IL_0789:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_078e:  callvirt   instance void Game.TerrainData::SetCellValueFast(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_0793:  ldloc.s    V_40
    IL_0795:  ldc.i4.2
    IL_0796:  bne.un.s   IL_07ba

    IL_0798:  ldarg.0
    IL_0799:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_079e:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_07a3:  ldloc.s    V_41
    IL_07a5:  ldloc.s    V_33
    IL_07a7:  ldc.i4.1
    IL_07a8:  sub
    IL_07a9:  ldloc.s    V_42
    IL_07ab:  ldc.i4.s   31
    IL_07ad:  ldc.i4.0
    IL_07ae:  ldloc.s    V_17
    IL_07b0:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_07b5:  callvirt   instance void Game.TerrainData::SetCellValueFast(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_07ba:  ldloc.s    V_40
    IL_07bc:  ldc.i4.1
    IL_07bd:  add
    IL_07be:  stloc.s    V_40
    IL_07c0:  ldloc.s    V_40
    IL_07c2:  ldloc.s    V_32
    IL_07c4:  ble        IL_03c8

    IL_07c9:  br.s       IL_07d9

    IL_07cb:  ldloc.s    V_16
    IL_07cd:  ldc.i4.1
    IL_07ce:  add
    IL_07cf:  stloc.s    V_16
    IL_07d1:  ldloc.s    V_16
    IL_07d3:  ldc.i4.4
    IL_07d4:  blt        IL_0150

    IL_07d9:  ldloc.s    V_11
    IL_07db:  ldc.i4.1
    IL_07dc:  add
    IL_07dd:  stloc.s    V_11
    IL_07df:  ldloc.s    V_11
    IL_07e1:  ldloc.s    V_9
    IL_07e3:  blt        IL_00e9

    IL_07e8:  ldloc.s    V_6
    IL_07ea:  ldc.i4.1
    IL_07eb:  add
    IL_07ec:  stloc.s    V_6
    IL_07ee:  ldloc.s    V_6
    IL_07f0:  ldloc.s    V_5
    IL_07f2:  blt        IL_007f

    IL_07f7:  ret
  } // end of method TerrainContentsGenerator::GenerateGraves

  .method private hidebysig instance void 
          GenerateSnowAndIce(int32 chunkX,
                             int32 chunkZ) cil managed
  {
    // 代码大小       455 (0x1c7)
    .maxstack  8
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7,
             int32 V_8,
             int32 V_9,
             float32 V_10,
             int32 V_11)
    IL_0000:  ldarg.1
    IL_0001:  ldc.i4.s   16
    IL_0003:  mul
    IL_0004:  dup
    IL_0005:  ldc.i4.s   16
    IL_0007:  add
    IL_0008:  stloc.0
    IL_0009:  ldc.i4.0
    IL_000a:  stloc.1
    IL_000b:  ldc.i4     0x80
    IL_0010:  stloc.2
    IL_0011:  ldarg.2
    IL_0012:  ldc.i4.s   16
    IL_0014:  mul
    IL_0015:  stloc.3
    IL_0016:  ldloc.3
    IL_0017:  ldc.i4.s   16
    IL_0019:  add
    IL_001a:  stloc.s    V_4
    IL_001c:  stloc.s    V_5
    IL_001e:  br         IL_01be

    IL_0023:  ldloc.3
    IL_0024:  stloc.s    V_6
    IL_0026:  br         IL_01af

    IL_002b:  ldloc.2
    IL_002c:  ldc.i4.2
    IL_002d:  sub
    IL_002e:  stloc.s    V_7
    IL_0030:  br         IL_01a1

    IL_0035:  ldarg.0
    IL_0036:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_003b:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0040:  ldloc.s    V_5
    IL_0042:  ldloc.s    V_7
    IL_0044:  ldloc.s    V_6
    IL_0046:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32,
                                                                           int32,
                                                                           int32)
    IL_004b:  stloc.s    V_8
    IL_004d:  ldloc.s    V_8
    IL_004f:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0054:  stloc.s    V_9
    IL_0056:  ldloc.s    V_9
    IL_0058:  brfalse    IL_019b

    IL_005d:  ldarg.0
    IL_005e:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_0063:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0068:  ldloc.s    V_5
    IL_006a:  ldloc.s    V_6
    IL_006c:  callvirt   instance int32 Game.TerrainData::GetTemperatureFast(int32,
                                                                             int32)
    IL_0071:  ldloc.s    V_7
    IL_0073:  call       bool Game.SubsystemWeather::IsPlaceFrozen(int32,
                                                                   int32)
    IL_0078:  brfalse    IL_01a9

    IL_007d:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0082:  ldloc.s    V_9
    IL_0084:  ldelem.ref
    IL_0085:  isinst     Game.WaterBlock
    IL_008a:  brfalse    IL_0153

    IL_008f:  ldarg.0
    IL_0090:  ldloc.s    V_5
    IL_0092:  conv.r4
    IL_0093:  ldloc.s    V_6
    IL_0095:  conv.r4
    IL_0096:  call       instance float32 Game.TerrainContentsGenerator::CalculateOceanShoreDistance(float32,
                                                                                                     float32)
    IL_009b:  ldc.r4     -20.
    IL_00a0:  ble.un     IL_0176

    IL_00a5:  ldc.i4.1
    IL_00a6:  ldc.r4     2.
    IL_00ab:  ldloc.s    V_5
    IL_00ad:  conv.r4
    IL_00ae:  ldloc.s    V_6
    IL_00b0:  conv.r4
    IL_00b1:  ldc.r4     0.2
    IL_00b6:  ldc.i4.1
    IL_00b7:  ldc.r4     2.
    IL_00bc:  ldc.r4     1.
    IL_00c1:  call       float32 Game.SimplexNoise::OctavedNoise(float32,
                                                                 float32,
                                                                 float32,
                                                                 int32,
                                                                 float32,
                                                                 float32)
    IL_00c6:  call       float32 [Engine]Engine.MathUtils::Sqr(float32)
    IL_00cb:  mul
    IL_00cc:  conv.i4
    IL_00cd:  add
    IL_00ce:  conv.r4
    IL_00cf:  stloc.s    V_10
    IL_00d1:  ldc.i4.0
    IL_00d2:  stloc.s    V_11
    IL_00d4:  br.s       IL_0125

    IL_00d6:  ldloc.s    V_7
    IL_00d8:  ldloc.s    V_11
    IL_00da:  sub
    IL_00db:  ldc.i4.0
    IL_00dc:  ble.s      IL_011f

    IL_00de:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_00e3:  ldarg.0
    IL_00e4:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_00e9:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_00ee:  ldloc.s    V_5
    IL_00f0:  ldloc.s    V_7
    IL_00f2:  ldloc.s    V_11
    IL_00f4:  sub
    IL_00f5:  ldloc.s    V_6
    IL_00f7:  callvirt   instance int32 Game.TerrainData::GetCellContentsFast(int32,
                                                                              int32,
                                                                              int32)
    IL_00fc:  ldelem.ref
    IL_00fd:  isinst     Game.WaterBlock
    IL_0102:  brfalse.s  IL_012c

    IL_0104:  ldarg.0
    IL_0105:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_010a:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_010f:  ldloc.s    V_5
    IL_0111:  ldloc.s    V_7
    IL_0113:  ldloc.s    V_11
    IL_0115:  sub
    IL_0116:  ldloc.s    V_6
    IL_0118:  ldc.i4.s   62
    IL_011a:  callvirt   instance void Game.TerrainData::SetCellValueFast(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_011f:  ldloc.s    V_11
    IL_0121:  ldc.i4.1
    IL_0122:  add
    IL_0123:  stloc.s    V_11
    IL_0125:  ldloc.s    V_11
    IL_0127:  conv.r4
    IL_0128:  ldloc.s    V_10
    IL_012a:  blt.s      IL_00d6

    IL_012c:  ldloc.s    V_5
    IL_012e:  ldloc.s    V_6
    IL_0130:  call       bool Game.SubsystemWeather::ShaftHasSnowOnIce(int32,
                                                                       int32)
    IL_0135:  brfalse.s  IL_0176

    IL_0137:  ldarg.0
    IL_0138:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_013d:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0142:  ldloc.s    V_5
    IL_0144:  ldloc.s    V_7
    IL_0146:  ldc.i4.1
    IL_0147:  add
    IL_0148:  ldloc.s    V_6
    IL_014a:  ldc.i4.s   61
    IL_014c:  callvirt   instance void Game.TerrainData::SetCellValueFast(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_0151:  br.s       IL_0176

    IL_0153:  ldloc.s    V_8
    IL_0155:  call       bool Game.SubsystemSnowBlockBehavior::CanSupportSnow(int32)
    IL_015a:  brfalse.s  IL_0176

    IL_015c:  ldarg.0
    IL_015d:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_0162:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0167:  ldloc.s    V_5
    IL_0169:  ldloc.s    V_7
    IL_016b:  ldc.i4.1
    IL_016c:  add
    IL_016d:  ldloc.s    V_6
    IL_016f:  ldc.i4.s   61
    IL_0171:  callvirt   instance void Game.TerrainData::SetCellValueFast(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_0176:  ldloc.s    V_9
    IL_0178:  ldc.i4.8
    IL_0179:  bne.un.s   IL_01a9

    IL_017b:  ldarg.0
    IL_017c:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_0181:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0186:  ldloc.s    V_5
    IL_0188:  ldloc.s    V_7
    IL_018a:  ldloc.s    V_6
    IL_018c:  ldc.i4.8
    IL_018d:  ldc.i4.0
    IL_018e:  ldc.i4.1
    IL_018f:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_0194:  callvirt   instance void Game.TerrainData::SetCellValueFast(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_0199:  br.s       IL_01a9

    IL_019b:  ldloc.s    V_7
    IL_019d:  ldc.i4.1
    IL_019e:  sub
    IL_019f:  stloc.s    V_7
    IL_01a1:  ldloc.s    V_7
    IL_01a3:  ldloc.1
    IL_01a4:  bge        IL_0035

    IL_01a9:  ldloc.s    V_6
    IL_01ab:  ldc.i4.1
    IL_01ac:  add
    IL_01ad:  stloc.s    V_6
    IL_01af:  ldloc.s    V_6
    IL_01b1:  ldloc.s    V_4
    IL_01b3:  blt        IL_002b

    IL_01b8:  ldloc.s    V_5
    IL_01ba:  ldc.i4.1
    IL_01bb:  add
    IL_01bc:  stloc.s    V_5
    IL_01be:  ldloc.s    V_5
    IL_01c0:  ldloc.0
    IL_01c1:  blt        IL_0023

    IL_01c6:  ret
  } // end of method TerrainContentsGenerator::GenerateSnowAndIce

  .method private hidebysig instance void 
          PropagateFluidsDownwards(int32 chunkX,
                                   int32 chunkZ) cil managed
  {
    // 代码大小       169 (0xa9)
    .maxstack  4
    .locals init (class Game.TerrainData V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7,
             int32 V_8,
             int32 V_9,
             int32 V_10,
             int32 V_11)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_000b:  stloc.0
    IL_000c:  ldarg.1
    IL_000d:  ldc.i4.s   16
    IL_000f:  mul
    IL_0010:  dup
    IL_0011:  ldc.i4.s   16
    IL_0013:  add
    IL_0014:  stloc.1
    IL_0015:  ldc.i4.0
    IL_0016:  stloc.2
    IL_0017:  ldc.i4     0x80
    IL_001c:  stloc.3
    IL_001d:  ldarg.2
    IL_001e:  ldc.i4.s   16
    IL_0020:  mul
    IL_0021:  stloc.s    V_4
    IL_0023:  ldloc.s    V_4
    IL_0025:  ldc.i4.s   16
    IL_0027:  add
    IL_0028:  stloc.s    V_5
    IL_002a:  stloc.s    V_6
    IL_002c:  br.s       IL_00a3

    IL_002e:  ldloc.s    V_4
    IL_0030:  stloc.s    V_7
    IL_0032:  br.s       IL_0097

    IL_0034:  ldloc.0
    IL_0035:  ldloc.s    V_6
    IL_0037:  ldloc.3
    IL_0038:  ldc.i4.1
    IL_0039:  sub
    IL_003a:  ldloc.s    V_7
    IL_003c:  callvirt   instance int32 Game.TerrainData::CalculateCellIndex(int32,
                                                                             int32,
                                                                             int32)
    IL_0041:  stloc.s    V_8
    IL_0043:  ldc.i4.0
    IL_0044:  stloc.s    V_9
    IL_0046:  ldloc.3
    IL_0047:  ldc.i4.1
    IL_0048:  sub
    IL_0049:  stloc.s    V_10
    IL_004b:  br.s       IL_008c

    IL_004d:  ldloc.0
    IL_004e:  ldloc.s    V_8
    IL_0050:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32)
    IL_0055:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_005a:  stloc.s    V_11
    IL_005c:  ldloc.s    V_11
    IL_005e:  brtrue.s   IL_007c

    IL_0060:  ldloc.s    V_9
    IL_0062:  brfalse.s  IL_007c

    IL_0064:  call       class Game.FluidBlock[] Game.BlocksManager::get_FluidBlocks()
    IL_0069:  ldloc.s    V_9
    IL_006b:  ldelem.ref
    IL_006c:  brfalse.s  IL_007c

    IL_006e:  ldloc.0
    IL_006f:  ldloc.s    V_8
    IL_0071:  ldloc.s    V_9
    IL_0073:  callvirt   instance void Game.TerrainData::SetCellValueFast(int32,
                                                                          int32)
    IL_0078:  ldloc.s    V_9
    IL_007a:  stloc.s    V_11
    IL_007c:  ldloc.s    V_11
    IL_007e:  stloc.s    V_9
    IL_0080:  ldloc.s    V_10
    IL_0082:  ldc.i4.1
    IL_0083:  sub
    IL_0084:  stloc.s    V_10
    IL_0086:  ldloc.s    V_8
    IL_0088:  ldc.i4.1
    IL_0089:  sub
    IL_008a:  stloc.s    V_8
    IL_008c:  ldloc.s    V_10
    IL_008e:  ldloc.2
    IL_008f:  bge.s      IL_004d

    IL_0091:  ldloc.s    V_7
    IL_0093:  ldc.i4.1
    IL_0094:  add
    IL_0095:  stloc.s    V_7
    IL_0097:  ldloc.s    V_7
    IL_0099:  ldloc.s    V_5
    IL_009b:  blt.s      IL_0034

    IL_009d:  ldloc.s    V_6
    IL_009f:  ldc.i4.1
    IL_00a0:  add
    IL_00a1:  stloc.s    V_6
    IL_00a3:  ldloc.s    V_6
    IL_00a5:  ldloc.1
    IL_00a6:  blt.s      IL_002e

    IL_00a8:  ret
  } // end of method TerrainContentsGenerator::PropagateFluidsDownwards

  .method private hidebysig instance void 
          UpdateFluidIsTop(int32 chunkX,
                           int32 chunkZ) cil managed
  {
    // 代码大小       212 (0xd4)
    .maxstack  6
    .locals init (class Game.TerrainData V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7,
             int32 V_8,
             int32 V_9,
             int32 V_10,
             int32 V_11,
             int32 V_12,
             int32 V_13)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_000b:  stloc.0
    IL_000c:  ldarg.1
    IL_000d:  ldc.i4.s   16
    IL_000f:  mul
    IL_0010:  dup
    IL_0011:  ldc.i4.s   16
    IL_0013:  add
    IL_0014:  stloc.1
    IL_0015:  ldc.i4.0
    IL_0016:  stloc.2
    IL_0017:  ldc.i4     0x80
    IL_001c:  stloc.3
    IL_001d:  ldarg.2
    IL_001e:  ldc.i4.s   16
    IL_0020:  mul
    IL_0021:  stloc.s    V_4
    IL_0023:  ldloc.s    V_4
    IL_0025:  ldc.i4.s   16
    IL_0027:  add
    IL_0028:  stloc.s    V_5
    IL_002a:  stloc.s    V_6
    IL_002c:  br         IL_00cb

    IL_0031:  ldloc.s    V_4
    IL_0033:  stloc.s    V_7
    IL_0035:  br         IL_00bc

    IL_003a:  ldloc.0
    IL_003b:  ldloc.s    V_6
    IL_003d:  ldloc.3
    IL_003e:  ldc.i4.1
    IL_003f:  sub
    IL_0040:  ldloc.s    V_7
    IL_0042:  callvirt   instance int32 Game.TerrainData::CalculateCellIndex(int32,
                                                                             int32,
                                                                             int32)
    IL_0047:  stloc.s    V_8
    IL_0049:  ldc.i4.0
    IL_004a:  stloc.s    V_9
    IL_004c:  ldloc.3
    IL_004d:  ldc.i4.1
    IL_004e:  sub
    IL_004f:  stloc.s    V_10
    IL_0051:  br.s       IL_00b1

    IL_0053:  ldloc.0
    IL_0054:  ldloc.s    V_8
    IL_0056:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32)
    IL_005b:  stloc.s    V_11
    IL_005d:  ldloc.s    V_11
    IL_005f:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0064:  stloc.s    V_12
    IL_0066:  ldloc.s    V_12
    IL_0068:  ldloc.s    V_9
    IL_006a:  beq.s      IL_00a1

    IL_006c:  call       class Game.FluidBlock[] Game.BlocksManager::get_FluidBlocks()
    IL_0071:  ldloc.s    V_12
    IL_0073:  ldelem.ref
    IL_0074:  brfalse.s  IL_00a1

    IL_0076:  call       class Game.FluidBlock[] Game.BlocksManager::get_FluidBlocks()
    IL_007b:  ldloc.s    V_9
    IL_007d:  ldelem.ref
    IL_007e:  brtrue.s   IL_00a1

    IL_0080:  ldloc.s    V_11
    IL_0082:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0087:  stloc.s    V_13
    IL_0089:  ldloc.0
    IL_008a:  ldloc.s    V_8
    IL_008c:  ldloc.s    V_12
    IL_008e:  ldc.i4.0
    IL_008f:  ldloc.s    V_13
    IL_0091:  ldc.i4.1
    IL_0092:  call       int32 Game.FluidBlock::SetIsTop(int32,
                                                         bool)
    IL_0097:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_009c:  callvirt   instance void Game.TerrainData::SetCellValueFast(int32,
                                                                          int32)
    IL_00a1:  ldloc.s    V_12
    IL_00a3:  stloc.s    V_9
    IL_00a5:  ldloc.s    V_10
    IL_00a7:  ldc.i4.1
    IL_00a8:  sub
    IL_00a9:  stloc.s    V_10
    IL_00ab:  ldloc.s    V_8
    IL_00ad:  ldc.i4.1
    IL_00ae:  sub
    IL_00af:  stloc.s    V_8
    IL_00b1:  ldloc.s    V_10
    IL_00b3:  ldloc.2
    IL_00b4:  bge.s      IL_0053

    IL_00b6:  ldloc.s    V_7
    IL_00b8:  ldc.i4.1
    IL_00b9:  add
    IL_00ba:  stloc.s    V_7
    IL_00bc:  ldloc.s    V_7
    IL_00be:  ldloc.s    V_5
    IL_00c0:  blt        IL_003a

    IL_00c5:  ldloc.s    V_6
    IL_00c7:  ldc.i4.1
    IL_00c8:  add
    IL_00c9:  stloc.s    V_6
    IL_00cb:  ldloc.s    V_6
    IL_00cd:  ldloc.1
    IL_00ce:  blt        IL_0031

    IL_00d3:  ret
  } // end of method TerrainContentsGenerator::UpdateFluidIsTop

  .method private hidebysig static void  CreateBrushes() cil managed
  {
    // 代码大小       4394 (0x112a)
    .maxstack  8
    .locals init (class Game.Random V_0,
             int32[] V_1,
             int32[] V_2,
             int32 V_3,
             class Game.TerrainBrush V_4,
             int32 V_5,
             int32 V_6,
             valuetype [Engine]Engine.Vector3 V_7,
             int32 V_8,
             valuetype [Engine]Engine.Vector3 V_9,
             int32 V_10,
             int32 V_11,
             class Game.TerrainBrush V_12,
             int32 V_13,
             int32 V_14,
             valuetype [Engine]Engine.Vector3 V_15,
             int32 V_16,
             valuetype [Engine]Engine.Vector3 V_17,
             int32 V_18,
             int32 V_19,
             class Game.TerrainBrush V_20,
             int32 V_21,
             int32 V_22,
             valuetype [Engine]Engine.Vector3 V_23,
             int32 V_24,
             valuetype [Engine]Engine.Vector3 V_25,
             int32 V_26,
             int32 V_27,
             class Game.TerrainBrush V_28,
             int32 V_29,
             int32 V_30,
             valuetype [Engine]Engine.Vector3 V_31,
             int32 V_32,
             valuetype [Engine]Engine.Vector3 V_33,
             int32 V_34,
             int32 V_35,
             class Game.TerrainBrush V_36,
             int32 V_37,
             int32 V_38,
             valuetype [Engine]Engine.Vector3 V_39,
             int32 V_40,
             valuetype [Engine]Engine.Vector3 V_41,
             int32 V_42,
             int32 V_43,
             class Game.TerrainBrush V_44,
             int32 V_45,
             int32 V_46,
             valuetype [Engine]Engine.Vector3 V_47,
             int32 V_48,
             valuetype [Engine]Engine.Vector3 V_49,
             int32 V_50,
             int32 V_51,
             class Game.TerrainBrush V_52,
             int32 V_53,
             int32 V_54,
             valuetype [Engine]Engine.Vector3 V_55,
             int32 V_56,
             valuetype [Engine]Engine.Vector3 V_57,
             int32 V_58,
             int32 V_59,
             class Game.TerrainBrush V_60,
             int32 V_61,
             int32 V_62,
             valuetype [Engine]Engine.Vector3 V_63,
             int32 V_64,
             valuetype [Engine]Engine.Vector3 V_65,
             int32 V_66,
             int32 V_67,
             class Game.TerrainBrush V_68,
             int32 V_69,
             int32 V_70,
             valuetype [Engine]Engine.Vector3 V_71,
             int32 V_72,
             valuetype [Engine]Engine.Vector3 V_73,
             int32 V_74,
             int32 V_75,
             class Game.TerrainBrush V_76,
             int32 V_77,
             int32 V_78,
             valuetype [Engine]Engine.Vector3 V_79,
             int32 V_80,
             valuetype [Engine]Engine.Vector3 V_81,
             int32 V_82,
             int32 V_83,
             class Game.TerrainBrush V_84,
             int32 V_85,
             int32 V_86,
             valuetype [Engine]Engine.Vector3 V_87,
             int32 V_88,
             valuetype [Engine]Engine.Vector3 V_89,
             int32 V_90,
             int32 V_91,
             class Game.TerrainBrush V_92,
             int32 V_93,
             int32 V_94,
             valuetype [Engine]Engine.Vector3 V_95,
             int32 V_96,
             valuetype [Engine]Engine.Vector3 V_97,
             int32 V_98,
             int32 V_99,
             class Game.TerrainBrush V_100,
             int32 V_101,
             int32 V_102,
             valuetype [Engine]Engine.Vector3 V_103,
             int32 V_104,
             valuetype [Engine]Engine.Vector3 V_105,
             int32 V_106,
             int32 V_107,
             class Game.TerrainBrush V_108,
             int32 V_109,
             int32 V_110,
             valuetype [Engine]Engine.Vector3 V_111,
             int32 V_112,
             valuetype [Engine]Engine.Vector3 V_113,
             int32 V_114,
             int32 V_115,
             class Game.TerrainBrush V_116,
             int32 V_117,
             int32 V_118,
             float32 V_119,
             bool V_120,
             int32 V_121,
             int32 V_122,
             valuetype [Engine]Engine.Vector2 V_123,
             float32 V_124,
             int32 V_125,
             int32 V_126,
             int32 V_127,
             class Game.TerrainBrush V_128,
             int32 V_129,
             int32 V_130,
             float32 V_131,
             bool V_132,
             int32 V_133,
             int32 V_134,
             valuetype [Engine]Engine.Vector2 V_135,
             float32 V_136,
             int32 V_137,
             int32 V_138,
             int32 V_139,
             int32 V_140,
             int32 V_141,
             class Game.TerrainBrush V_142,
             int32 V_143,
             int32 V_144,
             int32 V_145,
             int32 V_146,
             int32 V_147,
             int32 V_148,
             valuetype [Engine]Engine.Vector3 V_149,
             valuetype [Engine]Engine.Vector3 V_150,
             int32 V_151)
    IL_0000:  ldc.i4.s   17
    IL_0002:  newobj     instance void Game.Random::.ctor(int32)
    IL_0007:  stloc.0
    IL_0008:  ldc.i4.0
    IL_0009:  stloc.3
    IL_000a:  br         IL_0103

    IL_000f:  newobj     instance void Game.TerrainBrush::.ctor()
    IL_0014:  stloc.s    V_4
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.8
    IL_0018:  ldc.i4.s   12
    IL_001a:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_001f:  stloc.s    V_5
    IL_0021:  ldc.i4.0
    IL_0022:  stloc.s    V_6
    IL_0024:  br         IL_00cc

    IL_0029:  ldc.r4     0.5
    IL_002e:  ldloc.0
    IL_002f:  ldc.r4     -1.
    IL_0034:  ldc.r4     1.
    IL_0039:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_003e:  ldloc.0
    IL_003f:  ldc.r4     -1.
    IL_0044:  ldc.r4     1.
    IL_0049:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_004e:  ldloc.0
    IL_004f:  ldc.r4     -1.
    IL_0054:  ldc.r4     1.
    IL_0059:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_005e:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0063:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0068:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_006d:  stloc.s    V_7
    IL_006f:  ldloc.0
    IL_0070:  ldc.i4.6
    IL_0071:  ldc.i4.s   10
    IL_0073:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0078:  stloc.s    V_8
    IL_007a:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_007f:  stloc.s    V_9
    IL_0081:  ldc.i4.0
    IL_0082:  stloc.s    V_10
    IL_0084:  br.s       IL_00c0

    IL_0086:  ldloc.s    V_4
    IL_0088:  ldloc.s    V_9
    IL_008a:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_008f:  conv.i4
    IL_0090:  ldloc.s    V_9
    IL_0092:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0097:  conv.i4
    IL_0098:  ldloc.s    V_9
    IL_009a:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_009f:  conv.i4
    IL_00a0:  ldc.i4.1
    IL_00a1:  ldc.i4.1
    IL_00a2:  ldc.i4.1
    IL_00a3:  ldc.i4.s   16
    IL_00a5:  call       class Game.TerrainBrush/Brush Game.TerrainBrush/Brush::op_Implicit(int32)
    IL_00aa:  callvirt   instance void Game.TerrainBrush::AddBox(int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 class Game.TerrainBrush/Brush)
    IL_00af:  ldloc.s    V_9
    IL_00b1:  ldloc.s    V_7
    IL_00b3:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00b8:  stloc.s    V_9
    IL_00ba:  ldloc.s    V_10
    IL_00bc:  ldc.i4.1
    IL_00bd:  add
    IL_00be:  stloc.s    V_10
    IL_00c0:  ldloc.s    V_10
    IL_00c2:  ldloc.s    V_8
    IL_00c4:  blt.s      IL_0086

    IL_00c6:  ldloc.s    V_6
    IL_00c8:  ldc.i4.1
    IL_00c9:  add
    IL_00ca:  stloc.s    V_6
    IL_00cc:  ldloc.s    V_6
    IL_00ce:  ldloc.s    V_5
    IL_00d0:  blt        IL_0029

    IL_00d5:  ldloc.3
    IL_00d6:  brtrue.s   IL_00ec

    IL_00d8:  ldloc.s    V_4
    IL_00da:  ldc.i4.0
    IL_00db:  ldc.i4.0
    IL_00dc:  ldc.i4.0
    IL_00dd:  ldc.i4     0x96
    IL_00e2:  call       class Game.TerrainBrush/Brush Game.TerrainBrush/Brush::op_Implicit(int32)
    IL_00e7:  callvirt   instance void Game.TerrainBrush::AddCell(int32,
                                                                  int32,
                                                                  int32,
                                                                  class Game.TerrainBrush/Brush)
    IL_00ec:  ldloc.s    V_4
    IL_00ee:  callvirt   instance void Game.TerrainBrush::Compile()
    IL_00f3:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_coalBrushes
    IL_00f8:  ldloc.s    V_4
    IL_00fa:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::Add(!0)
    IL_00ff:  ldloc.3
    IL_0100:  ldc.i4.1
    IL_0101:  add
    IL_0102:  stloc.3
    IL_0103:  ldloc.3
    IL_0104:  ldc.i4.s   16
    IL_0106:  blt        IL_000f

    IL_010b:  ldc.i4.0
    IL_010c:  stloc.s    V_11
    IL_010e:  br         IL_01f1

    IL_0113:  newobj     instance void Game.TerrainBrush::.ctor()
    IL_0118:  stloc.s    V_12
    IL_011a:  ldloc.0
    IL_011b:  ldc.i4.6
    IL_011c:  ldc.i4.s   10
    IL_011e:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0123:  stloc.s    V_13
    IL_0125:  ldc.i4.0
    IL_0126:  stloc.s    V_14
    IL_0128:  br         IL_01cf

    IL_012d:  ldc.r4     0.5
    IL_0132:  ldloc.0
    IL_0133:  ldc.r4     -1.
    IL_0138:  ldc.r4     1.
    IL_013d:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0142:  ldloc.0
    IL_0143:  ldc.r4     -1.
    IL_0148:  ldc.r4     1.
    IL_014d:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0152:  ldloc.0
    IL_0153:  ldc.r4     -1.
    IL_0158:  ldc.r4     1.
    IL_015d:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0162:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0167:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_016c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0171:  stloc.s    V_15
    IL_0173:  ldloc.0
    IL_0174:  ldc.i4.6
    IL_0175:  ldc.i4.8
    IL_0176:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_017b:  stloc.s    V_16
    IL_017d:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_0182:  stloc.s    V_17
    IL_0184:  ldc.i4.0
    IL_0185:  stloc.s    V_18
    IL_0187:  br.s       IL_01c3

    IL_0189:  ldloc.s    V_12
    IL_018b:  ldloc.s    V_17
    IL_018d:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0192:  conv.i4
    IL_0193:  ldloc.s    V_17
    IL_0195:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_019a:  conv.i4
    IL_019b:  ldloc.s    V_17
    IL_019d:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_01a2:  conv.i4
    IL_01a3:  ldc.i4.1
    IL_01a4:  ldc.i4.1
    IL_01a5:  ldc.i4.1
    IL_01a6:  ldc.i4.s   39
    IL_01a8:  call       class Game.TerrainBrush/Brush Game.TerrainBrush/Brush::op_Implicit(int32)
    IL_01ad:  callvirt   instance void Game.TerrainBrush::AddBox(int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 class Game.TerrainBrush/Brush)
    IL_01b2:  ldloc.s    V_17
    IL_01b4:  ldloc.s    V_15
    IL_01b6:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01bb:  stloc.s    V_17
    IL_01bd:  ldloc.s    V_18
    IL_01bf:  ldc.i4.1
    IL_01c0:  add
    IL_01c1:  stloc.s    V_18
    IL_01c3:  ldloc.s    V_18
    IL_01c5:  ldloc.s    V_16
    IL_01c7:  blt.s      IL_0189

    IL_01c9:  ldloc.s    V_14
    IL_01cb:  ldc.i4.1
    IL_01cc:  add
    IL_01cd:  stloc.s    V_14
    IL_01cf:  ldloc.s    V_14
    IL_01d1:  ldloc.s    V_13
    IL_01d3:  blt        IL_012d

    IL_01d8:  ldloc.s    V_12
    IL_01da:  callvirt   instance void Game.TerrainBrush::Compile()
    IL_01df:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_ironBrushes
    IL_01e4:  ldloc.s    V_12
    IL_01e6:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::Add(!0)
    IL_01eb:  ldloc.s    V_11
    IL_01ed:  ldc.i4.1
    IL_01ee:  add
    IL_01ef:  stloc.s    V_11
    IL_01f1:  ldloc.s    V_11
    IL_01f3:  ldc.i4.s   16
    IL_01f5:  blt        IL_0113

    IL_01fa:  ldc.i4.0
    IL_01fb:  stloc.s    V_19
    IL_01fd:  br         IL_02e0

    IL_0202:  newobj     instance void Game.TerrainBrush::.ctor()
    IL_0207:  stloc.s    V_20
    IL_0209:  ldloc.0
    IL_020a:  ldc.i4.6
    IL_020b:  ldc.i4.s   10
    IL_020d:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0212:  stloc.s    V_21
    IL_0214:  ldc.i4.0
    IL_0215:  stloc.s    V_22
    IL_0217:  br         IL_02be

    IL_021c:  ldc.r4     0.5
    IL_0221:  ldloc.0
    IL_0222:  ldc.r4     -1.
    IL_0227:  ldc.r4     1.
    IL_022c:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0231:  ldloc.0
    IL_0232:  ldc.r4     -2.
    IL_0237:  ldc.r4     2.
    IL_023c:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0241:  ldloc.0
    IL_0242:  ldc.r4     -1.
    IL_0247:  ldc.r4     1.
    IL_024c:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0251:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0256:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_025b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0260:  stloc.s    V_23
    IL_0262:  ldloc.0
    IL_0263:  ldc.i4.6
    IL_0264:  ldc.i4.8
    IL_0265:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_026a:  stloc.s    V_24
    IL_026c:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_0271:  stloc.s    V_25
    IL_0273:  ldc.i4.0
    IL_0274:  stloc.s    V_26
    IL_0276:  br.s       IL_02b2

    IL_0278:  ldloc.s    V_20
    IL_027a:  ldloc.s    V_25
    IL_027c:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0281:  conv.i4
    IL_0282:  ldloc.s    V_25
    IL_0284:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0289:  conv.i4
    IL_028a:  ldloc.s    V_25
    IL_028c:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0291:  conv.i4
    IL_0292:  ldc.i4.1
    IL_0293:  ldc.i4.1
    IL_0294:  ldc.i4.1
    IL_0295:  ldc.i4.s   41
    IL_0297:  call       class Game.TerrainBrush/Brush Game.TerrainBrush/Brush::op_Implicit(int32)
    IL_029c:  callvirt   instance void Game.TerrainBrush::AddBox(int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 class Game.TerrainBrush/Brush)
    IL_02a1:  ldloc.s    V_25
    IL_02a3:  ldloc.s    V_23
    IL_02a5:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_02aa:  stloc.s    V_25
    IL_02ac:  ldloc.s    V_26
    IL_02ae:  ldc.i4.1
    IL_02af:  add
    IL_02b0:  stloc.s    V_26
    IL_02b2:  ldloc.s    V_26
    IL_02b4:  ldloc.s    V_24
    IL_02b6:  blt.s      IL_0278

    IL_02b8:  ldloc.s    V_22
    IL_02ba:  ldc.i4.1
    IL_02bb:  add
    IL_02bc:  stloc.s    V_22
    IL_02be:  ldloc.s    V_22
    IL_02c0:  ldloc.s    V_21
    IL_02c2:  blt        IL_021c

    IL_02c7:  ldloc.s    V_20
    IL_02c9:  callvirt   instance void Game.TerrainBrush::Compile()
    IL_02ce:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_copperBrushes
    IL_02d3:  ldloc.s    V_20
    IL_02d5:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::Add(!0)
    IL_02da:  ldloc.s    V_19
    IL_02dc:  ldc.i4.1
    IL_02dd:  add
    IL_02de:  stloc.s    V_19
    IL_02e0:  ldloc.s    V_19
    IL_02e2:  ldc.i4.s   16
    IL_02e4:  blt        IL_0202

    IL_02e9:  ldc.i4.0
    IL_02ea:  stloc.s    V_27
    IL_02ec:  br         IL_03d1

    IL_02f1:  newobj     instance void Game.TerrainBrush::.ctor()
    IL_02f6:  stloc.s    V_28
    IL_02f8:  ldloc.0
    IL_02f9:  ldc.i4.s   12
    IL_02fb:  ldc.i4.s   16
    IL_02fd:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0302:  stloc.s    V_29
    IL_0304:  ldc.i4.0
    IL_0305:  stloc.s    V_30
    IL_0307:  br         IL_03af

    IL_030c:  ldc.r4     0.5
    IL_0311:  ldloc.0
    IL_0312:  ldc.r4     -1.
    IL_0317:  ldc.r4     1.
    IL_031c:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0321:  ldloc.0
    IL_0322:  ldc.r4     -0.25
    IL_0327:  ldc.r4     0.25
    IL_032c:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0331:  ldloc.0
    IL_0332:  ldc.r4     -1.
    IL_0337:  ldc.r4     1.
    IL_033c:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0341:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0346:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_034b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0350:  stloc.s    V_31
    IL_0352:  ldloc.0
    IL_0353:  ldc.i4.8
    IL_0354:  ldc.i4.s   10
    IL_0356:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_035b:  stloc.s    V_32
    IL_035d:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_0362:  stloc.s    V_33
    IL_0364:  ldc.i4.0
    IL_0365:  stloc.s    V_34
    IL_0367:  br.s       IL_03a3

    IL_0369:  ldloc.s    V_28
    IL_036b:  ldloc.s    V_33
    IL_036d:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0372:  conv.i4
    IL_0373:  ldloc.s    V_33
    IL_0375:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_037a:  conv.i4
    IL_037b:  ldloc.s    V_33
    IL_037d:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0382:  conv.i4
    IL_0383:  ldc.i4.1
    IL_0384:  ldc.i4.1
    IL_0385:  ldc.i4.1
    IL_0386:  ldc.i4.s   100
    IL_0388:  call       class Game.TerrainBrush/Brush Game.TerrainBrush/Brush::op_Implicit(int32)
    IL_038d:  callvirt   instance void Game.TerrainBrush::AddBox(int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 class Game.TerrainBrush/Brush)
    IL_0392:  ldloc.s    V_33
    IL_0394:  ldloc.s    V_31
    IL_0396:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_039b:  stloc.s    V_33
    IL_039d:  ldloc.s    V_34
    IL_039f:  ldc.i4.1
    IL_03a0:  add
    IL_03a1:  stloc.s    V_34
    IL_03a3:  ldloc.s    V_34
    IL_03a5:  ldloc.s    V_32
    IL_03a7:  blt.s      IL_0369

    IL_03a9:  ldloc.s    V_30
    IL_03ab:  ldc.i4.1
    IL_03ac:  add
    IL_03ad:  stloc.s    V_30
    IL_03af:  ldloc.s    V_30
    IL_03b1:  ldloc.s    V_29
    IL_03b3:  blt        IL_030c

    IL_03b8:  ldloc.s    V_28
    IL_03ba:  callvirt   instance void Game.TerrainBrush::Compile()
    IL_03bf:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_saltpeterBrushes
    IL_03c4:  ldloc.s    V_28
    IL_03c6:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::Add(!0)
    IL_03cb:  ldloc.s    V_27
    IL_03cd:  ldc.i4.1
    IL_03ce:  add
    IL_03cf:  stloc.s    V_27
    IL_03d1:  ldloc.s    V_27
    IL_03d3:  ldc.i4.s   16
    IL_03d5:  blt        IL_02f1

    IL_03da:  ldc.i4.0
    IL_03db:  stloc.s    V_35
    IL_03dd:  br         IL_04c0

    IL_03e2:  newobj     instance void Game.TerrainBrush::.ctor()
    IL_03e7:  stloc.s    V_36
    IL_03e9:  ldloc.0
    IL_03ea:  ldc.i4.6
    IL_03eb:  ldc.i4.s   10
    IL_03ed:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_03f2:  stloc.s    V_37
    IL_03f4:  ldc.i4.0
    IL_03f5:  stloc.s    V_38
    IL_03f7:  br         IL_049e

    IL_03fc:  ldc.r4     0.5
    IL_0401:  ldloc.0
    IL_0402:  ldc.r4     -1.
    IL_0407:  ldc.r4     1.
    IL_040c:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0411:  ldloc.0
    IL_0412:  ldc.r4     -1.
    IL_0417:  ldc.r4     1.
    IL_041c:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0421:  ldloc.0
    IL_0422:  ldc.r4     -1.
    IL_0427:  ldc.r4     1.
    IL_042c:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0431:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0436:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_043b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0440:  stloc.s    V_39
    IL_0442:  ldloc.0
    IL_0443:  ldc.i4.4
    IL_0444:  ldc.i4.6
    IL_0445:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_044a:  stloc.s    V_40
    IL_044c:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_0451:  stloc.s    V_41
    IL_0453:  ldc.i4.0
    IL_0454:  stloc.s    V_42
    IL_0456:  br.s       IL_0492

    IL_0458:  ldloc.s    V_36
    IL_045a:  ldloc.s    V_41
    IL_045c:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0461:  conv.i4
    IL_0462:  ldloc.s    V_41
    IL_0464:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0469:  conv.i4
    IL_046a:  ldloc.s    V_41
    IL_046c:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0471:  conv.i4
    IL_0472:  ldc.i4.1
    IL_0473:  ldc.i4.1
    IL_0474:  ldc.i4.1
    IL_0475:  ldc.i4.s   101
    IL_0477:  call       class Game.TerrainBrush/Brush Game.TerrainBrush/Brush::op_Implicit(int32)
    IL_047c:  callvirt   instance void Game.TerrainBrush::AddBox(int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 class Game.TerrainBrush/Brush)
    IL_0481:  ldloc.s    V_41
    IL_0483:  ldloc.s    V_39
    IL_0485:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_048a:  stloc.s    V_41
    IL_048c:  ldloc.s    V_42
    IL_048e:  ldc.i4.1
    IL_048f:  add
    IL_0490:  stloc.s    V_42
    IL_0492:  ldloc.s    V_42
    IL_0494:  ldloc.s    V_40
    IL_0496:  blt.s      IL_0458

    IL_0498:  ldloc.s    V_38
    IL_049a:  ldc.i4.1
    IL_049b:  add
    IL_049c:  stloc.s    V_38
    IL_049e:  ldloc.s    V_38
    IL_04a0:  ldloc.s    V_37
    IL_04a2:  blt        IL_03fc

    IL_04a7:  ldloc.s    V_36
    IL_04a9:  callvirt   instance void Game.TerrainBrush::Compile()
    IL_04ae:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_sulphurBrushes
    IL_04b3:  ldloc.s    V_36
    IL_04b5:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::Add(!0)
    IL_04ba:  ldloc.s    V_35
    IL_04bc:  ldc.i4.1
    IL_04bd:  add
    IL_04be:  stloc.s    V_35
    IL_04c0:  ldloc.s    V_35
    IL_04c2:  ldc.i4.s   16
    IL_04c4:  blt        IL_03e2

    IL_04c9:  ldc.i4.0
    IL_04ca:  stloc.s    V_43
    IL_04cc:  br         IL_05ae

    IL_04d1:  newobj     instance void Game.TerrainBrush::.ctor()
    IL_04d6:  stloc.s    V_44
    IL_04d8:  ldloc.0
    IL_04d9:  ldc.i4.4
    IL_04da:  ldc.i4.6
    IL_04db:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_04e0:  stloc.s    V_45
    IL_04e2:  ldc.i4.0
    IL_04e3:  stloc.s    V_46
    IL_04e5:  br         IL_058c

    IL_04ea:  ldc.r4     0.5
    IL_04ef:  ldloc.0
    IL_04f0:  ldc.r4     -1.
    IL_04f5:  ldc.r4     1.
    IL_04fa:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_04ff:  ldloc.0
    IL_0500:  ldc.r4     -1.
    IL_0505:  ldc.r4     1.
    IL_050a:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_050f:  ldloc.0
    IL_0510:  ldc.r4     -1.
    IL_0515:  ldc.r4     1.
    IL_051a:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_051f:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0524:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0529:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_052e:  stloc.s    V_47
    IL_0530:  ldloc.0
    IL_0531:  ldc.i4.4
    IL_0532:  ldc.i4.6
    IL_0533:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0538:  stloc.s    V_48
    IL_053a:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_053f:  stloc.s    V_49
    IL_0541:  ldc.i4.0
    IL_0542:  stloc.s    V_50
    IL_0544:  br.s       IL_0580

    IL_0546:  ldloc.s    V_44
    IL_0548:  ldloc.s    V_49
    IL_054a:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_054f:  conv.i4
    IL_0550:  ldloc.s    V_49
    IL_0552:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0557:  conv.i4
    IL_0558:  ldloc.s    V_49
    IL_055a:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_055f:  conv.i4
    IL_0560:  ldc.i4.1
    IL_0561:  ldc.i4.1
    IL_0562:  ldc.i4.1
    IL_0563:  ldc.i4.s   112
    IL_0565:  call       class Game.TerrainBrush/Brush Game.TerrainBrush/Brush::op_Implicit(int32)
    IL_056a:  callvirt   instance void Game.TerrainBrush::AddBox(int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 class Game.TerrainBrush/Brush)
    IL_056f:  ldloc.s    V_49
    IL_0571:  ldloc.s    V_47
    IL_0573:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0578:  stloc.s    V_49
    IL_057a:  ldloc.s    V_50
    IL_057c:  ldc.i4.1
    IL_057d:  add
    IL_057e:  stloc.s    V_50
    IL_0580:  ldloc.s    V_50
    IL_0582:  ldloc.s    V_48
    IL_0584:  blt.s      IL_0546

    IL_0586:  ldloc.s    V_46
    IL_0588:  ldc.i4.1
    IL_0589:  add
    IL_058a:  stloc.s    V_46
    IL_058c:  ldloc.s    V_46
    IL_058e:  ldloc.s    V_45
    IL_0590:  blt        IL_04ea

    IL_0595:  ldloc.s    V_44
    IL_0597:  callvirt   instance void Game.TerrainBrush::Compile()
    IL_059c:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_diamondBrushes
    IL_05a1:  ldloc.s    V_44
    IL_05a3:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::Add(!0)
    IL_05a8:  ldloc.s    V_43
    IL_05aa:  ldc.i4.1
    IL_05ab:  add
    IL_05ac:  stloc.s    V_43
    IL_05ae:  ldloc.s    V_43
    IL_05b0:  ldc.i4.s   16
    IL_05b2:  blt        IL_04d1

    IL_05b7:  ldc.i4.0
    IL_05b8:  stloc.s    V_51
    IL_05ba:  br         IL_06a0

    IL_05bf:  newobj     instance void Game.TerrainBrush::.ctor()
    IL_05c4:  stloc.s    V_52
    IL_05c6:  ldloc.0
    IL_05c7:  ldc.i4.6
    IL_05c8:  ldc.i4.s   10
    IL_05ca:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_05cf:  stloc.s    V_53
    IL_05d1:  ldc.i4.0
    IL_05d2:  stloc.s    V_54
    IL_05d4:  br         IL_067e

    IL_05d9:  ldc.r4     0.5
    IL_05de:  ldloc.0
    IL_05df:  ldc.r4     -1.
    IL_05e4:  ldc.r4     1.
    IL_05e9:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_05ee:  ldloc.0
    IL_05ef:  ldc.r4     -1.
    IL_05f4:  ldc.r4     1.
    IL_05f9:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_05fe:  ldloc.0
    IL_05ff:  ldc.r4     -1.
    IL_0604:  ldc.r4     1.
    IL_0609:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_060e:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0613:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0618:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_061d:  stloc.s    V_55
    IL_061f:  ldloc.0
    IL_0620:  ldc.i4.4
    IL_0621:  ldc.i4.6
    IL_0622:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0627:  stloc.s    V_56
    IL_0629:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_062e:  stloc.s    V_57
    IL_0630:  ldc.i4.0
    IL_0631:  stloc.s    V_58
    IL_0633:  br.s       IL_0672

    IL_0635:  ldloc.s    V_52
    IL_0637:  ldloc.s    V_57
    IL_0639:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_063e:  conv.i4
    IL_063f:  ldloc.s    V_57
    IL_0641:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0646:  conv.i4
    IL_0647:  ldloc.s    V_57
    IL_0649:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_064e:  conv.i4
    IL_064f:  ldc.i4.1
    IL_0650:  ldc.i4.1
    IL_0651:  ldc.i4.1
    IL_0652:  ldc.i4     0x94
    IL_0657:  call       class Game.TerrainBrush/Brush Game.TerrainBrush/Brush::op_Implicit(int32)
    IL_065c:  callvirt   instance void Game.TerrainBrush::AddBox(int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 class Game.TerrainBrush/Brush)
    IL_0661:  ldloc.s    V_57
    IL_0663:  ldloc.s    V_55
    IL_0665:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_066a:  stloc.s    V_57
    IL_066c:  ldloc.s    V_58
    IL_066e:  ldc.i4.1
    IL_066f:  add
    IL_0670:  stloc.s    V_58
    IL_0672:  ldloc.s    V_58
    IL_0674:  ldloc.s    V_56
    IL_0676:  blt.s      IL_0635

    IL_0678:  ldloc.s    V_54
    IL_067a:  ldc.i4.1
    IL_067b:  add
    IL_067c:  stloc.s    V_54
    IL_067e:  ldloc.s    V_54
    IL_0680:  ldloc.s    V_53
    IL_0682:  blt        IL_05d9

    IL_0687:  ldloc.s    V_52
    IL_0689:  callvirt   instance void Game.TerrainBrush::Compile()
    IL_068e:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_germaniumBrushes
    IL_0693:  ldloc.s    V_52
    IL_0695:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::Add(!0)
    IL_069a:  ldloc.s    V_51
    IL_069c:  ldc.i4.1
    IL_069d:  add
    IL_069e:  stloc.s    V_51
    IL_06a0:  ldloc.s    V_51
    IL_06a2:  ldc.i4.s   16
    IL_06a4:  blt        IL_05bf

    IL_06a9:  ldc.i4.0
    IL_06aa:  stloc.s    V_59
    IL_06ac:  br         IL_0790

    IL_06b1:  newobj     instance void Game.TerrainBrush::.ctor()
    IL_06b6:  stloc.s    V_60
    IL_06b8:  ldloc.0
    IL_06b9:  ldc.i4.s   16
    IL_06bb:  ldc.i4.s   32
    IL_06bd:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_06c2:  stloc.s    V_61
    IL_06c4:  ldc.i4.0
    IL_06c5:  stloc.s    V_62
    IL_06c7:  br         IL_076e

    IL_06cc:  ldc.r4     0.5
    IL_06d1:  ldloc.0
    IL_06d2:  ldc.r4     -1.
    IL_06d7:  ldc.r4     1.
    IL_06dc:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_06e1:  ldloc.0
    IL_06e2:  ldc.r4     -0.75
    IL_06e7:  ldc.r4     0.75
    IL_06ec:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_06f1:  ldloc.0
    IL_06f2:  ldc.r4     -1.
    IL_06f7:  ldc.r4     1.
    IL_06fc:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0701:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0706:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_070b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0710:  stloc.s    V_63
    IL_0712:  ldloc.0
    IL_0713:  ldc.i4.8
    IL_0714:  ldc.i4.s   12
    IL_0716:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_071b:  stloc.s    V_64
    IL_071d:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_0722:  stloc.s    V_65
    IL_0724:  ldc.i4.0
    IL_0725:  stloc.s    V_66
    IL_0727:  br.s       IL_0762

    IL_0729:  ldloc.s    V_60
    IL_072b:  ldloc.s    V_65
    IL_072d:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0732:  conv.i4
    IL_0733:  ldloc.s    V_65
    IL_0735:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_073a:  conv.i4
    IL_073b:  ldloc.s    V_65
    IL_073d:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0742:  conv.i4
    IL_0743:  ldc.i4.1
    IL_0744:  ldc.i4.1
    IL_0745:  ldc.i4.1
    IL_0746:  ldc.i4.2
    IL_0747:  call       class Game.TerrainBrush/Brush Game.TerrainBrush/Brush::op_Implicit(int32)
    IL_074c:  callvirt   instance void Game.TerrainBrush::AddBox(int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 class Game.TerrainBrush/Brush)
    IL_0751:  ldloc.s    V_65
    IL_0753:  ldloc.s    V_63
    IL_0755:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_075a:  stloc.s    V_65
    IL_075c:  ldloc.s    V_66
    IL_075e:  ldc.i4.1
    IL_075f:  add
    IL_0760:  stloc.s    V_66
    IL_0762:  ldloc.s    V_66
    IL_0764:  ldloc.s    V_64
    IL_0766:  blt.s      IL_0729

    IL_0768:  ldloc.s    V_62
    IL_076a:  ldc.i4.1
    IL_076b:  add
    IL_076c:  stloc.s    V_62
    IL_076e:  ldloc.s    V_62
    IL_0770:  ldloc.s    V_61
    IL_0772:  blt        IL_06cc

    IL_0777:  ldloc.s    V_60
    IL_0779:  callvirt   instance void Game.TerrainBrush::Compile()
    IL_077e:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_dirtPocketBrushes
    IL_0783:  ldloc.s    V_60
    IL_0785:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::Add(!0)
    IL_078a:  ldloc.s    V_59
    IL_078c:  ldc.i4.1
    IL_078d:  add
    IL_078e:  stloc.s    V_59
    IL_0790:  ldloc.s    V_59
    IL_0792:  ldc.i4.s   16
    IL_0794:  blt        IL_06b1

    IL_0799:  ldc.i4.0
    IL_079a:  stloc.s    V_67
    IL_079c:  br         IL_0880

    IL_07a1:  newobj     instance void Game.TerrainBrush::.ctor()
    IL_07a6:  stloc.s    V_68
    IL_07a8:  ldloc.0
    IL_07a9:  ldc.i4.s   16
    IL_07ab:  ldc.i4.s   32
    IL_07ad:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_07b2:  stloc.s    V_69
    IL_07b4:  ldc.i4.0
    IL_07b5:  stloc.s    V_70
    IL_07b7:  br         IL_085e

    IL_07bc:  ldc.r4     0.5
    IL_07c1:  ldloc.0
    IL_07c2:  ldc.r4     -1.
    IL_07c7:  ldc.r4     1.
    IL_07cc:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_07d1:  ldloc.0
    IL_07d2:  ldc.r4     -0.75
    IL_07d7:  ldc.r4     0.75
    IL_07dc:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_07e1:  ldloc.0
    IL_07e2:  ldc.r4     -1.
    IL_07e7:  ldc.r4     1.
    IL_07ec:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_07f1:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_07f6:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_07fb:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0800:  stloc.s    V_71
    IL_0802:  ldloc.0
    IL_0803:  ldc.i4.8
    IL_0804:  ldc.i4.s   12
    IL_0806:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_080b:  stloc.s    V_72
    IL_080d:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_0812:  stloc.s    V_73
    IL_0814:  ldc.i4.0
    IL_0815:  stloc.s    V_74
    IL_0817:  br.s       IL_0852

    IL_0819:  ldloc.s    V_68
    IL_081b:  ldloc.s    V_73
    IL_081d:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0822:  conv.i4
    IL_0823:  ldloc.s    V_73
    IL_0825:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_082a:  conv.i4
    IL_082b:  ldloc.s    V_73
    IL_082d:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0832:  conv.i4
    IL_0833:  ldc.i4.1
    IL_0834:  ldc.i4.1
    IL_0835:  ldc.i4.1
    IL_0836:  ldc.i4.6
    IL_0837:  call       class Game.TerrainBrush/Brush Game.TerrainBrush/Brush::op_Implicit(int32)
    IL_083c:  callvirt   instance void Game.TerrainBrush::AddBox(int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 class Game.TerrainBrush/Brush)
    IL_0841:  ldloc.s    V_73
    IL_0843:  ldloc.s    V_71
    IL_0845:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_084a:  stloc.s    V_73
    IL_084c:  ldloc.s    V_74
    IL_084e:  ldc.i4.1
    IL_084f:  add
    IL_0850:  stloc.s    V_74
    IL_0852:  ldloc.s    V_74
    IL_0854:  ldloc.s    V_72
    IL_0856:  blt.s      IL_0819

    IL_0858:  ldloc.s    V_70
    IL_085a:  ldc.i4.1
    IL_085b:  add
    IL_085c:  stloc.s    V_70
    IL_085e:  ldloc.s    V_70
    IL_0860:  ldloc.s    V_69
    IL_0862:  blt        IL_07bc

    IL_0867:  ldloc.s    V_68
    IL_0869:  callvirt   instance void Game.TerrainBrush::Compile()
    IL_086e:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_gravelPocketBrushes
    IL_0873:  ldloc.s    V_68
    IL_0875:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::Add(!0)
    IL_087a:  ldloc.s    V_67
    IL_087c:  ldc.i4.1
    IL_087d:  add
    IL_087e:  stloc.s    V_67
    IL_0880:  ldloc.s    V_67
    IL_0882:  ldc.i4.s   16
    IL_0884:  blt        IL_07a1

    IL_0889:  ldc.i4.0
    IL_088a:  stloc.s    V_75
    IL_088c:  br         IL_0971

    IL_0891:  newobj     instance void Game.TerrainBrush::.ctor()
    IL_0896:  stloc.s    V_76
    IL_0898:  ldloc.0
    IL_0899:  ldc.i4.s   16
    IL_089b:  ldc.i4.s   32
    IL_089d:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_08a2:  stloc.s    V_77
    IL_08a4:  ldc.i4.0
    IL_08a5:  stloc.s    V_78
    IL_08a7:  br         IL_094f

    IL_08ac:  ldc.r4     0.5
    IL_08b1:  ldloc.0
    IL_08b2:  ldc.r4     -1.
    IL_08b7:  ldc.r4     1.
    IL_08bc:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_08c1:  ldloc.0
    IL_08c2:  ldc.r4     -0.75
    IL_08c7:  ldc.r4     0.75
    IL_08cc:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_08d1:  ldloc.0
    IL_08d2:  ldc.r4     -1.
    IL_08d7:  ldc.r4     1.
    IL_08dc:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_08e1:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_08e6:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_08eb:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_08f0:  stloc.s    V_79
    IL_08f2:  ldloc.0
    IL_08f3:  ldc.i4.8
    IL_08f4:  ldc.i4.s   12
    IL_08f6:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_08fb:  stloc.s    V_80
    IL_08fd:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_0902:  stloc.s    V_81
    IL_0904:  ldc.i4.0
    IL_0905:  stloc.s    V_82
    IL_0907:  br.s       IL_0943

    IL_0909:  ldloc.s    V_76
    IL_090b:  ldloc.s    V_81
    IL_090d:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0912:  conv.i4
    IL_0913:  ldloc.s    V_81
    IL_0915:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_091a:  conv.i4
    IL_091b:  ldloc.s    V_81
    IL_091d:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0922:  conv.i4
    IL_0923:  ldc.i4.1
    IL_0924:  ldc.i4.1
    IL_0925:  ldc.i4.1
    IL_0926:  ldc.i4.s   66
    IL_0928:  call       class Game.TerrainBrush/Brush Game.TerrainBrush/Brush::op_Implicit(int32)
    IL_092d:  callvirt   instance void Game.TerrainBrush::AddBox(int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 class Game.TerrainBrush/Brush)
    IL_0932:  ldloc.s    V_81
    IL_0934:  ldloc.s    V_79
    IL_0936:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_093b:  stloc.s    V_81
    IL_093d:  ldloc.s    V_82
    IL_093f:  ldc.i4.1
    IL_0940:  add
    IL_0941:  stloc.s    V_82
    IL_0943:  ldloc.s    V_82
    IL_0945:  ldloc.s    V_80
    IL_0947:  blt.s      IL_0909

    IL_0949:  ldloc.s    V_78
    IL_094b:  ldc.i4.1
    IL_094c:  add
    IL_094d:  stloc.s    V_78
    IL_094f:  ldloc.s    V_78
    IL_0951:  ldloc.s    V_77
    IL_0953:  blt        IL_08ac

    IL_0958:  ldloc.s    V_76
    IL_095a:  callvirt   instance void Game.TerrainBrush::Compile()
    IL_095f:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_limestonePocketBrushes
    IL_0964:  ldloc.s    V_76
    IL_0966:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::Add(!0)
    IL_096b:  ldloc.s    V_75
    IL_096d:  ldc.i4.1
    IL_096e:  add
    IL_096f:  stloc.s    V_75
    IL_0971:  ldloc.s    V_75
    IL_0973:  ldc.i4.s   16
    IL_0975:  blt        IL_0891

    IL_097a:  ldc.i4.0
    IL_097b:  stloc.s    V_83
    IL_097d:  br         IL_0a62

    IL_0982:  newobj     instance void Game.TerrainBrush::.ctor()
    IL_0987:  stloc.s    V_84
    IL_0989:  ldloc.0
    IL_098a:  ldc.i4.s   16
    IL_098c:  ldc.i4.s   32
    IL_098e:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0993:  stloc.s    V_85
    IL_0995:  ldc.i4.0
    IL_0996:  stloc.s    V_86
    IL_0998:  br         IL_0a40

    IL_099d:  ldc.r4     0.5
    IL_09a2:  ldloc.0
    IL_09a3:  ldc.r4     -1.
    IL_09a8:  ldc.r4     1.
    IL_09ad:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_09b2:  ldloc.0
    IL_09b3:  ldc.r4     -0.1
    IL_09b8:  ldc.r4     0.1
    IL_09bd:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_09c2:  ldloc.0
    IL_09c3:  ldc.r4     -1.
    IL_09c8:  ldc.r4     1.
    IL_09cd:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_09d2:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_09d7:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_09dc:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_09e1:  stloc.s    V_87
    IL_09e3:  ldloc.0
    IL_09e4:  ldc.i4.8
    IL_09e5:  ldc.i4.s   12
    IL_09e7:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_09ec:  stloc.s    V_88
    IL_09ee:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_09f3:  stloc.s    V_89
    IL_09f5:  ldc.i4.0
    IL_09f6:  stloc.s    V_90
    IL_09f8:  br.s       IL_0a34

    IL_09fa:  ldloc.s    V_84
    IL_09fc:  ldloc.s    V_89
    IL_09fe:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0a03:  conv.i4
    IL_0a04:  ldloc.s    V_89
    IL_0a06:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0a0b:  conv.i4
    IL_0a0c:  ldloc.s    V_89
    IL_0a0e:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0a13:  conv.i4
    IL_0a14:  ldc.i4.1
    IL_0a15:  ldc.i4.1
    IL_0a16:  ldc.i4.1
    IL_0a17:  ldc.i4.s   72
    IL_0a19:  call       class Game.TerrainBrush/Brush Game.TerrainBrush/Brush::op_Implicit(int32)
    IL_0a1e:  callvirt   instance void Game.TerrainBrush::AddBox(int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 class Game.TerrainBrush/Brush)
    IL_0a23:  ldloc.s    V_89
    IL_0a25:  ldloc.s    V_87
    IL_0a27:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0a2c:  stloc.s    V_89
    IL_0a2e:  ldloc.s    V_90
    IL_0a30:  ldc.i4.1
    IL_0a31:  add
    IL_0a32:  stloc.s    V_90
    IL_0a34:  ldloc.s    V_90
    IL_0a36:  ldloc.s    V_88
    IL_0a38:  blt.s      IL_09fa

    IL_0a3a:  ldloc.s    V_86
    IL_0a3c:  ldc.i4.1
    IL_0a3d:  add
    IL_0a3e:  stloc.s    V_86
    IL_0a40:  ldloc.s    V_86
    IL_0a42:  ldloc.s    V_85
    IL_0a44:  blt        IL_099d

    IL_0a49:  ldloc.s    V_84
    IL_0a4b:  callvirt   instance void Game.TerrainBrush::Compile()
    IL_0a50:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_clayPocketBrushes
    IL_0a55:  ldloc.s    V_84
    IL_0a57:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::Add(!0)
    IL_0a5c:  ldloc.s    V_83
    IL_0a5e:  ldc.i4.1
    IL_0a5f:  add
    IL_0a60:  stloc.s    V_83
    IL_0a62:  ldloc.s    V_83
    IL_0a64:  ldc.i4.s   16
    IL_0a66:  blt        IL_0982

    IL_0a6b:  ldc.i4.0
    IL_0a6c:  stloc.s    V_91
    IL_0a6e:  br         IL_0b52

    IL_0a73:  newobj     instance void Game.TerrainBrush::.ctor()
    IL_0a78:  stloc.s    V_92
    IL_0a7a:  ldloc.0
    IL_0a7b:  ldc.i4.s   16
    IL_0a7d:  ldc.i4.s   32
    IL_0a7f:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0a84:  stloc.s    V_93
    IL_0a86:  ldc.i4.0
    IL_0a87:  stloc.s    V_94
    IL_0a89:  br         IL_0b30

    IL_0a8e:  ldc.r4     0.5
    IL_0a93:  ldloc.0
    IL_0a94:  ldc.r4     -1.
    IL_0a99:  ldc.r4     1.
    IL_0a9e:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0aa3:  ldloc.0
    IL_0aa4:  ldc.r4     -0.75
    IL_0aa9:  ldc.r4     0.75
    IL_0aae:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0ab3:  ldloc.0
    IL_0ab4:  ldc.r4     -1.
    IL_0ab9:  ldc.r4     1.
    IL_0abe:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0ac3:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0ac8:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0acd:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0ad2:  stloc.s    V_95
    IL_0ad4:  ldloc.0
    IL_0ad5:  ldc.i4.8
    IL_0ad6:  ldc.i4.s   12
    IL_0ad8:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0add:  stloc.s    V_96
    IL_0adf:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_0ae4:  stloc.s    V_97
    IL_0ae6:  ldc.i4.0
    IL_0ae7:  stloc.s    V_98
    IL_0ae9:  br.s       IL_0b24

    IL_0aeb:  ldloc.s    V_92
    IL_0aed:  ldloc.s    V_97
    IL_0aef:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0af4:  conv.i4
    IL_0af5:  ldloc.s    V_97
    IL_0af7:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0afc:  conv.i4
    IL_0afd:  ldloc.s    V_97
    IL_0aff:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0b04:  conv.i4
    IL_0b05:  ldc.i4.1
    IL_0b06:  ldc.i4.1
    IL_0b07:  ldc.i4.1
    IL_0b08:  ldc.i4.7
    IL_0b09:  call       class Game.TerrainBrush/Brush Game.TerrainBrush/Brush::op_Implicit(int32)
    IL_0b0e:  callvirt   instance void Game.TerrainBrush::AddBox(int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 class Game.TerrainBrush/Brush)
    IL_0b13:  ldloc.s    V_97
    IL_0b15:  ldloc.s    V_95
    IL_0b17:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0b1c:  stloc.s    V_97
    IL_0b1e:  ldloc.s    V_98
    IL_0b20:  ldc.i4.1
    IL_0b21:  add
    IL_0b22:  stloc.s    V_98
    IL_0b24:  ldloc.s    V_98
    IL_0b26:  ldloc.s    V_96
    IL_0b28:  blt.s      IL_0aeb

    IL_0b2a:  ldloc.s    V_94
    IL_0b2c:  ldc.i4.1
    IL_0b2d:  add
    IL_0b2e:  stloc.s    V_94
    IL_0b30:  ldloc.s    V_94
    IL_0b32:  ldloc.s    V_93
    IL_0b34:  blt        IL_0a8e

    IL_0b39:  ldloc.s    V_92
    IL_0b3b:  callvirt   instance void Game.TerrainBrush::Compile()
    IL_0b40:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_sandPocketBrushes
    IL_0b45:  ldloc.s    V_92
    IL_0b47:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::Add(!0)
    IL_0b4c:  ldloc.s    V_91
    IL_0b4e:  ldc.i4.1
    IL_0b4f:  add
    IL_0b50:  stloc.s    V_91
    IL_0b52:  ldloc.s    V_91
    IL_0b54:  ldc.i4.s   16
    IL_0b56:  blt        IL_0a73

    IL_0b5b:  ldc.i4.0
    IL_0b5c:  stloc.s    V_99
    IL_0b5e:  br         IL_0c43

    IL_0b63:  newobj     instance void Game.TerrainBrush::.ctor()
    IL_0b68:  stloc.s    V_100
    IL_0b6a:  ldloc.0
    IL_0b6b:  ldc.i4.s   16
    IL_0b6d:  ldc.i4.s   32
    IL_0b6f:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0b74:  stloc.s    V_101
    IL_0b76:  ldc.i4.0
    IL_0b77:  stloc.s    V_102
    IL_0b79:  br         IL_0c21

    IL_0b7e:  ldc.r4     0.5
    IL_0b83:  ldloc.0
    IL_0b84:  ldc.r4     -1.
    IL_0b89:  ldc.r4     1.
    IL_0b8e:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0b93:  ldloc.0
    IL_0b94:  ldc.r4     -0.75
    IL_0b99:  ldc.r4     0.75
    IL_0b9e:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0ba3:  ldloc.0
    IL_0ba4:  ldc.r4     -1.
    IL_0ba9:  ldc.r4     1.
    IL_0bae:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0bb3:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0bb8:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0bbd:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0bc2:  stloc.s    V_103
    IL_0bc4:  ldloc.0
    IL_0bc5:  ldc.i4.8
    IL_0bc6:  ldc.i4.s   12
    IL_0bc8:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0bcd:  stloc.s    V_104
    IL_0bcf:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_0bd4:  stloc.s    V_105
    IL_0bd6:  ldc.i4.0
    IL_0bd7:  stloc.s    V_106
    IL_0bd9:  br.s       IL_0c15

    IL_0bdb:  ldloc.s    V_100
    IL_0bdd:  ldloc.s    V_105
    IL_0bdf:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0be4:  conv.i4
    IL_0be5:  ldloc.s    V_105
    IL_0be7:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0bec:  conv.i4
    IL_0bed:  ldloc.s    V_105
    IL_0bef:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0bf4:  conv.i4
    IL_0bf5:  ldc.i4.1
    IL_0bf6:  ldc.i4.1
    IL_0bf7:  ldc.i4.1
    IL_0bf8:  ldc.i4.s   67
    IL_0bfa:  call       class Game.TerrainBrush/Brush Game.TerrainBrush/Brush::op_Implicit(int32)
    IL_0bff:  callvirt   instance void Game.TerrainBrush::AddBox(int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 class Game.TerrainBrush/Brush)
    IL_0c04:  ldloc.s    V_105
    IL_0c06:  ldloc.s    V_103
    IL_0c08:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0c0d:  stloc.s    V_105
    IL_0c0f:  ldloc.s    V_106
    IL_0c11:  ldc.i4.1
    IL_0c12:  add
    IL_0c13:  stloc.s    V_106
    IL_0c15:  ldloc.s    V_106
    IL_0c17:  ldloc.s    V_104
    IL_0c19:  blt.s      IL_0bdb

    IL_0c1b:  ldloc.s    V_102
    IL_0c1d:  ldc.i4.1
    IL_0c1e:  add
    IL_0c1f:  stloc.s    V_102
    IL_0c21:  ldloc.s    V_102
    IL_0c23:  ldloc.s    V_101
    IL_0c25:  blt        IL_0b7e

    IL_0c2a:  ldloc.s    V_100
    IL_0c2c:  callvirt   instance void Game.TerrainBrush::Compile()
    IL_0c31:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_basaltPocketBrushes
    IL_0c36:  ldloc.s    V_100
    IL_0c38:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::Add(!0)
    IL_0c3d:  ldloc.s    V_99
    IL_0c3f:  ldc.i4.1
    IL_0c40:  add
    IL_0c41:  stloc.s    V_99
    IL_0c43:  ldloc.s    V_99
    IL_0c45:  ldc.i4.s   16
    IL_0c47:  blt        IL_0b63

    IL_0c4c:  ldc.i4.0
    IL_0c4d:  stloc.s    V_107
    IL_0c4f:  br         IL_0d33

    IL_0c54:  newobj     instance void Game.TerrainBrush::.ctor()
    IL_0c59:  stloc.s    V_108
    IL_0c5b:  ldloc.0
    IL_0c5c:  ldc.i4.s   16
    IL_0c5e:  ldc.i4.s   32
    IL_0c60:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0c65:  stloc.s    V_109
    IL_0c67:  ldc.i4.0
    IL_0c68:  stloc.s    V_110
    IL_0c6a:  br         IL_0d11

    IL_0c6f:  ldc.r4     0.5
    IL_0c74:  ldloc.0
    IL_0c75:  ldc.r4     -1.
    IL_0c7a:  ldc.r4     1.
    IL_0c7f:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0c84:  ldloc.0
    IL_0c85:  ldc.r4     -1.
    IL_0c8a:  ldc.r4     1.
    IL_0c8f:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0c94:  ldloc.0
    IL_0c95:  ldc.r4     -1.
    IL_0c9a:  ldc.r4     1.
    IL_0c9f:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0ca4:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0ca9:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0cae:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0cb3:  stloc.s    V_111
    IL_0cb5:  ldloc.0
    IL_0cb6:  ldc.i4.8
    IL_0cb7:  ldc.i4.s   10
    IL_0cb9:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0cbe:  stloc.s    V_112
    IL_0cc0:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_0cc5:  stloc.s    V_113
    IL_0cc7:  ldc.i4.0
    IL_0cc8:  stloc.s    V_114
    IL_0cca:  br.s       IL_0d05

    IL_0ccc:  ldloc.s    V_108
    IL_0cce:  ldloc.s    V_113
    IL_0cd0:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0cd5:  conv.i4
    IL_0cd6:  ldloc.s    V_113
    IL_0cd8:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0cdd:  conv.i4
    IL_0cde:  ldloc.s    V_113
    IL_0ce0:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0ce5:  conv.i4
    IL_0ce6:  ldc.i4.1
    IL_0ce7:  ldc.i4.1
    IL_0ce8:  ldc.i4.1
    IL_0ce9:  ldc.i4.3
    IL_0cea:  call       class Game.TerrainBrush/Brush Game.TerrainBrush/Brush::op_Implicit(int32)
    IL_0cef:  callvirt   instance void Game.TerrainBrush::AddBox(int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 class Game.TerrainBrush/Brush)
    IL_0cf4:  ldloc.s    V_113
    IL_0cf6:  ldloc.s    V_111
    IL_0cf8:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0cfd:  stloc.s    V_113
    IL_0cff:  ldloc.s    V_114
    IL_0d01:  ldc.i4.1
    IL_0d02:  add
    IL_0d03:  stloc.s    V_114
    IL_0d05:  ldloc.s    V_114
    IL_0d07:  ldloc.s    V_112
    IL_0d09:  blt.s      IL_0ccc

    IL_0d0b:  ldloc.s    V_110
    IL_0d0d:  ldc.i4.1
    IL_0d0e:  add
    IL_0d0f:  stloc.s    V_110
    IL_0d11:  ldloc.s    V_110
    IL_0d13:  ldloc.s    V_109
    IL_0d15:  blt        IL_0c6f

    IL_0d1a:  ldloc.s    V_108
    IL_0d1c:  callvirt   instance void Game.TerrainBrush::Compile()
    IL_0d21:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_granitePocketBrushes
    IL_0d26:  ldloc.s    V_108
    IL_0d28:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::Add(!0)
    IL_0d2d:  ldloc.s    V_107
    IL_0d2f:  ldc.i4.1
    IL_0d30:  add
    IL_0d31:  stloc.s    V_107
    IL_0d33:  ldloc.s    V_107
    IL_0d35:  ldc.i4.s   16
    IL_0d37:  blt        IL_0c54

    IL_0d3c:  ldc.i4.3
    IL_0d3d:  newarr     [System.Runtime]System.Int32
    IL_0d42:  dup
    IL_0d43:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=12' '<PrivateImplementationDetails>'::DAEC622540FFB3A92C68307FAFA5C2A49CA7F3F8
    IL_0d48:  call       void [System.Runtime]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [System.Runtime]System.Array,
                                                                                                              valuetype [System.Runtime]System.RuntimeFieldHandle)
    IL_0d4d:  stloc.1
    IL_0d4e:  ldc.i4.0
    IL_0d4f:  stloc.s    V_115
    IL_0d51:  br         IL_0e75

    IL_0d56:  newobj     instance void Game.TerrainBrush::.ctor()
    IL_0d5b:  stloc.s    V_116
    IL_0d5d:  ldloc.1
    IL_0d5e:  ldloc.s    V_115
    IL_0d60:  ldc.i4.4
    IL_0d61:  div
    IL_0d62:  ldelem.i4
    IL_0d63:  stloc.s    V_117
    IL_0d65:  ldloc.s    V_115
    IL_0d67:  ldc.i4.2
    IL_0d68:  rem
    IL_0d69:  ldc.i4.1
    IL_0d6a:  add
    IL_0d6b:  stloc.s    V_118
    IL_0d6d:  ldloc.s    V_115
    IL_0d6f:  ldc.i4.4
    IL_0d70:  rem
    IL_0d71:  ldc.i4.2
    IL_0d72:  beq.s      IL_0d7b

    IL_0d74:  ldc.r4     1.
    IL_0d79:  br.s       IL_0d80

    IL_0d7b:  ldc.r4     0.5
    IL_0d80:  stloc.s    V_119
    IL_0d82:  ldloc.s    V_115
    IL_0d84:  ldc.i4.4
    IL_0d85:  rem
    IL_0d86:  ldc.i4.2
    IL_0d87:  clt
    IL_0d89:  ldc.i4.0
    IL_0d8a:  ceq
    IL_0d8c:  stloc.s    V_120
    IL_0d8e:  ldloc.s    V_115
    IL_0d90:  ldc.i4.4
    IL_0d91:  rem
    IL_0d92:  ldc.i4.1
    IL_0d93:  beq.s      IL_0d9e

    IL_0d95:  ldc.i4.2
    IL_0d96:  ldloc.s    V_117
    IL_0d98:  mul
    IL_0d99:  ldloc.s    V_117
    IL_0d9b:  mul
    IL_0d9c:  br.s       IL_0da3

    IL_0d9e:  ldloc.s    V_117
    IL_0da0:  ldloc.s    V_117
    IL_0da2:  mul
    IL_0da3:  stloc.s    V_121
    IL_0da5:  ldc.i4.0
    IL_0da6:  stloc.s    V_122
    IL_0da8:  br         IL_0e53

    IL_0dad:  ldloc.0
    IL_0dae:  ldc.r4     0.0
    IL_0db3:  ldloc.s    V_117
    IL_0db5:  conv.r4
    IL_0db6:  ldloc.s    V_120
    IL_0db8:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Random::UniformVector2(float32,
                                                                                               float32,
                                                                                               bool)
    IL_0dbd:  stloc.s    V_123
    IL_0dbf:  ldloca.s   V_123
    IL_0dc1:  call       instance float32 [Engine]Engine.Vector2::Length()
    IL_0dc6:  stloc.s    V_124
    IL_0dc8:  ldloc.0
    IL_0dc9:  ldc.i4.3
    IL_0dca:  ldc.i4.4
    IL_0dcb:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0dd0:  stloc.s    V_125
    IL_0dd2:  ldc.i4.1
    IL_0dd3:  ldloc.s    V_117
    IL_0dd5:  ldc.i4.3
    IL_0dd6:  div
    IL_0dd7:  conv.r4
    IL_0dd8:  ldc.r4     2.5
    IL_0ddd:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_0de2:  ldloc.s    V_119
    IL_0de4:  mul
    IL_0de5:  ldc.r4     0.0
    IL_0dea:  ldloc.s    V_124
    IL_0dec:  ldloc.s    V_117
    IL_0dee:  conv.r4
    IL_0def:  div
    IL_0df0:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0df5:  conv.i4
    IL_0df6:  add
    IL_0df7:  ldloc.0
    IL_0df8:  ldc.i4.0
    IL_0df9:  ldc.i4.1
    IL_0dfa:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0dff:  add
    IL_0e00:  stloc.s    V_126
    IL_0e02:  ldloc.s    V_116
    IL_0e04:  ldloc.s    V_123
    IL_0e06:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0e0b:  conv.i4
    IL_0e0c:  ldc.i4.0
    IL_0e0d:  ldloc.s    V_123
    IL_0e0f:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0e14:  conv.i4
    IL_0e15:  ldloc.s    V_125
    IL_0e17:  ldloc.s    V_126
    IL_0e19:  ldloc.s    V_125
    IL_0e1b:  ldc.i4.0
    IL_0e1c:  call       class Game.TerrainBrush/Brush Game.TerrainBrush/Brush::op_Implicit(int32)
    IL_0e21:  callvirt   instance void Game.TerrainBrush::AddBox(int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 class Game.TerrainBrush/Brush)
    IL_0e26:  ldloc.s    V_116
    IL_0e28:  ldloc.s    V_123
    IL_0e2a:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0e2f:  conv.i4
    IL_0e30:  ldloc.s    V_118
    IL_0e32:  neg
    IL_0e33:  ldloc.s    V_123
    IL_0e35:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0e3a:  conv.i4
    IL_0e3b:  ldloc.s    V_125
    IL_0e3d:  ldloc.s    V_118
    IL_0e3f:  ldloc.s    V_125
    IL_0e41:  ldc.i4.s   18
    IL_0e43:  call       class Game.TerrainBrush/Brush Game.TerrainBrush/Brush::op_Implicit(int32)
    IL_0e48:  callvirt   instance void Game.TerrainBrush::AddBox(int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 class Game.TerrainBrush/Brush)
    IL_0e4d:  ldloc.s    V_122
    IL_0e4f:  ldc.i4.1
    IL_0e50:  add
    IL_0e51:  stloc.s    V_122
    IL_0e53:  ldloc.s    V_122
    IL_0e55:  ldloc.s    V_121
    IL_0e57:  blt        IL_0dad

    IL_0e5c:  ldloc.s    V_116
    IL_0e5e:  callvirt   instance void Game.TerrainBrush::Compile()
    IL_0e63:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_waterPocketBrushes
    IL_0e68:  ldloc.s    V_116
    IL_0e6a:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::Add(!0)
    IL_0e6f:  ldloc.s    V_115
    IL_0e71:  ldc.i4.1
    IL_0e72:  add
    IL_0e73:  stloc.s    V_115
    IL_0e75:  ldloc.s    V_115
    IL_0e77:  ldc.i4.4
    IL_0e78:  ldloc.1
    IL_0e79:  ldlen
    IL_0e7a:  conv.i4
    IL_0e7b:  mul
    IL_0e7c:  blt        IL_0d56

    IL_0e81:  ldc.i4.4
    IL_0e82:  newarr     [System.Runtime]System.Int32
    IL_0e87:  dup
    IL_0e88:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=16' '<PrivateImplementationDetails>'::B97CDE6866E599710B78100C830AF6656530BCD8
    IL_0e8d:  call       void [System.Runtime]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [System.Runtime]System.Array,
                                                                                                              valuetype [System.Runtime]System.RuntimeFieldHandle)
    IL_0e92:  stloc.2
    IL_0e93:  ldc.i4.0
    IL_0e94:  stloc.s    V_127
    IL_0e96:  br         IL_0fd9

    IL_0e9b:  newobj     instance void Game.TerrainBrush::.ctor()
    IL_0ea0:  stloc.s    V_128
    IL_0ea2:  ldloc.2
    IL_0ea3:  ldloc.s    V_127
    IL_0ea5:  ldc.i4.4
    IL_0ea6:  div
    IL_0ea7:  ldelem.i4
    IL_0ea8:  stloc.s    V_129
    IL_0eaa:  ldloc.s    V_129
    IL_0eac:  ldc.i4.2
    IL_0ead:  add
    IL_0eae:  stloc.s    V_130
    IL_0eb0:  ldloc.s    V_127
    IL_0eb2:  ldc.i4.4
    IL_0eb3:  rem
    IL_0eb4:  ldc.i4.2
    IL_0eb5:  beq.s      IL_0ebe

    IL_0eb7:  ldc.r4     1.
    IL_0ebc:  br.s       IL_0ec3

    IL_0ebe:  ldc.r4     0.5
    IL_0ec3:  stloc.s    V_131
    IL_0ec5:  ldloc.s    V_127
    IL_0ec7:  ldc.i4.4
    IL_0ec8:  rem
    IL_0ec9:  ldc.i4.2
    IL_0eca:  clt
    IL_0ecc:  ldc.i4.0
    IL_0ecd:  ceq
    IL_0ecf:  stloc.s    V_132
    IL_0ed1:  ldloc.s    V_127
    IL_0ed3:  ldc.i4.4
    IL_0ed4:  rem
    IL_0ed5:  ldc.i4.1
    IL_0ed6:  beq.s      IL_0ee1

    IL_0ed8:  ldc.i4.2
    IL_0ed9:  ldloc.s    V_129
    IL_0edb:  mul
    IL_0edc:  ldloc.s    V_129
    IL_0ede:  mul
    IL_0edf:  br.s       IL_0ee6

    IL_0ee1:  ldloc.s    V_129
    IL_0ee3:  ldloc.s    V_129
    IL_0ee5:  mul
    IL_0ee6:  stloc.s    V_133
    IL_0ee8:  ldc.i4.0
    IL_0ee9:  stloc.s    V_134
    IL_0eeb:  br         IL_0fb7

    IL_0ef0:  ldloc.0
    IL_0ef1:  ldc.r4     0.0
    IL_0ef6:  ldloc.s    V_129
    IL_0ef8:  conv.r4
    IL_0ef9:  ldloc.s    V_132
    IL_0efb:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Random::UniformVector2(float32,
                                                                                               float32,
                                                                                               bool)
    IL_0f00:  stloc.s    V_135
    IL_0f02:  ldloca.s   V_135
    IL_0f04:  call       instance float32 [Engine]Engine.Vector2::Length()
    IL_0f09:  stloc.s    V_136
    IL_0f0b:  ldloc.0
    IL_0f0c:  ldc.i4.3
    IL_0f0d:  ldc.i4.4
    IL_0f0e:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0f13:  stloc.s    V_137
    IL_0f15:  ldc.i4.1
    IL_0f16:  ldloc.s    V_129
    IL_0f18:  ldc.i4.3
    IL_0f19:  div
    IL_0f1a:  conv.r4
    IL_0f1b:  ldc.r4     2.5
    IL_0f20:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_0f25:  ldloc.s    V_131
    IL_0f27:  mul
    IL_0f28:  ldc.r4     0.0
    IL_0f2d:  ldloc.s    V_136
    IL_0f2f:  ldloc.s    V_129
    IL_0f31:  conv.r4
    IL_0f32:  div
    IL_0f33:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0f38:  conv.i4
    IL_0f39:  add
    IL_0f3a:  ldloc.0
    IL_0f3b:  ldc.i4.0
    IL_0f3c:  ldc.i4.1
    IL_0f3d:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0f42:  add
    IL_0f43:  stloc.s    V_138
    IL_0f45:  ldc.i4.1
    IL_0f46:  ldloc.s    V_130
    IL_0f48:  conv.r4
    IL_0f49:  ldc.r4     0.0
    IL_0f4e:  ldloc.s    V_136
    IL_0f50:  ldloc.s    V_129
    IL_0f52:  conv.r4
    IL_0f53:  div
    IL_0f54:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0f59:  conv.i4
    IL_0f5a:  add
    IL_0f5b:  ldloc.0
    IL_0f5c:  ldc.i4.0
    IL_0f5d:  ldc.i4.1
    IL_0f5e:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0f63:  add
    IL_0f64:  stloc.s    V_139
    IL_0f66:  ldloc.s    V_128
    IL_0f68:  ldloc.s    V_135
    IL_0f6a:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0f6f:  conv.i4
    IL_0f70:  ldc.i4.0
    IL_0f71:  ldloc.s    V_135
    IL_0f73:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0f78:  conv.i4
    IL_0f79:  ldloc.s    V_137
    IL_0f7b:  ldloc.s    V_138
    IL_0f7d:  ldloc.s    V_137
    IL_0f7f:  ldc.i4.0
    IL_0f80:  call       class Game.TerrainBrush/Brush Game.TerrainBrush/Brush::op_Implicit(int32)
    IL_0f85:  callvirt   instance void Game.TerrainBrush::AddBox(int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 class Game.TerrainBrush/Brush)
    IL_0f8a:  ldloc.s    V_128
    IL_0f8c:  ldloc.s    V_135
    IL_0f8e:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0f93:  conv.i4
    IL_0f94:  ldloc.s    V_139
    IL_0f96:  neg
    IL_0f97:  ldloc.s    V_135
    IL_0f99:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0f9e:  conv.i4
    IL_0f9f:  ldloc.s    V_137
    IL_0fa1:  ldloc.s    V_139
    IL_0fa3:  ldloc.s    V_137
    IL_0fa5:  ldc.i4.s   92
    IL_0fa7:  call       class Game.TerrainBrush/Brush Game.TerrainBrush/Brush::op_Implicit(int32)
    IL_0fac:  callvirt   instance void Game.TerrainBrush::AddBox(int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 class Game.TerrainBrush/Brush)
    IL_0fb1:  ldloc.s    V_134
    IL_0fb3:  ldc.i4.1
    IL_0fb4:  add
    IL_0fb5:  stloc.s    V_134
    IL_0fb7:  ldloc.s    V_134
    IL_0fb9:  ldloc.s    V_133
    IL_0fbb:  blt        IL_0ef0

    IL_0fc0:  ldloc.s    V_128
    IL_0fc2:  callvirt   instance void Game.TerrainBrush::Compile()
    IL_0fc7:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_magmaPocketBrushes
    IL_0fcc:  ldloc.s    V_128
    IL_0fce:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::Add(!0)
    IL_0fd3:  ldloc.s    V_127
    IL_0fd5:  ldc.i4.1
    IL_0fd6:  add
    IL_0fd7:  stloc.s    V_127
    IL_0fd9:  ldloc.s    V_127
    IL_0fdb:  ldc.i4.4
    IL_0fdc:  ldloc.2
    IL_0fdd:  ldlen
    IL_0fde:  conv.i4
    IL_0fdf:  mul
    IL_0fe0:  blt        IL_0e9b

    IL_0fe5:  ldc.i4.0
    IL_0fe6:  stloc.s    V_140
    IL_0fe8:  br         IL_1121

    IL_0fed:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>> Game.TerrainContentsGenerator::m_caveBrushesByType
    IL_0ff2:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::.ctor()
    IL_0ff7:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>>::Add(!0)
    IL_0ffc:  ldc.i4.0
    IL_0ffd:  stloc.s    V_141
    IL_0fff:  br         IL_1113

    IL_1004:  newobj     instance void Game.TerrainBrush::.ctor()
    IL_1009:  stloc.s    V_142
    IL_100b:  ldc.i4.s   10
    IL_100d:  ldc.i4.5
    IL_100e:  ldloc.s    V_140
    IL_1010:  mul
    IL_1011:  add
    IL_1012:  stloc.s    V_143
    IL_1014:  ldc.i4.3
    IL_1015:  ldloc.s    V_140
    IL_1017:  ldc.i4.3
    IL_1018:  div
    IL_1019:  add
    IL_101a:  stloc.s    V_144
    IL_101c:  ldc.i4.s   9
    IL_101e:  ldloc.s    V_140
    IL_1020:  add
    IL_1021:  stloc.s    V_145
    IL_1023:  ldc.i4.0
    IL_1024:  stloc.s    V_146
    IL_1026:  br         IL_10ea

    IL_102b:  ldloc.0
    IL_102c:  ldc.i4.2
    IL_102d:  ldloc.s    V_144
    IL_102f:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_1034:  stloc.s    V_147
    IL_1036:  ldloc.0
    IL_1037:  ldc.i4.8
    IL_1038:  ldloc.s    V_145
    IL_103a:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_103f:  ldc.i4.2
    IL_1040:  ldloc.s    V_147
    IL_1042:  mul
    IL_1043:  sub
    IL_1044:  stloc.s    V_148
    IL_1046:  ldc.r4     0.5
    IL_104b:  ldloc.0
    IL_104c:  ldc.r4     -1.
    IL_1051:  ldc.r4     1.
    IL_1056:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_105b:  ldloc.0
    IL_105c:  ldc.r4     0.0
    IL_1061:  ldc.r4     1.
    IL_1066:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_106b:  ldloc.0
    IL_106c:  ldc.r4     -1.
    IL_1071:  ldc.r4     1.
    IL_1076:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_107b:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_1080:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_1085:  stloc.s    V_149
    IL_1087:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_108c:  stloc.s    V_150
    IL_108e:  ldc.i4.0
    IL_108f:  stloc.s    V_151
    IL_1091:  br.s       IL_10de

    IL_1093:  ldloc.s    V_142
    IL_1095:  ldloc.s    V_150
    IL_1097:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_109c:  conv.i4
    IL_109d:  ldloc.s    V_147
    IL_109f:  ldc.i4.2
    IL_10a0:  div
    IL_10a1:  sub
    IL_10a2:  ldloc.s    V_150
    IL_10a4:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_10a9:  conv.i4
    IL_10aa:  ldloc.s    V_147
    IL_10ac:  ldc.i4.2
    IL_10ad:  div
    IL_10ae:  sub
    IL_10af:  ldloc.s    V_150
    IL_10b1:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_10b6:  conv.i4
    IL_10b7:  ldloc.s    V_147
    IL_10b9:  ldc.i4.2
    IL_10ba:  div
    IL_10bb:  sub
    IL_10bc:  ldloc.s    V_147
    IL_10be:  ldloc.s    V_147
    IL_10c0:  ldloc.s    V_147
    IL_10c2:  ldc.i4.0
    IL_10c3:  call       class Game.TerrainBrush/Brush Game.TerrainBrush/Brush::op_Implicit(int32)
    IL_10c8:  callvirt   instance void Game.TerrainBrush::AddBox(int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 class Game.TerrainBrush/Brush)
    IL_10cd:  ldloc.s    V_150
    IL_10cf:  ldloc.s    V_149
    IL_10d1:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_10d6:  stloc.s    V_150
    IL_10d8:  ldloc.s    V_151
    IL_10da:  ldc.i4.1
    IL_10db:  add
    IL_10dc:  stloc.s    V_151
    IL_10de:  ldloc.s    V_151
    IL_10e0:  ldloc.s    V_148
    IL_10e2:  blt.s      IL_1093

    IL_10e4:  ldloc.s    V_146
    IL_10e6:  ldc.i4.1
    IL_10e7:  add
    IL_10e8:  stloc.s    V_146
    IL_10ea:  ldloc.s    V_146
    IL_10ec:  ldloc.s    V_143
    IL_10ee:  blt        IL_102b

    IL_10f3:  ldloc.s    V_142
    IL_10f5:  callvirt   instance void Game.TerrainBrush::Compile()
    IL_10fa:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>> Game.TerrainContentsGenerator::m_caveBrushesByType
    IL_10ff:  ldloc.s    V_140
    IL_1101:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>>::get_Item(int32)
    IL_1106:  ldloc.s    V_142
    IL_1108:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::Add(!0)
    IL_110d:  ldloc.s    V_141
    IL_110f:  ldc.i4.1
    IL_1110:  add
    IL_1111:  stloc.s    V_141
    IL_1113:  ldloc.s    V_141
    IL_1115:  ldc.i4.3
    IL_1116:  blt        IL_1004

    IL_111b:  ldloc.s    V_140
    IL_111d:  ldc.i4.1
    IL_111e:  add
    IL_111f:  stloc.s    V_140
    IL_1121:  ldloc.s    V_140
    IL_1123:  ldc.i4.7
    IL_1124:  blt        IL_0fed

    IL_1129:  ret
  } // end of method TerrainContentsGenerator::CreateBrushes

  .property instance valuetype [Engine]Engine.Vector2
          OceanCorner()
  {
    .get instance valuetype [Engine]Engine.Vector2 Game.TerrainContentsGenerator::get_OceanCorner()
  } // end of property TerrainContentsGenerator::OceanCorner
} // end of class Game.TerrainContentsGenerator