.class public abstract auto ansi beforefieldinit Game.FluidBlock
       extends Game.CubeBlock
{
  .field private float32[] m_heightByLevel
  .field private valuetype [Engine]Engine.BoundingBox[][] m_boundingBoxesByLevel
  .field private bool[] m_theSameFluidsByIndex
  .field public initonly int32 MaxLevel
  .field private int32 m_textureSlot
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(int32 maxLevel) cil managed
  {
    // 代码大小       152 (0x98)
    .maxstack  9
    .locals init (int32 V_0,
             float32 V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.s   16
    IL_0003:  newarr     [System.Runtime]System.Single
    IL_0008:  stfld      float32[] Game.FluidBlock::m_heightByLevel
    IL_000d:  ldarg.0
    IL_000e:  ldc.i4.s   16
    IL_0010:  newarr     valuetype [Engine]Engine.BoundingBox[]
    IL_0015:  stfld      valuetype [Engine]Engine.BoundingBox[][] Game.FluidBlock::m_boundingBoxesByLevel
    IL_001a:  ldarg.0
    IL_001b:  call       instance void Game.CubeBlock::.ctor()
    IL_0020:  ldarg.0
    IL_0021:  ldarg.1
    IL_0022:  stfld      int32 Game.FluidBlock::MaxLevel
    IL_0027:  ldc.i4.0
    IL_0028:  stloc.0
    IL_0029:  br.s       IL_0092

    IL_002b:  ldc.r4     0.875
    IL_0030:  ldc.r4     1.
    IL_0035:  ldloc.0
    IL_0036:  conv.r4
    IL_0037:  ldarg.0
    IL_0038:  ldfld      int32 Game.FluidBlock::MaxLevel
    IL_003d:  conv.r4
    IL_003e:  div
    IL_003f:  sub
    IL_0040:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0045:  mul
    IL_0046:  stloc.1
    IL_0047:  ldarg.0
    IL_0048:  ldfld      float32[] Game.FluidBlock::m_heightByLevel
    IL_004d:  ldloc.0
    IL_004e:  ldloc.1
    IL_004f:  stelem.r4
    IL_0050:  ldarg.0
    IL_0051:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.FluidBlock::m_boundingBoxesByLevel
    IL_0056:  ldloc.0
    IL_0057:  ldc.i4.1
    IL_0058:  newarr     [Engine]Engine.BoundingBox
    IL_005d:  dup
    IL_005e:  ldc.i4.0
    IL_005f:  ldc.r4     0.0
    IL_0064:  ldc.r4     0.0
    IL_0069:  ldc.r4     0.0
    IL_006e:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0073:  ldc.r4     1.
    IL_0078:  ldloc.1
    IL_0079:  ldc.r4     1.
    IL_007e:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0083:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_0088:  stelem     [Engine]Engine.BoundingBox
    IL_008d:  stelem.ref
    IL_008e:  ldloc.0
    IL_008f:  ldc.i4.1
    IL_0090:  add
    IL_0091:  stloc.0
    IL_0092:  ldloc.0
    IL_0093:  ldc.i4.s   16
    IL_0095:  blt.s      IL_002b

    IL_0097:  ret
  } // end of method FluidBlock::.ctor

  .method public hidebysig virtual instance void 
          Initialize() cil managed
  {
    // 代码大小       165 (0xa5)
    .maxstack  4
    .locals init (class [System.Reflection]System.Reflection.TypeInfo V_0,
             class [System.Reflection]System.Reflection.TypeInfo V_1,
             int32 V_2,
             class Game.Block V_3)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.Block::Initialize()
    IL_0006:  ldnull
    IL_0007:  stloc.0
    IL_0008:  ldarg.0
    IL_0009:  call       instance class [System.Runtime]System.Type [System.Runtime]System.Object::GetType()
    IL_000e:  call       class [System.Reflection]System.Reflection.TypeInfo [System.Reflection]System.Reflection.IntrospectionExtensions::GetTypeInfo(class [System.Runtime]System.Type)
    IL_0013:  stloc.1
    IL_0014:  br.s       IL_0038

    IL_0016:  ldloc.1
    IL_0017:  callvirt   instance class [System.Runtime]System.Type [System.Reflection]System.Reflection.TypeInfo::get_BaseType()
    IL_001c:  ldtoken    Game.FluidBlock
    IL_0021:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_0026:  bne.un.s   IL_002c

    IL_0028:  ldloc.1
    IL_0029:  stloc.0
    IL_002a:  br.s       IL_003b

    IL_002c:  ldloc.1
    IL_002d:  callvirt   instance class [System.Runtime]System.Type [System.Reflection]System.Reflection.TypeInfo::get_BaseType()
    IL_0032:  call       class [System.Reflection]System.Reflection.TypeInfo [System.Reflection]System.Reflection.IntrospectionExtensions::GetTypeInfo(class [System.Runtime]System.Type)
    IL_0037:  stloc.1
    IL_0038:  ldloc.1
    IL_0039:  brtrue.s   IL_0016

    IL_003b:  ldloc.0
    IL_003c:  brtrue.s   IL_0049

    IL_003e:  ldstr      "Fluid type not found."
    IL_0043:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0048:  throw

    IL_0049:  ldarg.0
    IL_004a:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_004f:  ldlen
    IL_0050:  conv.i4
    IL_0051:  newarr     [System.Runtime]System.Boolean
    IL_0056:  stfld      bool[] Game.FluidBlock::m_theSameFluidsByIndex
    IL_005b:  ldc.i4.0
    IL_005c:  stloc.2
    IL_005d:  br.s       IL_009a

    IL_005f:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0064:  ldloc.2
    IL_0065:  ldelem.ref
    IL_0066:  stloc.3
    IL_0067:  ldarg.0
    IL_0068:  ldfld      bool[] Game.FluidBlock::m_theSameFluidsByIndex
    IL_006d:  ldloc.2
    IL_006e:  ldloc.3
    IL_006f:  callvirt   instance class [System.Runtime]System.Type [System.Runtime]System.Object::GetType()
    IL_0074:  call       class [System.Reflection]System.Reflection.TypeInfo [System.Reflection]System.Reflection.IntrospectionExtensions::GetTypeInfo(class [System.Runtime]System.Type)
    IL_0079:  ldloc.0
    IL_007a:  beq.s      IL_0094

    IL_007c:  ldloc.3
    IL_007d:  callvirt   instance class [System.Runtime]System.Type [System.Runtime]System.Object::GetType()
    IL_0082:  call       class [System.Reflection]System.Reflection.TypeInfo [System.Reflection]System.Reflection.IntrospectionExtensions::GetTypeInfo(class [System.Runtime]System.Type)
    IL_0087:  ldloc.0
    IL_0088:  callvirt   instance class [System.Runtime]System.Type [System.Reflection]System.Reflection.TypeInfo::AsType()
    IL_008d:  callvirt   instance bool [System.Reflection]System.Reflection.TypeInfo::IsSubclassOf(class [System.Runtime]System.Type)
    IL_0092:  br.s       IL_0095

    IL_0094:  ldc.i4.1
    IL_0095:  stelem.i1
    IL_0096:  ldloc.2
    IL_0097:  ldc.i4.1
    IL_0098:  add
    IL_0099:  stloc.2
    IL_009a:  ldloc.2
    IL_009b:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_00a0:  ldlen
    IL_00a1:  conv.i4
    IL_00a2:  blt.s      IL_005f

    IL_00a4:  ret
  } // end of method FluidBlock::Initialize

  .method public hidebysig virtual instance valuetype [Engine]Engine.BoundingBox[] 
          GetCustomCollisionBoxes(class Game.SubsystemTerrain terrain,
                                  int32 'value') cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.FluidBlock::m_boundingBoxesByLevel
    IL_0006:  ldarg.2
    IL_0007:  call       int32 Game.Terrain::ExtractData(int32)
    IL_000c:  call       int32 Game.FluidBlock::GetLevel(int32)
    IL_0011:  ldelem.ref
    IL_0012:  ret
  } // end of method FluidBlock::GetCustomCollisionBoxes

  .method public hidebysig instance bool 
          IsTheSameFluid(int32 contents) cil managed
  {
    // 代码大小       9 (0x9)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool[] Game.FluidBlock::m_theSameFluidsByIndex
    IL_0006:  ldarg.1
    IL_0007:  ldelem.u1
    IL_0008:  ret
  } // end of method FluidBlock::IsTheSameFluid

  .method public hidebysig instance float32 
          GetLevelHeight(int32 level) cil managed
  {
    // 代码大小       9 (0x9)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32[] Game.FluidBlock::m_heightByLevel
    IL_0006:  ldarg.1
    IL_0007:  ldelem.r4
    IL_0008:  ret
  } // end of method FluidBlock::GetLevelHeight

  .method family hidebysig instance void 
          GenerateFluidTerrainVertices(class Game.BlockGeometryGenerator generator,
                                       int32 'value',
                                       int32 x,
                                       int32 y,
                                       int32 z,
                                       valuetype [Engine]Engine.Color sideColor,
                                       valuetype [Engine]Engine.Color topColor,
                                       class Game.TerrainGeometrySubset[] subset) cil managed
  {
    // 代码大小       422 (0x1a6)
    .maxstack  16
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7,
             int32 V_8,
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
             float32 V_21,
             float32 V_22)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  call       bool Game.FluidBlock::GetIsTop(int32)
    IL_000d:  brfalse    IL_0194

    IL_0012:  ldarg.1
    IL_0013:  ldfld      class Game.Terrain Game.BlockGeometryGenerator::Terrain
    IL_0018:  dup
    IL_0019:  ldarg.3
    IL_001a:  ldc.i4.1
    IL_001b:  sub
    IL_001c:  ldarg.s    y
    IL_001e:  ldarg.s    z
    IL_0020:  ldc.i4.1
    IL_0021:  sub
    IL_0022:  callvirt   instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_0027:  stloc.1
    IL_0028:  dup
    IL_0029:  ldarg.3
    IL_002a:  ldarg.s    y
    IL_002c:  ldarg.s    z
    IL_002e:  ldc.i4.1
    IL_002f:  sub
    IL_0030:  callvirt   instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_0035:  stloc.2
    IL_0036:  dup
    IL_0037:  ldarg.3
    IL_0038:  ldc.i4.1
    IL_0039:  add
    IL_003a:  ldarg.s    y
    IL_003c:  ldarg.s    z
    IL_003e:  ldc.i4.1
    IL_003f:  sub
    IL_0040:  callvirt   instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_0045:  stloc.3
    IL_0046:  dup
    IL_0047:  ldarg.3
    IL_0048:  ldc.i4.1
    IL_0049:  sub
    IL_004a:  ldarg.s    y
    IL_004c:  ldarg.s    z
    IL_004e:  callvirt   instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_0053:  stloc.s    V_4
    IL_0055:  dup
    IL_0056:  ldarg.3
    IL_0057:  ldc.i4.1
    IL_0058:  add
    IL_0059:  ldarg.s    y
    IL_005b:  ldarg.s    z
    IL_005d:  callvirt   instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_0062:  stloc.s    V_5
    IL_0064:  dup
    IL_0065:  ldarg.3
    IL_0066:  ldc.i4.1
    IL_0067:  sub
    IL_0068:  ldarg.s    y
    IL_006a:  ldarg.s    z
    IL_006c:  ldc.i4.1
    IL_006d:  add
    IL_006e:  callvirt   instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_0073:  stloc.s    V_6
    IL_0075:  dup
    IL_0076:  ldarg.3
    IL_0077:  ldarg.s    y
    IL_0079:  ldarg.s    z
    IL_007b:  ldc.i4.1
    IL_007c:  add
    IL_007d:  callvirt   instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_0082:  stloc.s    V_7
    IL_0084:  ldarg.3
    IL_0085:  ldc.i4.1
    IL_0086:  add
    IL_0087:  ldarg.s    y
    IL_0089:  ldarg.s    z
    IL_008b:  ldc.i4.1
    IL_008c:  add
    IL_008d:  callvirt   instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_0092:  stloc.s    V_8
    IL_0094:  ldarg.0
    IL_0095:  ldloc.1
    IL_0096:  call       instance float32 Game.FluidBlock::CalculateNeighborHeight(int32)
    IL_009b:  ldarg.0
    IL_009c:  ldloc.2
    IL_009d:  call       instance float32 Game.FluidBlock::CalculateNeighborHeight(int32)
    IL_00a2:  stloc.s    V_9
    IL_00a4:  ldarg.0
    IL_00a5:  ldloc.3
    IL_00a6:  call       instance float32 Game.FluidBlock::CalculateNeighborHeight(int32)
    IL_00ab:  stloc.s    V_10
    IL_00ad:  ldarg.0
    IL_00ae:  ldloc.s    V_4
    IL_00b0:  call       instance float32 Game.FluidBlock::CalculateNeighborHeight(int32)
    IL_00b5:  stloc.s    V_11
    IL_00b7:  ldarg.0
    IL_00b8:  ldloc.s    V_5
    IL_00ba:  call       instance float32 Game.FluidBlock::CalculateNeighborHeight(int32)
    IL_00bf:  stloc.s    V_12
    IL_00c1:  ldarg.0
    IL_00c2:  ldloc.s    V_6
    IL_00c4:  call       instance float32 Game.FluidBlock::CalculateNeighborHeight(int32)
    IL_00c9:  stloc.s    V_13
    IL_00cb:  ldarg.0
    IL_00cc:  ldloc.s    V_7
    IL_00ce:  call       instance float32 Game.FluidBlock::CalculateNeighborHeight(int32)
    IL_00d3:  stloc.s    V_14
    IL_00d5:  ldarg.0
    IL_00d6:  ldloc.s    V_8
    IL_00d8:  call       instance float32 Game.FluidBlock::CalculateNeighborHeight(int32)
    IL_00dd:  stloc.s    V_15
    IL_00df:  ldarg.0
    IL_00e0:  ldloc.0
    IL_00e1:  call       int32 Game.FluidBlock::GetLevel(int32)
    IL_00e6:  call       instance float32 Game.FluidBlock::GetLevelHeight(int32)
    IL_00eb:  stloc.s    V_16
    IL_00ed:  ldloc.s    V_9
    IL_00ef:  ldloc.s    V_11
    IL_00f1:  ldloc.s    V_16
    IL_00f3:  call       float32 Game.FluidBlock::CalculateFluidVertexHeight(float32,
                                                                             float32,
                                                                             float32,
                                                                             float32)
    IL_00f8:  stloc.s    V_17
    IL_00fa:  ldloc.s    V_9
    IL_00fc:  ldloc.s    V_10
    IL_00fe:  ldloc.s    V_16
    IL_0100:  ldloc.s    V_12
    IL_0102:  call       float32 Game.FluidBlock::CalculateFluidVertexHeight(float32,
                                                                             float32,
                                                                             float32,
                                                                             float32)
    IL_0107:  stloc.s    V_18
    IL_0109:  ldloc.s    V_16
    IL_010b:  ldloc.s    V_12
    IL_010d:  ldloc.s    V_14
    IL_010f:  ldloc.s    V_15
    IL_0111:  call       float32 Game.FluidBlock::CalculateFluidVertexHeight(float32,
                                                                             float32,
                                                                             float32,
                                                                             float32)
    IL_0116:  stloc.s    V_19
    IL_0118:  ldloc.s    V_11
    IL_011a:  ldloc.s    V_16
    IL_011c:  ldloc.s    V_13
    IL_011e:  ldloc.s    V_14
    IL_0120:  call       float32 Game.FluidBlock::CalculateFluidVertexHeight(float32,
                                                                             float32,
                                                                             float32,
                                                                             float32)
    IL_0125:  stloc.s    V_20
    IL_0127:  ldloc.s    V_12
    IL_0129:  ldloc.s    V_16
    IL_012b:  call       float32 Game.FluidBlock::ZeroSubst(float32,
                                                            float32)
    IL_0130:  ldloc.s    V_11
    IL_0132:  ldloc.s    V_16
    IL_0134:  call       float32 Game.FluidBlock::ZeroSubst(float32,
                                                            float32)
    IL_0139:  sub
    IL_013a:  stloc.s    V_21
    IL_013c:  ldloc.s    V_14
    IL_013e:  ldloc.s    V_16
    IL_0140:  call       float32 Game.FluidBlock::ZeroSubst(float32,
                                                            float32)
    IL_0145:  ldloc.s    V_9
    IL_0147:  ldloc.s    V_16
    IL_0149:  call       float32 Game.FluidBlock::ZeroSubst(float32,
                                                            float32)
    IL_014e:  sub
    IL_014f:  stloc.s    V_22
    IL_0151:  ldarg.0
    IL_0152:  ldarg.0
    IL_0153:  ldfld      int32 Game.Block::DefaultTextureSlot
    IL_0158:  ldloc.s    V_21
    IL_015a:  call       float32 [Engine]Engine.MathUtils::Sign(float32)
    IL_015f:  conv.i4
    IL_0160:  sub
    IL_0161:  ldc.i4.s   16
    IL_0163:  ldloc.s    V_22
    IL_0165:  call       float32 [Engine]Engine.MathUtils::Sign(float32)
    IL_016a:  conv.i4
    IL_016b:  mul
    IL_016c:  add
    IL_016d:  stfld      int32 Game.FluidBlock::m_textureSlot
    IL_0172:  ldarg.1
    IL_0173:  ldarg.0
    IL_0174:  ldarg.2
    IL_0175:  ldarg.3
    IL_0176:  ldarg.s    y
    IL_0178:  ldarg.s    z
    IL_017a:  ldloc.s    V_17
    IL_017c:  ldloc.s    V_18
    IL_017e:  ldloc.s    V_19
    IL_0180:  ldloc.s    V_20
    IL_0182:  ldarg.s    sideColor
    IL_0184:  ldarg.s    topColor
    IL_0186:  ldarg.s    topColor
    IL_0188:  ldarg.s    topColor
    IL_018a:  ldarg.s    topColor
    IL_018c:  ldarg.s    subset
    IL_018e:  callvirt   instance void Game.BlockGeometryGenerator::GenerateCubeVertices(class Game.Block,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         float32,
                                                                                         float32,
                                                                                         float32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         class Game.TerrainGeometrySubset[])
    IL_0193:  ret

    IL_0194:  ldarg.1
    IL_0195:  ldarg.0
    IL_0196:  ldarg.2
    IL_0197:  ldarg.3
    IL_0198:  ldarg.s    y
    IL_019a:  ldarg.s    z
    IL_019c:  ldarg.s    sideColor
    IL_019e:  ldarg.s    subset
    IL_01a0:  callvirt   instance void Game.BlockGeometryGenerator::GenerateCubeVertices(class Game.Block,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         class Game.TerrainGeometrySubset[])
    IL_01a5:  ret
  } // end of method FluidBlock::GenerateFluidTerrainVertices

  .method private hidebysig static float32 
          ZeroSubst(float32 v,
                    float32 subst) cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.r4     0.0
    IL_0006:  beq.s      IL_000a

    IL_0008:  ldarg.0
    IL_0009:  ret

    IL_000a:  ldarg.1
    IL_000b:  ret
  } // end of method FluidBlock::ZeroSubst

  .method private hidebysig static float32 
          CalculateFluidVertexHeight(float32 h1,
                                     float32 h2,
                                     float32 h3,
                                     float32 h4) cil managed
  {
    // 代码大小       64 (0x40)
    .maxstack  4
    .locals init (float32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  ldarg.3
    IL_0004:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32,
                                                               float32,
                                                               float32)
    IL_0009:  stloc.0
    IL_000a:  ldloc.0
    IL_000b:  ldc.r4     1.
    IL_0010:  bge.un.s   IL_003a

    IL_0012:  ldarg.0
    IL_0013:  ldc.r4     9.9999998e-003
    IL_0018:  beq.s      IL_0032

    IL_001a:  ldarg.1
    IL_001b:  ldc.r4     9.9999998e-003
    IL_0020:  beq.s      IL_0032

    IL_0022:  ldarg.2
    IL_0023:  ldc.r4     9.9999998e-003
    IL_0028:  beq.s      IL_0032

    IL_002a:  ldarg.3
    IL_002b:  ldc.r4     9.9999998e-003
    IL_0030:  bne.un.s   IL_0038

    IL_0032:  ldc.r4     0.0
    IL_0037:  ret

    IL_0038:  ldloc.0
    IL_0039:  ret

    IL_003a:  ldc.r4     1.
    IL_003f:  ret
  } // end of method FluidBlock::CalculateFluidVertexHeight

  .method public hidebysig virtual instance valuetype Game.BlockPlacementData 
          GetPlacementValue(class Game.SubsystemTerrain subsystemTerrain,
                            class Game.ComponentMiner componentMiner,
                            int32 'value',
                            valuetype Game.TerrainRaycastResult raycastResult) cil managed
  {
    // 代码大小       49 (0x31)
    .maxstack  3
    .locals init (valuetype Game.BlockPlacementData V_0)
    IL_0000:  ldloca.s   V_0
    IL_0002:  initobj    Game.BlockPlacementData
    IL_0008:  ldloca.s   V_0
    IL_000a:  ldc.i4.0
    IL_000b:  ldarg.0
    IL_000c:  ldfld      int32 Game.Block::BlockIndex
    IL_0011:  call       int32 Game.Terrain::ReplaceContents(int32,
                                                             int32)
    IL_0016:  ldc.i4.0
    IL_0017:  call       int32 Game.Terrain::ReplaceData(int32,
                                                         int32)
    IL_001c:  stfld      int32 Game.BlockPlacementData::Value
    IL_0021:  ldloca.s   V_0
    IL_0023:  ldarg.s    raycastResult
    IL_0025:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_002a:  stfld      valuetype Game.CellFace Game.BlockPlacementData::CellFace
    IL_002f:  ldloc.0
    IL_0030:  ret
  } // end of method FluidBlock::GetPlacementValue

  .method public hidebysig virtual instance int32 
          GetFaceTextureSlot(int32 face,
                             int32 'value') cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldc.i4.4
    IL_0002:  bne.un.s   IL_000b

    IL_0004:  ldarg.0
    IL_0005:  ldfld      int32 Game.FluidBlock::m_textureSlot
    IL_000a:  ret

    IL_000b:  ldarg.1
    IL_000c:  ldc.i4.5
    IL_000d:  bne.un.s   IL_0016

    IL_000f:  ldarg.0
    IL_0010:  ldfld      int32 Game.Block::DefaultTextureSlot
    IL_0015:  ret

    IL_0016:  ldarg.0
    IL_0017:  ldfld      int32 Game.Block::DefaultTextureSlot
    IL_001c:  ldc.i4.s   16
    IL_001e:  add
    IL_001f:  ret
  } // end of method FluidBlock::GetFaceTextureSlot

  .method public hidebysig virtual instance bool 
          ShouldGenerateFace(int32 face,
                             int32 'value',
                             int32 neighborValue) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  4
    .locals init (int32 V_0)
    IL_0000:  ldarg.3
    IL_0001:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0006:  stloc.0
    IL_0007:  ldarg.0
    IL_0008:  ldloc.0
    IL_0009:  call       instance bool Game.FluidBlock::IsTheSameFluid(int32)
    IL_000e:  brfalse.s  IL_0012

    IL_0010:  ldc.i4.0
    IL_0011:  ret

    IL_0012:  ldarg.0
    IL_0013:  ldarg.1
    IL_0014:  ldarg.2
    IL_0015:  ldarg.3
    IL_0016:  call       instance bool Game.Block::ShouldGenerateFace(int32,
                                                                      int32,
                                                                      int32)
    IL_001b:  ret
  } // end of method FluidBlock::ShouldGenerateFace

  .method private hidebysig instance float32 
          CalculateNeighborHeight(int32 'value') cil managed
  {
    // 代码大小       65 (0x41)
    .maxstack  2
    .locals init (int32 V_0,
             int32 V_1)
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0006:  stloc.0
    IL_0007:  ldarg.0
    IL_0008:  ldloc.0
    IL_0009:  call       instance bool Game.FluidBlock::IsTheSameFluid(int32)
    IL_000e:  brfalse.s  IL_0032

    IL_0010:  ldarg.1
    IL_0011:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0016:  stloc.1
    IL_0017:  ldloc.1
    IL_0018:  call       bool Game.FluidBlock::GetIsTop(int32)
    IL_001d:  brfalse.s  IL_002c

    IL_001f:  ldarg.0
    IL_0020:  ldloc.1
    IL_0021:  call       int32 Game.FluidBlock::GetLevel(int32)
    IL_0026:  call       instance float32 Game.FluidBlock::GetLevelHeight(int32)
    IL_002b:  ret

    IL_002c:  ldc.r4     1.
    IL_0031:  ret

    IL_0032:  ldloc.0
    IL_0033:  brtrue.s   IL_003b

    IL_0035:  ldc.r4     9.9999998e-003
    IL_003a:  ret

    IL_003b:  ldc.r4     0.0
    IL_0040:  ret
  } // end of method FluidBlock::CalculateNeighborHeight

  .method public hidebysig virtual instance bool 
          IsHeatBlocker(int32 'value') cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.1
    IL_0001:  ret
  } // end of method FluidBlock::IsHeatBlocker

  .method public hidebysig static int32  GetLevel(int32 data) cil managed
  {
    // 代码大小       5 (0x5)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.s   15
    IL_0003:  and
    IL_0004:  ret
  } // end of method FluidBlock::GetLevel

  .method public hidebysig static int32  SetLevel(int32 data,
                                                  int32 level) cil managed
  {
    // 代码大小       10 (0xa)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.s   -16
    IL_0003:  and
    IL_0004:  ldarg.1
    IL_0005:  ldc.i4.s   15
    IL_0007:  and
    IL_0008:  or
    IL_0009:  ret
  } // end of method FluidBlock::SetLevel

  .method public hidebysig static bool  GetIsTop(int32 data) cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.s   16
    IL_0003:  and
    IL_0004:  ldc.i4.0
    IL_0005:  cgt.un
    IL_0007:  ret
  } // end of method FluidBlock::GetIsTop

  .method public hidebysig static int32  SetIsTop(int32 data,
                                                  bool isTop) cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  brtrue.s   IL_0008

    IL_0003:  ldarg.0
    IL_0004:  ldc.i4.s   -17
    IL_0006:  and
    IL_0007:  ret

    IL_0008:  ldarg.0
    IL_0009:  ldc.i4.s   16
    IL_000b:  or
    IL_000c:  ret
  } // end of method FluidBlock::SetIsTop

} // end of class Game.FluidBlock