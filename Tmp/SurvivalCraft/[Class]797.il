.class public auto ansi Game.TerrainContentsGenerator
       extends [System.Runtime]System.Object
       implements Game.ITerrainContentsGenerator
{
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
  .field private class Game.WorldSettings m_worldSettings
  .field private int32 m_seed
  .field private valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> m_islandSize
  .field private valuetype [Engine]Engine.Vector2 m_oceanCorner
  .field private valuetype [Engine]Engine.Vector2 m_temperatureOffset
  .field private valuetype [Engine]Engine.Vector2 m_humidityOffset
  .field private valuetype [Engine]Engine.Vector2 m_mountainsOffset
  .field private valuetype [Engine]Engine.Vector2 m_riversOffset
  .field public bool TGNewBiomeNoise
  .field public float32 TGBiomeScaling
  .field public float32 TGShoreFluctuations
  .field public float32 TGShoreFluctuationsScaling
  .field public float32 TGOceanSlope
  .field public float32 TGOceanSlopeVariation
  .field public float32 TGIslandsFrequency
  .field public float32 TGDensityBias
  .field public float32 TGHeightBias
  .field public float32 TGHillsStrength
  .field public float32 TGMountainsStrength
  .field public float32 TGMountainsPeriod
  .field public float32 TGMountainsPercentage
  .field public float32 TGRiversStrength
  .field public float32 TGTurbulenceStrength
  .field public float32 TGTurbulenceTopOffset
  .field public float32 TGTurbulencePower
  .field private static float32 TGSurfaceMultiplier
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
    // 代码大小       1393 (0x571)
    .maxstack  5
    .locals init (class Game.SubsystemGameInfo V_0,
             class Game.OldRandom V_1,
             class Game.Random V_2,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> V_3,
             float32 V_4)
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
    IL_001c:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_0021:  stfld      class Game.WorldSettings Game.TerrainContentsGenerator::m_worldSettings
    IL_0026:  ldarg.0
    IL_0027:  ldloc.0
    IL_0028:  callvirt   instance int32 Game.SubsystemGameInfo::get_WorldSeed()
    IL_002d:  stfld      int32 Game.TerrainContentsGenerator::m_seed
    IL_0032:  ldarg.0
    IL_0033:  ldarg.0
    IL_0034:  ldfld      class Game.WorldSettings Game.TerrainContentsGenerator::m_worldSettings
    IL_0039:  ldfld      valuetype Game.TerrainGenerationMode Game.WorldSettings::TerrainGenerationMode
    IL_003e:  ldc.i4.1
    IL_003f:  beq.s      IL_004c

    IL_0041:  ldloca.s   V_3
    IL_0043:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>
    IL_0049:  ldloc.3
    IL_004a:  br.s       IL_005c

    IL_004c:  ldarg.0
    IL_004d:  ldfld      class Game.WorldSettings Game.TerrainContentsGenerator::m_worldSettings
    IL_0052:  ldfld      valuetype [Engine]Engine.Vector2 Game.WorldSettings::IslandSize
    IL_0057:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_005c:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.TerrainContentsGenerator::m_islandSize
    IL_0061:  ldc.i4.s   100
    IL_0063:  ldarg.0
    IL_0064:  ldfld      int32 Game.TerrainContentsGenerator::m_seed
    IL_0069:  add
    IL_006a:  newobj     instance void Game.OldRandom::.ctor(int32)
    IL_006f:  stloc.1
    IL_0070:  ldarg.0
    IL_0071:  ldfld      int32 Game.TerrainContentsGenerator::m_seed
    IL_0076:  newobj     instance void Game.Random::.ctor(int32)
    IL_007b:  stloc.2
    IL_007c:  ldloc.0
    IL_007d:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_0082:  ldfld      string Game.WorldSettings::OriginalSerializationVersion
    IL_0087:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_008c:  brfalse    IL_01e7

    IL_0091:  ldarg.0
    IL_0092:  ldloc.1
    IL_0093:  ldc.r4     2000.
    IL_0098:  ldc.r4     4000.
    IL_009d:  callvirt   instance float32 Game.OldRandom::UniformFloat(float32,
                                                                       float32)
    IL_00a2:  ldloc.1
    IL_00a3:  ldc.r4     2000.
    IL_00a8:  ldc.r4     4000.
    IL_00ad:  callvirt   instance float32 Game.OldRandom::UniformFloat(float32,
                                                                       float32)
    IL_00b2:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00b7:  stfld      valuetype [Engine]Engine.Vector2 Game.TerrainContentsGenerator::m_oceanCorner
    IL_00bc:  ldarg.0
    IL_00bd:  ldc.r4     1000.
    IL_00c2:  ldc.r4     1000.
    IL_00c7:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00cc:  stfld      valuetype [Engine]Engine.Vector2 Game.TerrainContentsGenerator::m_temperatureOffset
    IL_00d1:  ldarg.0
    IL_00d2:  ldc.r4     0.0
    IL_00d7:  ldc.r4     0.0
    IL_00dc:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00e1:  stfld      valuetype [Engine]Engine.Vector2 Game.TerrainContentsGenerator::m_humidityOffset
    IL_00e6:  ldarg.0
    IL_00e7:  ldc.r4     0.0
    IL_00ec:  ldc.r4     0.0
    IL_00f1:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00f6:  stfld      valuetype [Engine]Engine.Vector2 Game.TerrainContentsGenerator::m_mountainsOffset
    IL_00fb:  ldarg.0
    IL_00fc:  ldc.r4     0.0
    IL_0101:  ldc.r4     0.0
    IL_0106:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_010b:  stfld      valuetype [Engine]Engine.Vector2 Game.TerrainContentsGenerator::m_riversOffset
    IL_0110:  ldarg.0
    IL_0111:  ldc.i4.0
    IL_0112:  stfld      bool Game.TerrainContentsGenerator::TGNewBiomeNoise
    IL_0117:  ldarg.0
    IL_0118:  ldc.r4     1.
    IL_011d:  stfld      float32 Game.TerrainContentsGenerator::TGBiomeScaling
    IL_0122:  ldarg.0
    IL_0123:  ldc.r4     100.
    IL_0128:  stfld      float32 Game.TerrainContentsGenerator::TGShoreFluctuations
    IL_012d:  ldarg.0
    IL_012e:  ldc.r4     1.
    IL_0133:  stfld      float32 Game.TerrainContentsGenerator::TGShoreFluctuationsScaling
    IL_0138:  ldarg.0
    IL_0139:  ldc.r4     1.5e-002
    IL_013e:  stfld      float32 Game.TerrainContentsGenerator::TGOceanSlope
    IL_0143:  ldarg.0
    IL_0144:  ldc.r4     0.0
    IL_0149:  stfld      float32 Game.TerrainContentsGenerator::TGOceanSlopeVariation
    IL_014e:  ldarg.0
    IL_014f:  ldc.r4     1.7000001e-002
    IL_0154:  stfld      float32 Game.TerrainContentsGenerator::TGIslandsFrequency
    IL_0159:  ldarg.0
    IL_015a:  ldc.r4     57.
    IL_015f:  stfld      float32 Game.TerrainContentsGenerator::TGDensityBias
    IL_0164:  ldarg.0
    IL_0165:  ldc.r4     1.
    IL_016a:  stfld      float32 Game.TerrainContentsGenerator::TGHeightBias
    IL_016f:  ldarg.0
    IL_0170:  ldc.r4     0.0
    IL_0175:  stfld      float32 Game.TerrainContentsGenerator::TGRiversStrength
    IL_017a:  ldarg.0
    IL_017b:  ldc.r4     56.
    IL_0180:  stfld      float32 Game.TerrainContentsGenerator::TGMountainsStrength
    IL_0185:  ldarg.0
    IL_0186:  ldc.r4     1.4e-003
    IL_018b:  stfld      float32 Game.TerrainContentsGenerator::TGMountainsPeriod
    IL_0190:  ldarg.0
    IL_0191:  ldc.r4     0.15000001
    IL_0196:  stfld      float32 Game.TerrainContentsGenerator::TGMountainsPercentage
    IL_019b:  ldarg.0
    IL_019c:  ldc.r4     13.
    IL_01a1:  stfld      float32 Game.TerrainContentsGenerator::TGHillsStrength
    IL_01a6:  ldarg.0
    IL_01a7:  ldc.r4     13.
    IL_01ac:  stfld      float32 Game.TerrainContentsGenerator::TGTurbulenceStrength
    IL_01b1:  ldarg.0
    IL_01b2:  ldc.r4     3.
    IL_01b7:  stfld      float32 Game.TerrainContentsGenerator::TGTurbulenceTopOffset
    IL_01bc:  ldarg.0
    IL_01bd:  ldc.r4     0.5
    IL_01c2:  stfld      float32 Game.TerrainContentsGenerator::TGTurbulencePower
    IL_01c7:  ldc.r4     1.
    IL_01cc:  stsfld     float32 Game.TerrainContentsGenerator::TGSurfaceMultiplier
    IL_01d1:  ldarg.0
    IL_01d2:  ldc.i4.1
    IL_01d3:  stfld      bool Game.TerrainContentsGenerator::TGWater
    IL_01d8:  ldarg.0
    IL_01d9:  ldc.i4.1
    IL_01da:  stfld      bool Game.TerrainContentsGenerator::TGExtras
    IL_01df:  ldarg.0
    IL_01e0:  ldc.i4.1
    IL_01e1:  stfld      bool Game.TerrainContentsGenerator::TGCavesAndPockets
    IL_01e6:  ret

    IL_01e7:  ldloc.0
    IL_01e8:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_01ed:  ldfld      string Game.WorldSettings::OriginalSerializationVersion
    IL_01f2:  ldstr      "2.1"
    IL_01f7:  call       int32 [System.Runtime]System.String::CompareOrdinal(string,
                                                                             string)
    IL_01fc:  ldc.i4.0
    IL_01fd:  bge        IL_0358

    IL_0202:  ldarg.0
    IL_0203:  ldloc.1
    IL_0204:  ldc.r4     2000.
    IL_0209:  ldc.r4     4000.
    IL_020e:  callvirt   instance float32 Game.OldRandom::UniformFloat(float32,
                                                                       float32)
    IL_0213:  ldloc.1
    IL_0214:  ldc.r4     2000.
    IL_0219:  ldc.r4     4000.
    IL_021e:  callvirt   instance float32 Game.OldRandom::UniformFloat(float32,
                                                                       float32)
    IL_0223:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0228:  stfld      valuetype [Engine]Engine.Vector2 Game.TerrainContentsGenerator::m_oceanCorner
    IL_022d:  ldarg.0
    IL_022e:  ldc.r4     1000.
    IL_0233:  ldc.r4     1000.
    IL_0238:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_023d:  stfld      valuetype [Engine]Engine.Vector2 Game.TerrainContentsGenerator::m_temperatureOffset
    IL_0242:  ldarg.0
    IL_0243:  ldc.r4     0.0
    IL_0248:  ldc.r4     0.0
    IL_024d:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0252:  stfld      valuetype [Engine]Engine.Vector2 Game.TerrainContentsGenerator::m_humidityOffset
    IL_0257:  ldarg.0
    IL_0258:  ldc.r4     0.0
    IL_025d:  ldc.r4     0.0
    IL_0262:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0267:  stfld      valuetype [Engine]Engine.Vector2 Game.TerrainContentsGenerator::m_mountainsOffset
    IL_026c:  ldarg.0
    IL_026d:  ldc.r4     0.0
    IL_0272:  ldc.r4     0.0
    IL_0277:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_027c:  stfld      valuetype [Engine]Engine.Vector2 Game.TerrainContentsGenerator::m_riversOffset
    IL_0281:  ldarg.0
    IL_0282:  ldc.i4.0
    IL_0283:  stfld      bool Game.TerrainContentsGenerator::TGNewBiomeNoise
    IL_0288:  ldarg.0
    IL_0289:  ldc.r4     1.
    IL_028e:  stfld      float32 Game.TerrainContentsGenerator::TGBiomeScaling
    IL_0293:  ldarg.0
    IL_0294:  ldc.r4     100.
    IL_0299:  stfld      float32 Game.TerrainContentsGenerator::TGShoreFluctuations
    IL_029e:  ldarg.0
    IL_029f:  ldc.r4     1.
    IL_02a4:  stfld      float32 Game.TerrainContentsGenerator::TGShoreFluctuationsScaling
    IL_02a9:  ldarg.0
    IL_02aa:  ldc.r4     1.5e-002
    IL_02af:  stfld      float32 Game.TerrainContentsGenerator::TGOceanSlope
    IL_02b4:  ldarg.0
    IL_02b5:  ldc.r4     0.0
    IL_02ba:  stfld      float32 Game.TerrainContentsGenerator::TGOceanSlopeVariation
    IL_02bf:  ldarg.0
    IL_02c0:  ldc.r4     1.7000001e-002
    IL_02c5:  stfld      float32 Game.TerrainContentsGenerator::TGIslandsFrequency
    IL_02ca:  ldarg.0
    IL_02cb:  ldc.r4     57.
    IL_02d0:  stfld      float32 Game.TerrainContentsGenerator::TGDensityBias
    IL_02d5:  ldarg.0
    IL_02d6:  ldc.r4     1.
    IL_02db:  stfld      float32 Game.TerrainContentsGenerator::TGHeightBias
    IL_02e0:  ldarg.0
    IL_02e1:  ldc.r4     0.0
    IL_02e6:  stfld      float32 Game.TerrainContentsGenerator::TGRiversStrength
    IL_02eb:  ldarg.0
    IL_02ec:  ldc.r4     50.
    IL_02f1:  stfld      float32 Game.TerrainContentsGenerator::TGMountainsStrength
    IL_02f6:  ldarg.0
    IL_02f7:  ldc.r4     1.4e-003
    IL_02fc:  stfld      float32 Game.TerrainContentsGenerator::TGMountainsPeriod
    IL_0301:  ldarg.0
    IL_0302:  ldc.r4     0.15000001
    IL_0307:  stfld      float32 Game.TerrainContentsGenerator::TGMountainsPercentage
    IL_030c:  ldarg.0
    IL_030d:  ldc.r4     10.
    IL_0312:  stfld      float32 Game.TerrainContentsGenerator::TGHillsStrength
    IL_0317:  ldarg.0
    IL_0318:  ldc.r4     24.
    IL_031d:  stfld      float32 Game.TerrainContentsGenerator::TGTurbulenceStrength
    IL_0322:  ldarg.0
    IL_0323:  ldc.r4     0.0
    IL_0328:  stfld      float32 Game.TerrainContentsGenerator::TGTurbulenceTopOffset
    IL_032d:  ldarg.0
    IL_032e:  ldc.r4     0.30000001
    IL_0333:  stfld      float32 Game.TerrainContentsGenerator::TGTurbulencePower
    IL_0338:  ldc.r4     1.
    IL_033d:  stsfld     float32 Game.TerrainContentsGenerator::TGSurfaceMultiplier
    IL_0342:  ldarg.0
    IL_0343:  ldc.i4.1
    IL_0344:  stfld      bool Game.TerrainContentsGenerator::TGWater
    IL_0349:  ldarg.0
    IL_034a:  ldc.i4.1
    IL_034b:  stfld      bool Game.TerrainContentsGenerator::TGExtras
    IL_0350:  ldarg.0
    IL_0351:  ldc.i4.1
    IL_0352:  stfld      bool Game.TerrainContentsGenerator::TGCavesAndPockets
    IL_0357:  ret

    IL_0358:  ldarg.0
    IL_0359:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.TerrainContentsGenerator::m_islandSize
    IL_035e:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_0363:  brtrue.s   IL_036c

    IL_0365:  ldc.r4     3.4028235e+038
    IL_036a:  br.s       IL_0391

    IL_036c:  ldarg.0
    IL_036d:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.TerrainContentsGenerator::m_islandSize
    IL_0372:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_0377:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_037c:  ldarg.0
    IL_037d:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.TerrainContentsGenerator::m_islandSize
    IL_0382:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_0387:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_038c:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_0391:  stloc.s    V_4
    IL_0393:  ldarg.0
    IL_0394:  ldloc.2
    IL_0395:  ldc.r4     -100.
    IL_039a:  ldc.r4     -100.
    IL_039f:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_03a4:  ldloc.2
    IL_03a5:  ldc.r4     -100.
    IL_03aa:  ldc.r4     -100.
    IL_03af:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_03b4:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_03b9:  stfld      valuetype [Engine]Engine.Vector2 Game.TerrainContentsGenerator::m_oceanCorner
    IL_03be:  ldarg.0
    IL_03bf:  ldloc.2
    IL_03c0:  ldc.r4     -2000.
    IL_03c5:  ldc.r4     2000.
    IL_03ca:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_03cf:  ldloc.2
    IL_03d0:  ldc.r4     -2000.
    IL_03d5:  ldc.r4     2000.
    IL_03da:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_03df:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_03e4:  stfld      valuetype [Engine]Engine.Vector2 Game.TerrainContentsGenerator::m_temperatureOffset
    IL_03e9:  ldarg.0
    IL_03ea:  ldloc.2
    IL_03eb:  ldc.r4     -2000.
    IL_03f0:  ldc.r4     2000.
    IL_03f5:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_03fa:  ldloc.2
    IL_03fb:  ldc.r4     -2000.
    IL_0400:  ldc.r4     2000.
    IL_0405:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_040a:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_040f:  stfld      valuetype [Engine]Engine.Vector2 Game.TerrainContentsGenerator::m_humidityOffset
    IL_0414:  ldarg.0
    IL_0415:  ldloc.2
    IL_0416:  ldc.r4     -2000.
    IL_041b:  ldc.r4     2000.
    IL_0420:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0425:  ldloc.2
    IL_0426:  ldc.r4     -2000.
    IL_042b:  ldc.r4     2000.
    IL_0430:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0435:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_043a:  stfld      valuetype [Engine]Engine.Vector2 Game.TerrainContentsGenerator::m_mountainsOffset
    IL_043f:  ldarg.0
    IL_0440:  ldloc.2
    IL_0441:  ldc.r4     -2000.
    IL_0446:  ldc.r4     2000.
    IL_044b:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0450:  ldloc.2
    IL_0451:  ldc.r4     -2000.
    IL_0456:  ldc.r4     2000.
    IL_045b:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0460:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0465:  stfld      valuetype [Engine]Engine.Vector2 Game.TerrainContentsGenerator::m_riversOffset
    IL_046a:  ldarg.0
    IL_046b:  ldc.i4.1
    IL_046c:  stfld      bool Game.TerrainContentsGenerator::TGNewBiomeNoise
    IL_0471:  ldarg.0
    IL_0472:  ldc.r4     1.5
    IL_0477:  ldarg.0
    IL_0478:  ldfld      class Game.WorldSettings Game.TerrainContentsGenerator::m_worldSettings
    IL_047d:  ldfld      float32 Game.WorldSettings::BiomeSize
    IL_0482:  mul
    IL_0483:  stfld      float32 Game.TerrainContentsGenerator::TGBiomeScaling
    IL_0488:  ldarg.0
    IL_0489:  ldc.r4     2.
    IL_048e:  ldloc.s    V_4
    IL_0490:  mul
    IL_0491:  ldc.r4     0.0
    IL_0496:  ldc.r4     150.
    IL_049b:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_04a0:  stfld      float32 Game.TerrainContentsGenerator::TGShoreFluctuations
    IL_04a5:  ldarg.0
    IL_04a6:  ldc.r4     3.9999999e-002
    IL_04ab:  ldloc.s    V_4
    IL_04ad:  mul
    IL_04ae:  ldc.r4     0.5
    IL_04b3:  ldc.r4     3.
    IL_04b8:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_04bd:  stfld      float32 Game.TerrainContentsGenerator::TGShoreFluctuationsScaling
    IL_04c2:  ldarg.0
    IL_04c3:  ldc.r4     6.0000001e-003
    IL_04c8:  stfld      float32 Game.TerrainContentsGenerator::TGOceanSlope
    IL_04cd:  ldarg.0
    IL_04ce:  ldc.r4     4.0000002e-003
    IL_04d3:  stfld      float32 Game.TerrainContentsGenerator::TGOceanSlopeVariation
    IL_04d8:  ldarg.0
    IL_04d9:  ldc.r4     9.9999998e-003
    IL_04de:  stfld      float32 Game.TerrainContentsGenerator::TGIslandsFrequency
    IL_04e3:  ldarg.0
    IL_04e4:  ldc.r4     55.
    IL_04e9:  stfld      float32 Game.TerrainContentsGenerator::TGDensityBias
    IL_04ee:  ldarg.0
    IL_04ef:  ldc.r4     1.
    IL_04f4:  stfld      float32 Game.TerrainContentsGenerator::TGHeightBias
    IL_04f9:  ldarg.0
    IL_04fa:  ldc.r4     1.
    IL_04ff:  stfld      float32 Game.TerrainContentsGenerator::TGRiversStrength
    IL_0504:  ldarg.0
    IL_0505:  ldc.r4     85.
    IL_050a:  stfld      float32 Game.TerrainContentsGenerator::TGMountainsStrength
    IL_050f:  ldarg.0
    IL_0510:  ldc.r4     1.5e-003
    IL_0515:  stfld      float32 Game.TerrainContentsGenerator::TGMountainsPeriod
    IL_051a:  ldarg.0
    IL_051b:  ldc.r4     0.15000001
    IL_0520:  stfld      float32 Game.TerrainContentsGenerator::TGMountainsPercentage
    IL_0525:  ldarg.0
    IL_0526:  ldc.r4     8.
    IL_052b:  stfld      float32 Game.TerrainContentsGenerator::TGHillsStrength
    IL_0530:  ldarg.0
    IL_0531:  ldc.r4     35.
    IL_0536:  stfld      float32 Game.TerrainContentsGenerator::TGTurbulenceStrength
    IL_053b:  ldarg.0
    IL_053c:  ldc.r4     0.0
    IL_0541:  stfld      float32 Game.TerrainContentsGenerator::TGTurbulenceTopOffset
    IL_0546:  ldarg.0
    IL_0547:  ldc.r4     0.30000001
    IL_054c:  stfld      float32 Game.TerrainContentsGenerator::TGTurbulencePower
    IL_0551:  ldc.r4     2.
    IL_0556:  stsfld     float32 Game.TerrainContentsGenerator::TGSurfaceMultiplier
    IL_055b:  ldarg.0
    IL_055c:  ldc.i4.1
    IL_055d:  stfld      bool Game.TerrainContentsGenerator::TGWater
    IL_0562:  ldarg.0
    IL_0563:  ldc.i4.1
    IL_0564:  stfld      bool Game.TerrainContentsGenerator::TGExtras
    IL_0569:  ldarg.0
    IL_056a:  ldc.i4.1
    IL_056b:  stfld      bool Game.TerrainContentsGenerator::TGCavesAndPockets
    IL_0570:  ret
  } // end of method TerrainContentsGenerator::.ctor

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_OceanLevel() cil managed
  {
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  ldc.i4.s   64
    IL_0002:  ldarg.0
    IL_0003:  ldfld      class Game.WorldSettings Game.TerrainContentsGenerator::m_worldSettings
    IL_0008:  ldfld      int32 Game.WorldSettings::SeaLevelOffset
    IL_000d:  add
    IL_000e:  ret
  } // end of method TerrainContentsGenerator::get_OceanLevel

  .method public hidebysig newslot virtual final 
          instance valuetype [Engine]Engine.Vector3 
          FindCoarseSpawnPosition() cil managed
  {
    // 代码大小       206 (0xce)
    .maxstack  4
    .locals init (valuetype [Engine]Engine.Vector2 V_0,
             float32 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             float32 V_5,
             float32 V_6,
             float32 V_7)
    IL_0000:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_0005:  stloc.0
    IL_0006:  ldc.r4     -3.4028235e+038
    IL_000b:  stloc.1
    IL_000c:  ldc.i4.0
    IL_000d:  stloc.2
    IL_000e:  br         IL_009f

    IL_0013:  ldc.i4.4
    IL_0014:  stloc.3
    IL_0015:  br.s       IL_0094

    IL_0017:  ldc.i4.0
    IL_0018:  stloc.s    V_4
    IL_001a:  br.s       IL_008b

    IL_001c:  ldloc.s    V_4
    IL_001e:  brtrue.s   IL_003f

    IL_0020:  ldarg.0
    IL_0021:  ldflda     valuetype [Engine]Engine.Vector2 Game.TerrainContentsGenerator::m_oceanCorner
    IL_0026:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_002b:  ldloc.2
    IL_002c:  conv.r4
    IL_002d:  add
    IL_002e:  stloc.s    V_6
    IL_0030:  ldarg.0
    IL_0031:  ldloc.s    V_6
    IL_0033:  call       instance float32 Game.TerrainContentsGenerator::CalculateOceanShoreX(float32)
    IL_0038:  ldloc.3
    IL_0039:  conv.r4
    IL_003a:  add
    IL_003b:  stloc.s    V_5
    IL_003d:  br.s       IL_005c

    IL_003f:  ldarg.0
    IL_0040:  ldflda     valuetype [Engine]Engine.Vector2 Game.TerrainContentsGenerator::m_oceanCorner
    IL_0045:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_004a:  ldloc.2
    IL_004b:  conv.r4
    IL_004c:  add
    IL_004d:  stloc.s    V_5
    IL_004f:  ldarg.0
    IL_0050:  ldloc.s    V_5
    IL_0052:  call       instance float32 Game.TerrainContentsGenerator::CalculateOceanShoreZ(float32)
    IL_0057:  ldloc.3
    IL_0058:  conv.r4
    IL_0059:  add
    IL_005a:  stloc.s    V_6
    IL_005c:  ldarg.0
    IL_005d:  ldloc.s    V_5
    IL_005f:  call       int32 Game.Terrain::ToCell(float32)
    IL_0064:  ldloc.s    V_6
    IL_0066:  call       int32 Game.Terrain::ToCell(float32)
    IL_006b:  call       instance float32 Game.TerrainContentsGenerator::ScoreSpawnPosition(int32,
                                                                                            int32)
    IL_0070:  stloc.s    V_7
    IL_0072:  ldloc.s    V_7
    IL_0074:  ldloc.1
    IL_0075:  ble.un.s   IL_0085

    IL_0077:  ldloca.s   V_0
    IL_0079:  ldloc.s    V_5
    IL_007b:  ldloc.s    V_6
    IL_007d:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0082:  ldloc.s    V_7
    IL_0084:  stloc.1
    IL_0085:  ldloc.s    V_4
    IL_0087:  ldc.i4.1
    IL_0088:  add
    IL_0089:  stloc.s    V_4
    IL_008b:  ldloc.s    V_4
    IL_008d:  ldc.i4.2
    IL_008e:  blt.s      IL_001c

    IL_0090:  ldloc.3
    IL_0091:  ldc.i4.2
    IL_0092:  add
    IL_0093:  stloc.3
    IL_0094:  ldloc.3
    IL_0095:  ldc.i4.8
    IL_0096:  ble        IL_0017

    IL_009b:  ldloc.2
    IL_009c:  ldc.i4.2
    IL_009d:  add
    IL_009e:  stloc.2
    IL_009f:  ldloc.2
    IL_00a0:  ldc.i4     0x320
    IL_00a5:  blt        IL_0013

    IL_00aa:  ldloc.0
    IL_00ab:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_00b0:  ldarg.0
    IL_00b1:  ldloc.0
    IL_00b2:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_00b7:  ldloc.0
    IL_00b8:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00bd:  call       instance float32 Game.TerrainContentsGenerator::CalculateHeight(float32,
                                                                                         float32)
    IL_00c2:  ldloc.0
    IL_00c3:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00c8:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00cd:  ret
  } // end of method TerrainContentsGenerator::FindCoarseSpawnPosition

  .method public hidebysig newslot virtual final 
          instance void  GenerateChunkContentsPass1(class Game.TerrainChunk chunk) cil managed
  {
    // 代码大小       25 (0x19)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldc.i4.0
    IL_0003:  ldc.i4.0
    IL_0004:  ldc.i4.s   16
    IL_0006:  ldc.i4.8
    IL_0007:  call       instance void Game.TerrainContentsGenerator::GenerateSurfaceParameters(class Game.TerrainChunk,
                                                                                                int32,
                                                                                                int32,
                                                                                                int32,
                                                                                                int32)
    IL_000c:  ldarg.0
    IL_000d:  ldarg.1
    IL_000e:  ldc.i4.0
    IL_000f:  ldc.i4.0
    IL_0010:  ldc.i4.s   16
    IL_0012:  ldc.i4.8
    IL_0013:  call       instance void Game.TerrainContentsGenerator::GenerateTerrain(class Game.TerrainChunk,
                                                                                      int32,
                                                                                      int32,
                                                                                      int32,
                                                                                      int32)
    IL_0018:  ret
  } // end of method TerrainContentsGenerator::GenerateChunkContentsPass1

  .method public hidebysig newslot virtual final 
          instance void  GenerateChunkContentsPass2(class Game.TerrainChunk chunk) cil managed
  {
    // 代码大小       27 (0x1b)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldc.i4.0
    IL_0003:  ldc.i4.8
    IL_0004:  ldc.i4.s   16
    IL_0006:  ldc.i4.s   16
    IL_0008:  call       instance void Game.TerrainContentsGenerator::GenerateSurfaceParameters(class Game.TerrainChunk,
                                                                                                int32,
                                                                                                int32,
                                                                                                int32,
                                                                                                int32)
    IL_000d:  ldarg.0
    IL_000e:  ldarg.1
    IL_000f:  ldc.i4.0
    IL_0010:  ldc.i4.8
    IL_0011:  ldc.i4.s   16
    IL_0013:  ldc.i4.s   16
    IL_0015:  call       instance void Game.TerrainContentsGenerator::GenerateTerrain(class Game.TerrainChunk,
                                                                                      int32,
                                                                                      int32,
                                                                                      int32,
                                                                                      int32)
    IL_001a:  ret
  } // end of method TerrainContentsGenerator::GenerateChunkContentsPass2

  .method public hidebysig newslot virtual final 
          instance void  GenerateChunkContentsPass3(class Game.TerrainChunk chunk) cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void Game.TerrainContentsGenerator::GenerateCaves(class Game.TerrainChunk)
    IL_0007:  ldarg.0
    IL_0008:  ldarg.1
    IL_0009:  call       instance void Game.TerrainContentsGenerator::GeneratePockets(class Game.TerrainChunk)
    IL_000e:  ldarg.0
    IL_000f:  ldarg.1
    IL_0010:  call       instance void Game.TerrainContentsGenerator::GenerateMinerals(class Game.TerrainChunk)
    IL_0015:  ldarg.0
    IL_0016:  ldarg.1
    IL_0017:  call       instance void Game.TerrainContentsGenerator::GenerateSurface(class Game.TerrainChunk)
    IL_001c:  ldarg.0
    IL_001d:  ldarg.1
    IL_001e:  call       instance void Game.TerrainContentsGenerator::PropagateFluidsDownwards(class Game.TerrainChunk)
    IL_0023:  ret
  } // end of method TerrainContentsGenerator::GenerateChunkContentsPass3

  .method public hidebysig newslot virtual final 
          instance void  GenerateChunkContentsPass4(class Game.TerrainChunk chunk) cil managed
  {
    // 代码大小       92 (0x5c)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void Game.TerrainContentsGenerator::GenerateGrassAndPlants(class Game.TerrainChunk)
    IL_0007:  ldarg.0
    IL_0008:  ldarg.1
    IL_0009:  call       instance void Game.TerrainContentsGenerator::GenerateTreesAndLogs(class Game.TerrainChunk)
    IL_000e:  ldarg.0
    IL_000f:  ldarg.1
    IL_0010:  call       instance void Game.TerrainContentsGenerator::GenerateCacti(class Game.TerrainChunk)
    IL_0015:  ldarg.0
    IL_0016:  ldarg.1
    IL_0017:  call       instance void Game.TerrainContentsGenerator::GeneratePumpkins(class Game.TerrainChunk)
    IL_001c:  ldarg.0
    IL_001d:  ldarg.1
    IL_001e:  call       instance void Game.TerrainContentsGenerator::GenerateKelp(class Game.TerrainChunk)
    IL_0023:  ldarg.0
    IL_0024:  ldarg.1
    IL_0025:  call       instance void Game.TerrainContentsGenerator::GenerateSeagrass(class Game.TerrainChunk)
    IL_002a:  ldarg.0
    IL_002b:  ldarg.1
    IL_002c:  call       instance void Game.TerrainContentsGenerator::GenerateBottomSuckers(class Game.TerrainChunk)
    IL_0031:  ldarg.0
    IL_0032:  ldarg.1
    IL_0033:  call       instance void Game.TerrainContentsGenerator::GenerateTraps(class Game.TerrainChunk)
    IL_0038:  ldarg.0
    IL_0039:  ldarg.1
    IL_003a:  call       instance void Game.TerrainContentsGenerator::GenerateIvy(class Game.TerrainChunk)
    IL_003f:  ldarg.0
    IL_0040:  ldarg.1
    IL_0041:  call       instance void Game.TerrainContentsGenerator::GenerateGraves(class Game.TerrainChunk)
    IL_0046:  ldarg.0
    IL_0047:  ldarg.1
    IL_0048:  call       instance void Game.TerrainContentsGenerator::GenerateSnowAndIce(class Game.TerrainChunk)
    IL_004d:  ldarg.0
    IL_004e:  ldarg.1
    IL_004f:  call       instance void Game.TerrainContentsGenerator::GenerateBedrockAndAir(class Game.TerrainChunk)
    IL_0054:  ldarg.0
    IL_0055:  ldarg.1
    IL_0056:  call       instance void Game.TerrainContentsGenerator::UpdateFluidIsTop(class Game.TerrainChunk)
    IL_005b:  ret
  } // end of method TerrainContentsGenerator::GenerateChunkContentsPass4

  .method public hidebysig newslot virtual final 
          instance float32  CalculateOceanShoreDistance(float32 x,
                                                        float32 z) cil managed
  {
    // 代码大小       141 (0x8d)
    .maxstack  5
    .locals init (float32 V_0,
             float32 V_1,
             float32 V_2,
             float32 V_3,
             float32 V_4,
             float32 V_5)
    IL_0000:  ldarg.0
    IL_0001:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.TerrainContentsGenerator::m_islandSize
    IL_0006:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_000b:  brfalse.s  IL_006d

    IL_000d:  ldarg.0
    IL_000e:  ldarg.2
    IL_000f:  call       instance float32 Game.TerrainContentsGenerator::CalculateOceanShoreX(float32)
    IL_0014:  stloc.0
    IL_0015:  ldarg.0
    IL_0016:  ldarg.1
    IL_0017:  call       instance float32 Game.TerrainContentsGenerator::CalculateOceanShoreZ(float32)
    IL_001c:  stloc.1
    IL_001d:  ldarg.0
    IL_001e:  ldarg.2
    IL_001f:  ldc.r4     1000.
    IL_0024:  add
    IL_0025:  call       instance float32 Game.TerrainContentsGenerator::CalculateOceanShoreX(float32)
    IL_002a:  ldarg.0
    IL_002b:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.TerrainContentsGenerator::m_islandSize
    IL_0030:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_0035:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_003a:  add
    IL_003b:  stloc.2
    IL_003c:  ldarg.0
    IL_003d:  ldarg.1
    IL_003e:  ldc.r4     1000.
    IL_0043:  add
    IL_0044:  call       instance float32 Game.TerrainContentsGenerator::CalculateOceanShoreZ(float32)
    IL_0049:  ldarg.0
    IL_004a:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.TerrainContentsGenerator::m_islandSize
    IL_004f:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_0054:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0059:  add
    IL_005a:  stloc.3
    IL_005b:  ldarg.1
    IL_005c:  ldloc.0
    IL_005d:  sub
    IL_005e:  ldarg.2
    IL_005f:  ldloc.1
    IL_0060:  sub
    IL_0061:  ldloc.2
    IL_0062:  ldarg.1
    IL_0063:  sub
    IL_0064:  ldloc.3
    IL_0065:  ldarg.2
    IL_0066:  sub
    IL_0067:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32,
                                                               float32,
                                                               float32)
    IL_006c:  ret

    IL_006d:  ldarg.0
    IL_006e:  ldarg.2
    IL_006f:  call       instance float32 Game.TerrainContentsGenerator::CalculateOceanShoreX(float32)
    IL_0074:  stloc.s    V_4
    IL_0076:  ldarg.0
    IL_0077:  ldarg.1
    IL_0078:  call       instance float32 Game.TerrainContentsGenerator::CalculateOceanShoreZ(float32)
    IL_007d:  stloc.s    V_5
    IL_007f:  ldarg.1
    IL_0080:  ldloc.s    V_4
    IL_0082:  sub
    IL_0083:  ldarg.2
    IL_0084:  ldloc.s    V_5
    IL_0086:  sub
    IL_0087:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_008c:  ret
  } // end of method TerrainContentsGenerator::CalculateOceanShoreDistance

  .method public hidebysig newslot virtual final 
          instance float32  CalculateMountainRangeFactor(float32 x,
                                                         float32 z) cil managed
  {
    // 代码大小       79 (0x4f)
    .maxstack  8
    IL_0000:  ldc.r4     1.
    IL_0005:  ldc.r4     2.
    IL_000a:  ldarg.1
    IL_000b:  ldarg.0
    IL_000c:  ldflda     valuetype [Engine]Engine.Vector2 Game.TerrainContentsGenerator::m_mountainsOffset
    IL_0011:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0016:  add
    IL_0017:  ldarg.2
    IL_0018:  ldarg.0
    IL_0019:  ldflda     valuetype [Engine]Engine.Vector2 Game.TerrainContentsGenerator::m_mountainsOffset
    IL_001e:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0023:  add
    IL_0024:  ldarg.0
    IL_0025:  ldfld      float32 Game.TerrainContentsGenerator::TGMountainsPeriod
    IL_002a:  ldarg.0
    IL_002b:  ldfld      float32 Game.TerrainContentsGenerator::TGBiomeScaling
    IL_0030:  div
    IL_0031:  ldc.i4.3
    IL_0032:  ldc.r4     1.91
    IL_0037:  ldc.r4     0.75
    IL_003c:  call       float32 Game.SimplexNoise::OctavedNoise(float32,
                                                                 float32,
                                                                 float32,
                                                                 int32,
                                                                 float32,
                                                                 float32)
    IL_0041:  mul
    IL_0042:  ldc.r4     1.
    IL_0047:  sub
    IL_0048:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_004d:  sub
    IL_004e:  ret
  } // end of method TerrainContentsGenerator::CalculateMountainRangeFactor

  .method public hidebysig newslot virtual final 
          instance float32  CalculateHeight(float32 x,
                                            float32 z) cil managed
  {
    // 代码大小       745 (0x2e9)
    .maxstack  9
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
             float32 V_16,
             float32 V_17,
             float32 V_18,
             float32 V_19,
             float32 V_20,
             float32 V_21)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.TerrainContentsGenerator::TGOceanSlope
    IL_0006:  ldarg.0
    IL_0007:  ldfld      float32 Game.TerrainContentsGenerator::TGOceanSlopeVariation
    IL_000c:  ldc.r4     2.
    IL_0011:  ldarg.1
    IL_0012:  ldarg.0
    IL_0013:  ldflda     valuetype [Engine]Engine.Vector2 Game.TerrainContentsGenerator::m_mountainsOffset
    IL_0018:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_001d:  add
    IL_001e:  ldarg.2
    IL_001f:  ldarg.0
    IL_0020:  ldflda     valuetype [Engine]Engine.Vector2 Game.TerrainContentsGenerator::m_mountainsOffset
    IL_0025:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_002a:  add
    IL_002b:  ldc.r4     9.9999998e-003
    IL_0030:  ldc.i4.1
    IL_0031:  ldc.r4     2.
    IL_0036:  ldc.r4     0.5
    IL_003b:  call       float32 Game.SimplexNoise::OctavedNoise(float32,
                                                                 float32,
                                                                 float32,
                                                                 int32,
                                                                 float32,
                                                                 float32)
    IL_0040:  mul
    IL_0041:  ldc.r4     1.
    IL_0046:  sub
    IL_0047:  ldc.r4     0.5
    IL_004c:  call       float32 [Engine]Engine.MathUtils::PowSign(float32,
                                                                   float32)
    IL_0051:  mul
    IL_0052:  add
    IL_0053:  ldarg.0
    IL_0054:  ldarg.1
    IL_0055:  ldarg.2
    IL_0056:  call       instance float32 Game.TerrainContentsGenerator::CalculateOceanShoreDistance(float32,
                                                                                                     float32)
    IL_005b:  stloc.0
    IL_005c:  ldc.r4     1.
    IL_0061:  ldc.r4     5.0000001e-002
    IL_0066:  ldloc.0
    IL_0067:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_006c:  mul
    IL_006d:  sub
    IL_006e:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0073:  stloc.1
    IL_0074:  ldarg.0
    IL_0075:  ldfld      float32 Game.TerrainContentsGenerator::TGIslandsFrequency
    IL_007a:  ldloc.0
    IL_007b:  mul
    IL_007c:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_0081:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0086:  stloc.2
    IL_0087:  neg
    IL_0088:  ldloc.0
    IL_0089:  mul
    IL_008a:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_008f:  ldc.r4     0.85000002
    IL_0094:  ldloc.2
    IL_0095:  mul
    IL_0096:  sub
    IL_0097:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_009c:  stloc.3
    IL_009d:  ldc.r4     5.0000001e-002
    IL_00a2:  ldloc.0
    IL_00a3:  neg
    IL_00a4:  ldc.r4     10.
    IL_00a9:  sub
    IL_00aa:  mul
    IL_00ab:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_00b0:  ldloc.2
    IL_00b1:  sub
    IL_00b2:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_00b7:  stloc.s    V_4
    IL_00b9:  ldarg.0
    IL_00ba:  ldarg.1
    IL_00bb:  ldarg.2
    IL_00bc:  call       instance float32 Game.TerrainContentsGenerator::CalculateMountainRangeFactor(float32,
                                                                                                      float32)
    IL_00c1:  stloc.s    V_5
    IL_00c3:  ldc.r4     1.
    IL_00c8:  ldloc.1
    IL_00c9:  sub
    IL_00ca:  ldarg.1
    IL_00cb:  ldarg.2
    IL_00cc:  ldc.r4     1.e-003
    IL_00d1:  ldarg.0
    IL_00d2:  ldfld      float32 Game.TerrainContentsGenerator::TGBiomeScaling
    IL_00d7:  div
    IL_00d8:  ldc.i4.2
    IL_00d9:  ldc.r4     1.97
    IL_00de:  ldc.r4     0.80000001
    IL_00e3:  call       float32 Game.SimplexNoise::OctavedNoise(float32,
                                                                 float32,
                                                                 float32,
                                                                 int32,
                                                                 float32,
                                                                 float32)
    IL_00e8:  mul
    IL_00e9:  stloc.s    V_6
    IL_00eb:  ldc.r4     1.
    IL_00f0:  ldloc.1
    IL_00f1:  sub
    IL_00f2:  ldarg.1
    IL_00f3:  ldarg.2
    IL_00f4:  ldc.r4     1.7e-003
    IL_00f9:  ldarg.0
    IL_00fa:  ldfld      float32 Game.TerrainContentsGenerator::TGBiomeScaling
    IL_00ff:  div
    IL_0100:  ldc.i4.2
    IL_0101:  ldc.r4     1.9299999
    IL_0106:  ldc.r4     0.69999999
    IL_010b:  call       float32 Game.SimplexNoise::OctavedNoise(float32,
                                                                 float32,
                                                                 float32,
                                                                 int32,
                                                                 float32,
                                                                 float32)
    IL_0110:  mul
    IL_0111:  stloc.s    V_7
    IL_0113:  ldc.r4     1.
    IL_0118:  ldloc.s    V_4
    IL_011a:  sub
    IL_011b:  ldc.r4     1.
    IL_0120:  ldloc.1
    IL_0121:  sub
    IL_0122:  mul
    IL_0123:  ldloc.s    V_5
    IL_0125:  ldc.r4     0.60000002
    IL_012a:  sub
    IL_012b:  ldc.r4     0.40000001
    IL_0130:  div
    IL_0131:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0136:  mul
    IL_0137:  stloc.s    V_8
    IL_0139:  ldc.r4     1.
    IL_013e:  ldloc.s    V_4
    IL_0140:  sub
    IL_0141:  ldloc.s    V_5
    IL_0143:  ldc.r4     1.
    IL_0148:  ldarg.0
    IL_0149:  ldfld      float32 Game.TerrainContentsGenerator::TGMountainsPercentage
    IL_014e:  sub
    IL_014f:  sub
    IL_0150:  ldarg.0
    IL_0151:  ldfld      float32 Game.TerrainContentsGenerator::TGMountainsPercentage
    IL_0156:  div
    IL_0157:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_015c:  mul
    IL_015d:  stloc.s    V_9
    IL_015f:  ldc.r4     2.
    IL_0164:  ldarg.1
    IL_0165:  ldarg.2
    IL_0166:  ldc.r4     2.e-002
    IL_016b:  ldc.i4.3
    IL_016c:  ldc.r4     1.9299999
    IL_0171:  ldc.r4     0.80000001
    IL_0176:  call       float32 Game.SimplexNoise::OctavedNoise(float32,
                                                                 float32,
                                                                 float32,
                                                                 int32,
                                                                 float32,
                                                                 float32)
    IL_017b:  mul
    IL_017c:  ldc.r4     1.
    IL_0181:  sub
    IL_0182:  stloc.s    V_10
    IL_0184:  ldc.r4     1.5
    IL_0189:  ldarg.1
    IL_018a:  ldarg.2
    IL_018b:  ldc.r4     4.0000002e-003
    IL_0190:  ldc.i4.4
    IL_0191:  ldc.r4     1.98
    IL_0196:  ldc.r4     0.89999998
    IL_019b:  call       float32 Game.SimplexNoise::OctavedNoise(float32,
                                                                 float32,
                                                                 float32,
                                                                 int32,
                                                                 float32,
                                                                 float32)
    IL_01a0:  mul
    IL_01a1:  ldc.r4     0.5
    IL_01a6:  sub
    IL_01a7:  stloc.s    V_11
    IL_01a9:  ldc.r4     60.
    IL_01ae:  ldc.r4     30.
    IL_01b3:  ldc.r4     1.
    IL_01b8:  ldloc.s    V_9
    IL_01ba:  mul
    IL_01bb:  ldc.r4     0.5
    IL_01c0:  ldloc.s    V_8
    IL_01c2:  mul
    IL_01c3:  add
    IL_01c4:  ldc.r4     1.
    IL_01c9:  ldloc.0
    IL_01ca:  ldc.r4     30.
    IL_01cf:  div
    IL_01d0:  sub
    IL_01d1:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_01d6:  add
    IL_01d7:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_01dc:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_01e1:  stloc.s    V_12
    IL_01e3:  ldc.r4     -2.
    IL_01e8:  ldc.r4     -4.
    IL_01ed:  ldloc.s    V_9
    IL_01ef:  ldc.r4     0.5
    IL_01f4:  ldloc.s    V_8
    IL_01f6:  mul
    IL_01f7:  add
    IL_01f8:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_01fd:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0202:  stloc.s    V_13
    IL_0204:  ldc.r4     1.5
    IL_0209:  ldloc.s    V_12
    IL_020b:  ldc.r4     2.
    IL_0210:  ldarg.1
    IL_0211:  ldarg.0
    IL_0212:  ldflda     valuetype [Engine]Engine.Vector2 Game.TerrainContentsGenerator::m_riversOffset
    IL_0217:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_021c:  add
    IL_021d:  ldarg.2
    IL_021e:  ldarg.0
    IL_021f:  ldflda     valuetype [Engine]Engine.Vector2 Game.TerrainContentsGenerator::m_riversOffset
    IL_0224:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0229:  add
    IL_022a:  ldc.r4     1.e-003
    IL_022f:  ldc.i4.4
    IL_0230:  ldc.r4     2.
    IL_0235:  ldc.r4     0.5
    IL_023a:  call       float32 Game.SimplexNoise::OctavedNoise(float32,
                                                                 float32,
                                                                 float32,
                                                                 int32,
                                                                 float32,
                                                                 float32)
    IL_023f:  mul
    IL_0240:  ldc.r4     1.
    IL_0245:  sub
    IL_0246:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_024b:  mul
    IL_024c:  sub
    IL_024d:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0252:  stloc.s    V_14
    IL_0254:  ldc.r4     -50.
    IL_0259:  ldloc.3
    IL_025a:  mul
    IL_025b:  ldarg.0
    IL_025c:  ldfld      float32 Game.TerrainContentsGenerator::TGHeightBias
    IL_0261:  add
    IL_0262:  ldc.r4     0.0
    IL_0267:  ldc.r4     8.
    IL_026c:  ldloc.s    V_6
    IL_026e:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0273:  stloc.s    V_15
    IL_0275:  ldc.r4     0.0
    IL_027a:  ldc.r4     -6.
    IL_027f:  ldloc.s    V_7
    IL_0281:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0286:  stloc.s    V_16
    IL_0288:  ldarg.0
    IL_0289:  ldfld      float32 Game.TerrainContentsGenerator::TGHillsStrength
    IL_028e:  ldloc.s    V_8
    IL_0290:  mul
    IL_0291:  ldloc.s    V_10
    IL_0293:  mul
    IL_0294:  stloc.s    V_17
    IL_0296:  ldarg.0
    IL_0297:  ldfld      float32 Game.TerrainContentsGenerator::TGMountainsStrength
    IL_029c:  ldloc.s    V_9
    IL_029e:  mul
    IL_029f:  ldloc.s    V_11
    IL_02a1:  mul
    IL_02a2:  stloc.s    V_18
    IL_02a4:  ldarg.0
    IL_02a5:  ldfld      float32 Game.TerrainContentsGenerator::TGRiversStrength
    IL_02aa:  ldloc.s    V_14
    IL_02ac:  mul
    IL_02ad:  stloc.s    V_19
    IL_02af:  ldloc.s    V_15
    IL_02b1:  add
    IL_02b2:  ldloc.s    V_16
    IL_02b4:  add
    IL_02b5:  ldloc.s    V_18
    IL_02b7:  add
    IL_02b8:  ldloc.s    V_17
    IL_02ba:  add
    IL_02bb:  stloc.s    V_20
    IL_02bd:  ldloc.s    V_20
    IL_02bf:  ldloc.s    V_13
    IL_02c1:  ldloc.s    V_19
    IL_02c3:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_02c8:  ldloc.s    V_20
    IL_02ca:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_02cf:  stloc.s    V_21
    IL_02d1:  ldc.r4     64.
    IL_02d6:  ldloc.s    V_21
    IL_02d8:  add
    IL_02d9:  ldc.r4     10.
    IL_02de:  ldc.r4     123.
    IL_02e3:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_02e8:  ret
  } // end of method TerrainContentsGenerator::CalculateHeight

  .method public hidebysig newslot virtual final 
          instance int32  CalculateTemperature(float32 x,
                                               float32 z) cil managed
  {
    // 代码大小       218 (0xda)
    .maxstack  7
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.TerrainContentsGenerator::TGNewBiomeNoise
    IL_0006:  brfalse.s  IL_0071

    IL_0008:  ldc.r4     4.
    IL_000d:  ldarg.1
    IL_000e:  ldarg.0
    IL_000f:  ldflda     valuetype [Engine]Engine.Vector2 Game.TerrainContentsGenerator::m_temperatureOffset
    IL_0014:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0019:  add
    IL_001a:  ldarg.2
    IL_001b:  ldarg.0
    IL_001c:  ldflda     valuetype [Engine]Engine.Vector2 Game.TerrainContentsGenerator::m_temperatureOffset
    IL_0021:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0026:  add
    IL_0027:  ldc.r4     1.5e-003
    IL_002c:  ldarg.0
    IL_002d:  ldfld      float32 Game.TerrainContentsGenerator::TGBiomeScaling
    IL_0032:  div
    IL_0033:  ldc.i4.5
    IL_0034:  ldc.r4     2.
    IL_0039:  ldc.r4     0.69999999
    IL_003e:  call       float32 Game.SimplexNoise::OctavedNoise(float32,
                                                                 float32,
                                                                 float32,
                                                                 int32,
                                                                 float32,
                                                                 float32)
    IL_0043:  mul
    IL_0044:  ldc.r4     1.6
    IL_0049:  sub
    IL_004a:  ldarg.0
    IL_004b:  ldfld      class Game.WorldSettings Game.TerrainContentsGenerator::m_worldSettings
    IL_0050:  ldfld      float32 Game.WorldSettings::TemperatureOffset
    IL_0055:  ldc.r4     16.
    IL_005a:  div
    IL_005b:  add
    IL_005c:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0061:  ldc.r4     16.
    IL_0066:  mul
    IL_0067:  conv.i4
    IL_0068:  ldc.i4.0
    IL_0069:  ldc.i4.s   15
    IL_006b:  call       int32 [Engine]Engine.MathUtils::Clamp(int32,
                                                               int32,
                                                               int32)
    IL_0070:  ret

    IL_0071:  ldc.r4     4.
    IL_0076:  ldarg.1
    IL_0077:  ldarg.0
    IL_0078:  ldflda     valuetype [Engine]Engine.Vector2 Game.TerrainContentsGenerator::m_temperatureOffset
    IL_007d:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0082:  add
    IL_0083:  ldarg.2
    IL_0084:  ldarg.0
    IL_0085:  ldflda     valuetype [Engine]Engine.Vector2 Game.TerrainContentsGenerator::m_temperatureOffset
    IL_008a:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_008f:  add
    IL_0090:  ldc.r4     6.0000003e-004
    IL_0095:  ldarg.0
    IL_0096:  ldfld      float32 Game.TerrainContentsGenerator::TGBiomeScaling
    IL_009b:  div
    IL_009c:  ldc.i4.5
    IL_009d:  ldc.r4     1.9299999
    IL_00a2:  ldc.r4     1.
    IL_00a7:  call       float32 Game.SimplexNoise::OctavedNoise(float32,
                                                                 float32,
                                                                 float32,
                                                                 int32,
                                                                 float32,
                                                                 float32)
    IL_00ac:  mul
    IL_00ad:  ldc.r4     1.6
    IL_00b2:  sub
    IL_00b3:  ldarg.0
    IL_00b4:  ldfld      class Game.WorldSettings Game.TerrainContentsGenerator::m_worldSettings
    IL_00b9:  ldfld      float32 Game.WorldSettings::TemperatureOffset
    IL_00be:  ldc.r4     16.
    IL_00c3:  div
    IL_00c4:  add
    IL_00c5:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_00ca:  ldc.r4     16.
    IL_00cf:  mul
    IL_00d0:  conv.i4
    IL_00d1:  ldc.i4.0
    IL_00d2:  ldc.i4.s   15
    IL_00d4:  call       int32 [Engine]Engine.MathUtils::Clamp(int32,
                                                               int32,
                                                               int32)
    IL_00d9:  ret
  } // end of method TerrainContentsGenerator::CalculateTemperature

  .method public hidebysig newslot virtual final 
          instance int32  CalculateHumidity(float32 x,
                                            float32 z) cil managed
  {
    // 代码大小       218 (0xda)
    .maxstack  7
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.TerrainContentsGenerator::TGNewBiomeNoise
    IL_0006:  brfalse.s  IL_0071

    IL_0008:  ldc.r4     4.
    IL_000d:  ldarg.1
    IL_000e:  ldarg.0
    IL_000f:  ldflda     valuetype [Engine]Engine.Vector2 Game.TerrainContentsGenerator::m_humidityOffset
    IL_0014:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0019:  add
    IL_001a:  ldarg.2
    IL_001b:  ldarg.0
    IL_001c:  ldflda     valuetype [Engine]Engine.Vector2 Game.TerrainContentsGenerator::m_humidityOffset
    IL_0021:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0026:  add
    IL_0027:  ldc.r4     1.2000001e-003
    IL_002c:  ldarg.0
    IL_002d:  ldfld      float32 Game.TerrainContentsGenerator::TGBiomeScaling
    IL_0032:  div
    IL_0033:  ldc.i4.5
    IL_0034:  ldc.r4     2.
    IL_0039:  ldc.r4     0.69999999
    IL_003e:  call       float32 Game.SimplexNoise::OctavedNoise(float32,
                                                                 float32,
                                                                 float32,
                                                                 int32,
                                                                 float32,
                                                                 float32)
    IL_0043:  mul
    IL_0044:  ldc.r4     1.2
    IL_0049:  sub
    IL_004a:  ldarg.0
    IL_004b:  ldfld      class Game.WorldSettings Game.TerrainContentsGenerator::m_worldSettings
    IL_0050:  ldfld      float32 Game.WorldSettings::HumidityOffset
    IL_0055:  ldc.r4     16.
    IL_005a:  div
    IL_005b:  add
    IL_005c:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0061:  ldc.r4     16.
    IL_0066:  mul
    IL_0067:  conv.i4
    IL_0068:  ldc.i4.0
    IL_0069:  ldc.i4.s   15
    IL_006b:  call       int32 [Engine]Engine.MathUtils::Clamp(int32,
                                                               int32,
                                                               int32)
    IL_0070:  ret

    IL_0071:  ldc.r4     4.
    IL_0076:  ldarg.1
    IL_0077:  ldarg.0
    IL_0078:  ldflda     valuetype [Engine]Engine.Vector2 Game.TerrainContentsGenerator::m_humidityOffset
    IL_007d:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0082:  add
    IL_0083:  ldarg.2
    IL_0084:  ldarg.0
    IL_0085:  ldflda     valuetype [Engine]Engine.Vector2 Game.TerrainContentsGenerator::m_humidityOffset
    IL_008a:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_008f:  add
    IL_0090:  ldc.r4     7.9999998e-004
    IL_0095:  ldarg.0
    IL_0096:  ldfld      float32 Game.TerrainContentsGenerator::TGBiomeScaling
    IL_009b:  div
    IL_009c:  ldc.i4.5
    IL_009d:  ldc.r4     1.97
    IL_00a2:  ldc.r4     1.
    IL_00a7:  call       float32 Game.SimplexNoise::OctavedNoise(float32,
                                                                 float32,
                                                                 float32,
                                                                 int32,
                                                                 float32,
                                                                 float32)
    IL_00ac:  mul
    IL_00ad:  ldc.r4     1.5
    IL_00b2:  sub
    IL_00b3:  ldarg.0
    IL_00b4:  ldfld      class Game.WorldSettings Game.TerrainContentsGenerator::m_worldSettings
    IL_00b9:  ldfld      float32 Game.WorldSettings::HumidityOffset
    IL_00be:  ldc.r4     16.
    IL_00c3:  div
    IL_00c4:  add
    IL_00c5:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_00ca:  ldc.r4     16.
    IL_00cf:  mul
    IL_00d0:  conv.i4
    IL_00d1:  ldc.i4.0
    IL_00d2:  ldc.i4.s   15
    IL_00d4:  call       int32 [Engine]Engine.MathUtils::Clamp(int32,
                                                               int32,
                                                               int32)
    IL_00d9:  ret
  } // end of method TerrainContentsGenerator::CalculateHumidity

  .method private hidebysig instance float32 
          CalculateOceanShoreX(float32 z) cil managed
  {
    // 代码大小       54 (0x36)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldflda     valuetype [Engine]Engine.Vector2 Game.TerrainContentsGenerator::m_oceanCorner
    IL_0006:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_000b:  ldarg.0
    IL_000c:  ldfld      float32 Game.TerrainContentsGenerator::TGShoreFluctuations
    IL_0011:  ldarg.1
    IL_0012:  ldc.r4     0.0
    IL_0017:  ldc.r4     4.9999999e-003
    IL_001c:  ldarg.0
    IL_001d:  ldfld      float32 Game.TerrainContentsGenerator::TGShoreFluctuationsScaling
    IL_0022:  div
    IL_0023:  ldc.i4.4
    IL_0024:  ldc.r4     1.95
    IL_0029:  ldc.r4     1.
    IL_002e:  call       float32 Game.SimplexNoise::OctavedNoise(float32,
                                                                 float32,
                                                                 float32,
                                                                 int32,
                                                                 float32,
                                                                 float32)
    IL_0033:  mul
    IL_0034:  add
    IL_0035:  ret
  } // end of method TerrainContentsGenerator::CalculateOceanShoreX

  .method private hidebysig instance float32 
          CalculateOceanShoreZ(float32 x) cil managed
  {
    // 代码大小       54 (0x36)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldflda     valuetype [Engine]Engine.Vector2 Game.TerrainContentsGenerator::m_oceanCorner
    IL_0006:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_000b:  ldarg.0
    IL_000c:  ldfld      float32 Game.TerrainContentsGenerator::TGShoreFluctuations
    IL_0011:  ldc.r4     0.0
    IL_0016:  ldarg.1
    IL_0017:  ldc.r4     4.9999999e-003
    IL_001c:  ldarg.0
    IL_001d:  ldfld      float32 Game.TerrainContentsGenerator::TGShoreFluctuationsScaling
    IL_0022:  div
    IL_0023:  ldc.i4.4
    IL_0024:  ldc.r4     1.95
    IL_0029:  ldc.r4     1.
    IL_002e:  call       float32 Game.SimplexNoise::OctavedNoise(float32,
                                                                 float32,
                                                                 float32,
                                                                 int32,
                                                                 float32,
                                                                 float32)
    IL_0033:  mul
    IL_0034:  add
    IL_0035:  ret
  } // end of method TerrainContentsGenerator::CalculateOceanShoreZ

  .method private hidebysig instance float32 
          ScoreSpawnPosition(int32 x,
                             int32 z) cil managed
  {
    // 代码大小       264 (0x108)
    .maxstack  6
    .locals init (float32 V_0,
             float32 V_1,
             int32 V_2,
             int32 V_3,
             float32 V_4,
             float32 V_5,
             float32 V_6,
             float32 V_7,
             float32 V_8,
             float32 V_9)
    IL_0000:  ldc.r4     0.0
    IL_0005:  stloc.0
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  conv.r4
    IL_0009:  ldarg.2
    IL_000a:  conv.r4
    IL_000b:  call       instance float32 Game.TerrainContentsGenerator::CalculateOceanShoreDistance(float32,
                                                                                                     float32)
    IL_0010:  ldarg.0
    IL_0011:  ldarg.1
    IL_0012:  conv.r4
    IL_0013:  ldarg.2
    IL_0014:  conv.r4
    IL_0015:  call       instance float32 Game.TerrainContentsGenerator::CalculateMountainRangeFactor(float32,
                                                                                                      float32)
    IL_001a:  stloc.1
    IL_001b:  ldarg.0
    IL_001c:  ldarg.1
    IL_001d:  conv.r4
    IL_001e:  ldarg.2
    IL_001f:  conv.r4
    IL_0020:  call       instance int32 Game.TerrainContentsGenerator::CalculateHumidity(float32,
                                                                                         float32)
    IL_0025:  stloc.2
    IL_0026:  ldarg.0
    IL_0027:  ldarg.1
    IL_0028:  conv.r4
    IL_0029:  ldarg.2
    IL_002a:  conv.r4
    IL_002b:  call       instance int32 Game.TerrainContentsGenerator::CalculateTemperature(float32,
                                                                                            float32)
    IL_0030:  stloc.3
    IL_0031:  dup
    IL_0032:  ldc.r4     0.0
    IL_0037:  bge.un.s   IL_0041

    IL_0039:  ldloc.0
    IL_003a:  ldc.r4     1.
    IL_003f:  sub
    IL_0040:  stloc.0
    IL_0041:  ldc.r4     10.
    IL_0046:  ble.un.s   IL_0050

    IL_0048:  ldloc.0
    IL_0049:  ldc.r4     1.
    IL_004e:  sub
    IL_004f:  stloc.0
    IL_0050:  ldloc.1
    IL_0051:  ldc.r4     0.66000003
    IL_0056:  ble.un.s   IL_0060

    IL_0058:  ldloc.0
    IL_0059:  ldc.r4     0.5
    IL_005e:  sub
    IL_005f:  stloc.0
    IL_0060:  ldloc.2
    IL_0061:  ldc.i4.s   10
    IL_0063:  bge.s      IL_006d

    IL_0065:  ldloc.0
    IL_0066:  ldc.r4     1.
    IL_006b:  sub
    IL_006c:  stloc.0
    IL_006d:  ldloc.3
    IL_006e:  ldc.i4.2
    IL_006f:  bge.s      IL_0079

    IL_0071:  ldloc.0
    IL_0072:  ldc.r4     0.5
    IL_0077:  sub
    IL_0078:  stloc.0
    IL_0079:  ldarg.0
    IL_007a:  ldarg.1
    IL_007b:  conv.r4
    IL_007c:  ldarg.2
    IL_007d:  conv.r4
    IL_007e:  call       instance float32 Game.TerrainContentsGenerator::CalculateHeight(float32,
                                                                                         float32)
    IL_0083:  ldarg.0
    IL_0084:  ldarg.1
    IL_0085:  ldc.i4.5
    IL_0086:  sub
    IL_0087:  conv.r4
    IL_0088:  ldarg.2
    IL_0089:  ldc.i4.5
    IL_008a:  sub
    IL_008b:  conv.r4
    IL_008c:  call       instance float32 Game.TerrainContentsGenerator::CalculateHeight(float32,
                                                                                         float32)
    IL_0091:  stloc.s    V_4
    IL_0093:  ldarg.0
    IL_0094:  ldarg.1
    IL_0095:  ldc.i4.5
    IL_0096:  sub
    IL_0097:  conv.r4
    IL_0098:  ldarg.2
    IL_0099:  ldc.i4.5
    IL_009a:  add
    IL_009b:  conv.r4
    IL_009c:  call       instance float32 Game.TerrainContentsGenerator::CalculateHeight(float32,
                                                                                         float32)
    IL_00a1:  stloc.s    V_5
    IL_00a3:  ldarg.0
    IL_00a4:  ldarg.1
    IL_00a5:  ldc.i4.5
    IL_00a6:  add
    IL_00a7:  conv.r4
    IL_00a8:  ldarg.2
    IL_00a9:  ldc.i4.5
    IL_00aa:  sub
    IL_00ab:  conv.r4
    IL_00ac:  call       instance float32 Game.TerrainContentsGenerator::CalculateHeight(float32,
                                                                                         float32)
    IL_00b1:  stloc.s    V_6
    IL_00b3:  ldarg.0
    IL_00b4:  ldarg.1
    IL_00b5:  ldc.i4.5
    IL_00b6:  add
    IL_00b7:  conv.r4
    IL_00b8:  ldarg.2
    IL_00b9:  ldc.i4.5
    IL_00ba:  add
    IL_00bb:  conv.r4
    IL_00bc:  call       instance float32 Game.TerrainContentsGenerator::CalculateHeight(float32,
                                                                                         float32)
    IL_00c1:  stloc.s    V_7
    IL_00c3:  dup
    IL_00c4:  ldloc.s    V_4
    IL_00c6:  ldloc.s    V_5
    IL_00c8:  ldloc.s    V_6
    IL_00ca:  ldloc.s    V_7
    IL_00cc:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32,
                                                               float32,
                                                               float32)
    IL_00d1:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_00d6:  stloc.s    V_8
    IL_00d8:  ldloc.s    V_4
    IL_00da:  ldloc.s    V_5
    IL_00dc:  ldloc.s    V_6
    IL_00de:  ldloc.s    V_7
    IL_00e0:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32,
                                                               float32,
                                                               float32)
    IL_00e5:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_00ea:  stloc.s    V_9
    IL_00ec:  ldloc.s    V_8
    IL_00ee:  ldc.r4     64.
    IL_00f3:  blt.s      IL_00fe

    IL_00f5:  ldloc.s    V_9
    IL_00f7:  ldc.r4     75.
    IL_00fc:  ble.un.s   IL_0106

    IL_00fe:  ldloc.0
    IL_00ff:  ldc.r4     1.
    IL_0104:  sub
    IL_0105:  stloc.0
    IL_0106:  ldloc.0
    IL_0107:  ret
  } // end of method TerrainContentsGenerator::ScoreSpawnPosition

  .method private hidebysig instance void 
          GenerateSurfaceParameters(class Game.TerrainChunk chunk,
                                    int32 x1,
                                    int32 z1,
                                    int32 x2,
                                    int32 z2) cil managed
  {
    // 代码大小       99 (0x63)
    .maxstack  4
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5)
    IL_0000:  ldarg.2
    IL_0001:  stloc.0
    IL_0002:  br.s       IL_005d

    IL_0004:  ldarg.3
    IL_0005:  stloc.1
    IL_0006:  br.s       IL_0054

    IL_0008:  ldloc.0
    IL_0009:  ldarg.1
    IL_000a:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_000f:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0014:  add
    IL_0015:  stloc.2
    IL_0016:  ldloc.1
    IL_0017:  ldarg.1
    IL_0018:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_001d:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0022:  add
    IL_0023:  stloc.3
    IL_0024:  ldarg.0
    IL_0025:  ldloc.2
    IL_0026:  conv.r4
    IL_0027:  ldloc.3
    IL_0028:  conv.r4
    IL_0029:  call       instance int32 Game.TerrainContentsGenerator::CalculateTemperature(float32,
                                                                                            float32)
    IL_002e:  stloc.s    V_4
    IL_0030:  ldarg.0
    IL_0031:  ldloc.2
    IL_0032:  conv.r4
    IL_0033:  ldloc.3
    IL_0034:  conv.r4
    IL_0035:  call       instance int32 Game.TerrainContentsGenerator::CalculateHumidity(float32,
                                                                                         float32)
    IL_003a:  stloc.s    V_5
    IL_003c:  ldarg.1
    IL_003d:  ldloc.0
    IL_003e:  ldloc.1
    IL_003f:  ldloc.s    V_4
    IL_0041:  callvirt   instance void Game.TerrainChunk::SetTemperatureFast(int32,
                                                                             int32,
                                                                             int32)
    IL_0046:  ldarg.1
    IL_0047:  ldloc.0
    IL_0048:  ldloc.1
    IL_0049:  ldloc.s    V_5
    IL_004b:  callvirt   instance void Game.TerrainChunk::SetHumidityFast(int32,
                                                                          int32,
                                                                          int32)
    IL_0050:  ldloc.1
    IL_0051:  ldc.i4.1
    IL_0052:  add
    IL_0053:  stloc.1
    IL_0054:  ldloc.1
    IL_0055:  ldarg.s    z2
    IL_0057:  blt.s      IL_0008

    IL_0059:  ldloc.0
    IL_005a:  ldc.i4.1
    IL_005b:  add
    IL_005c:  stloc.0
    IL_005d:  ldloc.0
    IL_005e:  ldarg.s    x2
    IL_0060:  blt.s      IL_0004

    IL_0062:  ret
  } // end of method TerrainContentsGenerator::GenerateSurfaceParameters

  .method private hidebysig instance void 
          GenerateTerrain(class Game.TerrainChunk chunk,
                          int32 x1,
                          int32 z1,
                          int32 x2,
                          int32 z2) cil managed
  {
    // 代码大小       1149 (0x47d)
    .maxstack  12
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             class Game.TerrainContentsGenerator/Grid2d V_4,
             class Game.TerrainContentsGenerator/Grid2d V_5,
             class Game.TerrainContentsGenerator/Grid3d V_6,
             int32 V_7,
             int32 V_8,
             int32 V_9,
             int32 V_10,
             int32 V_11,
             int32 V_12,
             int32 V_13,
             float32 V_14,
             float32 V_15,
             float32 V_16,
             int32 V_17,
             int32 V_18,
             float32 V_19,
             float32 V_20,
             float32 V_21,
             float32 V_22,
             int32 V_23,
             int32 V_24,
             int32 V_25,
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
             float32 V_41,
             int32 V_42,
             float32 V_43,
             float32 V_44,
             float32 V_45,
             float32 V_46,
             int32 V_47,
             float32 V_48,
             float32 V_49,
             int32 V_50,
             int32 V_51,
             int32 V_52,
             int32 V_53,
             float32 V_54,
             float32 V_55,
             int32 V_56,
             float32 V_57,
             float32 V_58,
             float32 V_59,
             bool V_60,
             int32 V_61,
             int32 V_62,
             int32 V_63,
             int32 V_64)
    IL_0000:  ldarg.s    x2
    IL_0002:  ldarg.2
    IL_0003:  sub
    IL_0004:  stloc.0
    IL_0005:  ldarg.s    z2
    IL_0007:  ldarg.3
    IL_0008:  sub
    IL_0009:  stloc.1
    IL_000a:  ldarg.0
    IL_000b:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_0010:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0015:  pop
    IL_0016:  ldarg.1
    IL_0017:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_001c:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0021:  ldarg.2
    IL_0022:  add
    IL_0023:  stloc.2
    IL_0024:  ldarg.1
    IL_0025:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_002a:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_002f:  ldarg.3
    IL_0030:  add
    IL_0031:  stloc.3
    IL_0032:  ldloc.0
    IL_0033:  ldloc.1
    IL_0034:  newobj     instance void Game.TerrainContentsGenerator/Grid2d::.ctor(int32,
                                                                                   int32)
    IL_0039:  stloc.s    V_4
    IL_003b:  ldloc.0
    IL_003c:  ldloc.1
    IL_003d:  newobj     instance void Game.TerrainContentsGenerator/Grid2d::.ctor(int32,
                                                                                   int32)
    IL_0042:  stloc.s    V_5
    IL_0044:  ldc.i4.0
    IL_0045:  stloc.s    V_8
    IL_0047:  br.s       IL_0095

    IL_0049:  ldc.i4.0
    IL_004a:  stloc.s    V_9
    IL_004c:  br.s       IL_008a

    IL_004e:  ldloc.s    V_4
    IL_0050:  ldloc.s    V_9
    IL_0052:  ldloc.s    V_8
    IL_0054:  ldarg.0
    IL_0055:  ldloc.s    V_9
    IL_0057:  ldloc.2
    IL_0058:  add
    IL_0059:  conv.r4
    IL_005a:  ldloc.s    V_8
    IL_005c:  ldloc.3
    IL_005d:  add
    IL_005e:  conv.r4
    IL_005f:  call       instance float32 Game.TerrainContentsGenerator::CalculateOceanShoreDistance(float32,
                                                                                                     float32)
    IL_0064:  callvirt   instance void Game.TerrainContentsGenerator/Grid2d::Set(int32,
                                                                                 int32,
                                                                                 float32)
    IL_0069:  ldloc.s    V_5
    IL_006b:  ldloc.s    V_9
    IL_006d:  ldloc.s    V_8
    IL_006f:  ldarg.0
    IL_0070:  ldloc.s    V_9
    IL_0072:  ldloc.2
    IL_0073:  add
    IL_0074:  conv.r4
    IL_0075:  ldloc.s    V_8
    IL_0077:  ldloc.3
    IL_0078:  add
    IL_0079:  conv.r4
    IL_007a:  call       instance float32 Game.TerrainContentsGenerator::CalculateMountainRangeFactor(float32,
                                                                                                      float32)
    IL_007f:  callvirt   instance void Game.TerrainContentsGenerator/Grid2d::Set(int32,
                                                                                 int32,
                                                                                 float32)
    IL_0084:  ldloc.s    V_9
    IL_0086:  ldc.i4.1
    IL_0087:  add
    IL_0088:  stloc.s    V_9
    IL_008a:  ldloc.s    V_9
    IL_008c:  ldloc.0
    IL_008d:  blt.s      IL_004e

    IL_008f:  ldloc.s    V_8
    IL_0091:  ldc.i4.1
    IL_0092:  add
    IL_0093:  stloc.s    V_8
    IL_0095:  ldloc.s    V_8
    IL_0097:  ldloc.1
    IL_0098:  blt.s      IL_0049

    IL_009a:  ldloc.0
    IL_009b:  ldc.i4.4
    IL_009c:  div
    IL_009d:  ldc.i4.1
    IL_009e:  add
    IL_009f:  ldc.i4.s   17
    IL_00a1:  ldloc.1
    IL_00a2:  ldc.i4.4
    IL_00a3:  div
    IL_00a4:  ldc.i4.1
    IL_00a5:  add
    IL_00a6:  newobj     instance void Game.TerrainContentsGenerator/Grid3d::.ctor(int32,
                                                                                   int32,
                                                                                   int32)
    IL_00ab:  stloc.s    V_6
    IL_00ad:  ldc.i4.0
    IL_00ae:  stloc.s    V_10
    IL_00b0:  br         IL_01f0

    IL_00b5:  ldc.i4.0
    IL_00b6:  stloc.s    V_11
    IL_00b8:  br         IL_01dc

    IL_00bd:  ldloc.s    V_10
    IL_00bf:  ldc.i4.4
    IL_00c0:  mul
    IL_00c1:  ldloc.2
    IL_00c2:  add
    IL_00c3:  stloc.s    V_12
    IL_00c5:  ldloc.s    V_11
    IL_00c7:  ldc.i4.4
    IL_00c8:  mul
    IL_00c9:  ldloc.3
    IL_00ca:  add
    IL_00cb:  stloc.s    V_13
    IL_00cd:  ldarg.0
    IL_00ce:  ldloc.s    V_12
    IL_00d0:  conv.r4
    IL_00d1:  ldloc.s    V_13
    IL_00d3:  conv.r4
    IL_00d4:  call       instance float32 Game.TerrainContentsGenerator::CalculateHeight(float32,
                                                                                         float32)
    IL_00d9:  stloc.s    V_14
    IL_00db:  ldarg.0
    IL_00dc:  ldloc.s    V_12
    IL_00de:  conv.r4
    IL_00df:  ldloc.s    V_13
    IL_00e1:  conv.r4
    IL_00e2:  call       instance float32 Game.TerrainContentsGenerator::CalculateMountainRangeFactor(float32,
                                                                                                      float32)
    IL_00e7:  stloc.s    V_15
    IL_00e9:  ldc.r4     0.89999998
    IL_00ee:  ldloc.s    V_15
    IL_00f0:  ldc.r4     0.80000001
    IL_00f5:  sub
    IL_00f6:  mul
    IL_00f7:  ldc.r4     0.2
    IL_00fc:  div
    IL_00fd:  ldc.r4     0.1
    IL_0102:  add
    IL_0103:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0108:  stloc.s    V_16
    IL_010a:  ldc.i4.0
    IL_010b:  stloc.s    V_17
    IL_010d:  br         IL_01c8

    IL_0112:  ldloc.s    V_17
    IL_0114:  ldc.i4.8
    IL_0115:  mul
    IL_0116:  stloc.s    V_18
    IL_0118:  ldloc.s    V_14
    IL_011a:  ldarg.0
    IL_011b:  ldfld      float32 Game.TerrainContentsGenerator::TGTurbulenceTopOffset
    IL_0120:  sub
    IL_0121:  stloc.s    V_19
    IL_0123:  ldc.r4     0.0
    IL_0128:  ldarg.0
    IL_0129:  ldfld      float32 Game.TerrainContentsGenerator::TGTurbulenceStrength
    IL_012e:  ldloc.s    V_16
    IL_0130:  mul
    IL_0131:  ldloc.s    V_19
    IL_0133:  ldloc.s    V_18
    IL_0135:  conv.r4
    IL_0136:  sub
    IL_0137:  ldc.r4     0.2
    IL_013c:  mul
    IL_013d:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0142:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0147:  ldc.r4     2.
    IL_014c:  ldloc.s    V_12
    IL_014e:  conv.r4
    IL_014f:  ldloc.s    V_18
    IL_0151:  ldc.i4     0x3e8
    IL_0156:  add
    IL_0157:  conv.r4
    IL_0158:  ldloc.s    V_13
    IL_015a:  conv.r4
    IL_015b:  ldc.r4     8.0000004e-003
    IL_0160:  ldc.i4.3
    IL_0161:  ldc.r4     2.
    IL_0166:  ldc.r4     0.75
    IL_016b:  call       float32 Game.SimplexNoise::OctavedNoise(float32,
                                                                 float32,
                                                                 float32,
                                                                 float32,
                                                                 int32,
                                                                 float32,
                                                                 float32)
    IL_0170:  mul
    IL_0171:  ldc.r4     1.
    IL_0176:  sub
    IL_0177:  ldarg.0
    IL_0178:  ldfld      float32 Game.TerrainContentsGenerator::TGTurbulencePower
    IL_017d:  call       float32 [Engine]Engine.MathUtils::PowSign(float32,
                                                                   float32)
    IL_0182:  mul
    IL_0183:  stloc.s    V_20
    IL_0185:  ldloc.s    V_18
    IL_0187:  conv.r4
    IL_0188:  ldloc.s    V_20
    IL_018a:  add
    IL_018b:  stloc.s    V_21
    IL_018d:  ldloc.s    V_14
    IL_018f:  ldloc.s    V_21
    IL_0191:  sub
    IL_0192:  stloc.s    V_22
    IL_0194:  ldloc.s    V_22
    IL_0196:  ldc.r4     4.
    IL_019b:  ldarg.0
    IL_019c:  ldfld      float32 Game.TerrainContentsGenerator::TGDensityBias
    IL_01a1:  ldloc.s    V_18
    IL_01a3:  conv.r4
    IL_01a4:  sub
    IL_01a5:  mul
    IL_01a6:  ldc.r4     0.0
    IL_01ab:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_01b0:  add
    IL_01b1:  stloc.s    V_22
    IL_01b3:  ldloc.s    V_6
    IL_01b5:  ldloc.s    V_10
    IL_01b7:  ldloc.s    V_17
    IL_01b9:  ldloc.s    V_11
    IL_01bb:  ldloc.s    V_22
    IL_01bd:  callvirt   instance void Game.TerrainContentsGenerator/Grid3d::Set(int32,
                                                                                 int32,
                                                                                 int32,
                                                                                 float32)
    IL_01c2:  ldloc.s    V_17
    IL_01c4:  ldc.i4.1
    IL_01c5:  add
    IL_01c6:  stloc.s    V_17
    IL_01c8:  ldloc.s    V_17
    IL_01ca:  ldloc.s    V_6
    IL_01cc:  callvirt   instance int32 Game.TerrainContentsGenerator/Grid3d::get_SizeY()
    IL_01d1:  blt        IL_0112

    IL_01d6:  ldloc.s    V_11
    IL_01d8:  ldc.i4.1
    IL_01d9:  add
    IL_01da:  stloc.s    V_11
    IL_01dc:  ldloc.s    V_11
    IL_01de:  ldloc.s    V_6
    IL_01e0:  callvirt   instance int32 Game.TerrainContentsGenerator/Grid3d::get_SizeZ()
    IL_01e5:  blt        IL_00bd

    IL_01ea:  ldloc.s    V_10
    IL_01ec:  ldc.i4.1
    IL_01ed:  add
    IL_01ee:  stloc.s    V_10
    IL_01f0:  ldloc.s    V_10
    IL_01f2:  ldloc.s    V_6
    IL_01f4:  callvirt   instance int32 Game.TerrainContentsGenerator/Grid3d::get_SizeX()
    IL_01f9:  blt        IL_00b5

    IL_01fe:  ldarg.0
    IL_01ff:  call       instance int32 Game.TerrainContentsGenerator::get_OceanLevel()
    IL_0204:  stloc.s    V_7
    IL_0206:  ldc.i4.0
    IL_0207:  stloc.s    V_23
    IL_0209:  br         IL_046c

    IL_020e:  ldc.i4.0
    IL_020f:  stloc.s    V_24
    IL_0211:  br         IL_0456

    IL_0216:  ldc.i4.0
    IL_0217:  stloc.s    V_25
    IL_0219:  br         IL_0440

    IL_021e:  ldloc.s    V_6
    IL_0220:  ldloc.s    V_23
    IL_0222:  ldloc.s    V_25
    IL_0224:  ldloc.s    V_24
    IL_0226:  ldloca.s   V_26
    IL_0228:  ldloca.s   V_27
    IL_022a:  ldloca.s   V_28
    IL_022c:  ldloca.s   V_29
    IL_022e:  ldloca.s   V_30
    IL_0230:  ldloca.s   V_31
    IL_0232:  ldloca.s   V_32
    IL_0234:  ldloca.s   V_33
    IL_0236:  callvirt   instance void Game.TerrainContentsGenerator/Grid3d::Get8(int32,
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
    IL_023b:  ldloc.s    V_27
    IL_023d:  ldloc.s    V_26
    IL_023f:  sub
    IL_0240:  ldc.r4     4.
    IL_0245:  div
    IL_0246:  stloc.s    V_34
    IL_0248:  ldloc.s    V_29
    IL_024a:  ldloc.s    V_28
    IL_024c:  sub
    IL_024d:  ldc.r4     4.
    IL_0252:  div
    IL_0253:  stloc.s    V_35
    IL_0255:  ldloc.s    V_31
    IL_0257:  ldloc.s    V_30
    IL_0259:  sub
    IL_025a:  ldc.r4     4.
    IL_025f:  div
    IL_0260:  stloc.s    V_36
    IL_0262:  ldloc.s    V_33
    IL_0264:  ldloc.s    V_32
    IL_0266:  sub
    IL_0267:  ldc.r4     4.
    IL_026c:  div
    IL_026d:  stloc.s    V_37
    IL_026f:  ldloc.s    V_26
    IL_0271:  stloc.s    V_38
    IL_0273:  ldloc.s    V_28
    IL_0275:  stloc.s    V_39
    IL_0277:  ldloc.s    V_30
    IL_0279:  stloc.s    V_40
    IL_027b:  ldloc.s    V_32
    IL_027d:  stloc.s    V_41
    IL_027f:  ldc.i4.0
    IL_0280:  stloc.s    V_42
    IL_0282:  br         IL_0432

    IL_0287:  ldloc.s    V_40
    IL_0289:  ldloc.s    V_38
    IL_028b:  sub
    IL_028c:  ldc.r4     4.
    IL_0291:  div
    IL_0292:  stloc.s    V_43
    IL_0294:  ldloc.s    V_41
    IL_0296:  ldloc.s    V_39
    IL_0298:  sub
    IL_0299:  ldc.r4     4.
    IL_029e:  div
    IL_029f:  stloc.s    V_44
    IL_02a1:  ldloc.s    V_38
    IL_02a3:  stloc.s    V_45
    IL_02a5:  ldloc.s    V_39
    IL_02a7:  stloc.s    V_46
    IL_02a9:  ldc.i4.0
    IL_02aa:  stloc.s    V_47
    IL_02ac:  br         IL_0408

    IL_02b1:  ldloc.s    V_46
    IL_02b3:  ldloc.s    V_45
    IL_02b5:  sub
    IL_02b6:  ldc.r4     8.
    IL_02bb:  div
    IL_02bc:  stloc.s    V_48
    IL_02be:  ldloc.s    V_45
    IL_02c0:  stloc.s    V_49
    IL_02c2:  ldloc.s    V_42
    IL_02c4:  ldloc.s    V_23
    IL_02c6:  ldc.i4.4
    IL_02c7:  mul
    IL_02c8:  add
    IL_02c9:  stloc.s    V_50
    IL_02cb:  ldloc.s    V_47
    IL_02cd:  ldloc.s    V_24
    IL_02cf:  ldc.i4.4
    IL_02d0:  mul
    IL_02d1:  add
    IL_02d2:  stloc.s    V_51
    IL_02d4:  ldarg.2
    IL_02d5:  ldloc.s    V_50
    IL_02d7:  add
    IL_02d8:  stloc.s    V_52
    IL_02da:  ldarg.3
    IL_02db:  ldloc.s    V_51
    IL_02dd:  add
    IL_02de:  stloc.s    V_53
    IL_02e0:  ldloc.s    V_4
    IL_02e2:  ldloc.s    V_50
    IL_02e4:  ldloc.s    V_51
    IL_02e6:  callvirt   instance float32 Game.TerrainContentsGenerator/Grid2d::Get(int32,
                                                                                    int32)
    IL_02eb:  stloc.s    V_54
    IL_02ed:  ldloc.s    V_5
    IL_02ef:  ldloc.s    V_50
    IL_02f1:  ldloc.s    V_51
    IL_02f3:  callvirt   instance float32 Game.TerrainContentsGenerator/Grid2d::Get(int32,
                                                                                    int32)
    IL_02f8:  stloc.s    V_55
    IL_02fa:  ldarg.1
    IL_02fb:  ldloc.s    V_52
    IL_02fd:  ldloc.s    V_53
    IL_02ff:  callvirt   instance int32 Game.TerrainChunk::GetTemperatureFast(int32,
                                                                              int32)
    IL_0304:  ldarg.1
    IL_0305:  ldloc.s    V_52
    IL_0307:  ldloc.s    V_53
    IL_0309:  callvirt   instance int32 Game.TerrainChunk::GetHumidityFast(int32,
                                                                           int32)
    IL_030e:  stloc.s    V_56
    IL_0310:  ldloc.s    V_55
    IL_0312:  ldc.r4     9.9999998e-003
    IL_0317:  ldloc.s    V_56
    IL_0319:  conv.r4
    IL_031a:  mul
    IL_031b:  sub
    IL_031c:  stloc.s    V_57
    IL_031e:  ldc.r4     100.
    IL_0323:  ldc.r4     0.0
    IL_0328:  ldloc.s    V_57
    IL_032a:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_032f:  stloc.s    V_58
    IL_0331:  ldc.r4     300.
    IL_0336:  ldc.r4     30.
    IL_033b:  ldloc.s    V_57
    IL_033d:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0342:  stloc.s    V_59
    IL_0344:  ldc.i4.8
    IL_0345:  ble.s      IL_0355

    IL_0347:  ldloc.s    V_56
    IL_0349:  ldc.i4.8
    IL_034a:  bge.s      IL_0355

    IL_034c:  ldloc.s    V_55
    IL_034e:  ldc.r4     0.94999999
    IL_0353:  blt.s      IL_0371

    IL_0355:  ldloc.s    V_54
    IL_0357:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_035c:  ldc.r4     12.
    IL_0361:  bge.un.s   IL_036e

    IL_0363:  ldloc.s    V_55
    IL_0365:  ldc.r4     0.89999998
    IL_036a:  clt
    IL_036c:  br.s       IL_0372

    IL_036e:  ldc.i4.0
    IL_036f:  br.s       IL_0372

    IL_0371:  ldc.i4.1
    IL_0372:  stloc.s    V_60
    IL_0374:  ldloc.s    V_52
    IL_0376:  ldc.i4.0
    IL_0377:  ldloc.s    V_53
    IL_0379:  call       int32 Game.TerrainChunk::CalculateCellIndex(int32,
                                                                     int32,
                                                                     int32)
    IL_037e:  stloc.s    V_61
    IL_0380:  ldc.i4.0
    IL_0381:  stloc.s    V_62
    IL_0383:  br.s       IL_03ef

    IL_0385:  ldloc.s    V_62
    IL_0387:  ldloc.s    V_25
    IL_0389:  ldc.i4.8
    IL_038a:  mul
    IL_038b:  add
    IL_038c:  stloc.s    V_63
    IL_038e:  ldc.i4.0
    IL_038f:  stloc.s    V_64
    IL_0391:  ldloc.s    V_49
    IL_0393:  ldc.r4     0.0
    IL_0398:  bge.un.s   IL_03a6

    IL_039a:  ldloc.s    V_63
    IL_039c:  ldloc.s    V_7
    IL_039e:  bgt.s      IL_03d5

    IL_03a0:  ldc.i4.s   18
    IL_03a2:  stloc.s    V_64
    IL_03a4:  br.s       IL_03d5

    IL_03a6:  ldloc.s    V_60
    IL_03a8:  brfalse.s  IL_03c6

    IL_03aa:  ldloc.s    V_49
    IL_03ac:  ldloc.s    V_58
    IL_03ae:  bge.un.s   IL_03b5

    IL_03b0:  ldc.i4.4
    IL_03b1:  stloc.s    V_64
    IL_03b3:  br.s       IL_03d5

    IL_03b5:  ldloc.s    V_49
    IL_03b7:  ldloc.s    V_59
    IL_03b9:  bge.un.s   IL_03c0

    IL_03bb:  ldc.i4.3
    IL_03bc:  stloc.s    V_64
    IL_03be:  br.s       IL_03d5

    IL_03c0:  ldc.i4.s   67
    IL_03c2:  stloc.s    V_64
    IL_03c4:  br.s       IL_03d5

    IL_03c6:  ldloc.s    V_49
    IL_03c8:  ldloc.s    V_59
    IL_03ca:  bge.un.s   IL_03d1

    IL_03cc:  ldc.i4.3
    IL_03cd:  stloc.s    V_64
    IL_03cf:  br.s       IL_03d5

    IL_03d1:  ldc.i4.s   67
    IL_03d3:  stloc.s    V_64
    IL_03d5:  ldarg.1
    IL_03d6:  ldloc.s    V_61
    IL_03d8:  ldloc.s    V_63
    IL_03da:  add
    IL_03db:  ldloc.s    V_64
    IL_03dd:  callvirt   instance void Game.TerrainChunk::SetCellValueFast(int32,
                                                                           int32)
    IL_03e2:  ldloc.s    V_49
    IL_03e4:  ldloc.s    V_48
    IL_03e6:  add
    IL_03e7:  stloc.s    V_49
    IL_03e9:  ldloc.s    V_62
    IL_03eb:  ldc.i4.1
    IL_03ec:  add
    IL_03ed:  stloc.s    V_62
    IL_03ef:  ldloc.s    V_62
    IL_03f1:  ldc.i4.8
    IL_03f2:  blt.s      IL_0385

    IL_03f4:  ldloc.s    V_45
    IL_03f6:  ldloc.s    V_43
    IL_03f8:  add
    IL_03f9:  stloc.s    V_45
    IL_03fb:  ldloc.s    V_46
    IL_03fd:  ldloc.s    V_44
    IL_03ff:  add
    IL_0400:  stloc.s    V_46
    IL_0402:  ldloc.s    V_47
    IL_0404:  ldc.i4.1
    IL_0405:  add
    IL_0406:  stloc.s    V_47
    IL_0408:  ldloc.s    V_47
    IL_040a:  ldc.i4.4
    IL_040b:  blt        IL_02b1

    IL_0410:  ldloc.s    V_38
    IL_0412:  ldloc.s    V_34
    IL_0414:  add
    IL_0415:  stloc.s    V_38
    IL_0417:  ldloc.s    V_39
    IL_0419:  ldloc.s    V_35
    IL_041b:  add
    IL_041c:  stloc.s    V_39
    IL_041e:  ldloc.s    V_40
    IL_0420:  ldloc.s    V_36
    IL_0422:  add
    IL_0423:  stloc.s    V_40
    IL_0425:  ldloc.s    V_41
    IL_0427:  ldloc.s    V_37
    IL_0429:  add
    IL_042a:  stloc.s    V_41
    IL_042c:  ldloc.s    V_42
    IL_042e:  ldc.i4.1
    IL_042f:  add
    IL_0430:  stloc.s    V_42
    IL_0432:  ldloc.s    V_42
    IL_0434:  ldc.i4.4
    IL_0435:  blt        IL_0287

    IL_043a:  ldloc.s    V_25
    IL_043c:  ldc.i4.1
    IL_043d:  add
    IL_043e:  stloc.s    V_25
    IL_0440:  ldloc.s    V_25
    IL_0442:  ldloc.s    V_6
    IL_0444:  callvirt   instance int32 Game.TerrainContentsGenerator/Grid3d::get_SizeY()
    IL_0449:  ldc.i4.1
    IL_044a:  sub
    IL_044b:  blt        IL_021e

    IL_0450:  ldloc.s    V_24
    IL_0452:  ldc.i4.1
    IL_0453:  add
    IL_0454:  stloc.s    V_24
    IL_0456:  ldloc.s    V_24
    IL_0458:  ldloc.s    V_6
    IL_045a:  callvirt   instance int32 Game.TerrainContentsGenerator/Grid3d::get_SizeZ()
    IL_045f:  ldc.i4.1
    IL_0460:  sub
    IL_0461:  blt        IL_0216

    IL_0466:  ldloc.s    V_23
    IL_0468:  ldc.i4.1
    IL_0469:  add
    IL_046a:  stloc.s    V_23
    IL_046c:  ldloc.s    V_23
    IL_046e:  ldloc.s    V_6
    IL_0470:  callvirt   instance int32 Game.TerrainContentsGenerator/Grid3d::get_SizeX()
    IL_0475:  ldc.i4.1
    IL_0476:  sub
    IL_0477:  blt        IL_020e

    IL_047c:  ret
  } // end of method TerrainContentsGenerator::GenerateTerrain

  .method private hidebysig instance void 
          GenerateSurface(class Game.TerrainChunk chunk) cil managed
  {
    // 代码大小       563 (0x233)
    .maxstack  4
    .locals init (class Game.Terrain V_0,
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
             float32 V_11,
             int32 V_12,
             int32 V_13,
             int32 V_14,
             int32 V_15,
             int32 V_16,
             int32 V_17,
             int32 V_18,
             int32 V_19,
             int32 V_20)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_000b:  stloc.0
    IL_000c:  ldarg.0
    IL_000d:  ldfld      int32 Game.TerrainContentsGenerator::m_seed
    IL_0012:  ldarg.1
    IL_0013:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Coords
    IL_0018:  ldfld      int32 [Engine]Engine.Point2::X
    IL_001d:  add
    IL_001e:  ldc.i4.s   101
    IL_0020:  ldarg.1
    IL_0021:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Coords
    IL_0026:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_002b:  mul
    IL_002c:  add
    IL_002d:  newobj     instance void Game.Random::.ctor(int32)
    IL_0032:  stloc.1
    IL_0033:  ldc.i4.0
    IL_0034:  stloc.2
    IL_0035:  br         IL_022a

    IL_003a:  ldc.i4.0
    IL_003b:  stloc.3
    IL_003c:  br         IL_021e

    IL_0041:  ldloc.2
    IL_0042:  ldarg.1
    IL_0043:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_0048:  ldfld      int32 [Engine]Engine.Point2::X
    IL_004d:  add
    IL_004e:  stloc.s    V_4
    IL_0050:  ldloc.3
    IL_0051:  ldarg.1
    IL_0052:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_0057:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_005c:  add
    IL_005d:  stloc.s    V_5
    IL_005f:  ldloc.2
    IL_0060:  ldc.i4.s   126
    IL_0062:  ldloc.3
    IL_0063:  call       int32 Game.TerrainChunk::CalculateCellIndex(int32,
                                                                     int32,
                                                                     int32)
    IL_0068:  stloc.s    V_6
    IL_006a:  ldc.i4.s   126
    IL_006c:  stloc.s    V_7
    IL_006e:  br         IL_0212

    IL_0073:  ldarg.1
    IL_0074:  ldloc.s    V_6
    IL_0076:  callvirt   instance int32 Game.TerrainChunk::GetCellValueFast(int32)
    IL_007b:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0080:  stloc.s    V_8
    IL_0082:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0087:  ldloc.s    V_8
    IL_0089:  ldelem.ref
    IL_008a:  ldfld      bool Game.Block::IsTransparent
    IL_008f:  brtrue     IL_0206

    IL_0094:  ldarg.0
    IL_0095:  ldloc.s    V_4
    IL_0097:  conv.r4
    IL_0098:  ldloc.s    V_5
    IL_009a:  conv.r4
    IL_009b:  call       instance float32 Game.TerrainContentsGenerator::CalculateMountainRangeFactor(float32,
                                                                                                      float32)
    IL_00a0:  ldloc.0
    IL_00a1:  ldloc.s    V_4
    IL_00a3:  ldloc.s    V_5
    IL_00a5:  callvirt   instance int32 Game.Terrain::GetTemperature(int32,
                                                                     int32)
    IL_00aa:  stloc.s    V_9
    IL_00ac:  ldloc.0
    IL_00ad:  ldloc.s    V_4
    IL_00af:  ldloc.s    V_5
    IL_00b1:  callvirt   instance int32 Game.Terrain::GetHumidity(int32,
                                                                  int32)
    IL_00b6:  stloc.s    V_10
    IL_00b8:  ldc.r4     0.89999998
    IL_00bd:  sub
    IL_00be:  ldc.r4     0.1
    IL_00c3:  div
    IL_00c4:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_00c9:  ldloc.s    V_10
    IL_00cb:  conv.r4
    IL_00cc:  ldc.r4     3.
    IL_00d1:  sub
    IL_00d2:  ldc.r4     12.
    IL_00d7:  div
    IL_00d8:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_00dd:  sub
    IL_00de:  ldsfld     float32 Game.TerrainContentsGenerator::TGSurfaceMultiplier
    IL_00e3:  ldloc.s    V_7
    IL_00e5:  conv.r4
    IL_00e6:  ldc.r4     85.
    IL_00eb:  sub
    IL_00ec:  ldc.r4     5.0000001e-002
    IL_00f1:  mul
    IL_00f2:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_00f7:  mul
    IL_00f8:  add
    IL_00f9:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_00fe:  stloc.s    V_11
    IL_0100:  ldc.r4     4.
    IL_0105:  ldc.r4     0.0
    IL_010a:  ldloc.s    V_11
    IL_010c:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0111:  conv.i4
    IL_0112:  stloc.s    V_12
    IL_0114:  ldc.r4     7.
    IL_0119:  ldc.r4     0.0
    IL_011e:  ldloc.s    V_11
    IL_0120:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0125:  conv.i4
    IL_0126:  stloc.s    V_13
    IL_0128:  ldloc.1
    IL_0129:  ldloc.s    V_12
    IL_012b:  ldloc.s    V_13
    IL_012d:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0132:  ldloc.s    V_7
    IL_0134:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_0139:  stloc.s    V_14
    IL_013b:  ldc.i4.0
    IL_013c:  stloc.s    V_15
    IL_013e:  ldloc.s    V_8
    IL_0140:  ldc.i4.4
    IL_0141:  bne.un.s   IL_0155

    IL_0143:  ldloc.s    V_9
    IL_0145:  ldc.i4.4
    IL_0146:  ble.s      IL_014d

    IL_0148:  ldloc.s    V_9
    IL_014a:  ldc.i4.7
    IL_014b:  blt.s      IL_0150

    IL_014d:  ldc.i4.7
    IL_014e:  br.s       IL_0151

    IL_0150:  ldc.i4.6
    IL_0151:  stloc.s    V_15
    IL_0153:  br.s       IL_01bf

    IL_0155:  ldloc.s    V_9
    IL_0157:  ldc.i4.4
    IL_0158:  div
    IL_0159:  stloc.s    V_17
    IL_015b:  ldloc.s    V_7
    IL_015d:  ldc.i4.1
    IL_015e:  add
    IL_015f:  ldc.i4.s   127
    IL_0161:  blt.s      IL_0166

    IL_0163:  ldc.i4.0
    IL_0164:  br.s       IL_0172

    IL_0166:  ldarg.1
    IL_0167:  ldloc.2
    IL_0168:  ldloc.s    V_7
    IL_016a:  ldc.i4.1
    IL_016b:  add
    IL_016c:  ldloc.3
    IL_016d:  callvirt   instance int32 Game.TerrainChunk::GetCellContentsFast(int32,
                                                                               int32,
                                                                               int32)
    IL_0172:  stloc.s    V_18
    IL_0174:  ldloc.s    V_7
    IL_0176:  ldc.i4.s   66
    IL_0178:  blt.s      IL_018c

    IL_017a:  ldloc.s    V_7
    IL_017c:  ldc.i4.s   84
    IL_017e:  ldloc.s    V_17
    IL_0180:  add
    IL_0181:  beq.s      IL_018c

    IL_0183:  ldloc.s    V_7
    IL_0185:  ldc.i4.s   103
    IL_0187:  ldloc.s    V_17
    IL_0189:  add
    IL_018a:  bne.un.s   IL_019f

    IL_018c:  ldloc.s    V_10
    IL_018e:  ldc.i4.s   9
    IL_0190:  bne.un.s   IL_019f

    IL_0192:  ldloc.s    V_9
    IL_0194:  ldc.i4.6
    IL_0195:  rem
    IL_0196:  ldc.i4.1
    IL_0197:  bne.un.s   IL_019f

    IL_0199:  ldc.i4.s   66
    IL_019b:  stloc.s    V_15
    IL_019d:  br.s       IL_01bf

    IL_019f:  ldloc.s    V_18
    IL_01a1:  ldc.i4.s   18
    IL_01a3:  bne.un.s   IL_01bc

    IL_01a5:  ldloc.s    V_10
    IL_01a7:  ldc.i4.8
    IL_01a8:  ble.s      IL_01bc

    IL_01aa:  ldloc.s    V_10
    IL_01ac:  ldc.i4.2
    IL_01ad:  rem
    IL_01ae:  brtrue.s   IL_01bc

    IL_01b0:  ldloc.s    V_9
    IL_01b2:  ldc.i4.3
    IL_01b3:  rem
    IL_01b4:  brtrue.s   IL_01bc

    IL_01b6:  ldc.i4.s   72
    IL_01b8:  stloc.s    V_15
    IL_01ba:  br.s       IL_01bf

    IL_01bc:  ldc.i4.2
    IL_01bd:  stloc.s    V_15
    IL_01bf:  ldloc.2
    IL_01c0:  ldloc.s    V_7
    IL_01c2:  ldc.i4.1
    IL_01c3:  add
    IL_01c4:  ldloc.3
    IL_01c5:  call       int32 Game.TerrainChunk::CalculateCellIndex(int32,
                                                                     int32,
                                                                     int32)
    IL_01ca:  stloc.s    V_16
    IL_01cc:  ldloc.s    V_16
    IL_01ce:  ldloc.s    V_14
    IL_01d0:  sub
    IL_01d1:  stloc.s    V_19
    IL_01d3:  br.s       IL_01fe

    IL_01d5:  ldarg.1
    IL_01d6:  ldloc.s    V_19
    IL_01d8:  callvirt   instance int32 Game.TerrainChunk::GetCellValueFast(int32)
    IL_01dd:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_01e2:  brfalse.s  IL_01f8

    IL_01e4:  ldc.i4.0
    IL_01e5:  ldloc.s    V_15
    IL_01e7:  call       int32 Game.Terrain::ReplaceContents(int32,
                                                             int32)
    IL_01ec:  stloc.s    V_20
    IL_01ee:  ldarg.1
    IL_01ef:  ldloc.s    V_19
    IL_01f1:  ldloc.s    V_20
    IL_01f3:  callvirt   instance void Game.TerrainChunk::SetCellValueFast(int32,
                                                                           int32)
    IL_01f8:  ldloc.s    V_19
    IL_01fa:  ldc.i4.1
    IL_01fb:  add
    IL_01fc:  stloc.s    V_19
    IL_01fe:  ldloc.s    V_19
    IL_0200:  ldloc.s    V_16
    IL_0202:  blt.s      IL_01d5

    IL_0204:  br.s       IL_021a

    IL_0206:  ldloc.s    V_7
    IL_0208:  ldc.i4.1
    IL_0209:  sub
    IL_020a:  stloc.s    V_7
    IL_020c:  ldloc.s    V_6
    IL_020e:  ldc.i4.1
    IL_020f:  sub
    IL_0210:  stloc.s    V_6
    IL_0212:  ldloc.s    V_7
    IL_0214:  ldc.i4.0
    IL_0215:  bge        IL_0073

    IL_021a:  ldloc.3
    IL_021b:  ldc.i4.1
    IL_021c:  add
    IL_021d:  stloc.3
    IL_021e:  ldloc.3
    IL_021f:  ldc.i4.s   16
    IL_0221:  blt        IL_0041

    IL_0226:  ldloc.2
    IL_0227:  ldc.i4.1
    IL_0228:  add
    IL_0229:  stloc.2
    IL_022a:  ldloc.2
    IL_022b:  ldc.i4.s   16
    IL_022d:  blt        IL_003a

    IL_0232:  ret
  } // end of method TerrainContentsGenerator::GenerateSurface

  .method private hidebysig instance void 
          GenerateMinerals(class Game.TerrainChunk chunk) cil managed
  {
    // 代码大小       1277 (0x4fd)
    .maxstack  8
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             class Game.Random V_4,
             int32 V_5,
             float32 V_6,
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
             int32 V_42)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.TerrainContentsGenerator::TGCavesAndPockets
    IL_0006:  brtrue.s   IL_0009

    IL_0008:  ret

    IL_0009:  ldarg.1
    IL_000a:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Coords
    IL_000f:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0014:  stloc.0
    IL_0015:  ldarg.1
    IL_0016:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Coords
    IL_001b:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0020:  stloc.1
    IL_0021:  ldloc.0
    IL_0022:  ldc.i4.1
    IL_0023:  sub
    IL_0024:  stloc.2
    IL_0025:  br         IL_04f3

    IL_002a:  ldloc.1
    IL_002b:  ldc.i4.1
    IL_002c:  sub
    IL_002d:  stloc.3
    IL_002e:  br         IL_04e6

    IL_0033:  ldarg.0
    IL_0034:  ldfld      int32 Game.TerrainContentsGenerator::m_seed
    IL_0039:  ldloc.2
    IL_003a:  add
    IL_003b:  ldc.i4.s   119
    IL_003d:  ldloc.3
    IL_003e:  mul
    IL_003f:  add
    IL_0040:  newobj     instance void Game.Random::.ctor(int32)
    IL_0045:  stloc.s    V_4
    IL_0047:  ldloc.s    V_4
    IL_0049:  ldc.i4.0
    IL_004a:  ldc.i4.s   10
    IL_004c:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0051:  stloc.s    V_5
    IL_0053:  ldc.i4.0
    IL_0054:  stloc.s    V_14
    IL_0056:  br.s       IL_0068

    IL_0058:  ldloc.s    V_4
    IL_005a:  ldc.i4.0
    IL_005b:  ldc.i4.1
    IL_005c:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0061:  pop
    IL_0062:  ldloc.s    V_14
    IL_0064:  ldc.i4.1
    IL_0065:  add
    IL_0066:  stloc.s    V_14
    IL_0068:  ldloc.s    V_14
    IL_006a:  ldloc.s    V_5
    IL_006c:  blt.s      IL_0058

    IL_006e:  ldarg.0
    IL_006f:  ldloc.2
    IL_0070:  ldc.i4.s   16
    IL_0072:  mul
    IL_0073:  conv.r4
    IL_0074:  ldloc.3
    IL_0075:  ldc.i4.s   16
    IL_0077:  mul
    IL_0078:  conv.r4
    IL_0079:  call       instance float32 Game.TerrainContentsGenerator::CalculateMountainRangeFactor(float32,
                                                                                                      float32)
    IL_007e:  stloc.s    V_6
    IL_0080:  ldc.r4     3.
    IL_0085:  ldc.r4     3.
    IL_008a:  ldloc.s    V_6
    IL_008c:  mul
    IL_008d:  ldloc.2
    IL_008e:  conv.r4
    IL_008f:  ldloc.3
    IL_0090:  conv.r4
    IL_0091:  ldc.r4     0.33000001
    IL_0096:  ldc.i4.1
    IL_0097:  ldc.r4     1.
    IL_009c:  ldc.r4     1.
    IL_00a1:  call       float32 Game.SimplexNoise::OctavedNoise(float32,
                                                                 float32,
                                                                 float32,
                                                                 int32,
                                                                 float32,
                                                                 float32)
    IL_00a6:  mul
    IL_00a7:  add
    IL_00a8:  conv.i4
    IL_00a9:  stloc.s    V_7
    IL_00ab:  ldc.i4.0
    IL_00ac:  stloc.s    V_15
    IL_00ae:  br.s       IL_010f

    IL_00b0:  ldloc.2
    IL_00b1:  ldc.i4.s   16
    IL_00b3:  mul
    IL_00b4:  ldloc.s    V_4
    IL_00b6:  ldc.i4.0
    IL_00b7:  ldc.i4.s   15
    IL_00b9:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_00be:  add
    IL_00bf:  stloc.s    V_16
    IL_00c1:  ldloc.s    V_4
    IL_00c3:  ldc.i4.5
    IL_00c4:  ldc.i4.s   90
    IL_00c6:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_00cb:  stloc.s    V_17
    IL_00cd:  ldloc.3
    IL_00ce:  ldc.i4.s   16
    IL_00d0:  mul
    IL_00d1:  ldloc.s    V_4
    IL_00d3:  ldc.i4.0
    IL_00d4:  ldc.i4.s   15
    IL_00d6:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_00db:  add
    IL_00dc:  stloc.s    V_18
    IL_00de:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_coalBrushes
    IL_00e3:  ldloc.s    V_4
    IL_00e5:  ldc.i4.0
    IL_00e6:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_coalBrushes
    IL_00eb:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::get_Count()
    IL_00f0:  ldc.i4.1
    IL_00f1:  sub
    IL_00f2:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_00f7:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::get_Item(int32)
    IL_00fc:  ldarg.1
    IL_00fd:  ldloc.s    V_16
    IL_00ff:  ldloc.s    V_17
    IL_0101:  ldloc.s    V_18
    IL_0103:  ldc.i4.3
    IL_0104:  callvirt   instance void Game.TerrainBrush::PaintFastSelective(class Game.TerrainChunk,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32)
    IL_0109:  ldloc.s    V_15
    IL_010b:  ldc.i4.1
    IL_010c:  add
    IL_010d:  stloc.s    V_15
    IL_010f:  ldloc.s    V_15
    IL_0111:  ldloc.s    V_7
    IL_0113:  blt.s      IL_00b0

    IL_0115:  ldc.r4     2.
    IL_011a:  ldc.r4     3.
    IL_011f:  ldloc.s    V_6
    IL_0121:  mul
    IL_0122:  ldloc.2
    IL_0123:  ldc.i4     0x2c9
    IL_0128:  add
    IL_0129:  conv.r4
    IL_012a:  ldloc.3
    IL_012b:  ldc.i4     0xd3
    IL_0130:  add
    IL_0131:  conv.r4
    IL_0132:  ldc.r4     0.33000001
    IL_0137:  ldc.i4.1
    IL_0138:  ldc.r4     1.
    IL_013d:  ldc.r4     1.
    IL_0142:  call       float32 Game.SimplexNoise::OctavedNoise(float32,
                                                                 float32,
                                                                 float32,
                                                                 int32,
                                                                 float32,
                                                                 float32)
    IL_0147:  mul
    IL_0148:  add
    IL_0149:  conv.i4
    IL_014a:  stloc.s    V_8
    IL_014c:  ldc.i4.0
    IL_014d:  stloc.s    V_19
    IL_014f:  br.s       IL_01b1

    IL_0151:  ldloc.2
    IL_0152:  ldc.i4.s   16
    IL_0154:  mul
    IL_0155:  ldloc.s    V_4
    IL_0157:  ldc.i4.0
    IL_0158:  ldc.i4.s   15
    IL_015a:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_015f:  add
    IL_0160:  stloc.s    V_20
    IL_0162:  ldloc.s    V_4
    IL_0164:  ldc.i4.5
    IL_0165:  ldc.i4.s   35
    IL_0167:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_016c:  stloc.s    V_21
    IL_016e:  ldloc.3
    IL_016f:  ldc.i4.s   16
    IL_0171:  mul
    IL_0172:  ldloc.s    V_4
    IL_0174:  ldc.i4.0
    IL_0175:  ldc.i4.s   15
    IL_0177:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_017c:  add
    IL_017d:  stloc.s    V_22
    IL_017f:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_ironBrushes
    IL_0184:  ldloc.s    V_4
    IL_0186:  ldc.i4.0
    IL_0187:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_ironBrushes
    IL_018c:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::get_Count()
    IL_0191:  ldc.i4.1
    IL_0192:  sub
    IL_0193:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0198:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::get_Item(int32)
    IL_019d:  ldarg.1
    IL_019e:  ldloc.s    V_20
    IL_01a0:  ldloc.s    V_21
    IL_01a2:  ldloc.s    V_22
    IL_01a4:  ldc.i4.s   67
    IL_01a6:  callvirt   instance void Game.TerrainBrush::PaintFastSelective(class Game.TerrainChunk,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32)
    IL_01ab:  ldloc.s    V_19
    IL_01ad:  ldc.i4.1
    IL_01ae:  add
    IL_01af:  stloc.s    V_19
    IL_01b1:  ldloc.s    V_19
    IL_01b3:  ldloc.s    V_8
    IL_01b5:  blt.s      IL_0151

    IL_01b7:  ldc.r4     2.
    IL_01bc:  ldc.r4     3.
    IL_01c1:  ldloc.s    V_6
    IL_01c3:  mul
    IL_01c4:  ldloc.2
    IL_01c5:  ldc.i4     0x4bb
    IL_01ca:  add
    IL_01cb:  conv.r4
    IL_01cc:  ldloc.3
    IL_01cd:  ldc.i4     0x18c
    IL_01d2:  add
    IL_01d3:  conv.r4
    IL_01d4:  ldc.r4     0.33000001
    IL_01d9:  ldc.i4.1
    IL_01da:  ldc.r4     1.
    IL_01df:  ldc.r4     1.
    IL_01e4:  call       float32 Game.SimplexNoise::OctavedNoise(float32,
                                                                 float32,
                                                                 float32,
                                                                 int32,
                                                                 float32,
                                                                 float32)
    IL_01e9:  mul
    IL_01ea:  add
    IL_01eb:  conv.i4
    IL_01ec:  stloc.s    V_9
    IL_01ee:  ldc.i4.0
    IL_01ef:  stloc.s    V_23
    IL_01f1:  br.s       IL_0253

    IL_01f3:  ldloc.2
    IL_01f4:  ldc.i4.s   16
    IL_01f6:  mul
    IL_01f7:  ldloc.s    V_4
    IL_01f9:  ldc.i4.0
    IL_01fa:  ldc.i4.s   15
    IL_01fc:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0201:  add
    IL_0202:  stloc.s    V_24
    IL_0204:  ldloc.s    V_4
    IL_0206:  ldc.i4.s   25
    IL_0208:  ldc.i4.s   60
    IL_020a:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_020f:  stloc.s    V_25
    IL_0211:  ldloc.3
    IL_0212:  ldc.i4.s   16
    IL_0214:  mul
    IL_0215:  ldloc.s    V_4
    IL_0217:  ldc.i4.0
    IL_0218:  ldc.i4.s   15
    IL_021a:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_021f:  add
    IL_0220:  stloc.s    V_26
    IL_0222:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_copperBrushes
    IL_0227:  ldloc.s    V_4
    IL_0229:  ldc.i4.0
    IL_022a:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_copperBrushes
    IL_022f:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::get_Count()
    IL_0234:  ldc.i4.1
    IL_0235:  sub
    IL_0236:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_023b:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::get_Item(int32)
    IL_0240:  ldarg.1
    IL_0241:  ldloc.s    V_24
    IL_0243:  ldloc.s    V_25
    IL_0245:  ldloc.s    V_26
    IL_0247:  ldc.i4.3
    IL_0248:  callvirt   instance void Game.TerrainBrush::PaintFastSelective(class Game.TerrainChunk,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32)
    IL_024d:  ldloc.s    V_23
    IL_024f:  ldc.i4.1
    IL_0250:  add
    IL_0251:  stloc.s    V_23
    IL_0253:  ldloc.s    V_23
    IL_0255:  ldloc.s    V_9
    IL_0257:  blt.s      IL_01f3

    IL_0259:  ldc.r4     3.
    IL_025e:  ldc.r4     2.
    IL_0263:  ldloc.s    V_6
    IL_0265:  mul
    IL_0266:  ldloc.2
    IL_0267:  ldc.i4     0x393
    IL_026c:  add
    IL_026d:  conv.r4
    IL_026e:  ldloc.3
    IL_026f:  ldc.i4     0x110
    IL_0274:  add
    IL_0275:  conv.r4
    IL_0276:  ldc.r4     0.33000001
    IL_027b:  ldc.i4.1
    IL_027c:  ldc.r4     1.
    IL_0281:  ldc.r4     1.
    IL_0286:  call       float32 Game.SimplexNoise::OctavedNoise(float32,
                                                                 float32,
                                                                 float32,
                                                                 int32,
                                                                 float32,
                                                                 float32)
    IL_028b:  mul
    IL_028c:  add
    IL_028d:  conv.i4
    IL_028e:  stloc.s    V_10
    IL_0290:  ldc.i4.0
    IL_0291:  stloc.s    V_27
    IL_0293:  br.s       IL_02f5

    IL_0295:  ldloc.2
    IL_0296:  ldc.i4.s   16
    IL_0298:  mul
    IL_0299:  ldloc.s    V_4
    IL_029b:  ldc.i4.0
    IL_029c:  ldc.i4.s   15
    IL_029e:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_02a3:  add
    IL_02a4:  stloc.s    V_28
    IL_02a6:  ldloc.s    V_4
    IL_02a8:  ldc.i4.s   50
    IL_02aa:  ldc.i4.s   70
    IL_02ac:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_02b1:  stloc.s    V_29
    IL_02b3:  ldloc.3
    IL_02b4:  ldc.i4.s   16
    IL_02b6:  mul
    IL_02b7:  ldloc.s    V_4
    IL_02b9:  ldc.i4.0
    IL_02ba:  ldc.i4.s   15
    IL_02bc:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_02c1:  add
    IL_02c2:  stloc.s    V_30
    IL_02c4:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_saltpeterBrushes
    IL_02c9:  ldloc.s    V_4
    IL_02cb:  ldc.i4.0
    IL_02cc:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_saltpeterBrushes
    IL_02d1:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::get_Count()
    IL_02d6:  ldc.i4.1
    IL_02d7:  sub
    IL_02d8:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_02dd:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::get_Item(int32)
    IL_02e2:  ldarg.1
    IL_02e3:  ldloc.s    V_28
    IL_02e5:  ldloc.s    V_29
    IL_02e7:  ldloc.s    V_30
    IL_02e9:  ldc.i4.4
    IL_02ea:  callvirt   instance void Game.TerrainBrush::PaintFastSelective(class Game.TerrainChunk,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32)
    IL_02ef:  ldloc.s    V_27
    IL_02f1:  ldc.i4.1
    IL_02f2:  add
    IL_02f3:  stloc.s    V_27
    IL_02f5:  ldloc.s    V_27
    IL_02f7:  ldloc.s    V_10
    IL_02f9:  blt.s      IL_0295

    IL_02fb:  ldc.r4     3.
    IL_0300:  ldc.r4     2.
    IL_0305:  ldloc.s    V_6
    IL_0307:  mul
    IL_0308:  ldloc.2
    IL_0309:  ldc.i4     0x2c7
    IL_030e:  add
    IL_030f:  conv.r4
    IL_0310:  ldloc.3
    IL_0311:  ldc.i4     0x4aa
    IL_0316:  add
    IL_0317:  conv.r4
    IL_0318:  ldc.r4     0.33000001
    IL_031d:  ldc.i4.1
    IL_031e:  ldc.r4     1.
    IL_0323:  ldc.r4     1.
    IL_0328:  call       float32 Game.SimplexNoise::OctavedNoise(float32,
                                                                 float32,
                                                                 float32,
                                                                 int32,
                                                                 float32,
                                                                 float32)
    IL_032d:  mul
    IL_032e:  add
    IL_032f:  conv.i4
    IL_0330:  stloc.s    V_11
    IL_0332:  ldc.i4.0
    IL_0333:  stloc.s    V_31
    IL_0335:  br.s       IL_0397

    IL_0337:  ldloc.2
    IL_0338:  ldc.i4.s   16
    IL_033a:  mul
    IL_033b:  ldloc.s    V_4
    IL_033d:  ldc.i4.0
    IL_033e:  ldc.i4.s   15
    IL_0340:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0345:  add
    IL_0346:  stloc.s    V_32
    IL_0348:  ldloc.s    V_4
    IL_034a:  ldc.i4.5
    IL_034b:  ldc.i4.s   40
    IL_034d:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0352:  stloc.s    V_33
    IL_0354:  ldloc.3
    IL_0355:  ldc.i4.s   16
    IL_0357:  mul
    IL_0358:  ldloc.s    V_4
    IL_035a:  ldc.i4.0
    IL_035b:  ldc.i4.s   15
    IL_035d:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0362:  add
    IL_0363:  stloc.s    V_34
    IL_0365:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_sulphurBrushes
    IL_036a:  ldloc.s    V_4
    IL_036c:  ldc.i4.0
    IL_036d:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_sulphurBrushes
    IL_0372:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::get_Count()
    IL_0377:  ldc.i4.1
    IL_0378:  sub
    IL_0379:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_037e:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::get_Item(int32)
    IL_0383:  ldarg.1
    IL_0384:  ldloc.s    V_32
    IL_0386:  ldloc.s    V_33
    IL_0388:  ldloc.s    V_34
    IL_038a:  ldc.i4.s   67
    IL_038c:  callvirt   instance void Game.TerrainBrush::PaintFastSelective(class Game.TerrainChunk,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32)
    IL_0391:  ldloc.s    V_31
    IL_0393:  ldc.i4.1
    IL_0394:  add
    IL_0395:  stloc.s    V_31
    IL_0397:  ldloc.s    V_31
    IL_0399:  ldloc.s    V_11
    IL_039b:  blt.s      IL_0337

    IL_039d:  ldc.r4     0.5
    IL_03a2:  ldc.r4     1.5
    IL_03a7:  ldloc.s    V_6
    IL_03a9:  mul
    IL_03aa:  ldloc.2
    IL_03ab:  ldc.i4     0x1b0
    IL_03b0:  add
    IL_03b1:  conv.r4
    IL_03b2:  ldloc.3
    IL_03b3:  ldc.i4     0x38b
    IL_03b8:  add
    IL_03b9:  conv.r4
    IL_03ba:  ldc.r4     0.33000001
    IL_03bf:  ldc.i4.1
    IL_03c0:  ldc.r4     1.
    IL_03c5:  ldc.r4     1.
    IL_03ca:  call       float32 Game.SimplexNoise::OctavedNoise(float32,
                                                                 float32,
                                                                 float32,
                                                                 int32,
                                                                 float32,
                                                                 float32)
    IL_03cf:  mul
    IL_03d0:  add
    IL_03d1:  conv.i4
    IL_03d2:  stloc.s    V_12
    IL_03d4:  ldc.i4.0
    IL_03d5:  stloc.s    V_35
    IL_03d7:  br.s       IL_0439

    IL_03d9:  ldloc.2
    IL_03da:  ldc.i4.s   16
    IL_03dc:  mul
    IL_03dd:  ldloc.s    V_4
    IL_03df:  ldc.i4.0
    IL_03e0:  ldc.i4.s   15
    IL_03e2:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_03e7:  add
    IL_03e8:  stloc.s    V_36
    IL_03ea:  ldloc.s    V_4
    IL_03ec:  ldc.i4.4
    IL_03ed:  ldc.i4.s   15
    IL_03ef:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_03f4:  stloc.s    V_37
    IL_03f6:  ldloc.3
    IL_03f7:  ldc.i4.s   16
    IL_03f9:  mul
    IL_03fa:  ldloc.s    V_4
    IL_03fc:  ldc.i4.0
    IL_03fd:  ldc.i4.s   15
    IL_03ff:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0404:  add
    IL_0405:  stloc.s    V_38
    IL_0407:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_diamondBrushes
    IL_040c:  ldloc.s    V_4
    IL_040e:  ldc.i4.0
    IL_040f:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_diamondBrushes
    IL_0414:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::get_Count()
    IL_0419:  ldc.i4.1
    IL_041a:  sub
    IL_041b:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0420:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::get_Item(int32)
    IL_0425:  ldarg.1
    IL_0426:  ldloc.s    V_36
    IL_0428:  ldloc.s    V_37
    IL_042a:  ldloc.s    V_38
    IL_042c:  ldc.i4.s   67
    IL_042e:  callvirt   instance void Game.TerrainBrush::PaintFastSelective(class Game.TerrainChunk,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32)
    IL_0433:  ldloc.s    V_35
    IL_0435:  ldc.i4.1
    IL_0436:  add
    IL_0437:  stloc.s    V_35
    IL_0439:  ldloc.s    V_35
    IL_043b:  ldloc.s    V_12
    IL_043d:  blt.s      IL_03d9

    IL_043f:  ldc.r4     2.
    IL_0444:  ldc.r4     2.
    IL_0449:  ldloc.s    V_6
    IL_044b:  mul
    IL_044c:  ldloc.2
    IL_044d:  ldc.i4     0x31f
    IL_0452:  add
    IL_0453:  conv.r4
    IL_0454:  ldloc.3
    IL_0455:  ldc.i4     0x83
    IL_045a:  add
    IL_045b:  conv.r4
    IL_045c:  ldc.r4     0.33000001
    IL_0461:  ldc.i4.1
    IL_0462:  ldc.r4     1.
    IL_0467:  ldc.r4     1.
    IL_046c:  call       float32 Game.SimplexNoise::OctavedNoise(float32,
                                                                 float32,
                                                                 float32,
                                                                 int32,
                                                                 float32,
                                                                 float32)
    IL_0471:  mul
    IL_0472:  add
    IL_0473:  conv.i4
    IL_0474:  stloc.s    V_13
    IL_0476:  ldc.i4.0
    IL_0477:  stloc.s    V_39
    IL_0479:  br.s       IL_04dc

    IL_047b:  ldloc.2
    IL_047c:  ldc.i4.s   16
    IL_047e:  mul
    IL_047f:  ldloc.s    V_4
    IL_0481:  ldc.i4.0
    IL_0482:  ldc.i4.s   15
    IL_0484:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0489:  add
    IL_048a:  stloc.s    V_40
    IL_048c:  ldloc.s    V_4
    IL_048e:  ldc.i4.s   10
    IL_0490:  ldc.i4.s   50
    IL_0492:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0497:  stloc.s    V_41
    IL_0499:  ldloc.3
    IL_049a:  ldc.i4.s   16
    IL_049c:  mul
    IL_049d:  ldloc.s    V_4
    IL_049f:  ldc.i4.0
    IL_04a0:  ldc.i4.s   15
    IL_04a2:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_04a7:  add
    IL_04a8:  stloc.s    V_42
    IL_04aa:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_germaniumBrushes
    IL_04af:  ldloc.s    V_4
    IL_04b1:  ldc.i4.0
    IL_04b2:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_germaniumBrushes
    IL_04b7:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::get_Count()
    IL_04bc:  ldc.i4.1
    IL_04bd:  sub
    IL_04be:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_04c3:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::get_Item(int32)
    IL_04c8:  ldarg.1
    IL_04c9:  ldloc.s    V_40
    IL_04cb:  ldloc.s    V_41
    IL_04cd:  ldloc.s    V_42
    IL_04cf:  ldc.i4.s   67
    IL_04d1:  callvirt   instance void Game.TerrainBrush::PaintFastSelective(class Game.TerrainChunk,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32)
    IL_04d6:  ldloc.s    V_39
    IL_04d8:  ldc.i4.1
    IL_04d9:  add
    IL_04da:  stloc.s    V_39
    IL_04dc:  ldloc.s    V_39
    IL_04de:  ldloc.s    V_13
    IL_04e0:  blt.s      IL_047b

    IL_04e2:  ldloc.3
    IL_04e3:  ldc.i4.1
    IL_04e4:  add
    IL_04e5:  stloc.3
    IL_04e6:  ldloc.3
    IL_04e7:  ldloc.1
    IL_04e8:  ldc.i4.1
    IL_04e9:  add
    IL_04ea:  ble        IL_0033

    IL_04ef:  ldloc.2
    IL_04f0:  ldc.i4.1
    IL_04f1:  add
    IL_04f2:  stloc.2
    IL_04f3:  ldloc.2
    IL_04f4:  ldloc.0
    IL_04f5:  ldc.i4.1
    IL_04f6:  add
    IL_04f7:  ble        IL_002a

    IL_04fc:  ret
  } // end of method TerrainContentsGenerator::GenerateMinerals

  .method private hidebysig instance void 
          GeneratePockets(class Game.TerrainChunk chunk) cil managed
  {
    // 代码大小       1372 (0x55c)
    .maxstack  6
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             class Game.Random V_4,
             int32 V_5,
             float32 V_6,
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
             valuetype [Engine]Engine.Vector2 V_45,
             int32 V_46,
             int32 V_47,
             int32 V_48,
             int32 V_49,
             int32 V_50,
             int32 V_51,
             int32 V_52,
             int32 V_53,
             valuetype [Engine]Engine.Vector2 V_54,
             int32 V_55,
             int32 V_56,
             int32 V_57)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.TerrainContentsGenerator::TGCavesAndPockets
    IL_0006:  brtrue.s   IL_0009

    IL_0008:  ret

    IL_0009:  ldc.i4.m1
    IL_000a:  stloc.0
    IL_000b:  br         IL_0554

    IL_0010:  ldc.i4.m1
    IL_0011:  stloc.1
    IL_0012:  br         IL_0549

    IL_0017:  ldloc.0
    IL_0018:  ldarg.1
    IL_0019:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Coords
    IL_001e:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0023:  add
    IL_0024:  stloc.2
    IL_0025:  ldloc.1
    IL_0026:  ldarg.1
    IL_0027:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Coords
    IL_002c:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0031:  add
    IL_0032:  stloc.3
    IL_0033:  ldarg.0
    IL_0034:  ldfld      int32 Game.TerrainContentsGenerator::m_seed
    IL_0039:  ldloc.2
    IL_003a:  add
    IL_003b:  ldc.i4.s   71
    IL_003d:  ldloc.3
    IL_003e:  mul
    IL_003f:  add
    IL_0040:  newobj     instance void Game.Random::.ctor(int32)
    IL_0045:  stloc.s    V_4
    IL_0047:  ldloc.s    V_4
    IL_0049:  ldc.i4.0
    IL_004a:  ldc.i4.s   10
    IL_004c:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0051:  stloc.s    V_5
    IL_0053:  ldc.i4.0
    IL_0054:  stloc.s    V_7
    IL_0056:  br.s       IL_0068

    IL_0058:  ldloc.s    V_4
    IL_005a:  ldc.i4.0
    IL_005b:  ldc.i4.1
    IL_005c:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0061:  pop
    IL_0062:  ldloc.s    V_7
    IL_0064:  ldc.i4.1
    IL_0065:  add
    IL_0066:  stloc.s    V_7
    IL_0068:  ldloc.s    V_7
    IL_006a:  ldloc.s    V_5
    IL_006c:  blt.s      IL_0058

    IL_006e:  ldarg.0
    IL_006f:  ldloc.2
    IL_0070:  ldc.i4.s   16
    IL_0072:  mul
    IL_0073:  conv.r4
    IL_0074:  ldloc.3
    IL_0075:  ldc.i4.s   16
    IL_0077:  mul
    IL_0078:  conv.r4
    IL_0079:  call       instance float32 Game.TerrainContentsGenerator::CalculateMountainRangeFactor(float32,
                                                                                                      float32)
    IL_007e:  stloc.s    V_6
    IL_0080:  ldc.i4.0
    IL_0081:  stloc.s    V_8
    IL_0083:  br.s       IL_00e5

    IL_0085:  ldloc.2
    IL_0086:  ldc.i4.s   16
    IL_0088:  mul
    IL_0089:  ldloc.s    V_4
    IL_008b:  ldc.i4.0
    IL_008c:  ldc.i4.s   15
    IL_008e:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0093:  add
    IL_0094:  stloc.s    V_9
    IL_0096:  ldloc.s    V_4
    IL_0098:  ldc.i4.s   50
    IL_009a:  ldc.i4.s   100
    IL_009c:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_00a1:  stloc.s    V_10
    IL_00a3:  ldloc.3
    IL_00a4:  ldc.i4.s   16
    IL_00a6:  mul
    IL_00a7:  ldloc.s    V_4
    IL_00a9:  ldc.i4.0
    IL_00aa:  ldc.i4.s   15
    IL_00ac:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_00b1:  add
    IL_00b2:  stloc.s    V_11
    IL_00b4:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_dirtPocketBrushes
    IL_00b9:  ldloc.s    V_4
    IL_00bb:  ldc.i4.0
    IL_00bc:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_dirtPocketBrushes
    IL_00c1:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::get_Count()
    IL_00c6:  ldc.i4.1
    IL_00c7:  sub
    IL_00c8:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_00cd:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::get_Item(int32)
    IL_00d2:  ldarg.1
    IL_00d3:  ldloc.s    V_9
    IL_00d5:  ldloc.s    V_10
    IL_00d7:  ldloc.s    V_11
    IL_00d9:  ldc.i4.3
    IL_00da:  callvirt   instance void Game.TerrainBrush::PaintFastSelective(class Game.TerrainChunk,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32)
    IL_00df:  ldloc.s    V_8
    IL_00e1:  ldc.i4.1
    IL_00e2:  add
    IL_00e3:  stloc.s    V_8
    IL_00e5:  ldloc.s    V_8
    IL_00e7:  ldc.i4.3
    IL_00e8:  blt.s      IL_0085

    IL_00ea:  ldc.i4.0
    IL_00eb:  stloc.s    V_12
    IL_00ed:  br.s       IL_014f

    IL_00ef:  ldloc.2
    IL_00f0:  ldc.i4.s   16
    IL_00f2:  mul
    IL_00f3:  ldloc.s    V_4
    IL_00f5:  ldc.i4.0
    IL_00f6:  ldc.i4.s   15
    IL_00f8:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_00fd:  add
    IL_00fe:  stloc.s    V_13
    IL_0100:  ldloc.s    V_4
    IL_0102:  ldc.i4.s   20
    IL_0104:  ldc.i4.s   80
    IL_0106:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_010b:  stloc.s    V_14
    IL_010d:  ldloc.3
    IL_010e:  ldc.i4.s   16
    IL_0110:  mul
    IL_0111:  ldloc.s    V_4
    IL_0113:  ldc.i4.0
    IL_0114:  ldc.i4.s   15
    IL_0116:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_011b:  add
    IL_011c:  stloc.s    V_15
    IL_011e:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_gravelPocketBrushes
    IL_0123:  ldloc.s    V_4
    IL_0125:  ldc.i4.0
    IL_0126:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_gravelPocketBrushes
    IL_012b:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::get_Count()
    IL_0130:  ldc.i4.1
    IL_0131:  sub
    IL_0132:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0137:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::get_Item(int32)
    IL_013c:  ldarg.1
    IL_013d:  ldloc.s    V_13
    IL_013f:  ldloc.s    V_14
    IL_0141:  ldloc.s    V_15
    IL_0143:  ldc.i4.3
    IL_0144:  callvirt   instance void Game.TerrainBrush::PaintFastSelective(class Game.TerrainChunk,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32)
    IL_0149:  ldloc.s    V_12
    IL_014b:  ldc.i4.1
    IL_014c:  add
    IL_014d:  stloc.s    V_12
    IL_014f:  ldloc.s    V_12
    IL_0151:  ldc.i4.s   10
    IL_0153:  blt.s      IL_00ef

    IL_0155:  ldc.i4.0
    IL_0156:  stloc.s    V_16
    IL_0158:  br.s       IL_01ba

    IL_015a:  ldloc.2
    IL_015b:  ldc.i4.s   16
    IL_015d:  mul
    IL_015e:  ldloc.s    V_4
    IL_0160:  ldc.i4.0
    IL_0161:  ldc.i4.s   15
    IL_0163:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0168:  add
    IL_0169:  stloc.s    V_17
    IL_016b:  ldloc.s    V_4
    IL_016d:  ldc.i4.s   20
    IL_016f:  ldc.i4.s   120
    IL_0171:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0176:  stloc.s    V_18
    IL_0178:  ldloc.3
    IL_0179:  ldc.i4.s   16
    IL_017b:  mul
    IL_017c:  ldloc.s    V_4
    IL_017e:  ldc.i4.0
    IL_017f:  ldc.i4.s   15
    IL_0181:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0186:  add
    IL_0187:  stloc.s    V_19
    IL_0189:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_limestonePocketBrushes
    IL_018e:  ldloc.s    V_4
    IL_0190:  ldc.i4.0
    IL_0191:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_limestonePocketBrushes
    IL_0196:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::get_Count()
    IL_019b:  ldc.i4.1
    IL_019c:  sub
    IL_019d:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_01a2:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::get_Item(int32)
    IL_01a7:  ldarg.1
    IL_01a8:  ldloc.s    V_17
    IL_01aa:  ldloc.s    V_18
    IL_01ac:  ldloc.s    V_19
    IL_01ae:  ldc.i4.3
    IL_01af:  callvirt   instance void Game.TerrainBrush::PaintFastSelective(class Game.TerrainChunk,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32)
    IL_01b4:  ldloc.s    V_16
    IL_01b6:  ldc.i4.1
    IL_01b7:  add
    IL_01b8:  stloc.s    V_16
    IL_01ba:  ldloc.s    V_16
    IL_01bc:  ldc.i4.2
    IL_01bd:  blt.s      IL_015a

    IL_01bf:  ldc.i4.0
    IL_01c0:  stloc.s    V_20
    IL_01c2:  br.s       IL_0224

    IL_01c4:  ldloc.2
    IL_01c5:  ldc.i4.s   16
    IL_01c7:  mul
    IL_01c8:  ldloc.s    V_4
    IL_01ca:  ldc.i4.0
    IL_01cb:  ldc.i4.s   15
    IL_01cd:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_01d2:  add
    IL_01d3:  stloc.s    V_21
    IL_01d5:  ldloc.s    V_4
    IL_01d7:  ldc.i4.s   50
    IL_01d9:  ldc.i4.s   70
    IL_01db:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_01e0:  stloc.s    V_22
    IL_01e2:  ldloc.3
    IL_01e3:  ldc.i4.s   16
    IL_01e5:  mul
    IL_01e6:  ldloc.s    V_4
    IL_01e8:  ldc.i4.0
    IL_01e9:  ldc.i4.s   15
    IL_01eb:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_01f0:  add
    IL_01f1:  stloc.s    V_23
    IL_01f3:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_clayPocketBrushes
    IL_01f8:  ldloc.s    V_4
    IL_01fa:  ldc.i4.0
    IL_01fb:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_clayPocketBrushes
    IL_0200:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::get_Count()
    IL_0205:  ldc.i4.1
    IL_0206:  sub
    IL_0207:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_020c:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::get_Item(int32)
    IL_0211:  ldarg.1
    IL_0212:  ldloc.s    V_21
    IL_0214:  ldloc.s    V_22
    IL_0216:  ldloc.s    V_23
    IL_0218:  ldc.i4.3
    IL_0219:  callvirt   instance void Game.TerrainBrush::PaintFastSelective(class Game.TerrainChunk,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32)
    IL_021e:  ldloc.s    V_20
    IL_0220:  ldc.i4.1
    IL_0221:  add
    IL_0222:  stloc.s    V_20
    IL_0224:  ldloc.s    V_20
    IL_0226:  ldc.i4.1
    IL_0227:  blt.s      IL_01c4

    IL_0229:  ldc.i4.0
    IL_022a:  stloc.s    V_24
    IL_022c:  br.s       IL_028e

    IL_022e:  ldloc.2
    IL_022f:  ldc.i4.s   16
    IL_0231:  mul
    IL_0232:  ldloc.s    V_4
    IL_0234:  ldc.i4.0
    IL_0235:  ldc.i4.s   15
    IL_0237:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_023c:  add
    IL_023d:  stloc.s    V_25
    IL_023f:  ldloc.s    V_4
    IL_0241:  ldc.i4.s   40
    IL_0243:  ldc.i4.s   80
    IL_0245:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_024a:  stloc.s    V_26
    IL_024c:  ldloc.3
    IL_024d:  ldc.i4.s   16
    IL_024f:  mul
    IL_0250:  ldloc.s    V_4
    IL_0252:  ldc.i4.0
    IL_0253:  ldc.i4.s   15
    IL_0255:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_025a:  add
    IL_025b:  stloc.s    V_27
    IL_025d:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_sandPocketBrushes
    IL_0262:  ldloc.s    V_4
    IL_0264:  ldc.i4.0
    IL_0265:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_sandPocketBrushes
    IL_026a:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::get_Count()
    IL_026f:  ldc.i4.1
    IL_0270:  sub
    IL_0271:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0276:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::get_Item(int32)
    IL_027b:  ldarg.1
    IL_027c:  ldloc.s    V_25
    IL_027e:  ldloc.s    V_26
    IL_0280:  ldloc.s    V_27
    IL_0282:  ldc.i4.4
    IL_0283:  callvirt   instance void Game.TerrainBrush::PaintFastSelective(class Game.TerrainChunk,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32)
    IL_0288:  ldloc.s    V_24
    IL_028a:  ldc.i4.1
    IL_028b:  add
    IL_028c:  stloc.s    V_24
    IL_028e:  ldloc.s    V_24
    IL_0290:  ldc.i4.6
    IL_0291:  blt.s      IL_022e

    IL_0293:  ldc.i4.0
    IL_0294:  stloc.s    V_28
    IL_0296:  br.s       IL_02f8

    IL_0298:  ldloc.2
    IL_0299:  ldc.i4.s   16
    IL_029b:  mul
    IL_029c:  ldloc.s    V_4
    IL_029e:  ldc.i4.0
    IL_029f:  ldc.i4.s   15
    IL_02a1:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_02a6:  add
    IL_02a7:  stloc.s    V_29
    IL_02a9:  ldloc.s    V_4
    IL_02ab:  ldc.i4.s   40
    IL_02ad:  ldc.i4.s   60
    IL_02af:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_02b4:  stloc.s    V_30
    IL_02b6:  ldloc.3
    IL_02b7:  ldc.i4.s   16
    IL_02b9:  mul
    IL_02ba:  ldloc.s    V_4
    IL_02bc:  ldc.i4.0
    IL_02bd:  ldc.i4.s   15
    IL_02bf:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_02c4:  add
    IL_02c5:  stloc.s    V_31
    IL_02c7:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_basaltPocketBrushes
    IL_02cc:  ldloc.s    V_4
    IL_02ce:  ldc.i4.0
    IL_02cf:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_basaltPocketBrushes
    IL_02d4:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::get_Count()
    IL_02d9:  ldc.i4.1
    IL_02da:  sub
    IL_02db:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_02e0:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::get_Item(int32)
    IL_02e5:  ldarg.1
    IL_02e6:  ldloc.s    V_29
    IL_02e8:  ldloc.s    V_30
    IL_02ea:  ldloc.s    V_31
    IL_02ec:  ldc.i4.4
    IL_02ed:  callvirt   instance void Game.TerrainBrush::PaintFastSelective(class Game.TerrainChunk,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32)
    IL_02f2:  ldloc.s    V_28
    IL_02f4:  ldc.i4.1
    IL_02f5:  add
    IL_02f6:  stloc.s    V_28
    IL_02f8:  ldloc.s    V_28
    IL_02fa:  ldc.i4.4
    IL_02fb:  blt.s      IL_0298

    IL_02fd:  ldc.i4.0
    IL_02fe:  stloc.s    V_32
    IL_0300:  br.s       IL_0362

    IL_0302:  ldloc.2
    IL_0303:  ldc.i4.s   16
    IL_0305:  mul
    IL_0306:  ldloc.s    V_4
    IL_0308:  ldc.i4.0
    IL_0309:  ldc.i4.s   15
    IL_030b:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0310:  add
    IL_0311:  stloc.s    V_33
    IL_0313:  ldloc.s    V_4
    IL_0315:  ldc.i4.s   20
    IL_0317:  ldc.i4.s   40
    IL_0319:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_031e:  stloc.s    V_34
    IL_0320:  ldloc.3
    IL_0321:  ldc.i4.s   16
    IL_0323:  mul
    IL_0324:  ldloc.s    V_4
    IL_0326:  ldc.i4.0
    IL_0327:  ldc.i4.s   15
    IL_0329:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_032e:  add
    IL_032f:  stloc.s    V_35
    IL_0331:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_basaltPocketBrushes
    IL_0336:  ldloc.s    V_4
    IL_0338:  ldc.i4.0
    IL_0339:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_basaltPocketBrushes
    IL_033e:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::get_Count()
    IL_0343:  ldc.i4.1
    IL_0344:  sub
    IL_0345:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_034a:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::get_Item(int32)
    IL_034f:  ldarg.1
    IL_0350:  ldloc.s    V_33
    IL_0352:  ldloc.s    V_34
    IL_0354:  ldloc.s    V_35
    IL_0356:  ldc.i4.3
    IL_0357:  callvirt   instance void Game.TerrainBrush::PaintFastSelective(class Game.TerrainChunk,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32)
    IL_035c:  ldloc.s    V_32
    IL_035e:  ldc.i4.1
    IL_035f:  add
    IL_0360:  stloc.s    V_32
    IL_0362:  ldloc.s    V_32
    IL_0364:  ldc.i4.3
    IL_0365:  blt.s      IL_0302

    IL_0367:  ldc.i4.0
    IL_0368:  stloc.s    V_36
    IL_036a:  br.s       IL_03cc

    IL_036c:  ldloc.2
    IL_036d:  ldc.i4.s   16
    IL_036f:  mul
    IL_0370:  ldloc.s    V_4
    IL_0372:  ldc.i4.0
    IL_0373:  ldc.i4.s   15
    IL_0375:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_037a:  add
    IL_037b:  stloc.s    V_37
    IL_037d:  ldloc.s    V_4
    IL_037f:  ldc.i4.4
    IL_0380:  ldc.i4.s   50
    IL_0382:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0387:  stloc.s    V_38
    IL_0389:  ldloc.3
    IL_038a:  ldc.i4.s   16
    IL_038c:  mul
    IL_038d:  ldloc.s    V_4
    IL_038f:  ldc.i4.0
    IL_0390:  ldc.i4.s   15
    IL_0392:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0397:  add
    IL_0398:  stloc.s    V_39
    IL_039a:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_granitePocketBrushes
    IL_039f:  ldloc.s    V_4
    IL_03a1:  ldc.i4.0
    IL_03a2:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_granitePocketBrushes
    IL_03a7:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::get_Count()
    IL_03ac:  ldc.i4.1
    IL_03ad:  sub
    IL_03ae:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_03b3:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::get_Item(int32)
    IL_03b8:  ldarg.1
    IL_03b9:  ldloc.s    V_37
    IL_03bb:  ldloc.s    V_38
    IL_03bd:  ldloc.s    V_39
    IL_03bf:  ldc.i4.s   67
    IL_03c1:  callvirt   instance void Game.TerrainBrush::PaintFastSelective(class Game.TerrainChunk,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32)
    IL_03c6:  ldloc.s    V_36
    IL_03c8:  ldc.i4.1
    IL_03c9:  add
    IL_03ca:  stloc.s    V_36
    IL_03cc:  ldloc.s    V_36
    IL_03ce:  ldc.i4.6
    IL_03cf:  blt.s      IL_036c

    IL_03d1:  ldloc.s    V_4
    IL_03d3:  ldc.r4     2.e-002
    IL_03d8:  ldc.r4     9.9999998e-003
    IL_03dd:  ldloc.s    V_6
    IL_03df:  mul
    IL_03e0:  add
    IL_03e1:  callvirt   instance bool Game.Random::Bool(float32)
    IL_03e6:  brfalse    IL_0487

    IL_03eb:  ldloc.2
    IL_03ec:  ldc.i4.s   16
    IL_03ee:  mul
    IL_03ef:  stloc.s    V_40
    IL_03f1:  ldloc.s    V_4
    IL_03f3:  ldc.i4.s   40
    IL_03f5:  ldc.i4.s   60
    IL_03f7:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_03fc:  stloc.s    V_41
    IL_03fe:  ldloc.3
    IL_03ff:  ldc.i4.s   16
    IL_0401:  mul
    IL_0402:  stloc.s    V_42
    IL_0404:  ldloc.s    V_4
    IL_0406:  ldc.i4.1
    IL_0407:  ldc.i4.3
    IL_0408:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_040d:  stloc.s    V_43
    IL_040f:  ldc.i4.0
    IL_0410:  stloc.s    V_44
    IL_0412:  br.s       IL_0481

    IL_0414:  ldloc.s    V_4
    IL_0416:  ldc.r4     7.
    IL_041b:  ldc.i4.0
    IL_041c:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Random::Vector2(float32,
                                                                                        bool)
    IL_0421:  stloc.s    V_45
    IL_0423:  ldc.i4.8
    IL_0424:  ldloc.s    V_45
    IL_0426:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_042b:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_0430:  conv.i4
    IL_0431:  add
    IL_0432:  stloc.s    V_46
    IL_0434:  ldc.i4.0
    IL_0435:  stloc.s    V_47
    IL_0437:  ldc.i4.8
    IL_0438:  ldloc.s    V_45
    IL_043a:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_043f:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_0444:  conv.i4
    IL_0445:  add
    IL_0446:  stloc.s    V_48
    IL_0448:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_waterPocketBrushes
    IL_044d:  ldloc.s    V_4
    IL_044f:  ldc.i4.0
    IL_0450:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_waterPocketBrushes
    IL_0455:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::get_Count()
    IL_045a:  ldc.i4.1
    IL_045b:  sub
    IL_045c:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0461:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::get_Item(int32)
    IL_0466:  ldarg.1
    IL_0467:  ldloc.s    V_40
    IL_0469:  ldloc.s    V_46
    IL_046b:  add
    IL_046c:  ldloc.s    V_41
    IL_046e:  ldloc.s    V_47
    IL_0470:  add
    IL_0471:  ldloc.s    V_42
    IL_0473:  ldloc.s    V_48
    IL_0475:  add
    IL_0476:  callvirt   instance void Game.TerrainBrush::PaintFast(class Game.TerrainChunk,
                                                                    int32,
                                                                    int32,
                                                                    int32)
    IL_047b:  ldloc.s    V_44
    IL_047d:  ldc.i4.1
    IL_047e:  add
    IL_047f:  stloc.s    V_44
    IL_0481:  ldloc.s    V_44
    IL_0483:  ldloc.s    V_43
    IL_0485:  blt.s      IL_0414

    IL_0487:  ldloc.s    V_4
    IL_0489:  ldc.r4     5.9999999e-002
    IL_048e:  ldc.r4     5.0000001e-002
    IL_0493:  ldloc.s    V_6
    IL_0495:  mul
    IL_0496:  add
    IL_0497:  callvirt   instance bool Game.Random::Bool(float32)
    IL_049c:  brfalse    IL_0545

    IL_04a1:  ldloc.2
    IL_04a2:  ldc.i4.s   16
    IL_04a4:  mul
    IL_04a5:  stloc.s    V_49
    IL_04a7:  ldloc.s    V_4
    IL_04a9:  ldc.i4.s   15
    IL_04ab:  ldc.i4.s   42
    IL_04ad:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_04b2:  stloc.s    V_50
    IL_04b4:  ldloc.3
    IL_04b5:  ldc.i4.s   16
    IL_04b7:  mul
    IL_04b8:  stloc.s    V_51
    IL_04ba:  ldloc.s    V_4
    IL_04bc:  ldc.i4.1
    IL_04bd:  ldc.i4.2
    IL_04be:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_04c3:  stloc.s    V_52
    IL_04c5:  ldc.i4.0
    IL_04c6:  stloc.s    V_53
    IL_04c8:  br.s       IL_053f

    IL_04ca:  ldloc.s    V_4
    IL_04cc:  ldc.r4     7.
    IL_04d1:  ldc.i4.0
    IL_04d2:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Random::Vector2(float32,
                                                                                        bool)
    IL_04d7:  stloc.s    V_54
    IL_04d9:  ldc.i4.8
    IL_04da:  ldloc.s    V_54
    IL_04dc:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_04e1:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_04e6:  conv.i4
    IL_04e7:  add
    IL_04e8:  stloc.s    V_55
    IL_04ea:  ldloc.s    V_4
    IL_04ec:  ldc.i4.0
    IL_04ed:  ldc.i4.1
    IL_04ee:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_04f3:  stloc.s    V_56
    IL_04f5:  ldc.i4.8
    IL_04f6:  ldloc.s    V_54
    IL_04f8:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_04fd:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_0502:  conv.i4
    IL_0503:  add
    IL_0504:  stloc.s    V_57
    IL_0506:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_magmaPocketBrushes
    IL_050b:  ldloc.s    V_4
    IL_050d:  ldc.i4.0
    IL_050e:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_magmaPocketBrushes
    IL_0513:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::get_Count()
    IL_0518:  ldc.i4.1
    IL_0519:  sub
    IL_051a:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_051f:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::get_Item(int32)
    IL_0524:  ldarg.1
    IL_0525:  ldloc.s    V_49
    IL_0527:  ldloc.s    V_55
    IL_0529:  add
    IL_052a:  ldloc.s    V_50
    IL_052c:  ldloc.s    V_56
    IL_052e:  add
    IL_052f:  ldloc.s    V_51
    IL_0531:  ldloc.s    V_57
    IL_0533:  add
    IL_0534:  callvirt   instance void Game.TerrainBrush::PaintFast(class Game.TerrainChunk,
                                                                    int32,
                                                                    int32,
                                                                    int32)
    IL_0539:  ldloc.s    V_53
    IL_053b:  ldc.i4.1
    IL_053c:  add
    IL_053d:  stloc.s    V_53
    IL_053f:  ldloc.s    V_53
    IL_0541:  ldloc.s    V_52
    IL_0543:  blt.s      IL_04ca

    IL_0545:  ldloc.1
    IL_0546:  ldc.i4.1
    IL_0547:  add
    IL_0548:  stloc.1
    IL_0549:  ldloc.1
    IL_054a:  ldc.i4.1
    IL_054b:  ble        IL_0017

    IL_0550:  ldloc.0
    IL_0551:  ldc.i4.1
    IL_0552:  add
    IL_0553:  stloc.0
    IL_0554:  ldloc.0
    IL_0555:  ldc.i4.1
    IL_0556:  ble        IL_0010

    IL_055b:  ret
  } // end of method TerrainContentsGenerator::GeneratePockets

  .method private hidebysig instance void 
          GenerateCaves(class Game.TerrainChunk chunk) cil managed
  {
    // 代码大小       1631 (0x65f)
    .maxstack  7
    .locals init (class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainContentsGenerator/CavePoint> V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             class Game.Random V_5,
             int32 V_6,
             int32 V_7,
             float32 V_8,
             int32 V_9,
             int32 V_10,
             int32 V_11,
             valuetype [Engine]Engine.Vector3 V_12,
             valuetype [Engine]Engine.Vector3 V_13,
             valuetype [Engine]Engine.Vector3 V_14,
             int32 V_15,
             int32 V_16,
             int32 V_17,
             class Game.TerrainContentsGenerator/CavePoint V_18,
             class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> V_19,
             float32 V_20,
             float32 V_21,
             valuetype [Engine]Engine.Vector3 V_22,
             float32 V_23)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.TerrainContentsGenerator::TGCavesAndPockets
    IL_0006:  brtrue.s   IL_0009

    IL_0008:  ret

    IL_0009:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainContentsGenerator/CavePoint>::.ctor()
    IL_000e:  stloc.0
    IL_000f:  ldarg.1
    IL_0010:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Coords
    IL_0015:  ldfld      int32 [Engine]Engine.Point2::X
    IL_001a:  stloc.1
    IL_001b:  ldarg.1
    IL_001c:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Coords
    IL_0021:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0026:  stloc.2
    IL_0027:  ldloc.1
    IL_0028:  ldc.i4.2
    IL_0029:  sub
    IL_002a:  stloc.3
    IL_002b:  br         IL_0655

    IL_0030:  ldloc.2
    IL_0031:  ldc.i4.2
    IL_0032:  sub
    IL_0033:  stloc.s    V_4
    IL_0035:  br         IL_0647

    IL_003a:  ldloc.0
    IL_003b:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainContentsGenerator/CavePoint>::Clear()
    IL_0040:  ldarg.0
    IL_0041:  ldfld      int32 Game.TerrainContentsGenerator::m_seed
    IL_0046:  ldloc.3
    IL_0047:  add
    IL_0048:  ldc.i4     0x26f5
    IL_004d:  ldloc.s    V_4
    IL_004f:  mul
    IL_0050:  add
    IL_0051:  newobj     instance void Game.Random::.ctor(int32)
    IL_0056:  stloc.s    V_5
    IL_0058:  ldloc.3
    IL_0059:  ldc.i4.s   16
    IL_005b:  mul
    IL_005c:  ldloc.s    V_5
    IL_005e:  ldc.i4.0
    IL_005f:  ldc.i4.s   15
    IL_0061:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0066:  add
    IL_0067:  stloc.s    V_6
    IL_0069:  ldloc.s    V_4
    IL_006b:  ldc.i4.s   16
    IL_006d:  mul
    IL_006e:  ldloc.s    V_5
    IL_0070:  ldc.i4.0
    IL_0071:  ldc.i4.s   15
    IL_0073:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0078:  add
    IL_0079:  stloc.s    V_7
    IL_007b:  ldc.r4     0.5
    IL_0080:  stloc.s    V_8
    IL_0082:  ldloc.s    V_5
    IL_0084:  ldloc.s    V_8
    IL_0086:  callvirt   instance bool Game.Random::Bool(float32)
    IL_008b:  brfalse    IL_0641

    IL_0090:  ldarg.0
    IL_0091:  ldloc.s    V_6
    IL_0093:  conv.r4
    IL_0094:  ldloc.s    V_7
    IL_0096:  conv.r4
    IL_0097:  call       instance float32 Game.TerrainContentsGenerator::CalculateHeight(float32,
                                                                                         float32)
    IL_009c:  conv.i4
    IL_009d:  stloc.s    V_9
    IL_009f:  ldarg.0
    IL_00a0:  ldloc.s    V_6
    IL_00a2:  ldc.i4.3
    IL_00a3:  add
    IL_00a4:  conv.r4
    IL_00a5:  ldloc.s    V_7
    IL_00a7:  conv.r4
    IL_00a8:  call       instance float32 Game.TerrainContentsGenerator::CalculateHeight(float32,
                                                                                         float32)
    IL_00ad:  conv.i4
    IL_00ae:  stloc.s    V_10
    IL_00b0:  ldarg.0
    IL_00b1:  ldloc.s    V_6
    IL_00b3:  conv.r4
    IL_00b4:  ldloc.s    V_7
    IL_00b6:  ldc.i4.3
    IL_00b7:  add
    IL_00b8:  conv.r4
    IL_00b9:  call       instance float32 Game.TerrainContentsGenerator::CalculateHeight(float32,
                                                                                         float32)
    IL_00be:  conv.i4
    IL_00bf:  stloc.s    V_11
    IL_00c1:  ldloca.s   V_12
    IL_00c3:  ldloc.s    V_6
    IL_00c5:  conv.r4
    IL_00c6:  ldloc.s    V_9
    IL_00c8:  ldc.i4.1
    IL_00c9:  sub
    IL_00ca:  conv.r4
    IL_00cb:  ldloc.s    V_7
    IL_00cd:  conv.r4
    IL_00ce:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00d3:  ldc.r4     3.
    IL_00d8:  ldloc.s    V_10
    IL_00da:  ldloc.s    V_9
    IL_00dc:  sub
    IL_00dd:  conv.r4
    IL_00de:  ldc.r4     0.0
    IL_00e3:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00e8:  ldloca.s   V_13
    IL_00ea:  ldc.r4     0.0
    IL_00ef:  ldloc.s    V_11
    IL_00f1:  ldloc.s    V_9
    IL_00f3:  sub
    IL_00f4:  conv.r4
    IL_00f5:  ldc.r4     3.
    IL_00fa:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00ff:  ldloc.s    V_13
    IL_0101:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Cross(valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3)
    IL_0106:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_010b:  stloc.s    V_14
    IL_010d:  ldloc.s    V_14
    IL_010f:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0114:  ldc.r4     -0.60000002
    IL_0119:  ble.un.s   IL_0151

    IL_011b:  ldloc.0
    IL_011c:  newobj     instance void Game.TerrainContentsGenerator/CavePoint::.ctor()
    IL_0121:  dup
    IL_0122:  ldloc.s    V_12
    IL_0124:  stfld      valuetype [Engine]Engine.Vector3 Game.TerrainContentsGenerator/CavePoint::Position
    IL_0129:  dup
    IL_012a:  ldloc.s    V_14
    IL_012c:  stfld      valuetype [Engine]Engine.Vector3 Game.TerrainContentsGenerator/CavePoint::Direction
    IL_0131:  dup
    IL_0132:  ldc.i4.0
    IL_0133:  stfld      int32 Game.TerrainContentsGenerator/CavePoint::BrushType
    IL_0138:  dup
    IL_0139:  ldloc.s    V_5
    IL_013b:  ldc.i4.s   80
    IL_013d:  ldc.i4     0xf0
    IL_0142:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0147:  stfld      int32 Game.TerrainContentsGenerator/CavePoint::Length
    IL_014c:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainContentsGenerator/CavePoint>::Add(!0)
    IL_0151:  ldloc.3
    IL_0152:  ldc.i4.s   16
    IL_0154:  mul
    IL_0155:  ldc.i4.8
    IL_0156:  add
    IL_0157:  stloc.s    V_15
    IL_0159:  ldloc.s    V_4
    IL_015b:  ldc.i4.s   16
    IL_015d:  mul
    IL_015e:  ldc.i4.8
    IL_015f:  add
    IL_0160:  stloc.s    V_16
    IL_0162:  ldc.i4.0
    IL_0163:  stloc.s    V_17
    IL_0165:  br         IL_0634

    IL_016a:  ldloc.0
    IL_016b:  ldloc.s    V_17
    IL_016d:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainContentsGenerator/CavePoint>::get_Item(int32)
    IL_0172:  stloc.s    V_18
    IL_0174:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>> Game.TerrainContentsGenerator::m_caveBrushesByType
    IL_0179:  ldloc.s    V_18
    IL_017b:  ldfld      int32 Game.TerrainContentsGenerator/CavePoint::BrushType
    IL_0180:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>>::get_Item(int32)
    IL_0185:  stloc.s    V_19
    IL_0187:  ldloc.s    V_19
    IL_0189:  ldloc.s    V_5
    IL_018b:  ldc.i4.0
    IL_018c:  ldloc.s    V_19
    IL_018e:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::get_Count()
    IL_0193:  ldc.i4.1
    IL_0194:  sub
    IL_0195:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_019a:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::get_Item(int32)
    IL_019f:  ldarg.1
    IL_01a0:  ldloc.s    V_18
    IL_01a2:  ldflda     valuetype [Engine]Engine.Vector3 Game.TerrainContentsGenerator/CavePoint::Position
    IL_01a7:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_01ac:  call       int32 Game.Terrain::ToCell(float32)
    IL_01b1:  ldloc.s    V_18
    IL_01b3:  ldflda     valuetype [Engine]Engine.Vector3 Game.TerrainContentsGenerator/CavePoint::Position
    IL_01b8:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_01bd:  call       int32 Game.Terrain::ToCell(float32)
    IL_01c2:  ldloc.s    V_18
    IL_01c4:  ldflda     valuetype [Engine]Engine.Vector3 Game.TerrainContentsGenerator/CavePoint::Position
    IL_01c9:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_01ce:  call       int32 Game.Terrain::ToCell(float32)
    IL_01d3:  callvirt   instance void Game.TerrainBrush::PaintFastAvoidWater(class Game.TerrainChunk,
                                                                              int32,
                                                                              int32,
                                                                              int32)
    IL_01d8:  ldloc.s    V_18
    IL_01da:  dup
    IL_01db:  ldfld      valuetype [Engine]Engine.Vector3 Game.TerrainContentsGenerator/CavePoint::Position
    IL_01e0:  ldc.r4     2.
    IL_01e5:  ldloc.s    V_18
    IL_01e7:  ldfld      valuetype [Engine]Engine.Vector3 Game.TerrainContentsGenerator/CavePoint::Direction
    IL_01ec:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01f1:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01f6:  stfld      valuetype [Engine]Engine.Vector3 Game.TerrainContentsGenerator/CavePoint::Position
    IL_01fb:  ldloc.s    V_18
    IL_01fd:  dup
    IL_01fe:  ldfld      int32 Game.TerrainContentsGenerator/CavePoint::StepsTaken
    IL_0203:  ldc.i4.2
    IL_0204:  add
    IL_0205:  stfld      int32 Game.TerrainContentsGenerator/CavePoint::StepsTaken
    IL_020a:  ldloc.s    V_18
    IL_020c:  ldflda     valuetype [Engine]Engine.Vector3 Game.TerrainContentsGenerator/CavePoint::Position
    IL_0211:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0216:  ldloc.s    V_15
    IL_0218:  conv.r4
    IL_0219:  sub
    IL_021a:  stloc.s    V_20
    IL_021c:  ldloc.s    V_18
    IL_021e:  ldflda     valuetype [Engine]Engine.Vector3 Game.TerrainContentsGenerator/CavePoint::Position
    IL_0223:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0228:  ldloc.s    V_16
    IL_022a:  conv.r4
    IL_022b:  sub
    IL_022c:  stloc.s    V_21
    IL_022e:  ldloc.s    V_5
    IL_0230:  ldc.r4     0.5
    IL_0235:  callvirt   instance bool Game.Random::Bool(float32)
    IL_023a:  brfalse    IL_0342

    IL_023f:  ldloc.s    V_5
    IL_0241:  ldc.r4     1.
    IL_0246:  ldc.i4.1
    IL_0247:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Random::Vector3(float32,
                                                                                        bool)
    IL_024c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0251:  stloc.s    V_22
    IL_0253:  ldloc.s    V_20
    IL_0255:  ldc.r4     -25.5
    IL_025a:  bge.un.s   IL_026a

    IL_025c:  ldloc.s    V_22
    IL_025e:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0263:  ldc.r4     0.0
    IL_0268:  blt.s      IL_0281

    IL_026a:  ldloc.s    V_20
    IL_026c:  ldc.r4     25.5
    IL_0271:  ble.un.s   IL_0290

    IL_0273:  ldloc.s    V_22
    IL_0275:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_027a:  ldc.r4     0.0
    IL_027f:  ble.un.s   IL_0290

    IL_0281:  ldloca.s   V_22
    IL_0283:  ldloc.s    V_22
    IL_0285:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_028a:  neg
    IL_028b:  stfld      float32 [Engine]Engine.Vector3::X
    IL_0290:  ldloc.s    V_21
    IL_0292:  ldc.r4     -25.5
    IL_0297:  bge.un.s   IL_02a7

    IL_0299:  ldloc.s    V_22
    IL_029b:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_02a0:  ldc.r4     0.0
    IL_02a5:  blt.s      IL_02be

    IL_02a7:  ldloc.s    V_21
    IL_02a9:  ldc.r4     25.5
    IL_02ae:  ble.un.s   IL_02cd

    IL_02b0:  ldloc.s    V_22
    IL_02b2:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_02b7:  ldc.r4     0.0
    IL_02bc:  ble.un.s   IL_02cd

    IL_02be:  ldloca.s   V_22
    IL_02c0:  ldloc.s    V_22
    IL_02c2:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_02c7:  neg
    IL_02c8:  stfld      float32 [Engine]Engine.Vector3::Z
    IL_02cd:  ldloc.s    V_18
    IL_02cf:  ldflda     valuetype [Engine]Engine.Vector3 Game.TerrainContentsGenerator/CavePoint::Direction
    IL_02d4:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_02d9:  ldc.r4     -0.5
    IL_02de:  bge.un.s   IL_02ee

    IL_02e0:  ldloc.s    V_22
    IL_02e2:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_02e7:  ldc.r4     0.0
    IL_02ec:  blt.s      IL_030f

    IL_02ee:  ldloc.s    V_18
    IL_02f0:  ldflda     valuetype [Engine]Engine.Vector3 Game.TerrainContentsGenerator/CavePoint::Direction
    IL_02f5:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_02fa:  ldc.r4     -0.1
    IL_02ff:  ble.un.s   IL_031e

    IL_0301:  ldloc.s    V_22
    IL_0303:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0308:  ldc.r4     0.0
    IL_030d:  ble.un.s   IL_031e

    IL_030f:  ldloca.s   V_22
    IL_0311:  ldloc.s    V_22
    IL_0313:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0318:  neg
    IL_0319:  stfld      float32 [Engine]Engine.Vector3::Y
    IL_031e:  ldloc.s    V_18
    IL_0320:  ldloc.s    V_18
    IL_0322:  ldfld      valuetype [Engine]Engine.Vector3 Game.TerrainContentsGenerator/CavePoint::Direction
    IL_0327:  ldc.r4     0.33000001
    IL_032c:  ldloc.s    V_22
    IL_032e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0333:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0338:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_033d:  stfld      valuetype [Engine]Engine.Vector3 Game.TerrainContentsGenerator/CavePoint::Direction
    IL_0342:  ldloc.s    V_18
    IL_0344:  ldfld      int32 Game.TerrainContentsGenerator/CavePoint::StepsTaken
    IL_0349:  ldc.i4.s   20
    IL_034b:  ble.s      IL_038d

    IL_034d:  ldloc.s    V_5
    IL_034f:  ldc.r4     5.9999999e-002
    IL_0354:  callvirt   instance bool Game.Random::Bool(float32)
    IL_0359:  brfalse.s  IL_038d

    IL_035b:  ldloc.s    V_18
    IL_035d:  ldloc.s    V_5
    IL_035f:  ldc.r4     1.
    IL_0364:  ldc.i4.1
    IL_0365:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Random::Vector3(float32,
                                                                                        bool)
    IL_036a:  ldc.r4     1.
    IL_036f:  ldc.r4     0.33000001
    IL_0374:  ldc.r4     1.
    IL_0379:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_037e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0383:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0388:  stfld      valuetype [Engine]Engine.Vector3 Game.TerrainContentsGenerator/CavePoint::Direction
    IL_038d:  ldloc.s    V_18
    IL_038f:  ldfld      int32 Game.TerrainContentsGenerator/CavePoint::StepsTaken
    IL_0394:  ldc.i4.s   20
    IL_0396:  ble.s      IL_03d8

    IL_0398:  ldloc.s    V_5
    IL_039a:  ldc.r4     5.0000001e-002
    IL_039f:  callvirt   instance bool Game.Random::Bool(float32)
    IL_03a4:  brfalse.s  IL_03d8

    IL_03a6:  ldloc.s    V_18
    IL_03a8:  ldflda     valuetype [Engine]Engine.Vector3 Game.TerrainContentsGenerator/CavePoint::Direction
    IL_03ad:  ldc.r4     0.0
    IL_03b2:  stfld      float32 [Engine]Engine.Vector3::Y
    IL_03b7:  ldloc.s    V_18
    IL_03b9:  ldloc.s    V_18
    IL_03bb:  ldfld      int32 Game.TerrainContentsGenerator/CavePoint::BrushType
    IL_03c0:  ldc.i4.2
    IL_03c1:  add
    IL_03c2:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>> Game.TerrainContentsGenerator::m_caveBrushesByType
    IL_03c7:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>>::get_Count()
    IL_03cc:  ldc.i4.1
    IL_03cd:  sub
    IL_03ce:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_03d3:  stfld      int32 Game.TerrainContentsGenerator/CavePoint::BrushType
    IL_03d8:  ldloc.s    V_18
    IL_03da:  ldfld      int32 Game.TerrainContentsGenerator/CavePoint::StepsTaken
    IL_03df:  ldc.i4.s   30
    IL_03e1:  ble.s      IL_0424

    IL_03e3:  ldloc.s    V_5
    IL_03e5:  ldc.r4     2.9999999e-002
    IL_03ea:  callvirt   instance bool Game.Random::Bool(float32)
    IL_03ef:  brfalse.s  IL_0424

    IL_03f1:  ldloc.s    V_18
    IL_03f3:  ldflda     valuetype [Engine]Engine.Vector3 Game.TerrainContentsGenerator/CavePoint::Direction
    IL_03f8:  ldc.r4     0.0
    IL_03fd:  stfld      float32 [Engine]Engine.Vector3::X
    IL_0402:  ldloc.s    V_18
    IL_0404:  ldflda     valuetype [Engine]Engine.Vector3 Game.TerrainContentsGenerator/CavePoint::Direction
    IL_0409:  ldc.r4     -1.
    IL_040e:  stfld      float32 [Engine]Engine.Vector3::Y
    IL_0413:  ldloc.s    V_18
    IL_0415:  ldflda     valuetype [Engine]Engine.Vector3 Game.TerrainContentsGenerator/CavePoint::Direction
    IL_041a:  ldc.r4     0.0
    IL_041f:  stfld      float32 [Engine]Engine.Vector3::Z
    IL_0424:  ldloc.s    V_18
    IL_0426:  ldfld      int32 Game.TerrainContentsGenerator/CavePoint::StepsTaken
    IL_042b:  ldc.i4.s   30
    IL_042d:  ble.s      IL_0483

    IL_042f:  ldloc.s    V_18
    IL_0431:  ldflda     valuetype [Engine]Engine.Vector3 Game.TerrainContentsGenerator/CavePoint::Position
    IL_0436:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_043b:  ldc.r4     30.
    IL_0440:  bge.un.s   IL_0483

    IL_0442:  ldloc.s    V_5
    IL_0444:  ldc.r4     2.e-002
    IL_0449:  callvirt   instance bool Game.Random::Bool(float32)
    IL_044e:  brfalse.s  IL_0483

    IL_0450:  ldloc.s    V_18
    IL_0452:  ldflda     valuetype [Engine]Engine.Vector3 Game.TerrainContentsGenerator/CavePoint::Direction
    IL_0457:  ldc.r4     0.0
    IL_045c:  stfld      float32 [Engine]Engine.Vector3::X
    IL_0461:  ldloc.s    V_18
    IL_0463:  ldflda     valuetype [Engine]Engine.Vector3 Game.TerrainContentsGenerator/CavePoint::Direction
    IL_0468:  ldc.r4     1.
    IL_046d:  stfld      float32 [Engine]Engine.Vector3::Y
    IL_0472:  ldloc.s    V_18
    IL_0474:  ldflda     valuetype [Engine]Engine.Vector3 Game.TerrainContentsGenerator/CavePoint::Direction
    IL_0479:  ldc.r4     0.0
    IL_047e:  stfld      float32 [Engine]Engine.Vector3::Z
    IL_0483:  ldloc.s    V_5
    IL_0485:  ldc.r4     0.33000001
    IL_048a:  callvirt   instance bool Game.Random::Bool(float32)
    IL_048f:  brfalse.s  IL_04c0

    IL_0491:  ldloc.s    V_18
    IL_0493:  ldloc.s    V_5
    IL_0495:  ldc.r4     0.0
    IL_049a:  ldc.r4     0.99900001
    IL_049f:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_04a4:  ldc.r4     7.
    IL_04a9:  call       float32 [Engine]Engine.MathUtils::Pow(float32,
                                                               float32)
    IL_04ae:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>> Game.TerrainContentsGenerator::m_caveBrushesByType
    IL_04b3:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>>::get_Count()
    IL_04b8:  conv.r4
    IL_04b9:  mul
    IL_04ba:  conv.i4
    IL_04bb:  stfld      int32 Game.TerrainContentsGenerator/CavePoint::BrushType
    IL_04c0:  ldloc.s    V_5
    IL_04c2:  ldc.r4     5.9999999e-002
    IL_04c7:  callvirt   instance bool Game.Random::Bool(float32)
    IL_04cc:  brfalse    IL_0592

    IL_04d1:  ldloc.0
    IL_04d2:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainContentsGenerator/CavePoint>::get_Count()
    IL_04d7:  ldc.i4.s   12
    IL_04d9:  bge        IL_0592

    IL_04de:  ldloc.s    V_18
    IL_04e0:  ldfld      int32 Game.TerrainContentsGenerator/CavePoint::StepsTaken
    IL_04e5:  ldc.i4.s   20
    IL_04e7:  ble        IL_0592

    IL_04ec:  ldloc.s    V_18
    IL_04ee:  ldflda     valuetype [Engine]Engine.Vector3 Game.TerrainContentsGenerator/CavePoint::Position
    IL_04f3:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_04f8:  ldc.r4     58.
    IL_04fd:  bge.un     IL_0592

    IL_0502:  ldloc.0
    IL_0503:  newobj     instance void Game.TerrainContentsGenerator/CavePoint::.ctor()
    IL_0508:  dup
    IL_0509:  ldloc.s    V_18
    IL_050b:  ldfld      valuetype [Engine]Engine.Vector3 Game.TerrainContentsGenerator/CavePoint::Position
    IL_0510:  stfld      valuetype [Engine]Engine.Vector3 Game.TerrainContentsGenerator/CavePoint::Position
    IL_0515:  dup
    IL_0516:  ldloc.s    V_5
    IL_0518:  ldc.r4     1.
    IL_051d:  ldc.r4     1.
    IL_0522:  ldc.i4.0
    IL_0523:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Random::UniformVector3(float32,
                                                                                               float32,
                                                                                               bool)
    IL_0528:  ldc.r4     1.
    IL_052d:  ldc.r4     0.33000001
    IL_0532:  ldc.r4     1.
    IL_0537:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_053c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0541:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0546:  stfld      valuetype [Engine]Engine.Vector3 Game.TerrainContentsGenerator/CavePoint::Direction
    IL_054b:  dup
    IL_054c:  ldloc.s    V_5
    IL_054e:  ldc.r4     0.0
    IL_0553:  ldc.r4     0.99900001
    IL_0558:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_055d:  ldc.r4     7.
    IL_0562:  call       float32 [Engine]Engine.MathUtils::Pow(float32,
                                                               float32)
    IL_0567:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>> Game.TerrainContentsGenerator::m_caveBrushesByType
    IL_056c:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>>::get_Count()
    IL_0571:  conv.r4
    IL_0572:  mul
    IL_0573:  conv.i4
    IL_0574:  stfld      int32 Game.TerrainContentsGenerator/CavePoint::BrushType
    IL_0579:  dup
    IL_057a:  ldloc.s    V_5
    IL_057c:  ldc.i4.s   40
    IL_057e:  ldc.i4     0xb4
    IL_0583:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0588:  stfld      int32 Game.TerrainContentsGenerator/CavePoint::Length
    IL_058d:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainContentsGenerator/CavePoint>::Add(!0)
    IL_0592:  ldloc.s    V_18
    IL_0594:  ldfld      int32 Game.TerrainContentsGenerator/CavePoint::StepsTaken
    IL_0599:  ldloc.s    V_18
    IL_059b:  ldfld      int32 Game.TerrainContentsGenerator/CavePoint::Length
    IL_05a0:  bge.s      IL_05e4

    IL_05a2:  ldloc.s    V_20
    IL_05a4:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_05a9:  ldc.r4     34.
    IL_05ae:  bgt.s      IL_05e4

    IL_05b0:  ldloc.s    V_21
    IL_05b2:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_05b7:  ldc.r4     34.
    IL_05bc:  bgt.s      IL_05e4

    IL_05be:  ldloc.s    V_18
    IL_05c0:  ldflda     valuetype [Engine]Engine.Vector3 Game.TerrainContentsGenerator/CavePoint::Position
    IL_05c5:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_05ca:  ldc.r4     5.
    IL_05cf:  blt.s      IL_05e4

    IL_05d1:  ldloc.s    V_18
    IL_05d3:  ldflda     valuetype [Engine]Engine.Vector3 Game.TerrainContentsGenerator/CavePoint::Position
    IL_05d8:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_05dd:  ldc.r4     118.
    IL_05e2:  ble.un.s   IL_05ec

    IL_05e4:  ldloc.s    V_17
    IL_05e6:  ldc.i4.1
    IL_05e7:  add
    IL_05e8:  stloc.s    V_17
    IL_05ea:  br.s       IL_0634

    IL_05ec:  ldloc.s    V_18
    IL_05ee:  ldfld      int32 Game.TerrainContentsGenerator/CavePoint::StepsTaken
    IL_05f3:  ldc.i4.s   20
    IL_05f5:  rem
    IL_05f6:  brtrue.s   IL_0634

    IL_05f8:  ldarg.0
    IL_05f9:  ldloc.s    V_18
    IL_05fb:  ldflda     valuetype [Engine]Engine.Vector3 Game.TerrainContentsGenerator/CavePoint::Position
    IL_0600:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0605:  ldloc.s    V_18
    IL_0607:  ldflda     valuetype [Engine]Engine.Vector3 Game.TerrainContentsGenerator/CavePoint::Position
    IL_060c:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0611:  call       instance float32 Game.TerrainContentsGenerator::CalculateHeight(float32,
                                                                                         float32)
    IL_0616:  stloc.s    V_23
    IL_0618:  ldloc.s    V_18
    IL_061a:  ldflda     valuetype [Engine]Engine.Vector3 Game.TerrainContentsGenerator/CavePoint::Position
    IL_061f:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0624:  ldloc.s    V_23
    IL_0626:  ldc.r4     1.
    IL_062b:  add
    IL_062c:  ble.un.s   IL_0634

    IL_062e:  ldloc.s    V_17
    IL_0630:  ldc.i4.1
    IL_0631:  add
    IL_0632:  stloc.s    V_17
    IL_0634:  ldloc.s    V_17
    IL_0636:  ldloc.0
    IL_0637:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainContentsGenerator/CavePoint>::get_Count()
    IL_063c:  blt        IL_016a

    IL_0641:  ldloc.s    V_4
    IL_0643:  ldc.i4.1
    IL_0644:  add
    IL_0645:  stloc.s    V_4
    IL_0647:  ldloc.s    V_4
    IL_0649:  ldloc.2
    IL_064a:  ldc.i4.2
    IL_064b:  add
    IL_064c:  ble        IL_003a

    IL_0651:  ldloc.3
    IL_0652:  ldc.i4.1
    IL_0653:  add
    IL_0654:  stloc.3
    IL_0655:  ldloc.3
    IL_0656:  ldloc.1
    IL_0657:  ldc.i4.2
    IL_0658:  add
    IL_0659:  ble        IL_0030

    IL_065e:  ret
  } // end of method TerrainContentsGenerator::GenerateCaves

  .method private hidebysig instance void 
          GenerateTreesAndLogs(class Game.TerrainChunk chunk) cil managed
  {
    // 代码大小       1716 (0x6b4)
    .maxstack  6
    .locals init (class Game.Terrain V_0,
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
    IL_000f:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0014:  stloc.0
    IL_0015:  ldarg.1
    IL_0016:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_001b:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0020:  stloc.1
    IL_0021:  ldloc.1
    IL_0022:  ldc.i4.s   16
    IL_0024:  add
    IL_0025:  stloc.2
    IL_0026:  ldarg.1
    IL_0027:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_002c:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0031:  stloc.3
    IL_0032:  ldloc.3
    IL_0033:  ldc.i4.s   16
    IL_0035:  add
    IL_0036:  stloc.s    V_4
    IL_0038:  ldarg.1
    IL_0039:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Coords
    IL_003e:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0043:  stloc.s    V_5
    IL_0045:  ldarg.1
    IL_0046:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Coords
    IL_004b:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0050:  stloc.s    V_6
    IL_0052:  ldloc.s    V_5
    IL_0054:  stloc.s    V_7
    IL_0056:  br         IL_06aa

    IL_005b:  ldloc.s    V_6
    IL_005d:  stloc.s    V_8
    IL_005f:  br         IL_069b

    IL_0064:  ldarg.0
    IL_0065:  ldfld      int32 Game.TerrainContentsGenerator::m_seed
    IL_006a:  ldloc.s    V_7
    IL_006c:  add
    IL_006d:  ldc.i4     0xf67
    IL_0072:  ldloc.s    V_8
    IL_0074:  mul
    IL_0075:  add
    IL_0076:  newobj     instance void Game.Random::.ctor(int32)
    IL_007b:  stloc.s    V_9
    IL_007d:  ldarg.0
    IL_007e:  ldloc.s    V_7
    IL_0080:  ldc.i4.s   16
    IL_0082:  mul
    IL_0083:  conv.r4
    IL_0084:  ldloc.s    V_8
    IL_0086:  ldc.i4.s   16
    IL_0088:  mul
    IL_0089:  conv.r4
    IL_008a:  call       instance int32 Game.TerrainContentsGenerator::CalculateHumidity(float32,
                                                                                         float32)
    IL_008f:  stloc.s    V_10
    IL_0091:  ldarg.0
    IL_0092:  ldloc.s    V_7
    IL_0094:  ldc.i4.s   16
    IL_0096:  mul
    IL_0097:  conv.r4
    IL_0098:  ldloc.s    V_8
    IL_009a:  ldc.i4.s   16
    IL_009c:  mul
    IL_009d:  conv.r4
    IL_009e:  call       instance int32 Game.TerrainContentsGenerator::CalculateTemperature(float32,
                                                                                            float32)
    IL_00a3:  stloc.s    V_11
    IL_00a5:  ldloc.s    V_7
    IL_00a7:  conv.r4
    IL_00a8:  ldloc.s    V_8
    IL_00aa:  conv.r4
    IL_00ab:  ldc.r4     0.1
    IL_00b0:  ldc.i4.3
    IL_00b1:  ldc.r4     2.
    IL_00b6:  ldc.r4     0.5
    IL_00bb:  call       float32 Game.SimplexNoise::OctavedNoise(float32,
                                                                 float32,
                                                                 float32,
                                                                 int32,
                                                                 float32,
                                                                 float32)
    IL_00c0:  ldc.r4     0.25
    IL_00c5:  sub
    IL_00c6:  ldc.r4     0.2
    IL_00cb:  div
    IL_00cc:  ldloc.s    V_9
    IL_00ce:  ldc.r4     0.25
    IL_00d3:  callvirt   instance bool Game.Random::Bool(float32)
    IL_00d8:  brtrue.s   IL_00e1

    IL_00da:  ldc.r4     0.0
    IL_00df:  br.s       IL_00e6

    IL_00e1:  ldc.r4     0.5
    IL_00e6:  add
    IL_00e7:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_00ec:  ldloc.s    V_10
    IL_00ee:  conv.r4
    IL_00ef:  ldc.r4     4.
    IL_00f4:  sub
    IL_00f5:  ldc.r4     11.
    IL_00fa:  div
    IL_00fb:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0100:  mul
    IL_0101:  stloc.s    V_12
    IL_0103:  ldc.i4.0
    IL_0104:  stloc.s    V_13
    IL_0106:  ldloc.s    V_12
    IL_0108:  ldc.r4     0.94999999
    IL_010d:  ble.un.s   IL_0127

    IL_010f:  ldc.i4.1
    IL_0110:  ldloc.s    V_9
    IL_0112:  ldc.r4     0.25
    IL_0117:  callvirt   instance bool Game.Random::Bool(float32)
    IL_011c:  brtrue.s   IL_0121

    IL_011e:  ldc.i4.0
    IL_011f:  br.s       IL_0122

    IL_0121:  ldc.i4.1
    IL_0122:  add
    IL_0123:  stloc.s    V_13
    IL_0125:  br.s       IL_0144

    IL_0127:  ldloc.s    V_12
    IL_0129:  ldc.r4     0.5
    IL_012e:  ble.un.s   IL_0144

    IL_0130:  ldloc.s    V_9
    IL_0132:  ldc.r4     0.25
    IL_0137:  callvirt   instance bool Game.Random::Bool(float32)
    IL_013c:  brtrue.s   IL_0141

    IL_013e:  ldc.i4.0
    IL_013f:  br.s       IL_0142

    IL_0141:  ldc.i4.1
    IL_0142:  stloc.s    V_13
    IL_0144:  ldc.i4.0
    IL_0145:  stloc.s    V_14
    IL_0147:  ldc.i4.0
    IL_0148:  stloc.s    V_17
    IL_014a:  br         IL_0555

    IL_014f:  ldloc.s    V_7
    IL_0151:  ldc.i4.s   16
    IL_0153:  mul
    IL_0154:  ldloc.s    V_9
    IL_0156:  ldc.i4.0
    IL_0157:  ldc.i4.s   15
    IL_0159:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_015e:  add
    IL_015f:  stloc.s    V_18
    IL_0161:  ldloc.s    V_8
    IL_0163:  ldc.i4.s   16
    IL_0165:  mul
    IL_0166:  ldloc.s    V_9
    IL_0168:  ldc.i4.0
    IL_0169:  ldc.i4.s   15
    IL_016b:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0170:  add
    IL_0171:  stloc.s    V_19
    IL_0173:  ldloc.0
    IL_0174:  ldloc.s    V_18
    IL_0176:  ldloc.s    V_19
    IL_0178:  callvirt   instance int32 Game.Terrain::CalculateTopmostCellHeight(int32,
                                                                                 int32)
    IL_017d:  stloc.s    V_20
    IL_017f:  ldloc.s    V_20
    IL_0181:  ldc.i4.s   66
    IL_0183:  blt        IL_054f

    IL_0188:  ldloc.0
    IL_0189:  ldloc.s    V_18
    IL_018b:  ldloc.s    V_20
    IL_018d:  ldloc.s    V_19
    IL_018f:  callvirt   instance int32 Game.Terrain::GetCellContentsFast(int32,
                                                                          int32,
                                                                          int32)
    IL_0194:  stloc.s    V_21
    IL_0196:  ldloc.s    V_21
    IL_0198:  ldc.i4.2
    IL_0199:  beq.s      IL_01a3

    IL_019b:  ldloc.s    V_21
    IL_019d:  ldc.i4.8
    IL_019e:  bne.un     IL_054f

    IL_01a3:  ldloc.s    V_20
    IL_01a5:  ldc.i4.1
    IL_01a6:  add
    IL_01a7:  stloc.s    V_20
    IL_01a9:  ldloc.s    V_9
    IL_01ab:  ldc.i4.3
    IL_01ac:  ldc.i4.7
    IL_01ad:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_01b2:  stloc.s    V_22
    IL_01b4:  ldloc.s    V_9
    IL_01b6:  ldc.i4.0
    IL_01b7:  ldc.i4.3
    IL_01b8:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_01bd:  call       valuetype [Engine]Engine.Point3 Game.CellFace::FaceToPoint3(int32)
    IL_01c2:  stloc.s    V_23
    IL_01c4:  ldloc.s    V_23
    IL_01c6:  ldfld      int32 [Engine]Engine.Point3::X
    IL_01cb:  ldc.i4.0
    IL_01cc:  bge.s      IL_01e4

    IL_01ce:  ldloc.s    V_18
    IL_01d0:  ldloc.s    V_22
    IL_01d2:  sub
    IL_01d3:  ldc.i4.1
    IL_01d4:  add
    IL_01d5:  ldc.i4.0
    IL_01d6:  bge.s      IL_01e4

    IL_01d8:  ldloca.s   V_23
    IL_01da:  ldflda     int32 [Engine]Engine.Point3::X
    IL_01df:  dup
    IL_01e0:  ldind.i4
    IL_01e1:  ldc.i4.m1
    IL_01e2:  mul
    IL_01e3:  stind.i4
    IL_01e4:  ldloc.s    V_23
    IL_01e6:  ldfld      int32 [Engine]Engine.Point3::X
    IL_01eb:  ldc.i4.0
    IL_01ec:  ble.s      IL_0205

    IL_01ee:  ldloc.s    V_18
    IL_01f0:  ldloc.s    V_22
    IL_01f2:  add
    IL_01f3:  ldc.i4.1
    IL_01f4:  sub
    IL_01f5:  ldc.i4.s   15
    IL_01f7:  ble.s      IL_0205

    IL_01f9:  ldloca.s   V_23
    IL_01fb:  ldflda     int32 [Engine]Engine.Point3::X
    IL_0200:  dup
    IL_0201:  ldind.i4
    IL_0202:  ldc.i4.m1
    IL_0203:  mul
    IL_0204:  stind.i4
    IL_0205:  ldloc.s    V_23
    IL_0207:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_020c:  ldc.i4.0
    IL_020d:  bge.s      IL_0225

    IL_020f:  ldloc.s    V_19
    IL_0211:  ldloc.s    V_22
    IL_0213:  sub
    IL_0214:  ldc.i4.1
    IL_0215:  add
    IL_0216:  ldc.i4.0
    IL_0217:  bge.s      IL_0225

    IL_0219:  ldloca.s   V_23
    IL_021b:  ldflda     int32 [Engine]Engine.Point3::Z
    IL_0220:  dup
    IL_0221:  ldind.i4
    IL_0222:  ldc.i4.m1
    IL_0223:  mul
    IL_0224:  stind.i4
    IL_0225:  ldloc.s    V_23
    IL_0227:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_022c:  ldc.i4.0
    IL_022d:  ble.s      IL_0246

    IL_022f:  ldloc.s    V_19
    IL_0231:  ldloc.s    V_22
    IL_0233:  add
    IL_0234:  ldc.i4.1
    IL_0235:  sub
    IL_0236:  ldc.i4.s   15
    IL_0238:  ble.s      IL_0246

    IL_023a:  ldloca.s   V_23
    IL_023c:  ldflda     int32 [Engine]Engine.Point3::Z
    IL_0241:  dup
    IL_0242:  ldind.i4
    IL_0243:  ldc.i4.m1
    IL_0244:  mul
    IL_0245:  stind.i4
    IL_0246:  ldc.i4.1
    IL_0247:  stloc.s    V_24
    IL_0249:  ldc.i4.0
    IL_024a:  stloc.s    V_25
    IL_024c:  ldc.i4.0
    IL_024d:  stloc.s    V_26
    IL_024f:  ldc.i4.0
    IL_0250:  stloc.s    V_27
    IL_0252:  br         IL_02fd

    IL_0257:  ldloc.s    V_18
    IL_0259:  ldloc.s    V_23
    IL_025b:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0260:  ldloc.s    V_27
    IL_0262:  mul
    IL_0263:  add
    IL_0264:  stloc.s    V_28
    IL_0266:  ldloc.s    V_19
    IL_0268:  ldloc.s    V_23
    IL_026a:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_026f:  ldloc.s    V_27
    IL_0271:  mul
    IL_0272:  add
    IL_0273:  stloc.s    V_29
    IL_0275:  ldloc.s    V_28
    IL_0277:  ldloc.1
    IL_0278:  ldc.i4.1
    IL_0279:  add
    IL_027a:  blt.s      IL_0292

    IL_027c:  ldloc.s    V_28
    IL_027e:  ldloc.2
    IL_027f:  ldc.i4.1
    IL_0280:  sub
    IL_0281:  bge.s      IL_0292

    IL_0283:  ldloc.s    V_29
    IL_0285:  ldloc.3
    IL_0286:  ldc.i4.1
    IL_0287:  add
    IL_0288:  blt.s      IL_0292

    IL_028a:  ldloc.s    V_29
    IL_028c:  ldloc.s    V_4
    IL_028e:  ldc.i4.1
    IL_028f:  sub
    IL_0290:  blt.s      IL_0297

    IL_0292:  ldc.i4.0
    IL_0293:  stloc.s    V_24
    IL_0295:  br.s       IL_0306

    IL_0297:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_029c:  ldloc.0
    IL_029d:  ldloc.s    V_28
    IL_029f:  ldloc.s    V_20
    IL_02a1:  ldloc.s    V_29
    IL_02a3:  callvirt   instance int32 Game.Terrain::GetCellContentsFast(int32,
                                                                          int32,
                                                                          int32)
    IL_02a8:  ldelem.ref
    IL_02a9:  ldfld      bool Game.Block::IsCollidable
    IL_02ae:  brfalse.s  IL_02b5

    IL_02b0:  ldc.i4.0
    IL_02b1:  stloc.s    V_24
    IL_02b3:  br.s       IL_0306

    IL_02b5:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_02ba:  ldloc.0
    IL_02bb:  ldloc.s    V_28
    IL_02bd:  ldloc.s    V_20
    IL_02bf:  ldc.i4.1
    IL_02c0:  sub
    IL_02c1:  ldloc.s    V_29
    IL_02c3:  callvirt   instance int32 Game.Terrain::GetCellContentsFast(int32,
                                                                          int32,
                                                                          int32)
    IL_02c8:  ldelem.ref
    IL_02c9:  ldfld      bool Game.Block::IsCollidable
    IL_02ce:  brfalse.s  IL_02f7

    IL_02d0:  ldloc.s    V_27
    IL_02d2:  ldloc.s    V_22
    IL_02d4:  ldc.i4.2
    IL_02d5:  div
    IL_02d6:  ldc.i4.0
    IL_02d7:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_02dc:  bgt.s      IL_02e1

    IL_02de:  ldc.i4.1
    IL_02df:  stloc.s    V_25
    IL_02e1:  ldloc.s    V_27
    IL_02e3:  ldloc.s    V_22
    IL_02e5:  ldc.i4.2
    IL_02e6:  div
    IL_02e7:  ldc.i4.1
    IL_02e8:  add
    IL_02e9:  ldloc.s    V_22
    IL_02eb:  ldc.i4.1
    IL_02ec:  sub
    IL_02ed:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_02f2:  blt.s      IL_02f7

    IL_02f4:  ldc.i4.1
    IL_02f5:  stloc.s    V_26
    IL_02f7:  ldloc.s    V_27
    IL_02f9:  ldc.i4.1
    IL_02fa:  add
    IL_02fb:  stloc.s    V_27
    IL_02fd:  ldloc.s    V_27
    IL_02ff:  ldloc.s    V_22
    IL_0301:  blt        IL_0257

    IL_0306:  ldloc.s    V_24
    IL_0308:  ldloc.s    V_25
    IL_030a:  and
    IL_030b:  ldloc.s    V_26
    IL_030d:  and
    IL_030e:  brfalse    IL_054f

    IL_0313:  ldloc.s    V_23
    IL_0315:  ldfld      int32 [Engine]Engine.Point3::X
    IL_031a:  brtrue.s   IL_0326

    IL_031c:  ldc.i4.1
    IL_031d:  ldc.i4.0
    IL_031e:  ldc.i4.0
    IL_031f:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0324:  br.s       IL_032e

    IL_0326:  ldc.i4.0
    IL_0327:  ldc.i4.0
    IL_0328:  ldc.i4.1
    IL_0329:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_032e:  stloc.s    V_30
    IL_0330:  ldloc.s    V_9
    IL_0332:  ldloc.s    V_11
    IL_0334:  ldloc.s    V_10
    IL_0336:  ldloc.s    V_20
    IL_0338:  call       valuetype Game.TreeType Game.PlantsManager::GenerateRandomTreeType(class Game.Random,
                                                                                            int32,
                                                                                            int32,
                                                                                            int32)
    IL_033d:  dup
    IL_033e:  call       int32 Game.PlantsManager::GetTreeTrunkValue(valuetype Game.TreeType)
    IL_0343:  stloc.s    V_31
    IL_0345:  ldloc.s    V_31
    IL_0347:  ldloc.s    V_31
    IL_0349:  call       int32 Game.Terrain::ExtractData(int32)
    IL_034e:  ldloc.s    V_23
    IL_0350:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0355:  brtrue.s   IL_035a

    IL_0357:  ldc.i4.0
    IL_0358:  br.s       IL_035b

    IL_035a:  ldc.i4.1
    IL_035b:  call       int32 Game.WoodBlock::SetCutFace(int32,
                                                          int32)
    IL_0360:  call       int32 Game.Terrain::ReplaceData(int32,
                                                         int32)
    IL_0365:  stloc.s    V_31
    IL_0367:  call       int32 Game.PlantsManager::GetTreeLeavesValue(valuetype Game.TreeType)
    IL_036c:  stloc.s    V_32
    IL_036e:  ldc.i4.0
    IL_036f:  stloc.s    V_33
    IL_0371:  br         IL_0540

    IL_0376:  ldloc.s    V_18
    IL_0378:  ldloc.s    V_23
    IL_037a:  ldfld      int32 [Engine]Engine.Point3::X
    IL_037f:  ldloc.s    V_33
    IL_0381:  mul
    IL_0382:  add
    IL_0383:  stloc.s    V_34
    IL_0385:  ldloc.s    V_19
    IL_0387:  ldloc.s    V_23
    IL_0389:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_038e:  ldloc.s    V_33
    IL_0390:  mul
    IL_0391:  add
    IL_0392:  stloc.s    V_35
    IL_0394:  ldloc.0
    IL_0395:  ldloc.s    V_34
    IL_0397:  ldloc.s    V_20
    IL_0399:  ldloc.s    V_35
    IL_039b:  ldloc.s    V_31
    IL_039d:  callvirt   instance void Game.Terrain::SetCellValueFast(int32,
                                                                      int32,
                                                                      int32,
                                                                      int32)
    IL_03a2:  ldloc.s    V_33
    IL_03a4:  ldloc.s    V_22
    IL_03a6:  ldc.i4.2
    IL_03a7:  div
    IL_03a8:  ble        IL_053a

    IL_03ad:  ldloc.s    V_9
    IL_03af:  ldc.r4     0.30000001
    IL_03b4:  callvirt   instance bool Game.Random::Bool(float32)
    IL_03b9:  brfalse.s  IL_0402

    IL_03bb:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_03c0:  ldloc.0
    IL_03c1:  ldloc.s    V_34
    IL_03c3:  ldloc.s    V_30
    IL_03c5:  ldfld      int32 [Engine]Engine.Point3::X
    IL_03ca:  add
    IL_03cb:  ldloc.s    V_20
    IL_03cd:  ldloc.s    V_35
    IL_03cf:  ldloc.s    V_30
    IL_03d1:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_03d6:  add
    IL_03d7:  callvirt   instance int32 Game.Terrain::GetCellContentsFast(int32,
                                                                          int32,
                                                                          int32)
    IL_03dc:  ldelem.ref
    IL_03dd:  ldfld      bool Game.Block::IsCollidable
    IL_03e2:  brtrue.s   IL_0402

    IL_03e4:  ldloc.0
    IL_03e5:  ldloc.s    V_34
    IL_03e7:  ldloc.s    V_30
    IL_03e9:  ldfld      int32 [Engine]Engine.Point3::X
    IL_03ee:  add
    IL_03ef:  ldloc.s    V_20
    IL_03f1:  ldloc.s    V_35
    IL_03f3:  ldloc.s    V_30
    IL_03f5:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_03fa:  add
    IL_03fb:  ldloc.s    V_32
    IL_03fd:  callvirt   instance void Game.Terrain::SetCellValueFast(int32,
                                                                      int32,
                                                                      int32,
                                                                      int32)
    IL_0402:  ldloc.s    V_9
    IL_0404:  ldc.r4     5.0000001e-002
    IL_0409:  callvirt   instance bool Game.Random::Bool(float32)
    IL_040e:  brfalse.s  IL_0457

    IL_0410:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0415:  ldloc.0
    IL_0416:  ldloc.s    V_34
    IL_0418:  ldloc.s    V_30
    IL_041a:  ldfld      int32 [Engine]Engine.Point3::X
    IL_041f:  add
    IL_0420:  ldloc.s    V_20
    IL_0422:  ldloc.s    V_35
    IL_0424:  ldloc.s    V_30
    IL_0426:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_042b:  add
    IL_042c:  callvirt   instance int32 Game.Terrain::GetCellContentsFast(int32,
                                                                          int32,
                                                                          int32)
    IL_0431:  ldelem.ref
    IL_0432:  ldfld      bool Game.Block::IsCollidable
    IL_0437:  brtrue.s   IL_0457

    IL_0439:  ldloc.0
    IL_043a:  ldloc.s    V_34
    IL_043c:  ldloc.s    V_30
    IL_043e:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0443:  add
    IL_0444:  ldloc.s    V_20
    IL_0446:  ldloc.s    V_35
    IL_0448:  ldloc.s    V_30
    IL_044a:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_044f:  add
    IL_0450:  ldloc.s    V_31
    IL_0452:  callvirt   instance void Game.Terrain::SetCellValueFast(int32,
                                                                      int32,
                                                                      int32,
                                                                      int32)
    IL_0457:  ldloc.s    V_9
    IL_0459:  ldc.r4     0.30000001
    IL_045e:  callvirt   instance bool Game.Random::Bool(float32)
    IL_0463:  brfalse.s  IL_04ac

    IL_0465:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_046a:  ldloc.0
    IL_046b:  ldloc.s    V_34
    IL_046d:  ldloc.s    V_30
    IL_046f:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0474:  sub
    IL_0475:  ldloc.s    V_20
    IL_0477:  ldloc.s    V_35
    IL_0479:  ldloc.s    V_30
    IL_047b:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0480:  sub
    IL_0481:  callvirt   instance int32 Game.Terrain::GetCellContentsFast(int32,
                                                                          int32,
                                                                          int32)
    IL_0486:  ldelem.ref
    IL_0487:  ldfld      bool Game.Block::IsCollidable
    IL_048c:  brtrue.s   IL_04ac

    IL_048e:  ldloc.0
    IL_048f:  ldloc.s    V_34
    IL_0491:  ldloc.s    V_30
    IL_0493:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0498:  sub
    IL_0499:  ldloc.s    V_20
    IL_049b:  ldloc.s    V_35
    IL_049d:  ldloc.s    V_30
    IL_049f:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_04a4:  sub
    IL_04a5:  ldloc.s    V_32
    IL_04a7:  callvirt   instance void Game.Terrain::SetCellValueFast(int32,
                                                                      int32,
                                                                      int32,
                                                                      int32)
    IL_04ac:  ldloc.s    V_9
    IL_04ae:  ldc.r4     5.0000001e-002
    IL_04b3:  callvirt   instance bool Game.Random::Bool(float32)
    IL_04b8:  brfalse.s  IL_0501

    IL_04ba:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_04bf:  ldloc.0
    IL_04c0:  ldloc.s    V_34
    IL_04c2:  ldloc.s    V_30
    IL_04c4:  ldfld      int32 [Engine]Engine.Point3::X
    IL_04c9:  sub
    IL_04ca:  ldloc.s    V_20
    IL_04cc:  ldloc.s    V_35
    IL_04ce:  ldloc.s    V_30
    IL_04d0:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_04d5:  sub
    IL_04d6:  callvirt   instance int32 Game.Terrain::GetCellContentsFast(int32,
                                                                          int32,
                                                                          int32)
    IL_04db:  ldelem.ref
    IL_04dc:  ldfld      bool Game.Block::IsCollidable
    IL_04e1:  brtrue.s   IL_0501

    IL_04e3:  ldloc.0
    IL_04e4:  ldloc.s    V_34
    IL_04e6:  ldloc.s    V_30
    IL_04e8:  ldfld      int32 [Engine]Engine.Point3::X
    IL_04ed:  sub
    IL_04ee:  ldloc.s    V_20
    IL_04f0:  ldloc.s    V_35
    IL_04f2:  ldloc.s    V_30
    IL_04f4:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_04f9:  sub
    IL_04fa:  ldloc.s    V_31
    IL_04fc:  callvirt   instance void Game.Terrain::SetCellValueFast(int32,
                                                                      int32,
                                                                      int32,
                                                                      int32)
    IL_0501:  ldloc.s    V_9
    IL_0503:  ldc.r4     0.1
    IL_0508:  callvirt   instance bool Game.Random::Bool(float32)
    IL_050d:  brfalse.s  IL_053a

    IL_050f:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0514:  ldloc.0
    IL_0515:  ldloc.s    V_34
    IL_0517:  ldloc.s    V_20
    IL_0519:  ldc.i4.1
    IL_051a:  add
    IL_051b:  ldloc.s    V_35
    IL_051d:  callvirt   instance int32 Game.Terrain::GetCellContentsFast(int32,
                                                                          int32,
                                                                          int32)
    IL_0522:  ldelem.ref
    IL_0523:  ldfld      bool Game.Block::IsCollidable
    IL_0528:  brtrue.s   IL_053a

    IL_052a:  ldloc.0
    IL_052b:  ldloc.s    V_34
    IL_052d:  ldloc.s    V_20
    IL_052f:  ldc.i4.1
    IL_0530:  add
    IL_0531:  ldloc.s    V_35
    IL_0533:  ldloc.s    V_32
    IL_0535:  callvirt   instance void Game.Terrain::SetCellValueFast(int32,
                                                                      int32,
                                                                      int32,
                                                                      int32)
    IL_053a:  ldloc.s    V_33
    IL_053c:  ldc.i4.1
    IL_053d:  add
    IL_053e:  stloc.s    V_33
    IL_0540:  ldloc.s    V_33
    IL_0542:  ldloc.s    V_22
    IL_0544:  blt        IL_0376

    IL_0549:  ldloc.s    V_14
    IL_054b:  ldc.i4.1
    IL_054c:  add
    IL_054d:  stloc.s    V_14
    IL_054f:  ldloc.s    V_17
    IL_0551:  ldc.i4.1
    IL_0552:  add
    IL_0553:  stloc.s    V_17
    IL_0555:  ldloc.s    V_17
    IL_0557:  ldc.i4.8
    IL_0558:  bge.s      IL_0563

    IL_055a:  ldloc.s    V_14
    IL_055c:  ldloc.s    V_13
    IL_055e:  blt        IL_014f

    IL_0563:  ldc.r4     5.
    IL_0568:  ldloc.s    V_12
    IL_056a:  mul
    IL_056b:  conv.i4
    IL_056c:  stloc.s    V_15
    IL_056e:  ldc.i4.0
    IL_056f:  stloc.s    V_16
    IL_0571:  ldc.i4.0
    IL_0572:  stloc.s    V_36
    IL_0574:  br         IL_0686

    IL_0579:  ldloc.s    V_7
    IL_057b:  ldc.i4.s   16
    IL_057d:  mul
    IL_057e:  ldloc.s    V_9
    IL_0580:  ldc.i4.2
    IL_0581:  ldc.i4.s   13
    IL_0583:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0588:  add
    IL_0589:  stloc.s    V_37
    IL_058b:  ldloc.s    V_8
    IL_058d:  ldc.i4.s   16
    IL_058f:  mul
    IL_0590:  ldloc.s    V_9
    IL_0592:  ldc.i4.2
    IL_0593:  ldc.i4.s   13
    IL_0595:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_059a:  add
    IL_059b:  stloc.s    V_38
    IL_059d:  ldloc.0
    IL_059e:  ldloc.s    V_37
    IL_05a0:  ldloc.s    V_38
    IL_05a2:  callvirt   instance int32 Game.Terrain::CalculateTopmostCellHeight(int32,
                                                                                 int32)
    IL_05a7:  stloc.s    V_39
    IL_05a9:  ldloc.s    V_39
    IL_05ab:  ldc.i4.s   66
    IL_05ad:  blt        IL_0680

    IL_05b2:  ldloc.0
    IL_05b3:  ldloc.s    V_37
    IL_05b5:  ldloc.s    V_39
    IL_05b7:  ldloc.s    V_38
    IL_05b9:  callvirt   instance int32 Game.Terrain::GetCellContentsFast(int32,
                                                                          int32,
                                                                          int32)
    IL_05be:  stloc.s    V_40
    IL_05c0:  ldloc.s    V_40
    IL_05c2:  ldc.i4.2
    IL_05c3:  beq.s      IL_05cd

    IL_05c5:  ldloc.s    V_40
    IL_05c7:  ldc.i4.8
    IL_05c8:  bne.un     IL_0680

    IL_05cd:  ldloc.s    V_39
    IL_05cf:  ldc.i4.1
    IL_05d0:  add
    IL_05d1:  stloc.s    V_39
    IL_05d3:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_05d8:  ldloc.0
    IL_05d9:  ldloc.s    V_37
    IL_05db:  ldc.i4.1
    IL_05dc:  add
    IL_05dd:  ldloc.s    V_39
    IL_05df:  ldloc.s    V_38
    IL_05e1:  callvirt   instance int32 Game.Terrain::GetCellContentsFast(int32,
                                                                          int32,
                                                                          int32)
    IL_05e6:  ldelem.ref
    IL_05e7:  ldfld      bool Game.Block::IsCollidable
    IL_05ec:  brtrue     IL_0680

    IL_05f1:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_05f6:  ldloc.0
    IL_05f7:  ldloc.s    V_37
    IL_05f9:  ldc.i4.1
    IL_05fa:  sub
    IL_05fb:  ldloc.s    V_39
    IL_05fd:  ldloc.s    V_38
    IL_05ff:  callvirt   instance int32 Game.Terrain::GetCellContentsFast(int32,
                                                                          int32,
                                                                          int32)
    IL_0604:  ldelem.ref
    IL_0605:  ldfld      bool Game.Block::IsCollidable
    IL_060a:  brtrue.s   IL_0680

    IL_060c:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0611:  ldloc.0
    IL_0612:  ldloc.s    V_37
    IL_0614:  ldloc.s    V_39
    IL_0616:  ldloc.s    V_38
    IL_0618:  ldc.i4.1
    IL_0619:  add
    IL_061a:  callvirt   instance int32 Game.Terrain::GetCellContentsFast(int32,
                                                                          int32,
                                                                          int32)
    IL_061f:  ldelem.ref
    IL_0620:  ldfld      bool Game.Block::IsCollidable
    IL_0625:  brtrue.s   IL_0680

    IL_0627:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_062c:  ldloc.0
    IL_062d:  ldloc.s    V_37
    IL_062f:  ldloc.s    V_39
    IL_0631:  ldloc.s    V_38
    IL_0633:  ldc.i4.1
    IL_0634:  sub
    IL_0635:  callvirt   instance int32 Game.Terrain::GetCellContentsFast(int32,
                                                                          int32,
                                                                          int32)
    IL_063a:  ldelem.ref
    IL_063b:  ldfld      bool Game.Block::IsCollidable
    IL_0640:  brtrue.s   IL_0680

    IL_0642:  ldloc.s    V_9
    IL_0644:  ldloc.s    V_11
    IL_0646:  ldloc.s    V_10
    IL_0648:  ldloc.s    V_39
    IL_064a:  call       valuetype Game.TreeType Game.PlantsManager::GenerateRandomTreeType(class Game.Random,
                                                                                            int32,
                                                                                            int32,
                                                                                            int32)
    IL_064f:  call       valuetype [Engine]Engine.ReadOnlyList`1<class Game.TerrainBrush> Game.PlantsManager::GetTreeBrushes(valuetype Game.TreeType)
    IL_0654:  stloc.s    V_41
    IL_0656:  ldloca.s   V_41
    IL_0658:  ldloc.s    V_9
    IL_065a:  ldc.i4.0
    IL_065b:  ldloca.s   V_41
    IL_065d:  call       instance int32 valuetype [Engine]Engine.ReadOnlyList`1<class Game.TerrainBrush>::get_Count()
    IL_0662:  ldc.i4.1
    IL_0663:  sub
    IL_0664:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0669:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class Game.TerrainBrush>::get_Item(int32)
    IL_066e:  ldarg.1
    IL_066f:  ldloc.s    V_37
    IL_0671:  ldloc.s    V_39
    IL_0673:  ldloc.s    V_38
    IL_0675:  callvirt   instance void Game.TerrainBrush::PaintFast(class Game.TerrainChunk,
                                                                    int32,
                                                                    int32,
                                                                    int32)
    IL_067a:  ldloc.s    V_16
    IL_067c:  ldc.i4.1
    IL_067d:  add
    IL_067e:  stloc.s    V_16
    IL_0680:  ldloc.s    V_36
    IL_0682:  ldc.i4.1
    IL_0683:  add
    IL_0684:  stloc.s    V_36
    IL_0686:  ldloc.s    V_36
    IL_0688:  ldc.i4.s   32
    IL_068a:  bge.s      IL_0695

    IL_068c:  ldloc.s    V_16
    IL_068e:  ldloc.s    V_15
    IL_0690:  blt        IL_0579

    IL_0695:  ldloc.s    V_8
    IL_0697:  ldc.i4.1
    IL_0698:  add
    IL_0699:  stloc.s    V_8
    IL_069b:  ldloc.s    V_8
    IL_069d:  ldloc.s    V_6
    IL_069f:  ble        IL_0064

    IL_06a4:  ldloc.s    V_7
    IL_06a6:  ldc.i4.1
    IL_06a7:  add
    IL_06a8:  stloc.s    V_7
    IL_06aa:  ldloc.s    V_7
    IL_06ac:  ldloc.s    V_5
    IL_06ae:  ble        IL_005b

    IL_06b3:  ret
  } // end of method TerrainContentsGenerator::GenerateTreesAndLogs

  .method private hidebysig instance void 
          GenerateBedrockAndAir(class Game.TerrainChunk chunk) cil managed
  {
    // 代码大小       144 (0x90)
    .maxstack  8
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             float32 V_5,
             int32 V_6)
    IL_0000:  ldc.i4.1
    IL_0001:  call       int32 Game.Terrain::MakeBlockValue(int32)
    IL_0006:  stloc.0
    IL_0007:  ldc.i4.0
    IL_0008:  stloc.1
    IL_0009:  br.s       IL_0087

    IL_000b:  ldc.i4.0
    IL_000c:  stloc.2
    IL_000d:  br.s       IL_007e

    IL_000f:  ldloc.1
    IL_0010:  ldarg.1
    IL_0011:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_0016:  ldfld      int32 [Engine]Engine.Point2::X
    IL_001b:  add
    IL_001c:  stloc.3
    IL_001d:  ldloc.2
    IL_001e:  ldarg.1
    IL_001f:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_0024:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0029:  add
    IL_002a:  stloc.s    V_4
    IL_002c:  ldc.i4.2
    IL_002d:  ldc.r4     4.
    IL_0032:  ldloc.3
    IL_0033:  conv.r4
    IL_0034:  ldloc.s    V_4
    IL_0036:  conv.r4
    IL_0037:  ldc.r4     0.1
    IL_003c:  ldc.i4.1
    IL_003d:  ldc.r4     1.
    IL_0042:  ldc.r4     1.
    IL_0047:  call       float32 Game.SimplexNoise::OctavedNoise(float32,
                                                                 float32,
                                                                 float32,
                                                                 int32,
                                                                 float32,
                                                                 float32)
    IL_004c:  mul
    IL_004d:  conv.i4
    IL_004e:  add
    IL_004f:  conv.r4
    IL_0050:  stloc.s    V_5
    IL_0052:  ldc.i4.0
    IL_0053:  stloc.s    V_6
    IL_0055:  br.s       IL_0068

    IL_0057:  ldarg.1
    IL_0058:  ldloc.1
    IL_0059:  ldloc.s    V_6
    IL_005b:  ldloc.2
    IL_005c:  ldloc.0
    IL_005d:  callvirt   instance void Game.TerrainChunk::SetCellValueFast(int32,
                                                                           int32,
                                                                           int32,
                                                                           int32)
    IL_0062:  ldloc.s    V_6
    IL_0064:  ldc.i4.1
    IL_0065:  add
    IL_0066:  stloc.s    V_6
    IL_0068:  ldloc.s    V_6
    IL_006a:  conv.r4
    IL_006b:  ldloc.s    V_5
    IL_006d:  blt.s      IL_0057

    IL_006f:  ldarg.1
    IL_0070:  ldloc.1
    IL_0071:  ldc.i4.s   127
    IL_0073:  ldloc.2
    IL_0074:  ldc.i4.0
    IL_0075:  callvirt   instance void Game.TerrainChunk::SetCellValueFast(int32,
                                                                           int32,
                                                                           int32,
                                                                           int32)
    IL_007a:  ldloc.2
    IL_007b:  ldc.i4.1
    IL_007c:  add
    IL_007d:  stloc.2
    IL_007e:  ldloc.2
    IL_007f:  ldc.i4.s   16
    IL_0081:  blt.s      IL_000f

    IL_0083:  ldloc.1
    IL_0084:  ldc.i4.1
    IL_0085:  add
    IL_0086:  stloc.1
    IL_0087:  ldloc.1
    IL_0088:  ldc.i4.s   16
    IL_008a:  blt        IL_000b

    IL_008f:  ret
  } // end of method TerrainContentsGenerator::GenerateBedrockAndAir

  .method private hidebysig instance void 
          GenerateGrassAndPlants(class Game.TerrainChunk chunk) cil managed
  {
    // 代码大小       220 (0xdc)
    .maxstack  7
    .locals init (class Game.Random V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7,
             int32 V_8)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.TerrainContentsGenerator::TGExtras
    IL_0006:  brtrue.s   IL_0009

    IL_0008:  ret

    IL_0009:  ldarg.0
    IL_000a:  ldfld      int32 Game.TerrainContentsGenerator::m_seed
    IL_000f:  ldarg.1
    IL_0010:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Coords
    IL_0015:  ldfld      int32 [Engine]Engine.Point2::X
    IL_001a:  add
    IL_001b:  ldc.i4     0xf67
    IL_0020:  ldarg.1
    IL_0021:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Coords
    IL_0026:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_002b:  mul
    IL_002c:  add
    IL_002d:  newobj     instance void Game.Random::.ctor(int32)
    IL_0032:  stloc.0
    IL_0033:  ldc.i4.0
    IL_0034:  stloc.1
    IL_0035:  br         IL_00d3

    IL_003a:  ldc.i4.0
    IL_003b:  stloc.2
    IL_003c:  br         IL_00c7

    IL_0041:  ldc.i4.s   126
    IL_0043:  stloc.3
    IL_0044:  br.s       IL_00bf

    IL_0046:  ldarg.1
    IL_0047:  ldloc.1
    IL_0048:  ldloc.3
    IL_0049:  ldloc.2
    IL_004a:  callvirt   instance int32 Game.TerrainChunk::GetCellValueFast(int32,
                                                                            int32,
                                                                            int32)
    IL_004f:  stloc.s    V_4
    IL_0051:  ldloc.s    V_4
    IL_0053:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0058:  stloc.s    V_5
    IL_005a:  ldloc.s    V_5
    IL_005c:  brfalse.s  IL_00bb

    IL_005e:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0063:  ldloc.s    V_5
    IL_0065:  ldelem.ref
    IL_0066:  isinst     Game.FluidBlock
    IL_006b:  brtrue.s   IL_00c3

    IL_006d:  ldarg.1
    IL_006e:  ldloc.1
    IL_006f:  ldloc.2
    IL_0070:  callvirt   instance int32 Game.TerrainChunk::GetTemperatureFast(int32,
                                                                              int32)
    IL_0075:  stloc.s    V_6
    IL_0077:  ldarg.1
    IL_0078:  ldloc.1
    IL_0079:  ldloc.2
    IL_007a:  callvirt   instance int32 Game.TerrainChunk::GetHumidityFast(int32,
                                                                           int32)
    IL_007f:  stloc.s    V_7
    IL_0081:  ldloc.0
    IL_0082:  ldloc.s    V_4
    IL_0084:  ldloc.s    V_6
    IL_0086:  ldloc.s    V_7
    IL_0088:  ldloc.3
    IL_0089:  ldc.i4.1
    IL_008a:  add
    IL_008b:  call       int32 Game.PlantsManager::GenerateRandomPlantValue(class Game.Random,
                                                                            int32,
                                                                            int32,
                                                                            int32,
                                                                            int32)
    IL_0090:  stloc.s    V_8
    IL_0092:  ldloc.s    V_8
    IL_0094:  brfalse.s  IL_00a3

    IL_0096:  ldarg.1
    IL_0097:  ldloc.1
    IL_0098:  ldloc.3
    IL_0099:  ldc.i4.1
    IL_009a:  add
    IL_009b:  ldloc.2
    IL_009c:  ldloc.s    V_8
    IL_009e:  callvirt   instance void Game.TerrainChunk::SetCellValueFast(int32,
                                                                           int32,
                                                                           int32,
                                                                           int32)
    IL_00a3:  ldloc.s    V_5
    IL_00a5:  ldc.i4.2
    IL_00a6:  bne.un.s   IL_00c3

    IL_00a8:  ldarg.1
    IL_00a9:  ldloc.1
    IL_00aa:  ldloc.3
    IL_00ab:  ldloc.2
    IL_00ac:  ldc.i4.8
    IL_00ad:  ldc.i4.0
    IL_00ae:  ldc.i4.0
    IL_00af:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_00b4:  callvirt   instance void Game.TerrainChunk::SetCellValueFast(int32,
                                                                           int32,
                                                                           int32,
                                                                           int32)
    IL_00b9:  br.s       IL_00c3

    IL_00bb:  ldloc.3
    IL_00bc:  ldc.i4.1
    IL_00bd:  sub
    IL_00be:  stloc.3
    IL_00bf:  ldloc.3
    IL_00c0:  ldc.i4.0
    IL_00c1:  bge.s      IL_0046

    IL_00c3:  ldloc.2
    IL_00c4:  ldc.i4.1
    IL_00c5:  add
    IL_00c6:  stloc.2
    IL_00c7:  ldloc.2
    IL_00c8:  ldc.i4.s   16
    IL_00ca:  blt        IL_0041

    IL_00cf:  ldloc.1
    IL_00d0:  ldc.i4.1
    IL_00d1:  add
    IL_00d2:  stloc.1
    IL_00d3:  ldloc.1
    IL_00d4:  ldc.i4.s   16
    IL_00d6:  blt        IL_003a

    IL_00db:  ret
  } // end of method TerrainContentsGenerator::GenerateGrassAndPlants

  .method private hidebysig instance void 
          GenerateBottomSuckers(class Game.TerrainChunk chunk) cil managed
  {
    // 代码大小       630 (0x276)
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
             valuetype [Engine]Engine.Point3 V_9,
             int32 V_10,
             float32 V_11,
             float32 V_12,
             float32 V_13,
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
    IL_0010:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Coords
    IL_0015:  ldfld      int32 [Engine]Engine.Point2::X
    IL_001a:  add
    IL_001b:  ldc.i4     0x8a2
    IL_0020:  ldarg.1
    IL_0021:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Coords
    IL_0026:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_002b:  mul
    IL_002c:  add
    IL_002d:  newobj     instance void Game.Random::.ctor(int32)
    IL_0032:  stloc.0
    IL_0033:  ldc.i4.0
    IL_0034:  stloc.1
    IL_0035:  br         IL_026d

    IL_003a:  ldc.i4.0
    IL_003b:  stloc.2
    IL_003c:  br         IL_0261

    IL_0041:  ldloc.0
    IL_0042:  ldc.r4     0.2
    IL_0047:  callvirt   instance bool Game.Random::Bool(float32)
    IL_004c:  brfalse    IL_025d

    IL_0051:  ldarg.1
    IL_0052:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_0057:  ldfld      int32 [Engine]Engine.Point2::X
    IL_005c:  ldloc.1
    IL_005d:  add
    IL_005e:  stloc.3
    IL_005f:  ldarg.1
    IL_0060:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_0065:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_006a:  ldloc.2
    IL_006b:  add
    IL_006c:  stloc.s    V_4
    IL_006e:  ldarg.1
    IL_006f:  ldloc.1
    IL_0070:  ldloc.2
    IL_0071:  callvirt   instance int32 Game.TerrainChunk::GetTemperatureFast(int32,
                                                                              int32)
    IL_0076:  stloc.s    V_5
    IL_0078:  ldarg.0
    IL_0079:  ldloc.3
    IL_007a:  conv.r4
    IL_007b:  ldloc.s    V_4
    IL_007d:  conv.r4
    IL_007e:  call       instance float32 Game.TerrainContentsGenerator::CalculateOceanShoreDistance(float32,
                                                                                                     float32)
    IL_0083:  ldc.r4     10.
    IL_0088:  bgt        IL_025d

    IL_008d:  ldc.i4.0
    IL_008e:  stloc.s    V_6
    IL_0090:  ldc.i4.s   126
    IL_0092:  stloc.s    V_7
    IL_0094:  br         IL_0255

    IL_0099:  ldarg.1
    IL_009a:  ldloc.1
    IL_009b:  ldloc.s    V_7
    IL_009d:  ldloc.2
    IL_009e:  callvirt   instance int32 Game.TerrainChunk::GetCellValueFast(int32,
                                                                            int32,
                                                                            int32)
    IL_00a3:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_00a8:  ldc.i4.s   18
    IL_00aa:  bne.un     IL_024c

    IL_00af:  ldloc.s    V_6
    IL_00b1:  ldc.i4.1
    IL_00b2:  add
    IL_00b3:  stloc.s    V_6
    IL_00b5:  ldloc.0
    IL_00b6:  ldc.i4.0
    IL_00b7:  ldc.i4.5
    IL_00b8:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_00bd:  stloc.s    V_8
    IL_00bf:  ldloc.s    V_8
    IL_00c1:  call       valuetype [Engine]Engine.Point3 Game.CellFace::FaceToPoint3(int32)
    IL_00c6:  stloc.s    V_9
    IL_00c8:  ldloc.1
    IL_00c9:  ldloc.s    V_9
    IL_00cb:  ldfld      int32 [Engine]Engine.Point3::X
    IL_00d0:  add
    IL_00d1:  ldc.i4.0
    IL_00d2:  blt        IL_024f

    IL_00d7:  ldloc.1
    IL_00d8:  ldloc.s    V_9
    IL_00da:  ldfld      int32 [Engine]Engine.Point3::X
    IL_00df:  add
    IL_00e0:  ldc.i4.s   16
    IL_00e2:  bge        IL_024f

    IL_00e7:  ldloc.s    V_7
    IL_00e9:  ldloc.s    V_9
    IL_00eb:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_00f0:  add
    IL_00f1:  ldc.i4.0
    IL_00f2:  blt        IL_024f

    IL_00f7:  ldloc.s    V_7
    IL_00f9:  ldloc.s    V_9
    IL_00fb:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0100:  add
    IL_0101:  ldc.i4.s   126
    IL_0103:  bge        IL_024f

    IL_0108:  ldloc.2
    IL_0109:  ldloc.s    V_9
    IL_010b:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0110:  add
    IL_0111:  ldc.i4.0
    IL_0112:  blt        IL_024f

    IL_0117:  ldloc.2
    IL_0118:  ldloc.s    V_9
    IL_011a:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_011f:  add
    IL_0120:  ldc.i4.s   16
    IL_0122:  bge        IL_024f

    IL_0127:  ldarg.1
    IL_0128:  ldloc.1
    IL_0129:  ldloc.s    V_9
    IL_012b:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0130:  add
    IL_0131:  ldloc.s    V_7
    IL_0133:  ldloc.s    V_9
    IL_0135:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_013a:  add
    IL_013b:  ldloc.2
    IL_013c:  ldloc.s    V_9
    IL_013e:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0143:  add
    IL_0144:  callvirt   instance int32 Game.TerrainChunk::GetCellValueFast(int32,
                                                                            int32,
                                                                            int32)
    IL_0149:  ldloc.s    V_8
    IL_014b:  call       int32 Game.CellFace::OppositeFace(int32)
    IL_0150:  call       bool Game.SubsystemBottomSuckerBlockBehavior::IsSupport(int32,
                                                                                 int32)
    IL_0155:  brfalse    IL_024f

    IL_015a:  ldc.i4.0
    IL_015b:  stloc.s    V_10
    IL_015d:  ldc.r4     0.60000002
    IL_0162:  stloc.s    V_11
    IL_0164:  ldc.r4     0.40000001
    IL_0169:  stloc.s    V_12
    IL_016b:  ldloc.s    V_5
    IL_016d:  ldc.i4.8
    IL_016e:  bge.s      IL_017e

    IL_0170:  ldc.r4     0.89999998
    IL_0175:  stloc.s    V_11
    IL_0177:  ldc.r4     0.1
    IL_017c:  stloc.s    V_12
    IL_017e:  ldloc.s    V_6
    IL_0180:  ldc.i4.6
    IL_0181:  ble.s      IL_018d

    IL_0183:  ldloc.s    V_11
    IL_0185:  ldc.r4     0.25
    IL_018a:  mul
    IL_018b:  stloc.s    V_11
    IL_018d:  ldloc.s    V_6
    IL_018f:  ldc.i4.s   12
    IL_0191:  ble.s      IL_019d

    IL_0193:  ldloc.s    V_12
    IL_0195:  ldc.r4     0.5
    IL_019a:  mul
    IL_019b:  stloc.s    V_12
    IL_019d:  ldloc.s    V_6
    IL_019f:  ldc.i4.4
    IL_01a0:  bge.s      IL_01ac

    IL_01a2:  ldloc.s    V_12
    IL_01a4:  ldc.r4     0.5
    IL_01a9:  mul
    IL_01aa:  stloc.s    V_12
    IL_01ac:  ldloc.s    V_7
    IL_01ae:  ldc.i4.s   45
    IL_01b0:  bge.s      IL_01c6

    IL_01b2:  ldloc.s    V_11
    IL_01b4:  ldc.r4     0.1
    IL_01b9:  mul
    IL_01ba:  stloc.s    V_11
    IL_01bc:  ldloc.s    V_12
    IL_01be:  ldc.r4     0.1
    IL_01c3:  mul
    IL_01c4:  stloc.s    V_12
    IL_01c6:  ldloc.0
    IL_01c7:  ldc.r4     0.0
    IL_01cc:  ldc.r4     1.
    IL_01d1:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_01d6:  stloc.s    V_13
    IL_01d8:  ldloc.s    V_13
    IL_01da:  ldloc.s    V_11
    IL_01dc:  sub
    IL_01dd:  stloc.s    V_13
    IL_01df:  ldloc.s    V_10
    IL_01e1:  brtrue.s   IL_01f3

    IL_01e3:  ldloc.s    V_13
    IL_01e5:  ldc.r4     0.0
    IL_01ea:  bge.un.s   IL_01f3

    IL_01ec:  ldc.i4     0xe2
    IL_01f1:  stloc.s    V_10
    IL_01f3:  ldloc.s    V_13
    IL_01f5:  ldloc.s    V_12
    IL_01f7:  sub
    IL_01f8:  stloc.s    V_13
    IL_01fa:  ldloc.s    V_10
    IL_01fc:  brtrue.s   IL_020e

    IL_01fe:  ldloc.s    V_13
    IL_0200:  ldc.r4     0.0
    IL_0205:  bge.un.s   IL_020e

    IL_0207:  ldc.i4     0xe5
    IL_020c:  stloc.s    V_10
    IL_020e:  ldloc.s    V_10
    IL_0210:  brfalse.s  IL_024f

    IL_0212:  ldloc.0
    IL_0213:  ldc.i4.0
    IL_0214:  ldc.i4.3
    IL_0215:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_021a:  stloc.s    V_14
    IL_021c:  ldc.i4.0
    IL_021d:  ldloc.s    V_14
    IL_021f:  call       int32 Game.BottomSuckerBlock::SetSubvariant(int32,
                                                                     int32)
    IL_0224:  ldloc.s    V_8
    IL_0226:  call       int32 Game.CellFace::OppositeFace(int32)
    IL_022b:  call       int32 Game.BottomSuckerBlock::SetFace(int32,
                                                               int32)
    IL_0230:  stloc.s    V_15
    IL_0232:  ldloc.s    V_10
    IL_0234:  ldc.i4.0
    IL_0235:  ldloc.s    V_15
    IL_0237:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_023c:  stloc.s    V_16
    IL_023e:  ldarg.1
    IL_023f:  ldloc.1
    IL_0240:  ldloc.s    V_7
    IL_0242:  ldloc.2
    IL_0243:  ldloc.s    V_16
    IL_0245:  callvirt   instance void Game.TerrainChunk::SetCellValueFast(int32,
                                                                           int32,
                                                                           int32,
                                                                           int32)
    IL_024a:  br.s       IL_024f

    IL_024c:  ldc.i4.0
    IL_024d:  stloc.s    V_6
    IL_024f:  ldloc.s    V_7
    IL_0251:  ldc.i4.1
    IL_0252:  sub
    IL_0253:  stloc.s    V_7
    IL_0255:  ldloc.s    V_7
    IL_0257:  ldc.i4.0
    IL_0258:  bge        IL_0099

    IL_025d:  ldloc.2
    IL_025e:  ldc.i4.1
    IL_025f:  add
    IL_0260:  stloc.2
    IL_0261:  ldloc.2
    IL_0262:  ldc.i4.s   16
    IL_0264:  blt        IL_0041

    IL_0269:  ldloc.1
    IL_026a:  ldc.i4.1
    IL_026b:  add
    IL_026c:  stloc.1
    IL_026d:  ldloc.1
    IL_026e:  ldc.i4.s   16
    IL_0270:  blt        IL_003a

    IL_0275:  ret
  } // end of method TerrainContentsGenerator::GenerateBottomSuckers

  .method private hidebysig instance void 
          GenerateCacti(class Game.TerrainChunk chunk) cil managed
  {
    // 代码大小       375 (0x177)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1,
             class Game.Random V_2,
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

    IL_0009:  ldarg.1
    IL_000a:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Coords
    IL_000f:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0014:  stloc.0
    IL_0015:  ldarg.1
    IL_0016:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Coords
    IL_001b:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0020:  stloc.1
    IL_0021:  ldarg.0
    IL_0022:  ldfld      int32 Game.TerrainContentsGenerator::m_seed
    IL_0027:  ldloc.0
    IL_0028:  add
    IL_0029:  ldc.i4     0x7c7
    IL_002e:  ldloc.1
    IL_002f:  mul
    IL_0030:  add
    IL_0031:  newobj     instance void Game.Random::.ctor(int32)
    IL_0036:  stloc.2
    IL_0037:  ldloc.2
    IL_0038:  ldc.r4     0.5
    IL_003d:  callvirt   instance bool Game.Random::Bool(float32)
    IL_0042:  brfalse    IL_0176

    IL_0047:  ldloc.2
    IL_0048:  ldc.i4.0
    IL_0049:  ldc.i4.1
    IL_004a:  ldc.i4.1
    IL_004b:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_0050:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0055:  stloc.3
    IL_0056:  ldc.i4.0
    IL_0057:  stloc.s    V_4
    IL_0059:  br         IL_016e

    IL_005e:  ldloc.2
    IL_005f:  ldc.i4.3
    IL_0060:  ldc.i4.s   12
    IL_0062:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0067:  stloc.s    V_5
    IL_0069:  ldloc.2
    IL_006a:  ldc.i4.3
    IL_006b:  ldc.i4.s   12
    IL_006d:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0072:  stloc.s    V_6
    IL_0074:  ldarg.1
    IL_0075:  ldloc.s    V_5
    IL_0077:  ldloc.s    V_6
    IL_0079:  callvirt   instance int32 Game.TerrainChunk::GetHumidityFast(int32,
                                                                           int32)
    IL_007e:  ldarg.1
    IL_007f:  ldloc.s    V_5
    IL_0081:  ldloc.s    V_6
    IL_0083:  callvirt   instance int32 Game.TerrainChunk::GetTemperatureFast(int32,
                                                                              int32)
    IL_0088:  stloc.s    V_7
    IL_008a:  ldc.i4.6
    IL_008b:  bge        IL_0168

    IL_0090:  ldloc.s    V_7
    IL_0092:  ldc.i4.8
    IL_0093:  ble        IL_0168

    IL_0098:  ldc.i4.0
    IL_0099:  stloc.s    V_8
    IL_009b:  br         IL_0160

    IL_00a0:  ldloc.s    V_5
    IL_00a2:  ldloc.2
    IL_00a3:  ldc.i4.s   -2
    IL_00a5:  ldc.i4.2
    IL_00a6:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_00ab:  add
    IL_00ac:  stloc.s    V_9
    IL_00ae:  ldloc.s    V_6
    IL_00b0:  ldloc.2
    IL_00b1:  ldc.i4.s   -2
    IL_00b3:  ldc.i4.2
    IL_00b4:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_00b9:  add
    IL_00ba:  stloc.s    V_10
    IL_00bc:  ldc.i4.s   123
    IL_00be:  stloc.s    V_11
    IL_00c0:  br         IL_0152

    IL_00c5:  ldarg.1
    IL_00c6:  ldloc.s    V_9
    IL_00c8:  ldloc.s    V_11
    IL_00ca:  ldloc.s    V_10
    IL_00cc:  callvirt   instance int32 Game.TerrainChunk::GetCellValueFast(int32,
                                                                            int32,
                                                                            int32)
    IL_00d1:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_00d6:  stloc.s    V_12
    IL_00d8:  ldloc.s    V_12
    IL_00da:  ldc.i4.7
    IL_00db:  bne.un.s   IL_0148

    IL_00dd:  ldloc.s    V_11
    IL_00df:  ldc.i4.1
    IL_00e0:  add
    IL_00e1:  stloc.s    V_13
    IL_00e3:  br.s       IL_013e

    IL_00e5:  ldarg.1
    IL_00e6:  ldloc.s    V_9
    IL_00e8:  ldc.i4.1
    IL_00e9:  add
    IL_00ea:  ldloc.s    V_13
    IL_00ec:  ldloc.s    V_10
    IL_00ee:  callvirt   instance int32 Game.TerrainChunk::GetCellContentsFast(int32,
                                                                               int32,
                                                                               int32)
    IL_00f3:  brtrue.s   IL_015a

    IL_00f5:  ldarg.1
    IL_00f6:  ldloc.s    V_9
    IL_00f8:  ldc.i4.1
    IL_00f9:  sub
    IL_00fa:  ldloc.s    V_13
    IL_00fc:  ldloc.s    V_10
    IL_00fe:  callvirt   instance int32 Game.TerrainChunk::GetCellContentsFast(int32,
                                                                               int32,
                                                                               int32)
    IL_0103:  brtrue.s   IL_015a

    IL_0105:  ldarg.1
    IL_0106:  ldloc.s    V_9
    IL_0108:  ldloc.s    V_13
    IL_010a:  ldloc.s    V_10
    IL_010c:  ldc.i4.1
    IL_010d:  add
    IL_010e:  callvirt   instance int32 Game.TerrainChunk::GetCellContentsFast(int32,
                                                                               int32,
                                                                               int32)
    IL_0113:  brtrue.s   IL_015a

    IL_0115:  ldarg.1
    IL_0116:  ldloc.s    V_9
    IL_0118:  ldloc.s    V_13
    IL_011a:  ldloc.s    V_10
    IL_011c:  ldc.i4.1
    IL_011d:  sub
    IL_011e:  callvirt   instance int32 Game.TerrainChunk::GetCellContentsFast(int32,
                                                                               int32,
                                                                               int32)
    IL_0123:  brtrue.s   IL_015a

    IL_0125:  ldarg.1
    IL_0126:  ldloc.s    V_9
    IL_0128:  ldloc.s    V_13
    IL_012a:  ldloc.s    V_10
    IL_012c:  ldc.i4.s   127
    IL_012e:  call       int32 Game.Terrain::MakeBlockValue(int32)
    IL_0133:  callvirt   instance void Game.TerrainChunk::SetCellValueFast(int32,
                                                                           int32,
                                                                           int32,
                                                                           int32)
    IL_0138:  ldloc.s    V_13
    IL_013a:  ldc.i4.1
    IL_013b:  add
    IL_013c:  stloc.s    V_13
    IL_013e:  ldloc.s    V_13
    IL_0140:  ldloc.s    V_11
    IL_0142:  ldc.i4.3
    IL_0143:  add
    IL_0144:  ble.s      IL_00e5

    IL_0146:  br.s       IL_015a

    IL_0148:  ldloc.s    V_12
    IL_014a:  brtrue.s   IL_015a

    IL_014c:  ldloc.s    V_11
    IL_014e:  ldc.i4.1
    IL_014f:  sub
    IL_0150:  stloc.s    V_11
    IL_0152:  ldloc.s    V_11
    IL_0154:  ldc.i4.0
    IL_0155:  bge        IL_00c5

    IL_015a:  ldloc.s    V_8
    IL_015c:  ldc.i4.1
    IL_015d:  add
    IL_015e:  stloc.s    V_8
    IL_0160:  ldloc.s    V_8
    IL_0162:  ldc.i4.8
    IL_0163:  blt        IL_00a0

    IL_0168:  ldloc.s    V_4
    IL_016a:  ldc.i4.1
    IL_016b:  add
    IL_016c:  stloc.s    V_4
    IL_016e:  ldloc.s    V_4
    IL_0170:  ldloc.3
    IL_0171:  blt        IL_005e

    IL_0176:  ret
  } // end of method TerrainContentsGenerator::GenerateCacti

  .method private hidebysig instance void 
          GeneratePumpkins(class Game.TerrainChunk chunk) cil managed
  {
    // 代码大小       312 (0x138)
    .maxstack  6
    .locals init (int32 V_0,
             int32 V_1,
             class Game.Random V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7,
             int32 V_8,
             int32 V_9,
             int32 V_10,
             int32 V_11,
             int32 V_12)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.TerrainContentsGenerator::TGExtras
    IL_0006:  brtrue.s   IL_0009

    IL_0008:  ret

    IL_0009:  ldarg.1
    IL_000a:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Coords
    IL_000f:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0014:  stloc.0
    IL_0015:  ldarg.1
    IL_0016:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Coords
    IL_001b:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0020:  stloc.1
    IL_0021:  ldarg.0
    IL_0022:  ldfld      int32 Game.TerrainContentsGenerator::m_seed
    IL_0027:  ldloc.0
    IL_0028:  add
    IL_0029:  ldc.i4     0x5d7
    IL_002e:  ldloc.1
    IL_002f:  mul
    IL_0030:  add
    IL_0031:  newobj     instance void Game.Random::.ctor(int32)
    IL_0036:  stloc.2
    IL_0037:  ldloc.2
    IL_0038:  ldc.r4     0.2
    IL_003d:  callvirt   instance bool Game.Random::Bool(float32)
    IL_0042:  brfalse    IL_0137

    IL_0047:  ldloc.2
    IL_0048:  ldc.i4.0
    IL_0049:  ldc.i4.1
    IL_004a:  ldc.i4.1
    IL_004b:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_0050:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0055:  stloc.3
    IL_0056:  ldc.i4.0
    IL_0057:  stloc.s    V_4
    IL_0059:  br         IL_012f

    IL_005e:  ldloc.2
    IL_005f:  ldc.i4.1
    IL_0060:  ldc.i4.s   14
    IL_0062:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0067:  stloc.s    V_5
    IL_0069:  ldloc.2
    IL_006a:  ldc.i4.1
    IL_006b:  ldc.i4.s   14
    IL_006d:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0072:  stloc.s    V_6
    IL_0074:  ldarg.1
    IL_0075:  ldloc.s    V_5
    IL_0077:  ldloc.s    V_6
    IL_0079:  callvirt   instance int32 Game.TerrainChunk::GetHumidityFast(int32,
                                                                           int32)
    IL_007e:  ldarg.1
    IL_007f:  ldloc.s    V_5
    IL_0081:  ldloc.s    V_6
    IL_0083:  callvirt   instance int32 Game.TerrainChunk::GetTemperatureFast(int32,
                                                                              int32)
    IL_0088:  stloc.s    V_7
    IL_008a:  ldc.i4.s   10
    IL_008c:  blt        IL_0129

    IL_0091:  ldloc.s    V_7
    IL_0093:  ldc.i4.6
    IL_0094:  ble        IL_0129

    IL_0099:  ldc.i4.0
    IL_009a:  stloc.s    V_8
    IL_009c:  br         IL_0121

    IL_00a1:  ldloc.s    V_5
    IL_00a3:  ldloc.2
    IL_00a4:  ldc.i4.m1
    IL_00a5:  ldc.i4.1
    IL_00a6:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_00ab:  add
    IL_00ac:  stloc.s    V_9
    IL_00ae:  ldloc.s    V_6
    IL_00b0:  ldloc.2
    IL_00b1:  ldc.i4.m1
    IL_00b2:  ldc.i4.1
    IL_00b3:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_00b8:  add
    IL_00b9:  stloc.s    V_10
    IL_00bb:  ldc.i4.s   126
    IL_00bd:  stloc.s    V_11
    IL_00bf:  br.s       IL_0116

    IL_00c1:  ldarg.1
    IL_00c2:  ldloc.s    V_9
    IL_00c4:  ldloc.s    V_11
    IL_00c6:  ldloc.s    V_10
    IL_00c8:  callvirt   instance int32 Game.TerrainChunk::GetCellValueFast(int32,
                                                                            int32,
                                                                            int32)
    IL_00cd:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_00d2:  stloc.s    V_12
    IL_00d4:  ldloc.s    V_12
    IL_00d6:  ldc.i4.8
    IL_00d7:  bne.un.s   IL_010c

    IL_00d9:  ldarg.1
    IL_00da:  ldloc.s    V_9
    IL_00dc:  ldloc.s    V_11
    IL_00de:  ldc.i4.1
    IL_00df:  add
    IL_00e0:  ldloc.s    V_10
    IL_00e2:  ldloc.2
    IL_00e3:  ldc.r4     0.25
    IL_00e8:  callvirt   instance bool Game.Random::Bool(float32)
    IL_00ed:  brtrue.s   IL_00fb

    IL_00ef:  ldc.i4     0x83
    IL_00f4:  call       int32 Game.Terrain::MakeBlockValue(int32)
    IL_00f9:  br.s       IL_0105

    IL_00fb:  ldc.i4     0xf4
    IL_0100:  call       int32 Game.Terrain::MakeBlockValue(int32)
    IL_0105:  callvirt   instance void Game.TerrainChunk::SetCellValueFast(int32,
                                                                           int32,
                                                                           int32,
                                                                           int32)
    IL_010a:  br.s       IL_011b

    IL_010c:  ldloc.s    V_12
    IL_010e:  brtrue.s   IL_011b

    IL_0110:  ldloc.s    V_11
    IL_0112:  ldc.i4.1
    IL_0113:  sub
    IL_0114:  stloc.s    V_11
    IL_0116:  ldloc.s    V_11
    IL_0118:  ldc.i4.0
    IL_0119:  bge.s      IL_00c1

    IL_011b:  ldloc.s    V_8
    IL_011d:  ldc.i4.1
    IL_011e:  add
    IL_011f:  stloc.s    V_8
    IL_0121:  ldloc.s    V_8
    IL_0123:  ldc.i4.5
    IL_0124:  blt        IL_00a1

    IL_0129:  ldloc.s    V_4
    IL_012b:  ldc.i4.1
    IL_012c:  add
    IL_012d:  stloc.s    V_4
    IL_012f:  ldloc.s    V_4
    IL_0131:  ldloc.3
    IL_0132:  blt        IL_005e

    IL_0137:  ret
  } // end of method TerrainContentsGenerator::GeneratePumpkins

  .method private hidebysig instance void 
          GenerateKelp(class Game.TerrainChunk chunk) cil managed
  {
    // 代码大小       566 (0x236)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1,
             class Game.Random V_2,
             float32 V_3,
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
             bool V_15,
             int32 V_16,
             int32 V_17,
             int32 V_18,
             int32 V_19,
             int32 V_20,
             int32 V_21,
             class Game.Block V_22,
             int32 V_23,
             int32 V_24)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.TerrainContentsGenerator::TGExtras
    IL_0006:  brtrue.s   IL_0009

    IL_0008:  ret

    IL_0009:  ldarg.1
    IL_000a:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Coords
    IL_000f:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0014:  stloc.0
    IL_0015:  ldarg.1
    IL_0016:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Coords
    IL_001b:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0020:  stloc.1
    IL_0021:  ldc.i4.0
    IL_0022:  newobj     instance void Game.Random::.ctor(int32)
    IL_0027:  stloc.2
    IL_0028:  ldc.r4     0.0
    IL_002d:  stloc.3
    IL_002e:  ldc.i4.0
    IL_002f:  stloc.s    V_5
    IL_0031:  br.s       IL_008f

    IL_0033:  ldloc.s    V_5
    IL_0035:  ldc.i4.3
    IL_0036:  rem
    IL_0037:  ldc.i4.1
    IL_0038:  sub
    IL_0039:  stloc.s    V_6
    IL_003b:  ldloc.s    V_5
    IL_003d:  ldc.i4.3
    IL_003e:  div
    IL_003f:  ldc.i4.1
    IL_0040:  sub
    IL_0041:  stloc.s    V_7
    IL_0043:  ldloc.2
    IL_0044:  ldarg.0
    IL_0045:  ldfld      int32 Game.TerrainContentsGenerator::m_seed
    IL_004a:  ldloc.0
    IL_004b:  ldloc.s    V_6
    IL_004d:  add
    IL_004e:  add
    IL_004f:  ldc.i4     0x352
    IL_0054:  ldloc.1
    IL_0055:  ldloc.s    V_7
    IL_0057:  add
    IL_0058:  mul
    IL_0059:  add
    IL_005a:  callvirt   instance void Game.Random::Reset(int32)
    IL_005f:  ldloc.2
    IL_0060:  ldc.r4     0.2
    IL_0065:  callvirt   instance bool Game.Random::Bool(float32)
    IL_006a:  brfalse.s  IL_0089

    IL_006c:  ldloc.3
    IL_006d:  ldc.r4     2.5e-002
    IL_0072:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_0077:  stloc.3
    IL_0078:  ldloc.s    V_5
    IL_007a:  ldc.i4.4
    IL_007b:  bne.un.s   IL_0089

    IL_007d:  ldloc.3
    IL_007e:  ldc.r4     0.1
    IL_0083:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_0088:  stloc.3
    IL_0089:  ldloc.s    V_5
    IL_008b:  ldc.i4.1
    IL_008c:  add
    IL_008d:  stloc.s    V_5
    IL_008f:  ldloc.s    V_5
    IL_0091:  ldc.i4.s   9
    IL_0093:  blt.s      IL_0033

    IL_0095:  ldloc.3
    IL_0096:  ldc.r4     0.0
    IL_009b:  bne.un.s   IL_009e

    IL_009d:  ret

    IL_009e:  ldloc.2
    IL_009f:  ldarg.0
    IL_00a0:  ldfld      int32 Game.TerrainContentsGenerator::m_seed
    IL_00a5:  ldloc.0
    IL_00a6:  add
    IL_00a7:  ldc.i4     0x352
    IL_00ac:  ldloc.1
    IL_00ad:  mul
    IL_00ae:  add
    IL_00af:  callvirt   instance void Game.Random::Reset(int32)
    IL_00b4:  ldloc.2
    IL_00b5:  ldc.i4.0
    IL_00b6:  ldc.r4     256.
    IL_00bb:  ldloc.3
    IL_00bc:  mul
    IL_00bd:  conv.i4
    IL_00be:  ldc.i4.1
    IL_00bf:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_00c4:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_00c9:  stloc.s    V_4
    IL_00cb:  ldc.i4.0
    IL_00cc:  stloc.s    V_8
    IL_00ce:  br         IL_022c

    IL_00d3:  ldloc.2
    IL_00d4:  ldc.i4.2
    IL_00d5:  ldc.i4.s   13
    IL_00d7:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_00dc:  stloc.s    V_9
    IL_00de:  ldloc.2
    IL_00df:  ldc.i4.2
    IL_00e0:  ldc.i4.s   13
    IL_00e2:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_00e7:  stloc.s    V_10
    IL_00e9:  ldloc.s    V_9
    IL_00eb:  ldarg.1
    IL_00ec:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_00f1:  ldfld      int32 [Engine]Engine.Point2::X
    IL_00f6:  add
    IL_00f7:  stloc.s    V_11
    IL_00f9:  ldloc.s    V_10
    IL_00fb:  ldarg.1
    IL_00fc:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_0101:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0106:  add
    IL_0107:  stloc.s    V_12
    IL_0109:  ldloc.2
    IL_010a:  ldc.i4.s   10
    IL_010c:  ldc.i4.s   26
    IL_010e:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0113:  stloc.s    V_13
    IL_0115:  ldc.i4.6
    IL_0116:  stloc.s    V_14
    IL_0118:  ldc.i4.1
    IL_0119:  stloc.s    V_15
    IL_011b:  ldarg.0
    IL_011c:  ldloc.s    V_11
    IL_011e:  conv.r4
    IL_011f:  ldloc.s    V_12
    IL_0121:  conv.r4
    IL_0122:  call       instance float32 Game.TerrainContentsGenerator::CalculateOceanShoreDistance(float32,
                                                                                                     float32)
    IL_0127:  ldc.r4     5.
    IL_012c:  ble.un.s   IL_0134

    IL_012e:  ldc.i4.4
    IL_012f:  stloc.s    V_14
    IL_0131:  ldc.i4.0
    IL_0132:  stloc.s    V_15
    IL_0134:  ldloc.s    V_13
    IL_0136:  ldc.i4.0
    IL_0137:  ble        IL_0226

    IL_013c:  ldc.i4.0
    IL_013d:  stloc.s    V_16
    IL_013f:  br         IL_021d

    IL_0144:  ldloc.s    V_9
    IL_0146:  ldloc.2
    IL_0147:  ldc.i4.s   -2
    IL_0149:  ldc.i4.2
    IL_014a:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_014f:  add
    IL_0150:  stloc.s    V_17
    IL_0152:  ldloc.s    V_10
    IL_0154:  ldloc.2
    IL_0155:  ldc.i4.s   -2
    IL_0157:  ldc.i4.2
    IL_0158:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_015d:  add
    IL_015e:  stloc.s    V_18
    IL_0160:  ldc.i4.0
    IL_0161:  stloc.s    V_19
    IL_0163:  ldc.i4.s   126
    IL_0165:  stloc.s    V_20
    IL_0167:  br         IL_020f

    IL_016c:  ldarg.1
    IL_016d:  ldloc.s    V_17
    IL_016f:  ldloc.s    V_20
    IL_0171:  ldloc.s    V_18
    IL_0173:  callvirt   instance int32 Game.TerrainChunk::GetCellValueFast(int32,
                                                                            int32,
                                                                            int32)
    IL_0178:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_017d:  stloc.s    V_21
    IL_017f:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0184:  ldloc.s    V_21
    IL_0186:  ldelem.ref
    IL_0187:  stloc.s    V_22
    IL_0189:  ldloc.s    V_21
    IL_018b:  brfalse.s  IL_0209

    IL_018d:  ldloc.s    V_22
    IL_018f:  isinst     Game.WaterBlock
    IL_0194:  brfalse.s  IL_01a4

    IL_0196:  ldloc.s    V_19
    IL_0198:  ldc.i4.1
    IL_0199:  add
    IL_019a:  stloc.s    V_19
    IL_019c:  ldloc.s    V_19
    IL_019e:  ldloc.s    V_14
    IL_01a0:  ble.s      IL_0209

    IL_01a2:  br.s       IL_0217

    IL_01a4:  ldloc.s    V_21
    IL_01a6:  ldc.i4.2
    IL_01a7:  beq.s      IL_01b4

    IL_01a9:  ldloc.s    V_21
    IL_01ab:  ldc.i4.7
    IL_01ac:  beq.s      IL_01b4

    IL_01ae:  ldloc.s    V_21
    IL_01b0:  ldc.i4.s   72
    IL_01b2:  bne.un.s   IL_0217

    IL_01b4:  ldloc.s    V_19
    IL_01b6:  ldc.i4.2
    IL_01b7:  blt.s      IL_0217

    IL_01b9:  ldloc.s    V_15
    IL_01bb:  brtrue.s   IL_01cb

    IL_01bd:  ldloc.2
    IL_01be:  ldloc.s    V_19
    IL_01c0:  ldc.i4.1
    IL_01c1:  sub
    IL_01c2:  ldloc.s    V_19
    IL_01c4:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_01c9:  br.s       IL_01d9

    IL_01cb:  ldloc.2
    IL_01cc:  ldloc.s    V_19
    IL_01ce:  ldc.i4.2
    IL_01cf:  sub
    IL_01d0:  ldloc.s    V_19
    IL_01d2:  ldc.i4.1
    IL_01d3:  sub
    IL_01d4:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_01d9:  stloc.s    V_23
    IL_01db:  ldc.i4.0
    IL_01dc:  stloc.s    V_24
    IL_01de:  br.s       IL_0201

    IL_01e0:  ldarg.1
    IL_01e1:  ldloc.s    V_17
    IL_01e3:  ldloc.s    V_20
    IL_01e5:  ldc.i4.1
    IL_01e6:  add
    IL_01e7:  ldloc.s    V_24
    IL_01e9:  add
    IL_01ea:  ldloc.s    V_18
    IL_01ec:  ldc.i4     0xe8
    IL_01f1:  call       int32 Game.Terrain::MakeBlockValue(int32)
    IL_01f6:  callvirt   instance void Game.TerrainChunk::SetCellValueFast(int32,
                                                                           int32,
                                                                           int32,
                                                                           int32)
    IL_01fb:  ldloc.s    V_24
    IL_01fd:  ldc.i4.1
    IL_01fe:  add
    IL_01ff:  stloc.s    V_24
    IL_0201:  ldloc.s    V_24
    IL_0203:  ldloc.s    V_23
    IL_0205:  blt.s      IL_01e0

    IL_0207:  br.s       IL_0217

    IL_0209:  ldloc.s    V_20
    IL_020b:  ldc.i4.1
    IL_020c:  sub
    IL_020d:  stloc.s    V_20
    IL_020f:  ldloc.s    V_20
    IL_0211:  ldc.i4.0
    IL_0212:  bge        IL_016c

    IL_0217:  ldloc.s    V_16
    IL_0219:  ldc.i4.1
    IL_021a:  add
    IL_021b:  stloc.s    V_16
    IL_021d:  ldloc.s    V_16
    IL_021f:  ldloc.s    V_13
    IL_0221:  blt        IL_0144

    IL_0226:  ldloc.s    V_8
    IL_0228:  ldc.i4.1
    IL_0229:  add
    IL_022a:  stloc.s    V_8
    IL_022c:  ldloc.s    V_8
    IL_022e:  ldloc.s    V_4
    IL_0230:  blt        IL_00d3

    IL_0235:  ret
  } // end of method TerrainContentsGenerator::GenerateKelp

  .method private hidebysig instance void 
          GenerateSeagrass(class Game.TerrainChunk chunk) cil managed
  {
    // 代码大小       405 (0x195)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1,
             class Game.Random V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7,
             bool V_8,
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

    IL_0009:  ldarg.1
    IL_000a:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Coords
    IL_000f:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0014:  stloc.0
    IL_0015:  ldarg.1
    IL_0016:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Coords
    IL_001b:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0020:  stloc.1
    IL_0021:  ldarg.0
    IL_0022:  ldfld      int32 Game.TerrainContentsGenerator::m_seed
    IL_0027:  ldloc.0
    IL_0028:  add
    IL_0029:  ldc.i4     0x17a
    IL_002e:  ldloc.1
    IL_002f:  mul
    IL_0030:  add
    IL_0031:  newobj     instance void Game.Random::.ctor(int32)
    IL_0036:  stloc.2
    IL_0037:  ldc.i4.0
    IL_0038:  stloc.3
    IL_0039:  br         IL_018d

    IL_003e:  ldloc.2
    IL_003f:  ldc.i4.1
    IL_0040:  ldc.i4.s   14
    IL_0042:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0047:  stloc.s    V_4
    IL_0049:  ldloc.2
    IL_004a:  ldc.i4.1
    IL_004b:  ldc.i4.s   14
    IL_004d:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0052:  stloc.s    V_5
    IL_0054:  ldarg.1
    IL_0055:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_005a:  ldfld      int32 [Engine]Engine.Point2::X
    IL_005f:  ldloc.s    V_4
    IL_0061:  add
    IL_0062:  stloc.s    V_6
    IL_0064:  ldarg.1
    IL_0065:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_006a:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_006f:  ldloc.s    V_5
    IL_0071:  add
    IL_0072:  stloc.s    V_7
    IL_0074:  ldarg.0
    IL_0075:  ldloc.s    V_6
    IL_0077:  conv.r4
    IL_0078:  ldloc.s    V_7
    IL_007a:  conv.r4
    IL_007b:  call       instance float32 Game.TerrainContentsGenerator::CalculateOceanShoreDistance(float32,
                                                                                                     float32)
    IL_0080:  ldc.r4     10.
    IL_0085:  clt
    IL_0087:  stloc.s    V_8
    IL_0089:  ldloc.2
    IL_008a:  ldc.i4.1
    IL_008b:  ldc.i4.3
    IL_008c:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0091:  stloc.s    V_9
    IL_0093:  ldc.i4.0
    IL_0094:  stloc.s    V_10
    IL_0096:  br         IL_0180

    IL_009b:  ldloc.s    V_4
    IL_009d:  ldloc.2
    IL_009e:  ldc.i4.m1
    IL_009f:  ldc.i4.1
    IL_00a0:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_00a5:  add
    IL_00a6:  stloc.s    V_11
    IL_00a8:  ldloc.s    V_5
    IL_00aa:  ldloc.2
    IL_00ab:  ldc.i4.m1
    IL_00ac:  ldc.i4.1
    IL_00ad:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_00b2:  add
    IL_00b3:  stloc.s    V_12
    IL_00b5:  ldc.i4.0
    IL_00b6:  stloc.s    V_13
    IL_00b8:  ldc.i4.s   126
    IL_00ba:  stloc.s    V_14
    IL_00bc:  br         IL_0172

    IL_00c1:  ldarg.1
    IL_00c2:  ldloc.s    V_11
    IL_00c4:  ldloc.s    V_14
    IL_00c6:  ldloc.s    V_12
    IL_00c8:  callvirt   instance int32 Game.TerrainChunk::GetCellValueFast(int32,
                                                                            int32,
                                                                            int32)
    IL_00cd:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_00d2:  stloc.s    V_15
    IL_00d4:  ldloc.s    V_15
    IL_00d6:  brfalse    IL_016c

    IL_00db:  ldloc.s    V_15
    IL_00dd:  ldc.i4.s   18
    IL_00df:  bne.un.s   IL_00f2

    IL_00e1:  ldloc.s    V_13
    IL_00e3:  ldc.i4.1
    IL_00e4:  add
    IL_00e5:  stloc.s    V_13
    IL_00e7:  ldloc.s    V_13
    IL_00e9:  ldc.i4.s   16
    IL_00eb:  ble.s      IL_016c

    IL_00ed:  br         IL_017a

    IL_00f2:  ldloc.s    V_13
    IL_00f4:  ldc.i4.1
    IL_00f5:  ble        IL_017a

    IL_00fa:  ldloc.s    V_15
    IL_00fc:  ldc.i4.2
    IL_00fd:  beq.s      IL_010f

    IL_00ff:  ldloc.s    V_15
    IL_0101:  ldc.i4.7
    IL_0102:  beq.s      IL_010f

    IL_0104:  ldloc.s    V_15
    IL_0106:  ldc.i4.s   72
    IL_0108:  beq.s      IL_010f

    IL_010a:  ldloc.s    V_15
    IL_010c:  ldc.i4.3
    IL_010d:  bne.un.s   IL_017a

    IL_010f:  ldloc.2
    IL_0110:  ldc.r4     0.1
    IL_0115:  callvirt   instance bool Game.Random::Bool(float32)
    IL_011a:  brtrue.s   IL_011f

    IL_011c:  ldc.i4.1
    IL_011d:  br.s       IL_0120

    IL_011f:  ldc.i4.2
    IL_0120:  stloc.s    V_16
    IL_0122:  ldloc.s    V_8
    IL_0124:  brtrue.s   IL_0131

    IL_0126:  ldloc.s    V_16
    IL_0128:  ldloc.s    V_13
    IL_012a:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_012f:  br.s       IL_013c

    IL_0131:  ldloc.s    V_16
    IL_0133:  ldloc.s    V_13
    IL_0135:  ldc.i4.1
    IL_0136:  sub
    IL_0137:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_013c:  stloc.s    V_16
    IL_013e:  ldc.i4.0
    IL_013f:  stloc.s    V_17
    IL_0141:  br.s       IL_0164

    IL_0143:  ldarg.1
    IL_0144:  ldloc.s    V_11
    IL_0146:  ldloc.s    V_14
    IL_0148:  ldc.i4.1
    IL_0149:  add
    IL_014a:  ldloc.s    V_17
    IL_014c:  add
    IL_014d:  ldloc.s    V_12
    IL_014f:  ldc.i4     0xe9
    IL_0154:  call       int32 Game.Terrain::MakeBlockValue(int32)
    IL_0159:  callvirt   instance void Game.TerrainChunk::SetCellValueFast(int32,
                                                                           int32,
                                                                           int32,
                                                                           int32)
    IL_015e:  ldloc.s    V_17
    IL_0160:  ldc.i4.1
    IL_0161:  add
    IL_0162:  stloc.s    V_17
    IL_0164:  ldloc.s    V_17
    IL_0166:  ldloc.s    V_16
    IL_0168:  blt.s      IL_0143

    IL_016a:  br.s       IL_017a

    IL_016c:  ldloc.s    V_14
    IL_016e:  ldc.i4.1
    IL_016f:  sub
    IL_0170:  stloc.s    V_14
    IL_0172:  ldloc.s    V_14
    IL_0174:  ldc.i4.0
    IL_0175:  bge        IL_00c1

    IL_017a:  ldloc.s    V_10
    IL_017c:  ldc.i4.1
    IL_017d:  add
    IL_017e:  stloc.s    V_10
    IL_0180:  ldloc.s    V_10
    IL_0182:  ldloc.s    V_9
    IL_0184:  blt        IL_009b

    IL_0189:  ldloc.3
    IL_018a:  ldc.i4.1
    IL_018b:  add
    IL_018c:  stloc.3
    IL_018d:  ldloc.3
    IL_018e:  ldc.i4.6
    IL_018f:  blt        IL_003e

    IL_0194:  ret
  } // end of method TerrainContentsGenerator::GenerateSeagrass

  .method private hidebysig instance void 
          GenerateIvy(class Game.TerrainChunk chunk) cil managed
  {
    // 代码大小       624 (0x270)
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
             valuetype [Engine]Engine.Point3 V_15,
             int32 V_16,
             int32 V_17)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.TerrainContentsGenerator::TGExtras
    IL_0006:  brtrue.s   IL_0009

    IL_0008:  ret

    IL_0009:  ldarg.0
    IL_000a:  ldfld      int32 Game.TerrainContentsGenerator::m_seed
    IL_000f:  ldarg.1
    IL_0010:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Coords
    IL_0015:  ldfld      int32 [Engine]Engine.Point2::X
    IL_001a:  add
    IL_001b:  ldc.i4     0x88f
    IL_0020:  ldarg.1
    IL_0021:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Coords
    IL_0026:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_002b:  mul
    IL_002c:  add
    IL_002d:  newobj     instance void Game.Random::.ctor(int32)
    IL_0032:  stloc.0
    IL_0033:  ldloc.0
    IL_0034:  ldc.i4.0
    IL_0035:  ldc.i4.s   12
    IL_0037:  ldc.i4.1
    IL_0038:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_003d:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0042:  stloc.1
    IL_0043:  ldc.i4.0
    IL_0044:  stloc.2
    IL_0045:  br         IL_0268

    IL_004a:  ldloc.0
    IL_004b:  ldc.i4.4
    IL_004c:  ldc.i4.s   11
    IL_004e:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0053:  stloc.3
    IL_0054:  ldloc.0
    IL_0055:  ldc.i4.4
    IL_0056:  ldc.i4.s   11
    IL_0058:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_005d:  stloc.s    V_4
    IL_005f:  ldarg.1
    IL_0060:  ldloc.3
    IL_0061:  ldloc.s    V_4
    IL_0063:  callvirt   instance int32 Game.TerrainChunk::GetHumidityFast(int32,
                                                                           int32)
    IL_0068:  ldarg.1
    IL_0069:  ldloc.3
    IL_006a:  ldloc.s    V_4
    IL_006c:  callvirt   instance int32 Game.TerrainChunk::GetTemperatureFast(int32,
                                                                              int32)
    IL_0071:  stloc.s    V_5
    IL_0073:  ldc.i4.s   10
    IL_0075:  ble        IL_0264

    IL_007a:  ldloc.s    V_5
    IL_007c:  ldc.i4.s   10
    IL_007e:  ble        IL_0264

    IL_0083:  ldarg.1
    IL_0084:  ldloc.3
    IL_0085:  ldloc.s    V_4
    IL_0087:  callvirt   instance int32 Game.TerrainChunk::CalculateTopmostCellHeight(int32,
                                                                                      int32)
    IL_008c:  stloc.s    V_6
    IL_008e:  ldc.i4.0
    IL_008f:  stloc.s    V_7
    IL_0091:  br         IL_025b

    IL_0096:  ldloc.3
    IL_0097:  ldloc.0
    IL_0098:  ldc.i4.s   -3
    IL_009a:  ldc.i4.3
    IL_009b:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_00a0:  add
    IL_00a1:  stloc.s    V_8
    IL_00a3:  ldloc.s    V_6
    IL_00a5:  ldloc.0
    IL_00a6:  ldc.i4.s   -10
    IL_00a8:  ldc.i4.1
    IL_00a9:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_00ae:  add
    IL_00af:  ldc.i4.1
    IL_00b0:  ldc.i4.s   127
    IL_00b2:  call       int32 [Engine]Engine.MathUtils::Clamp(int32,
                                                               int32,
                                                               int32)
    IL_00b7:  stloc.s    V_9
    IL_00b9:  ldloc.s    V_4
    IL_00bb:  ldloc.0
    IL_00bc:  ldc.i4.s   -3
    IL_00be:  ldc.i4.3
    IL_00bf:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_00c4:  add
    IL_00c5:  stloc.s    V_10
    IL_00c7:  ldarg.1
    IL_00c8:  ldloc.s    V_8
    IL_00ca:  ldloc.s    V_9
    IL_00cc:  ldloc.s    V_10
    IL_00ce:  callvirt   instance int32 Game.TerrainChunk::GetCellValueFast(int32,
                                                                            int32,
                                                                            int32)
    IL_00d3:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_00d8:  stloc.s    V_11
    IL_00da:  ldloc.s    V_11
    IL_00dc:  ldc.i4.3
    IL_00dd:  bgt.s      IL_00ee

    IL_00df:  ldloc.s    V_11
    IL_00e1:  ldc.i4.2
    IL_00e2:  beq.s      IL_011a

    IL_00e4:  ldloc.s    V_11
    IL_00e6:  ldc.i4.3
    IL_00e7:  beq.s      IL_011a

    IL_00e9:  br         IL_0255

    IL_00ee:  ldloc.s    V_11
    IL_00f0:  ldc.i4.8
    IL_00f1:  sub
    IL_00f2:  switch     ( 
                          IL_011a,
                          IL_011a,
                          IL_0255,
                          IL_0255,
                          IL_011a)
    IL_010b:  ldloc.s    V_11
    IL_010d:  ldc.i4.s   66
    IL_010f:  beq.s      IL_011a

    IL_0111:  ldloc.s    V_11
    IL_0113:  ldc.i4.s   67
    IL_0115:  bne.un     IL_0255

    IL_011a:  ldloc.0
    IL_011b:  ldc.i4.0
    IL_011c:  ldc.i4.3
    IL_011d:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0122:  stloc.s    V_12
    IL_0124:  ldc.i4.0
    IL_0125:  stloc.s    V_13
    IL_0127:  br         IL_024d

    IL_012c:  ldloc.s    V_13
    IL_012e:  ldloc.s    V_12
    IL_0130:  add
    IL_0131:  ldc.i4.4
    IL_0132:  rem
    IL_0133:  stloc.s    V_14
    IL_0135:  ldloc.s    V_14
    IL_0137:  call       valuetype [Engine]Engine.Point3 Game.CellFace::FaceToPoint3(int32)
    IL_013c:  stloc.s    V_15
    IL_013e:  ldarg.1
    IL_013f:  ldloc.s    V_8
    IL_0141:  ldloc.s    V_15
    IL_0143:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0148:  add
    IL_0149:  ldloc.s    V_9
    IL_014b:  ldloc.s    V_10
    IL_014d:  ldloc.s    V_15
    IL_014f:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0154:  add
    IL_0155:  callvirt   instance int32 Game.TerrainChunk::GetCellContentsFast(int32,
                                                                               int32,
                                                                               int32)
    IL_015a:  brtrue     IL_0247

    IL_015f:  ldloc.s    V_9
    IL_0161:  ldc.i4.1
    IL_0162:  sub
    IL_0163:  stloc.s    V_16
    IL_0165:  br.s       IL_0199

    IL_0167:  ldarg.1
    IL_0168:  ldloc.s    V_8
    IL_016a:  ldloc.s    V_15
    IL_016c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0171:  add
    IL_0172:  ldloc.s    V_16
    IL_0174:  ldloc.s    V_10
    IL_0176:  ldloc.s    V_15
    IL_0178:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_017d:  add
    IL_017e:  callvirt   instance int32 Game.TerrainChunk::GetCellContentsFast(int32,
                                                                               int32,
                                                                               int32)
    IL_0183:  brtrue.s   IL_019e

    IL_0185:  ldarg.1
    IL_0186:  ldloc.s    V_8
    IL_0188:  ldloc.s    V_16
    IL_018a:  ldloc.s    V_10
    IL_018c:  callvirt   instance int32 Game.TerrainChunk::GetCellContentsFast(int32,
                                                                               int32,
                                                                               int32)
    IL_0191:  brfalse.s  IL_019e

    IL_0193:  ldloc.s    V_16
    IL_0195:  ldc.i4.1
    IL_0196:  sub
    IL_0197:  stloc.s    V_16
    IL_0199:  ldloc.s    V_16
    IL_019b:  ldc.i4.1
    IL_019c:  bge.s      IL_0167

    IL_019e:  ldarg.1
    IL_019f:  ldloc.s    V_8
    IL_01a1:  ldloc.s    V_15
    IL_01a3:  ldfld      int32 [Engine]Engine.Point3::X
    IL_01a8:  add
    IL_01a9:  ldloc.s    V_16
    IL_01ab:  ldloc.s    V_10
    IL_01ad:  ldloc.s    V_15
    IL_01af:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_01b4:  add
    IL_01b5:  callvirt   instance int32 Game.TerrainChunk::GetCellContentsFast(int32,
                                                                               int32,
                                                                               int32)
    IL_01ba:  brtrue     IL_0255

    IL_01bf:  ldloc.s    V_16
    IL_01c1:  ldc.i4.1
    IL_01c2:  add
    IL_01c3:  stloc.s    V_16
    IL_01c5:  ldc.i4     0xc5
    IL_01ca:  ldc.i4.0
    IL_01cb:  ldc.i4.0
    IL_01cc:  ldloc.s    V_14
    IL_01ce:  call       int32 Game.CellFace::OppositeFace(int32)
    IL_01d3:  call       int32 Game.IvyBlock::SetFace(int32,
                                                      int32)
    IL_01d8:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_01dd:  stloc.s    V_17
    IL_01df:  br.s       IL_0240

    IL_01e1:  ldarg.1
    IL_01e2:  ldloc.s    V_8
    IL_01e4:  ldloc.s    V_15
    IL_01e6:  ldfld      int32 [Engine]Engine.Point3::X
    IL_01eb:  add
    IL_01ec:  ldloc.s    V_16
    IL_01ee:  ldloc.s    V_10
    IL_01f0:  ldloc.s    V_15
    IL_01f2:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_01f7:  add
    IL_01f8:  callvirt   instance int32 Game.TerrainChunk::GetCellContentsFast(int32,
                                                                               int32,
                                                                               int32)
    IL_01fd:  brtrue.s   IL_0255

    IL_01ff:  ldarg.1
    IL_0200:  ldloc.s    V_8
    IL_0202:  ldloc.s    V_15
    IL_0204:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0209:  add
    IL_020a:  ldloc.s    V_16
    IL_020c:  ldloc.s    V_10
    IL_020e:  ldloc.s    V_15
    IL_0210:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0215:  add
    IL_0216:  ldloc.s    V_17
    IL_0218:  callvirt   instance void Game.TerrainChunk::SetCellValueFast(int32,
                                                                           int32,
                                                                           int32,
                                                                           int32)
    IL_021d:  ldloc.s    V_8
    IL_021f:  ldloc.s    V_15
    IL_0221:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0226:  add
    IL_0227:  ldloc.s    V_16
    IL_0229:  ldloc.s    V_10
    IL_022b:  ldloc.s    V_15
    IL_022d:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0232:  add
    IL_0233:  call       bool Game.IvyBlock::IsGrowthStopCell(int32,
                                                              int32,
                                                              int32)
    IL_0238:  brtrue.s   IL_0255

    IL_023a:  ldloc.s    V_16
    IL_023c:  ldc.i4.1
    IL_023d:  sub
    IL_023e:  stloc.s    V_16
    IL_0240:  ldloc.s    V_16
    IL_0242:  ldc.i4.1
    IL_0243:  bge.s      IL_01e1

    IL_0245:  br.s       IL_0255

    IL_0247:  ldloc.s    V_13
    IL_0249:  ldc.i4.1
    IL_024a:  add
    IL_024b:  stloc.s    V_13
    IL_024d:  ldloc.s    V_13
    IL_024f:  ldc.i4.4
    IL_0250:  blt        IL_012c

    IL_0255:  ldloc.s    V_7
    IL_0257:  ldc.i4.1
    IL_0258:  add
    IL_0259:  stloc.s    V_7
    IL_025b:  ldloc.s    V_7
    IL_025d:  ldc.i4.s   100
    IL_025f:  blt        IL_0096

    IL_0264:  ldloc.2
    IL_0265:  ldc.i4.1
    IL_0266:  add
    IL_0267:  stloc.2
    IL_0268:  ldloc.2
    IL_0269:  ldloc.1
    IL_026a:  blt        IL_004a

    IL_026f:  ret
  } // end of method TerrainContentsGenerator::GenerateIvy

  .method private hidebysig instance void 
          GenerateTraps(class Game.TerrainChunk chunk) cil managed
  {
    // 代码大小       785 (0x311)
    .maxstack  7
    .locals init (int32 V_0,
             int32 V_1,
             class Game.Random V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7,
             int32 V_8,
             bool V_9,
             int32 V_10,
             valuetype [System.Runtime]System.Nullable`1<int32> V_11,
             int32 V_12,
             int32 V_13,
             int32 V_14,
             int32 V_15,
             valuetype [System.Runtime]System.Nullable`1<int32> V_16,
             int32 V_17,
             valuetype [System.Runtime]System.Nullable`1<int32> V_18,
             int32 V_19,
             valuetype [System.Runtime]System.Nullable`1<int32> V_20,
             int32 V_21,
             int32 V_22,
             int32 V_23,
             int32 V_24)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.TerrainContentsGenerator::TGExtras
    IL_0006:  brtrue.s   IL_0009

    IL_0008:  ret

    IL_0009:  ldarg.1
    IL_000a:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Coords
    IL_000f:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0014:  stloc.0
    IL_0015:  ldarg.1
    IL_0016:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Coords
    IL_001b:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0020:  stloc.1
    IL_0021:  ldarg.0
    IL_0022:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGenerator::m_subsystemTerrain
    IL_0027:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_002c:  pop
    IL_002d:  ldarg.0
    IL_002e:  ldfld      int32 Game.TerrainContentsGenerator::m_seed
    IL_0033:  ldloc.0
    IL_0034:  add
    IL_0035:  ldc.i4     0x841
    IL_003a:  ldloc.1
    IL_003b:  mul
    IL_003c:  add
    IL_003d:  newobj     instance void Game.Random::.ctor(int32)
    IL_0042:  stloc.2
    IL_0043:  ldloc.2
    IL_0044:  ldc.r4     0.15000001
    IL_0049:  callvirt   instance bool Game.Random::Bool(float32)
    IL_004e:  brfalse    IL_0310

    IL_0053:  ldarg.0
    IL_0054:  ldarg.1
    IL_0055:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_005a:  ldfld      int32 [Engine]Engine.Point2::X
    IL_005f:  conv.r4
    IL_0060:  ldarg.1
    IL_0061:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_0066:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_006b:  conv.r4
    IL_006c:  call       instance float32 Game.TerrainContentsGenerator::CalculateOceanShoreDistance(float32,
                                                                                                     float32)
    IL_0071:  ldc.r4     50.
    IL_0076:  ble.un     IL_0310

    IL_007b:  ldloc.2
    IL_007c:  ldc.i4.0
    IL_007d:  ldc.i4.2
    IL_007e:  ldc.i4.1
    IL_007f:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_0084:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0089:  stloc.3
    IL_008a:  ldc.i4.0
    IL_008b:  stloc.s    V_4
    IL_008d:  br         IL_0308

    IL_0092:  ldloc.2
    IL_0093:  ldc.i4.2
    IL_0094:  ldc.i4.5
    IL_0095:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_009a:  stloc.s    V_5
    IL_009c:  ldloc.2
    IL_009d:  ldc.i4.2
    IL_009e:  ldc.i4.5
    IL_009f:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_00a4:  stloc.s    V_6
    IL_00a6:  ldloc.2
    IL_00a7:  ldc.i4.1
    IL_00a8:  ldc.i4.s   16
    IL_00aa:  ldloc.s    V_5
    IL_00ac:  sub
    IL_00ad:  ldc.i4.2
    IL_00ae:  sub
    IL_00af:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_00b4:  stloc.s    V_7
    IL_00b6:  ldloc.2
    IL_00b7:  ldc.i4.1
    IL_00b8:  ldc.i4.s   16
    IL_00ba:  ldloc.s    V_6
    IL_00bc:  sub
    IL_00bd:  ldc.i4.2
    IL_00be:  sub
    IL_00bf:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_00c4:  stloc.s    V_8
    IL_00c6:  ldloc.2
    IL_00c7:  ldc.r4     0.0
    IL_00cc:  ldc.r4     1.
    IL_00d1:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_00d6:  ldc.r4     0.5
    IL_00db:  clt
    IL_00dd:  stloc.s    V_9
    IL_00df:  ldloc.2
    IL_00e0:  ldc.i4.3
    IL_00e1:  ldc.i4.5
    IL_00e2:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_00e7:  stloc.s    V_10
    IL_00e9:  ldloca.s   V_11
    IL_00eb:  initobj    valuetype [System.Runtime]System.Nullable`1<int32>
    IL_00f1:  ldloc.s    V_7
    IL_00f3:  ldc.i4.1
    IL_00f4:  sub
    IL_00f5:  stloc.s    V_12
    IL_00f7:  br         IL_01a0

    IL_00fc:  ldloc.s    V_8
    IL_00fe:  ldc.i4.1
    IL_00ff:  sub
    IL_0100:  stloc.s    V_13
    IL_0102:  br         IL_018c

    IL_0107:  ldarg.1
    IL_0108:  ldloc.s    V_12
    IL_010a:  ldloc.s    V_13
    IL_010c:  callvirt   instance int32 Game.TerrainChunk::CalculateTopmostCellHeight(int32,
                                                                                      int32)
    IL_0111:  stloc.s    V_14
    IL_0113:  ldloc.s    V_14
    IL_0115:  ldc.i4.s   20
    IL_0117:  sub
    IL_0118:  ldc.i4.5
    IL_0119:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_011e:  stloc.s    V_15
    IL_0120:  br.s       IL_0137

    IL_0122:  ldarg.1
    IL_0123:  ldloc.s    V_12
    IL_0125:  ldloc.s    V_14
    IL_0127:  ldloc.s    V_13
    IL_0129:  callvirt   instance int32 Game.TerrainChunk::GetCellContentsFast(int32,
                                                                               int32,
                                                                               int32)
    IL_012e:  ldc.i4.8
    IL_012f:  beq.s      IL_013d

    IL_0131:  ldloc.s    V_14
    IL_0133:  ldc.i4.1
    IL_0134:  sub
    IL_0135:  stloc.s    V_14
    IL_0137:  ldloc.s    V_14
    IL_0139:  ldloc.s    V_15
    IL_013b:  bge.s      IL_0122

    IL_013d:  ldloca.s   V_11
    IL_013f:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0144:  brfalse.s  IL_016b

    IL_0146:  ldloc.s    V_11
    IL_0148:  stloc.s    V_16
    IL_014a:  ldloc.s    V_14
    IL_014c:  stloc.s    V_17
    IL_014e:  ldloca.s   V_16
    IL_0150:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::GetValueOrDefault()
    IL_0155:  ldloc.s    V_17
    IL_0157:  beq.s      IL_015c

    IL_0159:  ldc.i4.1
    IL_015a:  br.s       IL_0166

    IL_015c:  ldloca.s   V_16
    IL_015e:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0163:  ldc.i4.0
    IL_0164:  ceq
    IL_0166:  brtrue     IL_0302

    IL_016b:  ldloca.s   V_11
    IL_016d:  ldloc.s    V_14
    IL_016f:  call       instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_0174:  ldarg.1
    IL_0175:  ldloc.s    V_12
    IL_0177:  ldloc.s    V_14
    IL_0179:  ldloc.s    V_13
    IL_017b:  callvirt   instance int32 Game.TerrainChunk::GetCellContentsFast(int32,
                                                                               int32,
                                                                               int32)
    IL_0180:  ldc.i4.8
    IL_0181:  bne.un     IL_0302

    IL_0186:  ldloc.s    V_13
    IL_0188:  ldc.i4.1
    IL_0189:  add
    IL_018a:  stloc.s    V_13
    IL_018c:  ldloc.s    V_13
    IL_018e:  ldloc.s    V_8
    IL_0190:  ldloc.s    V_6
    IL_0192:  add
    IL_0193:  ldc.i4.1
    IL_0194:  add
    IL_0195:  blt        IL_0107

    IL_019a:  ldloc.s    V_12
    IL_019c:  ldc.i4.1
    IL_019d:  add
    IL_019e:  stloc.s    V_12
    IL_01a0:  ldloc.s    V_12
    IL_01a2:  ldloc.s    V_7
    IL_01a4:  ldloc.s    V_5
    IL_01a6:  add
    IL_01a7:  ldc.i4.1
    IL_01a8:  add
    IL_01a9:  blt        IL_00fc

    IL_01ae:  ldloca.s   V_11
    IL_01b0:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_01b5:  brfalse    IL_0302

    IL_01ba:  ldloc.s    V_11
    IL_01bc:  stloc.s    V_18
    IL_01be:  ldloc.s    V_10
    IL_01c0:  stloc.s    V_19
    IL_01c2:  ldloca.s   V_18
    IL_01c4:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_01c9:  brtrue.s   IL_01d7

    IL_01cb:  ldloca.s   V_20
    IL_01cd:  initobj    valuetype [System.Runtime]System.Nullable`1<int32>
    IL_01d3:  ldloc.s    V_20
    IL_01d5:  br.s       IL_01e6

    IL_01d7:  ldloca.s   V_18
    IL_01d9:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::GetValueOrDefault()
    IL_01de:  ldloc.s    V_19
    IL_01e0:  sub
    IL_01e1:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_01e6:  stloc.s    V_16
    IL_01e8:  ldc.i4.5
    IL_01e9:  stloc.s    V_17
    IL_01eb:  ldloca.s   V_16
    IL_01ed:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::GetValueOrDefault()
    IL_01f2:  ldloc.s    V_17
    IL_01f4:  blt.s      IL_01f9

    IL_01f6:  ldc.i4.0
    IL_01f7:  br.s       IL_0200

    IL_01f9:  ldloca.s   V_16
    IL_01fb:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0200:  brtrue     IL_0302

    IL_0205:  ldloc.s    V_7
    IL_0207:  stloc.s    V_21
    IL_0209:  br         IL_02f6

    IL_020e:  ldloc.s    V_8
    IL_0210:  stloc.s    V_22
    IL_0212:  br         IL_02e4

    IL_0217:  ldloca.s   V_11
    IL_0219:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
    IL_021e:  ldc.i4.1
    IL_021f:  sub
    IL_0220:  stloc.s    V_23
    IL_0222:  br.s       IL_023c

    IL_0224:  ldarg.1
    IL_0225:  ldloc.s    V_21
    IL_0227:  ldloc.s    V_23
    IL_0229:  ldloc.s    V_22
    IL_022b:  ldc.i4.0
    IL_022c:  call       int32 Game.Terrain::MakeBlockValue(int32)
    IL_0231:  callvirt   instance void Game.TerrainChunk::SetCellValueFast(int32,
                                                                           int32,
                                                                           int32,
                                                                           int32)
    IL_0236:  ldloc.s    V_23
    IL_0238:  ldc.i4.1
    IL_0239:  sub
    IL_023a:  stloc.s    V_23
    IL_023c:  ldloc.s    V_23
    IL_023e:  ldloc.s    V_11
    IL_0240:  stloc.s    V_18
    IL_0242:  ldloc.s    V_10
    IL_0244:  stloc.s    V_17
    IL_0246:  ldloca.s   V_18
    IL_0248:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_024d:  brtrue.s   IL_025b

    IL_024f:  ldloca.s   V_20
    IL_0251:  initobj    valuetype [System.Runtime]System.Nullable`1<int32>
    IL_0257:  ldloc.s    V_20
    IL_0259:  br.s       IL_026c

    IL_025b:  ldloca.s   V_18
    IL_025d:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::GetValueOrDefault()
    IL_0262:  ldloc.s    V_17
    IL_0264:  sub
    IL_0265:  ldc.i4.1
    IL_0266:  add
    IL_0267:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_026c:  stloc.s    V_16
    IL_026e:  ldloca.s   V_16
    IL_0270:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::GetValueOrDefault()
    IL_0275:  bge.s      IL_027a

    IL_0277:  ldc.i4.0
    IL_0278:  br.s       IL_0281

    IL_027a:  ldloca.s   V_16
    IL_027c:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0281:  brtrue.s   IL_0224

    IL_0283:  ldarg.1
    IL_0284:  ldloc.s    V_21
    IL_0286:  ldloca.s   V_11
    IL_0288:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
    IL_028d:  ldloc.s    V_22
    IL_028f:  ldc.i4.s   87
    IL_0291:  call       int32 Game.Terrain::MakeBlockValue(int32)
    IL_0296:  callvirt   instance void Game.TerrainChunk::SetCellValueFast(int32,
                                                                           int32,
                                                                           int32,
                                                                           int32)
    IL_029b:  ldloc.s    V_9
    IL_029d:  brfalse.s  IL_02de

    IL_029f:  ldc.i4.0
    IL_02a0:  ldloc.2
    IL_02a1:  ldc.r4     0.0
    IL_02a6:  ldc.r4     1.
    IL_02ab:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_02b0:  ldc.r4     0.33000001
    IL_02b5:  clt
    IL_02b7:  call       int32 Game.SpikedPlankBlock::SetSpikesState(int32,
                                                                     bool)
    IL_02bc:  stloc.s    V_24
    IL_02be:  ldarg.1
    IL_02bf:  ldloc.s    V_21
    IL_02c1:  ldloca.s   V_11
    IL_02c3:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
    IL_02c8:  ldloc.s    V_10
    IL_02ca:  sub
    IL_02cb:  ldc.i4.1
    IL_02cc:  add
    IL_02cd:  ldloc.s    V_22
    IL_02cf:  ldc.i4.s   86
    IL_02d1:  ldc.i4.0
    IL_02d2:  ldloc.s    V_24
    IL_02d4:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_02d9:  callvirt   instance void Game.TerrainChunk::SetCellValueFast(int32,
                                                                           int32,
                                                                           int32,
                                                                           int32)
    IL_02de:  ldloc.s    V_22
    IL_02e0:  ldc.i4.1
    IL_02e1:  add
    IL_02e2:  stloc.s    V_22
    IL_02e4:  ldloc.s    V_22
    IL_02e6:  ldloc.s    V_8
    IL_02e8:  ldloc.s    V_6
    IL_02ea:  add
    IL_02eb:  blt        IL_0217

    IL_02f0:  ldloc.s    V_21
    IL_02f2:  ldc.i4.1
    IL_02f3:  add
    IL_02f4:  stloc.s    V_21
    IL_02f6:  ldloc.s    V_21
    IL_02f8:  ldloc.s    V_7
    IL_02fa:  ldloc.s    V_5
    IL_02fc:  add
    IL_02fd:  blt        IL_020e

    IL_0302:  ldloc.s    V_4
    IL_0304:  ldc.i4.1
    IL_0305:  add
    IL_0306:  stloc.s    V_4
    IL_0308:  ldloc.s    V_4
    IL_030a:  ldloc.3
    IL_030b:  blt        IL_0092

    IL_0310:  ret
  } // end of method TerrainContentsGenerator::GenerateTraps

  .method private hidebysig instance void 
          GenerateGraves(class Game.TerrainChunk chunk) cil managed
  {
    // 代码大小       1749 (0x6d5)
    .maxstack  8
    .locals init (int32 V_0,
             int32 V_1,
             class Game.Random V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7,
             bool V_8,
             int32 V_9,
             int32 V_10,
             int32 V_11,
             int32 V_12,
             int32 V_13,
             int32 V_14,
             int32 V_15,
             valuetype [Engine]Engine.Point3 V_16,
             valuetype [Engine]Engine.Point3 V_17,
             int32 V_18,
             int32 V_19,
             int32 V_20,
             int32 V_21,
             int32 V_22,
             valuetype [System.Runtime]System.Nullable`1<int32> V_23,
             int32 V_24,
             int32 V_25,
             bool V_26,
             float32 V_27,
             float32 V_28,
             int32 V_29,
             int32 V_30,
             int32 V_31,
             int32 V_32,
             int32 V_33,
             int32 V_34,
             int32 V_35,
             class Game.Block V_36,
             int32 V_37,
             int32 V_38,
             int32 V_39,
             int32 V_40,
             int32 V_41,
             int32 V_42,
             int32 V_43,
             int32 V_44,
             int32 V_45)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.TerrainContentsGenerator::TGExtras
    IL_0006:  brtrue.s   IL_0009

    IL_0008:  ret

    IL_0009:  ldarg.1
    IL_000a:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Coords
    IL_000f:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0014:  stloc.0
    IL_0015:  ldarg.1
    IL_0016:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Coords
    IL_001b:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0020:  stloc.1
    IL_0021:  ldarg.0
    IL_0022:  ldfld      int32 Game.TerrainContentsGenerator::m_seed
    IL_0027:  ldloc.0
    IL_0028:  add
    IL_0029:  ldc.i4     0x2853
    IL_002e:  ldloc.1
    IL_002f:  mul
    IL_0030:  add
    IL_0031:  call       uint32 [Engine]Engine.MathUtils::Hash(uint32)
    IL_0036:  newobj     instance void Game.Random::.ctor(int32)
    IL_003b:  stloc.2
    IL_003c:  ldloc.2
    IL_003d:  ldc.r4     0.0
    IL_0042:  ldc.r4     1.
    IL_0047:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_004c:  ldc.r4     3.3e-002
    IL_0051:  bge.un     IL_06d4

    IL_0056:  ldarg.0
    IL_0057:  ldarg.1
    IL_0058:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_005d:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0062:  conv.r4
    IL_0063:  ldarg.1
    IL_0064:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_0069:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_006e:  conv.r4
    IL_006f:  call       instance float32 Game.TerrainContentsGenerator::CalculateOceanShoreDistance(float32,
                                                                                                     float32)
    IL_0074:  ldc.r4     10.
    IL_0079:  ble.un     IL_06d4

    IL_007e:  ldloc.2
    IL_007f:  ldc.i4.0
    IL_0080:  ldc.i4.1
    IL_0081:  ldc.i4.1
    IL_0082:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_0087:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_008c:  stloc.3
    IL_008d:  ldc.i4.0
    IL_008e:  stloc.s    V_4
    IL_0090:  br         IL_06cc

    IL_0095:  ldloc.2
    IL_0096:  ldc.i4.6
    IL_0097:  ldc.i4.s   9
    IL_0099:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_009e:  stloc.s    V_5
    IL_00a0:  ldloc.2
    IL_00a1:  ldc.i4.6
    IL_00a2:  ldc.i4.s   9
    IL_00a4:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_00a9:  stloc.s    V_6
    IL_00ab:  ldloc.2
    IL_00ac:  ldc.r4     0.2
    IL_00b1:  callvirt   instance bool Game.Random::Bool(float32)
    IL_00b6:  brtrue.s   IL_00c2

    IL_00b8:  ldloc.2
    IL_00b9:  ldc.i4.1
    IL_00ba:  ldc.i4.5
    IL_00bb:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_00c0:  br.s       IL_00cb

    IL_00c2:  ldloc.2
    IL_00c3:  ldc.i4.6
    IL_00c4:  ldc.i4.s   20
    IL_00c6:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_00cb:  stloc.s    V_7
    IL_00cd:  ldloc.2
    IL_00ce:  ldc.r4     0.5
    IL_00d3:  callvirt   instance bool Game.Random::Bool(float32)
    IL_00d8:  stloc.s    V_8
    IL_00da:  ldc.i4.0
    IL_00db:  stloc.s    V_9
    IL_00dd:  br         IL_06bd

    IL_00e2:  ldloc.s    V_5
    IL_00e4:  ldloc.2
    IL_00e5:  ldc.i4.s   -4
    IL_00e7:  ldc.i4.4
    IL_00e8:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_00ed:  add
    IL_00ee:  stloc.s    V_10
    IL_00f0:  ldloc.s    V_6
    IL_00f2:  ldloc.2
    IL_00f3:  ldc.i4.s   -4
    IL_00f5:  ldc.i4.4
    IL_00f6:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_00fb:  add
    IL_00fc:  stloc.s    V_11
    IL_00fe:  ldarg.1
    IL_00ff:  ldloc.s    V_10
    IL_0101:  ldloc.s    V_11
    IL_0103:  callvirt   instance int32 Game.TerrainChunk::CalculateTopmostCellHeight(int32,
                                                                                      int32)
    IL_0108:  stloc.s    V_12
    IL_010a:  ldloc.s    V_12
    IL_010c:  ldc.i4.s   10
    IL_010e:  blt        IL_06b7

    IL_0113:  ldloc.s    V_12
    IL_0115:  ldc.i4.s   118
    IL_0117:  bgt        IL_06b7

    IL_011c:  ldloc.2
    IL_011d:  ldc.i4.0
    IL_011e:  ldc.i4.3
    IL_011f:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0124:  stloc.s    V_13
    IL_0126:  ldc.i4.0
    IL_0127:  stloc.s    V_14
    IL_0129:  br         IL_06af

    IL_012e:  ldloc.s    V_14
    IL_0130:  ldloc.s    V_13
    IL_0132:  add
    IL_0133:  ldc.i4.4
    IL_0134:  rem
    IL_0135:  stloc.s    V_15
    IL_0137:  ldloc.s    V_15
    IL_0139:  call       valuetype [Engine]Engine.Point3 Game.CellFace::FaceToPoint3(int32)
    IL_013e:  stloc.s    V_16
    IL_0140:  ldloca.s   V_17
    IL_0142:  ldloc.s    V_16
    IL_0144:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0149:  neg
    IL_014a:  ldloc.s    V_16
    IL_014c:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0151:  ldloc.s    V_16
    IL_0153:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0158:  call       instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_015d:  ldloc.s    V_16
    IL_015f:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0164:  ldc.i4.0
    IL_0165:  blt.s      IL_016d

    IL_0167:  ldloc.s    V_10
    IL_0169:  ldc.i4.1
    IL_016a:  sub
    IL_016b:  br.s       IL_0171

    IL_016d:  ldloc.s    V_10
    IL_016f:  ldc.i4.2
    IL_0170:  sub
    IL_0171:  ldloc.s    V_16
    IL_0173:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0178:  ldc.i4.0
    IL_0179:  bgt.s      IL_0181

    IL_017b:  ldloc.s    V_10
    IL_017d:  ldc.i4.1
    IL_017e:  add
    IL_017f:  br.s       IL_0185

    IL_0181:  ldloc.s    V_10
    IL_0183:  ldc.i4.2
    IL_0184:  add
    IL_0185:  stloc.s    V_18
    IL_0187:  ldloc.s    V_16
    IL_0189:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_018e:  ldc.i4.0
    IL_018f:  blt.s      IL_0197

    IL_0191:  ldloc.s    V_11
    IL_0193:  ldc.i4.1
    IL_0194:  sub
    IL_0195:  br.s       IL_019b

    IL_0197:  ldloc.s    V_11
    IL_0199:  ldc.i4.2
    IL_019a:  sub
    IL_019b:  stloc.s    V_19
    IL_019d:  ldloc.s    V_16
    IL_019f:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_01a4:  ldc.i4.0
    IL_01a5:  bgt.s      IL_01ad

    IL_01a7:  ldloc.s    V_11
    IL_01a9:  ldc.i4.1
    IL_01aa:  add
    IL_01ab:  br.s       IL_01b1

    IL_01ad:  ldloc.s    V_11
    IL_01af:  ldc.i4.2
    IL_01b0:  add
    IL_01b1:  stloc.s    V_20
    IL_01b3:  stloc.s    V_32
    IL_01b5:  br.s       IL_0232

    IL_01b7:  ldloc.s    V_12
    IL_01b9:  ldc.i4.2
    IL_01ba:  sub
    IL_01bb:  stloc.s    V_33
    IL_01bd:  br.s       IL_0224

    IL_01bf:  ldloc.s    V_19
    IL_01c1:  stloc.s    V_34
    IL_01c3:  br.s       IL_0218

    IL_01c5:  ldarg.1
    IL_01c6:  ldloc.s    V_32
    IL_01c8:  ldloc.s    V_33
    IL_01ca:  ldloc.s    V_34
    IL_01cc:  callvirt   instance int32 Game.TerrainChunk::GetCellValueFast(int32,
                                                                            int32,
                                                                            int32)
    IL_01d1:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_01d6:  stloc.s    V_35
    IL_01d8:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_01dd:  ldloc.s    V_35
    IL_01df:  ldelem.ref
    IL_01e0:  stloc.s    V_36
    IL_01e2:  ldloc.s    V_33
    IL_01e4:  ldloc.s    V_12
    IL_01e6:  ble.s      IL_01f6

    IL_01e8:  ldloc.s    V_36
    IL_01ea:  ldfld      bool Game.Block::IsCollidable
    IL_01ef:  brfalse.s  IL_0212

    IL_01f1:  br         IL_06a9

    IL_01f6:  ldloc.s    V_35
    IL_01f8:  ldc.i4.8
    IL_01f9:  beq.s      IL_0212

    IL_01fb:  ldloc.s    V_35
    IL_01fd:  ldc.i4.2
    IL_01fe:  beq.s      IL_0212

    IL_0200:  ldloc.s    V_35
    IL_0202:  ldc.i4.7
    IL_0203:  beq.s      IL_0212

    IL_0205:  ldloc.s    V_35
    IL_0207:  ldc.i4.3
    IL_0208:  beq.s      IL_0212

    IL_020a:  ldloc.s    V_35
    IL_020c:  ldc.i4.4
    IL_020d:  bne.un     IL_06a9

    IL_0212:  ldloc.s    V_34
    IL_0214:  ldc.i4.1
    IL_0215:  add
    IL_0216:  stloc.s    V_34
    IL_0218:  ldloc.s    V_34
    IL_021a:  ldloc.s    V_20
    IL_021c:  ble.s      IL_01c5

    IL_021e:  ldloc.s    V_33
    IL_0220:  ldc.i4.1
    IL_0221:  add
    IL_0222:  stloc.s    V_33
    IL_0224:  ldloc.s    V_33
    IL_0226:  ldloc.s    V_12
    IL_0228:  ldc.i4.2
    IL_0229:  add
    IL_022a:  ble.s      IL_01bf

    IL_022c:  ldloc.s    V_32
    IL_022e:  ldc.i4.1
    IL_022f:  add
    IL_0230:  stloc.s    V_32
    IL_0232:  ldloc.s    V_32
    IL_0234:  ldloc.s    V_18
    IL_0236:  ble        IL_01b7

    IL_023b:  ldloc.2
    IL_023c:  ldc.i4.0
    IL_023d:  ldc.i4.7
    IL_023e:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0243:  stloc.s    V_21
    IL_0245:  ldc.i4.0
    IL_0246:  ldloc.s    V_15
    IL_0248:  ldc.i4.2
    IL_0249:  rem
    IL_024a:  call       int32 Game.GravestoneBlock::SetRotation(int32,
                                                                 int32)
    IL_024f:  ldloc.s    V_21
    IL_0251:  call       int32 Game.GravestoneBlock::SetVariant(int32,
                                                                int32)
    IL_0256:  stloc.s    V_22
    IL_0258:  ldloca.s   V_23
    IL_025a:  initobj    valuetype [System.Runtime]System.Nullable`1<int32>
    IL_0260:  ldc.i4     0xd9
    IL_0265:  stloc.s    V_24
    IL_0267:  ldc.i4     0x88
    IL_026c:  stloc.s    V_25
    IL_026e:  ldloc.s    V_21
    IL_0270:  ldc.i4.4
    IL_0271:  blt.s      IL_02f0

    IL_0273:  ldloc.s    V_8
    IL_0275:  brtrue.s   IL_02f0

    IL_0277:  ldarg.1
    IL_0278:  ldloc.s    V_10
    IL_027a:  ldloc.s    V_12
    IL_027c:  ldloc.s    V_11
    IL_027e:  callvirt   instance int32 Game.TerrainChunk::GetCellContentsFast(int32,
                                                                               int32,
                                                                               int32)
    IL_0283:  stloc.s    V_37
    IL_0285:  ldloc.s    V_37
    IL_0287:  ldc.i4.7
    IL_0288:  beq.s      IL_028f

    IL_028a:  ldloc.s    V_37
    IL_028c:  ldc.i4.4
    IL_028d:  bne.un.s   IL_02a6

    IL_028f:  ldloca.s   V_23
    IL_0291:  ldc.i4.4
    IL_0292:  call       int32 Game.Terrain::MakeBlockValue(int32)
    IL_0297:  call       instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_029c:  ldc.i4.s   51
    IL_029e:  stloc.s    V_24
    IL_02a0:  ldc.i4.s   52
    IL_02a2:  stloc.s    V_25
    IL_02a4:  br.s       IL_02f0

    IL_02a6:  ldloc.2
    IL_02a7:  ldc.r4     0.0
    IL_02ac:  ldc.r4     1.
    IL_02b1:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_02b6:  ldc.r4     0.5
    IL_02bb:  bge.un.s   IL_02da

    IL_02bd:  ldloca.s   V_23
    IL_02bf:  ldc.i4.3
    IL_02c0:  call       int32 Game.Terrain::MakeBlockValue(int32)
    IL_02c5:  call       instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_02ca:  ldc.i4     0xd9
    IL_02cf:  stloc.s    V_24
    IL_02d1:  ldc.i4     0x88
    IL_02d6:  stloc.s    V_25
    IL_02d8:  br.s       IL_02f0

    IL_02da:  ldloca.s   V_23
    IL_02dc:  ldc.i4.s   67
    IL_02de:  call       int32 Game.Terrain::MakeBlockValue(int32)
    IL_02e3:  call       instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_02e8:  ldc.i4.s   96
    IL_02ea:  stloc.s    V_24
    IL_02ec:  ldc.i4.s   95
    IL_02ee:  stloc.s    V_25
    IL_02f0:  ldloca.s   V_23
    IL_02f2:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_02f7:  brtrue.s   IL_02fc

    IL_02f9:  ldc.i4.0
    IL_02fa:  br.s       IL_0307

    IL_02fc:  ldloc.2
    IL_02fd:  ldc.r4     0.33000001
    IL_0302:  callvirt   instance bool Game.Random::Bool(float32)
    IL_0307:  stloc.s    V_26
    IL_0309:  ldloc.2
    IL_030a:  ldc.r4     0.0
    IL_030f:  ldc.r4     1.
    IL_0314:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0319:  stloc.s    V_27
    IL_031b:  ldloc.2
    IL_031c:  ldc.r4     0.0
    IL_0321:  ldc.r4     1.
    IL_0326:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_032b:  stloc.s    V_28
    IL_032d:  ldloc.2
    IL_032e:  ldc.i4.m1
    IL_032f:  ldc.i4.0
    IL_0330:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0335:  stloc.s    V_29
    IL_0337:  ldloc.2
    IL_0338:  ldc.i4.1
    IL_0339:  ldc.i4.2
    IL_033a:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_033f:  stloc.s    V_30
    IL_0341:  ldloc.s    V_26
    IL_0343:  brtrue.s   IL_034b

    IL_0345:  ldloc.s    V_12
    IL_0347:  ldc.i4.1
    IL_0348:  add
    IL_0349:  br.s       IL_034f

    IL_034b:  ldloc.s    V_12
    IL_034d:  ldc.i4.2
    IL_034e:  add
    IL_034f:  stloc.s    V_31
    IL_0351:  ldarg.1
    IL_0352:  ldloc.s    V_10
    IL_0354:  ldloc.s    V_31
    IL_0356:  ldloc.s    V_11
    IL_0358:  ldc.i4     0xbd
    IL_035d:  ldc.i4.0
    IL_035e:  ldloc.s    V_22
    IL_0360:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_0365:  callvirt   instance void Game.TerrainChunk::SetCellValueFast(int32,
                                                                           int32,
                                                                           int32,
                                                                           int32)
    IL_036a:  ldloc.s    V_29
    IL_036c:  stloc.s    V_38
    IL_036e:  br         IL_069e

    IL_0373:  ldloc.s    V_10
    IL_0375:  ldloc.s    V_16
    IL_0377:  ldfld      int32 [Engine]Engine.Point3::X
    IL_037c:  ldloc.s    V_38
    IL_037e:  mul
    IL_037f:  add
    IL_0380:  stloc.s    V_39
    IL_0382:  ldloc.s    V_11
    IL_0384:  ldloc.s    V_16
    IL_0386:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_038b:  ldloc.s    V_38
    IL_038d:  mul
    IL_038e:  add
    IL_038f:  stloc.s    V_40
    IL_0391:  ldloc.s    V_38
    IL_0393:  brfalse.s  IL_039d

    IL_0395:  ldloc.s    V_38
    IL_0397:  ldc.i4.1
    IL_0398:  bne.un     IL_0462

    IL_039d:  ldarg.1
    IL_039e:  ldloc.s    V_39
    IL_03a0:  ldloc.s    V_31
    IL_03a2:  ldc.i4.2
    IL_03a3:  sub
    IL_03a4:  ldloc.s    V_40
    IL_03a6:  ldc.i4     0xbe
    IL_03ab:  call       int32 Game.Terrain::MakeBlockValue(int32)
    IL_03b0:  callvirt   instance void Game.TerrainChunk::SetCellValueFast(int32,
                                                                           int32,
                                                                           int32,
                                                                           int32)
    IL_03b5:  ldloca.s   V_23
    IL_03b7:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_03bc:  brfalse    IL_0462

    IL_03c1:  ldarg.1
    IL_03c2:  ldloc.s    V_39
    IL_03c4:  ldloc.s    V_31
    IL_03c6:  ldc.i4.1
    IL_03c7:  sub
    IL_03c8:  ldloc.s    V_40
    IL_03ca:  ldloca.s   V_23
    IL_03cc:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
    IL_03d1:  callvirt   instance void Game.TerrainChunk::SetCellValueFast(int32,
                                                                           int32,
                                                                           int32,
                                                                           int32)
    IL_03d6:  ldloc.s    V_38
    IL_03d8:  ldc.i4.1
    IL_03d9:  bne.un     IL_0462

    IL_03de:  ldc.i4.0
    IL_03df:  stloc.s    V_41
    IL_03e1:  ldloc.s    V_28
    IL_03e3:  ldc.r4     0.2
    IL_03e8:  bge.un.s   IL_03f5

    IL_03ea:  ldc.i4.s   20
    IL_03ec:  call       int32 Game.Terrain::MakeBlockValue(int32)
    IL_03f1:  stloc.s    V_41
    IL_03f3:  br.s       IL_0450

    IL_03f5:  ldloc.s    V_28
    IL_03f7:  ldc.r4     0.30000001
    IL_03fc:  bge.un.s   IL_0409

    IL_03fe:  ldc.i4.s   24
    IL_0400:  call       int32 Game.Terrain::MakeBlockValue(int32)
    IL_0405:  stloc.s    V_41
    IL_0407:  br.s       IL_0450

    IL_0409:  ldloc.s    V_28
    IL_040b:  ldc.r4     0.40000001
    IL_0410:  bge.un.s   IL_041d

    IL_0412:  ldc.i4.s   25
    IL_0414:  call       int32 Game.Terrain::MakeBlockValue(int32)
    IL_0419:  stloc.s    V_41
    IL_041b:  br.s       IL_0450

    IL_041d:  ldloc.s    V_28
    IL_041f:  ldc.r4     0.5
    IL_0424:  bge.un.s   IL_0433

    IL_0426:  ldc.i4.s   31
    IL_0428:  ldc.i4.0
    IL_0429:  ldc.i4.4
    IL_042a:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_042f:  stloc.s    V_41
    IL_0431:  br.s       IL_0450

    IL_0433:  ldloc.s    V_28
    IL_0435:  ldc.r4     0.60000002
    IL_043a:  bge.un.s   IL_0450

    IL_043c:  ldc.i4     0x84
    IL_0441:  ldc.i4.0
    IL_0442:  ldloc.s    V_15
    IL_0444:  call       int32 Game.CellFace::OppositeFace(int32)
    IL_0449:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_044e:  stloc.s    V_41
    IL_0450:  ldloc.s    V_41
    IL_0452:  brfalse.s  IL_0462

    IL_0454:  ldarg.1
    IL_0455:  ldloc.s    V_39
    IL_0457:  ldloc.s    V_31
    IL_0459:  ldloc.s    V_40
    IL_045b:  ldloc.s    V_41
    IL_045d:  callvirt   instance void Game.TerrainChunk::SetCellValueFast(int32,
                                                                           int32,
                                                                           int32,
                                                                           int32)
    IL_0462:  ldloc.s    V_26
    IL_0464:  brfalse    IL_0698

    IL_0469:  ldloc.s    V_27
    IL_046b:  ldc.r4     0.30000001
    IL_0470:  bge.un     IL_0551

    IL_0475:  ldloc.s    V_24
    IL_0477:  ldc.i4.0
    IL_0478:  ldc.i4.0
    IL_0479:  ldloc.s    V_17
    IL_047b:  ldc.i4.5
    IL_047c:  call       int32 Game.CellFace::Point3ToFace(valuetype [Engine]Engine.Point3,
                                                           int32)
    IL_0481:  call       int32 Game.StairsBlock::SetRotation(int32,
                                                             int32)
    IL_0486:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_048b:  stloc.s    V_42
    IL_048d:  ldloc.s    V_24
    IL_048f:  ldc.i4.0
    IL_0490:  ldc.i4.0
    IL_0491:  ldloc.s    V_17
    IL_0493:  ldc.i4.5
    IL_0494:  call       int32 Game.CellFace::Point3ToFace(valuetype [Engine]Engine.Point3,
                                                           int32)
    IL_0499:  call       int32 Game.CellFace::OppositeFace(int32)
    IL_049e:  call       int32 Game.StairsBlock::SetRotation(int32,
                                                             int32)
    IL_04a3:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_04a8:  stloc.s    V_43
    IL_04aa:  ldarg.1
    IL_04ab:  ldloc.s    V_39
    IL_04ad:  ldloc.s    V_17
    IL_04af:  ldfld      int32 [Engine]Engine.Point3::X
    IL_04b4:  add
    IL_04b5:  ldloc.s    V_31
    IL_04b7:  ldc.i4.1
    IL_04b8:  sub
    IL_04b9:  ldloc.s    V_40
    IL_04bb:  ldloc.s    V_17
    IL_04bd:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_04c2:  add
    IL_04c3:  ldloc.s    V_42
    IL_04c5:  callvirt   instance void Game.TerrainChunk::SetCellValueFast(int32,
                                                                           int32,
                                                                           int32,
                                                                           int32)
    IL_04ca:  ldarg.1
    IL_04cb:  ldloc.s    V_39
    IL_04cd:  ldloc.s    V_17
    IL_04cf:  ldfld      int32 [Engine]Engine.Point3::X
    IL_04d4:  sub
    IL_04d5:  ldloc.s    V_31
    IL_04d7:  ldc.i4.1
    IL_04d8:  sub
    IL_04d9:  ldloc.s    V_40
    IL_04db:  ldloc.s    V_17
    IL_04dd:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_04e2:  sub
    IL_04e3:  ldloc.s    V_43
    IL_04e5:  callvirt   instance void Game.TerrainChunk::SetCellValueFast(int32,
                                                                           int32,
                                                                           int32,
                                                                           int32)
    IL_04ea:  ldloc.s    V_38
    IL_04ec:  ldc.i4.m1
    IL_04ed:  bne.un.s   IL_051c

    IL_04ef:  ldloc.s    V_24
    IL_04f1:  ldc.i4.0
    IL_04f2:  ldc.i4.0
    IL_04f3:  ldloc.s    V_16
    IL_04f5:  ldc.i4.5
    IL_04f6:  call       int32 Game.CellFace::Point3ToFace(valuetype [Engine]Engine.Point3,
                                                           int32)
    IL_04fb:  call       int32 Game.CellFace::OppositeFace(int32)
    IL_0500:  call       int32 Game.StairsBlock::SetRotation(int32,
                                                             int32)
    IL_0505:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_050a:  stloc.s    V_44
    IL_050c:  ldarg.1
    IL_050d:  ldloc.s    V_39
    IL_050f:  ldloc.s    V_31
    IL_0511:  ldc.i4.1
    IL_0512:  sub
    IL_0513:  ldloc.s    V_40
    IL_0515:  ldloc.s    V_44
    IL_0517:  callvirt   instance void Game.TerrainChunk::SetCellValueFast(int32,
                                                                           int32,
                                                                           int32,
                                                                           int32)
    IL_051c:  ldloc.s    V_38
    IL_051e:  ldc.i4.2
    IL_051f:  bne.un     IL_0698

    IL_0524:  ldloc.s    V_24
    IL_0526:  ldc.i4.0
    IL_0527:  ldc.i4.0
    IL_0528:  ldloc.s    V_16
    IL_052a:  ldc.i4.5
    IL_052b:  call       int32 Game.CellFace::Point3ToFace(valuetype [Engine]Engine.Point3,
                                                           int32)
    IL_0530:  call       int32 Game.StairsBlock::SetRotation(int32,
                                                             int32)
    IL_0535:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_053a:  stloc.s    V_45
    IL_053c:  ldarg.1
    IL_053d:  ldloc.s    V_39
    IL_053f:  ldloc.s    V_31
    IL_0541:  ldc.i4.1
    IL_0542:  sub
    IL_0543:  ldloc.s    V_40
    IL_0545:  ldloc.s    V_45
    IL_0547:  callvirt   instance void Game.TerrainChunk::SetCellValueFast(int32,
                                                                           int32,
                                                                           int32,
                                                                           int32)
    IL_054c:  br         IL_0698

    IL_0551:  ldloc.s    V_27
    IL_0553:  ldc.r4     0.40000001
    IL_0558:  bge.un     IL_05e3

    IL_055d:  ldarg.1
    IL_055e:  ldloc.s    V_39
    IL_0560:  ldloc.s    V_17
    IL_0562:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0567:  add
    IL_0568:  ldloc.s    V_31
    IL_056a:  ldc.i4.1
    IL_056b:  sub
    IL_056c:  ldloc.s    V_40
    IL_056e:  ldloc.s    V_17
    IL_0570:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0575:  add
    IL_0576:  ldloc.s    V_25
    IL_0578:  call       int32 Game.Terrain::MakeBlockValue(int32)
    IL_057d:  callvirt   instance void Game.TerrainChunk::SetCellValueFast(int32,
                                                                           int32,
                                                                           int32,
                                                                           int32)
    IL_0582:  ldarg.1
    IL_0583:  ldloc.s    V_39
    IL_0585:  ldloc.s    V_17
    IL_0587:  ldfld      int32 [Engine]Engine.Point3::X
    IL_058c:  sub
    IL_058d:  ldloc.s    V_31
    IL_058f:  ldc.i4.1
    IL_0590:  sub
    IL_0591:  ldloc.s    V_40
    IL_0593:  ldloc.s    V_17
    IL_0595:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_059a:  sub
    IL_059b:  ldloc.s    V_25
    IL_059d:  call       int32 Game.Terrain::MakeBlockValue(int32)
    IL_05a2:  callvirt   instance void Game.TerrainChunk::SetCellValueFast(int32,
                                                                           int32,
                                                                           int32,
                                                                           int32)
    IL_05a7:  ldloc.s    V_38
    IL_05a9:  ldc.i4.m1
    IL_05aa:  bne.un.s   IL_05c1

    IL_05ac:  ldarg.1
    IL_05ad:  ldloc.s    V_39
    IL_05af:  ldloc.s    V_31
    IL_05b1:  ldc.i4.1
    IL_05b2:  sub
    IL_05b3:  ldloc.s    V_40
    IL_05b5:  ldloc.s    V_25
    IL_05b7:  call       int32 Game.Terrain::MakeBlockValue(int32)
    IL_05bc:  callvirt   instance void Game.TerrainChunk::SetCellValueFast(int32,
                                                                           int32,
                                                                           int32,
                                                                           int32)
    IL_05c1:  ldloc.s    V_38
    IL_05c3:  ldc.i4.2
    IL_05c4:  bne.un     IL_0698

    IL_05c9:  ldarg.1
    IL_05ca:  ldloc.s    V_39
    IL_05cc:  ldloc.s    V_31
    IL_05ce:  ldc.i4.1
    IL_05cf:  sub
    IL_05d0:  ldloc.s    V_40
    IL_05d2:  ldloc.s    V_25
    IL_05d4:  call       int32 Game.Terrain::MakeBlockValue(int32)
    IL_05d9:  callvirt   instance void Game.TerrainChunk::SetCellValueFast(int32,
                                                                           int32,
                                                                           int32,
                                                                           int32)
    IL_05de:  br         IL_0698

    IL_05e3:  ldloc.s    V_27
    IL_05e5:  ldc.r4     0.60000002
    IL_05ea:  bge.un     IL_0698

    IL_05ef:  ldloc.s    V_38
    IL_05f1:  brfalse.s  IL_05f8

    IL_05f3:  ldloc.s    V_38
    IL_05f5:  ldc.i4.1
    IL_05f6:  bne.un.s   IL_0659

    IL_05f8:  ldarg.1
    IL_05f9:  ldloc.s    V_39
    IL_05fb:  ldloc.s    V_17
    IL_05fd:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0602:  add
    IL_0603:  ldloc.s    V_31
    IL_0605:  ldc.i4.1
    IL_0606:  sub
    IL_0607:  ldloc.s    V_40
    IL_0609:  ldloc.s    V_17
    IL_060b:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0610:  add
    IL_0611:  ldc.i4.s   31
    IL_0613:  ldc.i4.0
    IL_0614:  ldloc.s    V_17
    IL_0616:  ldc.i4.5
    IL_0617:  call       int32 Game.CellFace::Point3ToFace(valuetype [Engine]Engine.Point3,
                                                           int32)
    IL_061c:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_0621:  callvirt   instance void Game.TerrainChunk::SetCellValueFast(int32,
                                                                           int32,
                                                                           int32,
                                                                           int32)
    IL_0626:  ldarg.1
    IL_0627:  ldloc.s    V_39
    IL_0629:  ldloc.s    V_17
    IL_062b:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0630:  sub
    IL_0631:  ldloc.s    V_31
    IL_0633:  ldc.i4.1
    IL_0634:  sub
    IL_0635:  ldloc.s    V_40
    IL_0637:  ldloc.s    V_17
    IL_0639:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_063e:  sub
    IL_063f:  ldc.i4.s   31
    IL_0641:  ldc.i4.0
    IL_0642:  ldloc.s    V_17
    IL_0644:  ldc.i4.5
    IL_0645:  call       int32 Game.CellFace::Point3ToFace(valuetype [Engine]Engine.Point3,
                                                           int32)
    IL_064a:  call       int32 Game.CellFace::OppositeFace(int32)
    IL_064f:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_0654:  callvirt   instance void Game.TerrainChunk::SetCellValueFast(int32,
                                                                           int32,
                                                                           int32,
                                                                           int32)
    IL_0659:  ldloc.s    V_38
    IL_065b:  ldc.i4.m1
    IL_065c:  bne.un.s   IL_067b

    IL_065e:  ldarg.1
    IL_065f:  ldloc.s    V_39
    IL_0661:  ldloc.s    V_31
    IL_0663:  ldc.i4.1
    IL_0664:  sub
    IL_0665:  ldloc.s    V_40
    IL_0667:  ldc.i4.s   31
    IL_0669:  ldc.i4.0
    IL_066a:  ldloc.s    V_15
    IL_066c:  call       int32 Game.CellFace::OppositeFace(int32)
    IL_0671:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_0676:  callvirt   instance void Game.TerrainChunk::SetCellValueFast(int32,
                                                                           int32,
                                                                           int32,
                                                                           int32)
    IL_067b:  ldloc.s    V_38
    IL_067d:  ldc.i4.2
    IL_067e:  bne.un.s   IL_0698

    IL_0680:  ldarg.1
    IL_0681:  ldloc.s    V_39
    IL_0683:  ldloc.s    V_31
    IL_0685:  ldc.i4.1
    IL_0686:  sub
    IL_0687:  ldloc.s    V_40
    IL_0689:  ldc.i4.s   31
    IL_068b:  ldc.i4.0
    IL_068c:  ldloc.s    V_15
    IL_068e:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_0693:  callvirt   instance void Game.TerrainChunk::SetCellValueFast(int32,
                                                                           int32,
                                                                           int32,
                                                                           int32)
    IL_0698:  ldloc.s    V_38
    IL_069a:  ldc.i4.1
    IL_069b:  add
    IL_069c:  stloc.s    V_38
    IL_069e:  ldloc.s    V_38
    IL_06a0:  ldloc.s    V_30
    IL_06a2:  ble        IL_0373

    IL_06a7:  br.s       IL_06b7

    IL_06a9:  ldloc.s    V_14
    IL_06ab:  ldc.i4.1
    IL_06ac:  add
    IL_06ad:  stloc.s    V_14
    IL_06af:  ldloc.s    V_14
    IL_06b1:  ldc.i4.4
    IL_06b2:  blt        IL_012e

    IL_06b7:  ldloc.s    V_9
    IL_06b9:  ldc.i4.1
    IL_06ba:  add
    IL_06bb:  stloc.s    V_9
    IL_06bd:  ldloc.s    V_9
    IL_06bf:  ldloc.s    V_7
    IL_06c1:  blt        IL_00e2

    IL_06c6:  ldloc.s    V_4
    IL_06c8:  ldc.i4.1
    IL_06c9:  add
    IL_06ca:  stloc.s    V_4
    IL_06cc:  ldloc.s    V_4
    IL_06ce:  ldloc.3
    IL_06cf:  blt        IL_0095

    IL_06d4:  ret
  } // end of method TerrainContentsGenerator::GenerateGraves

  .method private hidebysig instance void 
          GenerateSnowAndIce(class Game.TerrainChunk chunk) cil managed
  {
    // 代码大小       358 (0x166)
    .maxstack  8
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             float32 V_7,
             int32 V_8)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  br         IL_015d

    IL_0007:  ldc.i4.0
    IL_0008:  stloc.1
    IL_0009:  br         IL_0151

    IL_000e:  ldloc.0
    IL_000f:  ldarg.1
    IL_0010:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_0015:  ldfld      int32 [Engine]Engine.Point2::X
    IL_001a:  add
    IL_001b:  stloc.2
    IL_001c:  ldloc.1
    IL_001d:  ldarg.1
    IL_001e:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_0023:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0028:  add
    IL_0029:  stloc.3
    IL_002a:  ldc.i4.s   126
    IL_002c:  stloc.s    V_4
    IL_002e:  br         IL_0145

    IL_0033:  ldarg.1
    IL_0034:  ldloc.0
    IL_0035:  ldloc.s    V_4
    IL_0037:  ldloc.1
    IL_0038:  callvirt   instance int32 Game.TerrainChunk::GetCellValueFast(int32,
                                                                            int32,
                                                                            int32)
    IL_003d:  stloc.s    V_5
    IL_003f:  ldloc.s    V_5
    IL_0041:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0046:  stloc.s    V_6
    IL_0048:  ldloc.s    V_6
    IL_004a:  brfalse    IL_013f

    IL_004f:  ldarg.1
    IL_0050:  ldloc.0
    IL_0051:  ldloc.1
    IL_0052:  callvirt   instance int32 Game.TerrainChunk::GetTemperatureFast(int32,
                                                                              int32)
    IL_0057:  ldloc.s    V_4
    IL_0059:  call       bool Game.SubsystemWeather::IsPlaceFrozen(int32,
                                                                   int32)
    IL_005e:  brfalse    IL_014d

    IL_0063:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0068:  ldloc.s    V_6
    IL_006a:  ldelem.ref
    IL_006b:  isinst     Game.WaterBlock
    IL_0070:  brfalse    IL_010f

    IL_0075:  ldarg.0
    IL_0076:  ldloc.2
    IL_0077:  conv.r4
    IL_0078:  ldloc.3
    IL_0079:  conv.r4
    IL_007a:  call       instance float32 Game.TerrainContentsGenerator::CalculateOceanShoreDistance(float32,
                                                                                                     float32)
    IL_007f:  ldc.r4     -20.
    IL_0084:  ble.un     IL_0126

    IL_0089:  ldc.i4.1
    IL_008a:  ldc.r4     2.
    IL_008f:  ldloc.2
    IL_0090:  conv.r4
    IL_0091:  ldloc.3
    IL_0092:  conv.r4
    IL_0093:  ldc.r4     0.2
    IL_0098:  ldc.i4.1
    IL_0099:  ldc.r4     2.
    IL_009e:  ldc.r4     1.
    IL_00a3:  call       float32 Game.SimplexNoise::OctavedNoise(float32,
                                                                 float32,
                                                                 float32,
                                                                 int32,
                                                                 float32,
                                                                 float32)
    IL_00a8:  call       float32 [Engine]Engine.MathUtils::Sqr(float32)
    IL_00ad:  mul
    IL_00ae:  conv.i4
    IL_00af:  add
    IL_00b0:  conv.r4
    IL_00b1:  stloc.s    V_7
    IL_00b3:  ldc.i4.0
    IL_00b4:  stloc.s    V_8
    IL_00b6:  br.s       IL_00ef

    IL_00b8:  ldloc.s    V_4
    IL_00ba:  ldloc.s    V_8
    IL_00bc:  sub
    IL_00bd:  ldc.i4.0
    IL_00be:  ble.s      IL_00e9

    IL_00c0:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_00c5:  ldarg.1
    IL_00c6:  ldloc.0
    IL_00c7:  ldloc.s    V_4
    IL_00c9:  ldloc.s    V_8
    IL_00cb:  sub
    IL_00cc:  ldloc.1
    IL_00cd:  callvirt   instance int32 Game.TerrainChunk::GetCellContentsFast(int32,
                                                                               int32,
                                                                               int32)
    IL_00d2:  ldelem.ref
    IL_00d3:  isinst     Game.WaterBlock
    IL_00d8:  brfalse.s  IL_00f6

    IL_00da:  ldarg.1
    IL_00db:  ldloc.0
    IL_00dc:  ldloc.s    V_4
    IL_00de:  ldloc.s    V_8
    IL_00e0:  sub
    IL_00e1:  ldloc.1
    IL_00e2:  ldc.i4.s   62
    IL_00e4:  callvirt   instance void Game.TerrainChunk::SetCellValueFast(int32,
                                                                           int32,
                                                                           int32,
                                                                           int32)
    IL_00e9:  ldloc.s    V_8
    IL_00eb:  ldc.i4.1
    IL_00ec:  add
    IL_00ed:  stloc.s    V_8
    IL_00ef:  ldloc.s    V_8
    IL_00f1:  conv.r4
    IL_00f2:  ldloc.s    V_7
    IL_00f4:  blt.s      IL_00b8

    IL_00f6:  ldloc.0
    IL_00f7:  ldloc.1
    IL_00f8:  call       bool Game.SubsystemWeather::ShaftHasSnowOnIce(int32,
                                                                       int32)
    IL_00fd:  brfalse.s  IL_0126

    IL_00ff:  ldarg.1
    IL_0100:  ldloc.0
    IL_0101:  ldloc.s    V_4
    IL_0103:  ldc.i4.1
    IL_0104:  add
    IL_0105:  ldloc.1
    IL_0106:  ldc.i4.s   61
    IL_0108:  callvirt   instance void Game.TerrainChunk::SetCellValueFast(int32,
                                                                           int32,
                                                                           int32,
                                                                           int32)
    IL_010d:  br.s       IL_0126

    IL_010f:  ldloc.s    V_5
    IL_0111:  call       bool Game.SubsystemSnowBlockBehavior::CanSupportSnow(int32)
    IL_0116:  brfalse.s  IL_0126

    IL_0118:  ldarg.1
    IL_0119:  ldloc.0
    IL_011a:  ldloc.s    V_4
    IL_011c:  ldc.i4.1
    IL_011d:  add
    IL_011e:  ldloc.1
    IL_011f:  ldc.i4.s   61
    IL_0121:  callvirt   instance void Game.TerrainChunk::SetCellValueFast(int32,
                                                                           int32,
                                                                           int32,
                                                                           int32)
    IL_0126:  ldloc.s    V_6
    IL_0128:  ldc.i4.8
    IL_0129:  bne.un.s   IL_014d

    IL_012b:  ldarg.1
    IL_012c:  ldloc.0
    IL_012d:  ldloc.s    V_4
    IL_012f:  ldloc.1
    IL_0130:  ldc.i4.8
    IL_0131:  ldc.i4.0
    IL_0132:  ldc.i4.1
    IL_0133:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_0138:  callvirt   instance void Game.TerrainChunk::SetCellValueFast(int32,
                                                                           int32,
                                                                           int32,
                                                                           int32)
    IL_013d:  br.s       IL_014d

    IL_013f:  ldloc.s    V_4
    IL_0141:  ldc.i4.1
    IL_0142:  sub
    IL_0143:  stloc.s    V_4
    IL_0145:  ldloc.s    V_4
    IL_0147:  ldc.i4.0
    IL_0148:  bge        IL_0033

    IL_014d:  ldloc.1
    IL_014e:  ldc.i4.1
    IL_014f:  add
    IL_0150:  stloc.1
    IL_0151:  ldloc.1
    IL_0152:  ldc.i4.s   16
    IL_0154:  blt        IL_000e

    IL_0159:  ldloc.0
    IL_015a:  ldc.i4.1
    IL_015b:  add
    IL_015c:  stloc.0
    IL_015d:  ldloc.0
    IL_015e:  ldc.i4.s   16
    IL_0160:  blt        IL_0007

    IL_0165:  ret
  } // end of method TerrainContentsGenerator::GenerateSnowAndIce

  .method private hidebysig instance void 
          PropagateFluidsDownwards(class Game.TerrainChunk chunk) cil managed
  {
    // 代码大小       104 (0x68)
    .maxstack  3
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  br.s       IL_0062

    IL_0004:  ldc.i4.0
    IL_0005:  stloc.1
    IL_0006:  br.s       IL_0059

    IL_0008:  ldloc.0
    IL_0009:  ldc.i4.s   127
    IL_000b:  ldloc.1
    IL_000c:  call       int32 Game.TerrainChunk::CalculateCellIndex(int32,
                                                                     int32,
                                                                     int32)
    IL_0011:  stloc.2
    IL_0012:  ldc.i4.0
    IL_0013:  stloc.3
    IL_0014:  ldc.i4.s   127
    IL_0016:  stloc.s    V_4
    IL_0018:  br.s       IL_0050

    IL_001a:  ldarg.1
    IL_001b:  ldloc.2
    IL_001c:  callvirt   instance int32 Game.TerrainChunk::GetCellValueFast(int32)
    IL_0021:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0026:  stloc.s    V_5
    IL_0028:  ldloc.s    V_5
    IL_002a:  brtrue.s   IL_0043

    IL_002c:  ldloc.3
    IL_002d:  brfalse.s  IL_0043

    IL_002f:  call       class Game.FluidBlock[] Game.BlocksManager::get_FluidBlocks()
    IL_0034:  ldloc.3
    IL_0035:  ldelem.ref
    IL_0036:  brfalse.s  IL_0043

    IL_0038:  ldarg.1
    IL_0039:  ldloc.2
    IL_003a:  ldloc.3
    IL_003b:  callvirt   instance void Game.TerrainChunk::SetCellValueFast(int32,
                                                                           int32)
    IL_0040:  ldloc.3
    IL_0041:  stloc.s    V_5
    IL_0043:  ldloc.s    V_5
    IL_0045:  stloc.3
    IL_0046:  ldloc.s    V_4
    IL_0048:  ldc.i4.1
    IL_0049:  sub
    IL_004a:  stloc.s    V_4
    IL_004c:  ldloc.2
    IL_004d:  ldc.i4.1
    IL_004e:  sub
    IL_004f:  stloc.2
    IL_0050:  ldloc.s    V_4
    IL_0052:  ldc.i4.0
    IL_0053:  bge.s      IL_001a

    IL_0055:  ldloc.1
    IL_0056:  ldc.i4.1
    IL_0057:  add
    IL_0058:  stloc.1
    IL_0059:  ldloc.1
    IL_005a:  ldc.i4.s   16
    IL_005c:  blt.s      IL_0008

    IL_005e:  ldloc.0
    IL_005f:  ldc.i4.1
    IL_0060:  add
    IL_0061:  stloc.0
    IL_0062:  ldloc.0
    IL_0063:  ldc.i4.s   16
    IL_0065:  blt.s      IL_0004

    IL_0067:  ret
  } // end of method TerrainContentsGenerator::PropagateFluidsDownwards

  .method private hidebysig instance void 
          UpdateFluidIsTop(class Game.TerrainChunk chunk) cil managed
  {
    // 代码大小       140 (0x8c)
    .maxstack  6
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  br.s       IL_0083

    IL_0004:  ldc.i4.0
    IL_0005:  stloc.1
    IL_0006:  br.s       IL_007a

    IL_0008:  ldloc.0
    IL_0009:  ldc.i4.s   127
    IL_000b:  ldloc.1
    IL_000c:  call       int32 Game.TerrainChunk::CalculateCellIndex(int32,
                                                                     int32,
                                                                     int32)
    IL_0011:  stloc.2
    IL_0012:  ldc.i4.0
    IL_0013:  stloc.3
    IL_0014:  ldc.i4.s   127
    IL_0016:  stloc.s    V_4
    IL_0018:  br.s       IL_0071

    IL_001a:  ldarg.1
    IL_001b:  ldloc.2
    IL_001c:  callvirt   instance int32 Game.TerrainChunk::GetCellValueFast(int32)
    IL_0021:  stloc.s    V_5
    IL_0023:  ldloc.s    V_5
    IL_0025:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_002a:  stloc.s    V_6
    IL_002c:  ldloc.s    V_6
    IL_002e:  ldloc.3
    IL_002f:  beq.s      IL_0064

    IL_0031:  call       class Game.FluidBlock[] Game.BlocksManager::get_FluidBlocks()
    IL_0036:  ldloc.s    V_6
    IL_0038:  ldelem.ref
    IL_0039:  brfalse.s  IL_0064

    IL_003b:  call       class Game.FluidBlock[] Game.BlocksManager::get_FluidBlocks()
    IL_0040:  ldloc.3
    IL_0041:  ldelem.ref
    IL_0042:  brtrue.s   IL_0064

    IL_0044:  ldloc.s    V_5
    IL_0046:  call       int32 Game.Terrain::ExtractData(int32)
    IL_004b:  stloc.s    V_7
    IL_004d:  ldarg.1
    IL_004e:  ldloc.2
    IL_004f:  ldloc.s    V_6
    IL_0051:  ldc.i4.0
    IL_0052:  ldloc.s    V_7
    IL_0054:  ldc.i4.1
    IL_0055:  call       int32 Game.FluidBlock::SetIsTop(int32,
                                                         bool)
    IL_005a:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_005f:  callvirt   instance void Game.TerrainChunk::SetCellValueFast(int32,
                                                                           int32)
    IL_0064:  ldloc.s    V_6
    IL_0066:  stloc.3
    IL_0067:  ldloc.s    V_4
    IL_0069:  ldc.i4.1
    IL_006a:  sub
    IL_006b:  stloc.s    V_4
    IL_006d:  ldloc.2
    IL_006e:  ldc.i4.1
    IL_006f:  sub
    IL_0070:  stloc.2
    IL_0071:  ldloc.s    V_4
    IL_0073:  ldc.i4.0
    IL_0074:  bge.s      IL_001a

    IL_0076:  ldloc.1
    IL_0077:  ldc.i4.1
    IL_0078:  add
    IL_0079:  stloc.1
    IL_007a:  ldloc.1
    IL_007b:  ldc.i4.s   16
    IL_007d:  blt.s      IL_0008

    IL_007f:  ldloc.0
    IL_0080:  ldc.i4.1
    IL_0081:  add
    IL_0082:  stloc.0
    IL_0083:  ldloc.0
    IL_0084:  ldc.i4.s   16
    IL_0086:  blt        IL_0004

    IL_008b:  ret
  } // end of method TerrainContentsGenerator::UpdateFluidIsTop

  .method private hidebysig static void  CreateBrushes() cil managed
  {
    // 代码大小       4655 (0x122f)
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
    IL_000a:  br         IL_0111

    IL_000f:  newobj     instance void Game.TerrainBrush::.ctor()
    IL_0014:  stloc.s    V_4
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.4
    IL_0018:  ldc.i4.s   12
    IL_001a:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_001f:  stloc.s    V_5
    IL_0021:  ldc.i4.0
    IL_0022:  stloc.s    V_6
    IL_0024:  br         IL_00da

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
    IL_0070:  ldc.i4.3
    IL_0071:  ldc.i4.8
    IL_0072:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0077:  stloc.s    V_8
    IL_0079:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_007e:  stloc.s    V_9
    IL_0080:  ldc.i4.0
    IL_0081:  stloc.s    V_10
    IL_0083:  br.s       IL_00ce

    IL_0085:  ldloc.s    V_4
    IL_0087:  ldloc.s    V_9
    IL_0089:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_008e:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_0093:  conv.i4
    IL_0094:  ldloc.s    V_9
    IL_0096:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_009b:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_00a0:  conv.i4
    IL_00a1:  ldloc.s    V_9
    IL_00a3:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_00a8:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_00ad:  conv.i4
    IL_00ae:  ldc.i4.1
    IL_00af:  ldc.i4.1
    IL_00b0:  ldc.i4.1
    IL_00b1:  ldc.i4.s   16
    IL_00b3:  call       class Game.TerrainBrush/Brush Game.TerrainBrush/Brush::op_Implicit(int32)
    IL_00b8:  callvirt   instance void Game.TerrainBrush::AddBox(int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 class Game.TerrainBrush/Brush)
    IL_00bd:  ldloc.s    V_9
    IL_00bf:  ldloc.s    V_7
    IL_00c1:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00c6:  stloc.s    V_9
    IL_00c8:  ldloc.s    V_10
    IL_00ca:  ldc.i4.1
    IL_00cb:  add
    IL_00cc:  stloc.s    V_10
    IL_00ce:  ldloc.s    V_10
    IL_00d0:  ldloc.s    V_8
    IL_00d2:  blt.s      IL_0085

    IL_00d4:  ldloc.s    V_6
    IL_00d6:  ldc.i4.1
    IL_00d7:  add
    IL_00d8:  stloc.s    V_6
    IL_00da:  ldloc.s    V_6
    IL_00dc:  ldloc.s    V_5
    IL_00de:  blt        IL_0029

    IL_00e3:  ldloc.3
    IL_00e4:  brtrue.s   IL_00fa

    IL_00e6:  ldloc.s    V_4
    IL_00e8:  ldc.i4.0
    IL_00e9:  ldc.i4.0
    IL_00ea:  ldc.i4.0
    IL_00eb:  ldc.i4     0x96
    IL_00f0:  call       class Game.TerrainBrush/Brush Game.TerrainBrush/Brush::op_Implicit(int32)
    IL_00f5:  callvirt   instance void Game.TerrainBrush::AddCell(int32,
                                                                  int32,
                                                                  int32,
                                                                  class Game.TerrainBrush/Brush)
    IL_00fa:  ldloc.s    V_4
    IL_00fc:  callvirt   instance void Game.TerrainBrush::Compile()
    IL_0101:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_coalBrushes
    IL_0106:  ldloc.s    V_4
    IL_0108:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::Add(!0)
    IL_010d:  ldloc.3
    IL_010e:  ldc.i4.1
    IL_010f:  add
    IL_0110:  stloc.3
    IL_0111:  ldloc.3
    IL_0112:  ldc.i4.s   16
    IL_0114:  blt        IL_000f

    IL_0119:  ldc.i4.0
    IL_011a:  stloc.s    V_11
    IL_011c:  br         IL_020d

    IL_0121:  newobj     instance void Game.TerrainBrush::.ctor()
    IL_0126:  stloc.s    V_12
    IL_0128:  ldloc.0
    IL_0129:  ldc.i4.3
    IL_012a:  ldc.i4.7
    IL_012b:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0130:  stloc.s    V_13
    IL_0132:  ldc.i4.0
    IL_0133:  stloc.s    V_14
    IL_0135:  br         IL_01eb

    IL_013a:  ldc.r4     0.5
    IL_013f:  ldloc.0
    IL_0140:  ldc.r4     -1.
    IL_0145:  ldc.r4     1.
    IL_014a:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_014f:  ldloc.0
    IL_0150:  ldc.r4     -1.
    IL_0155:  ldc.r4     1.
    IL_015a:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_015f:  ldloc.0
    IL_0160:  ldc.r4     -1.
    IL_0165:  ldc.r4     1.
    IL_016a:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_016f:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0174:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0179:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_017e:  stloc.s    V_15
    IL_0180:  ldloc.0
    IL_0181:  ldc.i4.3
    IL_0182:  ldc.i4.6
    IL_0183:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0188:  stloc.s    V_16
    IL_018a:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_018f:  stloc.s    V_17
    IL_0191:  ldc.i4.0
    IL_0192:  stloc.s    V_18
    IL_0194:  br.s       IL_01df

    IL_0196:  ldloc.s    V_12
    IL_0198:  ldloc.s    V_17
    IL_019a:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_019f:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_01a4:  conv.i4
    IL_01a5:  ldloc.s    V_17
    IL_01a7:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_01ac:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_01b1:  conv.i4
    IL_01b2:  ldloc.s    V_17
    IL_01b4:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_01b9:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_01be:  conv.i4
    IL_01bf:  ldc.i4.1
    IL_01c0:  ldc.i4.1
    IL_01c1:  ldc.i4.1
    IL_01c2:  ldc.i4.s   39
    IL_01c4:  call       class Game.TerrainBrush/Brush Game.TerrainBrush/Brush::op_Implicit(int32)
    IL_01c9:  callvirt   instance void Game.TerrainBrush::AddBox(int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 class Game.TerrainBrush/Brush)
    IL_01ce:  ldloc.s    V_17
    IL_01d0:  ldloc.s    V_15
    IL_01d2:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01d7:  stloc.s    V_17
    IL_01d9:  ldloc.s    V_18
    IL_01db:  ldc.i4.1
    IL_01dc:  add
    IL_01dd:  stloc.s    V_18
    IL_01df:  ldloc.s    V_18
    IL_01e1:  ldloc.s    V_16
    IL_01e3:  blt.s      IL_0196

    IL_01e5:  ldloc.s    V_14
    IL_01e7:  ldc.i4.1
    IL_01e8:  add
    IL_01e9:  stloc.s    V_14
    IL_01eb:  ldloc.s    V_14
    IL_01ed:  ldloc.s    V_13
    IL_01ef:  blt        IL_013a

    IL_01f4:  ldloc.s    V_12
    IL_01f6:  callvirt   instance void Game.TerrainBrush::Compile()
    IL_01fb:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_ironBrushes
    IL_0200:  ldloc.s    V_12
    IL_0202:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::Add(!0)
    IL_0207:  ldloc.s    V_11
    IL_0209:  ldc.i4.1
    IL_020a:  add
    IL_020b:  stloc.s    V_11
    IL_020d:  ldloc.s    V_11
    IL_020f:  ldc.i4.s   16
    IL_0211:  blt        IL_0121

    IL_0216:  ldc.i4.0
    IL_0217:  stloc.s    V_19
    IL_0219:  br         IL_030b

    IL_021e:  newobj     instance void Game.TerrainBrush::.ctor()
    IL_0223:  stloc.s    V_20
    IL_0225:  ldloc.0
    IL_0226:  ldc.i4.4
    IL_0227:  ldc.i4.s   10
    IL_0229:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_022e:  stloc.s    V_21
    IL_0230:  ldc.i4.0
    IL_0231:  stloc.s    V_22
    IL_0233:  br         IL_02e9

    IL_0238:  ldc.r4     0.5
    IL_023d:  ldloc.0
    IL_023e:  ldc.r4     -1.
    IL_0243:  ldc.r4     1.
    IL_0248:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_024d:  ldloc.0
    IL_024e:  ldc.r4     -2.
    IL_0253:  ldc.r4     2.
    IL_0258:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_025d:  ldloc.0
    IL_025e:  ldc.r4     -1.
    IL_0263:  ldc.r4     1.
    IL_0268:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_026d:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0272:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0277:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_027c:  stloc.s    V_23
    IL_027e:  ldloc.0
    IL_027f:  ldc.i4.3
    IL_0280:  ldc.i4.6
    IL_0281:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0286:  stloc.s    V_24
    IL_0288:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_028d:  stloc.s    V_25
    IL_028f:  ldc.i4.0
    IL_0290:  stloc.s    V_26
    IL_0292:  br.s       IL_02dd

    IL_0294:  ldloc.s    V_20
    IL_0296:  ldloc.s    V_25
    IL_0298:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_029d:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_02a2:  conv.i4
    IL_02a3:  ldloc.s    V_25
    IL_02a5:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_02aa:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_02af:  conv.i4
    IL_02b0:  ldloc.s    V_25
    IL_02b2:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_02b7:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_02bc:  conv.i4
    IL_02bd:  ldc.i4.1
    IL_02be:  ldc.i4.1
    IL_02bf:  ldc.i4.1
    IL_02c0:  ldc.i4.s   41
    IL_02c2:  call       class Game.TerrainBrush/Brush Game.TerrainBrush/Brush::op_Implicit(int32)
    IL_02c7:  callvirt   instance void Game.TerrainBrush::AddBox(int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 class Game.TerrainBrush/Brush)
    IL_02cc:  ldloc.s    V_25
    IL_02ce:  ldloc.s    V_23
    IL_02d0:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_02d5:  stloc.s    V_25
    IL_02d7:  ldloc.s    V_26
    IL_02d9:  ldc.i4.1
    IL_02da:  add
    IL_02db:  stloc.s    V_26
    IL_02dd:  ldloc.s    V_26
    IL_02df:  ldloc.s    V_24
    IL_02e1:  blt.s      IL_0294

    IL_02e3:  ldloc.s    V_22
    IL_02e5:  ldc.i4.1
    IL_02e6:  add
    IL_02e7:  stloc.s    V_22
    IL_02e9:  ldloc.s    V_22
    IL_02eb:  ldloc.s    V_21
    IL_02ed:  blt        IL_0238

    IL_02f2:  ldloc.s    V_20
    IL_02f4:  callvirt   instance void Game.TerrainBrush::Compile()
    IL_02f9:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_copperBrushes
    IL_02fe:  ldloc.s    V_20
    IL_0300:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::Add(!0)
    IL_0305:  ldloc.s    V_19
    IL_0307:  ldc.i4.1
    IL_0308:  add
    IL_0309:  stloc.s    V_19
    IL_030b:  ldloc.s    V_19
    IL_030d:  ldc.i4.s   16
    IL_030f:  blt        IL_021e

    IL_0314:  ldc.i4.0
    IL_0315:  stloc.s    V_27
    IL_0317:  br         IL_0409

    IL_031c:  newobj     instance void Game.TerrainBrush::.ctor()
    IL_0321:  stloc.s    V_28
    IL_0323:  ldloc.0
    IL_0324:  ldc.i4.8
    IL_0325:  ldc.i4.s   16
    IL_0327:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_032c:  stloc.s    V_29
    IL_032e:  ldc.i4.0
    IL_032f:  stloc.s    V_30
    IL_0331:  br         IL_03e7

    IL_0336:  ldc.r4     0.5
    IL_033b:  ldloc.0
    IL_033c:  ldc.r4     -1.
    IL_0341:  ldc.r4     1.
    IL_0346:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_034b:  ldloc.0
    IL_034c:  ldc.r4     -0.25
    IL_0351:  ldc.r4     0.25
    IL_0356:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_035b:  ldloc.0
    IL_035c:  ldc.r4     -1.
    IL_0361:  ldc.r4     1.
    IL_0366:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_036b:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0370:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0375:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_037a:  stloc.s    V_31
    IL_037c:  ldloc.0
    IL_037d:  ldc.i4.4
    IL_037e:  ldc.i4.8
    IL_037f:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0384:  stloc.s    V_32
    IL_0386:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_038b:  stloc.s    V_33
    IL_038d:  ldc.i4.0
    IL_038e:  stloc.s    V_34
    IL_0390:  br.s       IL_03db

    IL_0392:  ldloc.s    V_28
    IL_0394:  ldloc.s    V_33
    IL_0396:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_039b:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_03a0:  conv.i4
    IL_03a1:  ldloc.s    V_33
    IL_03a3:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_03a8:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_03ad:  conv.i4
    IL_03ae:  ldloc.s    V_33
    IL_03b0:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_03b5:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_03ba:  conv.i4
    IL_03bb:  ldc.i4.1
    IL_03bc:  ldc.i4.1
    IL_03bd:  ldc.i4.1
    IL_03be:  ldc.i4.s   100
    IL_03c0:  call       class Game.TerrainBrush/Brush Game.TerrainBrush/Brush::op_Implicit(int32)
    IL_03c5:  callvirt   instance void Game.TerrainBrush::AddBox(int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 class Game.TerrainBrush/Brush)
    IL_03ca:  ldloc.s    V_33
    IL_03cc:  ldloc.s    V_31
    IL_03ce:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_03d3:  stloc.s    V_33
    IL_03d5:  ldloc.s    V_34
    IL_03d7:  ldc.i4.1
    IL_03d8:  add
    IL_03d9:  stloc.s    V_34
    IL_03db:  ldloc.s    V_34
    IL_03dd:  ldloc.s    V_32
    IL_03df:  blt.s      IL_0392

    IL_03e1:  ldloc.s    V_30
    IL_03e3:  ldc.i4.1
    IL_03e4:  add
    IL_03e5:  stloc.s    V_30
    IL_03e7:  ldloc.s    V_30
    IL_03e9:  ldloc.s    V_29
    IL_03eb:  blt        IL_0336

    IL_03f0:  ldloc.s    V_28
    IL_03f2:  callvirt   instance void Game.TerrainBrush::Compile()
    IL_03f7:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_saltpeterBrushes
    IL_03fc:  ldloc.s    V_28
    IL_03fe:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::Add(!0)
    IL_0403:  ldloc.s    V_27
    IL_0405:  ldc.i4.1
    IL_0406:  add
    IL_0407:  stloc.s    V_27
    IL_0409:  ldloc.s    V_27
    IL_040b:  ldc.i4.s   16
    IL_040d:  blt        IL_031c

    IL_0412:  ldc.i4.0
    IL_0413:  stloc.s    V_35
    IL_0415:  br         IL_0507

    IL_041a:  newobj     instance void Game.TerrainBrush::.ctor()
    IL_041f:  stloc.s    V_36
    IL_0421:  ldloc.0
    IL_0422:  ldc.i4.4
    IL_0423:  ldc.i4.s   10
    IL_0425:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_042a:  stloc.s    V_37
    IL_042c:  ldc.i4.0
    IL_042d:  stloc.s    V_38
    IL_042f:  br         IL_04e5

    IL_0434:  ldc.r4     0.5
    IL_0439:  ldloc.0
    IL_043a:  ldc.r4     -1.
    IL_043f:  ldc.r4     1.
    IL_0444:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0449:  ldloc.0
    IL_044a:  ldc.r4     -1.
    IL_044f:  ldc.r4     1.
    IL_0454:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0459:  ldloc.0
    IL_045a:  ldc.r4     -1.
    IL_045f:  ldc.r4     1.
    IL_0464:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0469:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_046e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0473:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0478:  stloc.s    V_39
    IL_047a:  ldloc.0
    IL_047b:  ldc.i4.3
    IL_047c:  ldc.i4.6
    IL_047d:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0482:  stloc.s    V_40
    IL_0484:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_0489:  stloc.s    V_41
    IL_048b:  ldc.i4.0
    IL_048c:  stloc.s    V_42
    IL_048e:  br.s       IL_04d9

    IL_0490:  ldloc.s    V_36
    IL_0492:  ldloc.s    V_41
    IL_0494:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0499:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_049e:  conv.i4
    IL_049f:  ldloc.s    V_41
    IL_04a1:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_04a6:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_04ab:  conv.i4
    IL_04ac:  ldloc.s    V_41
    IL_04ae:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_04b3:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_04b8:  conv.i4
    IL_04b9:  ldc.i4.1
    IL_04ba:  ldc.i4.1
    IL_04bb:  ldc.i4.1
    IL_04bc:  ldc.i4.s   101
    IL_04be:  call       class Game.TerrainBrush/Brush Game.TerrainBrush/Brush::op_Implicit(int32)
    IL_04c3:  callvirt   instance void Game.TerrainBrush::AddBox(int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 class Game.TerrainBrush/Brush)
    IL_04c8:  ldloc.s    V_41
    IL_04ca:  ldloc.s    V_39
    IL_04cc:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_04d1:  stloc.s    V_41
    IL_04d3:  ldloc.s    V_42
    IL_04d5:  ldc.i4.1
    IL_04d6:  add
    IL_04d7:  stloc.s    V_42
    IL_04d9:  ldloc.s    V_42
    IL_04db:  ldloc.s    V_40
    IL_04dd:  blt.s      IL_0490

    IL_04df:  ldloc.s    V_38
    IL_04e1:  ldc.i4.1
    IL_04e2:  add
    IL_04e3:  stloc.s    V_38
    IL_04e5:  ldloc.s    V_38
    IL_04e7:  ldloc.s    V_37
    IL_04e9:  blt        IL_0434

    IL_04ee:  ldloc.s    V_36
    IL_04f0:  callvirt   instance void Game.TerrainBrush::Compile()
    IL_04f5:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_sulphurBrushes
    IL_04fa:  ldloc.s    V_36
    IL_04fc:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::Add(!0)
    IL_0501:  ldloc.s    V_35
    IL_0503:  ldc.i4.1
    IL_0504:  add
    IL_0505:  stloc.s    V_35
    IL_0507:  ldloc.s    V_35
    IL_0509:  ldc.i4.s   16
    IL_050b:  blt        IL_041a

    IL_0510:  ldc.i4.0
    IL_0511:  stloc.s    V_43
    IL_0513:  br         IL_0604

    IL_0518:  newobj     instance void Game.TerrainBrush::.ctor()
    IL_051d:  stloc.s    V_44
    IL_051f:  ldloc.0
    IL_0520:  ldc.i4.2
    IL_0521:  ldc.i4.6
    IL_0522:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0527:  stloc.s    V_45
    IL_0529:  ldc.i4.0
    IL_052a:  stloc.s    V_46
    IL_052c:  br         IL_05e2

    IL_0531:  ldc.r4     0.5
    IL_0536:  ldloc.0
    IL_0537:  ldc.r4     -1.
    IL_053c:  ldc.r4     1.
    IL_0541:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0546:  ldloc.0
    IL_0547:  ldc.r4     -1.
    IL_054c:  ldc.r4     1.
    IL_0551:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0556:  ldloc.0
    IL_0557:  ldc.r4     -1.
    IL_055c:  ldc.r4     1.
    IL_0561:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0566:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_056b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0570:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0575:  stloc.s    V_47
    IL_0577:  ldloc.0
    IL_0578:  ldc.i4.3
    IL_0579:  ldc.i4.6
    IL_057a:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_057f:  stloc.s    V_48
    IL_0581:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_0586:  stloc.s    V_49
    IL_0588:  ldc.i4.0
    IL_0589:  stloc.s    V_50
    IL_058b:  br.s       IL_05d6

    IL_058d:  ldloc.s    V_44
    IL_058f:  ldloc.s    V_49
    IL_0591:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0596:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_059b:  conv.i4
    IL_059c:  ldloc.s    V_49
    IL_059e:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_05a3:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_05a8:  conv.i4
    IL_05a9:  ldloc.s    V_49
    IL_05ab:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_05b0:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_05b5:  conv.i4
    IL_05b6:  ldc.i4.1
    IL_05b7:  ldc.i4.1
    IL_05b8:  ldc.i4.1
    IL_05b9:  ldc.i4.s   112
    IL_05bb:  call       class Game.TerrainBrush/Brush Game.TerrainBrush/Brush::op_Implicit(int32)
    IL_05c0:  callvirt   instance void Game.TerrainBrush::AddBox(int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 class Game.TerrainBrush/Brush)
    IL_05c5:  ldloc.s    V_49
    IL_05c7:  ldloc.s    V_47
    IL_05c9:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_05ce:  stloc.s    V_49
    IL_05d0:  ldloc.s    V_50
    IL_05d2:  ldc.i4.1
    IL_05d3:  add
    IL_05d4:  stloc.s    V_50
    IL_05d6:  ldloc.s    V_50
    IL_05d8:  ldloc.s    V_48
    IL_05da:  blt.s      IL_058d

    IL_05dc:  ldloc.s    V_46
    IL_05de:  ldc.i4.1
    IL_05df:  add
    IL_05e0:  stloc.s    V_46
    IL_05e2:  ldloc.s    V_46
    IL_05e4:  ldloc.s    V_45
    IL_05e6:  blt        IL_0531

    IL_05eb:  ldloc.s    V_44
    IL_05ed:  callvirt   instance void Game.TerrainBrush::Compile()
    IL_05f2:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_diamondBrushes
    IL_05f7:  ldloc.s    V_44
    IL_05f9:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::Add(!0)
    IL_05fe:  ldloc.s    V_43
    IL_0600:  ldc.i4.1
    IL_0601:  add
    IL_0602:  stloc.s    V_43
    IL_0604:  ldloc.s    V_43
    IL_0606:  ldc.i4.s   16
    IL_0608:  blt        IL_0518

    IL_060d:  ldc.i4.0
    IL_060e:  stloc.s    V_51
    IL_0610:  br         IL_0705

    IL_0615:  newobj     instance void Game.TerrainBrush::.ctor()
    IL_061a:  stloc.s    V_52
    IL_061c:  ldloc.0
    IL_061d:  ldc.i4.4
    IL_061e:  ldc.i4.s   10
    IL_0620:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0625:  stloc.s    V_53
    IL_0627:  ldc.i4.0
    IL_0628:  stloc.s    V_54
    IL_062a:  br         IL_06e3

    IL_062f:  ldc.r4     0.5
    IL_0634:  ldloc.0
    IL_0635:  ldc.r4     -1.
    IL_063a:  ldc.r4     1.
    IL_063f:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0644:  ldloc.0
    IL_0645:  ldc.r4     -1.
    IL_064a:  ldc.r4     1.
    IL_064f:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0654:  ldloc.0
    IL_0655:  ldc.r4     -1.
    IL_065a:  ldc.r4     1.
    IL_065f:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0664:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0669:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_066e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0673:  stloc.s    V_55
    IL_0675:  ldloc.0
    IL_0676:  ldc.i4.3
    IL_0677:  ldc.i4.6
    IL_0678:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_067d:  stloc.s    V_56
    IL_067f:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_0684:  stloc.s    V_57
    IL_0686:  ldc.i4.0
    IL_0687:  stloc.s    V_58
    IL_0689:  br.s       IL_06d7

    IL_068b:  ldloc.s    V_52
    IL_068d:  ldloc.s    V_57
    IL_068f:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0694:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_0699:  conv.i4
    IL_069a:  ldloc.s    V_57
    IL_069c:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_06a1:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_06a6:  conv.i4
    IL_06a7:  ldloc.s    V_57
    IL_06a9:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_06ae:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_06b3:  conv.i4
    IL_06b4:  ldc.i4.1
    IL_06b5:  ldc.i4.1
    IL_06b6:  ldc.i4.1
    IL_06b7:  ldc.i4     0x94
    IL_06bc:  call       class Game.TerrainBrush/Brush Game.TerrainBrush/Brush::op_Implicit(int32)
    IL_06c1:  callvirt   instance void Game.TerrainBrush::AddBox(int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 class Game.TerrainBrush/Brush)
    IL_06c6:  ldloc.s    V_57
    IL_06c8:  ldloc.s    V_55
    IL_06ca:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_06cf:  stloc.s    V_57
    IL_06d1:  ldloc.s    V_58
    IL_06d3:  ldc.i4.1
    IL_06d4:  add
    IL_06d5:  stloc.s    V_58
    IL_06d7:  ldloc.s    V_58
    IL_06d9:  ldloc.s    V_56
    IL_06db:  blt.s      IL_068b

    IL_06dd:  ldloc.s    V_54
    IL_06df:  ldc.i4.1
    IL_06e0:  add
    IL_06e1:  stloc.s    V_54
    IL_06e3:  ldloc.s    V_54
    IL_06e5:  ldloc.s    V_53
    IL_06e7:  blt        IL_062f

    IL_06ec:  ldloc.s    V_52
    IL_06ee:  callvirt   instance void Game.TerrainBrush::Compile()
    IL_06f3:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_germaniumBrushes
    IL_06f8:  ldloc.s    V_52
    IL_06fa:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::Add(!0)
    IL_06ff:  ldloc.s    V_51
    IL_0701:  ldc.i4.1
    IL_0702:  add
    IL_0703:  stloc.s    V_51
    IL_0705:  ldloc.s    V_51
    IL_0707:  ldc.i4.s   16
    IL_0709:  blt        IL_0615

    IL_070e:  ldc.i4.0
    IL_070f:  stloc.s    V_59
    IL_0711:  br         IL_0804

    IL_0716:  newobj     instance void Game.TerrainBrush::.ctor()
    IL_071b:  stloc.s    V_60
    IL_071d:  ldloc.0
    IL_071e:  ldc.i4.s   16
    IL_0720:  ldc.i4.s   32
    IL_0722:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0727:  stloc.s    V_61
    IL_0729:  ldc.i4.0
    IL_072a:  stloc.s    V_62
    IL_072c:  br         IL_07e2

    IL_0731:  ldc.r4     0.5
    IL_0736:  ldloc.0
    IL_0737:  ldc.r4     -1.
    IL_073c:  ldc.r4     1.
    IL_0741:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0746:  ldloc.0
    IL_0747:  ldc.r4     -0.75
    IL_074c:  ldc.r4     0.75
    IL_0751:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0756:  ldloc.0
    IL_0757:  ldc.r4     -1.
    IL_075c:  ldc.r4     1.
    IL_0761:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0766:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_076b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0770:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0775:  stloc.s    V_63
    IL_0777:  ldloc.0
    IL_0778:  ldc.i4.6
    IL_0779:  ldc.i4.s   12
    IL_077b:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0780:  stloc.s    V_64
    IL_0782:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_0787:  stloc.s    V_65
    IL_0789:  ldc.i4.0
    IL_078a:  stloc.s    V_66
    IL_078c:  br.s       IL_07d6

    IL_078e:  ldloc.s    V_60
    IL_0790:  ldloc.s    V_65
    IL_0792:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0797:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_079c:  conv.i4
    IL_079d:  ldloc.s    V_65
    IL_079f:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_07a4:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_07a9:  conv.i4
    IL_07aa:  ldloc.s    V_65
    IL_07ac:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_07b1:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_07b6:  conv.i4
    IL_07b7:  ldc.i4.1
    IL_07b8:  ldc.i4.1
    IL_07b9:  ldc.i4.1
    IL_07ba:  ldc.i4.2
    IL_07bb:  call       class Game.TerrainBrush/Brush Game.TerrainBrush/Brush::op_Implicit(int32)
    IL_07c0:  callvirt   instance void Game.TerrainBrush::AddBox(int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 class Game.TerrainBrush/Brush)
    IL_07c5:  ldloc.s    V_65
    IL_07c7:  ldloc.s    V_63
    IL_07c9:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_07ce:  stloc.s    V_65
    IL_07d0:  ldloc.s    V_66
    IL_07d2:  ldc.i4.1
    IL_07d3:  add
    IL_07d4:  stloc.s    V_66
    IL_07d6:  ldloc.s    V_66
    IL_07d8:  ldloc.s    V_64
    IL_07da:  blt.s      IL_078e

    IL_07dc:  ldloc.s    V_62
    IL_07de:  ldc.i4.1
    IL_07df:  add
    IL_07e0:  stloc.s    V_62
    IL_07e2:  ldloc.s    V_62
    IL_07e4:  ldloc.s    V_61
    IL_07e6:  blt        IL_0731

    IL_07eb:  ldloc.s    V_60
    IL_07ed:  callvirt   instance void Game.TerrainBrush::Compile()
    IL_07f2:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_dirtPocketBrushes
    IL_07f7:  ldloc.s    V_60
    IL_07f9:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::Add(!0)
    IL_07fe:  ldloc.s    V_59
    IL_0800:  ldc.i4.1
    IL_0801:  add
    IL_0802:  stloc.s    V_59
    IL_0804:  ldloc.s    V_59
    IL_0806:  ldc.i4.s   16
    IL_0808:  blt        IL_0716

    IL_080d:  ldc.i4.0
    IL_080e:  stloc.s    V_67
    IL_0810:  br         IL_0903

    IL_0815:  newobj     instance void Game.TerrainBrush::.ctor()
    IL_081a:  stloc.s    V_68
    IL_081c:  ldloc.0
    IL_081d:  ldc.i4.s   16
    IL_081f:  ldc.i4.s   32
    IL_0821:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0826:  stloc.s    V_69
    IL_0828:  ldc.i4.0
    IL_0829:  stloc.s    V_70
    IL_082b:  br         IL_08e1

    IL_0830:  ldc.r4     0.5
    IL_0835:  ldloc.0
    IL_0836:  ldc.r4     -1.
    IL_083b:  ldc.r4     1.
    IL_0840:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0845:  ldloc.0
    IL_0846:  ldc.r4     -0.75
    IL_084b:  ldc.r4     0.75
    IL_0850:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0855:  ldloc.0
    IL_0856:  ldc.r4     -1.
    IL_085b:  ldc.r4     1.
    IL_0860:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0865:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_086a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_086f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0874:  stloc.s    V_71
    IL_0876:  ldloc.0
    IL_0877:  ldc.i4.6
    IL_0878:  ldc.i4.s   12
    IL_087a:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_087f:  stloc.s    V_72
    IL_0881:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_0886:  stloc.s    V_73
    IL_0888:  ldc.i4.0
    IL_0889:  stloc.s    V_74
    IL_088b:  br.s       IL_08d5

    IL_088d:  ldloc.s    V_68
    IL_088f:  ldloc.s    V_73
    IL_0891:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0896:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_089b:  conv.i4
    IL_089c:  ldloc.s    V_73
    IL_089e:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_08a3:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_08a8:  conv.i4
    IL_08a9:  ldloc.s    V_73
    IL_08ab:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_08b0:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_08b5:  conv.i4
    IL_08b6:  ldc.i4.1
    IL_08b7:  ldc.i4.1
    IL_08b8:  ldc.i4.1
    IL_08b9:  ldc.i4.6
    IL_08ba:  call       class Game.TerrainBrush/Brush Game.TerrainBrush/Brush::op_Implicit(int32)
    IL_08bf:  callvirt   instance void Game.TerrainBrush::AddBox(int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 class Game.TerrainBrush/Brush)
    IL_08c4:  ldloc.s    V_73
    IL_08c6:  ldloc.s    V_71
    IL_08c8:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_08cd:  stloc.s    V_73
    IL_08cf:  ldloc.s    V_74
    IL_08d1:  ldc.i4.1
    IL_08d2:  add
    IL_08d3:  stloc.s    V_74
    IL_08d5:  ldloc.s    V_74
    IL_08d7:  ldloc.s    V_72
    IL_08d9:  blt.s      IL_088d

    IL_08db:  ldloc.s    V_70
    IL_08dd:  ldc.i4.1
    IL_08de:  add
    IL_08df:  stloc.s    V_70
    IL_08e1:  ldloc.s    V_70
    IL_08e3:  ldloc.s    V_69
    IL_08e5:  blt        IL_0830

    IL_08ea:  ldloc.s    V_68
    IL_08ec:  callvirt   instance void Game.TerrainBrush::Compile()
    IL_08f1:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_gravelPocketBrushes
    IL_08f6:  ldloc.s    V_68
    IL_08f8:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::Add(!0)
    IL_08fd:  ldloc.s    V_67
    IL_08ff:  ldc.i4.1
    IL_0900:  add
    IL_0901:  stloc.s    V_67
    IL_0903:  ldloc.s    V_67
    IL_0905:  ldc.i4.s   16
    IL_0907:  blt        IL_0815

    IL_090c:  ldc.i4.0
    IL_090d:  stloc.s    V_75
    IL_090f:  br         IL_0a03

    IL_0914:  newobj     instance void Game.TerrainBrush::.ctor()
    IL_0919:  stloc.s    V_76
    IL_091b:  ldloc.0
    IL_091c:  ldc.i4.s   16
    IL_091e:  ldc.i4.s   32
    IL_0920:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0925:  stloc.s    V_77
    IL_0927:  ldc.i4.0
    IL_0928:  stloc.s    V_78
    IL_092a:  br         IL_09e1

    IL_092f:  ldc.r4     0.5
    IL_0934:  ldloc.0
    IL_0935:  ldc.r4     -1.
    IL_093a:  ldc.r4     1.
    IL_093f:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0944:  ldloc.0
    IL_0945:  ldc.r4     -0.75
    IL_094a:  ldc.r4     0.75
    IL_094f:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0954:  ldloc.0
    IL_0955:  ldc.r4     -1.
    IL_095a:  ldc.r4     1.
    IL_095f:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0964:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0969:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_096e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0973:  stloc.s    V_79
    IL_0975:  ldloc.0
    IL_0976:  ldc.i4.6
    IL_0977:  ldc.i4.s   12
    IL_0979:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_097e:  stloc.s    V_80
    IL_0980:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_0985:  stloc.s    V_81
    IL_0987:  ldc.i4.0
    IL_0988:  stloc.s    V_82
    IL_098a:  br.s       IL_09d5

    IL_098c:  ldloc.s    V_76
    IL_098e:  ldloc.s    V_81
    IL_0990:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0995:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_099a:  conv.i4
    IL_099b:  ldloc.s    V_81
    IL_099d:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_09a2:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_09a7:  conv.i4
    IL_09a8:  ldloc.s    V_81
    IL_09aa:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_09af:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_09b4:  conv.i4
    IL_09b5:  ldc.i4.1
    IL_09b6:  ldc.i4.1
    IL_09b7:  ldc.i4.1
    IL_09b8:  ldc.i4.s   66
    IL_09ba:  call       class Game.TerrainBrush/Brush Game.TerrainBrush/Brush::op_Implicit(int32)
    IL_09bf:  callvirt   instance void Game.TerrainBrush::AddBox(int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 class Game.TerrainBrush/Brush)
    IL_09c4:  ldloc.s    V_81
    IL_09c6:  ldloc.s    V_79
    IL_09c8:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_09cd:  stloc.s    V_81
    IL_09cf:  ldloc.s    V_82
    IL_09d1:  ldc.i4.1
    IL_09d2:  add
    IL_09d3:  stloc.s    V_82
    IL_09d5:  ldloc.s    V_82
    IL_09d7:  ldloc.s    V_80
    IL_09d9:  blt.s      IL_098c

    IL_09db:  ldloc.s    V_78
    IL_09dd:  ldc.i4.1
    IL_09de:  add
    IL_09df:  stloc.s    V_78
    IL_09e1:  ldloc.s    V_78
    IL_09e3:  ldloc.s    V_77
    IL_09e5:  blt        IL_092f

    IL_09ea:  ldloc.s    V_76
    IL_09ec:  callvirt   instance void Game.TerrainBrush::Compile()
    IL_09f1:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_limestonePocketBrushes
    IL_09f6:  ldloc.s    V_76
    IL_09f8:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::Add(!0)
    IL_09fd:  ldloc.s    V_75
    IL_09ff:  ldc.i4.1
    IL_0a00:  add
    IL_0a01:  stloc.s    V_75
    IL_0a03:  ldloc.s    V_75
    IL_0a05:  ldc.i4.s   16
    IL_0a07:  blt        IL_0914

    IL_0a0c:  ldc.i4.0
    IL_0a0d:  stloc.s    V_83
    IL_0a0f:  br         IL_0b03

    IL_0a14:  newobj     instance void Game.TerrainBrush::.ctor()
    IL_0a19:  stloc.s    V_84
    IL_0a1b:  ldloc.0
    IL_0a1c:  ldc.i4.s   16
    IL_0a1e:  ldc.i4.s   32
    IL_0a20:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0a25:  stloc.s    V_85
    IL_0a27:  ldc.i4.0
    IL_0a28:  stloc.s    V_86
    IL_0a2a:  br         IL_0ae1

    IL_0a2f:  ldc.r4     0.5
    IL_0a34:  ldloc.0
    IL_0a35:  ldc.r4     -1.
    IL_0a3a:  ldc.r4     1.
    IL_0a3f:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0a44:  ldloc.0
    IL_0a45:  ldc.r4     -0.1
    IL_0a4a:  ldc.r4     0.1
    IL_0a4f:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0a54:  ldloc.0
    IL_0a55:  ldc.r4     -1.
    IL_0a5a:  ldc.r4     1.
    IL_0a5f:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0a64:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0a69:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0a6e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0a73:  stloc.s    V_87
    IL_0a75:  ldloc.0
    IL_0a76:  ldc.i4.6
    IL_0a77:  ldc.i4.s   12
    IL_0a79:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0a7e:  stloc.s    V_88
    IL_0a80:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_0a85:  stloc.s    V_89
    IL_0a87:  ldc.i4.0
    IL_0a88:  stloc.s    V_90
    IL_0a8a:  br.s       IL_0ad5

    IL_0a8c:  ldloc.s    V_84
    IL_0a8e:  ldloc.s    V_89
    IL_0a90:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0a95:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_0a9a:  conv.i4
    IL_0a9b:  ldloc.s    V_89
    IL_0a9d:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0aa2:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_0aa7:  conv.i4
    IL_0aa8:  ldloc.s    V_89
    IL_0aaa:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0aaf:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_0ab4:  conv.i4
    IL_0ab5:  ldc.i4.1
    IL_0ab6:  ldc.i4.1
    IL_0ab7:  ldc.i4.1
    IL_0ab8:  ldc.i4.s   72
    IL_0aba:  call       class Game.TerrainBrush/Brush Game.TerrainBrush/Brush::op_Implicit(int32)
    IL_0abf:  callvirt   instance void Game.TerrainBrush::AddBox(int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 class Game.TerrainBrush/Brush)
    IL_0ac4:  ldloc.s    V_89
    IL_0ac6:  ldloc.s    V_87
    IL_0ac8:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0acd:  stloc.s    V_89
    IL_0acf:  ldloc.s    V_90
    IL_0ad1:  ldc.i4.1
    IL_0ad2:  add
    IL_0ad3:  stloc.s    V_90
    IL_0ad5:  ldloc.s    V_90
    IL_0ad7:  ldloc.s    V_88
    IL_0ad9:  blt.s      IL_0a8c

    IL_0adb:  ldloc.s    V_86
    IL_0add:  ldc.i4.1
    IL_0ade:  add
    IL_0adf:  stloc.s    V_86
    IL_0ae1:  ldloc.s    V_86
    IL_0ae3:  ldloc.s    V_85
    IL_0ae5:  blt        IL_0a2f

    IL_0aea:  ldloc.s    V_84
    IL_0aec:  callvirt   instance void Game.TerrainBrush::Compile()
    IL_0af1:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_clayPocketBrushes
    IL_0af6:  ldloc.s    V_84
    IL_0af8:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::Add(!0)
    IL_0afd:  ldloc.s    V_83
    IL_0aff:  ldc.i4.1
    IL_0b00:  add
    IL_0b01:  stloc.s    V_83
    IL_0b03:  ldloc.s    V_83
    IL_0b05:  ldc.i4.s   16
    IL_0b07:  blt        IL_0a14

    IL_0b0c:  ldc.i4.0
    IL_0b0d:  stloc.s    V_91
    IL_0b0f:  br         IL_0c02

    IL_0b14:  newobj     instance void Game.TerrainBrush::.ctor()
    IL_0b19:  stloc.s    V_92
    IL_0b1b:  ldloc.0
    IL_0b1c:  ldc.i4.s   16
    IL_0b1e:  ldc.i4.s   32
    IL_0b20:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0b25:  stloc.s    V_93
    IL_0b27:  ldc.i4.0
    IL_0b28:  stloc.s    V_94
    IL_0b2a:  br         IL_0be0

    IL_0b2f:  ldc.r4     0.5
    IL_0b34:  ldloc.0
    IL_0b35:  ldc.r4     -1.
    IL_0b3a:  ldc.r4     1.
    IL_0b3f:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0b44:  ldloc.0
    IL_0b45:  ldc.r4     -0.75
    IL_0b4a:  ldc.r4     0.75
    IL_0b4f:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0b54:  ldloc.0
    IL_0b55:  ldc.r4     -1.
    IL_0b5a:  ldc.r4     1.
    IL_0b5f:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0b64:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0b69:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0b6e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0b73:  stloc.s    V_95
    IL_0b75:  ldloc.0
    IL_0b76:  ldc.i4.6
    IL_0b77:  ldc.i4.s   12
    IL_0b79:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0b7e:  stloc.s    V_96
    IL_0b80:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_0b85:  stloc.s    V_97
    IL_0b87:  ldc.i4.0
    IL_0b88:  stloc.s    V_98
    IL_0b8a:  br.s       IL_0bd4

    IL_0b8c:  ldloc.s    V_92
    IL_0b8e:  ldloc.s    V_97
    IL_0b90:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0b95:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_0b9a:  conv.i4
    IL_0b9b:  ldloc.s    V_97
    IL_0b9d:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0ba2:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_0ba7:  conv.i4
    IL_0ba8:  ldloc.s    V_97
    IL_0baa:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0baf:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_0bb4:  conv.i4
    IL_0bb5:  ldc.i4.1
    IL_0bb6:  ldc.i4.1
    IL_0bb7:  ldc.i4.1
    IL_0bb8:  ldc.i4.7
    IL_0bb9:  call       class Game.TerrainBrush/Brush Game.TerrainBrush/Brush::op_Implicit(int32)
    IL_0bbe:  callvirt   instance void Game.TerrainBrush::AddBox(int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 class Game.TerrainBrush/Brush)
    IL_0bc3:  ldloc.s    V_97
    IL_0bc5:  ldloc.s    V_95
    IL_0bc7:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0bcc:  stloc.s    V_97
    IL_0bce:  ldloc.s    V_98
    IL_0bd0:  ldc.i4.1
    IL_0bd1:  add
    IL_0bd2:  stloc.s    V_98
    IL_0bd4:  ldloc.s    V_98
    IL_0bd6:  ldloc.s    V_96
    IL_0bd8:  blt.s      IL_0b8c

    IL_0bda:  ldloc.s    V_94
    IL_0bdc:  ldc.i4.1
    IL_0bdd:  add
    IL_0bde:  stloc.s    V_94
    IL_0be0:  ldloc.s    V_94
    IL_0be2:  ldloc.s    V_93
    IL_0be4:  blt        IL_0b2f

    IL_0be9:  ldloc.s    V_92
    IL_0beb:  callvirt   instance void Game.TerrainBrush::Compile()
    IL_0bf0:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_sandPocketBrushes
    IL_0bf5:  ldloc.s    V_92
    IL_0bf7:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::Add(!0)
    IL_0bfc:  ldloc.s    V_91
    IL_0bfe:  ldc.i4.1
    IL_0bff:  add
    IL_0c00:  stloc.s    V_91
    IL_0c02:  ldloc.s    V_91
    IL_0c04:  ldc.i4.s   16
    IL_0c06:  blt        IL_0b14

    IL_0c0b:  ldc.i4.0
    IL_0c0c:  stloc.s    V_99
    IL_0c0e:  br         IL_0d02

    IL_0c13:  newobj     instance void Game.TerrainBrush::.ctor()
    IL_0c18:  stloc.s    V_100
    IL_0c1a:  ldloc.0
    IL_0c1b:  ldc.i4.s   16
    IL_0c1d:  ldc.i4.s   32
    IL_0c1f:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0c24:  stloc.s    V_101
    IL_0c26:  ldc.i4.0
    IL_0c27:  stloc.s    V_102
    IL_0c29:  br         IL_0ce0

    IL_0c2e:  ldc.r4     0.5
    IL_0c33:  ldloc.0
    IL_0c34:  ldc.r4     -1.
    IL_0c39:  ldc.r4     1.
    IL_0c3e:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0c43:  ldloc.0
    IL_0c44:  ldc.r4     -0.75
    IL_0c49:  ldc.r4     0.75
    IL_0c4e:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0c53:  ldloc.0
    IL_0c54:  ldc.r4     -1.
    IL_0c59:  ldc.r4     1.
    IL_0c5e:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0c63:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0c68:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0c6d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0c72:  stloc.s    V_103
    IL_0c74:  ldloc.0
    IL_0c75:  ldc.i4.6
    IL_0c76:  ldc.i4.s   12
    IL_0c78:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0c7d:  stloc.s    V_104
    IL_0c7f:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_0c84:  stloc.s    V_105
    IL_0c86:  ldc.i4.0
    IL_0c87:  stloc.s    V_106
    IL_0c89:  br.s       IL_0cd4

    IL_0c8b:  ldloc.s    V_100
    IL_0c8d:  ldloc.s    V_105
    IL_0c8f:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0c94:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_0c99:  conv.i4
    IL_0c9a:  ldloc.s    V_105
    IL_0c9c:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0ca1:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_0ca6:  conv.i4
    IL_0ca7:  ldloc.s    V_105
    IL_0ca9:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0cae:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_0cb3:  conv.i4
    IL_0cb4:  ldc.i4.1
    IL_0cb5:  ldc.i4.1
    IL_0cb6:  ldc.i4.1
    IL_0cb7:  ldc.i4.s   67
    IL_0cb9:  call       class Game.TerrainBrush/Brush Game.TerrainBrush/Brush::op_Implicit(int32)
    IL_0cbe:  callvirt   instance void Game.TerrainBrush::AddBox(int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 class Game.TerrainBrush/Brush)
    IL_0cc3:  ldloc.s    V_105
    IL_0cc5:  ldloc.s    V_103
    IL_0cc7:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0ccc:  stloc.s    V_105
    IL_0cce:  ldloc.s    V_106
    IL_0cd0:  ldc.i4.1
    IL_0cd1:  add
    IL_0cd2:  stloc.s    V_106
    IL_0cd4:  ldloc.s    V_106
    IL_0cd6:  ldloc.s    V_104
    IL_0cd8:  blt.s      IL_0c8b

    IL_0cda:  ldloc.s    V_102
    IL_0cdc:  ldc.i4.1
    IL_0cdd:  add
    IL_0cde:  stloc.s    V_102
    IL_0ce0:  ldloc.s    V_102
    IL_0ce2:  ldloc.s    V_101
    IL_0ce4:  blt        IL_0c2e

    IL_0ce9:  ldloc.s    V_100
    IL_0ceb:  callvirt   instance void Game.TerrainBrush::Compile()
    IL_0cf0:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_basaltPocketBrushes
    IL_0cf5:  ldloc.s    V_100
    IL_0cf7:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::Add(!0)
    IL_0cfc:  ldloc.s    V_99
    IL_0cfe:  ldc.i4.1
    IL_0cff:  add
    IL_0d00:  stloc.s    V_99
    IL_0d02:  ldloc.s    V_99
    IL_0d04:  ldc.i4.s   16
    IL_0d06:  blt        IL_0c13

    IL_0d0b:  ldc.i4.0
    IL_0d0c:  stloc.s    V_107
    IL_0d0e:  br         IL_0e01

    IL_0d13:  newobj     instance void Game.TerrainBrush::.ctor()
    IL_0d18:  stloc.s    V_108
    IL_0d1a:  ldloc.0
    IL_0d1b:  ldc.i4.s   16
    IL_0d1d:  ldc.i4.s   32
    IL_0d1f:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0d24:  stloc.s    V_109
    IL_0d26:  ldc.i4.0
    IL_0d27:  stloc.s    V_110
    IL_0d29:  br         IL_0ddf

    IL_0d2e:  ldc.r4     0.5
    IL_0d33:  ldloc.0
    IL_0d34:  ldc.r4     -1.
    IL_0d39:  ldc.r4     1.
    IL_0d3e:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0d43:  ldloc.0
    IL_0d44:  ldc.r4     -1.
    IL_0d49:  ldc.r4     1.
    IL_0d4e:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0d53:  ldloc.0
    IL_0d54:  ldc.r4     -1.
    IL_0d59:  ldc.r4     1.
    IL_0d5e:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0d63:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0d68:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0d6d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0d72:  stloc.s    V_111
    IL_0d74:  ldloc.0
    IL_0d75:  ldc.i4.5
    IL_0d76:  ldc.i4.s   10
    IL_0d78:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0d7d:  stloc.s    V_112
    IL_0d7f:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_0d84:  stloc.s    V_113
    IL_0d86:  ldc.i4.0
    IL_0d87:  stloc.s    V_114
    IL_0d89:  br.s       IL_0dd3

    IL_0d8b:  ldloc.s    V_108
    IL_0d8d:  ldloc.s    V_113
    IL_0d8f:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0d94:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_0d99:  conv.i4
    IL_0d9a:  ldloc.s    V_113
    IL_0d9c:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0da1:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_0da6:  conv.i4
    IL_0da7:  ldloc.s    V_113
    IL_0da9:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0dae:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_0db3:  conv.i4
    IL_0db4:  ldc.i4.1
    IL_0db5:  ldc.i4.1
    IL_0db6:  ldc.i4.1
    IL_0db7:  ldc.i4.3
    IL_0db8:  call       class Game.TerrainBrush/Brush Game.TerrainBrush/Brush::op_Implicit(int32)
    IL_0dbd:  callvirt   instance void Game.TerrainBrush::AddBox(int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 class Game.TerrainBrush/Brush)
    IL_0dc2:  ldloc.s    V_113
    IL_0dc4:  ldloc.s    V_111
    IL_0dc6:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0dcb:  stloc.s    V_113
    IL_0dcd:  ldloc.s    V_114
    IL_0dcf:  ldc.i4.1
    IL_0dd0:  add
    IL_0dd1:  stloc.s    V_114
    IL_0dd3:  ldloc.s    V_114
    IL_0dd5:  ldloc.s    V_112
    IL_0dd7:  blt.s      IL_0d8b

    IL_0dd9:  ldloc.s    V_110
    IL_0ddb:  ldc.i4.1
    IL_0ddc:  add
    IL_0ddd:  stloc.s    V_110
    IL_0ddf:  ldloc.s    V_110
    IL_0de1:  ldloc.s    V_109
    IL_0de3:  blt        IL_0d2e

    IL_0de8:  ldloc.s    V_108
    IL_0dea:  callvirt   instance void Game.TerrainBrush::Compile()
    IL_0def:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_granitePocketBrushes
    IL_0df4:  ldloc.s    V_108
    IL_0df6:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::Add(!0)
    IL_0dfb:  ldloc.s    V_107
    IL_0dfd:  ldc.i4.1
    IL_0dfe:  add
    IL_0dff:  stloc.s    V_107
    IL_0e01:  ldloc.s    V_107
    IL_0e03:  ldc.i4.s   16
    IL_0e05:  blt        IL_0d13

    IL_0e0a:  ldc.i4.3
    IL_0e0b:  newarr     [System.Runtime]System.Int32
    IL_0e10:  dup
    IL_0e11:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=12' '<PrivateImplementationDetails>'::DAEC622540FFB3A92C68307FAFA5C2A49CA7F3F8
    IL_0e16:  call       void [System.Runtime]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [System.Runtime]System.Array,
                                                                                                              valuetype [System.Runtime]System.RuntimeFieldHandle)
    IL_0e1b:  stloc.1
    IL_0e1c:  ldc.i4.0
    IL_0e1d:  stloc.s    V_115
    IL_0e1f:  br         IL_0f57

    IL_0e24:  newobj     instance void Game.TerrainBrush::.ctor()
    IL_0e29:  stloc.s    V_116
    IL_0e2b:  ldloc.1
    IL_0e2c:  ldloc.s    V_115
    IL_0e2e:  ldc.i4.4
    IL_0e2f:  div
    IL_0e30:  ldelem.i4
    IL_0e31:  stloc.s    V_117
    IL_0e33:  ldloc.s    V_115
    IL_0e35:  ldc.i4.2
    IL_0e36:  rem
    IL_0e37:  ldc.i4.1
    IL_0e38:  add
    IL_0e39:  stloc.s    V_118
    IL_0e3b:  ldloc.s    V_115
    IL_0e3d:  ldc.i4.4
    IL_0e3e:  rem
    IL_0e3f:  ldc.i4.2
    IL_0e40:  beq.s      IL_0e49

    IL_0e42:  ldc.r4     1.
    IL_0e47:  br.s       IL_0e4e

    IL_0e49:  ldc.r4     0.5
    IL_0e4e:  stloc.s    V_119
    IL_0e50:  ldloc.s    V_115
    IL_0e52:  ldc.i4.4
    IL_0e53:  rem
    IL_0e54:  ldc.i4.2
    IL_0e55:  clt
    IL_0e57:  ldc.i4.0
    IL_0e58:  ceq
    IL_0e5a:  stloc.s    V_120
    IL_0e5c:  ldloc.s    V_115
    IL_0e5e:  ldc.i4.4
    IL_0e5f:  rem
    IL_0e60:  ldc.i4.1
    IL_0e61:  beq.s      IL_0e6c

    IL_0e63:  ldc.i4.2
    IL_0e64:  ldloc.s    V_117
    IL_0e66:  mul
    IL_0e67:  ldloc.s    V_117
    IL_0e69:  mul
    IL_0e6a:  br.s       IL_0e71

    IL_0e6c:  ldloc.s    V_117
    IL_0e6e:  ldloc.s    V_117
    IL_0e70:  mul
    IL_0e71:  stloc.s    V_121
    IL_0e73:  ldc.i4.0
    IL_0e74:  stloc.s    V_122
    IL_0e76:  br         IL_0f35

    IL_0e7b:  ldloc.0
    IL_0e7c:  ldc.r4     0.0
    IL_0e81:  ldloc.s    V_117
    IL_0e83:  conv.r4
    IL_0e84:  ldloc.s    V_120
    IL_0e86:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Random::UniformVector2(float32,
                                                                                               float32,
                                                                                               bool)
    IL_0e8b:  stloc.s    V_123
    IL_0e8d:  ldloca.s   V_123
    IL_0e8f:  call       instance float32 [Engine]Engine.Vector2::Length()
    IL_0e94:  stloc.s    V_124
    IL_0e96:  ldloc.0
    IL_0e97:  ldc.i4.3
    IL_0e98:  ldc.i4.4
    IL_0e99:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0e9e:  stloc.s    V_125
    IL_0ea0:  ldc.i4.1
    IL_0ea1:  ldloc.s    V_117
    IL_0ea3:  ldc.i4.3
    IL_0ea4:  div
    IL_0ea5:  conv.r4
    IL_0ea6:  ldc.r4     2.5
    IL_0eab:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_0eb0:  ldloc.s    V_119
    IL_0eb2:  mul
    IL_0eb3:  ldc.r4     0.0
    IL_0eb8:  ldloc.s    V_124
    IL_0eba:  ldloc.s    V_117
    IL_0ebc:  conv.r4
    IL_0ebd:  div
    IL_0ebe:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0ec3:  conv.i4
    IL_0ec4:  add
    IL_0ec5:  ldloc.0
    IL_0ec6:  ldc.i4.0
    IL_0ec7:  ldc.i4.1
    IL_0ec8:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0ecd:  add
    IL_0ece:  stloc.s    V_126
    IL_0ed0:  ldloc.s    V_116
    IL_0ed2:  ldloc.s    V_123
    IL_0ed4:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0ed9:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_0ede:  conv.i4
    IL_0edf:  ldc.i4.0
    IL_0ee0:  ldloc.s    V_123
    IL_0ee2:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0ee7:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_0eec:  conv.i4
    IL_0eed:  ldloc.s    V_125
    IL_0eef:  ldloc.s    V_126
    IL_0ef1:  ldloc.s    V_125
    IL_0ef3:  ldc.i4.0
    IL_0ef4:  call       class Game.TerrainBrush/Brush Game.TerrainBrush/Brush::op_Implicit(int32)
    IL_0ef9:  callvirt   instance void Game.TerrainBrush::AddBox(int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 class Game.TerrainBrush/Brush)
    IL_0efe:  ldloc.s    V_116
    IL_0f00:  ldloc.s    V_123
    IL_0f02:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0f07:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_0f0c:  conv.i4
    IL_0f0d:  ldloc.s    V_118
    IL_0f0f:  neg
    IL_0f10:  ldloc.s    V_123
    IL_0f12:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0f17:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_0f1c:  conv.i4
    IL_0f1d:  ldloc.s    V_125
    IL_0f1f:  ldloc.s    V_118
    IL_0f21:  ldloc.s    V_125
    IL_0f23:  ldc.i4.s   18
    IL_0f25:  call       class Game.TerrainBrush/Brush Game.TerrainBrush/Brush::op_Implicit(int32)
    IL_0f2a:  callvirt   instance void Game.TerrainBrush::AddBox(int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 class Game.TerrainBrush/Brush)
    IL_0f2f:  ldloc.s    V_122
    IL_0f31:  ldc.i4.1
    IL_0f32:  add
    IL_0f33:  stloc.s    V_122
    IL_0f35:  ldloc.s    V_122
    IL_0f37:  ldloc.s    V_121
    IL_0f39:  blt        IL_0e7b

    IL_0f3e:  ldloc.s    V_116
    IL_0f40:  callvirt   instance void Game.TerrainBrush::Compile()
    IL_0f45:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_waterPocketBrushes
    IL_0f4a:  ldloc.s    V_116
    IL_0f4c:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::Add(!0)
    IL_0f51:  ldloc.s    V_115
    IL_0f53:  ldc.i4.1
    IL_0f54:  add
    IL_0f55:  stloc.s    V_115
    IL_0f57:  ldloc.s    V_115
    IL_0f59:  ldc.i4.4
    IL_0f5a:  ldloc.1
    IL_0f5b:  ldlen
    IL_0f5c:  conv.i4
    IL_0f5d:  mul
    IL_0f5e:  blt        IL_0e24

    IL_0f63:  ldc.i4.4
    IL_0f64:  newarr     [System.Runtime]System.Int32
    IL_0f69:  dup
    IL_0f6a:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=16' '<PrivateImplementationDetails>'::B97CDE6866E599710B78100C830AF6656530BCD8
    IL_0f6f:  call       void [System.Runtime]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [System.Runtime]System.Array,
                                                                                                              valuetype [System.Runtime]System.RuntimeFieldHandle)
    IL_0f74:  stloc.2
    IL_0f75:  ldc.i4.0
    IL_0f76:  stloc.s    V_127
    IL_0f78:  br         IL_10cf

    IL_0f7d:  newobj     instance void Game.TerrainBrush::.ctor()
    IL_0f82:  stloc.s    V_128
    IL_0f84:  ldloc.2
    IL_0f85:  ldloc.s    V_127
    IL_0f87:  ldc.i4.4
    IL_0f88:  div
    IL_0f89:  ldelem.i4
    IL_0f8a:  stloc.s    V_129
    IL_0f8c:  ldloc.s    V_129
    IL_0f8e:  ldc.i4.2
    IL_0f8f:  add
    IL_0f90:  stloc.s    V_130
    IL_0f92:  ldloc.s    V_127
    IL_0f94:  ldc.i4.4
    IL_0f95:  rem
    IL_0f96:  ldc.i4.2
    IL_0f97:  beq.s      IL_0fa0

    IL_0f99:  ldc.r4     1.
    IL_0f9e:  br.s       IL_0fa5

    IL_0fa0:  ldc.r4     0.5
    IL_0fa5:  stloc.s    V_131
    IL_0fa7:  ldloc.s    V_127
    IL_0fa9:  ldc.i4.4
    IL_0faa:  rem
    IL_0fab:  ldc.i4.2
    IL_0fac:  clt
    IL_0fae:  ldc.i4.0
    IL_0faf:  ceq
    IL_0fb1:  stloc.s    V_132
    IL_0fb3:  ldloc.s    V_127
    IL_0fb5:  ldc.i4.4
    IL_0fb6:  rem
    IL_0fb7:  ldc.i4.1
    IL_0fb8:  beq.s      IL_0fc3

    IL_0fba:  ldc.i4.2
    IL_0fbb:  ldloc.s    V_129
    IL_0fbd:  mul
    IL_0fbe:  ldloc.s    V_129
    IL_0fc0:  mul
    IL_0fc1:  br.s       IL_0fc8

    IL_0fc3:  ldloc.s    V_129
    IL_0fc5:  ldloc.s    V_129
    IL_0fc7:  mul
    IL_0fc8:  stloc.s    V_133
    IL_0fca:  ldc.i4.0
    IL_0fcb:  stloc.s    V_134
    IL_0fcd:  br         IL_10ad

    IL_0fd2:  ldloc.0
    IL_0fd3:  ldc.r4     0.0
    IL_0fd8:  ldloc.s    V_129
    IL_0fda:  conv.r4
    IL_0fdb:  ldloc.s    V_132
    IL_0fdd:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Random::UniformVector2(float32,
                                                                                               float32,
                                                                                               bool)
    IL_0fe2:  stloc.s    V_135
    IL_0fe4:  ldloca.s   V_135
    IL_0fe6:  call       instance float32 [Engine]Engine.Vector2::Length()
    IL_0feb:  stloc.s    V_136
    IL_0fed:  ldloc.0
    IL_0fee:  ldc.i4.3
    IL_0fef:  ldc.i4.4
    IL_0ff0:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0ff5:  stloc.s    V_137
    IL_0ff7:  ldc.i4.1
    IL_0ff8:  ldloc.s    V_129
    IL_0ffa:  ldc.i4.3
    IL_0ffb:  div
    IL_0ffc:  conv.r4
    IL_0ffd:  ldc.r4     2.5
    IL_1002:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_1007:  ldloc.s    V_131
    IL_1009:  mul
    IL_100a:  ldc.r4     0.0
    IL_100f:  ldloc.s    V_136
    IL_1011:  ldloc.s    V_129
    IL_1013:  conv.r4
    IL_1014:  div
    IL_1015:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_101a:  conv.i4
    IL_101b:  add
    IL_101c:  ldloc.0
    IL_101d:  ldc.i4.0
    IL_101e:  ldc.i4.1
    IL_101f:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_1024:  add
    IL_1025:  stloc.s    V_138
    IL_1027:  ldc.i4.1
    IL_1028:  ldloc.s    V_130
    IL_102a:  conv.r4
    IL_102b:  ldc.r4     0.0
    IL_1030:  ldloc.s    V_136
    IL_1032:  ldloc.s    V_129
    IL_1034:  conv.r4
    IL_1035:  div
    IL_1036:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_103b:  conv.i4
    IL_103c:  add
    IL_103d:  ldloc.0
    IL_103e:  ldc.i4.0
    IL_103f:  ldc.i4.1
    IL_1040:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_1045:  add
    IL_1046:  stloc.s    V_139
    IL_1048:  ldloc.s    V_128
    IL_104a:  ldloc.s    V_135
    IL_104c:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_1051:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_1056:  conv.i4
    IL_1057:  ldc.i4.0
    IL_1058:  ldloc.s    V_135
    IL_105a:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_105f:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_1064:  conv.i4
    IL_1065:  ldloc.s    V_137
    IL_1067:  ldloc.s    V_138
    IL_1069:  ldloc.s    V_137
    IL_106b:  ldc.i4.0
    IL_106c:  call       class Game.TerrainBrush/Brush Game.TerrainBrush/Brush::op_Implicit(int32)
    IL_1071:  callvirt   instance void Game.TerrainBrush::AddBox(int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 class Game.TerrainBrush/Brush)
    IL_1076:  ldloc.s    V_128
    IL_1078:  ldloc.s    V_135
    IL_107a:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_107f:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_1084:  conv.i4
    IL_1085:  ldloc.s    V_139
    IL_1087:  neg
    IL_1088:  ldloc.s    V_135
    IL_108a:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_108f:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_1094:  conv.i4
    IL_1095:  ldloc.s    V_137
    IL_1097:  ldloc.s    V_139
    IL_1099:  ldloc.s    V_137
    IL_109b:  ldc.i4.s   92
    IL_109d:  call       class Game.TerrainBrush/Brush Game.TerrainBrush/Brush::op_Implicit(int32)
    IL_10a2:  callvirt   instance void Game.TerrainBrush::AddBox(int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 class Game.TerrainBrush/Brush)
    IL_10a7:  ldloc.s    V_134
    IL_10a9:  ldc.i4.1
    IL_10aa:  add
    IL_10ab:  stloc.s    V_134
    IL_10ad:  ldloc.s    V_134
    IL_10af:  ldloc.s    V_133
    IL_10b1:  blt        IL_0fd2

    IL_10b6:  ldloc.s    V_128
    IL_10b8:  callvirt   instance void Game.TerrainBrush::Compile()
    IL_10bd:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush> Game.TerrainContentsGenerator::m_magmaPocketBrushes
    IL_10c2:  ldloc.s    V_128
    IL_10c4:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::Add(!0)
    IL_10c9:  ldloc.s    V_127
    IL_10cb:  ldc.i4.1
    IL_10cc:  add
    IL_10cd:  stloc.s    V_127
    IL_10cf:  ldloc.s    V_127
    IL_10d1:  ldc.i4.4
    IL_10d2:  ldloc.2
    IL_10d3:  ldlen
    IL_10d4:  conv.i4
    IL_10d5:  mul
    IL_10d6:  blt        IL_0f7d

    IL_10db:  ldc.i4.0
    IL_10dc:  stloc.s    V_140
    IL_10de:  br         IL_1226

    IL_10e3:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>> Game.TerrainContentsGenerator::m_caveBrushesByType
    IL_10e8:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::.ctor()
    IL_10ed:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>>::Add(!0)
    IL_10f2:  ldc.i4.0
    IL_10f3:  stloc.s    V_141
    IL_10f5:  br         IL_1218

    IL_10fa:  newobj     instance void Game.TerrainBrush::.ctor()
    IL_10ff:  stloc.s    V_142
    IL_1101:  ldc.i4.s   10
    IL_1103:  ldc.i4.5
    IL_1104:  ldloc.s    V_140
    IL_1106:  mul
    IL_1107:  add
    IL_1108:  stloc.s    V_143
    IL_110a:  ldc.i4.3
    IL_110b:  ldloc.s    V_140
    IL_110d:  ldc.i4.3
    IL_110e:  div
    IL_110f:  add
    IL_1110:  stloc.s    V_144
    IL_1112:  ldc.i4.s   9
    IL_1114:  ldloc.s    V_140
    IL_1116:  add
    IL_1117:  stloc.s    V_145
    IL_1119:  ldc.i4.0
    IL_111a:  stloc.s    V_146
    IL_111c:  br         IL_11ef

    IL_1121:  ldloc.0
    IL_1122:  ldc.i4.2
    IL_1123:  ldloc.s    V_144
    IL_1125:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_112a:  stloc.s    V_147
    IL_112c:  ldloc.0
    IL_112d:  ldc.i4.8
    IL_112e:  ldloc.s    V_145
    IL_1130:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_1135:  ldc.i4.2
    IL_1136:  ldloc.s    V_147
    IL_1138:  mul
    IL_1139:  sub
    IL_113a:  stloc.s    V_148
    IL_113c:  ldc.r4     0.5
    IL_1141:  ldloc.0
    IL_1142:  ldc.r4     -1.
    IL_1147:  ldc.r4     1.
    IL_114c:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_1151:  ldloc.0
    IL_1152:  ldc.r4     0.0
    IL_1157:  ldc.r4     1.
    IL_115c:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_1161:  ldloc.0
    IL_1162:  ldc.r4     -1.
    IL_1167:  ldc.r4     1.
    IL_116c:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_1171:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_1176:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_117b:  stloc.s    V_149
    IL_117d:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_1182:  stloc.s    V_150
    IL_1184:  ldc.i4.0
    IL_1185:  stloc.s    V_151
    IL_1187:  br.s       IL_11e3

    IL_1189:  ldloc.s    V_142
    IL_118b:  ldloc.s    V_150
    IL_118d:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_1192:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_1197:  conv.i4
    IL_1198:  ldloc.s    V_147
    IL_119a:  ldc.i4.2
    IL_119b:  div
    IL_119c:  sub
    IL_119d:  ldloc.s    V_150
    IL_119f:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_11a4:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_11a9:  conv.i4
    IL_11aa:  ldloc.s    V_147
    IL_11ac:  ldc.i4.2
    IL_11ad:  div
    IL_11ae:  sub
    IL_11af:  ldloc.s    V_150
    IL_11b1:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_11b6:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_11bb:  conv.i4
    IL_11bc:  ldloc.s    V_147
    IL_11be:  ldc.i4.2
    IL_11bf:  div
    IL_11c0:  sub
    IL_11c1:  ldloc.s    V_147
    IL_11c3:  ldloc.s    V_147
    IL_11c5:  ldloc.s    V_147
    IL_11c7:  ldc.i4.0
    IL_11c8:  call       class Game.TerrainBrush/Brush Game.TerrainBrush/Brush::op_Implicit(int32)
    IL_11cd:  callvirt   instance void Game.TerrainBrush::AddBox(int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 class Game.TerrainBrush/Brush)
    IL_11d2:  ldloc.s    V_150
    IL_11d4:  ldloc.s    V_149
    IL_11d6:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_11db:  stloc.s    V_150
    IL_11dd:  ldloc.s    V_151
    IL_11df:  ldc.i4.1
    IL_11e0:  add
    IL_11e1:  stloc.s    V_151
    IL_11e3:  ldloc.s    V_151
    IL_11e5:  ldloc.s    V_148
    IL_11e7:  blt.s      IL_1189

    IL_11e9:  ldloc.s    V_146
    IL_11eb:  ldc.i4.1
    IL_11ec:  add
    IL_11ed:  stloc.s    V_146
    IL_11ef:  ldloc.s    V_146
    IL_11f1:  ldloc.s    V_143
    IL_11f3:  blt        IL_1121

    IL_11f8:  ldloc.s    V_142
    IL_11fa:  callvirt   instance void Game.TerrainBrush::Compile()
    IL_11ff:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>> Game.TerrainContentsGenerator::m_caveBrushesByType
    IL_1204:  ldloc.s    V_140
    IL_1206:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>>::get_Item(int32)
    IL_120b:  ldloc.s    V_142
    IL_120d:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::Add(!0)
    IL_1212:  ldloc.s    V_141
    IL_1214:  ldc.i4.1
    IL_1215:  add
    IL_1216:  stloc.s    V_141
    IL_1218:  ldloc.s    V_141
    IL_121a:  ldc.i4.3
    IL_121b:  blt        IL_10fa

    IL_1220:  ldloc.s    V_140
    IL_1222:  ldc.i4.1
    IL_1223:  add
    IL_1224:  stloc.s    V_140
    IL_1226:  ldloc.s    V_140
    IL_1228:  ldc.i4.7
    IL_1229:  blt        IL_10e3

    IL_122e:  ret
  } // end of method TerrainContentsGenerator::CreateBrushes

  .property instance int32 OceanLevel()
  {
    .get instance int32 Game.TerrainContentsGenerator::get_OceanLevel()
  } // end of property TerrainContentsGenerator::OceanLevel
} // end of class Game.TerrainContentsGenerator